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
  metadata = [self metadata];
  if (metadata)
  {
    metadataManager = [v14 metadataManager];
    provenance = [v13 provenance];
    sourceID = [provenance sourceID];
    v20 = [metadataManager insertMetadata:metadata forObjectID:v12 sourceID:sourceID externalSyncObjectCode:objc_msgSend(self objectDeleted:"_externalSyncObjectCode") transaction:0 error:{v15, a7}];
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

@end