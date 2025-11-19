@interface CAFUInt32Characteristic
+ (void)load;
- (CAFUInt32Range)range;
- (id)descriptionExtras;
- (id)formattedValue;
- (unsigned)uint32Value;
@end

@implementation CAFUInt32Characteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUInt32Characteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (unsigned)uint32Value
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

  v5 = [v4 unsignedIntValue];
  return v5;
}

- (CAFUInt32Range)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFUInt32Range alloc];
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
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", -[CAFUInt32Characteristic uint32Value](self, "uint32Value")];
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
  v3 = [(CAFUInt32Characteristic *)self range];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setUint32Value:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1026;
  v7 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@ uint32Value out of range %{public}u", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end