@interface BWSceneClassifierFrameGateNode
- (BWSceneClassifierFrameGateNode)initWithMaxOutputFrameRate:(int)rate;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWSceneClassifierFrameGateNode

- (BWSceneClassifierFrameGateNode)initWithMaxOutputFrameRate:(int)rate
{
  if (rate <= 0)
  {
    [BWSceneClassifierFrameGateNode initWithMaxOutputFrameRate:?];
    return 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BWSceneClassifierFrameGateNode;
    v4 = [(BWNode *)&v8 init];
    if (v4)
    {
      v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
      [(BWNodeInput *)v5 setPassthroughMode:1];
      [(BWNode *)v4 addInput:v5];

      v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
      [(BWNodeOutput *)v6 setPassthroughMode:1];
      [(BWNode *)v4 addOutput:v6];

      *&v4->_discardsBlurryFrames = rate;
      *(&v4->super._requiresEndOfDataForConfigurationChanges + 3) = 1;
    }
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWSceneClassifierFrameGateNode;
  [(BWNode *)&v2 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  ++HIDWORD(self->_lastEmittedPTS.epoch);
  if (![CMGetAttachment(buffer @"UprightExifOrientation"])
  {
    if (SHIDWORD(self->_lastEmittedPTS.epoch) < 31)
    {
      return;
    }

    CMSetAttachment(buffer, @"UprightExifOrientation", &unk_1F22452C8, 1u);
  }

  v6 = CMGetAttachment(buffer, *off_1E798A420, 0);
  if (v6)
  {
    CMTimeMakeFromDictionary(&time, v6);
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&time, buffer);
  }

  value = time.value;
  flags = time.flags;
  timescale = time.timescale;
  epoch = time.epoch;
  p_maxFrameRate = &self->_maxFrameRate;
  if (self->_lastEmittedPTS.timescale & 1) != 0 && (time.flags)
  {
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = time.flags;
    lhs.epoch = time.epoch;
    *&v16.value = *p_maxFrameRate;
    v16.epoch = *&self->_lastEmittedPTS.flags;
    CMTimeSubtract(&time, &lhs, &v16);
    v10 = 0.95 / CMTimeGetSeconds(&time);
    v11 = *&self->_discardsBlurryFrames;
    if (!*(&self->super._requiresEndOfDataForConfigurationChanges + 3) || v10 > v11)
    {
      if (v10 > v11)
      {
        return;
      }

LABEL_18:
      *p_maxFrameRate = value;
      HIDWORD(self->_lastEmittedPTS.value) = timescale;
      self->_lastEmittedPTS.timescale = flags;
      *&self->_lastEmittedPTS.flags = epoch;
      [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
      return;
    }
  }

  else if (!*(&self->super._requiresEndOfDataForConfigurationChanges + 3))
  {
    goto LABEL_18;
  }

  v12 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v13 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
  v14 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B320), "intValue"}];
  if (v13 == 4 || v14 != 1)
  {
    goto LABEL_18;
  }
}

- (void)initWithMaxOutputFrameRate:(void *)a1 .cold.1(void *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

@end