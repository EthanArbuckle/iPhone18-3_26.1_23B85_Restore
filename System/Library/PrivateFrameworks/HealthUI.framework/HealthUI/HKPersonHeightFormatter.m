@interface HKPersonHeightFormatter
+ (id)sharedFormatter;
- (BOOL)usesImperialUnits;
- (HKPersonHeightFormatter)init;
- (id)formattedValueForCentimeters:(double)a3;
- (id)formattedValueForFeet:(double)a3;
- (id)formattedValueForInches:(double)a3;
- (id)localizedStringFromHeightInCentimeters:(id)a3;
- (void)dealloc;
- (void)getFeet:(int64_t *)a3 inches:(int64_t *)a4 fromCentimeters:(double)a5;
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

    v4 = [(HKPersonHeightFormatter *)v2 heightFormatter];
    v5 = [v4 numberFormatter];
    [v5 setMaximumFractionDigits:0];

    v6 = [(HKPersonHeightFormatter *)v2 heightFormatter];
    [v6 setForPersonHeightUse:1];

    if ([(HKPersonHeightFormatter *)v2 usesImperialUnits])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [(HKPersonHeightFormatter *)v2 heightFormatter];
    [v8 setUnitStyle:v7];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

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
    v4 = [(HKPersonHeightFormatter *)self heightFormatter];
    v5 = [v4 unitStringFromMeters:&v11 usedUnit:1.0];

    v7 = v11 == 1281 || (v11 & 0xFFFFFFFFFFFFFFFELL) == 1282;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v9 = self->_usesImperialUnits;
    self->_usesImperialUnits = v8;

    usesImperialUnits = self->_usesImperialUnits;
  }

  return [(NSNumber *)usesImperialUnits BOOLValue];
}

- (id)formattedValueForCentimeters:(double)a3
{
  v4 = [(HKPersonHeightFormatter *)self heightFormatter];
  v5 = [v4 stringFromValue:9 unit:a3];

  return v5;
}

- (id)formattedValueForFeet:(double)a3
{
  v4 = [(HKPersonHeightFormatter *)self heightFormatter];
  v5 = [v4 stringFromValue:1282 unit:a3];

  return v5;
}

- (id)formattedValueForInches:(double)a3
{
  v4 = [(HKPersonHeightFormatter *)self heightFormatter];
  v5 = [v4 stringFromValue:1281 unit:a3];

  return v5;
}

- (void)getFeet:(int64_t *)a3 inches:(int64_t *)a4 fromCentimeters:(double)a5
{
  v5 = llround(a5 / 2.54);
  v6 = v5 % 12;
  if (a3)
  {
    *a3 = llround((v5 - v6) / 12.0);
  }

  if (a4)
  {
    *a4 = v6;
  }
}

- (id)localizedStringFromHeightInCentimeters:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(HKPersonHeightFormatter *)self usesImperialUnits])
    {
      v12 = 0;
      v13 = 0;
      [v4 doubleValue];
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
      [v4 doubleValue];
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