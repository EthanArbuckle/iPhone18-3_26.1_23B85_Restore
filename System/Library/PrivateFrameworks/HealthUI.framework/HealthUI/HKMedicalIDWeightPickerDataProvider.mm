@interface HKMedicalIDWeightPickerDataProvider
+ (double)getWeightInKilogramsForRow:(int64_t)row;
+ (double)localWeightValueForRow:(int64_t)row;
+ (id)titleForRow:(int64_t)row;
+ (int64_t)numberOfRows;
+ (int64_t)rowForWeightInKilograms:(double)kilograms;
@end

@implementation HKMedicalIDWeightPickerDataProvider

+ (int64_t)numberOfRows
{
  v2 = +[HKPersonWeightFormatter sharedFormatter];
  localWeightUnit = [v2 localWeightUnit];

  v4 = 1316;
  if (localWeightUnit == 1538)
  {
    v4 = 1451;
  }

  if (localWeightUnit == 1539)
  {
    return 1036;
  }

  else
  {
    return v4;
  }
}

+ (int64_t)rowForWeightInKilograms:(double)kilograms
{
  v4 = +[HKPersonWeightFormatter sharedFormatter];
  localWeightUnit = [v4 localWeightUnit];

  if (localWeightUnit == 1538)
  {
    v6 = kilograms / 0.453592;
  }

  else if (localWeightUnit == 1539)
  {
    v6 = kilograms / 6.35029 * 10.0;
  }

  else
  {
    v6 = kilograms + kilograms;
  }

  return llround(v6);
}

+ (double)localWeightValueForRow:(int64_t)row
{
  rowCopy = row;
  v4 = +[HKPersonWeightFormatter sharedFormatter];
  localWeightUnit = [v4 localWeightUnit];

  if (localWeightUnit == 14)
  {
    return rowCopy * 0.5;
  }

  if (localWeightUnit == 1539)
  {
    return rowCopy / 10.0;
  }

  return rowCopy;
}

+ (id)titleForRow:(int64_t)row
{
  [self localWeightValueForRow:row];
  v4 = v3;
  v5 = +[HKPersonWeightFormatter sharedFormatter];
  localWeightUnit = [v5 localWeightUnit];

  v7 = +[HKPersonWeightFormatter sharedFormatter];
  v8 = [v7 stringFromWeightValue:localWeightUnit inUnit:v4];

  return v8;
}

+ (double)getWeightInKilogramsForRow:(int64_t)row
{
  v4 = +[HKPersonWeightFormatter sharedFormatter];
  localWeightUnit = [v4 localWeightUnit];

  rowCopy = row;
  if (localWeightUnit == 1538)
  {
    v7 = 0.453592;
  }

  else if (localWeightUnit == 1539)
  {
    rowCopy = rowCopy / 10.0;
    v7 = 6.35029;
  }

  else
  {
    v7 = 0.5;
  }

  return rowCopy * v7;
}

@end