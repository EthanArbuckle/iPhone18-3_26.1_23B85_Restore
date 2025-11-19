@interface MXMUnitPacket
+ (MXMUnitPacket)baseUnit;
@end

@implementation MXMUnitPacket

+ (MXMUnitPacket)baseUnit
{
  v2 = [MXMUnitPacket alloc];
  v3 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v4 = [(NSDimension *)v2 initWithSymbol:@"p" converter:v3];

  return v4;
}

@end