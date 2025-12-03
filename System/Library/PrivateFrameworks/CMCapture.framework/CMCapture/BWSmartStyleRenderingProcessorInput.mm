@interface BWSmartStyleRenderingProcessorInput
- (BOOL)_isApplyOnly:(_BOOL8)result;
- (BWSmartStyleRenderingProcessorInput)initWithSettings:(id)settings portType:(id)type;
- (void)addSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferType:(unint64_t)type;
- (void)dealloc;
@end

@implementation BWSmartStyleRenderingProcessorInput

- (void)dealloc
{
  inputFrame = self->_inputFrame;
  if (inputFrame)
  {
    CFRelease(inputFrame);
  }

  v4.receiver = self;
  v4.super_class = BWSmartStyleRenderingProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)addSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferType:(unint64_t)type
{
  delegate = [(BWStillImageProcessorControllerInput *)self delegate];
  self->_inputBufferType = type;
  if (self->_addFrameFailed)
  {
LABEL_7:

    [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate inputAddFrameFailed:self];
    return;
  }

  if (!buffer || !CMGetAttachment(buffer, *off_1E798A3C8, 0))
  {
    self->_addFrameFailed = 1;
    goto LABEL_7;
  }

  inputFrame = self->_inputFrame;
  self->_inputFrame = buffer;
  CFRetain(buffer);
  if (inputFrame)
  {
    CFRelease(inputFrame);
  }

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate input:self addFrame:self->_inputFrame];
  if (self->_addFrameFailed)
  {
    goto LABEL_7;
  }
}

- (BWSmartStyleRenderingProcessorInput)initWithSettings:(id)settings portType:(id)type
{
  v8.receiver = self;
  v8.super_class = BWSmartStyleRenderingProcessorInput;
  v5 = [(BWStillImageProcessorControllerInput *)&v8 initWithSettings:settings portType:type];
  v6 = v5;
  if (v5)
  {
    v5->_applyOnly = [(BWSmartStyleRenderingProcessorInput *)v5 _isApplyOnly:settings];
  }

  return v6;
}

- (BOOL)_isApplyOnly:(_BOOL8)result
{
  if (result)
  {
    v3 = [objc_msgSend(a2 "captureSettings")];
    v4 = [objc_msgSend(a2 "captureSettings")];
    if (v3 <= 0xD && ((1 << v3) & 0x3400) != 0)
    {
      return 0;
    }

    else
    {
      return v3 != 2 && v3 != 11 && (v4 & 0x80) == 0;
    }
  }

  return result;
}

@end