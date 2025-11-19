@interface KGDoublePropertyValue
- (BOOL)isEqual:(id)a3;
- (KGDoublePropertyValue)initWithValue:(double)a3;
- (unint64_t)hash;
@end

@implementation KGDoublePropertyValue

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = self->_value;
    [v4 value];
    v7 = vabdd_f64(value, v6) <= 2.22044605e-16;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (KGDoublePropertyValue)initWithValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = KGDoublePropertyValue;
  result = [(KGPropertyValue *)&v5 initForSubclasses];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

@end