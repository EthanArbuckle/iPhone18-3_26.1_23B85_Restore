@interface BWStillImageTimeMachine
+ (BOOL)afComplete:(opaqueCMSampleBuffer *)a3;
- (BWStillImageTimeMachine)initWithCapacity:(int)a3;
- (int)insertFrame:(opaqueCMSampleBuffer *)a3;
- (opaqueCMSampleBuffer)copyBestFrame;
- (uint64_t)copyBestFrame;
- (void)_drain;
- (void)dealloc;
- (void)drain;
- (void)resume;
- (void)suspendAndDrain;
@end

@implementation BWStillImageTimeMachine

- (BWStillImageTimeMachine)initWithCapacity:(int)a3
{
  v7.receiver = self;
  v7.super_class = BWStillImageTimeMachine;
  v4 = [(BWStillImageTimeMachine *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    if (a3 >= 1)
    {
      v4->_frames = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
    }

    v5->_timeMachineMutex = FigSimpleMutexCreate();
  }

  return v5;
}

- (void)dealloc
{
  [(BWStillImageTimeMachine *)self _drain];
  free(self->_frames);
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = BWStillImageTimeMachine;
  [(BWStillImageTimeMachine *)&v3 dealloc];
}

- (void)resume
{
  FigSimpleMutexLock();
  self->_suspended = 0;

  FigSimpleMutexUnlock();
}

- (void)suspendAndDrain
{
  FigSimpleMutexLock();
  if (!self->_suspended)
  {
    self->_suspended = 1;
    [(BWStillImageTimeMachine *)self _drain];
  }

  FigSimpleMutexUnlock();
}

- (int)insertFrame:(opaqueCMSampleBuffer *)a3
{
  FigSimpleMutexLock();
  capacity = self->_capacity;
  if (capacity && !self->_suspended)
  {
    v7 = *self->_frames;
    if (v7)
    {
      CFRelease(v7);
      capacity = self->_capacity;
    }

    v8 = (capacity - 1);
    if (v8)
    {
      v9 = 0;
      do
      {
        self->_frames[v9] = self->_frames[v9 + 1];
        ++v9;
      }

      while (v8 != v9);
    }

    else
    {
      v8 = 0;
    }

    CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(a3, &self->_frames[v8]);
    if (CopyIncludingMetadata)
    {
      [BWStillImageTimeMachine insertFrame:];
    }
  }

  else
  {
    CopyIncludingMetadata = 0;
  }

  FigSimpleMutexUnlock();
  return CopyIncludingMetadata;
}

- (opaqueCMSampleBuffer)copyBestFrame
{
  valuePtr = 0.0;
  FigSimpleMutexLock();
  p_capacity = &self->_capacity;
  capacity = self->_capacity;
  if (capacity >= 4)
  {
    [(BWStillImageTimeMachine *)&self->_capacity copyBestFrame];
    capacity = v36;
  }

  v36 = 0;
  if (capacity < 1)
  {
    goto LABEL_46;
  }

  if (!self->_frames)
  {
    goto LABEL_46;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 |= [BWStillImageTimeMachine afComplete:self->_frames[v5++]];
    v7 = self->_capacity;
  }

  while (v5 < v7);
  if ((v6 & 1) == 0)
  {
    goto LABEL_46;
  }

  v8 = self->_frames[v7 - 1];
  if (v8 && (v9 = CMGetAttachment(v8, *off_1E798A3C8, 0)) != 0 && (v10 = CFDictionaryGetValue(v9, *off_1E798B2A8)) != 0 && (CFNumberGetValue(v10, kCFNumberFloat64Type, &valuePtr), valuePtr < 0.01) && valuePtr > 0.0)
  {
    v11 = -1;
    if (*p_capacity)
    {
      v12 = *p_capacity - 1;
      goto LABEL_39;
    }
  }

  else
  {
    if (*p_capacity)
    {
      v13 = 0;
      v14 = *off_1E798A3C8;
      key = *off_1E798B300;
      v32 = *off_1E798B0A0;
      v15 = *off_1E798B0A8;
      v16 = 0.0;
      v12 = -1;
      v11 = -1;
      do
      {
        v17 = self->_frames[v13];
        if (v17)
        {
          v18 = CMGetAttachment(v17, v14, 0);
          if (v18)
          {
            v19 = v18;
            Value = CFDictionaryGetValue(v18, key);
            if (Value)
            {
              v21 = Value;
              v22 = 0;
              v23 = CFArrayGetCount(Value) - 1;
              if (v23 >= 0)
              {
                for (i = v23; i != -1; --i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                  CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &v36);
                  v22 += v36;
                }
              }
            }

            else
            {
              v22 = -1;
            }

            v26 = CFDictionaryGetValue(v19, v32);
            if (v26 && !CFBooleanGetValue(v26))
            {
              v22 >>= 2;
            }

            v27 = CFDictionaryGetValue(v19, v15);
            v34 = 4;
            if (v27)
            {
              CFNumberGetValue(v27, kCFNumberIntType, &v34);
              v28 = v22 >> 2;
              if (v34 != 2)
              {
                v28 = v22;
              }

              if (v34 == 3)
              {
                v22 >>= 1;
              }

              else
              {
                v22 = v28;
              }
            }

            if ((v22 & 0x8000000000000000) == 0 && (copyBestFrame_weights[*p_capacity + ~v13] * v22) > v16)
            {
              v16 = copyBestFrame_weights[*p_capacity + ~v13] * v22;
              v12 = v13;
            }
          }

          v11 = v13;
        }

        ++v13;
      }

      while (v13 < *p_capacity);
LABEL_39:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v11 = -1;
  }

LABEL_42:
  v12 = v11;
  if (v11 < 0)
  {
LABEL_46:
    v30 = 0;
    goto LABEL_47;
  }

LABEL_43:
  if (v12 >= *p_capacity)
  {
    goto LABEL_46;
  }

  v29 = self->_frames[v12];
  if (!v29)
  {
    goto LABEL_46;
  }

  v30 = CFRetain(v29);
LABEL_47:
  FigSimpleMutexUnlock();
  return v30;
}

+ (BOOL)afComplete:(opaqueCMSampleBuffer *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  result = 1;
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, *off_1E798B0A8);
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr == 2)
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)_drain
{
  if (a1)
  {
    v2 = *(a1 + 28);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(a1 + 16) + 8 * i);
        if (v4)
        {
          CFRelease(v4);
          *(*(a1 + 16) + 8 * i) = 0;
          v2 = *(a1 + 28);
        }
      }
    }
  }
}

- (void)drain
{
  FigSimpleMutexLock();
  [(BWStillImageTimeMachine *)self _drain];

  FigSimpleMutexUnlock();
}

- (uint64_t)insertFrame:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)copyBestFrame
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

@end