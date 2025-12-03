@interface DMFFetchApplicationsRequest
- (DMFFetchApplicationsRequest)init;
- (DMFFetchApplicationsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchApplicationsRequest

- (DMFFetchApplicationsRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFFetchApplicationsRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_typeFilter = 0;
    result->_stateFilter = 0;
  }

  return result;
}

- (DMFFetchApplicationsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DMFFetchApplicationsRequest;
  v5 = [(CATTaskRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeFilter"];
    v5->_typeFilter = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateFilter"];
    v5->_stateFilter = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"excludeIcon"];
    v5->_excludeIcon = [v13 BOOLValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"excludeUnmanagedApps"];
    v5->_excludeUnmanagedApps = [v14 BOOLValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deleteFeedback"];
    v5->_deleteFeedback = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = DMFFetchApplicationsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v11 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchApplicationsRequest *)self bundleIdentifiers:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifiers"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchApplicationsRequest typeFilter](self, "typeFilter")}];
  [coderCopy encodeObject:v6 forKey:@"typeFilter"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchApplicationsRequest stateFilter](self, "stateFilter")}];
  [coderCopy encodeObject:v7 forKey:@"stateFilter"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchApplicationsRequest excludeIcon](self, "excludeIcon")}];
  [coderCopy encodeObject:v8 forKey:@"excludeIcon"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchApplicationsRequest excludeUnmanagedApps](self, "excludeUnmanagedApps")}];
  [coderCopy encodeObject:v9 forKey:@"excludeUnmanagedApps"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchApplicationsRequest deleteFeedback](self, "deleteFeedback")}];
  [coderCopy encodeObject:v10 forKey:@"deleteFeedback"];
}

@end