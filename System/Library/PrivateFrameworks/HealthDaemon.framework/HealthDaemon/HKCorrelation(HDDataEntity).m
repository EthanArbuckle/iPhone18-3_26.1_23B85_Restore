@interface HKCorrelation(HDDataEntity)
- (BOOL)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:;
- (id)hd_relatedJournalEntriesWithProfile:()HDDataEntity;
@end

@implementation HKCorrelation(HDDataEntity)

- (BOOL)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:
{
  v12 = a5;
  v13 = a6;
  v18.receiver = a1;
  v18.super_class = &off_283D43988;
  if (objc_msgSendSuper2(&v18, sel_hd_insertRelatedDataWithPersistentID_insertionContext_profile_transaction_error_, a3, a4, v12, v13, a7))
  {
    v14 = [a1 objects];
    v15 = [v14 allObjects];
    v16 = [HDAssociationEntity insertEntriesWithAssociation:a1 objects:v15 type:0 behavior:0 destinationSubObject:0 enforceSameSource:1 profile:v12 transaction:v13 error:a7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)hd_relatedJournalEntriesWithProfile:()HDDataEntity
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 objects];
  v6 = [v5 allObjects];
  v7 = [HDAssociationEntity journalEntryForAssociation:a1 objects:v6 profile:v4];

  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end