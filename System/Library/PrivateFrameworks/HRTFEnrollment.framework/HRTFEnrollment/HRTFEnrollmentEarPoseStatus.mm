@interface HRTFEnrollmentEarPoseStatus
- (CGRect)earBoundingBox;
- (HRTFEnrollmentEarPoseStatus)initWithCoder:(id)coder;
- (HRTFEnrollmentEarPoseStatus)initWithLeftYawPose:(id)pose rightYawPose:(id)yawPose leftpitchPose:(id)leftpitchPose rightpitchPose:(id)rightpitchPose earSide:(unint64_t)side yawAngle:(double)angle pitchAngle:(double)pitchAngle earBoundingBox:(CGRect)self0 earCaptureStatus:(int)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRTFEnrollmentEarPoseStatus

- (HRTFEnrollmentEarPoseStatus)initWithLeftYawPose:(id)pose rightYawPose:(id)yawPose leftpitchPose:(id)leftpitchPose rightpitchPose:(id)rightpitchPose earSide:(unint64_t)side yawAngle:(double)angle pitchAngle:(double)pitchAngle earBoundingBox:(CGRect)self0 earCaptureStatus:(int)self1
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  poseCopy = pose;
  yawPoseCopy = yawPose;
  leftpitchPoseCopy = leftpitchPose;
  rightpitchPoseCopy = rightpitchPose;
  v39.receiver = self;
  v39.super_class = HRTFEnrollmentEarPoseStatus;
  v27 = [(HRTFEnrollmentEarPoseStatus *)&v39 init];
  if (v27)
  {
    v28 = [HRTFEnrollmentPoseStatus alloc];
    if (side)
    {
      angleCopy = -100.0;
    }

    else
    {
      angleCopy = angle;
    }

    if (side)
    {
      pitchAngleCopy = -100.0;
    }

    else
    {
      pitchAngleCopy = pitchAngle;
    }

    v31 = [(HRTFEnrollmentPoseStatus *)v28 initWithYawPose:poseCopy pitchPose:leftpitchPoseCopy isEarTracking:status == 0 yawAngle:angleCopy pitchAngle:pitchAngleCopy];
    leftStatus = v27->_leftStatus;
    v27->_leftStatus = v31;

    v33 = [HRTFEnrollmentPoseStatus alloc];
    if (side == 1)
    {
      angleCopy2 = angle;
    }

    else
    {
      angleCopy2 = -100.0;
    }

    if (side == 1)
    {
      pitchAngleCopy2 = pitchAngle;
    }

    else
    {
      pitchAngleCopy2 = -100.0;
    }

    v36 = [(HRTFEnrollmentPoseStatus *)v33 initWithYawPose:yawPoseCopy pitchPose:rightpitchPoseCopy isEarTracking:status == 0 yawAngle:angleCopy2 pitchAngle:pitchAngleCopy2];
    rightStatus = v27->_rightStatus;
    v27->_rightStatus = v36;

    v27->_earBoundingBox.origin.x = x;
    v27->_earBoundingBox.origin.y = y;
    v27->_earBoundingBox.size.width = width;
    v27->_earBoundingBox.size.height = height;
    v27->_earCaptureStatus = status;
  }

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  leftStatus = self->_leftStatus;
  coderCopy = coder;
  [coderCopy encodeObject:leftStatus forKey:@"LeftEarStatus"];
  [coderCopy encodeObject:self->_rightStatus forKey:@"RightEarStatus"];
  [coderCopy encodeDouble:@"EarBoundingBox.origin.x" forKey:self->_earBoundingBox.origin.x];
  [coderCopy encodeDouble:@"EarBoundingBox.origin.y" forKey:self->_earBoundingBox.origin.y];
  [coderCopy encodeDouble:@"EarBoundingBox.size.width" forKey:self->_earBoundingBox.size.width];
  [coderCopy encodeDouble:@"EarBoundingBox.size.height" forKey:self->_earBoundingBox.size.height];
  [coderCopy encodeInt32:self->_earCaptureStatus forKey:@"EarCaptureStatusKey"];
}

- (HRTFEnrollmentEarPoseStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"LeftEarStatus"] && objc_msgSend(coderCopy, "containsValueForKey:", @"RightEarStatus") && objc_msgSend(coderCopy, "containsValueForKey:", @"EarBoundingBox.origin.x") && objc_msgSend(coderCopy, "containsValueForKey:", @"EarBoundingBox.origin.y") && objc_msgSend(coderCopy, "containsValueForKey:", @"EarBoundingBox.size.width") && objc_msgSend(coderCopy, "containsValueForKey:", @"EarBoundingBox.size.height") && objc_msgSend(coderCopy, "containsValueForKey:", @"EarCaptureStatusKey"))
  {
    v16.receiver = self;
    v16.super_class = HRTFEnrollmentEarPoseStatus;
    v5 = [(HRTFEnrollmentEarPoseStatus *)&v16 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftEarStatus"];
      leftStatus = v5->_leftStatus;
      v5->_leftStatus = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RightEarStatus"];
      rightStatus = v5->_rightStatus;
      v5->_rightStatus = v8;

      [coderCopy decodeDoubleForKey:@"EarBoundingBox.origin.x"];
      v5->_earBoundingBox.origin.x = v10;
      [coderCopy decodeDoubleForKey:@"EarBoundingBox.origin.y"];
      v5->_earBoundingBox.origin.y = v11;
      [coderCopy decodeDoubleForKey:@"EarBoundingBox.size.width"];
      v5->_earBoundingBox.size.width = v12;
      [coderCopy decodeDoubleForKey:@"EarBoundingBox.size.height"];
      v5->_earBoundingBox.size.height = v13;
      v5->_earCaptureStatus = [coderCopy decodeInt32ForKey:@"EarCaptureStatusKey"];
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