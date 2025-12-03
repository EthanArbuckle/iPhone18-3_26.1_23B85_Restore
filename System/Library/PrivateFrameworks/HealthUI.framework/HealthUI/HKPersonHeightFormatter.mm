@interface HKPersonHeightFormatter
+ (id)sharedFormatter;
- (BOOL)usesImperialUnits;
- (HKPersonHeightFormatter)init;
- (id)formattedValueForCentimeters:(double)centimeters;
- (id)formattedValueForFeet:(double)feet;
- (id)formattedValueForInches:(double)inches;
- (id)localizedStringFromHeightInCentimeters:(id)centimeters;
- (void)dealloc;
- (void)getFeet:(int64_t *)feet inches:(int64_t *)inches fromCentimeters:(double)centimeters;
@end

@implementation HKPersonHeightFormatter

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    +[HKPersonHeightFormatter sharedFormatter];
  }

  v3 = sharedFormatter___sharedFormatter;

  return v3;
}

uint64_t __42__HKPersonHeightFormatter_sharedFormatter__block_invoke()
{
  sharedFormatter___sharedFormatter = objc_alloc_init(HKPersonHeightFormatter);

  return MEMORY[0x1EEE66BB8]();
}

- (HKPersonHeightFormatter)init
{
  v11.receiver = self;
  v11.super_class = HKPersonHeightFormatter;
  v2 = [(HKPersonHeightFormatter *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ACF8]);
    [(HKPersonHeightFormatter *)v2 setHeightFormatter:v3];

    heightFormatter = [(HKPersonHeightFormatter *)v2 heightFormatter];
    numberFormatter = [heightFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];

    heightFormatter2 = [(HKPersonHeightFormatter *)v2 heightFormatter];
    [heightFormatter2 setForPersonHeightUse:1];

    if ([(HKPersonHeightFormatter *)v2 usesImperialUnits])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    heightFormatter3 = [(HKPersonHeightFormatter *)v2 heightFormatter];
    [heightFormatter3 setUnitStyle:v7];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = HKPersonHeightFormatter;
  [(HKPersonHeightFormatter *)&v4 dealloc];
}

- (BOOL)usesImperialUnits
{
  usesImperialUnits = self->_usesImperialUnits;
  if (!usesImperialUnits)
  {
    v11 = 0;
    heightFormatter = [(HKPersonHeightFormatter *)self heightFormatter];
    v5 = [heightFormatter unitStringFromMeters:&v11 usedUnit:1.0];

    v7 = v11 == 1281 || (v11 & 0xFFFFFFFFFFFFFFFELL) == 1282;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v9 = self->_usesImperialUnits;
    self->_usesImperialUnits = v8;

    usesImperialUnits = self->_usesImperialUnits;
  }

  return [(NSNumber *)usesImperialUnits BOOLValue];
}

- (id)formattedValueForCentimeters:(double)centimeters
{
  heightFormatter = [(HKPersonHeightFormatter *)self heightFormatter];
  v5 = [heightFormatter stringFromValue:9 unit:centimeters];

  return v5;
}

- (id)formattedValueForFeet:(double)feet
{
  heightFormatter = [(HKPersonHeightFormatter *)self heightFormatter];
  v5 = [heightFormatter stringFromValue:1282 unit:feet];

  return v5;
}

- (id)formattedValueForInches:(double)inches
{
  heightFormatter = [(HKPersonHeightFormatter *)self heightFormatter];
  v5 = [heightFormatter stringFromValue:1281 unit:inches];

  return v5;
}

- (void)getFeet:(int64_t *)feet inches:(int64_t *)inches fromCentimeters:(double)centimeters
{
  v5 = llround(centimeters / 2.54);
  v6 = v5 % 12;
  if (feet)
  {
    *feet = llround((v5 - v6) / 12.0);
  }

  if (inches)
  {
    *inches = v6;
  }
}

- (id)localizedStringFromHeightInCentimeters:(id)centimeters
{
  centimetersCopy = centimeters;
  if (centimetersCopy)
  {
    if ([(HKPersonHeightFormatter *)self usesImperialUnits])
    {
      v12 = 0;
      v13 = 0;
      [centimetersCopy doubleValue];
      [(HKPersonHeightFormatter *)self getFeet:&v13 inches:&v12 fromCentimeters:?];
      v5 = [(HKPersonHeightFormatter *)self formattedValueForFeet:v13];
      if (v12 < 1)
      {
        v6 = &stru_1F42FFBE0;
      }

      else
      {
        v6 = [(HKPersonHeightFormatter *)self formattedValueForInches:v12];
      }

      if ([(__CFString *)v6 length])
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v10 = [v9 localizedStringForKey:@"HEIGHT_FEET_INCHES %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v7 = [v8 stringWithFormat:v10, v5, v6];
      }

      else
      {
        v7 = v5;
      }
    }

    else
    {
      [centimetersCopy doubleValue];
      v7 = [(HKPersonHeightFormatter *)self formattedValueForCentimeters:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end