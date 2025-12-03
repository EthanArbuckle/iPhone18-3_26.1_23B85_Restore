@interface UIColor(JoeColor)
- (BOOL)ck_isCloseToColor:()JoeColor;
- (BOOL)ck_isVeryDark;
- (BOOL)ck_isVeryLight;
@end

@implementation UIColor(JoeColor)

- (BOOL)ck_isVeryDark
{
  v2 = 0.0;
  [self getHue:0 saturation:0 brightness:&v2 alpha:0];
  return v2 <= 0.1;
}

- (BOOL)ck_isVeryLight
{
  v4 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  [self getRed:&v4 green:&v3 blue:&v2 alpha:0];
  result = 0;
  if (v4 >= 0.95 && v3 >= 0.95)
  {
    return v2 >= 0.95;
  }

  return result;
}

- (BOOL)ck_isCloseToColor:()JoeColor
{
  v13 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  v4 = a3;
  [self getHue:&v13 saturation:&v12 brightness:&v11 alpha:0];
  [v4 getHue:&v10 saturation:&v9 brightness:&v8 alpha:0];

  if (vabdd_f64(v12, v9) > 0.0399999991 || vabdd_f64(v11, v8) > 0.0399999991)
  {
    return 0;
  }

  v6 = v13;
  v7 = v10;
  if (vabdd_f64(v13, v10) <= 0.0399999991)
  {
    return 1;
  }

  if (v13 < 0.0399999991)
  {
    v6 = v13 + 1.0;
  }

  if (v10 < 0.0399999991)
  {
    v7 = v10 + 1.0;
  }

  return vabdd_f64(v6, v7) <= 0.0399999991;
}

@end