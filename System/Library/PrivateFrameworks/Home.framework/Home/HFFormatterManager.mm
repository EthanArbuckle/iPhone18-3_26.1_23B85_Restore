@interface HFFormatterManager
+ (id)sharedInstance;
- (HFFormatterManager)init;
- (HFPercentFormatter)percentFormatter;
- (HFTemperatureFormatter)temperatureFormatter;
- (id)arcDegreeFormatter;
- (id)luxFormatter;
- (id)monthDayFormatter;
- (id)monthDayTimeFormatter;
- (id)monthDayYearFormatter;
- (id)relativeDateFormatter;
- (id)timeFormatter;
- (id)timeIntervalFormatter;
- (id)weekdayNameFormatter:(BOOL)formatter;
- (void)registerTemperatureFormatter:(id)formatter;
@end

@implementation HFFormatterManager

+ (id)sharedInstance
{
  if (qword_280E02FC8 != -1)
  {
    dispatch_once(&qword_280E02FC8, &__block_literal_global_97);
  }

  v3 = _MergedGlobals_254;

  return v3;
}

void __36__HFFormatterManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HFFormatterManager);
  v1 = _MergedGlobals_254;
  _MergedGlobals_254 = v0;
}

- (void)registerTemperatureFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = [formatterCopy copyWithZone:MEMORY[0x20F326D80]()];

  temperatureFormatter = self->_temperatureFormatter;
  self->_temperatureFormatter = v5;
}

- (HFFormatterManager)init
{
  v8.receiver = self;
  v8.super_class = HFFormatterManager;
  v2 = [(HFFormatterManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(HFTemperatureFormatter);
    temperatureFormatter = v2->_temperatureFormatter;
    v2->_temperatureFormatter = v3;

    v5 = objc_alloc_init(HFPercentFormatter);
    percentFormatter = v2->_percentFormatter;
    v2->_percentFormatter = v5;

    [(HFPercentFormatter *)v2->_percentFormatter setNumberStyle:3];
    [(HFPercentFormatter *)v2->_percentFormatter setMaximumFractionDigits:0];
  }

  return v2;
}

- (HFTemperatureFormatter)temperatureFormatter
{
  temperatureFormatter = self->_temperatureFormatter;
  if (!temperatureFormatter)
  {
    NSLog(&cfstr_NoTemperatureF.isa, a2);
    temperatureFormatter = self->_temperatureFormatter;
  }

  v4 = [(HFTemperatureFormatter *)temperatureFormatter copyWithZone:MEMORY[0x20F326D80]()];

  return v4;
}

- (HFPercentFormatter)percentFormatter
{
  percentFormatter = self->_percentFormatter;
  if (!percentFormatter)
  {
    NSLog(&cfstr_NoPercentForma.isa, a2);
    percentFormatter = self->_percentFormatter;
  }

  v4 = [(HFPercentFormatter *)percentFormatter copyWithZone:MEMORY[0x20F326D80]()];

  return v4;
}

- (id)timeIntervalFormatter
{
  v2 = objc_alloc_init(HFTimeIntervalFormatter);
  [(NSDateComponentsFormatter *)v2 setUnitsStyle:3];
  [(NSDateComponentsFormatter *)v2 setZeroFormattingBehavior:14];

  return v2;
}

- (id)arcDegreeFormatter
{
  v2 = [[HFMeasurementFormatter alloc] initWithMeasurementBlock:&__block_literal_global_11_3];

  return v2;
}

id __40__HFFormatterManager_arcDegreeFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAB10];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 doubleValue];
  v6 = v5;

  v7 = [MEMORY[0x277CCADA8] degrees];
  v8 = [v4 initWithDoubleValue:v7 unit:v6];

  return v8;
}

- (id)luxFormatter
{
  v2 = [[HFMeasurementFormatter alloc] initWithMeasurementBlock:&__block_literal_global_15_2];
  [(NSMeasurementFormatter *)v2 setUnitStyle:3];
  numberFormatter = [(NSMeasurementFormatter *)v2 numberFormatter];
  [numberFormatter setMaximumSignificantDigits:3];

  numberFormatter2 = [(NSMeasurementFormatter *)v2 numberFormatter];
  [numberFormatter2 setMaximumFractionDigits:1];

  numberFormatter3 = [(NSMeasurementFormatter *)v2 numberFormatter];
  [numberFormatter3 setUsesSignificantDigits:1];

  return v2;
}

id __34__HFFormatterManager_luxFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAB10];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 doubleValue];
  v6 = v5;

  v7 = [MEMORY[0x277CCAE10] lux];
  v8 = [v4 initWithDoubleValue:v7 unit:v6];

  return v8;
}

id __38__HFFormatterManager_BOOLeanFormatter__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"HFCharacteristicValueTrue";
  }

  else
  {
    v2 = @"HFCharacteristicValueFalse";
  }

  v3 = _HFLocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

id __39__HFFormatterManager_identityFormatter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)relativeDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateStyle:3];
  [v2 setTimeStyle:1];
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:autoupdatingCurrentLocale];

  [v2 setDoesRelativeDateFormatting:1];

  return v2;
}

- (id)timeFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateStyle:0];
  [v2 setTimeStyle:1];
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:autoupdatingCurrentLocale];

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:localTimeZone];

  return v2;
}

- (id)monthDayTimeFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:localTimeZone];

  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:autoupdatingCurrentLocale];

  [v2 setLocalizedDateFormatFromTemplate:{@"d MMM, j:mm"}];

  return v2;
}

- (id)monthDayFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setLocalizedDateFormatFromTemplate:@"MMM d"];

  return v2;
}

- (id)monthDayYearFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setLocalizedDateFormatFromTemplate:{@"MMM d, yyyy"}];

  return v2;
}

- (id)weekdayNameFormatter:(BOOL)formatter
{
  formatterCopy = formatter;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = v4;
  if (formatterCopy)
  {
    v6 = @"EEE";
  }

  else
  {
    v6 = @"EEEE";
  }

  [v4 setDateFormat:v6];
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v5 setLocale:autoupdatingCurrentLocale];

  return v5;
}

@end