@interface HKDisplayTypePresentationConfiguration
- (BOOL)isEqual:(id)a3;
- (HKDisplayTypePresentationConfiguration)init;
- (HKDisplayTypePresentationConfiguration)initWithCurrentValue:(int64_t)a3 secondaryValue:(int64_t)a4 detailChart:(int64_t)a5 singleDailyValue:(BOOL)a6;
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

- (HKDisplayTypePresentationConfiguration)initWithCurrentValue:(int64_t)a3 secondaryValue:(int64_t)a4 detailChart:(int64_t)a5 singleDailyValue:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = HKDisplayTypePresentationConfiguration;
  result = [(HKDisplayTypePresentationConfiguration *)&v11 init];
  if (result)
  {
    result->_currentValue = a3;
    result->_secondaryValue = a4;
    result->_detailChart = a5;
    result->_singleDailyValue = a6;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_currentValue == v4[2] && self->_secondaryValue == v4[3] && self->_detailChart == v4[4] && self->_singleDailyValue == *(v4 + 8);

  return v5;
}

@end