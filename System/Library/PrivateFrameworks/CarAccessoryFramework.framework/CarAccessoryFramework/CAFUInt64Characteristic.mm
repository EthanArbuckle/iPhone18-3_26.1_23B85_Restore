@interface CAFUInt64Characteristic
+ (void)load;
- (CAFUInt64Range)range;
- (id)descriptionExtras;
- (id)formattedValue;
- (unint64_t)uint64Value;
- (void)setUint64Value:(unint64_t)value;
@end

@implementation CAFUInt64Characteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUInt64Characteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (unint64_t)uint64Value
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

  unsignedLongLongValue = [v4 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (void)setUint64Value:(unint64_t)value
{
  range = [(CAFUInt64Characteristic *)self range];
  v6 = [range valueIsInRange:value];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    range2 = [(CAFUInt64Characteristic *)self range];
    v8 = [v7 numberWithUnsignedLongLong:{objc_msgSend(range2, "valueRoundedToNearestStepValue:", value)}];
    [(CAFCharacteristic *)self setValue:v8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:value];
    range3 = [(CAFUInt64Characteristic *)self range];
    v12 = [v9 CAF_outOfRangeErrorForValue:v10 range:range3];
    [(CAFCharacteristic *)self setError:v12];

    v13 = CAFGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CAFUInt64Characteristic *)self setUint64Value:value, v13];
    }
  }
}

- (CAFUInt64Range)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFUInt64Range alloc];
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
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", -[CAFUInt64Characteristic uint64Value](self, "uint64Value")];
  }

  else
  {
    v4 = @"(null)";
  }

  v5 = v4;

  return v5;
}

- (id)descriptionExtras
{
  v2 = MEMORY[0x277CCACA8];
  range = [(CAFUInt64Characteristic *)self range];
  v4 = [range description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setUint64Value:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2050;
  v7 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@ uint64Value out of range %{public}llu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end