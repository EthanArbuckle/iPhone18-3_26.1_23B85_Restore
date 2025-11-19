@interface HRTFEnrollmentPoseStatus
- (CGRect)faceBoundingBox;
- (HRTFEnrollmentPoseStatus)initWithCoder:(id)a3;
- (HRTFEnrollmentPoseStatus)initWithCurrentYawPose:(id)a3 pitchPose:(id)a4 yawAngle:(double)a5 pitchAngle:(double)a6 faceBoundingBox:(CGRect)a7;
- (HRTFEnrollmentPoseStatus)initWithYawPose:(id)a3 pitchPose:(id)a4 isEarTracking:(unsigned __int8)a5 yawAngle:(double)a6 pitchAngle:(double)a7;
- (NSArray)remainingPitchAngles;
- (NSArray)remainingYawAngles;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRTFEnrollmentPoseStatus

- (HRTFEnrollmentPoseStatus)initWithYawPose:(id)a3 pitchPose:(id)a4 isEarTracking:(unsigned __int8)a5 yawAngle:(double)a6 pitchAngle:(double)a7
{
  v12 = a3;
  v13 = a4;
  v59.receiver = self;
  v59.super_class = HRTFEnrollmentPoseStatus;
  v14 = [(HRTFEnrollmentPoseStatus *)&v59 init];
  if (v14)
  {
    v49 = v14;
    v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
    v16 = [v12 allKeys];
    v17 = [v16 sortedArrayUsingSelector:?];

    v18 = v14;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v56;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v55 + 1) + 8 * i);
          v24 = [HRTFEnrollmentCaptureAngle alloc];
          [v23 doubleValue];
          v26 = v25;
          v27 = [v12 objectForKeyedSubscript:v23];
          v28 = -[HRTFEnrollmentCaptureAngle initWithAngle:captured:](v24, "initWithAngle:captured:", [v27 BOOLValue], v26);

          [(NSArray *)v15 addObject:v28];
        }

        v20 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v20);
    }

    yawAngles = v18->_yawAngles;
    v18->_yawAngles = v15;
    v30 = v15;

    size = CGRectZero.size;
    v18->_faceBoundingBox.origin = CGRectZero.origin;
    v18->_faceBoundingBox.size = size;
    v32 = [NSMutableArray alloc];

    v33 = [v32 initWithCapacity:{objc_msgSend(v13, "count")}];
    v34 = [v13 allKeys];
    v35 = [v34 sortedArrayUsingSelector:"compare:"];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v52;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v51 + 1) + 8 * j);
          v42 = [HRTFEnrollmentCaptureAngle alloc];
          [v41 doubleValue];
          v44 = v43;
          v45 = [v13 objectForKeyedSubscript:v41];
          v46 = -[HRTFEnrollmentCaptureAngle initWithAngle:captured:](v42, "initWithAngle:captured:", [v45 BOOLValue], v44);

          [(NSArray *)v33 addObject:v46];
        }

        v38 = [v36 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v38);
    }

    v14 = v49;
    pitchAngles = v49->_pitchAngles;
    v49->_pitchAngles = v33;

    v49->_currentYawAngle = a6;
    v49->_currentPitchAngle = a7;
    v49->_hasYawAngle = a5;
    v49->_hasPitchAngle = a5;
  }

  return v14;
}

- (HRTFEnrollmentPoseStatus)initWithCurrentYawPose:(id)a3 pitchPose:(id)a4 yawAngle:(double)a5 pitchAngle:(double)a6 faceBoundingBox:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a4;
  v16 = a3;
  v17 = [[HRTFEnrollmentPoseStatus alloc] initWithYawPose:v16 pitchPose:v15 isEarTracking:0 yawAngle:-100.0 pitchAngle:-100.0];

  if (v17)
  {
    v17->_currentYawAngle = a5;
    v17->_currentPitchAngle = a6;
    *&v17->_hasYawAngle = 257;
    v17->_faceBoundingBox.origin.x = x;
    v17->_faceBoundingBox.origin.y = y;
    v17->_faceBoundingBox.size.width = width;
    v17->_faceBoundingBox.size.height = height;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  yawAngles = self->_yawAngles;
  v5 = a3;
  [v5 encodeObject:yawAngles forKey:@"YawAngles"];
  [v5 encodeObject:self->_pitchAngles forKey:@"PitchAngles"];
  [v5 encodeDouble:@"CurrentYaw" forKey:self->_currentYawAngle];
  [v5 encodeDouble:@"CurrentPitch" forKey:self->_currentPitchAngle];
  [v5 encodeBool:self->_hasYawAngle != 0 forKey:@"HasYaw"];
  [v5 encodeBool:self->_hasPitchAngle != 0 forKey:@"HasPitch"];
  [v5 encodeDouble:@"FaceBoundingBox.origin.x" forKey:self->_faceBoundingBox.origin.x];
  [v5 encodeDouble:@"FaceBoundingBox.origin.y" forKey:self->_faceBoundingBox.origin.y];
  [v5 encodeDouble:@"FaceBoundingBox.size.width" forKey:self->_faceBoundingBox.size.width];
  [v5 encodeDouble:@"FaceBoundingBox.size.height" forKey:self->_faceBoundingBox.size.height];
}

- (HRTFEnrollmentPoseStatus)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"YawAngles"] && objc_msgSend(v4, "containsValueForKey:", @"PitchAngles") && objc_msgSend(v4, "containsValueForKey:", @"CurrentYaw") && objc_msgSend(v4, "containsValueForKey:", @"CurrentPitch") && objc_msgSend(v4, "containsValueForKey:", @"HasYaw") && objc_msgSend(v4, "containsValueForKey:", @"HasPitch") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.origin.x") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.origin.y") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.size.width") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.size.height"))
  {
    v20.receiver = self;
    v20.super_class = HRTFEnrollmentPoseStatus;
    v5 = [(HRTFEnrollmentPoseStatus *)&v20 init];
    if (v5)
    {
      v21[0] = objc_opt_class();
      v21[1] = objc_opt_class();
      v6 = [NSArray arrayWithObjects:v21 count:2];
      v7 = [NSSet setWithArray:v6];

      v8 = [v4 decodeObjectOfClasses:v7 forKey:@"YawAngles"];
      yawAngles = v5->_yawAngles;
      v5->_yawAngles = v8;

      v10 = [v4 decodeObjectOfClasses:v7 forKey:@"PitchAngles"];
      pitchAngles = v5->_pitchAngles;
      v5->_pitchAngles = v10;

      v5->_hasYawAngle = [v4 decodeBoolForKey:@"HasYaw"];
      v5->_hasPitchAngle = [v4 decodeBoolForKey:@"HasPitch"];
      [v4 decodeDoubleForKey:@"CurrentYaw"];
      v5->_currentYawAngle = v12;
      [v4 decodeDoubleForKey:@"CurrentPitch"];
      v5->_currentPitchAngle = v13;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.origin.x"];
      v5->_faceBoundingBox.origin.x = v14;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.origin.y"];
      v5->_faceBoundingBox.origin.y = v15;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.size.width"];
      v5->_faceBoundingBox.size.width = v16;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.size.height"];
      v5->_faceBoundingBox.size.height = v17;
    }

    self = v5;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSArray)remainingYawAngles
{
  if ([(NSArray *)self->_yawAngles count])
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_yawAngles, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_yawAngles;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 captured] & 1) == 0)
          {
            [v9 angle];
            v10 = [NSNumber numberWithDouble:?];
            [v3 addObject:v10];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)remainingPitchAngles
{
  if ([(NSArray *)self->_pitchAngles count])
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_pitchAngles, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_pitchAngles;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 captured] & 1) == 0)
          {
            [v9 angle];
            v10 = [NSNumber numberWithDouble:?];
            [v3 addObject:v10];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)faceBoundingBox
{
  objc_copyStruct(v6, &self->_faceBoundingBox, 32, 1, 0);
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