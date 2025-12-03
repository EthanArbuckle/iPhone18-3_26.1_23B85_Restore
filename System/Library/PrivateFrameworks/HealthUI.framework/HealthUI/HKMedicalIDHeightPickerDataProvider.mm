@interface HKMedicalIDHeightPickerDataProvider
+ (double)defaultCentimeterValue;
+ (id)titleForRow:(int64_t)row inComponent:(int64_t)component;
+ (int64_t)numberOfRowsInComponent:(int64_t)component;
@end

@implementation HKMedicalIDHeightPickerDataProvider

+ (double)defaultCentimeterValue
{
  v2 = +[HKPersonHeightFormatter sharedFormatter];
  usesImperialUnits = [v2 usesImperialUnits];

  result = 168.0;
  if (usesImperialUnits)
  {
    return 167.64;
  }

  return result;
}

+ (int64_t)numberOfRowsInComponent:(int64_t)component
{
  v4 = +[HKPersonHeightFormatter sharedFormatter];
  usesImperialUnits = [v4 usesImperialUnits];

  v6 = 12;
  if (!component)
  {
    v6 = 10;
  }

  if (usesImperialUnits)
  {
    return v6;
  }

  else
  {
    return 300;
  }
}

+ (id)titleForRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = +[HKPersonHeightFormatter sharedFormatter];
  usesImperialUnits = [v6 usesImperialUnits];

  if (usesImperialUnits)
  {
    v8 = +[HKPersonHeightFormatter sharedFormatter];
    v9 = v8;
    rowCopy = row;
    if (component)
    {
      [v8 formattedValueForInches:rowCopy];
    }

    else
    {
      [v8 formattedValueForFeet:rowCopy];
    }
    v11 = ;
  }

  else
  {
    v9 = +[HKPersonHeightFormatter sharedFormatter];
    v11 = [v9 formattedValueForCentimeters:row];
  }

  v12 = v11;

  return v12;
}

@end