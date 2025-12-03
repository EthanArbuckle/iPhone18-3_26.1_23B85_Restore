@interface _OSDayDrainResult
- (_OSDayDrainResult)initWithCoder:(id)coder;
- (_OSDayDrainResult)initWithIsHighDrain:(BOOL)drain confidence:(double)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSDayDrainResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isHighDrain = self->_isHighDrain;
  confidence = self->_confidence;

  return [v4 initWithIsHighDrain:isHighDrain confidence:confidence];
}

- (_OSDayDrainResult)initWithIsHighDrain:(BOOL)drain confidence:(double)confidence
{
  v7.receiver = self;
  v7.super_class = _OSDayDrainResult;
  result = [(_OSDayDrainResult *)&v7 init];
  if (result)
  {
    result->_isHighDrain = drain;
    result->_confidence = confidence;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  isHighDrain = self->_isHighDrain;
  coderCopy = coder;
  [coderCopy encodeBool:isHighDrain forKey:@"isHighDrain"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
}

- (_OSDayDrainResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _OSDayDrainResult;
  v5 = [(_OSDayDrainResult *)&v9 init];
  if (v5)
  {
    v5->_isHighDrain = [coderCopy decodeBoolForKey:@"isHighDrain"];
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
    v7 = v5;
  }

  return v5;
}

@end