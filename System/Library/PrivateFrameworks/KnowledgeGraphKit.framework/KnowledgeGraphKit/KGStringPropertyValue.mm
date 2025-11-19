@interface KGStringPropertyValue
- (BOOL)isEqual:(id)a3;
- (KGStringPropertyValue)initWithValue:(id)a3;
@end

@implementation KGStringPropertyValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = self->_value;
      v6 = [(KGStringPropertyValue *)v4 value];
      v7 = [(NSString *)value isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (KGStringPropertyValue)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KGStringPropertyValue;
  v5 = [(KGPropertyValue *)&v9 initForSubclasses];
  if (v5)
  {
    v6 = [v4 copy];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

@end