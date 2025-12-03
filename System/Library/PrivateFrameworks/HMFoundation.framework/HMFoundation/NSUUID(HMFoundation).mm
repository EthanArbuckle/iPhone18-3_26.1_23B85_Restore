@interface NSUUID(HMFoundation)
+ (NSString)shortDescription;
+ (id)hmf_UUIDWithBytesAsData:()HMFoundation;
+ (id)hmf_zeroUUID;
- (id)hmf_bytesAsData;
- (id)shortDescription;
- (uint64_t)hmf_isEqualToUUID:()HMFoundation;
- (uint64_t)hmf_isEqualToUUIDString:()HMFoundation;
@end

@implementation NSUUID(HMFoundation)

+ (id)hmf_zeroUUID
{
  if (qword_280AFC688 != -1)
  {
    dispatch_once(&qword_280AFC688, &__block_literal_global_38);
  }

  v1 = _MergedGlobals_70;

  return v1;
}

- (id)shortDescription
{
  uUIDString = [self UUIDString];
  v2 = [uUIDString substringToIndex:8];

  return v2;
}

+ (id)hmf_UUIDWithBytesAsData:()HMFoundation
{
  v3 = a3;
  if ([v3 length] == 16)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hmf_bytesAsData
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (uint64_t)hmf_isEqualToUUID:()HMFoundation
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [self isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)hmf_isEqualToUUIDString:()HMFoundation
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  if (v6)
  {
    v7 = [self hmf_isEqualToUUID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end