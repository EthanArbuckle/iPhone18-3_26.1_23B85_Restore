@interface BWFigCaptureSession
- (float)trueVideoCaptureAdditionalZoomFactorForPreviewStitcher:(id)a3;
- (void)_continuityDisplay:(uint64_t)a1 didUpdateLayout:(void *)a2;
- (void)_doFlashMitigation;
- (void)_mainDisplay:(void *)a3 didUpdateLayout:;
- (void)_postFlashMitigationUserNotification;
- (void)_sendRecordingStartedNotificationForFileSinkPipeline:(uint64_t)a1 withSettings:(void *)a2 startPTS:(void *)a3;
- (void)dealloc;
- (void)fileCoordinator:(id)a3 sentMarkerBufferForFileWriterAction:(id)a4 withPTS:(id *)a5 settings:(id)a6 errorCode:(int)a7;
- (void)fileCoordinator:(id)a3 stoppedBeforeStartedRecordingForSettings:(id)a4 pendingIrisMovieInfos:(id)a5 errorCode:(int)a6;
- (void)fileWriter:(id)a3 frameDroppedForSettingsID:(unint64_t)a4 withError:(int)a5;
- (void)fileWriter:(id)a3 pausedRecordingForSettingsID:(unint64_t)a4;
- (void)fileWriter:(id)a3 resumedRecordingForSettingsID:(unint64_t)a4;
- (void)fileWriter:(id)a3 startedRecordingForSettings:(id)a4 writerPipelineIndex:(unint64_t)a5 startPTS:(id *)a6;
- (void)fileWriter:(id)a3 writerPipelineIndex:(unint64_t)a4 stoppedRecordingForSettings:(id)a5 withError:(int)a6 thumbnailSurface:(__IOSurface *)a7 irisMovieInfo:(id)a8 debugMetadataSidecarFileURL:(id)a9 recordingSucceeded:(BOOL)a10;
- (void)fileWriter:(id)a3 writerPipelineIndex:(unint64_t)a4 stoppedRecordingSampleDataForSettingsID:(int64_t)a5;
- (void)graph:(id)a3 didFinishStartingWithError:(int)a4;
- (void)graph:(id)a3 didStartSourceNode:(id)a4 error:(int)a5;
- (void)graphDidPrepareNodes:(id)a3;
- (void)graphDidResolveRetainedBufferCounts:(id)a3;
- (void)imageQueueSinkNode:(id)a3 didAttemptToEnqueuePreviewSampleBuffer:(opaqueCMSampleBuffer *)a4 withSuccess:(BOOL)a5;
- (void)imageQueueSinkNodeDidDisplayFirstFrame:(id)a3 atHostTime:(int64_t)a4;
- (void)imageQueueSinkNodeDidDisplayFirstFrame:(id)a3 timedOut:(BOOL)a4;
- (void)initWithFigCaptureSession:(void *)result;
- (void)interruptionResolved:(id)a3;
- (void)interruptionTriggered:(id)a3;
- (void)layoutMonitor:(id)a3 didUpdateLayout:(id)a4;
- (void)node:(id)a3 format:(id)a4 didBecomeLiveForOutput:(id)a5;
- (void)previewStitcher:(id)a3 didApplyWiderCameraShift:(CGPoint)a4 widerCameraScaleFactor:(float)a5 forWiderCameraPortType:(id)a6 narrowerCameraShift:(CGPoint)a7 narrowerCameraScaleFactor:(float)a8 forNarrowerCameraPortType:(id)a9 inSuperWideMacroMode:(BOOL)a10 widerCameraShiftAtBaseZoom:(CGPoint)a11;
- (void)previewStitcher:(id)a3 overCaptureStatusDidChange:(int)a4;
- (void)previewStitcherReadyForPrimaryCaptureRectUpdates:(id)a3;
- (void)previewStitcherSmartFramingFieldOfViewTransitionAppliedZoomFactor:(id)a3 zoomFactor:(double)a4;
- (void)previewStitcherTrueVideoExitTransitionDidComplete:(id)a3;
- (void)remoteQueueSinkNode:(id)a3 localQueueBecameReady:(localQueueOpaque *)a4;
- (void)remoteQueueSinkNode:(id)a3 queueBecameReady:(remoteQueueSenderOpaque *)a4;
- (void)stagingNode:(id)a3 readyToReceiveRequestsWithEarliestAllowedStillImageCaptureHostPTS:(id *)a4;
- (void)stagingNode:(id)a3 valveClosedWithPendingIrisRequests:(id)a4;
- (void)stagingNode:(id)a3 waitingToEmitFrameWithPTS:(id *)a4;
- (void)stagingNode:(id)a3 willEmitIrisRequest:(id)a4;
- (void)stillImageCoordinator:(id)a3 didCancelMomentCaptureForSettingsID:(int64_t)a4 streamingDisruptionEndPTS:(id *)a5;
- (void)stillImageCoordinator:(id)a3 didCapturePhotoForSettings:(id)a4;
- (void)stillImageCoordinator:(id)a3 didResolveStillImagePTS:(id *)a4 forSettings:(id)a5 isPreBracketedEV0:(BOOL)a6;
- (void)stillImageCoordinator:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 forSettings:(id)a6;
- (void)stillImageCoordinator:(id)a3 readyToRespondToRequestAfterRequestWithSettings:(id)a4;
- (void)stillImageCoordinator:(id)a3 updateSettingsAfterLiveReconfiguration:(id)a4;
- (void)stillImageCoordinator:(id)a3 willBeginCaptureBeforeResolvingSettingsForID:(int64_t)a4;
- (void)stillImageCoordinator:(id)a3 willBeginCaptureForSettings:(id)a4;
- (void)stillImageCoordinator:(id)a3 willCapturePhotoForSettings:(id)a4 error:(int)a5;
- (void)stillImageCoordinator:(id)a3 willPrepareStillImageCaptureWithSettings:(id)a4 clientInitiated:(BOOL)a5;
- (void)videoPIPOverlayNode:(id)a3 overlayRectDidChange:(CGRect)a4;
@end

@implementation BWFigCaptureSession

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigCaptureSession;
  [(BWFigCaptureSession *)&v3 dealloc];
}

- (void)fileCoordinator:(id)a3 sentMarkerBufferForFileWriterAction:(id)a4 withPTS:(id *)a5 settings:(id)a6 errorCode:(int)a7
{
  v9 = self;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__27;
  v19 = __Block_byref_object_dispose__27;
  if (self)
  {
    self = self->_pipelines;
  }

  v20 = [(BWFigCaptureSession *)self movieFileSinkPipelineWithFileCoordinatorNode:a3, a4, a5, a6, *&a7];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3052000000;
  v14[3] = __Block_byref_object_copy__27;
  v14[4] = __Block_byref_object_dispose__27;
  v14[5] = [(FigCaptureMovieFileSinkPipeline *)v16[5] irisStagingNode];
  v10 = [objc_msgSend(-[FigCaptureMovieFileSinkPipeline primaryMovieFileVideoCaptureConnectionConfiguration](v16[5]) "movieFileSinkConfiguration")];
  if (([a4 isEqualToString:0x1F21A9C50] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", 0x1F21A9CD0) & 1) != 0 || objc_msgSend(a4, "isEqualToString:", 0x1F21A9CB0))
  {
    if (v10)
    {
      captureSession_suspendTrueVideoVISProcessing(v9->_captureSession);
    }

    captureSession = v9->_captureSession;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__BWFigCaptureSession_fileCoordinator_sentMarkerBufferForFileWriterAction_withPTS_settings_errorCode___block_invoke;
    v13[3] = &unk_1E7998B48;
    v13[4] = v9;
    v13[5] = v14;
    v13[6] = &v15;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(captureSession, *(DerivedStorage + 760), v13, 0.0);
  }

  else if (([a4 isEqualToString:0x1F21A9C30] & v10) == 1)
  {
    [BWFigCaptureSession _sendRecordingStartedNotificationForFileSinkPipeline:v9 withSettings:v16[5] startPTS:a6];
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
}

unint64_t __102__BWFigCaptureSession_fileCoordinator_sentMarkerBufferForFileWriterAction_withPTS_settings_errorCode___block_invoke(unint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = *(*(*(result + 40) + 8) + 40);
    if (v3)
    {
      [v3 closeValve];
    }

    v4 = *(v2[4] + 8);
    v5 = [(FigCaptureMovieFileSinkPipeline *)*(*(v2[6] + 8) + 40) videoSourceID];
    result = captureSession_setRestoreForcedOffOverCaptureActiveSlaveStreamEnabled(v4, v5, 1);
    if (*(*(v2[5] + 8) + 40))
    {
      v6 = *(v2[4] + 8);
      v7 = *(*(v2[6] + 8) + 40);

      return captureSession_servicePendingIrisRecordings(v6, v7, 1);
    }
  }

  return result;
}

- (void)fileCoordinator:(id)a3 stoppedBeforeStartedRecordingForSettings:(id)a4 pendingIrisMovieInfos:(id)a5 errorCode:(int)a6
{
  v6 = *&a6;
  v9 = self;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__27;
  v27 = __Block_byref_object_dispose__27;
  if (self)
  {
    self = self->_pipelines;
  }

  v28 = [(BWFigCaptureSession *)self movieFileSinkPipelineWithFileCoordinatorNode:a3];
  captureSession = v9->_captureSession;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__BWFigCaptureSession_fileCoordinator_stoppedBeforeStartedRecordingForSettings_pendingIrisMovieInfos_errorCode___block_invoke;
  v22[3] = &unk_1E7998B70;
  v22[4] = &v23;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(captureSession, *(DerivedStorage + 760), v22, 0.0);
  if (a4)
  {
    cs_resetImageControlModeAndStreamSelection(v24[5], 0);
    v12 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([v24[5] sinkID], objc_msgSend(a4, "settingsID"), v6);
    captureSession_postNotificationWithPayload(v9->_captureSession, @"DidStopRecording", v12);
  }

  else if (a5)
  {
    mach_absolute_time();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [a5 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(a5);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          [v16 enqueuedHostTime];
          [v16 setProcessingTimeInMilliseconds:FigHostTimeToNanoseconds() / 1000000.0];
          captureSession_postNotificationsForIrisRequestCompletedWithError(v9->_captureSession, [v24[5] sinkID], v16, v6);
        }

        v13 = [a5 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v13);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __112__BWFigCaptureSession_fileCoordinator_stoppedBeforeStartedRecordingForSettings_pendingIrisMovieInfos_errorCode___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(*(*(result + 32) + 8) + 40) setRecording:0];
  }

  return result;
}

- (void)fileWriter:(id)a3 startedRecordingForSettings:(id)a4 writerPipelineIndex:(unint64_t)a5 startPTS:(id *)a6
{
  CMBaseObjectGetDerivedStorage();
  if ([a3 nodeSubType] == 0x1F21A7090)
  {
    v9 = [(FigCaptureSessionPipelines *)self->_pipelines movieFileSinkPipelineWithFileSinkNode:a3];
    if ([objc_msgSend(-[FigCaptureMovieFileSinkPipeline primaryMovieFileVideoCaptureConnectionConfiguration](v9) "movieFileSinkConfiguration")])
    {
      return;
    }

    goto LABEL_5;
  }

  if ([a3 nodeSubType] == 0x1F2192E10)
  {
    v9 = [(FigCaptureSessionPipelines *)self->_pipelines audioFileSinkPipelineWithFileSinkNode:a3];
LABEL_5:
    if (v9)
    {
      [BWFigCaptureSession _sendRecordingStartedNotificationForFileSinkPipeline:v9 withSettings:a4 startPTS:?];
      return;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (void)fileWriter:(id)a3 writerPipelineIndex:(unint64_t)a4 stoppedRecordingSampleDataForSettingsID:(int64_t)a5
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = [(FigCaptureSessionPipelines *)self->_pipelines movieFileSinkPipelineWithFileSinkNode:a3];
  if (v10)
  {
    v11 = v10;
    os_unfair_lock_lock(DerivedStorage + 96);
    [(FigCaptureMovieFileSinkPipeline *)v11 setRecording:a4 forTailPipelineIndex:?];
    v12 = [(FigCaptureMovieFileSinkPipeline *)v11 atLeastOneTailIsRecording];
    os_unfair_lock_unlock(DerivedStorage + 96);
    if ((v12 & 1) == 0)
    {
      v13 = [(FigCaptureSessionPipelines *)self->_pipelines audioFileSinkPipelineWithFileSinkNode:a3];
      v14 = [(FigCaptureMovieFileSinkPipeline *)v11 fileCoordinatorNode];
      if (!v14)
      {
        v14 = [(FigCaptureAudioFileSinkPipeline *)v13 fileCoordinatorNode];
      }

      v15 = [FigWeakReference weakReferenceToObject:v14];
      v16 = [FigWeakReference weakReferenceToObject:v11];
      captureSession = self->_captureSession;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __94__BWFigCaptureSession_fileWriter_writerPipelineIndex_stoppedRecordingSampleDataForSettingsID___block_invoke;
      v19[3] = &unk_1E7998B98;
      v19[4] = v15;
      v19[5] = v16;
      v19[6] = a5;
      v18 = CMBaseObjectGetDerivedStorage();
      captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(captureSession, *(v18 + 760), v19, 0.0);
    }
  }
}

uint64_t __94__BWFigCaptureSession_fileWriter_writerPipelineIndex_stoppedRecordingSampleDataForSettingsID___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [*(result + 32) referencedObject];
    v5 = [*(v3 + 40) referencedObject];
    [v4 recordingTerminated:*(v3 + 48)];

    return [v5 setRecording:0];
  }

  return result;
}

- (void)fileWriter:(id)a3 writerPipelineIndex:(unint64_t)a4 stoppedRecordingForSettings:(id)a5 withError:(int)a6 thumbnailSurface:(__IOSurface *)a7 irisMovieInfo:(id)a8 debugMetadataSidecarFileURL:(id)a9 recordingSucceeded:(BOOL)a10
{
  v11 = *&a6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = [(FigCaptureSessionPipelines *)self->_pipelines movieFileSinkPipelineWithFileSinkNode:a3];
  v34 = [a9 path];
  os_unfair_lock_lock((DerivedStorage + 384));
  if (v11 == -16414)
  {
    if (*(DerivedStorage + 396))
    {
      v11 = 4294950882;
    }

    else
    {
      v11 = 0;
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  if (!v17)
  {
    v19 = 0;
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v18 = [a5 isIrisRecording];
  v19 = [a5 isIrisMovieRecording];
  v20 = [a5 videoSettings];
  if ((v18 & 1) == 0 && v20)
  {
    cs_resetImageControlModeAndStreamSelection(v17, 0);
    if ([v17 recordedWhileMultitasking])
    {
      [v17 setRecordedWhileMultitasking:0];
      captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary();
    }

    goto LABEL_11;
  }

LABEL_12:
  v21 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([a3 sinkID], objc_msgSend(a5, "settingsID"), v11);
  if (v18)
  {
    if (!a8)
    {
      return;
    }

    v22 = [a8 spatialOverCaptureExpected];
    if (a4)
    {
      if (!v22)
      {
        return;
      }
    }

    v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v21];
    [a8 movieTrimEndTime];
    [a8 movieTrimStartTime];
    CMTimeSubtract(&time, &lhs, &rhs);
    v23 = *MEMORY[0x1E695E480];
    v24 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
    [v21 setObject:CFAutorelease(v24) forKeyedSubscript:@"MovieDuration"];
    if ([objc_msgSend(a8 "outputMovieURL")])
    {
      [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsSpatialOverCaptureMovie"];
    }

    memset(&time, 0, sizeof(time));
    [a8 stillImageCaptureTime];
    [a8 movieTrimStartTime];
    CMTimeSubtract(&time, &lhs, &rhs);
    lhs = time;
    v25 = CMTimeCopyAsDictionary(&lhs, v23);
    [v21 setObject:CFAutorelease(v25) forKeyedSubscript:@"StillImageDisplayTime"];
    if ([objc_msgSend(-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v17) objectAtIndexedSubscript:{0), "irisSampleReferenceMoviesEnabled"}])
    {
      [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(a8, "isFinalReferenceMovie")), @"IsFinalReferenceMovie"}];
      if ([a8 masterMovieURL])
      {
        [v21 setObject:objc_msgSend(objc_msgSend(a8 forKeyedSubscript:{"masterMovieURL"), "path"), @"MasterMoviePath"}];
      }
    }

    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(a8, "isOriginalPhotoRecording")), @"IsOriginalPhotoMovie"}];
    if ([objc_msgSend(a8 "settings")] && objc_msgSend(a8, "isVitalityScoreValid"))
    {
      v35[0] = *MEMORY[0x1E6973590];
      v26 = MEMORY[0x1E696AD98];
      [a8 vitalityScore];
      v36[0] = [v26 numberWithFloat:?];
      v35[1] = *MEMORY[0x1E6973598];
      v36[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a8, "vitalityScoringVersion")}];
      [v21 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v36, v35, 2), @"MetadataIdentifiers"}];
    }
  }

  if (a7 || v34 || v11)
  {
    v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v21];
    v21 = v27;
    if (a7)
    {
      [v27 setObject:a7 forKeyedSubscript:@"PreviewSurface"];
      [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetAllocSize(a7)), @"PreviewSurfaceSize"}];
    }

    if (v34)
    {
      [v21 setObject:v34 forKeyedSubscript:@"DebugMetadataSidecarFilePath"];
    }

    if (v11)
    {
      [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", a10), @"RecordingSucceeded"}];
    }

    if (a4 == 1)
    {
      v28 = v18;
    }

    else
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
      [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsSpatialOverCaptureMovie"];
    }

    if (v17)
    {
      memset(&time, 0, sizeof(time));
      if (a3)
      {
        [a3 lastFileDuration];
      }

      v29 = *MEMORY[0x1E695E480];
      lhs = time;
      v30 = CMTimeCopyAsDictionary(&lhs, v29);
      [v21 setObject:v30 forKeyedSubscript:@"MovieDuration"];
      if (v30)
      {
        CFRelease(v30);
      }
    }
  }

  if (v18)
  {
    v31 = kFigCaptureSessionIrisStillImageSinkNotification_DidFinishRecordingMomentCaptureMovie;
    if (!v19)
    {
      v31 = kFigCaptureSessionIrisStillImageSinkNotification_DidFinishRecordingIrisMovie;
    }

    v32 = *v31;
    cs_reportLivePhotoMovieCoreAnalyticsData(self->_captureSession, a8, v11, a10);
  }

  else
  {
    v32 = @"DidStopRecording";
  }

  captureSession_postNotificationWithPayload(self->_captureSession, v32, v21);
}

- (void)fileWriter:(id)a3 pausedRecordingForSettingsID:(unint64_t)a4
{
  v5 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([a3 sinkID], a4, 0);
  captureSession = self->_captureSession;

  captureSession_postNotificationWithPayload(captureSession, @"DidPauseRecording", v5);
}

- (void)fileWriter:(id)a3 resumedRecordingForSettingsID:(unint64_t)a4
{
  v5 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([a3 sinkID], a4, 0);
  captureSession = self->_captureSession;

  captureSession_postNotificationWithPayload(captureSession, @"DidResumeRecording", v5);
}

- (void)fileWriter:(id)a3 frameDroppedForSettingsID:(unint64_t)a4 withError:(int)a5
{
  v6 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([a3 sinkID], a4, *&a5);
  captureSession = self->_captureSession;

  captureSession_postNotificationWithPayload(captureSession, @"DidDropFrameWhileRecording", v6);
}

- (void)stillImageCoordinator:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 forSettings:(id)a6
{
  CMBaseObjectGetDerivedStorage();
  v10 = [(FigCaptureSessionPipelines *)self->_pipelines stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  v11 = -[FigCaptureSessionPipelines movieFileSinkPipelineWithSinkID:](self->_pipelines, "movieFileSinkPipelineWithSinkID:", [objc_msgSend(v10 "primaryStillImageSinkPipeline")]);
  v12 = [objc_msgSend(v10 "primaryStillImageSinkPipeline")];
  if (a5 && v12 == a3)
  {
    if (dword_1ED844050)
    {
      v16 = 0;
      v15 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = [objc_msgSend(-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v11) "firstObject")];
    if (v14)
    {
      [v14 cacheStillImageVideoToPhotoTransform:a5 forSettingsID:{+[BWIrisMovieInfo livePhotoMetadataStillImageKeyFrameSettingsIDForSettingsID:isOriginalPhotoRecording:](BWIrisMovieInfo, "livePhotoMetadataStillImageKeyFrameSettingsIDForSettingsID:isOriginalPhotoRecording:", objc_msgSend(objc_msgSend(a6, "requestedSettings"), "settingsID"), 0)}];
    }
  }
}

void __59__BWFigCaptureSession__postFlashMitigationUserNotification__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 32), 0.0, &responseFlags);
  CFRelease(*(a1 + 32));
}

- (void)stillImageCoordinator:(id)a3 didCancelMomentCaptureForSettingsID:(int64_t)a4 streamingDisruptionEndPTS:(id *)a5
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = __Block_byref_object_copy__27;
  v48 = __Block_byref_object_dispose__27;
  v49 = [(FigCaptureSessionPipelines *)self->_pipelines stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  if (dword_1ED844050)
  {
    LODWORD(v36.var0) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  if ([*(DerivedStorage + 696) settingsID] == a4 && objc_msgSend(*(DerivedStorage + 696), "movieMode") == 2)
  {
    v11 = *(DerivedStorage + 696);
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (v11)
    {
      v12 = [v45[5] primaryCameraSourcePipeline];
      *v41 = 0;
      *&v41[8] = v41;
      *&v41[16] = 0x3052000000;
      *&v42 = __Block_byref_object_copy__27;
      *(&v42 + 1) = __Block_byref_object_dispose__27;
      v43 = [(FigCaptureCameraSourcePipeline *)v12 captureDevice];
      v13 = [v11 flashMode];
      if (v13)
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            [*(*&v41[8] + 40) setAutomaticallyAdjustsTorch:1];
          }

          goto LABEL_23;
        }

        v21 = 1.0;
        [*(*&v41[8] + 40) setAutomaticallyAdjustsTorch:0];
      }

      else
      {
        v21 = 0.0;
        [*(*&v41[8] + 40) setAutomaticallyAdjustsTorch:0];
      }

      *&v22 = v21;
      [*(*&v41[8] + 40) setTorchLevel:{v22, v30, v31}];
LABEL_23:
      if (dword_1ED844050)
      {
        *type = 0;
        v39 = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = *type;
        if (os_log_type_enabled(v23, v39))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = *(DerivedStorage + 104);
          v36 = *a5;
          Seconds = CMTimeGetSeconds(&v36);
          LODWORD(time.value) = 136315650;
          *(&time.value + 4) = "[BWFigCaptureSession stillImageCoordinator:didCancelMomentCaptureForSettingsID:streamingDisruptionEndPTS:]";
          LOWORD(time.flags) = 2114;
          *(&time.flags + 2) = v26;
          HIWORD(time.epoch) = 2048;
          v38 = Seconds;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      captureSession = self->_captureSession;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke;
      v33[3] = &unk_1E7998C10;
      v33[4] = self;
      v33[5] = v11;
      v34 = *&a5->var0;
      var3 = a5->var3;
      v33[6] = &v44;
      v33[7] = v41;
      v33[8] = DerivedStorage;
      v33[9] = a4;
      v29 = CMBaseObjectGetDerivedStorage();
      captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(captureSession, *(v29 + 760), v33, 0.0);

      _Block_object_dispose(v41, 8);
      goto LABEL_19;
    }
  }

  else
  {
    os_unfair_lock_unlock((DerivedStorage + 384));
  }

  v14 = [objc_msgSend(v45[5] primaryStillImageSinkPipeline];
  if (dword_1ED844050)
  {
    LODWORD(time.value) = 0;
    LOBYTE(v36.var0) = 0;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = time.value;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = value;
    }

    else
    {
      v17 = value & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = *(DerivedStorage + 104);
      *v41 = 136315906;
      *&v41[4] = "[BWFigCaptureSession stillImageCoordinator:didCancelMomentCaptureForSettingsID:streamingDisruptionEndPTS:]";
      *&v41[12] = 2114;
      *&v41[14] = v18;
      *&v41[22] = 1024;
      LODWORD(v42) = -16418;
      WORD2(v42) = 2048;
      *(&v42 + 6) = a4;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v14, a4, 4294950878);
  captureSession_postNotificationWithPayload(self->_captureSession, @"DidBeginRecordingMomentCaptureMovie", v19);
  v20 = self->_captureSession;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke_120;
  v32[3] = &unk_1E798FE50;
  v32[4] = self;
  v32[5] = v14;
  v32[6] = a4;
  captureSession_performBlockOnWorkerQueue(v20, v32);
LABEL_19:
  _Block_object_dispose(&v44, 8);
}

void __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 movieFileSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "primaryStillImageSinkPipeline"), "sinkID")}];
    v6 = v5;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3052000000;
    v26 = __Block_byref_object_copy__27;
    v27 = __Block_byref_object_dispose__27;
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = [(FigCaptureMovieFileSinkPipeline *)v5 videoSourceID];
    v28 = [v8 previewSinkPipelineWithSourceID:v9 sourceDeviceType:-[FigCaptureMovieFileSinkPipeline videoSourceDeviceType](v6)];
    [v24[5] setVideoStabilizationOverscanCropEnabled:1 momentMovieRecordingEnabled:1];
    [v24[5] setSemanticStyleRenderingSuspended:1 animated:1];
    [*(*(*(a1 + 48) + 8) + 40) setVideoStabilizationOverscanCropEnabled:1];
    v10 = [v6 sinkID];
    v11 = [(FigCaptureMovieFileSinkPipeline *)v6 primaryCaptureDevice];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v12 = *(a1 + 48);
    v15 = *(a1 + 32);
    v21 = *(a1 + 80);
    v14[2] = __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke_2;
    v14[3] = &unk_1E7998BE8;
    v22 = *(a1 + 96);
    v16 = v10;
    v17 = &v23;
    v18 = v12;
    v13 = *(a1 + 72);
    v19 = *(a1 + 64);
    v20 = v13;
    [v11 setAutoImageControlMode:2 completionHandler:v14];
    _Block_object_dispose(&v23, 8);
  }
}

void __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke_2(uint64_t a1, char a2, __int128 *a3)
{
  if (dword_1ED844050)
  {
    v24 = 0;
    v23 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v22 = a2;
  v7 = *(a1 + 48);
  v8 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v9 = *(*(a1 + 32) + 8);
  v12[1] = 3221225472;
  v18 = *(a1 + 96);
  v20 = *a3;
  v12[2] = __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke_116;
  v12[3] = &unk_1E7998BC0;
  v19 = *(a1 + 112);
  v21 = *(a3 + 2);
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 64);
  v10 = *(a1 + 88);
  v16 = *(a1 + 80);
  v17 = v10;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(v9, *(DerivedStorage + 760), v12, 0.0);
}

void __107__BWFigCaptureSession_stillImageCoordinator_didCancelMomentCaptureForSettingsID_streamingDisruptionEndPTS___block_invoke_116(uint64_t a1, char a2)
{
  os_unfair_lock_lock((*(a1 + 80) + 384));
  v4 = [*(a1 + 32) settingsID];
  v5 = [*(*(a1 + 80) + 696) settingsID];
  v6 = *(a1 + 80);
  if (v4 == v5)
  {

    v6 = *(a1 + 80);
    *(v6 + 696) = 0;
  }

  os_unfair_lock_unlock((v6 + 384));
  if (a2)
  {
    if (dword_1ED844050)
    {
      LODWORD(time2.value) = 0;
      v40 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (v4 == v5 && (*(a1 + 144) & 1) != 0)
  {
    value = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    flags = *(a1 + 108);
    if (flags)
    {
      if (*(a1 + 132))
      {
        time1 = *(a1 + 96);
        time2 = *(a1 + 120);
        CMTimeMaximum(&time, &time1, &time2);
        value = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }

      else
      {
        value = *(a1 + 96);
        timescale = *(a1 + 104);
        epoch = *(a1 + 112);
      }
    }

    else
    {
      flags = *(a1 + 132);
      if (flags)
      {
        value = *(a1 + 120);
        timescale = *(a1 + 128);
        epoch = *(a1 + 136);
      }

      else
      {
        epoch = *(MEMORY[0x1E6960C70] + 16);
        flags = *(MEMORY[0x1E6960C70] + 12);
      }
    }

    if (dword_1ED844050)
    {
      LODWORD(time2.value) = 0;
      v40 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = time2.value;
      if (os_log_type_enabled(v11, v40))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(*(a1 + 80) + 104);
        v15 = *(a1 + 144);
        time = *(a1 + 96);
        Seconds = CMTimeGetSeconds(&time);
        time = *(a1 + 120);
        v17 = CMTimeGetSeconds(&time);
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        v18 = CMTimeGetSeconds(&time);
        LODWORD(time1.value) = 136316418;
        *(&time1.value + 4) = "[BWFigCaptureSession stillImageCoordinator:didCancelMomentCaptureForSettingsID:streamingDisruptionEndPTS:]_block_invoke";
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v14;
        HIWORD(time1.epoch) = 1024;
        v32 = v15;
        v33 = 2048;
        v34 = Seconds;
        v35 = 2048;
        v36 = v17;
        v37 = 2048;
        v38 = v18;
        LODWORD(v30) = 58;
        p_time1 = &time1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = [v23 stillImageSinkPipelineSessionStorageWithSinkID:{*(a1 + 48), p_time1, v30}];
    v25 = [v24 previewSinkNode];
    v26 = [v21 stillImageUserInitiatedRequestTime];
    if ([objc_msgSend(v21 "movieRecordingSettings")] > v26)
    {
      v26 = [objc_msgSend(v21 "movieRecordingSettings")];
    }

    memset(&time, 0, sizeof(time));
    if (!v25 || ([v25 previewPTSDisplayedAtHostTime:v26 allowingExtrapolation:1], (time.flags & 1) == 0))
    {
      v27 = FigHostTimeToNanoseconds();
      CMTimeMake(&time1, v27, 1000000000);
      time = time1;
    }

    if ((flags & 0x1D) == 1)
    {
      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      time2 = time;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
      }
    }

    if (*MEMORY[0x1E695FF58])
    {
      v28 = fig_log_handle();
      if (os_signpost_enabled(v28))
      {
        LOWORD(time1.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CameraCaptureFirstQuickTakeVideoFrame", &unk_1AD0FC9CB, &time1, 2u);
      }
    }

    time1 = time;
    captureSession_didCaptureIrisStill(v22, v23, v24, v21, 0, &time1, 0, &time2);
  }

  else
  {
    [*(*(*(a1 + 56) + 8) + 40) setVideoStabilizationOverscanCropEnabled:0 momentMovieRecordingEnabled:0];
    [*(*(*(a1 + 56) + 8) + 40) setSemanticStyleRenderingSuspended:0 animated:1];
    [*(*(*(a1 + 64) + 8) + 40) setVideoStabilizationOverscanCropEnabled:0];
    [*(*(*(a1 + 72) + 8) + 40) setAutomaticallyAdjustsTorch:0];
    [*(*(*(a1 + 72) + 8) + 40) setTorchLevel:0.0];
    if (dword_1ED844050)
    {
      LODWORD(time2.value) = 0;
      v40 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 48), [*(a1 + 32) settingsID], 4294950878);
    captureSession_postNotificationWithPayload(*(*(a1 + 40) + 8), @"DidBeginRecordingMomentCaptureMovie", v19);
    cs_removeEmptyPendingIrisRecording(*(*(a1 + 40) + 8), [objc_msgSend(*(*(*(a1 + 64) + 8) + 40) "primaryStillImageSinkPipeline")], *(a1 + 88));
  }
}

- (void)stillImageCoordinator:(id)a3 willPrepareStillImageCaptureWithSettings:(id)a4 clientInitiated:(BOOL)a5
{
  v5 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = self;
  v10 = [(FigCaptureSessionPipelines *)self->_pipelines stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  v11 = [v10 stillImageSinkPipelines];
  v57 = MEMORY[0x1E69E9820];
  v58 = 3221225472;
  v59 = __102__BWFigCaptureSession_stillImageCoordinator_willPrepareStillImageCaptureWithSettings_clientInitiated___block_invoke;
  v60 = &unk_1E7998C38;
  v50 = a3;
  v61 = a3;
  v12 = [v10 cameraSourcePipelineForStillImageSinkPipeline:{objc_msgSend(objc_msgSend(v11, "filteredArrayUsingPredicate:", objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v57)), "firstObject")}];
  v13 = [a4 requestedSettings];
  v14 = [v13 outputWidth];
  v15 = [v13 outputHeight];
  v16 = [objc_msgSend(v10 "primaryStillImageSinkPipeline")];
  HIDWORD(v52) = v5;
  HIDWORD(v45) = v14;
  if ([v13 settingsProvider])
  {
    if (v5)
    {
      v17 = [v13 figCaptureIrisPreparedSettingsRepresentation];
      os_unfair_lock_lock((DerivedStorage + 384));
      v18 = [*(DerivedStorage + 544) objectForKeyedSubscript:v16];
      [*(DerivedStorage + 544) setObject:v17 forKeyedSubscript:v16];
      os_unfair_lock_unlock((DerivedStorage + 384));

      if (!v17)
      {
        goto LABEL_22;
      }
    }

    else
    {
      os_unfair_lock_lock((DerivedStorage + 384));
      v19 = [*(DerivedStorage + 544) objectForKeyedSubscript:{v16, v15}];
      [v19 setSettingsID:{objc_msgSend(v13, "settingsID")}];
      v20 = [v13 bracketImageCount];
      if (v20 > [v19 bracketedImageCount])
      {
        [v19 setBracketedImageCount:{objc_msgSend(v13, "bracketImageCount")}];
      }

      if ([v13 rawOutputFormat])
      {
        [v19 setRawOutputFormat:objc_msgSend(v13, "rawOutputFormat")];
      }

      if ([v13 outputFormat])
      {
        [v19 setProcessedOutputFormat:objc_msgSend(v13, "outputFormat")];
      }

      v21 = [v13 HDRMode];
      if (v21 > [v19 HDRMode])
      {
        [v19 setHDRMode:{objc_msgSend(v13, "HDRMode")}];
      }

      v22 = [v13 qualityPrioritization];
      if (v22 > [v19 qualityPrioritization])
      {
        [v19 setQualityPrioritization:{objc_msgSend(v13, "qualityPrioritization")}];
      }

      v23 = [v13 digitalFlashMode];
      if (v23 > [v19 digitalFlashMode])
      {
        [v19 setDigitalFlashMode:{objc_msgSend(v13, "digitalFlashMode")}];
      }

      v24 = [objc_msgSend(v13 "bravoConstituentImageDeliveryDeviceTypes")];
      if (v24 > [objc_msgSend(v19 "bravoConstituentImageDeliveryDeviceTypes")])
      {
        [v19 setBravoConstituentImageDeliveryDeviceTypes:{objc_msgSend(v13, "bravoConstituentImageDeliveryDeviceTypes")}];
      }

      [v19 setOutputWidth:{objc_msgSend(v13, "outputWidth")}];
      [v19 setOutputHeight:{objc_msgSend(v13, "outputHeight")}];
      v17 = [v19 copy];
      os_unfair_lock_unlock((DerivedStorage + 384));
      v25 = v17;
      if (!v17)
      {
        goto LABEL_22;
      }
    }

    v26 = [v17 bracketedImageCount];
    v27 = 0;
    goto LABEL_23;
  }

  [objc_msgSend(v10 "preparedBracket")];
  [objc_msgSend(v10 "preparedBracket")];
  [objc_msgSend(v10 "preparedBracket")];
LABEL_22:
  v26 = [v13 bracketImageCount];
  v17 = 0;
  v27 = 1;
LABEL_23:
  v28 = [(FigCaptureCameraSourcePipeline *)v12 captureDevice];
  IsBayerRaw = FigCapturePixelFormatIsBayerRaw([v17 rawOutputFormat]);
  LODWORD(v56) = 0;
  +[BWStillImageCoordinatorNode worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:stillImageCaptureSettings:captureDevice:](BWStillImageCoordinatorNode, "worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:stillImageCaptureSettings:captureDevice:", v17, [a4 captureSettings], v28);
  [(FigCaptureCameraSourcePipeline *)v12 prepareForStillImageCaptureWithStillImageOutputRetainedBufferCountOverride:0 infraRedStillImageOutputRetainedBufferCountOverride:v26 clientBracketCount:IsBayerRaw enableSushiRawAttachmentOption:v30, v31, v32, v43, v45, v16, v48, v50, v52, 0, 0, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69];
  if (v33)
  {
    v34 = v33;
    [BWFigCaptureSession stillImageCoordinator:willPrepareStillImageCaptureWithSettings:clientInitiated:];
  }

  else
  {
    v34 = [v28 updateStillImageSensorRawBufferPoolsWithRetainedBufferCount:v54 zoomBasedRetainedBufferCount:v55 ultraHighResolutionRetainedBufferCount:HIDWORD(v55)];
    if ([v10 pixelConverter] && objc_msgSend(v13, "outputFormat") && objc_msgSend(v13, "outputFormat") != 1785750887 && objc_msgSend(v13, "outputFormat") != 1752589105 && objc_msgSend(v13, "outputFormat") != 1635148593)
    {
      v35 = cs_figCaptureColorSpaceFromSourcePipeline(v12);
      v36 = [(FigCaptureCameraSourcePipeline *)v12 captureSourceVideoFormat];
      v37 = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:", [v28 supportsWideColor], v35, objc_msgSend(v36, "format"), objc_msgSend(v36, "dimensions"), objc_msgSend(v13, "outputFormat"));
      if (![v13 settingsProvider])
      {
        [objc_msgSend(v10 "preparedBracket")];
      }

      if (v27)
      {
        v38 = v13;
      }

      else
      {
        v38 = v17;
      }

      v39 = [v38 bravoConstituentImageDeliveryDeviceTypes];
      if ([v39 count])
      {
        v26 = v26 * [v39 count];
      }

      v34 = [objc_msgSend(v10 "pixelConverter")];
    }
  }

  if (v53 && [objc_msgSend(v10 "primaryStillImageSinkPipeline")] == v51)
  {
    v40 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v47, [v13 settingsID], v34);
    v41 = [v13 settingsProvider];
    v42 = kFigCaptureSessionIrisStillImageSinkNotification_PreparationComplete;
    if (v41 != 1)
    {
      v42 = kFigCaptureSessionStillImageSinkNotification_BracketPreparationComplete;
    }

    captureSession_postNotificationWithPayload(*(v49 + 8), *v42, v40);
  }
}

- (void)stagingNode:(id)a3 readyToReceiveRequestsWithEarliestAllowedStillImageCaptureHostPTS:(id *)a4
{
  v5 = self;
  if (self)
  {
    v6 = [(FigCaptureSessionPipelines *)self->_pipelines movieFileSinkPipelineWithIrisStagingNode:a3];
    v5 = v5->_pipelines;
  }

  else
  {
    v6 = [0 movieFileSinkPipelineWithIrisStagingNode:a3];
  }

  v7 = [-[BWFigCaptureSession stillImageSinkPipelineSessionStorageWithSinkID:](v5 stillImageSinkPipelineSessionStorageWithSinkID:{objc_msgSend(v6, "sinkID")), "primaryCameraSourcePipeline"}];
  v11 = *&a4->var0;
  var3 = a4->var3;
  [-[FigCaptureCameraSourcePipeline captureDevice](v7) setZeroShutterLagEarliestAllowedPTS:&v11];
  v8 = [-[FigCaptureCameraSourcePipeline captureDevice](v7) previewTimeMachineProcessor];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 earliestAllowedPTS];
      if (v10)
      {
        v11 = *&a4->var0;
        var3 = a4->var3;
        [v9 setEarliestAllowedPTS:&v11];
      }
    }
  }
}

- (void)stagingNode:(id)a3 valveClosedWithPendingIrisRequests:(id)a4
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = self;
  v20 = [(FigCaptureSessionPipelines *)self->_pipelines movieFileSinkPipelineWithIrisStagingNode:a3];
  mach_absolute_time();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(a4);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        [v11 enqueuedHostTime];
        [v11 setProcessingTimeInMilliseconds:FigHostTimeToNanoseconds() / 1000000.0];
        v31 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = v31;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v15 = *(DerivedStorage + 104);
          v16 = [objc_msgSend(v11 "settings")];
          v22 = 136315906;
          v23 = "[BWFigCaptureSession stagingNode:valveClosedWithPendingIrisRequests:]";
          v24 = 2114;
          v25 = v15;
          v26 = 2048;
          v27 = v16;
          v28 = 1024;
          v29 = -15542;
          LODWORD(v18) = 38;
          v17 = &v22;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        captureSession_postNotificationsForIrisRequestCompletedWithError(v21->_captureSession, [v20 sinkID], v11, 4294951754);
      }

      v8 = [a4 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v8);
  }
}

- (void)remoteQueueSinkNode:(id)a3 queueBecameReady:(remoteQueueSenderOpaque *)a4
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v8 = [a3 sinkID];
  if (v8)
  {
    v9 = v8;
    if (FigRemoteQueueSenderCreateXPCObject(a4, &xdict))
    {
      [BWFigCaptureSession remoteQueueSinkNode:queueBecameReady:];
    }

    else if (*(DerivedStorage + 216) == 1)
    {
      captureSession_postSinkRemoteQueueUpdatedNotification(self->_captureSession, v9, xdict);
    }

    else
    {
      cf = 0;
      if (FigRemoteQueueReceiverCreateFromXPCObject(*MEMORY[0x1E695E480], xdict, &cf))
      {
        [BWFigCaptureSession remoteQueueSinkNode:queueBecameReady:];
      }

      else
      {
        captureSession_postSinkRemoteQueueUpdatedNotification(self->_captureSession, v9, cf);
        CFRelease(cf);
      }
    }
  }

  else
  {
    [BWFigCaptureSession remoteQueueSinkNode:queueBecameReady:];
  }

  FigXPCRelease();
}

- (void)remoteQueueSinkNode:(id)a3 localQueueBecameReady:(localQueueOpaque *)a4
{
  v6 = [a3 sinkID];
  if (a4 && v6)
  {
    v8[0] = @"SectionID";
    v8[1] = @"LocalQueue";
    v9[0] = v6;
    v9[1] = a4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    if (v7)
    {
      captureSession_postNotificationWithPayload(self->_captureSession, @"LocalQueueUpdated", v7);
    }
  }
}

- (void)node:(id)a3 format:(id)a4 didBecomeLiveForOutput:(id)a5
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(FigCaptureSessionPipelines *)self->_pipelines cameraSourcePipelines];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      if ([(FigCaptureCameraSourcePipeline *)v15 sourceFormatReferenceOutput]== a5)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v16 = [v15 sourceID];
    v17 = v16;
    if (a4)
    {
      v18 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v15) formatDescription];
      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = 0;
      if (v16)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_14:
  if ([(FigCaptureMicSourcePipeline *)[(FigCaptureSessionPipelines *)self->_pipelines micSourcePipeline] sourceNode]== a3)
  {
    v17 = [(FigCaptureSourcePipeline *)[(FigCaptureSessionPipelines *)self->_pipelines micSourcePipeline] sourceID];
    v18 = [a4 formatDescription];
    if (a4)
    {
      os_unfair_lock_lock((DerivedStorage + 384));
      *(DerivedStorage + 337) = [-[FigCaptureMicSourcePipeline sourceNode](-[FigCaptureSessionPipelines micSourcePipeline](self->_pipelines "micSourcePipeline"))];
      os_unfair_lock_unlock((DerivedStorage + 384));
    }

    if (v17)
    {
LABEL_18:
      v19 = cs_notificationPayloadForSectionFormatChanged(v17, v18);
      captureSession_postNotificationWithPayload(self->_captureSession, @"SourceFormatDidChange", v19);
    }
  }
}

uint64_t __44__BWFigCaptureSession_graphDidPrepareNodes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) preparedPixelBufferPool];

  return [v1 registerSurfacesFromSourcePool:v2];
}

uint64_t __44__BWFigCaptureSession_graphDidPrepareNodes___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) preparedPixelBufferPool];

  return [v1 registerSurfacesFromSourcePool:v2];
}

uint64_t __44__BWFigCaptureSession_graphDidPrepareNodes___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) preparedPixelBufferPool];

  return [v1 registerSurfacesFromSourcePool:v2];
}

- (void)graph:(id)a3 didStartSourceNode:(id)a4 error:(int)a5
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = [(FigCaptureSessionPipelines *)self->_pipelines firstColorCameraSourcePipeline];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(FigCaptureCameraSourcePipeline *)v8 sourceNodes];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      if (v14 == a4)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  v15 = [(FigCaptureCameraSourcePipeline *)v8 trueVideoCaptureEnabled];
  if (*(DerivedStorage + 872) && (v15 & 1) == 0 && [objc_msgSend(v14 "portType")])
  {
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 872) = 0;
  }
}

- (void)graph:(id)a3 didFinishStartingWithError:(int)a4
{
  v4 = *&a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cs_detectSessionStartFailLoopTTR(self->_captureSession, v4);
  if (v4)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v4 == -12689 || v4 == -12785)
    {
      v9 = (DerivedStorage + 404);
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v9 = (DerivedStorage + 396);
    }

    captureSession_updateSessionStateWithNewInputCondition(self->_captureSession, v9, v10, v4, 0);
  }
}

- (void)interruptionTriggered:(id)a3
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  if ([*(DerivedStorage + 424) containsObject:a3])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v9, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 22409, @"LastShownDate:FigCaptureSession.m:22409", @"LastShownBuild:FigCaptureSession.m:22409", 0);
    free(v9);
  }

  else if (([a3 resolved] & 1) == 0)
  {
    v8 = *(DerivedStorage + 424);
    if (v8)
    {
      [v8 addObject:a3];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(DerivedStorage + 424) = v10;
      [v10 addObject:a3];
      captureSession_updateRunningCondition(self->_captureSession, 0, 0);
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
}

- (void)interruptionResolved:(id)a3
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  if (([a3 resolved] & 1) == 0)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 22444, @"LastShownDate:FigCaptureSession.m:22444", @"LastShownBuild:FigCaptureSession.m:22444", 0);
    free(v8);
  }

  if ([*(DerivedStorage + 424) containsObject:a3])
  {
    [*(DerivedStorage + 424) removeObject:a3];
    if (![*(DerivedStorage + 424) count])
    {

      *(DerivedStorage + 424) = 0;
      captureSession_updateRunningCondition(self->_captureSession, 0, 0);
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
}

- (void)previewStitcher:(id)a3 didApplyWiderCameraShift:(CGPoint)a4 widerCameraScaleFactor:(float)a5 forWiderCameraPortType:(id)a6 narrowerCameraShift:(CGPoint)a7 narrowerCameraScaleFactor:(float)a8 forNarrowerCameraPortType:(id)a9 inSuperWideMacroMode:(BOOL)a10 widerCameraShiftAtBaseZoom:(CGPoint)a11
{
  y = a11.y;
  x = a11.x;
  v13 = a10;
  v16 = a7.y;
  v17 = a7.x;
  v20 = a4.y;
  v21 = a4.x;
  if (self)
  {
    pipelines = [(FigCaptureSessionPipelines *)self->_pipelines firstColorCameraSourcePipeline];
    if (pipelines)
    {
      goto LABEL_5;
    }

    pipelines = self->_pipelines;
    goto LABEL_4;
  }

  pipelines = [0 firstColorCameraSourcePipeline];
  if (!pipelines)
  {
LABEL_4:
    pipelines = [-[FigCaptureCameraSourcePipeline cameraSourcePipelines](pipelines "cameraSourcePipelines")];
  }

LABEL_5:
  v24 = pipelines;
  [(FigCaptureCameraSourcePipeline *)pipelines setPreviewShift:a6 previewScaleFactor:v21 forPortType:v20 previewShiftAtBaseZoom:a5, x, y];
  [(FigCaptureCameraSourcePipeline *)v24 setPreviewShift:a9 previewScaleFactor:v17 forPortType:v16 previewShiftAtBaseZoom:a8, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v25 = [(FigCaptureCameraSourcePipeline *)v24 captureDevice];

  [v25 setOverCaptureSuperWideMacroActive:v13];
}

- (void)previewStitcherReadyForPrimaryCaptureRectUpdates:(id)a3
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = [(NSArray *)[(FigCaptureSessionPipelines *)self->_pipelines previewSinkPipelines] firstObject];
  os_unfair_lock_lock((DerivedStorage + 384));
  v7 = *(DerivedStorage + 584);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    *(DerivedStorage + 584) = v7;
  }

  v8 = [v7 objectForKeyedSubscript:{objc_msgSend(v6, "sinkID")}];
  [*(DerivedStorage + 584) setObject:v6 forKeyedSubscript:{objc_msgSend(v6, "sinkID")}];
  if (dword_1ED844050)
  {
    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    [objc_msgSend(v8 "previewStitcherNode")];
    v11 = v10;
    [objc_msgSend(v8 "previewStitcherNode")];
    v13 = v12;
    v15 = v14;
    [objc_msgSend(v8 "previewStitcherNode")];
    [objc_msgSend(v6 "previewStitcherNode")];
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  if ([a3 waitsForFencedUpdateBeforeFirstEmit])
  {
    captureSession_makeCommittedConfigurationLive(self->_captureSession, [a3 liveConfigurationID]);
  }

  if (v8)
  {
    [objc_msgSend(v8 "previewStitcherNode")];
    if (dword_1ED844050)
    {
      v31 = 0;
      v30 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v31;
      if (os_log_type_enabled(v17, v30))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(DerivedStorage + 104);
        v26 = 136315394;
        v27 = "[BWFigCaptureSession previewStitcherReadyForPrimaryCaptureRectUpdates:]";
        v28 = 2114;
        v29 = v20;
        LODWORD(v24) = 22;
        v23 = &v26;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v22 = [v8 imageQueueSinkNode];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__BWFigCaptureSession_previewStitcherReadyForPrimaryCaptureRectUpdates___block_invoke;
    v25[3] = &unk_1E798FE50;
    v25[5] = self;
    v25[6] = DerivedStorage;
    v25[4] = v6;
    [v22 notifyWhenIdle:v25];
  }

  else
  {
    [objc_msgSend(objc_msgSend(objc_msgSend(v6 "imageQueueSinkNode")];
    v21 = [-[FigCaptureCameraSourcePipeline captureDevice](-[FigCaptureSessionPipelines firstColorCameraSourcePipeline](self->_pipelines "firstColorCameraSourcePipeline"))];
    if (([objc_msgSend(v6 "previewStitcherNode")] & 1) == 0 && v21 <= 1)
    {
      captureSession_resumeTrueVideoVISProcessingForSemaphore(self->_captureSession, 0);
    }
  }
}

- (float)trueVideoCaptureAdditionalZoomFactorForPreviewStitcher:(id)a3
{
  if (!self)
  {
    pipelines = [0 firstColorCameraSourcePipeline];
    if (pipelines)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  pipelines = [(FigCaptureSessionPipelines *)self->_pipelines firstColorCameraSourcePipeline];
  if (!pipelines)
  {
    pipelines = self->_pipelines;
LABEL_4:
    pipelines = [-[FigCaptureCameraSourcePipeline cameraSourcePipelines](pipelines "cameraSourcePipelines")];
  }

LABEL_5:
  v6 = pipelines;
  v7 = -1.0;
  if ([-[FigCaptureCameraSourcePipeline captureDevice](pipelines) position] == 2 && objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v6), "deviceType") == 7)
  {
    if ([a3 trueVideoCaptureEnabled])
    {
      v8 = 1.0;
      if ([(FigCaptureCameraSourcePipeline *)v6 trueVideoTransitionPreviousPhotoGraphZoomFactor]> 0.0)
      {
        v8 = [(FigCaptureCameraSourcePipeline *)v6 trueVideoTransitionPreviousPhotoGraphZoomFactor];
      }

      return [(FigCaptureCameraSourcePipeline *)v6 trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:v8]/ v8;
    }

    else
    {
      v10 = [-[FigCaptureCameraSourcePipeline captureDevice](v6) zoomCommandHandler];
      [v10 rampTargetZoomFactor];
      if (v11 == 0.0)
      {
        [v10 appliedZoomFactor];
      }

      return [(FigCaptureCameraSourcePipeline *)v6 trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:v11];
    }
  }

  return v7;
}

- (void)previewStitcherTrueVideoExitTransitionDidComplete:(id)a3
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSession = self->_captureSession;
  graphID = self->_graphID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__BWFigCaptureSession_previewStitcherTrueVideoExitTransitionDidComplete___block_invoke;
  v7[3] = &unk_1E7998C60;
  v7[4] = self;
  v7[5] = DerivedStorage;
  captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(captureSession, graphID, v7, 0.0);
}

void __73__BWFigCaptureSession_previewStitcherTrueVideoExitTransitionDidComplete___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    captureSession_updateDeferredGraphSetupStartCondition(*(*(a1 + 32) + 8), (*(a1 + 40) + 603), 0);
    v4 = *(*(a1 + 32) + 8);

    captureSession_resumeTrueVideoVISProcessingForSemaphore(v4, 0);
  }
}

- (void)previewStitcherSmartFramingFieldOfViewTransitionAppliedZoomFactor:(id)a3 zoomFactor:(double)a4
{
  if (self)
  {
    pipelines = [(FigCaptureSessionPipelines *)self->_pipelines firstColorCameraSourcePipeline];
    if (pipelines)
    {
      goto LABEL_5;
    }

    pipelines = self->_pipelines;
    goto LABEL_4;
  }

  pipelines = [0 firstColorCameraSourcePipeline];
  if (!pipelines)
  {
LABEL_4:
    pipelines = [-[FigCaptureCameraSourcePipeline cameraSourcePipelines](pipelines "cameraSourcePipelines")];
  }

LABEL_5:
  v7 = [(FigCaptureCameraSourcePipeline *)pipelines captureDevice];

  *&v8 = a4;
  [v7 setZoomFactor:v8];
}

- (void)imageQueueSinkNode:(id)a3 didAttemptToEnqueuePreviewSampleBuffer:(opaqueCMSampleBuffer *)a4 withSuccess:(BOOL)a5
{
  v5 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = -[FigCaptureSessionPipelines previewSinkPipelineWithSinkID:](self->_pipelines, "previewSinkPipelineWithSinkID:", [a3 sinkID]);
  if (v10)
  {
    v11 = v10;
    os_unfair_lock_lock((DerivedStorage + 384));
    v12 = [objc_msgSend(a3 "input")];
    v13 = [*(DerivedStorage + 512) configurationID];
    v14 = [v11 previewStitcherNode];
    if ([v14 rebuildingGraphForTrueVideoTransition] && (v15 = objc_msgSend(v14, "waitsForFencedUpdateBeforeFirstEmit"), v12 != v13) && (v15 & 1) != 0 || !objc_msgSend(*(DerivedStorage + 528), "containsObject:", v11))
    {
      if ([*(DerivedStorage + 752) deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(*(DerivedStorage + 752), "deferredPreparePrioritySinks"), "containsObject:", a3) & 1) == 0)
      {
        captureSession_setPreviewRunning(self->_captureSession, 1, v11);
      }
    }

    else
    {
      captureSession_setPreviewRunning(self->_captureSession, 1, v11);
      [*(DerivedStorage + 528) removeObject:v11];
      if (![*(DerivedStorage + 528) count])
      {

        *(DerivedStorage + 528) = 0;
        *(DerivedStorage + 600) = 1;
        os_unfair_lock_unlock((DerivedStorage + 384));
        captureSession_makeCommittedConfigurationLive(self->_captureSession, [a3 liveConfigurationID]);
        if (!v5)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    os_unfair_lock_unlock((DerivedStorage + 384));
    if (!v5)
    {
      return;
    }

LABEL_13:
    if ([v11 providesBuffersForPreviewTap])
    {
      v16 = *(DerivedStorage + 256);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __93__BWFigCaptureSession_imageQueueSinkNode_didAttemptToEnqueuePreviewSampleBuffer_withSuccess___block_invoke;
      v17[3] = &__block_descriptor_48_e5_v8__0l;
      v17[4] = DerivedStorage;
      v17[5] = a4;
      dispatch_sync(v16, v17);
    }
  }
}

void __93__BWFigCaptureSession_imageQueueSinkNode_didAttemptToEnqueuePreviewSampleBuffer_withSuccess___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 224));
  v2 = *(a1 + 32);
  if (*(v2 + 232))
  {
    v3 = *(v2 + 240);
    v6 = *(v2 + 232);
    if (*(v2 + 248))
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      *(v2 + 248) = 1;
    }

    os_unfair_lock_unlock((v2 + 224));
    v5 = *(a1 + 40);

    v6(v3, v4, v5);
  }

  else
  {

    os_unfair_lock_unlock((v2 + 224));
  }
}

- (void)imageQueueSinkNodeDidDisplayFirstFrame:(id)a3 timedOut:(BOOL)a4
{
  v4 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v8 = [*(DerivedStorage + 784) previewSinkPipelines];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([objc_msgSend(*(*(&v14 + 1) + 8 * v12) "previewStitcherNode")])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      captureSession_generateStateDump(self->_captureSession, @"DisplayFirstFrameTimeout");
    }
  }

  captureSession_updateRemainingSinkNodesToWaitForBeforeStartingDeferredPrepare(self->_captureSession, a3);
}

void __73__BWFigCaptureSession_imageQueueSinkNodeDidDisplayFirstFrame_atHostTime___block_invoke(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 384));
  v4 = *(*(a1 + 32) + 512);
  v5 = *(a1 + 32);
  *(v5 + 472) = 0;
  os_unfair_lock_unlock((v5 + 384));
  v6 = v4;
  os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
  if (a2)
  {
    if (*(*(a1 + 32) + 456) != 2)
    {
      captureSession_abandonCameraAppSessionStartupTelemetry();
    }

    goto LABEL_36;
  }

  v7 = dword_1ED84495C;
  if (!dword_1ED84495C)
  {
    goto LABEL_36;
  }

  IntAttribute = FigCaptureSourceGetIntAttribute(*(a1 + 40), @"DeviceType", 0);
  v9 = FigCaptureSourceGetIntAttribute(*(a1 + 40), @"Position", 0);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10 = [v4 sourceConfigurations];
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v50 count:16];
  v39 = v7;
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        if ([v15 sourceType] == 1)
        {
          v16 = IntAttribute;
          v17 = v9;
          v18 = [objc_msgSend(objc_msgSend(v15 "requiredFormat")];
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = IntAttribute;
  v17 = v9;
  v18 = 0;
LABEL_15:
  v19 = byte_1ED844960 ^ 1;
  if (*(a1 + 48) <= qword_1ED844980)
  {
    v20 = qword_1ED844980;
  }

  else
  {
    v20 = *(a1 + 48);
  }

  v38 = FigHostTimeToNanoseconds();
  v21 = ((FigHostTimeToNanoseconds() / 1000 + 999) / 1000);
  v22 = v17;
  snprintf(__str, 0x40uLL, "%x,%x,%x,%x", v16, v17, v18, v19);
  if (v39 == 2)
  {
    v23 = v18;
    if (!*MEMORY[0x1E695FF58])
    {
      goto LABEL_30;
    }

    v24 = xmmword_1ED844968;
    v25 = fig_log_handle();
    if (!os_signpost_enabled(v25))
    {
      goto LABEL_30;
    }

    v26 = (v20 - v24 + *(&v24 + 1));
    if (qword_1ED844998)
    {
      v27 = [qword_1ED844998 UTF8String];
    }

    else
    {
      v27 = "Unspecified";
    }

    *buf = 134219010;
    v41 = v26;
    v42 = 2082;
    *v43 = __str;
    *&v43[8] = 2082;
    v44 = v27;
    v45 = 1026;
    v46 = v21;
    v47 = 1026;
    v48 = qword_1ED8449A0;
    v29 = "CameraAppLaunchWithOrigin";
    v30 = " enableTelemetry=YES %{signpost.description:end_time}llu S1=%{public,signpost.telemetry:string1}s S2=%{public,signpost.telemetry:string2}s N1=%{public,signpost.telemetry:number1}d N2=%{public,signpost.telemetry:number2}d";
    v31 = v25;
    v32 = 44;
  }

  else
  {
    v23 = v18;
    if (v39 != 1)
    {
      goto LABEL_30;
    }

    if (!*MEMORY[0x1E695FF58])
    {
      goto LABEL_30;
    }

    v28 = fig_log_handle();
    if (!os_signpost_enabled(v28))
    {
      goto LABEL_30;
    }

    *buf = 136446722;
    v41 = __str;
    v42 = 1026;
    *v43 = v21;
    *&v43[4] = 1026;
    *&v43[6] = qword_1ED8449A0;
    v29 = "CameraLaunchWithoutPrewarm";
    v30 = " enableTelemetry=YES S1=%{public,signpost.telemetry:string1}s N1=%{public,signpost.telemetry:number1}d N2=%{public,signpost.telemetry:number2}d";
    v31 = v28;
    v32 = 24;
  }

  _os_signpost_emit_with_name_impl(&dword_1AC90E000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v29, v30, buf, v32);
LABEL_30:
  if (((v22 == 1) & v23) == 1)
  {
    v33 = +[BWAggdDataReporter sharedInstance];
    if (v39 == 2)
    {
      [(BWAggdDataReporter *)v33 reportCameraLaunchWithPrewarm:((v38 / 1000 + 999) / 1000) reason:qword_1ED844998];
      v34 = qword_1ED844998;
      v35 = 1;
      v36 = ((v38 / 1000 + 999) / 1000);
    }

    else
    {
      [(BWAggdDataReporter *)v33 reportCameraLaunchWithoutPrewarm:v21];
      v35 = 0;
      v34 = 0;
      v36 = v21;
    }

    cs_reportCameraAppLaunchCoreAnalyticsData(v35, v34, v36);
  }

  os_unfair_lock_assert_owner(&sFigCaptureSessionCameraAppStartupTelemetry);
  dword_1ED84495C = 0;
  byte_1ED844960 = 0;
  xmmword_1ED844968 = 0u;
  *&qword_1ED844978 = 0u;
  xmmword_1ED844988 = 0u;
  qword_1ED8449A0 = 0;
  *(&qword_1ED8449A0 + 5) = 0;

  qword_1ED844998 = 0;
LABEL_36:
  os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
  v37 = *(a1 + 40);
  if (v37)
  {
    CFRelease(v37);
  }
}

- (void)layoutMonitor:(id)a3 didUpdateLayout:(id)a4
{
  CMBaseObjectGetDerivedStorage();
  if ([a3 displayType])
  {
    if ([a3 displayType] == 2)
    {

      [BWFigCaptureSession _continuityDisplay:a3 didUpdateLayout:?];
    }
  }

  else
  {

    [(BWFigCaptureSession *)self _mainDisplay:v7 didUpdateLayout:a4];
  }
}

uint64_t __58__BWFigCaptureSession__continuityDisplay_didUpdateLayout___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v5[8] = v2;
    v5[9] = v3;
    return __58__BWFigCaptureSession__continuityDisplay_didUpdateLayout___block_invoke_cold_1(v5, result, &v4);
  }

  return result;
}

- (void)initWithFigCaptureSession:(void *)result
{
  if (result)
  {
    if (a2)
    {
      v3.receiver = result;
      v3.super_class = BWFigCaptureSession;
      result = objc_msgSendSuper2(&v3, sel_init);
      if (result)
      {
        result[1] = a2;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (void)_sendRecordingStartedNotificationForFileSinkPipeline:(uint64_t)a1 withSettings:(void *)a2 startPTS:(void *)a3
{
  if (a1)
  {
    [a2 sinkID];
    [a3 settingsID];
    v6 = OUTLINED_FUNCTION_44_11();
    v8 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v6, v7, 0);
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
    objc_opt_class();
    OUTLINED_FUNCTION_26_13();
    v10 = kFigCaptureSessionFileSinkNotification_DidStartRecording;
    if (objc_opt_isKindOfClass())
    {
      v11 = [(FigCaptureMovieFileSinkPipeline *)a2 primaryCaptureDevice];
      v12 = [a3 videoSettings];
      [v9 setObject:objc_msgSend(v12 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVVideoWidthKey", @"MovieWidth"}];
      [v9 setObject:objc_msgSend(v12 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVVideoHeightKey", @"MovieHeight"}];
      v13 = MEMORY[0x1E696AD98];
      [v11 torchLevel];
      [v9 setObject:objc_msgSend(v13 forKeyedSubscript:{"numberWithInt:", v14 != 0.0), @"TorchEnabled"}];
      if ([a3 isIrisRecording])
      {
        v10 = kFigCaptureSessionIrisStillImageSinkNotification_DidStartRecordingIrisMovie;
      }

      v8 = v9;
    }

    OUTLINED_FUNCTION_2_10();
    v16 = CMTimeCopyAsDictionary(&v17, v15);
    [v9 setObject:v16 forKeyedSubscript:@"StartPTS"];

    captureSession_postNotificationWithPayload(*(a1 + 8), *v10, v8);
  }
}

- (void)stillImageCoordinator:(id)a3 willBeginCaptureBeforeResolvingSettingsForID:(int64_t)a4
{
  if (self)
  {
    self = self->_pipelines;
  }

  v6 = [-[BWFigCaptureSession stillImageSinkPipelineSessionStorageWithStillImageCoordinator:](self stillImageSinkPipelineSessionStorageWithStillImageCoordinator:{a3), "primaryStillImageSinkPipeline"}];
  if ([v6 stillImageCoordinatorNode] == a3)
  {
    cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([v6 sinkID], a4, 0);
    v7 = OUTLINED_FUNCTION_80_4();

    captureSession_postNotificationWithPayload(v7, @"IrisWillBeginCaptureBeforeResolvingSettings", v8);
  }
}

- (void)stillImageCoordinator:(id)a3 willBeginCaptureForSettings:(id)a4
{
  v6 = self;
  if (self)
  {
    self = self->_pipelines;
  }

  v7 = [(BWFigCaptureSession *)self stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  v8 = [v7 primaryStillImageSinkPipeline];
  v9 = [v7 primaryCameraSourcePipeline];
  if ([v8 stillImageCoordinatorNode] != a3)
  {
    return;
  }

  if (v6)
  {
    pipelines = v6->_pipelines;
  }

  else
  {
    pipelines = 0;
  }

  cs_setSceneClassifierSuspended(pipelines, v7, 1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  v12 = *(DerivedStorage + 744);
  if (v12)
  {
    dispatch_group_leave(v12);

    *(DerivedStorage + 744) = 0;
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  v13 = [a4 requestedSettings];
  objc_opt_class();
  OUTLINED_FUNCTION_44_11();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v143 = v9;
  [v8 sinkID];
  [v13 settingsID];
  v14 = OUTLINED_FUNCTION_10_29();
  v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v14, v15, 0)}];
  v17 = [objc_msgSend(a4 "captureSettings")];
  v18 = [objc_msgSend(a4 "captureSettings")];
  v19 = 0;
  if ((v18 & 0x10000) != 0)
  {
    v19 = [v13 outputFormat] != 0;
  }

  v145 = v16;
  v139 = v17;
  v138 = [objc_msgSend(a4 "processingSettings")];
  v132 = v19;
  if (v17 <= 0xD && ((1 << v17) & 0x3400) != 0)
  {
    v20 = 0x100000;
LABEL_15:
    v135 = (v18 & v20) != 0;
    v21 = [v13 qualityPrioritization] > 1;
    goto LABEL_16;
  }

  v21 = (v17 & 0xFFFFFFFE) == 4;
  if ((v18 & 0x80) != 0)
  {
    v20 = 0x260000000000;
    goto LABEL_15;
  }

  v135 = v17 == 3;
LABEL_16:
  v136 = v21;
  v137 = [v13 squareCropEnabled];
  v134 = [v13 movieMode];
  [v13 outputFormat];
  v133 = [v13 rawOutputFormat];
  IsDemosaicedRaw = FigCapturePixelFormatIsDemosaicedRaw([v13 rawOutputFormat]);
  IsBayerRaw = FigCapturePixelFormatIsBayerRaw([v13 rawOutputFormat]);
  v24 = [objc_msgSend(a4 "captureSettings")];
  IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(v6->_captureSession);
  v26 = [(FigCaptureCameraSourcePipeline *)v143 captureSource];
  v27 = cs_cameraSensorOrientationCompensationDegreesCW(v26, [objc_msgSend(v7 "primaryStillImageConnectionConfiguration")]);
  v28 = BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(v13, v27, IsCameraOrDerivative);
  if ([v13 outputFileType] != 1785096550 && objc_msgSend(v13, "outputFileType") != 1751476579)
  {
    [v13 outputFileType];
  }

  v140 = v24;
  v141 = v28 % 180;
  if (v24)
  {
    v29 = [v13 deferredPhotoFinalDimensions];
    v30 = !IsDemosaicedRaw;
  }

  else
  {
    v29 = [v13 outputDimensions];
    v30 = 1;
  }

  v31 = __ROR8__(v29, 32);
  if (v141 == 90)
  {
    v32 = v31;
  }

  else
  {
    v32 = v29;
  }

  [v13 outputDimensions];
  if (v30)
  {
    if (IsBayerRaw)
    {
      v33 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v143) sushiRawDimensions];
      if (v33 >= 1 && SHIDWORD(v33) >= 1)
      {
        v35 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v143) sushiRawDimensions];
        if ([v13 aspectRatio])
        {
          FigCaptureConvertDimensionsForAspectRatio(v35, [v13 aspectRatio]);
        }
      }
    }
  }

  else
  {
    [v13 deferredPhotoFinalDimensions];
  }

  [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v32), @"StillWidth"}];
  [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(v32)), @"StillHeight"}];
  v36 = [objc_msgSend(objc_msgSend(a4 "processingSettings")];
  [v36 count];
  v37 = [OUTLINED_FUNCTION_4() arrayWithCapacity:?];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  OUTLINED_FUNCTION_95_0();
  v42 = OUTLINED_FUNCTION_73_3(v38, v39, v40, v41);
  if (v42)
  {
    v43 = v42;
    v44 = *v152;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v152 != v44)
        {
          objc_enumerationMutation(v36);
        }

        [*(*(&v151 + 1) + 8 * i) processingFlags];
        [v37 addObject:{objc_msgSend(OUTLINED_FUNCTION_4(), "numberWithUnsignedInt:")}];
      }

      OUTLINED_FUNCTION_95_0();
      v43 = OUTLINED_FUNCTION_73_3(v46, v47, v48, v49);
    }

    while (v43);
  }

  [v145 setObject:v37 forKeyedSubscript:@"PhotoManifest"];
  if (v133)
  {
    [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"RawStillWidth"}];
    [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"RawStillHeight"];
  }

  if ([v13 previewEnabled])
  {
    [v13 previewDimensions];
    [v145 setObject:OUTLINED_FUNCTION_75_4() forKeyedSubscript:@"PreviewWidth"];
    [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"PreviewHeight"];
  }

  if ([v13 thumbnailEnabled])
  {
    [v13 thumbnailDimensions];
    [v145 setObject:OUTLINED_FUNCTION_75_4() forKeyedSubscript:@"ThumbnailWidth"];
    [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"ThumbnailHeight"];
  }

  if ([v13 rawThumbnailEnabled])
  {
    [v13 rawThumbnailWidth];
    [v145 setObject:objc_msgSend(OUTLINED_FUNCTION_4() forKeyedSubscript:{"numberWithUnsignedInt:"), @"RawThumbnailWidth"}];
    [v13 rawThumbnailHeight];
    [v145 setObject:objc_msgSend(OUTLINED_FUNCTION_4() forKeyedSubscript:{"numberWithUnsignedInt:"), @"RawThumbnailHeight"}];
  }

  if (v134)
  {
    v50 = [objc_msgSend(v13 "movieRecordingSettings")];
    [v145 setObject:objc_msgSend(v50 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVVideoWidthKey", @"IrisMovieWidth"}];
    [v145 setObject:objc_msgSend(v50 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVVideoHeightKey", @"IrisMovieHeight"}];
  }

  if ([v13 portraitEffectsMatteDeliveryEnabled])
  {
    v51 = [(FigCaptureCameraSourcePipeline *)v143 captureSource];
    [FigCaptureSourceGetAttribute(v51 @"PortraitEffectsMatteMainImageDownscalingFactor"];
    v52 = OUTLINED_FUNCTION_92([v13 outputWidth]);
    __ROR8__(v52 | (OUTLINED_FUNCTION_92([v13 outputHeight]) << 32), 32);
    [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"PortraitEffectsMatteWidth"}];
    [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"PortraitEffectsMatteHeight"];
  }

  if ([objc_msgSend(v13 "enabledSemanticSegmentationMatteURNs")])
  {
    v53 = [(FigCaptureCameraSourcePipeline *)v143 captureSource];
    [FigCaptureSourceGetAttribute(v53 @"PortraitEffectsMatteMainImageDownscalingFactor"];
    if (v54 != 0.0)
    {
      v55 = OUTLINED_FUNCTION_92([v13 outputWidth]);
      FigCaptureRoundFloatToMultipleOf(2, v55);
      v56 = OUTLINED_FUNCTION_92([v13 outputHeight]);
      FigCaptureRoundFloatToMultipleOf(2, v56);
    }

    v57 = [v13 enabledSemanticSegmentationMatteURNs];
    if ([v57 containsObject:*MEMORY[0x1E69917E0]])
    {
      [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"HairSegmentationMatteWidth"];
      [v145 setObject:OUTLINED_FUNCTION_117_3() forKeyedSubscript:@"HairSegmentationMatteHeight"];
    }

    v58 = [v13 enabledSemanticSegmentationMatteURNs];
    if ([v58 containsObject:*MEMORY[0x1E69917E8]])
    {
      [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"SkinSegmentationMatteWidth"];
      [v145 setObject:OUTLINED_FUNCTION_117_3() forKeyedSubscript:@"SkinSegmentationMatteHeight"];
    }

    v59 = [v13 enabledSemanticSegmentationMatteURNs];
    if ([v59 containsObject:*MEMORY[0x1E69917F8]])
    {
      [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"TeethSegmentationMatteWidth"];
      [v145 setObject:OUTLINED_FUNCTION_117_3() forKeyedSubscript:@"TeethSegmentationMatteHeight"];
    }

    v60 = [v13 enabledSemanticSegmentationMatteURNs];
    if ([v60 containsObject:*MEMORY[0x1E69917D8]])
    {
      [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"GlassesSegmentationMatteWidth"];
      [v145 setObject:OUTLINED_FUNCTION_117_3() forKeyedSubscript:@"GlassesSegmentationMatteHeight"];
    }
  }

  if (v139 == 2)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FlashActive"];
    [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v132), @"RedEyeReductionEnabled"}];
  }

  if (v135)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HDRActive"];
    [objc_msgSend(a4 "captureSettings")];
    [v145 setObject:objc_msgSend(OUTLINED_FUNCTION_4() forKeyedSubscript:{"numberWithBool:"), @"OriginalPhotoDeliveryEnabled"}];
  }

  if (v136)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SISActive"];
  }

  if ((v18 & 0x400) != 0)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"BravoImageFusionActive"];
  }

  if (v137)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SquareCropEnabled"];
  }

  if (v138)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IDCEnabled"];
  }

  if ((v18 & 0x4000000000) != 0)
  {
    [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"StereoPhotoEnabled"];
  }

  if (v139 == 11)
  {
    v61 = [objc_msgSend(a4 "captureSettings")];
    if (([v61 isEqualToString:*off_1E798A0E0] & 1) != 0 || objc_msgSend(v61, "isEqualToString:", *off_1E798A0F8))
    {
      v62 = [objc_msgSend(objc_msgSend(a4 "captureSettings")];
      [v62 previewSNR];
      v64 = v63 < 0.0;
      if ([v13 digitalFlashMode] == 2)
      {
        if ([v62 stationary])
        {
          [v62 previewSNR];
          if (v65 < -12.0)
          {
            v64 |= 2u;
          }
        }
      }

      if (([objc_msgSend(a4 "captureSettings")] >> 34) & 2 | v64)
      {
        [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"DigitalFlashUserInterfaceHints"}];
      }

      [v145 setObject:objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"captureSettings"), "frameStatisticsByPortType"), "objectForKeyedSubscript:", v61), "displayStrobeRGBEstimate"), @"DigitalFlashUserInterfaceRGBEstimate"}];
    }
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  OUTLINED_FUNCTION_112_0();
  v70 = OUTLINED_FUNCTION_73_3(v66, v67, v68, v69);
  if (v70)
  {
    v71 = v70;
    while (2)
    {
      for (j = 0; j != v71; ++j)
      {
        OUTLINED_FUNCTION_10_18();
        if (!v73)
        {
          objc_enumerationMutation(v36);
        }

        if (([*(*(&v147 + 1) + 8 * j) processingFlags] & 8) != 0)
        {
          [v145 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ProcessedFiltersEnabled"];
          goto LABEL_100;
        }
      }

      OUTLINED_FUNCTION_112_0();
      v71 = OUTLINED_FUNCTION_73_3(v74, v75, v76, v77);
      if (v71)
      {
        continue;
      }

      break;
    }
  }

LABEL_100:
  if (v140)
  {
    [v13 deferredPhotoProxyDimensions];
    [v145 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"DeferredPhotoProxyWidth"}];
    [v145 setObject:OUTLINED_FUNCTION_77_5() forKeyedSubscript:@"DeferredPhotoProxyHeight"];
  }

  memset(&v146.start.epoch, 0, 32);
  *&v146.start.value = 0u;
  v78 = [a4 captureSettings];
  [objc_msgSend(a4 "processingSettings")];
  v79 = *(MEMORY[0x1E6960C98] + 16);
  *&v146.start.value = *MEMORY[0x1E6960C98];
  *&v146.start.epoch = v79;
  *&v146.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v80 = [v78 captureType];
  v81 = [v78 sceneFlags];
  v82 = [v78 captureFlags];
  v83 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v84 = [v78 masterPortType];
  v85 = [v78 captureStreamSettingsForPortType:v84];
  v86 = [objc_msgSend(v78 "frameStatisticsByPortType")];
  v144 = v83;
  if (v83)
  {
    v87 = 0;
    v88 = 0.5;
    v142 = v80;
    v89 = v80 - 1;
    v90 = v86;
    v91 = 0;
    switch(v89)
    {
      case 0u:
        if (([v78 captureFlags] & 0x80) == 0)
        {
          goto LABEL_128;
        }

        v101 = @"WYSIWYG-LearnedNR";
        if (![v144 objectForKeyedSubscript:@"WYSIWYG-LearnedNR"])
        {
          goto LABEL_128;
        }

        goto LABEL_129;
      case 1u:
        v91 = [objc_msgSend(OUTLINED_FUNCTION_116() objectForKeyedSubscript:{@"Min", "integerValue"}];
        v87 = [objc_msgSend(OUTLINED_FUNCTION_116() objectForKeyedSubscript:{@"Max", "integerValue"}];
        v88 = 0.1;
        goto LABEL_153;
      case 2u:
        goto LABEL_152;
      case 3u:
      case 4u:
        [v86 integrationTime];
        if (v94 > 0.0588235294)
        {
          [v84 isEqualToString:*off_1E798A0D8];
        }

        goto LABEL_152;
      case 5u:
LABEL_128:
        v101 = @"WYSIWYG";
LABEL_129:
        v102 = [objc_msgSend(objc_msgSend(v144 objectForKeyedSubscript:{v101), "objectForKeyedSubscript:", @"Min", "integerValue"}];
        v103 = [objc_msgSend(objc_msgSend(v144 objectForKeyedSubscript:{v101), "objectForKeyedSubscript:", @"Max", "integerValue"}];
        if (v142 == 6)
        {
          v87 = v103 + 250;
        }

        else
        {
          v87 = v103;
        }

        if (v142 == 6)
        {
          v91 = v102 + 250;
        }

        else
        {
          v91 = v102;
        }

        goto LABEL_135;
      case 6u:
        if ([v13 bracketType] == 1)
        {
          *&start[0].start.value = *MEMORY[0x1E6960CC0];
          start[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if ([v13 bracketImageCount])
          {
            v95 = 0;
            v96 = 0;
            do
            {
              v97 = [v13 exposureDurations];
              lhs = start[0].start;
              v98 = *(v97 + v95);
              rhs.epoch = *(v97 + v95 + 16);
              *&rhs.value = v98;
              CMTimeAdd(&start[0].start, &lhs, &rhs);
              ++v96;
              v95 += 24;
            }

            while (v96 < [v13 bracketImageCount]);
          }

          lhs = start[0].start;
          v91 = (CMTimeGetSeconds(&lhs) * 1000.0);
          v87 = (v91 * 1.1);
LABEL_135:
          v88 = 0.25;
        }

        else
        {
          v88 = 0.25;
          if ([v13 bracketType] == 2)
          {
            [v90 integrationTime];
            v105 = v104;
            if ([v13 bracketImageCount])
            {
              v106 = 0;
              v87 = 0;
              v107 = 1.79769313e308;
              do
              {
                v108 = *([v13 exposureTargetBiases] + 4 * v106);
                v109 = v108 < 0.0;
                v110 = v108 + v108;
                if (v108 <= 0.0)
                {
                  v111 = 1.0;
                  if (v109)
                  {
                    v111 = fabs(1.0 / v110);
                  }
                }

                else
                {
                  v111 = v108 + v108;
                }

                v87 = (v87 + v105 * v111 * 1000.0);
                if (v111 < v107)
                {
                  v107 = v111;
                }

                ++v106;
              }

              while (v106 < [v13 bracketImageCount]);
            }

            else
            {
              v87 = 0;
              v107 = 1.79769313e308;
            }

            v91 = (v105 * v107 * 1000.0 * [v13 bracketImageCount]);
          }

          else
          {
            v87 = 0;
            v91 = 0;
          }
        }

LABEL_153:
        if ([objc_msgSend(v13 "bravoConstituentImageDeliveryDeviceTypes")])
        {
          v112 = 1.0;
          if ([objc_msgSend(v13 "bravoConstituentImageDeliveryDeviceTypes")] >= 2)
          {
            v113 = 1;
            do
            {
              v112 = v88 + v112;
              ++v113;
            }

            while (v113 < [objc_msgSend(v13 "bravoConstituentImageDeliveryDeviceTypes")]);
          }

          v87 = (v112 * v87);
        }

        v100 = v145;
        if (v91 > 0)
        {
          memset(&lhs, 0, sizeof(lhs));
          CMTimeMake(&lhs, v91, 1000);
          memset(&rhs, 0, sizeof(rhs));
          CMTimeMake(&rhs, v87, 1000);
          v156 = rhs;
          duration = lhs;
          CMTimeSubtract(&start[0].start, &v156, &duration);
          v156 = lhs;
          CMTimeRangeMake(&v146, &v156, &start[0].start);
          goto LABEL_160;
        }

        FigCaptureGetFrameworkRadarComponent();
        LODWORD(rhs.value) = 0;
        LOBYTE(v156.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value_low = LODWORD(rhs.value);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v121 = value_low;
        }

        else
        {
          v121 = value_low & 0xFFFFFFFE;
        }

        if (v121)
        {
          v122 = BWPhotoEncoderStringFromEncodingScheme(v142);
          LODWORD(lhs.value) = 136315394;
          *(&lhs.value + 4) = "captureSession_calculatePhotoProcessingTimeRange";
          LOWORD(lhs.flags) = 2112;
          *(&lhs.flags + 2) = v122;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
          value_low = LODWORD(rhs.value);
        }

        OUTLINED_FUNCTION_8_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v131 = BWPhotoEncoderStringFromEncodingScheme(v142);
        LODWORD(start[0].start.value) = 138412290;
        *(&start[0].start.value + 4) = v131;
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_18();
        OUTLINED_FUNCTION_10();
        v130 = 10554;
        break;
      case 7u:
      case 8u:
        goto LABEL_153;
      case 9u:
      case 0xBu:
      case 0xCu:
        if (v142 == 10)
        {
          v92 = @"UB-";
        }

        else
        {
          v92 = @"DeepFusion-";
        }

        if ((v82 & 0x100000) != 0)
        {
          if ((v81 & 8) != 0)
          {
            v93 = @"LowLightHDR";
          }

          else
          {
            v93 = @"HDR";
          }
        }

        else if ((v81 & 8) != 0)
        {
          v93 = @"LowLightHDR";
          if (([v84 isEqualToString:*off_1E798A0D8] & 1) == 0 && !objc_msgSend(v84, "isEqualToString:", *off_1E798A0D0))
          {
            v93 = @"LowLight";
          }
        }

        else
        {
          v93 = @"WYSIWYG";
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v92, v93];
LABEL_152:
        v91 = [objc_msgSend(OUTLINED_FUNCTION_116() objectForKeyedSubscript:{@"Min", "integerValue"}];
        v87 = [objc_msgSend(OUTLINED_FUNCTION_116() objectForKeyedSubscript:{@"Max", "integerValue"}];
        goto LABEL_153;
      case 0xAu:
        [objc_msgSend(v85 "adaptiveBracketingParameters")];
        OUTLINED_FUNCTION_115_3(&start[0].start, v99);
        OUTLINED_FUNCTION_115_3(&lhs, 0.0);
        CMTimeRangeMake(&v146, &start[0].start, &lhs);
        goto LABEL_124;
      default:
        v91 = 0;
        goto LABEL_153;
    }
  }

  else
  {
    FigCaptureGetFrameworkRadarComponent();
    LODWORD(rhs.value) = 0;
    LOBYTE(v156.value) = 0;
    v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v118 = os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_5_24(v118))
    {
      LODWORD(lhs.value) = 136315138;
      *(&lhs.value + 4) = "captureSession_calculatePhotoProcessingTimeRange";
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    value_low = start;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    LOWORD(start[0].start.value) = 0;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_10();
    v130 = 10399;
  }

  FigCapturePleaseFileRadar(v123, v124, v125, v126, v127, v130, v128, v129, start);
  free(value_low);
LABEL_124:
  v100 = v145;
LABEL_160:
  if ((v146.start.flags & 1) == 0 || (v146.duration.flags & 1) == 0 || v146.duration.epoch || v146.duration.value < 0)
  {
    OUTLINED_FUNCTION_115_3(&v156, 0.1);
    OUTLINED_FUNCTION_115_3(&duration, 1.5);
    CMTimeRangeMake(start, &v156, &duration);
    v146 = start[0];
  }

  v114 = *MEMORY[0x1E695E480];
  start[0] = v146;
  v115 = CMTimeRangeCopyAsDictionary(start, v114);
  if (v115)
  {
    v116 = v115;
    [v100 setObject:v115 forKeyedSubscript:@"PhotoProcessingTimeRange"];
    CFRelease(v116);
  }

  captureSession_postNotificationWithPayload(v6->_captureSession, @"IrisWillBeginCapture", v100);
}

- (void)stillImageCoordinator:(id)a3 willCapturePhotoForSettings:(id)a4 error:(int)a5
{
  v5 = *&a5;
  v8 = self;
  if (self)
  {
    self = self->_pipelines;
  }

  v9 = [(BWFigCaptureSession *)self stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  if ([objc_msgSend(v9 "primaryStillImageSinkPipeline")] == a3)
  {
    [a4 requestedSettings];
    objc_opt_class();
    OUTLINED_FUNCTION_26_13();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = kFigCaptureSessionIrisStillImageSinkNotification_WillCaptureStillImage;
    if ((isKindOfClass & 1) == 0)
    {
      v11 = kFigCaptureSessionStillImageSinkNotification_WillCaptureStillImage;
    }

    v12 = *v11;
    v13 = [objc_msgSend(a4 "captureSettings")] != 4 && objc_msgSend(objc_msgSend(a4, "captureSettings"), "captureType") != 5;
    [objc_msgSend(v9 "primaryStillImageSinkPipeline")];
    [objc_msgSend(a4 "requestedSettings")];
    v14 = OUTLINED_FUNCTION_88_3();
    v16 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v14, v15, v5);
    if (((isKindOfClass | v13) & 1) == 0)
    {
      v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"StillImageStabilizationActive"];
    }

    captureSession = v8->_captureSession;

    captureSession_postNotificationWithPayload(captureSession, v12, v16);
  }
}

- (void)stillImageCoordinator:(id)a3 didResolveStillImagePTS:(id *)a4 forSettings:(id)a5 isPreBracketedEV0:(BOOL)a6
{
  v6 = a6;
  v9 = self;
  if (self)
  {
    self = self->_pipelines;
  }

  v10 = [(BWFigCaptureSession *)self stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3, a4];
  if ([objc_msgSend(v10 "primaryStillImageSinkPipeline")] == a3)
  {
    [a5 requestedSettings];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (!v6 || [objc_msgSend(a5 "captureSettings")]))
    {
      captureSession = v9->_captureSession;
      pipelines = v9->_pipelines;
      v13 = [a5 requestedSettings];
      [a5 captureSettings];
      OUTLINED_FUNCTION_2_10();
      captureSession_didCaptureIrisStill(captureSession, pipelines, v10, v13, v14, &v15, v6, 0);
    }
  }
}

- (void)stillImageCoordinator:(id)a3 didCapturePhotoForSettings:(id)a4
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = [(FigCaptureSessionPipelines *)self->_pipelines stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  if ([objc_msgSend(v8 "primaryStillImageSinkPipeline")] == a3)
  {
    if ([objc_msgSend(a4 "captureSettings")] == 2 && BWCaptureDevicePositionFromPortType(objc_msgSend(objc_msgSend(a4, "captureSettings"), "masterPortType")) == 1 && (objc_msgSend(*(DerivedStorage + 88), "isEqualToString:", 0x1F216ED50) & 1) == 0 && (objc_msgSend(*(DerivedStorage + 88), "isEqualToString:", 0x1F2185210) & 1) == 0 && (objc_msgSend(*(DerivedStorage + 88), "isEqualToString:", 0x1F2185310) & 1) == 0 && objc_msgSend(objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider, "sharedCaptureSourceBackingsProvider"), "commonSettings"), "flashMitigationRequired"))
    {
      [BWFigCaptureSession _doFlashMitigation];
    }

    cs_setSceneClassifierSuspended(self->_pipelines, v8, 0);
    [a4 requestedSettings];
    objc_opt_class();
    OUTLINED_FUNCTION_88_3();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = kFigCaptureSessionIrisStillImageSinkNotification_DidCaptureStillImage;
    if ((isKindOfClass & 1) == 0)
    {
      v10 = kFigCaptureSessionStillImageSinkNotification_DidCaptureStillImage;
    }

    v11 = *v10;
    v12 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([objc_msgSend(v8 "primaryStillImageSinkPipeline")], objc_msgSend(objc_msgSend(a4, "requestedSettings"), "settingsID"), 0);
    captureSession_postNotificationWithPayload(self->_captureSession, v11, v12);
    v13 = [a4 requestedSettings];
    if ([objc_msgSend(objc_msgSend(v8 "primaryStillImageSinkPipeline")])
    {
      [v13 resolutionFlavor];
    }

    if (isKindOfClass)
    {
      if ([objc_msgSend(a4 "requestedSettings")])
      {
        OUTLINED_FUNCTION_33_0();
        v15[1] = 3221225472;
        v15[2] = __72__BWFigCaptureSession_stillImageCoordinator_didCapturePhotoForSettings___block_invoke;
        v15[3] = &unk_1E7998980;
        v15[4] = self;
        v15[5] = v8;
        v15[6] = a4;
        v15[7] = DerivedStorage;
        captureSession_performBlockOnWorkerQueue(v14, v15);
      }
    }
  }
}

- (void)_doFlashMitigation
{
  OUTLINED_FUNCTION_60();
  if (!v0)
  {
    goto LABEL_24;
  }

  v1 = v0;
  v2 = [+[BWFigCaptureAttachedAccessoriesMonitor sharedAttachedAccessoriesMonitor](BWFigCaptureAttachedAccessoriesMonitor "sharedAttachedAccessoriesMonitor")];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  v5 = CFPreferencesCopyValue(@"FlashMitigationInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{@"NumPostedNotifications", "intValue"}];
  v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"LastNotificationTime", "intValue"}];
  v8 = [objc_msgSend(v5 objectForKeyedSubscript:{@"FlashCaptureCountWhileBatteryAccessoryAttached", "intValue"}];
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v10 = v9;
  if (v2)
  {
    v11 = (v8 + 1);
    v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    if (v6)
    {
      v13 = 10;
    }

    else
    {
      v13 = 1;
    }

    if (v11 >= v13 && v10 - v7 > (powf(5.0, (v6 - 1)) * 1209600.0))
    {
      [(BWFigCaptureSession *)v1 _postFlashMitigationUserNotification];
      [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v6 + 1)), @"NumPostedNotifications"}];
      [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v10), @"LastNotificationTime"}];
      v14 = &unk_1F2244CB0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    }

    [v12 setObject:v14 forKeyedSubscript:@"FlashCaptureCountWhileBatteryAccessoryAttached"];
    v15 = &unk_1F2244CB0;
    v16 = @"FlashCaptureCountWhileBatteryAccessoryDetached";
    v17 = v12;
    goto LABEL_10;
  }

  if (v6 <= 0 && v8 < 1)
  {
    goto LABEL_24;
  }

  v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
  v23 = [objc_msgSend(v5 objectForKeyedSubscript:{@"FlashCaptureCountWhileBatteryAccessoryDetached", "intValue"}];
  if (!v23)
  {
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v10), @"FirstFlashCaptureTimeWhileBatteryAccessoryDetached"}];
  }

  v24 = [objc_msgSend(v5 objectForKeyedSubscript:{@"FirstFlashCaptureTimeWhileBatteryAccessoryDetached", "intValue"}];
  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v23 + 1)), @"FlashCaptureCountWhileBatteryAccessoryDetached"}];
  if (v23 >= 9 && v10 - v24 > 86400.0)
  {
    [OUTLINED_FUNCTION_86() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_86() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_86() setObject:? forKeyedSubscript:?];
    v17 = OUTLINED_FUNCTION_86();
LABEL_10:
    [v17 setObject:v15 forKeyedSubscript:v16];
  }

  if (!v12)
  {
LABEL_24:
    OUTLINED_FUNCTION_128_0();
    return;
  }

  CFPreferencesSetValue(@"FlashMitigationInfo", v12, @"com.apple.cameracapture.volatile", v3, v4);
  OUTLINED_FUNCTION_128_0();

  CFPreferencesSynchronize(v18, v19, v20);
}

unint64_t __72__BWFigCaptureSession_stillImageCoordinator_didCapturePhotoForSettings___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 40) "primaryStillImageSinkPipeline")];
  v2 = [OUTLINED_FUNCTION_4() movieFileSinkPipelineWithSinkID:?];
  obj = [MEMORY[0x1E695DF70] array];
  memset(v91, 0, 64);
  v3 = [v2 pendingIrisRecordings];
  v4 = [v3 countByEnumeratingWithState:v91 objects:v90 count:16];
  if (v4)
  {
    v12 = v4;
    do
    {
      v13 = 0;
      do
      {
        OUTLINED_FUNCTION_10_18();
        if (!v14)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v91[0] + 1) + 8 * v13);
        v16 = [objc_msgSend(v15 "settings")];
        if (v16 == [objc_msgSend(*(a1 + 48) "requestedSettings")] && objc_msgSend(v15, "isEmpty"))
        {
          [obj addObject:v15];
        }

        ++v13;
      }

      while (v12 != v13);
      v4 = [v3 countByEnumeratingWithState:v91 objects:v90 count:16];
      v12 = v4;
    }

    while (v4);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v17 = OUTLINED_FUNCTION_105_2(v4, v5, v6, v7, v8, v9, v10, v11, v40, v42, v44, v46, obj, v2, *v50, *&v50[8], *&v50[16], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, 0);
  if (v17)
  {
    v19 = v17;
    *&v18 = 136315650;
    v45 = v18;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        OUTLINED_FUNCTION_89();
        if (!v14)
        {
          objc_enumerationMutation(obja);
        }

        v21 = *(*(&v86 + 1) + 8 * i);
        [v21 settings];
        v22 = [OUTLINED_FUNCTION_28() emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:?];
        if (dword_1ED844050)
        {
          HIDWORD(v69) = 0;
          BYTE3(v69) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v69));
          if (OUTLINED_FUNCTION_5_24(v24))
          {
            v25 = *(*(a1 + 56) + 104);
            *v50 = v45;
            *&v50[4] = "[BWFigCaptureSession stillImageCoordinator:didCapturePhotoForSettings:]_block_invoke";
            *&v50[12] = 2114;
            *&v50[14] = v25;
            *&v50[22] = 2112;
            v51 = v21;
            OUTLINED_FUNCTION_29_12();
            v41 = v50;
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0();
        }

        [v49 sinkID];
        v26 = OUTLINED_FUNCTION_88_3();
        captureSession_postNotificationsForIrisRequestCompletedWithError(v26, v27, v22, 4294951756);
      }

      v19 = OUTLINED_FUNCTION_105_2(v28, v29, v30, v31, v32, v33, v34, v35, v41, v43, v45, *(&v45 + 1), obja, v49, *v50, *&v50[8], *&v50[16], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
    }

    while (v19);
  }

  v36 = [objc_msgSend(*(a1 + 40) "primaryStillImageSinkPipeline")];
  [objc_msgSend(*(a1 + 48) "requestedSettings")];
  v37 = OUTLINED_FUNCTION_4();
  return cs_removeEmptyPendingIrisRecording(v37, v36, v38);
}

- (void)stillImageCoordinator:(id)a3 readyToRespondToRequestAfterRequestWithSettings:(id)a4
{
  if (self)
  {
    self = self->_pipelines;
  }

  v6 = [(BWFigCaptureSession *)self stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  if ([objc_msgSend(v6 "primaryStillImageSinkPipeline")] == a3)
  {
    v7 = [a4 requestedSettings];
    if ([objc_msgSend(objc_msgSend(v6 "primaryStillImageSinkPipeline")])
    {
      if ([v7 resolutionFlavor] != 2)
      {
        [objc_msgSend(v6 "primaryStillImageSinkPipeline")];
        [a4 settingsID];
        v8 = OUTLINED_FUNCTION_44_11();
        cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v8, v9, 0);
        v10 = OUTLINED_FUNCTION_80_4();

        captureSession_postNotificationWithPayload(v10, @"ReadyForResponsiveRequest", v11);
      }
    }
  }
}

- (void)stillImageCoordinator:(id)a3 updateSettingsAfterLiveReconfiguration:(id)a4
{
  if (self)
  {
    self = self->_pipelines;
  }

  v6 = [(BWFigCaptureSession *)self stillImageSinkPipelineSessionStorageWithStillImageCoordinator:a3];
  v7 = [v6 stillImageSinkPipelineWithStillImageCoordinator:a3];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 cameraSourcePipelineForStillImageSinkPipeline:v7];
    if (v9)
    {
      v10 = v9;
      [-[FigCaptureCameraSourcePipeline captureDevice](v9) zoomFactor];
      v13 = v11;
      v12 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v6, v8, a4, &v13);
      captureSession_updateOutputDimensionsAndResolutionFlavor(v12, v10, a4);
      BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(a4, v13);
    }
  }
}

- (void)_postFlashMitigationUserNotification
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AVFCapture"];
    v2 = [v1 localizedStringForKey:@"OK" value:&stru_1F216A3D0 table:@"FlashMitigationNotification-A149"];
    v3 = [v1 localizedStringForKey:@"Alert Message" value:&stru_1F216A3D0 table:@"FlashMitigationNotification-A149"];
    v4 = *MEMORY[0x1E695EE60];
    v14[0] = *MEMORY[0x1E695EE78];
    v14[1] = v4;
    v15[0] = v2;
    v15[1] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v6 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v5);
    if (v6)
    {
      v7 = v6;
      dispatch_get_global_queue(0, 0);
      OUTLINED_FUNCTION_7_1();
      v10 = 3221225472;
      v11 = __59__BWFigCaptureSession__postFlashMitigationUserNotification__block_invoke;
      v12 = &__block_descriptor_40_e5_v8__0l;
      v13 = v7;
      dispatch_async(v8, block);
    }
  }
}

- (void)stagingNode:(id)a3 willEmitIrisRequest:(id)a4
{
  v6 = self;
  if (self)
  {
    self = self->_pipelines;
  }

  [-[BWFigCaptureSession movieFileSinkPipelineWithIrisStagingNode:](self movieFileSinkPipelineWithIrisStagingNode:{a3), "sinkID"}];
  [objc_msgSend(OUTLINED_FUNCTION_87_2() "settings")];
  v7 = OUTLINED_FUNCTION_44_11();
  cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v7, v8, 0);
  if ([OUTLINED_FUNCTION_87_2() numberOfRequestedVariants] >= 1)
  {
    v9 = 0;
    do
    {
      captureSession_postNotificationWithPayload(v6->_captureSession, @"IrisDidRecordIrisMovie", v4);
      ++v9;
    }

    while (v9 < [a4 numberOfRequestedVariants]);
  }
}

- (void)stagingNode:(id)a3 waitingToEmitFrameWithPTS:(id *)a4
{
  if (self)
  {
    self = self->_pipelines;
  }

  v4 = [(FigCaptureMovieFileSinkPipeline *)[(BWFigCaptureSession *)self movieFileSinkPipelineWithIrisStagingNode:a3 fileCoordinatorNode];

  [v4 tryToEmitFramesWaitingForMotion];
}

- (void)graphDidPrepareNodes:(id)a3
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  if (v3)
  {
    v3 = v3[2];
  }

  v5 = [v3 videoDataSinkPipelines];
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        OwnerOfUpstreamPoolFeedingInput = cs_findOwnerOfUpstreamPoolFeedingInput([objc_msgSend(v10 "sinkNode")]);
        [(FigCaptureVideoDataSinkPipeline *)v10 prepareForRendering];
        v12 = [v10 sinkNode];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __44__BWFigCaptureSession_graphDidPrepareNodes___block_invoke;
        v47[3] = &unk_1E798F898;
        v47[4] = v12;
        v47[5] = OwnerOfUpstreamPoolFeedingInput;
        v13 = [OwnerOfUpstreamPoolFeedingInput addPoolPreallocationCompletionHandler:v47];
      }

      v7 = OUTLINED_FUNCTION_37(v13, v14, &v49, v48);
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  if (v4)
  {
    v15 = v4[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 previewSinkPipelines];
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v43 + 1) + 8 * j);
        [v21 prepareForRenderingWithPreparedPixelBufferPool];
        v22 = cs_findOwnerOfUpstreamPoolFeedingInput([objc_msgSend(v21 "imageQueueSinkNode")]);
        v23 = [v21 imageQueueSinkNode];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __44__BWFigCaptureSession_graphDidPrepareNodes___block_invoke_2;
        v41[3] = &unk_1E798F898;
        v41[4] = v23;
        v41[5] = v22;
        v24 = [v22 addPoolPreallocationCompletionHandler:v41];
      }

      v18 = OUTLINED_FUNCTION_37(v24, v25, &v43, v42);
    }

    while (v18);
  }

  memset(v40, 0, sizeof(v40));
  if (v4)
  {
    v26 = v4[2];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v26 videoThumbnailSinkPipelines];
  v28 = [v27 countByEnumeratingWithState:v40 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        OUTLINED_FUNCTION_21_20();
        if (!v31)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v40[0] + 1) + 8 * k);
        v33 = [-[FigCaptureVideoThumbnailSinkPipeline imageQueueSinkNode](v32) input];
        v34 = cs_findOwnerOfUpstreamPoolFeedingInput(v33);
        v35 = [(FigCaptureVideoThumbnailSinkPipeline *)v32 imageQueueSinkNode];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __44__BWFigCaptureSession_graphDidPrepareNodes___block_invoke_3;
        v38[3] = &unk_1E798F898;
        v38[4] = v35;
        v38[5] = v34;
        v36 = [v34 addPoolPreallocationCompletionHandler:v38];
      }

      v29 = OUTLINED_FUNCTION_1_18(v36, v37, v40, v39);
    }

    while (v29);
  }

  OUTLINED_FUNCTION_128_0();
}

- (void)graphDidResolveRetainedBufferCounts:(id)a3
{
  memset(v18, 0, sizeof(v18));
  if (self)
  {
    self = self->_pipelines;
  }

  v3 = [(BWFigCaptureSession *)self movieFileSinkPipelines];
  v4 = [v3 countByEnumeratingWithState:v18 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        OUTLINED_FUNCTION_6_30();
        if (!v14)
        {
          objc_enumerationMutation(v3);
        }

        v15 = [(FigCaptureMovieFileSinkPipeline *)*(*(&v18[0] + 1) + 8 * i) setUpBackPressureForResolvedRetainedBufferCounts:v7];
      }

      v5 = OUTLINED_FUNCTION_1_18(v15, v16, v18, v17);
    }

    while (v5);
  }
}

- (void)previewStitcher:(id)a3 overCaptureStatusDidChange:(int)a4
{
  v4 = *&a4;
  if (self)
  {
    self = self->_pipelines;
  }

  v5 = [-[BWFigCaptureSession previewSinkPipelines](self previewSinkPipelines];
  if (v5)
  {
    v8[0] = @"SectionID";
    v9[0] = [v5 sinkID];
    v8[1] = @"Status";
    v9[1] = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v6 = OUTLINED_FUNCTION_80_4();
    captureSession_postNotificationWithPayload(v6, @"OverCaptureStatusDidChange", v7);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }
}

void __72__BWFigCaptureSession_previewStitcherReadyForPrimaryCaptureRectUpdates___block_invoke(uint64_t a1)
{
  if (dword_1ED844050)
  {
    OUTLINED_FUNCTION_19_20();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "imageQueueSinkNode")];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = [-[FigCaptureCameraSourcePipeline captureDevice](objc_msgSend(v5 "firstColorCameraSourcePipeline"))];
  if (([objc_msgSend(*(a1 + 32) "previewStitcherNode")] & 1) == 0 && v6 <= 1)
  {
    captureSession_resumeTrueVideoVISProcessingForSemaphore(*(*(a1 + 40) + 8), 0);
  }
}

- (void)imageQueueSinkNodeDidDisplayFirstFrame:(id)a3 atHostTime:(int64_t)a4
{
  captureSession = self->_captureSession;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = -[FigCaptureSessionPipelines previewSinkPipelineWithSinkID:](self->_pipelines, "previewSinkPipelineWithSinkID:", [a3 sinkID]);
  if (v9)
  {
    *&v29 = @"SectionID";
    v28[0] = [v9 sinkID];
    captureSession_postNotificationWithPayload(captureSession, @"DidDisplayFirstPreviewFrame", [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v29 count:1]);
  }

  if (([*(DerivedStorage + 88) isEqualToString:0x1F216ED50] & 1) != 0 || objc_msgSend(*(DerivedStorage + 88), "isEqualToString:", 0x1F2185310))
  {
    pipelines = self->_pipelines;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [(FigCaptureSessionPipelines *)pipelines previewSinkPipelines];
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([v16 imageQueueSinkNode] == a3)
          {
            [v16 sourceID];
            v17 = [OUTLINED_FUNCTION_28() cameraSourcePipelineWithSourceID:?];
            v18 = [(FigCaptureCameraSourcePipeline *)v17 captureSource];
            if (v18)
            {
              v19 = v18;
              CFRetain(v18);
              OUTLINED_FUNCTION_7_1();
              v22 = 3221225472;
              v23 = __73__BWFigCaptureSession_imageQueueSinkNodeDidDisplayFirstFrame_atHostTime___block_invoke;
              v24 = &__block_descriptor_56_e8_v12__0B8l;
              v25 = DerivedStorage;
              v26 = v19;
              v27 = a4;
              v20 = CMBaseObjectGetDerivedStorage();
              captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(captureSession, *(v20 + 760), v21, 0.0);
            }

            return;
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v29 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)videoPIPOverlayNode:(id)a3 overlayRectDidChange:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (self)
  {
    self = self->_pipelines;
  }

  v8 = [-[BWFigCaptureSession previewSinkPipelines](self previewSinkPipelines];
  if (v8)
  {
    v9 = v8;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
    v13[0] = @"SectionID";
    v13[1] = @"ZoomPIPOverlayRect";
    v14[0] = [v9 sinkID];
    v14[1] = DictionaryRepresentation;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = OUTLINED_FUNCTION_80_4();
    captureSession_postNotificationWithPayload(v11, @"ZoomPIPOverlayRectDidChange", v12);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }
}

- (void)_mainDisplay:(void *)a3 didUpdateLayout:
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      if (*(DerivedStorage + 112) == 1)
      {
        if ([objc_msgSend(a3 "foregroundApps")])
        {
          v7 = [objc_msgSend(a3 "transitioningApps")] ^ 1;
        }

        else
        {
          v7 = 0;
        }

        os_unfair_lock_lock((v6 + 384));
        v8 = *(v6 + 456);
        os_unfair_lock_unlock((v6 + 384));
        if (([*(v6 + 88) isEqualToString:0x1F216ED50] & 1) != 0 || objc_msgSend(*(v6 + 88), "isEqualToString:", 0x1F2185310))
        {
          os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
          v9 = byte_1EB58EC18;
          v10 = [objc_msgSend(a3 "foregroundApps")];
          if (v9 == 1)
          {
            if (v10)
            {
              v11 = [objc_msgSend(a3 "transitioningApps")] ^ 1;
            }

            else
            {
              v11 = 0;
            }

            if ([objc_msgSend(a3 "foregroundApps")])
            {
              v12 = 0;
            }

            else
            {
              v12 = [objc_msgSend(a3 "transitioningApps")] ^ 1;
            }

            if ((v11 | v12))
            {
              byte_1EB58EC18 = 0;
              if (v11)
              {
                qword_1EB58EC20 = mach_absolute_time();
              }

              if (v12 && byte_1EB58EC04 == 1 && dword_1EB58EC14 && !v8)
              {
                captureSession_reportCancelledLockScreenCameraLaunch();
              }
            }
          }

          else if (v10 && [objc_msgSend(a3 "transitioningApps")])
          {
            byte_1EB58EC18 = 1;
          }

          os_unfair_lock_unlock(&sLockScreenCameraLaunchTelemetry);
        }

        if (v7 && !v8)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = *(v6 + 88);
          v15 = mach_absolute_time();
          v16 = mach_continuous_time();
          FigCaptureSessionPrewarm(v14, v15, v16, @"FBSDisplayLayoutMonitor");
          objc_autoreleasePoolPop(v13);
        }

        v17 = *(a1 + 8);

        captureSession_updateDeferredGraphSetupStartCondition(v17, (v6 + 602), v7);
      }
    }
  }
}

- (void)_continuityDisplay:(uint64_t)a1 didUpdateLayout:(void *)a2
{
  if (a1)
  {
    [a2 isDisplayConnected];
    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_33_0();
    v6[1] = 3221225472;
    v6[2] = __58__BWFigCaptureSession__continuityDisplay_didUpdateLayout___block_invoke;
    v6[3] = &unk_1E7998CA8;
    v6[4] = a1;
    v7 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(v3, *(DerivedStorage + 760), v6, 0.0);
  }
}

uint64_t __58__BWFigCaptureSession__continuityDisplay_didUpdateLayout___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 cameraSourcePipelines];
  result = [v8 countByEnumeratingWithState:a1 objects:a3 count:16];
  if (result)
  {
    v10 = result;
    do
    {
      v11 = 0;
      do
      {
        OUTLINED_FUNCTION_89();
        if (!v12)
        {
          objc_enumerationMutation(v8);
        }

        [(FigCaptureCameraSourcePipeline *)*(*(a1 + 8) + 8 * v11++) setBlackenFramesForContinuityDisplayConnected:?];
      }

      while (v10 != v11);
      result = [v8 countByEnumeratingWithState:a1 objects:a3 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

@end