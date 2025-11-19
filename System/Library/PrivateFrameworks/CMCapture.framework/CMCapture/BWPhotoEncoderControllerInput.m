@interface BWPhotoEncoderControllerInput
- (_DWORD)initWithStillImageSettings:(uint64_t)a3 portType:(char)a4 requiresPhotosAdjustment:;
- (int64_t)settingsID;
- (os_unfair_lock_s)stashedAttachedMediaKeys;
- (os_unfair_lock_s)stashedSampleBufferForAttachedMediaKey:(os_unfair_lock_s *)result;
- (void)addSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)addSbufForPiecemealEncoding:(opaqueCMSampleBuffer *)a3 attachedMediakey:(id)a4 primaryImageMetadata:(id)a5 processingFlags:(unsigned int)a6;
- (void)dealloc;
- (void)finishedProcessingSbuf;
- (void)receivedFrame:(opaqueCMSampleBuffer *)a3 isPrimary:(BOOL)a4;
- (void)releaseStashedAttachedMediaSampleBuffers;
- (void)releaseStashedSamplebufferForAttachedMediaKey:(os_unfair_lock_s *)a1;
- (void)setStereoPhotoImageHandles:(id *)a3;
- (void)stashSampleBuffer:(uint64_t)a3 forAttachedMediaKey:;
@end

@implementation BWPhotoEncoderControllerInput

- (int64_t)settingsID
{
  v2 = [(BWStillImageProcessorControllerInput *)self stillImageSettings];

  return [(BWStillImageSettings *)v2 settingsID];
}

- (void)receivedFrame:(opaqueCMSampleBuffer *)a3 isPrimary:(BOOL)a4
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
      v5 = !a4;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      self->_primarySampleBuffer = a3;
      if (a3)
      {
        CFRetain(a3);
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

- (void)addSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    sbufToProcess = self->_sbufToProcess;
    self->_sbufToProcess = a3;
    CFRetain(a3);
    if (sbufToProcess)
    {
      CFRelease(sbufToProcess);
    }

    v6 = BWStillImageProcessingFlagsForSampleBuffer(a3);
    [(BWPhotoEncoderControllerInput *)self receivedFrame:a3 isPrimary:BWPhotoEncoderIsPrimaryFrame(v6)];
    v7 = [(BWStillImageProcessorControllerInput *)self delegate];

    [(BWStillImageProcessorControllerInputUpdatesDelegate *)v7 inputReceivedNewInputData:self];
  }

  else
  {
    [BWPhotoEncoderControllerInput addSampleBuffer:];
  }
}

- (void)addSbufForPiecemealEncoding:(opaqueCMSampleBuffer *)a3 attachedMediakey:(id)a4 primaryImageMetadata:(id)a5 processingFlags:(unsigned int)a6
{
  v6 = *&a6;
  if (!self->_primaryImageMetadataForPrewarming)
  {
    self->_primaryImageMetadataForPrewarming = a5;
  }

  if (!self->_processingFlagsForPrewarming)
  {
    self->_processingFlagsForPrewarming = v6;
  }

  if ([(BWStillImageProcessorControllerInput *)self delegate])
  {
    v11 = [(BWStillImageProcessorControllerInput *)self delegate];

    [(BWStillImageProcessorControllerInputUpdatesDelegate *)v11 inputReceivedSbufForPiecemealEncoding:self sbuf:a3 attachedMediaKey:a4 primaryImageMetadata:a5 processingFlags:v6];
  }

  else
  {

    [(BWPhotoEncoderControllerInput *)self stashSampleBuffer:a3 forAttachedMediaKey:a4];
  }
}

- (void)setStereoPhotoImageHandles:(id *)a3
{
  var2 = a3->var2;
  *&self->_stereoPhotoImageHandles.mono = *&a3->var0;
  self->_stereoPhotoImageHandles.right = var2;
}

- (void)stashSampleBuffer:(uint64_t)a3 forAttachedMediaKey:
{
  if (a1)
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
      [*(a1 + 152) setObject:cf forKeyedSubscript:a3];
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
    v2 = [*(v1 + 152) allKeys];
    v3 = OUTLINED_FUNCTION_36_17();
    os_unfair_lock_unlock(v3);
    return v2;
  }

  return result;
}

- (void)releaseStashedSamplebufferForAttachedMediaKey:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_14(a1);
    [*(v2 + 152) setObject:0 forKeyedSubscript:a2];
    v4 = OUTLINED_FUNCTION_36_17();

    os_unfair_lock_unlock(v4);
  }
}

- (void)releaseStashedAttachedMediaSampleBuffers
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 160));
    [*(a1 + 152) removeAllObjects];

    os_unfair_lock_unlock((a1 + 160));
  }
}

- (_DWORD)initWithStillImageSettings:(uint64_t)a3 portType:(char)a4 requiresPhotosAdjustment:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = BWPhotoEncoderControllerInput;
  v5 = objc_msgSendSuper2(&v9, sel_initWithSettings_portType_, a2, a3);
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
    *(v6 + 44) = a4;
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