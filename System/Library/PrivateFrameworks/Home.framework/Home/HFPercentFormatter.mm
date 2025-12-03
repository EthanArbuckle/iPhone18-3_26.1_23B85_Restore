@interface HFPercentFormatter
+ (id)_percentageFromValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue;
+ (id)_valueFromPercentage:(id)percentage forMinimumValue:(id)value maximumValue:(id)maximumValue;
- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error;
- (HFPercentFormatter)initWithMinimumValue:(id)value maximumValue:(id)maximumValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForNormalizedObjectValue:(id)value;
- (id)stringForObjectValue:(id)value;
- (id)stringForObjectValue:(id)value withUnit:(BOOL)unit;
- (id)stringForRelativePercentValue:(id)value;
@end

@implementation HFPercentFormatter

- (HFPercentFormatter)initWithMinimumValue:(id)value maximumValue:(id)maximumValue
{
  valueCopy = value;
  maximumValueCopy = maximumValue;
  v11.receiver = self;
  v11.super_class = HFPercentFormatter;
  v8 = [(HFPercentFormatter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HFPercentFormatter *)v8 setMinimumValue:valueCopy];
    [(HFPercentFormatter *)v9 setMaximumValue:maximumValueCopy];
    [(HFPercentFormatter *)v9 setNumberStyle:3];
    [(HFPercentFormatter *)v9 setMaximumFractionDigits:0];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HFPercentFormatter;
  v4 = [(HFPercentFormatter *)&v8 copyWithZone:zone];
  minimumValue = [(HFPercentFormatter *)self minimumValue];
  [v4 setMinimumValue:minimumValue];

  maximumValue = [(HFPercentFormatter *)self maximumValue];
  [v4 setMaximumValue:maximumValue];

  return v4;
}

- (id)stringForRelativePercentValue:(id)value
{
  valueCopy = value;
  minimumValue = [valueCopy minimumValue];
  v6 = minimumValue;
  v7 = &unk_2825244F8;
  if (minimumValue)
  {
    v7 = minimumValue;
  }

  v8 = v7;

  maximumValue = [valueCopy maximumValue];
  v10 = maximumValue;
  v11 = &unk_282524510;
  if (maximumValue)
  {
    v11 = maximumValue;
  }

  v12 = v11;

  v13 = objc_opt_class();
  value = [valueCopy value];

  v15 = [v13 _percentageFromValue:value forMinimumValue:v8 maximumValue:v12];

  v18.receiver = self;
  v18.super_class = HFPercentFormatter;
  v16 = [(HFPercentFormatter *)&v18 stringForObjectValue:v15];

  return v16;
}

- (id)stringForNormalizedObjectValue:(id)value
{
  v5.receiver = self;
  v5.super_class = HFPercentFormatter;
  v3 = [(HFPercentFormatter *)&v5 stringForObjectValue:value];

  return v3;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(HFPercentFormatter *)self numberStyle]== 3)
  {
    v5 = objc_opt_class();
    minimumValue = [(HFPercentFormatter *)self minimumValue];
    maximumValue = [(HFPercentFormatter *)self maximumValue];
    v8 = [v5 _percentageFromValue:valueCopy forMinimumValue:minimumValue maximumValue:maximumValue];

    v12.receiver = self;
    v12.super_class = HFPercentFormatter;
    v9 = [(HFPercentFormatter *)&v12 stringForObjectValue:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HFPercentFormatter;
    v9 = [(HFPercentFormatter *)&v11 stringForObjectValue:valueCopy];
  }

  return v9;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error
{
  v15.receiver = self;
  v15.super_class = HFPercentFormatter;
  v8 = [(HFPercentFormatter *)&v15 getObjectValue:value forString:string range:range error:error];
  if (v8)
  {
    v9 = *value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      v11 = *value;
      minimumValue = [(HFPercentFormatter *)self minimumValue];
      maximumValue = [(HFPercentFormatter *)self maximumValue];
      *value = [v10 _valueFromPercentage:v11 forMinimumValue:minimumValue maximumValue:maximumValue];

      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)stringForObjectValue:(id)value withUnit:(BOOL)unit
{
  unitCopy = unit;
  valueCopy = value;
  if (unitCopy)
  {
    v7 = [(HFPercentFormatter *)self stringForObjectValue:valueCopy];
  }

  else
  {
    v8 = [(HFPercentFormatter *)self copy];
    [v8 setNumberStyle:0];
    v7 = [v8 stringForObjectValue:valueCopy];

    valueCopy = v8;
  }

  return v7;
}

+ (id)_valueFromPercentage:(id)percentage forMinimumValue:(id)value maximumValue:(id)maximumValue
{
  v7 = MEMORY[0x277CCABB0];
  maximumValueCopy = maximumValue;
  valueCopy = value;
  [percentage doubleValue];
  v11 = v10;
  [maximumValueCopy doubleValue];
  v13 = v12;

  [valueCopy doubleValue];
  v15 = v13 - v14;
  [valueCopy doubleValue];
  v17 = v16;

  return [v7 numberWithDouble:v17 + v11 * v15];
}

+ (id)_percentageFromValue:(id)value forMinimumValue:(id)minimumValue maximumValue:(id)maximumValue
{
  v7 = MEMORY[0x277CCABB0];
  maximumValueCopy = maximumValue;
  minimumValueCopy = minimumValue;
  [value doubleValue];
  v11 = v10;
  [minimumValueCopy doubleValue];
  v13 = v11 - v12;
  [maximumValueCopy doubleValue];
  v15 = v14;

  [minimumValueCopy doubleValue];
  v17 = v16;

  return [v7 numberWithDouble:v13 / (v15 - v17)];
}

@end