@interface NURenderPipelineState
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- (BOOL)applyPipelineSettings:(id)settings error:(id *)error;
- (BOOL)endGroupWithName:(id)name error:(id *)error;
- (BOOL)updatePipelineStateForWindowedSampleIndex:(unint64_t)index;
- (NURenderPipelineState)init;
- (id)beginGroupWithName:(id)name error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForCopy;
- (id)pipelineSettingsFromSourceSettings:(id)settings;
- (void)resetRenderTagGroups;
@end

@implementation NURenderPipelineState

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  objc_copyStruct(v4, &self->_scale, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (BOOL)updatePipelineStateForWindowedSampleIndex:(unint64_t)index
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_videoSampleSlices count]<= index)
  {
    v10 = NUAssertLogger_1288();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Out of bounds index for windowed samples"];
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_1288();
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
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState updatePipelineStateForWindowedSampleIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 276, @"Out of bounds index for windowed samples", v22, v23, v24, v25, v26);
  }

  v5 = [(NSArray *)self->_videoSampleSlices objectAtIndexedSubscript:index];
  v6 = v5;
  if (v5)
  {
    [v5 frameTime];
  }

  else
  {
    v27 = 0uLL;
    v28 = 0;
  }

  *buf = v27;
  *&buf[16] = v28;
  [(NURenderPipelineState *)self setTime:buf];
  videoFrames = [v6 videoFrames];
  [(NURenderPipelineState *)self setVideoFrames:videoFrames];

  metadataSamples = [v6 metadataSamples];
  [(NURenderPipelineState *)self setVideoMetadataSamples:metadataSamples];

  return 1;
}

- (id)pipelineSettingsFromSourceSettings:(id)settings
{
  v3 = MEMORY[0x1E695DF90];
  settingsCopy = settings;
  v5 = objc_alloc_init(v3);
  v6 = [settingsCopy objectForKeyedSubscript:@"scale"];
  [v5 setObject:v6 forKeyedSubscript:@"scale"];

  v7 = [settingsCopy objectForKeyedSubscript:@"frameTime"];
  [v5 setObject:v7 forKeyedSubscript:@"frameTime"];

  v8 = [settingsCopy objectForKeyedSubscript:@"defaultFrameTime"];
  [v5 setObject:v8 forKeyedSubscript:@"defaultFrameTime"];

  v9 = [settingsCopy objectForKeyedSubscript:@"auxiliaryImageType"];
  [v5 setObject:v9 forKeyedSubscript:@"auxiliaryImageType"];

  v10 = [settingsCopy objectForKeyedSubscript:@"mediaComponentType"];
  [v5 setObject:v10 forKeyedSubscript:@"mediaComponentType"];

  v11 = [settingsCopy objectForKeyedSubscript:@"sampleMode"];

  [v5 setObject:v11 forKeyedSubscript:@"sampleMode"];

  return v5;
}

- (BOOL)applyPipelineSettings:(id)settings error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!error)
  {
    v14 = NUAssertLogger_1288();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_1288();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState applyPipelineSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 188, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != nil");
  }

  v7 = settingsCopy;
  if ([(NURenderPipelineState *)self doNotOverride])
  {
    goto LABEL_3;
  }

  v9 = [v7 objectForKeyedSubscript:@"scale"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (*buf = NUScaleUnknown, [v9 getValue:buf], *buf < 1) || *&buf[8] < 1)
    {
      v12 = [NUError invalidError:@"invalid scale in settings" object:v9];
LABEL_14:
      v8 = 0;
      *error = v12;
LABEL_36:

      goto LABEL_37;
    }

    *buf = NUScaleUnknown;
    [v9 getValue:buf];
    [(NURenderPipelineState *)self setScale:*buf, *&buf[8]];
  }

  v10 = [v7 objectForKeyedSubscript:@"frameTime"];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 CMTimeValue], (v36 & 1) == 0))
    {
      v11 = [NUError invalidError:@"invalid time in settings" object:v10];
      goto LABEL_34;
    }

    [v10 CMTimeValue];
    *buf = v34;
    *&buf[16] = v35;
    [(NURenderPipelineState *)self setTime:buf];
  }

  v9 = [v7 objectForKeyedSubscript:@"defaultFrameTime"];

  if (v9)
  {
    [(NURenderPipelineState *)self time];
    if ((v33 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 CMTimeValue], (v32 & 1) == 0))
      {
        v12 = [NUError invalidError:@"invalid time in settings" object:v9];
        goto LABEL_14;
      }

      [v9 CMTimeValue];
      *buf = v30;
      *&buf[16] = v31;
      [(NURenderPipelineState *)self setTime:buf];
    }
  }

  v10 = [v7 objectForKeyedSubscript:@"auxiliaryImageType"];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !NUAuxiliaryImageTypeFromString(v10))
    {
      v11 = [NUError invalidError:@"invalid auxiliaryImageType in settings" object:v10];
      goto LABEL_34;
    }

    [(NURenderPipelineState *)self setAuxiliaryImageType:NUAuxiliaryImageTypeFromString(v10)];
  }

  v9 = [v7 objectForKeyedSubscript:@"mediaComponentType"];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !NUMediaComponentTypeFromString(v9))
    {
      v12 = [NUError invalidError:@"invalid mediaComponentType in settings" object:v9];
      goto LABEL_14;
    }

    [(NURenderPipelineState *)self setMediaComponentType:NUMediaComponentTypeFromString(v9)];
  }

  v10 = [v7 objectForKeyedSubscript:@"sampleMode"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NURenderPipelineState *)self setSampleMode:NUSampleModeFromString(v10)];
      v8 = 1;
LABEL_35:
      v9 = v10;
      goto LABEL_36;
    }

    v11 = [NUError invalidError:@"invalid sampleMode in source settings" object:v10];
LABEL_34:
    v8 = 0;
    *error = v11;
    goto LABEL_35;
  }

LABEL_3:
  v8 = 1;
LABEL_37:

  return v8;
}

- (BOOL)endGroupWithName:(id)name error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v17 = NUAssertLogger_1288();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v50 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_1288();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState endGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 166, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "name != nil");
  }

  if (!error)
  {
    v24 = NUAssertLogger_1288();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v50 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_1288();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v40;
        v51 = 2114;
        v52 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState endGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 167, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != nil");
  }

  v7 = nameCopy;
  currentGroup = [(NURenderPipelineState *)self currentGroup];
  path = [currentGroup path];
  lastPathComponent = [path lastPathComponent];

  v11 = [v7 isEqualToString:lastPathComponent];
  if (v11)
  {
    currentGroup2 = [(NURenderPipelineState *)self currentGroup];
    parent = [currentGroup2 parent];
    currentGroup = self->_currentGroup;
    self->_currentGroup = parent;

    --self->_groupCount;
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end scoping (%@) does not match the start namespace (%@)", v7, lastPathComponent];
    *error = [NUError errorWithCode:5 reason:v15 object:v7];
  }

  return v11;
}

- (id)beginGroupWithName:(id)name error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v16 = NUAssertLogger_1288();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v49 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_1288();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v30;
        v50 = 2114;
        v51 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState beginGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 137, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "name != nil");
  }

  if (!error)
  {
    v23 = NUAssertLogger_1288();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v49 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_1288();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols3 = [v40 callStackSymbols];
        v43 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v39;
        v50 = 2114;
        v51 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState beginGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 138, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != nil");
  }

  v7 = nameCopy;
  if ([NURenderTagNode validateName:nameCopy error:error])
  {
    currentGroup = [(NURenderPipelineState *)self currentGroup];
    v9 = [currentGroup childWithName:v7];

    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      path = [currentGroup path];
      v12 = [v10 stringWithFormat:@"A group with name '%@' already exists on parent : '%@'", v7, path];

      *error = [NUError errorWithCode:5 reason:v12 object:v7];

      v13 = 0;
    }

    else
    {
      v13 = objc_opt_new();
      currentGroup2 = [(NURenderPipelineState *)self currentGroup];
      [currentGroup2 addChild:v13 withName:v7];

      objc_storeStrong(&self->_currentGroup, v13);
      ++self->_groupCount;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NURenderPipelineState *)self evaluationMode]- 1;
  if (v5 > 2)
  {
    v6 = @"Prepare";
  }

  else
  {
    v6 = off_1E8109570[v5];
  }

  currentGroup = [(NURenderPipelineState *)self currentGroup];
  mediaComponentType = self->_mediaComponentType;
  if (mediaComponentType > 2)
  {
    v9 = @"Invalid";
  }

  else
  {
    v9 = off_1E81098F0[mediaComponentType];
  }

  v10 = v9;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", self->_scale.numerator, self->_scale.denominator];
  auxiliaryImageType = self->_auxiliaryImageType;
  if (auxiliaryImageType > 0xB)
  {
    v13 = @"Invalid";
  }

  else
  {
    v13 = off_1E8109908[auxiliaryImageType];
  }

  v14 = v13;
  time = self->_time;
  v15 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time);
  v16 = [v3 stringWithFormat:@"<%@:%p> evaluationMode=%@ group=%@ componentType=%@ scale=%@ auxType=%@ time=%@", v4, self, v6, currentGroup, v10, v11, v14, v15];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  initForCopy = [objc_alloc(objc_opt_class()) initForCopy];
  *(initForCopy + 24) = [(NURenderPipelineState *)self serialNumber];
  [initForCopy setEvaluationMode:{-[NURenderPipelineState evaluationMode](self, "evaluationMode")}];
  [initForCopy setMediaComponentType:{-[NURenderPipelineState mediaComponentType](self, "mediaComponentType")}];
  [initForCopy setAuxiliaryImageType:{-[NURenderPipelineState auxiliaryImageType](self, "auxiliaryImageType")}];
  [(NURenderPipelineState *)self time];
  v12 = v14;
  v13 = v15;
  [initForCopy setTime:&v12];
  [initForCopy setPlaybackDirection:{-[NURenderPipelineState playbackDirection](self, "playbackDirection")}];
  [initForCopy setSampleMode:{-[NURenderPipelineState sampleMode](self, "sampleMode")}];
  scale = [(NURenderPipelineState *)self scale];
  [initForCopy setScale:{scale, v6}];
  [initForCopy setRoundingPolicy:{-[NURenderPipelineState roundingPolicy](self, "roundingPolicy")}];
  [initForCopy setDisableIntermediateCaching:{-[NURenderPipelineState disableIntermediateCaching](self, "disableIntermediateCaching")}];
  [initForCopy setEnableTransparency:{-[NURenderPipelineState enableTransparency](self, "enableTransparency")}];
  [initForCopy setEnforceEvenDimensions:{-[NURenderPipelineState enforceEvenDimensions](self, "enforceEvenDimensions")}];
  [initForCopy setDoNotOverride:{-[NURenderPipelineState doNotOverride](self, "doNotOverride")}];
  [initForCopy setLowMemoryMode:{-[NURenderPipelineState lowMemoryMode](self, "lowMemoryMode")}];
  pipelineFilters = [(NURenderPipelineState *)self pipelineFilters];
  [initForCopy setPipelineFilters:pipelineFilters];

  videoFrames = [(NURenderPipelineState *)self videoFrames];
  [initForCopy setVideoFrames:videoFrames];

  videoMetadataSamples = [(NURenderPipelineState *)self videoMetadataSamples];
  [initForCopy setVideoMetadataSamples:videoMetadataSamples];

  videoSampleSlices = [(NURenderPipelineState *)self videoSampleSlices];
  [initForCopy setVideoSampleSlices:videoSampleSlices];

  objc_storeStrong((initForCopy + 120), self->_rootGroup);
  *(initForCopy + 136) = self->_groupCount;
  objc_storeStrong((initForCopy + 128), self->_currentGroup);
  objc_storeStrong((initForCopy + 8), self->_groupStack);
  objc_storeStrong((initForCopy + 80), self->_device);
  return initForCopy;
}

- (id)initForCopy
{
  v3.receiver = self;
  v3.super_class = NURenderPipelineState;
  return [(NURenderPipelineState *)&v3 init];
}

- (void)resetRenderTagGroups
{
  v3 = objc_alloc_init(NURenderTagGroup);
  rootGroup = self->_rootGroup;
  self->_rootGroup = v3;

  self->_groupCount = 1;
  objc_storeStrong(&self->_currentGroup, self->_rootGroup);
  self->_groupStack = objc_alloc_init(MEMORY[0x1E695DF70]);

  MEMORY[0x1EEE66BB8]();
}

- (NURenderPipelineState)init
{
  v11.receiver = self;
  v11.super_class = NURenderPipelineState;
  v2 = [(NURenderPipelineState *)&v11 init];
  add = atomic_fetch_add(&NURenderPipelineStateSerialNumber, 1uLL);
  v2->_evaluationMode = 0;
  v2->_mediaComponentType = 0;
  v2->_serialNumber = add;
  *&v2->_auxiliaryImageType = xmmword_1C03C2750;
  v4 = NUScaleOne;
  v2->_roundingPolicy = 0;
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  v2->_scale = v4;
  *&v2->_time.value = v6;
  v2->_time.epoch = *(v5 + 16);
  v7 = +[NUPlatform currentPlatform];
  mainDevice = [v7 mainDevice];
  device = v2->_device;
  v2->_device = mainDevice;

  [(NURenderPipelineState *)v2 resetRenderTagGroups];
  return v2;
}

@end