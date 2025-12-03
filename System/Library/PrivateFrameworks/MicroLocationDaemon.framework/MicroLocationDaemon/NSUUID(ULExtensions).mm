@interface NSUUID(ULExtensions)
+ (BOOL)isNilBoostUUID:()ULExtensions;
+ (id)fromBoostUUID:()ULExtensions;
+ (id)nilUUID;
+ (uint64_t)nilBoostUUID;
- (uint64_t)isNilUUID;
- (uint64_t)toBoostUUID;
@end

@implementation NSUUID(ULExtensions)

+ (id)nilUUID
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v0;
}

+ (uint64_t)nilBoostUUID
{
  v5 = *MEMORY[0x277D85DE8];
  nilUUID = [MEMORY[0x277CCAD78] nilUUID];
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(nilUUID, &v3);

  if ((v4 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  result = v3;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isNilBoostUUID:()ULExtensions
{
  v8 = *MEMORY[0x277D85DE8];
  result = *a3 == [MEMORY[0x277CCAD78] nilBoostUUID] && a3[1] == v4;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)isNilUUID
{
  nilUUID = [MEMORY[0x277CCAD78] nilUUID];
  v3 = [self isEqual:nilUUID];

  return v3;
}

+ (id)fromBoostUUID:()ULExtensions
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];

  return v3;
}

- (uint64_t)toBoostUUID
{
  v5 = *MEMORY[0x277D85DE8];
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(self, &v3);
  if (v4 == 1)
  {
    result = v3;
  }

  else
  {
    result = [MEMORY[0x277CCAD78] nilBoostUUID];
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

@end