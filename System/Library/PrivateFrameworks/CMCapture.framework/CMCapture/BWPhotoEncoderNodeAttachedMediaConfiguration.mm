@interface BWPhotoEncoderNodeAttachedMediaConfiguration
- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithDimensions:(id)dimensions propagationMode:(int64_t)mode;
- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithKeepInputDimensions:(BOOL)dimensions propagationMode:(int64_t)mode;
- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithMainImageDownscalingFactor:(float)factor propagationMode:(int64_t)mode;
- (id)description;
@end

@implementation BWPhotoEncoderNodeAttachedMediaConfiguration

- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithMainImageDownscalingFactor:(float)factor propagationMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = BWPhotoEncoderNodeAttachedMediaConfiguration;
  result = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)&v7 init];
  if (result)
  {
    result->_mainImageDownscalingFactor = factor;
    result->_dimensions = 0;
    result->_keepInputDimensions = 0;
    result->_propagationMode = mode;
  }

  return result;
}

- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithDimensions:(id)dimensions propagationMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = BWPhotoEncoderNodeAttachedMediaConfiguration;
  result = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)&v7 init];
  if (result)
  {
    result->_mainImageDownscalingFactor = 0.0;
    result->_dimensions = dimensions;
    result->_keepInputDimensions = 0;
    result->_propagationMode = mode;
  }

  return result;
}

- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithKeepInputDimensions:(BOOL)dimensions propagationMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = BWPhotoEncoderNodeAttachedMediaConfiguration;
  result = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)&v7 init];
  if (result)
  {
    result->_mainImageDownscalingFactor = 0.0;
    result->_dimensions = 0;
    result->_keepInputDimensions = dimensions;
    result->_propagationMode = mode;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: mainImageDownscalingFactor:%f, dimensions:%dx%d, keepInputDimensions:%d mode:%@", v4, self, self->_mainImageDownscalingFactor, self->_dimensions.width, self->_dimensions.height, self->_keepInputDimensions, BWPhotoEncoderStringForPhotoEncoderNodeAttachedMediaPropagationMode(self->_propagationMode)];
}

@end