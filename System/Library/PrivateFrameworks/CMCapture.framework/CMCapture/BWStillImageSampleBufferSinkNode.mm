@interface BWStillImageSampleBufferSinkNode
+ (void)initialize;
- (BWAutoFocusROIAnalyticsPayload)_autoFocusROIAnalyticsPayloadWithSampleBuffer:(uint64_t)buffer error:(void *)error stillImageSettings:(void *)settings metadata:;
- (_BYTE)_coreAnalyticsPayloadWithSampleBuffer:(int)buffer error:(void *)error stillImageSettings:(void *)settings metadata:(int)metadata isForConstantColorCapture:;
- (id)_newFilteredDetectedObjectsInfoFromDetectedObjectsInfo:(id)result;
- (uint64_t)_reportAggdDataWithRequestedStillImageSettings:(void *)settings resolvedStillImageCaptureSettings:(opaqueCMSampleBuffer *)captureSettings sbuf:;
- (void)_attachPrivateClientMetadataToSampleBuffer:(_BYTE *)buffer;
- (void)_reportCoreAnalyticsForNodeError:(uint64_t)error;
- (void)_reportCoreAnalyticsForSampleBuffer:(void *)buffer stillImageSettings:;
- (void)_sendCoreAnalyticsPayloadAndResetReportingStateWithPayload:(uint64_t)payload settingsID:(uint64_t)d processingFlags:(uint64_t)flags;
- (void)_updateMemoryAnalyticsForStillImageWithSampleBuffer:(void *)buffer stillImageSettings:(int)settings timeSinceLastCaptureInSession:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)initWithInputMediaType:(void *)type sinkID:;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setPropagatedAttachedMediaKeys:(id)keys;
@end

@implementation BWStillImageSampleBufferSinkNode

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
  v3.receiver = self;
  v3.super_class = BWStillImageSampleBufferSinkNode;
  [(BWSinkNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BWNodeSanitizeMetadataIfNecessary(buffer);
  [(BWStillImageSampleBufferSinkNode *)self _attachPrivateClientMetadataToSampleBuffer:buffer];
  if (self->_focusPixelBlurScoreEnabled)
  {
    v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    v7 = BWFocusPixelBlurScoreForMetadata(v6);
    CMSetAttachment(buffer, @"FocusPixelBlurScoreResult", v7, 1u);
  }

  v8 = CMGetAttachment(buffer, @"StillSettings", 0);
  v9 = [CMGetAttachment(buffer @"StillImageProcessingFlags"];
  if ((v9 & 0x1000) != 0 && ([objc_msgSend(v8 "captureSettings")] & 4) != 0 && self->_stillImageCapturePipeliningMode != 2)
  {
    -[BWDeferredCaptureContainerManager containerWaitForFlush:](+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager, "sharedInstance"), "containerWaitForFlush:", [objc_msgSend(v8 "requestedSettings")]);
  }

  sampleBufferAvailableHandler = self->_sampleBufferAvailableHandler;
  if (sampleBufferAvailableHandler)
  {
    sampleBufferAvailableHandler[2](sampleBufferAvailableHandler, buffer, 0, [v8 requestedSettings]);
  }

  isTimeLapse = [(BWStillImageSampleBufferSinkNodeAnalyticsConfiguration *)self->_analyticsConfiguration isTimeLapse];
  if ((v9 & 0x2000) == 0 && !isTimeLapse)
  {
    -[BWStillImageSampleBufferSinkNode _reportAggdDataWithRequestedStillImageSettings:resolvedStillImageCaptureSettings:sbuf:](self, [v8 requestedSettings], objc_msgSend(v8, "captureSettings"), buffer);
  }

  [(BWStillImageSampleBufferSinkNode *)self _reportCoreAnalyticsForSampleBuffer:buffer stillImageSettings:v8];
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  v6 = [objc_msgSend(error "stillImageSettings")];
  sampleBufferAvailableHandler = self->_sampleBufferAvailableHandler;
  if (sampleBufferAvailableHandler)
  {
    sampleBufferAvailableHandler[2](sampleBufferAvailableHandler, 0, [error errorCode], v6);
  }

  cachedAnalyticsPayloadForPortraitFailures = self->_cachedAnalyticsPayloadForPortraitFailures;
  if (cachedAnalyticsPayloadForPortraitFailures)
  {
    -[BWStillImageSampleBufferSinkNode _sendCoreAnalyticsPayloadAndResetReportingStateWithPayload:settingsID:processingFlags:](self, cachedAnalyticsPayloadForPortraitFailures, [v6 settingsID]);
    self->_lastReportedSettingsID = 0;
  }

  [(BWStillImageSampleBufferSinkNode *)self _reportCoreAnalyticsForNodeError:error];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (dword_1ED844510)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10.receiver = self;
  v10.super_class = BWStillImageSampleBufferSinkNode;
  [(BWSinkNode *)&v10 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (dword_1ED844510)
  {
    v17 = 0;
    v16 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!d)
  {
    if (dword_1ED844510)
    {
      v17 = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v17;
      if (os_log_type_enabled(v8, v16))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v14 = 136315138;
        v15 = "[BWStillImageSampleBufferSinkNode didReachEndOfDataForConfigurationID:input:]";
        LODWORD(v12) = 12;
        v11 = &v14;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(BWStillImageSampleBufferSinkNode *)self setSampleBufferAvailableHandler:0, v11, v12];
  }

  v13.receiver = self;
  v13.super_class = BWStillImageSampleBufferSinkNode;
  [(BWSinkNode *)&v13 didReachEndOfDataForConfigurationID:d input:input, v11, v12];
}

- (void)setPropagatedAttachedMediaKeys:(id)keys
{
  if (![(NSArray *)self->_propagatedAttachedMediaKeys isEqualToArray:?])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    propagatedAttachedMediaKeys = self->_propagatedAttachedMediaKeys;
    v6 = [(NSArray *)propagatedAttachedMediaKeys countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(propagatedAttachedMediaKeys);
          }

          [(BWNodeInput *)self->super.super._input setMediaConfiguration:0 forAttachedMediaKey:*(*(&v23 + 1) + 8 * i)];
        }

        v7 = [(NSArray *)propagatedAttachedMediaKeys countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v7);
    }

    v10 = [keys copy];
    self->_propagatedAttachedMediaKeys = v10;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          v16 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v16 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v16 setPassthroughMode:1];
          [(BWNodeInput *)self->super.super._input setMediaConfiguration:v16 forAttachedMediaKey:v15];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v12);
    }
  }
}

- (void)initWithInputMediaType:(void *)type sinkID:
{
  if (!type)
  {
    return 0;
  }

  v6.receiver = type;
  v6.super_class = BWStillImageSampleBufferSinkNode;
  v1 = objc_msgSendSuper2(&v6, sel_initWithSinkID_);
  v2 = v1;
  if (v1)
  {
    [v1 setSupportsLiveReconfiguration:1];
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    v4 = +[BWVideoFormatRequirements formatRequirements];
    [v4 setMemoryPoolUseAllowed:0];
    [(BWNodeInput *)v3 setFormatRequirements:v4];
    [v2 addInput:v3];
  }

  return v2;
}

- (void)_attachPrivateClientMetadataToSampleBuffer:(_BYTE *)buffer
{
  if (buffer && buffer[221] == 1)
  {
    v47[20] = v2;
    v47[21] = v3;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    target = a2;
    v5 = CMGetAttachment(a2, @"Inferences", 0);
    v6 = MEMORY[0x1E695E0F8];
    if (v5)
    {
      v6 = v5;
    }

    v35 = v6;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    memset(v47, 0, 64);
    v36 = [&unk_1F2249108 countByEnumeratingWithState:v47 objects:v46 count:16];
    if (v36)
    {
      OUTLINED_FUNCTION_13_1();
      v34 = v8;
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v10 != v34)
          {
            objc_enumerationMutation(&unk_1F2249108);
          }

          v37 = v9;
          v11 = *(v47[1] + 8 * v9);
          v12 = [objc_msgSend(v35 objectForKeyedSubscript:{v11), "inferences"}];
          if (v12)
          {
            v13 = v12;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v14 = [v12 countByEnumeratingWithState:&v42 objects:v41 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v43;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v43 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v42 + 1) + 8 * i);
                  v19 = [v13 objectForKeyedSubscript:v18];
                  time.value = 0;
                  v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&time];
                  if (v20 && !time.value)
                  {
                    v21 = v20;
                    if ([v11 intValue] == 801)
                    {
                      v18 = [v18 stringByAppendingString:@"-Landmarks"];
                    }

                    [dictionary2 setObject:v21 forKeyedSubscript:v18];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v42 objects:v41 count:16];
              }

              while (v15);
            }
          }

          v9 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [&unk_1F2249108 countByEnumeratingWithState:v47 objects:v46 count:16];
      }

      while (v36);
    }

    v22 = CMGetAttachment(target, @"BWStillImageCaptureSettings", 0);
    metadata = [v22 metadata];
    if ([metadata smartCamVersion] >= 1 && objc_msgSend(objc_msgSend(metadata, "smartCamInferences"), "count"))
    {
      if (metadata)
      {
        [metadata smartCamTimestamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v24 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
      v38[0] = *off_1E798A138;
      [metadata smartCamVersion];
      v25 = [OUTLINED_FUNCTION_17() numberWithInt:?];
      v26 = *off_1E798A130;
      v39[0] = v25;
      v39[1] = v24;
      v27 = *off_1E798A120;
      v38[1] = v26;
      v38[2] = v27;
      v39[2] = [objc_msgSend(v22 "metadata")];
      v38[3] = *off_1E798A128;
      [metadata isPreviewSmartCamInferences];
      v39[3] = [OUTLINED_FUNCTION_17() numberWithBool:?];
      [dictionary2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v39, v38, 4), *off_1E798A118}];
    }

    if ([dictionary2 count])
    {
      v28 = dictionary2;
    }

    else
    {
      v28 = 0;
    }

    [dictionary setObject:v28 forKeyedSubscript:*off_1E798A110];
    if (buffer[222] == 1)
    {
      v29 = [CMGetAttachment(target *off_1E798A3C8];
      if (v29)
      {
        v30 = [(BWStillImageSampleBufferSinkNode *)buffer _newFilteredDetectedObjectsInfoFromDetectedObjectsInfo:v29];
        [dictionary setObject:v30 forKeyedSubscript:*off_1E798A108];
      }
    }

    if ([dictionary count])
    {
      CMSetAttachment(target, *off_1E798A100, dictionary, 1u);
    }
  }
}

- (uint64_t)_reportAggdDataWithRequestedStillImageSettings:(void *)settings resolvedStillImageCaptureSettings:(opaqueCMSampleBuffer *)captureSettings sbuf:
{
  if (result)
  {
    if (settings && captureSettings && (v7 = result, v8 = OUTLINED_FUNCTION_158(result, *off_1E798A3C8), [v8 count]))
    {
      v9 = +[BWAggdDataReporter sharedInstance];
      PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v41, captureSettings);
      value = v41.value;
      flags = v41.flags;
      timescale = v41.timescale;
      epoch = v41.epoch;
      v11 = [OUTLINED_FUNCTION_158(PresentationTimeStamp @"StillImageProcessingFlags")];
      v12 = v11;
      v13 = OUTLINED_FUNCTION_158(v11, @"TotalZoomFactor");
      if (v13)
      {
        [v13 floatValue];
        v15 = v14;
      }

      else
      {
        v15 = 1.0;
      }

      if (*(v7 + 221) == 1)
      {
        v36 = [*(v7 + 240) isPhotoFormat] ^ 1;
      }

      else
      {
        v36 = 0;
      }

      v35 = v9;
      v16 = v8;
      if ([settings captureStreamSettingsForPortType:*off_1E798A0E0])
      {
        v17 = 1;
      }

      else
      {
        v17 = [settings captureStreamSettingsForPortType:*off_1E798A0F8] != 0;
      }

      captureType = [settings captureType];
      v19 = *off_1E798A0D8;
      if ([settings captureStreamSettingsForPortType:*off_1E798A0D8] && objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_53_0(), "captureStreamSettings"), "count") >= 2)
      {
        v38 = [objc_msgSend(settings captureStreamSettingsForPortType:{*off_1E798A0C0), "captureType"}];
        captureType2 = [(BWAggdDataReporter *)v9 captureType];
      }

      else
      {
        captureType2 = 0;
        v38 = captureType;
      }

      captureFlags = [settings captureFlags];
      if ((captureFlags & 0x400) != 0)
      {
        v21 = [objc_msgSend(settings captureStreamSettingsForPortType:{*off_1E798A0C0), "captureType"}];
        v22 = [objc_msgSend(settings captureStreamSettingsForPortType:{v19), "captureType"}];
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      result = [(BWAggdDataReporter *)v35 reportStereoFusionProcessingTypeForCaptureType:captureType isStereoFusionCapture:(captureFlags >> 10) & 1 wideSubCaptureType:v21 teleSubCaptureType:v22 isOriginalImage:v12 & 1];
      if ((v12 & 9) == 0)
      {
        v23 = v36;
        if ([a2 stillImageUserInitiatedRequestTime] && (flags & 1) != 0)
        {
          memset(&v41, 0, sizeof(v41));
          if (a2)
          {
            [a2 stillImageUserInitiatedRequestPTS];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          CMTimeSubtract(&v41, &lhs, &rhs);
          if ((v41.flags & 0x1D) == 1)
          {
            [settings captureFlags];
            sceneFlags = [OUTLINED_FUNCTION_53_0() sceneFlags];
            rhs = v41;
            LOBYTE(v32) = v17;
            [(BWAggdDataReporter *)v35 reportShutterLag:&rhs primaryCaptureType:v38 secondaryCaptureType:captureType2 captureFlags:flags sceneFlags:sceneFlags stillDuringVideo:v36 frontCamera:v32];
          }

          else if (a2)
          {
            [a2 stillImageUserInitiatedRequestPTS];
          }
        }

        [v16 objectForKeyedSubscript:*off_1E798B540];
        v25 = [objc_msgSend(OUTLINED_FUNCTION_53_0() "frameStatisticsByPortType")];
        if (v25)
        {
          luxLevel = [v25 luxLevel];
          captureFlags2 = [settings captureFlags];
          sceneFlags2 = [settings sceneFlags];
          LOBYTE(v32) = v17;
          v29 = captureFlags2;
          v23 = v36;
          [(BWAggdDataReporter *)v35 reportLuxLevel:luxLevel primaryCaptureType:v38 secondaryCaptureType:captureType2 captureFlags:v29 sceneFlags:sceneFlags2 stillDuringVideo:v36 frontCamera:v32];
        }

        if (v15 != 0.0)
        {
          [settings captureFlags];
          [OUTLINED_FUNCTION_53_0() sceneFlags];
          OUTLINED_FUNCTION_14_31();
          [v30 reportZoomFactor:? primaryCaptureType:? secondaryCaptureType:? captureFlags:? sceneFlags:? stillDuringVideo:? frontCamera:?];
        }

        if (*(v7 + 221))
        {
          if ((v23 & 1) == 0)
          {
            [(BWAggdDataReporter *)v35 reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera:v17];
          }
        }

        else
        {
          [settings captureFlags];
          [OUTLINED_FUNCTION_53_0() sceneFlags];
          OUTLINED_FUNCTION_14_31();
          [v31 reportNonCameraAppCaptureWithPrimaryCaptureType:? secondaryCaptureType:? captureFlags:? sceneFlags:? stillDuringVideo:? frontCamera:?];
        }

        if (*(v7 + 221) == 1 && ([*(v7 + 240) isTimeLapse] & 1) == 0 && (objc_msgSend(a2, "burstQualityCaptureEnabled") & 1) == 0)
        {
          [BWAutoFocusPositionSensorMonitor logStillImageAPSStatistics:v16];
        }

        if (([*(v7 + 240) isTimeLapse] & 1) == 0 && (objc_msgSend(a2, "burstQualityCaptureEnabled") & 1) == 0)
        {
          -[BWAggdDataReporter reportFaceCount:frontCamera:](v35, "reportFaceCount:frontCamera:", [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B218), "count"}], v17);
        }

        result = [*(v7 + 240) isTimeLapse];
        if ((result & 1) == 0)
        {
          result = [a2 burstQualityCaptureEnabled];
          if ((result & 1) == 0)
          {
            result = [v16 objectForKeyedSubscript:*off_1E798B678];
            if (result)
            {
              return -[BWAggdDataReporter reportSensorTemperature:frontCamera:](v35, "reportSensorTemperature:frontCamera:", [result intValue], v17);
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (void)_reportCoreAnalyticsForSampleBuffer:(void *)buffer stillImageSettings:
{
  if (self && a2 && buffer && ([*(self + 240) isTimeLapse] & 1) == 0 && (!objc_msgSend(objc_msgSend(buffer, "requestedSettings"), "constantColorEnabled") || BWSampleBufferGetAttachedMedia(a2, 0x1F21AB170)))
  {
    v6 = [objc_msgSend(buffer "requestedSettings")];
    if (v6 != *(self + 264))
    {
      v7 = v6;
      v8 = [OUTLINED_FUNCTION_158(v6 @"StillImageProcessingFlags")];
      if ((v8 & 1) == 0)
      {
        v9 = v8;
        OUTLINED_FUNCTION_158(v8, *off_1E798A3C8);
        v10 = OUTLINED_FUNCTION_17_26();
        v29 = v11;
        v13 = [(BWStillImageSampleBufferSinkNode *)v10 _coreAnalyticsPayloadWithSampleBuffer:v12 error:0 stillImageSettings:buffer metadata:v11 isForConstantColorCapture:0];
        timeSinceLastCaptureInSession = [v13 timeSinceLastCaptureInSession];
        v31 = timeSinceLastCaptureInSession;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = [OUTLINED_FUNCTION_158(timeSinceLastCaptureInSession @"PhotoManifest")];
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
LABEL_11:
          v19 = 0;
          while (1)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (([*(*(&v33 + 1) + 8 * v19) processingFlags] & 0x40) != 0)
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
              if (v17)
              {
                goto LABEL_11;
              }

              goto LABEL_21;
            }
          }

          if ((v9 & 0x40) != 0)
          {
            goto LABEL_21;
          }

          *(self + 272) = v13;
        }

        else
        {
LABEL_21:
          [+[BWCoreAnalyticsReporter sendEvent:v29], "sendEvent:", v13];

          *(self + 272) = 0;
          *(self + 264) = v7;
          v20 = OUTLINED_FUNCTION_17_26();
          [(BWStillImageSampleBufferSinkNode *)v20 _updateMemoryAnalyticsForStillImageWithSampleBuffer:v21 stillImageSettings:buffer timeSinceLastCaptureInSession:v31];
          if ((*(self + 220) & 1) == 0)
          {
            v22 = OUTLINED_FUNCTION_17_26();
            v24 = [(BWStillImageSampleBufferSinkNode *)v22 _coreAnalyticsPayloadWithSampleBuffer:v23 error:0 stillImageSettings:buffer metadata:v30 isForConstantColorCapture:1];
            if (v24)
            {
              [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v24];
            }

            if (*(self + 221) == 1)
            {
              v25 = OUTLINED_FUNCTION_17_26();
              v28 = [(BWStillImageSampleBufferSinkNode *)v25 _autoFocusROIAnalyticsPayloadWithSampleBuffer:v26 error:v27 stillImageSettings:buffer metadata:v30];
              if (v28)
              {
                [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v28];
              }
            }
          }

          FigCaptureLogCameraStillImageCapturePowerEvent([objc_msgSend(buffer "captureSettings")], objc_msgSend(objc_msgSend(buffer, "requestedSettings"), "outputWidth"), objc_msgSend(objc_msgSend(buffer, "requestedSettings"), "outputHeight"), objc_msgSend(objc_msgSend(buffer, "captureSettings"), "deliverDeferredPhotoProxyImage"));
        }
      }
    }
  }
}

- (void)_sendCoreAnalyticsPayloadAndResetReportingStateWithPayload:(uint64_t)payload settingsID:(uint64_t)d processingFlags:(uint64_t)flags
{
  if (payload)
  {
    [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", d];

    *(payload + 272) = 0;
    *(payload + 264) = flags;
  }
}

- (void)_reportCoreAnalyticsForNodeError:(uint64_t)error
{
  if (error && a2 && ([*(error + 240) isTimeLapse] & 1) == 0)
  {
    v4 = [objc_msgSend(objc_msgSend(a2 "stillImageSettings")];
    if (v4 != *(error + 264))
    {
      v5 = v4;
      -[BWCoreAnalyticsReporter sendEvent:](+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter, "sharedInstance"), "sendEvent:", -[BWStillImageSampleBufferSinkNode _coreAnalyticsPayloadWithSampleBuffer:error:stillImageSettings:metadata:isForConstantColorCapture:](error, 0, [a2 errorCode], objc_msgSend(a2, "stillImageSettings"), objc_msgSend(a2, "metadata"), 0));

      *(error + 272) = 0;
      *(error + 264) = v5;
    }
  }
}

- (id)_newFilteredDetectedObjectsInfoFromDetectedObjectsInfo:(id)result
{
  if (result)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v55 = OUTLINED_FUNCTION_20_16(dictionary, v4, v5, v6, v7, v8, v9, v10, v47, dictionary, v50, v52, v54, v56, v59, v61, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1), v85);
    if (v55)
    {
      OUTLINED_FUNCTION_13_1();
      v51 = v11;
      v60 = *off_1E798ACE8;
      v12 = *off_1E798B5C0;
      v13 = *off_1E798B1F0;
      v53 = a2;
      do
      {
        v14 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v15 != v51)
          {
            objc_enumerationMutation(a2);
          }

          v57 = *(*(&v86 + 1) + 8 * v14);
          v16 = [objc_msgSend(a2 "objectForKeyedSubscript:{"objectForKeyedSubscript:", v60}")];
          array = [MEMORY[0x1E695DF70] array];
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v25 = OUTLINED_FUNCTION_19_24(array, v18, v19, v20, v21, v22, v23, v24, v48, v49, v51, v53, v55, v57, v60, v14, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, 0);
          if (v25)
          {
            v26 = v25;
            v27 = *v82;
            do
            {
              v28 = 0;
              do
              {
                if (*v82 != v27)
                {
                  objc_enumerationMutation(v16);
                }

                v29 = *(*(&v81 + 1) + 8 * v28);
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                if ([v29 objectForKeyedSubscript:v12])
                {
                  [dictionary2 setObject:objc_msgSend(v29 forKeyedSubscript:{"objectForKeyedSubscript:", v12), v12}];
                }

                if ([v29 objectForKeyedSubscript:v13])
                {
                  [dictionary2 setObject:objc_msgSend(v29 forKeyedSubscript:{"objectForKeyedSubscript:", v13), v13}];
                }

                v31 = [dictionary2 objectForKeyedSubscript:v12];
                if (v31)
                {
                  v31 = [array addObject:dictionary2];
                }

                ++v28;
              }

              while (v26 != v28);
              v26 = OUTLINED_FUNCTION_19_24(v31, v32, v33, v34, v35, v36, v37, v38, v48, v49, v51, v53, v55, v58, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
            }

            while (v26);
          }

          v39 = [array count];
          if (v39)
          {
            v63 = v60;
            v64 = array;
            v39 = [v49 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v64, &v63, 1), v58}];
          }

          v14 = v62 + 1;
          a2 = v53;
        }

        while (v62 + 1 != v55);
        v55 = OUTLINED_FUNCTION_20_16(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v51, v53, v55, v58, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1), v85);
      }

      while (v55);
    }

    return v49;
  }

  return result;
}

- (_BYTE)_coreAnalyticsPayloadWithSampleBuffer:(int)buffer error:(void *)error stillImageSettings:(void *)settings metadata:(int)metadata isForConstantColorCapture:
{
  LODWORD(v146) = buffer;
  if (result)
  {
    LODWORD(v7) = metadata;
    v11 = result;
    captureSettings = [error captureSettings];
    if (captureSettings && (v13 = captureSettings, v14 = [captureSettings metadata], (v15 = objc_msgSend(error, "requestedSettings")) != 0) && ((v16 = v15, a2) || v146))
    {
      obj = [objc_msgSend(objc_msgSend(settings objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
      if (!obj)
      {
        obj = [settings objectForKeyedSubscript:*off_1E798B218];
      }

      if (a2)
      {
        if (v7)
        {
          v17 = BWStillImageCaptureConstantColorAnalyticsPayload;
        }

        else
        {
          v17 = BWStillImageCaptureAnalyticsPayload;
        }

        v19 = objc_alloc_init(v17);
        v18 = 0;
      }

      else
      {
        v18 = objc_alloc_init(BWStillImageErrorAnalyticsPayload);
        v19 = 0;
      }

      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (!v20)
      {
        OUTLINED_FUNCTION_0();
LABEL_185:
        FigDebugAssert3();
        return v20;
      }

      HIDWORD(v142) = v7;
      OUTLINED_FUNCTION_16_31();
      [v20 setDeferred:v11[220]];
      v144 = v13;
      settingsCopy = settings;
      if (!a2)
      {
LABEL_97:
        if (!v146)
        {
          goto LABEL_101;
        }

        if (v18)
        {
          [(BWStillImageErrorAnalyticsPayload *)v18 setError:?];
          memset(&v183, 0, sizeof(v183));
          FigCaptureZoomTransformToFinalCropRect(settings, &v183);
          OUTLINED_FUNCTION_12_36();
          if (!CGAffineTransformIsIdentity(&rhs))
          {
            OUTLINED_FUNCTION_12_36();
            CGAffineTransformDecompose(&v176, &rhs);
            v95 = 1.0 / v176.scale.height;
            *&v95 = 1.0 / v176.scale.height;
            [(BWStillImageErrorAnalyticsPayload *)v18 setDigitalZoomRatioFromSource:v95];
          }

LABEL_101:
          if (settings)
          {
            settingsCopy2 = settings;
            v97 = [settings objectForKeyedSubscript:*off_1E798B540];
            [v20 setPortType:v97];
            if (v97)
            {
              v135 = [objc_msgSend(v13 "frameStatisticsByPortType")];
              v141 = v20;
              [v20 setLuxLevel:{objc_msgSend(v135, "luxLevel")}];
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              dictionary2 = [MEMORY[0x1E695DF90] dictionary];
              dictionary3 = [MEMORY[0x1E695DF90] dictionary];
              v150 = *off_1E798B2F0;
              v154 = dictionary;
              [dictionary setObject:objc_msgSend(settingsCopy2 forKeyedSubscript:{"objectForKeyedSubscript:"), v97}];
              v101 = *off_1E798B550;
              v102 = dictionary2;
              [dictionary2 setObject:objc_msgSend(settingsCopy2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B550), v97}];
              v103 = *off_1E798B460;
              v104 = dictionary3;
              [dictionary3 setObject:objc_msgSend(settingsCopy2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B460), v97}];
              v105 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B730];
              v172 = 0u;
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v106 = [v105 countByEnumeratingWithState:&v172 objects:&v156 count:16];
              if (v106)
              {
                v107 = v106;
                v108 = *v173;
                do
                {
                  for (i = 0; i != v107; ++i)
                  {
                    if (*v173 != v108)
                    {
                      objc_enumerationMutation(v105);
                    }

                    v110 = *(*(&v172 + 1) + 8 * i);
                    v111 = [v105 objectForKeyedSubscript:v110];
                    [v154 setObject:objc_msgSend(v111 forKeyedSubscript:{"objectForKeyedSubscript:", v150), v110}];
                    [v102 setObject:objc_msgSend(v111 forKeyedSubscript:{"objectForKeyedSubscript:", v101), v110}];
                    [v104 setObject:objc_msgSend(v111 forKeyedSubscript:{"objectForKeyedSubscript:", v103), v110}];
                  }

                  v107 = [v105 countByEnumeratingWithState:&v172 objects:&v156 count:16];
                }

                while (v107);
              }

              v20 = v141;
              [v141 setApsSubjectDistance:v154];
              [v141 setPracticalFocalLength:v102];
              [v141 setFocusingMethod:v104];
              [v135 awbStable];
              [OUTLINED_FUNCTION_28() setAwbStable:?];
              settingsCopy2 = settingsCopy;
            }

            v112 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B120];
            if (v112)
            {
              *&v113 = vcvts_n_f32_u32([v112 unsignedShortValue], 0xCuLL);
              [v20 setAwbRGain:v113];
            }

            [settingsCopy2 objectForKeyedSubscript:*off_1E798B0F8];
            OUTLINED_FUNCTION_16_31();
            if (v114)
            {
              *&v115 = vcvts_n_f32_u32([v114 unsignedShortValue], 0xCuLL);
              [v20 setAwbGGain:v115];
            }

            v116 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B0C0];
            if (v116)
            {
              *&v117 = vcvts_n_f32_u32([v116 unsignedShortValue], 0xCuLL);
              [v20 setAwbBGain:v117];
            }

            v118 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B208];
            if (v118)
            {
              *&v119 = ([v118 intValue] / -255.0) + 1.0;
              [v20 setLensPosition:v119];
            }

            v120 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B678];
            if (v120)
            {
              [v120 intValue];
              [OUTLINED_FUNCTION_28() setSensorTemperature:?];
            }

            v121 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B480];
            if (v121)
            {
              [v121 floatValue];
              [v20 setLensTemperature:?];
            }

            v122 = [settingsCopy2 objectForKeyedSubscript:*off_1E798B2A8];
            if (v122)
            {
              [v122 floatValue];
              [v20 setExposureDuration:?];
            }

            LODWORD(v183.a) = 0;
            FigCaptureComputeImageGainFromMetadata();
          }

          [v13 captureType];
          [OUTLINED_FUNCTION_28() setCaptureType:?];
          [v13 captureFlags];
          [OUTLINED_FUNCTION_28() setCaptureFlags:?];
          [v13 sceneFlags];
          [OUTLINED_FUNCTION_28() setSceneFlags:?];
          [v16 stillImageCaptureStartTime];
          mach_absolute_time();
          [v20 setProcessingDuration:((FigHostTimeToNanoseconds() / 1000) / 1000)];
          [v14 streamingTime];
          [OUTLINED_FUNCTION_28() setStreamingTime:?];
          if ([v13 captureStreamSettingsForPortType:*off_1E798A0E0])
          {
            [v20 setActiveDeviceMask:{objc_msgSend(v20, "activeDeviceMask") | 1}];
            [v20 setDevicePosition:2];
          }

          if ([v13 captureStreamSettingsForPortType:*off_1E798A0F8])
          {
            [v20 setActiveDeviceMask:{objc_msgSend(v20, "activeDeviceMask") | 0x40}];
            [v20 setDevicePosition:2];
          }

          if ([v13 captureStreamSettingsForPortType:*off_1E798A0E8])
          {
            [v20 setActiveDeviceMask:{objc_msgSend(v20, "activeDeviceMask") | 2}];
            [v20 setDevicePosition:2];
          }

          if ([v13 captureStreamSettingsForPortType:*off_1E798A0D8])
          {
            [v20 setActiveDeviceMask:{objc_msgSend(v20, "activeDeviceMask") | 8}];
            [OUTLINED_FUNCTION_15_28() setDevicePosition:?];
          }

          if ([v13 captureStreamSettingsForPortType:*off_1E798A0C0])
          {
            [v20 setActiveDeviceMask:{objc_msgSend(v20, "activeDeviceMask") | 4}];
            [OUTLINED_FUNCTION_15_28() setDevicePosition:?];
          }

          if ([v13 captureStreamSettingsForPortType:*off_1E798A0D0])
          {
            [v20 setActiveDeviceMask:{objc_msgSend(v20, "activeDeviceMask") | 0x10}];
            [OUTLINED_FUNCTION_15_28() setDevicePosition:?];
          }

          if ([objc_msgSend(v16 "bravoConstituentImageDeliveryDeviceTypes")])
          {
            BWStringFromFigCaptureSourceDeviceTypes([v16 bravoConstituentImageDeliveryDeviceTypes]);
            [OUTLINED_FUNCTION_28() setConstituentImageDeliveryDeviceTypes:?];
          }

          [v14 alsLuxLevel];
          [OUTLINED_FUNCTION_28() setAlsLuxLevel:?];
          [v14 alsRearLuxLevel];
          [v20 setAlsRearLuxLevel:?];
          [v13 applicationID];
          [OUTLINED_FUNCTION_28() setClientApplicationID:?];
          [OUTLINED_FUNCTION_4_66() isTimeLapse];
          [OUTLINED_FUNCTION_28() setTimeLapse:?];
          [v16 burstQualityCaptureEnabled];
          [OUTLINED_FUNCTION_28() setBurst:?];
          [v16 depthDataDeliveryEnabled];
          [OUTLINED_FUNCTION_28() setDepthEnabled:?];
          [obj count];
          [OUTLINED_FUNCTION_28() setNumberOfFaces:?];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 movieMode] == 1)
          {
            [OUTLINED_FUNCTION_15_28() setLivePhotoEnabled:?];
          }

          if (v11[221] == 1)
          {
            v123 = [OUTLINED_FUNCTION_4_66() isPhotoFormat] ^ 1;
          }

          else
          {
            v123 = 0;
          }

          if (([OUTLINED_FUNCTION_4_66() isTimeLapse] & 1) == 0 && ((objc_msgSend(v16, "burstQualityCaptureEnabled") | v123) & 1) == 0)
          {
            if (*(v11 + 32))
            {
              [v16 stillImageRequestTime];
              [v20 setTimeSinceLastCaptureInSession:FigHostTimeToNanoseconds() / 0xF4240uLL];
            }

            *(v11 + 32) = [v16 stillImageRequestTime];
          }

          [OUTLINED_FUNCTION_4_66() isSemanticStyleRenderingSupported];
          [OUTLINED_FUNCTION_28() setSemanticStyleRenderingSupported:?];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 semanticStyle])
          {
            semanticStyle = [v16 semanticStyle];
            [v14 semanticStyleSceneType];
            [OUTLINED_FUNCTION_28() setSemanticSceneType:?];
            [semanticStyle toneBias];
            [v20 setSemanticStyleToneBias:?];
            [semanticStyle warmthBias];
            [v20 setSemanticStyleWarmthBias:?];
          }

          [OUTLINED_FUNCTION_4_66() isSmartStyleRenderingSupported];
          [OUTLINED_FUNCTION_28() setSmartStyleRenderingSupported:?];
          if ([v16 smartStyle])
          {
            [MEMORY[0x1E6991718] makerNoteTagForSmartStyleCastType:objc_msgSend(objc_msgSend(v16 smartStyleVersion:{"smartStyle"), "cast"), 1}];
            [OUTLINED_FUNCTION_28() setSmartStyleCastType:?];
            [objc_msgSend(v16 "smartStyle")];
            [v20 setSmartStyleToneBias:?];
            [objc_msgSend(v16 "smartStyle")];
            [v20 setSmartStyleColorBias:?];
            [objc_msgSend(v16 "smartStyle")];
            [v20 setSmartStyleIntensity:?];
          }

          if (FigCapturePixelFormatIsDemosaicedRaw([v16 rawOutputFormat]))
          {
            v125 = 4;
          }

          else
          {
            if (!FigCapturePixelFormatIsBayerRaw([v16 rawOutputFormat]))
            {
              goto LABEL_161;
            }

            v125 = 8;
          }

          [v20 setOutputFileType:{objc_msgSend(v20, "outputFileType") | v125}];
LABEL_161:
          if ([v16 outputFileType] == v7)
          {
            v126 = 2;
          }

          else if ([v16 outputFileType] == 1751476579 || objc_msgSend(v16, "outputFileType") == 1751476582)
          {
            v126 = 1;
          }

          else if ([v16 outputFileType] == 1953064550)
          {
            v126 = 16;
          }

          else
          {
            if ([v16 outputFileType] != 1684628333)
            {
LABEL_167:
              [OUTLINED_FUNCTION_4_66() formatDimensionWidth];
              [OUTLINED_FUNCTION_28() setFormatDimensionWidth:?];
              [OUTLINED_FUNCTION_4_66() formatDimensionHeight];
              [OUTLINED_FUNCTION_28() setFormatDimensionHeight:?];
              if ([v16 deferredPhotoFinalWidth] && objc_msgSend(v16, "deferredPhotoFinalHeight"))
              {
                [v16 deferredPhotoFinalWidth];
                [OUTLINED_FUNCTION_28() setDeliveredDimensionWidth:?];
                [v16 deferredPhotoFinalHeight];
              }

              else
              {
                [v16 outputWidth];
                [OUTLINED_FUNCTION_28() setDeliveredDimensionWidth:?];
                [v16 outputHeight];
              }

              [OUTLINED_FUNCTION_28() setDeliveredDimensionHeight:?];
              [OUTLINED_FUNCTION_4_66() formatMaxFrameRate];
              [v20 setFormatMaxFrameRate:v127];
              [v16 qualityPrioritization];
              [OUTLINED_FUNCTION_28() setQualityPrioritization:?];
              [v16 clientQualityPrioritization];
              [OUTLINED_FUNCTION_28() setClientRequestedQualityPrioritization:?];
              [OUTLINED_FUNCTION_4_66() isHighQualityPhotoWithVideoFormatSupported];
              [OUTLINED_FUNCTION_28() setHighQualityPhotoWithVideoFormatSupported:?];
              [OUTLINED_FUNCTION_4_66() isPhotoFormat];
              [OUTLINED_FUNCTION_28() setPhotoFormat:?];
              [OUTLINED_FUNCTION_4_66() pixelFormat];
              [OUTLINED_FUNCTION_28() setPixelFormat:?];
              [OUTLINED_FUNCTION_4_66() binned];
              [OUTLINED_FUNCTION_28() setBinned:?];
              [v16 depthDataDeliveryEnabled];
              [OUTLINED_FUNCTION_28() setDepthDataDeliveryEnabled:?];
              shallowDepthOfFieldEffectSceneStatus = [v14 shallowDepthOfFieldEffectSceneStatus];
              BWShallowDepthOfFieldEffectStatusIsEnabled([shallowDepthOfFieldEffectSceneStatus intValue]);
              [OUTLINED_FUNCTION_28() setPortraitRequested:?];
              if (shallowDepthOfFieldEffectSceneStatus)
              {
                +[BWCoreAnalyticsReporter shallowDepthOfFieldEffectStatusToString:](BWCoreAnalyticsReporter, "shallowDepthOfFieldEffectStatusToString:", [shallowDepthOfFieldEffectSceneStatus intValue]);
                [OUTLINED_FUNCTION_28() setPortraitEffectStatus:?];
              }

              [OUTLINED_FUNCTION_4_66() fastCapturePrioritizationEnabled];
              [OUTLINED_FUNCTION_28() setFastCapturePrioritizationEnabled:?];
              FigCaptureSourceFormatHighResolutionFlavorToShortString([v16 resolutionFlavor]);
              [OUTLINED_FUNCTION_28() setResolutionFlavor:?];
              return v20;
            }

            v126 = 32;
          }

          [v20 setOutputFileType:{objc_msgSend(v20, "outputFileType") | v126}];
          goto LABEL_167;
        }

        OUTLINED_FUNCTION_0();
        goto LABEL_185;
      }

      if (v19)
      {
        if ([settings count])
        {
          BWStillImageProcessingFlagsForSampleBuffer(a2);
          v21 = [OUTLINED_FUNCTION_7() setProcessingFlags:?];
          v22 = OUTLINED_FUNCTION_20_0(v21, @"TotalZoomFactor");
          if (v22)
          {
            [v22 floatValue];
          }

          else
          {
            LODWORD(v23) = 1.0;
          }

          [OUTLINED_FUNCTION_20_0(objc_msgSend(v19 setZoom:{v23), @"CaptureDeviceType", "intValue"}];
          v24 = [OUTLINED_FUNCTION_7() setDeviceType:?];
          [OUTLINED_FUNCTION_20_0(v24 @"UIZoomFactor")];
          [v19 setUiZoom:?];
          memset(&v184, 0, sizeof(v184));
          CMSampleBufferGetPresentationTimeStamp(&v184, a2);
          if ([v16 stillImageUserInitiatedRequestTime])
          {
            if (v184.flags)
            {
              memset(&v183, 0, 24);
              [v16 stillImageUserInitiatedRequestPTS];
              lhs.origin = *&v184.value;
              *&lhs.size.width = v184.epoch;
              CMTimeSubtract(&v183, &lhs, &rhs);
              if ((BYTE4(v183.b) & 0x1D) == 1)
              {
                *&rhs.a = *&v183.a;
                rhs.c = v183.c;
                [v19 setShutterLag:(CMTimeGetSeconds(&rhs) * 1000.0)];
              }
            }
          }

          AttachedInference = BWInferenceGetAttachedInference(a2, 802, @"VisionFaceDetectionObservations");
          if (AttachedInference)
          {
            [AttachedInference count];
            [OUTLINED_FUNCTION_7() setNumberOfFacesWithVisionFaceDetection:?];
          }

          v26 = [obj count];
          v134 = v18;
          if (v26)
          {
            v27 = BWPixelBufferDimensionsFromSampleBuffer(a2);
            v28 = HIDWORD(v27);
            v29 = SHIDWORD(v27);
            if (v27 > SHIDWORD(v27))
            {
              LODWORD(v28) = v27;
            }

            v30 = v28;
            v31 = [OUTLINED_FUNCTION_20_0(v27 *off_1E798A5E0)];
            memset(&v183, 0, sizeof(v183));
            if (v31)
            {
              v39 = *(MEMORY[0x1E695EFD0] + 16);
              *&v183.a = *MEMORY[0x1E695EFD0];
              *&v183.c = v39;
              *&v183.tx = *(MEMORY[0x1E695EFD0] + 32);
            }

            else
            {
              v31 = FigCaptureZoomTransformToFinalCropRect(settings, &v183);
            }

            v7 = v16;
            v181 = 0u;
            v182 = 0u;
            v179 = 0u;
            v180 = 0u;
            *&v136 = v29 / v30;
            v40 = OUTLINED_FUNCTION_18_21(v31, v32, v33, v34, v35, v36, v37, v38, v129, v131, v6, v18, v136, v14, v20, v142, v13, settings, v146, obj, v148, v151, v152, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, *(&v172 + 1), v173, *(&v173 + 1), v174, *(&v174 + 1), v175, *(&v175 + 1), *&v176.scale.width, *&v176.scale.height, *&v176.horizontalShear, *&v176.rotation, *&v176.translation.dx, *&v176.translation.dy, *&rhs.a, *&rhs.b, *&rhs.c, *&rhs.d, *&rhs.tx, *&rhs.ty, *&lhs.origin.x, *&lhs.origin.y, *&lhs.size.width);
            if (v40)
            {
              v42 = v40;
              v43 = 0;
              v44 = 0;
              v45 = *v180;
              v149 = *(MEMORY[0x1E695F058] + 16);
              v153 = *MEMORY[0x1E695F058];
              v46 = *off_1E798B5C0;
              v47 = 0.0;
              v48 = 1.0;
              do
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v180 != v45)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v50 = *(*(&v179 + 1) + 8 * j);
                  lhs.origin = v153;
                  lhs.size = v149;
                  v51 = CGRectMakeWithDictionaryRepresentation([v50 objectForKeyedSubscript:v46], &lhs);
                  if (v51)
                  {
                    rhs = v183;
                    v185 = CGRectApplyAffineTransform(lhs, &rhs);
                    x = v185.origin.x;
                    y = v185.origin.y;
                    width = v185.size.width;
                    height = v185.size.height;
                    v188.origin.x = FigCaptureUnityRect();
                    v188.origin.y = v63;
                    v188.size.width = v64;
                    v188.size.height = v65;
                    v186.origin.x = x;
                    v186.origin.y = y;
                    v186.size.width = width;
                    v186.size.height = height;
                    v187 = CGRectIntersection(v186, v188);
                    v66 = v187.size.height;
                    v67 = v187.origin.x + v187.size.width;
                    v68 = v187.origin.x > 0.849999994;
                    if (v67 < 0.150000006)
                    {
                      v68 = 1;
                    }

                    v69 = v187.origin.y + v187.size.height;
                    v70 = v187.origin.y > 0.849999994;
                    if (v69 < 0.150000006)
                    {
                      v70 = 1;
                    }

                    v71 = v68 || v70;
                    v72 = v187.origin.x > 0.150000006;
                    if (v187.origin.y <= 0.150000006)
                    {
                      v72 = 0;
                    }

                    if (v67 >= 0.849999994)
                    {
                      v72 = 0;
                    }

                    if (v69 >= 0.849999994)
                    {
                      v72 = 0;
                    }

                    v73 = (v71 | v72) ^ 1;
                    v44 = v44 + (v71 | v73);
                    v43 = v43 + (v72 | v73);
                    if (v47 <= v66)
                    {
                      v47 = v66;
                    }

                    if (v48 >= v66)
                    {
                      v48 = v66;
                    }
                  }
                }

                v42 = OUTLINED_FUNCTION_18_21(v51, v52, v53, v54, v55, v56, v57, v58, v130, v132, v133, v134, v137, v139, v140, v143, v144, settingsCopy, v146, obj, v149, *(&v149 + 1), v153, *(&v153 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, *(&v172 + 1), v173, *(&v173 + 1), v174, *(&v174 + 1), v175, *(&v175 + 1), *&v176.scale.width, *&v176.scale.height, *&v176.horizontalShear, *&v176.rotation, *&v176.translation.dx, *&v176.translation.dy, *&rhs.a, *&rhs.b, *&rhs.c, *&rhs.d, *&rhs.tx, *&rhs.ty, *&lhs.origin.x, *&lhs.origin.y, *&lhs.size.width);
              }

              while (v42);
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v47 = 0.0;
              v48 = 1.0;
            }

            *&v41 = *&v137 * v47;
            [v19 setLargestFaceHeight:v41];
            *&v74 = *&v137 * v48;
            [v19 setSmallestFaceHeight:v74];
            [v19 setNumberOfFacesAtEdge:v44];
            [v19 setNumberOfFacesAtCenter:v43];
            v16 = v7;
            v14 = v139;
            v20 = v140;
            OUTLINED_FUNCTION_16_31();
            v13 = v144;
            settings = settingsCopy;
          }

          OUTLINED_FUNCTION_20_0(v26, @"OisRecenteringLoggingData");
          v75 = [OUTLINED_FUNCTION_7() setOisRecenteringLoggingData:?];
          v76 = OUTLINED_FUNCTION_20_0(v75, @"IntelligentDistortionCorrectionStatusCode");
          if (v76)
          {
            [v76 intValue];
            v76 = [OUTLINED_FUNCTION_7() setIntelligentDistortionCorrectionStatusCode:?];
          }

          v77 = OUTLINED_FUNCTION_20_0(v76, @"IntelligentDistortionCorrectionGainMapProcessingStatusCode");
          if (v77)
          {
            [v77 intValue];
            v77 = [OUTLINED_FUNCTION_7() setIntelligentDistortionCorrectionGainMapProcessingStatusCode:?];
          }

          v78 = OUTLINED_FUNCTION_20_0(v77, @"IntelligentDistortionCorrectionCorrectionType");
          if (v78)
          {
            [v78 intValue];
            v78 = [OUTLINED_FUNCTION_7() setIntelligentDistortionCorrectionCorrectionType:?];
          }

          v79 = OUTLINED_FUNCTION_20_0(v78, @"ISPMotionHighPassFilterConvergenceFlags");
          if (v79)
          {
            [v79 intValue];
            [OUTLINED_FUNCTION_7() setIspMotionHighPassFilterConvergenceFlags:?];
          }

          IsDemosaicedRaw = FigCapturePixelFormatIsDemosaicedRaw([v16 rawOutputFormat]);
          if (IsDemosaicedRaw)
          {
            v138 = v11;
            v81 = v14;
            v82 = v20;
            v83 = OUTLINED_FUNCTION_20_0(IsDemosaicedRaw, @"RawImageAssetSizes");
            v84 = [v83 objectForKeyedSubscript:0x1F21AA7F0];
            v7 = [v83 objectForKeyedSubscript:0x1F21AA810];
            v85 = [v83 objectForKeyedSubscript:0x1F21AA830];
            v86 = OUTLINED_FUNCTION_20_0(v85, @"RawImageBitDepth");
            rawOutputFileCodec = [v16 rawOutputFileCodec];
            [v16 rawOutputFileCodecQuality];
            v89 = v88;
            if (v84)
            {
              [v84 unsignedIntValue];
              [OUTLINED_FUNCTION_7() setDngFileSize:?];
            }

            if (v7)
            {
              [v7 unsignedIntValue];
              [OUTLINED_FUNCTION_7() setThumbnailImageSize:?];
            }

            OUTLINED_FUNCTION_16_31();
            if (v85)
            {
              [v85 unsignedIntValue];
              [OUTLINED_FUNCTION_7() setAuxiliaryImagesSize:?];
            }

            v20 = v82;
            v14 = v81;
            if (v86)
            {
              [v86 unsignedIntValue];
              [OUTLINED_FUNCTION_7() setBitDepth:?];
            }

            v11 = v138;
            v13 = v144;
            if (rawOutputFileCodec)
            {
              [v19 setDngCodecType:rawOutputFileCodec];
            }

            settings = settingsCopy;
            if (v89 != 0.0)
            {
              *&v90 = v89;
              [v19 setDngCodecQuality:v90];
            }
          }

          outputFileType = [v16 outputFileType];
          if (outputFileType == v7 || (outputFileType = [v16 outputFileType], outputFileType == 1751476579) || (outputFileType = objc_msgSend(v16, "outputFileType"), outputFileType == 1751476582) || (outputFileType = objc_msgSend(v16, "outputFileType"), outputFileType == 1684628333))
          {
            v92 = OUTLINED_FUNCTION_20_0(outputFileType, @"EncodedImageSurfaceSize");
            if (v92)
            {
              [v92 unsignedIntValue];
              [OUTLINED_FUNCTION_7() setPhotoFileSize:?];
            }
          }

          AttachedMedia = [v16 depthDataDeliveryEnabled];
          if (AttachedMedia)
          {
            AttachedMedia = BWSampleBufferGetAttachedMedia(a2, @"Depth");
            if (AttachedMedia)
            {
              ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
              CVPixelBufferGetWidth(ImageBuffer);
              [OUTLINED_FUNCTION_7() setDepthFormatDimensionWidth:?];
              CVPixelBufferGetHeight(ImageBuffer);
              [OUTLINED_FUNCTION_7() setDepthFormatDimensionHeight:?];
              CVPixelBufferGetPixelFormatType(ImageBuffer);
              [OUTLINED_FUNCTION_7() setDepthPixelFormat:?];
              [v16 depthDataFiltered];
              AttachedMedia = [OUTLINED_FUNCTION_7() setDepthDataFiltered:?];
            }
          }

          OUTLINED_FUNCTION_20_0(AttachedMedia, @"FocusPixelBlurScoreResult");
          [OUTLINED_FUNCTION_7() setFocusPixelBlurScoreResult:?];
          [objc_msgSend(settings objectForKeyedSubscript:{*off_1E798A670), "intValue"}];
          [OUTLINED_FUNCTION_7() setFusionMode:?];
          v18 = v134;
          if ([v14 proxyProcessingError] || objc_msgSend(v14, "processingError"))
          {
            if ([v13 deliverDeferredPhotoProxyImage])
            {
              [v14 proxyProcessingError];
            }

            else
            {
              [v14 processingError];
            }

            [OUTLINED_FUNCTION_28() setRecoveredFromError:?];
          }

          goto LABEL_97;
        }

        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v20 = v19;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v20 = v18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v20 = 0;
    }

    return v20;
  }

  return result;
}

- (void)_updateMemoryAnalyticsForStillImageWithSampleBuffer:(void *)buffer stillImageSettings:(int)settings timeSinceLastCaptureInSession:
{
  if (!result)
  {
    return result;
  }

  result = [objc_msgSend(result "graph")];
  if (!result)
  {
    return result;
  }

  v7 = result;
  captureSettings = [buffer captureSettings];
  requestedSettings = [buffer requestedSettings];
  v10 = OUTLINED_FUNCTION_158(requestedSettings, *off_1E798A3C8);
  if (!captureSettings || !requestedSettings || (v11 = v10, ![v10 count]))
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3();
  }

  resolutionFlavor = [requestedSettings resolutionFlavor];
  v13 = [objc_msgSend(captureSettings "metadata")];
  if (v13 && BWShallowDepthOfFieldEffectStatusIsEnabled([v13 intValue]) && (objc_msgSend(OUTLINED_FUNCTION_5_65(), "setPortraitRequested:"), v14 = objc_msgSend(OUTLINED_FUNCTION_5_65(), "setPortraitDepthGenerationAttempted:"), (objc_msgSend(OUTLINED_FUNCTION_158(v14, @"StillImageProcessingFlags"), "unsignedIntValue") & 0x40) != 0))
  {
    [OUTLINED_FUNCTION_5_65() setPortraitEffectApplied:?];
    if (resolutionFlavor == 1)
    {
      [OUTLINED_FUNCTION_5_65() setEnhancedResolutionPortraitApplied:?];
      goto LABEL_10;
    }
  }

  else if (resolutionFlavor == 1)
  {
LABEL_10:
    if (([captureSettings captureFlags] & 0x800) != 0 && (BWCIFilterArrayContainsPortraitFilters(objc_msgSend(requestedSettings, "processedImageFilters")) & 1) == 0)
    {
      [OUTLINED_FUNCTION_5_65() setEnhancedResolutionPortraitSuggested:?];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    semanticStyle = [requestedSettings semanticStyle];
  }

  else
  {
    semanticStyle = 0;
  }

  if (([semanticStyle isIdentity] & 1) == 0)
  {
    [OUTLINED_FUNCTION_5_65() setPhotographicStyleUsed:?];
  }

  if (BWSampleBufferHasDetectedFaces(a2, 1, 1, 1, 1, 1))
  {
    [OUTLINED_FUNCTION_5_65() setFaceDetectedInScene:?];
  }

  [v7 addDeviceType:{objc_msgSend(OUTLINED_FUNCTION_158(objc_msgSend(v7, "addCaptureType:", objc_msgSend(captureSettings, "captureType")), @"CaptureDeviceType", "intValue")}];
  v16 = OUTLINED_FUNCTION_158([v7 addPortType:{objc_msgSend(v11, "objectForKeyedSubscript:", *off_1E798B540)}], @"RawImageSurface");
  if (v16)
  {
    if (OUTLINED_FUNCTION_158(v16, @"EncodedImageSurface"))
    {
      [OUTLINED_FUNCTION_5_65() setProRawPlusProcessedPhotoEncoding:?];
    }

    else
    {
      [OUTLINED_FUNCTION_5_65() setProRaw:?];
    }
  }

  burstQualityCaptureEnabled = [requestedSettings burstQualityCaptureEnabled];
  v18 = burstQualityCaptureEnabled;
  if (burstQualityCaptureEnabled)
  {
    [OUTLINED_FUNCTION_5_65() setBurst:?];
  }

  v19 = [v11 objectForKeyedSubscript:*off_1E798A6D8];
  if (v19 && ([v19 unsignedIntValue] & 2) != 0)
  {
    [OUTLINED_FUNCTION_5_65() setGreenGhostMitigation:?];
  }

  result = OUTLINED_FUNCTION_158([v7 addHighResolutionFlavor:resolutionFlavor], @"IntelligentDistortionCorrectionStatusCode");
  if (result)
  {
    result = [OUTLINED_FUNCTION_5_65() setIntelligentDistortionCorrection:?];
  }

  if ((v18 & 1) == 0)
  {

    return [v7 updateButtonMash:(settings - 1) < 0x1F3];
  }

  return result;
}

- (BWAutoFocusROIAnalyticsPayload)_autoFocusROIAnalyticsPayloadWithSampleBuffer:(uint64_t)buffer error:(void *)error stillImageSettings:(void *)settings metadata:
{
  if (!self)
  {
    return 0;
  }

  if (!a2 || !settings || (v6 = [error captureSettings]) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(BWAutoFocusROIAnalyticsPayload);
  v9 = [settings objectForKeyedSubscript:*off_1E798B540];
  [(BWAutoFocusROIAnalyticsPayload *)v8 setPortType:v9];
  -[BWAutoFocusROIAnalyticsPayload setFocusRegion:](v8, "setFocusRegion:", [objc_msgSend(settings objectForKeyedSubscript:{*off_1E798B308), "lastObject"}]);
  [objc_msgSend(settings objectForKeyedSubscript:{*off_1E798B310), "intValue"}];
  [OUTLINED_FUNCTION_17() setFocusRegionType:?];
  [objc_msgSend(settings objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
  [(BWAutoFocusROIAnalyticsPayload *)v8 setSubjectDistance:?];
  -[BWAutoFocusROIAnalyticsPayload setClientApplicationID:](v8, "setClientApplicationID:", [v7 applicationID]);
  if (v9)
  {
    [objc_msgSend(objc_msgSend(v7 "frameStatisticsByPortType")];
    [OUTLINED_FUNCTION_17() setLuxLevel:?];
  }

  return v8;
}

@end