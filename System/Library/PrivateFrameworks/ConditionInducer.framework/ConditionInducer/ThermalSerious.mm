@interface ThermalSerious
- (ThermalSerious)init;
@end

@implementation ThermalSerious

- (ThermalSerious)init
{
  v3.receiver = self;
  v3.super_class = ThermalSerious;
  return [(ThermalNominal *)&v3 initWithThermalLevel:2];
}

@end