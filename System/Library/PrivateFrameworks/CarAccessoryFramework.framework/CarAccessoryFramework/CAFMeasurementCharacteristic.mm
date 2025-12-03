@interface CAFMeasurementCharacteristic
+ (id)_sharedStringFromMeasurement:(id)measurement;
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFMeasurementRange)range;
- (NSMeasurement)measurementValue;
- (NSNumber)numberValue;
- (NSUnit)unit;
- (id)formattedValue;
- (void)_setNumberValue:(id)value;
- (void)setMeasurementValue:(id)value;
- (void)setNumberValue:(id)value;
- (void)unit;
@end

@implementation CAFMeasurementCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMeasurementCharacteristic;
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
  v4 = MEMORY[0x277CCAB10];
  valueCopy = value;
  v6 = [v4 alloc];
  [valueCopy doubleValue];
  v8 = v7;

  unit = [(CAFMeasurementCharacteristic *)self unit];
  v12 = [v6 initWithDoubleValue:unit unit:v8];

  unit2 = [(CAFMeasurementCharacteristic *)self unit];
  v11 = [v12 measurementByConvertingToUnit:unit2];
  [(CAFMeasurementCharacteristic *)self _setNumberValue:v11];
}

- (NSMeasurement)measurementValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  numberValue = [(CAFMeasurementCharacteristic *)self numberValue];
  [numberValue doubleValue];
  v6 = v5;
  unit = [(CAFMeasurementCharacteristic *)self unit];
  v8 = [v3 initWithDoubleValue:unit unit:v6];

  return v8;
}

- (void)setMeasurementValue:(id)value
{
  valueCopy = value;
  unit = [(CAFMeasurementCharacteristic *)self unit];
  v5 = [valueCopy measurementByConvertingToUnit:unit];

  [(CAFMeasurementCharacteristic *)self _setNumberValue:v5];
}

- (void)_setNumberValue:(id)value
{
  valueCopy = value;
  range = [(CAFMeasurementCharacteristic *)self range];
  v6 = [range valueIsInRange:valueCopy];

  if (v6)
  {
    range2 = [(CAFMeasurementCharacteristic *)self range];
    v8 = [range2 valueRoundedToNearestStepValue:valueCopy];
    numberValue = [v8 numberValue];
    [(CAFCharacteristic *)self setValue:numberValue];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    numberValue2 = [valueCopy numberValue];
    range3 = [(CAFMeasurementCharacteristic *)self range];
    v13 = [v10 CAF_outOfRangeErrorForValue:numberValue2 range:range3];
    [(CAFCharacteristic *)self setError:v13];

    range2 = CAFGeneralLogging();
    if (os_log_type_enabled(range2, OS_LOG_TYPE_ERROR))
    {
      [(CAFMeasurementCharacteristic *)self _setNumberValue:valueCopy];
    }
  }
}

- (NSUnit)unit
{
  metaData = [(CAFCharacteristic *)self metaData];
  units = [metaData units];

  if (units)
  {
    unsignedIntValue = [units unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  v6 = unsignedIntValue;
  v7 = NSUnitFromCAFUnitType(unsignedIntValue);
  if (!v7)
  {
    v8 = CAFGeneralLogging();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v9)
      {
        [(CAFMeasurementCharacteristic *)self unit];
      }
    }

    else if (v9)
    {
      [(CAFMeasurementCharacteristic *)self unit];
    }

    v7 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:&stru_284626CA8];
  }

  return v7;
}

- (CAFMeasurementRange)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFMeasurementRange alloc];
    metaData = [(CAFCharacteristic *)self metaData];
    unit = [(CAFMeasurementCharacteristic *)self unit];
    v7 = [(CAFMeasurementRange *)v4 initWithMetaData:metaData unit:unit];
    v8 = self->_range;
    self->_range = v7;

    range = self->_range;
  }

  return range;
}

+ (id)_sharedStringFromMeasurement:(id)measurement
{
  v3 = _sharedStringFromMeasurement__onceToken;
  measurementCopy = measurement;
  if (v3 != -1)
  {
    +[CAFMeasurementCharacteristic _sharedStringFromMeasurement:];
  }

  os_unfair_lock_lock(&_sharedStringFromMeasurement__sharedFormatterLock);
  v5 = [_sharedStringFromMeasurement__sharedFormatter stringFromMeasurement:measurementCopy];

  os_unfair_lock_unlock(&_sharedStringFromMeasurement__sharedFormatterLock);

  return v5;
}

uint64_t __61__CAFMeasurementCharacteristic__sharedStringFromMeasurement___block_invoke()
{
  _sharedStringFromMeasurement__sharedFormatterLock = 0;
  v0 = objc_alloc_init(MEMORY[0x277CCAB18]);
  v1 = _sharedStringFromMeasurement__sharedFormatter;
  _sharedStringFromMeasurement__sharedFormatter = v0;

  v2 = _sharedStringFromMeasurement__sharedFormatter;

  return [v2 setUnitOptions:1];
}

- (id)formattedValue
{
  measurementValue = [(CAFMeasurementCharacteristic *)self measurementValue];
  v3 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:measurementValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[48] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000031000010";
  v5[1] = @"0x0000000035000017";
  v5[2] = @"0x0000000035000018";
  v5[3] = @"0x0000000030000045";
  v5[4] = @"0x0000000030000031";
  v5[5] = @"0x000000003000004D";
  v5[6] = @"0x000000003000004C";
  v5[7] = @"0x000000004000000D";
  v5[8] = @"0x000000004000000A";
  v5[9] = @"0x0000000031000019";
  v5[10] = @"0x0000000030000022";
  v5[11] = @"0x000000003000004A";
  v5[12] = @"0x000000003000004B";
  v5[13] = @"0x0000000030000023";
  v5[14] = @"0x0000000030000025";
  v5[15] = @"0x0000000035000012";
  v5[16] = @"0x0000000041000021";
  v5[17] = @"0x0000000035000013";
  v5[18] = @"0x0000000041000025";
  v5[19] = @"0x0000000041000002";
  v5[20] = @"0x000000004100001A";
  v5[21] = @"0x0000000032000032";
  v5[22] = @"0x0000000032000033";
  v5[23] = @"0x0000000030000028";
  v5[24] = @"0x0000000041000022";
  v5[25] = @"0x0000000041000024";
  v5[26] = @"0x0000000041000023";
  v5[27] = @"0x0000000030000053";
  v5[28] = @"0x0000000030000052";
  v5[29] = @"0x0000000030000051";
  v5[30] = @"0x0000000030000050";
  v5[31] = @"0x000000003000001B";
  v5[32] = @"0x0000000030000030";
  v5[33] = @"0x0000000030000024";
  v5[34] = @"0x000000003000004F";
  v5[35] = @"0x000000003000004E";
  v5[36] = @"0x0000000030000021";
  v5[37] = @"0x0000000030000046";
  v5[38] = @"0x0000000030000047";
  v5[39] = @"0x0000000030000048";
  v5[40] = @"0x0000000030000049";
  v5[41] = @"0x0000000031000017";
  v5[42] = @"0x000000003000001D";
  v5[43] = @"0x0000000030000056";
  v5[44] = @"0x0000000030000057";
  v5[45] = @"0x0000000030000055";
  v5[46] = @"0x0000000030000054";
  v5[47] = @"0x0000000049000003";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:48];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_setNumberValue:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 numberValue];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unit
{
  v10 = *MEMORY[0x277D85DE8];
  typeName = [self typeName];
  characteristicType = [self characteristicType];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end