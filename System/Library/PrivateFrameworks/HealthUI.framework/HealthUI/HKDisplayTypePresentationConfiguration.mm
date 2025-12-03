@interface HKDisplayTypePresentationConfiguration
- (BOOL)isEqual:(id)equal;
- (HKDisplayTypePresentationConfiguration)init;
- (HKDisplayTypePresentationConfiguration)initWithCurrentValue:(int64_t)value secondaryValue:(int64_t)secondaryValue detailChart:(int64_t)chart singleDailyValue:(BOOL)dailyValue;
@end

@implementation HKDisplayTypePresentationConfiguration

- (HKDisplayTypePresentationConfiguration)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDisplayTypePresentationConfiguration)initWithCurrentValue:(int64_t)value secondaryValue:(int64_t)secondaryValue detailChart:(int64_t)chart singleDailyValue:(BOOL)dailyValue
{
  v11.receiver = self;
  v11.super_class = HKDisplayTypePresentationConfiguration;
  result = [(HKDisplayTypePresentationConfiguration *)&v11 init];
  if (result)
  {
    result->_currentValue = value;
    result->_secondaryValue = secondaryValue;
    result->_detailChart = chart;
    result->_singleDailyValue = dailyValue;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_currentValue == equalCopy[2] && self->_secondaryValue == equalCopy[3] && self->_detailChart == equalCopy[4] && self->_singleDailyValue == *(equalCopy + 8);

  return v5;
}

@end