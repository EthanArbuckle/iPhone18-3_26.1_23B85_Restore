@interface KGUInt64PropertyValue
- (BOOL)isEqual:(id)equal;
- (KGUInt64PropertyValue)initWithValue:(unint64_t)value;
- (unint64_t)hash;
@end

@implementation KGUInt64PropertyValue

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = self->_value;
      v6 = value == [(KGUInt64PropertyValue *)equalCopy value];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (KGUInt64PropertyValue)initWithValue:(unint64_t)value
{
  v5.receiver = self;
  v5.super_class = KGUInt64PropertyValue;
  result = [(KGPropertyValue *)&v5 initForSubclasses];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

@end