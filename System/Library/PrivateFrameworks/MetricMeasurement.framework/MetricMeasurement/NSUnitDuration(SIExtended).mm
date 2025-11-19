@interface NSUnitDuration(SIExtended)
+ (id)microseconds;
+ (id)milliseconds;
+ (id)nanoseconds;
@end

@implementation NSUnitDuration(SIExtended)

+ (id)nanoseconds
{
  v0 = objc_alloc(MEMORY[0x277CCADD0]);
  v1 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.000000001];
  v2 = [v0 initWithSymbol:@"ns" converter:v1];

  return v2;
}

+ (id)microseconds
{
  v0 = objc_alloc(MEMORY[0x277CCADD0]);
  v1 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.000001];
  v2 = [v0 initWithSymbol:@"µs" converter:v1];

  return v2;
}

+ (id)milliseconds
{
  v0 = objc_alloc(MEMORY[0x277CCADD0]);
  v1 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.001];
  v2 = [v0 initWithSymbol:@"ms" converter:v1];

  return v2;
}

@end