@interface NUChannelMediaData
+ (id)asset:(id)a3;
+ (id)containerMediaDataWithFormat:(id)a3 components:(id)a4 error:(id *)a5;
+ (id)media:(id)a3;
+ (id)mediaDataWithCIImage:(id)a3 type:(int64_t)a4 orientation:(int64_t)a5;
- (NUChannelMediaData)initWithFormat:(id)a3;
- (NUChannelMediaData)initWithMedia:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)subdataForChannel:(id)a3 error:(id *)a4;
@end

@implementation NUChannelMediaData

- (id)subdataForChannel:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 type] == 5)
  {
    v7 = [v6 format];
    v8 = [v7 representedFormat];
    v9 = [(NUChannelData *)self format];
    v10 = [v8 isEqualToChannelFormat:v9];

    if (v10)
    {
      v11 = self;
      goto LABEL_12;
    }

    v16 = [NUError mismatchError:@"Incompatible subchannel format" object:v6];
  }

  else
  {
    v12 = [(NUMedia *)self->_media format];
    v13 = [v12 mediaType];

    if (v13 == 4)
    {
      v14 = [(NUMedia *)self->_media mediaForChannel:v6];
      if (v14)
      {
        v15 = [[NUChannelMediaData alloc] initWithMedia:v14];
      }

      else
      {
        v15 = +[NUChannelData null];
      }

      v11 = v15;

      goto LABEL_12;
    }

    v16 = [NUError notFoundError:@"Not a container media" object:self->_media];
  }

  v11 = 0;
  *a4 = v16;
LABEL_12:

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelMediaData *)self media];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@:%p media:%@>", v4, self, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelData *)self format];
  v5 = [(NUChannelMediaData *)self media];
  v6 = [v3 stringWithFormat:@"%@=%@", v4, v5];

  return v6;
}

- (NUChannelMediaData)initWithMedia:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_4187();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "media != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
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
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelMediaData initWithMedia:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2369, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "media != nil");
  }

  v5 = v4;
  v6 = [(NUMedia *)v4 format];
  v26.receiver = self;
  v26.super_class = NUChannelMediaData;
  v7 = [(NUChannelData *)&v26 initWithFormat:v6];

  media = v7->_media;
  v7->_media = v5;

  return v7;
}

- (NUChannelMediaData)initWithFormat:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannelMediaData initWithFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2365, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

+ (id)asset:(id)a3
{
  v3 = a3;
  v4 = [[NUChannelAssetData alloc] initWithAsset:v3];

  return v4;
}

+ (id)media:(id)a3
{
  v3 = a3;
  v4 = [[NUChannelMediaData alloc] initWithMedia:v3];

  return v4;
}

+ (id)mediaDataWithCIImage:(id)a3 type:(int64_t)a4 orientation:(int64_t)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    v20 = NUAssertLogger_4187();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v56 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_4187();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v34;
        v57 = 2114;
        v58 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData mediaDataWithCIImage:type:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2416, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "image != nil");
  }

  v9 = v8;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v8 digest];
  if (a4 > 4)
  {
    v12 = @"???";
  }

  else
  {
    v12 = off_1E8109AF0[a4];
  }

  v13 = [v10 stringWithFormat:@"CIImage-%llx-%@", v11, v12];
  v53[0] = NUAssetOptionIdentifier;
  v53[1] = NUAssetOptionOrientation;
  v54[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v54[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v52 = 0;
  v16 = [NUAssetFactory imageAssetWithCIImage:v9 type:a4 options:v15 error:&v52];
  v17 = v52;

  if (!v16)
  {
    v27 = NUAssertLogger_4187();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create image asset: %@", v17];
      *buf = 138543362;
      v56 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_4187();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v43;
        v57 = 2114;
        v58 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData mediaDataWithCIImage:type:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2421, @"Failed to create image asset: %@", v48, v49, v50, v51, v17);
  }

  v18 = [a1 asset:v16];

  return v18;
}

+ (id)containerMediaDataWithFormat:(id)a3 components:(id)a4 error:(id *)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v25 = NUAssertLogger_4187();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v66 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_4187();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v39;
        v67 = 2114;
        v68 = v43;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData containerMediaDataWithFormat:components:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2380, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "format != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v32 = NUAssertLogger_4187();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "components != nil"];
      *buf = 138543362;
      v66 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_4187();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v48;
        v67 = 2114;
        v68 = v52;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData containerMediaDataWithFormat:components:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2381, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "components != nil");
  }

  v57 = a1;
  v58 = a5;
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:v17];
        if (([v18 isNull] & 1) == 0)
        {
          v19 = [v18 format];
          v20 = [v19 channelType];

          if (v20 != 1)
          {
            [NUError invalidError:@"Expected media data" object:v18];
            *v58 = v23 = 0;
            v22 = v12;
            goto LABEL_17;
          }

          v21 = [v18 media];
          [v11 setObject:v21 forKeyedSubscript:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v59 = 0;
  v18 = [_NUContainerMedia containerWithFormat:v8 components:v11 geometry:0 error:&v59];
  v22 = v59;
  if (v18)
  {
    v23 = [[v57 alloc] initWithMedia:v18];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to aggregate media components" object:v11 underlyingError:v22];
    *v58 = v23 = 0;
  }

LABEL_17:

  return v23;
}

@end