@interface BWVideoOrientationMetadataNode
- (BWVideoOrientationMetadataNode)init;
- (OpaqueCMClock)masterClock;
- (uint64_t)_determineExifOrientation;
- (void)_emitBufferForNewStateIfRecording;
- (void)_emitValidatedVideoOrientationSampleBufferForBoxedFormatOutputAtTime:(uint64_t)time;
- (void)_releaseCachedBBufs;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setMasterClock:(OpaqueCMClock *)clock;
- (void)setSourceDeviceType:(int)type;
- (void)setSourcePosition:(int)position;
- (void)updateRotationDegrees:(int)degrees;
- (void)updateVideoMirrored:(BOOL)mirrored;
@end

@implementation BWVideoOrientationMetadataNode

- (BWVideoOrientationMetadataNode)init
{
  v18.receiver = self;
  v18.super_class = BWVideoOrientationMetadataNode;
  v2 = [(BWNode *)&v18 init];
  if (v2)
  {
    v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v2];
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v3 setFormatRequirements:v4];

    [v2 addInput:v3];
    v5 = *MEMORY[0x1E6960348];
    v6 = *MEMORY[0x1E69603C8];
    v7 = *MEMORY[0x1E6960338];
    v16[0] = *MEMORY[0x1E6960348];
    v16[1] = v7;
    v8 = *MEMORY[0x1E6960270];
    v17[0] = v6;
    v17[1] = v8;
    v16[2] = *MEMORY[0x1E6960358];
    v14 = *MEMORY[0x1E6960360];
    v15 = *MEMORY[0x1E695E4C0];
    v17[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v10 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
    if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v10, v2 + 20))
    {

      return 0;
    }

    else
    {
      CFDictionaryGetValue(v9, v5);
      CFDictionaryGetValue(v9, v7);
      CFDictionaryGetValue(v9, *MEMORY[0x1E6960340]);
      *(v2 + 42) = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
      v11 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v2];
      [(BWNodeOutput *)v11 setName:@"VideoOrientationMetadata"];
      [(BWNodeOutput *)v11 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:*(v2 + 20)]];
      [v2 addOutput:v11];

      *(v2 + 32) = FigDispatchQueueCreateWithPriority();
      HostTimeClock = CMClockGetHostTimeClock();
      *(v2 + 16) = CFRetain(HostTimeClock);
      *(v2 + 184) = 0u;
      *(v2 + 200) = 0u;
      *(v2 + 216) = 0u;
      *(v2 + 232) = 0u;
      *(v2 + 36) = 0;
      v2[148] = 0;
      *(v2 + 38) = 0;
      *(v2 + 39) = 0;
      *(v2 + 44) = 0;
      *(v2 + 31) = [[BWVideoOrientationTimeMachine alloc] initWithCapacity:100 formatDescription:*(v2 + 20) metadataLocalID:*(v2 + 42)];
      [v2 setSupportsLiveReconfiguration:1];
      [v2 setSupportsPrepareWhileRunning:1];
    }
  }

  return v2;
}

- (void)dealloc
{
  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
  }

  masterClock = self->_masterClock;
  if (masterClock)
  {
    CFRelease(masterClock);
  }

  boxedMetadataFormatDescription = self->_boxedMetadataFormatDescription;
  if (boxedMetadataFormatDescription)
  {
    CFRelease(boxedMetadataFormatDescription);
  }

  [(BWVideoOrientationMetadataNode *)self _releaseCachedBBufs];

  v6.receiver = self;
  v6.super_class = BWVideoOrientationMetadataNode;
  [(BWNode *)&v6 dealloc];
}

- (void)updateRotationDegrees:(int)degrees
{
  if (degrees >= 0x10F)
  {
    [BWVideoOrientationMetadataNode updateRotationDegrees:];
  }

  else
  {
    emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__BWVideoOrientationMetadataNode_updateRotationDegrees___block_invoke;
    v4[3] = &unk_1E7991CF0;
    v4[4] = self;
    degreesCopy = degrees;
    dispatch_async(emitSamplesDispatchQueue, v4);
  }
}

void __56__BWVideoOrientationMetadataNode_updateRotationDegrees___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 144) != v3)
  {
    *(v2 + 144) = v3;
    [(BWVideoOrientationMetadataNode *)*(a1 + 32) _determineExifOrientation];
    v5 = *(a1 + 32);

    [(BWVideoOrientationMetadataNode *)v5 _emitBufferForNewStateIfRecording];
  }
}

- (void)updateVideoMirrored:(BOOL)mirrored
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__BWVideoOrientationMetadataNode_updateVideoMirrored___block_invoke;
  v4[3] = &unk_1E7990078;
  v4[4] = self;
  mirroredCopy = mirrored;
  dispatch_async(emitSamplesDispatchQueue, v4);
}

void __54__BWVideoOrientationMetadataNode_updateVideoMirrored___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 148) != v3)
  {
    *(v2 + 148) = v3;
    [(BWVideoOrientationMetadataNode *)*(a1 + 32) _determineExifOrientation];
    v5 = *(a1 + 32);

    [(BWVideoOrientationMetadataNode *)v5 _emitBufferForNewStateIfRecording];
  }
}

- (OpaqueCMClock)masterClock
{
  masterClock = self->_masterClock;
  if (masterClock)
  {
    CFRetain(self->_masterClock);
    CFAutorelease(masterClock);
  }

  return masterClock;
}

- (void)setMasterClock:(OpaqueCMClock *)clock
{
  masterClock = self->_masterClock;
  self->_masterClock = clock;
  if (clock)
  {
    CFRetain(clock);
  }

  if (masterClock)
  {

    CFRelease(masterClock);
  }
}

- (void)setSourcePosition:(int)position
{
  if (self->_sourcePosition != position)
  {
    self->_sourcePosition = position;
  }
}

- (void)setSourceDeviceType:(int)type
{
  if (self->_sourceDeviceType != type)
  {
    self->_sourceDeviceType = type;
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (!self->_masterClock)
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D930];
    v4 = @"Cannot become active because masterClock was never set";
    goto LABEL_6;
  }

  if (!self->_sourcePosition)
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D930];
    v4 = @"Cannot become active because a valid sourcePosition was never set";
LABEL_6:
    objc_exception_throw([v2 exceptionWithName:v3 reason:v4 userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = BWVideoOrientationMetadataNode;
  [(BWNode *)&v5 prepareForCurrentConfigurationToBecomeLive];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(BWNodeOutput *)self->super._output consumer:d])
  {
    emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__BWVideoOrientationMetadataNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(emitSamplesDispatchQueue, block);
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__BWVideoOrientationMetadataNode_didReachEndOfDataForConfigurationID_input___block_invoke;
  v5[3] = &unk_1E798F898;
  v5[4] = self;
  v5[5] = d;
  dispatch_async(emitSamplesDispatchQueue, v5);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  sampleBufferOut = 0;
  if (!BWSampleBufferIsMarkerBuffer(buffer))
  {
    return;
  }

  if (!qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Start"))
  {
    if (qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Resume"))
    {
      v9 = 0;
      v6 = 0;
      recordVideoOrientationAndMirroringChanges = self->_recordVideoOrientationAndMirroringChanges;
    }

    else
    {
      if ((qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Stop") & 1) == 0 && (qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Flush") & 1) == 0 && !qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Terminate"))
      {
        v10 = qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Pause");
        recordVideoOrientationAndMirroringChanges = 0;
        v9 = 0;
        v6 = 0;
        goto LABEL_23;
      }

      CMGetAttachment(bufferCopy, @"FileWriterAction", 0);
      recordVideoOrientationAndMirroringChanges = 0;
      v6 = 0;
      v9 = 1;
    }

    goto LABEL_19;
  }

  v6 = CMGetAttachment(bufferCopy, @"RecordingSettings", 0);
  if (!v6)
  {
    recordVideoOrientationAndMirroringChanges = 0;
    v9 = 0;
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    recordVideoOrientationAndMirroringChanges = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_22;
  }

  recordVideoOrientationAndMirroringChanges = [v6 recordVideoOrientationAndMirroringChanges];
  self->_recordVideoOrientationAndMirroringChanges = recordVideoOrientationAndMirroringChanges;
  self->_flipMetadataHorizontally = 0;
  if (self->_physicalMirroringForMovieRecordingEnabled)
  {
    if (![v6 isIrisRecording] || (v8 = objc_msgSend(v6, "isIrisMovieRecording")) != 0)
    {
      LOBYTE(v8) = [v6 videoMirrored];
    }

    self->_flipMetadataHorizontally = v8;
  }

  if (!self->_recordVideoOrientationAndMirroringChanges && !CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], bufferCopy, &sampleBufferOut))
  {
    v10 = 1;
    CMSetAttachment(sampleBufferOut, @"FileWriterStartActionModifier_NoDataWillBeProvidedForThisRecording", *MEMORY[0x1E695E4D0], 1u);
    v9 = 0;
    bufferCopy = sampleBufferOut;
    goto LABEL_23;
  }

  v9 = 0;
LABEL_19:
  v10 = 1;
LABEL_23:
  CFRetain(bufferCopy);
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BWVideoOrientationMetadataNode_renderSampleBuffer_forInput___block_invoke;
  block[3] = &unk_1E7997648;
  block[4] = self;
  block[5] = bufferCopy;
  v17 = v10;
  v18 = recordVideoOrientationAndMirroringChanges & 1;
  v19 = v9;
  dispatch_async(emitSamplesDispatchQueue, block);
  if (recordVideoOrientationAndMirroringChanges)
  {
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetPresentationTimeStamp(&v15, bufferCopy);
    v12 = self->_emitSamplesDispatchQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__BWVideoOrientationMetadataNode_renderSampleBuffer_forInput___block_invoke_2;
    v13[3] = &unk_1E7997200;
    v13[4] = v6;
    v13[5] = self;
    v14 = v15;
    dispatch_async(v12, v13);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

void __62__BWVideoOrientationMetadataNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  [*(*(a1 + 32) + 16) emitSampleBuffer:*(a1 + 40)];
  CFRelease(*(v2 + 8));
  if (*(v2 + 16) == 1 && (*(a1 + 49) & 1) == 0)
  {
    *(*(a1 + 32) + 175) = 0;
    if (*(a1 + 50) == 1)
    {
      __62__BWVideoOrientationMetadataNode_renderSampleBuffer_forInput___block_invoke_cold_1(v2);
    }
  }
}

- (void)_releaseCachedBBufs
{
  if (self)
  {
    selfCopy = self;
    v2 = 8;
    do
    {
      v3 = *(selfCopy + 184);
      if (v3)
      {
        CFRelease(v3);
        *(selfCopy + 184) = 0;
      }

      selfCopy += 8;
      --v2;
    }

    while (v2);
  }
}

- (uint64_t)_determineExifOrientation
{
  if (result)
  {
    v1 = result;
    result = FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored(*(result + 144), *(v1 + 148), *(v1 + 174));
    *(v1 + 176) = result;
  }

  return result;
}

- (void)_emitBufferForNewStateIfRecording
{
  if (self && *(self + 175) == 1)
  {
    memset(&v3, 0, sizeof(v3));
    CMClockGetTime(&v2, *(self + 128));
    CMSyncConvertTime(&v3, &v2, *(self + 128), *(self + 136));
    if (v3.flags)
    {
      v2 = v3;
      [(BWVideoOrientationMetadataNode *)self _emitValidatedVideoOrientationSampleBufferForBoxedFormatOutputAtTime:?];
    }
  }
}

void __62__BWVideoOrientationMetadataNode_renderSampleBuffer_forInput___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) videoRotationDegrees] & 0x80000000) != 0 || objc_msgSend(*(a1 + 32), "videoRotationDegrees") > 270)
  {
    *(*(a1 + 40) + 144) = 0;
    *(*(a1 + 40) + 148) = 0;
  }

  else
  {
    *(*(a1 + 40) + 144) = [*(a1 + 32) videoRotationDegrees];
    *(*(a1 + 40) + 148) = [*(a1 + 32) videoMirrored];
  }

  [(BWVideoOrientationMetadataNode *)*(a1 + 40) _determineExifOrientation];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  [(BWVideoOrientationMetadataNode *)v2 _emitValidatedVideoOrientationSampleBufferForBoxedFormatOutputAtTime:?];
  *(*(a1 + 40) + 175) = 1;
}

- (void)_emitValidatedVideoOrientationSampleBufferForBoxedFormatOutputAtTime:(uint64_t)time
{
  if (time)
  {
    if (*(a2 + 12))
    {
      v3 = *(time + 176);
      if ((v3 - 9) >= 0xFFFFFFF8)
      {
        v4 = v3 - 1;
        v5 = v3;
        if (!*(time + 184 + 8 * (v3 - 1)))
        {
          BoxedVideoOrientationBlockBuffer = FigCaptureMetadataUtilitiesCreateBoxedVideoOrientationBlockBuffer();
          if (!BoxedVideoOrientationBlockBuffer)
          {
            return;
          }

          *(time + 184 + 8 * v4) = BoxedVideoOrientationBlockBuffer;
        }

        OUTLINED_FUNCTION_2_10();
        v9 = FigCaptureMetadataUtilitiesCreateVideoOrientationSampleBuffer(&v13, v7, v5, v8);
        if (v9)
        {
          v10 = v9;
          *&v11 = OUTLINED_FUNCTION_2_10().n128_u64[0];
          [v12 addItemToCacheWithPTS:&v13 exifOrientation:v11];
          [*(time + 16) emitSampleBuffer:v10];
          CFRelease(v10);
        }
      }
    }
  }
}

void __62__BWVideoOrientationMetadataNode_renderSampleBuffer_forInput___block_invoke_cold_1(uint64_t *a1)
{
  [(BWVideoOrientationMetadataNode *)*a1 _releaseCachedBBufs];
  *(*a1 + 144) = 0;
  *(*a1 + 176) = 0;
}

@end