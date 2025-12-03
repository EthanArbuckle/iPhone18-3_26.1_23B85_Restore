@interface HFTemperatureFormatter
- (HFTemperatureFormatter)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)measurementForObjectValue:(id)value;
- (id)stringForObjectValue:(id)value;
- (id)stringForObjectValue:(id)value withUnit:(BOOL)unit;
- (unint64_t)maximumFractionDigits;
- (unint64_t)minimumFractionDigits;
- (void)setMaximumFractionDigits:(unint64_t)digits;
- (void)setMinimumFractionDigits:(unint64_t)digits;
- (void)setOutputIsCelsius:(BOOL)celsius;
- (void)setStepValue:(id)value;
- (void)temperatureUnitObserver:(id)observer didChangeTemperatureUnit:(BOOL)unit;
@end

@implementation HFTemperatureFormatter

- (HFTemperatureFormatter)init
{
  v8.receiver = self;
  v8.super_class = HFTemperatureFormatter;
  v2 = [(NSMeasurementFormatter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HFTemperatureFormatter *)v2 setStepValue:0];
    [(HFTemperatureFormatter *)v3 setInputIsCelsius:1];
    v4 = +[HFTemperatureUnitCoordinator sharedCoordinator];
    -[HFTemperatureFormatter setOutputIsCelsius:](v3, "setOutputIsCelsius:", [v4 isCelsius]);

    [(NSMeasurementFormatter *)v3 setUnitOptions:4];
    v5 = _HFLocalizedStringWithDefaultValue(@"HFTemperatureFormatterFallbackTemperatureString", @"HFTemperatureFormatterFallbackTemperatureString", 1);
    [(HFTemperatureFormatter *)v3 setFallbackTemperatureString:v5];

    v6 = +[HFTemperatureUnitCoordinator sharedCoordinator];
    [v6 registerObserver:v3];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  locale = [(NSMeasurementFormatter *)self locale];
  [v4 setLocale:locale];

  [v4 setInputIsCelsius:{-[HFTemperatureFormatter inputIsCelsius](self, "inputIsCelsius")}];
  [v4 setOutputIsCelsius:{-[HFTemperatureFormatter outputIsCelsius](self, "outputIsCelsius")}];
  [v4 setMaximumFractionDigits:{-[HFTemperatureFormatter maximumFractionDigits](self, "maximumFractionDigits")}];
  [v4 setMinimumFractionDigits:{-[HFTemperatureFormatter minimumFractionDigits](self, "minimumFractionDigits")}];
  [v4 setUnitOptions:{-[NSMeasurementFormatter unitOptions](self, "unitOptions")}];
  stepValue = [(HFTemperatureFormatter *)self stepValue];
  [v4 setStepValue:stepValue];

  fallbackTemperatureString = [(HFTemperatureFormatter *)self fallbackTemperatureString];
  [v4 setFallbackTemperatureString:fallbackTemperatureString];

  return v4;
}

- (void)setOutputIsCelsius:(BOOL)celsius
{
  self->_outputIsCelsius = celsius;
  celsiusCopy = celsius;
  if (celsius)
  {
    v5 = &unk_2825255C0;
  }

  else
  {
    v5 = &unk_2825255D0;
  }

  [(HFTemperatureFormatter *)self setMaximumFractionDigits:celsius];
  [(HFTemperatureFormatter *)self setMinimumFractionDigits:celsiusCopy];

  [(HFTemperatureFormatter *)self setStepValue:v5];
}

- (void)setStepValue:(id)value
{
  valueCopy = value;
  numberFormatter = self->_stepValue;
  v7 = valueCopy;
  v10 = v7;
  if (numberFormatter == v7)
  {

LABEL_8:
    v9 = v10;
    goto LABEL_9;
  }

  if (!numberFormatter)
  {

    goto LABEL_7;
  }

  v8 = [(NSNumber *)numberFormatter isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_stepValue, value);
    numberFormatter = [(NSMeasurementFormatter *)self numberFormatter];
    [(NSNumber *)numberFormatter setRoundingIncrement:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (unint64_t)maximumFractionDigits
{
  numberFormatter = [(NSMeasurementFormatter *)self numberFormatter];
  maximumFractionDigits = [numberFormatter maximumFractionDigits];

  return maximumFractionDigits;
}

- (void)setMaximumFractionDigits:(unint64_t)digits
{
  numberFormatter = [(NSMeasurementFormatter *)self numberFormatter];
  [numberFormatter setMaximumFractionDigits:digits];
}

- (unint64_t)minimumFractionDigits
{
  numberFormatter = [(NSMeasurementFormatter *)self numberFormatter];
  minimumFractionDigits = [numberFormatter minimumFractionDigits];

  return minimumFractionDigits;
}

- (void)setMinimumFractionDigits:(unint64_t)digits
{
  numberFormatter = [(NSMeasurementFormatter *)self numberFormatter];
  [numberFormatter setMinimumFractionDigits:digits];
}

- (id)stringForObjectValue:(id)value
{
  v4 = [(HFTemperatureFormatter *)self measurementForObjectValue:value];
  if (v4)
  {
    v7.receiver = self;
    v7.super_class = HFTemperatureFormatter;
    v5 = [(NSMeasurementFormatter *)&v7 stringForObjectValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)temperatureUnitObserver:(id)observer didChangeTemperatureUnit:(BOOL)unit
{
  isCelsius = [observer isCelsius];

  [(HFTemperatureFormatter *)self setOutputIsCelsius:isCelsius];
}

- (id)stringForObjectValue:(id)value withUnit:(BOOL)unit
{
  v6 = [(HFTemperatureFormatter *)self measurementForObjectValue:value];
  if (!unit)
  {
    v7 = objc_alloc(MEMORY[0x277CCAB10]);
    [v6 doubleValue];
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x277CCAD98]);
    if (_MergedGlobals_4_1 != -1)
    {
      dispatch_once(&_MergedGlobals_4_1, &__block_literal_global_13_5);
    }

    v11 = qword_27C84C4F8;
    v12 = [v10 initWithSymbol:v11];
    v13 = [v7 initWithDoubleValue:v12 unit:v9];

    v6 = v13;
  }

  if (v6)
  {
    v16.receiver = self;
    v16.super_class = HFTemperatureFormatter;
    v14 = [(NSMeasurementFormatter *)&v16 stringForObjectValue:v6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __56__HFTemperatureFormatter_stringForObjectValue_withUnit___block_invoke_2()
{
  v0 = qword_27C84C4F8;
  qword_27C84C4F8 = &stru_2824B1A78;
}

- (id)measurementForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    v5 = valueCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    v8 = v5;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if ([(HFTemperatureFormatter *)self inputIsCelsius])
    {
      [MEMORY[0x277CCAE48] celsius];
    }

    else
    {
      [MEMORY[0x277CCAE48] fahrenheit];
    }
    v11 = ;
    if ([(HFTemperatureFormatter *)self outputIsCelsius])
    {
      [MEMORY[0x277CCAE48] celsius];
    }

    else
    {
      [MEMORY[0x277CCAE48] fahrenheit];
    }
    v12 = ;
    if (v10)
    {
      unit = [v10 unit];

      v14 = MEMORY[0x277CCABB0];
      [v10 doubleValue];
      v15 = [v14 numberWithDouble:?];

      v7 = v15;
      v11 = unit;
    }

    v16 = objc_alloc(MEMORY[0x277CCAB10]);
    [v7 doubleValue];
    v17 = [v16 initWithDoubleValue:v11 unit:?];
    v18 = [v17 measurementByConvertingToUnit:v12];

    if (self->_stepValue)
    {
      [v18 doubleValue];
      v20 = v19;
      [(NSNumber *)self->_stepValue doubleValue];
      v22 = round(v20 / v21);
      [(NSNumber *)self->_stepValue doubleValue];
      v24 = v22 * v23;
      v25 = fabs(v24);
      if (v24 == 0.0)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      v27 = objc_alloc(MEMORY[0x277CCAB10]);
      unit2 = [v18 unit];
      v29 = [v27 initWithDoubleValue:unit2 unit:v26];

      v18 = v29;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end