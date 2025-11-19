@interface HMDCloudTransaction
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
- (HMDCloudTransaction)init;
- (HMDCloudTransaction)initWithType:(unint64_t)a3 temporaryCache:(BOOL)a4 noLocalData:(BOOL)a5;
- (HMDCloudZone)cloudZone;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectChanges;
- (NSArray)processedTransactionStoreRowIDs;
- (id)cachedCloudRecordWithObjectID:(id)a3;
- (id)changeWithObjectID:(id)a3;
- (id)changeWithRecordName:(id)a3;
- (id)description;
- (id)replayTransaction:(id)a3 stagedTransaction:(id)a4;
- (id)shortDescription;
- (void)addChangeWithDeletedRecordID:(id)a3;
- (void)addChangeWithObjectChange:(id)a3;
- (void)addChangeWithRecord:(id)a3;
- (void)cachedCloudRecordWithObjectID:(id)a3 completionHandler:(id)a4;
- (void)fetchBatchToUpload:(id)a3;
- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)a3;
- (void)loadObjectChanges;
- (void)removeChangeWithObjectID:(id)a3;
- (void)resetRecordWithRecordID:(id)a3;
- (void)setAllChangedAsProcessed;
- (void)setDeleteAsProcessedWithRecordID:(id)a3;
- (void)setOsTransaction:(id)a3;
- (void)setSaveAsProcessedWithRecord:(id)a3;
- (void)updateCloudCache;
- (void)updateCloudZone:(id)a3;
@end

@implementation HMDCloudTransaction

- (HMDCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (NSArray)objectChanges
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 objectChanges];

  return v3;
}

- (id)replayTransaction:(id)a3 stagedTransaction:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudTransaction *)self objectChanges];
  v9 = [v8 mutableCopy];

  if (v7)
  {
    [MEMORY[0x277CBEB18] array];
    v23 = v22 = v9;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 objectID];
          v17 = [v6 changeWithObjectID:v16];

          v18 = [v15 objectID];
          v19 = [v7 changeWithObjectID:v18];

          if (v17 | v19)
          {
            [v15 replayChange:v17 stagedChange:v19];
            if ([v15 isDropAndDoNotApply])
            {
              [v23 addObject:v15];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    [v10 removeObjectsInArray:v23];
    v9 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)loadObjectChanges
{
  v2 = [(HMDCloudTransaction *)self objectChanges];
}

- (id)changeWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v5 changeWithRecordName:v4];

  return v6;
}

- (id)changeWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v5 changeWithObjectID:v4];

  return v6;
}

- (void)updateCloudCache
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDCloudTransaction *)self isTemporaryCache])
  {
LABEL_6:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(HMDCloudTransaction *)self decryptionFailed])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Do not update cloud cache for transaction because decryption has failed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_6;
  }

  v8 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v8 flushAllChangesToCache];

  v11 = [(HMDCloudTransaction *)self updatedServerChangeToken];
  v9 = [(HMDCloudTransaction *)self cloudZone];
  [v9 setServerChangeToken:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDeleteAsProcessedWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 setDeleteAsProcessedWithRecordID:v4];
}

- (void)resetRecordWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 resetRecordWithRecordID:v4];
}

- (void)setSaveAsProcessedWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 setSaveAsProcessedWithRecord:v4];
}

- (void)fetchBatchToUpload:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 fetchBatchToUpload:v4];
}

- (BOOL)moreChangesToProcess
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 moreChangesToProcess];

  return v3;
}

- (void)setAllChangedAsProcessed
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v2 setAllChangedAsProcessed];
}

- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];

  if (v4 && !v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to load cached records because cloudZone cannot be not determined", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v4[2](v4, v10);
  }

  v11 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v11 loadCloudRecordsAndDetermineDeletesFromCache:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cachedCloudRecordWithObjectID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v8 cachedCloudRecordWithObjectID:v7 completionHandler:v6];
}

- (id)cachedCloudRecordWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v5 cachedCloudRecordWithObjectID:v4];

  return v6;
}

- (BOOL)doRecordsExistInCache
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 doRecordsExistInCache];

  return v3;
}

- (BOOL)doesRecordExistInCacheWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v5 doesRecordExistInCacheWithObjectID:v4];

  return v6;
}

- (BOOL)doesRecordExistWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v5 doesRecordExistWithObjectID:v4];

  return v6;
}

- (BOOL)hasValidChanges
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 hasValidChanges];

  return v3;
}

- (void)removeChangeWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 removeChangeWithObjectID:v4];
}

- (void)addChangeWithDeletedRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 addChangeWithDeletedRecordID:v4];
}

- (void)addChangeWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 addChangeWithRecord:v4];
}

- (void)addChangeWithObjectChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  [v5 addChangeWithObjectChange:v4];
}

- (NSArray)processedTransactionStoreRowIDs
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 processedTransactionStoreRowIDs];

  return v3;
}

- (NSArray)allTransactionStoreRowIDs
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 allTransactionStoreRowIDs];

  return v3;
}

- (CKRecordID)privateZoneRootRecordID
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 privateZoneRootRecordID];

  return v3;
}

- (BOOL)controllerIdentifierChanged
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 controllerIdentifierChanged];

  return v3;
}

- (BOOL)encryptionFailed
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 encryptionFailed];

  return v3;
}

- (BOOL)decryptionFailed
{
  v2 = [(HMDCloudTransaction *)self cloudZoneChange];
  v3 = [v2 decryptionFailed];

  return v3;
}

- (void)setOsTransaction:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
    osTransaction = self->_osTransaction;
    self->_osTransaction = v5;
  }

  else
  {
    [(HMDCloudTransaction *)self setCloudZoneChange:0];
    osTransaction = self->_osTransaction;
    self->_osTransaction = 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCloudTransaction *)self shortDescription];
  v5 = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v3 stringWithFormat:@"<%@, Cloud Zone Change = %@>", v4, v5];

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDCloudTransaction *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [(HMDCloudTransaction *)self transactionType];
  if (v7 > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_279732FF8[v7];
  }

  v9 = [v3 stringWithFormat:@"%@ %@, Type = %@", v4, v6, v8];

  return v9;
}

- (void)updateCloudZone:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_cloudZone, v4);
  v5 = [v4 createCloudZoneChangeTemporaryCache:{-[HMDCloudTransaction isTemporaryCache](self, "isTemporaryCache")}];

  cloudZoneChange = self->_cloudZoneChange;
  self->_cloudZoneChange = v5;
}

- (HMDCloudTransaction)initWithType:(unint64_t)a3 temporaryCache:(BOOL)a4 noLocalData:(BOOL)a5
{
  v12.receiver = self;
  v12.super_class = HMDCloudTransaction;
  v8 = [(HMDCloudTransaction *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_transactionType = a3;
    v8->_temporaryCache = a4;
    v8->_zoneHasNoLocalData = a5;
  }

  return v8;
}

- (HMDCloudTransaction)init
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