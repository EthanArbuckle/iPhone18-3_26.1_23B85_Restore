@interface NUChannelMediaData
+ (id)asset:(id)asset;
+ (id)containerMediaDataWithFormat:(id)format components:(id)components error:(id *)error;
+ (id)media:(id)media;
+ (id)mediaDataWithCIImage:(id)image type:(int64_t)type orientation:(int64_t)orientation;
- (NUChannelMediaData)initWithFormat:(id)format;
- (NUChannelMediaData)initWithMedia:(id)media;
- (id)debugDescription;
- (id)description;
- (id)subdataForChannel:(id)channel error:(id *)error;
@end

@implementation NUChannelMediaData

- (id)subdataForChannel:(id)channel error:(id *)error
{
  channelCopy = channel;
  if ([channelCopy type] == 5)
  {
    format = [channelCopy format];
    representedFormat = [format representedFormat];
    format2 = [(NUChannelData *)self format];
    v10 = [representedFormat isEqualToChannelFormat:format2];

    if (v10)
    {
      selfCopy = self;
      goto LABEL_12;
    }

    v16 = [NUError mismatchError:@"Incompatible subchannel format" object:channelCopy];
  }

  else
  {
    format3 = [(NUMedia *)self->_media format];
    mediaType = [format3 mediaType];

    if (mediaType == 4)
    {
      v14 = [(NUMedia *)self->_media mediaForChannel:channelCopy];
      if (v14)
      {
        v15 = [[NUChannelMediaData alloc] initWithMedia:v14];
      }

      else
      {
        v15 = +[NUChannelData null];
      }

      selfCopy = v15;

      goto LABEL_12;
    }

    v16 = [NUError notFoundError:@"Not a container media" object:self->_media];
  }

  selfCopy = 0;
  *error = v16;
LABEL_12:

  return selfCopy;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  media = [(NUChannelMediaData *)self media];
  v6 = [media debugDescription];
  v7 = [v3 stringWithFormat:@"<%@:%p media:%@>", v4, self, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  format = [(NUChannelData *)self format];
  media = [(NUChannelMediaData *)self media];
  v6 = [v3 stringWithFormat:@"%@=%@", format, media];

  return v6;
}

- (NUChannelMediaData)initWithMedia:(id)media
{
  v31 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  if (!mediaCopy)
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
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelMediaData initWithMedia:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2369, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "media != nil");
  }

  v5 = mediaCopy;
  format = [(NUMedia *)mediaCopy format];
  v26.receiver = self;
  v26.super_class = NUChannelMediaData;
  v7 = [(NUChannelData *)&v26 initWithFormat:format];

  media = v7->_media;
  v7->_media = v5;

  return v7;
}

- (NUChannelMediaData)initWithFormat:(id)format
{
  v35 = *MEMORY[0x1E69E9840];
  formatCopy = format;
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
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

+ (id)asset:(id)asset
{
  assetCopy = asset;
  v4 = [[NUChannelAssetData alloc] initWithAsset:assetCopy];

  return v4;
}

+ (id)media:(id)media
{
  mediaCopy = media;
  v4 = [[NUChannelMediaData alloc] initWithMedia:mediaCopy];

  return v4;
}

+ (id)mediaDataWithCIImage:(id)image type:(int64_t)type orientation:(int64_t)orientation
{
  v59 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
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
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v34;
        v57 = 2114;
        v58 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData mediaDataWithCIImage:type:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2416, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "image != nil");
  }

  v9 = imageCopy;
  v10 = MEMORY[0x1E696AEC0];
  digest = [imageCopy digest];
  if (type > 4)
  {
    v12 = @"???";
  }

  else
  {
    v12 = off_1E8109AF0[type];
  }

  v13 = [v10 stringWithFormat:@"CIImage-%llx-%@", digest, v12];
  v53[0] = NUAssetOptionIdentifier;
  v53[1] = NUAssetOptionOrientation;
  v54[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  v54[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v52 = 0;
  v16 = [NUAssetFactory imageAssetWithCIImage:v9 type:type options:v15 error:&v52];
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
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v56 = v43;
        v57 = 2114;
        v58 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v56 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData mediaDataWithCIImage:type:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2421, @"Failed to create image asset: %@", v48, v49, v50, v51, v17);
  }

  v18 = [self asset:v16];

  return v18;
}

+ (id)containerMediaDataWithFormat:(id)format components:(id)components error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  componentsCopy = components;
  if (!formatCopy)
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
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v39;
        v67 = 2114;
        v68 = v43;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData containerMediaDataWithFormat:components:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2380, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "format != nil");
  }

  v10 = componentsCopy;
  if (!componentsCopy)
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
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v48;
        v67 = 2114;
        v68 = v52;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMediaData containerMediaDataWithFormat:components:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2381, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "components != nil");
  }

  selfCopy = self;
  errorCopy = error;
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(componentsCopy, "count")}];
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
          format = [v18 format];
          channelType = [format channelType];

          if (channelType != 1)
          {
            [NUError invalidError:@"Expected media data" object:v18];
            *errorCopy = v23 = 0;
            v22 = v12;
            goto LABEL_17;
          }

          media = [v18 media];
          [v11 setObject:media forKeyedSubscript:v17];
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
  v18 = [_NUContainerMedia containerWithFormat:formatCopy components:v11 geometry:0 error:&v59];
  v22 = v59;
  if (v18)
  {
    v23 = [[selfCopy alloc] initWithMedia:v18];
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to aggregate media components" object:v11 underlyingError:v22];
    *errorCopy = v23 = 0;
  }

LABEL_17:

  return v23;
}

@end