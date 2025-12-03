@interface BWDetectedObjectsInfoRingBuffer
- (BWDetectedObjectsInfoRingBuffer)initWithRingBufferDepth:(int)depth;
- (float)secondsSinceLastObjectDetected;
- (id)objectsForPTS:(id *)s;
- (void)addObjectsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)flush;
- (void)transferObjectsToSampleBuffer:(opaqueCMSampleBuffer *)buffer transformToBufferSpace:(BOOL)space sourceCropRect:(CGRect)rect;
@end

@implementation BWDetectedObjectsInfoRingBuffer

- (BWDetectedObjectsInfoRingBuffer)initWithRingBufferDepth:(int)depth
{
  if (depth <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"depth must be at least 1" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = BWDetectedObjectsInfoRingBuffer;
  v4 = [(BWDetectedObjectsInfoRingBuffer *)&v6 init];
  if (v4)
  {
    v4->_mutex = FigSimpleMutexCreate();
    v4->_ringBuffer = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:depth];
    v4->_depth = depth;
  }

  return v4;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = BWDetectedObjectsInfoRingBuffer;
  [(BWDetectedObjectsInfoRingBuffer *)&v3 dealloc];
}

- (void)addObjectsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  FigSimpleMutexLock();
  ringBuffer = self->_ringBuffer;
  depth = self->_depth;
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v9 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:*off_1E798B220];
    if (v10)
    {
      v11 = v10;
      if (ringBuffer)
      {
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v10, 1uLL);
        [(NSMutableArray *)ringBuffer insertObject:DeepCopy atIndex:0];
        if ([(NSMutableArray *)ringBuffer count]> depth)
        {
          [(NSMutableArray *)ringBuffer removeLastObject];
        }
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [v11 countByEnumeratingWithState:&v27 objects:&v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        v16 = *off_1E798B780;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = [objc_msgSend(v11 objectForKeyedSubscript:{*(*(&v27 + 1) + 8 * i)), "objectForKeyedSubscript:", v16}];
            if (v18)
            {
              memset(&v25, 0, sizeof(v25));
              [v18 longLongValue];
              v19 = FigHostTimeToNanoseconds();
              CMTimeMake(&v25, v19, 1000000000);
              time1 = v25;
              time2.value = value;
              time2.timescale = timescale;
              time2.flags = flags;
              time2.epoch = epoch;
              if (CMTimeCompare(&time1, &time2) >= 1)
              {
                value = v25.value;
                flags = v25.flags;
                timescale = v25.timescale;
                epoch = v25.epoch;
              }
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v27 objects:&v26 count:16];
        }

        while (v14);
      }
    }

    else
    {
      value = *MEMORY[0x1E6960C68];
      flags = *(MEMORY[0x1E6960C68] + 12);
      timescale = *(MEMORY[0x1E6960C68] + 8);
      epoch = *(MEMORY[0x1E6960C68] + 16);
    }
  }

  else
  {
    [BWDetectedObjectsInfoRingBuffer addObjectsFromSampleBuffer:];
  }

  if ((~flags & 0x11) != 0)
  {
    if (flags)
    {
      numConsecutiveFramesWithObjects = self->_numConsecutiveFramesWithObjects;
      self->_numConsecutiveFramesWithObjects = numConsecutiveFramesWithObjects + 1;
      if (numConsecutiveFramesWithObjects >= 3)
      {
        self->_lastStableObjectPTS.value = value;
        self->_lastStableObjectPTS.timescale = timescale;
        self->_lastStableObjectPTS.flags = flags;
        self->_lastStableObjectPTS.epoch = epoch;
      }
    }

    else
    {
      self->_numConsecutiveFramesWithObjects = 0;
    }
  }

  CMSampleBufferGetPresentationTimeStamp(&v26, buffer);
  self->_lastUpdatePTS = v26;
  FigSimpleMutexUnlock();
}

- (void)flush
{
  FigSimpleMutexLock();
  [(NSMutableArray *)self->_ringBuffer removeAllObjects];

  FigSimpleMutexUnlock();
}

- (id)objectsForPTS:(id *)s
{
  FigSimpleMutexLock();
  ringBuffer = self->_ringBuffer;
  v8 = *s;
  DetectedObjectsInfoClosestToPTS = doirb_findDetectedObjectsInfoClosestToPTS(ringBuffer, &v8);
  FigSimpleMutexUnlock();
  return DetectedObjectsInfoClosestToPTS;
}

- (float)secondsSinceLastObjectDetected
{
  FigSimpleMutexLock();
  flags = self->_lastStableObjectPTS.flags;
  Seconds = -1.0;
  if (flags)
  {
    v5 = self->_lastUpdatePTS.flags;
    if (v5)
    {
      value = self->_lastUpdatePTS.value;
      rhs.epoch = self->_lastStableObjectPTS.epoch;
      lhs.value = value;
      lhs.timescale = self->_lastUpdatePTS.timescale;
      lhs.flags = v5;
      v7 = self->_lastStableObjectPTS.value;
      lhs.epoch = self->_lastUpdatePTS.epoch;
      rhs.value = v7;
      rhs.timescale = self->_lastStableObjectPTS.timescale;
      rhs.flags = flags;
      CMTimeSubtract(&time, &lhs, &rhs);
      Seconds = CMTimeGetSeconds(&time);
      if (Seconds < 0.0)
      {
        Seconds = 0.0;
      }
    }
  }

  FigSimpleMutexUnlock();
  return Seconds;
}

- (void)transferObjectsToSampleBuffer:(opaqueCMSampleBuffer *)buffer transformToBufferSpace:(BOOL)space sourceCropRect:(CGRect)rect
{
  OUTLINED_FUNCTION_12_30();
  v50 = v5;
  v51 = v6;
  OUTLINED_FUNCTION_9_7();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  FigSimpleMutexLock();
  v13 = *(v12 + 8);
  memset(&v49, 0, sizeof(v49));
  CMSampleBufferGetPresentationTimeStamp(&v49, v10);
  *&v48.a = *&v49.value;
  *&v48.c = v49.epoch;
  DetectedObjectsInfoClosestToPTS = doirb_findDetectedObjectsInfoClosestToPTS(v13, &v48);
  if (DetectedObjectsInfoClosestToPTS)
  {
    v15 = DetectedObjectsInfoClosestToPTS;
    v16 = CMGetAttachment(v10, *off_1E798A3C8, 0);
    if (!v16 || (v17 = v16, v18 = [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}], (v19 = objc_msgSend(objc_msgSend(v17, "objectForKeyedSubscript:", *off_1E798B5A0), "intValue")) == 0) || !v18)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      goto LABEL_12;
    }

    if (v8)
    {
      v20 = v19;
      v21 = [v17 objectForKeyedSubscript:*off_1E798B540];
      if (BWDeviceModelHasCharleston() && [v21 isEqualToString:*off_1E798A0F8])
      {
        v25 = OUTLINED_FUNCTION_5_49();
        TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching = mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching(v25, v17, v26);
        OUTLINED_FUNCTION_14(TransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching, v28, v29, v30, v31, v32, v33, v34, v43, v45, *&v47.a, *&v47.b, *&v47.c, *&v47.d, *&v47.tx, *&v47.ty, *&v48.a, *&v48.b, *&v48.c, *&v48.d, *&v48.tx);
        IsIdentity = CGAffineTransformIsIdentity(&v47);
        if (!IsIdentity)
        {
          OUTLINED_FUNCTION_14(IsIdentity, v36, v37, v38, v39, v40, v41, v42, v44, v46, *&v47.a, *&v47.b, *&v47.c, *&v47.d, *&v47.tx, *&v47.ty, *&v48.a, *&v48.b, *&v48.c, *&v48.d, *&v48.tx);
          v22 = FigCaptureMetadataUtilitiesApplyAffineTransformToDetectedObjectsInfo(v15, &v47);
          goto LABEL_11;
        }
      }

      else
      {
        v52.origin.x = OUTLINED_FUNCTION_3_1();
        if (!CGRectIsEmpty(v52))
        {
          v53.origin.x = OUTLINED_FUNCTION_3_1();
          v56.size.width = v18;
          v56.size.height = v20;
          if (!CGRectEqualToRect(v53, v56))
          {
            CGAffineTransformMakeScale(&v48, 1.0 / v18, 1.0 / v20);
            v54.origin.x = OUTLINED_FUNCTION_3_1();
            v55 = CGRectApplyAffineTransform(v54, v23);
            DetectedObjectsInfoForCropRect = FigCaptureMetadataUtilitiesCreateDetectedObjectsInfoForCropRect(v15, v55.origin.x, v55.origin.y, v55.size.width);
            [v17 setObject:DetectedObjectsInfoForCropRect forKeyedSubscript:*off_1E798B220];

            goto LABEL_12;
          }
        }
      }
    }

    v22 = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v15, 1uLL);
LABEL_11:
    [v17 setObject:v22 forKeyedSubscript:*off_1E798B220];
  }

LABEL_12:
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_11_29();
}

@end