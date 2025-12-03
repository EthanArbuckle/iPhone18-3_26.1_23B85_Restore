@interface NUBrushStrokeMaskIntersector
- (NUBrushStrokeMaskIntersector)init;
- (NUBrushStrokeMaskIntersector)initWithBrushMask:(id)mask mask:(id)a4 strokeScale:(id)scale;
- (NUHistogram)brushHistogram;
- (NUHistogram)intersectionHistogram;
- (NUHistogram)maskHistogram;
- (double)brushPercentInsideMask;
- (double)calculateOverlapOfHistogram:(id)histogram;
- (double)maskPercentInsideBrush;
@end

@implementation NUBrushStrokeMaskIntersector

- (double)maskPercentInsideBrush
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_68_18521);
  }

  v3 = _NURenderLogger;
  v4 = v3;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "NUBrushStrokeMaskIntersector.maskPercentInsideBrush", "", buf, 2u);
  }

  maskHistogram = [(NUBrushStrokeMaskIntersector *)self maskHistogram];
  [(NUBrushStrokeMaskIntersector *)self calculateOverlapOfHistogram:maskHistogram];
  v8 = v7;

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_68_18521);
  }

  v9 = _NURenderLogger;
  v10 = v9;
  v11 = self->_signpost;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v10, OS_SIGNPOST_INTERVAL_END, v11, "NUBrushStrokeMaskIntersector.maskPercentInsideBrush", "", v13, 2u);
  }

  return v8;
}

- (double)brushPercentInsideMask
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_68_18521);
  }

  v3 = _NURenderLogger;
  v4 = v3;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "NUBrushStrokeMaskIntersector.brushPercentInsideMask", "", buf, 2u);
  }

  brushHistogram = [(NUBrushStrokeMaskIntersector *)self brushHistogram];
  [(NUBrushStrokeMaskIntersector *)self calculateOverlapOfHistogram:brushHistogram];
  v8 = v7;

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_68_18521);
  }

  v9 = _NURenderLogger;
  v10 = v9;
  v11 = self->_signpost;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v10, OS_SIGNPOST_INTERVAL_END, v11, "NUBrushStrokeMaskIntersector.brushPercentInsideMask", "", v13, 2u);
  }

  return v8;
}

- (double)calculateOverlapOfHistogram:(id)histogram
{
  v34 = *MEMORY[0x1E69E9840];
  histogramCopy = histogram;
  if (!histogramCopy)
  {
    v14 = NUAssertLogger_18533();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageHistogram != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_18533();
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

    _NUAssertFailHandler("[NUBrushStrokeMaskIntersector calculateOverlapOfHistogram:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUBrushStrokeMaskIntersector.m", 107, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "imageHistogram != nil");
  }

  v5 = histogramCopy;
  histogramCalculator = [(NUBrushStrokeMaskIntersector *)self histogramCalculator];
  v7 = 1.0 / [histogramCalculator binCount];

  intersectionHistogram = [(NUBrushStrokeMaskIntersector *)self intersectionHistogram];
  [intersectionHistogram threshold:v7];
  v10 = v9;

  [v5 threshold:v7];
  v12 = v11;

  return v10 / v12;
}

- (NUHistogram)intersectionHistogram
{
  intersectionHistogram = self->_intersectionHistogram;
  if (!intersectionHistogram)
  {
    histogramCalculator = [(NUBrushStrokeMaskIntersector *)self histogramCalculator];
    intersectionImage = [(NUBrushStrokeMaskIntersector *)self intersectionImage];
    v6 = [histogramCalculator computeHistogramFromMatte:intersectionImage];
    v7 = self->_intersectionHistogram;
    self->_intersectionHistogram = v6;

    intersectionHistogram = self->_intersectionHistogram;
  }

  return intersectionHistogram;
}

- (NUHistogram)maskHistogram
{
  maskHistogram = self->_maskHistogram;
  if (!maskHistogram)
  {
    histogramCalculator = [(NUBrushStrokeMaskIntersector *)self histogramCalculator];
    maskImage = [(NUBrushStrokeMaskIntersector *)self maskImage];
    v6 = [histogramCalculator computeHistogramFromMatte:maskImage];
    v7 = self->_maskHistogram;
    self->_maskHistogram = v6;

    maskHistogram = self->_maskHistogram;
  }

  return maskHistogram;
}

- (NUHistogram)brushHistogram
{
  brushHistogram = self->_brushHistogram;
  if (!brushHistogram)
  {
    histogramCalculator = [(NUBrushStrokeMaskIntersector *)self histogramCalculator];
    brushStrokeMaskImage = [(NUBrushStrokeMaskIntersector *)self brushStrokeMaskImage];
    v6 = [histogramCalculator computeHistogramFromMatte:brushStrokeMaskImage];
    v7 = self->_brushHistogram;
    self->_brushHistogram = v6;

    brushHistogram = self->_brushHistogram;
  }

  return brushHistogram;
}

- (NUBrushStrokeMaskIntersector)initWithBrushMask:(id)mask mask:(id)a4 strokeScale:(id)scale
{
  var1 = scale.var1;
  var0 = scale.var0;
  maskCopy = mask;
  v38.receiver = self;
  v38.super_class = NUBrushStrokeMaskIntersector;
  v11 = a4;
  v12 = [(NUBrushStrokeMaskIntersector *)&v38 init];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_66);
  }

  v12->_signpost = os_signpost_id_make_with_pointer(_NULogger, v12);
  objc_storeStrong(&v12->_brushStrokeMaskImage, mask);
  if (!NUScaleEqual(var0, var1, NUScaleOne, *(&NUScaleOne + 1)))
  {
    v13 = NUScaleToDouble(var0, var1);
    memset(&v37, 0, sizeof(v37));
    CGAffineTransformMakeScale(&v37, v13, v13);
    brushStrokeMaskImage = v12->_brushStrokeMaskImage;
    v36 = v37;
    v15 = [(CIImage *)brushStrokeMaskImage imageByApplyingTransform:&v36];
    v16 = v12->_brushStrokeMaskImage;
    v12->_brushStrokeMaskImage = v15;
  }

  v17 = MEMORY[0x1E695F658];
  blackColor = [MEMORY[0x1E695F610] blackColor];
  v19 = [v17 imageWithColor:blackColor];

  v20 = [(CIImage *)v12->_brushStrokeMaskImage imageByCompositingOverImage:v19];
  v21 = [v11 size];
  v23 = [v20 imageByCroppingToRect:{0.0, 0.0, v21, v22}];
  v24 = v12->_brushStrokeMaskImage;
  v12->_brushStrokeMaskImage = v23;

  v25 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:v11];

  maskImage = v12->_maskImage;
  v12->_maskImage = v25;

  multiplyCompositingFilter = [MEMORY[0x1E695F648] multiplyCompositingFilter];
  [multiplyCompositingFilter setInputImage:v12->_maskImage];
  [multiplyCompositingFilter setBackgroundImage:v12->_brushStrokeMaskImage];
  outputImage = [multiplyCompositingFilter outputImage];
  intersectionImage = v12->_intersectionImage;
  v12->_intersectionImage = outputImage;

  subtractBlendModeFilter = [MEMORY[0x1E695F648] subtractBlendModeFilter];
  [subtractBlendModeFilter setInputImage:v12->_maskImage];
  [subtractBlendModeFilter setBackgroundImage:v12->_brushStrokeMaskImage];
  outputImage2 = [subtractBlendModeFilter outputImage];
  brushMinusMaskImage = v12->_brushMinusMaskImage;
  v12->_brushMinusMaskImage = outputImage2;

  v33 = objc_alloc_init(NUHistogramCalculator);
  histogramCalculator = v12->_histogramCalculator;
  v12->_histogramCalculator = v33;

  return v12;
}

- (NUBrushStrokeMaskIntersector)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18547);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18547);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18547);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUBrushStrokeMaskIntersector init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Mask/NUBrushStrokeMaskIntersector.m", 46, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end