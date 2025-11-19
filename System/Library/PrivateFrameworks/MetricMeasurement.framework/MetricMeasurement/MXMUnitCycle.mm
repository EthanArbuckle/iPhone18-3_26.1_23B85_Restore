@interface MXMUnitCycle
+ (MXMUnitCycle)baseUnit;
+ (MXMUnitCycle)gigaCycles;
+ (MXMUnitCycle)kiloCycles;
+ (MXMUnitCycle)megaCycles;
@end

@implementation MXMUnitCycle

+ (MXMUnitCycle)baseUnit
{
  v2 = [MXMUnitCycle alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"C" converter:v3];

  return v4;
}

+ (MXMUnitCycle)kiloCycles
{
  v2 = [MXMUnitCycle alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"kC" converter:v3];

  return v4;
}

+ (MXMUnitCycle)megaCycles
{
  v2 = [MXMUnitCycle alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"mC" converter:v3];

  return v4;
}

+ (MXMUnitCycle)gigaCycles
{
  v2 = [MXMUnitCycle alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"gC" converter:v3];

  return v4;
}

@end