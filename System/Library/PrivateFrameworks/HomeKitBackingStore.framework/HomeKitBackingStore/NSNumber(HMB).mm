@interface NSNumber(HMB)
+ (id)hmbDecodeQueryableParameter:()HMB;
+ (id)hmbDescriptionForEncodedQueryableVariable:()HMB;
+ (id)hmbEncodeQueryableParameter:()HMB;
@end

@implementation NSNumber(HMB)

+ (id)hmbDescriptionForEncodedQueryableVariable:()HMB
{
  v3 = a3;
  if ([v3 length] == 8)
  {
    bytes = [v3 bytes];

    hmbDescription = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bswap64(*bytes)];
    [hmbDescription description];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    hmbDescription = [v3 hmbDescription];

    [v6 stringWithFormat:@"<MALFORMED NUMBER: %@>", hmbDescription];
  }
  v7 = ;

  return v7;
}

+ (id)hmbDecodeQueryableParameter:()HMB
{
  v3 = a3;
  if ([v3 length] == 8)
  {
    bytes = [v3 bytes];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bswap64(*bytes)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)hmbEncodeQueryableParameter:()HMB
{
  v3 = a3;
  if ([v3 integerValue] < 0)
  {

    v3 = &unk_283EB9E88;
  }

  v6 = bswap64([v3 unsignedIntegerValue]);
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:8];

  return v4;
}

@end