@interface BWSoftISPProcessorControllerInput
- (BWSoftISPProcessorControllerInput)initWithSettings:(id)a3 portType:(id)a4 resolutionFlavor:(int)a5 gdcEnabled:(BOOL)a6;
- (id)description;
- (void)addFrame:(opaqueCMSampleBuffer *)a3 processingMode:(int)a4 transferOwnership:(BOOL)a5;
- (void)dealloc;
@end

@implementation BWSoftISPProcessorControllerInput

- (BWSoftISPProcessorControllerInput)initWithSettings:(id)a3 portType:(id)a4 resolutionFlavor:(int)a5 gdcEnabled:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = BWSoftISPProcessorControllerInput;
  result = [(BWStillImageProcessorControllerInput *)&v9 initWithSettings:a3 portType:a4];
  if (result)
  {
    result->_resolutionFlavor = a5;
    result->_gdcEnabled = a6;
  }

  return result;
}

- (void)dealloc
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  v4.receiver = self;
  v4.super_class = BWSoftISPProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)addFrame:(opaqueCMSampleBuffer *)a3 processingMode:(int)a4 transferOwnership:(BOOL)a5
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  if (!a5 && a3)
  {
    a3 = CFRetain(a3);
  }

  self->_frame = a3;
  self->_processingMode = a4;
  v10 = [(BWStillImageProcessorControllerInput *)self delegate];
  v11 = self->_frame;
  resolutionFlavor = self->_resolutionFlavor;

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)v10 input:self addFrame:v11 resolutionFlavor:resolutionFlavor];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = BWSoftISPProcessorControllerInput;
  v4 = [(BWStillImageProcessorControllerInput *)&v6 description];
  return [v3 stringWithFormat:@"%@, processingMode:%@ frame:%@ gdcEnabled:%d", v4, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", self->_processingMode), BWStillImageSampleBufferToDisplayString(self->_frame), self->_gdcEnabled];
}

@end