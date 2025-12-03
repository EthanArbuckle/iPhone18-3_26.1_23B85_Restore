@interface KGInt64PropertyValue
- (BOOL)isEqual:(id)equal;
- (KGInt64PropertyValue)initWithValue:(int64_t)value;
- (unint64_t)hash;
@end

@implementation KGInt64PropertyValue

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_value];
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
      v6 = value == [(KGInt64PropertyValue *)equalCopy value];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (KGInt64PropertyValue)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = KGInt64PropertyValue;
  result = [(KGPropertyValue *)&v5 initForSubclasses];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

@end