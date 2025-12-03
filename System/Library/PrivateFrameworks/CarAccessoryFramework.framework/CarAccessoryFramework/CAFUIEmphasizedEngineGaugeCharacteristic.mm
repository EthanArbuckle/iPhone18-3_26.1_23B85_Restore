@interface CAFUIEmphasizedEngineGaugeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUIEmphasizedEngineGaugeCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIEmphasizedEngineGaugeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  uIEmphasizedEngineGaugeValue = [(CAFUIEmphasizedEngineGaugeCharacteristic *)self uIEmphasizedEngineGaugeValue];

  return NSStringFromUIEmphasizedEngineGauge(uIEmphasizedEngineGaugeValue);
}

@end