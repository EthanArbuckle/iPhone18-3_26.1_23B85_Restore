@interface CAFUnitAirQuality
+ (CAFUnitAirQuality)aqi;
@end

@implementation CAFUnitAirQuality

+ (CAFUnitAirQuality)aqi
{
  if (aqi_onceToken != -1)
  {
    +[CAFUnitAirQuality aqi];
  }

  v3 = aqi__airQualityIndex;

  return v3;
}

void __24__CAFUnitAirQuality_aqi__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0 constant:273.15];
  v0 = [(NSDimension *)[CAFUnitAirQuality alloc] initWithSymbol:@"AQI" converter:v2];
  v1 = aqi__airQualityIndex;
  aqi__airQualityIndex = v0;
}

@end