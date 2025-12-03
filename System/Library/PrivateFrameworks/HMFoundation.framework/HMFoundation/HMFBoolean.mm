@interface HMFBoolean
+ (id)BOOLeanWithBool:(BOOL)bool;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)BOOLValue;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(void *)value size:(unint64_t)size;
@end

@implementation HMFBoolean

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {

    return [__HMFBoolean allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___HMFBoolean;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

+ (id)BOOLeanWithBool:(BOOL)bool
{
  v3 = off_2786E6500;
  if (!bool)
  {
    v3 = off_2786E64F8;
  }

  v4 = *v3;
  v5 = objc_opt_new();

  return v5;
}

- (id)description
{
  if ([(HMFBoolean *)self BOOLValue])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return v2;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy)
  {
    v7 = 0;
  }

  else
  {
    bOOLValue = [(HMFBoolean *)self BOOLValue];
    if (compareCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _HMFPreconditionFailure(@"[otherNumber isKindOfClass:NSNumber.class]");
      }

      bOOLValue2 = [(HMFBoolean *)compareCopy BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v8 = 1;
    if (!bOOLValue)
    {
      v8 = -1;
    }

    if (bOOLValue2 == bOOLValue)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

- (void)getValue:(void *)value size:(unint64_t)size
{
  if (!value)
  {
    _HMFPreconditionFailure(@"value");
  }

  if (size != 1)
  {
    _HMFPreconditionFailure(@"size == 1");
  }

  *value = [(HMFBoolean *)self BOOLValue];
}

- (BOOL)BOOLValue
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[HMFBoolean BOOLValue](self forKey:{"BOOLValue"), @"HMF.value"}];
}

@end