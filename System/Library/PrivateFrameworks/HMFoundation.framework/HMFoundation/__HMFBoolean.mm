@interface __HMFBoolean
- (__HMFBoolean)initWithBool:(BOOL)bool;
- (__HMFBoolean)initWithChar:(char)char;
- (__HMFBoolean)initWithCoder:(id)coder;
- (__HMFBoolean)initWithDouble:(double)double;
- (__HMFBoolean)initWithFloat:(float)float;
- (__HMFBoolean)initWithInt:(int)int;
- (__HMFBoolean)initWithInteger:(int64_t)integer;
- (__HMFBoolean)initWithLong:(int64_t)long;
- (__HMFBoolean)initWithLongLong:(int64_t)long;
- (__HMFBoolean)initWithShort:(signed __int16)short;
- (__HMFBoolean)initWithUnsignedChar:(unsigned __int8)char;
- (__HMFBoolean)initWithUnsignedInt:(unsigned int)int;
- (__HMFBoolean)initWithUnsignedInteger:(unint64_t)integer;
- (__HMFBoolean)initWithUnsignedLong:(unint64_t)long;
- (__HMFBoolean)initWithUnsignedLongLong:(unint64_t)long;
- (__HMFBoolean)initWithUnsignedShort:(unsigned __int16)short;
@end

@implementation __HMFBoolean

- (__HMFBoolean)initWithChar:(char)char
{
  charCopy = char;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:char != 0];
  if (result)
  {
    result->_value = charCopy != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedChar:(unsigned __int8)char
{
  charCopy = char;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:char != 0];
  if (result)
  {
    result->_value = charCopy != 0;
  }

  return result;
}

- (__HMFBoolean)initWithShort:(signed __int16)short
{
  shortCopy = short;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:short != 0];
  if (result)
  {
    result->_value = shortCopy != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedShort:(unsigned __int16)short
{
  shortCopy = short;
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:short != 0];
  if (result)
  {
    result->_value = shortCopy != 0;
  }

  return result;
}

- (__HMFBoolean)initWithInt:(int)int
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:int != 0];
  if (result)
  {
    result->_value = int != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedInt:(unsigned int)int
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:int != 0];
  if (result)
  {
    result->_value = int != 0;
  }

  return result;
}

- (__HMFBoolean)initWithLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:long != 0];
  if (result)
  {
    result->_value = long != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedLong:(unint64_t)long
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:long != 0];
  if (result)
  {
    result->_value = long != 0;
  }

  return result;
}

- (__HMFBoolean)initWithLongLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:long != 0];
  if (result)
  {
    result->_value = long != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedLongLong:(unint64_t)long
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:long != 0];
  if (result)
  {
    result->_value = long != 0;
  }

  return result;
}

- (__HMFBoolean)initWithFloat:(float)float
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:float != 0.0];
  if (result)
  {
    result->_value = float != 0.0;
  }

  return result;
}

- (__HMFBoolean)initWithDouble:(double)double
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:double != 0.0];
  if (result)
  {
    result->_value = double != 0.0;
  }

  return result;
}

- (__HMFBoolean)initWithBool:(BOOL)bool
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:?];
  if (result)
  {
    result->_value = bool;
  }

  return result;
}

- (__HMFBoolean)initWithInteger:(int64_t)integer
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:integer != 0];
  if (result)
  {
    result->_value = integer != 0;
  }

  return result;
}

- (__HMFBoolean)initWithUnsignedInteger:(unint64_t)integer
{
  v5.receiver = self;
  v5.super_class = __HMFBoolean;
  result = [(HMFBoolean *)&v5 initWithBool:integer != 0];
  if (result)
  {
    result->_value = integer != 0;
  }

  return result;
}

- (__HMFBoolean)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"HMF.value"];
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