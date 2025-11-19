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
  v63 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v60.receiver = self;
  v60.super_class = HRTFEnrollmentPoseStatus;
  v14 = [(HRTFEnrollmentPoseStatus *)&v60 init];
  if (v14)
  {
    v50 = v14;
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v16 = [v12 allKeys];
    v17 = [v16 sortedArrayUsingSelector:?];

    v18 = v14;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v17;
    v19 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v57;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v57 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v56 + 1) + 8 * i);
          v24 = [HRTFEnrollmentCaptureAngle alloc];
          [v23 doubleValue];
          v26 = v25;
          v27 = [v12 objectForKeyedSubscript:v23];
          v28 = -[HRTFEnrollmentCaptureAngle initWithAngle:captured:](v24, "initWithAngle:captured:", [v27 BOOLValue], v26);

          [(NSArray *)v15 addObject:v28];
        }

        v20 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v20);
    }

    yawAngles = v18->_yawAngles;
    v18->_yawAngles = v15;
    v30 = v15;

    v31 = *(MEMORY[0x277CBF3A0] + 16);
    v18->_faceBoundingBox.origin = *MEMORY[0x277CBF3A0];
    v18->_faceBoundingBox.size = v31;
    v32 = objc_alloc(MEMORY[0x277CBEB18]);

    v33 = [v32 initWithCapacity:{objc_msgSend(v13, "count")}];
    v34 = [v13 allKeys];
    v35 = [v34 sortedArrayUsingSelector:sel_compare_];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v53;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v53 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v52 + 1) + 8 * j);
          v42 = [HRTFEnrollmentCaptureAngle alloc];
          [v41 doubleValue];
          v44 = v43;
          v45 = [v13 objectForKeyedSubscript:v41];
          v46 = -[HRTFEnrollmentCaptureAngle initWithAngle:captured:](v42, "initWithAngle:captured:", [v45 BOOLValue], v44);

          [(NSArray *)v33 addObject:v46];
        }

        v38 = [v36 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v38);
    }

    v14 = v50;
    pitchAngles = v50->_pitchAngles;
    v50->_pitchAngles = v33;

    v50->_currentYawAngle = a6;
    v50->_currentPitchAngle = a7;
    v50->_hasYawAngle = a5;
    v50->_hasPitchAngle = a5;
  }

  v48 = *MEMORY[0x277D85DE8];
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
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 containsValueForKey:@"YawAngles"] && objc_msgSend(v4, "containsValueForKey:", @"PitchAngles") && objc_msgSend(v4, "containsValueForKey:", @"CurrentYaw") && objc_msgSend(v4, "containsValueForKey:", @"CurrentPitch") && objc_msgSend(v4, "containsValueForKey:", @"HasYaw") && objc_msgSend(v4, "containsValueForKey:", @"HasPitch") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.origin.x") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.origin.y") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.size.width") && objc_msgSend(v4, "containsValueForKey:", @"FaceBoundingBox.size.height"))
  {
    v22.receiver = self;
    v22.super_class = HRTFEnrollmentPoseStatus;
    v5 = [(HRTFEnrollmentPoseStatus *)&v22 init];
    if (v5)
    {
      v6 = MEMORY[0x277CBEB98];
      v23[0] = objc_opt_class();
      v23[1] = objc_opt_class();
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      v8 = [v6 setWithArray:v7];

      v9 = [v4 decodeObjectOfClasses:v8 forKey:@"YawAngles"];
      yawAngles = v5->_yawAngles;
      v5->_yawAngles = v9;

      v11 = [v4 decodeObjectOfClasses:v8 forKey:@"PitchAngles"];
      pitchAngles = v5->_pitchAngles;
      v5->_pitchAngles = v11;

      v5->_hasYawAngle = [v4 decodeBoolForKey:@"HasYaw"];
      v5->_hasPitchAngle = [v4 decodeBoolForKey:@"HasPitch"];
      [v4 decodeDoubleForKey:@"CurrentYaw"];
      v5->_currentYawAngle = v13;
      [v4 decodeDoubleForKey:@"CurrentPitch"];
      v5->_currentPitchAngle = v14;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.origin.x"];
      v5->_faceBoundingBox.origin.x = v15;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.origin.y"];
      v5->_faceBoundingBox.origin.y = v16;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.size.width"];
      v5->_faceBoundingBox.size.width = v17;
      [v4 decodeDoubleForKey:@"FaceBoundingBox.size.height"];
      v5->_faceBoundingBox.size.height = v18;
    }

    self = v5;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (NSArray)remainingYawAngles
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_yawAngles count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_yawAngles, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_yawAngles;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if (([v9 captured] & 1) == 0)
          {
            v10 = MEMORY[0x277CCABB0];
            [v9 angle];
            v11 = [v10 numberWithDouble:?];
            [v3 addObject:v11];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v12 = v3;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)remainingPitchAngles
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_pitchAngles count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_pitchAngles, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_pitchAngles;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if (([v9 captured] & 1) == 0)
          {
            v10 = MEMORY[0x277CCABB0];
            [v9 angle];
            v11 = [v10 numberWithDouble:?];
            [v3 addObject:v11];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v12 = v3;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
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