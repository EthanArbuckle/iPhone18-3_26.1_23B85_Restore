@interface _NUMapPipeline
- (_NUMapPipeline)init;
- (_NUMapPipeline)initWithIdentifier:(id)a3;
- (id)_addInputChannel:(id)a3;
- (id)_addOutputChannel:(id)a3;
- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation _NUMapPipeline

- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = [(_NUPipeline *)self inputChannels];
  v11 = [v10 countByEnumeratingWithState:&v68 objects:v75 count:16];
  v61 = v9;
  if (!v11)
  {

LABEL_34:
    v13 = [(_NUPipeline *)self inputChannels];
    v9 = v61;
    [NUError invalidError:@"Nothing to map" object:v13];
    *a5 = v46 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  v56 = self;
  v59 = a5;
  v60 = v8;
  v13 = 0;
  v14 = *v69;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v69 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v68 + 1) + 8 * i);
      v17 = [v16 name];
      v18 = [v9 dataForChannel:v17];

      v19 = [v18 cardinality];

      if (v19)
      {
        v20 = [v18 cardinality];
        v21 = v20;
        if (v13)
        {
          v22 = [v20 integerValue];
          v23 = [v13 integerValue];

          if (v22 != v23)
          {
            v74[0] = v13;
            v73[0] = @"expected";
            v73[1] = @"actual";
            v47 = [v18 cardinality];
            v74[1] = v47;
            v73[2] = @"channel";
            v48 = [v16 name];
            v74[2] = v48;
            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
            *v59 = [NUError mismatchError:@"Cardinality mismatch" object:v49];

            v46 = 0;
            v8 = v60;
            v9 = v61;
            goto LABEL_35;
          }

          v9 = v61;
        }

        else
        {
          v13 = v20;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  a5 = v59;
  v8 = v60;
  self = v56;
  if (!v13)
  {
    goto LABEL_34;
  }

  v24 = [v13 unsignedIntegerValue];
  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v24];
  v26 = [v60 elementSubport];
  v27 = v26;
  if (v24)
  {
    v55 = 0;
    v52 = v25;
    v28 = 0uLL;
    v53 = v26;
    v51 = v24;
    while (1)
    {
      v66 = v28;
      v67 = v28;
      v64 = v28;
      v65 = v28;
      v29 = [(_NUPipeline *)v56 inputChannels];
      v58 = [v29 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v58)
      {
        v57 = *v65;
        obj = v29;
        while (2)
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v65 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v64 + 1) + 8 * j);
            v32 = [v31 name];
            v33 = [v61 dataForChannel:v32];

            v34 = [v31 name];
            v35 = [(_NUPipeline *)v56 _inputPortNamed:v34];
            v36 = [v35 elementSubport];

            v37 = [v33 cardinality];

            if (v37)
            {
              v63 = 0;
              v38 = [v33 subdataAtIndex:v55 error:&v63];
              v39 = v63;
              if (!v38)
              {
                *v59 = [NUError errorWithCode:1 reason:@"Failed to evaluate subdata at index" object:v33 underlyingError:v39];

                v46 = 0;
                v8 = v60;
                v9 = v61;
                v25 = v52;
                v27 = v53;
                v45 = obj;
                goto LABEL_41;
              }

              v40 = [v36 fullName];
              [v61 setData:v38 forChannel:v40];

              v9 = v61;
            }

            else
            {
              v39 = [v36 fullName];
              [v61 setData:v33 forChannel:v39];
              v9 = v61;
            }
          }

          v29 = obj;
          v58 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v58)
          {
            continue;
          }

          break;
        }
      }

      v62.receiver = v56;
      v62.super_class = _NUMapPipeline;
      v27 = v53;
      a5 = v59;
      v41 = [(_NUPipeline *)&v62 _evaluateOutputPort:v53 context:v9 error:v59];
      if (!v41)
      {
        v45 = 0;
        v46 = 0;
        v8 = v60;
        v25 = v52;
        goto LABEL_41;
      }

      v42 = v41;
      v8 = v60;
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
    *v59 = v46 = 0;
    v45 = v42;
  }

  else
  {
LABEL_30:
    v43 = [v8 effectiveFormat];
    v44 = [v43 itemFormat];
    v45 = v43;
    if ([v44 channelType] == 1)
    {
      v46 = [[NUChannelArrayData alloc] initWithArray:v25 itemFormat:v44];
    }

    else
    {
      [NUError unsupportedError:@"Unsupported output format" object:v43];
      *a5 = v46 = 0;
    }
  }

LABEL_41:

LABEL_35:

  return v46;
}

- (id)_addOutputChannel:(id)a3
{
  v4 = [NUChannel arrayChannel:a3];
  v8.receiver = self;
  v8.super_class = _NUMapPipeline;
  v5 = [(_NUPipeline *)&v8 _addOutputChannel:v4];
  v6 = [v5 elementSubport];

  return v6;
}

- (id)_addInputChannel:(id)a3
{
  v4 = [NUChannel arrayChannel:a3];
  v8.receiver = self;
  v8.super_class = _NUMapPipeline;
  v5 = [(_NUPipeline *)&v8 _addInputChannel:v4];
  v6 = [v5 elementSubport];

  return v6;
}

- (_NUMapPipeline)initWithIdentifier:(id)a3
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