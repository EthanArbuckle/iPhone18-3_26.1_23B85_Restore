@interface BWPhotoEncoderControllerInput
- (_DWORD)initWithStillImageSettings:(uint64_t)settings portType:(char)type requiresPhotosAdjustment:;
- (int64_t)settingsID;
- (os_unfair_lock_s)stashedAttachedMediaKeys;
- (os_unfair_lock_s)stashedSampleBufferForAttachedMediaKey:(os_unfair_lock_s *)result;
- (void)addSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)addSbufForPiecemealEncoding:(opaqueCMSampleBuffer *)encoding attachedMediakey:(id)mediakey primaryImageMetadata:(id)metadata processingFlags:(unsigned int)flags;
- (void)dealloc;
- (void)finishedProcessingSbuf;
- (void)receivedFrame:(opaqueCMSampleBuffer *)frame isPrimary:(BOOL)primary;
- (void)releaseStashedAttachedMediaSampleBuffers;
- (void)releaseStashedSamplebufferForAttachedMediaKey:(os_unfair_lock_s *)key;
- (void)setStereoPhotoImageHandles:(id *)handles;
- (void)stashSampleBuffer:(uint64_t)buffer forAttachedMediaKey:;
@end

@implementation BWPhotoEncoderControllerInput

- (int64_t)settingsID
{
  stillImageSettings = [(BWStillImageProcessorControllerInput *)self stillImageSettings];

  return [(BWStillImageSettings *)stillImageSettings settingsID];
}

- (void)receivedFrame:(opaqueCMSampleBuffer *)frame isPrimary:(BOOL)primary
{
  ++self->_receivedFramesCount;
  if (self->_fatalErrorOccurred)
  {
    [BWPhotoEncoderControllerInput receivedFrame:isPrimary:];
  }

  else
  {
    primarySampleBuffer = self->_primarySampleBuffer;
    if (primarySampleBuffer)
    {
      v5 = !primary;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      self->_primarySampleBuffer = frame;
      if (frame)
      {
        CFRetain(frame);
      }

      if (primarySampleBuffer)
      {

        CFRelease(primarySampleBuffer);
      }
    }
  }
}

- (void)finishedProcessingSbuf
{
  sbufToProcess = self->_sbufToProcess;
  if (sbufToProcess)
  {
    CFRelease(sbufToProcess);
    self->_sbufToProcess = 0;
  }
}

- (void)addSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (buffer)
  {
    sbufToProcess = self->_sbufToProcess;
    self->_sbufToProcess = buffer;
    CFRetain(buffer);
    if (sbufToProcess)
    {
      CFRelease(sbufToProcess);
    }

    v6 = BWStillImageProcessingFlagsForSampleBuffer(buffer);
    [(BWPhotoEncoderControllerInput *)self receivedFrame:buffer isPrimary:BWPhotoEncoderIsPrimaryFrame(v6)];
    delegate = [(BWStillImageProcessorControllerInput *)self delegate];

    [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate inputReceivedNewInputData:self];
  }

  else
  {
    [BWPhotoEncoderControllerInput addSampleBuffer:];
  }
}

- (void)addSbufForPiecemealEncoding:(opaqueCMSampleBuffer *)encoding attachedMediakey:(id)mediakey primaryImageMetadata:(id)metadata processingFlags:(unsigned int)flags
{
  v6 = *&flags;
  if (!self->_primaryImageMetadataForPrewarming)
  {
    self->_primaryImageMetadataForPrewarming = metadata;
  }

  if (!self->_processingFlagsForPrewarming)
  {
    self->_processingFlagsForPrewarming = v6;
  }

  if ([(BWStillImageProcessorControllerInput *)self delegate])
  {
    delegate = [(BWStillImageProcessorControllerInput *)self delegate];

    [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate inputReceivedSbufForPiecemealEncoding:self sbuf:encoding attachedMediaKey:mediakey primaryImageMetadata:metadata processingFlags:v6];
  }

  else
  {

    [(BWPhotoEncoderControllerInput *)self stashSampleBuffer:encoding forAttachedMediaKey:mediakey];
  }
}

- (void)setStereoPhotoImageHandles:(id *)handles
{
  var2 = handles->var2;
  *&self->_stereoPhotoImageHandles.mono = *&handles->var0;
  self->_stereoPhotoImageHandles.right = var2;
}

- (void)stashSampleBuffer:(uint64_t)buffer forAttachedMediaKey:
{
  if (self)
  {
    cf = 0;
    if (BWCMSampleBufferCreateCopyIncludingMetadata(sbuf, &cf))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_36_17();
      os_unfair_lock_lock(v5);
      [*(self + 152) setObject:cf forKeyedSubscript:buffer];
      v6 = OUTLINED_FUNCTION_36_17();
      os_unfair_lock_unlock(v6);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (os_unfair_lock_s)stashedSampleBufferForAttachedMediaKey:(os_unfair_lock_s *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_28_14(result);
    v4 = [*(v2 + 152) objectForKeyedSubscript:a2];
    v5 = OUTLINED_FUNCTION_36_17();
    os_unfair_lock_unlock(v5);
    return v4;
  }

  return result;
}

- (os_unfair_lock_s)stashedAttachedMediaKeys
{
  if (result)
  {
    OUTLINED_FUNCTION_28_14(result);
    allKeys = [*(v1 + 152) allKeys];
    v3 = OUTLINED_FUNCTION_36_17();
    os_unfair_lock_unlock(v3);
    return allKeys;
  }

  return result;
}

- (void)releaseStashedSamplebufferForAttachedMediaKey:(os_unfair_lock_s *)key
{
  if (key)
  {
    OUTLINED_FUNCTION_28_14(key);
    [*(v2 + 152) setObject:0 forKeyedSubscript:a2];
    v4 = OUTLINED_FUNCTION_36_17();

    os_unfair_lock_unlock(v4);
  }
}

- (void)releaseStashedAttachedMediaSampleBuffers
{
  if (self)
  {
    os_unfair_lock_lock((self + 160));
    [*(self + 152) removeAllObjects];

    os_unfair_lock_unlock((self + 160));
  }
}

- (_DWORD)initWithStillImageSettings:(uint64_t)settings portType:(char)type requiresPhotosAdjustment:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = BWPhotoEncoderControllerInput;
  v5 = objc_msgSendSuper2(&v9, sel_initWithSettings_portType_, a2, settings);
  v6 = v5;
  if (v5)
  {
    if ([v5 isStereoPhotoCapture])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    v6[10] = v7;
    *(v6 + 44) = type;
    *(v6 + 9) = -1;
    *(v6 + 10) = -1;
    *(v6 + 11) = -1;
    *(v6 + 13) = -1;
    *(v6 + 14) = -1;
    *(v6 + 15) = -1;
    *(v6 + 16) = 0;
    *(v6 + 18) = objc_alloc_init(MEMORY[0x1E695DFA8]);
    *(v6 + 19) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6[40] = 0;
  }

  return v6;
}

- (void)dealloc
{
  primarySampleBuffer = self->_primarySampleBuffer;
  if (primarySampleBuffer)
  {
    CFRelease(primarySampleBuffer);
  }

  sbufToProcess = self->_sbufToProcess;
  if (sbufToProcess)
  {
    CFRelease(sbufToProcess);
  }

  [(BWPhotoEncoderControllerInput *)self releaseStashedAttachedMediaSampleBuffers];
  v5.receiver = self;
  v5.super_class = BWPhotoEncoderControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

@end