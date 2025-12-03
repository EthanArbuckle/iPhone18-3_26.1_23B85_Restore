@interface CAFNumberCharacteristic
+ (void)load;
- (CAFRange)range;
- (NSNumber)numberValue;
- (id)descriptionExtras;
- (id)formattedValue;
- (void)setNumberValue:(id)value;
@end

@implementation CAFNumberCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFNumberCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSNumber)numberValue
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

  return v4;
}

- (void)setNumberValue:(id)value
{
  valueCopy = value;
  range = [(CAFNumberCharacteristic *)self range];
  v6 = [range isInRange:valueCopy];

  if (v6)
  {
    range2 = [(CAFNumberCharacteristic *)self range];
    v8 = [range2 valueRoundedToNearestStepValue:valueCopy];
    [(CAFCharacteristic *)self setValue:v8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    range3 = [(CAFNumberCharacteristic *)self range];
    v11 = [v9 CAF_outOfRangeErrorForValue:valueCopy range:range3];
    [(CAFCharacteristic *)self setError:v11];

    range2 = CAFGeneralLogging();
    if (os_log_type_enabled(range2, OS_LOG_TYPE_ERROR))
    {
      [(CAFNumberCharacteristic *)self setNumberValue:valueCopy, range2];
    }
  }
}

- (CAFRange)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFRange alloc];
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
    numberValue = [(CAFNumberCharacteristic *)self numberValue];
    v6 = [v4 stringWithFormat:@"%@", numberValue];
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
  range = [(CAFNumberCharacteristic *)self range];
  v4 = [range description];
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