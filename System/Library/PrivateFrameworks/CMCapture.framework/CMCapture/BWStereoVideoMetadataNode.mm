@interface BWStereoVideoMetadataNode
+ (void)initialize;
- (BWStereoVideoMetadataNode)initWithPorts:(id)ports secondaryPort:(id)port cameraInfoByPortType:(id)type errStatus:(int *)status;
- (void)_sendSpatialAggressorsSeenMarkerBufferForPTS:(double)s measuredDuration:;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStereoVideoMetadataNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStereoVideoMetadataNode)initWithPorts:(id)ports secondaryPort:(id)port cameraInfoByPortType:(id)type errStatus:(int *)status
{
  if ([ports isEqualToString:port])
  {
    [BWStereoVideoMetadataNode initWithPorts:? secondaryPort:? cameraInfoByPortType:? errStatus:?];
    v17 = v19.i32[0];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = BWStereoVideoMetadataNode;
    self = [(BWNode *)&v20 init];
    if (!self)
    {
      *status = 0;
      return self;
    }

    v11 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:self];
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setFormatRequirements:v12];

    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setPassthroughMode:1];
    [(BWNode *)self addInput:v11];

    v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:self];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v13 primaryMediaConfiguration] setFormatRequirements:v14];

    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v13 primaryMediaConfiguration] setPassthroughMode:1];
    [(BWNode *)self addOutput:v13];

    v19 = 0uLL;
    v15 = BWStereoUtilitiesComputeRectificationQuaternion(ports, port, type, &v19);
    if (v15)
    {
      v17 = v15;
      [BWStereoVideoMetadataNode initWithPorts:secondaryPort:cameraInfoByPortType:errStatus:];
    }

    else
    {
      v16 = CFDataCreate(*MEMORY[0x1E695E480], &v19, 16);
      self->_serializedRectificationQuaternion = v16;
      if (v16)
      {
        v17 = 0;
        self->_consecutiveSpatiallyAggressiveFramesThreshold = 30;
      }

      else
      {
        [BWStereoVideoMetadataNode initWithPorts:? secondaryPort:? cameraInfoByPortType:? errStatus:?];
        v17 = v21;
      }
    }
  }

  *status = v17;
  if (v17)
  {

    return 0;
  }

  return self;
}

- (void)dealloc
{
  serializedRectificationQuaternion = self->_serializedRectificationQuaternion;
  if (serializedRectificationQuaternion)
  {
    CFRelease(serializedRectificationQuaternion);
  }

  v4.receiver = self;
  v4.super_class = BWStereoVideoMetadataNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didReachEndOfDataForInput:(id)input
{
  v3.receiver = self;
  v3.super_class = BWStereoVideoMetadataNode;
  [(BWNode *)&v3 didReachEndOfDataForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, buffer);
    v6 = CMGetAttachment(buffer, @"FileWriterAction", 0);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v6, @"Start") || CFEqual(v7, @"Resume"))
      {
        self->_numberOfConsecutiveLuxLevelAggressiveFrames = 0;
        self->_numberOfConsecutiveFocusDistanceAggressiveFrames = 0;
        if (CFEqual(v7, @"Start"))
        {
          self->_numberOfFramesEvaluatedForAggressiveStatus = 0;
          self->_numberOfLuxLevelAggressiveFrames = 0;
          self->_numberOfFocusDistanceAggressiveFrames = 0;
          CMSampleBufferGetPresentationTimeStamp(&v20, buffer);
          self->_startingPTS = v20;
          self->_aggregateStereoVideoCaptureStatus = 0;
        }
      }

      else if ((CFEqual(v7, @"Stop") || CFEqual(v7, @"Terminate")) && self->_numberOfFramesEvaluatedForAggressiveStatus >= 1)
      {
        memset(&v20, 0, sizeof(v20));
        lhs = v21;
        startingPTS = self->_startingPTS;
        CMTimeSubtract(&v20, &lhs, &startingPTS);
        if (v20.flags)
        {
          lhs = v20;
          startingPTS = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&lhs, &startingPTS) >= 1)
          {
            lhs = v20;
            Seconds = CMTimeGetSeconds(&lhs);
            lhs = v21;
            [(BWStereoVideoMetadataNode *)self _sendSpatialAggressorsSeenMarkerBufferForPTS:Seconds measuredDuration:?];
          }
        }
      }
    }

    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  }

  else
  {
    v8 = [CMGetAttachment(buffer *off_1E798A3C8];
    if (v8)
    {
      intValue = [v8 intValue];
      ++self->_numberOfFramesEvaluatedForAggressiveStatus;
      if ((intValue & 2) != 0)
      {
        consecutiveSpatiallyAggressiveFramesThreshold = self->_consecutiveSpatiallyAggressiveFramesThreshold;
        v11 = self->_numberOfConsecutiveLuxLevelAggressiveFrames + 1;
        self->_numberOfConsecutiveLuxLevelAggressiveFrames = v11;
        if (v11 >= consecutiveSpatiallyAggressiveFramesThreshold)
        {
          numberOfLuxLevelAggressiveFrames = self->_numberOfLuxLevelAggressiveFrames;
          self->_numberOfLuxLevelAggressiveFrames = numberOfLuxLevelAggressiveFrames + 1;
          if (self->_numberOfConsecutiveLuxLevelAggressiveFrames == consecutiveSpatiallyAggressiveFramesThreshold)
          {
            self->_numberOfLuxLevelAggressiveFrames = numberOfLuxLevelAggressiveFrames + consecutiveSpatiallyAggressiveFramesThreshold;
            self->_aggregateStereoVideoCaptureStatus |= 2u;
          }
        }
      }

      else
      {
        self->_numberOfConsecutiveLuxLevelAggressiveFrames = 0;
      }

      if ((intValue & 4) != 0)
      {
        v13 = self->_consecutiveSpatiallyAggressiveFramesThreshold;
        v14 = self->_numberOfConsecutiveFocusDistanceAggressiveFrames + 1;
        self->_numberOfConsecutiveFocusDistanceAggressiveFrames = v14;
        if (v14 >= v13)
        {
          numberOfFocusDistanceAggressiveFrames = self->_numberOfFocusDistanceAggressiveFrames;
          self->_numberOfFocusDistanceAggressiveFrames = numberOfFocusDistanceAggressiveFrames + 1;
          if (self->_numberOfConsecutiveFocusDistanceAggressiveFrames == v13)
          {
            self->_numberOfFocusDistanceAggressiveFrames = numberOfFocusDistanceAggressiveFrames + v13;
            self->_aggregateStereoVideoCaptureStatus |= 4u;
          }
        }
      }

      else
      {
        self->_numberOfConsecutiveFocusDistanceAggressiveFrames = 0;
      }
    }

    CMSetAttachment(buffer, *off_1E798D450, self->_serializedRectificationQuaternion, 1u);
    output = self->super._output;

    [(BWNodeOutput *)output emitSampleBuffer:buffer];
  }
}

- (void)_sendSpatialAggressorsSeenMarkerBufferForPTS:(double)s measuredDuration:
{
  if (self)
  {
    v15 = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    __dst.presentationTimeStamp = *a2;
    if (CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &__dst, 0, 0, &v15))
    {
      FigDebugAssert3();
    }

    else
    {
      v6 = *(self + 140);
      if (v6 < 1)
      {
        v8 = 0.0;
        v7 = 0.0;
      }

      else
      {
        v7 = *(self + 148) / v6;
        v8 = *(self + 156) / v6;
      }

      if (dword_1EB58E840)
      {
        v13 = 0;
        v12 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSetAttachment(v15, @"FileWriterAction", @"SpatialAggressorsSeen", 1u);
      OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithInt:*(self + 184)]);
      OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithDouble:s]);
      *&v10 = v7;
      OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithFloat:v10]);
      *&v11 = v8;
      OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithFloat:v11]);
      [*(self + 16) emitSampleBuffer:v15];
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }
}

- (uint64_t)initWithPorts:(_DWORD *)a1 secondaryPort:cameraInfoByPortType:errStatus:.cold.2(_DWORD *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)initWithPorts:(_DWORD *)a1 secondaryPort:cameraInfoByPortType:errStatus:.cold.3(_DWORD *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end