@interface CAFUnitHumidity
+ (CAFUnitHumidity)absoluteHumidity;
+ (CAFUnitHumidity)dewPointCelcius;
+ (CAFUnitHumidity)dewPointFahrenheit;
+ (CAFUnitHumidity)percent;
+ (CAFUnitHumidity)specificHumidity;
@end

@implementation CAFUnitHumidity

+ (CAFUnitHumidity)absoluteHumidity
{
  if (absoluteHumidity_onceToken != -1)
  {
    +[CAFUnitHumidity absoluteHumidity];
  }

  v3 = absoluteHumidity__absoluteHumidity;

  return v3;
}

void __35__CAFUnitHumidity_absoluteHumidity__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0 constant:273.15];
  v0 = [(NSDimension *)[CAFUnitHumidity alloc] initWithSymbol:@"mg/L" converter:v2];
  v1 = absoluteHumidity__absoluteHumidity;
  absoluteHumidity__absoluteHumidity = v0;
}

+ (CAFUnitHumidity)percent
{
  if (percent_onceToken != -1)
  {
    +[CAFUnitHumidity percent];
  }

  v3 = percent__relativeHumidity;

  return v3;
}

void __26__CAFUnitHumidity_percent__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0 constant:273.15];
  v0 = [(NSDimension *)[CAFUnitHumidity alloc] initWithSymbol:@"%" converter:v2];
  v1 = percent__relativeHumidity;
  percent__relativeHumidity = v0;
}

+ (CAFUnitHumidity)specificHumidity
{
  if (specificHumidity_onceToken != -1)
  {
    +[CAFUnitHumidity specificHumidity];
  }

  v3 = specificHumidity__specificHumidity;

  return v3;
}

void __35__CAFUnitHumidity_specificHumidity__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0 constant:273.15];
  v0 = [(NSDimension *)[CAFUnitHumidity alloc] initWithSymbol:@"g/kg" converter:v2];
  v1 = specificHumidity__specificHumidity;
  specificHumidity__specificHumidity = v0;
}

+ (CAFUnitHumidity)dewPointCelcius
{
  if (dewPointCelcius_onceToken != -1)
  {
    +[CAFUnitHumidity dewPointCelcius];
  }

  v3 = dewPointCelcius__dewPoint;

  return v3;
}

void __34__CAFUnitHumidity_dewPointCelcius__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0 constant:273.15];
  v0 = [(NSDimension *)[CAFUnitHumidity alloc] initWithSymbol:@"°C" converter:v2];
  v1 = dewPointCelcius__dewPoint;
  dewPointCelcius__dewPoint = v0;
}

+ (CAFUnitHumidity)dewPointFahrenheit
{
  if (dewPointFahrenheit_onceToken != -1)
  {
    +[CAFUnitHumidity dewPointFahrenheit];
  }

  v3 = dewPointFahrenheit__dewPoint;

  return v3;
}

void __37__CAFUnitHumidity_dewPointFahrenheit__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0 constant:273.15];
  v0 = [(NSDimension *)[CAFUnitHumidity alloc] initWithSymbol:@"°F" converter:v2];
  v1 = dewPointFahrenheit__dewPoint;
  dewPointFahrenheit__dewPoint = v0;
}

@end