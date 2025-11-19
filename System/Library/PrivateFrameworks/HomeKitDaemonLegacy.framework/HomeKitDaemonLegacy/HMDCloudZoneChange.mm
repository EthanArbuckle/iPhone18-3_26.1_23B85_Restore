@interface HMDCloudZoneChange
+ (id)shortDescription;
- (BOOL)controllerIdentifierChanged;
- (BOOL)decryptionFailed;
- (BOOL)doRecordsExistInCache;
- (BOOL)doesRecordExistInCacheWithObjectID:(id)a3;
- (BOOL)doesRecordExistWithObjectID:(id)a3;
- (BOOL)encryptionFailed;
- (BOOL)hasValidChanges;
- (BOOL)moreChangesToProcess;
- (CKRecordID)privateZoneRootRecordID;
- (HMDCloudZone)cloudZone;
- (HMDCloudZoneChange)changeWithObjectID:(id)a3;
- (HMDCloudZoneChange)changeWithRecordName:(id)a3;
- (HMDCloudZoneChange)init;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectChanges;
- (NSArray)processedTransactionStoreRowIDs;
- (id)cachedCloudRecordWithObjectID:(id)a3;
- (id)description;
- (id)shortDescription;
- (void)addChangeWithDeletedRecordID:(id)a3;
- (void)addChangeWithObjectChange:(id)a3;
- (void)addChangeWithRecord:(id)a3;
- (void)cachedCloudRecordWithObjectID:(id)a3 completionHandler:(id)a4;
- (void)fetchBatchToUpload:(id)a3;
- (void)flushAllChangesToCache;
- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)a3;
- (void)removeChangeWithObjectID:(id)a3;
- (void)resetRecordWithRecordID:(id)a3;
- (void)setAllChangedAsProcessed;
- (void)setDeleteAsProcessedWithRecordID:(id)a3;
- (void)setSaveAsProcessedWithRecord:(id)a3;
@end

@implementation HMDCloudZoneChange

- (HMDCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (NSArray)objectChanges
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 objectChanges];

  return v3;
}

- (HMDCloudZoneChange)changeWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [v5 changeWithRecordName:v4];

  return v6;
}

- (HMDCloudZoneChange)changeWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [v5 changeWithObjectID:v4];

  return v6;
}

- (void)flushAllChangesToCache
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v2 flushAllChangesToCache];
}

- (void)setDeleteAsProcessedWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 setDeleteAsProcessedWithRecordID:v4];
}

- (void)resetRecordWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 resetRecordWithRecordID:v4];
}

- (void)setSaveAsProcessedWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 setSaveAsProcessedWithRecord:v4];
}

- (void)fetchBatchToUpload:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 fetchBatchToUpload:v4];
}

- (BOOL)moreChangesToProcess
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 moreChangesToProcess];

  return v3;
}

- (void)setAllChangedAsProcessed
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v2 setAllChangedAsProcessed];
}

- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 loadCloudRecordsAndDetermineDeletesFromCache:v4];
}

- (void)cachedCloudRecordWithObjectID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v8 cachedCloudRecordWithObjectID:v7 completionHandler:v6];
}

- (id)cachedCloudRecordWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [v5 cachedCloudRecordWithObjectID:v4];

  return v6;
}

- (BOOL)doRecordsExistInCache
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 doRecordsExistInCache];

  return v3;
}

- (BOOL)doesRecordExistInCacheWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [v5 cachedCloudRecordWithObjectID:v4];

  return v6 != 0;
}

- (BOOL)doesRecordExistWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  v6 = [v5 cloudRecordWithObjectID:v4];

  return v6 != 0;
}

- (BOOL)hasValidChanges
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 hasValidChanges];

  return v3;
}

- (void)removeChangeWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 removeChangeWithObjectID:v4];
}

- (void)addChangeWithDeletedRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 addChangeWithDeletedRecordID:v4];
}

- (void)addChangeWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 addChangeWithRecord:v4];
}

- (void)addChangeWithObjectChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZoneChange *)self rootGroupChange];
  [v5 addChangeWithObjectChange:v4];
}

- (NSArray)processedTransactionStoreRowIDs
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 processedTransactionStoreRowIDs];

  return v3;
}

- (NSArray)allTransactionStoreRowIDs
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 allTransactionStoreRowIDs];

  return v3;
}

- (CKRecordID)privateZoneRootRecordID
{
  v2 = [(HMDCloudZoneChange *)self cloudZone];
  v3 = [v2 privateZoneRootRecordID];

  return v3;
}

- (BOOL)controllerIdentifierChanged
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 controllerIdentifierChanged];

  return v3;
}

- (BOOL)encryptionFailed
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 encryptionFailed];

  return v3;
}

- (BOOL)decryptionFailed
{
  v2 = [(HMDCloudZoneChange *)self rootGroupChange];
  v3 = [v2 decryptionFailed];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCloudZoneChange *)self shortDescription];
  v5 = [(HMDCloudZoneChange *)self cloudZone];
  v6 = [v3 stringWithFormat:@"<%@, Cloud Zone = %@>", v4, v5];

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDCloudZoneChange *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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