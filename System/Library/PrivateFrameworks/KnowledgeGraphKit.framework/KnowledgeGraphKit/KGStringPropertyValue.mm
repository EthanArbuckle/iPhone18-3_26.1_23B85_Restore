@interface KGStringPropertyValue
- (BOOL)isEqual:(id)equal;
- (KGStringPropertyValue)initWithValue:(id)value;
@end

@implementation KGStringPropertyValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = self->_value;
      value = [(KGStringPropertyValue *)equalCopy value];
      v7 = [(NSString *)value isEqualToString:value];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (KGStringPropertyValue)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = KGStringPropertyValue;
  initForSubclasses = [(KGPropertyValue *)&v9 initForSubclasses];
  if (initForSubclasses)
  {
    v6 = [valueCopy copy];
    value = initForSubclasses->_value;
    initForSubclasses->_value = v6;
  }

  return initForSubclasses;
}

@end