@interface MXMUnitInstruction
+ (MXMUnitInstruction)baseUnit;
+ (MXMUnitInstruction)gigaInstructions;
+ (MXMUnitInstruction)kiloInstructions;
+ (MXMUnitInstruction)megaInstructions;
@end

@implementation MXMUnitInstruction

+ (MXMUnitInstruction)baseUnit
{
  v2 = [MXMUnitInstruction alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"I" converter:v3];

  return v4;
}

+ (MXMUnitInstruction)kiloInstructions
{
  v2 = [MXMUnitInstruction alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"kI" converter:v3];

  return v4;
}

+ (MXMUnitInstruction)megaInstructions
{
  v2 = [MXMUnitInstruction alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"mI" converter:v3];

  return v4;
}

+ (MXMUnitInstruction)gigaInstructions
{
  v2 = [MXMUnitInstruction alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1000000000.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"gI" converter:v3];

  return v4;
}

@end