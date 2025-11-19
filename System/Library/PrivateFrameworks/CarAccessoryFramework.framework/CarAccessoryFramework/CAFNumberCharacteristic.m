@interface CAFNumberCharacteristic
+ (void)load;
- (CAFRange)range;
- (NSNumber)numberValue;
- (id)descriptionExtras;
- (id)formattedValue;
- (void)setNumberValue:(id)a3;
@end

@implementation CAFNumberCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFNumberCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSNumber)numberValue
{
  objc_opt_class();
  v3 = [(CAFCharacteristic *)self value];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNumberValue:(id)a3
{
  v4 = a3;
  v5 = [(CAFNumberCharacteristic *)self range];
  v6 = [v5 isInRange:v4];

  if (v6)
  {
    v7 = [(CAFNumberCharacteristic *)self range];
    v8 = [v7 valueRoundedToNearestStepValue:v4];
    [(CAFCharacteristic *)self setValue:v8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [(CAFNumberCharacteristic *)self range];
    v11 = [v9 CAF_outOfRangeErrorForValue:v4 range:v10];
    [(CAFCharacteristic *)self setError:v11];

    v7 = CAFGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAFNumberCharacteristic *)self setNumberValue:v4, v7];
    }
  }
}

- (CAFRange)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFRange alloc];
    v5 = [(CAFCharacteristic *)self metaData];
    v6 = [(CAFRange *)v4 initWithMetaData:v5];
    v7 = self->_range;
    self->_range = v6;

    range = self->_range;
  }

  return range;
}

- (id)formattedValue
{
  v3 = [(CAFCharacteristic *)self value];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(CAFNumberCharacteristic *)self numberValue];
    v6 = [v4 stringWithFormat:@"%@", v5];
  }

  else
  {
    v6 = @"(null)";
  }

  return v6;
}

- (id)descriptionExtras
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CAFNumberCharacteristic *)self range];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setNumberValue:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@ numberValue out of range %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end