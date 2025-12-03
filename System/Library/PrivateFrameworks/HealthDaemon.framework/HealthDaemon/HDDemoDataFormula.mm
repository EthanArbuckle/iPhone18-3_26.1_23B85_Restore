@interface HDDemoDataFormula
+ (double)computeBasalMetabolicRateFromWeight:(double)weight height:(double)height age:(double)age sex:(int64_t)sex;
+ (double)computeBloodAlcoholContentForNumDrinks:(double)drinks elapsedTime:(double)time weight:(double)weight sex:(int64_t)sex;
+ (double)computeLeanBodyMassFromWeight:(double)weight height:(double)height sex:(int64_t)sex waistCircumference:(double)circumference forearmCircumference:(double)forearmCircumference wristCircumference:(double)wristCircumference hipCircumference:(double)hipCircumference;
@end

@implementation HDDemoDataFormula

+ (double)computeBloodAlcoholContentForNumDrinks:(double)drinks elapsedTime:(double)time weight:(double)weight sex:(int64_t)sex
{
  v6 = 0.0;
  if (time >= 0.0)
  {
    v7 = time * 0.000277777778 * -0.015 + drinks * 0.06 * 100.0 * 1.055 / (weight * 2.20461988) * dbl_22916E810[sex == 2];
    if (v7 >= 0.0)
    {
      return v7;
    }

    else
    {
      return 0.0;
    }
  }

  return v6;
}

+ (double)computeBasalMetabolicRateFromWeight:(double)weight height:(double)height age:(double)age sex:(int64_t)sex
{
  v6 = height * 6.25 + weight * 10.0 + age * -5.0;
  v7 = -161.0;
  if (sex == 2)
  {
    v7 = 5.0;
  }

  return v6 + v7;
}

+ (double)computeLeanBodyMassFromWeight:(double)weight height:(double)height sex:(int64_t)sex waistCircumference:(double)circumference forearmCircumference:(double)forearmCircumference wristCircumference:(double)wristCircumference hipCircumference:(double)hipCircumference
{
  result = 0.0;
  if (weight != 0.0)
  {
    objc_opt_self();
    if (sex == 2)
    {
      v17 = height * 0.34 + weight * 0.33;
      v18 = -29.5;
    }

    else
    {
      v17 = height * 0.41 + weight * 0.29;
      v18 = -43.3;
    }

    v19 = v17 + v18;
    objc_opt_self();
    v20 = weight * weight / (height * height);
    v21 = v20 * -128.0 + weight * 1.1;
    v22 = v20 * -148.0 + weight * 1.07;
    objc_opt_self();
    v23 = weight * 2.20461988;
    if (sex == 2)
    {
      v24 = v21;
    }

    else
    {
      v24 = v22;
    }

    if (sex == 2)
    {
      v25 = v23 * 1.082 + 94.42 + circumference * -4.15;
    }

    else
    {
      v25 = v23 * 0.732 + 8.987 + wristCircumference / -3.14159265 + circumference * -0.157 + hipCircumference * -0.249 + forearmCircumference * 0.434;
    }

    return (v19 + v24 * 2.0 + v25 * 0.453592933) * 0.25;
  }

  return result;
}

@end