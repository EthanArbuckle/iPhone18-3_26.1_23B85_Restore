@interface BWLearnedNRInput
- (void)dealloc;
- (void)setInputFrame:(opaqueCMSampleBuffer *)a3;
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

- (void)setInputFrame:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    inputFrame = self->_inputFrame;
    if (inputFrame)
    {
      CFRelease(inputFrame);
    }

    v6 = CFRetain(a3);
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