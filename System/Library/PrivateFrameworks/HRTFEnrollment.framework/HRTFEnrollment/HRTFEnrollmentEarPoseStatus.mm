@interface HRTFEnrollmentEarPoseStatus
- (CGRect)earBoundingBox;
- (HRTFEnrollmentEarPoseStatus)initWithCoder:(id)a3;
- (HRTFEnrollmentEarPoseStatus)initWithLeftYawPose:(id)a3 rightYawPose:(id)a4 leftpitchPose:(id)a5 rightpitchPose:(id)a6 earSide:(unint64_t)a7 yawAngle:(double)a8 pitchAngle:(double)a9 earBoundingBox:(CGRect)a10 earCaptureStatus:(int)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRTFEnrollmentEarPoseStatus

- (HRTFEnrollmentEarPoseStatus)initWithLeftYawPose:(id)a3 rightYawPose:(id)a4 leftpitchPose:(id)a5 rightpitchPose:(id)a6 earSide:(unint64_t)a7 yawAngle:(double)a8 pitchAngle:(double)a9 earBoundingBox:(CGRect)a10 earCaptureStatus:(int)a11
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v39.receiver = self;
  v39.super_class = HRTFEnrollmentEarPoseStatus;
  v27 = [(HRTFEnrollmentEarPoseStatus *)&v39 init];
  if (v27)
  {
    v28 = [HRTFEnrollmentPoseStatus alloc];
    if (a7)
    {
      v29 = -100.0;
    }

    else
    {
      v29 = a8;
    }

    if (a7)
    {
      v30 = -100.0;
    }

    else
    {
      v30 = a9;
    }

    v31 = [(HRTFEnrollmentPoseStatus *)v28 initWithYawPose:v23 pitchPose:v25 isEarTracking:a11 == 0 yawAngle:v29 pitchAngle:v30];
    leftStatus = v27->_leftStatus;
    v27->_leftStatus = v31;

    v33 = [HRTFEnrollmentPoseStatus alloc];
    if (a7 == 1)
    {
      v34 = a8;
    }

    else
    {
      v34 = -100.0;
    }

    if (a7 == 1)
    {
      v35 = a9;
    }

    else
    {
      v35 = -100.0;
    }

    v36 = [(HRTFEnrollmentPoseStatus *)v33 initWithYawPose:v24 pitchPose:v26 isEarTracking:a11 == 0 yawAngle:v34 pitchAngle:v35];
    rightStatus = v27->_rightStatus;
    v27->_rightStatus = v36;

    v27->_earBoundingBox.origin.x = x;
    v27->_earBoundingBox.origin.y = y;
    v27->_earBoundingBox.size.width = width;
    v27->_earBoundingBox.size.height = height;
    v27->_earCaptureStatus = a11;
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  leftStatus = self->_leftStatus;
  v5 = a3;
  [v5 encodeObject:leftStatus forKey:@"LeftEarStatus"];
  [v5 encodeObject:self->_rightStatus forKey:@"RightEarStatus"];
  [v5 encodeDouble:@"EarBoundingBox.origin.x" forKey:self->_earBoundingBox.origin.x];
  [v5 encodeDouble:@"EarBoundingBox.origin.y" forKey:self->_earBoundingBox.origin.y];
  [v5 encodeDouble:@"EarBoundingBox.size.width" forKey:self->_earBoundingBox.size.width];
  [v5 encodeDouble:@"EarBoundingBox.size.height" forKey:self->_earBoundingBox.size.height];
  [v5 encodeInt32:self->_earCaptureStatus forKey:@"EarCaptureStatusKey"];
}

- (HRTFEnrollmentEarPoseStatus)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"LeftEarStatus"] && objc_msgSend(v4, "containsValueForKey:", @"RightEarStatus") && objc_msgSend(v4, "containsValueForKey:", @"EarBoundingBox.origin.x") && objc_msgSend(v4, "containsValueForKey:", @"EarBoundingBox.origin.y") && objc_msgSend(v4, "containsValueForKey:", @"EarBoundingBox.size.width") && objc_msgSend(v4, "containsValueForKey:", @"EarBoundingBox.size.height") && objc_msgSend(v4, "containsValueForKey:", @"EarCaptureStatusKey"))
  {
    v16.receiver = self;
    v16.super_class = HRTFEnrollmentEarPoseStatus;
    v5 = [(HRTFEnrollmentEarPoseStatus *)&v16 init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftEarStatus"];
      leftStatus = v5->_leftStatus;
      v5->_leftStatus = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RightEarStatus"];
      rightStatus = v5->_rightStatus;
      v5->_rightStatus = v8;

      [v4 decodeDoubleForKey:@"EarBoundingBox.origin.x"];
      v5->_earBoundingBox.origin.x = v10;
      [v4 decodeDoubleForKey:@"EarBoundingBox.origin.y"];
      v5->_earBoundingBox.origin.y = v11;
      [v4 decodeDoubleForKey:@"EarBoundingBox.size.width"];
      v5->_earBoundingBox.size.width = v12;
      [v4 decodeDoubleForKey:@"EarBoundingBox.size.height"];
      v5->_earBoundingBox.size.height = v13;
      v5->_earCaptureStatus = [v4 decodeInt32ForKey:@"EarCaptureStatusKey"];
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)earBoundingBox
{
  objc_copyStruct(v6, &self->_earBoundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end