@interface NUVisionSegmentationJob
- (BOOL)render:(id *)a3;
- (NUVisionSegmentationJob)initWithRequest:(id)a3;
- (NUVisionSegmentationJob)initWithVisionSegmentationRequest:(id)a3;
- (__CVBuffer)_combineMultipleObservations:(id)a3 context:(id)a4 error:(id *)a5;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation NUVisionSegmentationJob

- (void)cleanUp
{
  [(NUVisionSegmentationJob *)self setSegmentedMatte:0];
  v3.receiver = self;
  v3.super_class = NUVisionSegmentationJob;
  [(NURenderJob *)&v3 cleanUp];
}

- (id)result
{
  v3 = [_NUVisionSegmentationResult alloc];
  v4 = [(NUVisionSegmentationJob *)self segmentedMatte];
  v5 = [(NUVisionSegmentationJob *)self confidenceMap];
  v6 = [(_NUVisionSegmentationResult *)v3 initWithSegmentedMatteBuffer:v4 confidenceMapBuffer:v5];

  v7 = [(NUVisionSegmentationJob *)self segmentationRequest];
  -[_NUVisionSegmentationResult setSegmentationType:](v6, "setSegmentationType:", [v7 segmentationType]);

  return v6;
}

- (BOOL)render:(id *)a3
{
  v93 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v57 = NUAssertLogger_22592();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v58;
      _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", pixelBufferOut, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v60 = NUAssertLogger_22592();
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v61)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        v67 = [v65 callStackSymbols];
        v68 = [v67 componentsJoinedByString:@"\n"];
        *pixelBufferOut = 138543618;
        *&pixelBufferOut[4] = v64;
        v91 = 2114;
        v92 = v68;
        _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", pixelBufferOut, 0x16u);
      }
    }

    else if (v61)
    {
      v62 = [MEMORY[0x1E696AF00] callStackSymbols];
      v63 = [v62 componentsJoinedByString:@"\n"];
      *pixelBufferOut = 138543362;
      *&pixelBufferOut[4] = v63;
      _os_log_error_impl(&dword_1C0184000, v60, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", pixelBufferOut, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionSegmentationJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionSegmentationRequest.m", 282, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "error != nil");
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    v6 = [(NURenderJob *)self outputImage];
    v7 = [v5 context];
    v8 = objc_alloc(MEMORY[0x1E69845B8]);
    v88 = *MEMORY[0x1E6984998];
    v89 = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v10 = +[NUFactory sharedFactory];
    v11 = [v10 visionSession];
    v12 = [v8 initWithCIImage:v6 options:v9 session:v11];

    v13 = [(NUVisionSegmentationJob *)self segmentationRequest];
    v14 = [v13 segmentationType];

    v15 = 0;
    if (v14 <= 1)
    {
      if (!v14)
      {
        *a3 = [NUError unknownError:@"Unknown segmentation type" object:0];
LABEL_57:

        goto LABEL_58;
      }

      if (v14 == 1)
      {
        v77 = v7;
        v16 = v6;
        v17 = v12;
        v15 = objc_alloc_init(MEMORY[0x1E6984570]);
        v18 = [(NUVisionSegmentationJob *)self segmentationRequest];
        v19 = [v18 produceConfidenceMap];

        if (v19)
        {
          v20 = objc_alloc_init(MEMORY[0x1E6984570]);
          [v20 setRevision:1];
          [v20 setQualityLevel:1];
          v12 = v17;
          if (v20)
          {
            v87[0] = v15;
            v87[1] = v20;
            v21 = v20;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
            v23 = 0;
            v80 = v16;
            v7 = v77;
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v17;
        }

        v6 = v16;
        v7 = v77;
      }

LABEL_18:
      v80 = v6;
      v86 = v15;
      v23 = 1;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
      v21 = 0;
LABEL_19:
      v85 = 0;
      v81 = v22;
      v82 = v12;
      v25 = [v12 performRequests:v22 error:&v85];
      v26 = v85;
      v27 = v26;
      if ((v25 & 1) == 0)
      {
        [NUError errorWithCode:1 reason:@"Vision segmentation failed" object:v15 underlyingError:v26];
        *a3 = LOBYTE(v14) = 0;
        v12 = v82;
        v31 = v21;
LABEL_56:

        v6 = v80;
        goto LABEL_57;
      }

      v79 = v26;
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          v32 = [v15 results];
          v33 = [v32 count];

          if (v33)
          {
            v14 = [v15 results];
            v84 = 0;
            v78 = v7;
            v29 = [(NUVisionSegmentationJob *)self _combineMultipleObservations:v14 context:v7 error:&v84];
            v76 = v84;
            v30 = 0;
            goto LABEL_29;
          }

          LOBYTE(v14) = 1;
LABEL_35:
          v12 = v82;
          v31 = v21;
LABEL_55:
          v27 = v79;
          goto LABEL_56;
        }

        if (v14 != 1)
        {
          v14 = 0;
          v31 = v21;
          goto LABEL_53;
        }
      }

      v28 = [v15 results];
      v14 = [v28 firstObject];

      if (v14)
      {
        v78 = v7;
        v29 = [v14 pixelBuffer];
        if ((v23 & 1) == 0)
        {
          v31 = v21;
          v35 = [v21 results];
          v36 = [v35 firstObject];

          if (v36)
          {
            v30 = [v36 pixelBuffer];
            v34 = v29;
          }

          else
          {
            v34 = v29;
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_227_22606);
            }

            v37 = _NULogger;
            if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
            {
              v55 = v37;
              v56 = [NUError missingError:@"Vision confidence map missing observation" object:v31];
              *pixelBufferOut = 138412290;
              *&pixelBufferOut[4] = v56;
              _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "%@", pixelBufferOut, 0xCu);
            }

            v30 = 0;
          }

          v76 = 0;
          goto LABEL_42;
        }

        v30 = 0;
        v76 = 0;
LABEL_29:
        v31 = v21;
        v34 = v29;
LABEL_42:

        if (v34)
        {
          v38 = [(NURenderJob *)self outputGeometry];
          v39 = [v38 scaledSize];
          v75 = v40;

          Width = CVPixelBufferGetWidth(v34);
          Height = CVPixelBufferGetHeight(v34);
          v7 = v78;
          if (!CVImageBufferGetColorSpace(v34))
          {
            v41 = +[NUColorSpace linearGrayColorSpace];
            CVBufferSetAttachment(v34, *MEMORY[0x1E6965CE8], [v41 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
          }

          if (v30)
          {
            if (!CVImageBufferGetColorSpace(v30))
            {
              v42 = +[NUColorSpace linearGrayColorSpace];
              CVBufferSetAttachment(v30, *MEMORY[0x1E6965CE8], [v42 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
            }

            v43 = [[NUCVPixelBuffer alloc] initWithCVPixelBuffer:v30];
            [(NUVisionSegmentationJob *)self setConfidenceMap:v43];
          }

          v44 = v39;
          if (Width != v39 || Height != v75)
          {
            *pixelBufferOut = 0;
            v47 = CVBufferCopyAttachments(v34, kCVAttachmentMode_ShouldPropagate);
            PixelFormatType = CVPixelBufferGetPixelFormatType(v34);
            v49 = CVPixelBufferCreate(0, v44, v75, PixelFormatType, v47, pixelBufferOut);
            v12 = v82;
            if (v49)
            {
              v50 = v47;
              v51 = [MEMORY[0x1E696AD98] numberWithInt:v49];
              *a3 = [NUError failureError:@"Failed to create output pixel buffer" object:v51];

              LOBYTE(v14) = 0;
            }

            else
            {
              pixelTransferSessionOut = 0;
              v52 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
              if (!v52 && pixelTransferSessionOut)
              {
                v52 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v34, *pixelBufferOut);
                VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
                CFRelease(pixelTransferSessionOut);
                pixelTransferSessionOut = 0;
              }

              LOBYTE(v14) = v52 == 0;
              v50 = v47;
              if (v52)
              {
                v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
                *a3 = [NUError failureError:@"Failed to transfer pixel buffer" object:v53];
              }

              else
              {
                v54 = [NUCVPixelBuffer alloc];
                v53 = [(NUCVPixelBuffer *)v54 initWithCVPixelBuffer:*pixelBufferOut];
                [(NUVisionSegmentationJob *)self setSegmentedMatte:v53];
              }

              CFRelease(*pixelBufferOut);
              v12 = v82;
            }

            v27 = v79;

            goto LABEL_56;
          }

          v45 = [[NUCVPixelBuffer alloc] initWithCVPixelBuffer:v34];
          [(NUVisionSegmentationJob *)self setSegmentedMatte:v45];

          LOBYTE(v14) = 1;
          goto LABEL_54;
        }

        v14 = v76;
        v7 = v78;
LABEL_53:
        *a3 = [NUError errorWithCode:3 reason:@"No pixelBuffer from vision segmentation" object:v15 underlyingError:v14];

        LOBYTE(v14) = 0;
LABEL_54:
        v12 = v82;
        goto LABEL_55;
      }

      *a3 = [NUError missingError:@"Vision segmentation missing observation" object:v15];
      goto LABEL_35;
    }

    if (v14 == 2)
    {
      v24 = 0x1E6984538;
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_18;
      }

      v24 = 0x1E6984578;
    }

    v15 = objc_alloc_init(*v24);
    goto LABEL_18;
  }

  LOBYTE(v14) = 0;
LABEL_58:

  return v14;
}

- (__CVBuffer)_combineMultipleObservations:(id)a3 context:(id)a4 error:(id *)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (![v9 count])
  {
    v52 = NUAssertLogger_22592();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "observations.count > 0"];
      *buf = 138543362;
      v81 = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_22592();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v81 = v59;
        v82 = 2114;
        v83 = v63;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      v57 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [v57 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v81 = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionSegmentationJob _combineMultipleObservations:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionSegmentationRequest.m", 207, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "observations.count > 0");
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v13)
  {
    v5 = v13;
    v14 = *v75;
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v74 + 1) + 8 * i) instanceSegmentationMask];
        [v11 addObject:v16];
      }

      v5 = [v12 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v5);
  }

  v17 = [(NUVisionSegmentationJob *)self segmentationRequest];
  v18 = [v17 visionSegmentationPolicy];

  if (v18 > 1)
  {
    if (v18 == 3)
    {
      v37 = [v11 objectAtIndexedSubscript:0];
      v5 = [v37 pixelBuffer];

      if ([v11 count] == 1)
      {
        goto LABEL_29;
      }

      v68 = v10;
      v19 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:v5];
      v38 = [MEMORY[0x1E695F608] componentAdd];
      [v19 setBlendKernel:v38];

      v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count") - 1}];
      if ([v11 count] < 2)
      {
LABEL_35:
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v43 = v39;
        v46 = [v43 countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v70;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v70 != v48)
              {
                objc_enumerationMutation(v43);
              }

              v50 = [*(*(&v69 + 1) + 8 * j) waitUntilCompletedAndReturnError:a5];
            }

            v47 = [v43 countByEnumeratingWithState:&v69 objects:v78 count:16];
          }

          while (v47);
        }
      }

      else
      {
        v40 = 1;
        while (1)
        {
          v41 = MEMORY[0x1E695F658];
          v42 = [v11 objectAtIndexedSubscript:v40];
          v43 = [v41 imageWithCVPixelBuffer:{objc_msgSend(v42, "pixelBuffer")}];

          v73 = 0;
          v44 = [v68 startTaskToRender:v43 toDestination:v19 error:&v73];
          v45 = v73;
          if (!v44)
          {
            break;
          }

          [v39 addObject:v44];

          if (++v40 >= [v11 count])
          {
            goto LABEL_35;
          }
        }

        v51 = [v11 objectAtIndexedSubscript:v40];
        *a5 = [NUError errorWithCode:1 reason:@"Merge render failed" object:v51 underlyingError:v45];

        v5 = 0;
      }

      v10 = v68;
      goto LABEL_28;
    }

    if (v18 == 2)
    {
      v19 = 0;
      if ([v12 count])
      {
        v29 = 0;
        v30 = 0.0;
        do
        {
          v31 = [v12 objectAtIndexedSubscript:v29];
          [v31 confidence];
          v33 = v32;

          if (v33 > v30)
          {
            v34 = [v11 objectAtIndexedSubscript:v29];

            v19 = v34;
            v30 = v33;
          }

          ++v29;
        }

        while (v29 < [v12 count]);
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (!v18)
    {
      v35 = [v11 objectAtIndexedSubscript:0];
      v19 = v35;
      goto LABEL_27;
    }

    if (v18 == 1)
    {
      v19 = 0;
      if ([v12 count])
      {
        v20 = 0;
        v21 = 0.0;
        do
        {
          v22 = [v12 objectAtIndexedSubscript:v20];
          [v22 boundingBox];
          v24 = v23;
          v25 = [v12 objectAtIndexedSubscript:v20];
          [v25 boundingBox];
          v27 = v24 * v26;

          if (v27 > v21)
          {
            v28 = [v11 objectAtIndexedSubscript:v20];

            v19 = v28;
            v21 = v27;
          }

          ++v20;
        }

        while (v20 < [v12 count]);
      }

LABEL_25:
      v35 = v19;
LABEL_27:
      v5 = [v35 pixelBuffer];
LABEL_28:
    }
  }

LABEL_29:

  return v5;
}

- (id)scalePolicy
{
  v2 = [(NUVisionSegmentationJob *)self segmentationRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

- (NUVisionSegmentationJob)initWithRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22511);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_22511);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_22511);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUVisionSegmentationJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionSegmentationRequest.m", 183, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUVisionSegmentationJob)initWithVisionSegmentationRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = NUVisionSegmentationJob;
  return [(NURenderJob *)&v4 initWithRequest:a3];
}

@end