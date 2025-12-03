@interface NUFaceDetectionJob
- (BOOL)render:(id *)render;
- (NUFaceDetectionJob)initWithFaceDetectionRequest:(id)request;
- (NUFaceDetectionJob)initWithRequest:(id)request;
- (id)cacheKey;
- (id)detectFaceLandmarksInBuffer:(__CVBuffer *)buffer withFaceRects:(id)rects error:(id *)error;
- (id)detectFaceRectsInBuffer:(__CVBuffer *)buffer maxResultCount:(unint64_t)count error:(id *)error;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation NUFaceDetectionJob

- (void)cleanUp
{
  v4.receiver = self;
  v4.super_class = NUFaceDetectionJob;
  [(NURenderJob *)&v4 cleanUp];
  faces = self->_faces;
  self->_faces = 0;
}

- (id)result
{
  v3 = objc_alloc_init(_NUFaceDetectionResult);
  [(_NUFaceDetectionResult *)v3 setFaces:self->_faces];
  [(_NUFaceDetectionResult *)v3 setImageSize:self->_imageSize.width, self->_imageSize.height];

  return v3;
}

- (BOOL)render:(id *)render
{
  v55 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v31 = NUAssertLogger_18325();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_18325();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543618;
        *(&buf.origin.x + 4) = v38;
        WORD2(buf.origin.y) = 2114;
        *(&buf.origin.y + 6) = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFaceDetectionJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUFaceDetectionRequest.m", 188, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != nil");
  }

  v5 = [(NURenderJob *)self renderer:?];
  if (v5)
  {
    outputImage = [(NURenderJob *)self outputImage];
    [outputImage extent];
    buf.origin.x = v7;
    buf.origin.y = v8;
    buf.size.width = v9;
    buf.size.height = v10;
    NU::RectT<long>::RectT(&v52, &buf, 0);
    v49 = v53;
    v50 = v52;
    v11 = [NUVideoUtilities newPixelBufferOfSize:v53 format:1111970369];
    if (v11)
    {
      v48 = outputImage;
      v12 = +[NUColorSpace sRGBColorSpace];
      cVPixelBuffer = [v11 CVPixelBuffer];
      v47 = v12;
      CVBufferSetAttachment(cVPixelBuffer, *MEMORY[0x1E6965CE8], [v12 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
      v14 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(v11, "CVPixelBuffer")}];
      v15 = MEMORY[0x1E696AEC0];
      request = [(NURenderJob *)self request];
      name = [request name];
      v18 = [v15 stringWithFormat:@"%@-j%lld", name, -[NURenderJob jobNumber](self, "jobNumber")];
      [v14 setLabel:v18];

      outputImage2 = [(NURenderJob *)self outputImage];
      buf.origin = v50;
      buf.size = v49;
      v51 = v14;
      v20 = [v5 renderImage:outputImage2 rect:&buf toDestination:v14 atPoint:0 error:{0, render}];

      if (v20)
      {
        request2 = [v20 waitUntilCompletedAndReturnError:render];
        if (request2)
        {
          faceDetectionRequest = [(NUFaceDetectionJob *)self faceDetectionRequest];
          v23 = -[NUFaceDetectionJob detectFaceRectsInBuffer:maxResultCount:error:](self, "detectFaceRectsInBuffer:maxResultCount:error:", [v11 CVPixelBuffer], objc_msgSend(faceDetectionRequest, "maxFaceCount"), render);
          if ([v23 count])
          {
            v24 = -[NUFaceDetectionJob detectFaceLandmarksInBuffer:withFaceRects:error:](self, "detectFaceLandmarksInBuffer:withFaceRects:error:", [v11 CVPixelBuffer], v23, render);
            v25 = [(NSArray *)v24 count];
            if (v25 == [v23 count])
            {
              v26 = 1;
            }

            else
            {
              [NUError mismatchError:@"detected face rects but not an equal number of face landmarks" object:v23];
              *render = v26 = 0;
            }
          }

          else
          {
            v26 = 1;
            v24 = MEMORY[0x1E695E0F0];
          }

          faces = self->_faces;
          self->_faces = v24;

          outputGeometry = [(NURenderJob *)self outputGeometry];
          self->_imageSize.width = [outputGeometry size];
          self->_imageSize.height = v29;
        }

        else
        {
          faceDetectionRequest = [(NURenderJob *)self request];
          v23 = [faceDetectionRequest copy];
          [NUError errorWithCode:1 reason:@"failed to render for face detection. Error completing task." object:v23 underlyingError:*render];
          *render = v26 = 0;
        }
      }

      else
      {
        request2 = [(NURenderJob *)self request];
        faceDetectionRequest = [request2 copy];
        [NUError errorWithCode:1 reason:@"failed to render for face detection. Task creation failed." object:faceDetectionRequest underlyingError:*render];
        *render = v26 = 0;
      }

      outputImage = v48;
    }

    else
    {
      [NUError failureError:@"failed to allocate buffer for image" object:outputImage];
      *render = v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)detectFaceLandmarksInBuffer:(__CVBuffer *)buffer withFaceRects:(id)rects error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  if (!error)
  {
    v20 = NUAssertLogger_18325();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v55 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_18325();
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
        v55 = v27;
        v56 = 2114;
        v57 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFaceDetectionJob detectFaceLandmarksInBuffer:withFaceRects:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUFaceDetectionRequest.m", 165, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "error != NULL");
  }

  v8 = rectsCopy;
  v9 = objc_alloc_init(MEMORY[0x1E69844C8]);
  [v9 setRevision:2];
  [v9 setInputFaceObservations:v8];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69845B8]);
    v11 = +[NUFactory sharedFactory];
    visionSession = [v11 visionSession];
    v13 = [v10 initWithCVPixelBuffer:buffer options:MEMORY[0x1E695E0F8] session:visionSession];

    v53 = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v15 = [v13 performRequests:v14 error:error];

    if (v15)
    {
      results = [v9 results];

      if (!results)
      {
        v36 = NUAssertLogger_18325();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"successful face landmark request has nil results"];
          *buf = 138543362;
          v55 = v37;
          _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = NUAssertLogger_18325();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        if (v38)
        {
          if (v40)
          {
            v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v44 = MEMORY[0x1E696AF00];
            v45 = v43;
            callStackSymbols3 = [v44 callStackSymbols];
            v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v55 = v43;
            v56 = 2114;
            v57 = v47;
            _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v40)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v55 = v42;
          _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUFaceDetectionJob detectFaceLandmarksInBuffer:withFaceRects:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUFaceDetectionRequest.m", 181, @"successful face landmark request has nil results", v48, v49, v50, v51, v52);
      }

      results2 = [v9 results];
    }

    else
    {
      results2 = 0;
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    *error = [NUError failureError:@"unable to create face landmark request" object:null];

    results2 = 0;
  }

  return results2;
}

- (id)detectFaceRectsInBuffer:(__CVBuffer *)buffer maxResultCount:(unint64_t)count error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v22 = NUAssertLogger_18325();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v57 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_18325();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v29;
        v58 = 2114;
        v59 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUFaceDetectionJob detectFaceRectsInBuffer:maxResultCount:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUFaceDetectionRequest.m", 140, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "error != NULL");
  }

  v8 = objc_alloc_init(MEMORY[0x1E69844D0]);
  [v8 setRevision:2];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69845B8]);
    v10 = +[NUFactory sharedFactory];
    visionSession = [v10 visionSession];
    v12 = [v9 initWithCVPixelBuffer:buffer options:MEMORY[0x1E695E0F8] session:visionSession];

    v55 = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v14 = [v12 performRequests:v13 error:error];

    if (v14)
    {
      results = [v8 results];

      if (!results)
      {
        v38 = NUAssertLogger_18325();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"successful face rect request has nil results"];
          *buf = 138543362;
          v57 = v39;
          _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = NUAssertLogger_18325();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        if (v40)
        {
          if (v42)
          {
            v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            v46 = MEMORY[0x1E696AF00];
            v47 = v45;
            callStackSymbols3 = [v46 callStackSymbols];
            v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v57 = v45;
            v58 = 2114;
            v59 = v49;
            _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v42)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v57 = v44;
          _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler("[NUFaceDetectionJob detectFaceRectsInBuffer:maxResultCount:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUFaceDetectionRequest.m", 155, @"successful face rect request has nil results", v50, v51, v52, v53, v54);
      }

      results2 = [v8 results];
      v17 = [results2 count];

      if (v17 < count)
      {
        count = v17;
      }

      results3 = [v8 results];
      v19 = [results3 subarrayWithRange:{0, count}];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    *error = [NUError failureError:@"unable to create face rect request" object:null];

    v19 = 0;
  }

  return v19;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(NUDigest);
  renderNode = [(NURenderJob *)self renderNode];
  [renderNode nu_updateDigest:v3];

  [(NUDigest *)v3 finalize];
  stringValue = [(NUDigest *)v3 stringValue];

  return stringValue;
}

- (id)scalePolicy
{
  faceDetectionRequest = [(NUFaceDetectionJob *)self faceDetectionRequest];
  scalePolicy = [faceDetectionRequest scalePolicy];

  return scalePolicy;
}

- (NUFaceDetectionJob)initWithRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18358);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18358);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18358);
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
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
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
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUFaceDetectionJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUFaceDetectionRequest.m", 101, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUFaceDetectionJob)initWithFaceDetectionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = NUFaceDetectionJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

@end