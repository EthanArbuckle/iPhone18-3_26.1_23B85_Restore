@interface _NUReducePipeline
- (_NUReducePipeline)init;
- (_NUReducePipeline)initWithIdentifier:(id)identifier;
- (id)_addInputChannel:(id)channel;
- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error;
@end

@implementation _NUReducePipeline

- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  portCopy = port;
  contextCopy = context;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  outputChannels = [(_NUPipeline *)self outputChannels];
  v10 = [outputChannels countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v95;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v95 != v12)
        {
          objc_enumerationMutation(outputChannels);
        }

        v14 = *(*(&v94 + 1) + 8 * i);
        v15 = [(_NUPipeline *)self _inputPortForChannel:v14];

        if (!v15)
        {
          [NUError missingError:@"Missing input (initial value) channel for output channel" object:v14];
          *error = v52 = 0;
          goto LABEL_56;
        }
      }

      v11 = [outputChannels countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v11);
  }

  v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v73 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  inputChannels = [(_NUPipeline *)self inputChannels];
  v17 = [inputChannels countByEnumeratingWithState:&v90 objects:v104 count:16];
  if (!v17)
  {

LABEL_54:
    inputChannels2 = [(_NUPipeline *)self inputChannels];
    [NUError invalidError:@"Nothing to reduce" object:inputChannels2];
    outputChannels = 0;
    *error = v52 = 0;
    goto LABEL_55;
  }

  v18 = v17;
  errorCopy = error;
  v72 = portCopy;
  v74 = 0;
  obj = inputChannels;
  v19 = *v91;
  v20 = contextCopy;
  while (2)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v91 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v90 + 1) + 8 * j);
      name = [v22 name];
      v24 = [v20 dataForChannel:name];

      v25 = [(_NUPipeline *)self _inputPortForChannel:v22];
      elementSubport = [v25 elementSubport];

      fullName = [elementSubport fullName];
      v28 = [(_NUPipeline *)self _outputPortForChannel:v22];

      cardinality = [v24 cardinality];

      if (v28)
      {
        if (!cardinality)
        {
          name2 = [v22 name];
          [v77 setObject:fullName forKeyedSubscript:name2];

LABEL_17:
          v20 = contextCopy;
          [contextCopy setData:v24 forChannel:fullName];
          goto LABEL_24;
        }

        v103[0] = v24;
        v102[0] = @"data";
        v102[1] = @"channel";
        name3 = [v22 name];
        v103[1] = name3;
        name5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
        *errorCopy = [NUError invalidError:@"Initial value should not be an array" object:name5];
LABEL_52:

        v52 = 0;
        portCopy = v72;
        outputChannels = v74;
        inputChannels2 = obj;
        goto LABEL_55;
      }

      if (!cardinality)
      {
        goto LABEL_17;
      }

      name4 = [v22 name];
      [v73 setObject:fullName forKeyedSubscript:name4];

      cardinality2 = [v24 cardinality];
      v33 = cardinality2;
      if (v74)
      {
        v34 = [cardinality2 isEqualToNumber:?];

        if ((v34 & 1) == 0)
        {
          v101[0] = v74;
          v100[0] = @"expected";
          v100[1] = @"actual";
          name3 = [v24 cardinality];
          v101[1] = name3;
          v100[2] = @"channel";
          name5 = [v22 name];
          v101[2] = name5;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
          *errorCopy = [NUError mismatchError:@"Cardinality mismatch" object:v64];

          goto LABEL_52;
        }
      }

      else
      {
        v74 = cardinality2;
      }

      v20 = contextCopy;
LABEL_24:
    }

    v18 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  error = errorCopy;
  portCopy = v72;
  outputChannels = v74;
  if (!v74)
  {
    goto LABEL_54;
  }

  unsignedIntegerValue = [v74 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    obja = 0;
    v36 = 0uLL;
    v66 = unsignedIntegerValue;
    do
    {
      v88 = v36;
      v89 = v36;
      v86 = v36;
      v87 = v36;
      v37 = v73;
      v38 = [v37 countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (v38)
      {
        v39 = v38;
        inputChannels2 = 0;
        v69 = *v87;
        v41 = contextCopy;
        while (2)
        {
          v42 = 0;
          v43 = inputChannels2;
          do
          {
            if (*v87 != v69)
            {
              objc_enumerationMutation(v37);
            }

            v44 = *(*(&v86 + 1) + 8 * v42);
            v45 = [contextCopy dataForChannel:{v44, v66}];
            v85 = 0;
            v46 = [v45 subdataAtIndex:obja error:&v85];
            inputChannels2 = v85;

            if (!v46)
            {
              *errorCopy = [NUError errorWithCode:1 reason:@"Failed to evaluate subdata at index" object:v45 underlyingError:inputChannels2];

              v52 = 0;
              portCopy = v72;
              outputChannels = v74;
              goto LABEL_55;
            }

            v47 = [v37 objectForKeyedSubscript:v44];
            [contextCopy setData:v46 forChannel:v47];

            ++v42;
            v43 = inputChannels2;
          }

          while (v39 != v42);
          v39 = [v37 countByEnumeratingWithState:&v86 objects:v99 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        inputChannels2 = 0;
        v41 = contextCopy;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      outputChannels2 = [(_NUPipeline *)self outputChannels];
      v70 = [outputChannels2 countByEnumeratingWithState:&v81 objects:v98 count:16];
      if (v70)
      {
        v68 = *v82;
        while (2)
        {
          v48 = 0;
          v49 = inputChannels2;
          do
          {
            if (*v82 != v68)
            {
              objc_enumerationMutation(outputChannels2);
            }

            v50 = *(*(&v81 + 1) + 8 * v48);
            v51 = [(_NUPipeline *)self _outputPortForChannel:v50, v66];
            v79.receiver = self;
            v79.super_class = _NUReducePipeline;
            v80 = 0;
            v52 = [(_NUPipeline *)&v79 _evaluateOutputPort:v51 context:v41 error:&v80];
            v53 = v80;

            if (!v52)
            {
              *errorCopy = [NUError errorWithCode:1 reason:@"Failed to evaluate reduction pipeline" object:v51 underlyingError:v53];

              portCopy = v72;
              outputChannels = v74;
              inputChannels2 = v53;
              goto LABEL_55;
            }

            v54 = v41;
            name6 = [v50 name];
            v56 = [v77 objectForKeyedSubscript:name6];
            [v54 setData:v52 forChannel:v56];

            ++v48;
            v49 = v53;
            v41 = v54;
          }

          while (v70 != v48);
          inputChannels2 = v53;
          v70 = [outputChannels2 countByEnumeratingWithState:&v81 objects:v98 count:16];
          if (v70)
          {
            continue;
          }

          break;
        }
      }

      outputChannels = v74;
      ++obja;
      error = errorCopy;
      portCopy = v72;
      v36 = 0uLL;
    }

    while (obja != v66);
  }

  channel = [portCopy channel];
  name7 = [channel name];
  v59 = [v77 objectForKeyedSubscript:name7];
  v60 = [contextCopy dataForChannel:v59];

  if (v60)
  {
    inputChannels2 = v60;
    v52 = inputChannels2;
  }

  else
  {
    channel2 = [portCopy channel];
    *error = [NUError unknownError:@"Failed to evaluate output port" object:channel2];

    inputChannels2 = 0;
    v52 = 0;
  }

LABEL_55:

LABEL_56:

  return v52;
}

- (id)_addInputChannel:(id)channel
{
  v4 = [NUChannel arrayChannel:channel];
  v8.receiver = self;
  v8.super_class = _NUReducePipeline;
  v5 = [(_NUPipeline *)&v8 _addInputChannel:v4];
  elementSubport = [v5 elementSubport];

  return elementSubport;
}

- (_NUReducePipeline)initWithIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
  _NUAssertFailHandler("[_NUReducePipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2867, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (_NUReducePipeline)init
{
  v3 = [[NUIdentifier alloc] initWithName:@"reduce"];
  v6.receiver = self;
  v6.super_class = _NUReducePipeline;
  v4 = [(_NUPipeline *)&v6 initWithIdentifier:v3];

  return v4;
}

@end