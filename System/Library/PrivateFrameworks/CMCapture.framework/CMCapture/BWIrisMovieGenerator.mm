@interface BWIrisMovieGenerator
+ (uint64_t)_addNewMetadataTrackToAssetWriter:(uint64_t)writer forTrackTimeScale:(unsigned int *)scale yieldingTrackID:;
+ (void)initialize;
- (BOOL)flush;
- (BOOL)flushAsync;
- (BOOL)suspended;
- (char)initWithReadableByteStream:(uint64_t)stream metadataByteStream:(char)byteStream forFrontFacingCamera:(char)camera forExternalCamera:(char)externalCamera clientExpectsCameraMountedInLandscapeOrientation:(char)orientation sampleReferenceMoviesEnabled:(void *)enabled movieGenerationQueue:(void *)queue irisStillImageMovieMetadataCache:(void *)self0 videoOrientationTimeMachine:;
- (double)_findIrisShortestTrackDuration:(CMTime *)duration audioTrackDuration:(char)trackDuration flush:(double)result;
- (uint64_t)_cancelAllPendingIrisMoviesWithError:(uint64_t)result;
- (uint64_t)_completedMovieInfoAndCallbacksForShortestTrackDuration:(__int128 *)duration audioTrackDuration:(char)trackDuration flush:;
- (uint64_t)_doIrisMovieParsing:(uint64_t)parsing;
- (uint64_t)_generateCompletedIrisMovies:(uint64_t)result;
- (uint64_t)_generateIrisMovies:(uint64_t)movies;
- (uint64_t)_generateRefMovieForInfo:(uint64_t)info movieLevelMetadata:(int)metadata generateMetadataMovie:;
- (void)_getAdjustedRefMovieEndTime:(uint64_t)time@<X8>;
- (void)_getAdjustedRefMovieStartTime:(uint64_t)time@<X8>;
- (void)dealloc;
- (void)parseAdditionalFragments;
- (void)setActualMovieStartTime:(id *)time;
- (void)setSuspended:(BOOL)suspended;
- (void)updateOverCaptureQualityScoresForMoviesEndingBefore:(id *)before fromMetadataRingBuffer:(id)buffer;
- (void)writeMovieWithInfo:(id)info completionHandler:(id)handler;
@end

@implementation BWIrisMovieGenerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  byteStream = self->_byteStream;
  if (byteStream)
  {
    CFRelease(byteStream);
  }

  masterMovieReader = self->_masterMovieReader;
  if (masterMovieReader)
  {
    CFRelease(masterMovieReader);
  }

  [(NSMutableArray *)self->_movieInfoAndCallbacks count];

  FigSimpleMutexDestroy();
  FigAtomicDecrement32();
  if (dword_1EB58DEC0)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6.receiver = self;
  v6.super_class = BWIrisMovieGenerator;
  [(BWIrisMovieGenerator *)&v6 dealloc];
}

- (void)writeMovieWithInfo:(id)info completionHandler:(id)handler
{
  FigSimpleMutexLock();
  v7 = [-[NSMutableArray lastObject](self->_movieInfoAndCallbacks "lastObject")];
  if (v7)
  {
    [v7 movieTrimEndTime];
    if (info)
    {
      [info movieTrimEndTime];
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
    }

    CMTimeCompare(&time1, &v10);
  }

  v8 = [BWIrisMovieInfoAndCallback movieInfoAndCallbackWithMovieInfo:info callback:handler, v10.value, *&v10.timescale, v10.epoch];
  [(NSMutableArray *)self->_movieInfoAndCallbacks addObject:v8];
  if ([[(BWIrisMovieInfoAndCallback *)v8 info] numberOfRequestedVariants]< 2)
  {
    numberOfRequestedVariants = 1;
  }

  else
  {
    numberOfRequestedVariants = [[(BWIrisMovieInfoAndCallback *)v8 info] numberOfRequestedVariants];
  }

  self->_numberOfPendingReferenceMovies += numberOfRequestedVariants;
  FigSimpleMutexUnlock();
}

- (void)parseAdditionalFragments
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  movieGenerationQueue = self->_movieGenerationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__BWIrisMovieGenerator_parseAdditionalFragments__block_invoke;
  v5[3] = &unk_1E798F870;
  v5[4] = self;
  fig_dispatch_async_autoreleasepool(movieGenerationQueue, v5);
  if (*v3 == 1)
  {
    kdebug_trace();
  }
}

- (BOOL)flush
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  movieGenerationQueue = self->_movieGenerationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__BWIrisMovieGenerator_flush__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(movieGenerationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return (v3 & 1) == 0;
}

- (BOOL)flushAsync
{
  movieGenerationQueue = self->_movieGenerationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__BWIrisMovieGenerator_flushAsync__block_invoke;
  v6[3] = &unk_1E798F870;
  v6[4] = self;
  fig_dispatch_async_autoreleasepool(movieGenerationQueue, v6);
  FigSimpleMutexLock();
  v4 = [(NSMutableArray *)self->_movieInfoAndCallbacks count]== 0;
  FigSimpleMutexUnlock();
  return v4;
}

- (void)updateOverCaptureQualityScoresForMoviesEndingBefore:(id *)before fromMetadataRingBuffer:(id)buffer
{
  FigSimpleMutexLock();
  v5 = [(NSMutableArray *)self->_movieInfoAndCallbacks count];
  if (v5 - 1 >= 0)
  {
    [-[NSMutableArray objectAtIndexedSubscript:](self->_movieInfoAndCallbacks objectAtIndexedSubscript:{v5 - 1), "overCaptureQualityScore"}];
  }

  FigSimpleMutexUnlock();
}

uint64_t __99__BWIrisMovieGenerator_updateOverCaptureQualityScoresForMoviesEndingBefore_fromMetadataRingBuffer___block_invoke(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, _BYTE *a5)
{
  time1 = *a3;
  v9 = *(a1 + 40);
  result = CMTimeCompare(&time1, &v9);
  if ((result & 0x80000000) != 0)
  {
    return [*(a1 + 32) processMetadata:a2];
  }

  *a5 = 1;
  return result;
}

- (void)setSuspended:(BOOL)suspended
{
  FigSimpleMutexLock();
  self->_suspended = suspended;

  FigSimpleMutexUnlock();
}

- (BOOL)suspended
{
  FigSimpleMutexLock();
  suspended = self->_suspended;
  FigSimpleMutexUnlock();
  return suspended;
}

uint64_t __105__BWIrisMovieGenerator__completedMovieInfoAndCallbacksForShortestTrackDuration_audioTrackDuration_flush___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 processed])
  {
    return 0;
  }

  memset(&v17, 0, sizeof(v17));
  v8 = [a2 info];
  if (v8)
  {
    [v8 movieEndTime];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v9 = [a2 info];
  if (v9)
  {
    [v9 audioOffset];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeAdd(&v17, &lhs, &rhs);
  if (*(a1 + 88))
  {
    return 1;
  }

  memset(&lhs, 0, sizeof(lhs));
  v10 = *(a1 + 32);
  v11 = [a2 info];
  if (!v10)
  {
    goto LABEL_16;
  }

  if (*(v10 + 84))
  {
    lhs = *(v10 + 72);
    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_16:
    memset(&lhs, 0, sizeof(lhs));
    goto LABEL_17;
  }

  [v11 masterMovieStartTime];
LABEL_17:
  time1 = v17;
  v13 = lhs;
  CMTimeSubtract(&rhs, &time1, &v13);
  time1 = *(a1 + 40);
  if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0)
  {
    v12 = [a2 info];
    if (v12)
    {
      [v12 movieEndTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v13 = lhs;
    CMTimeSubtract(&rhs, &time1, &v13);
    time1 = *(a1 + 64);
    if (CMTimeCompare(&rhs, &time1) < 1)
    {
      return 1;
    }
  }

  result = 0;
  *a4 = 1;
  return result;
}

- (void)_getAdjustedRefMovieStartTime:(uint64_t)time@<X8>
{
  if (self)
  {
    *time = *&a2->value;
    *(time + 16) = a2->epoch;
    v22 = 0;
    v20 = 0;
    v21 = 0;
    cf = 0;
    v5 = *(self + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v6 || v6(v5, 0, 1986618469, &v21, &v22))
    {
      [BWIrisMovieGenerator _getAdjustedRefMovieStartTime:];
    }

    else
    {
      v7 = v21;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v8 || v8(v7, &v20))
      {
        [BWIrisMovieGenerator _getAdjustedRefMovieStartTime:];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
        CMTimeMake(&rhs, 5, 1000);
        lhs = *a2;
        CMTimeAdd(&v18, &lhs, &rhs);
        v9 = v20;
        lhs = v18;
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v10 || (rhs = lhs, v10(v9, &rhs, &cf, 0, 0)))
        {
          [BWIrisMovieGenerator _getAdjustedRefMovieStartTime:];
        }

        else
        {
          v15 = *MEMORY[0x1E6960C70];
          v16 = *(MEMORY[0x1E6960C70] + 16);
          v11 = cf;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v12 && !v12(v11, &v15) && (BYTE12(v15) & 1) != 0)
          {
            v13 = v15;
            *time = v15;
            v14 = v16;
            *(time + 16) = v16;
            *&rhs.value = v13;
            rhs.epoch = v14;
            lhs = *a2;
            CMTimeCompare(&rhs, &lhs);
          }

          else
          {
            FigDebugAssert3();
          }
        }
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *time = 0;
    *(time + 8) = 0;
    *(time + 16) = 0;
  }
}

- (void)_getAdjustedRefMovieEndTime:(uint64_t)time@<X8>
{
  if (self)
  {
    *time = *&a2->value;
    *(time + 16) = a2->epoch;
    v24 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v20 = **&MEMORY[0x1E6960C70];
    v19 = v20;
    v18 = v20;
    v5 = *(self + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v6 || v6(v5, 0, 1986618469, &v23, &v24))
    {
      [BWIrisMovieGenerator _getAdjustedRefMovieEndTime:];
    }

    else
    {
      v7 = v23;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v8 || v8(v7, &v22))
      {
        [BWIrisMovieGenerator _getAdjustedRefMovieEndTime:];
      }

      else
      {
        v9 = v22;
        rhs = *a2;
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v10 || (lhs = rhs, v10(v9, &lhs, &v21, 0, 0)))
        {
          [BWIrisMovieGenerator _getAdjustedRefMovieEndTime:];
        }

        else
        {
          v11 = v21;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v12 && !v12(v11, &v20) && (v20.flags & 1) != 0 && (v13 = v21, (v14 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0) && !v14(v13, &v18) && (v18.flags & 1) != 0)
          {
            lhs = v20;
            rhs = v18;
            CMTimeAdd(&v19, &lhs, &rhs);
            v15 = *&v19.value;
            *time = *&v19.value;
            epoch = v19.epoch;
            *(time + 16) = v19.epoch;
            *&lhs.value = v15;
            lhs.epoch = epoch;
            rhs = *a2;
            CMTimeCompare(&lhs, &rhs);
          }

          else
          {
            FigDebugAssert3();
          }
        }
      }
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  else
  {
    *time = 0;
    *(time + 8) = 0;
    *(time + 16) = 0;
  }
}

+ (uint64_t)_addNewMetadataTrackToAssetWriter:(uint64_t)writer forTrackTimeScale:(unsigned int *)scale yieldingTrackID:
{
  objc_opt_self();
  v14 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7 || v7(a2, 1835365473, &v14))
  {
    +[BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:forTrackTimeScale:yieldingTrackID:];
    return 0;
  }

  v8 = v14;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:writer];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10 || v10(a2, v8, *MEMORY[0x1E6971D78], v9))
  {
    +[BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:forTrackTimeScale:yieldingTrackID:];
    return 0;
  }

  v11 = v14;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12 || v12(a2, v11, *MEMORY[0x1E6971D38], *MEMORY[0x1E695E4C0]))
  {
    +[BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:forTrackTimeScale:yieldingTrackID:];
    return 0;
  }

  if (scale)
  {
    *scale = v14;
  }

  return 1;
}

- (void)setActualMovieStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_actualMovieStartTime.epoch = time->var3;
  *&self->_actualMovieStartTime.value = v3;
}

- (char)initWithReadableByteStream:(uint64_t)stream metadataByteStream:(char)byteStream forFrontFacingCamera:(char)camera forExternalCamera:(char)externalCamera clientExpectsCameraMountedInLandscapeOrientation:(char)orientation sampleReferenceMoviesEnabled:(void *)enabled movieGenerationQueue:(void *)queue irisStillImageMovieMetadataCache:(void *)self0 videoOrientationTimeMachine:
{
  selfCopy = self;
  if (self)
  {
    if (a2 && enabled)
    {
      v22.receiver = self;
      v22.super_class = BWIrisMovieGenerator;
      v17 = objc_msgSendSuper2(&v22, sel_init);
      selfCopy = v17;
      if (v17)
      {
        v17[8] = byteStream;
        v17[9] = camera;
        v17[10] = externalCamera;
        v17[11] = orientation;
        *(v17 + 5) = CFRetain(a2);
        *(selfCopy + 12) = FigSimpleMutexCreate();
        *(selfCopy + 13) = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(selfCopy + 15) = enabled;
        v18 = MEMORY[0x1E6960C70];
        *(selfCopy + 72) = *MEMORY[0x1E6960C70];
        *(selfCopy + 11) = *(v18 + 16);
        *(selfCopy + 17) = queue;
        *(selfCopy + 18) = cache;
        v19 = [BWLimitedGMErrorLogger alloc];
        *(selfCopy + 19) = -[BWLimitedGMErrorLogger initWithName:maxLoggingCount:](v19, "initWithName:maxLoggingCount:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%p Live Photo Movie Generator", selfCopy], 10);
        FigAtomicIncrement32();
        if (dword_1EB58DEC0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();

      return 0;
    }
  }

  return selfCopy;
}

- (uint64_t)_generateIrisMovies:(uint64_t)movies
{
  moviesCopy = movies;
  if (!movies)
  {
    return moviesCopy;
  }

  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  if (*(moviesCopy + 57) == 1)
  {
    [(BWIrisMovieGenerator *)moviesCopy _cancelAllPendingIrisMoviesWithError:?];
    suspended = [moviesCopy suspended];
LABEL_10:
    moviesCopy = suspended;
    goto LABEL_11;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  if (![(BWIrisMovieGenerator *)moviesCopy _doIrisMovieParsing:a2])
  {
    v6 = OUTLINED_FUNCTION_46_0();
    [(BWIrisMovieGenerator *)v6 _findIrisShortestTrackDuration:v7 audioTrackDuration:v8 flush:v9, v10];
    v11 = OUTLINED_FUNCTION_46_0();
    v15 = [(BWIrisMovieGenerator *)v11 _completedMovieInfoAndCallbacksForShortestTrackDuration:v12 audioTrackDuration:v13 flush:v14];
    suspended = [(BWIrisMovieGenerator *)moviesCopy _generateCompletedIrisMovies:v15];
    goto LABEL_10;
  }

  moviesCopy = 0;
LABEL_11:
  if (*v4 == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return moviesCopy;
}

void __29__BWIrisMovieGenerator_flush__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [(BWIrisMovieGenerator *)*(a1 + 32) _generateIrisMovies:?];

  objc_autoreleasePoolPop(v2);
}

- (uint64_t)_cancelAllPendingIrisMoviesWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexLock();
    v4 = *(v3 + 104);
    OUTLINED_FUNCTION_43();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = 1;
          [v9 setProcessed:1];
          if ([objc_msgSend(v9 "info")] >= 2)
          {
            v11 = [objc_msgSend(v9 "info")];
          }

          v12 = *(v3 + 112);
          v13 = __OFSUB__(v12, v11);
          v14 = v12 - v11;
          if (v14 < 0 != v13)
          {
            v14 = 0;
          }

          *(v3 + 112) = v14;
          callback = [v9 callback];
          (*(callback + 16))(callback, [v9 info], a2);
          objc_autoreleasePoolPop(v10);
        }

        OUTLINED_FUNCTION_43();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    [*(v3 + 104) removeAllObjects];
    return FigSimpleMutexUnlock();
  }

  return result;
}

- (uint64_t)_doIrisMovieParsing:(uint64_t)parsing
{
  if (!parsing)
  {
    return 0;
  }

  v4 = (parsing + 48);
  if (!*(parsing + 48))
  {
    v12 = *MEMORY[0x1E6971A20];
    v13 = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v5 = FigFormatReaderCreateForStream();
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_18;
    }
  }

  if (*(parsing + 56))
  {
    return 0;
  }

  v11 = 0;
  v7 = *v4;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(v7, 0, &v11);
  }

  else
  {
    v9 = -12782;
  }

  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v9;
  }

  if (v6)
  {
LABEL_18:
    FigDebugAssert3();
    return v6;
  }

  if ((v11 & 4) != 0)
  {
    *(parsing + 56) = 1;
  }

  return v6;
}

- (double)_findIrisShortestTrackDuration:(CMTime *)duration audioTrackDuration:(char)trackDuration flush:(double)result
{
  if (self)
  {
    v20 = **&MEMORY[0x1E6960C88];
    v7 = *MEMORY[0x1E6960C70];
    *&v19.value = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    v19.epoch = v8;
    if (trackDuration)
    {
LABEL_28:
      *a2 = v19;
      result = *&v20.value;
      *duration = v20;
      return result;
    }

    v9 = *(self + 48);
    *&v18.value = v7;
    v18.epoch = v8;
    v26 = 0;
    v27[0] = 0;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v10 || v10(v9, &v26))
    {
      OUTLINED_FUNCTION_1_5();
    }

    else
    {
      if (v26 < 1)
      {
LABEL_25:
        if (v27[0])
        {
          CFRelease(v27[0]);
        }

        v19 = v18;
        goto LABEL_28;
      }

      v11 = 0;
      v12 = *MEMORY[0x1E6973AF8];
      v13 = *MEMORY[0x1E695E480];
      while (1)
      {
        v25 = 0;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v14 || v14(v9, v11, 0, &v25 + 4, &v25))
        {
          break;
        }

        if (HIDWORD(v25) != 1835365473 || (qtrmg_metadataTrackWithIDShouldBePropagated(v9, v25) & 1) != 0)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v15)
          {
            break;
          }

          if (v15(v9, v11, v27, 0, 0))
          {
            break;
          }

          v24 = 0;
          FigBaseObject = FigTrackReaderGetFigBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v17 || v17(FigBaseObject, v12, v13, &v24))
          {
            break;
          }

          memset(&v23, 0, sizeof(v23));
          CMTimeMakeFromDictionary(&v23, v24);
          if (v24)
          {
            CFRelease(v24);
          }

          if (HIDWORD(v25) == 1936684398)
          {
            v20 = v23;
          }

          time1 = v18;
          time2 = v23;
          CMTimeMinimum(&v18, &time1, &time2);
          if (v27[0])
          {
            CFRelease(v27[0]);
            v27[0] = 0;
          }
        }

        if (++v11 >= v26)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_1_5();
    }

    FigDebugAssert3();
    goto LABEL_25;
  }

  return result;
}

- (uint64_t)_completedMovieInfoAndCallbacksForShortestTrackDuration:(__int128 *)duration audioTrackDuration:(char)trackDuration flush:
{
  if (!self)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v8 = *(self + 104);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __105__BWIrisMovieGenerator__completedMovieInfoAndCallbacksForShortestTrackDuration_audioTrackDuration_flush___block_invoke;
  v11[3] = &unk_1E798FB48;
  trackDurationCopy = trackDuration;
  v11[4] = self;
  v12 = *duration;
  v13 = *(duration + 2);
  v14 = *a2;
  v15 = *(a2 + 2);
  v9 = [*(self + 104) objectsAtIndexes:{objc_msgSend(v8, "indexesOfObjectsPassingTest:", v11)}];
  FigSimpleMutexUnlock();
  return v9;
}

- (uint64_t)_generateCompletedIrisMovies:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_43();
    result = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v5 = result;
      v6 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(8 * i);
          v9 = objc_autoreleasePoolPush();
          if ([v3 suspended])
          {
            objc_autoreleasePoolPop(v9);
            return 1;
          }

          [v8 setProcessed:1];
          v10 = v8;
          info = [v8 info];
          v12 = [objc_msgSend(info "settings")];
          v13 = v12;
          if (*(v3 + 136))
          {
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityDisabledIfRequired(v12);
          }

          if ([info isVitalityScoreValid])
          {
            [info vitalityScore];
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityScore(v13, [info vitalityScoringVersion], v14);
          }

          if ([info limitStillImageTransformDuringVitalityPlayback])
          {
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLimitStillImageTransformFlagIfRequired(v13);
          }

          if ([objc_msgSend(info "subjectRelightingResult")])
          {
            [objc_msgSend(info "subjectRelightingResult")];
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSubjectRelightingAppliedCurveParameter(v13, v15);
          }

          if ([objc_msgSend(info "stillImageRequestSettings")])
          {
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSmartStyleMetadata(v13, [objc_msgSend(info "stillImageRequestSettings")], objc_msgSend(objc_msgSend(info, "settings"), "smartStyleRenderingBypassed"));
          }

          [v8 overCaptureQualityScore];
          [v8 overCaptureQualityScore];
          v17 = v16;
          v18 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialOverCaptureQualityScore(v13, [v8 overCaptureQualityScoringVersion], v17);
          v19 = [(BWIrisMovieGenerator *)v3 _generateRefMovieForInfo:info movieLevelMetadata:v18 generateMetadataMovie:0];
          FigSimpleMutexLock();
          if ([objc_msgSend(v8 "info")] < 2)
          {
            v20 = 1;
          }

          else
          {
            v20 = [objc_msgSend(v8 "info")];
          }

          v21 = *(v3 + 112);
          v22 = __OFSUB__(v21, v20);
          v23 = v21 - v20;
          if (v23 < 0 != v22)
          {
            v23 = 0;
          }

          *(v3 + 112) = v23;
          FigSimpleMutexUnlock();
          callback = [v8 callback];
          (*(callback + 16))(callback, info, v19);
          FigSimpleMutexLock();
          [*(v3 + 104) removeObjectIdenticalTo:v8];
          FigSimpleMutexUnlock();

          objc_autoreleasePoolPop(v9);
        }

        OUTLINED_FUNCTION_43();
        v5 = [a2 countByEnumeratingWithState:? objects:? count:?];
        result = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_generateRefMovieForInfo:(uint64_t)info movieLevelMetadata:(int)metadata generateMetadataMovie:
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      [OUTLINED_FUNCTION_23() stillImageCaptureHostTime];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    *&rhs.value = *&lhs.value;
    OUTLINED_FUNCTION_22_0(lhs.epoch);
    CMTimeGetSeconds(v9);
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  if (!a2)
  {
    return 4294950346;
  }

  [a2 masterMovieStartTime];
  if ((v399 & 1) == 0)
  {
    return 4294950346;
  }

  [a2 stillImageCaptureTime];
  if ((v398 & 1) == 0)
  {
    return 4294950346;
  }

  [OUTLINED_FUNCTION_18_3() stillImageCaptureTime];
  [OUTLINED_FUNCTION_23() masterMovieStartTime];
  v10 = OUTLINED_FUNCTION_21_1();
  if (CMTimeCompare(v10, v11) < 1)
  {
    return 4294950346;
  }

  v396 = 0;
  v397 = 0;
  v394 = 0;
  v395 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  *v284 = *MEMORY[0x1E6960C88];
  *&v393.value = *MEMORY[0x1E6960C88];
  v282 = *(MEMORY[0x1E6960C88] + 16);
  v393.epoch = v282;
  *v278 = *MEMORY[0x1E6960C80];
  *&v392.value = *MEMORY[0x1E6960C80];
  v276 = *(MEMORY[0x1E6960C80] + 16);
  v392.epoch = v276;
  v391 = 0;
  v389 = 0;
  v388 = 0;
  v390 = 0;
  v13 = *MEMORY[0x1E695E480];
  v388 = FigReentrantMutexCreateWithFlags();
  v389 = FigConditionVariableCreate();
  v390 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a2 numberOfRequestedVariants] != 1)
  {
    LODWORD(v256) = 0;
    FigDebugAssert3();
    SampleBuffer = FigSignalErrorAtGM();
    [*(selfCopy + 152) logErrorNumber:SampleBuffer errorString:{v256, v4}];
    goto LABEL_120;
  }

  v386 = 0uLL;
  v387 = 0;
  v286 = v4;
  if (*(selfCopy + 84))
  {
    v386 = *(selfCopy + 72);
    v387 = *(selfCopy + 88);
  }

  else
  {
    [a2 masterMovieStartTime];
  }

  [OUTLINED_FUNCTION_18_3() movieStartTime];
  [OUTLINED_FUNCTION_23() movieTrimStartTime];
  v16 = OUTLINED_FUNCTION_21_1();
  v18 = CMTimeCompare(v16, v17);
  [OUTLINED_FUNCTION_18_3() masterMovieStartTime];
  OUTLINED_FUNCTION_41_0();
  v19 = OUTLINED_FUNCTION_21_1();
  v322 = dictionary;
  v330 = selfCopy;
  if (CMTimeCompare(v19, v20))
  {
    OUTLINED_FUNCTION_38_1();
    [OUTLINED_FUNCTION_18_3() masterMovieStartTime];
    OUTLINED_FUNCTION_41_0();
    CMTimeSubtract(&v385, &lhs, &rhs);
    if (dword_1EB58DEC0)
    {
      LODWORD(v370.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_8();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [OUTLINED_FUNCTION_18_3() movieStartTime];
    [OUTLINED_FUNCTION_23() masterMovieStartTime];
    v22 = OUTLINED_FUNCTION_21_1();
    if (!CMTimeCompare(v22, v23))
    {
      *&rhs.value = v386;
      [OUTLINED_FUNCTION_13_5(v387) setMovieStartTime:?];
      if (!v18)
      {
        [a2 movieStartTime];
        *&rhs.value = v381;
        [OUTLINED_FUNCTION_13_5(v382) setMovieTrimStartTime:?];
      }
    }

    *&rhs.value = v386;
    [OUTLINED_FUNCTION_13_5(v387) setMasterMovieStartTime:?];
  }

  if ([a2 temporaryMovieURL])
  {
    temporaryMovieURL = [a2 temporaryMovieURL];
  }

  else
  {
    temporaryMovieURL = [a2 outputMovieURL];
  }

  v25 = temporaryMovieURL;
  [OUTLINED_FUNCTION_18_3() movieTrimStartTime];
  [OUTLINED_FUNCTION_23() masterMovieStartTime];
  v26 = OUTLINED_FUNCTION_21_1();
  CMTimeSubtract(v28, v26, v27);
  *&lhs.value = 0uLL;
  v29 = OUTLINED_FUNCTION_40_0(0);
  [(BWIrisMovieGenerator *)v29 _getAdjustedRefMovieStartTime:v30, v31];
  v380 = rhs;
  [OUTLINED_FUNCTION_18_3() movieTrimEndTime];
  [OUTLINED_FUNCTION_23() masterMovieStartTime];
  v32 = OUTLINED_FUNCTION_21_1();
  CMTimeSubtract(v34, v32, v33);
  *&lhs.value = 0uLL;
  v35 = OUTLINED_FUNCTION_40_0(0);
  [(BWIrisMovieGenerator *)v35 _getAdjustedRefMovieEndTime:v36, v37];
  v379 = rhs;
  v38 = *(selfCopy + 48);
  SampleBuffer = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E6971330], 0}];
  [a2 masterMovieURL];
  TrackCount = FigAssetReaderCreateWithURLAndFormatReader();
  if (TrackCount || (v257 = *MEMORY[0x1E6971580], v260 = 0, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:MEMORY[0x1E695E118]], TrackCount = FigAssetWriterCreateWithURL(), TrackCount) || (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_20_2(), TrackCount = CMNotificationCenterAddListener(), TrackCount) || info && (TrackCount = FigAssetWriterSetFormatWriterProperty(v396, *MEMORY[0x1E6971C00], info), TrackCount) || (TrackCount = FigFormatReaderGetTrackCount(v38, &v394), TrackCount))
  {
    SampleBuffer = TrackCount;
    OUTLINED_FUNCTION_0_14();
    FigDebugAssert3();
    v90 = *(selfCopy + 152);
    goto LABEL_119;
  }

  v40 = v394;
  if (metadata && v394 != 1)
  {
    OUTLINED_FUNCTION_3_6();
    FigDebugAssert3();
    v91 = 0;
    SampleBuffer = 0xFFFFFFFFLL;
    goto LABEL_121;
  }

  *(selfCopy + 64) = -1;
  if (v40 >= 1)
  {
    v294 = v25;
    v41 = 0;
    LODWORD(v311) = 0;
    v305 = 0;
    v42 = 0;
    v328 = 0;
    v43 = 0;
    v266 = *MEMORY[0x1E6971D48];
    v268 = *MEMORY[0x1E6971DB0];
    v290 = *MEMORY[0x1E69739F0];
    v274 = *MEMORY[0x1E6971E20];
    v288 = *MEMORY[0x1E6983518];
    key = *MEMORY[0x1E6971F90];
    v298 = *MEMORY[0x1E6971F88];
    value = *MEMORY[0x1E6971EE8];
    v307 = -1;
    v296 = *MEMORY[0x1E6971D90];
    v270 = *MEMORY[0x1E6971EF0];
    v303 = *MEMORY[0x1E6971D78];
    v292 = *MEMORY[0x1E6971DF8];
    value_low = -1;
    while (1)
    {
      LODWORD(v370.value) = 0;
      LODWORD(type.value) = 0;
      LODWORD(v368.value) = 0;
      LODWORD(v367.value) = 0;
      v44 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v44)
      {
        SampleBuffer = 4294954514;
        goto LABEL_116;
      }

      v45 = v44(v38, v43, 0, &type, &v370);
      if (v45)
      {
        SampleBuffer = v45;
LABEL_116:
        v89 = MEMORY[0x1E696AEC0];
        v257 = v43;
        v87 = @"copy track with index %d";
LABEL_117:
        [v89 stringWithFormat:v87, v257, v260];
        goto LABEL_118;
      }

      v46 = type.value;
      if (!metadata)
      {
        break;
      }

      OUTLINED_FUNCTION_37_3();
      if (v47)
      {
        break;
      }

LABEL_94:
      if (++v43 >= v394)
      {
        goto LABEL_97;
      }
    }

    if (v46 == 1986618469)
    {
      SampleBuffer = v42;
      v42 = (v42 + 1);
      if ([a2 requestedSDOFVariants] == 2 && SampleBuffer)
      {
        goto LABEL_94;
      }

      v47 = [a2 requestedSDOFVariants] != 1 || v42 == 2;
      if (!v47)
      {
        goto LABEL_94;
      }

      LODWORD(v41) = qtrmg_getTrackTimescale(v38, LODWORD(v370.value));
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v47)
      {
        if (!qtrmg_metadataTrackWithIDShouldBePropagated(v38, LODWORD(v370.value)))
        {
          goto LABEL_94;
        }

        if (value_low == -1)
        {
          value_low = SLODWORD(v370.value);
        }
      }
    }

    if (*(selfCopy + 11) == 1)
    {
      if (FigAssetReaderEnableOriginalSampleReferenceExtractionFromTrack(v397, LODWORD(v370.value), &v368))
      {
        OUTLINED_FUNCTION_27();
        [MEMORY[0x1E696AEC0] stringWithFormat:@"enable original sample reference extraction for index %d", v43, 0];
        goto LABEL_118;
      }
    }

    else if (FigAssetReaderEnableOriginalSampleExtractionFromTrack(v397, LODWORD(v370.value), &v368))
    {
      OUTLINED_FUNCTION_27();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"enable original sample extraction for index %d", v43, 0];
LABEL_118:
      v90 = OUTLINED_FUNCTION_24_0();
LABEL_119:
      [v90 logErrorNumber:SampleBuffer errorString:{v257, v260}];
      goto LABEL_120;
    }

    v48 = LODWORD(type.value);
    if (LODWORD(type.value) == 1986618469)
    {
      v307 = SLODWORD(v368.value);
    }

    else if (LODWORD(type.value) == 1936684398)
    {
      *(selfCopy + 64) = SLODWORD(v368.value);
    }

    if (FigAssetWriterAddNativeTrack(v396, v48, &v367))
    {
      OUTLINED_FUNCTION_27();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"add native track for index %d", v43, 0];
      goto LABEL_118;
    }

    v324 = v42;
    v49 = [MEMORY[0x1E696AD98] numberWithLong:v328];
    [dictionary2 setObject:v49 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", LODWORD(v367.value))}];
    v315 = v41;
    if (LODWORD(type.value) != 1635088502)
    {
      if (LODWORD(type.value) != 1986618469)
      {
        if (LODWORD(type.value) == 1936684398)
        {
          CMTimeMake(&rhs, 10, 1);
          v66 = CMTimeCopyAsDictionary(&rhs, v13);
          v67 = OUTLINED_FUNCTION_31_1();
          SampleBuffer = FigAssetWriterSetFormatWriterTrackProperty(v67, v68, v268, v66);
          CFRelease(v66);
          if (SampleBuffer)
          {
            OUTLINED_FUNCTION_45_2();
            v87 = @"set preferred chunk duration for track %d";
            goto LABEL_117;
          }

          *&rhs.value = *MEMORY[0x1E6960CC0];
          OUTLINED_FUNCTION_22_0(*(MEMORY[0x1E6960CC0] + 16));
          v70 = CMTimeCopyAsDictionary(v69, v13);
          v71 = OUTLINED_FUNCTION_31_1();
          SampleBuffer = FigAssetWriterSetFormatWriterTrackProperty(v71, v72, v266, v70);
          CFRelease(v70);
          if (SampleBuffer)
          {
            OUTLINED_FUNCTION_45_2();
            v87 = @"set interleave advance for track %d";
            goto LABEL_117;
          }
        }

        else
        {
          OUTLINED_FUNCTION_37_3();
          if (v47)
          {
            [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", LODWORD(v367.value))}];
            v50 = HIDWORD(v305);
            if (!HIDWORD(v305))
            {
              v50 = v367.value;
            }

            HIDWORD(v305) = v50;
          }
        }

        goto LABEL_90;
      }

      LODWORD(v311) = v367.value;
    }

    selfCopy = v13;
    v51 = FigFormatReaderCopyTrackByID(v38, LODWORD(v370.value), &v395);
    if (v51 || (v52 = [a2 settings], v53 = objc_msgSend(v52, "videoRotationDegrees"), v54 = objc_msgSend(v52, "videoMirrored"), rhs.value = 0, v51 = FigTrackReaderCopyProperty(v395, v290, selfCopy, &rhs), v51))
    {
LABEL_298:
      SampleBuffer = v51;
      OUTLINED_FUNCTION_0_14();
      FigDebugAssert3();
      selfCopy = v330;
      goto LABEL_120;
    }

    SampleBuffer = [objc_msgSend(rhs.value objectForKeyedSubscript:{@"Width", "intValue"}];
    v55 = [objc_msgSend(rhs.value objectForKeyedSubscript:{@"Height", "intValue"}];

    if (BWBuildVideoTrackMatrix(v53, v54, 0, *(v330 + 8), *(v330 + 9), 0, SampleBuffer | (v55 << 32)))
    {
      v56 = OUTLINED_FUNCTION_31_1();
      if (FigAssetWriterSetFormatWriterTrackProperty(v56, v57, v274, v58))
      {
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_45_2();
        [v177 stringWithFormat:@"set track matrix for track %d"];
        [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
        goto LABEL_120;
      }
    }

    LODWORD(v305) = [objc_msgSend(objc_msgSend(objc_msgSend(v52 "videoSettings")];
    lhs.value = 0;
    v13 = selfCopy;
    v51 = FigMetadataCopyTrackQuickTimeMetadata();
    if (v51)
    {
      goto LABEL_298;
    }

    selfCopy = v330;
    if (lhs.value)
    {
      Mutable = CFDictionaryCreateMutable(v13, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, key, lhs.value);
      CFRelease(lhs.value);
      CFDictionaryAddValue(Mutable, v298, value);
      v60 = OUTLINED_FUNCTION_31_1();
      SampleBuffer = FigAssetWriterSetFormatWriterTrackProperty(v60, v61, v296, Mutable);
      CFRelease(Mutable);
      if (SampleBuffer)
      {
        OUTLINED_FUNCTION_3_6();
        goto LABEL_302;
      }
    }

    v385.value = 0;
    v62 = FigMetadataCopyTrackQuickTimeUserdata();
    if (v62)
    {
      goto LABEL_301;
    }

    if (v385.value)
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary3 setObject:v270 forKeyedSubscript:v298];
      [dictionary3 setObject:v385.value forKeyedSubscript:key];
      if (v385.value)
      {
        CFRelease(v385.value);
      }

      v64 = OUTLINED_FUNCTION_31_1();
      v62 = FigAssetWriterSetFormatWriterTrackProperty(v64, v65, v296, dictionary3);
      if (v62)
      {
LABEL_301:
        SampleBuffer = v62;
        OUTLINED_FUNCTION_0_14();
LABEL_302:
        FigDebugAssert3();
LABEL_120:
        v91 = 0;
        goto LABEL_121;
      }
    }

    if (v395)
    {
      CFRelease(v395);
      v395 = 0;
    }

LABEL_90:
    TrackTimescale = qtrmg_getTrackTimescale(v38, LODWORD(v370.value));
    SampleBuffer = LODWORD(v367.value);
    [MEMORY[0x1E696AD98] numberWithInt:TrackTimescale];
    v74 = OUTLINED_FUNCTION_24_0();
    if (FigAssetWriterSetFormatWriterTrackProperty(v74, SampleBuffer, v303, v75))
    {
      OUTLINED_FUNCTION_27();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"set time scale %d for track %d", TrackTimescale, LODWORD(v367.value)];
      goto LABEL_118;
    }

    if (*(selfCopy + 11) == 1)
    {
      [objc_msgSend(v294 "URLByDeletingLastPathComponent")];
      v76 = OUTLINED_FUNCTION_31_1();
      if (FigAssetWriterSetFormatWriterTrackProperty(v76, v77, v292, v78))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_45_2();
        v87 = @"set sample reference base URL for track %d";
        goto LABEL_117;
      }
    }

    ++v328;
    SampleBuffer = 0x1E696A000uLL;
    v79 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(v368.value)];
    [v322 setObject:v79 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", LODWORD(v367.value))}];
    v41 = v315;
    v42 = v324;
    goto LABEL_94;
  }

  value_low = -1;
  v328 = 0;
  v305 = 0;
  v307 = -1;
  LODWORD(v311) = 0;
  v41 = 0;
LABEL_97:
  selfCopy = v13;
  [a2 stillImageCaptureTime];
  if ((v378 & 1) != 0 && (metadata & 1) == 0 && [BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:v396 forTrackTimeScale:v41 yieldingTrackID:&v391 + 1])
  {
    [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", HIDWORD(v391))}];
  }

  SampleBuffer = array2;
  v80 = v322;
  if ([objc_msgSend(a2 "settings")] && *(v330 + 144) && +[BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:forTrackTimeScale:yieldingTrackID:](BWIrisMovieGenerator, v396, v41, &v391))
  {
    [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v391)}];
  }

  allKeys = [v322 allKeys];
  v82 = qtrmg_setupMetadataTrackReferences(v396, v311, array2);
  if (v82)
  {
    SampleBuffer = v82;
    OUTLINED_FUNCTION_0_14();
    FigDebugAssert3();
    selfCopy = v330;
    v90 = *(v330 + 152);
    goto LABEL_119;
  }

  memset(&v377, 0, sizeof(v377));
  rhs = v380;
  CMTimeConvertScale(&v377, &rhs, v41, kCMTimeRoundingMethod_QuickTime);
  v376 = v379;
  memset(&v375, 0, sizeof(v375));
  [a2 audioOffset];
  if (v374)
  {
    [OUTLINED_FUNCTION_18_3() audioOffset];
    lhs = v376;
    CMTimeAdd(&v375, &lhs, &rhs);
  }

  else
  {
    v375 = v376;
  }

  OUTLINED_FUNCTION_5_11();
  CMTimeConvertScale(&v376, &rhs, v83, kCMTimeRoundingMethod_QuickTime);
  lhs = v375;
  CMTimeConvertScale(&rhs, &lhs, v377.timescale, kCMTimeRoundingMethod_QuickTime);
  v375 = rhs;
  rhs = v377;
  lhs = v375;
  if (FigAssetReaderStartExtractionForTimeRange(v397, &rhs.value, &lhs.value))
  {
    OUTLINED_FUNCTION_35();
    v84 = MEMORY[0x1E696AEC0];
    *&rhs.value = *&v377.value;
    OUTLINED_FUNCTION_22_0(v377.epoch);
    Seconds = CMTimeGetSeconds(v85);
    OUTLINED_FUNCTION_5_11();
    v257 = *&Seconds;
    v260 = CMTimeGetSeconds(&rhs);
    v87 = @"start extraction %.4lf to %.4lf";
LABEL_114:
    v89 = v84;
    goto LABEL_117;
  }

  rhs = v377;
  if (FigAssetWriterBeginSession(v396, &rhs.value))
  {
    OUTLINED_FUNCTION_35();
    v84 = MEMORY[0x1E696AEC0];
    *&rhs.value = *&v377.value;
    OUTLINED_FUNCTION_22_0(v377.epoch);
    v257 = CMTimeGetSeconds(v88);
    v87 = @"begin session from %.4lf";
    goto LABEL_114;
  }

  keya = allKeys;
  if (v328 <= 0)
  {
    OUTLINED_FUNCTION_3_6();
    FigDebugAssert3();
    v91 = 0;
    SampleBuffer = 0xFFFFFFFFLL;
    goto LABEL_320;
  }

  v95 = OUTLINED_FUNCTION_57_1(24 * v328, 0x504FFAC1u);
  v96 = *MEMORY[0x1E6960C70];
  v97 = *(MEMORY[0x1E6960C70] + 16);
  v304 = v95;
  v98 = v95;
  v99 = v328;
  do
  {
    *v98 = v96;
    v98[2] = v97;
    v98 += 3;
    --v99;
  }

  while (v99);
  *v325 = v96;
  HIDWORD(v313) = v41;
  if (![v322 count])
  {
    SampleBuffer = 0;
    goto LABEL_229;
  }

  v100 = *MEMORY[0x1E6960560];
  v311 = *MEMORY[0x1E6960558];
  while (1)
  {
    v373 = 0;
    v101 = qtrmg_trackIDForNextTrackBelowWater(&v388, &v373);
    if (v101)
    {
      SampleBuffer = v101;
      OUTLINED_FUNCTION_0_14();
      FigDebugAssert3();
      selfCopy = v330;
      v182 = *(v330 + 152);
LABEL_248:
      [v182 logErrorNumber:SampleBuffer errorString:?];
LABEL_280:
      v91 = v304;
      goto LABEL_121;
    }

    v102 = v373;
    intValue = [v373 intValue];
    if ([v80 objectForKeyedSubscript:v102])
    {
      break;
    }

    SampleBuffer = 0;
LABEL_144:
    if (![v80 count])
    {
LABEL_229:
      i = 0x1E696A000uLL;
      v168 = v328;
      selfCopy = v330;
      v169 = HIDWORD(v313);
      if (![array2 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", HIDWORD(v391))}])
      {
        goto LABEL_249;
      }

      OUTLINED_FUNCTION_28_0();
      [OUTLINED_FUNCTION_23() stillImageCaptureTime];
      [a2 masterMovieStartTime];
      v170 = OUTLINED_FUNCTION_52_1();
      CMTimeSubtract(v172, v170, v171);
      data = *(v330 + 136);
      if (data)
      {
        v174 = [data copyAndClearStillImageTransformDataForSettingsID:{objc_msgSend(a2, "livePhotoMetadataStillImageKeyFrameSettingsID")}];
        if (v174)
        {
          data = v174;
        }

        else
        {
          data = [MEMORY[0x1E695DEF0] data];
          if (!data)
          {
            goto LABEL_245;
          }
        }

        settings = [a2 settings];
        [objc_msgSend(objc_msgSend(settings "videoSettings")];
        [objc_msgSend(objc_msgSend(settings "videoSettings")];
        v169 = HIDWORD(v313);
        i = 0x1E696A000;
      }

LABEL_245:
      OUTLINED_FUNCTION_12_3();
      SampleBuffer = qtrmg_writeStillImageTimeMetadataSample(v179, v180, &lhs.value, data, v181, v169);
      if (SampleBuffer)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"write still image metadata to track %d", HIDWORD(v391)];
LABEL_247:
        v182 = OUTLINED_FUNCTION_24_0();
        goto LABEL_248;
      }

LABEL_249:
      v91 = v304;
      if (![array2 containsObject:{objc_msgSend(*(i + 3480), "numberWithInt:", v391)}])
      {
LABEL_256:
        OUTLINED_FUNCTION_5_11();
        if (FigAssetWriterEndSession(v186, &rhs.value))
        {
          OUTLINED_FUNCTION_27();
          v187 = MEMORY[0x1E696AEC0];
          OUTLINED_FUNCTION_5_11();
          [v187 stringWithFormat:@"end session to %.4lf", CMTimeGetSeconds(&rhs)];
          goto LABEL_258;
        }

        OUTLINED_FUNCTION_5_11();
        OUTLINED_FUNCTION_10_3();
        v189 = OUTLINED_FUNCTION_21_1();
        v192 = CMTimeSubtract(v191, v189, v190);
        v200 = OUTLINED_FUNCTION_53_2(v192, v193, v194, v195, v196, v197, v198, v199, v257, v260, v262, v264, v266, v268, v270, value, v274, v276, v278[0], v278[1], v280, v282, v284[0], v284[1], v286, v288, v290, v292, v294, v296, v298, keya, v304, v305, v307, array2, v311, v313, value_low, dictionary2, array, v322, v325[0], v325[1], v328, v330, v331, v333, v335, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, 0);
        v201 = MEMORY[0x1E6971CE0];
        if (v200)
        {
          v202 = v200;
          v203 = MEMORY[0];
          v326 = *MEMORY[0x1E6971CE0];
          SampleBuffer = 24;
          while (2)
          {
            for (i = 0; i != v202; ++i)
            {
              if (MEMORY[0] != v203)
              {
                objc_enumerationMutation(keyb);
              }

              v204 = *(8 * i);
              v205 = [objc_msgSend(v319 objectForKeyedSubscript:{v204), "integerValue"}];
              if (v205 >= v168)
              {
                SampleBuffer = 0;
                goto LABEL_280;
              }

              v206 = v304 + 24 * v205;
              v370.value = *v206;
              v370.timescale = *(v206 + 8);
              v207 = *(v206 + 12);
              if (v207)
              {
                v216 = *(v206 + 16);
                OUTLINED_FUNCTION_28_0();
                OUTLINED_FUNCTION_10_3();
                v385.value = v370.value;
                v385.timescale = v370.timescale;
                v385.flags = v207;
                v385.epoch = v216;
                v217 = OUTLINED_FUNCTION_52_1();
                CMTimeSubtract(v219, v217, v218);
                OUTLINED_FUNCTION_12_3();
                if (CMTimeGetSeconds(&lhs) > 0.0005)
                {
                  OUTLINED_FUNCTION_12_3();
                  v385 = **&MEMORY[0x1E6960CC0];
                  v220 = OUTLINED_FUNCTION_52_1();
                  if (CMTimeCompare(v220, v221) < 1)
                  {
                    v225 = MEMORY[0x1E696AEC0];
                    lhs.value = v370.value;
                    lhs.timescale = v370.timescale;
                    lhs.flags = v207;
                    lhs.epoch = v216;
                    v226 = CMTimeGetSeconds(&lhs);
                    OUTLINED_FUNCTION_10_3();
                    v227 = CMTimeGetSeconds(&lhs);
                    OUTLINED_FUNCTION_12_3();
                    v265 = v204;
                    v261 = *&v227;
                    v263 = -CMTimeGetSeconds(&lhs);
                    p_lhs = *&v226;
                    [v225 stringWithFormat:@"Earliest read PTS %.4lf is larger than from value %.4lf by %.4lf for track %@, not able to make an edit"];
                    v208 = [OUTLINED_FUNCTION_24_0() logErrorNumber:0xFFFFFFFFLL errorString:?];
                  }

                  else
                  {
                    memset(&lhs, 0, sizeof(lhs));
                    OUTLINED_FUNCTION_44_1();
                    v222 = OUTLINED_FUNCTION_52_1();
                    v224 = BWTrackEditListArrayForRegularTrackInIrisMovie(v222, v223);
                    SampleBuffer = v396;
                    v208 = FigAssetWriterSetFormatWriterTrackProperty(v396, [(CMTime *)v204 intValue], v326, v224);
                    if (v208)
                    {
                      OUTLINED_FUNCTION_27();
                      [MEMORY[0x1E696AEC0] stringWithFormat:@"set edit list for track %d", -[CMTime intValue](v204, "intValue")];
                      [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
                      goto LABEL_280;
                    }
                  }
                }

                v168 = v329;
                SampleBuffer = 24;
              }

              else
              {
                p_lhs = v204;
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Earliest read PTS not available for track %@, not able to make an edit"];
                v208 = [OUTLINED_FUNCTION_24_0() logErrorNumber:0xFFFFFFFFLL errorString:?];
              }
            }

            v202 = OUTLINED_FUNCTION_53_2(v208, v209, v210, v211, v212, v213, v214, v215, p_lhs, v261, *&v263, v265, v267, v269, v271, valuea, v275, v277, v279[0], v279[1], v281, v283, v285[0], v285[1], v287, v289, v291, v293, v295, v297, v299, keyb, v304, v306, v308, v310, v312, v314, v317, v319, v321, v323, v326, v327, v329, v330, v332, v334, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v362, v363);
            v201 = MEMORY[0x1E6971CE0];
            if (v202)
            {
              continue;
            }

            break;
          }
        }

        if (HIDWORD(v391))
        {
          v228 = BWTrackEditListArrayForStillImageDisplayTimeTrackInIrisTrimmedMovie(a2, SHIDWORD(v314));
          if (FigAssetWriterSetFormatWriterTrackProperty(v396, HIDWORD(v391), *v201, v228))
          {
            OUTLINED_FUNCTION_27();
            [MEMORY[0x1E696AEC0] stringWithFormat:@"set edit list for still image track %d", HIDWORD(v391)];
            goto LABEL_247;
          }
        }

        v229 = FigAssetWriterFinish(v396);
        v91 = v304;
        if (v229 || (FigBaseObject = FigAssetReaderGetFigBaseObject(), v229 = CMBaseObjectInvalidate(FigBaseObject), v229) || (v231 = FigAssetWriterGetFigBaseObject(), v229 = CMBaseObjectInvalidate(v231), v229))
        {
          SampleBuffer = v229;
          OUTLINED_FUNCTION_0_14();
          FigDebugAssert3();
          v188 = *(selfCopy + 152);
          goto LABEL_259;
        }

        OUTLINED_FUNCTION_51();
        *&lhs.value = *v285;
        lhs.epoch = v283;
        v232 = OUTLINED_FUNCTION_21_1();
        if (!CMTimeCompare(v232, v233) || (OUTLINED_FUNCTION_50(), *&lhs.value = *v279, lhs.epoch = v277, v234 = OUTLINED_FUNCTION_21_1(), !CMTimeCompare(v234, v235)))
        {
          SampleBuffer = 0;
          goto LABEL_121;
        }

        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_10_3();
        v236 = OUTLINED_FUNCTION_21_1();
        CMTimeSubtract(v238, v236, v237);
        memset(&v370, 0, sizeof(v370));
        [OUTLINED_FUNCTION_18_3() movieStartTime];
        lhs = v385;
        v239 = OUTLINED_FUNCTION_21_1();
        CMTimeAdd(v241, v239, v240);
        if (([a2 containsTrims] & 1) == 0)
        {
          if (dword_1EB58DEC0)
          {
            LODWORD(v368.value) = 0;
            LOBYTE(v367.value) = 0;
            v242 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_55(v242);
            OUTLINED_FUNCTION_29();
            if (i)
            {
              [OUTLINED_FUNCTION_18_3() movieTrimStartTime];
              CMTimeGetSeconds(&rhs);
              OUTLINED_FUNCTION_15_0();
              CMTimeGetSeconds(&rhs);
              [OUTLINED_FUNCTION_23() movieTrimStartTime];
              OUTLINED_FUNCTION_34();
              CMTimeGetSeconds(&rhs);
              LODWORD(lhs.value) = 136316162;
              OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v261, *&v263, v265, v267, v269, v271, valuea, v275, v277, v279[0], v279[1], v281, v283, v285[0], v285[1], v287, v289, v291, v293, v295, v297, v299, keyb, v304, v306, v308, v310, v312, v314, v317, v319, v321, v323, v326, v327, v329, v330);
              OUTLINED_FUNCTION_49(v243);
              OUTLINED_FUNCTION_14_0();
            }

            OUTLINED_FUNCTION_7_8();
            OUTLINED_FUNCTION_56_0();
          }

          *&rhs.value = *&v370.value;
          [OUTLINED_FUNCTION_13_5(v370.epoch) setMovieTrimStartTime:?];
        }

        if (dword_1EB58DEC0)
        {
          LODWORD(v368.value) = 0;
          LOBYTE(v367.value) = 0;
          v244 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_55(v244);
          OUTLINED_FUNCTION_29();
          if (i)
          {
            [OUTLINED_FUNCTION_18_3() movieStartTime];
            CMTimeGetSeconds(&rhs);
            OUTLINED_FUNCTION_15_0();
            CMTimeGetSeconds(&rhs);
            [OUTLINED_FUNCTION_23() movieStartTime];
            OUTLINED_FUNCTION_34();
            CMTimeGetSeconds(&rhs);
            [a2 description];
            LODWORD(lhs.value) = 136316418;
            OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v261, *&v263, v265, v267, v269, v271, valuea, v275, v277, v279[0], v279[1], v281, v283, v285[0], v285[1], v287, v289, v291, v293, v295, v297, v299, keyb, v304, v306, v308, v310, v312, v314, v317, v319, v321, v323, v326, v327, v329, v330);
            OUTLINED_FUNCTION_33_2(v245);
            p_lhs = &lhs;
            OUTLINED_FUNCTION_14_0();
          }

          OUTLINED_FUNCTION_7_8();
          OUTLINED_FUNCTION_56_0();
        }

        *&rhs.value = *&v370.value;
        [OUTLINED_FUNCTION_13_5(v370.epoch) setMovieStartTime:?];
        memset(&type, 0, sizeof(type));
        OUTLINED_FUNCTION_50();
        lhs = v393;
        v246 = OUTLINED_FUNCTION_21_1();
        CMTimeSubtract(v248, v246, v247);
        memset(&v368, 0, sizeof(v368));
        [OUTLINED_FUNCTION_18_3() movieStartTime];
        lhs = type;
        v249 = OUTLINED_FUNCTION_21_1();
        CMTimeAdd(v251, v249, v250);
        if (([a2 containsTrims] & 1) == 0)
        {
          if (dword_1EB58DEC0)
          {
            LODWORD(v365.value) = 0;
            LOBYTE(v364.value) = 0;
            v252 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_54_2(v252);
            OUTLINED_FUNCTION_29();
            if (i)
            {
              [OUTLINED_FUNCTION_18_3() movieTrimEndTime];
              CMTimeGetSeconds(&rhs);
              OUTLINED_FUNCTION_9_2();
              CMTimeGetSeconds(&rhs);
              [OUTLINED_FUNCTION_23() movieTrimEndTime];
              OUTLINED_FUNCTION_25();
              CMTimeSubtract(&rhs, &v367, &lhs);
              CMTimeGetSeconds(&rhs);
              LODWORD(lhs.value) = 136316162;
              OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v261, *&v263, v265, v267, v269, v271, valuea, v275, v277, v279[0], v279[1], v281, v283, v285[0], v285[1], v287, v289, v291, v293, v295, v297, v299, keyb, v304, v306, v308, v310, v312, v314, v317, v319, v321, v323, v326, v327, v329, v330);
              OUTLINED_FUNCTION_49(v253);
              OUTLINED_FUNCTION_14_0();
            }

            OUTLINED_FUNCTION_7_8();
            OUTLINED_FUNCTION_56_0();
          }

          [a2 setMovieTrimEndTime:{&rhs, OUTLINED_FUNCTION_9_2().n128_f64[0]}];
        }

        if (dword_1EB58DEC0)
        {
          LODWORD(v365.value) = 0;
          LOBYTE(v364.value) = 0;
          v254 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_54_2(v254);
          OUTLINED_FUNCTION_29();
          if (i)
          {
            [OUTLINED_FUNCTION_18_3() movieEndTime];
            CMTimeGetSeconds(&rhs);
            OUTLINED_FUNCTION_9_2();
            CMTimeGetSeconds(&rhs);
            [OUTLINED_FUNCTION_23() movieEndTime];
            OUTLINED_FUNCTION_25();
            CMTimeSubtract(&rhs, &v367, &lhs);
            CMTimeGetSeconds(&rhs);
            [a2 description];
            LODWORD(lhs.value) = 136316418;
            OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v261, *&v263, v265, v267, v269, v271, valuea, v275, v277, v279[0], v279[1], v281, v283, v285[0], v285[1], v287, v289, v291, v293, v295, v297, v299, keyb, v304, v306, v308, v310, v312, v314, v317, v319, v321, v323, v326, v327, v329, v330);
            OUTLINED_FUNCTION_33_2(v255);
            OUTLINED_FUNCTION_14_0();
          }

          OUTLINED_FUNCTION_7_8();
          OUTLINED_FUNCTION_56_0();
        }

        [a2 setMovieEndTime:{&rhs, OUTLINED_FUNCTION_9_2().n128_f64[0]}];
        SampleBuffer = 0;
        v91 = v304;
LABEL_320:
        selfCopy = v330;
        goto LABEL_121;
      }

      v183 = *(v330 + 144);
      [OUTLINED_FUNCTION_18_3() masterMovieStartTime];
      OUTLINED_FUNCTION_10_3();
      v385 = v376;
      i = [v183 copyVideoOrientationSbufFromPTS:&lhs toPTS:&v385 referencePTS:&rhs];
      if ([i count])
      {
        OUTLINED_FUNCTION_5_11();
        if (!qtrmg_writeVideoOrientationMetadataSamples(v184, v185, i, &rhs))
        {
LABEL_255:

          goto LABEL_256;
        }

        OUTLINED_FUNCTION_27();
        [MEMORY[0x1E696AEC0] stringWithFormat:@"write video orientation metadata to track %d", v391];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"copy video orientation samples from %@", *(v330 + 144)];
      }

      [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
      goto LABEL_255;
    }
  }

  v104 = [objc_msgSend(v80 objectForKeyedSubscript:{v102), "intValue"}];
  v372 = 0;
  if (FigAssetWriterIsTrackQueueAboveHighWaterLevel(v396, intValue))
  {
LABEL_141:
    SampleBuffer = 0;
LABEL_142:
    v80 = v322;
    [v322 removeObjectsForKeys:array];
    [array removeAllObjects];
    goto LABEL_144;
  }

  while (1)
  {
    sbuf = 0;
    SampleBuffer = FigAssetReaderExtractAndRetainNextSampleBuffer(v397, v104, &v372, &sbuf);
    if (SampleBuffer)
    {
      v105 = 84;
      if (!v372)
      {
        v105 = 70;
      }

      v260 = v105;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"extract next sample for %d (complete %c)", v104];
      [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
    }

    else if (value_low <= v104 && CMSampleBufferGetNumSamples(sbuf) == 1)
    {
      OUTLINED_FUNCTION_5_11();
      v166 = qtrmg_createTrimmedSampleBufferIfNeeded(v165, &rhs);
      if (v166)
      {
        v106 = v166;
        CFRelease(sbuf);
        sbuf = v106;
        OUTLINED_FUNCTION_28_0();
LABEL_153:
        CMSampleBufferGetPresentationTimeStamp(&rhs, v106);
        goto LABEL_155;
      }
    }

    v106 = sbuf;
    OUTLINED_FUNCTION_28_0();
    if (v106)
    {
      goto LABEL_153;
    }

    OUTLINED_FUNCTION_36_1(0, v107, v108, v109, v110, v111, v112, v113, v257, v260, v262, v264, v266, v268, v270, value, v274, v276, v278[0], v278[1], v280, v282, v284[0], v284[1], v286, v288, v290, v292, v294, v296, v298, keya, v304, v305, v307, array2, v311, v313, value_low, dictionary2, array, v322, v114);
LABEL_155:
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_38_1();
    if (v115)
    {
      CMSampleBufferGetDecodeTimeStamp(&v385, v115);
      memset(&v370, 0, sizeof(v370));
      if (sbuf)
      {
        CMSampleBufferGetDuration(&v370, sbuf);
        goto LABEL_160;
      }
    }

    else
    {
      *&v385.value = *v325;
      v385.epoch = v97;
    }

    *&v370.value = *v325;
    v370.epoch = v97;
LABEL_160:
    memset(&type, 0, sizeof(type));
    if (v370.flags)
    {
      OUTLINED_FUNCTION_16_6();
      v367 = v370;
      CMTimeAdd(&type, &v368, &v367);
    }

    else
    {
      type = rhs;
    }

    if ((v385.flags & 1) == 0)
    {
      OUTLINED_FUNCTION_44_1();
    }

    if (CMGetAttachment(sbuf, v100, 0))
    {
      v116 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_16_6();
      *&v367.value = *&v377.value;
      OUTLINED_FUNCTION_11_4(v377.epoch);
      v116 = CMTimeCompare(v117, v118) >= 0;
    }

    v119 = *(v330 + 64);
    if (v119 & 0x8000000000000000) == 0 && v119 == v104 && (rhs.flags)
    {
      v366 = 0;
      memset(&v368, 0, sizeof(v368));
      [a2 audioOffset];
      v365 = rhs;
      CMTimeSubtract(&v368, &v365, &v367);
      memset(&v367, 0, sizeof(v367));
      if (v370.flags)
      {
        OUTLINED_FUNCTION_42_0();
        v364 = v370;
        CMTimeAdd(&v367, &v365, &v364);
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      *&v365.value = *&v367.value;
      v127 = OUTLINED_FUNCTION_32(v367.epoch);
      v129 = sbuf;
      if (v127 < 0)
      {
        if (sbuf)
        {
          CFRelease(sbuf);
          sbuf = 0;
        }

        *&v370.value = OUTLINED_FUNCTION_36_1(v129, v120, v121, v122, v123, v124, v125, v126, v257, v260, v262, v264, v266, v268, v270, value, v274, v276, v278[0], v278[1], v280, v282, v284[0], v284[1], v286, v288, v290, v292, v294, v296, v298, keya, v304, v305, v307, array2, v311, v313, value_low, dictionary2, array, v322, v128);
        v370.epoch = v97;
        *&type.value = *&v370.value;
        type.epoch = v97;
      }

      else if (sbuf)
      {
        OUTLINED_FUNCTION_42_0();
        *&v364.value = *v325;
        v364.epoch = v97;
        SampleBuffer = BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v130, &v365, &v364.value, &v366);
        CFRelease(sbuf);
        sbuf = v366;
        v131 = OUTLINED_FUNCTION_9_2();
        type = v367;
        *&v365.value = v131;
        v116 = OUTLINED_FUNCTION_32(v132) > 0;
      }
    }

    v133 = CMGetAttachment(sbuf, v311, 0) != 0;
    if ((rhs.flags & 1) == 0)
    {
      goto LABEL_181;
    }

    if (*(v330 + 64) == v104)
    {
      *&v368.value = *&rhs.value;
      epoch = rhs.epoch;
LABEL_185:
      OUTLINED_FUNCTION_4_16(epoch);
      if (CMTimeCompare(v135, v136) > 0)
      {
        goto LABEL_186;
      }

      goto LABEL_181;
    }

    if (v307 == v104)
    {
      if (v305)
      {
        if (CMSampleBufferGetNumSamples(sbuf) >= 1)
        {
          OUTLINED_FUNCTION_30_0();
          OUTLINED_FUNCTION_4_16(v157);
          if (CMTimeCompare(v158, v159) >= 1)
          {
            if (CMGetAttachment(sbuf, v100, 0))
            {
              CMRemoveAttachment(sbuf, v100);
            }

            v133 = 1;
          }
        }

        goto LABEL_181;
      }

      OUTLINED_FUNCTION_30_0();
      goto LABEL_185;
    }

    if (intValue >= SHIDWORD(v305))
    {
      *&v368.value = *&rhs.value;
      OUTLINED_FUNCTION_4_16(rhs.epoch);
      if ((CMTimeCompareApproximately(v163, v164) & 0x80000000) == 0)
      {
LABEL_186:
        v145 = sbuf;
        if (sbuf)
        {
          CFRelease(sbuf);
          sbuf = 0;
        }

        v372 = 1;
        OUTLINED_FUNCTION_36_1(v145, v137, v138, v139, v140, v141, v142, v143, v257, v260, v262, v264, v266, v268, v270, value, v274, v276, v278[0], v278[1], v280, v282, v284[0], v284[1], v286, v288, v290, v292, v294, v296, v298, keya, v304, v305, v307, array2, v311, v313, value_low, dictionary2, array, v322, v144);
LABEL_189:
        FigAssetWriterMarkEndOfDataForTrack(v396, intValue);
        [array addObject:v373];
        goto LABEL_190;
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_4_16(v160);
      if (CMTimeCompare(v161, v162) >= 1)
      {
        goto LABEL_186;
      }
    }

LABEL_181:
    if (v372)
    {
      goto LABEL_189;
    }

LABEL_190:
    if (!sbuf)
    {
      goto LABEL_207;
    }

    if (CMSampleBufferGetNumSamples(sbuf) < 1)
    {
      goto LABEL_206;
    }

    v146 = FigAssetWriterAddSampleBuffer(v396, intValue, sbuf);
    if (v146)
    {
      break;
    }

    if ((rhs.flags & 0x1D) == 1)
    {
      if (v116)
      {
        OUTLINED_FUNCTION_16_6();
        *&v367.value = *&v393.value;
        OUTLINED_FUNCTION_11_4(v393.epoch);
        if (CMTimeCompare(v147, v148) < 0)
        {
          v393 = rhs;
        }
      }

      if ((type.flags & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_30_0();
        v368.epoch = v149;
        *&v367.value = *&v392.value;
        OUTLINED_FUNCTION_11_4(v392.epoch);
        if (CMTimeCompare(v150, v151) >= 1 && !v133)
        {
          v392 = type;
        }
      }

      if ((v370.flags & 1) == 0)
      {
        v257 = intValue;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"wrote sample with no duration to track %d"];
        [OUTLINED_FUNCTION_24_0() logErrorNumber:0 errorString:?];
      }

      v152 = v304 + 24 * [objc_msgSend(dictionary2 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", intValue)), "integerValue"}];
      v365.value = *v152;
      v365.timescale = *(v152 + 8);
      v153 = *(v152 + 12);
      if ((v153 & 1) == 0 || (v154 = *(v152 + 16), v368.value = v365.value, v368.timescale = v365.timescale, v368.flags = v153, v368.epoch = v154, *&v367.value = *&lhs.value, OUTLINED_FUNCTION_11_4(lhs.epoch), CMTimeCompare(v155, v156) >= 1))
      {
        *v152 = lhs;
      }
    }

    SampleBuffer = 0;
LABEL_206:
    CFRelease(sbuf);
LABEL_207:
    if (SampleBuffer || v372)
    {
      goto LABEL_142;
    }

    if (FigAssetWriterIsTrackQueueAboveHighWaterLevel(v396, intValue))
    {
      goto LABEL_141;
    }
  }

  SampleBuffer = v146;
  v175 = CMCopyDictionaryOfAttachments(selfCopy, sbuf, 1u);
  if (v175)
  {
    CFRelease(v175);
  }

  v176 = CMCopyDictionaryOfAttachments(selfCopy, sbuf, 0);
  v91 = v304;
  if (v176)
  {
    CFRelease(v176);
  }

  selfCopy = v330;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"add sample buffer to track %d", intValue];
LABEL_258:
  v188 = OUTLINED_FUNCTION_24_0();
LABEL_259:
  [v188 logErrorNumber:SampleBuffer errorString:?];
LABEL_121:
  if (v397)
  {
    CFRelease(v397);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_20_2();
  v92 = CMNotificationCenterRemoveListener();
  if (v92)
  {
    v93 = v92;
    [*(selfCopy + 152) logErrorNumber:v92 errorString:@"remove queue level callbacks"];
    if (SampleBuffer)
    {
      SampleBuffer = SampleBuffer;
    }

    else
    {
      SampleBuffer = v93;
    }
  }

  if (v396)
  {
    CFRelease(v396);
  }

  if (v395)
  {
    CFRelease(v395);
  }

  FigSimpleMutexDestroy();
  FigConditionVariableDestroy();
  v390 = 0;
  v388 = 0;
  v389 = 0;
  free(v91);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [OUTLINED_FUNCTION_23() stillImageCaptureHostTime];
    *&rhs.value = *&lhs.value;
    OUTLINED_FUNCTION_22_0(lhs.epoch);
    CMTimeGetSeconds(v94);
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return SampleBuffer;
}

@end