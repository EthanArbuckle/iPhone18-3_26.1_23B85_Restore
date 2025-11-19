@interface NUKeyFrameSourceNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3;
- (NUKeyFrameSourceNode)initWithSettings:(id)a3 orientation:(int64_t)a4;
- (NUKeyFrameSourceNode)initWithVideoSource:(id)a3 time:(id *)a4 settings:(id)a5 orientation:(int64_t)a6;
- (__CVBuffer)_pixelBufferWithAuxiliaryImageType:(int64_t)a3 error:(id *)a4;
- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4;
- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5;
- (opaqueCMSampleBuffer)_sampleBufferWithAuxiliaryImageType:(int64_t)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation NUKeyFrameSourceNode

- ($0AC6E346AE4835514AAA8AC86D8F4844)pixelSizeWithSourceOptions:(id)a3
{
  v4 = a3;
  v5 = [(NUSourceNode *)self auxiliaryImageType];
  videoSourceNode = self->_videoSourceNode;
  if (v5 < 2)
  {
    v10 = [(NUVideoSourceNode *)videoSourceNode pixelSizeWithSourceOptions:v4];
    v12 = v13;
  }

  else
  {
    v7 = [(NUVideoSourceNode *)videoSourceNode auxiliaryVideoTrackProperties];
    v8 = [(NUSourceNode *)self auxiliaryImageTypeString];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [v9 size];
    v12 = v11;
  }

  v14 = v10;
  v15 = v12;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (id)_evaluateImagePropertiesWithSourceOptions:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v23 = NUAssertLogger_530();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(frameTime.value) = 138543362;
      *(&frameTime.value + 4) = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &frameTime, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_530();
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
        LODWORD(frameTime.value) = 138543618;
        *(&frameTime.value + 4) = v30;
        LOWORD(frameTime.flags) = 2114;
        *(&frameTime.flags + 2) = v34;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &frameTime, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      LODWORD(frameTime.value) = 138543362;
      *(&frameTime.value + 4) = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &frameTime, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode _evaluateImagePropertiesWithSourceOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1381, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != NULL");
  }

  v7 = v6;
  v8 = [(NUSourceNode *)self originalNode];
  v9 = v8;
  if (!v8)
  {
    v18 = [(NUVideoSourceNode *)self->_videoSourceNode _evaluateImagePropertiesWithSourceOptions:v7 error:a4];
    goto LABEL_26;
  }

  v10 = [v8 imageProperties:a4];
  if (v10)
  {
    v11 = [[_NUImageProperties alloc] initWithProperties:v10];
    [(_NUImageProperties *)v11 resetAuxiliaryImageProperties];
    videoSourceNode = self->_videoSourceNode;
    v40 = 0;
    frameTime = self->_frameTime;
    v13 = [(NURenderNode *)videoSourceNode outputTimedMetadataSampleWithIdentifier:kMetadataIdentifier_SmartStyleInfo atTime:&frameTime error:&v40];
    v14 = v40;
    v15 = v14;
    if (v13)
    {
      frameTime = **&MEMORY[0x1E6960C70];
      v39 = 0;
      v16 = [(NUKeyFrameSourceNode *)self _sampleBufferWithAuxiliaryImageType:3 error:&v39];
      v17 = v39;

      if (v16)
      {
        CMSampleBufferGetPresentationTimeStamp(&frameTime, v16);
        CFRelease(v16);
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
        }

        v20 = _NURenderLogger;
        if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.value) = 138543362;
          *(&buf.value + 4) = v17;
          _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Failed to get style learn time: %{public}@", &buf, 0xCu);
        }
      }

      v21 = [v13 metadataGroup];
      buf = frameTime;
      v18 = [NUVideoUtilities semanticStylePropertiesFromMetadataGroup:v21 keyTime:&buf error:a4];

      if (!v18)
      {
        *a4 = [NUError errorWithCode:1 reason:@"Failed to get styles properties from video metadata" object:v13 underlyingError:v17];
LABEL_24:

        goto LABEL_25;
      }

      [(_NUImageProperties *)v11 setSemanticStyleProperties:v18];
    }

    else if (v14)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_417);
      }

      v19 = _NURenderLogger;
      if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
      {
        LODWORD(frameTime.value) = 138543362;
        *(&frameTime.value + 4) = v15;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Failed to get style metadata: %{public}@", &frameTime, 0xCu);
      }

      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v11;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_25:

LABEL_26:

  return v18;
}

- (opaqueCMSampleBuffer)_sampleBufferWithAuxiliaryImageType:(int64_t)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v22 = NUAssertLogger_530();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_530();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode _sampleBufferWithAuxiliaryImageType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1345, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  if (a3 <= 1)
  {
    v29 = NUAssertLogger_530();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "auxiliaryImageType != NUAuxiliaryImageTypeNone && auxiliaryImageType != NUAuxiliaryImageTypeUnknown"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_530();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode _sampleBufferWithAuxiliaryImageType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1346, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "auxiliaryImageType != NUAuxiliaryImageTypeNone && auxiliaryImageType != NUAuxiliaryImageTypeUnknown");
  }

  v7 = [(NUVideoSourceNode *)self->_videoSourceNode asset:a4];
  if (v7)
  {
    v8 = [(NUVideoSourceNode *)self->_videoSourceNode auxiliaryVideoTrackProperties];
    if (a3 > 0xB)
    {
      v9 = @"Invalid";
    }

    else
    {
      v9 = off_1E8109908[a3];
    }

    v11 = v9;
    v12 = [v8 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [MEMORY[0x1E69C0708] trackWithTrackID:objc_msgSend(v12 forAsset:{"trackID"), v7}];
      v14 = v13;
      if (v13)
      {
        *buf = *&self->_frameTime.value;
        *&buf[16] = self->_frameTime.epoch;
        v15 = [v13 makeSampleCursorWithPresentationTimeStamp:buf];
        v16 = [objc_alloc(MEMORY[0x1E6988138]) initWithAsset:v7 timebase:0];
        v17 = [objc_alloc(MEMORY[0x1E6988148]) initWithStartCursor:v15];
        [v17 setDirection:0];
        v54 = 0;
        v10 = [v16 createSampleBufferForRequest:v17 error:&v54];
        v18 = v54;
        if (!v10)
        {
          *a4 = [NUError errorWithCode:1 reason:@"Failed to read sample" object:v7 underlyingError:v18];
        }
      }

      else
      {
        [NUError missingError:@"No such track" object:v12];
        *a4 = v10 = 0;
      }
    }

    else
    {
      if (a3 > 0xB)
      {
        v19 = @"Invalid";
      }

      else
      {
        v19 = off_1E8109908[a3];
      }

      v20 = v19;
      *a4 = [NUError notFoundError:@"No auxiliary video properties" object:v20];

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_evaluateImageWithSourceOptions:(id)a3 subsampleFactor:(int64_t *)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a5)
  {
    v18 = NUAssertLogger_530();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_530();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1307, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  if (!a4)
  {
    v25 = NUAssertLogger_530();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "subsampleFactor != NULL"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_530();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode _evaluateImageWithSourceOptions:subsampleFactor:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1309, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "subsampleFactor != NULL");
  }

  v9 = v8;
  *a4 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__565;
  v57 = __Block_byref_object_dispose__566;
  v58 = 0;
  v10 = [(NUSourceNode *)self auxiliaryImageType];
  v11 = [v9 objectForKeyedSubscript:@"imageType"];
  v12 = [v11 isEqualToString:@"Disparity"];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__NUKeyFrameSourceNode__evaluateImageWithSourceOptions_subsampleFactor_error___block_invoke;
  block[3] = &unk_1E81092D0;
  if (v12)
  {
    v14 = 2;
  }

  else
  {
    v14 = v10;
  }

  v53 = v14;
  v54 = a5;
  v51 = v9;
  v52 = buf;
  block[4] = self;
  v15 = v9;
  dispatch_sync(queue, block);
  v16 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v16;
}

void __78__NUKeyFrameSourceNode__evaluateImageWithSourceOptions_subsampleFactor_error___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _pixelBufferWithAuxiliaryImageType:*(a1 + 56) error:*(a1 + 64)];
  if (v2)
  {
    v3 = v2;
    if ([*(a1 + 32) auxiliaryImageType] == 2 || objc_msgSend(*(a1 + 32), "auxiliaryImageType") == 11 || objc_msgSend(*(a1 + 32), "auxiliaryImageType") == 10 || objc_msgSend(*(a1 + 32), "auxiliaryImageType") == 9 || objc_msgSend(*(a1 + 32), "auxiliaryImageType") == 3 || objc_msgSend(*(a1 + 32), "auxiliaryImageType") == 4)
    {
      v13 = *MEMORY[0x1E695F9A8];
      v4 = [MEMORY[0x1E695DFB0] null];
      v14[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:v3 options:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 48) + 8) + 40);
    if (!v9)
    {
      **(a1 + 64) = [NUError errorWithCode:3 reason:@"Unable to produce CIImage from CVPixelBuffer" object:*(a1 + 32)];
      v9 = *(*(*(a1 + 48) + 8) + 40);
    }

    v10 = [*(a1 + 32) applySourceOptions:*(a1 + 40) image:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (__CVBuffer)_pixelBufferWithAuxiliaryImageType:(int64_t)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v31 = NUAssertLogger_530();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &range, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_530();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        LODWORD(range.start.value) = 138543618;
        *(&range.start.value + 4) = v38;
        LOWORD(range.start.flags) = 2114;
        *(&range.start.flags + 2) = v42;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &range, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      LODWORD(range.start.value) = 138543362;
      *(&range.start.value + 4) = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &range, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode _pixelBufferWithAuxiliaryImageType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1242, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  result = self->_pixelBuffer;
  if (!result)
  {
    result = [(NUVideoSourceNode *)self->_videoSourceNode asset:a4];
    if (result)
    {
      v8 = result;
      v9 = [NUVideoUtilities firstEnabledVideoTrackInAsset:result error:a4];
      if (!v9)
      {
        goto LABEL_23;
      }

      v10 = v9;
      memset(&v54, 0, sizeof(v54));
      [v9 timeRange];
      CMTimeRangeGetEnd(&lhs, &range);
      [NUVideoUtilities minimumFrameDurationForAssetTrack:v10];
      CMTimeSubtract(&v54, &lhs, &range.start);
      memset(&range, 0, 24);
      lhs = self->_frameTime;
      time2 = v54;
      CMTimeMinimum(&range.start, &lhs, &time2);
      v11 = v10;
      v12 = +[NUVideoUtilities defaultVideoSettingsForAVAssetReader];
      v13 = v11;
      if (a3 >= 2)
      {
        v14 = [(NUVideoSourceNode *)self->_videoSourceNode auxiliaryVideoTrackProperties];
        v15 = v12;
        if (a3 > 0xB)
        {
          v16 = @"Invalid";
        }

        else
        {
          v16 = off_1E8109908[a3];
        }

        v17 = v16;
        v18 = [v14 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v30 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
          *a4 = [NUError errorWithCode:3 reason:@"Failed to find auxiliary video properties" object:v30];

          goto LABEL_20;
        }

        v13 = [MEMORY[0x1E69C0708] trackWithTrackID:objc_msgSend(v18 forAsset:{"trackID"), v8}];

        v12 = v15;
      }

      v51 = 0;
      v19 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v8 error:&v51];
      v20 = v51;
      if (v19)
      {
        v47 = v12;
        v48 = v11;
        v50 = 0;
        v21 = [NUVideoUtilities readerOutputForAssetTrack:v13 outputSettings:v12 error:&v50];
        v22 = v50;

        if (v21)
        {
          v49 = 0;
          lhs = range.start;
          v23 = [NUVideoUtilities readVideoFrameAtTime:&lhs fromAsset:v8 reader:v19 readerOutput:v21 error:&v49];
          v24 = v49;

          self->_pixelBuffer = v23;
          if (v23)
          {
            IOSurface = CVPixelBufferGetIOSurface(v23);
            if (IOSurface)
            {
              v26 = IOSurface;
              IOSurfaceLock(IOSurface, 1u, 0);
              IOSurfaceUnlock(v26, 1u, 0);
            }

            return self->_pixelBuffer;
          }

          v29 = [NUError errorWithCode:1 reason:@"Failed to read video frame" object:v8 underlyingError:v24];
          v22 = v24;
        }

        else
        {
          v29 = [NUError errorWithCode:1 reason:@"Failed to create asset reader output" object:v8 underlyingError:v22];
        }

        *a4 = v29;

LABEL_23:
        return 0;
      }

      v27 = [NUError errorWithCode:1 reason:@"Failed to create asset reader" object:v8 underlyingError:v20];
      v28 = v27;

      *a4 = v27;
LABEL_20:

      goto LABEL_23;
    }
  }

  return result;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = NUKeyFrameSourceNode;
  [(NUKeyFrameSourceNode *)&v3 dealloc];
}

- (NUKeyFrameSourceNode)initWithSettings:(id)a3 orientation:(int64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
  }

  v6 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [v7 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v10, v11];
    *buf = 138543362;
    v33 = v12;
    _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v13 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v13 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
      }

      goto LABEL_8;
    }

    if (v13 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_415);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AF00];
      v16 = v14;
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v18;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = MEMORY[0x1E696AF00];
    v22 = specific;
    v23 = v19;
    v24 = [v21 callStackSymbols];
    v25 = [v24 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v33 = specific;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUKeyFrameSourceNode initWithSettings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1232, @"Initializer not available: [%@ %@], use designated initializer instead.", v28, v29, v30, v31, v27);
}

- (NUKeyFrameSourceNode)initWithVideoSource:(id)a3 time:(id *)a4 settings:(id)a5 orientation:(int64_t)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    v20 = NUAssertLogger_530();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "video != nil"];
      *buf = 138543362;
      v54 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_530();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v34;
        v55 = 2114;
        v56 = v38;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode initWithVideoSource:time:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1218, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "video != nil");
  }

  if ((a4->var2 & 1) == 0)
  {
    v27 = NUAssertLogger_530();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(time)"];
      *buf = 138543362;
      v54 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_530();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v43;
        v55 = 2114;
        v56 = v47;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUKeyFrameSourceNode initWithVideoSource:time:settings:orientation:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode+Video.m", 1219, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "CMTIME_IS_VALID(time)");
  }

  v12 = v11;
  v52.receiver = self;
  v52.super_class = NUKeyFrameSourceNode;
  v13 = [(NUVideoFrameSourceNode *)&v52 initWithSettings:v11 orientation:a6];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("NUKeyFrameSourceNode", v14);
  queue = v13->_queue;
  v13->_queue = v15;

  videoSourceNode = v13->_videoSourceNode;
  v13->_videoSourceNode = v10;

  var3 = a4->var3;
  *&v13->_frameTime.value = *&a4->var0;
  v13->_frameTime.epoch = var3;

  return v13;
}

@end