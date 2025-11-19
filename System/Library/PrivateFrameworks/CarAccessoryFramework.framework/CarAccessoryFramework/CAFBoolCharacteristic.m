@interface CAFBoolCharacteristic
+ (void)load;
- (BOOL)BOOLValue;
- (id)formattedValue;
@end

@implementation CAFBoolCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBoolCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)BOOLValue
{
  objc_opt_class();
  v3 = [(CAFCharacteristic *)self value];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (id)formattedValue
{
  v3 = [(CAFCharacteristic *)self value];
  if (v3)
  {
    if ([(CAFBoolCharacteristic *)self BOOLValue])
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }
  }

  else
  {
    v4 = @"(null)";
  }

  v5 = v4;

  return v4;
}

@end