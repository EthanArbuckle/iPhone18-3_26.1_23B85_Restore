@interface NSString(HMB)
+ (__CFString)hmbDescriptionForEncodedQueryableVariable:()HMB;
+ (id)hmbDecodeQueryableParameter:()HMB;
@end

@implementation NSString(HMB)

+ (__CFString)hmbDescriptionForEncodedQueryableVariable:()HMB
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(v3 encoding:{"bytes"), 2415919360}];
  }

  else
  {
    v4 = @"<NULL STRING>";
  }

  return v4;
}

+ (id)hmbDecodeQueryableParameter:()HMB
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:2415919360];

  return v5;
}

@end