@interface HRTFSerializableFaceData
- (CGRect)bounds;
- (HRTFSerializableFaceData)initWithCoder:(id)a3;
- (HRTFSerializableFaceData)initWithFaceObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRTFSerializableFaceData

- (HRTFSerializableFaceData)initWithFaceObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HRTFSerializableFaceData;
  v5 = [(HRTFSerializableFaceData *)&v13 init];
  if (v5)
  {
    [v4 bounds];
    v5->_bounds.origin.x = v6;
    v5->_bounds.origin.y = v7;
    v5->_bounds.size.width = v8;
    v5->_bounds.size.height = v9;
    v5->_faceID = [v4 faceID];
    v5->_yawAngleAvailable = [v4 hasYawAngle];
    [v4 yawAngle];
    v5->_yawAngle = v10;
    v5->_rollAngleAvailable = [v4 hasRollAngle];
    [v4 rollAngle];
    v5->_rollAngle = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_bounds length:32];
  [v8 encodeObject:v4 forKey:@"Bounds"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_faceID];
  [v8 encodeObject:v5 forKey:@"FaceID"];

  if (self->_yawAngleAvailable)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_yawAngle];
    [v8 encodeObject:v6 forKey:@"YawAngle"];
  }

  if (self->_rollAngleAvailable)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rollAngle];
    [v8 encodeObject:v7 forKey:@"RollAngle"];
  }
}

- (HRTFSerializableFaceData)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"Bounds"] && objc_msgSend(v4, "containsValueForKey:", @"FaceID"))
  {
    v16.receiver = self;
    v16.super_class = HRTFSerializableFaceData;
    v5 = [(HRTFSerializableFaceData *)&v16 init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Bounds"];
      if ([v6 length] != 32)
      {
        [HRTFSerializableFaceData initWithCoder:];
      }

      v7 = [v6 bytes];
      v8 = v7[1];
      *(v5 + 8) = *v7;
      *(v5 + 24) = v8;
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FaceID"];
      *(v5 + 5) = [v9 integerValue];
      if ([v4 containsValueForKey:@"YawAngle"])
      {
        v5[64] = 1;
        v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"YawAngle"];

        [v10 doubleValue];
        *(v5 + 6) = v11;
        v9 = v10;
      }

      if ([v4 containsValueForKey:@"RollAngle"])
      {
        v5[65] = 1;
        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RollAngle"];

        [v12 doubleValue];
        *(v5 + 7) = v13;
        v9 = v12;
      }
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

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end