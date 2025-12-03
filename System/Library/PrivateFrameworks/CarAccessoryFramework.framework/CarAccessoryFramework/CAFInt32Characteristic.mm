@interface CAFInt32Characteristic
+ (void)load;
- (CAFInt32Range)range;
- (id)descriptionExtras;
- (id)formattedValue;
- (int)int32Value;
@end

@implementation CAFInt32Characteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFInt32Characteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (int)int32Value
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

  intValue = [v4 intValue];
  return intValue;
}

- (CAFInt32Range)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFInt32Range alloc];
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
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[CAFInt32Characteristic int32Value](self, "int32Value")];
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
  range = [(CAFInt32Characteristic *)self range];
  v4 = [range description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setInt32Value:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1026;
  v7 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@ int32Value out of range %{public}d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end