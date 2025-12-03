@interface HMDManagedObjectCodingChangeDetails
- (id)changedAttributeKeys;
- (id)changedRelationshipKeys;
- (void)addChangedRelationshipCodingKey:(uint64_t)key;
@end

@implementation HMDManagedObjectCodingChangeDetails

- (id)changedAttributeKeys
{
  v1 = *(self + 8);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  return v2;
}

- (id)changedRelationshipKeys
{
  v1 = *(self + 16);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  return v2;
}

- (void)addChangedRelationshipCodingKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    v4 = *(key + 16);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [MEMORY[0x277CBEB58] setWithObject:v3];
      v6 = *(key + 16);
      *(key + 16) = v5;
    }

    v3 = v7;
  }
}

@end