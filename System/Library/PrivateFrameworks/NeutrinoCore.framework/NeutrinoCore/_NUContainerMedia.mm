@interface _NUContainerMedia
+ (id)containerWithFormat:(id)format components:(id)components geometry:(id)geometry error:(id *)error;
- (_NUContainerMedia)initWithContainerType:(int64_t)type components:(id)components geometry:(id)geometry;
- (_NUContainerMedia)initWithFormat:(id)format geometry:(id)geometry;
- (id)_mediaForChannel:(id)channel;
- (id)_mediaMatching:(id)matching;
- (id)mediaForChannel:(id)channel;
- (id)renderNode;
- (int64_t)containerMediaType;
@end

@implementation _NUContainerMedia

- (id)renderNode
{
  v45 = *MEMORY[0x1E69E9840];
  containerMediaType = [(_NUContainerMedia *)self containerMediaType];
  if ((containerMediaType - 1) >= 2)
  {
    if (containerMediaType != 3)
    {
      goto LABEL_18;
    }

    v4 = [NUChannelMatching name:@"image"];
  }

  else
  {
    v4 = +[NUChannelMatching primary];
  }

  v5 = v4;
  v6 = [(_NUContainerMedia *)self _mediaMatching:v4];

  if (!v6)
  {
LABEL_18:
    v26 = NUAssertLogger_2109();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't resolve container media"];
      *v42 = 138543362;
      *&v42[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v42, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_2109();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v42 = 138543618;
        *&v42[4] = v33;
        v43 = 2114;
        v44 = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v42, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v42 = 138543362;
      *&v42[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v42, 0xCu);
    }

    _NUAssertFailHandler("[_NUContainerMedia renderNode]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 414, @"Couldn't resolve container media", v38, v39, v40, v41, *v42);
  }

  renderNode = [v6 renderNode];

  if (!renderNode)
  {
    v10 = NUAssertLogger_2109();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Media is not renderable"];
      *v42 = 138543362;
      *&v42[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v42, 0xCu);
    }

    v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_2109();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols3 = [v18 callStackSymbols];
        v21 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v42 = 138543618;
        *&v42[4] = v17;
        v43 = 2114;
        v44 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v42, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v42 = 138543362;
      *&v42[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v42, 0xCu);
    }

    _NUAssertFailHandler("[_NUContainerMedia renderNode]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 415, @"Media is not renderable", v22, v23, v24, v25, *v42);
  }

  renderNode2 = [v6 renderNode];

  return renderNode2;
}

- (id)_mediaForChannel:(id)channel
{
  components = self->_components;
  name = [channel name];
  v5 = [(NSDictionary *)components objectForKeyedSubscript:name];

  return v5;
}

- (id)mediaForChannel:(id)channel
{
  v28 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v8 = NUAssertLogger_2109();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_2109();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUContainerMedia mediaForChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 393, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "channel != nil");
  }

  v5 = channelCopy;
  v6 = [(_NUContainerMedia *)self _mediaForChannel:channelCopy];

  return v6;
}

- (id)_mediaMatching:(id)matching
{
  matchingCopy = matching;
  containerFormat = [(_NUContainerMedia *)self containerFormat];
  v6 = [containerFormat channelMatching:matchingCopy];

  if (v6)
  {
    v7 = [(_NUContainerMedia *)self _mediaForChannel:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)containerMediaType
{
  containerFormat = [(_NUContainerMedia *)self containerFormat];
  containerMediaType = [containerFormat containerMediaType];

  return containerMediaType;
}

- (_NUContainerMedia)initWithContainerType:(int64_t)type components:(id)components geometry:(id)geometry
{
  v37 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  geometryCopy = geometry;
  if (![componentsCopy count])
  {
    v16 = NUAssertLogger_2109();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "components.count >= 1"];
      *buf = 138543362;
      v34 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_2109();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v23;
        v35 = 2114;
        v36 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUContainerMedia initWithContainerType:components:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 317, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "components.count >= 1");
  }

  v10 = PFMapDictionary();
  v11 = [[NUChannelContainerMediaFormat alloc] initWithContainerMediaType:type components:v10];
  v32.receiver = self;
  v32.super_class = _NUContainerMedia;
  v12 = [(_NUMedia *)&v32 initWithFormat:v11 geometry:geometryCopy];
  v13 = [componentsCopy copy];
  components = v12->_components;
  v12->_components = v13;

  return v12;
}

- (_NUContainerMedia)initWithFormat:(id)format geometry:(id)geometry
{
  v38 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  geometryCopy = geometry;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[_NUContainerMedia initWithFormat:geometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 313, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (id)containerWithFormat:(id)format components:(id)components geometry:(id)geometry error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  componentsCopy = components;
  geometryCopy = geometry;
  if (!formatCopy)
  {
    v27 = NUAssertLogger_2109();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v65 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_2109();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v41;
        v66 = 2114;
        v67 = v45;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUContainerMedia containerWithFormat:components:geometry:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 329, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "format != nil");
  }

  if (!componentsCopy)
  {
    v34 = NUAssertLogger_2109();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "components != nil"];
      *buf = 138543362;
      v65 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_2109();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols3 = [v51 callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v50;
        v66 = 2114;
        v67 = v54;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUContainerMedia containerWithFormat:components:geometry:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 330, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "components != nil");
  }

  geometry = geometryCopy;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v14 = componentsCopy;
  v15 = [v14 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v60;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v59 + 1) + 8 * i);
        v20 = [formatCopy subchannelFormatForKey:v19];

        if (!v20)
        {
          *error = [NUError invalidError:@"Unexpected media component" object:v19];

          v23 = 0;
          goto LABEL_25;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ([formatCopy containerMediaType] != 1 && objc_msgSend(formatCopy, "containerMediaType") != 2)
  {
    if ([formatCopy containerMediaType] != 3)
    {
      v25 = [NUError unknownError:@"Unknown container type" object:formatCopy];
      goto LABEL_24;
    }

    v21 = [v14 objectForKeyedSubscript:@"image"];
    if (v21)
    {
      goto LABEL_14;
    }

    v24 = @"Missing photo component";
LABEL_19:
    v25 = [NUError missingError:v24 object:v14];
LABEL_24:
    v23 = 0;
    *error = v25;
    goto LABEL_25;
  }

  v21 = [v14 objectForKeyedSubscript:@"primary"];
  if (!v21)
  {
    v24 = @"Missing primary component";
    goto LABEL_19;
  }

LABEL_14:
  v22 = v21;
  if (!geometry)
  {
    geometry = [v21 geometry];
  }

  v23 = [[self alloc] initWithContainerType:objc_msgSend(formatCopy components:"containerMediaType") geometry:{v14, geometry}];
LABEL_25:

  return v23;
}

@end