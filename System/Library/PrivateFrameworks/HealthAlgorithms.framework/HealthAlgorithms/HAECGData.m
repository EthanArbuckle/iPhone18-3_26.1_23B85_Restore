@interface HAECGData
- (HAECGData)initWithFlags:(unint64_t)a3 value:(float)a4;
@end

@implementation HAECGData

- (HAECGData)initWithFlags:(unint64_t)a3 value:(float)a4
{
  v10.receiver = self;
  v10.super_class = HAECGData;
  v6 = [(HAECGData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_flags = a3;
    v6->_value = a4;
    v8 = v6;
  }

  return v7;
}

@end