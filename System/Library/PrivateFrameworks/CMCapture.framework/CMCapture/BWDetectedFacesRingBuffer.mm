@interface BWDetectedFacesRingBuffer
- (BWDetectedFacesRingBuffer)initWithDepth:(int)depth;
- (float)secondsSinceLastFaceDetected;
- (void)addFacesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)flush;
- (void)transferFacesToSampleBuffer:(opaqueCMSampleBuffer *)buffer transformToBufferSpace:(BOOL)space sourceCropRect:(CGRect)rect;
@end

@implementation BWDetectedFacesRingBuffer

- (BWDetectedFacesRingBuffer)initWithDepth:(int)depth
{
  if (depth <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"depth must be at least 1" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = BWDetectedFacesRingBuffer;
  v4 = [(BWDetectedFacesRingBuffer *)&v6 init];
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
  v3.super_class = BWDetectedFacesRingBuffer;
  [(BWDetectedFacesRingBuffer *)&v3 dealloc];
}

- (void)addFacesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  FigSimpleMutexLock();
  ringBuffer = self->_ringBuffer;
  depth = self->_depth;
  v14 = **&MEMORY[0x1E6960C70];
  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:*off_1E798B218];
    if (v8)
    {
      v9 = v8;
      if (ringBuffer)
      {
        v10 = [v8 copy];
        [(NSMutableArray *)ringBuffer insertObject:v10 atIndex:0];
        if ([(NSMutableArray *)ringBuffer count]> depth)
        {
          [(NSMutableArray *)ringBuffer removeLastObject];
        }
      }

      if ([v9 count])
      {
        [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{0), "objectForKeyedSubscript:", *off_1E798B780), "longLongValue"}];
        v11 = FigHostTimeToNanoseconds();
        CMTimeMake(&v14, v11, 1000000000);
      }
    }

    else
    {
      v14 = **&MEMORY[0x1E6960C68];
    }
  }

  else
  {
    [BWDetectedFacesRingBuffer addFacesFromSampleBuffer:];
  }

  if ((~v14.flags & 0x11) != 0)
  {
    if (v14.flags)
    {
      numConsecutiveFramesWithFaces = self->_numConsecutiveFramesWithFaces;
      self->_numConsecutiveFramesWithFaces = numConsecutiveFramesWithFaces + 1;
      if (numConsecutiveFramesWithFaces >= 3)
      {
        self->_lastStableFacePTS = v14;
      }
    }

    else
    {
      self->_numConsecutiveFramesWithFaces = 0;
    }
  }

  CMSampleBufferGetPresentationTimeStamp(&v13, buffer);
  self->_lastUpdatePTS = v13;
  FigSimpleMutexUnlock();
}

- (void)flush
{
  FigSimpleMutexLock();
  [(NSMutableArray *)self->_ringBuffer removeAllObjects];

  FigSimpleMutexUnlock();
}

- (float)secondsSinceLastFaceDetected
{
  FigSimpleMutexLock();
  flags = self->_lastStableFacePTS.flags;
  Seconds = -1.0;
  if (flags)
  {
    v5 = self->_lastUpdatePTS.flags;
    if (v5)
    {
      value = self->_lastUpdatePTS.value;
      rhs.epoch = self->_lastStableFacePTS.epoch;
      lhs.value = value;
      lhs.timescale = self->_lastUpdatePTS.timescale;
      lhs.flags = v5;
      v7 = self->_lastStableFacePTS.value;
      lhs.epoch = self->_lastUpdatePTS.epoch;
      rhs.value = v7;
      rhs.timescale = self->_lastStableFacePTS.timescale;
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

- (void)transferFacesToSampleBuffer:(opaqueCMSampleBuffer *)buffer transformToBufferSpace:(BOOL)space sourceCropRect:(CGRect)rect
{
  OUTLINED_FUNCTION_9_7();
  HIDWORD(v59) = v5;
  v7 = v6;
  v9 = v8;
  FigSimpleMutexLock();
  v10 = *(v9 + 8);
  memset(&v64, 0, sizeof(v64));
  CMSampleBufferGetPresentationTimeStamp(&v64, v7);
  value = v64.value;
  timescale = v64.timescale;
  v60 = *&v64.flags;
  epoch_high = HIDWORD(v64.epoch);
  v13 = [v10 count];
  memset(&v70, 0, sizeof(v70));
  CMTimeMake(&v70, 1, 1000);
  OUTLINED_FUNCTION_9_33();
  *&lhs.flags = v60;
  lhs.timescale = timescale;
  HIDWORD(lhs.epoch) = epoch_high;
  rhs = v70;
  lhs.value = value;
  CMTimeSubtract(&start.start, &lhs, &rhs);
  rhs = v70;
  CMTimeMultiply(&lhs, &rhs, 2);
  CMTimeRangeMake(&v69, &start.start, &lhs);
  if (v13 < 1)
  {
    v17 = -1;
    LODWORD(v14) = -1;
    goto LABEL_16;
  }

  v56 = v7;
  v57 = v9;
  v14 = 0;
  v15 = *off_1E798B780;
  v16 = v13 & 0x7FFFFFFF;
  v17 = -1;
  while (1)
  {
    v18 = [v10 objectAtIndexedSubscript:v14];
    if ([v18 count])
    {
      break;
    }

LABEL_9:
    if (v16 == ++v14)
    {
LABEL_10:
      LODWORD(v14) = -1;
LABEL_11:
      v7 = v56;
      goto LABEL_12;
    }
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  memset(&lhs, 0, sizeof(lhs));
  [objc_msgSend(v19 objectForKeyedSubscript:{v15), "longLongValue"}];
  v20 = FigHostTimeToNanoseconds();
  CMTimeMake(&start.start, v20, 1000000000);
  v21 = CMTimeConvertScale(&lhs, &start.start, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  OUTLINED_FUNCTION_6_43(v21, v22, v23, v24, v25, v26, v27, v28, v48, v50, v52, v54, v56, v57, v59, v60, epoch_high);
  v66 = lhs;
  CMTimeSubtract(&start.start, &rhs, &v66);
  Seconds = CMTimeGetSeconds(&start.start);
  if (fabsf(Seconds) > 0.5)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_50();
  rhs = lhs;
  v30 = CMTimeRangeContainsTime(&start, &rhs);
  if (!v30)
  {
    start.start = lhs;
    OUTLINED_FUNCTION_6_43(v30, v31, v32, v33, v34, v35, v36, v37, v49, v51, v53, v55, v56, v58, v59, v61, v63);
    v38 = CMTimeCompare(&start.start, &rhs);
    if (v38)
    {
      if (v38 < 1)
      {
        goto LABEL_11;
      }

      v17 = v14;
      goto LABEL_9;
    }
  }

  v7 = v56;
  if (v18)
  {
    goto LABEL_25;
  }

  LODWORD(v14) = -1;
LABEL_12:
  if (v14 == -1 && (v17 & 0x80000000) == 0)
  {
    lastObject = [v10 lastObject];
    goto LABEL_21;
  }

  if (v17 == -1 && (v14 & 0x80000000) == 0)
  {
    lastObject = [v10 firstObject];
    goto LABEL_21;
  }

LABEL_16:
  if (((v14 | v17) & 0x80000000) != 0)
  {
    v18 = 0;
  }

  else
  {
    lastObject = [v10 objectAtIndexedSubscript:(v14 + v17) >> 1];
LABEL_21:
    v18 = lastObject;
  }

LABEL_25:
  if ([v18 count])
  {
    v40 = CMGetAttachment(v7, *off_1E798A3C8, 0);
    if (v40 && (v41 = v40, v42 = [objc_msgSend(v40 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}], (v43 = objc_msgSend(objc_msgSend(v41, "objectForKeyedSubscript:", *off_1E798B5A0), "intValue")) != 0) && v42)
    {
      if (!HIDWORD(v59))
      {
        goto LABEL_34;
      }

      v44 = v43;
      v45 = [v41 objectForKeyedSubscript:*off_1E798B540];
      if (BWDeviceModelHasCharleston() && [v45 isEqualToString:*off_1E798A0F8])
      {
        OUTLINED_FUNCTION_9_33();
        mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching(v7, v41, &v69);
        OUTLINED_FUNCTION_4_50();
        if (!CGAffineTransformIsIdentity(&start))
        {
          OUTLINED_FUNCTION_4_50();
          v18 = FigCaptureMetadataUtilitiesApplyAffineTransformToFacesArray(v18, &start);
        }

LABEL_34:
        [v41 setObject:v18 forKeyedSubscript:*off_1E798B218];
      }

      else
      {
        v71.origin.x = OUTLINED_FUNCTION_3_1();
        if (CGRectIsEmpty(v71))
        {
          goto LABEL_34;
        }

        v72.origin.x = OUTLINED_FUNCTION_3_1();
        v75.size.width = v42;
        v75.size.height = v44;
        if (CGRectEqualToRect(v72, v75))
        {
          goto LABEL_34;
        }

        CGAffineTransformMakeScale(&v69, 1.0 / v42, 1.0 / v44);
        v73.origin.x = OUTLINED_FUNCTION_3_1();
        v74 = CGRectApplyAffineTransform(v73, v46);
        FacesArrayForCropRect = FigCaptureMetadataUtilitiesCreateFacesArrayForCropRect(v18, v74.origin.x, v74.origin.y, v74.size.width);
        [v41 setObject:FacesArrayForCropRect forKeyedSubscript:*off_1E798B218];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  FigSimpleMutexUnlock();
}

@end