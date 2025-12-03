@interface NUVisionForegroundIsolationSegmentationJob
- ($0AC6E346AE4835514AAA8AC86D8F4844)idealModelSize;
- (BOOL)render:(id *)render;
- (id)result;
- (id)scalePolicy;
@end

@implementation NUVisionForegroundIsolationSegmentationJob

- (id)result
{
  v3 = [_NUVisionForegroundIsolationSegmentationResult alloc];
  maskBuffer = [(NUVisionForegroundIsolationSegmentationJob *)self maskBuffer];
  v5 = [(_NUVisionForegroundIsolationSegmentationResult *)v3 initWithMaskBuffer:maskBuffer];

  return v5;
}

- (BOOL)render:(id *)render
{
  v55 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v32 = NUAssertLogger_26332();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v52 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_26332();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v39;
        v53 = 2114;
        v54 = v43;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionForegroundIsolationSegmentationJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionForegroundIsolationSegmentationRequest.m", 75, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != nil");
  }

  outputImage = [(NURenderJob *)self outputImage];
  outputGeometry = [(NURenderJob *)self outputGeometry];
  orientation = [outputGeometry orientation];
  v8 = [outputImage imageByApplyingOrientation:orientation];

  v9 = [(NUVisionBasedRenderJob *)self newRequestHandlerForImage:v8 error:render];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6984548]);
    v50 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v12 = [v9 performRequests:v11 error:render];

    if (!v12)
    {
      v15 = 0;
LABEL_23:

      goto LABEL_24;
    }

    results = [v10 results];
    if ([results count] >= 2)
    {
      firstObject = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(results, "count")}];
      v14 = [NUError invalidError:@"Unexpected number of observations" object:firstObject];
LABEL_12:
      v15 = 0;
      *render = v14;
LABEL_22:

      goto LABEL_23;
    }

    firstObject = [results firstObject];
    allInstances = [firstObject allInstances];
    v17 = [firstObject generateMaskForInstances:allInstances error:render];

    if (!v17)
    {
      v14 = [NUError errorWithCode:1 reason:@"Failed to generate a mask for foreground instances" object:results underlyingError:*render];
      goto LABEL_12;
    }

    if (orientation == 1)
    {
      v18 = [[NUCVPixelBuffer alloc] initWithCVPixelBuffer:v17];
      maskBuffer = self->_maskBuffer;
      self->_maskBuffer = v18;

      CVPixelBufferRelease(v17);
LABEL_19:
      v15 = 1;
      goto LABEL_22;
    }

    v20 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v17];
    CVPixelBufferRelease(v17);
    if (orientation == 6)
    {
      orientation = 8;
    }

    else if (orientation == 8)
    {
      orientation = 6;
    }

    v48 = [v20 imageByApplyingOrientation:orientation];

    [v48 extent];
    1278226534 = [NUVideoUtilities newPixelBufferOfSize:vcvtpd_s64_f64(v21) format:vcvtpd_s64_f64(v22), 1278226534];
    v24 = self->_maskBuffer;
    self->_maskBuffer = 1278226534;

    v25 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{-[NUImageBuffer CVPixelBuffer](self->_maskBuffer, "CVPixelBuffer")}];
    v26 = objc_alloc_init(MEMORY[0x1E695F620]);
    v27 = [v26 startTaskToRender:v48 toDestination:v25 error:render];
    v28 = v27;
    if (v27)
    {
      v29 = [v27 waitUntilCompletedAndReturnError:render];
      v30 = v29 == 0;

      if (!v30)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_24:

  return v15;
}

- (id)scalePolicy
{
  idealModelSize = [(NUVisionForegroundIsolationSegmentationJob *)self idealModelSize];
  v4 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:idealModelSize * v3];

  return v4;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)idealModelSize
{
  v2 = 512;
  v3 = 512;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end