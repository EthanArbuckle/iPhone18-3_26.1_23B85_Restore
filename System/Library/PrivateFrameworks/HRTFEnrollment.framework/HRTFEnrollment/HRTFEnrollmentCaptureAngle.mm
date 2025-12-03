@interface HRTFEnrollmentCaptureAngle
- (HRTFEnrollmentCaptureAngle)initWithAngle:(double)angle captured:(BOOL)captured;
- (HRTFEnrollmentCaptureAngle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRTFEnrollmentCaptureAngle

- (HRTFEnrollmentCaptureAngle)initWithAngle:(double)angle captured:(BOOL)captured
{
  v7.receiver = self;
  v7.super_class = HRTFEnrollmentCaptureAngle;
  result = [(HRTFEnrollmentCaptureAngle *)&v7 init];
  if (result)
  {
    result->_angle = angle;
    result->_captured = captured;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  angle = self->_angle;
  coderCopy = coder;
  [coderCopy encodeDouble:@"CaptureAngle" forKey:angle];
  [coderCopy encodeBool:self->_captured forKey:@"Captured"];
}

- (HRTFEnrollmentCaptureAngle)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"CaptureAngle"] && objc_msgSend(coderCopy, "containsValueForKey:", @"Captured"))
  {
    v11.receiver = self;
    v11.super_class = HRTFEnrollmentCaptureAngle;
    v5 = [(HRTFEnrollmentCaptureAngle *)&v11 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CaptureAngle"];
      [v6 doubleValue];
      v5->_angle = v7;
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Captured"];

      v5->_captured = [v8 BOOLValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end