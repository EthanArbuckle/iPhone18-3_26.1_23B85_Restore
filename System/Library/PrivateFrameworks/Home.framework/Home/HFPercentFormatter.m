@interface HFPercentFormatter
+ (id)_percentageFromValue:(id)a3 forMinimumValue:(id)a4 maximumValue:(id)a5;
+ (id)_valueFromPercentage:(id)a3 forMinimumValue:(id)a4 maximumValue:(id)a5;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6;
- (HFPercentFormatter)initWithMinimumValue:(id)a3 maximumValue:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForNormalizedObjectValue:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringForObjectValue:(id)a3 withUnit:(BOOL)a4;
- (id)stringForRelativePercentValue:(id)a3;
@end

@implementation HFPercentFormatter

- (HFPercentFormatter)initWithMinimumValue:(id)a3 maximumValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFPercentFormatter;
  v8 = [(HFPercentFormatter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HFPercentFormatter *)v8 setMinimumValue:v6];
    [(HFPercentFormatter *)v9 setMaximumValue:v7];
    [(HFPercentFormatter *)v9 setNumberStyle:3];
    [(HFPercentFormatter *)v9 setMaximumFractionDigits:0];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = HFPercentFormatter;
  v4 = [(HFPercentFormatter *)&v8 copyWithZone:a3];
  v5 = [(HFPercentFormatter *)self minimumValue];
  [v4 setMinimumValue:v5];

  v6 = [(HFPercentFormatter *)self maximumValue];
  [v4 setMaximumValue:v6];

  return v4;
}

- (id)stringForRelativePercentValue:(id)a3
{
  v4 = a3;
  v5 = [v4 minimumValue];
  v6 = v5;
  v7 = &unk_2825244F8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 maximumValue];
  v10 = v9;
  v11 = &unk_282524510;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = objc_opt_class();
  v14 = [v4 value];

  v15 = [v13 _percentageFromValue:v14 forMinimumValue:v8 maximumValue:v12];

  v18.receiver = self;
  v18.super_class = HFPercentFormatter;
  v16 = [(HFPercentFormatter *)&v18 stringForObjectValue:v15];

  return v16;
}

- (id)stringForNormalizedObjectValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = HFPercentFormatter;
  v3 = [(HFPercentFormatter *)&v5 stringForObjectValue:a3];

  return v3;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(HFPercentFormatter *)self numberStyle]== 3)
  {
    v5 = objc_opt_class();
    v6 = [(HFPercentFormatter *)self minimumValue];
    v7 = [(HFPercentFormatter *)self maximumValue];
    v8 = [v5 _percentageFromValue:v4 forMinimumValue:v6 maximumValue:v7];

    v12.receiver = self;
    v12.super_class = HFPercentFormatter;
    v9 = [(HFPercentFormatter *)&v12 stringForObjectValue:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HFPercentFormatter;
    v9 = [(HFPercentFormatter *)&v11 stringForObjectValue:v4];
  }

  return v9;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6
{
  v15.receiver = self;
  v15.super_class = HFPercentFormatter;
  v8 = [(HFPercentFormatter *)&v15 getObjectValue:a3 forString:a4 range:a5 error:a6];
  if (v8)
  {
    v9 = *a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      v11 = *a3;
      v12 = [(HFPercentFormatter *)self minimumValue];
      v13 = [(HFPercentFormatter *)self maximumValue];
      *a3 = [v10 _valueFromPercentage:v11 forMinimumValue:v12 maximumValue:v13];

      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)stringForObjectValue:(id)a3 withUnit:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(HFPercentFormatter *)self stringForObjectValue:v6];
  }

  else
  {
    v8 = [(HFPercentFormatter *)self copy];
    [v8 setNumberStyle:0];
    v7 = [v8 stringForObjectValue:v6];

    v6 = v8;
  }

  return v7;
}

+ (id)_valueFromPercentage:(id)a3 forMinimumValue:(id)a4 maximumValue:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = a4;
  [a3 doubleValue];
  v11 = v10;
  [v8 doubleValue];
  v13 = v12;

  [v9 doubleValue];
  v15 = v13 - v14;
  [v9 doubleValue];
  v17 = v16;

  return [v7 numberWithDouble:v17 + v11 * v15];
}

+ (id)_percentageFromValue:(id)a3 forMinimumValue:(id)a4 maximumValue:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = a4;
  [a3 doubleValue];
  v11 = v10;
  [v9 doubleValue];
  v13 = v11 - v12;
  [v8 doubleValue];
  v15 = v14;

  [v9 doubleValue];
  v17 = v16;

  return [v7 numberWithDouble:v13 / (v15 - v17)];
}

@end