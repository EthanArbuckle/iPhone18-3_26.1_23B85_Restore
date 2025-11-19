@interface HKMedicalIDWeightPickerDataProvider
+ (double)getWeightInKilogramsForRow:(int64_t)a3;
+ (double)localWeightValueForRow:(int64_t)a3;
+ (id)titleForRow:(int64_t)a3;
+ (int64_t)numberOfRows;
+ (int64_t)rowForWeightInKilograms:(double)a3;
@end

@implementation HKMedicalIDWeightPickerDataProvider

+ (int64_t)numberOfRows
{
  v2 = +[HKPersonWeightFormatter sharedFormatter];
  v3 = [v2 localWeightUnit];

  v4 = 1316;
  if (v3 == 1538)
  {
    v4 = 1451;
  }

  if (v3 == 1539)
  {
    return 1036;
  }

  else
  {
    return v4;
  }
}

+ (int64_t)rowForWeightInKilograms:(double)a3
{
  v4 = +[HKPersonWeightFormatter sharedFormatter];
  v5 = [v4 localWeightUnit];

  if (v5 == 1538)
  {
    v6 = a3 / 0.453592;
  }

  else if (v5 == 1539)
  {
    v6 = a3 / 6.35029 * 10.0;
  }

  else
  {
    v6 = a3 + a3;
  }

  return llround(v6);
}

+ (double)localWeightValueForRow:(int64_t)a3
{
  v3 = a3;
  v4 = +[HKPersonWeightFormatter sharedFormatter];
  v5 = [v4 localWeightUnit];

  if (v5 == 14)
  {
    return v3 * 0.5;
  }

  if (v5 == 1539)
  {
    return v3 / 10.0;
  }

  return v3;
}

+ (id)titleForRow:(int64_t)a3
{
  [a1 localWeightValueForRow:a3];
  v4 = v3;
  v5 = +[HKPersonWeightFormatter sharedFormatter];
  v6 = [v5 localWeightUnit];

  v7 = +[HKPersonWeightFormatter sharedFormatter];
  v8 = [v7 stringFromWeightValue:v6 inUnit:v4];

  return v8;
}

+ (double)getWeightInKilogramsForRow:(int64_t)a3
{
  v4 = +[HKPersonWeightFormatter sharedFormatter];
  v5 = [v4 localWeightUnit];

  v6 = a3;
  if (v5 == 1538)
  {
    v7 = 0.453592;
  }

  else if (v5 == 1539)
  {
    v6 = v6 / 10.0;
    v7 = 6.35029;
  }

  else
  {
    v7 = 0.5;
  }

  return v6 * v7;
}

@end