@interface CAMExposureResult
- (CAMExposureResult)initWithMode:(int64_t)a3 pointOfInterest:(CGPoint)a4 exposureTargetBias:(float)a5 adjusting:(BOOL)a6 exposureDidStart:(BOOL)a7 exposureDidEnd:(BOOL)a8 deviceSupportsFocus:(BOOL)a9;
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

- (CAMExposureResult)initWithMode:(int64_t)a3 pointOfInterest:(CGPoint)a4 exposureTargetBias:(float)a5 adjusting:(BOOL)a6 exposureDidStart:(BOOL)a7 exposureDidEnd:(BOOL)a8 deviceSupportsFocus:(BOOL)a9
{
  y = a4.y;
  x = a4.x;
  v21.receiver = self;
  v21.super_class = CAMExposureResult;
  v17 = [(CAMExposureResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_exposureMode = a3;
    v17->_pointOfInterest.x = x;
    v17->_pointOfInterest.y = y;
    v17->_exposureTargetBias = a5;
    v17->_adjustingExposure = a6;
    v17->_exposureDidStart = a7;
    v17->_exposureDidEnd = a8;
    v17->_deviceSupportsFocus = a9;
    v19 = v17;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CAMExposureResult *)self exposureMode];
  [(CAMExposureResult *)self pointOfInterest];
  v7 = NSStringFromCGPoint(v15);
  v8 = [(CAMExposureResult *)self isAdjustingExposure];
  [(CAMExposureResult *)self exposureTargetBias];
  v10 = [v3 stringWithFormat:@"<%@: %p mode: %ld pointOfInterest: %@ adjusting: %d targetBias: %.3f>", v5, self, v6, v7, v8, v9];

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