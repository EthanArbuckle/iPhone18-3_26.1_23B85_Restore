@interface BWDeferredMetadataCache
- (BWDeferredMetadataCache)initWithCaptureStream:(id)a3 atomicTransactions:(BOOL)a4;
- (void)addMetadataAttachmentToSampleBuffer:(opaqueCMSampleBuffer *)a3 withDutyCycleMetadataCache:(id)a4;
- (void)dealloc;
- (void)flush;
- (void)setNumberOfExpectedSampleBuffersForEachPTS:(int)a3;
@end

@implementation BWDeferredMetadataCache

- (BWDeferredMetadataCache)initWithCaptureStream:(id)a3 atomicTransactions:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v8.receiver = self;
    v8.super_class = BWDeferredMetadataCache;
    v6 = [(BWDeferredMetadataCache *)&v8 init];
    if (v6)
    {
      v6->_stream = a3;
      if (v4)
      {
        v6->_lock = FigSimpleMutexCreate();
      }

      v6->_numberOfExpectedSampleBuffersForEachPTS = 2;
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = 0;
  v4 = MEMORY[0x1E6960C70];
  do
  {
    v5 = self + v3 * 40;
    metadataDict = self->_cache[v3].metadataDict;
    if (metadataDict)
    {
      *(v5 + 2) = *v4;
      *(v5 + 6) = *(v4 + 16);
      CFRelease(metadataDict);
      *(v5 + 7) = 0;
      *(v5 + 16) = 0;
    }

    ++v3;
  }

  while (v3 != 5);
  FigSimpleMutexDestroy();

  v7.receiver = self;
  v7.super_class = BWDeferredMetadataCache;
  [(BWDeferredMetadataCache *)&v7 dealloc];
}

- (void)addMetadataAttachmentToSampleBuffer:(opaqueCMSampleBuffer *)a3 withDutyCycleMetadataCache:(id)a4
{
  if (a3)
  {
    memset(&v25, 0, sizeof(v25));
    CMSampleBufferGetPresentationTimeStamp(&v25, a3);
    if (self->_lock)
    {
      FigSimpleMutexLock();
    }

    v24 = v25;
    p_metadataDict = &self->_cache[0].metadataDict;
    v8 = 5;
    while (1)
    {
      if (*p_metadataDict)
      {
        time1 = *(p_metadataDict - 1);
        time2 = v24;
        if (!CMTimeCompare(&time1, &time2))
        {
          break;
        }
      }

      p_metadataDict += 5;
      if (!--v8)
      {
        if (![(BWFigCaptureStream *)self->_stream addAttachmentsToSampleBuffer:a3 options:0])
        {
          if (a4)
          {
            FigCaptureMetadataUtilitiesAddMissingDutyCycleMetadata(a3, a4);
          }

          memset(&time1, 0, sizeof(time1));
          CMSampleBufferGetPresentationTimeStamp(&time1, a3);
          v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
          if (v9 && (time1.flags & 1) != 0)
          {
            v10 = v9;
            v11 = 0;
            p_age = &self->_cache[0].age;
            v13 = -1;
            v14 = MEMORY[0x1E6960C70];
            do
            {
              v15 = *(p_age - 5);
              if (v15)
              {
                v16 = ++*p_age;
                if (v16 >= 5)
                {
                  v17 = p_age - 17;
                  *v17 = *v14;
                  *(v17 + 2) = *(v14 + 16);
                  CFRelease(v15);
                  *(p_age - 5) = 0;
                  *(p_age - 1) = 0;
                  if (v13 == -1)
                  {
                    v13 = v11;
                  }
                }
              }

              else
              {
                v13 = v11;
              }

              ++v11;
              p_age += 20;
            }

            while (v11 != 5);
            if (v13 < 0)
            {
              [BWDeferredMetadataCache addMetadataAttachmentToSampleBuffer:withDutyCycleMetadataCache:];
            }

            v18 = &self->_cache[v13];
            v18->useCount = 1;
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v10);
            v18->pts = time1;
            v18->metadataDict = MutableCopy;
            v18->age = 0;
          }
        }

        goto LABEL_29;
      }
    }

    v20 = *(p_metadataDict + 4) + 1;
    *(p_metadataDict + 4) = v20;
    if (self->_numberOfExpectedSampleBuffersForEachPTS <= v20)
    {
      dmc_attachMetadataDictToSampleBufferAndPixelBufferAndCleanupPrivateCaptureStreamAttachments(a3, *p_metadataDict);
      v23 = MEMORY[0x1E6960C70];
      *(p_metadataDict - 3) = *MEMORY[0x1E6960C70];
      *(p_metadataDict - 1) = *(v23 + 16);
      if (*p_metadataDict)
      {
        CFRelease(*p_metadataDict);
        *p_metadataDict = 0;
      }

      *(p_metadataDict + 2) = 0;
    }

    else
    {
      v21 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *p_metadataDict);
      if (v21)
      {
        v22 = v21;
        dmc_attachMetadataDictToSampleBufferAndPixelBufferAndCleanupPrivateCaptureStreamAttachments(a3, v21);
        CFRelease(v22);
      }
    }

LABEL_29:
    if (self->_lock)
    {
      FigSimpleMutexUnlock();
    }
  }
}

- (void)flush
{
  if (self->_lock)
  {
    FigSimpleMutexLock();
  }

  p_metadataDict = &self->_cache[0].metadataDict;
  v4 = 5;
  v5 = MEMORY[0x1E6960C70];
  do
  {
    v6 = *p_metadataDict;
    if (*p_metadataDict)
    {
      *(p_metadataDict - 3) = *v5;
      *(p_metadataDict - 1) = *(v5 + 16);
      CFRelease(v6);
      *p_metadataDict = 0;
      *(p_metadataDict + 2) = 0;
    }

    p_metadataDict += 5;
    --v4;
  }

  while (v4);
  if (self->_lock)
  {

    FigSimpleMutexUnlock();
  }
}

- (void)setNumberOfExpectedSampleBuffersForEachPTS:(int)a3
{
  if (a3 <= 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't set the expected number of sample buffers for each PTS to a number smaller than 2 (if you don't expect multiple per PTS userInfo:{why use to cache"), 0, v3, v4}];
  }

  if (self->_numberOfExpectedSampleBuffersForEachPTS != a3)
  {
    self->_numberOfExpectedSampleBuffersForEachPTS = a3;
  }
}

@end