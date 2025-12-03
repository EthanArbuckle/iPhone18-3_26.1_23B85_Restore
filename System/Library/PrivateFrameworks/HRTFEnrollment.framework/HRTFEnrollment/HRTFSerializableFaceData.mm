@interface HRTFSerializableFaceData
- (CGRect)bounds;
- (HRTFSerializableFaceData)initWithCoder:(id)coder;
- (HRTFSerializableFaceData)initWithFaceObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRTFSerializableFaceData

- (HRTFSerializableFaceData)initWithFaceObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = HRTFSerializableFaceData;
  v5 = [(HRTFSerializableFaceData *)&v13 init];
  if (v5)
  {
    [objectCopy bounds];
    v5->_bounds.origin.x = v6;
    v5->_bounds.origin.y = v7;
    v5->_bounds.size.width = v8;
    v5->_bounds.size.height = v9;
    v5->_faceID = [objectCopy faceID];
    v5->_yawAngleAvailable = [objectCopy hasYawAngle];
    [objectCopy yawAngle];
    v5->_yawAngle = v10;
    v5->_rollAngleAvailable = [objectCopy hasRollAngle];
    [objectCopy rollAngle];
    v5->_rollAngle = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_bounds length:32];
  [coderCopy encodeObject:v4 forKey:@"Bounds"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_faceID];
  [coderCopy encodeObject:v5 forKey:@"FaceID"];

  if (self->_yawAngleAvailable)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_yawAngle];
    [coderCopy encodeObject:v6 forKey:@"YawAngle"];
  }

  if (self->_rollAngleAvailable)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rollAngle];
    [coderCopy encodeObject:v7 forKey:@"RollAngle"];
  }
}

- (HRTFSerializableFaceData)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"Bounds"] && objc_msgSend(coderCopy, "containsValueForKey:", @"FaceID"))
  {
    v16.receiver = self;
    v16.super_class = HRTFSerializableFaceData;
    v5 = [(HRTFSerializableFaceData *)&v16 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Bounds"];
      if ([v6 length] != 32)
      {
        [HRTFSerializableFaceData initWithCoder:];
      }

      bytes = [v6 bytes];
      v8 = bytes[1];
      *(v5 + 8) = *bytes;
      *(v5 + 24) = v8;
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FaceID"];
      *(v5 + 5) = [v9 integerValue];
      if ([coderCopy containsValueForKey:@"YawAngle"])
      {
        v5[64] = 1;
        v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"YawAngle"];

        [v10 doubleValue];
        *(v5 + 6) = v11;
        v9 = v10;
      }

      if ([coderCopy containsValueForKey:@"RollAngle"])
      {
        v5[65] = 1;
        v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RollAngle"];

        [v12 doubleValue];
        *(v5 + 7) = v13;
        v9 = v12;
      }
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