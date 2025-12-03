@interface NUChannel
+ (NUChannel)audio;
+ (NUChannel)pixelRect;
+ (id)arrayChannel:(id)channel;
+ (id)channelForAuxiliaryImageType:(int64_t)type;
+ (id)controlChannelWithSchema:(id)schema;
+ (id)controlChannelWithSchema:(id)schema name:(id)name;
+ (id)controlChannelWithSetting:(id)setting name:(id)name;
+ (id)imageChannel:(id)channel type:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannel:(id)channel;
- (NUChannel)elementSubchannel;
- (NUChannel)init;
- (NUChannel)initWithName:(id)name format:(id)format index:(int64_t)index;
- (id)debugDescription;
- (id)description;
- (id)subchannelAtIndex:(unint64_t)index;
- (id)subchannelForKey:(id)key;
- (id)subchannels;
- (int64_t)type;
@end

@implementation NUChannel

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(NUChannel *)self name];
  v6 = [(NUChannel *)self type]- 1;
  if (v6 > 4)
  {
    v7 = @"???";
  }

  else
  {
    v7 = off_1E8109B18[v6];
  }

  format = [(NUChannel *)self format];
  v9 = [format debugDescription];
  v10 = [v3 stringWithFormat:@"<%@:%p id:%@ type:%@ format:%@ idx:%ld>", v4, self, name, v7, v9, -[NUChannel index](self, "index")];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(NUChannel *)self name];
  format = [(NUChannel *)self format];
  v6 = [format description];
  v7 = [v3 stringWithFormat:@"%@ (%@)", name, v6];

  return v7;
}

- (BOOL)isEqualToChannel:(id)channel
{
  channelCopy = channel;
  type = [(NUChannel *)self type];
  if (type == [channelCopy type] && (v6 = -[NUChannel index](self, "index"), v6 == objc_msgSend(channelCopy, "index")) && (-[NUChannel name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(channelCopy, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    format = [(NUChannel *)self format];
    format2 = [channelCopy format];
    v12 = [format isEqualToChannelFormat:format2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NUChannel *)self isEqualToChannel:equalCopy];

  return v5;
}

- (id)subchannelAtIndex:(unint64_t)index
{
  format = [(NUChannel *)self format];
  v6 = [format subchannelFormatAtIndex:index];

  if (v6)
  {
    v7 = [NUChannel alloc];
    name = [(NUChannel *)self name];
    v9 = [(NUChannel *)v7 initWithName:name format:v6 index:index];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)subchannelForKey:(id)key
{
  keyCopy = key;
  format = [(NUChannel *)self format];
  v6 = [format subchannelFormatForKey:keyCopy];

  if (v6)
  {
    v7 = [[NUChannel alloc] initWithName:keyCopy format:v6 index:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subchannels
{
  format = [(NUChannel *)self format];
  subchannelKeys = [format subchannelKeys];

  if (subchannelKeys)
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
  format = [(NUChannel *)self format];
  channelType = [format channelType];

  return channelType;
}

- (NUChannel)initWithName:(id)name format:(id)format index:(int64_t)index
{
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  formatCopy = format;
  if (!nameCopy)
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
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v30;
        v51 = 2114;
        v52 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannel initWithName:format:index:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 288, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "name != nil");
  }

  if (index < 0)
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
        callStackSymbols3 = [v40 callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannel initWithName:format:index:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 289, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "index >= 0");
  }

  v10 = formatCopy;
  v48.receiver = self;
  v48.super_class = NUChannel;
  v11 = [(NUChannel *)&v48 init];
  v12 = [nameCopy copy];
  name = v11->_name;
  v11->_name = v12;

  format = v11->_format;
  v11->_format = v10;

  v11->_index = index;
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
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  format = [(NUChannel *)self format];
  elementChannel = [format elementChannel];

  return elementChannel;
}

+ (id)arrayChannel:(id)channel
{
  v33 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
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
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v20;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel arrayChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 270, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "channel != nil");
  }

  v5 = channelCopy;
  v6 = [NUChannelArrayFormat alloc];
  format = [v5 format];
  v8 = [(NUChannelArrayFormat *)v6 initWithItemFormat:format];

  v9 = [self alloc];
  name = [v5 name];
  v11 = [v9 initWithName:name format:v8 index:0];

  return v11;
}

+ (id)controlChannelWithSetting:(id)setting name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  nameCopy = name;
  if (!settingCopy)
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
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSetting:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 263, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "setting != nil");
  }

  v8 = nameCopy;
  if (!nameCopy)
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
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSetting:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 264, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "name != nil");
  }

  v9 = [NUChannelControlFormat controlFormatWithSetting:settingCopy];
  v10 = [[self alloc] initWithName:v8 format:v9 index:0];

  return v10;
}

+ (id)controlChannelWithSchema:(id)schema name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  nameCopy = name;
  if (!schemaCopy)
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
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSchema:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 256, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "schema != nil");
  }

  v8 = nameCopy;
  if (!nameCopy)
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
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSchema:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 257, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "name != nil");
  }

  v9 = [NUChannelControlFormat controlFormatWithSchema:schemaCopy];
  v10 = [[self alloc] initWithName:v8 format:v9 index:0];

  return v10;
}

+ (id)controlChannelWithSchema:(id)schema
{
  v31 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  if (!schemaCopy)
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
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannel controlChannelWithSchema:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 251, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "schema != nil");
  }

  v5 = schemaCopy;
  identifier = [schemaCopy identifier];
  name = [identifier name];
  lowercaseString = [name lowercaseString];
  v9 = [self controlChannelWithSchema:v5 name:lowercaseString];

  return v9;
}

+ (NUChannel)pixelRect
{
  v3 = objc_alloc_init(NURectSetting);
  v4 = [self controlChannelWithSetting:v3 name:@"pixelRect"];

  return v4;
}

+ (id)channelForAuxiliaryImageType:(int64_t)type
{
  if (type <= 5)
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        v5 = +[NUChannel primary];
        goto LABEL_27;
      }

      if (type == 2)
      {
        v5 = +[NUChannel disparity];
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (type == 3)
    {
      v3 = @"person";
    }

    else if (type == 4)
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

  if (type <= 8)
  {
    if (type == 6)
    {
      v3 = @"teeth";
    }

    else
    {
      if (type == 7)
      {
        v5 = +[NUChannel gainMap];
        goto LABEL_27;
      }

      v3 = @"glasses";
    }

    goto LABEL_24;
  }

  if (type == 9)
  {
    v3 = @"sky";
    goto LABEL_24;
  }

  if (type == 10)
  {
    v4 = @"linThumb";
    goto LABEL_26;
  }

  if (type != 11)
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

+ (id)imageChannel:(id)channel type:(int64_t)type
{
  channelCopy = channel;
  v6 = [[NUChannelImageMediaFormat alloc] initWithImageMediaType:type temporality:0];
  v7 = [[NUChannel alloc] initWithName:channelCopy format:v6 index:0];

  return v7;
}

+ (NUChannel)audio
{
  v2 = [self alloc];
  v3 = +[NUChannelAudioMediaFormat genericAudioFormat];
  v4 = [v2 initWithName:@"audio" format:v3 index:0];

  return v4;
}

@end