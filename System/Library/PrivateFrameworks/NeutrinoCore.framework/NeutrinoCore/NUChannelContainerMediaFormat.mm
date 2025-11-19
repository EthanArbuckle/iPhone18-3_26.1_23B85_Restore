@interface NUChannelContainerMediaFormat
+ (id)imageContainerWithChannels:(id)a3 error:(id *)a4;
+ (id)livePhotoContainerWithImageChannels:(id)a3 videoChannels:(id)a4 error:(id *)a5;
+ (id)livePhotoContainerWithImageFormat:(id)a3 videoFormat:(id)a4;
+ (id)videoContainerWithChannels:(id)a3 error:(id *)a4;
- (BOOL)isCompatibleWithContainerMediaFormat:(id)a3;
- (BOOL)isCompatibleWithMediaFormat:(id)a3;
- (BOOL)isEqualToChannelFormat:(id)a3;
- (NUChannelComponentMediaFormat)componentFormat;
- (NUChannelContainerMediaFormat)initWithContainerMediaType:(int64_t)a3 components:(id)a4;
- (NUChannelContainerMediaFormat)initWithMediaTemporality:(int64_t)a3;
- (id)channelMatching:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)elementChannel;
- (unint64_t)hash;
@end

@implementation NUChannelContainerMediaFormat

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelContainerMediaFormat *)self description];
  v6 = [(NUChannelContainerMediaFormat *)self components];
  v7 = [v3 stringWithFormat:@"<%@:%p %@ components:%@>", v4, self, v5, v6];

  return v7;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = NUChannelContainerMediaFormat;
  v3 = [(NUChannelMediaFormat *)&v11 description];
  if ([(NUChannelContainerMediaFormat *)self containerMediaType])
  {
    v4 = [(NUChannelContainerMediaFormat *)self containerMediaType]- 1;
    if (v4 > 2)
    {
      v5 = @"???";
    }

    else
    {
      v5 = off_1E8109AD8[v4];
    }

    v6 = [(NUChannelContainerMediaFormat *)self components];
    v7 = [v6 allValues];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v9 = [v3 stringByAppendingFormat:@":%@[%@]", v5, v8];

    v3 = v9;
  }

  return v3;
}

- (BOOL)isCompatibleWithContainerMediaFormat:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = NUAssertLogger_4187();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v18 stringWithFormat:@"Invalid parameter not kind of %@", v20];
        *buf = 138543362;
        v44 = v21;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v23 = NUAssertLogger_4187();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v24)
        {
          v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v28 = MEMORY[0x1E696AF00];
          v29 = v27;
          v30 = [v28 callStackSymbols];
          v31 = [v30 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v44 = v27;
          v45 = 2114;
          v46 = v31;
          _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v24)
      {
        v25 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v44 = v26;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      _NUAssertFailHandler("[NUChannelContainerMediaFormat isCompatibleWithContainerMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1196, @"Invalid parameter not kind of %@", v34, v35, v36, v37, v33);
    }
  }

  v5 = [v4 containerMediaType];
  if (v5 == [(NUChannelContainerMediaFormat *)self containerMediaType])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = [v4 components];
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = [(NUChannelContainerMediaFormat *)self components];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (!v13)
        {
          break;
        }

        v14 = [v4 components];
        v15 = [v14 objectForKeyedSubscript:v11];

        LODWORD(v14) = [v13 isCompatibleWithChannelFormat:v15];
        if (!v14)
        {
          LOBYTE(v13) = 0;
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
          LOBYTE(v13) = 1;
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)isCompatibleWithMediaFormat:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = NUAssertLogger_4187();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"Invalid parameter not kind of %@", v10];
        *buf = 138543362;
        v29 = v11;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v13 = NUAssertLogger_4187();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v14)
        {
          v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v18 = MEMORY[0x1E696AF00];
          v19 = v17;
          v20 = [v18 callStackSymbols];
          v21 = [v20 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = v17;
          v30 = 2114;
          v31 = v21;
          _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v14)
      {
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v29 = v16;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      _NUAssertFailHandler("[NUChannelContainerMediaFormat isCompatibleWithMediaFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1188, @"Invalid parameter not kind of %@", v24, v25, v26, v27, v23);
    }
  }

  v5 = [v4 mediaType] == 4 && -[NUChannelContainerMediaFormat isCompatibleWithContainerMediaFormat:](self, "isCompatibleWithContainerMediaFormat:", v4);

  return v5;
}

- (BOOL)isEqualToChannelFormat:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 containerMediaType], v5 == -[NUChannelContainerMediaFormat containerMediaType](self, "containerMediaType")))
  {
    v6 = [v4 components];
    v7 = [(NUChannelContainerMediaFormat *)self components];
    v8 = [v6 isEqualToDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)elementChannel
{
  v3 = [NUChannelElementFormat alloc];
  v4 = [(NUChannelContainerMediaFormat *)self componentFormat];
  v5 = [(NUChannelElementFormat *)v3 initWithRepresentedFormat:v4];

  v6 = [[NUChannel alloc] initWithName:@"$component" format:v5];

  return v6;
}

- (NUChannelComponentMediaFormat)componentFormat
{
  v2 = [(NUChannelContainerMediaFormat *)self containerMediaType];
  v3 = 0;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = +[NUChannelComponentMediaFormat genericVideoComponentFormat];
      goto LABEL_9;
    }

    if (v2 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v3 = +[NUChannelComponentMediaFormat genericMediaComponentFormat];
    goto LABEL_9;
  }

  if (!v2)
  {
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = +[NUChannelComponentMediaFormat genericImageComponentFormat];
  }

LABEL_9:

  return v3;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = NUChannelContainerMediaFormat;
  v3 = [(NUChannelMediaFormat *)&v6 hash];
  v4 = 0x1CB8BD83B149BDLL * self->_containerMediaType;
  return v4 ^ v3 ^ (0x22148EB71A6EE7 * NUDeepDictionaryHash(self->_components));
}

- (id)channelMatching:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4581;
  v16 = __Block_byref_object_dispose__4582;
  v17 = 0;
  components = self->_components;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__NUChannelContainerMediaFormat_channelMatching___block_invoke;
  v9[3] = &unk_1E8109A08;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSDictionary *)components enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__NUChannelContainerMediaFormat_channelMatching___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  obj = [[NUChannel alloc] initWithName:v8 format:v7];

  if ([*(a1 + 32) match:obj])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a4 = 1;
  }
}

- (NUChannelContainerMediaFormat)initWithContainerMediaType:(int64_t)a3 components:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!a3)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "containerMediaType != NUContainerMediaTypeUnknown"];
      *buf = 138543362;
      v47 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_4187();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v27;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelContainerMediaFormat initWithContainerMediaType:components:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1095, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "containerMediaType != NUContainerMediaTypeUnknown");
  }

  v7 = v6;
  if (!v6)
  {
    v20 = NUAssertLogger_4187();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "components != nil"];
      *buf = 138543362;
      v47 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_4187();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelContainerMediaFormat initWithContainerMediaType:components:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1096, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "components != nil");
  }

  if (a3 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1C03C2EA8[a3 - 1];
  }

  v45.receiver = self;
  v45.super_class = NUChannelContainerMediaFormat;
  v9 = [(NUChannelMediaFormat *)&v45 initWithMediaTemporality:v8];
  v9->_containerMediaType = a3;
  v10 = [v7 copy];
  components = v9->_components;
  v9->_components = v10;

  return v9;
}

- (NUChannelContainerMediaFormat)initWithMediaTemporality:(int64_t)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = [v5 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v8, v9];
    *buf = 138543362;
    v31 = v10;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v11 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v11 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v11 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v12 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v16;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = MEMORY[0x1E696AF00];
    v20 = specific;
    v21 = v17;
    v22 = [v19 callStackSymbols];
    v23 = [v22 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v31 = specific;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelContainerMediaFormat initWithMediaTemporality:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1091, @"Initializer not available: [%@ %@], use designated initializer instead.", v26, v27, v28, v29, v25);
}

+ (id)livePhotoContainerWithImageFormat:(id)a3 videoFormat:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 containerMediaType] != 1)
  {
    v12 = NUAssertLogger_4187();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "photoFormat.containerMediaType == NUContainerMediaTypeImage"];
      *buf = 138543362;
      v47 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_4187();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v26;
        v48 = 2114;
        v49 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat livePhotoContainerWithImageFormat:videoFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1082, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "photoFormat.containerMediaType == NUContainerMediaTypeImage");
  }

  if ([v7 containerMediaType] != 2)
  {
    v19 = NUAssertLogger_4187();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoFormat.containerMediaType == NUContainerMediaTypeVideo"];
      *buf = 138543362;
      v47 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_4187();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v35;
        v48 = 2114;
        v49 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat livePhotoContainerWithImageFormat:videoFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1083, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "videoFormat.containerMediaType == NUContainerMediaTypeVideo");
  }

  v8 = [a1 alloc];
  v44[0] = @"image";
  v44[1] = @"video";
  v45[0] = v6;
  v45[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v10 = [v8 initWithContainerMediaType:3 components:v9];

  return v10;
}

+ (id)livePhotoContainerWithImageChannels:(id)a3 videoChannels:(id)a4 error:(id *)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v17 = NUAssertLogger_4187();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageChannels != nil"];
      *buf = 138543362;
      v68 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_4187();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v38;
        v69 = 2114;
        v70 = v42;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat livePhotoContainerWithImageChannels:videoChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1061, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "imageChannels != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v24 = NUAssertLogger_4187();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoChannels != nil"];
      *buf = 138543362;
      v68 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_4187();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v47;
        v69 = 2114;
        v70 = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat livePhotoContainerWithImageChannels:videoChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1062, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "videoChannels != nil");
  }

  if (!a5)
  {
    v31 = NUAssertLogger_4187();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v68 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_4187();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v56;
        v69 = 2114;
        v70 = v60;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat livePhotoContainerWithImageChannels:videoChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1063, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "error != NULL");
  }

  v66 = 0;
  v11 = [a1 imageContainerWithChannels:v8 error:&v66];
  v12 = v66;
  if (v11)
  {
    v65 = 0;
    v13 = [a1 videoContainerWithChannels:v8 error:&v65];
    v14 = v65;

    if (v13)
    {
      v15 = [a1 livePhotoContainerWithImageFormat:v11 videoFormat:v13];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to generate video container format" object:v10 underlyingError:v14];
      *a5 = v15 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate image container format" object:v8 underlyingError:v12];
    *a5 = v15 = 0;
    v14 = v12;
  }

  return v15;
}

+ (id)videoContainerWithChannels:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v22 = NUAssertLogger_4187();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channels != nil"];
      *buf = 138543362;
      v60 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_4187();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v36;
        v61 = 2114;
        v62 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat videoContainerWithChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1031, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "channels != nil");
  }

  if (!a4)
  {
    v29 = NUAssertLogger_4187();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v60 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_4187();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v45;
        v61 = 2114;
        v62 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat videoContainerWithChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 1032, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        if ([v14 type] != 1)
        {
          [NUError invalidError:@"Invalid channel type for video container" object:v14];
          *a4 = v19 = 0;
          v18 = v9;
          goto LABEL_18;
        }

        v15 = [v14 format];
        v16 = [v14 name];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = [v8 objectForKeyedSubscript:@"primary"];
  v18 = v17;
  if (v17)
  {
    if ([v17 mediaType] == 1)
    {
      v19 = [[a1 alloc] initWithContainerMediaType:2 components:v8];
      goto LABEL_18;
    }

    v20 = [NUError invalidError:@"Invalid primary component type" object:v18];
  }

  else
  {
    v20 = [NUError missingError:@"Missing primary component" object:v8];
  }

  v19 = 0;
  *a4 = v20;
LABEL_18:

  return v19;
}

+ (id)imageContainerWithChannels:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v23 = NUAssertLogger_4187();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channels != nil"];
      *buf = 138543362;
      v62 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_4187();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v37;
        v63 = 2114;
        v64 = v41;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat imageContainerWithChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 991, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "channels != nil");
  }

  if (!a4)
  {
    v30 = NUAssertLogger_4187();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v62 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_4187();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v46;
        v63 = 2114;
        v64 = v50;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelContainerMediaFormat imageContainerWithChannels:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 992, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "error != NULL");
  }

  v7 = v6;
  v8 = [NUChannelImageMediaFormat stillImageFormat:0];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v57;
    v55 = a1;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v56 + 1) + 8 * i);
        if ([v15 type] != 1)
        {
          [NUError invalidError:@"Invalid channel type" object:v15];
          *a4 = v20 = 0;
          goto LABEL_22;
        }

        v16 = [v15 format];
        if (([v8 isCompatibleWithChannelFormat:v16] & 1) == 0)
        {
          v21 = @"Incompatible channel format";
          goto LABEL_21;
        }

        if ([v16 isGeneric] && objc_msgSend(v8, "canSpecializeFormat:", v16))
        {
          v17 = [v16 specializedWithFormat:v8];

          v16 = v17;
        }

        if ([v16 isGeneric])
        {
          v21 = @"Channel format is generic";
LABEL_21:
          *a4 = [NUError invalidError:v21 object:v16];

          v20 = 0;
LABEL_22:
          v19 = v10;
          goto LABEL_23;
        }

        v18 = [v15 name];
        [v9 setObject:v16 forKeyedSubscript:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v56 objects:v60 count:16];
      a1 = v55;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v9 objectForKeyedSubscript:@"primary"];
  if (v19)
  {
    v20 = [[a1 alloc] initWithContainerMediaType:1 components:v9];
  }

  else
  {
    [NUError missingError:@"Missing primary component" object:v9];
    *a4 = v20 = 0;
  }

LABEL_23:

  return v20;
}

@end