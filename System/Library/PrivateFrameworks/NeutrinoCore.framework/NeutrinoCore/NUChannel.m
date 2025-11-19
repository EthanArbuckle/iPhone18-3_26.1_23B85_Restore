@interface NUChannel
+ (NUChannel)audio;
+ (NUChannel)pixelRect;
+ (id)arrayChannel:(id)a3;
+ (id)channelForAuxiliaryImageType:(int64_t)a3;
+ (id)controlChannelWithSchema:(id)a3;
+ (id)controlChannelWithSchema:(id)a3 name:(id)a4;
+ (id)controlChannelWithSetting:(id)a3 name:(id)a4;
+ (id)imageChannel:(id)a3 type:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChannel:(id)a3;
- (NUChannel)elementSubchannel;
- (NUChannel)init;
- (NUChannel)initWithName:(id)a3 format:(id)a4 index:(int64_t)a5;
- (id)debugDescription;
- (id)description;
- (id)subchannelAtIndex:(unint64_t)a3;
- (id)subchannelForKey:(id)a3;
- (id)subchannels;
- (int64_t)type;
@end

@implementation NUChannel

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannel *)self name];
  v6 = [(NUChannel *)self type]- 1;
  if (v6 > 4)
  {
    v7 = @"???";
  }

  else
  {
    v7 = off_1E8109B18[v6];
  }

  v8 = [(NUChannel *)self format];
  v9 = [v8 debugDescription];
  v10 = [v3 stringWithFormat:@"<%@:%p id:%@ type:%@ format:%@ idx:%ld>", v4, self, v5, v7, v9, -[NUChannel index](self, "index")];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannel *)self name];
  v5 = [(NUChannel *)self format];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v4, v6];

  return v7;
}

- (BOOL)isEqualToChannel:(id)a3
{
  v4 = a3;
  v5 = [(NUChannel *)self type];
  if (v5 == [v4 type] && (v6 = -[NUChannel index](self, "index"), v6 == objc_msgSend(v4, "index")) && (-[NUChannel name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = [(NUChannel *)self format];
    v11 = [v4 format];
    v12 = [v10 isEqualToChannelFormat:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannel *)self isEqualToChannel:v4];

  return v5;
}

- (id)subchannelAtIndex:(unint64_t)a3
{
  v5 = [(NUChannel *)self format];
  v6 = [v5 subchannelFormatAtIndex:a3];

  if (v6)
  {
    v7 = [NUChannel alloc];
    v8 = [(NUChannel *)self name];
    v9 = [(NUChannel *)v7 initWithName:v8 format:v6 index:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)subchannelForKey:(id)a3
{
  v4 = a3;
  v5 = [(NUChannel *)self format];
  v6 = [v5 subchannelFormatForKey:v4];

  if (v6)
  {
    v7 = [[NUChannel alloc] initWithName:v4 format:v6 index:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subchannels
{
  v2 = [(NUChannel *)self format];
  v3 = [v2 subchannelKeys];

  if (v3)
  {
    v4 = PFMap();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)type
{
  v2 = [(NUChannel *)self format];
  v3 = [v2 channelType];

  return v3;
}

- (NUChannel)initWithName:(id)a3 format:(id)a4 index:(int64_t)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = NUAssertLogger_4187();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v50 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_4187();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v30;
        v51 = 2114;
        v52 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannel initWithName:format:index:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 288, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "name != nil");
  }

  if (a5 < 0)
  {
    v23 = NUAssertLogger_4187();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "index >= 0"];
      *buf = 138543362;
      v50 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_4187();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannel initWithName:format:index:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 289, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "index >= 0");
  }

  v10 = v9;
  v48.receiver = self;
  v48.super_class = NUChannel;
  v11 = [(NUChannel *)&v48 init];
  v12 = [v8 copy];
  name = v11->_name;
  v11->_name = v12;

  format = v11->_format;
  v11->_format = v10;

  v11->_index = a5;
  return v11;
}

- (NUChannel)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUChannel init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 280, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NUChannel)elementSubchannel
{
  v2 = [(NUChannel *)self format];
  v3 = [v2 elementChannel];

  return v3;
}

+ (id)arrayChannel:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_4187();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v20;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel arrayChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 270, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "channel != nil");
  }

  v5 = v4;
  v6 = [NUChannelArrayFormat alloc];
  v7 = [v5 format];
  v8 = [(NUChannelArrayFormat *)v6 initWithItemFormat:v7];

  v9 = [a1 alloc];
  v10 = [v5 name];
  v11 = [v9 initWithName:v10 format:v8 index:0];

  return v11;
}

+ (id)controlChannelWithSetting:(id)a3 name:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_4187();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "setting != nil"];
      *buf = 138543362;
      v45 = v13;
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
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSetting:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 263, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "setting != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v19 = NUAssertLogger_4187();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v45 = v20;
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
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSetting:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 264, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "name != nil");
  }

  v9 = [NUChannelControlFormat controlFormatWithSetting:v6];
  v10 = [[a1 alloc] initWithName:v8 format:v9 index:0];

  return v10;
}

+ (id)controlChannelWithSchema:(id)a3 name:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_4187();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "schema != nil"];
      *buf = 138543362;
      v45 = v13;
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
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSchema:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 256, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "schema != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v19 = NUAssertLogger_4187();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v45 = v20;
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
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSchema:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 257, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "name != nil");
  }

  v9 = [NUChannelControlFormat controlFormatWithSchema:v6];
  v10 = [[a1 alloc] initWithName:v8 format:v9 index:0];

  return v10;
}

+ (id)controlChannelWithSchema:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = NUAssertLogger_4187();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "schema != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_4187();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSchema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 251, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "schema != nil");
  }

  v5 = v4;
  v6 = [v4 identifier];
  v7 = [v6 name];
  v8 = [v7 lowercaseString];
  v9 = [a1 controlChannelWithSchema:v5 name:v8];

  return v9;
}

+ (NUChannel)pixelRect
{
  v3 = objc_alloc_init(NURectSetting);
  v4 = [a1 controlChannelWithSetting:v3 name:@"pixelRect"];

  return v4;
}

+ (id)channelForAuxiliaryImageType:(int64_t)a3
{
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v5 = +[NUChannel primary];
        goto LABEL_27;
      }

      if (a3 == 2)
      {
        v5 = +[NUChannel disparity];
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (a3 == 3)
    {
      v3 = @"person";
    }

    else if (a3 == 4)
    {
      v3 = @"skin";
    }

    else
    {
      v3 = @"hair";
    }

LABEL_24:
    v5 = [NUChannel matteChannel:v3];
    goto LABEL_27;
  }

  if (a3 <= 8)
  {
    if (a3 == 6)
    {
      v3 = @"teeth";
    }

    else
    {
      if (a3 == 7)
      {
        v5 = +[NUChannel gainMap];
        goto LABEL_27;
      }

      v3 = @"glasses";
    }

    goto LABEL_24;
  }

  if (a3 == 9)
  {
    v3 = @"sky";
    goto LABEL_24;
  }

  if (a3 == 10)
  {
    v4 = @"linThumb";
    goto LABEL_26;
  }

  if (a3 != 11)
  {
LABEL_25:
    v4 = @"unknown";
    goto LABEL_26;
  }

  v4 = @"deltaMap";
LABEL_26:
  v5 = [NUChannel imageChannel:v4 type:0];
LABEL_27:

  return v5;
}

+ (id)imageChannel:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[NUChannelImageMediaFormat alloc] initWithImageMediaType:a4 temporality:0];
  v7 = [[NUChannel alloc] initWithName:v5 format:v6 index:0];

  return v7;
}

+ (NUChannel)audio
{
  v2 = [a1 alloc];
  v3 = +[NUChannelAudioMediaFormat genericAudioFormat];
  v4 = [v2 initWithName:@"audio" format:v3 index:0];

  return v4;
}

@end