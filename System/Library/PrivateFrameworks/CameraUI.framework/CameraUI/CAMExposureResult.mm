@interface CAMExposureResult
- (CAMExposureResult)initWithMode:(int64_t)mode pointOfInterest:(CGPoint)interest exposureTargetBias:(float)bias adjusting:(BOOL)adjusting exposureDidStart:(BOOL)start exposureDidEnd:(BOOL)end deviceSupportsFocus:(BOOL)focus;
- (CGPoint)pointOfInterest;
- (id)description;
@end

@implementation CAMExposureResult

- (CGPoint)pointOfInterest
{
  x = self->_pointOfInterest.x;
  y = self->_pointOfInterest.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CAMExposureResult)initWithMode:(int64_t)mode pointOfInterest:(CGPoint)interest exposureTargetBias:(float)bias adjusting:(BOOL)adjusting exposureDidStart:(BOOL)start exposureDidEnd:(BOOL)end deviceSupportsFocus:(BOOL)focus
{
  y = interest.y;
  x = interest.x;
  v21.receiver = self;
  v21.super_class = CAMExposureResult;
  v17 = [(CAMExposureResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_exposureMode = mode;
    v17->_pointOfInterest.x = x;
    v17->_pointOfInterest.y = y;
    v17->_exposureTargetBias = bias;
    v17->_adjustingExposure = adjusting;
    v17->_exposureDidStart = start;
    v17->_exposureDidEnd = end;
    v17->_deviceSupportsFocus = focus;
    v19 = v17;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  exposureMode = [(CAMExposureResult *)self exposureMode];
  [(CAMExposureResult *)self pointOfInterest];
  v7 = NSStringFromCGPoint(v15);
  isAdjustingExposure = [(CAMExposureResult *)self isAdjustingExposure];
  [(CAMExposureResult *)self exposureTargetBias];
  v10 = [v3 stringWithFormat:@"<%@: %p mode: %ld pointOfInterest: %@ adjusting: %d targetBias: %.3f>", v5, self, exposureMode, v7, isAdjustingExposure, v9];

  if ([(CAMExposureResult *)self exposureDidStart])
  {
    v11 = [v10 stringByAppendingString:@" didStart"];

    v10 = v11;
  }

  if ([(CAMExposureResult *)self exposureDidEnd])
  {
    v12 = [v10 stringByAppendingString:@" didEnd"];

    v10 = v12;
  }

  return v10;
}

@end