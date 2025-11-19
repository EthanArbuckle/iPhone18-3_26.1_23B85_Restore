@interface CAFUnitRotationalSpeed
+ (CAFUnitRotationalSpeed)degreesPerSecond;
+ (CAFUnitRotationalSpeed)revolutionsPerMinute;
@end

@implementation CAFUnitRotationalSpeed

+ (CAFUnitRotationalSpeed)revolutionsPerMinute
{
  if (revolutionsPerMinute_onceToken != -1)
  {
    +[CAFUnitRotationalSpeed revolutionsPerMinute];
  }

  v3 = revolutionsPerMinute__revolutionsPerMinute;

  return v3;
}

void __46__CAFUnitRotationalSpeed_revolutionsPerMinute__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v0 = [(NSDimension *)[CAFUnitRotationalSpeed alloc] initWithSymbol:@"rpm" converter:v2];
  v1 = revolutionsPerMinute__revolutionsPerMinute;
  revolutionsPerMinute__revolutionsPerMinute = v0;
}

+ (CAFUnitRotationalSpeed)degreesPerSecond
{
  if (degreesPerSecond_onceToken != -1)
  {
    +[CAFUnitRotationalSpeed degreesPerSecond];
  }

  v3 = degreesPerSecond__degreesPerSecond;

  return v3;
}

void __42__CAFUnitRotationalSpeed_degreesPerSecond__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.166666667];
  v0 = [(NSDimension *)[CAFUnitRotationalSpeed alloc] initWithSymbol:@"deg/s" converter:v2];
  v1 = degreesPerSecond__degreesPerSecond;
  degreesPerSecond__degreesPerSecond = v0;
}

@end