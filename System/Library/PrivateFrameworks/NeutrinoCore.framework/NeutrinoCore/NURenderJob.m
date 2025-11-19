@interface NURenderJob
+ (void)flushCache;
- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)renderScale;
- ($EB925890EBEBD6850280D1FB85A9BD43)_atomicCancel;
- (BOOL)_cancelCoalescedJob;
- (BOOL)_checkForMemoizedResult;
- (BOOL)_shouldCancelCoalescedJob;
- (BOOL)_shouldWaitForDependentJobs;
- (BOOL)cancelCoalescedJob;
- (BOOL)complete:(id *)a3;
- (BOOL)failed;
- (BOOL)isCanceled;
- (BOOL)isFinished;
- (BOOL)prepare:(id *)a3;
- (BOOL)render:(id *)a3;
- (BOOL)renderVideoFrames:(id)a3 videoMetadataSamples:(id)a4 videoSampleSlices:(id)a5 intoPixelBuffer:(__CVBuffer *)a6 time:(id *)a7 colorSpace:(id)a8 playbackDirection:(int64_t)a9 error:(id *)a10;
- (BOOL)requiresVideoComposition;
- (BOOL)runStage:(int64_t)a3 error:(id *)a4;
- (BOOL)shouldWriteCanceledJob;
- (BOOL)shouldWriteTombstone;
- (BOOL)succeeded;
- (NSError)error;
- (NSMutableString)additionalDebugInfo;
- (NURenderJob)init;
- (NURenderJob)initWithRequest:(id)a3;
- (NUScalePolicy)scalePolicy;
- (id)_prepareNodeFromMedia:(id)a3;
- (id)debugFilePath;
- (id)description;
- (id)evaluateComposition:(id)a3 pipeline:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)evaluateOutputGeometry:(id *)a3;
- (id)evaluateRenderDependencies:(id *)a3;
- (id)generateVideoComposition:(id *)a3;
- (id)memoizationCacheKey;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3;
- (id)pipelineForComposition:(id)a3 error:(id *)a4;
- (id)prepareNodeWithPipelineState:(id)a3 error:(id *)a4;
- (id)renderImage:(id)a3 into:(id)a4 colorSpace:(id)a5 roi:(id)a6 imageSize:(id)a7 alpha:(const unint64_t *)a8 error:(id *)a9;
- (id)renderNodeWithPipelineState:(id)a3 error:(id *)a4;
- (id)renderer:(id *)a3;
- (id)result;
- (id)validateComposition:(id *)a3;
- (int64_t)_nextStageForStage:(int64_t)a3;
- (int64_t)currentStage;
- (int64_t)resolvedSampleMode:(int64_t)a3;
- (int64_t)willRun;
- (void)_cancel;
- (void)_didPrepare;
- (void)_emitSignpostEventType:(unsigned __int8)a3 forStage:(int64_t)a4 duration:(double)a5;
- (void)_finish;
- (void)_memoizeResult:(id)a3;
- (void)_notifyCanceled:(int64_t)a3;
- (void)_notifyStageTransition:(int64_t)a3;
- (void)_reply:(id)a3;
- (void)_run:(int64_t)a3;
- (void)_setCurrentStage:(int64_t)a3;
- (void)abortStage:(int64_t)a3;
- (void)cancel;
- (void)didRun;
- (void)fail:(id)a3;
- (void)finalize:(BOOL)a3;
- (void)finish;
- (void)pause;
- (void)renderJobDebugCanceled;
- (void)renderJobDebugInit;
- (void)renderJobDebugResponded;
- (void)reply:(id)a3;
- (void)respond;
- (void)resume;
- (void)run:(int64_t)a3;
- (void)runSynchronous;
- (void)runToPrepareSynchronous;
- (void)writeRenderDebugFileToDisk;
- (void)writeRenderJobDebugTombstone;
@end

@implementation NURenderJob

- ($0AC6E346AE4835514AAA8AC86D8F4844)renderScale
{
  denominator = self->_renderScale.denominator;
  numerator = self->_renderScale.numerator;
  result.var1 = denominator;
  result.var0 = numerator;
  return result;
}

- (void)_notifyCanceled:(int64_t)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__NURenderJob__notifyCanceled___block_invoke;
  v4[3] = &unk_1E810B0D0;
  v4[4] = self;
  v4[5] = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:-2 withBlock:v4];
}

- (void)_notifyStageTransition:(int64_t)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__NURenderJob__notifyStageTransition___block_invoke;
  v4[3] = &unk_1E810B0D0;
  v4[4] = self;
  v4[5] = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:-1 withBlock:v4];
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24318;
  v10 = __Block_byref_object_dispose__24319;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__NURenderJob_error__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)failed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__NURenderJob_failed__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)fail:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [(NURenderJob *)self request];
    v6 = [v5 copy];
    v4 = [NUError unknownError:@"unknown error" object:v6];
  }

  v7 = [v4 domain];
  if ([v7 isEqualToString:@"NUError"])
  {
    v8 = [v4 code];

    if (v8 == 10)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
      }

      v9 = _NUScheduleLogger;
      if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_debug_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEBUG, "Rendering was canceled: %@", buf, 0xCu);
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v10 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Rendering failure: %@", buf, 0xCu);
  }

LABEL_14:
  stateQueue = self->_stateQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __20__NURenderJob_fail___block_invoke;
  v13[3] = &unk_1E810B958;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  dispatch_sync(stateQueue, v13);
}

- (BOOL)complete:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v7];
    *buf = 138543362;
    v29 = v8;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v9 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v9 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }

      goto LABEL_8;
    }

    if (v9 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v10 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AF00];
      v12 = v10;
      v13 = [v11 callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v14;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v15 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = MEMORY[0x1E696AF00];
    v18 = specific;
    v19 = v15;
    v20 = [v17 callStackSymbols];
    v21 = [v20 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v29 = specific;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  _NUAssertFailHandler("[NURenderJob complete:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1369, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v24, v25, v26, v27, v23);
}

- (BOOL)render:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v7];
    *buf = 138543362;
    v29 = v8;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v9 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v9 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }

      goto LABEL_8;
    }

    if (v9 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v10 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AF00];
      v12 = v10;
      v13 = [v11 callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v14;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v15 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = MEMORY[0x1E696AF00];
    v18 = specific;
    v19 = v15;
    v20 = [v17 callStackSymbols];
    v21 = [v20 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v29 = specific;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  _NUAssertFailHandler("[NURenderJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1364, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v24, v25, v26, v27, v23);
}

- (id)generateVideoComposition:(id *)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = [(NURenderJob *)self renderNode];

  if (!v5)
  {
    v40 = NUAssertLogger_24345();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing render node"];
      *buf = 138543362;
      v75 = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_24345();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v44)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v54;
        v76 = 2114;
        v77 = v58;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob generateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1340, @"Missing render node", v59, v60, v61, v62, v72);
  }

  v6 = [(NURenderJob *)self renderNode];
  v7 = [v6 outputVideoComposition:a3];

  v8 = [(NURenderJob *)self outputGeometry];

  if (!v8)
  {
    v47 = NUAssertLogger_24345();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output geometry"];
      *buf = 138543362;
      v75 = v48;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_24345();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        v66 = [v64 callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v63;
        v76 = 2114;
        v77 = v67;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob generateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1346, @"Missing output geometry", v68, v69, v70, v71, v72);
  }

  v9 = [v7 mutableCopy];
  v10 = [(NURenderJob *)self outputGeometry];
  v11 = [v10 scaledSize];
  v13 = v12;

  if ((v11 | v13))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }

    v14 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = v14;
      v17 = [(NURenderJob *)self outputGeometry];
      v18 = [(NURenderJob *)self prepareNode];
      v19 = [v15 stringWithFormat:@"Expected even dimensions for the video composition. Geometry: %@ PrepareNode: %@", v17, v18];
      *buf = 138543362;
      v75 = v19;
      _os_log_impl(&dword_1C0184000, v16, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v20 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v20 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
        }

        goto LABEL_11;
      }

      if (v20 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_11:
      v21 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = v21;
        v26 = [v23 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v22;
        v76 = 2114;
        v77 = v27;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_17:
      v29 = [(NURenderJob *)self outputGeometry];
      v73 = [(NURenderJob *)self prepareNode];
      _NUAssertContinueHandler("[NURenderJob generateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1353, @"Expected even dimensions for the video composition. Geometry: %@ PrepareNode: %@", v30, v31, v32, v33, v29);

      v11 = NUEvenPixelSize(v11, v13);
      v13 = v34;
      goto LABEL_18;
    }

    v28 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v36 = MEMORY[0x1E696AF00];
      v37 = v28;
      v38 = [v36 callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v39;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  [v9 setRenderSize:{v11, v13}];

  return v9;
}

- (BOOL)requiresVideoComposition
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(NURenderJob *)self prepareNode];

  if (!v3)
  {
    v7 = NUAssertLogger_24345();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
      *v23 = 138543362;
      *&v23[4] = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v23, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_24345();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *v23 = 138543618;
        *&v23[4] = v14;
        v24 = 2114;
        v25 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v23, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *v23 = 138543362;
      *&v23[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v23, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob requiresVideoComposition]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1329, @"Missing prepare node", v19, v20, v21, v22, *v23);
  }

  v4 = [(NURenderJob *)self prepareNode];
  v5 = [v4 requiresVideoComposition];

  return v5;
}

- (id)renderNodeWithPipelineState:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v12 = NUAssertLogger_24345();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineState != nil"];
      *buf = 138543362;
      v62 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_24345();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v33;
        v63 = 2114;
        v64 = v37;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob renderNodeWithPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1316, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "pipelineState != nil");
  }

  if (!a4)
  {
    v19 = NUAssertLogger_24345();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v62 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_24345();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v42;
        v63 = 2114;
        v64 = v46;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob renderNodeWithPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1317, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "error != NULL");
  }

  v7 = v6;
  v8 = [(NURenderJob *)self prepareNode];

  if (!v8)
  {
    v26 = NUAssertLogger_24345();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
      *buf = 138543362;
      v62 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_24345();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v51;
        v63 = 2114;
        v64 = v55;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob renderNodeWithPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1320, @"Missing prepare node", v56, v57, v58, v59, v60);
  }

  v9 = [(NURenderJob *)self prepareNode];
  v10 = [v9 nodeByReplayingAgainstCache:v7 error:a4];

  return v10;
}

- (id)evaluateOutputGeometry:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(NURenderJob *)self prepareNode];

  if (!v5)
  {
    v9 = NUAssertLogger_24345();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
      *v25 = 138543362;
      *&v25[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v25, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_24345();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *v25 = 138543618;
        *&v25[4] = v16;
        v26 = 2114;
        v27 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v25, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *v25 = 138543362;
      *&v25[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v25, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob evaluateOutputGeometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1307, @"Missing prepare node", v21, v22, v23, v24, *v25);
  }

  v6 = [(NURenderJob *)self prepareNode];
  v7 = [v6 outputImageGeometry:a3];

  return v7;
}

- (id)evaluateComposition:(id)a3 pipeline:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(NURenderJob *)self extentPolicy];
  v14 = [v11 processedRenderNodeForComposition:v12 pipelineState:v10 extentPolicy:v13 error:a6];

  return v14;
}

- (id)prepareNodeWithPipelineState:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v14 = NUAssertLogger_24345();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineState != nil"];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_24345();
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

    _NUAssertFailHandler("[NURenderJob prepareNodeWithPipelineState:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1270, @"Invalid parameter not satisfying: %s", v26, v27, v28, v29, "pipelineState != nil");
  }

  v7 = v6;
  v8 = [(NURenderJob *)self composition];
  if (v8)
  {
LABEL_5:
    v10 = [(NURenderJob *)self renderPipeline];
    if (!v10)
    {
      v11 = [(NURenderJob *)self pipelineForComposition:v8 error:a4];
      if (!v11)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v10 = v11;
      [(NURenderJob *)self setRenderPipeline:v11];
    }

    v12 = [(NURenderJob *)self evaluateComposition:v8 pipeline:v10 pipelineState:v7 error:a4];

LABEL_9:
    goto LABEL_10;
  }

  v9 = [(NURenderJob *)self validateComposition:a4];
  if (v9)
  {
    v8 = v9;
    [(NURenderJob *)self setComposition:v9];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)pipelineForComposition:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a4)
  {
    v11 = NUAssertLogger_24345();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v28 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_24345();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob pipelineForComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1256, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != nil");
  }

  v6 = v5;
  v7 = [v5 identifier];
  v8 = +[NURenderPipelineRegistry sharedRegistry];
  v9 = [v8 renderPipelineForIdentifier:v7];

  if (!v9)
  {
    *a4 = [NUError missingError:@"No NURenderPipeline registered" object:v7];
  }

  return v9;
}

- (id)validateComposition:(id *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = NUAssertLogger_24345();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_24345();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob validateComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1240, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != nil");
  }

  v3 = a3;
  v4 = [(NURenderJob *)self request];
  v5 = [v4 internalComposition];

  v6 = [v5 schema];
  LODWORD(v3) = [v6 validateComposition:v5 error:v3];

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)evaluateRenderDependencies:(id *)a3
{
  v5 = [(NURenderJob *)self renderNode];
  v6 = [(NURenderJob *)self request];
  v7 = [v5 evaluateRenderDependenciesWithRequest:v6 error:a3];

  v8 = [v7 allValues];

  return v8;
}

- (BOOL)prepare:(id *)a3
{
  v154 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v115 = NUAssertLogger_24345();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v151 = v116;
      _os_log_error_impl(&dword_1C0184000, v115, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v118 = NUAssertLogger_24345();
    v119 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v119)
      {
        v122 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v123 = MEMORY[0x1E696AF00];
        v124 = v122;
        v125 = [v123 callStackSymbols];
        v126 = [v125 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v151 = v122;
        v152 = 2114;
        v153 = v126;
        _os_log_error_impl(&dword_1C0184000, v118, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v119)
    {
      v120 = [MEMORY[0x1E696AF00] callStackSymbols];
      v121 = [v120 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v151 = v121;
      _os_log_error_impl(&dword_1C0184000, v118, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1052, @"Invalid parameter not satisfying: %s", v127, v128, v129, v130, "error != nil");
  }

  v3 = a3;
  if ([(NURenderJob *)self wantsOutputImage]|| [(NURenderJob *)self wantsOutputVideoFrame])
  {
    v5 = [(NURenderJob *)self outputImage];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if ([(NURenderJob *)self wantsOutputVideo])
  {
    v7 = [(NURenderJob *)self outputVideo];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if ([(NURenderJob *)self wantsOutputGeometry]|| v8)
  {
    v10 = [(NURenderJob *)self outputGeometry];
    v9 = v10 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v6 || v8)
  {
    v11 = [(NURenderJob *)self renderNode];
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v9 || v6 || v8)
  {
    v14 = [(NURenderJob *)self renderScale]< 1 || v13 < 1;
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NURenderJob *)self prepareNode];

  if (v16)
  {
    if (!v15)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v37 = [(NURenderJob *)self newRenderPipelineStateForEvaluationMode:0];
    v38 = [(NURenderJob *)self prepareNodeWithPipelineState:v37 error:v3];
    [(NURenderJob *)self setPrepareNode:v38];

    v39 = [(NURenderJob *)self prepareNode];

    if (!v39)
    {
      goto LABEL_44;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v40 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v96 = v40;
      v97 = [(NURenderJob *)self prepareNode];
      *buf = 138412290;
      v151 = v97;
      _os_log_debug_impl(&dword_1C0184000, v96, OS_LOG_TYPE_DEBUG, "Prepare node:\n%@", buf, 0xCu);
    }

    v41 = [(NURenderJob *)self prepareNode];
    v42 = [v41 outputGeometrySpaceMap:v3];

    if (!v42)
    {
LABEL_44:

      return 0;
    }

    v43 = [v37 rootGroup];
    [v43 finalizeMap:v42];
    v148 = v37;
    v44 = v9;
    v45 = v8;
    v46 = v6;
    v47 = v3;
    v49 = v48 = v12;
    [(NURenderJob *)self setResolvedSpaceMap:v49];

    v12 = v48;
    v3 = v47;
    v6 = v46;
    v8 = v45;
    v9 = v44;

    if (!v15)
    {
      goto LABEL_54;
    }
  }

  v17 = [(NURenderJob *)self evaluateOutputGeometry:v3];
  [(NURenderJob *)self setFullSizeGeometry:v17];

  v18 = [(NURenderJob *)self fullSizeGeometry];

  if (!v18)
  {
    v50 = [(NURenderJob *)self request];
    v51 = [v50 copy];
    *v3 = [NUError failureError:@"Failure evaluating output geometry" object:v51];

LABEL_49:
    return 0;
  }

  v19 = [(NURenderJob *)self fullSizeGeometry];
  v20 = [v19 size];
  v22 = v21;

  if (!v20 || !v22)
  {
    v50 = [(NURenderJob *)self fullSizeGeometry];
    v52 = @"Output geometry contains an empty size";
LABEL_48:
    *v3 = [NUError invalidError:v52 object:v50];
    goto LABEL_49;
  }

  v23 = v12;
  v24 = [(NURenderJob *)self scalePolicy];
  v25 = [(NURenderJob *)self fullSizeGeometry];
  v26 = [v25 size];
  v28 = [v24 scaleForImageSize:{v26, v27}];
  v30 = v29;

  if (v28 < 1 || v30 < 1)
  {
    v50 = [(NURenderJob *)self scalePolicy];
    v52 = @"Scale policy produced invalid scale";
    goto LABEL_48;
  }

  if (NUScaleCompare(v28, v30, NUScaleOne, *(&NUScaleOne + 1)) > 0)
  {
    v30 = *(&NUScaleOne + 1);
    v28 = NUScaleOne;
  }

  if ([(NURenderJob *)self wantsRenderScaleClampedToNativeScale])
  {
    v31 = [(NURenderJob *)self fullSizeGeometry];
    v32 = [v31 renderScale];
    v34 = NUScaleCompare(v28, v30, v32, v33);

    v14 = v34 < 1;
    v12 = v23;
    if (!v14)
    {
      v35 = [(NURenderJob *)self fullSizeGeometry];
      v28 = [v35 renderScale];
      v30 = v36;
    }
  }

  else
  {
    v12 = v23;
  }

  [(NURenderJob *)self setRenderScale:v28, v30];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v53 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v104 = v53;
    v105 = [(NURenderJob *)self renderScale];
    [(NURenderJob *)self renderScale];
    *buf = 134218240;
    v151 = v105;
    v152 = 2048;
    v153 = v106;
    _os_log_debug_impl(&dword_1C0184000, v104, OS_LOG_TYPE_DEBUG, "Render scale: %ld:%ld", buf, 0x16u);

    if (!v9)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_54:
  if (!v9)
  {
    goto LABEL_61;
  }

LABEL_55:
  v54 = [(NURenderJob *)self evaluateOutputGeometry:v3];
  if (!v54)
  {
    return 0;
  }

  v55 = v54;
  v149 = v12;
  v56 = [(NURenderJob *)self renderScale];
  v58 = v57;
  v59 = [NUImageGeometry alloc];
  [v55 extent];
  v60 = [v55 orientation];
  v61 = [(NURenderJob *)self resolvedSpaceMap];
  v62 = -[NUImageGeometry initWithExtent:renderScale:orientation:spaceMap:roundingPolicy:](v59, "initWithExtent:renderScale:orientation:spaceMap:roundingPolicy:", buf, v56, v58, v60, v61, [v55 roundingPolicy]);
  [(NURenderJob *)self setOutputGeometry:v62];

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v63 = _NUScheduleLogger;
  v12 = v149;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v98 = v63;
    v99 = [(NURenderJob *)self outputGeometry];
    *buf = 138412290;
    v151 = v99;
    _os_log_debug_impl(&dword_1C0184000, v98, OS_LOG_TYPE_DEBUG, "Output geometry: %@", buf, 0xCu);
  }

LABEL_61:
  if (!v12)
  {
LABEL_84:
    v74 = [(NURenderJob *)self dependentJobs];

    if (v74)
    {
      [(NURenderJob *)self setDependentJobs:0];
    }

    if (!v6)
    {
      goto LABEL_91;
    }

    v75 = [(NURenderJob *)self renderNode];
    v76 = [v75 outputImage:v3];
    [(NURenderJob *)self setOutputImage:v76];

    v77 = [(NURenderJob *)self outputImage];

    if (!v77)
    {
      return 0;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v78 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v102 = v78;
      v103 = [(NURenderJob *)self outputImage];
      *buf = 138412290;
      v151 = v103;
      _os_log_debug_impl(&dword_1C0184000, v102, OS_LOG_TYPE_DEBUG, "Output image: %@", buf, 0xCu);

      if (v8)
      {
        goto LABEL_92;
      }
    }

    else
    {
LABEL_91:
      if (v8)
      {
LABEL_92:
        v79 = [(NURenderJob *)self renderNode];
        v80 = [v79 outputVideo:v3];
        [(NURenderJob *)self setOutputVideo:v80];

        v81 = [(NURenderJob *)self outputVideo];

        if (v81)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
          }

          v82 = _NUScheduleLogger;
          if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
          {
            v107 = v82;
            v108 = [(NURenderJob *)self outputVideo];
            *buf = 138412290;
            v151 = v108;
            _os_log_debug_impl(&dword_1C0184000, v107, OS_LOG_TYPE_DEBUG, "Output video: %@", buf, 0xCu);
          }

          if (![(NURenderJob *)self requiresVideoComposition]|| ([(NURenderJob *)self generateVideoComposition:v3], v83 = objc_claimAutoreleasedReturnValue(), [(NURenderJob *)self setOutputVideoComposition:v83], v83, [(NURenderJob *)self outputVideoComposition], v84 = objc_claimAutoreleasedReturnValue(), v84, v84))
          {
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
            }

            v85 = _NUScheduleLogger;
            if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
            {
              v111 = v85;
              v112 = [(NURenderJob *)self outputVideoComposition];
              *buf = 138412290;
              v151 = v112;
              _os_log_debug_impl(&dword_1C0184000, v111, OS_LOG_TYPE_DEBUG, "Output video composition: %@", buf, 0xCu);
            }

            v86 = [(NURenderJob *)self prepareNode];
            v87 = [v86 requiresAudioMix];

            if (!v87)
            {
              goto LABEL_107;
            }

            v88 = [(NURenderJob *)self renderNode];
            v89 = [v88 shouldInvalidateCachedAudioMix];

            if (v89)
            {
              v90 = [(NURenderJob *)self renderNode];
              [v90 invalidateCachedAudioMix];
            }

            v91 = [(NURenderJob *)self renderNode];
            v92 = [v91 outputAudioMix:v3];
            [(NURenderJob *)self setOutputAudioMix:v92];

            v93 = [(NURenderJob *)self outputAudioMix];

            if (v93)
            {
LABEL_107:
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
              }

              v94 = _NUScheduleLogger;
              if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
              {
                v113 = v94;
                v114 = [(NURenderJob *)self outputAudioMix];
                *buf = 138412290;
                v151 = v114;
                _os_log_debug_impl(&dword_1C0184000, v113, OS_LOG_TYPE_DEBUG, "Output audio mix: %@", buf, 0xCu);
              }

              goto LABEL_111;
            }
          }
        }

        return 0;
      }
    }

LABEL_111:
    [(NURenderJob *)self _checkForMemoizedResult];
    return 1;
  }

  if (v8)
  {
    v64 = 2;
  }

  else if ([(NURenderJob *)self wantsOutputImage])
  {
    v64 = 1;
  }

  else
  {
    if (![(NURenderJob *)self wantsOutputVideoFrame])
    {
      v131 = NUAssertLogger_24345();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v132 = [MEMORY[0x1E696AEC0] stringWithFormat:@"needsRenderNode but unable to compute renderMode"];
        *buf = 138543362;
        v151 = v132;
        _os_log_error_impl(&dword_1C0184000, v131, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v133 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v134 = NUAssertLogger_24345();
      v135 = os_log_type_enabled(v134, OS_LOG_TYPE_ERROR);
      if (v133)
      {
        if (v135)
        {
          v138 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v139 = MEMORY[0x1E696AF00];
          v140 = v138;
          v141 = [v139 callStackSymbols];
          v142 = [v141 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v151 = v138;
          v152 = 2114;
          v153 = v142;
          _os_log_error_impl(&dword_1C0184000, v134, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v135)
      {
        v136 = [MEMORY[0x1E696AF00] callStackSymbols];
        v137 = [v136 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v151 = v137;
        _os_log_error_impl(&dword_1C0184000, v134, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NURenderJob prepare:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1146, @"needsRenderNode but unable to compute renderMode", v143, v144, v145, v146, v147);
    }

    v64 = 3;
  }

  v65 = [(NURenderJob *)self newRenderPipelineStateForEvaluationMode:v64];
  v66 = [(NURenderJob *)self renderNodeWithPipelineState:v65 error:v3];
  [(NURenderJob *)self setRenderNode:v66];

  v67 = [(NURenderJob *)self renderNode];

  if (v67)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v68 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v100 = v68;
      v101 = [(NURenderJob *)self renderNode];
      *buf = 138412290;
      v151 = v101;
      _os_log_debug_impl(&dword_1C0184000, v100, OS_LOG_TYPE_DEBUG, "Render node:\n%@", buf, 0xCu);
    }

    v69 = [(NURenderJob *)self dependentJobs];

    if (v69 || ([(NURenderJob *)self evaluateRenderDependencies:v3], v70 = objc_claimAutoreleasedReturnValue(), [(NURenderJob *)self setDependentJobs:v70], v70, [(NURenderJob *)self dependentJobs], v71 = objc_claimAutoreleasedReturnValue(), v71, v71))
    {
      if ([(NURenderJob *)self _shouldWaitForDependentJobs])
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
        }

        v72 = _NUScheduleLogger;
        if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
        {
          v109 = v72;
          v110 = [(NURenderJob *)self dependentJobs];
          *buf = 138412290;
          v151 = v110;
          _os_log_debug_impl(&dword_1C0184000, v109, OS_LOG_TYPE_DEBUG, "Render dependent jobs: %@", buf, 0xCu);
        }

        v73 = 1;
        goto LABEL_82;
      }

      goto LABEL_84;
    }
  }

  v73 = 0;
LABEL_82:

  return v73;
}

- (void)_memoizeResult:(id)a3
{
  v5 = a3;
  if (!+[NUGlobalSettings renderJobDisableResultCache])
  {
    v4 = +[NURenderResultCache shared];
    [v4 setResult:v5 forJob:self];
  }
}

- (BOOL)_checkForMemoizedResult
{
  if (+[NUGlobalSettings renderJobDisableResultCache])
  {
    return 0;
  }

  v4 = +[NURenderResultCache shared];
  v5 = [v4 resultForJob:self];

  v3 = v5 != 0;
  if (v5)
  {
    v6 = [[NUResponse alloc] initWithResult:v5];
    [(NURenderJob *)self reply:v6];
    [(NURenderJob *)self finalize:0];
  }

  return v3;
}

- (id)memoizationCacheKey
{
  p_memoizationCacheKey = &self->_memoizationCacheKey;
  v4 = self->_memoizationCacheKey;
  if (!v4)
  {
    v4 = [(NURenderJob *)self cacheKey];
    objc_storeStrong(p_memoizationCacheKey, v4);
  }

  return v4;
}

- (void)_reply:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NURenderJobStatistics *)self->_stats setResponseTime:NUAbsoluteTime()];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v5 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    request = self->_request;
    v8 = v5;
    v9 = [(NURenderRequest *)request name];
    [(NURenderJobStatistics *)self->_stats totalDuration];
    v11 = 134218498;
    v12 = self;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    _os_log_debug_impl(&dword_1C0184000, v8, OS_LOG_TYPE_DEBUG, "job %p %{public}@ totalDuration %0.4f s", &v11, 0x20u);
  }

  v6 = [(NURenderRequest *)self->_request completionBlock];
  (v6)[2](v6, v4);
}

- (void)reply:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__NURenderJob_reply___block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  if (self->_replySynchronous)
  {
    v6 = objc_autoreleasePoolPush();
    [(NURenderJob *)self _reply:v4];
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    replyGroup = self->_replyGroup;
    v8 = [(NURenderRequest *)self->_request responseQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __21__NURenderJob_reply___block_invoke_2;
    v9[3] = &unk_1E810B958;
    v9[4] = self;
    v10 = v4;
    dispatch_group_async(replyGroup, v8, v9);
  }
}

void __21__NURenderJob_reply___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _reply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)succeeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__NURenderJob_succeeded__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __24__NURenderJob_succeeded__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[66] == 1 && (v1[65] & 1) == 0)
  {
    v2 = v1[49] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

- (void)_setCurrentStage:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = NUAssertLogger_24345();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "stage != NURenderJobStageNone"];
      *buf = 138543362;
      v20 = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_24345();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v10;
        v21 = 2114;
        v22 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob _setCurrentStage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 949, @"Invalid parameter not satisfying: %s", v15, v16, v17, v18, "stage != NURenderJobStageNone");
  }

  self->_currentStage = a3;
  if (a3 != 6)
  {

    [(NURenderJob *)self _notifyStageTransition:?];
  }
}

- (void)_finish
{
  if (!self->_isFinished)
  {
    self->_isFinished = 1;
    self->_currentStage = 6;
    [(NURenderJob *)self _notifyStageTransition:6];
  }
}

- (void)finish
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__NURenderJob_finish__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)finalize:(BOOL)a3
{
  if (a3)
  {
    if ([(NURenderJob *)self isCanceled])
    {
      v4 = [(NURenderJob *)self request];
      v5 = [v4 copy];
      v6 = [NUError canceledError:@"Request was canceled" object:v5];

      [(NURenderJob *)self fail:v6];
    }

    [(NURenderJob *)self respond];
  }

  [(NURenderJob *)self cleanUp];

  [(NURenderJob *)self finish];
}

- (id)result
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NURenderJob result]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 898, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (void)respond
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NURenderJob *)self failed])
  {
    if ([(NURenderJob *)self isCanceled])
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
      }

      v3 = _NUScheduleLogger;
      if (!os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v4 = v3;
      v5 = [(NURenderJob *)self request];
      v6 = [v5 name];
      v17 = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_debug_impl(&dword_1C0184000, v4, OS_LOG_TYPE_DEBUG, "respond job %p %{public}@: canceled", &v17, 0x16u);
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
      }

      v10 = _NUScheduleLogger;
      if (!os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v4 = v10;
      v5 = [(NURenderJob *)self request];
      v6 = [v5 name];
      v16 = [(NURenderJob *)self error];
      v17 = 134218498;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v16;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "respond job %p %{public}@: error %{public}@", &v17, 0x20u);
    }

LABEL_15:
    v11 = [NUResponse alloc];
    v8 = [(NURenderJob *)self error];
    v9 = [(NUResponse *)v11 initWithError:v8];
    goto LABEL_16;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v7 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v13 = v7;
    v14 = [(NURenderJob *)self request];
    v15 = [v14 name];
    v17 = 134218242;
    v18 = self;
    v19 = 2114;
    v20 = v15;
    _os_log_debug_impl(&dword_1C0184000, v13, OS_LOG_TYPE_DEBUG, "respond job %p %{public}@: success", &v17, 0x16u);
  }

  v8 = [(NURenderJob *)self result];
  [v8 setStatistics:self->_stats];
  [(NURenderJob *)self _memoizeResult:v8];
  v9 = [[NUResponse alloc] initWithResult:v8];
LABEL_16:
  v12 = v9;

  [(NURenderJob *)self reply:v12];
  if (+[NUGlobalSettings renderJobDebug])
  {
    [(NURenderJob *)self renderJobDebugResponded];
    [NURenderJobStatistics addStatisticsToHistory:self->_stats forJob:self wasCanceled:0];
  }
}

- (void)abortStage:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 5:
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
      }

      v6 = _NUScheduleLogger;
      if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
      {
        v10 = v6;
        v11 = [(NURenderJob *)self request];
        v12 = [v11 name];
        v16 = 134218242;
        v17 = self;
        v18 = 2114;
        v19 = v12;
        _os_log_debug_impl(&dword_1C0184000, v10, OS_LOG_TYPE_DEBUG, "job %p %{public}@ abort complete", &v16, 0x16u);
      }

      [(NURenderJob *)self abortComplete];
      break;
    case 4:
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
      }

      v5 = _NUScheduleLogger;
      if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
      {
        v7 = v5;
        v8 = [(NURenderJob *)self request];
        v9 = [v8 name];
        v16 = 134218242;
        v17 = self;
        v18 = 2114;
        v19 = v9;
        _os_log_debug_impl(&dword_1C0184000, v7, OS_LOG_TYPE_DEBUG, "job %p %{public}@ abort render", &v16, 0x16u);
      }

      [(NURenderJob *)self abortRender];
      break;
    case 1:
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
      }

      v4 = _NUScheduleLogger;
      if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
      {
        v13 = v4;
        v14 = [(NURenderJob *)self request];
        v15 = [v14 name];
        v16 = 134218242;
        v17 = self;
        v18 = 2114;
        v19 = v15;
        _os_log_debug_impl(&dword_1C0184000, v13, OS_LOG_TYPE_DEBUG, "job %p %{public}@ abort prepare", &v16, 0x16u);
      }

      [(NURenderJob *)self abortPrepare];
      break;
  }
}

- ($EB925890EBEBD6850280D1FB85A9BD43)_atomicCancel
{
  if (self->_isCanceled)
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    if (self->_isFinished || self->_failed)
    {
      v2 = 0;
      v3 = 0;
    }

    else
    {
      v4 = 1;
      if (self->_currentStage == 6)
      {
        v2 = 0;
        v3 = 0;
        return ((v2 << 16) | (v3 << 8) | v4);
      }

      self->_isCanceled = 1;
      [(NURenderJob *)self _notifyCanceled:?];
      if (!self->_isExecuting)
      {
        v4 = ![(NURenderRequest *)self->_request shouldCoalesceUpdates];
        v2 = 1;
        v3 = 1;
        return ((v2 << 16) | (v3 << 8) | v4);
      }

      [(NURenderJob *)self abortStage:self->_currentStage];
      v3 = 0;
      v2 = 1;
      self->_isAborted = 1;
    }

    v4 = 1;
  }

  return ((v2 << 16) | (v3 << 8) | v4);
}

- (void)resume
{
  v3 = [(NURenderJob *)self request];
  v4 = [v3 voucher];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__NURenderJob_resume__block_invoke;
  v5[3] = &unk_1E810B9A8;
  v5[4] = self;
  NULogAdoptVoucher(v4, v5);
}

void __21__NURenderJob_resume__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__NURenderJob_resume__block_invoke_2;
  block[3] = &unk_1E810B9A8;
  block[4] = v1;
  dispatch_sync(v2, block);
}

- (void)pause
{
  v3 = [(NURenderJob *)self request];
  v4 = [v3 voucher];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__NURenderJob_pause__block_invoke;
  v5[3] = &unk_1E810B9A8;
  v5[4] = self;
  NULogAdoptVoucher(v4, v5);
}

void __20__NURenderJob_pause__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__NURenderJob_pause__block_invoke_2;
  block[3] = &unk_1E810B9A8;
  block[4] = v1;
  dispatch_sync(v2, block);
}

- (BOOL)_cancelCoalescedJob
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2810000000;
  v15 = &unk_1C03FE0EF;
  v16 = 1;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__NURenderJob__cancelCoalescedJob__block_invoke;
  v7[3] = &unk_1E810B0A0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v12;
  dispatch_sync(stateQueue, v7);
  if (+[NUGlobalSettings renderJobDebug]&& (v9[3] & 1) == 0)
  {
    [(NURenderJob *)self renderJobDebugCanceled];
    [NURenderJobStatistics addStatisticsToHistory:self->_stats forJob:self wasCanceled:1];
  }

  v4 = v13;
  if (*(v13 + 33) == 1)
  {
    [(NURenderJob *)self finalize:*(v13 + 32)];
    v4 = v13;
  }

  v5 = *(v4 + 34);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __34__NURenderJob__cancelCoalescedJob__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 65);
  __dmb(0xBu);
  result = [*(a1 + 32) _shouldCancelCoalescedJob];
  if (result)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v3 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v3;
      v7 = [v5 request];
      v8 = [v7 name];
      v9 = 134218242;
      v10 = v5;
      v11 = 2114;
      v12 = v8;
      _os_log_debug_impl(&dword_1C0184000, v6, OS_LOG_TYPE_DEBUG, "job %p %{public}@ cancel (coalesced)", &v9, 0x16u);
    }

    result = [*(a1 + 32) _atomicCancel];
    v4 = *(*(a1 + 48) + 8);
    *(v4 + 34) = BYTE2(result);
    *(v4 + 32) = result;
  }

  return result;
}

- (BOOL)cancelCoalescedJob
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(NURenderJob *)self request];
  v4 = [v3 voucher];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__NURenderJob_cancelCoalescedJob__block_invoke;
  v6[3] = &unk_1E810B980;
  v6[4] = self;
  v6[5] = &v7;
  NULogAdoptVoucher(v4, v6);

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __33__NURenderJob_cancelCoalescedJob__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cancelCoalescedJob];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_shouldCancelCoalescedJob
{
  if (!self->_isCanceled)
  {
    currentStage = self->_currentStage;
    if (currentStage < 4)
    {
      return 1;
    }

    if (currentStage == 4)
    {
      return !self->_isExecuting;
    }
  }

  return 0;
}

- (void)_cancel
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2810000000;
  v12 = &unk_1C03FE0EF;
  v13 = 0;
  v14 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__NURenderJob__cancel__block_invoke;
  v4[3] = &unk_1E810B0A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = &v9;
  dispatch_sync(stateQueue, v4);
  if (+[NUGlobalSettings renderJobDebug]&& (v6[3] & 1) == 0)
  {
    [(NURenderJob *)self renderJobDebugCanceled];
    [NURenderJobStatistics addStatisticsToHistory:self->_stats forJob:self wasCanceled:1];
  }

  if (*(v10 + 33) == 1)
  {
    [(NURenderJob *)self finalize:*(v10 + 32)];
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

uint64_t __22__NURenderJob__cancel__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v2 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 request];
    v8 = [v7 name];
    v9 = 134218242;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_debug_impl(&dword_1C0184000, v6, OS_LOG_TYPE_DEBUG, "job %p %{public}@ cancel", &v9, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 65);
  __dmb(0xBu);
  result = [*(a1 + 32) _atomicCancel];
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 34) = BYTE2(result);
  *(v4 + 32) = result;
  return result;
}

- (void)cancel
{
  v3 = [(NURenderJob *)self request];
  v4 = [v3 voucher];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__NURenderJob_cancel__block_invoke;
  v5[3] = &unk_1E810B9A8;
  v5[4] = self;
  NULogAdoptVoucher(v4, v5);
}

- (BOOL)isFinished
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__NURenderJob_isFinished__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__NURenderJob_isCanceled__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)currentStage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__NURenderJob_currentStage__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_shouldWaitForDependentJobs
{
  v2 = [(NURenderJob *)self dependentJobs];
  v3 = [v2 count] != 0;

  return v3;
}

- (int64_t)_nextStageForStage:(int64_t)a3
{
  if (a3 <= 3)
  {
    if ((a3 - 2) < 2 || !a3)
    {
      return 1;
    }

    if (a3 != 1)
    {
      return 0;
    }

    if ([(NURenderJob *)self _shouldWaitForDependentJobs])
    {
      return 3;
    }

    if ([(NURenderJob *)self wantsRenderStage])
    {
      return 4;
    }

LABEL_16:
    if ([(NURenderJob *)self wantsCompleteStage])
    {
      return 5;
    }

    return 6;
  }

  switch(a3)
  {
    case 4:
      goto LABEL_16;
    case 5:
      return 6;
    case 6:
      return 6;
    default:
      return 0;
  }
}

- (BOOL)runStage:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  v45 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if ((a3 - 2) >= 2 && a3)
      {
        return self & 1;
      }

      goto LABEL_25;
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v7 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v16 = v7;
      v17 = [(NURenderJob *)v5 request];
      v18 = [v17 name];
      *buf = 134218242;
      v42 = v5;
      v43 = 2114;
      v44 = v18;
      _os_log_debug_impl(&dword_1C0184000, v16, OS_LOG_TYPE_DEBUG, "job %p %{public}@ prepare", buf, 0x16u);
    }

    LOBYTE(self) = [(NURenderJob *)v5 prepare:a4];
  }

  else
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
        }

        v6 = _NUScheduleLogger;
        if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
        {
          v19 = v6;
          v20 = [(NURenderJob *)v5 request];
          v21 = [v20 name];
          *buf = 134218242;
          v42 = v5;
          v43 = 2114;
          v44 = v21;
          _os_log_debug_impl(&dword_1C0184000, v19, OS_LOG_TYPE_DEBUG, "job %p %{public}@ complete", buf, 0x16u);
        }

        LOBYTE(self) = [(NURenderJob *)v5 complete:a4];
        return self & 1;
      }

      if (a3 != 6)
      {
        return self & 1;
      }

LABEL_25:
      v9 = NUAssertLogger_24345();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = MEMORY[0x1E696AEC0];
        if ((a3 - 1) > 5)
        {
          v11 = @"None";
        }

        else
        {
          v11 = off_1E810B140[a3 - 1];
        }

        v22 = v11;
        v23 = [v10 stringWithFormat:@"Cannot run stage: %@", v22];
        *buf = 138543362;
        v42 = v23;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v25 = NUAssertLogger_24345();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v26)
        {
          v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v30 = MEMORY[0x1E696AF00];
          v31 = v29;
          v32 = [v30 callStackSymbols];
          v33 = [v32 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v42 = v29;
          v43 = 2114;
          v44 = v33;
          _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v42 = v28;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      if ((a3 - 1) > 5)
      {
        v34 = @"None";
      }

      else
      {
        v34 = off_1E810B140[a3 - 1];
      }

      v35 = v34;
      _NUAssertFailHandler("[NURenderJob runStage:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 535, @"Cannot run stage: %@", v36, v37, v38, v39, v35);
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v8 = _NUScheduleLogger;
    if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
    {
      v13 = v8;
      v14 = [(NURenderJob *)v5 request];
      v15 = [v14 name];
      *buf = 134218242;
      v42 = v5;
      v43 = 2114;
      v44 = v15;
      _os_log_debug_impl(&dword_1C0184000, v13, OS_LOG_TYPE_DEBUG, "job %p %{public}@ render", buf, 0x16u);
    }

    LOBYTE(self) = [(NURenderJob *)v5 _checkForMemoizedResult]|| [(NURenderJob *)v5 render:a4];
  }

  return self & 1;
}

- (void)didRun
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__NURenderJob_didRun__block_invoke;
  block[3] = &unk_1E810B0A0;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v5;
  dispatch_sync(stateQueue, block);
  if (*(v6 + 24) == 1)
  {
    [(NURenderJob *)self finalize:*(v10 + 24)];
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

uint64_t __21__NURenderJob_didRun__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 0;
  if (([*(a1 + 32) _shouldWaitForDependentJobs] & 1) == 0)
  {
    [*(*(a1 + 32) + 24) renderJob:*(a1 + 32) didRunStage:*(*(a1 + 32) + 72)];
  }

  result = *(a1 + 32);
  if (*(result + 72) == 1)
  {
    [result _didPrepare];
    result = *(a1 + 32);
  }

  if (*(result + 48) == 1)
  {
    result = [*(result + 80) shouldCoalesceUpdates];
    *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
LABEL_9:
    v3 = 48;
LABEL_10:
    *(*(*(a1 + v3) + 8) + 24) = 1;
    goto LABEL_11;
  }

  if (*(result + 49) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_9;
  }

  v4 = [result _nextStageForStage:*(result + 72)];
  result = [*(a1 + 32) _setCurrentStage:v4];
  if (v4 == 6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = 40;
    goto LABEL_10;
  }

LABEL_11:
  if (*(*(a1 + 32) + 51) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (void)_didPrepare
{
  v3 = [(NURenderJob *)self prepareNode];
  if (v3 && [(NURenderJob *)self wantsPrepareNodeCached])
  {
    v4 = [(NURenderJob *)self request];
    v5 = [v4 renderContext];
    [v5 setLastPrepareNode:v3];
  }

  v8 = [(NURenderJob *)self renderNode];

  if (v8 && [(NURenderJob *)self wantsRenderNodeCached])
  {
    v6 = [(NURenderJob *)self request];
    v7 = [v6 renderContext];
    [v7 setLastRenderNode:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (int64_t)willRun
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__NURenderJob_willRun__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __22__NURenderJob_willRun__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 66) & 1) != 0 || (*(v2 + 65))
  {
    v3 = 0;
  }

  else
  {
    if (*(v2 + 72) == 3)
    {
      *(v2 + 72) = 1;
      v4 = objc_alloc(MEMORY[0x1E695DF70]);
      v5 = [*(a1 + 32) dependentJobs];
      v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [*(a1 + 32) dependentJobs];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v13 + 1) + 8 * v11) statistics];
            [v6 addObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      [*(*(a1 + 32) + 24) setDependencies:v6];
    }

    else
    {
      [*(v2 + 24) renderJob:? willRunStage:?];
    }

    *(*(a1 + 32) + 64) = 1;
    v3 = *(*(a1 + 32) + 72);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (id)renderer:(id *)a3
{
  v5 = [(NURenderJob *)self renderer];
  if (!v5)
  {
    v6 = [(NURenderJob *)self priority];
    v7 = [v6 isLow];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(NURenderJob *)self priority];
      v10 = [v9 isHigh];

      if (v10)
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    v11 = [(NURenderJob *)self request];
    v12 = [v11 shouldUseLowMemoryMode];

    if (v12)
    {
      v8 |= 8uLL;
    }

    else
    {
      v13 = [(NURenderJob *)self request];
      v14 = [v13 isOneShot];

      if (!v14)
      {
        v8 |= 4uLL;
      }
    }

    v15 = [(NURenderJob *)self request];
    v16 = [v15 isOneShot];

    if (v16)
    {
      v17 = v8 | 0x10;
    }

    else
    {
      v17 = v8;
    }

    v18 = [(NURenderJob *)self device];
    v5 = [v18 rendererWithOptions:v17 error:a3];

    if (v5)
    {
      [(NURenderJob *)self setRenderer:v5];
    }
  }

  v19 = v5;

  return v19;
}

- (NUScalePolicy)scalePolicy
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      v12 = [v10 callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    v19 = [v16 callStackSymbols];
    v20 = [v19 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NURenderJob scalePolicy]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 325, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (void)_emitSignpostEventType:(unsigned __int8)a3 forStage:(int64_t)a4 duration:(double)a5
{
  v7 = a3;
  v41 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v9 = _NUScheduleLogger;
  if (v7 == 2)
  {
    if (NUIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&NUIsAppleInternal_onceToken, &__block_literal_global_18);
    }

    if (NUIsAppleInternal_isAppleInternal == 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0x2000];
      [v10 appendFormat:@"Duration = %.3f\n", *&a5];
      if ((a4 - 1) > 5)
      {
        v11 = @"None";
      }

      else
      {
        v11 = off_1E810B140[a4 - 1];
      }

      v12 = v11;
      [v10 appendFormat:@"Stage = %@\n", v12];

      v13 = [(NURenderJob *)self request];
      v14 = [v13 name];
      [v10 appendFormat:@"Name=%@, Job=%llu\n\n", v14, -[NURenderJob jobNumber](self, "jobNumber")];

      [v10 appendString:@"----\n"];
      v15 = [(NURenderJob *)self additionalDebugInfo];
      [v10 appendFormat:@"jobDebugInfo = \n%@\n", v15];

      [v10 appendString:@"----\n"];
      v16 = [(NURenderJob *)self request];
      v17 = [v16 additionalDebugInfo];

      [v10 appendFormat:@"\nrequestDebugInfo = \n%@\n", v17];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v10;
        _os_log_debug_impl(&dword_1C0184000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = os_signpost_id_make_with_pointer(v9, self);
  if (a4 <= 2)
  {
    switch(a4)
    {
      case 0:
        v29 = v9;
        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v20 = v29;
        if (!os_signpost_enabled(v29))
        {
          goto LABEL_43;
        }

        v21 = [(NURenderJob *)self request];
        v22 = [v21 name];
        v30 = [(NURenderJob *)self jobNumber];
        *buf = 138412546;
        v38 = v22;
        v39 = 2048;
        v40 = v30;
        v24 = "None";
        goto LABEL_42;
      case 1:
        v35 = v9;
        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v20 = v35;
        if (!os_signpost_enabled(v35))
        {
          goto LABEL_43;
        }

        v21 = [(NURenderJob *)self request];
        v22 = [v21 name];
        v36 = [(NURenderJob *)self jobNumber];
        *buf = 138412546;
        v38 = v22;
        v39 = 2048;
        v40 = v36;
        v24 = "Prepare";
        goto LABEL_42;
      case 2:
        v25 = v9;
        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v20 = v25;
        if (!os_signpost_enabled(v25))
        {
          goto LABEL_43;
        }

        v21 = [(NURenderJob *)self request];
        v22 = [v21 name];
        v26 = [(NURenderJob *)self jobNumber];
        *buf = 138412546;
        v38 = v22;
        v39 = 2048;
        v40 = v26;
        v24 = "WaitPause";
        goto LABEL_42;
    }
  }

  else
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v31 = v9;
        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v20 = v31;
        if (!os_signpost_enabled(v31))
        {
          goto LABEL_43;
        }

        v21 = [(NURenderJob *)self request];
        v22 = [v21 name];
        v32 = [(NURenderJob *)self jobNumber];
        *buf = 138412546;
        v38 = v22;
        v39 = 2048;
        v40 = v32;
        v24 = "WaitDependencies";
      }

      else
      {
        v19 = v9;
        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v20 = v19;
        if (!os_signpost_enabled(v19))
        {
          goto LABEL_43;
        }

        v21 = [(NURenderJob *)self request];
        v22 = [v21 name];
        v23 = [(NURenderJob *)self jobNumber];
        *buf = 138412546;
        v38 = v22;
        v39 = 2048;
        v40 = v23;
        v24 = "Render";
      }

LABEL_42:
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v20, v7, v18, v24, "Name=%@, Job=%llu", buf, 0x16u);

LABEL_43:
      goto LABEL_44;
    }

    if (a4 == 5)
    {
      v33 = v9;
      if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }

      v20 = v33;
      if (!os_signpost_enabled(v33))
      {
        goto LABEL_43;
      }

      v21 = [(NURenderJob *)self request];
      v22 = [v21 name];
      v34 = [(NURenderJob *)self jobNumber];
      *buf = 138412546;
      v38 = v22;
      v39 = 2048;
      v40 = v34;
      v24 = "Complete";
      goto LABEL_42;
    }

    if (a4 == 6)
    {
      v27 = v9;
      if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_43;
      }

      v20 = v27;
      if (!os_signpost_enabled(v27))
      {
        goto LABEL_43;
      }

      v21 = [(NURenderJob *)self request];
      v22 = [v21 name];
      v28 = [(NURenderJob *)self jobNumber];
      *buf = 138412546;
      v38 = v22;
      v39 = 2048;
      v40 = v28;
      v24 = "Done";
      goto LABEL_42;
    }
  }

LABEL_44:
}

- (void)_run:(int64_t)a3
{
  v4 = [(NURenderJob *)self willRun];
  if (v4)
  {
    v5 = v4;
    [(NURenderJob *)self _emitSignpostEventType:1 forStage:v4 duration:0.0];
    Current = CFAbsoluteTimeGetCurrent();
    v7 = 0;
    if (![(NURenderJob *)self runStage:v5 error:&v7])
    {
      [(NURenderJob *)self fail:v7];
    }

    [(NURenderJob *)self _emitSignpostEventType:2 forStage:v5 duration:CFAbsoluteTimeGetCurrent() - Current];
    [(NURenderJob *)self didRun];
  }
}

- (void)run:(int64_t)a3
{
  v5 = [(NURenderJob *)self request];
  v6 = [v5 voucher];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __19__NURenderJob_run___block_invoke;
  v7[3] = &unk_1E810B078;
  v7[4] = self;
  v7[5] = a3;
  NULogAdoptVoucher(v6, v7);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NURenderJob *)self currentStage];
  if ((v5 - 1) > 5)
  {
    v6 = @"None";
  }

  else
  {
    v6 = off_1E810B140[v5 - 1];
  }

  v7 = v6;
  v8 = [(NURenderJob *)self request];
  v9 = [v3 stringWithFormat:@"<%@:%p - state: %@ request: %@>", v4, self, v7, v8];

  return v9;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(NURenderJob *)self outputGeometry];

  if (!v3)
  {
    v10 = NUAssertLogger_24345();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output geometry is missing. Either the job's prepare stage has not been performed, or the job did not request output geometry."];
      *v26 = 138543362;
      *&v26[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v26, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_24345();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *v26 = 138543618;
        *&v26[4] = v17;
        v27 = 2114;
        v28 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v26, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *v26 = 138543362;
      *&v26[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v26, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob imageSize]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 244, @"Output geometry is missing. Either the job's prepare stage has not been performed, or the job did not request output geometry.", v22, v23, v24, v25, *v26);
  }

  v4 = [(NURenderJob *)self outputGeometry];
  v5 = [v4 scaledSize];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (int64_t)resolvedSampleMode:(int64_t)a3
{
  if (a3)
  {
    return a3;
  }

  v4 = [(NURenderJob *)self device];
  v5 = [v4 defaultSampleMode];

  return v5;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [(NURenderJob *)self request];
  v6 = objc_alloc_init(NURenderPipelineState);
  [(NURenderPipelineState *)v6 setEvaluationMode:a3];
  v7 = [v5 pipelineFilters];
  [(NURenderPipelineState *)v6 setPipelineFilters:v7];

  -[NURenderPipelineState setSampleMode:](v6, "setSampleMode:", -[NURenderJob resolvedSampleMode:](self, "resolvedSampleMode:", [v5 sampleMode]));
  if ((a3 - 1) < 3)
  {
    if ([(NURenderJob *)self renderScale]< 1 || v8 <= 0)
    {
      v21 = NUAssertLogger_24345();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid render scale"];
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v24 = NUAssertLogger_24345();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v25)
        {
          v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v29 = MEMORY[0x1E696AF00];
          v30 = v28;
          v31 = [v29 callStackSymbols];
          v32 = [v31 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v28;
          *&buf[12] = 2114;
          *&buf[14] = v32;
          _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v25)
      {
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v27;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NURenderJob newRenderPipelineStateForEvaluationMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 204, @"Invalid render scale", v33, v34, v35, v36, v37);
    }

    v9 = [(NURenderJob *)self renderScale];
    v11 = v10;
    goto LABEL_7;
  }

  if (!a3)
  {
    v11 = *(&NUScaleUnknown + 1);
    v9 = NUScaleUnknown;
LABEL_7:
    [(NURenderPipelineState *)v6 setScale:v9, v11];
  }

  -[NURenderPipelineState setMediaComponentType:](v6, "setMediaComponentType:", [v5 mediaComponentType]);
  v12 = [(NURenderJob *)self device];
  [(NURenderPipelineState *)v6 setDevice:v12];

  if (v5)
  {
    [v5 time];
    if (v39)
    {
      [v5 time];
      *buf = v37;
      *&buf[16] = v38;
      [(NURenderPipelineState *)v6 setTime:buf];
    }
  }

  v13 = [(NURenderJob *)self request];
  v14 = [v13 composition];
  if ([v14 mediaType] == 2)
  {
  }

  else
  {
    v15 = [v5 mediaComponentType];

    if (v15 != 2)
    {
      goto LABEL_15;
    }
  }

  [(NURenderPipelineState *)v6 setEnforceEvenDimensions:1];
LABEL_15:
  v16 = [(NURenderJob *)self request];
  v17 = [v16 isOneShot];

  if (v17)
  {
    [(NURenderPipelineState *)v6 setDisableIntermediateCaching:1];
  }

  v18 = [(NURenderJob *)self request];
  v19 = [v18 shouldUseLowMemoryMode];

  if (v19)
  {
    [(NURenderPipelineState *)v6 setLowMemoryMode:1];
  }

  return v6;
}

- (void)runToPrepareSynchronous
{
  self->_replySynchronous = 1;
  v3 = [(NURenderJob *)self currentStage];
  if (![(NURenderJob *)self isFinished])
  {
    do
    {
      [(NURenderJob *)self run:v3];
      if (v3 == 1)
      {
        break;
      }

      v3 = [(NURenderJob *)self currentStage];
    }

    while (![(NURenderJob *)self isFinished]);
  }

  self->_replySynchronous = 0;
}

- (void)runSynchronous
{
  v14 = *MEMORY[0x1E69E9840];
  self->_replySynchronous = 1;
  v3 = [(NURenderJob *)self currentStage];
  if (![(NURenderJob *)self isFinished])
  {
    do
    {
      [(NURenderJob *)self run:v3];
      v3 = [(NURenderJob *)self currentStage];
      if (v3 == 3)
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v4 = [(NURenderJob *)self dependentJobs];
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v10;
          do
          {
            v8 = 0;
            do
            {
              if (*v10 != v7)
              {
                objc_enumerationMutation(v4);
              }

              [*(*(&v9 + 1) + 8 * v8++) runSynchronous];
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
          }

          while (v6);
        }

        v3 = 1;
      }
    }

    while (![(NURenderJob *)self isFinished]);
  }

  self->_replySynchronous = 0;
}

- (id)_prepareNodeFromMedia:(id)a3
{
  v4 = a3;
  v5 = [v4 renderNode];
  v6 = objc_opt_new();
  v7 = [v4 format];

  if ([v7 temporality] == 2 || (-[NURenderJob request](self, "request"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "mediaComponentType"), v8, v9 == 2))
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enforceEvenDimensions"];
  }

  v10 = [[NUPipelineOutputNode alloc] initWithInput:v5 settings:v6];

  return v10;
}

- (NURenderJob)initWithRequest:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v32 = NUAssertLogger_24345();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "request != nil"];
      *buf = 138543362;
      v50 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_24345();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v43;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob initWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 84, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "request != nil");
  }

  v6 = v5;
  v48.receiver = self;
  v48.super_class = NURenderJob;
  v7 = [(NURenderJob *)&v48 init];
  v8 = [MEMORY[0x1E695DF00] now];
  jobCreationDate = v7->_jobCreationDate;
  v7->_jobCreationDate = v8;

  v7->_jobNumber = atomic_fetch_add_explicit(&s_nextJobNumber, 1uLL, memory_order_relaxed);
  v7->_currentStage = 1;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("NURenderJob_State", v10);
  stateQueue = v7->_stateQueue;
  v7->_stateQueue = v11;

  objc_storeStrong(&v7->_request, a3);
  v13 = objc_alloc_init(NUObservatory);
  observatory = v7->_observatory;
  v7->_observatory = v13;

  v15 = objc_alloc_init(NURenderJobStatistics);
  stats = v7->_stats;
  v7->_stats = v15;

  [v6 submitTime];
  [(NURenderJobStatistics *)v7->_stats setRequestTime:?];
  if (+[NUGlobalSettings renderJobDebug])
  {
    [(NURenderJob *)v7 renderJobDebugInit];
    v17 = [v6 name];
    [NURenderJobStatistics recordJobCreatedToHistory:v17];
  }

  if (+[NUGlobalSettings imageRenderJobUseSurfaceRenderer])
  {
    v18 = 1;
LABEL_8:
    v7->_rendererType = v18;
    goto LABEL_10;
  }

  if (+[NUGlobalSettings imageRenderJobUseTextureRenderer])
  {
    v18 = 2;
    goto LABEL_8;
  }

  v7->_rendererType = 0;
LABEL_10:
  v19 = [v6 device];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
    device = v7->_device;
    v7->_device = v21;
  }

  else
  {
    device = +[NUPlatform currentPlatform];
    v23 = [device mainDevice];
    v24 = v7->_device;
    v7->_device = v23;
  }

  v25 = dispatch_group_create();
  replyGroup = v7->_replyGroup;
  v7->_replyGroup = v25;

  v27 = [v6 media];

  if (v27)
  {
    v28 = [v6 media];
    v29 = [(NURenderJob *)v7 _prepareNodeFromMedia:v28];
    prepareNode = v7->_prepareNode;
    v7->_prepareNode = v29;
  }

  return v7;
}

- (NURenderJob)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NURenderJob init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 79, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

+ (void)flushCache
{
  v2 = +[NURenderResultCache shared];
  [v2 flush];
}

- (BOOL)renderVideoFrames:(id)a3 videoMetadataSamples:(id)a4 videoSampleSlices:(id)a5 intoPixelBuffer:(__CVBuffer *)a6 time:(id *)a7 colorSpace:(id)a8 playbackDirection:(int64_t)a9 error:(id *)a10
{
  v190 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  if (!a6)
  {
    v100 = NUAssertLogger_24345();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destination != NULL"];
      *buf = 138543362;
      *&buf[4] = v101;
      _os_log_error_impl(&dword_1C0184000, v100, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v103 = NUAssertLogger_24345();
    v104 = os_log_type_enabled(v103, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v104)
      {
        v128 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v129 = MEMORY[0x1E696AF00];
        v130 = v128;
        v131 = [v129 callStackSymbols];
        v132 = [v131 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v128;
        *&buf[12] = 2114;
        *&buf[14] = v132;
        _os_log_error_impl(&dword_1C0184000, v103, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v104)
    {
      v105 = [MEMORY[0x1E696AF00] callStackSymbols];
      v106 = [v105 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v106;
      _os_log_error_impl(&dword_1C0184000, v103, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob(VideoSupport) renderVideoFrames:videoMetadataSamples:videoSampleSlices:intoPixelBuffer:time:colorSpace:playbackDirection:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1528, @"Invalid parameter not satisfying: %s", v133, v134, v135, v136, "destination != NULL");
  }

  if (!a10)
  {
    v107 = NUAssertLogger_24345();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v108;
      _os_log_error_impl(&dword_1C0184000, v107, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v109 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v110 = NUAssertLogger_24345();
    v111 = os_log_type_enabled(v110, OS_LOG_TYPE_ERROR);
    if (v109)
    {
      if (v111)
      {
        v137 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v138 = MEMORY[0x1E696AF00];
        v139 = v137;
        v140 = [v138 callStackSymbols];
        v141 = [v140 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v137;
        *&buf[12] = 2114;
        *&buf[14] = v141;
        _os_log_error_impl(&dword_1C0184000, v110, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v111)
    {
      v112 = [MEMORY[0x1E696AF00] callStackSymbols];
      v113 = [v112 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v113;
      _os_log_error_impl(&dword_1C0184000, v110, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob(VideoSupport) renderVideoFrames:videoMetadataSamples:videoSampleSlices:intoPixelBuffer:time:colorSpace:playbackDirection:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1529, @"Invalid parameter not satisfying: %s", v142, v143, v144, v145, "error != NULL");
  }

  if (!v16)
  {
    v114 = NUAssertLogger_24345();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoFrames != nil"];
      *buf = 138543362;
      *&buf[4] = v115;
      _os_log_error_impl(&dword_1C0184000, v114, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v116 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v117 = NUAssertLogger_24345();
    v118 = os_log_type_enabled(v117, OS_LOG_TYPE_ERROR);
    if (v116)
    {
      if (v118)
      {
        v146 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v147 = MEMORY[0x1E696AF00];
        v148 = v146;
        v149 = [v147 callStackSymbols];
        v150 = [v149 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v146;
        *&buf[12] = 2114;
        *&buf[14] = v150;
        _os_log_error_impl(&dword_1C0184000, v117, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v118)
    {
      v119 = [MEMORY[0x1E696AF00] callStackSymbols];
      v120 = [v119 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v120;
      _os_log_error_impl(&dword_1C0184000, v117, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob(VideoSupport) renderVideoFrames:videoMetadataSamples:videoSampleSlices:intoPixelBuffer:time:colorSpace:playbackDirection:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1530, @"Invalid parameter not satisfying: %s", v151, v152, v153, v154, "videoFrames != nil");
  }

  if ((a7->var2 & 1) == 0)
  {
    v121 = NUAssertLogger_24345();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(time)"];
      *buf = 138543362;
      *&buf[4] = v122;
      _os_log_error_impl(&dword_1C0184000, v121, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v123 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v124 = NUAssertLogger_24345();
    v125 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);
    if (v123)
    {
      if (v125)
      {
        v155 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v156 = MEMORY[0x1E696AF00];
        v157 = v155;
        v158 = [v156 callStackSymbols];
        v159 = [v158 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v155;
        *&buf[12] = 2114;
        *&buf[14] = v159;
        _os_log_error_impl(&dword_1C0184000, v124, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v125)
    {
      v126 = [MEMORY[0x1E696AF00] callStackSymbols];
      v127 = [v126 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v127;
      _os_log_error_impl(&dword_1C0184000, v124, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob(VideoSupport) renderVideoFrames:videoMetadataSamples:videoSampleSlices:intoPixelBuffer:time:colorSpace:playbackDirection:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1531, @"Invalid parameter not satisfying: %s", v160, v161, v162, v163, "CMTIME_IS_VALID(time)");
  }

  v20 = v19;
  v176 = a7;
  v21 = [(NURenderJob *)self renderer:a10];
  if (v21)
  {
    allocator = a6;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
    }

    v22 = _NUScheduleLogger;
    v23 = os_signpost_id_generate(v22);
    v24 = v22;
    v25 = v24;
    spid = v23;
    v181 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C0184000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "RenderVideoFrames", "", buf, 2u);
    }

    v26 = [(NURenderJob *)self newRenderPipelineStateForEvaluationMode:3];
    v27 = [(NURenderJob *)self renderScale];
    [v26 setScale:{v27, v28}];
    [v26 setVideoFrames:v16];
    [v26 setVideoMetadataSamples:v17];
    if (v18)
    {
      [v26 setVideoSampleSlices:v18];
    }

    *buf = *&v176->var0;
    *&buf[16] = v176->var3;
    [v26 setTime:buf];
    [v26 setPlaybackDirection:a9];
    v29 = [(NURenderJob *)self renderNodeWithPipelineState:v26 error:a10];
    v30 = v29;
    if (!v29)
    {
      v53 = 0;
LABEL_62:

      goto LABEL_63;
    }

    v31 = [v29 outputImage:a10];
    if (!v31)
    {
      v53 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v172 = v30;
    v165 = v26;
    [v20 applyAttachmentsToCVPixelBuffer:allocator];
    [v31 extent];
    *buf = v32;
    *&buf[8] = v33;
    *&buf[16] = v34;
    *&buf[24] = v35;
    NU::RectT<long>::RectT(&v187, buf, 0);
    v179 = v188;
    v180 = v187;
    Width = CVPixelBufferGetWidth(allocator);
    Height = CVPixelBufferGetHeight(allocator);
    v171 = Width;
    v38.i64[0] = Width;
    v38.i64[1] = Height;
    v169 = v17;
    v170 = v16;
    v168 = v18;
    v173 = self;
    v178 = v25;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v180), vceqq_s64(v38, v179)))))
    {
LABEL_33:
      v72 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:allocator];
      if ([NUColorSpace shouldTagAsDisplayP3:allocator])
      {
        v73 = +[NUColorSpace displayP3ColorSpace];
        [v72 setColorSpace:{objc_msgSend(v73, "CGColorSpace")}];
      }

      v74 = MEMORY[0x1E696AEC0];
      v75 = [(NURenderJob *)v173 request];
      v76 = [v75 name];
      v77 = [v74 stringWithFormat:@"%@-j%lld", v76, -[NURenderJob jobNumber](v173, "jobNumber")];
      [v72 setLabel:v77];

      if (v20)
      {
        [v72 setColorSpace:{objc_msgSend(v20, "CGColorSpace")}];
        v78 = [v20 isHDR] ^ 1;
        v79 = v178;
      }

      else
      {
        v79 = v178;
        if (!CGColorSpaceUsesITUR_2100TF([v72 colorSpace]))
        {
          goto LABEL_40;
        }

        v78 = 0;
      }

      [v72 setClamped:v78];
LABEL_40:
      v167 = v20;
      v80 = 0;
      v81 = 0;
      allocatora = *MEMORY[0x1E695E480];
      do
      {
        if (v81)
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
          }

          v82 = _NUScheduleLogger;
          if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_ERROR))
          {
            *buf = *&v176->var0;
            *&buf[16] = v176->var3;
            v89 = v82;
            v90 = CMTimeCopyDescription(allocatora, buf);
            *buf = 138413058;
            *&buf[4] = v90;
            *&buf[12] = 1024;
            *&buf[14] = v81 + 1;
            *&buf[18] = 1024;
            *&buf[20] = 5;
            *&buf[24] = 2112;
            *&buf[26] = v80;
            _os_log_error_impl(&dword_1C0184000, v89, OS_LOG_TYPE_ERROR, "Retrying video frame render at time %@: attempt %d of %d; previous error %@", buf, 0x22u);
          }

          v83 = [v21 context];
          [v83 clearCaches];
        }

        v84 = v79;
        v85 = v84;
        if (v181 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C0184000, v85, OS_SIGNPOST_EVENT, spid, "RenderVideoFrames", "StartingRender", buf, 2u);
        }

        v183 = 0;
        *buf = v180;
        *&buf[16] = v179;
        v86 = [v21 renderImage:v31 rect:buf toDestination:v72 atPoint:0 error:{0, &v183}];
        v87 = v183;

        if (v86)
        {
          v182 = v87;
          v88 = [v86 waitUntilCompletedAndReturnError:&v182];
          v80 = v182;

          v53 = v88 != 0;
          v79 = v178;
        }

        else
        {
          v53 = 0;
          v80 = v87;
        }

        if (v81 > 3)
        {
          break;
        }

        ++v81;
      }

      while (!v53);
      v91 = v85;
      v92 = v91;
      if (v181 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v91))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C0184000, v92, OS_SIGNPOST_INTERVAL_END, spid, "RenderVideoFrames", "", buf, 2u);
      }

      if (!v53)
      {
        v93 = [(NURenderJob *)v173 request];
        v94 = [v93 copy];
        *a10 = [NUError errorWithCode:1 reason:@"Failed to render frame. Task creation or completion failed" object:v94 underlyingError:v80];
      }

      v17 = v169;
      v16 = v170;
      v20 = v167;
      v18 = v168;
      v25 = v178;
      v26 = v165;
      v30 = v172;
      goto LABEL_61;
    }

    v39 = Height;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
    }

    v40 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self;
      v42 = MEMORY[0x1E696AEC0];
      v43 = MEMORY[0x1E696B098];
      v44 = v40;
      [v31 extent];
      v185[0] = v45;
      v185[1] = v46;
      v185[2] = v47;
      v185[3] = v48;
      v49 = [v43 valueWithBytes:v185 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v50 = [(NURenderJob *)v41 outputGeometry];
      v51 = [v42 stringWithFormat:@"Frame size != buffer size, b=%@, s=%ldx%ld, g=%@, r=%@, i=%@", v49, v171, v39, v50, v172, v31];
      *buf = 138543362;
      *&buf[4] = v51;
      _os_log_impl(&dword_1C0184000, v44, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v52 = _NULogOnceToken;
      if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
      {
        if (v52 != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
        }

        goto LABEL_26;
      }

      if (v52 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
      }
    }

    else if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
LABEL_26:
      v54 = _NUAssertLogger;
      if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v166 = v55;
        v57 = v54;
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_error_impl(&dword_1C0184000, v57, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_32:
      v61 = MEMORY[0x1E696B098];
      [v31 extent];
      v184[0] = v62;
      v184[1] = v63;
      v184[2] = v64;
      v184[3] = v65;
      v66 = [v61 valueWithBytes:v184 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v164 = [(NURenderJob *)v173 outputGeometry];
      _NUAssertContinueHandler("[NURenderJob(VideoSupport) renderVideoFrames:videoMetadataSamples:videoSampleSlices:intoPixelBuffer:time:colorSpace:playbackDirection:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1573, @"Frame size != buffer size, b=%@, s=%ldx%ld, g=%@, r=%@, i=%@", v67, v68, v69, v70, v66);

      v71.i64[0] = v171;
      v71.i64[1] = v39;
      *buf = v180;
      *&buf[16] = v179;
      v187 = 0uLL;
      v188 = v71;
      NU::RectT<long>::Intersection(v186, buf, v187.i64);
      v179 = v186[1];
      v180 = v186[0];
      goto LABEL_33;
    }

    v60 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v96 = MEMORY[0x1E696AF00];
      v97 = v60;
      v98 = [v96 callStackSymbols];
      v99 = [v98 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v99;
      _os_log_error_impl(&dword_1C0184000, v97, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v53 = 0;
LABEL_63:

  return v53;
}

- (id)renderImage:(id)a3 into:(id)a4 colorSpace:(id)a5 roi:(id)a6 imageSize:(id)a7 alpha:(const unint64_t *)a8 error:(id *)a9
{
  var1 = a7.var1;
  v90 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (!a9)
  {
    v37 = NUAssertLogger_24345();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *v86 = 138543362;
      *&v86[4] = v38;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v86, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_24345();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *v86 = 138543618;
        *&v86[4] = v44;
        *&v86[12] = 2114;
        *&v86[14] = v48;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v86, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *v86 = 138543362;
      *&v86[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v86, 0xCu);
    }

    _NUAssertFailHandler("[NURenderJob(RendererSupport) renderImage:into:colorSpace:roi:imageSize:alpha:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1457, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v18 = v17;
  v55 = self;
  v56 = [(NURenderJob *)self renderer:?];
  if (v56)
  {
    v80 = 0u;
    v81 = 0u;
    if (v18)
    {
      [v18 bounds];
      v19 = *(&v80 + 1);
      v20 = v80;
      v21 = *(&v81 + 1);
      v22 = v81;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
    }

    [v15 size];
    v53 = v18;
    v24 = v14;
    v25 = var1 - (v19 + v21);
    v27 = v26 - v21;
    *v86 = 0;
    *&v86[8] = v86;
    *&v86[16] = 0x3032000000;
    v87 = __Block_byref_object_copy__24318;
    v88 = __Block_byref_object_dispose__24319;
    v89 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__24318;
    v78 = __Block_byref_object_dispose__24319;
    v79 = 0;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __86__NURenderJob_RendererSupport__renderImage_into_colorSpace_roi_imageSize_alpha_error___block_invoke;
    v57[3] = &unk_1E810B0F8;
    v28 = v16;
    v58 = v28;
    v59 = v55;
    v54 = v15;
    v29 = v15;
    v65 = a8;
    v66 = v20;
    v67 = v25;
    v68 = v22;
    v14 = v24;
    v69 = v21;
    v60 = v29;
    v63 = v86;
    v61 = v56;
    v70 = 0;
    v71 = v27;
    v72 = v22;
    v73 = v21;
    v62 = v24;
    v64 = &v74;
    [v29 useAsCIRenderDestinationWithRenderer:v61 block:v57];
    if (*(*&v86[8] + 40))
    {
      [v29 setColorSpace:v28];
      v23 = *(*&v86[8] + 40);
      v15 = v54;
      v18 = v53;
    }

    else
    {
      v30 = [(NURenderJob *)v55 isAborted];
      v31 = v75[5];
      if (v30)
      {
        [NUError errorWithCode:10 reason:@"render was aborted" object:v55 underlyingError:v31];
        v15 = v54;
        *a9 = v18 = v53;
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
        }

        v32 = _NUScheduleLogger;
        if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
        {
          v33 = *a9;
          *buf = 134218242;
          v83 = v55;
          v84 = 2114;
          v85 = v33;
          _os_log_debug_impl(&dword_1C0184000, v32, OS_LOG_TYPE_DEBUG, "job %p aborted: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        [NUError errorWithCode:1 reason:@"failed to prepare render" object:v55 underlyingError:v31];
        v15 = v54;
        *a9 = v18 = v53;
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
        }

        v34 = _NUScheduleLogger;
        if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_ERROR))
        {
          v36 = *a9;
          *buf = 134218242;
          v83 = v55;
          v84 = 2114;
          v85 = v36;
          _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job %p render failed: %{public}@", buf, 0x16u);
        }
      }

      v23 = 0;
    }

    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(v86, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL __86__NURenderJob_RendererSupport__renderImage_into_colorSpace_roi_imageSize_alpha_error___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setColorSpace:{objc_msgSend(*(a1 + 32), "CGColorSpace")}];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 40) request];
  v6 = [v5 name];
  v7 = [v4 stringWithFormat:@"%@-j%lld", v6, objc_msgSend(*(a1 + 40), "jobNumber")];
  [v3 setLabel:v7];

  v8 = [*(a1 + 32) isExtended];
  if (v8)
  {
    v9 = [*(a1 + 48) format];
    v10 = [v9 supportsExtendedRange];

    if ((v10 & 1) == 0)
    {
      v29 = NUAssertLogger_24345();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = *(a1 + 32);
        v32 = [*(a1 + 48) format];
        v33 = [v30 stringWithFormat:@"XDR colorspace (%@) is incompatible with format (%@)", v31, v32];
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v35 = NUAssertLogger_24345();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v36)
        {
          v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v50 = MEMORY[0x1E696AF00];
          v51 = v49;
          v52 = [v50 callStackSymbols];
          v53 = [v52 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v49;
          *&buf[12] = 2114;
          *&buf[14] = v53;
          _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v36)
      {
        v37 = [MEMORY[0x1E696AF00] callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v38;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v54 = *(a1 + 32);
      [*(a1 + 48) format];
      objc_claimAutoreleasedReturnValue();
      _NUAssertFailHandler("[NURenderJob(RendererSupport) renderImage:into:colorSpace:roi:imageSize:alpha:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1487, @"XDR colorspace (%@) is incompatible with format (%@)", v55, v56, v57, v58, v54);
    }
  }

  if ([*(a1 + 32) isHDR])
  {
    v11 = [*(a1 + 48) format];
    v12 = [v11 bitsPerComponent];

    if (v12 <= 9)
    {
      v39 = NUAssertLogger_24345();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = MEMORY[0x1E696AEC0];
        v41 = *(a1 + 32);
        v42 = [*(a1 + 48) format];
        v43 = [v40 stringWithFormat:@"HDR colorspace (%@) is incompatible with format (%@)", v41, v42];
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v45 = NUAssertLogger_24345();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
      if (v44)
      {
        if (v46)
        {
          v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v60 = MEMORY[0x1E696AF00];
          v61 = v59;
          v62 = [v60 callStackSymbols];
          v63 = [v62 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v59;
          *&buf[12] = 2114;
          *&buf[14] = v63;
          _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v46)
      {
        v47 = [MEMORY[0x1E696AF00] callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v48;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v64 = *(a1 + 32);
      [*(a1 + 48) format];
      objc_claimAutoreleasedReturnValue();
      _NUAssertFailHandler("[NURenderJob(RendererSupport) renderImage:into:colorSpace:roi:imageSize:alpha:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NURenderJob.m", 1488, @"HDR colorspace (%@) is incompatible with format (%@)", v65, v66, v67, v68, v64);
    }
  }

  [v3 setClamped:v8 ^ 1u];
  v13 = *(a1 + 88);
  if (v13)
  {
    [v3 setAlphaMode:*v13];
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_984);
  }

  v14 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 40);
    v69 = *(a1 + 96);
    v25 = *(a1 + 112);
    v26 = *(a1 + 120);
    v27 = v14;
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", v69, v25, v26];
    *buf = 134218498;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v3;
    *&buf[22] = 2114;
    *&buf[24] = v28;
    _os_log_debug_impl(&dword_1C0184000, v27, OS_LOG_TYPE_DEBUG, "job %p %{public}@ render ROI %{public}@", buf, 0x20u);
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(*(a1 + 80) + 8);
  obj = 0;
  v18 = *(a1 + 112);
  *buf = *(a1 + 96);
  *&buf[16] = v18;
  v19 = [v15 renderImage:v16 rect:buf toDestination:v3 atPoint:*(a1 + 128) error:{*(a1 + 136), &obj}];
  objc_storeStrong((v17 + 40), obj);
  v20 = *(*(a1 + 72) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *(*(*(a1 + 72) + 8) + 40) != 0;
  return v22;
}

- (void)writeRenderDebugFileToDisk
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = [(NURenderJob *)self debugFilePath];
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:512000];
  v86 = v3;
  [v4 appendString:v3];
  v5 = [(NURenderJob *)self request];
  v6 = [v5 name];
  v87 = v4;
  [v4 appendFormat:@"%@name: %@\n", @"\n\n", v6];

  if (+[NUGlobalSettings renderJobDebugCaptureOnlyPerfStats])
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v4 appendFormat:@"%@\n", v8];
  }

  else
  {
    v9 = [(NURenderJob *)self request];
    v10 = [v9 additionalDebugInfo];
    [v4 appendFormat:@"%@%@", v10, @"\n\n"];

    v8 = [(NURenderJob *)self additionalDebugInfo];
    [v4 appendString:v8];
  }

  v11 = [(NURenderJob *)self error];

  if (v11)
  {
    v12 = [(NURenderJob *)self error];
    v13 = [v12 description];
    [v4 appendFormat:@"\n\nError:\n%@", v13];
  }

  if ([(NURenderJob *)self isCanceled])
  {
    [v4 appendString:@"\n\nTHIS JOB WAS CANCELED / COALESCED"];
  }

  if ([(NURenderJob *)self isAborted])
  {
    [v4 appendString:@"\nTHIS JOB WAS ABORTED IN THE MIDDLE OF EXECUTION"];
  }

  v14 = [(NURenderJob *)self statistics];
  if (v14)
  {
    v15 = @"\n\n";
  }

  else
  {
    v15 = &stru_1F3F4BA98;
  }

  v16 = [(NURenderJob *)self statistics];
  v17 = [v16 description];
  [v4 appendFormat:@"%@Stats: %@%@", @"\n\n", v15, v17];

  if (+[NUGlobalSettings renderJobDebugCapturePerfStatHistory])
  {
    v84 = +[NURenderJobStatistics history];
    v85 = [(NURenderJob *)self request];
    v18 = [v85 name];
    v19 = [v84 objectForKeyedSubscript:v18];
    if (v19)
    {
      v20 = @"\n\n";
    }

    else
    {
      v20 = &stru_1F3F4BA98;
    }

    v21 = +[NURenderJobStatistics history];
    v22 = [(NURenderJob *)self request];
    v23 = [v22 name];
    v24 = [v21 objectForKeyedSubscript:v23];
    v25 = [v24 description];
    [v87 appendFormat:@"%@Historical Stats: %@%@", @"\n\n", v20, v25];
  }

  if (!+[NUGlobalSettings renderJobDebugCaptureOnlyPerfStats])
  {
    v26 = [(NURenderJob *)self nodeCacheAtStartOfJob];
    [v87 appendFormat:@"%@Render Node Cache (at job start): %@", @"\n\n", v26];

    LOBYTE(v26) = +[NUGlobalSettings renderJobDebugCaptureNodeCache];
    v27 = +[NURenderNodeCache sharedInstance];
    v28 = v27;
    if (v26)
    {
      v29 = [v27 debugDescription];
      [v87 appendFormat:@"\n%@Render Node Cache (at job end): %@", @"\n\n", v29];
    }

    else
    {
      [v87 appendFormat:@"\n%@Render Node Cache (at job end): %@", @"\n\n", v27];
    }

    v30 = [(NURenderJob *)self request];
    v31 = [v30 composition];
    if (v31)
    {
      v32 = @"\n\n";
    }

    else
    {
      v32 = &stru_1F3F4BA98;
    }

    v33 = [(NURenderJob *)self request];
    if (v33)
    {
      v34 = [(NURenderJob *)self request];
      v35 = [v34 composition];
      v36 = [v35 debugDescription];
      [v87 appendFormat:@"%@Composition: %@%@", @"\n\n", v32, v36];
    }

    else
    {
      [v87 appendFormat:@"%@Composition: %@%@", @"\n\n", v32, &stru_1F3F4BA98];
    }

    v37 = [(NURenderJob *)self outputVideo];
    if (v37)
    {
      v38 = @"\n\n";
    }

    else
    {
      v38 = &stru_1F3F4BA98;
    }

    v39 = [(NURenderJob *)self outputVideo];
    if (v39)
    {
      v40 = [(NURenderJob *)self outputVideo];
      v41 = [v40 debugDescription];
      [v87 appendFormat:@"%@OutputVideo: %@%@", @"\n\n", v38, v41];
    }

    else
    {
      [v87 appendFormat:@"%@OutputVideo: %@%@", @"\n\n", v38, &stru_1F3F4BA98];
    }

    v42 = [(NURenderJob *)self outputVideoComposition];
    if (v42)
    {
      v43 = @"\n\n";
    }

    else
    {
      v43 = &stru_1F3F4BA98;
    }

    v44 = [(NURenderJob *)self outputVideoComposition];
    if (v44)
    {
      v45 = [(NURenderJob *)self outputVideoComposition];
      v46 = [v45 debugDescription];
      [v87 appendFormat:@"%@OutputVideoComposition: %@%@", @"\n\n", v43, v46];
    }

    else
    {
      [v87 appendFormat:@"%@OutputVideoComposition: %@%@", @"\n\n", v43, &stru_1F3F4BA98];
    }

    v47 = [(NURenderJob *)self outputVideo];
    if (v47)
    {
      v48 = @"\n\n";
    }

    else
    {
      v48 = &stru_1F3F4BA98;
    }

    v49 = [(NURenderJob *)self outputVideo];
    if (v49)
    {
      v50 = [(NURenderJob *)self outputVideo];
      v51 = [v50 debugDescription];
      [v87 appendFormat:@"%@OutputVideo: %@%@", @"\n\n", v48, v51];
    }

    else
    {
      [v87 appendFormat:@"%@OutputVideo: %@%@", @"\n\n", v48, &stru_1F3F4BA98];
    }

    v52 = [(NURenderJob *)self outputAudioMix];
    if (v52)
    {
      v53 = @"\n\n";
    }

    else
    {
      v53 = &stru_1F3F4BA98;
    }

    v54 = [(NURenderJob *)self outputAudioMix];
    v55 = [v54 debugDescription];
    [v87 appendFormat:@"%@OutputAudioMix: %@%@", @"\n\n", v53, v55];
  }

  if (+[NUGlobalSettings renderJobDebugCaptureNodeGraphs])
  {
    v56 = [(NURenderJob *)self prepareNode];
    if (v56)
    {
      v57 = @"\n\n";
    }

    else
    {
      v57 = &stru_1F3F4BA98;
    }

    v58 = [(NURenderJob *)self prepareNode];
    v59 = [v58 debugDescription];
    [v87 appendFormat:@"%@PreparedNode: %@%@", @"\n\n", v57, v59];

    v60 = [(NURenderJob *)self renderNode];
    if (v60)
    {
      v61 = @"\n\n";
    }

    else
    {
      v61 = &stru_1F3F4BA98;
    }

    v62 = [(NURenderJob *)self renderNode];
    v63 = [v62 debugDescription];
    [v87 appendFormat:@"%@RenderNode: %@%@", @"\n\n", v61, v63];

    v64 = [(NURenderJob *)self outputImage];
    if (v64)
    {
      v65 = @"\n\n";
    }

    else
    {
      v65 = &stru_1F3F4BA98;
    }

    v66 = [(NURenderJob *)self outputImage];
    v67 = [v66 debugDescription];
    [v87 appendFormat:@"%@OutputImage: %@%@", @"\n\n", v65, v67];
    goto LABEL_70;
  }

  if (!+[NUGlobalSettings renderJobDebugCaptureOnlyPerfStats])
  {
    v68 = [(NURenderJob *)self prepareNode];
    if (v68)
    {
      v69 = [(NURenderJob *)self prepareNode];
      v70 = [v69 description];
      [v87 appendFormat:@"%@PreparedNode: %@", @"\n\n", v70];
    }

    else
    {
      [v87 appendFormat:@"%@PreparedNode: %@", @"\n\n", &stru_1F3F4BA98];
    }

    v71 = [(NURenderJob *)self renderNode];
    if (v71)
    {
      v72 = [(NURenderJob *)self renderNode];
      v73 = [v72 description];
      [v87 appendFormat:@"%@RenderNode: %@", @"\n\n", v73];
    }

    else
    {
      [v87 appendFormat:@"%@RenderNode: %@", @"\n\n", &stru_1F3F4BA98];
    }

    v64 = [(NURenderJob *)self outputImage];
    if (!v64)
    {
      [v87 appendFormat:@"%@OutputImage: %@", @"\n\n", &stru_1F3F4BA98];
      goto LABEL_71;
    }

    v66 = [(NURenderJob *)self outputImage];
    v67 = [v66 description];
    [v87 appendFormat:@"%@OutputImage: %@", @"\n\n", v67, v83];
LABEL_70:

LABEL_71:
  }

  v89 = 0;
  [v87 writeToFile:v86 atomically:0 encoding:4 error:&v89];
  v74 = v89;
  v75 = v74;
  if (v87 && !v74 && v86)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_109);
    }

    v76 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v93 = v86;
      _os_log_impl(&dword_1C0184000, v76, OS_LOG_TYPE_DEFAULT, "NU_RENDER_JOB_DEBUG wrote to %@", buf, 0xCu);
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_109);
    }

    v77 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v93 = v86;
      v94 = 2112;
      v95 = v75;
      _os_log_error_impl(&dword_1C0184000, v77, OS_LOG_TYPE_ERROR, "NU_RENDER_JOB_DEBUG failed to write to disk. path: %@ error: %@", buf, 0x16u);
    }
  }

  v78 = [MEMORY[0x1E696AC08] defaultManager];
  v90 = *MEMORY[0x1E696A350];
  v79 = [(NURenderJob *)self jobCreationDate];
  v91 = v79;
  v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v88 = 0;
  [v78 setAttributes:v80 ofItemAtPath:v86 error:&v88];
  v81 = v88;

  if (v81)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_109);
    }

    v82 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v93 = v86;
      v94 = 2112;
      v95 = v81;
      _os_log_error_impl(&dword_1C0184000, v82, OS_LOG_TYPE_ERROR, "NU_RENDER_JOB_DEBUG failed to update file modification time. path: %@ error: %@", buf, 0x16u);
    }
  }
}

- (void)writeRenderJobDebugTombstone
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(NURenderJob *)self debugFilePath];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\n\n%@\n\nTombstone\n\n%@", v2, v5, @"We write a simple debug file to disk when a job is created - a 'tombstone'.Then fill in that file with more execution details when it completes. If thejob never completes forwhatever reason then the tombstone is all that is left around."];

  v9 = 0;
  LOBYTE(v5) = [v6 writeToFile:v2 atomically:0 encoding:4 error:&v9];
  v7 = v9;
  if ((v5 & 1) == 0)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_109);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v2;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "NU_RENDER_JOB_DEBUG failed to write to disk. path: %@ error: %@", buf, 0x16u);
    }
  }
}

- (void)renderJobDebugResponded
{
  if ([(NURenderJob *)self shouldWriteJobDebugFile])
  {

    [(NURenderJob *)self writeRenderDebugFileToDisk];
  }
}

- (void)renderJobDebugCanceled
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(NURenderJob *)self shouldWriteCanceledJob])
  {

    [(NURenderJob *)self writeRenderDebugFileToDisk];
  }

  else if ([(NURenderJob *)self shouldWriteTombstone])
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(NURenderJob *)self debugFilePath];
    v8 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_109);
      }

      v7 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v6;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "NU_RENDER_JOB_DEBUG could not remove tombstone. error: %@", buf, 0xCu);
      }
    }
  }
}

- (void)renderJobDebugInit
{
  if (renderJobDebugInit_once != -1)
  {
    dispatch_once(&renderJobDebugInit_once, &__block_literal_global_25964);
  }

  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = [(NURenderJob *)self request];
  v5 = [v4 name];

  v6 = [jobCounts objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [jobCounts objectForKeyedSubscript:v5];
    v8 = [v7 unsignedLongValue] + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  v10 = jobCounts;
  v11 = [(NURenderJob *)self request];
  v12 = [v11 name];
  [v10 setObject:v9 forKeyedSubscript:v12];

  objc_sync_exit(v3);
  if (+[NUGlobalSettings renderJobDebugCapture5PercentOfJobs])
  {
    v13 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * v8, 2) < 0xCCCCCCCCCCCCCCDuLL;
  }

  else
  {
    v13 = 1;
  }

  [(NURenderJob *)self setShouldWriteJobDebugFile:v13];
  if ([(NURenderJob *)self shouldWriteTombstone])
  {
    [(NURenderJob *)self writeRenderJobDebugTombstone];
  }

  if (!+[NUGlobalSettings renderJobDebugCaptureOnlyPerfStats])
  {
    v14 = +[NUGlobalSettings renderJobDebugCaptureNodeCache];
    v15 = +[NURenderNodeCache sharedInstance];
    v17 = v15;
    if (v14)
    {
      [v15 debugDescription];
    }

    else
    {
      [v15 description];
    }
    v16 = ;
    [(NURenderJob *)self setNodeCacheAtStartOfJob:v16];
  }
}

uint64_t __49__NURenderJob_DebugAdditions__renderJobDebugInit__block_invoke()
{
  jobCounts = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)shouldWriteCanceledJob
{
  v2 = [(NURenderJob *)self shouldWriteJobDebugFile];
  if (v2)
  {

    LOBYTE(v2) = +[NUGlobalSettings renderJobDebugCaptureCanceledJobs];
  }

  return v2;
}

- (BOOL)shouldWriteTombstone
{
  v2 = [(NURenderJob *)self shouldWriteJobDebugFile];
  if (v2)
  {
    LOBYTE(v2) = !+[NUGlobalSettings renderJobDebugCaptureOnlyPerfStats];
  }

  return v2;
}

- (id)debugFilePath
{
  v3 = +[NUGlobalSettings tempDir];
  v4 = +[NUGlobalSettings tempDir];
  v5 = [v3 substringFromIndex:{objc_msgSend(v4, "length") - 1}];

  if ([v5 isEqual:@"/"])
  {
    v6 = &stru_1F3F4BA98;
  }

  else
  {
    v6 = @"/";
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = +[NUGlobalSettings tempDir];
  v9 = getpid();
  v10 = [(NURenderJob *)self request];
  v11 = [v10 name];
  v12 = [v7 stringWithFormat:@"%@%@%i_%@-j%lld.txt", v8, v6, v9, v11, -[NURenderJob jobNumber](self, "jobNumber")];

  return v12;
}

- (NSMutableString)additionalDebugInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"Render Job Class = %@\n", v5];

  v6 = [(NURenderJob *)self outputGeometry];
  v7 = v6;
  if (v6)
  {
    [v3 appendFormat:@"outputGeometry = %@\n", v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self;
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NURenderJob *)v8 renderedRegion];
      v10 = v9;
      if (v9)
      {
        [v3 appendFormat:@"renderedRegion = %@\n", v9];
      }
    }
  }

  return v3;
}

@end