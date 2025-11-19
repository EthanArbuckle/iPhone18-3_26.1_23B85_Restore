@interface NURenderPipelineHelper
+ (id)gainMapFromLightMap:(id)a3 base:(id)a4 settings:(id)a5;
+ (id)lightMapFromGainMap:(id)a3 settings:(id)a4;
+ (id)styleTransferApplyNodeWithInput:(id)a3 thumbnail:(id)a4 target:(id)a5 settings:(id)a6;
+ (id)styleTransferInterpolationNodeWithInputs:(id)a3 weights:(id)a4 settings:(id)a5;
+ (id)styleTransferLearnNodeWithInput:(id)a3 target:(id)a4 settings:(id)a5;
+ (id)styleTransferNodeWithInput:(id)a3 target:(id)a4 settings:(id)a5;
+ (id)styleTransferThumbnailNodeWithInput:(id)a3 settings:(id)a4;
- (BOOL)endGroupWithName:(id)a3 error:(id *)a4;
- (BOOL)hasStaticTime;
- (BOOL)isCIFilterAvailable:(id)a3 propertyName:(id)a4;
- (BOOL)isSourceAvailable:(id)a3 sourceSettings:(id)a4;
- (BOOL)resetTag:(id)a3 input:(id)a4 error:(id *)a5;
- (NURenderPipelineHelper)initWithPipelineState:(id)a3;
- (id)HDROpticalScaleNode:(id)a3 scale:(double)a4;
- (id)addTagWithName:(id)a3 inputNode:(id)a4 error:(id *)a5;
- (id)auxiliaryImageFromComposition:(id)a3 type:(id)a4 mediaComponentType:(id)a5 error:(id *)a6;
- (id)auxiliaryImageNode:(id)a3 type:(int64_t)a4;
- (id)beginGroupWithName:(id)a3 error:(id *)a4;
- (id)cacheNode:(id)a3 type:(id)a4 settings:(id)a5 error:(id *)a6;
- (id)createSloMoWithInput:(id)a3 startTime:(id *)a4 endTime:(id *)a5 rate:(float)a6 error:(id *)a7;
- (id)cropNode:(id)a3 cropRect:(id *)a4 cropSettings:(id)a5;
- (id)filterNode:(id)a3 input:(id)a4 settings:(id)a5;
- (id)filterNode:(id)a3 inputs:(id)a4 settings:(id)a5;
- (id)gainMapHeadroomNode:(id)a3 headroomOffset:(double)a4;
- (id)gainMapNode:(id)a3 contentHeadroom:(double)a4 displayHeadroom:(double)a5;
- (id)getTagWithPath:(id)a3 error:(id *)a4;
- (id)inputForPath:(id)a3 error:(id *)a4;
- (id)livePhotoKeyFrameMetadataFromNode:(id)a3 time:(id *)a4 error:(id *)a5;
- (id)orientedNode:(id)a3 withOrientation:(int64_t)a4;
- (id)perspectiveTransformWithPitch:(double)a3 yaw:(double)a4 roll:(double)a5 imageRect:(CGRect)a6;
- (id)renderNodeFromSource:(id)a3 settings:(id)a4 error:(id *)a5;
- (id)scaleNode:(id)a3 scale:(id)a4 error:(id *)a5;
- (id)sourceFromComposition:(id)a3 withName:(id)a4 error:(id *)a5;
- (id)straightenTransformWithAngle:(double)a3 extent:(id *)a4;
- (id)switchFromNodes:(id)a3 mainInput:(id)a4 selector:(id)a5;
- (id)trimInput:(id)a3 startTime:(id *)a4 endTime:(id *)a5 error:(id *)a6;
- (id)vectorWithFloats:(id)a3;
- (int64_t)mediaTypeForComposition:(id)a3;
- (int64_t)orientationFromAdjustmentIn:(id)a3;
- (void)resetTag:(id)a3 input:(id)a4;
@end

@implementation NURenderPipelineHelper

- (id)HDROpticalScaleNode:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = [[NUHDROpticalScaleNode alloc] initWithInput:v5 opticalScale:a4];

  return v6;
}

- (id)gainMapHeadroomNode:(id)a3 headroomOffset:(double)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [NUHDRGainMapHeadroomNode alloc];
  v11 = @"headroomOffset";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [(NUHDRGainMapHeadroomNode *)v6 initWithInput:v5 settings:v8];

  return v9;
}

- (id)gainMapNode:(id)a3 contentHeadroom:(double)a4 displayHeadroom:(double)a5
{
  v7 = a3;
  v8 = [[NUHDRGainMapNode alloc] initWithInput:v7 contentHeadroom:a4 displayHeadroom:a5];

  return v8;
}

- (id)auxiliaryImageNode:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[NUAuxiliaryRenderNode alloc] initWithInput:v5 auxiliaryImageType:a4];

  return v6;
}

- (id)switchFromNodes:(id)a3 mainInput:(id)a4 selector:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v12 = [NUSwitchNode alloc];
  v13 = [NURenderPipelineFunction functionWithName:@"selector" parameters:v11 evaluationBlock:v7];

  v14 = [(NUSwitchNode *)v12 initWithInputs:v9 mainInput:v8 selector:v13];

  return v14;
}

- (id)livePhotoKeyFrameMetadataFromNode:(id)a3 time:(id *)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a5)
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
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v20;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper livePhotoKeyFrameMetadataFromNode:time:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 455, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != nil");
  }

  v8 = v7;
  if (a4->var2)
  {
    v11 = [NULivePhotoKeyFrameMetaDataNode alloc];
    time = *a4;
    v10 = [(NULivePhotoKeyFrameMetaDataNode *)v11 initWithTime:&time input:v8];
  }

  else
  {
    time = *a4;
    v9 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time);
    *a5 = [NUError invalidError:@"time is invalid" object:v9];

    v10 = 0;
  }

  return v10;
}

- (id)orientedNode:(id)a3 withOrientation:(int64_t)a4
{
  v5 = a3;
  v6 = [(NUOrientationNode *)[NUUserOrientationNode alloc] initWithOrientation:a4 input:v5];

  return v6;
}

- (int64_t)orientationFromAdjustmentIn:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"orientation"];
  v4 = [v3 objectForKeyedSubscript:@"value"];
  v5 = [v4 integerValue];

  return v5;
}

- (id)straightenTransformWithAngle:(double)a3 extent:(id *)a4
{
  v5 = a4->var1.var0 * 0.5 + a4->var0.var0;
  v6 = a4->var1.var1 * 0.5 + a4->var0.var1;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v7;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v12.a = *&v13.a;
  *&v12.c = v7;
  *&v12.tx = *&v13.tx;
  CGAffineTransformTranslate(&v13, &v12, v5, v6);
  v11 = v13;
  CGAffineTransformRotate(&v12, &v11, a3 * 3.14159265 / 180.0);
  v13 = v12;
  v11 = v12;
  CGAffineTransformTranslate(&v12, &v11, -v5, -v6);
  v13 = v12;
  v8 = [NUImageTransformAffine alloc];
  v12 = v13;
  v9 = [(NUImageTransformAffine *)v8 initWithAffineTransform:&v12];

  return v9;
}

- (id)perspectiveTransformWithPitch:(double)a3 yaw:(double)a4 roll:(double)a5 imageRect:(CGRect)a6
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  [NUCropModel _imageTransformFromPitch:a3 * 3.14159265 / 180.0 yaw:a4 * 3.14159265 / 180.0 roll:a5 * 3.14159265 / 180.0 imageRect:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
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

- (id)createSloMoWithInput:(id)a3 startTime:(id *)a4 endTime:(id *)a5 rate:(float)a6 error:(id *)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!a7)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543618;
        *(&time.start.value + 4) = v26;
        LOWORD(time.start.flags) = 2114;
        *(&time.start.flags + 2) = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper createSloMoWithInput:startTime:endTime:rate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 398, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != nil");
  }

  v12 = v11;
  if ((a4->var2 & 1) == 0)
  {
    *&time.start.value = *&a4->var0;
    time.start.epoch = a4->var3;
    v13 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    *a7 = [NUError invalidError:@"start time is invalid" object:v13];

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if ((a5->var2 & 1) == 0)
  {
    *&time.start.value = *&a5->var0;
    time.start.epoch = a5->var3;
    v14 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    v15 = @"end time is invalid";
LABEL_8:
    *a7 = [NUError invalidError:v15 object:v14];

    goto LABEL_9;
  }

  memset(&v37, 0, sizeof(v37));
  lhs = *a5;
  rhs = *a4;
  CMTimeSubtract(&time.start, &lhs, &rhs);
  lhs = *a4;
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
  v16 = [(NUSlowMotionNode *)v18 initWithTimeRange:&time rate:v12 input:COERCE_DOUBLE(__PAIR64__(v37.duration.flags, LODWORD(a6)))];
LABEL_10:

  return v16;
}

- (id)trimInput:(id)a3 startTime:(id *)a4 endTime:(id *)a5 error:(id *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!a6)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543618;
        *(&time.start.value + 4) = v24;
        LOWORD(time.start.flags) = 2114;
        *(&time.start.flags + 2) = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper trimInput:startTime:endTime:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 374, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "error != nil");
  }

  v10 = v9;
  if ((a4->var2 & 1) == 0)
  {
    *&time.start.value = *&a4->var0;
    time.start.epoch = a4->var3;
    v11 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    *a6 = [NUError invalidError:@"start time is invalid" object:v11];

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if ((a5->var2 & 1) == 0)
  {
    *&time.start.value = *&a5->var0;
    time.start.epoch = a5->var3;
    v12 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time.start);
    v13 = @"end time is invalid";
LABEL_8:
    *a6 = [NUError invalidError:v13 object:v12];

    goto LABEL_9;
  }

  memset(&v35, 0, sizeof(v35));
  lhs = *a5;
  rhs = *a4;
  CMTimeSubtract(&time.start, &lhs, &rhs);
  lhs = *a4;
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

- (BOOL)resetTag:(id)a3 input:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v39;
        v68 = 2114;
        v69 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper resetTag:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 349, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "path != nil");
  }

  v10 = v9;
  if (!v9)
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
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v48;
        v68 = 2114;
        v69 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper resetTag:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 350, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "input != nil");
  }

  if (!a5)
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
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v57;
        v68 = 2114;
        v69 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper resetTag:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 351, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "error != nil");
  }

  v11 = [(NURenderPipelineHelper *)self pipelineState];
  v12 = [v11 currentGroup];

  v13 = [v12 nodeWithPath:v8];
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

  [NUError errorWithCode:1 reason:v15 object:v8];
  *a5 = v16 = 0;
LABEL_10:

  return v16;
}

- (void)resetTag:(id)a3 input:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(NURenderPipelineHelper *)self pipelineState];
  v8 = [v7 currentGroup];

  v9 = [v8 nodeWithPath:v6];

  if (([v9 hasCyclicalDependencyForInput:v10] & 1) == 0)
  {
    [v9 setInput:v10];
  }
}

- (id)auxiliaryImageFromComposition:(id)a3 type:(id)a4 mediaComponentType:(id)a5 error:(id *)a6
{
  v41[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
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
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper auxiliaryImageFromComposition:type:mediaComponentType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 311, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != nil");
  }

  v13 = v12;
  v40[0] = @"auxiliaryImageType";
  v40[1] = @"skipOrientation";
  v41[0] = v11;
  v41[1] = MEMORY[0x1E695E118];
  v40[2] = @"nativeScale";
  v40[3] = @"mediaComponentType";
  v41[2] = MEMORY[0x1E695E118];
  v41[3] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v15 = [v10 objectForKeyedSubscript:@"source"];
  v16 = [(NURenderPipelineHelper *)self isSourceAvailable:v15 sourceSettings:v14];

  if (v16)
  {
    v17 = [v10 objectForKeyedSubscript:@"source"];
    v18 = [(NURenderPipelineHelper *)self renderNodeFromSource:v17 settings:v14 error:a6];

    if (v18)
    {
      v19 = [v18 outputImageGeometry:a6];
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

- (BOOL)isSourceAvailable:(id)a3 sourceSettings:(id)a4
{
  v6 = a4;
  v19 = 0;
  v7 = [NUSourceContainerNode sourceContainerNodeFromSource:a3 error:&v19];
  v8 = v19;
  if (v7)
  {
    v9 = [(NURenderPipelineHelper *)self pipelineState];
    v10 = [v9 copy];

    v11 = [v10 pipelineSettingsFromSourceSettings:v6];
    v18 = 0;
    v12 = [v10 applyPipelineSettings:v11 error:&v18];
    v13 = v18;

    if (v12)
    {
      v17 = 0;
      v14 = [v7 preparedSourceNodeForPipelineState:v10 pipelineSettings:v11 sourceSettings:v6 error:&v17];
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

- (id)sourceFromComposition:(id)a3 withName:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:v7];
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
    v11 = v7;
  }

  [NUError missingError:v10 object:v11];
  *a5 = v9 = 0;
LABEL_7:

  return v9;
}

- (id)vectorWithFloats:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  if (v4 >= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 subarrayWithRange:{0, v5}];

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

- (BOOL)isCIFilterAvailable:(id)a3 propertyName:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695F648] filterWithName:a3];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 inputKeys];
    v9 = [v8 containsObject:v5];
  }

  else
  {
    v9 = 1;
  }

  return (v7 != 0) & v9;
}

- (id)filterNode:(id)a3 inputs:(id)a4 settings:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NUFilterNode alloc] initWithFilterName:v9 settings:v7 inputs:v8];

  return v10;
}

- (id)filterNode:(id)a3 input:(id)a4 settings:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E695FAB0];
  v16[0] = a4;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = [(NURenderPipelineHelper *)self filterNode:v11 inputs:v12 settings:v9];

  return v13;
}

- (id)cropNode:(id)a3 cropRect:(id *)a4 cropSettings:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (!v7)
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper cropNode:cropRect:cropSettings:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 198, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "node != nil");
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"resetCleanAperture"];
    v11 = [v10 BOOLValue];

    v12 = [v9 objectForKeyedSubscript:@"projectUsingCleanAperture"];
    v13 = [v9 objectForKeyedSubscript:@"projectUsingOriginalSize"];
    v14 = [v9 objectForKeyedSubscript:@"projectUsingEstimatedCleanAperture"];
    v15 = 0;
    if (v12 && v13)
    {
      v40 = v11;
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

      v11 = v40;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
  }

  v20 = [NUCropNode alloc];
  var1 = a4->var1;
  *buf = a4->var0;
  *&buf[16] = var1;
  v22 = [(NUCropNode *)v20 initWithRect:buf input:v7 resetCleanAperture:v11 settings:v15];

  return v22;
}

- (id)scaleNode:(id)a3 scale:(id)a4 error:(id *)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!a5)
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
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper scaleNode:scale:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 184, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "error != nil");
  }

  v10 = v9;
  if (v9)
  {
    v11 = [NUScaleNode alloc];
    v12 = [(NURenderPipelineHelper *)self pipelineState];
    v13 = -[NUScaleNode initWithScale:sampleMode:input:](v11, "initWithScale:sampleMode:input:", var0, var1, [v12 sampleMode], v10);
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
    [NUError missingError:@"input image to scaleNode:scale: cannot be nil" object:v12];
    *a5 = v13 = 0;
  }

  return v13;
}

- (id)cacheNode:(id)a3 type:(id)a4 settings:(id)a5 error:(id *)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
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
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper cacheNode:type:settings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 165, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != nil");
  }

  v13 = v12;
  v14 = +[NUCacheNode registry];
  v15 = [v14 classForCacheNodeType:v11];

  if (v15)
  {
    v16 = [(NURenderPipelineHelper *)self pipelineState];
    v17 = [v15 nodeWithInput:v10 settings:v13 pipelineState:v16 error:a6];

    if (v17)
    {
      v18 = v17;
    }

    else
    {
      *a6 = [NUError errorWithCode:1 reason:@"Failed to instantiate cache node" object:v15 underlyingError:*a6];
    }
  }

  else
  {
    [NUError unknownError:@"Unknown cache node type" object:v11];
    *a6 = v17 = 0;
  }

  return v17;
}

- (id)renderNodeFromSource:(id)a3 settings:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
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
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper renderNodeFromSource:settings:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 136, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != nil");
  }

  v10 = v9;
  if (v8)
  {
    v11 = [NUSourceContainerNode sourceContainerNodeFromSource:v8 error:a5];
    if (v11)
    {
      v12 = [(NURenderPipelineHelper *)self pipelineState];
      v13 = [v12 pipelineSettingsFromSourceSettings:v10];

      v14 = [(NURenderPipelineHelper *)self pipelineState];
      v15 = [v14 copy];

      if ([v15 applyPipelineSettings:v13 error:a5])
      {
        v16 = [v11 preparedSourceNodeForPipelineState:v15 pipelineSettings:v13 sourceSettings:v10 error:a5];
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
    *a5 = v17 = 0;
  }

  return v17;
}

- (id)getTagWithPath:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper getTagWithPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 113, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != nil");
  }

  v7 = v6;
  v8 = [(NURenderPipelineHelper *)self pipelineState];
  v9 = [v8 currentGroup];

  if ([NURenderTagGroup validatePath:v7 error:a4])
  {
    v10 = [v9 nodeWithPath:v7];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      *a4 = [NUError errorWithCode:1 reason:@"getTagWithPath - could not find tag" object:v7];
    }
  }

  else
  {
    [NUError errorWithCode:5 reason:@"getTagWithPath - Invalid tag path" object:v7 underlyingError:*a4];
    *a4 = v11 = 0;
  }

  return v11;
}

- (id)addTagWithName:(id)a3 inputNode:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
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
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper addTagWithName:inputNode:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 89, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "error != NULL");
  }

  v10 = v9;
  if ([NURenderTagNode validateName:v8 error:a5])
  {
    v11 = [(NURenderPipelineHelper *)self pipelineState];
    v12 = [v11 currentGroup];

    v13 = [v12 nodeWithPath:v8];
    if (v13)
    {
      [NUError errorWithCode:5 reason:@"Given tag already present" object:v8];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = [v12 addTag:v8 forNode:v10];
    }
  }

  else
  {
    [NUError errorWithCode:5 reason:@"Invalid tag name" object:v8 underlyingError:*a5];
    *a5 = v14 = 0;
  }

  return v14;
}

- (id)inputForPath:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderPipelineHelper inputForPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderPipelineHelper.m", 65, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "error != NULL");
  }

  v7 = v6;
  v8 = [(NURenderPipelineHelper *)self pipelineState];
  v9 = [v8 currentGroup];

  if ([NURenderTagGroup validatePath:v7 error:a4])
  {
    v10 = [v9 nodeWithPath:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 input];
    }

    else
    {
      [NUError errorWithCode:5 reason:@"inputForPath - did not find node with path" object:v7];
      *a4 = v12 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:5 reason:@"inputForPath - Invalid path" object:v7 underlyingError:*a4];
    *a4 = v12 = 0;
  }

  return v12;
}

- (BOOL)endGroupWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NURenderPipelineHelper *)self pipelineState];
  LOBYTE(a4) = [v7 endGroupWithName:v6 error:a4];

  return a4;
}

- (id)beginGroupWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NURenderPipelineHelper *)self pipelineState];
  v8 = [v7 beginGroupWithName:v6 error:a4];

  return v8;
}

- (BOOL)hasStaticTime
{
  v2 = [(NURenderPipelineHelper *)self pipelineState];
  v3 = v2;
  if (v2)
  {
    [v2 time];
    v4 = v6 & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mediaTypeForComposition:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"source"];
  v4 = [v3 definition];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mediaType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NURenderPipelineHelper)initWithPipelineState:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NURenderPipelineHelper;
  v5 = [(NURenderPipelineHelper *)&v8 init];
  pipelineState = v5->_pipelineState;
  v5->_pipelineState = v4;

  return v5;
}

+ (id)styleTransferInterpolationNodeWithInputs:(id)a3 weights:(id)a4 settings:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NUStyleTransferInterpolationNode alloc] initWithInputs:v9 weights:v8 settings:v7];

  return v10;
}

+ (id)styleTransferApplyNodeWithInput:(id)a3 thumbnail:(id)a4 target:(id)a5 settings:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [NUStyleTransferApplyNode alloc];
  if (v9)
  {
    v14 = [(NUStyleTransferApplyNode *)v13 initWithInput:v12 thumbnail:v9 target:v11 settings:v10];
  }

  else
  {
    v14 = [(NUStyleTransferNode *)v13 initWithInput:v12 target:v11 settings:v10];
  }

  v15 = v14;

  return v15;
}

+ (id)styleTransferThumbnailNodeWithInput:(id)a3 settings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NUStyleTransferThumbnailNode alloc] initWithInput:v6 settings:v5];

  return v7;
}

+ (id)styleTransferLearnNodeWithInput:(id)a3 target:(id)a4 settings:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(NUStyleTransferNode *)[NUStyleTransferLearnNode alloc] initWithInput:v9 target:v8 settings:v7];

  return v10;
}

+ (id)styleTransferNodeWithInput:(id)a3 target:(id)a4 settings:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NUStyleTransferNode alloc] initWithInput:v9 target:v8 settings:v7];

  return v10;
}

+ (id)gainMapFromLightMap:(id)a3 base:(id)a4 settings:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NUHDRGainMapDivideNode alloc] initWithInput:v8 lightMap:v9 settings:v7];

  return v10;
}

+ (id)lightMapFromGainMap:(id)a3 settings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NUHDRGainMapMultiplyNode alloc] initWithInput:v6 settings:v5];

  return v7;
}

@end