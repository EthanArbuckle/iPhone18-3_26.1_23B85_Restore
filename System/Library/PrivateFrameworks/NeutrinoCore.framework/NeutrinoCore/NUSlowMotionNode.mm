@interface NUSlowMotionNode
- (BOOL)requiresVideoComposition;
- (NUSlowMotionNode)initWithSettings:(id)settings inputs:(id)inputs;
- (NUSlowMotionNode)initWithTimeRange:(id *)range rate:(float)rate input:(id)input;
- (id)_evaluateAudioMix:(id *)mix;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)_evaluateVideoProperties:(id *)properties;
- (id)_transformWithError:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation NUSlowMotionNode

- (id)_evaluateAudioMix:(id *)mix
{
  v32 = *MEMORY[0x1E69E9840];
  if (!mix)
  {
    v12 = NUAssertLogger_5458();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5458();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSlowMotionNode _evaluateAudioMix:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 402, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != nil");
  }

  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 outputVideo:mix];
  [(NUSlowMotionNode *)self rate];
  v8 = v7;
  [(NUSlowMotionNode *)self range];
  LODWORD(v9) = v8;
  v10 = [NUSlowMotionUtilities slowMotionAudioMixFromAsset:v6 rate:buf range:mix error:v9];

  return v10;
}

- (id)_evaluateVideoProperties:(id *)properties
{
  v20.receiver = self;
  v20.super_class = NUSlowMotionNode;
  v4 = [(NURenderNode *)&v20 _evaluateVideoProperties:properties];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E6987FE0];
    metadata = [(_NUVideoProperties *)v4 metadata];
    v8 = [v6 metadataItemsFromArray:metadata withKey:*MEMORY[0x1E69878B0] keySpace:*MEMORY[0x1E6987850]];
    firstObject = [v8 firstObject];

    if (firstObject)
    {
      numberValue = [firstObject numberValue];
      integerValue = [numberValue integerValue];

      [(NUSlowMotionNode *)self rate];
      v13 = fabs(v12 + -1.0) <= 0.00000999999975;
      if (integerValue != v13)
      {
        v14 = [firstObject mutableCopy];
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
        [v14 setValue:v15];

        metadata2 = [(_NUVideoProperties *)v5 metadata];
        v17 = [metadata2 mutableCopy];

        [v17 removeObject:firstObject];
        [v17 addObject:v14];
        v18 = [[_NUVideoProperties alloc] initWithProperties:v5];
        [(_NUVideoProperties *)v18 setMetadata:v17];

        v5 = v18;
      }
    }

    v5 = v5;
  }

  return v5;
}

- (id)_evaluateVideo:(id *)video
{
  v32 = *MEMORY[0x1E69E9840];
  if (!video)
  {
    v12 = NUAssertLogger_5458();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5458();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSlowMotionNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 355, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != nil");
  }

  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 outputVideo:video];
  [(NUSlowMotionNode *)self rate];
  v8 = v7;
  [(NUSlowMotionNode *)self range];
  LODWORD(v9) = v8;
  v10 = [NUSlowMotionUtilities slowMotionVideoFromAsset:v6 rate:buf range:video error:v9];

  return v10;
}

- (id)_evaluateVideoComposition:(id *)composition
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!composition)
  {
    v20 = NUAssertLogger_5458();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5458();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSlowMotionNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 311, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v5 = [(NURenderNode *)self outputVideo:?];
  if (!v5)
  {
    v14 = 0;
    goto LABEL_13;
  }

  inputs = [(NURenderNode *)self inputs];
  v7 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v8 = [v7 outputVideoComposition:composition];
  v9 = v8;
  if (v8)
  {
    instructions = [v8 instructions];
    v11 = [instructions count];

    if (v11 == 1)
    {
      v12 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v5 error:composition];
      if (v12)
      {
        v13 = [v7 videoProperties:composition];
        v14 = [v9 mutableCopy];
        v15 = [NUVideoCompositionInstruction instructionForVideoTrack:v12];
        v39[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
        [v14 setInstructions:v16];

        memset(buf, 0, 24);
        v17 = MEMORY[0x1E69C0910];
        [v13 nominalFrameRate];
        [v17 minFrameDurationForNominalFrameRate:?];
        [v14 setSourceTrackIDForFrameTiming:0];
        v36 = *buf;
        v37 = *&buf[16];
        [v14 setFrameDuration:&v36];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_12;
    }

    instructions2 = [v9 instructions];
    *composition = [NUError unsupportedError:@"Unsupported video configuration" object:instructions2];
  }

  v14 = 0;
LABEL_12:

LABEL_13:

  return v14;
}

- (BOOL)requiresVideoComposition
{
  v2 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  requiresVideoComposition = [v2 requiresVideoComposition];

  return requiresVideoComposition;
}

- (id)_evaluateImage:(id *)image
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 _evaluateImage:image];

  return v5;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v11.receiver = self;
  v11.super_class = NUSlowMotionNode;
  v7 = [(NURenderNode *)&v11 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];
  if (v7)
  {
    v9 = *&self->_range.start.epoch;
    v8 = *&self->_range.duration.timescale;
    *(v7 + 184) = *&self->_range.start.value;
    *(v7 + 200) = v9;
    *(v7 + 216) = v8;
    *(v7 + 168) = self->_rate;
  }

  return v7;
}

- (id)_transformWithError:(id *)error
{
  v5 = *&self->_range.start.epoch;
  *&v24.value = *&self->_range.start.value;
  v6 = *&self->_range.duration.timescale;
  *&range.start.value = *&self->_range.start.value;
  *&range.start.epoch = v5;
  v24.epoch = self->_range.start.epoch;
  memset(&v23, 0, sizeof(v23));
  *&range.duration.timescale = v6;
  CMTimeRangeGetEnd(&v23, &range);
  inputs = [(NURenderNode *)self inputs];
  v8 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v9 = [v8 _evaluateVideo:error];
  v10 = v9;
  if (v9)
  {
    memset(&range, 0, 24);
    [v9 duration];
    time = range.start;
    Seconds = CMTimeGetSeconds(&time);
    v12 = [NUTimeTransformSlowMo alloc];
    *&v13 = self->_rate;
    time = v24;
    v20 = v23;
    v14 = [(NUTimeTransformSlowMo *)v12 initWithSlowMoBeginTime:&time endTime:&v20 rate:v13 assetDuration:Seconds];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(NUGeometryTransform);
    }

    geomTransform = self->_geomTransform;
    self->_geomTransform = v16;

    v17 = self->_geomTransform;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"[NUSlowMotionNode _transformWithError] input's _evaluateVideo failed." object:0 underlyingError:*error];
    *error = v17 = 0;
  }

  return v17;
}

- (NUSlowMotionNode)initWithTimeRange:(id *)range rate:(float)rate input:(id)input
{
  v28[2] = *MEMORY[0x1E69E9840];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&duration.start.value = *MEMORY[0x1E6960C88];
  duration.start.epoch = *(MEMORY[0x1E6960C88] + 16);
  inputCopy = input;
  CMTimeRangeMake(&otherRange, &start.start, &duration.start);
  v9 = *&range->var0.var3;
  *&duration.start.value = *&range->var0.var0;
  *&duration.start.epoch = v9;
  *&duration.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetIntersection(&start, &duration, &otherRange);
  v10 = *&start.start.epoch;
  *&range->var0.var0 = *&start.start.value;
  *&range->var0.var3 = v10;
  *&range->var1.var1 = *&start.duration.timescale;
  v11 = *&range->var0.var3;
  *&start.start.value = *&range->var0.var0;
  *&start.start.epoch = v11;
  *&start.duration.timescale = *&range->var1.var1;
  v12 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&start];
  *&v13 = rate;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v27[0] = @"range";
  v27[1] = @"rate";
  v28[0] = v12;
  v28[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v25 = *MEMORY[0x1E695FAB0];
  v26 = inputCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v21.receiver = self;
  v21.super_class = NUSlowMotionNode;
  v17 = [(NURenderNode *)&v21 initWithSettings:v15 inputs:v16];

  v19 = *&range->var0.var3;
  v18 = *&range->var1.var1;
  *(v17 + 184) = *&range->var0.var0;
  *(v17 + 200) = v19;
  *(v17 + 216) = v18;
  *(v17 + 42) = rate;

  return v17;
}

- (NUSlowMotionNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_5478);
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
  _NUAssertFailHandler("[NUSlowMotionNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Time.m", 218, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

@end