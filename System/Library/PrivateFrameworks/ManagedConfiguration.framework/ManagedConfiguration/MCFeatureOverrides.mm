@interface MCFeatureOverrides
+ (BOOL)BOOLForDefaultsKey:(id)a3 isPresent:(BOOL *)a4;
+ (BOOL)allowUnsupervisedWatchEnrollment;
+ (BOOL)allowVPNInUserEnrollment;
+ (double)accountRemovalTimeoutWithDefaultValue:(double)a3;
+ (id)_numberForDefaultsKey:(id)a3 isPresent:(BOOL *)a4;
+ (int)profileEventsExpirationInterval;
+ (unint64_t)profileEventsMaxLength;
@end

@implementation MCFeatureOverrides

+ (id)_numberForDefaultsKey:(id)a3 isPresent:(BOOL *)a4
{
  v6 = a3;
  if (![a1 isAppleInternal])
  {
    v8 = 0;
    v9 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 objectForKey:v6];

  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
  }

  if (a4)
  {
LABEL_7:
    *a4 = v9;
  }

LABEL_8:

  return v8;
}

+ (BOOL)BOOLForDefaultsKey:(id)a3 isPresent:(BOOL *)a4
{
  v4 = [a1 _numberForDefaultsKey:a3 isPresent:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)allowVPNInUserEnrollment
{
  v3 = [a1 isAppleInternal];
  if ([a1 isAppleInternal])
  {
    v6 = 0;
    v4 = [a1 BOOLForDefaultsKey:@"MCAllowFullVPNInUserEnrollments" isPresent:&v6];
    if (v6)
    {
      return v4;
    }
  }

  return v3;
}

+ (BOOL)allowUnsupervisedWatchEnrollment
{
  v3 = [a1 isAppleInternal];
  if ([a1 isAppleInternal])
  {
    v6 = 0;
    v4 = [a1 BOOLForDefaultsKey:@"MCAllowUnsupervisedWatchEnrollment" isPresent:&v6];
    if (v6)
    {
      return v4;
    }
  }

  return v3;
}

+ (unint64_t)profileEventsMaxLength
{
  v2 = [a1 _numberForDefaultsKey:@"MCProfileEventsMaxLength" isPresent:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    v4 = 20;
  }

  return v4;
}

+ (int)profileEventsExpirationInterval
{
  v2 = [a1 _numberForDefaultsKey:@"MCProfileEventsExpirationInterval" isPresent:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 1209600;
  }

  return v4;
}

+ (double)accountRemovalTimeoutWithDefaultValue:(double)a3
{
  v4 = [a1 _numberForDefaultsKey:@"MCAccountRemovalTimeout" isPresent:0];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    a3 = v6;
  }

  return a3;
}

@end