@interface HMDCloudZoneChange
+ (id)shortDescription;
- (BOOL)controllerIdentifierChanged;
- (BOOL)decryptionFailed;
- (BOOL)doRecordsExistInCache;
- (BOOL)doesRecordExistInCacheWithObjectID:(id)d;
- (BOOL)doesRecordExistWithObjectID:(id)d;
- (BOOL)encryptionFailed;
- (BOOL)hasValidChanges;
- (BOOL)moreChangesToProcess;
- (CKRecordID)privateZoneRootRecordID;
- (HMDCloudZone)cloudZone;
- (HMDCloudZoneChange)changeWithObjectID:(id)d;
- (HMDCloudZoneChange)changeWithRecordName:(id)name;
- (HMDCloudZoneChange)init;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectChanges;
- (NSArray)processedTransactionStoreRowIDs;
- (id)cachedCloudRecordWithObjectID:(id)d;
- (id)description;
- (id)shortDescription;
- (void)addChangeWithDeletedRecordID:(id)d;
- (void)addChangeWithObjectChange:(id)change;
- (void)addChangeWithRecord:(id)record;
- (void)cachedCloudRecordWithObjectID:(id)d completionHandler:(id)handler;
- (void)fetchBatchToUpload:(id)upload;
- (void)flushAllChangesToCache;
- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)cache;
- (void)removeChangeWithObjectID:(id)d;
- (void)resetRecordWithRecordID:(id)d;
- (void)setAllChangedAsProcessed;
- (void)setDeleteAsProcessedWithRecordID:(id)d;
- (void)setSaveAsProcessedWithRecord:(id)record;
@end

@implementation HMDCloudZoneChange

- (HMDCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (NSArray)objectChanges
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  objectChanges = [rootGroupChange objectChanges];

  return objectChanges;
}

- (HMDCloudZoneChange)changeWithRecordName:(id)name
{
  nameCopy = name;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [rootGroupChange changeWithRecordName:nameCopy];

  return v6;
}

- (HMDCloudZoneChange)changeWithObjectID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [rootGroupChange changeWithObjectID:dCopy];

  return v6;
}

- (void)flushAllChangesToCache
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange flushAllChangesToCache];
}

- (void)setDeleteAsProcessedWithRecordID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange setDeleteAsProcessedWithRecordID:dCopy];
}

- (void)resetRecordWithRecordID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange resetRecordWithRecordID:dCopy];
}

- (void)setSaveAsProcessedWithRecord:(id)record
{
  recordCopy = record;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange setSaveAsProcessedWithRecord:recordCopy];
}

- (void)fetchBatchToUpload:(id)upload
{
  uploadCopy = upload;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange fetchBatchToUpload:uploadCopy];
}

- (BOOL)moreChangesToProcess
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  moreChangesToProcess = [rootGroupChange moreChangesToProcess];

  return moreChangesToProcess;
}

- (void)setAllChangedAsProcessed
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange setAllChangedAsProcessed];
}

- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)cache
{
  cacheCopy = cache;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange loadCloudRecordsAndDetermineDeletesFromCache:cacheCopy];
}

- (void)cachedCloudRecordWithObjectID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange cachedCloudRecordWithObjectID:dCopy completionHandler:handlerCopy];
}

- (id)cachedCloudRecordWithObjectID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [rootGroupChange cachedCloudRecordWithObjectID:dCopy];

  return v6;
}

- (BOOL)doRecordsExistInCache
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  doRecordsExistInCache = [rootGroupChange doRecordsExistInCache];

  return doRecordsExistInCache;
}

- (BOOL)doesRecordExistInCacheWithObjectID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [rootGroupChange cachedCloudRecordWithObjectID:dCopy];

  return v6 != 0;
}

- (BOOL)doesRecordExistWithObjectID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [rootGroupChange cloudRecordWithObjectID:dCopy];

  return v6 != 0;
}

- (BOOL)hasValidChanges
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  hasValidChanges = [rootGroupChange hasValidChanges];

  return hasValidChanges;
}

- (void)removeChangeWithObjectID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange removeChangeWithObjectID:dCopy];
}

- (void)addChangeWithDeletedRecordID:(id)d
{
  dCopy = d;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange addChangeWithDeletedRecordID:dCopy];
}

- (void)addChangeWithRecord:(id)record
{
  recordCopy = record;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange addChangeWithRecord:recordCopy];
}

- (void)addChangeWithObjectChange:(id)change
{
  changeCopy = change;
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  [rootGroupChange addChangeWithObjectChange:changeCopy];
}

- (NSArray)processedTransactionStoreRowIDs
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  processedTransactionStoreRowIDs = [rootGroupChange processedTransactionStoreRowIDs];

  return processedTransactionStoreRowIDs;
}

- (NSArray)allTransactionStoreRowIDs
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  allTransactionStoreRowIDs = [rootGroupChange allTransactionStoreRowIDs];

  return allTransactionStoreRowIDs;
}

- (CKRecordID)privateZoneRootRecordID
{
  cloudZone = [(HMDCloudZoneChange *)self cloudZone];
  privateZoneRootRecordID = [cloudZone privateZoneRootRecordID];

  return privateZoneRootRecordID;
}

- (BOOL)controllerIdentifierChanged
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  controllerIdentifierChanged = [rootGroupChange controllerIdentifierChanged];

  return controllerIdentifierChanged;
}

- (BOOL)encryptionFailed
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  encryptionFailed = [rootGroupChange encryptionFailed];

  return encryptionFailed;
}

- (BOOL)decryptionFailed
{
  rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
  decryptionFailed = [rootGroupChange decryptionFailed];

  return decryptionFailed;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudZoneChange *)self shortDescription];
  cloudZone = [(HMDCloudZoneChange *)self cloudZone];
  v6 = [v3 stringWithFormat:@"<%@, Cloud Zone = %@>", shortDescription, cloudZone];

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDCloudZoneChange *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, identifier];

  return v6;
}

- (HMDCloudZoneChange)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end