@interface NULivePhotoKeyFrameMetaDataNode
- (NULivePhotoKeyFrameMetaDataNode)initWithSettings:(id)settings inputs:(id)inputs;
- (NULivePhotoKeyFrameMetaDataNode)initWithTime:(id *)time input:(id)input;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoProperties:(id *)properties;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NULivePhotoKeyFrameMetaDataNode

- (id)_evaluateImage:(id *)image
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 _evaluateImage:image];

  return v5;
}

- (id)_evaluateVideoProperties:(id *)properties
{
  v26 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    v8 = NUAssertLogger_1092();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_1092();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoKeyFrameMetaDataNode _evaluateVideoProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+KeyFrame.m", 106, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "error != NULL");
  }

  v24.receiver = self;
  v24.super_class = NULivePhotoKeyFrameMetaDataNode;
  v4 = [(NURenderNode *)&v24 _evaluateVideoProperties:?];
  if (v4)
  {
    v5 = v4;
    v6 = [[_NUVideoProperties alloc] initWithProperties:v4];
    *buf = *&self->_timeFromAdjustment.value;
    *&buf[16] = self->_timeFromAdjustment.epoch;
    [(_NUVideoProperties *)v6 setLivePhotoKeyFrameTime:buf];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_evaluateVideo:(id *)video
{
  v31 = *MEMORY[0x1E69E9840];
  if (!video)
  {
    v10 = NUAssertLogger_1092();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_1092();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoKeyFrameMetaDataNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+KeyFrame.m", 78, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "error != nil");
  }

  v26.receiver = self;
  v26.super_class = NULivePhotoKeyFrameMetaDataNode;
  v4 = [(NURenderNode *)&v26 _evaluateVideo:?];
  if (v4)
  {
    v5 = [NUVideoUtilities metadataTrackWithStillImageDisplayTimeMarkerInLivePhotoAsset:v4];
    if (v5)
    {
      v6 = [v4 mutableCopy];
      if (v6)
      {
        v7 = [v6 trackWithTrackID:{objc_msgSend(v5, "trackID")}];
        [v6 removeTrack:v7];

        v8 = v6;
      }

      else
      {
        *video = [NUError errorWithCode:1 reason:@"[NULivePhotoKeyFrameMetaDataNode _evaluateVideo] failed to get mutableCopy" object:v4];
      }
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v10.receiver = self;
  v10.super_class = NULivePhotoKeyFrameMetaDataNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];
  if (v7)
  {
    epoch = self->_timeFromAdjustment.epoch;
    *(v7 + 168) = *&self->_timeFromAdjustment.value;
    *(v7 + 184) = epoch;
  }

  return v7;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  v10 = [stateCopy copy];
  if (!stateCopy)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_5;
  }

  [stateCopy time];
  if ((v17 & 0x100000000) == 0)
  {
LABEL_5:
    v14 = *&self->_timeFromAdjustment.value;
    epoch = self->_timeFromAdjustment.epoch;
    [v10 setTime:&v14];
  }

  v13.receiver = self;
  v13.super_class = NULivePhotoKeyFrameMetaDataNode;
  v11 = [(NURenderNode *)&v13 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];

  return v11;
}

- (NULivePhotoKeyFrameMetaDataNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1107);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1107);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1107);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NULivePhotoKeyFrameMetaDataNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+KeyFrame.m", 38, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

- (NULivePhotoKeyFrameMetaDataNode)initWithTime:(id *)time input:(id)input
{
  v36[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!inputCopy)
  {
    v15 = NUAssertLogger_1092();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_1092();
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
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v22;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NULivePhotoKeyFrameMetaDataNode initWithTime:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+KeyFrame.m", 27, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "input != nil");
  }

  v7 = inputCopy;
  v8 = *MEMORY[0x1E695FB30];
  time = *time;
  v35 = v8;
  v9 = CMTimeCopyAsDictionary(&time, 0);
  v36[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v32 = *MEMORY[0x1E695FAB0];
  v33 = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v31.receiver = self;
  v31.super_class = NULivePhotoKeyFrameMetaDataNode;
  v12 = [(NURenderNode *)&v31 initWithSettings:v10 inputs:v11];

  var3 = time->var3;
  *(v12 + 168) = *&time->var0;
  *(v12 + 23) = var3;

  return v12;
}

@end