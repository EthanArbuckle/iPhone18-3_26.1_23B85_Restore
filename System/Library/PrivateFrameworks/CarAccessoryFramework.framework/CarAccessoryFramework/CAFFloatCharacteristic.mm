@interface CAFFloatCharacteristic
+ (void)load;
- (CAFFloatRange)range;
- (float)floatValue;
- (id)descriptionExtras;
- (id)formattedValue;
- (void)setFloatValue:(float)value;
@end

@implementation CAFFloatCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFloatCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (float)floatValue
{
  objc_opt_class();
  value = [(CAFCharacteristic *)self value];
  if (value && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (void)setFloatValue:(float)value
{
  range = [(CAFFloatCharacteristic *)self range];
  *&v6 = value;
  v7 = [range valueIsInRange:v6];

  if (v7)
  {
    v9 = MEMORY[0x277CCABB0];
    range2 = [(CAFFloatCharacteristic *)self range];
    *&v10 = value;
    [range2 valueRoundedToNearestStepValue:v10];
    v11 = [v9 numberWithFloat:?];
    [(CAFCharacteristic *)self setValue:v11];
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    *&v8 = value;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    range3 = [(CAFFloatCharacteristic *)self range];
    v15 = [v12 CAF_outOfRangeErrorForValue:v13 range:range3];
    [(CAFCharacteristic *)self setError:v15];

    v16 = CAFGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CAFFloatCharacteristic *)self setFloatValue:v16, value];
    }
  }
}

- (CAFFloatRange)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFFloatRange alloc];
    metaData = [(CAFCharacteristic *)self metaData];
    v6 = [(CAFRange *)v4 initWithMetaData:metaData];
    v7 = self->_range;
    self->_range = v6;

    range = self->_range;
  }

  return range;
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
  {
    v4 = MEMORY[0x277CCACA8];
    [(CAFFloatCharacteristic *)self floatValue];
    v6 = [v4 stringWithFormat:@"%g", v5];
  }

  else
  {
    v6 = @"(null)";
  }

  v7 = v6;

  return v7;
}

- (id)descriptionExtras
{
  v2 = MEMORY[0x277CCACA8];
  range = [(CAFFloatCharacteristic *)self range];
  v4 = [range description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setFloatValue:(float)a3 .cold.1(uint64_t a1, NSObject *a2, float a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2050;
  v7 = a3;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "%{public}@ floatValue out of range %{public}g", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end