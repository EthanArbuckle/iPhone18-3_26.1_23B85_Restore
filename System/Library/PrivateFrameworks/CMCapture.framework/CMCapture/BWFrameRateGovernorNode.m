@interface BWFrameRateGovernorNode
+ (void)initialize;
- (BWFrameRateGovernorNode)init;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWFrameRateGovernorNode

- (BWFrameRateGovernorNode)init
{
  v11.receiver = self;
  v11.super_class = BWFrameRateGovernorNode;
  v2 = [(BWNode *)&v11 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v3 setFormatRequirements:v4];

    [(BWNodeInput *)v3 setPassthroughMode:1];
    [v2 addInput:v3];

    v5 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v2];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v5 setFormatRequirements:v6];

    [(BWNodeOutput *)v5 setPassthroughMode:1];
    [v2 addOutput:v5];

    v7 = MEMORY[0x1E6960C70];
    v8 = *MEMORY[0x1E6960C70];
    *(v2 + 140) = *MEMORY[0x1E6960C70];
    v9 = *(v7 + 16);
    *(v2 + 156) = v9;
    *(v2 + 164) = v8;
    *(v2 + 180) = v9;
    [v2 setSupportsLiveReconfiguration:1];
    [v2 setSupportsPrepareWhileRunning:1];
  }

  return v2;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (self->_preservesMotionDataFromDroppedFrames && !*&self->_activeBracketSequenceRate)
  {
    *&self->_activeBracketSequenceRate = [[BWMotionDataPreserver alloc] initWithName:[(BWNode *)self description]];
  }

  v3.receiver = self;
  v3.super_class = BWFrameRateGovernorNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFrameRateGovernorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  aeStabilityTuning = self->_aeStabilityTuning;
  if (aeStabilityTuning <= 2)
  {
    v8 = dword_1AD056478[aeStabilityTuning];
    v9 = dword_1AD056484[aeStabilityTuning];
    self->_invalidFrameCount = v8;
    *&self->_aeStableAfterStartStreaming = v9;
  }

  v11 = v5;
  v12 = v6;
  v10.receiver = self;
  v10.super_class = BWFrameRateGovernorNode;
  [(BWNode *)&v10 configurationWithID:a3 updatedFormat:a4 didBecomeLiveForInput:a5];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = [CMGetAttachment(a3 @"StillImageCaptureType"];
  v7 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  memset(&v37, 0, sizeof(v37));
  v8 = CMGetAttachment(a3, *off_1E798A420, 0);
  CMTimeMakeFromDictionary(&v37, v8);
  flags = v37.flags;
  if ((v37.flags & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(&time, a3);
    v37 = time;
    flags = time.flags;
  }

  if ((flags & 1) == 0)
  {
    [BWFrameRateGovernorNode renderSampleBuffer:forInput:];
    goto LABEL_61;
  }

  if (!v7)
  {
    [BWFrameRateGovernorNode renderSampleBuffer:forInput:];
    goto LABEL_61;
  }

  if (self->_motionDataPreserver)
  {
LABEL_20:
    ++self->_motionDataPreserver;
    if (self->_dropsStartupFramesWithUnstableAE && (self->_frameCount & 0x100000000) == 0)
    {
      if (([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B078), "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798B060), "BOOLValue"))
      {
        aeStableTimeoutFrameCount = self->_aeStableTimeoutFrameCount;
        if (aeStableTimeoutFrameCount >= *&self->_aeStableAfterStartStreaming)
        {
          BYTE4(self->_frameCount) = 1;
          self->_aeStableTimeoutFrameCount = aeStableTimeoutFrameCount + 1;
        }

        else
        {
          motionDataPreserver = self->_motionDataPreserver;
          invalidFrameCount = self->_invalidFrameCount;
          BYTE4(self->_frameCount) = motionDataPreserver > invalidFrameCount;
          self->_aeStableTimeoutFrameCount = aeStableTimeoutFrameCount + 1;
          if (motionDataPreserver <= invalidFrameCount)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v18 = self->_motionDataPreserver;
        v19 = self->_invalidFrameCount;
        BYTE4(self->_frameCount) = v18 > v19;
        self->_aeStableTimeoutFrameCount = 0;
        if (v18 <= v19)
        {
          goto LABEL_54;
        }
      }
    }

    if (!self->_dropsStillBracketFramesToMaintainConsistentFrameRate)
    {
      goto LABEL_60;
    }

    memset(&time, 0, sizeof(time));
    lhs = v37;
    rhs = *(&self->_preservesMotionDataFromDroppedFrames + 4);
    CMTimeSubtract(&time, &lhs, &rhs);
    if ((v6 & 0xFFFFFFFE) != 4)
    {
      if (HIDWORD(self->_lastEmittedStreamingFrameDuration.epoch))
      {
        HIDWORD(self->_lastEmittedStreamingFrameDuration.epoch) = 0;
      }

      goto LABEL_59;
    }

    v20 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
    epoch_high = HIDWORD(self->_lastEmittedStreamingFrameDuration.epoch);
    if ((v20 & 1) != 0 || epoch_high)
    {
LABEL_49:
      if ((epoch_high - 2) > 2)
      {
        goto LABEL_58;
      }

      v25 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
      v26 = HIDWORD(self->_lastEmittedStreamingFrameDuration.epoch);
      if (v26 == 4)
      {
        v27 = v25 & 0x80000003;
      }

      else
      {
        if (v26 != 3)
        {
          if (v26 == 2 && (v25 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_58:
          if (v20)
          {
LABEL_59:
            *(&self->_lastEmittedPTS.epoch + 4) = time;
          }

LABEL_60:
          *(&self->_preservesMotionDataFromDroppedFrames + 4) = v37;
LABEL_61:
          [*&self->_activeBracketSequenceRate prependPreservedMotionDataToSampleBuffer:a3];
          [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
          return;
        }

        v27 = v25 % 5;
      }

      if (v27 != 1)
      {
        goto LABEL_58;
      }

LABEL_54:
      [*&self->_activeBracketSequenceRate preserveMotionDataForSoonToBeDroppedSampleBuffer:a3];
      return;
    }

    if ((time.flags & 1) == 0)
    {
      goto LABEL_60;
    }

    lhs = time;
    v22 = (&self->_lastEmittedPTS.epoch + 4);
    rhs = *(&self->_lastEmittedPTS.epoch + 4);
    v23 = 1.0 / CMTimeGetSeconds(&rhs);
    if (v23 <= 21.0)
    {
      rhs = lhs;
      v24 = 1.0 / CMTimeGetSeconds(&rhs);
      if (v24 > 21.0)
      {
        epoch_high = 2;
        goto LABEL_48;
      }

      if (v6 == 4 && v24 > 15.0)
      {
        *&type.value = *v22;
        type.epoch = *&self->_lastEmittedStreamingFrameDuration.flags;
        v32 = lhs;
        CMTimeSubtract(&rhs, &type, &v32);
        if (CMTimeGetSeconds(&rhs) > 0.002)
        {
          epoch_high = 4;
          goto LABEL_48;
        }
      }
    }

    else if (v6 == 4 && v23 < 25.0)
    {
      *&type.value = *v22;
      type.epoch = *&self->_lastEmittedStreamingFrameDuration.flags;
      v32 = lhs;
      CMTimeSubtract(&rhs, &type, &v32);
      if (CMTimeGetSeconds(&rhs) > 0.002)
      {
        epoch_high = 3;
LABEL_48:
        HIDWORD(self->_lastEmittedStreamingFrameDuration.epoch) = epoch_high;
        goto LABEL_49;
      }
    }

    epoch_high = 1;
    goto LABEL_48;
  }

  if (self->_aeStabilityTuning == 2)
  {
    v10 = [v7 objectForKeyedSubscript:*off_1E798B540];
    if ([v10 isEqual:*off_1E798A0D0])
    {
      v11 = 8;
LABEL_11:
      self->_invalidFrameCount = v11;
      *&self->_aeStableAfterStartStreaming = v11;
      goto LABEL_12;
    }

    if ([v10 isEqual:*off_1E798A0E0])
    {
      v11 = 5;
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((self->_aeStabilityTuning - 1) > 1 || ![objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B430), "BOOLValue"}] || SLODWORD(self->_frameCount) > 9)
  {
    goto LABEL_20;
  }

  v12 = [v7 objectForKeyedSubscript:*off_1E798B640];
  if (self->_aeStabilityTuning == 2)
  {
    v13 = "recording";
  }

  else
  {
    v13 = "preview";
  }

  if (dword_1ED8442F0)
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  frameCount = self->_frameCount;
  LODWORD(self->_frameCount) = frameCount + 1;
  if (!frameCount)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(time.value) = 136315394;
    *(&time.value + 4) = v13;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v12;
    v31 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v31, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWFrameRateGovernorNode.m", 275, @"LastShownDate:BWFrameRateGovernorNode.m:275", @"LastShownBuild:BWFrameRateGovernorNode.m:275", 0);
    free(v31);
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (a3)
  {
    [*&self->_activeBracketSequenceRate reset];
  }

  v7.receiver = self;
  v7.super_class = BWFrameRateGovernorNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:a3 input:a4];
}

@end