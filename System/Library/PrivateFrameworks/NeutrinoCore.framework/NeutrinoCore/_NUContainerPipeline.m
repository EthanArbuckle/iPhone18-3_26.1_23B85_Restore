@interface _NUContainerPipeline
- (_NUContainerPipeline)init;
- (_NUContainerPipeline)initWithIdentifier:(id)a3;
- (id)_addInputChannel:(id)a3;
- (id)_addOutputChannel:(id)a3;
- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation _NUContainerPipeline

- (id)_evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v64 = a4;
  v51 = v6;
  v7 = [v6 effectiveFormat];
  v50 = v7;
  if ([v7 channelType] == 1 || objc_msgSend(v7, "mediaType", v7) == 4)
  {
    v52 = [v6 elementSubport];
    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = [v8 components];
    v10 = v64;
    v57 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v57)
    {
      v55 = v8;
      v56 = *v77;
      v54 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v77 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v76 + 1) + 8 * v11);
          v13 = [v8 components];
          v14 = [v13 objectForKeyedSubscript:v12];

          v60 = v12;
          v67 = [NUChannelMatching name:v12];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v15 = [(_NUPipeline *)self inputChannels];
          v16 = [v15 countByEnumeratingWithState:&v72 objects:v84 count:16];
          if (!v16)
          {

LABEL_37:
            goto LABEL_38;
          }

          v17 = v16;
          v62 = 0;
          v63 = v14;
          v58 = v11;
          v18 = *v73;
          v61 = v15;
          v65 = *v73;
          do
          {
            v19 = 0;
            v69 = v17;
            do
            {
              if (*v73 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v72 + 1) + 8 * v19);
              v21 = [v20 name];
              v22 = [v10 dataForChannel:v21];

              v23 = [v22 format];
              if ([v23 channelType] != 1)
              {

                goto LABEL_24;
              }

              v24 = [v22 format];
              v25 = [v24 mediaType];

              if (v25 != 4)
              {
                goto LABEL_23;
              }

              v26 = [v20 name];
              v27 = [(_NUPipeline *)self _inputPortNamed:v26];

              v28 = [v27 elementSubport];
              v29 = [v22 media];
              v30 = [v29 mediaMatching:v67];
              if (v30)
              {
                v68 = v28;
                v31 = [NUChannelMediaData media:v30];
                v32 = [v31 format];
                v33 = [v32 isEqualToChannelFormat:v63];

                if (v33)
                {
                  v34 = v68;
                  v35 = [v68 fullName];
                  [v10 setData:v31 forChannel:v35];

                  v36 = 0;
                  v15 = v61;
                  ++v62;
                  v37 = 1;
                }

                else
                {
                  v83[0] = v63;
                  v82[0] = @"expected";
                  v82[1] = @"actual";
                  v39 = [v31 format];
                  v82[2] = @"component";
                  v83[1] = v39;
                  v83[2] = v60;
                  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
                  *a5 = [NUError mismatchError:@"Component format mismatch" object:v40];

                  v37 = 0;
                  v36 = 1;
                  v15 = v61;
                  v34 = v68;
                }
              }

              else
              {
                v31 = +[NUChannelData null];
                v38 = [v28 fullName];
                [v10 setData:v31 forChannel:v38];

                v34 = v28;
                v37 = 0;
                v36 = 5;
              }

              v18 = v65;
              if (v37)
              {
                v10 = v64;
LABEL_23:
                v17 = v69;
LABEL_24:

                goto LABEL_25;
              }

              v10 = v64;
              v17 = v69;
              if (v30)
              {
                v9 = v54;
                v8 = v55;
                v11 = v58;
                v14 = v63;
                goto LABEL_34;
              }

LABEL_25:
              ++v19;
            }

            while (v17 != v19);
            v41 = [v15 countByEnumeratingWithState:&v72 objects:v84 count:16];
            v17 = v41;
          }

          while (v41);

          v9 = v54;
          v8 = v55;
          v11 = v58;
          v14 = v63;
          if (!v62)
          {
            goto LABEL_37;
          }

          v70.receiver = self;
          v70.super_class = _NUContainerPipeline;
          v71 = 0;
          v42 = [(_NUPipeline *)&v70 _evaluateOutputPort:v52 context:v10 error:&v71];
          v15 = v71;
          if (v42)
          {
            v43 = [v42 format];
            v44 = [v43 isEqualToChannelFormat:v63];

            if (v44)
            {
              [v54 setObject:v42 forKeyedSubscript:v60];
              v36 = 0;
            }

            else
            {
              v80[0] = @"expected";
              v80[1] = @"actual";
              v81[0] = v63;
              v45 = [v42 format];
              v81[1] = v45;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
              *a5 = [NUError mismatchError:@"Output component format mismatch" object:v46];

              v14 = v63;
              v36 = 1;
            }

            v10 = v64;
          }

          else
          {
            v36 = 1;
            *a5 = [NUError errorWithCode:1 reason:@"Failed to evaluate output component" object:v60 underlyingError:v15];
          }

LABEL_34:
          if (v36)
          {

            v48 = 0;
            goto LABEL_46;
          }

LABEL_38:
          ++v11;
        }

        while (v11 != v57);
        v47 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
        v57 = v47;
      }

      while (v47);
    }

    v48 = [NUChannelData aggregateDataWithFormat:v8 components:v9 error:a5];
LABEL_46:
  }

  else
  {
    [NUError invalidError:@"Expected container media format" object:v6];
    *a5 = v48 = 0;
    v10 = v64;
  }

  return v48;
}

- (id)_addOutputChannel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _NUContainerPipeline;
  v5 = [(_NUPipeline *)&v10 _addOutputChannel:v4];
  v6 = [v4 format];
  if ([v6 channelType] == 1)
  {
    v7 = [v4 format];
    v8 = [v7 mediaType];

    if (v8 != 4)
    {
      goto LABEL_5;
    }

    [v5 elementSubport];
    v5 = v6 = v5;
  }

LABEL_5:

  return v5;
}

- (id)_addInputChannel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _NUContainerPipeline;
  v5 = [(_NUPipeline *)&v10 _addInputChannel:v4];
  v6 = [v4 format];
  if ([v6 channelType] == 1)
  {
    v7 = [v4 format];
    v8 = [v7 mediaType];

    if (v8 != 4)
    {
      goto LABEL_5;
    }

    [v5 elementSubport];
    v5 = v6 = v5;
  }

LABEL_5:

  return v5;
}

- (_NUContainerPipeline)initWithIdentifier:(id)a3
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
  _NUAssertFailHandler("[_NUContainerPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 3548, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (_NUContainerPipeline)init
{
  v3 = [[NUIdentifier alloc] initWithName:@"container"];
  v6.receiver = self;
  v6.super_class = _NUContainerPipeline;
  v4 = [(_NUPipeline *)&v6 initWithIdentifier:v3];

  return v4;
}

@end