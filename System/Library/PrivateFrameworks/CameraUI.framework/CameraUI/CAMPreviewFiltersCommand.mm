@interface CAMPreviewFiltersCommand
- (CAMPreviewFiltersCommand)initWithCoder:(id)coder;
- (CAMPreviewFiltersCommand)initWithFilters:(id)filters captureMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPreviewFiltersCommand

- (CAMPreviewFiltersCommand)initWithFilters:(id)filters captureMode:(int64_t)mode
{
  filtersCopy = filters;
  v12.receiver = self;
  v12.super_class = CAMPreviewFiltersCommand;
  v8 = [(CAMCaptureCommand *)&v12 initWithSubcommands:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filters, filters);
    v9->__mode = mode;
    v10 = v9;
  }

  return v9;
}

- (CAMPreviewFiltersCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CAMPreviewFiltersDataKey"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v14 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v5 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CAMPreviewFiltersCommand *)v10 initWithCoder:v11];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = -[CAMPreviewFiltersCommand initWithFilters:captureMode:](self, "initWithFilters:captureMode:", v9, [coderCopy decodeIntegerForKey:@"CAMPreviewFiltersModeKey"]);

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CAMPreviewFiltersCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v10 encodeWithCoder:coderCopy];
  filters = [(CAMPreviewFiltersCommand *)self filters];
  if (filters)
  {
    v9 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:filters requiringSecureCoding:1 error:&v9];
    v7 = v9;
    if (v7)
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CAMPreviewFiltersCommand *)v7 encodeWithCoder:v8];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  [coderCopy encodeObject:v6 forKey:@"CAMPreviewFiltersDataKey"];
  [coderCopy encodeInteger:-[CAMPreviewFiltersCommand _mode](self forKey:{"_mode"), @"CAMPreviewFiltersModeKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMPreviewFiltersCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  filters = [(CAMPreviewFiltersCommand *)self filters];
  v6 = v4[3];
  v4[3] = filters;

  v4[4] = [(CAMPreviewFiltersCommand *)self _mode];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[CAMCaptureCapabilities capabilities];
  if ([v5 hasFilteringEntitlement])
  {
    filters = [(CAMPreviewFiltersCommand *)self filters];
    if (filters)
    {
      v7 = filters;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];
    videoPreviewFilters = [currentVideoPreviewLayer videoPreviewFilters];
    v10 = [CAMEffectFilterManager areFilters:v7 equalTo:videoPreviewFilters];

    if (!v10)
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        videoPreviewFilters2 = [currentVideoPreviewLayer videoPreviewFilters];
        v12 = [CAMEffectFilterManager namesFromFilters:videoPreviewFilters2];
        v13 = [v12 componentsJoinedByString:{@", "}];
        v14 = [CAMEffectFilterManager namesFromFilters:v7];
        v15 = [v14 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "CAMPreviewFiltersCommand: changing video preview filters from [%{public}@] to [%{public}@]", buf, 0x16u);
      }

      [currentVideoPreviewLayer setVideoPreviewFilters:v7];
      v16 = objc_alloc_init(CAMSystemPressureMitigationCommand);
      [(CAMCaptureCommand *)self addSubcommand:v16];
    }

    [contextCopy updateControlEnablementForFilters:v7 captureMode:{-[CAMPreviewFiltersCommand _mode](self, "_mode")}];
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive filters: %{public}@", &v2, 0xCu);
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to archive filters: %{public}@", &v2, 0xCu);
}

@end