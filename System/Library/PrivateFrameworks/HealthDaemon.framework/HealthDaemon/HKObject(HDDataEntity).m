@interface HKObject(HDDataEntity)
- (uint64_t)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:;
@end

@implementation HKObject(HDDataEntity)

- (uint64_t)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 metadata];
  if (v16)
  {
    v17 = [v14 metadataManager];
    v18 = [v13 provenance];
    v19 = [v18 sourceID];
    v20 = [v17 insertMetadata:v16 forObjectID:v12 sourceID:v19 externalSyncObjectCode:objc_msgSend(a1 objectDeleted:"_externalSyncObjectCode") transaction:0 error:{v15, a7}];
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

@end