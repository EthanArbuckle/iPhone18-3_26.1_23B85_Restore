@interface HMFBoolean
+ (id)BOOLeanWithBool:(BOOL)a3;
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)BOOLValue;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getValue:(void *)a3 size:(unint64_t)a4;
@end

@implementation HMFBoolean

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {

    return [__HMFBoolean allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___HMFBoolean;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

+ (id)BOOLeanWithBool:(BOOL)a3
{
  v3 = off_2786E6500;
  if (!a3)
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(HMFBoolean *)self BOOLValue];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _HMFPreconditionFailure(@"[otherNumber isKindOfClass:NSNumber.class]");
      }

      v6 = [(HMFBoolean *)v4 BOOLValue];
    }

    else
    {
      v6 = 0;
    }

    v8 = 1;
    if (!v5)
    {
      v8 = -1;
    }

    if (v6 == v5)
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

- (void)getValue:(void *)a3 size:(unint64_t)a4
{
  if (!a3)
  {
    _HMFPreconditionFailure(@"value");
  }

  if (a4 != 1)
  {
    _HMFPreconditionFailure(@"size == 1");
  }

  *a3 = [(HMFBoolean *)self BOOLValue];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[HMFBoolean BOOLValue](self forKey:{"BOOLValue"), @"HMF.value"}];
}

@end