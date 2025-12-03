@interface BWNodeSampleBufferMessage
+ (id)newMessageWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
+ (id)newMessageWithSampleBuffer:(opaqueCMSampleBuffer *)buffer recordingSettings:(id)settings;
+ (id)newMessageWithSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings;
- (void)_initWithSampleBuffer:(void *)buffer stillImageSettings:(void *)settings recordingSettings:;
- (void)dealloc;
@end

@implementation BWNodeSampleBufferMessage

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWNodeSampleBufferMessage;
  [(BWNodeSampleBufferMessage *)&v4 dealloc];
}

- (void)_initWithSampleBuffer:(void *)buffer stillImageSettings:(void *)settings recordingSettings:
{
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = BWNodeSampleBufferMessage;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = v7;
  if (v7)
  {
    v7[1] = 0x100000002;
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    v8[2] = v9;
    if (buffer)
    {
      v10 = &OBJC_IVAR___BWNodeSampleBufferMessage__stillImageSettings;
LABEL_10:
      *(v8 + *v10) = buffer;
      return v8;
    }

    if (settings)
    {
      v10 = &OBJC_IVAR___BWNodeSampleBufferMessage__recordingSettings;
      buffer = settings;
      goto LABEL_10;
    }
  }

  return v8;
}

+ (id)newMessageWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = [BWNodeSampleBufferMessage alloc];

  return [(BWNodeSampleBufferMessage *)v4 _initWithSampleBuffer:buffer stillImageSettings:0 recordingSettings:0];
}

+ (id)newMessageWithSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings
{
  v6 = [BWNodeSampleBufferMessage alloc];

  return [(BWNodeSampleBufferMessage *)v6 _initWithSampleBuffer:buffer stillImageSettings:settings recordingSettings:0];
}

+ (id)newMessageWithSampleBuffer:(opaqueCMSampleBuffer *)buffer recordingSettings:(id)settings
{
  v6 = [BWNodeSampleBufferMessage alloc];

  return [(BWNodeSampleBufferMessage *)v6 _initWithSampleBuffer:buffer stillImageSettings:0 recordingSettings:settings];
}

@end