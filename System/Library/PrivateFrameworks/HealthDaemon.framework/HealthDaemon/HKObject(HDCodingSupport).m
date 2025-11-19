@interface HKObject(HDCodingSupport)
- (HDCodableHealthObject)codableRepresentationForSync;
@end

@implementation HKObject(HDCodingSupport)

- (HDCodableHealthObject)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableHealthObject);
  v3 = [a1 UUID];
  v4 = [v3 hk_dataForUUIDBytes];
  [(HDCodableHealthObject *)v2 setUuid:v4];

  v5 = [a1 metadata];
  v6 = [v5 hk_codableMetadata];
  [(HDCodableHealthObject *)v2 setMetadataDictionary:v6];

  v7 = [a1 _sourceBundleIdentifier];
  [(HDCodableHealthObject *)v2 setSourceBundleIdentifier:v7];

  v8 = [a1 metadata];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCC520]];

  if (v9)
  {
    -[HDCodableHealthObject setExternalSyncObjectCode:](v2, "setExternalSyncObjectCode:", [a1 _externalSyncObjectCode]);
  }

  [a1 _creationTimestamp];
  if (v10 != 2.22507386e-308)
  {
    [(HDCodableHealthObject *)v2 setCreationDate:?];
  }

  return v2;
}

@end