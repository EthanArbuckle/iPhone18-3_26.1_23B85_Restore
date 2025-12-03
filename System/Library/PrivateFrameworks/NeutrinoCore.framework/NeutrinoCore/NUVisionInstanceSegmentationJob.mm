@interface NUVisionInstanceSegmentationJob
- ($0AC6E346AE4835514AAA8AC86D8F4844)idealModelSize;
- (BOOL)isUsingTargetSamplePoints;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (BOOL)runMainRequest:(id)request onImage:(id)image orientation:(int64_t)orientation scale:(CGSize)scale renderer:(id)renderer error:(id *)error;
- (NSArray)targetSamplePoints;
- (id)_calculateInstancePropertiesForObservation:(id)observation context:(id)context observationOrientation:(int64_t)orientation observationScale:(CGSize)scale;
- (id)result;
- (id)scalePolicy;
@end

@implementation NUVisionInstanceSegmentationJob

- (id)result
{
  visionResult = [(NUVisionInstanceSegmentationJob *)self visionResult];
  v3 = [visionResult copy];

  return v3;
}

- (id)_calculateInstancePropertiesForObservation:(id)observation context:(id)context observationOrientation:(int64_t)orientation observationScale:(CGSize)scale
{
  height = scale.height;
  width = scale.width;
  observationCopy = observation;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  allInstances = [observationCopy allInstances];
  v14 = [allInstances count];

  if (v14)
  {
    allInstances2 = [observationCopy allInstances];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __126__NUVisionInstanceSegmentationJob__calculateInstancePropertiesForObservation_context_observationOrientation_observationScale___block_invoke;
    v17[3] = &unk_1E8109F30;
    v18 = observationCopy;
    orientationCopy = orientation;
    v22 = width;
    v23 = height;
    v19 = contextCopy;
    v20 = dictionary;
    [allInstances2 enumerateIndexesUsingBlock:v17];
  }

  return dictionary;
}

void __126__NUVisionInstanceSegmentationJob__calculateInstancePropertiesForObservation_context_observationOrientation_observationScale___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:a2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v13 = 0;
  v7 = GenerateMaskForInstances(v4, v5, v6, &v13, *(a1 + 64), *(a1 + 72));
  v8 = v13;

  if (v7)
  {
    v9 = [NUMaskUtilities propertiesForMask:v7 context:*(a1 + 40)];
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_297_8288);
    }

    v12 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_fault_impl(&dword_1C0184000, v12, OS_LOG_TYPE_FAULT, "Failed to generate mask for Vision segmentation instance, error: %@", buf, 0xCu);
    }
  }
}

- (BOOL)render:(id *)render
{
  v81 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v52 = NUAssertLogger_8293();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(buf[0].f64[0]) = 138543362;
      *(buf[0].f64 + 4) = v53;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v55 = NUAssertLogger_8293();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols = [v60 callStackSymbols];
        v63 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf[0].f64[0]) = 138543618;
        *(buf[0].f64 + 4) = v59;
        WORD2(buf[0].f64[1]) = 2114;
        *(&buf[0].f64[1] + 6) = v63;
        _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v56)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v58 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf[0].f64[0]) = 138543362;
      *(buf[0].f64 + 4) = v58;
      _os_log_error_impl(&dword_1C0184000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionInstanceSegmentationJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionInstanceSegmentationRequest.m", 492, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != nil");
  }

  outputImage = [(NURenderJob *)self outputImage];
  outputGeometry = [(NURenderJob *)self outputGeometry];
  v7 = [(NURenderJob *)self renderer:render];
  if (!v7)
  {
    goto LABEL_46;
  }

  orientation = [outputGeometry orientation];
  [outputImage extent];
  v11 = 6;
  if (v10 <= v9)
  {
    v11 = orientation;
  }

  v12 = 8;
  if (v10 <= v9)
  {
    v12 = 1;
  }

  v13 = 8;
  if (v10 <= v9)
  {
    v13 = 1;
  }

  v14 = 8;
  if (v10 <= v9)
  {
    v14 = orientation;
  }

  if (orientation != 8)
  {
    v13 = v14;
  }

  if (orientation != 6)
  {
    v12 = v13;
  }

  if ((orientation - 3) >= 2)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  idealModelSize = [(NUVisionInstanceSegmentationJob *)self idealModelSize];
  if (!idealModelSize || (v18 = v17) == 0)
  {
    v48 = @"invalid model size";
    v49 = 0;
LABEL_49:
    [NUError invalidError:v48 object:v49];
    *render = v45 = 0;
    goto LABEL_50;
  }

  v19 = idealModelSize;
  [outputImage extent];
  if (v20 <= 0.0 || v21 <= 0.0)
  {
    v48 = @"invalid image size";
    v49 = outputImage;
    goto LABEL_49;
  }

  if ((v15 - 5) >= 4)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if ((v15 - 5) >= 4)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  v24 = v19 / v22;
  v25 = v18 / v23;
  v26 = +[NUGlobalSettings inpaintSegmentationUsesNonUniformScaling];
  if (v24 >= v25)
  {
    v27 = v24;
  }

  else
  {
    v27 = v25;
  }

  if (!v26)
  {
    v24 = v27;
    v25 = v27;
  }

  if ([(NUVisionInstanceSegmentationJob *)self isUsingTargetSamplePoints])
  {
    v68 = v7;
    v69 = outputGeometry;
    v28 = MEMORY[0x1E695DF70];
    targetSamplePoints = [(NUVisionInstanceSegmentationJob *)self targetSamplePoints];
    v30 = [v28 arrayWithCapacity:{objc_msgSend(targetSamplePoints, "count")}];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    targetSamplePoints2 = [(NUVisionInstanceSegmentationJob *)self targetSamplePoints];
    v32 = [targetSamplePoints2 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v75;
      v70 = vdupq_n_s64(0x3FEFFF2E40000000uLL);
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v75 != v34)
          {
            objc_enumerationMutation(targetSamplePoints2);
          }

          [*(*(&v74 + 1) + 8 * i) nu_CGPoint];
          v71 = v37;
          v72 = v36;
          v80 = 0u;
          memset(buf, 0, sizeof(buf));
          NUOrientationMakeTransformWithSizeAndOrigin(v15, 1, 1, 0, 0, buf);
          v38 = [objc_alloc(MEMORY[0x1E6984600]) initWithLocation:{vmaxnmq_f64(vminnmq_f64(vaddq_f64(v80, vmlaq_n_f64(vmulq_n_f64(buf[1], v71), buf[0], v72)), v70), 0)}];
          [v30 addObject:v38];
        }

        v33 = [targetSamplePoints2 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v33);
    }

    visionRequest = [(NUVisionInstanceSegmentationJob *)self visionRequest];
    [visionRequest setTargetPoints:v30];

    outputGeometry = v69;
    v7 = v68;
  }

  visionRequest2 = [(NUVisionInstanceSegmentationJob *)self visionRequest];
  v41 = [(NUVisionInstanceSegmentationJob *)self runMainRequest:visionRequest2 onImage:outputImage orientation:v15 scale:v7 renderer:render error:v24, v25];

  if (!v41)
  {
LABEL_46:
    v45 = 0;
    goto LABEL_50;
  }

  visionRequest3 = [(NUVisionInstanceSegmentationJob *)self visionRequest];
  results = [visionRequest3 results];

  v44 = [results count];
  v45 = v44 == 1;
  if (v44 == 1)
  {
    firstObject = [results firstObject];
    context = [v7 context];
    v46 = [(NUVisionInstanceSegmentationJob *)self _calculateInstancePropertiesForObservation:firstObject context:context observationOrientation:v15 observationScale:v24, v25];
    v47 = [[_NUVisionInstanceSegmentationResult alloc] initWithObservation:firstObject usingTargetPoints:[(NUVisionInstanceSegmentationJob *)self isUsingTargetSamplePoints] observationOrientation:v15 observationScale:v46 perInstanceProperties:v24, v25];
    [(NUVisionInstanceSegmentationJob *)self setVisionResult:v47];
  }

  else
  {
    firstObject = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(results, "count")}];
    *render = [NUError invalidError:@"Unexpected number of observations" object:firstObject];
  }

LABEL_50:
  return v45;
}

- (BOOL)runMainRequest:(id)request onImage:(id)image orientation:(int64_t)orientation scale:(CGSize)scale renderer:(id)renderer error:(id *)error
{
  height = scale.height;
  width = scale.width;
  v111[4] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  rendererCopy = renderer;
  imageCopy = image;
  renderNode = [(NURenderJob *)self renderNode];
  resamplingColorSpace = [renderNode resamplingColorSpace];
  v18 = resamplingColorSpace;
  if (resamplingColorSpace)
  {
    v19 = resamplingColorSpace;
  }

  else
  {
    v19 = +[NUColorSpace sRGBColorSpace];
  }

  v20 = v19;

  v99 = v20;
  v21 = [imageCopy imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v20, "CGColorSpace")}];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = imageCopy;
  }

  v24 = v23;

  v25 = ApplyOrientation(v24, orientation);

  v26 = v25;
  [v26 extent];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  imageByClampingToExtent = [v26 imageByClampingToExtent];

  v110[0] = @"inputScale";
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v111[0] = v36;
  v110[1] = @"inputAspectRatio";
  height = [MEMORY[0x1E696AD98] numberWithDouble:width / height];
  v111[1] = height;
  v110[2] = @"inputB";
  v110[3] = @"inputC";
  v111[2] = &unk_1F3F82C60;
  v111[3] = &unk_1F3F82C70;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:4];
  v39 = [imageByClampingToExtent imageByApplyingFilter:@"CIBicubicScaleTransform" withInputParameters:v38];

  CGAffineTransformMakeScale(&v109, width, height);
  v112.origin.x = v28;
  v112.origin.y = v30;
  v112.size.width = v32;
  v112.size.height = v34;
  v113 = CGRectApplyAffineTransform(v112, &v109);
  v114 = CGRectIntegral(v113);
  v105 = [v39 imageByCroppingToRect:{v114.origin.x, v114.origin.y, v114.size.width, v114.size.height}];

  [v105 extent];
  1111970369 = [NUVideoUtilities newPixelBufferOfSize:vcvtpd_s64_f64(v40) format:vcvtpd_s64_f64(v41), 1111970369];
  v42 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(1111970369, "CVPixelBuffer")}];
  [v42 setColorSpace:0];
  context = [rendererCopy context];
  v43 = [context startTaskToRender:v105 toDestination:v42 error:error];
  v100 = v43;
  if (v43)
  {
    v98 = [v43 waitUntilCompletedAndReturnError:error];
    if (v98)
    {
      v97 = +[NUGlobalSettings inpaintSegmentationInputTensorsDumpPath];
      if (v97)
      {
        cVPixelBuffer = [1111970369 CVPixelBuffer];
        v45 = v97;
        if (CVPixelBufferGetPixelFormatType(cVPixelBuffer) != 1111970369)
        {
          v77 = NUAssertLogger_8293();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong pixel format"];
            LODWORD(v109.a) = 138543362;
            *(&v109.a + 4) = v78;
            _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v109, 0xCu);
          }

          specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v80 = NUAssertLogger_8293();
          v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
          if (specific)
          {
            if (v81)
            {
              v84 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
              v85 = MEMORY[0x1E696AF00];
              v86 = v84;
              callStackSymbols = [v85 callStackSymbols];
              v88 = [callStackSymbols componentsJoinedByString:@"\n"];
              LODWORD(v109.a) = 138543618;
              *(&v109.a + 4) = v84;
              WORD2(v109.b) = 2114;
              *(&v109.b + 6) = v88;
              _os_log_error_impl(&dword_1C0184000, v80, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v109, 0x16u);
            }
          }

          else if (v81)
          {
            callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
            v83 = [callStackSymbols2 componentsJoinedByString:@"\n"];
            LODWORD(v109.a) = 138543362;
            *(&v109.a + 4) = v83;
            _os_log_error_impl(&dword_1C0184000, v80, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v109, 0xCu);
          }

          _NUAssertFailHandler("void DumpTensorsForBuffer(CVPixelBufferRef, NSString *__strong)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionInstanceSegmentationRequest.m", 391, @"wrong pixel format", v89, v90, v91, v92, v93);
        }

        CVPixelBufferLockBaseAddress(cVPixelBuffer, 1uLL);
        v46 = v45;
        v47 = fopen([v45 UTF8String], "w");
        if (v47)
        {
          v48 = CVPixelBufferGetWidth(cVPixelBuffer);
          v49 = CVPixelBufferGetHeight(cVPixelBuffer);
          BytesPerRow = CVPixelBufferGetBytesPerRow(cVPixelBuffer);
          BaseAddress = CVPixelBufferGetBaseAddress(cVPixelBuffer);
          v94 = v45;
          v95 = requestCopy;
          pixelBuffer = cVPixelBuffer;
          if (v49)
          {
            v53 = BaseAddress;
            for (i = 0; i != v49; ++i)
            {
              if (v48)
              {
                v55 = 2;
                v56 = v48;
                do
                {
                  LOBYTE(v52) = v53[v55];
                  fprintf(v47, "%.6f, ", v52);
                  v55 += 4;
                  --v56;
                }

                while (v56);
              }

              v53 += BytesPerRow;
            }

            v57 = CVPixelBufferGetBaseAddress(pixelBuffer);
            for (j = 0; j != v49; ++j)
            {
              if (v48)
              {
                v60 = 1;
                v61 = v48;
                do
                {
                  LOBYTE(v58) = v57[v60];
                  fprintf(v47, "%.6f, ", v58);
                  v60 += 4;
                  --v61;
                }

                while (v61);
              }

              v57 += BytesPerRow;
            }

            v62 = CVPixelBufferGetBaseAddress(pixelBuffer);
            for (k = 0; k != v49; ++k)
            {
              v64 = v62;
              for (m = v48; m; --m)
              {
                v66 = *v64;
                v64 += 4;
                fprintf(v47, "%.6f, ", v66);
              }

              v62 += BytesPerRow;
            }
          }

          else
          {
            CVPixelBufferGetBaseAddress(cVPixelBuffer);
            CVPixelBufferGetBaseAddress(cVPixelBuffer);
          }

          fclose(v47);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          v45 = v94;
          requestCopy = v95;
          v68 = v94;
          printf("Dumped Photos vision input to %s\n", [v94 UTF8String]);
        }
      }

      v69 = objc_alloc(MEMORY[0x1E69845B8]);
      cVPixelBuffer2 = [1111970369 CVPixelBuffer];
      v107 = *MEMORY[0x1E6984998];
      v108 = context;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v72 = +[NUFactory sharedFactory];
      visionSession = [v72 visionSession];
      v74 = [v69 initWithCVPixelBuffer:cVPixelBuffer2 options:v71 session:visionSession];

      v106 = requestCopy;
      v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
      v67 = [v74 performRequests:v75 error:error];
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v67 = 0;
  }

  return v67;
}

- (BOOL)prepare:(id *)prepare
{
  v5 = objc_alloc_init(MEMORY[0x1E6984558]);
  [(NUVisionInstanceSegmentationJob *)self setVisionRequest:v5];

  visionRequest = [(NUVisionInstanceSegmentationJob *)self visionRequest];
  v7 = [visionRequest setRevision:1 error:prepare];

  if (!v7)
  {
    return 0;
  }

  v8 = +[NUGlobalSettings inpaintSegmentationUsesConnectedComponents];
  visionRequest2 = [(NUVisionInstanceSegmentationJob *)self visionRequest];
  [visionRequest2 setDisableConnectedComponentRefinement:!v8];

  if (!_maximumTargetPoints)
  {
    visionRequest3 = [(NUVisionInstanceSegmentationJob *)self visionRequest];
    _maximumTargetPoints = [visionRequest3 maximumTargetPoints];
  }

  v12.receiver = self;
  v12.super_class = NUVisionInstanceSegmentationJob;
  return [(NURenderJob *)&v12 prepare:prepare];
}

- (id)scalePolicy
{
  request = [(NURenderJob *)self request];
  scalePolicy = [request scalePolicy];

  return scalePolicy;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)idealModelSize
{
  v36 = *MEMORY[0x1E69E9840];
  visionRequest = [(NUVisionInstanceSegmentationJob *)self visionRequest];

  if (!visionRequest)
  {
    v13 = NUAssertLogger_8293();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Vision request not set up until prepare:"];
      *buf = 138543362;
      v33 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_8293();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVisionInstanceSegmentationJob idealModelSize]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVisionInstanceSegmentationRequest.m", 347, @"Vision request not set up until prepare:", v27, v28, v29, v30, v31);
  }

  visionRequest2 = [(NUVisionInstanceSegmentationJob *)self visionRequest];
  supportedImageSizeSet = [visionRequest2 supportedImageSizeSet];

  firstObject = [supportedImageSizeSet firstObject];
  pixelsWideRange = [firstObject pixelsWideRange];
  idealDimension = [pixelsWideRange idealDimension];

  pixelsHighRange = [firstObject pixelsHighRange];
  idealDimension2 = [pixelsHighRange idealDimension];

  if ((idealDimension2 | idealDimension) < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v21 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  v11 = idealDimension;
  v12 = idealDimension2;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (BOOL)isUsingTargetSamplePoints
{
  targetSamplePoints = [(NUVisionInstanceSegmentationJob *)self targetSamplePoints];
  v3 = [targetSamplePoints count] != 0;

  return v3;
}

- (NSArray)targetSamplePoints
{
  request = [(NURenderJob *)self request];
  targetSamplePoints = [request targetSamplePoints];

  return targetSamplePoints;
}

@end