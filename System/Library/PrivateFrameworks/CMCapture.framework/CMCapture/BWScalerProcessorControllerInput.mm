@interface BWScalerProcessorControllerInput
- (BWScalerProcessorControllerInput)initWithSettings:(id)settings portType:(id)type;
- (id)description;
- (void)addFrame:(opaqueCMSampleBuffer *)frame bufferType:(unint64_t)type;
- (void)dealloc;
@end

@implementation BWScalerProcessorControllerInput

- (BWScalerProcessorControllerInput)initWithSettings:(id)settings portType:(id)type
{
  v5.receiver = self;
  v5.super_class = BWScalerProcessorControllerInput;
  result = [(BWStillImageProcessorControllerInput *)&v5 initWithSettings:settings portType:type];
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

- (void)addFrame:(opaqueCMSampleBuffer *)frame bufferType:(unint64_t)type
{
  frame = self->_frame;
  self->_frame = frame;
  if (frame)
  {
    CFRetain(frame);
  }

  if (frame)
  {
    CFRelease(frame);
  }

  self->_bufferType = type;
  delegate = [(BWStillImageProcessorControllerInput *)self delegate];

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)delegate inputChanged:self];
}

@end