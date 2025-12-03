@interface CAFBoolCharacteristic
+ (void)load;
- (BOOL)BOOLValue;
- (id)formattedValue;
@end

@implementation CAFBoolCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBoolCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)BOOLValue
{
  objc_opt_class();
  value = [(CAFCharacteristic *)self value];
  if (value && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
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