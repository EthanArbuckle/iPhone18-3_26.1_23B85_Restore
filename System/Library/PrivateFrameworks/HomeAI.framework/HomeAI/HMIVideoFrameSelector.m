@interface HMIVideoFrameSelector
- (HMIVideoFrameSelector)initWithConfiguration:(id)a3 workQueue:(id)a4;
- (HMIVideoFrameSelectorDelegate)delegate;
- (void)dealloc;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setSampleRate:(double)a3;
@end

@implementation HMIVideoFrameSelector

- (HMIVideoFrameSelector)initWithConfiguration:(id)a3 workQueue:(id)a4
{
  v9.receiver = self;
  v9.super_class = HMIVideoFrameSelector;
  v4 = [(HMIVideoAnalyzerProcessingNode *)&v9 initWithConfiguration:a3 workQueue:a4];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    CMTimeMake(&v8, 3, 10);
    v6 = *&v8.value;
    v5->_targetInterval.epoch = v8.epoch;
    *&v5->_targetInterval.value = v6;
    v5->_enabled = 1;
    v5->_resetReferences = 0;
    v5->_references = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    [(HMIVideoFrameSelector *)v5 setSampleRate:3.0];
  }

  return v5;
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_enabled)
  {
    if (self->_resetReferences)
    {
      self->_resetReferences = 0;
      CFArrayRemoveAllValues(self->_references);
    }

    referenceInterval = self->_referenceInterval;
    maxReferences = self->_maxReferences;
    os_unfair_lock_unlock(&self->_lock);
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetPresentationTimeStamp(&v15, a3);
    v6 = [(HMIVideoFrameSelector *)self delegate];
    if (CFArrayGetCount(self->_references) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(self->_references, 0), memset(&v20, 0, 24), CMSampleBufferGetPresentationTimeStamp(&v20.start, ValueAtIndex), lhs = v20.start, rhs = self->_targetInterval, CMTimeAdd(&time2.start, &lhs, &rhs), lhs = v15, CMTimeCompare(&lhs, &time2.start) < 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = CFRetain(ValueAtIndex);
      CFArrayRemoveValueAtIndex(self->_references, 0);
    }

    memset(&v20, 0, sizeof(v20));
    HMICMSampleBufferGetPresentationTimeRange(a3, &v20);
    memset(&lhs, 0, sizeof(lhs));
    time2 = v20;
    CMTimeRangeGetEnd(&rhs, &time2);
    time2.start = referenceInterval;
    v9 = CMTimeDivide();
    time2.start = lhs;
    v14 = *MEMORY[0x277CC08F0];
    *&rhs.value = *MEMORY[0x277CC08F0];
    v10 = *(MEMORY[0x277CC08F0] + 16);
    rhs.epoch = v10;
    v11 = v9 - (CMTimeCompare(&time2.start, &rhs) == 0);
    *&time2.start.value = *&v20.start.value;
    time2.start.epoch = v20.start.epoch;
    rhs = referenceInterval;
    if (CMTimeDivide() < v11 || (time2.start = lhs, *&rhs.value = v14, rhs.epoch = v10, !CMTimeCompare(&time2.start, &rhs)))
    {
      v12 = [v6 frameSelector:self prepareFrame:{a3, v14}];
      if (v12)
      {
        v13 = v12;
        CFArrayAppendValue(self->_references, v12);
        CFRelease(v13);
      }
    }

    while (CFArrayGetCount(self->_references) > maxReferences)
    {
      CFArrayRemoveValueAtIndex(self->_references, 0);
    }

    if (v8)
    {
      [v6 frameSelector:self didSelectFrame:a3 reference:v8];
      CFRelease(v8);
    }

    else
    {
      [v6 frameSelector:self didSkipFrame:a3];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)dealloc
{
  CFRelease(self->_references);
  v3.receiver = self;
  v3.super_class = HMIVideoFrameSelector;
  [(HMIVideoFrameSelector *)&v3 dealloc];
}

- (void)setSampleRate:(double)a3
{
  memset(&v10, 0, sizeof(v10));
  CMTimeMakeWithSeconds(&time1, 1.0 / a3, 1000000);
  CMTimeMake(&time2, 86400, 1);
  CMTimeMinimum(&v10, &time1, &time2);
  os_unfair_lock_lock_with_options();
  p_referenceInterval = &self->_referenceInterval;
  time1 = v10;
  time2 = self->_referenceInterval;
  self->_resetReferences = CMTimeCompare(&time1, &time2) > 0;
  self->_referenceInterval = v10;
  self->_enabled = a3 > 0.0;
  time2 = self->_targetInterval;
  referenceInterval = self->_referenceInterval;
  CMTimeAdd(&time1, &time2, &referenceInterval);
  time2 = self->_referenceInterval;
  if (CMTimeDivide() <= 14)
  {
    time2 = self->_targetInterval;
    *&referenceInterval.value = *&p_referenceInterval->value;
    referenceInterval.epoch = self->_referenceInterval.epoch;
    CMTimeAdd(&time1, &time2, &referenceInterval);
    *&time2.value = *&p_referenceInterval->value;
    time2.epoch = self->_referenceInterval.epoch;
    v6 = CMTimeDivide() + 1;
  }

  else
  {
    v6 = 15;
  }

  self->_maxReferences = v6;
  os_unfair_lock_unlock(&self->_lock);
}

- (HMIVideoFrameSelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end