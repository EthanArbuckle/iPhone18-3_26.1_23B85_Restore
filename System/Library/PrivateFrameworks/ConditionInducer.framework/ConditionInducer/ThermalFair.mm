@interface ThermalFair
- (ThermalFair)init;
@end

@implementation ThermalFair

- (ThermalFair)init
{
  v3.receiver = self;
  v3.super_class = ThermalFair;
  return [(ThermalNominal *)&v3 initWithThermalLevel:1];
}

@end