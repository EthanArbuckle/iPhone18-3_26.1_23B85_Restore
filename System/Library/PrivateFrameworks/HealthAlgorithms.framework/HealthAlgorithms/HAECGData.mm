@interface HAECGData
- (HAECGData)initWithFlags:(unint64_t)flags value:(float)value;
@end

@implementation HAECGData

- (HAECGData)initWithFlags:(unint64_t)flags value:(float)value
{
  v10.receiver = self;
  v10.super_class = HAECGData;
  v6 = [(HAECGData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_flags = flags;
    v6->_value = value;
    v8 = v6;
  }

  return v7;
}

@end