@interface NURenderPipelineState
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- (BOOL)applyPipelineSettings:(id)a3 error:(id *)a4;
- (BOOL)endGroupWithName:(id)a3 error:(id *)a4;
- (BOOL)updatePipelineStateForWindowedSampleIndex:(unint64_t)a3;
- (NURenderPipelineState)init;
- (id)beginGroupWithName:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForCopy;
- (id)pipelineSettingsFromSourceSettings:(id)a3;
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

- (BOOL)updatePipelineStateForWindowedSampleIndex:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_videoSampleSlices count]<= a3)
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
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState updatePipelineStateForWindowedSampleIndex:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 276, @"Out of bounds index for windowed samples", v22, v23, v24, v25, v26);
  }

  v5 = [(NSArray *)self->_videoSampleSlices objectAtIndexedSubscript:a3];
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
  v7 = [v6 videoFrames];
  [(NURenderPipelineState *)self setVideoFrames:v7];

  v8 = [v6 metadataSamples];
  [(NURenderPipelineState *)self setVideoMetadataSamples:v8];

  return 1;
}

- (id)pipelineSettingsFromSourceSettings:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectForKeyedSubscript:@"scale"];
  [v5 setObject:v6 forKeyedSubscript:@"scale"];

  v7 = [v4 objectForKeyedSubscript:@"frameTime"];
  [v5 setObject:v7 forKeyedSubscript:@"frameTime"];

  v8 = [v4 objectForKeyedSubscript:@"defaultFrameTime"];
  [v5 setObject:v8 forKeyedSubscript:@"defaultFrameTime"];

  v9 = [v4 objectForKeyedSubscript:@"auxiliaryImageType"];
  [v5 setObject:v9 forKeyedSubscript:@"auxiliaryImageType"];

  v10 = [v4 objectForKeyedSubscript:@"mediaComponentType"];
  [v5 setObject:v10 forKeyedSubscript:@"mediaComponentType"];

  v11 = [v4 objectForKeyedSubscript:@"sampleMode"];

  [v5 setObject:v11 forKeyedSubscript:@"sampleMode"];

  return v5;
}

- (BOOL)applyPipelineSettings:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState applyPipelineSettings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 188, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != nil");
  }

  v7 = v6;
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
      *a4 = v12;
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
    *a4 = v11;
    goto LABEL_35;
  }

LABEL_3:
  v8 = 1;
LABEL_37:

  return v8;
}

- (BOOL)endGroupWithName:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v31;
        v51 = 2114;
        v52 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState endGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 166, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "name != nil");
  }

  if (!a4)
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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v40;
        v51 = 2114;
        v52 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState endGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 167, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != nil");
  }

  v7 = v6;
  v8 = [(NURenderPipelineState *)self currentGroup];
  v9 = [v8 path];
  v10 = [v9 lastPathComponent];

  v11 = [v7 isEqualToString:v10];
  if (v11)
  {
    v12 = [(NURenderPipelineState *)self currentGroup];
    v13 = [v12 parent];
    currentGroup = self->_currentGroup;
    self->_currentGroup = v13;

    --self->_groupCount;
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end scoping (%@) does not match the start namespace (%@)", v7, v10];
    *a4 = [NUError errorWithCode:5 reason:v15 object:v7];
  }

  return v11;
}

- (id)beginGroupWithName:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v30;
        v50 = 2114;
        v51 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState beginGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 137, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "name != nil");
  }

  if (!a4)
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
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v39;
        v50 = 2114;
        v51 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineState beginGroupWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineState.m", 138, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != nil");
  }

  v7 = v6;
  if ([NURenderTagNode validateName:v6 error:a4])
  {
    v8 = [(NURenderPipelineState *)self currentGroup];
    v9 = [v8 childWithName:v7];

    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v8 path];
      v12 = [v10 stringWithFormat:@"A group with name '%@' already exists on parent : '%@'", v7, v11];

      *a4 = [NUError errorWithCode:5 reason:v12 object:v7];

      v13 = 0;
    }

    else
    {
      v13 = objc_opt_new();
      v14 = [(NURenderPipelineState *)self currentGroup];
      [v14 addChild:v13 withName:v7];

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

  v7 = [(NURenderPipelineState *)self currentGroup];
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
  v16 = [v3 stringWithFormat:@"<%@:%p> evaluationMode=%@ group=%@ componentType=%@ scale=%@ auxType=%@ time=%@", v4, self, v6, v7, v10, v11, v14, v15];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initForCopy];
  *(v4 + 24) = [(NURenderPipelineState *)self serialNumber];
  [v4 setEvaluationMode:{-[NURenderPipelineState evaluationMode](self, "evaluationMode")}];
  [v4 setMediaComponentType:{-[NURenderPipelineState mediaComponentType](self, "mediaComponentType")}];
  [v4 setAuxiliaryImageType:{-[NURenderPipelineState auxiliaryImageType](self, "auxiliaryImageType")}];
  [(NURenderPipelineState *)self time];
  v12 = v14;
  v13 = v15;
  [v4 setTime:&v12];
  [v4 setPlaybackDirection:{-[NURenderPipelineState playbackDirection](self, "playbackDirection")}];
  [v4 setSampleMode:{-[NURenderPipelineState sampleMode](self, "sampleMode")}];
  v5 = [(NURenderPipelineState *)self scale];
  [v4 setScale:{v5, v6}];
  [v4 setRoundingPolicy:{-[NURenderPipelineState roundingPolicy](self, "roundingPolicy")}];
  [v4 setDisableIntermediateCaching:{-[NURenderPipelineState disableIntermediateCaching](self, "disableIntermediateCaching")}];
  [v4 setEnableTransparency:{-[NURenderPipelineState enableTransparency](self, "enableTransparency")}];
  [v4 setEnforceEvenDimensions:{-[NURenderPipelineState enforceEvenDimensions](self, "enforceEvenDimensions")}];
  [v4 setDoNotOverride:{-[NURenderPipelineState doNotOverride](self, "doNotOverride")}];
  [v4 setLowMemoryMode:{-[NURenderPipelineState lowMemoryMode](self, "lowMemoryMode")}];
  v7 = [(NURenderPipelineState *)self pipelineFilters];
  [v4 setPipelineFilters:v7];

  v8 = [(NURenderPipelineState *)self videoFrames];
  [v4 setVideoFrames:v8];

  v9 = [(NURenderPipelineState *)self videoMetadataSamples];
  [v4 setVideoMetadataSamples:v9];

  v10 = [(NURenderPipelineState *)self videoSampleSlices];
  [v4 setVideoSampleSlices:v10];

  objc_storeStrong((v4 + 120), self->_rootGroup);
  *(v4 + 136) = self->_groupCount;
  objc_storeStrong((v4 + 128), self->_currentGroup);
  objc_storeStrong((v4 + 8), self->_groupStack);
  objc_storeStrong((v4 + 80), self->_device);
  return v4;
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
  v8 = [v7 mainDevice];
  device = v2->_device;
  v2->_device = v8;

  [(NURenderPipelineState *)v2 resetRenderTagGroups];
  return v2;
}

@end