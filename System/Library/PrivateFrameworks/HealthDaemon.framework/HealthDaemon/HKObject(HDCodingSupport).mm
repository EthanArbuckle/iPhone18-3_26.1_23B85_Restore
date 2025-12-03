@interface HKObject(HDCodingSupport)
- (HDCodableHealthObject)codableRepresentationForSync;
@end

@implementation HKObject(HDCodingSupport)

- (HDCodableHealthObject)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableHealthObject);
  uUID = [self UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
  [(HDCodableHealthObject *)v2 setUuid:hk_dataForUUIDBytes];

  metadata = [self metadata];
  hk_codableMetadata = [metadata hk_codableMetadata];
  [(HDCodableHealthObject *)v2 setMetadataDictionary:hk_codableMetadata];

  _sourceBundleIdentifier = [self _sourceBundleIdentifier];
  [(HDCodableHealthObject *)v2 setSourceBundleIdentifier:_sourceBundleIdentifier];

  metadata2 = [self metadata];
  v9 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277CCC520]];

  if (v9)
  {
    -[HDCodableHealthObject setExternalSyncObjectCode:](v2, "setExternalSyncObjectCode:", [self _externalSyncObjectCode]);
  }

  [self _creationTimestamp];
  if (v10 != 2.22507386e-308)
  {
    [(HDCodableHealthObject *)v2 setCreationDate:?];
  }

  return v2;
}

@end