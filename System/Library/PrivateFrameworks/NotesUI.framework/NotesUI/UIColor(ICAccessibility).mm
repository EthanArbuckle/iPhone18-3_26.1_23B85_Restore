@interface UIColor(ICAccessibility)
+ (id)icaxHueNameForValue:()ICAccessibility;
- (__CFString)icaxLightnessModifier;
- (__CFString)icaxSaturationModifier;
- (double)icaxHue;
- (double)icaxLuma;
- (double)icaxSaturation;
- (id)_icaxColorDescriptionForHue:()ICAccessibility saturation:lightness:;
- (id)icaxApproximateColorDescription;
- (id)icaxDescriptionWithLuma;
- (uint64_t)icaxHueName;
@end

@implementation UIColor(ICAccessibility)

- (double)icaxHue
{
  v2 = 0.0;
  [self getHue:&v2 saturation:0 brightness:0 alpha:0];
  return v2;
}

- (double)icaxSaturation
{
  v2 = 0.0;
  [self getHue:0 saturation:&v2 brightness:0 alpha:0];
  return v2;
}

- (double)icaxLuma
{
  v5 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0.0;
  [self getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  result = fmax(v2 * (v4 * 0.715200007 + v5 * 0.212599993 + v3 * 0.0722000003), 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (id)icaxApproximateColorDescription
{
  _icaxCachedApproximateColorDescription = [self _icaxCachedApproximateColorDescription];
  if (!_icaxCachedApproximateColorDescription)
  {
    v14 = 0.0;
    v15 = 0.0;
    [self icaxLuma];
    v4 = v3;
    [self getHue:&v15 saturation:&v14 brightness:&v13 alpha:&v12];
    if (v4 <= 0.99000001)
    {
      if (v4 >= 0.00999999978)
      {
        if (v14 >= 0.0500000007)
        {
          v8 = v15;
          if (v15 <= 0.0560000017 || v15 >= 0.111000001 || (v8 = 0.430000007, v4 >= 0.430000007))
          {
            icaxHueName = [self icaxHueName];
          }

          else
          {
            icaxHueName = __ICLocalizedFrameworkString_impl(@"brown", @"brown", 0, 1);
          }

          v6 = icaxHueName;
          icaxSaturationModifier = [self icaxSaturationModifier];
          icaxLightnessModifier = [self icaxLightnessModifier];
          _icaxCachedApproximateColorDescription = [self _icaxColorDescriptionForHue:v6 saturation:icaxSaturationModifier lightness:icaxLightnessModifier];
        }

        else
        {
          v6 = __ICLocalizedFrameworkString_impl(@"gray", @"gray", 0, 1);
          icaxSaturationModifier = [self icaxLightnessModifier];
          _icaxCachedApproximateColorDescription = [self _icaxColorDescriptionForHue:v6 saturation:0 lightness:icaxSaturationModifier];
        }

        goto LABEL_16;
      }

      v5 = @"black";
    }

    else
    {
      v5 = @"white";
    }

    _icaxCachedApproximateColorDescription = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
LABEL_16:
    [self _icaxSetCachedApproximateColorDescription:_icaxCachedApproximateColorDescription];
  }

  return _icaxCachedApproximateColorDescription;
}

- (uint64_t)icaxHueName
{
  v2 = objc_opt_class();
  [self icaxHue];

  return [v2 icaxHueNameForValue:?];
}

- (__CFString)icaxLightnessModifier
{
  [self icaxLuma];
  if (v1 < 0.349999994)
  {
    v2 = @"dark";
LABEL_5:
    v3 = __ICLocalizedFrameworkString_impl(v2, v2, 0, 1);
    goto LABEL_7;
  }

  if (v1 > 0.850000024)
  {
    v2 = @"light";
    goto LABEL_5;
  }

  v3 = &stru_1F4F94F00;
LABEL_7:

  return v3;
}

- (__CFString)icaxSaturationModifier
{
  [self icaxSaturation];
  if (v2 < 0.200000003)
  {
    v3 = @"grayish";
LABEL_3:
    v4 = __ICLocalizedFrameworkString_impl(v3, v3, 0, 1);
    goto LABEL_8;
  }

  if (v2 > 0.899999976)
  {
    [self icaxLuma];
    if (v5 > 0.699999988)
    {
      v3 = @"vibrant";
      goto LABEL_3;
    }
  }

  v4 = &stru_1F4F94F00;
LABEL_8:

  return v4;
}

+ (id)icaxHueNameForValue:()ICAccessibility
{
  if (self >= 0.0 && self <= 1.0)
  {
    if (self < 0.0280000009)
    {
LABEL_10:
      v5 = @"red";
      goto LABEL_41;
    }

    if (self >= 0.0560000017)
    {
      if (self >= 0.111000001)
      {
        if (self >= 0.128999993)
        {
          if (self >= 0.166999996)
          {
            if (self >= 0.222000003)
            {
              if (self >= 0.388999999)
              {
                if (self >= 0.469000012)
                {
                  if (self >= 0.540000021)
                  {
                    if (self >= 0.611000001)
                    {
                      if (self >= 0.666999996)
                      {
                        if (self >= 0.800000012)
                        {
                          if (self >= 0.888999999)
                          {
                            if (self >= 0.916999996)
                            {
                              if (self >= 0.958000004)
                              {
                                if (self >= 0.986000001)
                                {
                                  goto LABEL_10;
                                }

                                v5 = @"pink red";
                              }

                              else
                              {
                                v5 = @"pink";
                              }
                            }

                            else
                            {
                              v5 = @"magenta pink";
                            }
                          }

                          else
                          {
                            v5 = @"magenta";
                          }
                        }

                        else
                        {
                          v5 = @"purple";
                        }
                      }

                      else
                      {
                        v5 = @"blue";
                      }
                    }

                    else
                    {
                      v5 = @"cyan blue";
                    }
                  }

                  else
                  {
                    v5 = @"cyan";
                  }
                }

                else
                {
                  v5 = @"blue green";
                }
              }

              else
              {
                v5 = @"green";
              }
            }

            else
            {
              v5 = @"yellow green";
            }
          }

          else
          {
            v5 = @"yellow";
          }
        }

        else
        {
          v5 = @"yellow orange";
        }
      }

      else
      {
        v5 = @"orange";
      }
    }

    else
    {
      v5 = @"red orange";
    }

LABEL_41:
    v3 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);

    return v3;
  }

  v3 = 0;

  return v3;
}

- (id)icaxDescriptionWithLuma
{
  [self icaxLuma];
  v3 = vcvtad_u64_f64(v2 * 100.0);
  v4 = MEMORY[0x1E696AEC0];
  icaxApproximateColorDescription = [self icaxApproximateColorDescription];
  v6 = ICAccessibilityLocalizedUnsignedInteger(v3);
  v7 = [v4 localizedStringWithFormat:@"%@ %@", icaxApproximateColorDescription, v6];

  return v7;
}

- (id)_icaxColorDescriptionForHue:()ICAccessibility saturation:lightness:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 length];
  v11 = [v8 length];
  if (v10)
  {
    if (v11)
    {
      v12 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"ax.color.format.lightness.saturation.hue", @"%1$@ %2$@ %3$@", 0, 1);
      v13 = MEMORY[0x1E696AEC0];
      v16 = v8;
      v17 = v7;
    }

    else
    {
      v12 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"ax.color.format.lightness.hue", @"%1$@ %2$@", 0, 1);
      v13 = MEMORY[0x1E696AEC0];
      v16 = v7;
    }

    [v13 localizedStringWithFormat:v12, v9, v16, v17];
    goto LABEL_8;
  }

  if (v11)
  {
    v12 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"ax.color.format.saturation.hue", @"%1$@ %2$@", 0, 1);
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v12, v8, v7, v17];
    v14 = LABEL_8:;

    goto LABEL_9;
  }

  v14 = v7;
LABEL_9:

  return v14;
}

@end