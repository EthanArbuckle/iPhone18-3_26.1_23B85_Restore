@interface DMFControlGroupIdentifier(CRKASMAdditions)
+ (id)crk_identifierWithOpaqueString:()CRKASMAdditions;
+ (uint64_t)crk_groupIDWithOpaqueString:()CRKASMAdditions;
@end

@implementation DMFControlGroupIdentifier(CRKASMAdditions)

+ (id)crk_identifierWithOpaqueString:()CRKASMAdditions
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 crk_UUIDWithOpaqueString:v5];
  v7 = [self crk_groupIDWithOpaqueString:v5];

  v8 = [[self alloc] initWithOrganizationUUID:v6 groupID:v7];

  return v8;
}

+ (uint64_t)crk_groupIDWithOpaqueString:()CRKASMAdditions
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += [v3 characterAtIndex:v4++];
    }

    while (v4 < [v3 length]);
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

@end