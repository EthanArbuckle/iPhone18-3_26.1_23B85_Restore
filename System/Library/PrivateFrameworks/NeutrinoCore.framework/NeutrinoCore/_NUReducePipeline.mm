@interface _NUReducePipeline
- (_NUReducePipeline)init;
- (_NUReducePipeline)initWithIdentifier:(id)a3;
- (id)_addInputChannel:(id)a3;
- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation _NUReducePipeline

- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v78 = a4;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v9 = [(_NUPipeline *)self outputChannels];
  v10 = [v9 countByEnumeratingWithState:&v94 objects:v105 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v94 + 1) + 8 * i);
        v15 = [(_NUPipeline *)self _inputPortForChannel:v14];

        if (!v15)
        {
          [NUError missingError:@"Missing input (initial value) channel for output channel" object:v14];
          *a5 = v52 = 0;
          goto LABEL_56;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v11);
  }

  v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v73 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = [(_NUPipeline *)self inputChannels];
  v17 = [v16 countByEnumeratingWithState:&v90 objects:v104 count:16];
  if (!v17)
  {

LABEL_54:
    v40 = [(_NUPipeline *)self inputChannels];
    [NUError invalidError:@"Nothing to reduce" object:v40];
    v9 = 0;
    *a5 = v52 = 0;
    goto LABEL_55;
  }

  v18 = v17;
  v71 = a5;
  v72 = v8;
  v74 = 0;
  obj = v16;
  v19 = *v91;
  v20 = v78;
  while (2)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v91 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v90 + 1) + 8 * j);
      v23 = [v22 name];
      v24 = [v20 dataForChannel:v23];

      v25 = [(_NUPipeline *)self _inputPortForChannel:v22];
      v26 = [v25 elementSubport];

      v27 = [v26 fullName];
      v28 = [(_NUPipeline *)self _outputPortForChannel:v22];

      v29 = [v24 cardinality];

      if (v28)
      {
        if (!v29)
        {
          v30 = [v22 name];
          [v77 setObject:v27 forKeyedSubscript:v30];

LABEL_17:
          v20 = v78;
          [v78 setData:v24 forChannel:v27];
          goto LABEL_24;
        }

        v103[0] = v24;
        v102[0] = @"data";
        v102[1] = @"channel";
        v62 = [v22 name];
        v103[1] = v62;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
        *v71 = [NUError invalidError:@"Initial value should not be an array" object:v63];
LABEL_52:

        v52 = 0;
        v8 = v72;
        v9 = v74;
        v40 = obj;
        goto LABEL_55;
      }

      if (!v29)
      {
        goto LABEL_17;
      }

      v31 = [v22 name];
      [v73 setObject:v27 forKeyedSubscript:v31];

      v32 = [v24 cardinality];
      v33 = v32;
      if (v74)
      {
        v34 = [v32 isEqualToNumber:?];

        if ((v34 & 1) == 0)
        {
          v101[0] = v74;
          v100[0] = @"expected";
          v100[1] = @"actual";
          v62 = [v24 cardinality];
          v101[1] = v62;
          v100[2] = @"channel";
          v63 = [v22 name];
          v101[2] = v63;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
          *v71 = [NUError mismatchError:@"Cardinality mismatch" object:v64];

          goto LABEL_52;
        }
      }

      else
      {
        v74 = v32;
      }

      v20 = v78;
LABEL_24:
    }

    v18 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  a5 = v71;
  v8 = v72;
  v9 = v74;
  if (!v74)
  {
    goto LABEL_54;
  }

  v35 = [v74 unsignedIntegerValue];
  if (v35)
  {
    obja = 0;
    v36 = 0uLL;
    v66 = v35;
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
        v40 = 0;
        v69 = *v87;
        v41 = v78;
        while (2)
        {
          v42 = 0;
          v43 = v40;
          do
          {
            if (*v87 != v69)
            {
              objc_enumerationMutation(v37);
            }

            v44 = *(*(&v86 + 1) + 8 * v42);
            v45 = [v78 dataForChannel:{v44, v66}];
            v85 = 0;
            v46 = [v45 subdataAtIndex:obja error:&v85];
            v40 = v85;

            if (!v46)
            {
              *v71 = [NUError errorWithCode:1 reason:@"Failed to evaluate subdata at index" object:v45 underlyingError:v40];

              v52 = 0;
              v8 = v72;
              v9 = v74;
              goto LABEL_55;
            }

            v47 = [v37 objectForKeyedSubscript:v44];
            [v78 setData:v46 forChannel:v47];

            ++v42;
            v43 = v40;
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
        v40 = 0;
        v41 = v78;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v67 = [(_NUPipeline *)self outputChannels];
      v70 = [v67 countByEnumeratingWithState:&v81 objects:v98 count:16];
      if (v70)
      {
        v68 = *v82;
        while (2)
        {
          v48 = 0;
          v49 = v40;
          do
          {
            if (*v82 != v68)
            {
              objc_enumerationMutation(v67);
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
              *v71 = [NUError errorWithCode:1 reason:@"Failed to evaluate reduction pipeline" object:v51 underlyingError:v53];

              v8 = v72;
              v9 = v74;
              v40 = v53;
              goto LABEL_55;
            }

            v54 = v41;
            v55 = [v50 name];
            v56 = [v77 objectForKeyedSubscript:v55];
            [v54 setData:v52 forChannel:v56];

            ++v48;
            v49 = v53;
            v41 = v54;
          }

          while (v70 != v48);
          v40 = v53;
          v70 = [v67 countByEnumeratingWithState:&v81 objects:v98 count:16];
          if (v70)
          {
            continue;
          }

          break;
        }
      }

      v9 = v74;
      ++obja;
      a5 = v71;
      v8 = v72;
      v36 = 0uLL;
    }

    while (obja != v66);
  }

  v57 = [v8 channel];
  v58 = [v57 name];
  v59 = [v77 objectForKeyedSubscript:v58];
  v60 = [v78 dataForChannel:v59];

  if (v60)
  {
    v40 = v60;
    v52 = v40;
  }

  else
  {
    v65 = [v8 channel];
    *a5 = [NUError unknownError:@"Failed to evaluate output port" object:v65];

    v40 = 0;
    v52 = 0;
  }

LABEL_55:

LABEL_56:

  return v52;
}

- (id)_addInputChannel:(id)a3
{
  v4 = [NUChannel arrayChannel:a3];
  v8.receiver = self;
  v8.super_class = _NUReducePipeline;
  v5 = [(_NUPipeline *)&v8 _addInputChannel:v4];
  v6 = [v5 elementSubport];

  return v6;
}

- (_NUReducePipeline)initWithIdentifier:(id)a3
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