@interface CAFUnitTorque
+ (CAFUnitTorque)footPound;
+ (CAFUnitTorque)newtonMeter;
@end

@implementation CAFUnitTorque

+ (CAFUnitTorque)newtonMeter
{
  if (newtonMeter_onceToken != -1)
  {
    +[CAFUnitTorque newtonMeter];
  }

  v3 = newtonMeter_newtonMeter;

  return v3;
}

void __28__CAFUnitTorque_newtonMeter__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v0 = [(NSDimension *)[CAFUnitTorque alloc] initWithSymbol:@"Nm" converter:v2];
  v1 = newtonMeter_newtonMeter;
  newtonMeter_newtonMeter = v0;
}

+ (CAFUnitTorque)footPound
{
  if (footPound_onceToken != -1)
  {
    +[CAFUnitTorque footPound];
  }

  v3 = footPound_footPound;

  return v3;
}

void __26__CAFUnitTorque_footPound__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.35581795];
  v0 = [(NSDimension *)[CAFUnitTorque alloc] initWithSymbol:@"ft-lb" converter:v2];
  v1 = footPound_footPound;
  footPound_footPound = v0;
}

@end