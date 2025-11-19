@interface BWStereoDisparityProcessorControllerConfiguration
- (id)description;
- (void)dealloc;
@end

@implementation BWStereoDisparityProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStereoDisparityProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: PortTypes:%@, Input:%dx%d, Disparity:%dx%d ZoomingDisparityAllowed:%d ComputeDisparityWhenCalibrationFails:%d Type:%@", v4, self, -[NSArray componentsJoinedByString:](self->_portTypesWithDepthSegmentationPortraitParameters, "componentsJoinedByString:", @", "), self->_inputDimensions.width, self->_inputDimensions.height, self->_disparityOutputDimensions.width, self->_disparityOutputDimensions.height, self->_zoomingDisparityAllowed, self->_shouldComputeDisparityWhenCalibrationFails, BWPhotoEncoderStringFromEncodingScheme(self->_stillImageDepthDataType)];
}

@end