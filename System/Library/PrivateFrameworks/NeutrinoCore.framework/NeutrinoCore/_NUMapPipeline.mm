@interface _NUMapPipeline
- (_NUMapPipeline)init;
- (_NUMapPipeline)initWithIdentifier:(id)identifier;
- (id)_addInputChannel:(id)channel;
- (id)_addOutputChannel:(id)channel;
- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error;
@end

@implementation _NUMapPipeline

- (id)_evaluateOutputPort:(id)port context:(id)context error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  portCopy = port;
  contextCopy = context;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  inputChannels = [(_NUPipeline *)self inputChannels];
  v11 = [inputChannels countByEnumeratingWithState:&v68 objects:v75 count:16];
  v61 = contextCopy;
  if (!v11)
  {

LABEL_34:
    inputChannels2 = [(_NUPipeline *)self inputChannels];
    contextCopy = v61;
    [NUError invalidError:@"Nothing to map" object:inputChannels2];
    *error = v46 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  selfCopy = self;
  errorCopy = error;
  v60 = portCopy;
  inputChannels2 = 0;
  v14 = *v69;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v69 != v14)
      {
        objc_enumerationMutation(inputChannels);
      }

      v16 = *(*(&v68 + 1) + 8 * i);
      name = [v16 name];
      v18 = [contextCopy dataForChannel:name];

      cardinality = [v18 cardinality];

      if (cardinality)
      {
        cardinality2 = [v18 cardinality];
        v21 = cardinality2;
        if (inputChannels2)
        {
          integerValue = [cardinality2 integerValue];
          integerValue2 = [inputChannels2 integerValue];

          if (integerValue != integerValue2)
          {
            v74[0] = inputChannels2;
            v73[0] = @"expected";
            v73[1] = @"actual";
            cardinality3 = [v18 cardinality];
            v74[1] = cardinality3;
            v73[2] = @"channel";
            name2 = [v16 name];
            v74[2] = name2;
            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
            *errorCopy = [NUError mismatchError:@"Cardinality mismatch" object:v49];

            v46 = 0;
            portCopy = v60;
            contextCopy = v61;
            goto LABEL_35;
          }

          contextCopy = v61;
        }

        else
        {
          inputChannels2 = cardinality2;
        }
      }
    }

    v12 = [inputChannels countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  error = errorCopy;
  portCopy = v60;
  self = selfCopy;
  if (!inputChannels2)
  {
    goto LABEL_34;
  }

  unsignedIntegerValue = [inputChannels2 unsignedIntegerValue];
  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:unsignedIntegerValue];
  elementSubport = [v60 elementSubport];
  v27 = elementSubport;
  if (unsignedIntegerValue)
  {
    v55 = 0;
    v52 = v25;
    v28 = 0uLL;
    v53 = elementSubport;
    v51 = unsignedIntegerValue;
    while (1)
    {
      v66 = v28;
      v67 = v28;
      v64 = v28;
      v65 = v28;
      inputChannels3 = [(_NUPipeline *)selfCopy inputChannels];
      v58 = [inputChannels3 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v58)
      {
        v57 = *v65;
        obj = inputChannels3;
        while (2)
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v65 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v64 + 1) + 8 * j);
            name3 = [v31 name];
            v33 = [v61 dataForChannel:name3];

            name4 = [v31 name];
            v35 = [(_NUPipeline *)selfCopy _inputPortNamed:name4];
            elementSubport2 = [v35 elementSubport];

            cardinality4 = [v33 cardinality];

            if (cardinality4)
            {
              v63 = 0;
              v38 = [v33 subdataAtIndex:v55 error:&v63];
              fullName2 = v63;
              if (!v38)
              {
                *errorCopy = [NUError errorWithCode:1 reason:@"Failed to evaluate subdata at index" object:v33 underlyingError:fullName2];

                v46 = 0;
                portCopy = v60;
                contextCopy = v61;
                v25 = v52;
                v27 = v53;
                v45 = obj;
                goto LABEL_41;
              }

              fullName = [elementSubport2 fullName];
              [v61 setData:v38 forChannel:fullName];

              contextCopy = v61;
            }

            else
            {
              fullName2 = [elementSubport2 fullName];
              [v61 setData:v33 forChannel:fullName2];
              contextCopy = v61;
            }
          }

          inputChannels3 = obj;
          v58 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v58)
          {
            continue;
          }

          break;
        }
      }

      v62.receiver = selfCopy;
      v62.super_class = _NUMapPipeline;
      v27 = v53;
      error = errorCopy;
      v41 = [(_NUPipeline *)&v62 _evaluateOutputPort:v53 context:contextCopy error:errorCopy];
      if (!v41)
      {
        v45 = 0;
        v46 = 0;
        portCopy = v60;
        v25 = v52;
        goto LABEL_41;
      }

      v42 = v41;
      portCopy = v60;
      v25 = v52;
      if ([v41 type] != 1)
      {
        break;
      }

      [v52 addObject:v42];

      ++v55;
      v28 = 0uLL;
      if (v55 == v51)
      {
        goto LABEL_30;
      }
    }

    [NUError unsupportedError:@"Unsupported map output" object:v42];
    *errorCopy = v46 = 0;
    v45 = v42;
  }

  else
  {
LABEL_30:
    effectiveFormat = [portCopy effectiveFormat];
    itemFormat = [effectiveFormat itemFormat];
    v45 = effectiveFormat;
    if ([itemFormat channelType] == 1)
    {
      v46 = [[NUChannelArrayData alloc] initWithArray:v25 itemFormat:itemFormat];
    }

    else
    {
      [NUError unsupportedError:@"Unsupported output format" object:effectiveFormat];
      *error = v46 = 0;
    }
  }

LABEL_41:

LABEL_35:

  return v46;
}

- (id)_addOutputChannel:(id)channel
{
  v4 = [NUChannel arrayChannel:channel];
  v8.receiver = self;
  v8.super_class = _NUMapPipeline;
  v5 = [(_NUPipeline *)&v8 _addOutputChannel:v4];
  elementSubport = [v5 elementSubport];

  return elementSubport;
}

- (id)_addInputChannel:(id)channel
{
  v4 = [NUChannel arrayChannel:channel];
  v8.receiver = self;
  v8.super_class = _NUMapPipeline;
  v5 = [(_NUPipeline *)&v8 _addInputChannel:v4];
  elementSubport = [v5 elementSubport];

  return elementSubport;
}

- (_NUMapPipeline)initWithIdentifier:(id)identifier
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
  _NUAssertFailHandler("[_NUMapPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2754, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (_NUMapPipeline)init
{
  v3 = [[NUIdentifier alloc] initWithName:@"map"];
  v6.receiver = self;
  v6.super_class = _NUMapPipeline;
  v4 = [(_NUPipeline *)&v6 initWithIdentifier:v3];

  return v4;
}

@end