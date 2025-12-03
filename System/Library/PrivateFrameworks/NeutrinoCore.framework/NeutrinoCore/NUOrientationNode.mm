@interface NUOrientationNode
+ (id)applyOrientation:(int64_t)orientation to:(id)to;
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (BOOL)requiresVideoComposition;
- (NUOrientationNode)initWithOrientation:(int64_t)orientation input:(id)input;
- (NUOrientationNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoProperties:(id *)properties;
- (id)_transformWithError:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (int64_t)orientation;
- (int64_t)outputImageOrientation:(int64_t)orientation;
@end

@implementation NUOrientationNode

- (id)_evaluateVideo:(id *)video
{
  v49 = *MEMORY[0x1E69E9840];
  if (!video)
  {
    v21 = NUAssertLogger_14813();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_14813();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOrientationNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Orientation.m", 259, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "error != nil");
  }

  v45.receiver = self;
  v45.super_class = NUOrientationNode;
  v5 = [(NURenderNode *)&v45 _evaluateVideo:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v9 = [v7 tracksWithMediaType:*MEMORY[0x1E6987608]];
      v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v10)
      {
        v11 = *v42;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v41 + 1) + 8 * i);
            [v13 naturalSize];
            v15 = v14;
            v17 = v16;
            v47 = 0u;
            memset(buf, 0, sizeof(buf));
            if (v13)
            {
              [v13 preferredTransform];
            }

            v38 = *buf;
            v39 = *&buf[16];
            v40 = v47;
            v18 = NUOrientationConcat([NUVideoUtilities videoOrientationForAssetPreferredTransform:&v38], [(NUOrientationNode *)self orientation]);
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            [NUVideoUtilities preferredTransformFromOrientation:v18 size:v15, v17];
            v37[0] = v38;
            v37[1] = v39;
            v37[2] = v40;
            [v13 setPreferredTransform:v37];
          }

          v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v10);
      }

      v19 = v8;
    }

    else
    {
      *video = [NUError errorWithCode:1 reason:@"[NUOrientationNode _evaluateVideo] failed to get mutableCopy" object:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)requiresVideoComposition
{
  v2 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  requiresVideoComposition = [v2 requiresVideoComposition];

  return requiresVideoComposition;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUOrientationNode;
  v5 = [(NURenderNode *)&v8 _evaluateAuxiliaryImageForType:type error:error];
  if ([(NUOrientationNode *)self orientation]!= 1)
  {
    v6 = [v5 auxiliaryImageByApplyingExifOrientation:{-[NUOrientationNode orientation](self, "orientation")}];

    v5 = v6;
  }

  return v5;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  v4.receiver = self;
  v4.super_class = NUOrientationNode;
  return [(NURenderNode *)&v4 canPropagateOriginalAuxiliaryData:data];
}

- (id)_evaluateVideoProperties:(id *)properties
{
  v56 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    v33 = NUAssertLogger_14813();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_14813();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v37)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols = [v41 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v40;
        *&buf[12] = 2114;
        *&buf[14] = v44;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOrientationNode _evaluateVideoProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Orientation.m", 195, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != NULL");
  }

  inputs = [(NURenderNode *)self inputs];
  v6 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v7 = [v6 videoProperties:properties];
  if (v7)
  {
    v8 = [(NURenderNode *)self outputImageGeometry:properties];
    if (v8)
    {
      [v7 cleanAperture];
      orientation = [(NUOrientationNode *)self orientation];
      v10 = [v7 size];
      memset(buf, 0, 32);
      NU::RectT<long>::applyOrientation(buf, orientation, v10, v11);
      v53 = *buf;
      v54 = *&buf[16];
      [v7 originalCleanAperture];
      orientation2 = [(NUOrientationNode *)self orientation];
      originalSize = [v7 originalSize];
      memset(buf, 0, 32);
      NU::RectT<long>::applyOrientation(buf, orientation2, originalSize, v14);
      v51 = *buf;
      v52 = *&buf[16];
      orientation3 = [(NUOrientationNode *)self orientation];
      originalSize2 = [v7 originalSize];
      v18 = NUOrientationTransformImageSize(orientation3, originalSize2, v17);
      v20 = v19;
      v21 = [[_NUVideoProperties alloc] initWithProperties:v7];
      *buf = v53;
      *&buf[16] = v54;
      [(_NUVideoProperties *)v21 setCleanAperture:buf];
      *buf = v51;
      *&buf[16] = v52;
      [(_NUVideoProperties *)v21 setOriginalCleanAperture:buf];
      scaledSize = [v8 scaledSize];
      [(_NUVideoProperties *)v21 setSize:scaledSize, v23];
      orientation4 = [(NUOrientationNode *)self orientation];
      v25 = [v7 size];
      v27 = NUOrientationTransformImageSize(orientation4, v25, v26);
      v29 = v28;
      v30 = [(_NUVideoProperties *)v21 size];
      if (v30 < v27)
      {
        v27 = v30;
      }

      [(_NUVideoProperties *)v21 size];
      if (v31 < v29)
      {
        v29 = v31;
      }

      if ((v29 | v27) < 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [currentHandler handleFailureInFunction:v50 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
      }

      [(_NUVideoProperties *)v21 setSize:v27, v29];
      [(_NUVideoProperties *)v21 setOriginalSize:v18, v20];
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

- (id)_transformWithError:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v18 = NUAssertLogger_14813();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v38 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_14813();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v25;
        v39 = 2114;
        v40 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOrientationNode _transformWithError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Orientation.m", 170, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "error != nil");
  }

  transform = [(NUOrientationNode *)self transform];
  if (!transform)
  {
    v6 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
    v36 = 0;
    v7 = [v6 outputImageGeometry:&v36];
    if (v7)
    {
      v8 = v7;
      v9 = [NUImageTransformOrientation alloc];
      orientation = [(NUOrientationNode *)self orientation];
      v11 = [v8 size];
      v13 = v12;
      [v8 extent];
      transform = [(NUImageTransformOrientation *)v9 initWithOrientation:orientation imageSize:v11 imageOrigin:v13, v34, v35];
      [(NUOrientationNode *)self setTransform:transform];
    }

    else
    {
      v14 = v36;
      v15 = [NUError errorWithCode:1 reason:@"Cannot obtain input image geometry" object:v6 underlyingError:v14];
      v16 = v15;

      transform = 0;
      *error = v15;
    }
  }

  return transform;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v17.receiver = self;
  v17.super_class = NUOrientationNode;
  v4 = [(NURenderNode *)&v17 _evaluateImageGeometry:geometry];
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    [v4 extent];
    if (([(NUOrientationNode *)self orientation]- 5) <= 3)
    {
      v15 = vextq_s8(v15, v15, 8uLL);
      v16 = vextq_s8(v16, v16, 8uLL);
    }

    v6 = -[NUOrientationNode outputImageOrientation:](self, "outputImageOrientation:", [v5 orientation]);
    v7 = [NUImageGeometry alloc];
    renderScale = [v5 renderScale];
    v10 = v9;
    roundingPolicy = [v5 roundingPolicy];
    v14[0] = v15;
    v14[1] = v16;
    v12 = [(NUImageGeometry *)v7 initWithExtent:v14 renderScale:renderScale orientation:v10 spaceMap:v6 roundingPolicy:0, roundingPolicy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)outputImageOrientation:(int64_t)orientation
{
  orientation = [(NUOrientationNode *)self orientation];
  v5 = 6;
  if (orientation != 8)
  {
    v5 = orientation;
  }

  if (orientation == 6)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  return NUOrientationConcat(orientation, v6);
}

- (id)_evaluateImage:(id *)image
{
  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 outputImage:image];
  if (v6 && [(NUOrientationNode *)self orientation]!= 1)
  {
    v7 = [v5 outputImageGeometry:image];
    if (v7)
    {
      v8 = v7;
      scaledSize = [v7 scaledSize];
      v11 = v10;
      [v8 physicalScaledExtent];
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      NUOrientationMakeTransformWithSizeAndOrigin([(NUOrientationNode *)self orientation], scaledSize, v11, v18, v19, &v15);
      v14[0] = v15;
      v14[1] = v16;
      v14[2] = v17;
      v12 = [v6 imageByApplyingTransform:v14];

      v6 = v8;
    }

    else
    {
      v12 = 0;
    }

    v6 = v12;
  }

  return v6;
}

- (int64_t)orientation
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"orientation"];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = NUOrientationNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (NUOrientationNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14833);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14833);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14833);
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
  _NUAssertFailHandler("[NUOrientationNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Orientation.m", 52, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

- (NUOrientationNode)initWithOrientation:(int64_t)orientation input:(id)input
{
  v38 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if ((orientation - 1) >= 8)
  {
    v13 = NUAssertLogger_14813();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v35 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_14813();
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
        *buf = 138543618;
        v35 = v20;
        v36 = 2114;
        v37 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUOrientationNode initWithOrientation:input:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode+Orientation.m", 44, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "NUOrientationIsValid(orientation)");
  }

  v7 = inputCopy;
  v32 = @"orientation";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
  v33 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v30 = *MEMORY[0x1E695FAB0];
  v31 = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v29.receiver = self;
  v29.super_class = NUOrientationNode;
  v11 = [(NURenderNode *)&v29 initWithSettings:v9 inputs:v10];

  return v11;
}

+ (id)applyOrientation:(int64_t)orientation to:(id)to
{
  toCopy = to;
  if (orientation != 1)
  {
    v7 = [[self alloc] initWithOrientation:orientation input:toCopy];

    toCopy = v7;
  }

  return toCopy;
}

@end