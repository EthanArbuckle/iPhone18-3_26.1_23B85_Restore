@interface _NUSwitchPipeline
- (_NUSwitchPipeline)init;
- (_NUSwitchPipeline)initWithIdentifier:(id)a3;
- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation _NUSwitchPipeline

- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 channel];
  v11 = [(_NUPipeline *)self _inputPortForChannel:v10];

  if (!v11)
  {
    v18 = [v8 channel];
    *a5 = [NUError missingError:@"Missing input port" object:v18];

    v17 = 0;
    goto LABEL_16;
  }

  v12 = [v11 fullName];
  v13 = [v9 dataForChannel:v12];

  if (v13)
  {
    v14 = [(_NUChannelPort *)self->_condition fullName];
    v15 = [v9 dataForChannel:v14];

    if ([v15 isNull])
    {
      goto LABEL_4;
    }

    if ([v15 type] != 2)
    {
      [NUError invalidError:@"Invalid condition data type" object:v15];
      *a5 = v17 = 0;
      goto LABEL_14;
    }

    v19 = v15;
    v20 = [v19 format];
    v28 = 0;
    v21 = [v20 validateChannelData:v19 error:&v28];
    v22 = v28;

    if ((v21 & 1) == 0)
    {
      v25 = [NUError errorWithCode:2 reason:@"Channel control data is not Boolean" object:v19 underlyingError:v22];

      v26 = v25;
      *a5 = v25;

      v17 = 0;
      goto LABEL_14;
    }

    v23 = [v19 value];

    v24 = [v23 BOOLValue];
    if (!v24)
    {
LABEL_4:
      v16 = v13;
    }

    else
    {
      v16 = [v8 evaluateInputWithContext:v9 error:a5];
    }

    v17 = v16;
LABEL_14:

    goto LABEL_15;
  }

  [NUError missingError:@"Missing data for input port" object:v11];
  *a5 = v17 = 0;
LABEL_15:

LABEL_16:

  return v17;
}

- (_NUSwitchPipeline)initWithIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1383);
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
  _NUAssertFailHandler("[_NUSwitchPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3005, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (_NUSwitchPipeline)init
{
  v3 = [[NUIdentifier alloc] initWithName:@"switch"];
  v13.receiver = self;
  v13.super_class = _NUSwitchPipeline;
  v4 = [(_NUPipeline *)&v13 initWithIdentifier:v3];
  v5 = [NUChannel alloc];
  v6 = [NUBoolSetting alloc];
  v7 = [(NUModel *)v6 initWithAttributes:MEMORY[0x1E695E0F8]];
  v8 = [NUChannelControlFormat controlFormatWithSetting:v7];
  v9 = [(NUChannel *)v5 initWithName:@"condition" format:v8 index:0];

  v10 = [(_NUPipeline *)v4 _addInputChannel:v9];
  condition = v4->_condition;
  v4->_condition = v10;

  return v4;
}

@end