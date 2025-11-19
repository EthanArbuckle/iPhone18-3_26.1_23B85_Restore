@interface _MKFMatterLocalKeyValuePair
+ (NSPredicate)homeRelation;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFMatterLocalKeyValuePairDatabaseID)databaseID;
@end

@implementation _MKFMatterLocalKeyValuePair

- (MKFMatterLocalKeyValuePairDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFMatterLocalKeyValuePairDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v12.receiver = self;
  v12.super_class = _MKFMatterLocalKeyValuePair;
  v5 = [(HMDManagedObject *)&v12 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(_MKFMatterLocalKeyValuePair *)self valueForKey:@"home"];

    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is required", @"home"];
      v9 = [v7 hmd_validationErrorWithDescription:v8 managedObject:self attributeName:@"home"];

      if (a3)
      {
        v10 = v9;
        *a3 = v9;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t1_173277 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t1_173277, &__block_literal_global_173278);
  }

  v3 = homeRelation__hmf_once_v2_173279;

  return v3;
}

@end