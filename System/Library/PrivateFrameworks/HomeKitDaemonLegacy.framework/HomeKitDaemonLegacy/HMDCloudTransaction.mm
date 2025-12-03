@interface HMDCloudTransaction
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
- (HMDCloudTransaction)init;
- (HMDCloudTransaction)initWithType:(unint64_t)type temporaryCache:(BOOL)cache noLocalData:(BOOL)data;
- (HMDCloudZone)cloudZone;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectChanges;
- (NSArray)processedTransactionStoreRowIDs;
- (id)cachedCloudRecordWithObjectID:(id)d;
- (id)changeWithObjectID:(id)d;
- (id)changeWithRecordName:(id)name;
- (id)description;
- (id)replayTransaction:(id)transaction stagedTransaction:(id)stagedTransaction;
- (id)shortDescription;
- (void)addChangeWithDeletedRecordID:(id)d;
- (void)addChangeWithObjectChange:(id)change;
- (void)addChangeWithRecord:(id)record;
- (void)cachedCloudRecordWithObjectID:(id)d completionHandler:(id)handler;
- (void)fetchBatchToUpload:(id)upload;
- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)cache;
- (void)loadObjectChanges;
- (void)removeChangeWithObjectID:(id)d;
- (void)resetRecordWithRecordID:(id)d;
- (void)setAllChangedAsProcessed;
- (void)setDeleteAsProcessedWithRecordID:(id)d;
- (void)setOsTransaction:(id)transaction;
- (void)setSaveAsProcessedWithRecord:(id)record;
- (void)updateCloudCache;
- (void)updateCloudZone:(id)zone;
@end

@implementation HMDCloudTransaction

- (HMDCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (NSArray)objectChanges
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  objectChanges = [cloudZoneChange objectChanges];

  return objectChanges;
}

- (id)replayTransaction:(id)transaction stagedTransaction:(id)stagedTransaction
{
  v29 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  stagedTransactionCopy = stagedTransaction;
  objectChanges = [(HMDCloudTransaction *)self objectChanges];
  v9 = [objectChanges mutableCopy];

  if (stagedTransactionCopy)
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
          objectID = [v15 objectID];
          v17 = [transactionCopy changeWithObjectID:objectID];

          objectID2 = [v15 objectID];
          v19 = [stagedTransactionCopy changeWithObjectID:objectID2];

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
  objectChanges = [(HMDCloudTransaction *)self objectChanges];
}

- (id)changeWithRecordName:(id)name
{
  nameCopy = name;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [cloudZoneChange changeWithRecordName:nameCopy];

  return v6;
}

- (id)changeWithObjectID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [cloudZoneChange changeWithObjectID:dCopy];

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
    selfCopy = self;
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

  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange flushAllChangesToCache];

  updatedServerChangeToken = [(HMDCloudTransaction *)self updatedServerChangeToken];
  cloudZone = [(HMDCloudTransaction *)self cloudZone];
  [cloudZone setServerChangeToken:updatedServerChangeToken];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDeleteAsProcessedWithRecordID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange setDeleteAsProcessedWithRecordID:dCopy];
}

- (void)resetRecordWithRecordID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange resetRecordWithRecordID:dCopy];
}

- (void)setSaveAsProcessedWithRecord:(id)record
{
  recordCopy = record;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange setSaveAsProcessedWithRecord:recordCopy];
}

- (void)fetchBatchToUpload:(id)upload
{
  uploadCopy = upload;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange fetchBatchToUpload:uploadCopy];
}

- (BOOL)moreChangesToProcess
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  moreChangesToProcess = [cloudZoneChange moreChangesToProcess];

  return moreChangesToProcess;
}

- (void)setAllChangedAsProcessed
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange setAllChangedAsProcessed];
}

- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)cache
{
  v15 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];

  if (cacheCopy && !cloudZoneChange)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    cacheCopy[2](cacheCopy, v10);
  }

  cloudZoneChange2 = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange2 loadCloudRecordsAndDetermineDeletesFromCache:cacheCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cachedCloudRecordWithObjectID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange cachedCloudRecordWithObjectID:dCopy completionHandler:handlerCopy];
}

- (id)cachedCloudRecordWithObjectID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [cloudZoneChange cachedCloudRecordWithObjectID:dCopy];

  return v6;
}

- (BOOL)doRecordsExistInCache
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  doRecordsExistInCache = [cloudZoneChange doRecordsExistInCache];

  return doRecordsExistInCache;
}

- (BOOL)doesRecordExistInCacheWithObjectID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [cloudZoneChange doesRecordExistInCacheWithObjectID:dCopy];

  return v6;
}

- (BOOL)doesRecordExistWithObjectID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [cloudZoneChange doesRecordExistWithObjectID:dCopy];

  return v6;
}

- (BOOL)hasValidChanges
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  hasValidChanges = [cloudZoneChange hasValidChanges];

  return hasValidChanges;
}

- (void)removeChangeWithObjectID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange removeChangeWithObjectID:dCopy];
}

- (void)addChangeWithDeletedRecordID:(id)d
{
  dCopy = d;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange addChangeWithDeletedRecordID:dCopy];
}

- (void)addChangeWithRecord:(id)record
{
  recordCopy = record;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange addChangeWithRecord:recordCopy];
}

- (void)addChangeWithObjectChange:(id)change
{
  changeCopy = change;
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  [cloudZoneChange addChangeWithObjectChange:changeCopy];
}

- (NSArray)processedTransactionStoreRowIDs
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  processedTransactionStoreRowIDs = [cloudZoneChange processedTransactionStoreRowIDs];

  return processedTransactionStoreRowIDs;
}

- (NSArray)allTransactionStoreRowIDs
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  allTransactionStoreRowIDs = [cloudZoneChange allTransactionStoreRowIDs];

  return allTransactionStoreRowIDs;
}

- (CKRecordID)privateZoneRootRecordID
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  privateZoneRootRecordID = [cloudZoneChange privateZoneRootRecordID];

  return privateZoneRootRecordID;
}

- (BOOL)controllerIdentifierChanged
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  controllerIdentifierChanged = [cloudZoneChange controllerIdentifierChanged];

  return controllerIdentifierChanged;
}

- (BOOL)encryptionFailed
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  encryptionFailed = [cloudZoneChange encryptionFailed];

  return encryptionFailed;
}

- (BOOL)decryptionFailed
{
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  decryptionFailed = [cloudZoneChange decryptionFailed];

  return decryptionFailed;
}

- (void)setOsTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = transactionCopy;
  if (transactionCopy)
  {
    v5 = transactionCopy;
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
  shortDescription = [(HMDCloudTransaction *)self shortDescription];
  cloudZoneChange = [(HMDCloudTransaction *)self cloudZoneChange];
  v6 = [v3 stringWithFormat:@"<%@, Cloud Zone Change = %@>", shortDescription, cloudZoneChange];

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDCloudTransaction *)self identifier];
  uUIDString = [identifier UUIDString];
  transactionType = [(HMDCloudTransaction *)self transactionType];
  if (transactionType > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_279732FF8[transactionType];
  }

  v9 = [v3 stringWithFormat:@"%@ %@, Type = %@", shortDescription, uUIDString, v8];

  return v9;
}

- (void)updateCloudZone:(id)zone
{
  zoneCopy = zone;
  objc_storeWeak(&self->_cloudZone, zoneCopy);
  v5 = [zoneCopy createCloudZoneChangeTemporaryCache:{-[HMDCloudTransaction isTemporaryCache](self, "isTemporaryCache")}];

  cloudZoneChange = self->_cloudZoneChange;
  self->_cloudZoneChange = v5;
}

- (HMDCloudTransaction)initWithType:(unint64_t)type temporaryCache:(BOOL)cache noLocalData:(BOOL)data
{
  v12.receiver = self;
  v12.super_class = HMDCloudTransaction;
  v8 = [(HMDCloudTransaction *)&v12 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = uUID;

    v8->_transactionType = type;
    v8->_temporaryCache = cache;
    v8->_zoneHasNoLocalData = data;
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