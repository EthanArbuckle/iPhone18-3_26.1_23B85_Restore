@interface MCFeatureOverrides
+ (BOOL)BOOLForDefaultsKey:(id)key isPresent:(BOOL *)present;
+ (BOOL)allowUnsupervisedWatchEnrollment;
+ (BOOL)allowVPNInUserEnrollment;
+ (double)accountRemovalTimeoutWithDefaultValue:(double)value;
+ (id)_numberForDefaultsKey:(id)key isPresent:(BOOL *)present;
+ (int)profileEventsExpirationInterval;
+ (unint64_t)profileEventsMaxLength;
@end

@implementation MCFeatureOverrides

+ (id)_numberForDefaultsKey:(id)key isPresent:(BOOL *)present
{
  keyCopy = key;
  if (![self isAppleInternal])
  {
    v8 = 0;
    v9 = 0;
    if (!present)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults objectForKey:keyCopy];

  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
  }

  if (present)
  {
LABEL_7:
    *present = v9;
  }

LABEL_8:

  return v8;
}

+ (BOOL)BOOLForDefaultsKey:(id)key isPresent:(BOOL *)present
{
  v4 = [self _numberForDefaultsKey:key isPresent:present];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)allowVPNInUserEnrollment
{
  isAppleInternal = [self isAppleInternal];
  if ([self isAppleInternal])
  {
    v6 = 0;
    v4 = [self BOOLForDefaultsKey:@"MCAllowFullVPNInUserEnrollments" isPresent:&v6];
    if (v6)
    {
      return v4;
    }
  }

  return isAppleInternal;
}

+ (BOOL)allowUnsupervisedWatchEnrollment
{
  isAppleInternal = [self isAppleInternal];
  if ([self isAppleInternal])
  {
    v6 = 0;
    v4 = [self BOOLForDefaultsKey:@"MCAllowUnsupervisedWatchEnrollment" isPresent:&v6];
    if (v6)
    {
      return v4;
    }
  }

  return isAppleInternal;
}

+ (unint64_t)profileEventsMaxLength
{
  v2 = [self _numberForDefaultsKey:@"MCProfileEventsMaxLength" isPresent:0];
  v3 = v2;
  if (v2)
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 20;
  }

  return unsignedIntValue;
}

+ (int)profileEventsExpirationInterval
{
  v2 = [self _numberForDefaultsKey:@"MCProfileEventsExpirationInterval" isPresent:0];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 1209600;
  }

  return intValue;
}

+ (double)accountRemovalTimeoutWithDefaultValue:(double)value
{
  v4 = [self _numberForDefaultsKey:@"MCAccountRemovalTimeout" isPresent:0];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    value = v6;
  }

  return value;
}

@end