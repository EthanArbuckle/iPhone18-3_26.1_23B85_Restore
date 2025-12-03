@interface NUMuteAudioNode
- (NUMuteAudioNode)initWithInput:(id)input;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateVideo:(id *)video;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUMuteAudioNode

- (id)_evaluateImage:(id *)image
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 _evaluateImage:image];

  return v5;
}

- (id)_evaluateVideo:(id *)video
{
  v41 = *MEMORY[0x1E69E9840];
  if (!video)
  {
    v15 = NUAssertLogger_31502();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v38 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_31502();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v22;
        v39 = 2114;
        v40 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMuteAudioNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Audio.m", 47, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != nil");
  }

  v35.receiver = self;
  v35.super_class = NUMuteAudioNode;
  v4 = [(NURenderNode *)&v35 _evaluateVideo:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 tracksWithMediaType:*MEMORY[0x1E69875A0]];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [v7 removeTrack:*(*(&v31 + 1) + 8 * i)];
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v10);
      }

      v13 = v7;
    }

    else
    {
      *video = [NUError errorWithCode:1 reason:@"[NUMuteAudioNode _evaluateVideo] failed to get mutableCopy" object:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUMuteAudioNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (NUMuteAudioNode)initWithInput:(id)input
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695FAB0];
  v11[0] = input;
  v4 = MEMORY[0x1E695DF20];
  inputCopy = input;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = NUMuteAudioNode;
  v7 = [(NURenderNode *)&v9 initWithSettings:MEMORY[0x1E695E0F8] inputs:v6];

  return v7;
}

@end