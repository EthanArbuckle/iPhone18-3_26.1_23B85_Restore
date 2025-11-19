@interface _OSDayDrainResult
- (_OSDayDrainResult)initWithCoder:(id)a3;
- (_OSDayDrainResult)initWithIsHighDrain:(BOOL)a3 confidence:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSDayDrainResult

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  isHighDrain = self->_isHighDrain;
  confidence = self->_confidence;

  return [v4 initWithIsHighDrain:isHighDrain confidence:confidence];
}

- (_OSDayDrainResult)initWithIsHighDrain:(BOOL)a3 confidence:(double)a4
{
  v7.receiver = self;
  v7.super_class = _OSDayDrainResult;
  result = [(_OSDayDrainResult *)&v7 init];
  if (result)
  {
    result->_isHighDrain = a3;
    result->_confidence = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  isHighDrain = self->_isHighDrain;
  v5 = a3;
  [v5 encodeBool:isHighDrain forKey:@"isHighDrain"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
}

- (_OSDayDrainResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _OSDayDrainResult;
  v5 = [(_OSDayDrainResult *)&v9 init];
  if (v5)
  {
    v5->_isHighDrain = [v4 decodeBoolForKey:@"isHighDrain"];
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
    v7 = v5;
  }

  return v5;
}

@end