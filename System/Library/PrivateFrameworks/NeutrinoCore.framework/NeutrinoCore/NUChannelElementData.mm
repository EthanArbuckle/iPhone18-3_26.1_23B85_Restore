@interface NUChannelElementData
- (NUChannelElementData)initWithFormat:(id)a3;
- (NUChannelElementData)initWithIdentifier:(id)a3 format:(id)a4;
- (NUChannelElementData)initWithParentData:(id)a3 channel:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)subdataForChannel:(id)a3 error:(id *)a4;
@end

@implementation NUChannelElementData

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUChannelElementData *)self dataIdentifier];
  v6 = [(NUChannelData *)self format];
  v7 = [v6 debugDescription];
  v8 = [v3 stringWithFormat:@"<%@:%p identifier:%@ format:%@>", v4, self, v5, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelData *)self format];
  v5 = [(NUChannelElementData *)self dataIdentifier];
  v6 = [v3 stringWithFormat:@"%@@%@", v4, v5];

  return v6;
}

- (id)subdataForChannel:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v16 = NUAssertLogger_4187();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v49 = v17;
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
        v49 = v30;
        v50 = 2114;
        v51 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelElementData subdataForChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2539, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "channel != nil");
  }

  if (!a4)
  {
    v23 = NUAssertLogger_4187();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v49 = v24;
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
        v49 = v39;
        v50 = 2114;
        v51 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelElementData subdataForChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2540, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != NULL");
  }

  v7 = v6;
  v8 = [(NUChannelData *)self format];
  v9 = [v7 name];
  v10 = [v8 subchannelFormatForKey:v9];

  if (v10)
  {
    v11 = [v7 format];
    v12 = [v10 isEqualToChannelFormat:v11];

    if (v12)
    {
      v13 = [[NUChannelElementData alloc] initWithParentData:self channel:v7];
      goto LABEL_9;
    }

    v14 = [NUError mismatchError:@"Incompatible subchannel format" object:v7];
  }

  else
  {
    v14 = [NUError notFoundError:@"Unknown subchannel" object:v7];
  }

  v13 = 0;
  *a4 = v14;
LABEL_9:

  return v13;
}

- (NUChannelElementData)initWithParentData:(id)a3 channel:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v21 = NUAssertLogger_4187();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "parentData != nil"];
      *buf = 138543362;
      v55 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_4187();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v35;
        v56 = 2114;
        v57 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelElementData initWithParentData:channel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2527, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "parentData != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v28 = NUAssertLogger_4187();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v55 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_4187();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v44;
        v56 = 2114;
        v57 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelElementData initWithParentData:channel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2528, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "channel != nil");
  }

  v9 = [NUChannelElementFormat alloc];
  v10 = [(NUChannel *)v8 format];
  v11 = [(NUChannelElementFormat *)v9 initWithRepresentedFormat:v10];

  v53.receiver = self;
  v53.super_class = NUChannelElementData;
  v12 = [(NUChannelData *)&v53 initWithFormat:v11];
  parentData = v12->_parentData;
  v12->_parentData = v6;
  v14 = v6;

  v15 = [(NUChannelElementData *)v12->_parentData dataIdentifier];
  v16 = [(NUChannel *)v8 name];
  v17 = [v15 stringByAppendingFormat:@".%@", v16];
  dataIdentifier = v12->_dataIdentifier;
  v12->_dataIdentifier = v17;

  channel = v12->_channel;
  v12->_channel = v8;

  return v12;
}

- (NUChannelElementData)initWithIdentifier:(id)a3 format:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = NUAssertLogger_4187();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
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

    _NUAssertFailHandler("[NUChannelElementData initWithIdentifier:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2519, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "identifier != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v20 = NUAssertLogger_4187();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
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

    _NUAssertFailHandler("[NUChannelElementData initWithIdentifier:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2520, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "format != nil");
  }

  v45.receiver = self;
  v45.super_class = NUChannelElementData;
  v9 = [(NUChannelData *)&v45 initWithFormat:v7];
  v10 = [v6 copy];
  dataIdentifier = v9->_dataIdentifier;
  v9->_dataIdentifier = v10;

  return v9;
}

- (NUChannelElementData)initWithFormat:(id)a3
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
  _NUAssertFailHandler("[NUChannelElementData initWithFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2515, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end