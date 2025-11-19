@interface HKMedicalIDHeightPickerDataProvider
+ (double)defaultCentimeterValue;
+ (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4;
+ (int64_t)numberOfRowsInComponent:(int64_t)a3;
@end

@implementation HKMedicalIDHeightPickerDataProvider

+ (double)defaultCentimeterValue
{
  v2 = +[HKPersonHeightFormatter sharedFormatter];
  v3 = [v2 usesImperialUnits];

  result = 168.0;
  if (v3)
  {
    return 167.64;
  }

  return result;
}

+ (int64_t)numberOfRowsInComponent:(int64_t)a3
{
  v4 = +[HKPersonHeightFormatter sharedFormatter];
  v5 = [v4 usesImperialUnits];

  v6 = 12;
  if (!a3)
  {
    v6 = 10;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 300;
  }
}

+ (id)titleForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  v6 = +[HKPersonHeightFormatter sharedFormatter];
  v7 = [v6 usesImperialUnits];

  if (v7)
  {
    v8 = +[HKPersonHeightFormatter sharedFormatter];
    v9 = v8;
    v10 = a3;
    if (a4)
    {
      [v8 formattedValueForInches:v10];
    }

    else
    {
      [v8 formattedValueForFeet:v10];
    }
    v11 = ;
  }

  else
  {
    v9 = +[HKPersonHeightFormatter sharedFormatter];
    v11 = [v9 formattedValueForCentimeters:a3];
  }

  v12 = v11;

  return v12;
}

@end