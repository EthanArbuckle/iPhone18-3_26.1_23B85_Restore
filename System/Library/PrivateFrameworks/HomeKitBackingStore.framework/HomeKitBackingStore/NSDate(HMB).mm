@interface NSDate(HMB)
+ (id)hmbDescriptionForEncodedQueryableVariable:()HMB;
+ (id)hmbEncodeQueryableParameter:()HMB;
+ (uint64_t)hmbDecodeQueryableParameter:()HMB;
@end

@implementation NSDate(HMB)

+ (id)hmbDescriptionForEncodedQueryableVariable:()HMB
{
  v3 = a3;
  if ([v3 length] == 8)
  {
    v4 = [v3 bytes];

    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:bswap64(*v4)];
    [v5 description];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v5 = [v3 hmbDescription];

    [v6 stringWithFormat:@"<MALFORMED INTERVAL: %@>", v5];
  }
  v7 = ;

  return v7;
}

+ (uint64_t)hmbDecodeQueryableParameter:()HMB
{
  v0 = [MEMORY[0x277CCABB0] hmbDecodeQueryableParameter:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  v3 = MEMORY[0x277CBEAA8];
  [v2 doubleValue];
  v5 = v4;

  return [v3 dateWithTimeIntervalSinceReferenceDate:v5];
}

+ (id)hmbEncodeQueryableParameter:()HMB
{
  v3 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  v5 = [v3 hmbEncodeQueryableParameter:v4];

  return v5;
}

@end