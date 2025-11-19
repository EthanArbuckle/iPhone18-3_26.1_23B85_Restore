@interface BWScalerProcessorControllerInput
- (BWScalerProcessorControllerInput)initWithSettings:(id)a3 portType:(id)a4;
- (id)description;
- (void)addFrame:(opaqueCMSampleBuffer *)a3 bufferType:(unint64_t)a4;
- (void)dealloc;
@end

@implementation BWScalerProcessorControllerInput

- (BWScalerProcessorControllerInput)initWithSettings:(id)a3 portType:(id)a4
{
  v5.receiver = self;
  v5.super_class = BWScalerProcessorControllerInput;
  result = [(BWStillImageProcessorControllerInput *)&v5 initWithSettings:a3 portType:a4];
  if (result)
  {
    result->_processingModeSet = 0;
    result->_processingMode = 0;
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
  v4.super_class = BWScalerProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = BWScalerProcessorControllerInput;
  v4 = [(BWStillImageProcessorControllerInput *)&v11 description];
  v5 = BWStillImageBufferTypeToShortString(self->_bufferType);
  processingMode = self->_processingMode;
  v7 = @"ApplyZoom";
  if (processingMode == 1)
  {
    v7 = @"ResizeToOutput";
  }

  if (processingMode == 2)
  {
    v8 = @"CropToOutput";
  }

  else
  {
    v8 = v7;
  }

  if (self->_processingModeSet)
  {
    v9 = &stru_1F216A3D0;
  }

  else
  {
    v9 = @" (unresolved)";
  }

  return [v3 stringWithFormat:@"%@ bufferType:%@, processingMode:%@%@, frame:%@", v4, v5, v8, v9, BWStillImageSampleBufferToDisplayString(self->_frame)];
}

- (void)addFrame:(opaqueCMSampleBuffer *)a3 bufferType:(unint64_t)a4
{
  frame = self->_frame;
  self->_frame = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (frame)
  {
    CFRelease(frame);
  }

  self->_bufferType = a4;
  v7 = [(BWStillImageProcessorControllerInput *)self delegate];

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)v7 inputChanged:self];
}

@end