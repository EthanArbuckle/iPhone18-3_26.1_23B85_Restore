@interface NUVideoCompositor
+ (id)metadataSamplesInWindowForTrackID:(int)a3 fromRequest:(id)a4;
+ (id)videoFramesInWindowForTrackID:(int)a3 fromRequest:(id)a4;
- (BOOL)testAndSetVideoCompositionRequestFinished:(id)a3;
- (NSDictionary)requiredPixelBufferAttributesForRenderContext;
- (NSDictionary)sourcePixelBufferAttributes;
- (NUVideoCompositor)init;
- (id)videoFramesFromRequest:(id)a3;
- (id)videoMetadataSamplesFromRequest:(id)a3;
- (id)videoSampleSlicesFromRequest:(id)a3;
- (void)anticipateRenderingUsingHint:(id)a3;
- (void)cancelAllPendingVideoCompositionRequests;
- (void)failVideoCompositionRequest:(id)a3 error:(id)a4;
- (void)finishCompositionRequest:(id)a3 withComposedVideoFrame:(__CVBuffer *)a4;
- (void)fulfillVideoCompositionRequest:(id)a3;
- (void)setColorSpaceOfDestinationBuffer:(__CVBuffer *)a3 fromPrimarySourceBufferOfRequest:(id)a4;
- (void)startVideoCompositionRequest:(id)a3;
@end

@implementation NUVideoCompositor

- (void)anticipateRenderingUsingHint:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 startCompositionTime];
    [v5 endCompositionTime];
    if ((CMTimeCompare(&time1, &v7) & 0x80000000) == 0)
    {
      [v5 startCompositionTime];
      [v5 endCompositionTime];
      goto LABEL_6;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  memset(&time1, 0, sizeof(time1));
  memset(&v7, 0, sizeof(v7));
  if (CMTimeCompare(&time1, &v7) < 0)
  {
    goto LABEL_8;
  }

  memset(&time1, 0, sizeof(time1));
  memset(&v7, 0, sizeof(v7));
LABEL_6:
  if (CMTimeCompare(&time1, &v7) < 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

LABEL_10:
  self->_playbackDirection = v6;
}

- (void)failVideoCompositionRequest:(id)a3 error:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    [v5 compositionTime];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v7 = *MEMORY[0x1E695E480];
  time = v12;
  v8 = CMTimeCopyDescription(v7, &time);
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
  }

  v9 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = objc_opt_class();
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = v8;
    HIWORD(time.epoch) = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to generate video frame at %{public}@: %{public}@", &time, 0x20u);
  }

  [v5 finishWithError:v6];
}

- (void)setColorSpaceOfDestinationBuffer:(__CVBuffer *)a3 fromPrimarySourceBufferOfRequest:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v48 = a4;
  v5 = [v48 sourceTrackIDs];
  v6 = [v5 count];

  if (!v6)
  {
    v15 = NUAssertLogger_19699();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Track IDs are missing on instruction"];
      *buf = 138543362;
      v50 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_19699();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoCompositor setColorSpaceOfDestinationBuffer:fromPrimarySourceBufferOfRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositor.m", 423, @"Track IDs are missing on instruction", v34, v35, v36, v37, v47);
  }

  v7 = [v48 videoCompositionInstruction];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = NUAssertLogger_19699();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected videoComposition request"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_19699();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoCompositor setColorSpaceOfDestinationBuffer:fromPrimarySourceBufferOfRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositor.m", 426, @"Unexpected videoComposition request", v43, v44, v45, v46, v47);
  }

  v8 = [v7 trackIDForSourceIdentifier:@"video"];
  if (!v8)
  {
    v9 = [v48 sourceTrackIDs];
    v8 = [v9 firstObject];
  }

  v10 = [v48 sourceFrameByTrackID:{objc_msgSend(v8, "intValue")}];
  v11 = *MEMORY[0x1E6965CE8];
  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965CE8]);
  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965F98]);
  v12 = *MEMORY[0x1E6965F30];
  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965F30]);
  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965D88]);
  v13 = *MEMORY[0x1E6965E80];
  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965E80]);
  v14 = CVBufferCopyAttachment(a3, v12, 0);
  if ([v14 isEqualToString:*MEMORY[0x1E6965F80]])
  {
    CVBufferSetAttachment(a3, v12, *MEMORY[0x1E6965F50], kCVAttachmentMode_ShouldPropagate);
    CVBufferRemoveAttachment(a3, v13);
    CVBufferRemoveAttachment(a3, v11);
  }

  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965CD8]);
  NUCopyCVBufferAttachment(v10, a3, *MEMORY[0x1E6965F18]);
}

- (id)videoMetadataSamplesFromRequest:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v3 videoCompositionInstruction];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v3 sourceSampleDataTrackIDs];
  v5 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    allocator = *MEMORY[0x1E695E480];
    v26 = *v33;
    do
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = [v4 sourceIdentifierForMetadataTrackID:v9];
        v11 = [v9 intValue];
        v12 = [v3 sourceTimedMetadataByTrackID:v11];
        if (v12)
        {
          v13 = [NURenderPipelineVideoMetadataSample alloc];
          if (v3)
          {
            [v3 compositionTime];
          }

          else
          {
            memset(time, 0, 24);
          }

          v20 = [(NURenderPipelineVideoMetadataSample *)v13 initWithFrameTime:time metadataGroup:v12];
          [v29 setObject:v20 forKeyedSubscript:v10];
        }

        else
        {
          v14 = v4;
          v15 = MEMORY[0x1E696AEC0];
          v16 = [v3 videoCompositionInstruction];
          v17 = [v16 requiredSourceSampleDataTrackIDs];
          v18 = [v15 stringWithFormat:@"requiredSourceSampleDataTrackIDs: %@", v17];

          v19 = [v3 sourceSampleDataTrackIDs];
          v20 = [v18 stringByAppendingFormat:@" sourceSampleDataTrackIDs: %@", v19];

          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
          }

          v21 = _NULogger;
          v4 = v14;
          v7 = v26;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            if (v3)
            {
              [v3 compositionTime];
            }

            else
            {
              v30 = 0uLL;
              v31 = 0;
            }

            *time = v30;
            *&time[16] = v31;
            v22 = CMTimeCopyDescription(allocator, time);
            *time = 138544130;
            *&time[4] = v22;
            *&time[12] = 1024;
            *&time[14] = v11;
            *&time[18] = 2114;
            *&time[20] = v10;
            v37 = 2114;
            v38 = v20;
            _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "[NUVideoCompositor videoMetadataSamplesFromRequest] skipping metadata sample at %{public}@. metadataGroup is nil for trackID %d (%{public}@),\n DebugInfo: %{public}@", time, 0x26u);
          }

          v6 = v27;
        }

        ++v8;
      }

      while (v6 != v8);
      v23 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      v6 = v23;
    }

    while (v23);
  }

  return v29;
}

- (id)videoFramesFromRequest:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 sourceTrackIDs];
  v5 = [v4 count];

  if (!v5)
  {
    v26 = NUAssertLogger_19699();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Track IDs are missing on instruction"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_19699();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoCompositor videoFramesFromRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositor.m", 356, @"Track IDs are missing on instruction", v38, v39, v40, v41, v42);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v3 videoCompositionInstruction];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [v3 sourceTrackIDs];
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    v43 = 67109378;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        v14 = [v13 intValue];
        v15 = [v7 sourceIdentifierForTrackID:v13];
        if (v15)
        {
          v16 = [v3 sourceFrameByTrackID:v14];
          if (v16)
          {
            v17 = v16;
            v18 = [NURenderPipelineVideoFrame alloc];
            if (v3)
            {
              [v3 compositionTime];
            }

            else
            {
              memset(buf, 0, 24);
            }

            v24 = [(NURenderPipelineVideoFrame *)v18 initWithFrameTime:buf pixelBuffer:v17];
            [v6 setObject:v24 forKeyedSubscript:v15];
          }

          else
          {
            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
            }

            v23 = _NULogger;
            if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              *&buf[4] = v14;
              *&buf[8] = 2114;
              *&buf[10] = v15;
              v20 = v23;
              v21 = "[NUVideoCompositor videoFramesFromRequest] skipping frame. srcPixels is nil for trackID %d (%{public}@)";
              v22 = 18;
              goto LABEL_19;
            }
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
          }

          v19 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v14;
            v20 = v19;
            v21 = "[NUVideoCompositor videoFramesFromRequest] skipping frame. sourceIdentifier is nil for trackID %d";
            v22 = 8;
LABEL_19:
            _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)videoSampleSlicesFromRequest:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v3 = [v65 sourceTrackIDs];
  v4 = [v3 count];

  if (!v4)
  {
    v44 = NUAssertLogger_19699();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Track IDs are missing on instruction"];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v47 = NUAssertLogger_19699();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v48)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v51;
        *&buf[12] = 2114;
        *&buf[14] = v55;
        _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v48)
    {
      v49 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v50;
      _os_log_error_impl(&dword_1C0184000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoCompositor videoSampleSlicesFromRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositor.m", 241, @"Track IDs are missing on instruction", v56, v57, v58, v59, v60);
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__19744;
  v94 = __Block_byref_object_dispose__19745;
  v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v65 videoCompositionInstruction];
  if (([v5 requestedWindowOfSamples] & 1) == 0)
  {
    v29 = v91[5];
    goto LABEL_30;
  }

  v6 = [v5 mainTrackSourceIdentifier];
  v7 = [v5 trackIDForSourceIdentifier:v6];
  v8 = [v7 intValue];
  v64 = v5;

  v61 = [v5 mainTrackSourceIdentifier];
  v9 = [NUVideoCompositor videoFramesInWindowForTrackID:v8 fromRequest:v65];
  v63 = [v9 mutableCopy];

  if ([v63 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v11 = [v5 requiredSourceTrackIDs];
    v12 = [v11 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v12)
    {
      v13 = *v87;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v87 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v86 + 1) + 8 * i);
          v16 = [v15 intValue];
          if (v16 != v8)
          {
            v17 = [v64 sourceIdentifierForTrackID:v15];
            v18 = [NUVideoCompositor videoFramesInWindowForTrackID:v16 fromRequest:v65];
            v19 = [v18 mutableCopy];
            [v10 setObject:v19 forKeyedSubscript:v17];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v12);
    }

    v20 = [v64 requiredSourceSampleDataTrackIDs];
    v21 = [v20 firstObject];
    v22 = [v21 intValue];

    v23 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    v24 = [v64 sourceIdentifierForMetadataTrackID:v23];

    v25 = [NUVideoCompositor metadataSamplesInWindowForTrackID:v22 fromRequest:v65];
    v26 = [v25 mutableCopy];

    v81 = 0;
    v82 = &v81;
    v83 = 0x3810000000;
    v84 = &unk_1C03FE0EF;
    memset(&v85, 0, sizeof(v85));
    CMTimeMake(&v85, 30, 600);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5010000000;
    v97 = &unk_1C03FE0EF;
    memset(&v98, 0, sizeof(v98));
    v27 = [v63 lastObject];
    v28 = v27;
    if (v27)
    {
      [v27 frameTime];
    }

    else
    {
      memset(&start, 0, sizeof(start));
    }

    duration = *(v82 + 4);
    CMTimeRangeMake(&v98, &start, &duration);

    v30 = v63;
    if ([v63 count] < 2)
    {
      goto LABEL_28;
    }

    v31 = [v63 firstObject];
    v32 = [v63 lastObject];
    v33 = v32;
    memset(&start, 0, sizeof(start));
    if (v32)
    {
      [v32 frameTime];
      if (v31)
      {
LABEL_21:
        [v31 frameTime];
LABEL_24:
        CMTimeSubtract(&start, &duration, &rhs);
        v34 = [v63 count];
        duration = start;
        CMTimeMultiplyByRatio(&v77, &duration, 1, v34);
        v35 = v82;
        *(v82 + 4) = v77;
        if (v33)
        {
          [v33 frameTime];
          v35 = v82;
        }

        else
        {
          memset(&duration, 0, sizeof(duration));
        }

        rhs = *(v35 + 4);
        CMTimeRangeMake(&v76, &duration, &rhs);
        v36 = *&buf[8];
        v37 = *&v76.duration.timescale;
        v38 = *&v76.start.epoch;
        *(*&buf[8] + 32) = *&v76.start.value;
        *(v36 + 48) = v38;
        *(v36 + 64) = v37;

        v30 = v63;
LABEL_28:
        v39 = [(NUVideoCompositor *)self playbackDirection];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __50__NUVideoCompositor_videoSampleSlicesFromRequest___block_invoke;
        v66[3] = &unk_1E810ABA8;
        v67 = v61;
        v68 = v30;
        v72 = &v81;
        v73 = buf;
        v75 = v39;
        v40 = v10;
        v69 = v40;
        v41 = v26;
        v70 = v41;
        v42 = v24;
        v71 = v42;
        v74 = &v90;
        [v68 enumerateObjectsWithOptions:2 usingBlock:v66];
        v29 = v91[5];

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v81, 8);

        goto LABEL_29;
      }
    }

    else
    {
      memset(&duration, 0, sizeof(duration));
      if (v31)
      {
        goto LABEL_21;
      }
    }

    memset(&rhs, 0, sizeof(rhs));
    goto LABEL_24;
  }

  v29 = v91[5];
LABEL_29:

  v5 = v64;
LABEL_30:

  _Block_object_dispose(&v90, 8);

  return v29;
}

void __50__NUVideoCompositor_videoSampleSlicesFromRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__19744;
  v36 = __Block_byref_object_dispose__19745;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v33[5] setObject:v5 forKeyedSubscript:*(a1 + 32)];
  if ([*(a1 + 40) count] - 1 != a3)
  {
    v6 = *(*(a1 + 80) + 8);
    if (v5)
    {
      [v5 frameTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    lhs = *(v6 + 32);
    CMTimeSubtract(&v31, &lhs, &rhs);
    *(*(*(a1 + 72) + 8) + 32) = v31;
    if (v5)
    {
      [v5 frameTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    lhs = *(*(*(a1 + 72) + 8) + 32);
    CMTimeRangeMake(&v28, &rhs, &lhs);
    v7 = *(*(a1 + 80) + 8);
    v8 = *&v28.duration.timescale;
    v9 = *&v28.start.epoch;
    v7[2] = *&v28.start.value;
    v7[3] = v9;
    v7[4] = v8;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__NUVideoCompositor_videoSampleSlicesFromRequest___block_invoke_2;
  v24[3] = &unk_1E810AB58;
  v27 = *(a1 + 96);
  v10 = *(a1 + 40);
  v11 = *(a1 + 80);
  v25 = v10;
  v26 = v11;
  v12 = MEMORY[0x1C68D98A0](v24);
  v13 = *(a1 + 48);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__NUVideoCompositor_videoSampleSlicesFromRequest___block_invoke_3;
  v21[3] = &unk_1E810AB80;
  v14 = v12;
  v22 = v14;
  v23 = &v32;
  [v13 enumerateKeysAndObjectsUsingBlock:v21];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [*(a1 + 56) indexOfObjectWithOptions:2 passingTest:v14];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [*(a1 + 56) objectAtIndexedSubscript:v16];
    [v15 setObject:v17 forKeyedSubscript:*(a1 + 64)];

    [*(a1 + 56) removeObjectsInRange:{v16, objc_msgSend(*(a1 + 56), "count") - v16}];
  }

  v18 = [NURenderPipelineVideoSampleSlice alloc];
  v19 = v33[5];
  rhs = *(*(*(a1 + 80) + 8) + 32);
  v20 = [(NURenderPipelineVideoSampleSlice *)v18 initWithFrameTime:&rhs videoFrames:v19 metadataSamples:v15];
  [*(*(*(a1 + 88) + 8) + 40) insertObject:v20 atIndex:0];

  _Block_object_dispose(&v32, 8);
}

BOOL __50__NUVideoCompositor_videoSampleSlicesFromRequest___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(a1 + 48) == 3 && [*(a1 + 32) count] == 1)
  {
    v7 = 1;
  }

  else
  {
    if (v6)
    {
      [v6 frameTime];
    }

    else
    {
      memset(&v11, 0, 24);
    }

    time2 = *(*(*(a1 + 40) + 8) + 32);
    if (CMTimeCompare(&v11.start, &time2) < 0)
    {
      v7 = 0;
      *a4 = 1;
    }

    else
    {
      v8 = *(*(a1 + 40) + 8);
      if (v6)
      {
        [v6 frameTime];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v9 = v8[3];
      *&v11.start.value = v8[2];
      *&v11.start.epoch = v9;
      *&v11.duration.timescale = v8[4];
      v7 = CMTimeRangeContainsTime(&v11, &time2) != 0;
    }
  }

  return v7;
}

void __50__NUVideoCompositor_videoSampleSlicesFromRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 indexOfObjectWithOptions:2 passingTest:*(a1 + 32)];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [v5 objectAtIndexedSubscript:v6];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v9];

    [v5 removeObjectsInRange:{v7, objc_msgSend(v5, "count") - v7}];
  }
}

- (void)finishCompositionRequest:(id)a3 withComposedVideoFrame:(__CVBuffer *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (+[NUGlobalSettings videoCompositorDebugMode]== 2 && NUIsPixelBufferProbablyAllZeros(a4))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
    }

    v6 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = a4;
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "green output frame detected. frame:%@ avRequest:%@", &v7, 0x16u);
    }

    NUDebugWatermarkCVPixelBuffer(a4, 3);
  }

  [v5 finishWithComposedVideoFrame:a4];
}

- (void)fulfillVideoCompositionRequest:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_149_19722);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_149_19722);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_149_19722);
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
  _NUAssertFailHandler("[NUVideoCompositor fulfillVideoCompositionRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoCompositor.m", 222, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (void)cancelAllPendingVideoCompositionRequests
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_pendingRequestsLock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_pendingRequests;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) finishCancelledRequest];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_pendingRequests removeAllObjects];
  os_unfair_lock_unlock(&self->_pendingRequestsLock);
}

- (void)startVideoCompositionRequest:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  add = atomic_fetch_add(&self->_requestCounter, 1uLL);
  v6 = [v4 sourceTrackIDs];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 sourceSampleDataTrackIDs];
    v9 = [v8 count];
    v10 = [v4 videoCompositionInstruction];
    v11 = [v10 requiredSourceSampleDataTrackIDs];
    v12 = [v11 count];

    if (v9 < v12)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
      }

      v13 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "[NUVideoCompositor startVideoCompositionRequest] received request without required sampleData tracks", buf, 2u);
      }
    }

    if (+[NUGlobalSettings videoCompositorDebugMode]== 1)
    {
      v14 = [v4 sourceTrackIDs];
      v15 = [v14 firstObject];
      v16 = [v4 sourceFrameByTrackID:{objc_msgSend(v15, "intValue")}];

      [v4 finishWithComposedVideoFrame:v16];
    }

    else if (+[NUGlobalSettings videoCompositorDebugMode](NUGlobalSettings, "videoCompositorDebugMode") == 2 && ([v4 sourceTrackIDs], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "firstObject"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v4, "sourceFrameByTrackID:", objc_msgSend(v19, "intValue")), v19, v18, NUIsPixelBufferProbablyAllZeros(v20)))
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
      }

      v21 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v20;
        v56 = 2112;
        v57 = v4;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "green input frame detected frame: %@ avRequest: %@", buf, 0x16u);
      }

      v22 = [v4 renderContext];
      v23 = [v22 newPixelBuffer];

      NUDebugWatermarkCVPixelBuffer(v23, 1);
      [v4 finishWithComposedVideoFrame:v23];
      CFRelease(v23);
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_147);
      }

      v24 = _NUScheduleLogger;
      v25 = os_signpost_id_make_with_pointer(v24, v4);
      v26 = v24;
      v27 = v26;
      if (v25 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v29 = v27;
      }

      else
      {
        if (os_signpost_enabled(v26))
        {
          *buf = 134217984;
          v55 = add;
          _os_signpost_emit_with_name_impl(&dword_1C0184000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VideoCompositionRequest", "ID=%llu", buf, 0xCu);
        }

        v28 = v27;
        if (os_signpost_enabled(v28))
        {
          *buf = 134217984;
          v55 = add;
          _os_signpost_emit_with_name_impl(&dword_1C0184000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VideoCompositionRequestQueueDelay", "ID=%llu", buf, 0xCu);
        }
      }

      os_unfair_lock_lock(&self->_pendingRequestsLock);
      [(NSMutableSet *)self->_pendingRequests addObject:v4];
      os_unfair_lock_unlock(&self->_pendingRequestsLock);
      os_unfair_lock_lock(&self->_renderingQueueInitializeLock);
      if (!self->_renderingQueue)
      {
        v30 = [v4 videoCompositionInstruction];
        v31 = [v30 renderJob];
        v32 = [v31 priority];
        v33 = [v32 level];

        v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v35 = v34;
        if (v33 > 3)
        {
          v36 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v36 = dword_1C03C2A60[v33];
        }

        v37 = dispatch_queue_attr_make_with_qos_class(v34, v36, 0);

        v38 = MEMORY[0x1E696AEC0];
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        if (v33 > 3)
        {
          v41 = 0;
        }

        else
        {
          v41 = off_1E8109988[v33];
        }

        v42 = v41;
        v43 = [v38 stringWithFormat:@"%@-RenderingQueue-%@", v40, v42];

        v44 = dispatch_queue_create([v43 UTF8String], v37);
        renderingQueue = self->_renderingQueue;
        self->_renderingQueue = v44;
      }

      os_unfair_lock_unlock(&self->_renderingQueueInitializeLock);
      v46 = self->_renderingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__NUVideoCompositor_startVideoCompositionRequest___block_invoke;
      block[3] = &unk_1E810AB30;
      v52 = v25;
      v53 = add;
      v49 = v27;
      v50 = self;
      v51 = v4;
      v47 = v27;
      dispatch_async(v46, block);
    }
  }

  else
  {
    [v4 finishCancelledRequest];
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_19694);
    }

    v17 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "[NUVideoCompositor startVideoCompositionRequest] received degenerate request. request.sourceTrackIDs.count == 0. treating as canceled.", buf, 2u);
    }
  }
}

void __50__NUVideoCompositor_startVideoCompositionRequest___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = *(a1 + 64);
    v21 = 134217984;
    v22 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v4, OS_SIGNPOST_INTERVAL_END, v5, "VideoCompositionRequestQueueDelay", "ID=%llu", &v21, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v21 = 134217984;
    v22 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VideoCompositionRequestFulfill", "ID=%llu", &v21, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 40) + 32));
  v11 = [*(*(a1 + 40) + 24) containsObject:*(a1 + 48)];
  v12 = *(a1 + 40);
  if (v11)
  {
    [*(v12 + 24) removeObject:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 40) + 32));
    [*(a1 + 40) fulfillVideoCompositionRequest:*(a1 + 48)];
  }

  else
  {
    os_unfair_lock_unlock((v12 + 32));
  }

  v13 = *(a1 + 32);
  v14 = v13;
  v15 = *(a1 + 56);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = *(a1 + 64);
    v21 = 134217984;
    v22 = v16;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v14, OS_SIGNPOST_INTERVAL_END, v15, "VideoCompositionRequestFulfill", "ID=%llu", &v21, 0xCu);
  }

  v17 = *(a1 + 32);
  v18 = v17;
  v19 = *(a1 + 56);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = *(a1 + 64);
    v21 = 134217984;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1C0184000, v18, OS_SIGNPOST_INTERVAL_END, v19, "VideoCompositionRequest", "ID=%llu", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)testAndSetVideoCompositionRequestFinished:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pendingRequestsLock);
  [(NSMutableSet *)self->_pendingRequests removeObject:v4];

  os_unfair_lock_unlock(&self->_pendingRequestsLock);
  return 1;
}

- (NUVideoCompositor)init
{
  v7.receiver = self;
  v7.super_class = NUVideoCompositor;
  v2 = [(NUVideoCompositor *)&v7 init];
  renderingQueue = v2->_renderingQueue;
  v2->_renderingQueue = 0;

  v4 = objc_opt_new();
  pendingRequests = v2->_pendingRequests;
  v2->_pendingRequests = v4;

  *&v2->_pendingRequestsLock._os_unfair_lock_opaque = 0;
  return v2;
}

- (NSDictionary)requiredPixelBufferAttributesForRenderContext
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = +[NUVideoUtilities preferedDestinationPixelFormats];
  if ([(NUVideoCompositor *)self supportsHDROutput])
  {
    v4 = +[NUVideoUtilities preferedDestinationPixelFormatsForHDR];

    v3 = v4;
  }

  v5 = *MEMORY[0x1E69660D8];
  v8[0] = *MEMORY[0x1E6966130];
  v8[1] = v5;
  v9[0] = v3;
  v9[1] = MEMORY[0x1E695E0F8];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (NSDictionary)sourcePixelBufferAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = +[NUVideoUtilities preferredSourcePixelFormats];
  v3 = *MEMORY[0x1E69660D8];
  v6[0] = *MEMORY[0x1E6966130];
  v6[1] = v3;
  v7[0] = v2;
  v7[1] = MEMORY[0x1E695E0F8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)metadataSamplesInWindowForTrackID:(int)a3 fromRequest:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 numberOfSourceSampleBuffersInWindowForTrackID:v4];
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v16 = 0uLL;
      v17 = 0;
      v10 = [v5 sourceTimedMetadataByTrackID:v4 atIndexInWindow:i presentationTimeStamp:&v16];
      if (v10)
      {
        v11 = [NURenderPipelineVideoMetadataSample alloc];
        v14 = v16;
        v15 = v17;
        v12 = [(NURenderPipelineVideoMetadataSample *)v11 initWithFrameTime:&v14 metadataGroup:v10];
        [v6 addObject:v12];
      }
    }
  }

  return v6;
}

+ (id)videoFramesInWindowForTrackID:(int)a3 fromRequest:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 numberOfSourceFramesInWindowForTrackID:v4];
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v17 = 0uLL;
      v18 = 0;
      v10 = [v5 sourceFrameByTrackID:v4 atIndexInWindow:i presentationTimeStamp:&v17];
      if (v10)
      {
        v11 = v10;
        v12 = [NURenderPipelineVideoFrame alloc];
        v15 = v17;
        v16 = v18;
        v13 = [(NURenderPipelineVideoFrame *)v12 initWithFrameTime:&v15 pixelBuffer:v11];
        [v6 addObject:v13];
      }
    }
  }

  return v6;
}

@end