@interface NUVideoPlaybackFrameJob
- (BOOL)render:(id *)a3;
- (BOOL)wantsRenderNodeCached;
- (NUVideoPlaybackFrameJob)initWithRequest:(id)a3;
- (NUVideoPlaybackFrameJob)initWithVideoFrameRequest:(id)a3;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3;
- (id)renderer:(id *)a3;
- (id)result;
- (id)scalePolicy;
@end

@implementation NUVideoPlaybackFrameJob

- (id)result
{
  v3 = objc_alloc_init(_NUVideoPlaybackFrameRequestResponse);
  v4 = [(NUVideoPlaybackFrameJob *)self frameRequest];
  -[_NUVideoPlaybackFrameRequestResponse setFrame:](v3, "setFrame:", [v4 destinationBuffer]);

  return v3;
}

- (BOOL)render:(id *)a3
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v46 = NUAssertLogger_29707();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_29707();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v50)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        LODWORD(buf.origin.x) = 138543618;
        *(&buf.origin.x + 4) = v53;
        WORD2(buf.origin.y) = 2114;
        *(&buf.origin.y + 6) = v57;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      LODWORD(buf.origin.x) = 138543362;
      *(&buf.origin.x + 4) = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoPlaybackFrameJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoPlaybackFrameRequest.m", 137, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "error != NULL");
  }

  v5 = [(NUVideoPlaybackFrameJob *)self renderer:?];
  if (v5)
  {
    v6 = [(NUVideoPlaybackFrameJob *)self frameRequest];
    v7 = [v6 colorSpace];
    v8 = [v6 destinationBuffer];
    if (!v8)
    {
      [NUError errorWithCode:2 reason:@"Non-existent destination buffer on request" object:v6];
      *a3 = v36 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v9 = v8;
    v10 = [(NURenderJob *)self prepareNode];
    v11 = [v10 videoProperties:a3];

    if (!v11)
    {
      v37 = [(NURenderJob *)self prepareNode];
      *a3 = [NUError errorWithCode:1 reason:@"Failed to get video properties" object:v37 underlyingError:*a3];

      v36 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v12 = [(NURenderJob *)self prepareNode];
    v13 = [v12 outputImageGeometry:a3];

    if (!v13)
    {
      v38 = [(NURenderJob *)self prepareNode];
      *a3 = [NUError errorWithCode:1 reason:@"Failed to get output image geometry" object:v38 underlyingError:*a3];

      v36 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v14 = [(NURenderJob *)self renderScale];
    v16 = v15;
    v17 = [v13 renderScale];
    v19 = NUScaleDivide(v14, v16, v17, v18);
    v21 = v20;
    memset(v65, 0, sizeof(v65));
    [v11 cleanAperture];
    NUPixelRectScaleRational(&buf, v19, v21, 1, v65);
    NUCVImageBufferSetCleanRect(v9, v65[0].i64);
    [v7 applyAttachmentsToCVPixelBuffer:v9];
    v22 = [(NURenderJob *)self outputImage];
    [v22 extent];
    buf.origin.x = v23;
    buf.origin.y = v24;
    buf.size.width = v25;
    buf.size.height = v26;
    NU::RectT<long>::RectT(v66, &buf, 0);
    v64.origin = v66[0];
    v64.size = v66[1];

    Width = CVPixelBufferGetWidth(v9);
    Height = CVPixelBufferGetHeight(v9);
    if (*&v64.size != __PAIR128__(Height, Width))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Obsolete video frame request - bad bounds. buffer(%ld, %ld) CIExtent(%ld, %ld) buffer:%@", Width, Height, *&v64.size, v9];
      [NUError invalidError:v29 object:v6];
      *a3 = v36 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v62 = v11;
    v63 = v13;
    v29 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:v9];
    v30 = MEMORY[0x1E696AEC0];
    v31 = [(NURenderJob *)self request];
    v32 = [v31 name];
    v33 = [v30 stringWithFormat:@"%@-j%lld", v32, -[NURenderJob jobNumber](self, "jobNumber")];
    [v29 setLabel:v33];

    if ([NUColorSpace shouldTagAsDisplayP3:v9])
    {
      v34 = +[NUColorSpace displayP3ColorSpace];
      [v29 setColorSpace:{objc_msgSend(v34, "CGColorSpace")}];
    }

    v13 = v63;
    if (v7)
    {
      [v29 setColorSpace:{objc_msgSend(v7, "CGColorSpace")}];
      v35 = [v7 isHDR] ^ 1;
    }

    else
    {
      if (!CGColorSpaceUsesITUR_2100TF([v29 colorSpace]))
      {
        goto LABEL_19;
      }

      v35 = 0;
    }

    [v29 setClamped:v35];
LABEL_19:
    v39 = [(NURenderJob *)self outputImage];
    buf = v64;
    v40 = [v5 renderImage:v39 rect:&buf toDestination:v29 atPoint:0 error:{0, a3}];

    if (v40)
    {
      v41 = [v40 waitUntilCompletedAndReturnError:a3];

      if (v41)
      {
        v36 = 1;
LABEL_25:

        v11 = v62;
        goto LABEL_26;
      }

      v42 = @"Failed to render playback frame. Error completing task.";
    }

    else
    {
      v42 = @"Failed to render playback frame. Task creation failed";
    }

    v43 = [(NURenderJob *)self request];
    v44 = [v43 copy];
    *a3 = [NUError errorWithCode:1 reason:v42 object:v44 underlyingError:*a3];

    v36 = 0;
    v13 = v63;
    goto LABEL_25;
  }

  v36 = 0;
LABEL_30:

  return v36;
}

- (id)renderer:(id *)a3
{
  v5 = [(NURenderJob *)self priority];
  v6 = [v5 isLow];

  v7 = [(NURenderJob *)self device];
  v8 = v7;
  if (v6)
  {
    [v7 lowPriorityRendererWithoutIntermediateCaching:a3];
  }

  else
  {
    [v7 rendererWithoutIntermediateCaching:a3];
  }
  v9 = ;

  return v9;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = NUVideoPlaybackFrameJob;
  v5 = [(NURenderJob *)&v20 newRenderPipelineStateForEvaluationMode:?];
  if (a3 == 3)
  {
    v6 = [(NUVideoPlaybackFrameJob *)self frameRequest];
    v7 = v6;
    if (v6)
    {
      [v6 evaluationTime];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    v16 = v18;
    v17 = v19;
    [v5 setTime:&v16];

    v8 = [(NUVideoPlaybackFrameJob *)self frameRequest];
    v9 = [v8 videoFrames];
    [v5 setVideoFrames:v9];

    v10 = [(NUVideoPlaybackFrameJob *)self frameRequest];
    v11 = [v10 videoMetadataSamples];
    [v5 setVideoMetadataSamples:v11];

    v12 = [(NUVideoPlaybackFrameJob *)self frameRequest];
    v13 = [v12 videoSampleSlices];
    [v5 setVideoSampleSlices:v13];

    v14 = [(NUVideoPlaybackFrameJob *)self frameRequest];
    [v5 setPlaybackDirection:{objc_msgSend(v14, "playbackDirection")}];
  }

  return v5;
}

- (BOOL)wantsRenderNodeCached
{
  v2 = [(NUVideoPlaybackFrameJob *)self frameRequest];
  v3 = [v2 videoSampleSlices];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)scalePolicy
{
  v3 = [NUFixedScalePolicy alloc];
  v4 = [(NURenderJob *)self renderScale];
  v6 = [(NUFixedScalePolicy *)v3 initWithScale:v4, v5];

  return v6;
}

- (NUVideoPlaybackFrameJob)initWithVideoFrameRequest:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = NUVideoPlaybackFrameJob;
  v3 = a3;
  v4 = [(NURenderJob *)&v32 initWithRequest:v3];
  v5 = [v3 composition];
  [(NURenderJob *)v4 setComposition:v5];

  v6 = [v3 renderScale];
  [(NURenderJob *)v4 setRenderScale:v6, v7];
  v8 = [v3 videoRenderPrepareNode];

  [(NURenderJob *)v4 setPrepareNode:v8];
  v9 = [(NURenderJob *)v4 prepareNode];
  if (!v9)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
    }

    v10 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = [v11 stringWithFormat:@"Expected the PlaybackFrameRequest to have a prepareNode", v32.receiver, v32.super_class];
      *buf = 138543362;
      v34 = v13;
      _os_log_impl(&dword_1C0184000, v12, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v14 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v14 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
        }

        goto LABEL_9;
      }

      if (v14 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_9:
      v15 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = specific;
        v23 = v15;
        v24 = [v21 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = specific;
        v35 = 2114;
        v36 = v25;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_15:
      _NUAssertContinueHandler("[NUVideoPlaybackFrameJob initWithVideoFrameRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoPlaybackFrameRequest.m", 80, @"Expected the PlaybackFrameRequest to have a prepareNode", v16, v17, v18, v19, v32.receiver);
      goto LABEL_16;
    }

    v26 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v28 = MEMORY[0x1E696AF00];
      v29 = v26;
      v30 = [v28 callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v31;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v4;
}

- (NUVideoPlaybackFrameJob)initWithRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
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
  _NUAssertFailHandler("[NUVideoPlaybackFrameJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoPlaybackFrameRequest.m", 68, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end