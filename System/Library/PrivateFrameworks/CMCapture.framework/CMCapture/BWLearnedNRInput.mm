@interface BWLearnedNRInput
- (void)dealloc;
- (void)setInputFrame:(opaqueCMSampleBuffer *)frame;
@end

@implementation BWLearnedNRInput

- (void)dealloc
{
  inputFrame = self->_inputFrame;
  if (inputFrame)
  {
    CFRelease(inputFrame);
  }

  v4.receiver = self;
  v4.super_class = BWLearnedNRInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)setInputFrame:(opaqueCMSampleBuffer *)frame
{
  if (frame)
  {
    inputFrame = self->_inputFrame;
    if (inputFrame)
    {
      CFRelease(inputFrame);
    }

    v6 = CFRetain(frame);
    self->_inputFrame = v6;
    delegate = self->_delegate;

    [(BWLearnedNRInputDelegate *)delegate input:self setInputFrame:v6];
  }

  else
  {
    [BWLearnedNRInput setInputFrame:];
  }
}

@end