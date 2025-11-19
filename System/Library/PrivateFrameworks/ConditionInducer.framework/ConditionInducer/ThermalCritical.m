@interface ThermalCritical
- (ThermalCritical)init;
@end

@implementation ThermalCritical

- (ThermalCritical)init
{
  v3.receiver = self;
  v3.super_class = ThermalCritical;
  return [(ThermalNominal *)&v3 initWithThermalLevel:3];
}

@end