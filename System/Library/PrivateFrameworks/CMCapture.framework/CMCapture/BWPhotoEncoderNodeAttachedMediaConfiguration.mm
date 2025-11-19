@interface BWPhotoEncoderNodeAttachedMediaConfiguration
- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithDimensions:(id)a3 propagationMode:(int64_t)a4;
- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithKeepInputDimensions:(BOOL)a3 propagationMode:(int64_t)a4;
- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithMainImageDownscalingFactor:(float)a3 propagationMode:(int64_t)a4;
- (id)description;
@end

@implementation BWPhotoEncoderNodeAttachedMediaConfiguration

- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithMainImageDownscalingFactor:(float)a3 propagationMode:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BWPhotoEncoderNodeAttachedMediaConfiguration;
  result = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)&v7 init];
  if (result)
  {
    result->_mainImageDownscalingFactor = a3;
    result->_dimensions = 0;
    result->_keepInputDimensions = 0;
    result->_propagationMode = a4;
  }

  return result;
}

- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithDimensions:(id)a3 propagationMode:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BWPhotoEncoderNodeAttachedMediaConfiguration;
  result = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)&v7 init];
  if (result)
  {
    result->_mainImageDownscalingFactor = 0.0;
    result->_dimensions = a3;
    result->_keepInputDimensions = 0;
    result->_propagationMode = a4;
  }

  return result;
}

- (BWPhotoEncoderNodeAttachedMediaConfiguration)initWithKeepInputDimensions:(BOOL)a3 propagationMode:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = BWPhotoEncoderNodeAttachedMediaConfiguration;
  result = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)&v7 init];
  if (result)
  {
    result->_mainImageDownscalingFactor = 0.0;
    result->_dimensions = 0;
    result->_keepInputDimensions = a3;
    result->_propagationMode = a4;
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