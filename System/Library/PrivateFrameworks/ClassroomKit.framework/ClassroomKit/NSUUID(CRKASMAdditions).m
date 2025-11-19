@interface NSUUID(CRKASMAdditions)
+ (id)crk_UUIDWithOpaqueData:()CRKASMAdditions;
+ (id)crk_UUIDWithOpaqueString:()CRKASMAdditions;
+ (int8x16_t)crk_condense32BytesIntoFirst16Bytes:()CRKASMAdditions;
@end

@implementation NSUUID(CRKASMAdditions)

+ (id)crk_UUIDWithOpaqueString:()CRKASMAdditions
{
  v4 = [a3 dataUsingEncoding:4];
  v5 = [a1 crk_UUIDWithOpaqueData:v4];

  return v5;
}

+ (id)crk_UUIDWithOpaqueData:()CRKASMAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  CC_SHA256(v7, v8, md);
  [a1 crk_condense32BytesIntoFirst16Bytes:md];
  v9 = [[a1 alloc] initWithUUIDBytes:md];

  return v9;
}

+ (int8x16_t)crk_condense32BytesIntoFirst16Bytes:()CRKASMAdditions
{
  result = veorq_s8(a3[1], *a3);
  *a3 = result;
  return result;
}

@end