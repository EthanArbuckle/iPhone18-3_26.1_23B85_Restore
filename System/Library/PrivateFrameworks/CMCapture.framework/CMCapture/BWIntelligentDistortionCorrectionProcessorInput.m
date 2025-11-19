@interface BWIntelligentDistortionCorrectionProcessorInput
- (BWIntelligentDistortionCorrectionProcessorInput)initWithSettings:(id)a3 portType:(id)a4;
- (CGPoint)geometricDistortionCorrectionOpticalCenterOffset;
- (__n128)setStereoRectificationInverseHomography:(__n128)a3;
- (id)description;
- (void)addImage:(opaqueCMSampleBuffer *)a3 imageBufferType:(unint64_t)a4;
- (void)dealloc;
@end

@implementation BWIntelligentDistortionCorrectionProcessorInput

- (BWIntelligentDistortionCorrectionProcessorInput)initWithSettings:(id)a3 portType:(id)a4
{
  v5.receiver = self;
  v5.super_class = BWIntelligentDistortionCorrectionProcessorInput;
  result = [(BWStillImageProcessorControllerInput *)&v5 initWithSettings:a3 portType:a4];
  if (result)
  {
    result->_applyZoom = 1;
  }

  return result;
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
  }

  v4.receiver = self;
  v4.super_class = BWIntelligentDistortionCorrectionProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] settingsID];
  v5 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] captureType]);
  return [v7 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ : gdc:%d idc:%d zoom:%d image:%p imageSet:%d (type:%@) delegate:%p", v3, self, v4, v5, -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), self->_processGeometricDistortionCorrection, self->_processIntelligentDistortionCorrection, self->_applyZoom, self->_image, self->_imageSet, BWStillImageBufferTypeToShortString(self->_imageBufferType), self->_delegate];
}

- (__n128)setStereoRectificationInverseHomography:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  return result;
}

- (CGPoint)geometricDistortionCorrectionOpticalCenterOffset
{
  x = self->_geometricDistortionCorrectionOpticalCenterOffset.x;
  y = self->_geometricDistortionCorrectionOpticalCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)addImage:(opaqueCMSampleBuffer *)a3 imageBufferType:(unint64_t)a4
{
  image = self->_image;
  if (image)
  {
    CFRelease(image);
    self->_image = 0;
  }

  self->_imageSet = 1;
  self->_imageBufferType = a4;
  if (a3)
  {
    self->_image = CFRetain(a3);
  }

  delegate = self->_delegate;

  [(BWIntelligentDistortionCorrectionProcessorInputDelegate *)delegate inputReceivedNewInputData:self];
}

@end