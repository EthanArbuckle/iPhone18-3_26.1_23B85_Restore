@interface NURenderPipelineHelper
+ (id)gainMapFromLightMap:(id)map base:(id)base settings:(id)settings;
+ (id)lightMapFromGainMap:(id)map settings:(id)settings;
+ (id)styleTransferApplyNodeWithInput:(id)input thumbnail:(id)thumbnail target:(id)target settings:(id)settings;
+ (id)styleTransferInterpolationNodeWithInputs:(id)inputs weights:(id)weights settings:(id)settings;
+ (id)styleTransferLearnNodeWithInput:(id)input target:(id)target settings:(id)settings;
+ (id)styleTransferNodeWithInput:(id)input target:(id)target settings:(id)settings;
+ (id)styleTransferThumbnailNodeWithInput:(id)input settings:(id)settings;
- (BOOL)endGroupWithName:(id)name error:(id *)error;
- (BOOL)hasStaticTime;
- (BOOL)isCIFilterAvailable:(id)available propertyName:(id)name;
- (BOOL)isSourceAvailable:(id)available sourceSettings:(id)settings;
- (BOOL)resetTag:(id)tag input:(id)input error:(id *)error;
- (NURenderPipelineHelper)initWithPipelineState:(id)state;
- (id)HDROpticalScaleNode:(id)node scale:(double)scale;
- (id)addTagWithName:(id)name inputNode:(id)node error:(id *)error;
- (id)auxiliaryImageFromComposition:(id)composition type:(id)type mediaComponentType:(id)componentType error:(id *)error;
- (id)auxiliaryImageNode:(id)node type:(int64_t)type;
- (id)beginGroupWithName:(id)name error:(id *)error;
- (id)cacheNode:(id)node type:(id)type settings:(id)settings error:(id *)error;
- (id)createSloMoWithInput:(id)input startTime:(id *)time endTime:(id *)endTime rate:(float)rate error:(id *)error;
- (id)cropNode:(id)node cropRect:(id *)rect cropSettings:(id)settings;
- (id)filterNode:(id)node input:(id)input settings:(id)settings;
- (id)filterNode:(id)node inputs:(id)inputs settings:(id)settings;
- (id)gainMapHeadroomNode:(id)node headroomOffset:(double)offset;
- (id)gainMapNode:(id)node contentHeadroom:(double)headroom displayHeadroom:(double)displayHeadroom;
- (id)getTagWithPath:(id)path error:(id *)error;
- (id)inputForPath:(id)path error:(id *)error;
- (id)livePhotoKeyFrameMetadataFromNode:(id)node time:(id *)time error:(id *)error;
- (id)orientedNode:(id)node withOrientation:(int64_t)orientation;
- (id)perspectiveTransformWithPitch:(double)pitch yaw:(double)yaw roll:(double)roll imageRect:(CGRect)rect;
- (id)renderNodeFromSource:(id)source settings:(id)settings error:(id *)error;
- (id)scaleNode:(id)node scale:(id)scale error:(id *)error;
- (id)sourceFromComposition:(id)composition withName:(id)name error:(id *)error;
- (id)straightenTransformWithAngle:(double)angle extent:(id *)extent;
- (id)switchFromNodes:(id)nodes mainInput:(id)input selector:(id)selector;
- (id)trimInput:(id)input startTime:(id *)time endTime:(id *)endTime error:(id *)error;
- (id)vectorWithFloats:(id)floats;
- (int64_t)mediaTypeForComposition:(id)composition;
- (int64_t)orientationFromAdjustmentIn:(id)in;
- (void)resetTag:(id)tag input:(id)input;
@end

@implementation NURenderPipelineHelper

- (id)HDROpticalScaleNode:(id)node scale:(double)scale
{
  nodeCopy = node;
  v6 = [[NUHDROpticalScaleNode alloc] initWithInput:nodeCopy opticalScale:scale];

  return v6;
}

- (id)gainMapHeadroomNode:(id)node headroomOffset:(double)offset
{
  v12[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v6 = [NUHDRGainMapHeadroomNode alloc];
  v11 = @"headroomOffset";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:offset];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [(NUHDRGainMapHeadroomNode *)v6 initWithInput:nodeCopy settings:v8];

  return v9;
}

- (id)gainMapNode:(id)node contentHeadroom:(double)headroom displayHeadroom:(double)displayHeadroom
{
  nodeCopy = node;
  v8 = [[NUHDRGainMapNode alloc] initWithInput:nodeCopy contentHeadroom:headroom displayHeadroom:displayHeadroom];

  return v8;
}

- (id)auxiliaryImageNode:(id)node type:(int64_t)type
{
  nodeCopy = node;
  v6 = [[NUAuxiliaryRenderNode alloc] initWithInput:nodeCopy auxiliaryImageType:type];

  return v6;
}

- (id)switchFromNodes:(id)nodes mainInput:(id)input selector:(id)selector
{
  selectorCopy = selector;
  inputCopy = input;
  nodesCopy = nodes;
  allKeys = [nodesCopy allKeys];
  v11 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v12 = [NUSwitchNode alloc];
  v13 = [NURenderPipelineFunction functionWithName:@"selector" parameters:v11 evaluationBlock:selectorCopy];

  v14 = [(NUSwitchNode *)v12 initWithInputs:nodesCopy mainInput:inputCopy selector:v13];

  return v14;
}

- (id)livePhotoKeyFrameMetadataFromNode:(id)node time:(id *)time error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (!error)
  {
    v13 = NUAssertLogger_26806();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_26806();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v20;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper livePhotoKeyFrameMetadataFromNode:time:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 455, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != nil");
  }

  v8 = nodeCopy;
  if (time->var2)
  {
    v11 = [NULivePhotoKeyFrameMetaDataNode alloc];
    time = *time;
    v10 = [(NULivePhotoKeyFrameMetaDataNode *)v11 initWithTime:&time input:v8];
  }

  else
  {
    time = *time;
    v9 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time);
    *error = [NUError invalidError:@"time is invalid" object:v9];

    v10 = 0;
  }

  return v10;
}

- (id)orientedNode:(id)node withOrientation:(int64_t)orientation
{
  nodeCopy = node;
  v6 = [(NUOrientationNode *)[NUUserOrientationNode alloc] initWithOrientation:orientation input:nodeCopy];

  return v6;
}

- (int64_t)orientationFromAdjustmentIn:(id)in
{
  v3 = [in objectForKeyedSubscript:@"orientation"];
  v4 = [v3 objectForKeyedSubscript:@"value"];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (id)straightenTransformWithAngle:(double)angle extent:(id *)extent
{
  v5 = extent->var1.var0 * 0.5 + extent->var0.var0;
  v6 = extent->var1.var1 * 0.5 + extent->var0.var1;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v7;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v12.a = *&v13.a;
  *&v12.c = v7;
  *&v12.tx = *&v13.tx;
  CGAffineTransformTranslate(&v13, &v12, v5, v6);
  v11 = v13;
  CGAffineTransformRotate(&v12, &v11, angle * 3.14159265 / 180.0);
  v13 = v12;
  v11 = v12;
  CGAffineTransformTranslate(&v12, &v11, -v5, -v6);
  v13 = v12;
  v8 = [NUImageTransformAffine alloc];
  v12 = v13;
  v9 = [(NUImageTransformAffine *)v8 initWithAffineTransform:&v12];

  return v9;
}

- (id)perspectiveTransformWithPitch:(double)pitch yaw:(double)yaw roll:(double)roll imageRect:(CGRect)rect
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  [NUCropModel _imageTransformFromPitch:pitch * 3.14159265 / 180.0 yaw:yaw * 3.14159265 / 180.0 roll:roll * 3.14159265 / 180.0 imageRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v22 = vld4q_f64(v17.i64);
  v6 = vzip2q_s64(v13, v15);
  v7 = vzip1q_s64(v14, v16);
  v8 = vzip2q_s64(v14, v16);
  v13 = vzip1q_s64(v13, v15);
  v14 = v22.val[0];
  v15 = v6;
  v16 = v22.val[1];
  v17 = v7;
  v18 = v22.val[2];
  v19 = v8;
  v20 = v22.val[3];
  v9 = [NUImageTransform3D alloc];
  v12[4] = v17;
  v12[5] = v18;
  v12[6] = v19;
  v12[7] = v20;
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  v10 = [(NUImageTransform3D *)v9 initWithTransform3D:v12];

  return v10;
}

- (id)createSloMoWithInput:(id)input startTime:(id *)time endTime:(id *)endTime rate:(float)rate error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!error)
  {
    v19 = NUAssertLogger_26806();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_26806();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543618;
        *(&time.start.value + 4) = v26;
        LOWORD(time.start.flags) = 2114;
        *(&time.start.flags + 2) = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper createSloMoWithInput:startTime:endTime:rate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 398, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != nil");
  }

  v12 = inputCopy;
  if ((time->var2 & 1) == 0)
  {
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v13 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    *error = [NUError invalidError:@"start time is invalid" object:v13];

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if ((endTime->var2 & 1) == 0)
  {
    *&time.start.value = *&endTime->var0;
    time.start.epoch = endTime->var3;
    v14 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    v15 = @"end time is invalid";
LABEL_8:
    *error = [NUError invalidError:v15 object:v14];

    goto LABEL_9;
  }

  memset(&v37, 0, sizeof(v37));
  lhs = *endTime;
  rhs = *time;
  CMTimeSubtract(&time.start, &lhs, &rhs);
  lhs = *time;
  CMTimeRangeMake(&v37, &lhs, &time.start);
  if ((v37.start.flags & 1) == 0 || (v37.duration.flags & 1) == 0 || v37.duration.epoch || v37.duration.value < 0)
  {
    time = v37;
    v14 = CMTimeRangeCopyDescription(*MEMORY[0x1E695E480], &time);
    v15 = @"time range is invalid";
    goto LABEL_8;
  }

  v18 = [NUSlowMotionNode alloc];
  time = v37;
  v16 = [(NUSlowMotionNode *)v18 initWithTimeRange:&time rate:v12 input:COERCE_DOUBLE(__PAIR64__(v37.duration.flags, LODWORD(rate)))];
LABEL_10:

  return v16;
}

- (id)trimInput:(id)input startTime:(id *)time endTime:(id *)endTime error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!error)
  {
    v17 = NUAssertLogger_26806();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_26806();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543618;
        *(&time.start.value + 4) = v24;
        LOWORD(time.start.flags) = 2114;
        *(&time.start.flags + 2) = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper trimInput:startTime:endTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 374, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "error != nil");
  }

  v10 = inputCopy;
  if ((time->var2 & 1) == 0)
  {
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v11 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    *error = [NUError invalidError:@"start time is invalid" object:v11];

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if ((endTime->var2 & 1) == 0)
  {
    *&time.start.value = *&endTime->var0;
    time.start.epoch = endTime->var3;
    v12 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    v13 = @"end time is invalid";
LABEL_8:
    *error = [NUError invalidError:v13 object:v12];

    goto LABEL_9;
  }

  memset(&v35, 0, sizeof(v35));
  lhs = *endTime;
  rhs = *time;
  CMTimeSubtract(&time.start, &lhs, &rhs);
  lhs = *time;
  CMTimeRangeMake(&v35, &lhs, &time.start);
  if ((v35.start.flags & 1) == 0 || (v35.duration.flags & 1) == 0 || v35.duration.epoch || v35.duration.value < 0)
  {
    time = v35;
    v12 = CMTimeRangeCopyDescription(*MEMORY[0x1E695E480], &time);
    v13 = @"time range is invalid";
    goto LABEL_8;
  }

  v16 = [NUTrimNode alloc];
  time = v35;
  v14 = [(NUTrimNode *)v16 initWithTimeRange:&time input:v10];
LABEL_10:

  return v14;
}

- (BOOL)resetTag:(id)tag input:(id)input error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  inputCopy = input;
  if (!tagCopy)
  {
    v18 = NUAssertLogger_26806();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "path != nil"];
      *buf = 138543362;
      v67 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_26806();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v39;
        v68 = 2114;
        v69 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper resetTag:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 349, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "path != nil");
  }

  v10 = inputCopy;
  if (!inputCopy)
  {
    v25 = NUAssertLogger_26806();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v67 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_26806();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v48;
        v68 = 2114;
        v69 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper resetTag:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 350, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "input != nil");
  }

  if (!error)
  {
    v32 = NUAssertLogger_26806();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v67 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_26806();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols5 = [v58 callStackSymbols];
        v61 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v57;
        v68 = 2114;
        v69 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper resetTag:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 351, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "error != nil");
  }

  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  currentGroup = [pipelineState currentGroup];

  v13 = [currentGroup nodeWithPath:tagCopy];
  v14 = v13;
  if (v13)
  {
    if (![v13 hasCyclicalDependencyForInput:v10])
    {
      [v14 setInput:v10];
      v16 = 1;
      goto LABEL_10;
    }

    v15 = @"resetTag failed - has cyclical dependency";
  }

  else
  {
    v15 = @"resetTag failed - could not find tag";
  }

  [NUError errorWithCode:1 reason:v15 object:tagCopy];
  *error = v16 = 0;
LABEL_10:

  return v16;
}

- (void)resetTag:(id)tag input:(id)input
{
  inputCopy = input;
  tagCopy = tag;
  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  currentGroup = [pipelineState currentGroup];

  v9 = [currentGroup nodeWithPath:tagCopy];

  if (([v9 hasCyclicalDependencyForInput:inputCopy] & 1) == 0)
  {
    [v9 setInput:inputCopy];
  }
}

- (id)auxiliaryImageFromComposition:(id)composition type:(id)type mediaComponentType:(id)componentType error:(id *)error
{
  v41[4] = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  typeCopy = type;
  componentTypeCopy = componentType;
  if (!error)
  {
    v23 = NUAssertLogger_26806();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_26806();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper auxiliaryImageFromComposition:type:mediaComponentType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 311, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != nil");
  }

  v13 = componentTypeCopy;
  v40[0] = @"auxiliaryImageType";
  v40[1] = @"skipOrientation";
  v41[0] = typeCopy;
  v41[1] = MEMORY[0x1E695E118];
  v40[2] = @"nativeScale";
  v40[3] = @"mediaComponentType";
  v41[2] = MEMORY[0x1E695E118];
  v41[3] = componentTypeCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v15 = [compositionCopy objectForKeyedSubscript:@"source"];
  v16 = [(NURenderPipelineHelper *)self isSourceAvailable:v15 sourceSettings:v14];

  if (v16)
  {
    v17 = [compositionCopy objectForKeyedSubscript:@"source"];
    v18 = [(NURenderPipelineHelper *)self renderNodeFromSource:v17 settings:v14 error:error];

    if (v18)
    {
      v19 = [v18 outputImageGeometry:error];
      v20 = v19;
      if (v19)
      {
        [v19 extent];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v21 = [(NURenderPipelineHelper *)self cropNode:v18 cropRect:buf cropSettings:0];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)isSourceAvailable:(id)available sourceSettings:(id)settings
{
  settingsCopy = settings;
  v19 = 0;
  v7 = [NUSourceContainerNode sourceContainerNodeFromSource:available error:&v19];
  v8 = v19;
  if (v7)
  {
    pipelineState = [(NURenderPipelineHelper *)self pipelineState];
    v10 = [pipelineState copy];

    v11 = [v10 pipelineSettingsFromSourceSettings:settingsCopy];
    v18 = 0;
    v12 = [v10 applyPipelineSettings:v11 error:&v18];
    v13 = v18;

    if (v12)
    {
      v17 = 0;
      v14 = [v7 preparedSourceNodeForPipelineState:v10 pipelineSettings:v11 sourceSettings:settingsCopy error:&v17];
      v15 = v17;

      LOBYTE(v12) = v14 != 0;
      v13 = v15;
    }

    v8 = v13;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)sourceFromComposition:(id)composition withName:(id)name error:(id *)error
{
  nameCopy = name;
  v8 = [composition objectForKeyedSubscript:nameCopy];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      goto LABEL_7;
    }

    v10 = @"object is not an NUSource";
    v11 = v8;
  }

  else
  {
    v10 = @"no source found";
    v11 = nameCopy;
  }

  [NUError missingError:v10 object:v11];
  *error = v9 = 0;
LABEL_7:

  return v9;
}

- (id)vectorWithFloats:(id)floats
{
  v22 = *MEMORY[0x1E69E9840];
  floatsCopy = floats;
  v4 = [floatsCopy count];
  if (v4 >= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = v4;
  }

  v6 = [floatsCopy subarrayWithRange:{0, v5}];

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * i) doubleValue];
        *v11++ = v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E695F688] vectorWithValues:v21 count:{objc_msgSend(v7, "count")}];

  return v14;
}

- (BOOL)isCIFilterAvailable:(id)available propertyName:(id)name
{
  nameCopy = name;
  v6 = [MEMORY[0x1E695F648] filterWithName:available];
  v7 = v6;
  if (nameCopy)
  {
    inputKeys = [v6 inputKeys];
    v9 = [inputKeys containsObject:nameCopy];
  }

  else
  {
    v9 = 1;
  }

  return (v7 != 0) & v9;
}

- (id)filterNode:(id)node inputs:(id)inputs settings:(id)settings
{
  settingsCopy = settings;
  inputsCopy = inputs;
  nodeCopy = node;
  v10 = [[NUFilterNode alloc] initWithFilterName:nodeCopy settings:settingsCopy inputs:inputsCopy];

  return v10;
}

- (id)filterNode:(id)node input:(id)input settings:(id)settings
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E695FAB0];
  v16[0] = input;
  v8 = MEMORY[0x1E695DF20];
  settingsCopy = settings;
  inputCopy = input;
  nodeCopy = node;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = [(NURenderPipelineHelper *)self filterNode:nodeCopy inputs:v12 settings:settingsCopy];

  return v13;
}

- (id)cropNode:(id)node cropRect:(id *)rect cropSettings:(id)settings
{
  v47 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  settingsCopy = settings;
  if (!nodeCopy)
  {
    v24 = NUAssertLogger_26806();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "node != nil"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_26806();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper cropNode:cropRect:cropSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 198, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "node != nil");
  }

  v9 = settingsCopy;
  if (settingsCopy)
  {
    v10 = [settingsCopy objectForKeyedSubscript:@"resetCleanAperture"];
    bOOLValue = [v10 BOOLValue];

    v12 = [v9 objectForKeyedSubscript:@"projectUsingCleanAperture"];
    v13 = [v9 objectForKeyedSubscript:@"projectUsingOriginalSize"];
    v14 = [v9 objectForKeyedSubscript:@"projectUsingEstimatedCleanAperture"];
    v15 = 0;
    if (v12 && v13)
    {
      v40 = bOOLValue;
      v42 = 0.0;
      v43 = 0.0;
      [v13 getValue:&v42];
      memset(buf, 0, 32);
      [v12 getValue:buf];
      v41 = 0.0;
      if (v14)
      {
        [v14 getValue:&v41];
      }

      v44[0] = @"projectUsingCleanAperture";
      v16 = [MEMORY[0x1E695F688] vectorWithCGRect:{*buf, *&buf[8], *&buf[16]}];
      v45[0] = v16;
      v44[1] = @"projectUsingOriginalSize";
      v17 = objc_alloc(MEMORY[0x1E695F688]);
      v18 = [v17 initWithX:v42 Y:v43];
      v45[1] = v18;
      v44[2] = @"projectUsingEstimatedCleanAperture";
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
      v45[2] = v19;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

      bOOLValue = v40;
    }
  }

  else
  {
    v13 = 0;
    bOOLValue = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
  }

  v20 = [NUCropNode alloc];
  var1 = rect->var1;
  *buf = rect->var0;
  *&buf[16] = var1;
  v22 = [(NUCropNode *)v20 initWithRect:buf input:nodeCopy resetCleanAperture:bOOLValue settings:v15];

  return v22;
}

- (id)scaleNode:(id)node scale:(id)scale error:(id *)error
{
  var1 = scale.var1;
  var0 = scale.var0;
  v35 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (!error)
  {
    v15 = NUAssertLogger_26806();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_26806();
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
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper scaleNode:scale:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 184, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != nil");
  }

  v10 = nodeCopy;
  if (nodeCopy)
  {
    v11 = [NUScaleNode alloc];
    pipelineState = [(NURenderPipelineHelper *)self pipelineState];
    v13 = -[NUScaleNode initWithScale:sampleMode:input:](v11, "initWithScale:sampleMode:input:", var0, var1, [pipelineState sampleMode], v10);
  }

  else
  {
    pipelineState = [MEMORY[0x1E695DFB0] null];
    [NUError missingError:@"input image to scaleNode:scale: cannot be nil" object:pipelineState];
    *error = v13 = 0;
  }

  return v13;
}

- (id)cacheNode:(id)node type:(id)type settings:(id)settings error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  typeCopy = type;
  settingsCopy = settings;
  if (!error)
  {
    v20 = NUAssertLogger_26806();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_26806();
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
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper cacheNode:type:settings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 165, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != nil");
  }

  v13 = settingsCopy;
  v14 = +[NUCacheNode registry];
  v15 = [v14 classForCacheNodeType:typeCopy];

  if (v15)
  {
    pipelineState = [(NURenderPipelineHelper *)self pipelineState];
    v17 = [v15 nodeWithInput:nodeCopy settings:v13 pipelineState:pipelineState error:error];

    if (v17)
    {
      v18 = v17;
    }

    else
    {
      *error = [NUError errorWithCode:1 reason:@"Failed to instantiate cache node" object:v15 underlyingError:*error];
    }
  }

  else
  {
    [NUError unknownError:@"Unknown cache node type" object:typeCopy];
    *error = v17 = 0;
  }

  return v17;
}

- (id)renderNodeFromSource:(id)source settings:(id)settings error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  settingsCopy = settings;
  if (!error)
  {
    v20 = NUAssertLogger_26806();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_26806();
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
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper renderNodeFromSource:settings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 136, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != nil");
  }

  v10 = settingsCopy;
  if (sourceCopy)
  {
    v11 = [NUSourceContainerNode sourceContainerNodeFromSource:sourceCopy error:error];
    if (v11)
    {
      pipelineState = [(NURenderPipelineHelper *)self pipelineState];
      v13 = [pipelineState pipelineSettingsFromSourceSettings:v10];

      pipelineState2 = [(NURenderPipelineHelper *)self pipelineState];
      v15 = [pipelineState2 copy];

      if ([v15 applyPipelineSettings:v13 error:error])
      {
        v16 = [v11 preparedSourceNodeForPipelineState:v15 pipelineSettings:v13 sourceSettings:v10 error:error];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    [NUError missingError:@"Invalid source" object:self];
    *error = v17 = 0;
  }

  return v17;
}

- (id)getTagWithPath:(id)path error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!error)
  {
    v14 = NUAssertLogger_26806();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_26806();
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
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper getTagWithPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 113, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != nil");
  }

  v7 = pathCopy;
  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  currentGroup = [pipelineState currentGroup];

  if ([NURenderTagGroup validatePath:v7 error:error])
  {
    v10 = [currentGroup nodeWithPath:v7];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      *error = [NUError errorWithCode:1 reason:@"getTagWithPath - could not find tag" object:v7];
    }
  }

  else
  {
    [NUError errorWithCode:5 reason:@"getTagWithPath - Invalid tag path" object:v7 underlyingError:*error];
    *error = v11 = 0;
  }

  return v11;
}

- (id)addTagWithName:(id)name inputNode:(id)node error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  nodeCopy = node;
  if (!error)
  {
    v16 = NUAssertLogger_26806();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_26806();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper addTagWithName:inputNode:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 89, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != NULL");
  }

  v10 = nodeCopy;
  if ([NURenderTagNode validateName:nameCopy error:error])
  {
    pipelineState = [(NURenderPipelineHelper *)self pipelineState];
    currentGroup = [pipelineState currentGroup];

    v13 = [currentGroup nodeWithPath:nameCopy];
    if (v13)
    {
      [NUError errorWithCode:5 reason:@"Given tag already present" object:nameCopy];
      *error = v14 = 0;
    }

    else
    {
      v14 = [currentGroup addTag:nameCopy forNode:v10];
    }
  }

  else
  {
    [NUError errorWithCode:5 reason:@"Invalid tag name" object:nameCopy underlyingError:*error];
    *error = v14 = 0;
  }

  return v14;
}

- (id)inputForPath:(id)path error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!error)
  {
    v14 = NUAssertLogger_26806();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_26806();
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
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper inputForPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 65, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != NULL");
  }

  v7 = pathCopy;
  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  currentGroup = [pipelineState currentGroup];

  if ([NURenderTagGroup validatePath:v7 error:error])
  {
    v10 = [currentGroup nodeWithPath:v7];
    v11 = v10;
    if (v10)
    {
      input = [v10 input];
    }

    else
    {
      [NUError errorWithCode:5 reason:@"inputForPath - did not find node with path" object:v7];
      *error = input = 0;
    }
  }

  else
  {
    [NUError errorWithCode:5 reason:@"inputForPath - Invalid path" object:v7 underlyingError:*error];
    *error = input = 0;
  }

  return input;
}

- (BOOL)endGroupWithName:(id)name error:(id *)error
{
  nameCopy = name;
  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  LOBYTE(error) = [pipelineState endGroupWithName:nameCopy error:error];

  return error;
}

- (id)beginGroupWithName:(id)name error:(id *)error
{
  nameCopy = name;
  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  v8 = [pipelineState beginGroupWithName:nameCopy error:error];

  return v8;
}

- (BOOL)hasStaticTime
{
  pipelineState = [(NURenderPipelineHelper *)self pipelineState];
  v3 = pipelineState;
  if (pipelineState)
  {
    [pipelineState time];
    v4 = v6 & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mediaTypeForComposition:(id)composition
{
  v3 = [composition objectForKeyedSubscript:@"source"];
  definition = [v3 definition];
  v5 = definition;
  if (definition)
  {
    mediaType = [definition mediaType];
  }

  else
  {
    mediaType = 0;
  }

  return mediaType;
}

- (NURenderPipelineHelper)initWithPipelineState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = NURenderPipelineHelper;
  v5 = [(NURenderPipelineHelper *)&v8 init];
  pipelineState = v5->_pipelineState;
  v5->_pipelineState = stateCopy;

  return v5;
}

+ (id)styleTransferInterpolationNodeWithInputs:(id)inputs weights:(id)weights settings:(id)settings
{
  settingsCopy = settings;
  weightsCopy = weights;
  inputsCopy = inputs;
  v10 = [[NUStyleTransferInterpolationNode alloc] initWithInputs:inputsCopy weights:weightsCopy settings:settingsCopy];

  return v10;
}

+ (id)styleTransferApplyNodeWithInput:(id)input thumbnail:(id)thumbnail target:(id)target settings:(id)settings
{
  thumbnailCopy = thumbnail;
  settingsCopy = settings;
  targetCopy = target;
  inputCopy = input;
  v13 = [NUStyleTransferApplyNode alloc];
  if (thumbnailCopy)
  {
    v14 = [(NUStyleTransferApplyNode *)v13 initWithInput:inputCopy thumbnail:thumbnailCopy target:targetCopy settings:settingsCopy];
  }

  else
  {
    v14 = [(NUStyleTransferNode *)v13 initWithInput:inputCopy target:targetCopy settings:settingsCopy];
  }

  v15 = v14;

  return v15;
}

+ (id)styleTransferThumbnailNodeWithInput:(id)input settings:(id)settings
{
  settingsCopy = settings;
  inputCopy = input;
  v7 = [[NUStyleTransferThumbnailNode alloc] initWithInput:inputCopy settings:settingsCopy];

  return v7;
}

+ (id)styleTransferLearnNodeWithInput:(id)input target:(id)target settings:(id)settings
{
  settingsCopy = settings;
  targetCopy = target;
  inputCopy = input;
  v10 = [(NUStyleTransferNode *)[NUStyleTransferLearnNode alloc] initWithInput:inputCopy target:targetCopy settings:settingsCopy];

  return v10;
}

+ (id)styleTransferNodeWithInput:(id)input target:(id)target settings:(id)settings
{
  settingsCopy = settings;
  targetCopy = target;
  inputCopy = input;
  v10 = [[NUStyleTransferNode alloc] initWithInput:inputCopy target:targetCopy settings:settingsCopy];

  return v10;
}

+ (id)gainMapFromLightMap:(id)map base:(id)base settings:(id)settings
{
  settingsCopy = settings;
  baseCopy = base;
  mapCopy = map;
  v10 = [[NUHDRGainMapDivideNode alloc] initWithInput:baseCopy lightMap:mapCopy settings:settingsCopy];

  return v10;
}

+ (id)lightMapFromGainMap:(id)map settings:(id)settings
{
  settingsCopy = settings;
  mapCopy = map;
  v7 = [[NUHDRGainMapMultiplyNode alloc] initWithInput:mapCopy settings:settingsCopy];

  return v7;
}

@end