@interface FBSOrientationUpdate
- (FBSOrientationUpdate)initWithBSXPCCoder:(id)coder;
- (FBSOrientationUpdate)initWithOrientation:(int64_t)orientation sequenceNumber:(unint64_t)number duration:(double)duration rotationDirection:(int64_t)direction;
- (NSString)description;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation FBSOrientationUpdate

- (NSString)description
{
  [off_1E76BC9B0 builderWithObject:self];
  objc_claimAutoreleasedReturnValue();
  BSInterfaceOrientationDescription();
}

- (FBSOrientationUpdate)initWithOrientation:(int64_t)orientation sequenceNumber:(unint64_t)number duration:(double)duration rotationDirection:(int64_t)direction
{
  v11.receiver = self;
  v11.super_class = FBSOrientationUpdate;
  result = [(FBSOrientationUpdate *)&v11 init];
  if (result)
  {
    result->_orientation = orientation;
    result->_sequenceNumber = number;
    result->_duration = duration;
    result->_rotationDirection = direction;
  }

  return result;
}

- (FBSOrientationUpdate)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"orientation"];
  v6 = [coderCopy decodeUInt64ForKey:@"sequenceNumber"];
  [coderCopy decodeDoubleForKey:@"duration"];
  v8 = v7;
  v9 = [coderCopy decodeInt64ForKey:@"rotationDirection"];

  return [(FBSOrientationUpdate *)self initWithOrientation:v5 sequenceNumber:v6 duration:v9 rotationDirection:v8];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  orientation = self->_orientation;
  coderCopy = coder;
  [coderCopy encodeInt64:orientation forKey:@"orientation"];
  [coderCopy encodeUInt64:self->_sequenceNumber forKey:@"sequenceNumber"];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeInt64:self->_rotationDirection forKey:@"rotationDirection"];
}

@end