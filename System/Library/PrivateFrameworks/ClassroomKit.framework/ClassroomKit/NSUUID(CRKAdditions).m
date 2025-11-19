@interface NSUUID(CRKAdditions)
+ (id)crk_zerosUUID;
@end

@implementation NSUUID(CRKAdditions)

+ (id)crk_zerosUUID
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v0;
}

@end