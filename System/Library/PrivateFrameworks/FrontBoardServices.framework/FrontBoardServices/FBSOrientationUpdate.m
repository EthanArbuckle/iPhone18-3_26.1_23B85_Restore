@interface FBSOrientationUpdate
- (FBSOrientationUpdate)initWithBSXPCCoder:(id)a3;
- (FBSOrientationUpdate)initWithOrientation:(int64_t)a3 sequenceNumber:(unint64_t)a4 duration:(double)a5 rotationDirection:(int64_t)a6;
- (NSString)description;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation FBSOrientationUpdate

- (NSString)description
{
  [off_1E76BC9B0 builderWithObject:self];
  objc_claimAutoreleasedReturnValue();
  BSInterfaceOrientationDescription();
}

- (FBSOrientationUpdate)initWithOrientation:(int64_t)a3 sequenceNumber:(unint64_t)a4 duration:(double)a5 rotationDirection:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = FBSOrientationUpdate;
  result = [(FBSOrientationUpdate *)&v11 init];
  if (result)
  {
    result->_orientation = a3;
    result->_sequenceNumber = a4;
    result->_duration = a5;
    result->_rotationDirection = a6;
  }

  return result;
}

- (FBSOrientationUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"orientation"];
  v6 = [v4 decodeUInt64ForKey:@"sequenceNumber"];
  [v4 decodeDoubleForKey:@"duration"];
  v8 = v7;
  v9 = [v4 decodeInt64ForKey:@"rotationDirection"];

  return [(FBSOrientationUpdate *)self initWithOrientation:v5 sequenceNumber:v6 duration:v9 rotationDirection:v8];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  orientation = self->_orientation;
  v5 = a3;
  [v5 encodeInt64:orientation forKey:@"orientation"];
  [v5 encodeUInt64:self->_sequenceNumber forKey:@"sequenceNumber"];
  [v5 encodeDouble:@"duration" forKey:self->_duration];
  [v5 encodeInt64:self->_rotationDirection forKey:@"rotationDirection"];
}

@end