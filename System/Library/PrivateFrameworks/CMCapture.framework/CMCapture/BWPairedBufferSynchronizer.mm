@interface BWPairedBufferSynchronizer
- ($1EEEE4500D0FE33ACBA34EA247EACA08)getSynchronizedBufferPair;
- (BWPairedBufferSynchronizer)initWithCapacity:(int)capacity;
- (void)_addBuffer:(opaqueCMSimpleQueue *)buffer toQueue:;
- (void)_emptyBufferQueues;
- (void)dealloc;
- (void)flush;
- (void)setSecondaryStreamComplete:(BOOL)complete;
@end

@implementation BWPairedBufferSynchronizer

- (void)setSecondaryStreamComplete:(BOOL)complete
{
  if (self->_secondaryStreamComplete != complete)
  {
    self->_secondaryStreamComplete = complete;
  }
}

- (BWPairedBufferSynchronizer)initWithCapacity:(int)capacity
{
  v8.receiver = self;
  v8.super_class = BWPairedBufferSynchronizer;
  v4 = [(BWPairedBufferSynchronizer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_stateLock._os_unfair_lock_opaque = 0;
    v6 = *MEMORY[0x1E695E480];
    if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], capacity, &v4->_primarySampleBufferQueue) || CMSimpleQueueCreate(v6, capacity, &v5->_secondarySampleBufferQueue))
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  [(BWPairedBufferSynchronizer *)self _emptyBufferQueues];
  primarySampleBufferQueue = self->_primarySampleBufferQueue;
  if (primarySampleBufferQueue)
  {
    CFRelease(primarySampleBufferQueue);
  }

  secondarySampleBufferQueue = self->_secondarySampleBufferQueue;
  if (secondarySampleBufferQueue)
  {
    CFRelease(secondarySampleBufferQueue);
  }

  secondaryFallbackSampleBuffer = self->_secondaryFallbackSampleBuffer;
  if (secondaryFallbackSampleBuffer)
  {
    CFRelease(secondaryFallbackSampleBuffer);
  }

  v6.receiver = self;
  v6.super_class = BWPairedBufferSynchronizer;
  [(BWPairedBufferSynchronizer *)&v6 dealloc];
}

- (void)flush
{
  os_unfair_lock_lock(&self->_stateLock);
  Count = CMSimpleQueueGetCount(self->_primarySampleBufferQueue);
  v4 = CMSimpleQueueGetCount(self->_secondarySampleBufferQueue);
  v5 = Count <= 0 && v4 <= 0;
  if (!v5 || self->_secondaryFallbackSampleBuffer)
  {
    [(BWPairedBufferSynchronizer *)self _emptyBufferQueues];
  }

  self->_secondaryStreamComplete = 0;

  os_unfair_lock_unlock(&self->_stateLock);
}

- ($1EEEE4500D0FE33ACBA34EA247EACA08)getSynchronizedBufferPair
{
  os_unfair_lock_lock(&self->_stateLock);
  if (CMSimpleQueueGetCount(self->_primarySampleBufferQueue) < 1)
  {
    goto LABEL_22;
  }

  p_secondarySampleBufferQueue = &self->_secondarySampleBufferQueue;
  if (CMSimpleQueueGetCount(self->_secondarySampleBufferQueue) < 1)
  {
    goto LABEL_22;
  }

  Head = CMSimpleQueueGetHead(self->_primarySampleBufferQueue);
  CMSampleBufferGetPresentationTimeStamp(&time, Head);
  Seconds = CMTimeGetSeconds(&time);
  v6 = CMSimpleQueueGetHead(self->_secondarySampleBufferQueue);
  CMSampleBufferGetPresentationTimeStamp(&time, v6);
  v7 = CMTimeGetSeconds(&time);
  v8 = Seconds < v7 && self->_secondaryFallbackSampleBuffer != 0;
  v9 = !v8;
  v10 = Seconds <= v7 && !v8;
  if (v10 || !self->_secondaryStreamComplete)
  {
    v9 = v10;
  }

  if (v8 || v9)
  {
    if (!v9)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (CMSimpleQueueGetCount(*p_secondarySampleBufferQueue) < 2)
  {
LABEL_22:
    Count = CMSimpleQueueGetCount(self->_primarySampleBufferQueue);
    if (Count != CMSimpleQueueGetCapacity(self->_primarySampleBufferQueue))
    {
      if (CMSimpleQueueGetCount(self->_primarySampleBufferQueue) < 1 || !self->_secondaryStreamComplete)
      {
        v11 = 0;
        v17 = 0;
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    p_secondarySampleBufferQueue = &self->_secondarySampleBufferQueue;
    if (CMSimpleQueueGetCount(self->_secondarySampleBufferQueue) <= 0)
    {
LABEL_33:
      v17 = CMSimpleQueueDequeue(self->_primarySampleBufferQueue);
      goto LABEL_34;
    }

LABEL_29:
    v11 = CMSimpleQueueDequeue(*p_secondarySampleBufferQueue);
    goto LABEL_30;
  }

  while (1)
  {
    v11 = CMSimpleQueueDequeue(*p_secondarySampleBufferQueue);
    CMSampleBufferGetPresentationTimeStamp(&time, v11);
    v12 = CMTimeGetSeconds(&time);
    v13 = CMSimpleQueueGetHead(*p_secondarySampleBufferQueue);
    CMSampleBufferGetPresentationTimeStamp(&time, v13);
    v14 = CMTimeGetSeconds(&time);
    if (v12 <= Seconds && v14 > Seconds)
    {
      break;
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (CMSimpleQueueGetCount(*p_secondarySampleBufferQueue) <= 1)
    {
      goto LABEL_22;
    }
  }

LABEL_30:
  v17 = CMSimpleQueueDequeue(self->_primarySampleBufferQueue);
  if (v11)
  {
    secondaryFallbackSampleBuffer = self->_secondaryFallbackSampleBuffer;
    self->_secondaryFallbackSampleBuffer = v11;
    CFRetain(v11);
    if (secondaryFallbackSampleBuffer)
    {
      CFRelease(secondaryFallbackSampleBuffer);
    }

    goto LABEL_37;
  }

LABEL_34:
  v19 = self->_secondaryFallbackSampleBuffer;
  if (v19)
  {
    v11 = CFRetain(v19);
  }

  else
  {
    v11 = 0;
  }

LABEL_37:
  memset(&time, 0, sizeof(time));
  CMSampleBufferGetPresentationTimeStamp(&time, v17);
  v25 = **&MEMORY[0x1E6960C70];
  if (v11)
  {
    CMSampleBufferGetPresentationTimeStamp(&v25, v11);
    lhs = time;
    v22 = v25;
    CMTimeSubtract(&v24, &lhs, &v22);
  }

LABEL_39:
  os_unfair_lock_unlock(&self->_stateLock);
  v20 = v17;
  v21 = v11;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (void)_emptyBufferQueues
{
  if (self)
  {
    while (1)
    {
      v2 = CMSimpleQueueDequeue(*(self + 16));
      if (!v2)
      {
        break;
      }

      CFRelease(v2);
    }

    while (1)
    {
      v3 = CMSimpleQueueDequeue(*(self + 24));
      if (!v3)
      {
        break;
      }

      CFRelease(v3);
    }

    v4 = *(self + 32);
    if (v4)
    {
      CFRelease(v4);
      *(self + 32) = 0;
    }
  }
}

- (void)_addBuffer:(opaqueCMSimpleQueue *)buffer toQueue:
{
  if (self)
  {
    CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
    CMTimeGetSeconds(&time);
    os_unfair_lock_lock(self + 2);
    Count = CMSimpleQueueGetCount(buffer);
    if (Count == CMSimpleQueueGetCapacity(buffer))
    {
      v7 = CMSimpleQueueDequeue(buffer);
      CMSampleBufferGetPresentationTimeStamp(&time, v7);
      CMTimeGetSeconds(&time);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    if (sbuf)
    {
      v8 = CFRetain(sbuf);
    }

    else
    {
      v8 = 0;
    }

    if (CMSimpleQueueEnqueue(buffer, v8))
    {
      CFRelease(sbuf);
    }

    os_unfair_lock_unlock(self + 2);
  }
}

@end