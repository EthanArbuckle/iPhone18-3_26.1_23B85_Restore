@interface __HMFBoolean
- (__HMFBoolean)initWithBool:(BOOL)a3;
- (__HMFBoolean)initWithChar:(char)a3;
- (__HMFBoolean)initWithCoder:(id)a3;
- (__HMFBoolean)initWithDouble:(double)a3;
- (__HMFBoolean)initWithFloat:(float)a3;
- (__HMFBoolean)initWithInt:(int)a3;
- (__HMFBoolean)initWithInteger:(int64_t)a3;
- (__HMFBoolean)initWithLong:(int64_t)a3;
- (__HMFBoolean)initWithLongLong:(int64_t)a3;
- (__HMFBoolean)initWithShort:(signed __int16)a3;
- (__HMFBoolean)initWithUnsignedChar:(unsigned __int8)a3;
- (__HMFBoolean)initWithUnsignedInt:(unsigned int)a3;
- (__HMFBoolean)initWithUnsignedInteger:(unint64_t)a3;
- (__HMFBoolean)initWithUnsignedLong:(unint64_t)a3;
- (__HMFBoolean)initWithUnsignedLongLong:(unint64_t)a3;
- (__HMFBoolean)initWithUnsignedShort:(unsigned __int16)a3;
@end

@implementation __HMFBoolean

- (__HMFBoolean)initWithChar:(char)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = v3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedChar:(unsigned __int8)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = v3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithShort:(signed __int16)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = v3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedShort:(unsigned __int16)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = v3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithInt:(int)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedInt:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithLong:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedLong:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithLongLong:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedLongLong:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithFloat:(float)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0.0];
  if (result)
  {
    result->_value = a3 != 0.0;
  }

  return result;
}

- (__HMFBoolean)initWithDouble:(double)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0.0];
  if (result)
  {
    result->_value = a3 != 0.0;
  }

  return result;
}

- (__HMFBoolean)initWithBool:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:?];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (__HMFBoolean)initWithInteger:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedInteger:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:a3 != 0];
  if (result)
  {
    result->_value = a3 != 0;
  }

  return result;
}

- (__HMFBoolean)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"HMF.value"];
  v6.receiver = self;
  v6.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v6 initWithBool:v4];
  if (result)
  {
    result->_value = v4;
  }

  return result;
}

@end