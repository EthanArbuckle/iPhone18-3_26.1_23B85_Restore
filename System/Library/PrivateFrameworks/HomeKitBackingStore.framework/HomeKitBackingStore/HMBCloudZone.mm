@interface HMBCloudZone
+ (id)logCategory;
- (BOOL)handleUpdatedShare:(id)share error:(id *)error;
- (BOOL)handleUpdatedShareParticipantRecord:(id)record error:(id *)error;
- (BOOL)hasPerformedInitialFetch;
- (BOOL)isInternalModel:(id)model;
- (BOOL)isZoneRebuildInProgress;
- (BOOL)populateManateeCloudRecord:(id)record withModel:(id)model encodingContext:(id)context error:(id *)error;
- (BOOL)populateV4CloudRecord:(id)record withModel:(id)model metadataFieldData:(id)data startEncoding:(unint64_t)encoding endEncoding:(unint64_t)endEncoding encodingContext:(id)context error:(id *)error;
- (BOOL)resolveConflicts:(id)conflicts options:(id)options;
- (BOOL)retryCloudKitOperation:(id)operation afterError:(id)error retryBlock:(id)block;
- (BOOL)retryStartupWithCloudDatabase:(id)database afterError:(id)error retryBlock:(id)block;
- (HMBCloudDatabase)cloudDatabase;
- (HMBCloudZone)initWithCloudDatabase:(id)database configuration:(id)configuration state:(id)state;
- (HMBCloudZoneDelegate)delegate;
- (HMBLocalZone)localZone;
- (HMBLocalZone)stateZone;
- (HMBModelContainer)modelContainer;
- (NAFuture)waitForPendingRebuild;
- (NSSet)participants;
- (NSSet)subscriptions;
- (id)_addShareOperationAfterStartupWithName:(id)name block:(id)block;
- (id)_addShareOperationWithName:(id)name block:(id)block;
- (id)_createShareModel;
- (id)_fetchInvitationWithContext:(id)context usingShare:(id)share;
- (id)_fetchRecordsWithRecordIDs:(id)ds canRetry:(BOOL)retry;
- (id)_performCloudPullWithOptions:(id)options useCachedServerToken:(BOOL)token;
- (id)_performImmediateCloudPullWithOptions:(id)options useCachedServerToken:(BOOL)token;
- (id)_pushDeletedParticipantRecordIDs:(id)ds;
- (id)_pushUpdatedShare:(id)share;
- (id)_pushUpdatedShare:(id)share participantRecord:(id)record;
- (id)_revokeShareAccessForParticipant:(id)participant usingShare:(id)share;
- (id)_setWriteAccessEnabled:(BOOL)enabled forParticipant:(id)participant usingShare:(id)share;
- (id)_syncInternalModels;
- (id)_triggerOutputForOutputRow:(unint64_t)row options:(id)options;
- (id)attributeDescriptions;
- (id)cloudMetadataForModel:(id)model usingEncoding:(unint64_t)encoding;
- (id)createShareModel;
- (id)createZoneState;
- (id)decodeManateeCloudFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error;
- (id)decodeModelFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error;
- (id)decodeShareModelFromShare:(id)share;
- (id)destroy;
- (id)encodeManateeCloudModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error;
- (id)encodeRecordFromModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error;
- (id)encodeRecordFromModel:(id)model existingRecord:(id)record error:(id *)error;
- (id)encodeShareModel:(id)model;
- (id)fetchChangesWithToken:(id)token options:(id)options;
- (id)fetchCloudShareIDForShareParticipantClientIdentifier:(id)identifier;
- (id)fetchCompleteModel:(id)model;
- (id)fetchCompleteModelForRecordID:(id)d;
- (id)fetchCompleteModelWithID:(id)d;
- (id)fetchCompleteModels:(id)models;
- (id)fetchCompleteModelsForRecordIDs:(id)ds;
- (id)fetchCompleteModelsWithIDs:(id)ds;
- (id)fetchCurrentParticipantCloudShareID;
- (id)fetchInvitationWithContext:(id)context;
- (id)fetchOwnerParticipantCloudShareID;
- (id)fetchRecordsWithRecordIDs:(id)ds;
- (id)flush;
- (id)leaveCloudShareRequestingNewInvitationToken:(BOOL)token;
- (id)logIdentifier;
- (id)participantWithClientIdentifier:(id)identifier;
- (id)pushRecordsToUpdate:(id)update recordIDsToRemove:(id)remove configuration:(id)configuration rollbackEnabled:(BOOL)enabled needsNewInvitationToken:(BOOL)token;
- (id)queryRecordsWithType:(id)type;
- (id)recordIDForModel:(id)model;
- (id)registerSubscriptionForExternalRecordType:(id)type;
- (id)revokeShareAccessForParticipant:(id)participant;
- (id)setWriteAccessEnabled:(BOOL)enabled forParticipant:(id)participant;
- (id)shutdown;
- (id)startUpRebuilderIfNeeded;
- (id)triggerOutputForOutputRow:(unint64_t)row options:(id)options;
- (id)unregisterSubscriptionForExternalRecordType:(id)type;
- (int64_t)keyStatus;
- (void)_fetchRecordsForContexts:(id)contexts;
- (void)_startUpWithLocalZone:(id)zone;
- (void)_startUpWithPublicLocalZone:(id)zone;
- (void)dealloc;
- (void)handleDeletion;
- (void)handleLostKeys;
- (void)handleUpdatedInternalModels:(id)models;
- (void)handleUpdatedRebuilderModel:(id)model;
- (void)handleUpdatedShareModel:(id)model;
- (void)handleUpdatedShareParticipantModels:(id)models;
- (void)handleZoneChangedNotification;
- (void)initializeShareModels;
- (void)notifyDelegateOfError:(id)error forOperation:(id)operation;
- (void)pushGroupWithBlockRow:(unint64_t)row tuples:(id)tuples options:(id)options activity:(id)activity completionPromise:(id)promise;
- (void)rebuild;
- (void)startUpWithLocalZone:(id)zone;
@end

@implementation HMBCloudZone

- (id)encodeRecordFromModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error
{
  modelCopy = model;
  recordCopy = record;
  contextCopy = context;
  modelContainer = [contextCopy modelContainer];
  [modelCopy hmbAssociateWithContainer:modelContainer];

  v14 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [(HMBCloudZone *)self encodeShareModel:v16];
  }

  else
  {
    [(HMBCloudZone *)self encodeManateeCloudModel:v14 existingRecord:recordCopy encodingContext:contextCopy error:error];
  }
  v17 = ;

  return v17;
}

- (id)encodeRecordFromModel:(id)model existingRecord:(id)record error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordCopy = record;
  modelContainer = [(HMBCloudZone *)self modelContainer];
  if (modelContainer)
  {
    v11 = [[HMBCloudZoneEncodingContext alloc] initWithModelContainer:modelContainer];
    v12 = [(HMBCloudZone *)self encodeRecordFromModel:modelCopy existingRecord:recordCopy encodingContext:v11 error:error];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      hmbDescription = [modelCopy hmbDescription];
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = hmbDescription;
      _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode record from model %{public}@: Model container is nil", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:8 reason:@"Model container is nil"];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)decodeModelFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error
{
  recordCopy = record;
  fieldsCopy = fields;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = recordCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (v13)
  {
    [(HMBCloudZone *)self decodeShareModelFromShare:v13];
  }

  else
  {
    [(HMBCloudZone *)self decodeManateeCloudFromRecord:recordCopy externalRecordFields:fieldsCopy source:source error:error];
  }
  v14 = ;

  return v14;
}

- (void)rebuild
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __getRebuilder(self);
  v4 = v3;
  if (v3)
  {
    [v3 rebuild];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received -[rebuild] on a HMBCloudZone without a rebuilder", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedRebuilderModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = modelCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving updated rebuilder model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  localZone = [(HMBCloudZone *)selfCopy localZone];
  v17 = modelCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v11 = [localZone update:v10];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to update rebuilder model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleZoneChangedNotification
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __getRebuilder(self);
  v4 = v3;
  if (v3)
  {
    [v3 handleZoneChanged];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received -[handleZoneChangedNotification] on a HMBCloudZone without a rebuilder", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isZoneRebuildInProgress
{
  v2 = __getRebuilder(self);
  v3 = v2;
  if (v2)
  {
    isZoneRebuildInProgress = [v2 isZoneRebuildInProgress];
  }

  else
  {
    isZoneRebuildInProgress = 0;
  }

  return isZoneRebuildInProgress;
}

- (void)handleLostKeys
{
  v3 = __createRebuilderIfNeeded(self);
  v4 = v3;
  if (v3)
  {
    [v3 handleIdentityLost];
    rebuildCompleteFuture = [v4 rebuildCompleteFuture];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__HMBCloudZone_Rebuild_Internal__handleLostKeys__block_invoke;
    v7[3] = &unk_2786E1E10;
    v7[4] = self;
    v6 = [rebuildCompleteFuture addSuccessBlock:v7];
  }
}

- (id)startUpRebuilderIfNeeded
{
  v3 = __createRebuilderIfNeeded(self);
  v4 = v3;
  if (v3)
  {
    zoneStartUp = [v3 zoneStartUp];
    rebuildCompleteFuture = [v4 rebuildCompleteFuture];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HMBCloudZone_Rebuild_Internal__startUpRebuilderIfNeeded__block_invoke;
    v9[3] = &unk_2786E1E10;
    v9[4] = self;
    v7 = [rebuildCompleteFuture addSuccessBlock:v9];
  }

  else
  {
    zoneStartUp = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return zoneStartUp;
}

- (NAFuture)waitForPendingRebuild
{
  v2 = __getRebuilder(self);
  v3 = v2;
  if (v2)
  {
    [v2 rebuildCompleteFuture];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

- (int64_t)keyStatus
{
  v2 = __getRebuilder(self);
  v3 = v2;
  if (v2)
  {
    rebuilderStatus = [v2 rebuilderStatus];
    keyStatus = [rebuilderStatus keyStatus];
  }

  else
  {
    keyStatus = 0;
  }

  return keyStatus;
}

- (id)decodeShareModelFromShare:(id)share
{
  shareCopy = share;
  recordID = [shareCopy recordID];
  recordName = [recordID recordName];
  v7 = [recordName isEqualToString:*MEMORY[0x277CBC020]];

  if (!v7)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    recordID2 = [shareCopy recordID];
    recordName2 = [recordID2 recordName];
    v10 = [uUID initWithUUIDString:recordName2];
    goto LABEL_5;
  }

  recordID2 = [(HMBCloudZone *)self shareModel];
  hmbModelID = [recordID2 hmbModelID];
  if (hmbModelID)
  {
    v10 = hmbModelID;
    recordName2 = v10;
LABEL_5:
    uUID2 = v10;
    goto LABEL_6;
  }

  uUID2 = [MEMORY[0x277CCAD78] UUID];
  recordName2 = 0;
LABEL_6:

  v14 = [HMBCloudZoneShareModel alloc];
  stateModelID = [(HMBCloudZone *)self stateModelID];
  v16 = [(HMBModel *)v14 initWithModelID:uUID2 parentModelID:stateModelID];

  [(HMBCloudZoneShareModel *)v16 setShare:shareCopy];

  return v16;
}

- (id)encodeShareModel:(id)model
{
  share = [model share];
  v4 = [share copy];

  return v4;
}

- (HMBLocalZone)stateZone
{
  WeakRetained = objc_loadWeakRetained(&self->_stateZone);

  return WeakRetained;
}

- (HMBCloudDatabase)cloudDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudDatabase);

  return WeakRetained;
}

- (HMBLocalZone)localZone
{
  WeakRetained = objc_loadWeakRetained(&self->_localZone);

  return WeakRetained;
}

- (HMBCloudZoneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  zoneID = [(HMBCloudZone *)self zoneID];
  v5 = [v3 initWithName:@"Zone ID" value:zoneID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  zoneID = [cloudZoneID zoneID];
  hmbDescription = [zoneID hmbDescription];

  return hmbDescription;
}

- (id)createZoneState
{
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  scope = [cloudZoneID scope];

  if (scope == 2)
  {
    v5 = MEMORY[0x277D2C900];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__HMBCloudZone_createZoneState__block_invoke;
    v11[3] = &unk_2786E10F8;
    v11[4] = self;
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v7 = [v5 lazyFutureWithBlock:v11 scheduler:immediateScheduler];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    __31__HMBCloudZone_createZoneState__block_invoke(v9, v10);
  }

  return result;
}

void __31__HMBCloudZone_createZoneState__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) cloudDatabase];
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_17:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [*(a1 + 32) localZone];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  v30 = 0;
  v9 = [v5 reopenOrRecreatePrivateZone:v8 error:&v30];
  v10 = v30;
  if (v9)
  {
    v11 = [v5 localDatabase];
    v29 = v10;
    v12 = [v11 reopenZone:v7 error:&v29];
    v13 = v29;

    if (v12)
    {
      v14 = [*(a1 + 32) cloudZoneID];
      v15 = [v5 needsZoneCreationForZoneWithID:v14];

      if (v15)
      {
        v16 = [*(a1 + 32) cloudZoneID];
        v17 = [v5 createPrivateZoneWithID:v16];
        v18 = [v3 completionHandlerAdapter];
        v19 = [v17 addCompletionBlock:v18];
      }

      else
      {
        [v3 finishWithNoResult];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v27;
        v33 = 2114;
        v34 = v13;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to re-open or re-create local zone during startup: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      [v3 finishWithError:v13];
    }

    v10 = v13;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to re-open or re-create private cloud zone during startup: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    [v3 finishWithError:v10];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleDeletion
{
  v7[1] = *MEMORY[0x277D85DE8];
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  v7[0] = cloudZoneID;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [cloudDatabase handleRemovedZoneIDs:v5 userInitiated:1];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedInternalModels:(id)models
{
  v40 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v5 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = modelsCopy;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v32;
    selfCopy = self;
    v29 = v6;
    v30 = v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          v15 = v14;
          v16 = v9;
          v9 = v12;
        }

        else
        {
          v17 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v16 = v18;

          if (v16)
          {
            [v5 addObject:v16];
          }

          else
          {
            v19 = v17;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;

            if (v21)
            {
              [(HMBCloudZone *)self handleUpdatedRebuilderModel:v21];
            }

            else
            {
              v22 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v24 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v25 = v27 = v22;
                *buf = 138543618;
                v36 = v25;
                v37 = 2112;
                v38 = v19;
                _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Asked to handle unexpected updated model: %@", buf, 0x16u);

                v22 = v27;
              }

              objc_autoreleasePoolPop(v22);
              self = selfCopy;
            }

            v16 = 0;
            v6 = v29;
            v5 = v30;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v5 count])
  {
    [(HMBCloudZone *)self handleUpdatedShareParticipantModels:v5];
  }

  if (v9)
  {
    [(HMBCloudZone *)self handleUpdatedShareModel:v9];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInternalModel:(id)model
{
  modelCopy = model;
  hmbType = [modelCopy hmbType];
  if ([hmbType isEqualToString:@"HMBCloudZoneShareModel"])
  {
    v5 = 1;
  }

  else
  {
    hmbType2 = [modelCopy hmbType];
    if ([hmbType2 isEqualToString:@"HMBCloudZoneShareParticipantModel"])
    {
      v5 = 1;
    }

    else
    {
      hmbType3 = [modelCopy hmbType];
      v5 = [hmbType3 isEqualToString:@"HMBCloudZoneRebuilderModel"];
    }
  }

  return v5;
}

- (id)flush
{
  v2 = MEMORY[0x277D2C900];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__HMBCloudZone_flush__block_invoke;
  v6[3] = &unk_2786E10F8;
  v6[4] = self;
  operationScheduler = [(HMBCloudZone *)self operationScheduler];
  v4 = [v2 futureWithBlock:v6 scheduler:operationScheduler];

  return v4;
}

void __21__HMBCloudZone_flush__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = [v2 database];
  v4 = [v3 operationQueue];
  [v4 waitUntilAllOperationsAreFinished];

  [v5 finishWithNoResult];
}

- (HMBModelContainer)modelContainer
{
  localZone = [(HMBCloudZone *)self localZone];
  modelContainer = [localZone modelContainer];

  return modelContainer;
}

- (void)_startUpWithPublicLocalZone:(id)zone
{
  v26 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  if (cloudDatabase)
  {
    array = [MEMORY[0x277CBEB18] array];
    startUpRebuilderIfNeeded = [(HMBCloudZone *)self startUpRebuilderIfNeeded];
    [array addObject:startUpRebuilderIfNeeded];

    if (![(HMBCloudZone *)self hasPerformedInitialFetch])
    {
      v8 = MEMORY[0x277D2C900];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke;
      v23[3] = &unk_2786E10F8;
      v23[4] = self;
      operationScheduler = [(HMBCloudZone *)self operationScheduler];
      v10 = [v8 lazyFutureWithBlock:v23 scheduler:operationScheduler];
      [array addObject:v10];
    }

    v11 = [MEMORY[0x277D2C900] chainFutures:array];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke_2;
    v22[3] = &unk_2786E1E10;
    v22[4] = self;
    v12 = [v11 addSuccessBlock:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke_63;
    v19[3] = &unk_2786E0578;
    v19[4] = self;
    v20 = cloudDatabase;
    v21 = zoneCopy;
    v13 = [v12 addFailureBlock:v19];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to start up with local zone because cloud database reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [HMBProcessingOptions optionsWithLabel:@"HMBCloudZone First Fetch"];
  v4 = [*(a1 + 32) performStartupCloudPullWithOptions:v7];
  v5 = [v3 completionHandlerAdapter];

  v6 = [v4 addCompletionBlock:v5];
}

void __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully started up with public local zone", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) startUp];
  [v8 finishWithNoResult];

  v9 = *MEMORY[0x277D85DE8];
}

void __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke_63(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start up with public local zone (will retry after delay): %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke_64;
  v10[3] = &unk_2786E0798;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  [v8 retryStartupBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HMBCloudZone__startUpWithPublicLocalZone___block_invoke_64(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying public cloud zone startup", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _startUpWithPublicLocalZone:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startUpWithLocalZone:(id)zone
{
  v40 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  if (cloudDatabase)
  {
    [(HMBCloudZone *)self initializeShareModels];
    array = [MEMORY[0x277CBEB18] array];
    performInitialCloudSync = [cloudDatabase performInitialCloudSync];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v11;
      v38 = 2112;
      v39 = performInitialCloudSync;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Zone startup steps will begin after initial cloud sync future: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [array addObject:performInitialCloudSync];
    cloudZoneID = [(HMBCloudZone *)selfCopy cloudZoneID];
    scope = [cloudZoneID scope];

    if (scope == 2)
    {
      createZoneState = [(HMBCloudZone *)selfCopy createZoneState];
      [array addObject:createZoneState];
    }

    startUpRebuilderIfNeeded = [(HMBCloudZone *)selfCopy startUpRebuilderIfNeeded];
    [array addObject:startUpRebuilderIfNeeded];

    v16 = MEMORY[0x277D2C900];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __38__HMBCloudZone__startUpWithLocalZone___block_invoke;
    v35[3] = &unk_2786E10F8;
    v35[4] = selfCopy;
    operationScheduler = [(HMBCloudZone *)selfCopy operationScheduler];
    v18 = [v16 lazyFutureWithBlock:v35 scheduler:operationScheduler];
    [array addObject:v18];

    v19 = MEMORY[0x277D2C900];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __38__HMBCloudZone__startUpWithLocalZone___block_invoke_2;
    v34[3] = &unk_2786E10F8;
    v34[4] = selfCopy;
    operationScheduler2 = [(HMBCloudZone *)selfCopy operationScheduler];
    v21 = [v19 lazyFutureWithBlock:v34 scheduler:operationScheduler2];
    [array addObject:v21];

    v22 = [MEMORY[0x277D2C900] chainFutures:array];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __38__HMBCloudZone__startUpWithLocalZone___block_invoke_55;
    v33[3] = &unk_2786E1E10;
    v33[4] = selfCopy;
    v23 = [v22 addSuccessBlock:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __38__HMBCloudZone__startUpWithLocalZone___block_invoke_56;
    v30[3] = &unk_2786E0578;
    v30[4] = selfCopy;
    v31 = cloudDatabase;
    v32 = zoneCopy;
    v24 = [v23 addFailureBlock:v30];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v28;
      _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud database reference was nil during startup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __38__HMBCloudZone__startUpWithLocalZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [HMBProcessingOptions optionsWithLabel:@"HMBCloudZone startup sync"];
  v4 = [*(a1 + 32) performStartupCloudPullWithOptions:v7];
  v5 = [v3 completionHandlerAdapter];

  v6 = [v4 addCompletionBlock:v5];
}

void __38__HMBCloudZone__startUpWithLocalZone___block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Startup steps - enqueue pending pushes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v25 = v3;
  v9 = [v8 localZone];
  v30 = 0;
  v10 = [v9 fetchReadyBlocksWithType:0 error:&v30];
  v24 = v30;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:buf count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = v8;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v16 blockRow];
          *v31 = 138543618;
          v32 = v20;
          v33 = 2048;
          v34 = v21;
          _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_INFO, "%{public}@Enqueueing pending push for output blockRow: %lu", v31, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v22 = [v18 _triggerOutputForOutputRow:objc_msgSend(v16 options:{"blockRow"), 0}];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:buf count:16];
    }

    while (v13);
  }

  [v25 finishWithNoResult];
  v23 = *MEMORY[0x277D85DE8];
}

void __38__HMBCloudZone__startUpWithLocalZone___block_invoke_55(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully started up with local zone", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) startUp];
  [v8 finishWithNoResult];

  v9 = *MEMORY[0x277D85DE8];
}

void __38__HMBCloudZone__startUpWithLocalZone___block_invoke_56(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __38__HMBCloudZone__startUpWithLocalZone___block_invoke_2_57;
  v18 = &unk_2786E0798;
  v19 = v4;
  v20 = *(a1 + 48);
  v6 = [v4 retryStartupWithCloudDatabase:v5 afterError:v3 retryBlock:&v15];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v3;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to start up with local zone (will retry after delay): %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v3;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to start up with local zone: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) startUp];
    [v13 finishWithError:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __38__HMBCloudZone__startUpWithLocalZone___block_invoke_2_57(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying cloud zone startup", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _startUpWithLocalZone:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startUpWithLocalZone:(id)zone
{
  v22 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  hasStartedUp = [(HMBCloudZone *)self hasStartedUp];
  [(HMBCloudZone *)self setHasStartedUp:1];
  os_unfair_lock_unlock(&self->_propertyLock);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (hasStartedUp)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Not starting up cloud zone that has already started up", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      configuration = [(HMBCloudZone *)selfCopy configuration];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = zoneCopy;
      v20 = 2112;
      v21 = configuration;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting up with local zone: %@ configuration: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMBCloudZone *)selfCopy setLocalZone:zoneCopy];
    cloudZoneID = [(HMBCloudZone *)selfCopy cloudZoneID];
    v14 = [cloudZoneID scope] == 1;

    if (v14)
    {
      [(HMBCloudZone *)selfCopy _startUpWithPublicLocalZone:zoneCopy];
    }

    else
    {
      [(HMBCloudZone *)selfCopy _startUpWithLocalZone:zoneCopy];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateOfError:(id)error forOperation:(id)operation
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationCopy = operation;
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  delegate = [cloudDatabase delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v13;
      v18 = 2112;
      v19 = delegate;
      v20 = 2112;
      v21 = operationCopy;
      v22 = 2112;
      v23 = errorCopy;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate %@ for error on operation %@: %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    cloudZoneID = [(HMBCloudZone *)selfCopy cloudZoneID];
    [delegate cloudDatabase:cloudDatabase encounteredError:errorCopy withOperation:operationCopy onZone:cloudZoneID];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)retryCloudKitOperation:(id)operation afterError:(id)error retryBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  errorCopy = error;
  blockCopy = block;
  [(HMBCloudZone *)self notifyDelegateOfError:errorCopy forOperation:operationCopy];
  if ([errorCopy hmbIsCKMissingManateeIdentityError])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received missing Manatee identity error on zone specific operation: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMBCloudZone *)selfCopy handleLostKeys];
    waitForPendingRebuild = [(HMBCloudZone *)selfCopy waitForPendingRebuild];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__HMBCloudZone_retryCloudKitOperation_afterError_retryBlock___block_invoke;
    v28[3] = &unk_2786E0550;
    v29 = blockCopy;
    v16 = [waitForPendingRebuild addSuccessBlock:v28];

    configuration = [(HMBCloudZone *)selfCopy configuration];
    shouldRebuildOnManateeKeyLoss = [configuration shouldRebuildOnManateeKeyLoss];

    if (shouldRebuildOnManateeKeyLoss)
    {
      [(HMBCloudZone *)selfCopy rebuild];
    }

    v19 = 1;
  }

  else if ([errorCopy hmbIsCKZoneDisabledError])
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received zone disabled error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    delegate = [(HMBCloudZone *)selfCopy2 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate cloudZone:selfCopy2 didEncounterZoneDisabledError:errorCopy];
    }

    v19 = 0;
  }

  else
  {
    cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
    v19 = [cloudDatabase _retryCloudKitOperationAfterError:errorCopy retryBlock:blockCopy];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)retryStartupWithCloudDatabase:(id)database afterError:(id)error retryBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  errorCopy = error;
  blockCopy = block;
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  if ([cloudZoneID scope] != 3)
  {

    goto LABEL_7;
  }

  hmbIsCKZoneDeletedError = [errorCopy hmbIsCKZoneDeletedError];

  if (!hmbIsCKZoneDeletedError)
  {
LABEL_7:
    [databaseCopy retryStartupBlock:blockCopy];
    v17 = 1;
    goto LABEL_8;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_ERROR, "%{public}@Not retrying startup for shared zone encountering zone deleted error: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = 0;
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)triggerOutputForOutputRow:(unint64_t)row options:(id)options
{
  optionsCopy = options;
  startUp = [(HMBCloudZone *)self startUp];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMBCloudZone_triggerOutputForOutputRow_options___block_invoke;
  v11[3] = &unk_2786E0528;
  v12 = optionsCopy;
  rowCopy = row;
  v11[4] = self;
  v8 = optionsCopy;
  v9 = [startUp flatMap:v11];

  return v9;
}

- (id)destroy
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  destroyFuture = [(HMBCloudZone *)selfCopy destroyFuture];

  if (destroyFuture)
  {
    os_unfair_lock_unlock(&selfCopy->_propertyLock);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMBCloudZone *)selfCopy setDestroyFuture:v4];

    os_unfair_lock_unlock(&selfCopy->_propertyLock);
    v5 = objc_autoreleasePoolPush();
    v6 = selfCopy;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Destroying cloud zone: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    cloudDatabase = [(HMBCloudZone *)v6 cloudDatabase];
    cloudZoneID = [(HMBCloudZone *)v6 cloudZoneID];
    v11 = [cloudDatabase removeZoneWithID:cloudZoneID];
    destroyFuture2 = [(HMBCloudZone *)v6 destroyFuture];
    completionHandlerAdapter = [destroyFuture2 completionHandlerAdapter];
    v14 = [v11 addCompletionBlock:completionHandlerAdapter];
  }

  destroyFuture3 = [(HMBCloudZone *)selfCopy destroyFuture];
  v16 = *MEMORY[0x277D85DE8];

  return destroyFuture3;
}

- (id)shutdown
{
  startUp = [(HMBCloudZone *)self startUp];
  recoverIgnoringError = [startUp recoverIgnoringError];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__HMBCloudZone_shutdown__block_invoke;
  v7[3] = &unk_2786E0500;
  v7[4] = self;
  v5 = [recoverIgnoringError flatMap:v7];

  return v5;
}

id __24__HMBCloudZone_shutdown__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [(os_unfair_lock_s *)v4 shutdownFuture];

  if (v5)
  {
    goto LABEL_2;
  }

  v6 = [(os_unfair_lock_s *)v4 database];

  v7 = MEMORY[0x277D2C900];
  if (!v6)
  {
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v13 = [v7 futureWithError:v12];
    [(os_unfair_lock_s *)v4 setShutdownFuture:v13];

LABEL_2:
    os_unfair_lock_unlock(v4 + 2);
    goto LABEL_5;
  }

  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(os_unfair_lock_s *)v4 setShutdownFuture:v8];

  os_unfair_lock_unlock(v4 + 2);
  v9 = [(os_unfair_lock_s *)v4 shutdownFuture];
  [v9 finishWithNoResult];

LABEL_5:
  v10 = [*(a1 + 32) shutdownFuture];

  return v10;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Deallocating HMBCloudZone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMBCloudZone;
  [(HMBCloudZone *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMBCloudZone)initWithCloudDatabase:(id)database configuration:(id)configuration state:(id)state
{
  databaseCopy = database;
  configurationCopy = configuration;
  stateCopy = state;
  if (!databaseCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v11 = stateCopy;
  if (!stateCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v48.receiver = self;
  v48.super_class = HMBCloudZone;
  v12 = [(HMBCloudZone *)&v48 init];
  v13 = v12;
  if (!v12)
  {
LABEL_13:

    return v13;
  }

  objc_storeWeak(&v12->_cloudDatabase, databaseCopy);
  zoneID = [v11 zoneID];
  scope = [zoneID scope];

  switch(scope)
  {
    case 1:
      publicDatabase = [databaseCopy publicDatabase];
      break;
    case 2:
      publicDatabase = [databaseCopy privateDatabase];
      break;
    case 3:
      publicDatabase = [databaseCopy sharedDatabase];
      break;
    default:
      goto LABEL_11;
  }

  database = v13->_database;
  v13->_database = publicDatabase;

LABEL_11:
  if (v13->_database)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    startUp = v13->_startUp;
    v13->_startUp = v18;

    stateZone = [databaseCopy stateZone];
    objc_storeWeak(&v13->_stateZone, stateZone);

    zoneID2 = [v11 zoneID];
    cloudZoneID = v13->_cloudZoneID;
    v13->_cloudZoneID = zoneID2;

    hmbModelID = [v11 hmbModelID];
    stateModelID = v13->_stateModelID;
    v13->_stateModelID = hmbModelID;

    operationScheduler = [(HMBCloudZone *)v13 operationScheduler];
    operationScheduler = v13->_operationScheduler;
    v13->_operationScheduler = operationScheduler;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    deviceIdentifier = v13->_deviceIdentifier;
    v13->_deviceIdentifier = uUIDString;

    v30 = [configurationCopy copy];
    configuration = v13->_configuration;
    v13->_configuration = v30;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    modelClassToRequiresPostProcessingMap = v13->_modelClassToRequiresPostProcessingMap;
    v13->_modelClassToRequiresPostProcessingMap = strongToStrongObjectsMapTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    shareParticipantModelsByClientIdentifier = v13->_shareParticipantModelsByClientIdentifier;
    v13->_shareParticipantModelsByClientIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    inProgressPushFuturesByOutputBlockRow = v13->_inProgressPushFuturesByOutputBlockRow;
    v13->_inProgressPushFuturesByOutputBlockRow = dictionary2;

    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v39 = v13->_operationScheduler;
    v13->_operationScheduler = globalAsyncScheduler;

    v40 = objc_alloc_init(MEMORY[0x277CCABD8]);
    recordOperationQueue = v13->_recordOperationQueue;
    v13->_recordOperationQueue = v40;

    [(NSOperationQueue *)v13->_recordOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v13->_recordOperationQueue setQualityOfService:25];
    v42 = objc_alloc_init(MEMORY[0x277CCABD8]);
    shareOperationQueue = v13->_shareOperationQueue;
    v13->_shareOperationQueue = v42;

    [(NSOperationQueue *)v13->_shareOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v13->_shareOperationQueue setQualityOfService:17];
    defaultDesiredKeys = v13->_defaultDesiredKeys;
    v13->_defaultDesiredKeys = &unk_283EB9EE8;

    goto LABEL_13;
  }

LABEL_16:
  v46 = _HMFPreconditionFailure();
  return +[(HMBCloudZone *)v46];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29, &__block_literal_global_962);
  }

  v3 = logCategory__hmf_once_v30;

  return v3;
}

uint64_t __27__HMBCloudZone_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v30;
  logCategory__hmf_once_v30 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)pushRecordsToUpdate:(id)update recordIDsToRemove:(id)remove configuration:(id)configuration rollbackEnabled:(BOOL)enabled needsNewInvitationToken:(BOOL)token
{
  v42 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  removeCopy = remove;
  configurationCopy = configuration;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    v37 = v18;
    v38 = 2112;
    v39 = updateCopy;
    v40 = 2112;
    v41 = removeCopy;
    _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Pushing with updates: %@ removes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  if (!updateCopy)
  {
    updateCopy = MEMORY[0x277CBEBF8];
  }

  if (!removeCopy)
  {
    removeCopy = MEMORY[0x277CBEBF8];
  }

  if ([updateCopy count] || objc_msgSend(removeCopy, "count"))
  {
    if (!configurationCopy)
    {
      cloudDatabase = [(HMBCloudZone *)selfCopy cloudDatabase];
      configurationCopy = [cloudDatabase operationConfigurationWithProcessingOptions:0];
    }

    v20 = MEMORY[0x277D2C900];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __130__HMBCloudZone_CloudRecord_Internal__pushRecordsToUpdate_recordIDsToRemove_configuration_rollbackEnabled_needsNewInvitationToken___block_invoke;
    v30[3] = &unk_2786E05A0;
    v30[4] = selfCopy;
    v31 = updateCopy;
    v32 = removeCopy;
    configurationCopy = configurationCopy;
    v33 = configurationCopy;
    enabledCopy = enabled;
    tokenCopy = token;
    operationScheduler = [(HMBCloudZone *)selfCopy operationScheduler];
    v22 = [v20 futureWithBlock:v30 scheduler:operationScheduler];
  }

  else
  {
    v25 = MEMORY[0x277D2C900];
    v26 = [HMBCloudZoneRecordPushResult alloc];
    v27 = [MEMORY[0x277CBEB98] set];
    v28 = [MEMORY[0x277CBEB98] set];
    v29 = [(HMBCloudZoneRecordPushResult *)v26 initWithUpdatedRecords:v27 deletedRecordIDs:v28 error:0];
    v22 = [v25 futureWithResult:v29];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)decodeManateeCloudFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error
{
  v123 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  fieldsCopy = fields;
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  configuration = [cloudDatabase configuration];
  v13 = [recordCopy hmbObjectForKey:@"k00" encrypted:{objc_msgSend(configuration, "isManateeContainer")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v114 = 0;
    v16 = OPACKDecodeData();
    v17 = v16;
    if (v16)
    {
      sourceCopy = source;
      v18 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      v104 = v20;
      v21 = [v20 hmf_numberForKey:@"HM.encoding"];
      unsignedIntegerValue = [v21 unsignedIntegerValue];

      if (!unsignedIntegerValue)
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v98 = v17;
          v27 = v26 = fieldsCopy;
          *buf = 138543874;
          v116 = v27;
          v117 = 2112;
          v118 = v104;
          v119 = 2048;
          v120 = 2;
          _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to determine encoding from version metadata: %@. Defaulting to %lu encoding", buf, 0x20u);

          fieldsCopy = v26;
          v17 = v98;
        }

        objc_autoreleasePoolPop(v23);
        unsignedIntegerValue = 2;
      }

      v103 = fieldsCopy;
      v28 = [(HMBCloudZone *)self cloudFieldForEncoding:unsignedIntegerValue];
      configuration2 = [cloudDatabase configuration];
      v30 = [recordCopy hmbObjectForKey:v28 encrypted:{objc_msgSend(configuration2, "isManateeContainer")}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v32)
      {
        hmbUncompress = [v32 hmbUncompress];
        if (hmbUncompress)
        {
          modelContainer = [(HMBCloudZone *)self modelContainer];
          v97 = modelContainer;
          if (modelContainer)
          {
            v113 = 0;
            v35 = [modelContainer modelFromData:hmbUncompress encoding:unsignedIntegerValue storageLocation:1 error:&v113];
            v93 = v113;
            fieldsCopy = v103;
            if (v35)
            {
              v99 = v17;
              hmbExternalRecordType = [objc_opt_class() hmbExternalRecordType];
              recordType = [recordCopy recordType];
              v38 = [hmbExternalRecordType isEqualToString:recordType];

              if ((v38 & 1) == 0)
              {
                v39 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v41 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v92 = HMFGetLogIdentifier();
                  hmbCanonicalType = [v35 hmbCanonicalType];
                  hmbExternalRecordType2 = [objc_opt_class() hmbExternalRecordType];
                  [recordCopy recordType];
                  v94 = hmbUncompress;
                  v43 = v42 = v32;
                  *buf = 138544130;
                  v116 = v92;
                  v117 = 2112;
                  v118 = hmbCanonicalType;
                  v119 = 2112;
                  v120 = hmbExternalRecordType2;
                  v121 = 2112;
                  v122 = v43;
                  _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Model of type %@ expected external record type %@ but cloud record has type %@", buf, 0x2Au);

                  v32 = v42;
                  hmbUncompress = v94;
                }

                objc_autoreleasePoolPop(v39);
              }

              recordType2 = [recordCopy recordType];
              v45 = +[HMBModel hmbExternalRecordType];
              v46 = [recordType2 isEqualToString:v45];

              v47 = v97;
              if ((v46 & 1) == 0)
              {
                hmbProperties = [objc_opt_class() hmbProperties];
                v106[0] = MEMORY[0x277D85DD0];
                v106[1] = 3221225472;
                v106[2] = __88__HMBCloudZone_Manatee__decodeManateeCloudFromRecord_externalRecordFields_source_error___block_invoke;
                v106[3] = &unk_2786E0890;
                v107 = v103;
                v108 = cloudDatabase;
                v109 = recordCopy;
                v112 = sourceCopy;
                v110 = v97;
                v111 = v35;
                [hmbProperties enumerateKeysAndObjectsUsingBlock:v106];
              }

              v49 = v35;
              v17 = v99;
              v50 = v93;
            }

            else
            {
              v81 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v83 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v84 = v101 = v17;
                [recordCopy hmbDescription];
                v96 = hmbUncompress;
                v86 = v85 = v32;
                *buf = 138543874;
                v116 = v84;
                v117 = 2114;
                v118 = v86;
                v119 = 2112;
                v120 = v93;
                _os_log_impl(&dword_22AD27000, v83, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data for record %{public}@: %@", buf, 0x20u);

                v32 = v85;
                hmbUncompress = v96;

                v17 = v101;
              }

              objc_autoreleasePoolPop(v81);
              fieldsCopy = v103;
              v47 = v97;
              v50 = v93;
              if (error)
              {
                v87 = v93;
                *error = v93;
              }
            }
          }

          else
          {
            v75 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v77 = HMFGetOSLogHandle();
            fieldsCopy = v103;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v78 = v100 = v17;
              [recordCopy hmbDescription];
              v95 = hmbUncompress;
              v80 = v79 = v32;
              *buf = 138543618;
              v116 = v78;
              v117 = 2114;
              v118 = v80;
              _os_log_impl(&dword_22AD27000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data for record %{public}@: Model container is nil", buf, 0x16u);

              v32 = v79;
              hmbUncompress = v95;

              v17 = v100;
            }

            objc_autoreleasePoolPop(v75);
            if (error)
            {
              [MEMORY[0x277CCA9B8] hmfErrorWithCode:8 reason:@"Model container is nil"];
              *error = v35 = 0;
            }

            else
            {
              v35 = 0;
            }

            v47 = 0;
          }
        }

        else
        {
          v68 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v72 = v71 = v17;
            [recordCopy hmbDescription];
            v74 = v73 = v32;
            *buf = 138543618;
            v116 = v72;
            v117 = 2114;
            v118 = v74;
            _os_log_impl(&dword_22AD27000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data for record %{public}@: Uncompress failed", buf, 0x16u);

            v32 = v73;
            v17 = v71;
            hmbUncompress = 0;
          }

          objc_autoreleasePoolPop(v68);
          fieldsCopy = v103;
          if (error)
          {
            [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:@"Model data failed to uncompress"];
            *error = v35 = 0;
          }

          else
          {
            v35 = 0;
          }
        }
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = HMFGetLogIdentifier();
          [recordCopy hmbDescription];
          v67 = v66 = v17;
          *buf = 138544130;
          v116 = v65;
          v117 = 2114;
          v118 = v67;
          v119 = 2048;
          v120 = unsignedIntegerValue;
          v121 = 2112;
          v122 = v104;
          _os_log_impl(&dword_22AD27000, v64, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data for record %{public}@: Could not find data for encoding type %lu in metadata: %@", buf, 0x2Au);

          v17 = v66;
          v32 = 0;
        }

        objc_autoreleasePoolPop(v62);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:@"No model data for encoding type"];
          *error = v35 = 0;
        }

        else
        {
          v35 = 0;
        }

        fieldsCopy = v103;
      }
    }

    else
    {
      v56 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        [recordCopy hmbDescription];
        v61 = v60 = fieldsCopy;
        *buf = 138543874;
        v116 = v59;
        v117 = 2114;
        v118 = v61;
        v119 = 1024;
        LODWORD(v120) = v114;
        _os_log_impl(&dword_22AD27000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data for record %{public}@: Unable to decode version metadata: %d", buf, 0x1Cu);

        fieldsCopy = v60;
      }

      objc_autoreleasePoolPop(v56);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:@"Unable to decode version metadata"];
        *error = v35 = 0;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v51 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      hmbDescription = [recordCopy hmbDescription];
      *buf = 138543618;
      v116 = v54;
      v117 = 2114;
      v118 = hmbDescription;
      _os_log_impl(&dword_22AD27000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data for record %{public}@: Cannot find metadata", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:@"Cannot find metadata"];
      *error = v35 = 0;
    }

    else
    {
      v35 = 0;
    }
  }

  v88 = *MEMORY[0x277D85DE8];

  return v35;
}

void __88__HMBCloudZone_Manatee__decodeManateeCloudFromRecord_externalRecordFields_source_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 externalRecordField];
  if (v6)
  {
    v7 = *(a1 + 32);
    if (!v7 || [v7 containsObject:v6])
    {
      v8 = [*(a1 + 40) configuration];
      if ([v8 isManateeContainer])
      {
        v9 = [v5 encrypted];
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a1 + 48);
      v11 = [v5 externalRecordField];
      v12 = [v10 hmbObjectForKey:v11 encrypted:v9];

      if ([v5 conformsToHMBModelNativeCKWrapper])
      {
        [objc_msgSend(v5 "classObj")];
      }

      else
      {
        [*(a1 + 64) hmbSetProperty:v12 named:v13];
      }
    }
  }
}

- (id)encodeManateeCloudModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordCopy = record;
  contextCopy = context;
  modelContainer = [contextCopy modelContainer];
  [modelCopy hmbAssociateWithContainer:modelContainer];

  v14 = recordCopy;
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      hmbModelID = [modelCopy hmbModelID];
      *buf = 138543618;
      v35 = v18;
      v36 = 2112;
      v37 = hmbModelID;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating existing cloud record to store model with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = v14;
  }

  else
  {
    errorCopy = error;
    v21 = [(HMBCloudZone *)self recordIDForModel:modelCopy];
    hmbExternalRecordType = [objc_opt_class() hmbExternalRecordType];
    v20 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:hmbExternalRecordType recordID:v21];
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v26 = v31 = v23;
      [modelCopy hmbModelID];
      v27 = v32 = v21;
      *buf = 138543618;
      v35 = v26;
      v36 = 2112;
      v37 = v27;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new cloud record to store model with UUID: %@", buf, 0x16u);

      v21 = v32;
      v23 = v31;
    }

    objc_autoreleasePoolPop(v23);
    error = errorCopy;
  }

  if ([(HMBCloudZone *)self populateManateeCloudRecord:v20 withModel:modelCopy encodingContext:contextCopy error:error])
  {
    v28 = v20;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)populateManateeCloudRecord:(id)record withModel:(id)model encodingContext:(id)context error:(id *)error
{
  recordCopy = record;
  modelCopy = model;
  contextCopy = context;
  modelContainer = [contextCopy modelContainer];
  [modelCopy hmbAssociateWithContainer:modelContainer];

  hmbProperties = [objc_opt_class() hmbProperties];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1816;
  v34 = __Block_byref_object_dispose__1817;
  v35 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__HMBCloudZone_Manatee__populateManateeCloudRecord_withModel_encodingContext_error___block_invoke;
  v24[3] = &unk_2786E0868;
  v15 = modelCopy;
  v25 = v15;
  v16 = recordCopy;
  v26 = v16;
  selfCopy = self;
  v17 = contextCopy;
  v28 = v17;
  v29 = &v30;
  [hmbProperties enumerateKeysAndObjectsUsingBlock:v24];
  v18 = v31[5];
  if (v18)
  {
    v19 = 0;
    if (error)
    {
      *error = v18;
    }
  }

  else
  {
    v20 = [(HMBCloudZone *)self cloudMetadataForModel:v15 usingEncoding:2];
    v23 = 0;
    v21 = MEMORY[0x231885660](v20, 12, &v23);
    if (v21)
    {
      v19 = [(HMBCloudZone *)self populateV4CloudRecord:v16 withModel:v15 metadataFieldData:v21 startEncoding:2 endEncoding:3 encodingContext:v17 error:error];
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v23 userInfo:0];
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  _Block_object_dispose(&v30, 8);
  return v19;
}

void __84__HMBCloudZone_Manatee__populateManateeCloudRecord_withModel_encodingContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 externalRecordField];

  if (v9)
  {
    v10 = [*(a1 + 32) hmbSetProperties];
    v11 = [v10 containsObject:v7];

    if (v11)
    {
      v12 = [*(a1 + 32) hmbPropertyNamed:v7];
      if ([v8 conformsToHMBModelNativeCKWrapper])
      {
        if (v12)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v30 = objc_autoreleasePoolPush();
            v31 = *(a1 + 48);
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = HMFGetLogIdentifier();
              v34 = [*(a1 + 32) hmbDescription];
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              *buf = 138544130;
              v42 = v33;
              v43 = 2112;
              v44 = v34;
              v45 = 2112;
              v46 = v7;
              v47 = 2112;
              v48 = v36;
              _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Dropping change for %@/%@ because property type %@ doesn't respond to nativeCKValueWithEncodingContext:error: but we think it conforms to HMBModelNativeCKWrapper", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v30);
            goto LABEL_22;
          }

          v13 = *(a1 + 56);
          v40 = 0;
          v14 = [v12 nativeCKValueWithEncodingContext:v13 error:&v40];
          v15 = v40;
          v16 = v40;

          if (!v14 && v16)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = *(a1 + 48);
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v20 = v38 = v18;
              [*(a1 + 32) hmbDescription];
              v21 = v39 = v17;
              *buf = 138544130;
              v42 = v20;
              v43 = 2112;
              v44 = v21;
              v45 = 2112;
              v46 = v7;
              v47 = 2112;
              v48 = v16;
              _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode wrapped and externally stored property %@/%@: %@", buf, 0x2Au);

              v17 = v39;
              v18 = v38;
            }

            objc_autoreleasePoolPop(v17);
            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v15);
            *a4 = 1;
          }

          v12 = v14;
          goto LABEL_14;
        }

        v28 = *(a1 + 40);
        v29 = [v8 externalRecordField];
        [v28 setObject:0 forKey:v29];

        v12 = 0;
      }

      else
      {
        v22 = [v8 classObj];
        if (v22 != objc_opt_class() || [v12 count])
        {
LABEL_14:
          v23 = [*(a1 + 48) cloudDatabase];
          v24 = [v23 configuration];
          if ([v24 isManateeContainer])
          {
            v25 = [v8 encrypted];
          }

          else
          {
            v25 = 0;
          }

          v26 = *(a1 + 40);
          v27 = [v8 externalRecordField];
          [v26 hmbSetObject:v12 forKey:v27 encrypted:v25];
        }
      }

LABEL_22:
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)recordIDForModel:(id)model
{
  v4 = MEMORY[0x277CBC5D0];
  modelCopy = model;
  v6 = [v4 alloc];
  hmbModelID = [modelCopy hmbModelID];

  uUIDString = [hmbModelID UUIDString];
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  zoneID = [cloudZoneID zoneID];
  v11 = [v6 initWithRecordName:uUIDString zoneID:zoneID];

  return v11;
}

- (id)fetchChangesWithToken:(id)token options:(id)options
{
  v30 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  optionsCopy = options;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = tokenCopy;
    v28 = 2112;
    v29 = optionsCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud zone changes with token: %@ options: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__HMBCloudZone_Changes__fetchChangesWithToken_options___block_invoke;
  v21[3] = &unk_2786E1258;
  v21[4] = selfCopy;
  v22 = tokenCopy;
  v23 = optionsCopy;
  v13 = optionsCopy;
  v14 = tokenCopy;
  operationScheduler = [(HMBCloudZone *)selfCopy operationScheduler];
  v16 = [v12 futureWithBlock:v21 scheduler:operationScheduler];

  v17 = [v16 flatMap:&__block_literal_global_2237];
  v18 = [v17 flatMap:&__block_literal_global_4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)resolveConflicts:(id)conflicts options:(id)options
{
  v107 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  optionsCopy = options;
  localZone = [(HMBCloudZone *)self localZone];
  v99 = 0;
  v9 = [localZone createMirrorInputWithError:&v99];
  v10 = v99;

  v79 = v9;
  if (v9)
  {
    v74 = v10;
    v75 = optionsCopy;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v76 = conflictsCopy;
    obj = conflictsCopy;
    selfCopy = self;
    v87 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    if (!v87)
    {
      goto LABEL_43;
    }

    selfCopy2 = self;
    v12 = *v96;
    v81 = *v96;
    while (1)
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v96 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v95 + 1) + 8 * i);
        serverRecord = [v14 serverRecord];
        if (serverRecord)
        {
          v92 = 0;
          v16 = [(HMBCloudZone *)selfCopy2 decodeModelFromRecord:serverRecord externalRecordFields:0 source:4 error:&v92];
          v17 = v92;
          v18 = v17;
          if (!v16)
          {
            v50 = objc_autoreleasePoolPush();
            v51 = selfCopy2;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v53 = HMFGetLogIdentifier();
              *buf = 138543874;
              v101 = v53;
              v102 = 2112;
              v103 = v14;
              v104 = 2112;
              v105 = v18;
              _os_log_impl(&dword_22AD27000, v52, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate server model for conflict %@: %@", buf, 0x20u);
            }

            v54 = v50;
LABEL_35:
            objc_autoreleasePoolPop(v54);
            v16 = 0;
            goto LABEL_41;
          }

          v85 = v17;
          v91 = 0;
          v19 = [serverRecord externalID:&v91];
          v20 = v91;
          v21 = v20;
          if (v19)
          {
            v90 = 0;
            v22 = [serverRecord externalData:&v90];
            v82 = v90;
            context = objc_autoreleasePoolPush();
            v23 = selfCopy2;
            v24 = HMFGetOSLogHandle();
            v25 = v24;
            if (v22)
            {
              v77 = v21;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v26 = HMFGetLogIdentifier();
                hmbDescription = [serverRecord hmbDescription];
                hmbDescription2 = [v16 hmbDescription];
                *buf = 138543874;
                v101 = v26;
                v102 = 2112;
                v103 = hmbDescription;
                v104 = 2112;
                v105 = hmbDescription2;
                _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Staging server version of conflicted record %@ / %@ due to conflict", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              v89 = 0;
              v29 = [v79 stageAdditionForModel:v16 externalID:v19 externalData:v22 error:&v89];
              v30 = v89;
              if ((v29 & 1) == 0)
              {
                v31 = objc_autoreleasePoolPush();
                v32 = v23;
                v33 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v34 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v101 = v34;
                  v102 = 2112;
                  v103 = v16;
                  v104 = 2112;
                  v105 = v30;
                  _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage addition for model %@: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v31);
              }

              v21 = v77;
              selfCopy2 = selfCopy;
            }

            else
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v60 = HMFGetLogIdentifier();
                *buf = 138543874;
                v101 = v60;
                v102 = 2112;
                v103 = v14;
                v104 = 2112;
                v105 = v82;
                _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate server externalData for conflict %@: %@", buf, 0x20u);

                selfCopy2 = selfCopy;
              }

              objc_autoreleasePoolPop(context);
            }

            v12 = v81;
            v18 = v85;
          }

          else
          {
            v55 = v20;
            v83 = objc_autoreleasePoolPush();
            v56 = selfCopy2;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              *buf = 138543874;
              v101 = v58;
              v102 = 2112;
              v103 = v14;
              v104 = 2112;
              v105 = v55;
              _os_log_impl(&dword_22AD27000, v57, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate server externalID for conflict %@: %@", buf, 0x20u);

              v12 = v81;
            }

            objc_autoreleasePoolPop(v83);
            v18 = v85;
            v21 = v55;
          }
        }

        else
        {
          recordID = [v14 recordID];
          v94 = 0;
          v16 = [recordID externalID:&v94];
          v18 = v94;

          v36 = objc_autoreleasePoolPush();
          v37 = selfCopy2;
          v38 = HMFGetOSLogHandle();
          v39 = v38;
          if (!v16)
          {
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543874;
              v101 = v59;
              v102 = 2112;
              v103 = v14;
              v104 = 2112;
              v105 = v18;
              _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate client externalID for conflict %@: %@", buf, 0x20u);
            }

            v54 = v36;
            goto LABEL_35;
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v41 = v40 = v18;
            recordID2 = [v14 recordID];
            *buf = 138543618;
            v101 = v41;
            v102 = 2112;
            v103 = recordID2;
            _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_INFO, "%{public}@Staging removal for record ID without a server version: %@", buf, 0x16u);

            v12 = v81;
            v18 = v40;
            selfCopy2 = selfCopy;
          }

          objc_autoreleasePoolPop(v36);
          v93 = 0;
          v43 = [v79 stageRemovalForModelWithExternalID:v16 error:&v93];
          v44 = v93;
          if ((v43 & 1) == 0)
          {
            v86 = v18;
            v45 = objc_autoreleasePoolPush();
            v46 = v37;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = HMFGetLogIdentifier();
              recordID3 = [v14 recordID];
              *buf = 138543874;
              v101 = v48;
              v102 = 2112;
              v103 = recordID3;
              v104 = 2112;
              v105 = v44;
              _os_log_impl(&dword_22AD27000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage removal for record ID %@: %@", buf, 0x20u);

              selfCopy2 = selfCopy;
              v12 = v81;
            }

            objc_autoreleasePoolPop(v45);
            v18 = v86;
          }
        }

LABEL_41:
      }

      v87 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
      if (!v87)
      {
LABEL_43:

        v61 = [HMBProcessingOptions optionsWithLabel:@"Conflicted record resolution"];
        v88 = 0;
        v62 = [v79 commitWithOptions:v61 error:&v88];
        v63 = v88;

        v10 = v74;
        optionsCopy = v75;
        if (!v62)
        {
          v64 = objc_autoreleasePoolPush();
          v65 = selfCopy;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543618;
            v101 = v67;
            v102 = 2112;
            v103 = v63;
            _os_log_impl(&dword_22AD27000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit conflicted record resolution: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v64);
        }

        conflictsCopy = v76;
        goto LABEL_51;
      }
    }
  }

  v68 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v70 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    v71 = HMFGetLogIdentifier();
    *buf = 138543618;
    v101 = v71;
    v102 = 2112;
    v103 = v10;
    _os_log_impl(&dword_22AD27000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input context for conflict records: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v68);
LABEL_51:

  v72 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_syncInternalModels
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F770]);
  v4 = MEMORY[0x277CCACA8];
  zoneID = [(HMBCloudZone *)self zoneID];
  name = [zoneID name];
  v7 = [v4 stringWithFormat:@"%s (%@)", "-[HMBCloudZone(Pull_Internal) _syncInternalModels]", name];
  v8 = [v3 initWithName:v7 options:1];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v39 = v12;
    v40 = 2114;
    v41 = shortDescription;
    _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Syncing internal models", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc_init(MEMORY[0x277D2C900]);
  v16 = +[(HMBModel *)HMBCloudZoneShareParticipantModel];
  v17 = [(HMBCloudZone *)selfCopy queryRecordsWithType:v16];

  v18 = [(HMBCloudZone *)selfCopy queryRecordsWithType:*MEMORY[0x277CBC050]];
  v19 = MEMORY[0x277D2C900];
  v37[0] = v17;
  v37[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v22 = [v19 combineAllFutures:v20 scheduler:globalAsyncScheduler];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __50__HMBCloudZone_Pull_Internal___syncInternalModels__block_invoke;
  v34[3] = &unk_2786E0F00;
  v34[4] = selfCopy;
  v35 = v8;
  v23 = v15;
  v36 = v23;
  v24 = v8;
  v25 = [v22 addSuccessBlock:v34];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__HMBCloudZone_Pull_Internal___syncInternalModels__block_invoke_11;
  v32[3] = &unk_2786E1948;
  v32[4] = selfCopy;
  v26 = v23;
  v33 = v26;
  v27 = [v25 addFailureBlock:v32];

  v28 = v33;
  v29 = v26;

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

void __50__HMBCloudZone_Pull_Internal___syncInternalModels__block_invoke(id *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] identifier];
    v9 = [v8 shortDescription];
    *buf = 138543618;
    v53 = v7;
    v54 = 2114;
    v55 = v9;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched records for internal models", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v38 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v34 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v34)
  {
    v33 = *v49;
    v39 = a1;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v10;
        v11 = *(*(&v48 + 1) + 8 * v10);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v42 = v11;
        v12 = [v42 countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v45;
          v40 = *v45;
          do
          {
            v15 = 0;
            v41 = v13;
            do
            {
              if (*v45 != v14)
              {
                objc_enumerationMutation(v42);
              }

              v16 = *(*(&v44 + 1) + 8 * v15);
              v17 = a1[4];
              v43 = 0;
              v18 = [v17 decodeModelFromRecord:v16 externalRecordFields:0 source:4 error:&v43];
              v19 = v43;
              if (v18)
              {
                if ([a1[4] isInternalModel:v18])
                {
                  [v38 addObject:v18];
                  goto LABEL_22;
                }

                v20 = objc_autoreleasePoolPush();
                v21 = a1[4];
                v22 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                {
                  v36 = HMFGetLogIdentifier();
                  v37 = [a1[5] identifier];
                  v27 = [v37 shortDescription];
                  v28 = [v16 hmbDescription];
                  [v18 hmbDescription];
                  v30 = v29 = v20;
                  *buf = 138544130;
                  v53 = v36;
                  v54 = 2114;
                  v55 = v27;
                  v56 = 2112;
                  v57 = v28;
                  v58 = 2112;
                  v59 = v30;
                  _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_FAULT, "%{public}@[%{public}@] Queried record %@ that decoded into non-internal model: %@", buf, 0x2Au);

                  v20 = v29;
                  a1 = v39;

                  v13 = v41;
                  goto LABEL_20;
                }
              }

              else
              {
                v20 = objc_autoreleasePoolPush();
                v21 = a1[4];
                v22 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                {
                  v23 = HMFGetLogIdentifier();
                  v24 = [a1[5] identifier];
                  v25 = [v24 shortDescription];
                  v26 = [v16 hmbDescription];
                  *buf = 138544130;
                  v53 = v23;
                  v54 = 2114;
                  v55 = v25;
                  v56 = 2112;
                  v57 = v26;
                  v58 = 2112;
                  v59 = v19;
                  _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_FAULT, "%{public}@[%{public}@] Queried record %@, but failed to decode: %@", buf, 0x2Au);

                  a1 = v39;
                  v13 = v41;

LABEL_20:
                  v14 = v40;
                }
              }

              objc_autoreleasePoolPop(v20);
LABEL_22:

              ++v15;
            }

            while (v13 != v15);
            v13 = [v42 countByEnumeratingWithState:&v44 objects:v60 count:16];
          }

          while (v13);
        }

        v10 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v34);
  }

  [a1[4] handleUpdatedInternalModels:v38];
  [a1[6] finishWithNoResult];

  v31 = *MEMORY[0x277D85DE8];
}

void __50__HMBCloudZone_Pull_Internal___syncInternalModels__block_invoke_11(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to sync internal models: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) finishWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_performImmediateCloudPullWithOptions:(id)options useCachedServerToken:(BOOL)token
{
  tokenCopy = token;
  optionsCopy = options;
  configuration = [(HMBCloudZone *)self configuration];
  shouldSkipCloudPulls = [configuration shouldSkipCloudPulls];

  if (shouldSkipCloudPulls)
  {
    _syncInternalModels = [(HMBCloudZone *)self _syncInternalModels];
  }

  else
  {
    if (tokenCopy)
    {
      cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
      cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
      v12 = [cloudDatabase serverChangeTokenForZoneWithID:cloudZoneID];
    }

    else
    {
      v12 = 0;
    }

    _syncInternalModels = [(HMBCloudZone *)self fetchChangesWithToken:v12 options:optionsCopy];
  }

  return _syncInternalModels;
}

- (id)_performCloudPullWithOptions:(id)options useCachedServerToken:(BOOL)token
{
  v34 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  os_unfair_lock_lock_with_options();
  queuedCloudPullFuture = [(HMBCloudZone *)self queuedCloudPullFuture];
  if (queuedCloudPullFuture)
  {
    completionHandlerAdapter = [v7 completionHandlerAdapter];
    v10 = [queuedCloudPullFuture addCompletionBlock:completionHandlerAdapter];

    os_unfair_lock_unlock(&self->_propertyLock);
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = optionsCopy;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Coalescing cloud pull with options: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    [(HMBCloudZone *)self setQueuedCloudPullFuture:v7];
    os_unfair_lock_unlock(&self->_propertyLock);
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = optionsCopy;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_INFO, "%{public}@Queueing up cloud pull with options: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [HMBFutureOperation alloc];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __81__HMBCloudZone_Pull_Internal___performCloudPullWithOptions_useCachedServerToken___block_invoke;
    v27[3] = &unk_2786E1DC0;
    v27[4] = selfCopy2;
    v28 = optionsCopy;
    tokenCopy = token;
    v20 = [(HMBFutureOperation *)v19 initWithBlock:v27];
    recordOperationQueue = [(HMBCloudZone *)selfCopy2 recordOperationQueue];
    [recordOperationQueue addOperation:v20];

    future = [(HMBFutureOperation *)v20 future];
    completionHandlerAdapter2 = [v7 completionHandlerAdapter];
    v24 = [future addCompletionBlock:completionHandlerAdapter2];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

id __81__HMBCloudZone_Pull_Internal___performCloudPullWithOptions_useCachedServerToken___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(a1 + 32) setQueuedCloudPullFuture:0];
  os_unfair_lock_unlock(v2 + 2);
  v3 = [*(a1 + 32) startUp];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMBCloudZone_Pull_Internal___performCloudPullWithOptions_useCachedServerToken___block_invoke_2;
  v7[3] = &unk_2786E0ED8;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = [v3 flatMap:v7];

  return v5;
}

- (BOOL)hasPerformedInitialFetch
{
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  v5 = [cloudDatabase serverChangeTokenForZoneWithID:cloudZoneID];
  v6 = v5 != 0;

  return v6;
}

- (id)unregisterSubscriptionForExternalRecordType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering subscription for external record type %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  startUp = [(HMBCloudZone *)selfCopy startUp];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HMBCloudZone_Subscription__unregisterSubscriptionForExternalRecordType___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = typeCopy;
  v10 = typeCopy;
  v11 = [startUp flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __74__HMBCloudZone_Subscription__unregisterSubscriptionForExternalRecordType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudDatabase];
  v3 = [*(a1 + 32) cloudZoneID];
  v4 = [v2 subscriptionIDForZoneID:v3 recordType:*(a1 + 40)];

  v5 = objc_alloc(MEMORY[0x277CBC618]);
  v6 = [*(a1 + 32) cloudZoneID];
  v7 = [v6 zoneID];
  v8 = [v5 initWithZoneID:v7 subscriptionID:v4];

  [v8 setRecordType:*(a1 + 40)];
  v9 = [*(a1 + 32) cloudZoneID];
  v10 = [v2 unregisterSubscription:v8 forZoneWithID:v9];

  return v10;
}

- (id)registerSubscriptionForExternalRecordType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering subscription for external record type %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  startUp = [(HMBCloudZone *)selfCopy startUp];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HMBCloudZone_Subscription__registerSubscriptionForExternalRecordType___block_invoke;
  v14[3] = &unk_2786E2C20;
  v14[4] = selfCopy;
  v15 = typeCopy;
  v10 = typeCopy;
  v11 = [startUp flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __72__HMBCloudZone_Subscription__registerSubscriptionForExternalRecordType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudDatabase];
  v3 = [*(a1 + 32) cloudZoneID];
  v4 = [v2 subscriptionIDForZoneID:v3 recordType:*(a1 + 40)];

  v5 = objc_alloc(MEMORY[0x277CBC618]);
  v6 = [*(a1 + 32) cloudZoneID];
  v7 = [v6 zoneID];
  v8 = [v5 initWithZoneID:v7 subscriptionID:v4];

  [v8 setRecordType:*(a1 + 40)];
  v9 = [*(a1 + 32) cloudZoneID];
  v10 = [v2 registerSubscription:v8 forZoneWithID:v9];

  return v10;
}

- (NSSet)subscriptions
{
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  v5 = [cloudDatabase subscriptionsForZoneWithID:cloudZoneID];

  return v5;
}

- (id)fetchCompleteModelsForRecordIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = dsCopy;
  if ([dsCopy count])
  {
    v6 = [v5 mutableCopy];
    v7 = [(HMBCloudZone *)self fetchRecordsWithRecordIDs:v5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__HMBCloudZone_Fetch_Internal__fetchCompleteModelsForRecordIDs___block_invoke;
    v17[3] = &unk_2786E1638;
    v17[4] = self;
    v18 = v6;
    v8 = v6;
    v9 = [v7 flatMap:v17];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Asked to fetch an empty set of record IDs", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CBEB98] set];
    v9 = [v14 futureWithResult:v7];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

id __64__HMBCloudZone_Fetch_Internal__fetchCompleteModelsForRecordIDs___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v48 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v61 objects:v72 count:16];
  obj = v3;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v62;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v61 + 1) + 8 * v8);
        v11 = *(a1 + 32);
        v60 = v9;
        v12 = [v11 decodeModelFromRecord:v10 externalRecordFields:0 source:4 error:&v60];
        v6 = v60;

        if (!v12)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543874;
            v67 = v18;
            v68 = 2112;
            v69 = v10;
            v70 = 2112;
            v71 = v6;
            _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode complete model for record %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [MEMORY[0x277D2C900] futureWithError:v6];
          v20 = obj;
          v21 = v48;
          v22 = obj;
          goto LABEL_35;
        }

        v13 = *(a1 + 40);
        v14 = [v10 recordID];
        [v13 removeObject:v14];

        [v48 addObject:v12];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v3 = obj;
      v5 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v23 = a1;
  v24 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v52 = [*(a1 + 32) localZone];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = *(a1 + 40);
  v25 = [v51 countByEnumeratingWithState:&v56 objects:v65 count:16];
  v50 = v24;
  if (v25)
  {
    v26 = v25;
    v53 = *v57;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(v51);
        }

        v28 = *(*(&v56 + 1) + 8 * i);
        v55 = v6;
        v29 = [v28 externalID:&v55];
        v30 = v55;

        if (v29)
        {
          v54 = v30;
          v31 = [v52 modelIDForExternalID:v29 error:&v54];
          v6 = v54;

          if (v31)
          {
            [v24 addObject:v31];
          }

          else
          {
            v37 = objc_autoreleasePoolPush();
            v38 = *(v23 + 32);
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              v41 = [v29 hmbDescription];
              *buf = 138543874;
              v67 = v40;
              v68 = 2112;
              v69 = v41;
              v70 = 2112;
              v71 = v6;
              _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch modelID for externalID %@: %@", buf, 0x20u);

              v23 = a1;
              v24 = v50;
            }

            objc_autoreleasePoolPop(v37);
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = *(v23 + 32);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            v36 = [v28 hmbDescription];
            *buf = 138543874;
            v67 = v35;
            v68 = 2112;
            v69 = v36;
            v70 = 2112;
            v71 = v30;
            _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode externalID from recordID %@: %@", buf, 0x20u);

            v24 = v50;
          }

          objc_autoreleasePoolPop(v32);
          v6 = v30;
        }
      }

      v26 = [v51 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v26);
  }

  v42 = v6;

  v21 = v48;
  v43 = [v48 allObjects];
  v44 = [v24 allObjects];
  v6 = [v52 update:v43 remove:v44];

  if (v6)
  {
    [MEMORY[0x277D2C900] futureWithError:v6];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:v48];
  }
  v19 = ;
  v20 = obj;

  v22 = v50;
LABEL_35:

  v45 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)fetchCompleteModelForRecordID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    v6 = [MEMORY[0x277CBEB98] setWithObject:dCopy];
    v7 = [(HMBCloudZone *)self fetchCompleteModelsForRecordIDs:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HMBCloudZone_Fetch_Internal__fetchCompleteModelForRecordID___block_invoke;
    v12[3] = &unk_2786E1610;
    v12[4] = self;
    v8 = [v7 flatMap:v12];

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return __62__HMBCloudZone_Fetch_Internal__fetchCompleteModelForRecordID___block_invoke(v10, v11);
  }
}

id __62__HMBCloudZone_Fetch_Internal__fetchCompleteModelForRecordID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Successfully fetched complete models for record ID but no models were returned", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v5 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

id __65__HMBCloudZone_Fetch_Internal__fetchRecordWithRecordID_canRetry___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 allValues];
  v3 = [v2 firstObject];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v5 = [v4 futureWithError:v6];
  }

  return v5;
}

- (id)fetchRecordsWithRecordIDs:(id)ds
{
  v24 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [HMBCloudZoneFetchRecordsContext alloc];
  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  v7 = [(HMBCloudZoneFetchRecordsContext *)v5 initWithRecordIDs:dsCopy future:v6];

  os_unfair_lock_lock_with_options();
  queuedFetchRecordsContexts = [(HMBCloudZone *)self queuedFetchRecordsContexts];
  v9 = queuedFetchRecordsContexts;
  if (queuedFetchRecordsContexts)
  {
    [queuedFetchRecordsContexts addObject:v7];
    os_unfair_lock_unlock(&self->_propertyLock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      hmbDescription = [dsCopy hmbDescription];
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = hmbDescription;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@Queueing fetch for records with record IDs: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v15 = [MEMORY[0x277CBEB58] set];
    [(HMBCloudZone *)self setQueuedFetchRecordsContexts:v15];

    os_unfair_lock_unlock(&self->_propertyLock);
    v16 = [MEMORY[0x277CBEB98] setWithObject:v7];
    [(HMBCloudZone *)self _fetchRecordsForContexts:v16];
  }

  future = [(HMBCloudZoneFetchRecordsContext *)v7 future];

  v18 = *MEMORY[0x277D85DE8];

  return future;
}

- (void)_fetchRecordsForContexts:(id)contexts
{
  v22 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  v5 = [contextsCopy na_flatMap:&__block_literal_global_5116];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    hmbDescription = [v5 hmbDescription];
    *buf = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = hmbDescription;
    _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Performing fetch for records with record IDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMBCloudZone *)selfCopy _fetchRecordsWithRecordIDs:v5 canRetry:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HMBCloudZone_Fetch_Internal___fetchRecordsForContexts___block_invoke_3;
  v15[3] = &unk_2786E15C8;
  v16 = contextsCopy;
  v17 = selfCopy;
  v12 = contextsCopy;
  v13 = [v11 addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __57__HMBCloudZone_Fetch_Internal___fetchRecordsForContexts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v19 = a1;
  v20 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (v5)
        {
          v11 = [*(*(&v23 + 1) + 8 * v9) recordIDs];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __57__HMBCloudZone_Fetch_Internal___fetchRecordsForContexts___block_invoke_2;
          v21[3] = &unk_2786E15A0;
          v22 = v5;
          v12 = [v11 na_map:v21];

          v13 = [v10 future];
          [v13 finishWithResult:v12];

          v14 = v22;
        }

        else
        {
          v14 = [*(*(&v23 + 1) + 8 * v9) future];
          [v14 finishWithError:v20];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = *(v19 + 40);
  os_unfair_lock_lock_with_options();
  v16 = [*(v19 + 40) queuedFetchRecordsContexts];
  if ([v16 count])
  {
    v17 = [MEMORY[0x277CBEB58] set];
    [*(v19 + 40) setQueuedFetchRecordsContexts:v17];
  }

  else
  {
    [*(v19 + 40) setQueuedFetchRecordsContexts:0];
  }

  os_unfair_lock_unlock(v15 + 2);
  if ([v16 count])
  {
    [*(v19 + 40) _fetchRecordsForContexts:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_fetchRecordsWithRecordIDs:(id)ds canRetry:(BOOL)retry
{
  dsCopy = ds;
  v7 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HMBCloudZone_Fetch_Internal___fetchRecordsWithRecordIDs_canRetry___block_invoke;
  v13[3] = &unk_2786E1558;
  v13[4] = self;
  v14 = dsCopy;
  retryCopy = retry;
  v8 = MEMORY[0x277D2C938];
  v9 = dsCopy;
  globalAsyncScheduler = [v8 globalAsyncScheduler];
  v11 = [v7 futureWithBlock:v13 scheduler:globalAsyncScheduler];

  return v11;
}

- (id)fetchCompleteModelsWithIDs:(id)ds
{
  v40 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = dsCopy;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    hmbDescription = [v5 hmbDescription];
    *buf = 138543618;
    v35 = v9;
    v36 = 2112;
    v37 = hmbDescription;
    _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching complete models with IDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMBCloudZone *)selfCopy localZone];
  allObjects = [v5 allObjects];
  v33 = 0;
  v13 = [localZone fetchExternalIDsForModelIDs:allObjects error:&v33];
  v14 = v33;

  if (v13)
  {
    v15 = [v13 count];
    if (v15 == [v5 count])
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __50__HMBCloudZone_Fetch__fetchCompleteModelsWithIDs___block_invoke;
      v32[3] = &unk_2786E1680;
      v32[4] = selfCopy;
      v16 = [v13 na_map:v32];
      v17 = [(HMBCloudZone *)selfCopy fetchCompleteModelsForRecordIDs:v16];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v13 count];
        v28 = [v5 count];
        *buf = 138543874;
        v35 = v26;
        v36 = 2048;
        v37 = v27;
        v38 = 2048;
        v39 = v28;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Fetched %lu external IDs but requested %lu model IDs", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v29 = MEMORY[0x277D2C900];
      v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v17 = [v29 futureWithError:v16];
    }

    v22 = v17;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v21;
      v36 = 2112;
      v37 = v5;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch external IDs for model IDs %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277D2C900] futureWithError:v14];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v22;
}

id __50__HMBCloudZone_Fetch__fetchCompleteModelsWithIDs___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0;
  v4 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode record ID from data %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)fetchCompleteModelWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    v6 = [MEMORY[0x277CBEB98] setWithObject:dCopy];
    v7 = [(HMBCloudZone *)self fetchCompleteModelsWithIDs:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HMBCloudZone_Fetch__fetchCompleteModelWithID___block_invoke;
    v12[3] = &unk_2786E1610;
    v12[4] = self;
    v8 = [v7 flatMap:v12];

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return __48__HMBCloudZone_Fetch__fetchCompleteModelWithID___block_invoke(v10, v11);
  }
}

id __48__HMBCloudZone_Fetch__fetchCompleteModelWithID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Successfully fetched complete model IDs but no models were returned", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v5 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchCompleteModels:(id)models
{
  modelsCopy = models;
  if (modelsCopy)
  {
    v5 = modelsCopy;
    v6 = [modelsCopy na_map:&__block_literal_global_33_5150];
    v7 = [(HMBCloudZone *)self fetchCompleteModelsWithIDs:v6];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return __43__HMBCloudZone_Fetch__fetchCompleteModels___block_invoke(v9);
  }
}

- (id)fetchCompleteModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = modelCopy;
    hmbModelID = [modelCopy hmbModelID];
    v7 = [(HMBCloudZone *)self fetchCompleteModelWithID:hmbModelID];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    [(HMBLocalZoneQueryResultRecordIDSequence *)v9 .cxx_destruct];
  }

  return result;
}

- (id)queryRecordsWithType:(id)type
{
  typeCopy = type;
  v5 = MEMORY[0x277D2C900];
  v11 = MEMORY[0x277D85DD0];
  selfCopy = self;
  v13 = typeCopy;
  v6 = MEMORY[0x277D2C938];
  v7 = typeCopy;
  globalAsyncScheduler = [v6 globalAsyncScheduler];
  v9 = [v5 futureWithBlock:&v11 scheduler:globalAsyncScheduler];

  return v9;
}

- (id)_triggerOutputForOutputRow:(unint64_t)row options:(id)options
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  os_unfair_lock_lock_with_options();
  inProgressPushFuturesByOutputBlockRow = [(HMBCloudZone *)self inProgressPushFuturesByOutputBlockRow];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:row];
  v9 = [inProgressPushFuturesByOutputBlockRow objectForKeyedSubscript:v8];

  if (v9)
  {
    os_unfair_lock_unlock(&self->_propertyLock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v13;
      v29 = 2048;
      rowCopy = row;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring push request for block row %lu. Appears to be in-progress.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    inProgressPushFuturesByOutputBlockRow2 = [(HMBCloudZone *)self inProgressPushFuturesByOutputBlockRow];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:row];
    [inProgressPushFuturesByOutputBlockRow2 setObject:v9 forKeyedSubscript:v15];

    os_unfair_lock_unlock(&self->_propertyLock);
    v16 = [HMBFutureOperation alloc];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__HMBCloudZone_Push___triggerOutputForOutputRow_options___block_invoke;
    v24[3] = &unk_2786E1920;
    v24[4] = self;
    rowCopy2 = row;
    v25 = optionsCopy;
    v17 = [(HMBFutureOperation *)v16 initWithBlock:v24];
    recordOperationQueue = [(HMBCloudZone *)self recordOperationQueue];
    [recordOperationQueue addOperation:v17];

    future = [(HMBFutureOperation *)v17 future];
    completionHandlerAdapter = [v9 completionHandlerAdapter];
    v21 = [future addCompletionBlock:completionHandlerAdapter];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

id __57__HMBCloudZone_Push___triggerOutputForOutputRow_options___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D2C918]);
  v3 = *(a1 + 32);
  v6 = a1 + 40;
  v4 = *(a1 + 40);
  v5 = *(v6 + 8);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  v10 = [v9 future];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = ____performCloudPush_block_invoke;
  v65[3] = &unk_2786E19C0;
  v11 = v7;
  v66 = v11;
  v67 = v5;
  v12 = [v10 addCompletionBlock:v65];

  v13 = objc_alloc(MEMORY[0x277D0F770]);
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"__performCloudPush"];
  v15 = [v13 initWithName:v14 options:1];

  v16 = [v11 localZone];
  v17 = v16;
  if (v16)
  {
    v62 = v15;
    if (v8)
    {
      v18 = 0;
      goto LABEL_8;
    }

    v64 = 0;
    v8 = [v16 fetchOptionsForOutputBlock:v5 error:&v64];
    v18 = v64;
    if (v8)
    {
LABEL_8:
      v26 = v18;
      v63 = v18;
      v27 = [v17 fetchRecordsForOutputBlock:v5 error:&v63];
      v18 = v63;

      if (v27)
      {
        v28 = [v27 count];
        context = objc_autoreleasePoolPush();
        v29 = v11;
        v30 = HMFGetOSLogHandle();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
        if (v28)
        {
          if (v31)
          {
            v32 = HMFGetLogIdentifier();
            v56 = [v62 identifier];
            [v56 shortDescription];
            v33 = v53 = v17;
            v34 = [v27 count];
            *buf = 138544386;
            v69 = v32;
            v70 = 2114;
            v71 = v33;
            v72 = 2048;
            v73 = v5;
            v74 = 2112;
            v75 = v8;
            v76 = 2048;
            v77 = v34;
            _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Starting cloud push for output block row: %lu options: %@ tuples count: %lu", buf, 0x34u);

            v17 = v53;
          }

          objc_autoreleasePoolPop(context);
          v35 = v29;
          v15 = v62;
          [v35 pushGroupWithBlockRow:v5 tuples:v27 options:v8 activity:v62 completionPromise:v9];
          goto LABEL_20;
        }

        if (v31)
        {
          v55 = HMFGetLogIdentifier();
          v57 = [v62 identifier];
          v41 = [v57 shortDescription];
          *buf = 138543874;
          v69 = v55;
          v70 = 2114;
          v71 = v41;
          v42 = v41;
          v72 = 2048;
          v73 = v5;
          _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Skipping cloud push for output block row %lu because no tuples were found", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        [v17 removeOutputBlockWithRow:v5 error:0];
        v43 = objc_alloc_init(HMBCloudZonePushResult);
        [v9 finishWithResult:v43];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v11;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          v54 = [v62 identifier];
          [v54 shortDescription];
          v40 = contextb = v36;
          *buf = 138544130;
          v69 = v39;
          v70 = 2114;
          v71 = v40;
          v72 = 2048;
          v73 = v5;
          v74 = 2112;
          v75 = v18;
          _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to fetch tuples for output block row %lu: %@", buf, 0x2Au);

          v36 = contextb;
          v27 = 0;
        }

        objc_autoreleasePoolPop(v36);
        [v17 removeOutputBlockWithRow:v5 error:0];
        [v9 finishWithError:v18];
      }

      v15 = v62;
LABEL_20:

      goto LABEL_21;
    }

    v47 = objc_autoreleasePoolPush();
    v48 = v11;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v50 = contextc = v47;
      v51 = [v15 identifier];
      v52 = [v51 shortDescription];
      *buf = 138544130;
      v69 = v50;
      v70 = 2114;
      v71 = v52;
      v72 = 2048;
      v73 = v5;
      v74 = 2112;
      v75 = v18;
      _os_log_impl(&dword_22AD27000, v49, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to fetch options for output block row %lu: %@", buf, 0x2Au);

      v15 = v62;
      v47 = contextc;
    }

    objc_autoreleasePoolPop(v47);
    [v17 removeOutputBlockWithRow:v5 error:0];
    if (!v18)
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }

    [v9 finishWithError:v18];
    v8 = 0;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v11;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      [v15 identifier];
      contexta = v8;
      v24 = v23 = v15;
      v25 = [v24 shortDescription];
      *buf = 138543618;
      v69 = v22;
      v70 = 2114;
      v71 = v25;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] No local zone available to perform cloud push", buf, 0x16u);

      v15 = v23;
      v8 = contexta;
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v9 finishWithError:v18];
  }

LABEL_21:

  v44 = [v9 future];

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (void)pushGroupWithBlockRow:(unint64_t)row tuples:(id)tuples options:(id)options activity:(id)activity completionPromise:(id)promise
{
  v162 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  optionsCopy = options;
  activityCopy = activity;
  promiseCopy = promise;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  modelContainer = [(HMBCloudZone *)self modelContainer];
  if (modelContainer)
  {
    v122 = [[HMBCloudZoneEncodingContext alloc] initWithModelContainer:modelContainer];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v10 = tuplesCopy;
    v11 = [v10 countByEnumeratingWithState:&v148 objects:v161 count:16];
    if (v11)
    {
      v12 = *v149;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v149 != v12)
          {
            objc_enumerationMutation(v10);
          }

          model = [*(*(&v148 + 1) + 8 * i) model];
          if (model)
          {
            v15 = [(HMBCloudZone *)self recordIDForModel:model];
            createdRecords = [(HMBCloudZoneEncodingContext *)v122 createdRecords];
            hmbModelID = [model hmbModelID];
            [createdRecords setObject:v15 forKeyedSubscript:hmbModelID];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v148 objects:v161 count:16];
      }

      while (v11);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    obj = v10;
    v121 = [obj countByEnumeratingWithState:&v144 objects:v160 count:16];
    if (!v121)
    {
      v18 = 0;
      goto LABEL_58;
    }

    v18 = 0;
    v120 = *v145;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v145 != v120)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v144 + 1) + 8 * v19);
        v124 = objc_autoreleasePoolPush();
        model2 = [v20 model];
        if (model2)
        {
          externalData = [v20 externalData];
          if (!externalData)
          {
            v24 = 0;
LABEL_24:
            v141 = v18;
            v119 = v24;
            v125 = [HMBCloudZone encodeRecordFromModel:"encodeRecordFromModel:existingRecord:encodingContext:error:" existingRecord:model2 encodingContext:? error:?];
            v27 = v141;

            if (v125)
            {
              externalID = [v20 externalID];
              if (externalID)
              {
                v118 = v27;
                goto LABEL_38;
              }

              v140 = v27;
              externalID = [v125 externalID:&v140];
              v118 = v140;

              if (externalID)
              {
                [v20 setExternalID:externalID];
LABEL_38:
                context = objc_autoreleasePoolPush();
                selfCopy = self;
                v47 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v113 = HMFGetLogIdentifier();
                  identifier = [activityCopy identifier];
                  shortDescription = [identifier shortDescription];
                  model3 = [v20 model];
                  hmbDescription = [model3 hmbDescription];
                  hmbDescription2 = [v125 hmbDescription];
                  *buf = 138544130;
                  v153 = v113;
                  v154 = 2114;
                  rowCopy5 = shortDescription;
                  v156 = 2112;
                  rowCopy4 = hmbDescription;
                  v158 = 2112;
                  v159 = hmbDescription2;
                  _os_log_impl(&dword_22AD27000, v47, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Preparing to update: %@ / %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(context);
                recordID = [v125 recordID];
                [dictionary setObject:v125 forKey:recordID];

                recordID2 = [v125 recordID];
                [dictionary2 setObject:v20 forKey:recordID2];
              }

              else
              {
                v60 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v62 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v63 = HMFGetLogIdentifier();
                  identifier2 = [activityCopy identifier];
                  shortDescription2 = [identifier2 shortDescription];
                  *buf = 138543874;
                  v153 = v63;
                  v154 = 2114;
                  rowCopy5 = shortDescription2;
                  v156 = 2112;
                  rowCopy4 = v118;
                  _os_log_impl(&dword_22AD27000, v62, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode recordID for update: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v60);
              }

              v27 = v118;
            }

            else
            {
              v29 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = HMFGetLogIdentifier();
                identifier3 = [activityCopy identifier];
                shortDescription3 = [identifier3 shortDescription];
                *buf = 138543874;
                v153 = v32;
                v154 = 2114;
                rowCopy5 = shortDescription3;
                v156 = 2112;
                rowCopy4 = v27;
                _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode record for update: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v29);
            }

            v18 = v27;
            goto LABEL_47;
          }

          v142 = v18;
          v22 = [MEMORY[0x277CBC5A0] recordFromExternalData:externalData error:&v142];
          v23 = v142;

          if (v22)
          {
            v24 = v22;
            v18 = v23;
            goto LABEL_24;
          }

          v35 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            hmbDescription3 = [externalData hmbDescription];
            *buf = 138543874;
            v153 = v38;
            v154 = 2112;
            rowCopy5 = hmbDescription3;
            v156 = 2112;
            rowCopy4 = v23;
            _os_log_impl(&dword_22AD27000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode record from external data %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v35);
          v18 = v23;
        }

        else
        {
          externalData = [v20 externalID];
          if (externalData)
          {
            v143 = v18;
            v25 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:externalData error:&v143];
            v26 = v143;

            if (v25)
            {
              [array addObject:v25];
              [dictionary2 setObject:v20 forKey:v25];
            }

            else
            {
              v54 = objc_autoreleasePoolPush();
              selfCopy5 = self;
              v56 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v126 = HMFGetLogIdentifier();
                identifier4 = [activityCopy identifier];
                shortDescription4 = [identifier4 shortDescription];
                externalID2 = [v20 externalID];
                *buf = 138544130;
                v153 = v126;
                v154 = 2114;
                rowCopy5 = shortDescription4;
                v156 = 2112;
                rowCopy4 = externalID2;
                v158 = 2112;
                v159 = v26;
                _os_log_impl(&dword_22AD27000, v56, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to decode encoded record ID %@: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v54);
            }

            v18 = v26;
          }

          else
          {
            v40 = objc_autoreleasePoolPush();
            selfCopy6 = self;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = HMFGetLogIdentifier();
              identifier5 = [activityCopy identifier];
              shortDescription5 = [identifier5 shortDescription];
              *buf = 138543618;
              v153 = v43;
              v154 = 2114;
              rowCopy5 = shortDescription5;
              _os_log_impl(&dword_22AD27000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Deletion was staged for record without an external ID", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v40);
            externalData = 0;
          }
        }

LABEL_47:

        objc_autoreleasePoolPop(v124);
        ++v19;
      }

      while (v121 != v19);
      v66 = [obj countByEnumeratingWithState:&v144 objects:v160 count:16];
      v121 = v66;
      if (!v66)
      {
LABEL_58:

        localZone = [(HMBCloudZone *)self localZone];
        if (v18)
        {
          v72 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v74 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            v75 = HMFGetLogIdentifier();
            identifier6 = [activityCopy identifier];
            shortDescription6 = [identifier6 shortDescription];
            *buf = 138544130;
            v153 = v75;
            v154 = 2114;
            rowCopy5 = shortDescription6;
            v156 = 2048;
            rowCopy4 = row;
            v158 = 2112;
            v159 = v18;
            _os_log_impl(&dword_22AD27000, v74, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Aborting block %lu due to encoding error: %@.", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v72);
          v78 = [localZone markGroupAsSentWithOutputBlock:row tuples:obj];
          if (v78)
          {
            v79 = objc_autoreleasePoolPush();
            v80 = selfCopy7;
            v81 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v82 = HMFGetLogIdentifier();
              identifier7 = [activityCopy identifier];
              shortDescription7 = [identifier7 shortDescription];
              *buf = 138544130;
              v153 = v82;
              v154 = 2114;
              rowCopy5 = shortDescription7;
              v156 = 2048;
              rowCopy4 = row;
              v158 = 2112;
              v159 = v78;
              _os_log_impl(&dword_22AD27000, v81, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Abort update for block %lu failed with error: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v79);
          }

          [promiseCopy finishWithError:v18];
        }

        else if ([dictionary count] || objc_msgSend(array, "count"))
        {
          v78 = objc_alloc_init(MEMORY[0x277D2C918]);
          __pushWithRecovery(self, row, dictionary2, dictionary, array, optionsCopy, v78);
          objc_initWeak(buf, self);
          future = [v78 future];
          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 3221225472;
          v136[2] = __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke;
          v136[3] = &unk_2786E1880;
          objc_copyWeak(v139, buf);
          v86 = activityCopy;
          v137 = v86;
          v139[1] = row;
          v87 = promiseCopy;
          v138 = v87;
          v88 = [future addFailureBlock:v136];

          future2 = [v78 future];
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_11;
          v128[3] = &unk_2786E18F8;
          objc_copyWeak(v135, buf);
          v129 = v86;
          v130 = dictionary2;
          v131 = array2;
          v132 = localZone;
          v135[1] = row;
          v133 = optionsCopy;
          v134 = v87;
          v90 = [future2 addSuccessBlock:v128];

          objc_destroyWeak(v135);
          objc_destroyWeak(v139);
          objc_destroyWeak(buf);
        }

        else
        {
          v92 = objc_autoreleasePoolPush();
          selfCopy8 = self;
          v94 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            v95 = HMFGetLogIdentifier();
            identifier8 = [activityCopy identifier];
            shortDescription8 = [identifier8 shortDescription];
            *buf = 138543874;
            v153 = v95;
            v154 = 2114;
            rowCopy5 = shortDescription8;
            v156 = 2048;
            rowCopy4 = row;
            _os_log_impl(&dword_22AD27000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Aborting block %lu because there are no records to push", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v92);
          v78 = [localZone markGroupAsSentWithOutputBlock:row tuples:obj];
          if (v78)
          {
            v98 = objc_autoreleasePoolPush();
            v99 = selfCopy8;
            v100 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v101 = HMFGetLogIdentifier();
              identifier9 = [activityCopy identifier];
              shortDescription9 = [identifier9 shortDescription];
              *buf = 138544130;
              v153 = v101;
              v154 = 2114;
              rowCopy5 = shortDescription9;
              v156 = 2048;
              rowCopy4 = row;
              v158 = 2112;
              v159 = v78;
              _os_log_impl(&dword_22AD27000, v100, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to abort block %lu: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v98);
          }

          [promiseCopy finishWithNoResult];
        }

        goto LABEL_70;
      }
    }
  }

  v67 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = HMFGetLogIdentifier();
    *buf = 138543618;
    v153 = v70;
    v154 = 2048;
    rowCopy5 = row;
    _os_log_impl(&dword_22AD27000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to push group with output block row %lu: Model container is nil", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v67);
  v122 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8 reason:@"Model container is nil"];
  [promiseCopy finishWithError:v122];
LABEL_70:

  v91 = *MEMORY[0x277D85DE8];
}

void __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) identifier];
    v10 = [v9 shortDescription];
    v11 = *(a1 + 56);
    v13 = 138544130;
    v14 = v8;
    v15 = 2114;
    v16 = v10;
    v17 = 2048;
    v18 = v11;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to complete push for row %lu: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) invalidate];
  [*(a1 + 40) finishWithError:v3];

  v12 = *MEMORY[0x277D85DE8];
}

void __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_11(uint64_t a1, void *a2)
{
  v163 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v134 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v121 = v3;
  v4 = [v3 fatalError];

  if (!v4)
  {
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    obj = [v121 updatedRecords];
    v130 = [obj countByEnumeratingWithState:&v153 objects:v159 count:16];
    if (!v130)
    {
      goto LABEL_35;
    }

    v128 = *v154;
    while (1)
    {
      for (i = 0; i != v130; ++i)
      {
        if (*v154 != v128)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v153 + 1) + 8 * i);
        v152 = 0;
        v137 = [v14 externalID:&v152];
        v15 = v152;
        v16 = v15;
        if (v137)
        {
          v151 = v15;
          v135 = [v14 externalData:&v151];
          context = v151;

          if (v135)
          {
            v17 = *(v134 + 40);
            v18 = [v14 recordID];
            v19 = [v17 objectForKey:v18];

            if (v19)
            {
              v20 = [v19 model];
              v21 = WeakRetained;
              v22 = v20;
              v23 = objc_opt_class();
              os_unfair_lock_lock_with_options();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v161 = __Block_byref_object_copy__5701;
              *&v162 = __Block_byref_object_dispose__5702;
              v24 = [(os_unfair_lock_s *)v21 modelClassToRequiresPostProcessingMap];
              *(&v162 + 1) = [v24 objectForKey:v23];

              v25 = *(*&buf[8] + 40);
              if (!v25)
              {
                *(*&buf[8] + 40) = MEMORY[0x277CBEC28];
                v26 = [v23 hmbProperties];
                v157[0] = MEMORY[0x277D85DD0];
                v157[1] = 3221225472;
                v157[2] = ____modelRequiresPostProcessing_block_invoke;
                v157[3] = &unk_2786E1998;
                v157[4] = buf;
                [v26 enumerateKeysAndObjectsUsingBlock:v157];
                v27 = [(os_unfair_lock_s *)v21 modelClassToRequiresPostProcessingMap];
                [v27 setObject:*(*&buf[8] + 40) forKey:v23];

                v25 = *(*&buf[8] + 40);
              }

              v28 = [v25 BOOLValue];
              _Block_object_dispose(buf, 8);

              os_unfair_lock_unlock(v21 + 2);
              if (v28)
              {

                goto LABEL_27;
              }

              v49 = [v19 model];
              v50 = [(os_unfair_lock_s *)v21 isInternalModel:v49];

              if (v50)
              {
LABEL_27:
                v51 = objc_autoreleasePoolPush();
                v52 = v21;
                v53 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                {
                  v54 = HMFGetLogIdentifier();
                  v55 = [*(v134 + 32) identifier];
                  v56 = [v55 shortDescription];
                  v57 = [v14 hmbDescription];
                  *buf = 138543874;
                  *&buf[4] = v54;
                  *&buf[12] = 2114;
                  *&buf[14] = v56;
                  *&buf[22] = 2112;
                  v161 = v57;
                  _os_log_impl(&dword_22AD27000, v53, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Queueing record for post-processing: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v51);
                [*(v134 + 48) addObject:v14];
              }

              [v19 setExternalID:v137];
              [v19 setExternalData:v135];
              v58 = *(v134 + 32);
              v59 = [v14 hmbDescription];
              [v58 markWithFormat:@"updating record %@", v59];
            }

            else
            {
              v43 = objc_autoreleasePoolPush();
              v44 = WeakRetained;
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = HMFGetLogIdentifier();
                v47 = [*(v134 + 32) identifier];
                v48 = [v47 shortDescription];
                *buf = 138543874;
                *&buf[4] = v46;
                *&buf[12] = 2114;
                *&buf[14] = v48;
                *&buf[22] = 2112;
                v161 = v14;
                _os_log_impl(&dword_22AD27000, v45, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Received unexpected updated record: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v43);
            }
          }

          else
          {
            v36 = objc_autoreleasePoolPush();
            v37 = WeakRetained;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = HMFGetLogIdentifier();
              v40 = [*(v134 + 32) identifier];
              v41 = [v40 shortDescription];
              v42 = [v14 hmbDescription];
              *buf = 138544130;
              *&buf[4] = v39;
              *&buf[12] = 2114;
              *&buf[14] = v41;
              *&buf[22] = 2112;
              v161 = v42;
              LOWORD(v162) = 2112;
              *(&v162 + 2) = context;
              _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode externalData for %@: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v36);
          }

          v16 = context;
          goto LABEL_33;
        }

        v29 = objc_autoreleasePoolPush();
        v30 = WeakRetained;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [*(v134 + 32) identifier];
          v34 = [v33 shortDescription];
          v35 = [v14 hmbDescription];
          *buf = 138544130;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v34;
          *&buf[22] = 2112;
          v161 = v35;
          LOWORD(v162) = 2112;
          *(&v162 + 2) = v16;
          _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode externalID for %@: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v29);
LABEL_33:
      }

      v130 = [obj countByEnumeratingWithState:&v153 objects:v159 count:16];
      if (!v130)
      {
        goto LABEL_35;
      }
    }
  }

  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(v134 + 32) identifier];
    v10 = [v9 shortDescription];
    v11 = [v121 fatalError];
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v161 = v11;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Cloud push chunk failed: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *(v134 + 32);
  obj = [v121 fatalError];
  [v12 markWithFormat:@"cloud push chunk failed: %@", obj];
LABEL_35:

  v122 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v134 + 48), "count")}];
  v123 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(v134 + 48), "count")}];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  obja = *(v134 + 48);
  v131 = [obja countByEnumeratingWithState:&v147 objects:v158 count:16];
  if (v131)
  {
    v60 = 0;
    v129 = *v148;
    do
    {
      for (j = 0; j != v131; ++j)
      {
        if (*v148 != v129)
        {
          objc_enumerationMutation(obja);
        }

        v62 = *(*(&v147 + 1) + 8 * j);
        contexta = objc_autoreleasePoolPush();
        v63 = *(v134 + 40);
        v64 = [v62 recordID];
        v65 = [v63 objectForKeyedSubscript:v64];
        v138 = [v65 model];

        v66 = [v138 hmbSetExternalRecordFields];
        v146 = v60;
        v67 = [WeakRetained decodeModelFromRecord:v62 externalRecordFields:v66 source:1 error:&v146];
        v136 = v146;

        if (v67)
        {
          v68 = [WeakRetained isInternalModel:v67];
          v69 = objc_autoreleasePoolPush();
          v70 = WeakRetained;
          v71 = HMFGetOSLogHandle();
          v72 = v71;
          if (v68)
          {
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v124 = HMFGetLogIdentifier();
              v73 = [*(v134 + 32) identifier];
              v74 = [v73 shortDescription];
              v75 = [v67 hmbDescription];
              v76 = [v62 hmbDescription];
              *buf = 138544130;
              *&buf[4] = v124;
              *&buf[12] = 2114;
              *&buf[14] = v74;
              *&buf[22] = 2112;
              v161 = v75;
              LOWORD(v162) = 2112;
              *(&v162 + 2) = v76;
              _os_log_impl(&dword_22AD27000, v72, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Queueing internal model: %@ %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v69);
            [v122 addObject:v67];
          }

          else
          {
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              v125 = HMFGetLogIdentifier();
              v83 = [*(v134 + 32) identifier];
              v84 = [v83 shortDescription];
              v85 = [v67 hmbDescription];
              v86 = [v62 hmbDescription];
              *buf = 138544130;
              *&buf[4] = v125;
              *&buf[12] = 2114;
              *&buf[14] = v84;
              *&buf[22] = 2112;
              v161 = v85;
              LOWORD(v162) = 2112;
              *(&v162 + 2) = v86;
              _os_log_impl(&dword_22AD27000, v72, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Queueing model for post-processing: %@ %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v69);
            [v123 addObject:v67];
          }
        }

        else
        {
          v77 = objc_autoreleasePoolPush();
          v78 = WeakRetained;
          v79 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v80 = HMFGetLogIdentifier();
            v81 = [*(v134 + 32) identifier];
            v82 = [v81 shortDescription];
            *buf = 138544130;
            *&buf[4] = v80;
            *&buf[12] = 2114;
            *&buf[14] = v82;
            *&buf[22] = 2112;
            v161 = v62;
            LOWORD(v162) = 2112;
            *(&v162 + 2) = v136;
            _os_log_impl(&dword_22AD27000, v79, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to decode internal record %@: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v77);
        }

        objc_autoreleasePoolPop(contexta);
        v60 = v136;
      }

      v131 = [obja countByEnumeratingWithState:&v147 objects:v158 count:16];
      v60 = v136;
    }

    while (v131);
  }

  else
  {
    v60 = 0;
  }

  v87 = v60;

  [WeakRetained handleUpdatedInternalModels:v122];
  v88 = *(v134 + 56);
  v89 = *(v134 + 88);
  v90 = [*(v134 + 40) allValues];
  v91 = [v88 markGroupAsSentWithOutputBlock:v89 tuples:v90];

  if (v91)
  {
    v92 = objc_autoreleasePoolPush();
    v93 = WeakRetained;
    v94 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v95 = HMFGetLogIdentifier();
      v96 = [*(v134 + 32) identifier];
      v97 = [v96 shortDescription];
      *buf = 138543874;
      *&buf[4] = v95;
      *&buf[12] = 2114;
      *&buf[14] = v97;
      *&buf[22] = 2112;
      v161 = v91;
      _os_log_impl(&dword_22AD27000, v94, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to mark records as pushed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v92);
    [*(v134 + 32) markWithFormat:@"push mark as completed failed: %@", v91];
  }

  v98 = [v123 count] == 0;
  v99 = objc_autoreleasePoolPush();
  v100 = WeakRetained;
  v101 = HMFGetOSLogHandle();
  v102 = os_log_type_enabled(v101, OS_LOG_TYPE_INFO);
  if (v98)
  {
    if (v102)
    {
      v116 = HMFGetLogIdentifier();
      v117 = [*(v134 + 32) identifier];
      v118 = [v117 shortDescription];
      *buf = 138543618;
      *&buf[4] = v116;
      *&buf[12] = 2114;
      *&buf[14] = v118;
      _os_log_impl(&dword_22AD27000, v101, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Nothing to post-process", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v99);
    v119 = *(v134 + 72);
    v110 = objc_alloc_init(HMBCloudZonePushResult);
    [v119 finishWithResult:v110];
  }

  else
  {
    if (v102)
    {
      v103 = HMFGetLogIdentifier();
      v104 = [*(v134 + 32) identifier];
      v105 = [v104 shortDescription];
      v106 = [v123 count];
      *buf = 138543874;
      *&buf[4] = v103;
      *&buf[12] = 2114;
      *&buf[14] = v105;
      *&buf[22] = 2048;
      v161 = v106;
      _os_log_impl(&dword_22AD27000, v101, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Post-processing %lu models", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v99);
    v107 = MEMORY[0x277CCACA8];
    v108 = [*(v134 + 64) label];
    v109 = [v107 stringWithFormat:@"Post-process: %@", v108];
    v110 = [HMBProcessingOptions optionsWithLabel:v109];

    [(HMBCloudZonePushResult *)v110 setShouldEnqueueMirrorOutput:0];
    v111 = [*(v134 + 56) updateModels:v123 options:v110];
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_27;
    v143[3] = &unk_2786E18A8;
    objc_copyWeak(&v145, (v134 + 80));
    v144 = *(v134 + 32);
    v112 = [v111 addFailureBlock:v143];
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_28;
    v140[3] = &unk_2786E18D0;
    objc_copyWeak(&v142, (v134 + 80));
    v141 = *(v134 + 32);
    v113 = [v111 addSuccessBlock:v140];
    v114 = [*(v134 + 72) completionHandlerAdapter];
    v115 = [v111 addCompletionBlock:v114];

    objc_destroyWeak(&v142);
    objc_destroyWeak(&v145);
  }

  v120 = *MEMORY[0x277D85DE8];
}

void __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_27(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) identifier];
    v10 = [v9 shortDescription];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Post-processing failed: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

void __86__HMBCloudZone_Push__pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_28(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) identifier];
    v10 = [v9 shortDescription];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Post-processing succeeded", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_pushDeletedParticipantRecordIDs:(id)ds
{
  dsCopy = ds;
  allObjects = [dsCopy allObjects];
  v6 = [(HMBCloudZone *)self pushRecordsToUpdate:MEMORY[0x277CBEBF8] recordIDsToRemove:allObjects configuration:0 rollbackEnabled:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HMBCloudZone_Share_Internal___pushDeletedParticipantRecordIDs___block_invoke;
  v10[3] = &unk_2786E1C80;
  v11 = dsCopy;
  selfCopy = self;
  v7 = dsCopy;
  v8 = [v6 flatMap:v10];

  return v8;
}

id __65__HMBCloudZone_Share_Internal___pushDeletedParticipantRecordIDs___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 deletedRecordIDs];
  v5 = [v4 count];
  v6 = [*(a1 + 32) count];

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v8 = [v3 fatalError];
    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete share participant records: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = MEMORY[0x277D2C900];
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v7 = [v13 futureWithError:v14];
    }

    else
    {
      v7 = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_pushUpdatedShare:(id)share participantRecord:(id)record
{
  v19[2] = *MEMORY[0x277D85DE8];
  shareCopy = share;
  recordCopy = record;
  v19[0] = shareCopy;
  v19[1] = recordCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v9 = [(HMBCloudZone *)self pushRecordsToUpdate:v8 recordIDsToRemove:MEMORY[0x277CBEBF8] configuration:0 rollbackEnabled:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HMBCloudZone_Share_Internal___pushUpdatedShare_participantRecord___block_invoke;
  v15[3] = &unk_2786E1C58;
  v16 = shareCopy;
  v17 = recordCopy;
  selfCopy = self;
  v10 = recordCopy;
  v11 = shareCopy;
  v12 = [v9 flatMap:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __68__HMBCloudZone_Share_Internal___pushUpdatedShare_participantRecord___block_invoke(id *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 updatedRecords];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__HMBCloudZone_Share_Internal___pushUpdatedShare_participantRecord___block_invoke_2;
  v36[3] = &unk_2786E1C30;
  v37 = a1[4];
  v5 = [v4 na_firstObjectPassingTest:v36];

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 updatedRecords];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __68__HMBCloudZone_Share_Internal___pushUpdatedShare_participantRecord___block_invoke_3;
  v34[3] = &unk_2786E1C30;
  v35 = a1[5];
  v10 = [v9 na_firstObjectPassingTest:v34];

  if (v8 && v10)
  {
    v11 = a1[6];
    v33 = 0;
    v12 = [v11 handleUpdatedShareParticipantRecord:v10 error:&v33];
    v13 = v33;
    if (v12)
    {
      v14 = a1[6];
      v32 = v13;
      v15 = [v14 handleUpdatedShare:v8 error:&v32];
      v16 = v32;

      if (v15)
      {
        [MEMORY[0x277D2C900] futureWithResult:v8];
      }

      else
      {
        [MEMORY[0x277D2C900] futureWithError:v16];
      }
      v29 = ;
      v13 = v16;
      goto LABEL_21;
    }

    v26 = MEMORY[0x277D2C900];
  }

  else
  {
    v17 = [v3 conflicts];
    v18 = [v17 count];

    v19 = objc_autoreleasePoolPush();
    v20 = a1[6];
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v23;
        _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@Hit conflict when pushing share and share participant record; retrying operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v24 = MEMORY[0x277D2C900];
      v25 = [MEMORY[0x277CCA9B8] hmbRetryShareOperationError];
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v3 fatalError];
        *buf = 138543618;
        v39 = v27;
        v40 = 2112;
        v41 = v28;
        _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to push share and share participant record: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = MEMORY[0x277D2C900];
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    v13 = v25;
    v26 = v24;
  }

  v29 = [v26 futureWithError:v13];
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __68__HMBCloudZone_Share_Internal___pushUpdatedShare_participantRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __68__HMBCloudZone_Share_Internal___pushUpdatedShare_participantRecord___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_pushUpdatedShare:(id)share
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = share;
  v4 = MEMORY[0x277CBEA60];
  shareCopy = share;
  v6 = [v4 arrayWithObjects:v12 count:1];
  v7 = [(HMBCloudZone *)self pushRecordsToUpdate:v6 recordIDsToRemove:0 configuration:0 rollbackEnabled:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMBCloudZone_Share_Internal___pushUpdatedShare___block_invoke;
  v11[3] = &unk_2786E1BE0;
  v11[4] = self;
  v8 = [v7 flatMap:v11];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __50__HMBCloudZone_Share_Internal___pushUpdatedShare___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 updatedRecords];
  v5 = [v4 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = *(a1 + 32);
    v27 = 0;
    v9 = [v8 handleUpdatedShare:v7 error:&v27];
    v10 = v27;
    v11 = MEMORY[0x277D2C900];
    if (v9)
    {
      v12 = [MEMORY[0x277D2C900] futureWithResult:v7];
      goto LABEL_16;
    }
  }

  else
  {
    v13 = [v3 conflicts];
    v14 = [v13 count];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v19;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_INFO, "%{public}@Hit conflict when pushing share; retrying operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v20 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmbRetryShareOperationError];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v3 fatalError];
        *buf = 138543618;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to push share: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    v10 = v21;
    v11 = v20;
  }

  v12 = [v11 futureWithError:v10];
LABEL_16:
  v24 = v12;

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_addShareOperationAfterStartupWithName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  startUp = [(HMBCloudZone *)self startUp];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HMBCloudZone_Share_Internal___addShareOperationAfterStartupWithName_block___block_invoke;
  v13[3] = &unk_2786E1C08;
  v13[4] = self;
  v14 = nameCopy;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = nameCopy;
  v11 = [startUp flatMap:v13];

  return v11;
}

- (id)_addShareOperationWithName:(id)name block:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  v8 = [[HMBShareOperation alloc] initWithCloudZone:self block:blockCopy];
  [(HMBShareOperation *)v8 setName:nameCopy];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v12;
    v19 = 2112;
    v20 = nameCopy;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding %@ share operation: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  shareOperationQueue = [(HMBCloudZone *)selfCopy shareOperationQueue];
  [shareOperationQueue addOperation:v8];

  future = [(HMBFutureOperation *)v8 future];

  v15 = *MEMORY[0x277D85DE8];

  return future;
}

id __92__HMBCloudZone_Share_Internal___leaveCloudShareRequestingNewInvitationToken_allowCloudPull___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 fatalError];
  v5 = v4;
  if (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v3;
      v12 = "%{public}@Successfully pushed changes for leaving cloud share with result: %@";
      v13 = v10;
      v14 = 22;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v7);
    v15 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_12;
  }

  v6 = [v4 hmbIsCKZoneDeletedError];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v11;
      v12 = "%{public}@Received zone deleted error when leaving cloud share";
      v13 = v10;
      v14 = 12;
LABEL_7:
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, v12, &v20, v14);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to push changes for leaving cloud share: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v15 = [MEMORY[0x277D2C900] futureWithError:v5];
LABEL_12:
  v17 = v15;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)leaveCloudShareRequestingNewInvitationToken:(BOOL)token
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HMBCloudZone_Share_Internal__leaveCloudShareRequestingNewInvitationToken___block_invoke;
  v5[3] = &unk_2786E1B90;
  v5[4] = self;
  tokenCopy = token;
  v3 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Leave Cloud Share" block:v5];

  return v3;
}

- (id)_createShareModel
{
  v25 = *MEMORY[0x277D85DE8];
  shareModel = [(HMBCloudZone *)self shareModel];

  if (shareModel)
  {
    shareModel2 = [(HMBCloudZone *)self shareModel];
    v5 = [(HMBCloudZone *)self encodeShareModel:shareModel2];

    v6 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v10;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Creating share model", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [HMBCloudZoneShareModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    stateModelID = [(HMBCloudZone *)selfCopy stateModelID];
    v14 = [(HMBModel *)v11 initWithModelID:uUID parentModelID:stateModelID];

    v15 = objc_alloc(MEMORY[0x277CBC680]);
    cloudZoneID = [(HMBCloudZone *)selfCopy cloudZoneID];
    zoneID = [cloudZoneID zoneID];
    v18 = [v15 initWithRecordZoneID:zoneID];
    [(HMBCloudZoneShareModel *)v14 setShare:v18];

    share = [(HMBCloudZoneShareModel *)v14 share];
    [share setParticipantVisibility:2];

    v20 = [(HMBCloudZone *)selfCopy encodeShareModel:v14];
    v6 = [(HMBCloudZone *)selfCopy _pushUpdatedShare:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createShareModel
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__HMBCloudZone_Share_Internal__createShareModel__block_invoke;
  v4[3] = &unk_2786E1B68;
  v4[4] = self;
  v2 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Create Share Model" block:v4];

  return v2;
}

id __48__HMBCloudZone_Share_Internal__createShareModel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createShareModel];
  v2 = [v1 flatMap:&__block_literal_global_12_6312];

  return v2;
}

- (void)handleUpdatedShareParticipantModels:(id)models
{
  v59 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  os_unfair_lock_lock_with_options();
  selfCopy = self;
  localZone = [(HMBCloudZone *)self localZone];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = modelsCopy;
  v5 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v5)
  {
    v44 = *v48;
    do
    {
      v46 = v5;
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = selfCopy;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          participant = [v7 participant];
          *buf = 138543618;
          v53 = v11;
          v54 = 2112;
          v55 = participant;
          _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling updated share participant: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        participant2 = [v7 participant];
        clientIdentifier = [participant2 clientIdentifier];

        shareParticipantModelsByClientIdentifier = [(HMBCloudZone *)v9 shareParticipantModelsByClientIdentifier];
        v16 = [shareParticipantModelsByClientIdentifier objectForKeyedSubscript:clientIdentifier];

        if (v16)
        {
          hmbModelID = [v16 hmbModelID];
          hmbModelID2 = [v7 hmbModelID];
          v19 = [hmbModelID isEqual:hmbModelID2];

          if ((v19 & 1) == 0)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = v9;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              uUIDString = [clientIdentifier UUIDString];
              *buf = 138543874;
              v53 = v23;
              v54 = 2112;
              v55 = uUIDString;
              v56 = 2112;
              v57 = v16;
              _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_INFO, "%{public}@Removing existing share participant model with client identifier %@ because it has a different model ID: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v20);
            hmbModelID3 = [v16 hmbModelID];
            v51 = hmbModelID3;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
            v27 = [localZone remove:v26];

            if (v27)
            {
              v28 = objc_autoreleasePoolPush();
              v29 = v21;
              v30 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = HMFGetLogIdentifier();
                *buf = 138543618;
                v53 = v31;
                v54 = 2112;
                v55 = v27;
                _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove existing share participant model: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v28);
            }
          }
        }

        shareParticipantModelsByClientIdentifier2 = [(HMBCloudZone *)v9 shareParticipantModelsByClientIdentifier];
        participant3 = [v7 participant];
        clientIdentifier2 = [participant3 clientIdentifier];
        [shareParticipantModelsByClientIdentifier2 setObject:v7 forKeyedSubscript:clientIdentifier2];
      }

      v5 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v5);
  }

  allObjects = [obj allObjects];
  v36 = [localZone update:allObjects];

  if (v36)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v40;
      v54 = 2112;
      v55 = v36;
      _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to update share participant models: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
  }

  os_unfair_lock_unlock(&selfCopy->_propertyLock);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedShareModel:(id)model
{
  v89 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    share = [modelCopy share];
    *buf = 138543618;
    v83 = v6;
    v84 = 2112;
    v85 = share;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Handling updated share: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v61 = [MEMORY[0x277CBEB58] set];
  v63 = [MEMORY[0x277CBEB58] set];
  v59 = 8;
  os_unfair_lock_lock_with_options();
  v62 = [MEMORY[0x277CBEB18] arrayWithObject:modelCopy];
  array = [MEMORY[0x277CBEB18] array];
  share2 = [modelCopy share];
  participants = [share2 participants];
  v66 = [participants na_dictionaryWithKeyGenerator:&__block_literal_global_6320];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  shareParticipantModelsByClientIdentifier = [(HMBCloudZone *)selfCopy shareParticipantModelsByClientIdentifier];
  obj = [shareParticipantModelsByClientIdentifier allValues];

  v11 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v11)
  {
    v12 = *v77;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v76 + 1) + 8 * i);
        participant = [v14 participant];
        ckShareParticipant = [participant ckShareParticipant];
        participantID = [ckShareParticipant participantID];
        v18 = [v66 objectForKeyedSubscript:participantID];

        if (v18)
        {
          ckShareParticipant2 = [participant ckShareParticipant];
          v20 = [ckShareParticipant2 hmbIsEqualToParticipant:v18];

          if ((v20 & 1) == 0)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = selfCopy;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543874;
              v83 = v24;
              v84 = 2112;
              v85 = participant;
              v86 = 2112;
              v87 = v18;
              _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating CKShareParticipant on participant %@ to %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v21);
            v25 = [HMBShareParticipant alloc];
            clientIdentifier = [participant clientIdentifier];
            v27 = [(HMBShareParticipant *)v25 initWithCKShareParticipant:v18 clientIdentifier:clientIdentifier];

            if (![(HMBShareParticipant *)v27 hasAccepted])
            {
              pendingInvitation = [participant pendingInvitation];
              [(HMBShareParticipant *)v27 setPendingInvitation:pendingInvitation];
            }

            v29 = [v14 copy];
            [v29 setParticipant:v27];
            shareParticipantModelsByClientIdentifier2 = [(HMBCloudZone *)v22 shareParticipantModelsByClientIdentifier];
            clientIdentifier2 = [participant clientIdentifier];
            [shareParticipantModelsByClientIdentifier2 setObject:v29 forKeyedSubscript:clientIdentifier2];

            [v62 addObject:v29];
            [v61 addObject:v29];
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v35;
            v84 = 2112;
            v85 = participant;
            _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_INFO, "%{public}@Removing participant that is no longer on share: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          shareParticipantModelsByClientIdentifier3 = [(HMBCloudZone *)v33 shareParticipantModelsByClientIdentifier];
          clientIdentifier3 = [participant clientIdentifier];
          [shareParticipantModelsByClientIdentifier3 setObject:0 forKeyedSubscript:clientIdentifier3];

          hmbModelID = [v14 hmbModelID];
          [array addObject:hmbModelID];

          [v63 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v11);
  }

  [(HMBCloudZone *)selfCopy setShareModel:modelCopy];
  localZone = [(HMBCloudZone *)selfCopy localZone];
  v40 = [localZone update:v62 remove:array];

  if (v40)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = selfCopy;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v44;
      v84 = 2112;
      v85 = v40;
      _os_log_impl(&dword_22AD27000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to update/remove share models: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
  }

  os_unfair_lock_unlock((selfCopy + v59));
  delegate = [(HMBCloudZone *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = v61;
    v47 = [v46 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v47)
    {
      v48 = *v73;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v73 != v48)
          {
            objc_enumerationMutation(v46);
          }

          participant2 = [*(*(&v72 + 1) + 8 * j) participant];
          clientIdentifier4 = [participant2 clientIdentifier];
          [delegate cloudZone:selfCopy didUpdateParticipantWithClientIdentifier:clientIdentifier4];
        }

        v47 = [v46 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v47);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v52 = v63;
    v53 = [v52 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v53)
    {
      v54 = *v69;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v69 != v54)
          {
            objc_enumerationMutation(v52);
          }

          participant3 = [*(*(&v68 + 1) + 8 * k) participant];
          clientIdentifier5 = [participant3 clientIdentifier];
          [delegate cloudZone:selfCopy didRemoveParticipantWithClientIdentifier:clientIdentifier5];
        }

        v53 = [v52 countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v53);
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleUpdatedShareParticipantRecord:(id)record error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v26 = 0;
  v7 = [(HMBCloudZone *)self decodeModelFromRecord:recordCopy externalRecordFields:0 source:2 error:&v26];
  v8 = v26;
  if (v7)
  {
    v9 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (isKindOfClass)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v9];
      [(HMBCloudZone *)self handleUpdatedShareParticipantModels:v13];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v22 = v25 = v19;
        *buf = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Decoded model was not a HMBCloudZoneShareParticipantModel: %@", buf, 0x16u);

        v19 = v25;
      }

      objc_autoreleasePoolPop(v19);
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v17;
      v29 = 2112;
      v30 = recordCopy;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode model from share participant record %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      v18 = v8;
      isKindOfClass = 0;
      *error = v8;
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (BOOL)handleUpdatedShare:(id)share error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  v7 = [(HMBCloudZone *)self decodeShareModelFromShare:shareCopy];
  if (v7)
  {
    [(HMBCloudZone *)self handleUpdatedShareModel:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = shareCopy;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode share model from share %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (void)initializeShareModels
{
  v74 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localZone = [(HMBCloudZone *)selfCopy localZone];
  if (localZone)
  {
    stateModelID = [(HMBCloudZone *)selfCopy stateModelID];
    *v63 = 0;
    v5 = [localZone fetchModelsWithParentModelID:stateModelID ofType:objc_opt_class() error:v63];
    v6 = *v63;

    if (v5)
    {
      if ([v5 count] >= 2)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = selfCopy;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          hmbDescription = [v5 hmbDescription];
          *buf = 138543618;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = hmbDescription;
          _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found more than one share model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v12 = [v5 na_map:&__block_literal_global_97];
        allObjects = [v12 allObjects];

        v14 = [localZone remove:allObjects];
        if (v14)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v8;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove existing share modelIDs: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
        }

        v19 = [MEMORY[0x277CBEB98] set];

        v5 = v19;
      }

      anyObject = [v5 anyObject];
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
      if (anyObject)
      {
        if (v24)
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = anyObject;
          _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@Fetched existing share model: %@", buf, 0x16u);
        }
      }

      else if (v24)
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&dword_22AD27000, v23, OS_LOG_TYPE_INFO, "%{public}@Did not find existing share model", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch share models: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      anyObject = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch share model because local zone is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    anyObject = 0;
  }

  if (anyObject)
  {
    v35 = selfCopy;
    v62 = anyObject;
    localZone2 = [(HMBCloudZone *)v35 localZone];
    if (localZone2)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v38 = [MEMORY[0x277CBEB58] set];
      stateModelID2 = [(HMBCloudZone *)v35 stateModelID];
      v61 = [localZone2 queryModelsWithParentModelID:stateModelID2 ofType:objc_opt_class()];

      share = [v62 share];
      participants = [share participants];
      v42 = [participants na_dictionaryWithKeyGenerator:&__block_literal_global_100];

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____initializeShareParticipantModels_block_invoke_2;
      v68 = &unk_2786E1E58;
      v60 = v42;
      v69 = v60;
      v43 = v35;
      v70 = v43;
      v71 = localZone2;
      v44 = v38;
      v72 = v44;
      v45 = dictionary;
      v73 = v45;
      [v61 enumerateObjectsUsingBlock:buf];
      allValues = [v45 allValues];
      v47 = [allValues na_map:&__block_literal_global_105];

      v48 = objc_autoreleasePoolPush();
      v49 = v43;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *v63 = 138543618;
        *&v63[4] = v51;
        *&v63[12] = 2112;
        *&v63[14] = v47;
        _os_log_impl(&dword_22AD27000, v50, OS_LOG_TYPE_INFO, "%{public}@Initializing with fetched participants: %@", v63, 0x16u);
      }

      objc_autoreleasePoolPop(v48);
      os_unfair_lock_lock_with_options();
      shareParticipantModelsByClientIdentifier = [(os_unfair_lock_s *)v49 shareParticipantModelsByClientIdentifier];
      [shareParticipantModelsByClientIdentifier addEntriesFromDictionary:v45];

      os_unfair_lock_unlock(v49 + 2);
      if ([v44 count])
      {
        *v63 = MEMORY[0x277D85DD0];
        *&v63[8] = 3221225472;
        *&v63[16] = ____initializeShareParticipantModels_block_invoke_109;
        v64 = &unk_2786E2288;
        v53 = v49;
        v65 = v53;
        v66 = v44;
        v54 = [(os_unfair_lock_s *)v53 _addShareOperationAfterStartupWithName:@"Delete extraneous participant models" block:v63];
      }
    }

    else
    {
      v55 = objc_autoreleasePoolPush();
      v56 = v35;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v58;
        _os_log_impl(&dword_22AD27000, v57, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize share participant models because local zone is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v55);
    }

    [(HMBCloudZone *)v35 handleUpdatedShareModel:v62];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (id)participantWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  shareParticipantModelsByClientIdentifier = [(HMBCloudZone *)self shareParticipantModelsByClientIdentifier];
  v6 = [shareParticipantModelsByClientIdentifier objectForKeyedSubscript:identifierCopy];
  participant = [v6 participant];
  v8 = [participant copy];

  os_unfair_lock_unlock(&self->_propertyLock);

  return v8;
}

- (NSSet)participants
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  shareParticipantModelsByClientIdentifier = [(HMBCloudZone *)self shareParticipantModelsByClientIdentifier];
  allValues = [shareParticipantModelsByClientIdentifier allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        participant = [*(*(&v13 + 1) + 8 * i) participant];
        [v3 addObject:participant];
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_propertyLock);
  v10 = [v3 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_revokeShareAccessForParticipant:(id)participant usingShare:(id)share
{
  v33 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  shareCopy = share;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = participantCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Revoking share access for participant: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  shareParticipantModelsByClientIdentifier = [(HMBCloudZone *)selfCopy shareParticipantModelsByClientIdentifier];
  clientIdentifier = [participantCopy clientIdentifier];
  v14 = [shareParticipantModelsByClientIdentifier objectForKeyedSubscript:clientIdentifier];

  os_unfair_lock_unlock(&selfCopy->_propertyLock);
  if (v14)
  {
    ckShareParticipant = [participantCopy ckShareParticipant];
    v16 = __removeParticipantFromShare(selfCopy, ckShareParticipant, shareCopy);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__HMBCloudZone_Share___revokeShareAccessForParticipant_usingShare___block_invoke;
    v27[3] = &unk_2786E1CD0;
    v27[4] = selfCopy;
    v28 = v14;
    v17 = [v16 flatMap:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__HMBCloudZone_Share___revokeShareAccessForParticipant_usingShare___block_invoke_78;
    v26[3] = &unk_2786E1E10;
    v26[4] = selfCopy;
    v18 = [v17 addSuccessBlock:v26];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = participantCopy;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not find participant model for participant %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = MEMORY[0x277D2C900];
    ckShareParticipant = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v18 = [v23 futureWithError:ckShareParticipant];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

id __67__HMBCloudZone_Share___revokeShareAccessForParticipant_usingShare___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully pushed share changes for share access revocation", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) recordIDForModel:*(a1 + 40)];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v11 = [v9 _pushDeletedParticipantRecordIDs:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __67__HMBCloudZone_Share___revokeShareAccessForParticipant_usingShare___block_invoke_78(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully pushed share participant deletion for share access revocation", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)revokeShareAccessForParticipant:(id)participant
{
  participantCopy = participant;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMBCloudZone_Share__revokeShareAccessForParticipant___block_invoke;
  v8[3] = &unk_2786E2288;
  v8[4] = self;
  v9 = participantCopy;
  v5 = participantCopy;
  v6 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Revoke Share Access" block:v8];

  return v6;
}

id __55__HMBCloudZone_Share__revokeShareAccessForParticipant___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createShareModel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HMBCloudZone_Share__revokeShareAccessForParticipant___block_invoke_2;
  v6[3] = &unk_2786E1CD0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = [v2 flatMap:v6];

  return v4;
}

- (id)_setWriteAccessEnabled:(BOOL)enabled forParticipant:(id)participant usingShare:(id)share
{
  enabledCopy = enabled;
  v44 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  shareCopy = share;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMFBooleanToString();
    *buf = 138543874;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = participantCopy;
    _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting write access enabled to %@ for participant: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  participants = [shareCopy participants];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __72__HMBCloudZone_Share___setWriteAccessEnabled_forParticipant_usingShare___block_invoke;
  v36[3] = &unk_2786E1DE8;
  v16 = participantCopy;
  v37 = v16;
  v17 = [participants na_firstObjectPassingTest:v36];

  if (!v17)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      participants2 = [shareCopy participants];
      *buf = 138543874;
      v39 = v28;
      v40 = 2112;
      v41 = v16;
      v42 = 2112;
      v43 = participants2;
      _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find CKShareParticipant for participant %@. All CKShareParticipants: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v30 = MEMORY[0x277D2C900];
    v31 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v32 = [v30 futureWithError:v31];
    goto LABEL_15;
  }

  if (enabledCopy)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  if ([v17 permission] != v18)
  {
    [v17 setPermission:v18];
    v31 = [(HMBCloudZone *)selfCopy _pushUpdatedShare:shareCopy];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__HMBCloudZone_Share___setWriteAccessEnabled_forParticipant_usingShare___block_invoke_74;
    v35[3] = &unk_2786E1CA8;
    v35[4] = selfCopy;
    v32 = [v31 flatMap:v35];
LABEL_15:
    v24 = v32;

    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    [v17 permission];
    v23 = CKStringFromParticipantPermission();
    *buf = 138543618;
    v39 = v22;
    v40 = 2112;
    v41 = v23;
    _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@Not setting write access enabled because participant's permission is already %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v24 = [MEMORY[0x277D2C900] futureWithResult:shareCopy];
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __72__HMBCloudZone_Share___setWriteAccessEnabled_forParticipant_usingShare___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 ckShareParticipant];
  v5 = [v3 isEqual:v4];

  return v5;
}

id __72__HMBCloudZone_Share___setWriteAccessEnabled_forParticipant_usingShare___block_invoke_74(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully pushed changes for participant write access update", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)setWriteAccessEnabled:(BOOL)enabled forParticipant:(id)participant
{
  participantCopy = participant;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HMBCloudZone_Share__setWriteAccessEnabled_forParticipant___block_invoke;
  v10[3] = &unk_2786E1DC0;
  enabledCopy = enabled;
  v10[4] = self;
  v11 = participantCopy;
  v7 = participantCopy;
  v8 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Set Write Access Enabled" block:v10];

  return v8;
}

id __60__HMBCloudZone_Share__setWriteAccessEnabled_forParticipant___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createShareModel];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMBCloudZone_Share__setWriteAccessEnabled_forParticipant___block_invoke_2;
  v7[3] = &unk_2786E1D98;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = v3;
  v4 = [v2 flatMap:v7];
  v5 = [v4 flatMap:&__block_literal_global_73];

  return v5;
}

- (id)_fetchInvitationWithContext:(id)context usingShare:(id)share
{
  v71 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  shareCopy = share;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching invitation with context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  cloudZoneID = [(HMBCloudZone *)selfCopy cloudZoneID];
  v13 = [cloudZoneID scope] == 2;

  if (v13)
  {
    participantClientIdentifier = [contextCopy participantClientIdentifier];
    v15 = [(HMBCloudZone *)selfCopy participantWithClientIdentifier:participantClientIdentifier];

    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = contextCopy;
    ckShareParticipant = [v15 ckShareParticipant];
    permission = [ckShareParticipant permission];

    LODWORD(ckShareParticipant) = [v16 shouldGrantWriteAccess];
    if (((permission != 3) ^ ckShareParticipant))
    {
      if ([v15 hasAccepted])
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Asked to fetch an invitation for client identifier corresponding to participant that has already accepted: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = MEMORY[0x277D2C900];
        v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:1];
        v25 = [v23 futureWithError:v24];

        goto LABEL_24;
      }

      pendingInvitation = [v15 pendingInvitation];
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
      if (pendingInvitation)
      {
        if (v42)
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v43;
          *&buf[12] = 2112;
          *&buf[14] = pendingInvitation;
          _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_INFO, "%{public}@Returning existing pending invitation: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        v25 = [MEMORY[0x277D2C900] futureWithResult:pendingInvitation];

        goto LABEL_24;
      }

      if (v42)
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_INFO, "%{public}@Participant already exists that has not accepted but has no pending invitation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
LABEL_23:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v68 = __Block_byref_object_copy__6375;
      v69 = __Block_byref_object_dispose__6376;
      v70 = 0;
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x3032000000;
      v63[3] = __Block_byref_object_copy__6375;
      v63[4] = __Block_byref_object_dispose__6376;
      v64 = 0;
      cloudDatabase = [(HMBCloudZone *)selfCopy cloudDatabase];
      lookupInfo = [contextCopy lookupInfo];
      v47 = [cloudDatabase fetchParticipantWithLookupInfo:lookupInfo];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke_64;
      v58[3] = &unk_2786E1CF8;
      v62 = buf;
      v48 = contextCopy;
      v59 = v48;
      v60 = selfCopy;
      v61 = shareCopy;
      v49 = [v47 flatMap:v58];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke_2;
      v54[3] = &unk_2786E1D48;
      v54[4] = selfCopy;
      v56 = buf;
      v57 = v63;
      v55 = v48;
      v50 = [v49 flatMap:v54];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke_68;
      v53[3] = &unk_2786E1D70;
      v53[4] = v63;
      v25 = [v50 flatMap:v53];

      _Block_object_dispose(v63, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_24;
    }

    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v68 = v16;
      _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_INFO, "%{public}@Configuring existing participant %@ for the requested invitation context: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = v32;
    v15 = v15;
    v36 = shareCopy;
    v37 = -[HMBCloudZone _setWriteAccessEnabled:forParticipant:usingShare:](v35, "_setWriteAccessEnabled:forParticipant:usingShare:", [v16 shouldGrantWriteAccess], v15, v36);

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke;
    v65[3] = &unk_2786E1CD0;
    v65[4] = v35;
    v66 = v16;
    v25 = [v37 flatMap:v65];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch an invitation on non-private zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v25 = [v30 futureWithError:v15];
  }

LABEL_24:

  v51 = *MEMORY[0x277D85DE8];

  return v25;
}

id __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching invitation again after configuring participant", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _fetchInvitationWithContext:*(a1 + 40) usingShare:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke_64(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v4 = a2;
  if ([*(a1 + 32) shouldGrantWriteAccess])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [*(*(*(a1 + 56) + 8) + 40) setPermission:v5];
  v6 = __addParticipantToShare(*(a1 + 40), *(*(*(a1 + 56) + 8) + 40), *(a1 + 48));

  return v6;
}

id __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke_2(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(HMBCloudZoneShareParticipantModel *)v3 participants];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __62__HMBCloudZone_Share___fetchInvitationWithContext_usingShare___block_invoke_3;
  v49[3] = &unk_2786E1D20;
  v49[4] = *(a1 + 48);
  v5 = [v4 na_firstObjectPassingTest:v49];

  if (v5)
  {
    v6 = [(HMBCloudZoneShareParticipantModel *)v5 invitationToken];
    if (v6)
    {
      v7 = [HMBShareInvitation alloc];
      v8 = [(HMBCloudZoneShareParticipantModel *)v3 URL];
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) cloudZoneID];
      v11 = [(HMBShareInvitation *)v7 initWithURL:v8 token:v6 context:v9 cloudZoneID:v10];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v51 = v17;
        v52 = 2112;
        v53 = v18;
        _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Created invitation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [HMBShareParticipant alloc];
      v20 = [*(a1 + 40) participantClientIdentifier];
      v21 = [(HMBShareParticipant *)v19 initWithCKShareParticipant:v5 clientIdentifier:v20];

      [(HMBShareParticipant *)v21 setPendingInvitation:*(*(*(a1 + 56) + 8) + 40)];
      v22 = [HMBCloudZoneShareParticipantModel alloc];
      v23 = [MEMORY[0x277CCAD78] UUID];
      v24 = [*(a1 + 32) stateModelID];
      v25 = [(HMBModel *)v22 initWithModelID:v23 parentModelID:v24];

      [(HMBCloudZoneShareParticipantModel *)v25 setParticipant:v21];
      v26 = *(a1 + 32);
      v48 = 0;
      v27 = [v26 encodeRecordFromModel:v25 existingRecord:0 error:&v48];
      v28 = v48;
      if (v27)
      {
        v29 = [*(a1 + 32) _pushUpdatedShare:v3 participantRecord:v27];
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = *(a1 + 32);
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v44 = v47 = v41;
          *buf = 138543874;
          v51 = v44;
          v52 = 2112;
          v53 = v25;
          v54 = 2112;
          v55 = v28;
          _os_log_impl(&dword_22AD27000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode participant model %@: %@", buf, 0x20u);

          v41 = v47;
        }

        objc_autoreleasePoolPop(v41);
        v29 = [MEMORY[0x277D2C900] futureWithError:v28];
      }

      v35 = v29;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 32);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v39;
        v52 = 2112;
        v53 = v5;
        _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to find invitation token on share participant %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v40 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v35 = [v40 futureWithError:v21];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = *(a1 + 32);
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v33;
      v52 = 2112;
      v53 = v3;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to find updated share participant on share %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v35 = [v34 futureWithError:v6];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)fetchInvitationWithContext:(id)context
{
  contextCopy = context;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMBCloudZone_Share__fetchInvitationWithContext___block_invoke;
  v8[3] = &unk_2786E2288;
  v8[4] = self;
  v9 = contextCopy;
  v5 = contextCopy;
  v6 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Fetch Invitation" block:v8];

  return v6;
}

id __50__HMBCloudZone_Share__fetchInvitationWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createShareModel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HMBCloudZone_Share__fetchInvitationWithContext___block_invoke_2;
  v6[3] = &unk_2786E1CD0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = [v2 flatMap:v6];

  return v4;
}

- (id)fetchCloudShareIDForShareParticipantClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HMBCloudZone_Share__fetchCloudShareIDForShareParticipantClientIdentifier___block_invoke;
  v8[3] = &unk_2786E2288;
  v8[4] = self;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Fetch Cloud Share ID For Client Identifier" block:v8];

  return v6;
}

id __76__HMBCloudZone_Share__fetchCloudShareIDForShareParticipantClientIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createShareModel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HMBCloudZone_Share__fetchCloudShareIDForShareParticipantClientIdentifier___block_invoke_2;
  v6[3] = &unk_2786E1CD0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = [v2 flatMap:v6];

  return v4;
}

id __76__HMBCloudZone_Share__fetchCloudShareIDForShareParticipantClientIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) participantWithClientIdentifier:*(a1 + 40)];
  v5 = v4;
  if (!v4)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v24 = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@No participant was found with client identifier: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v8 = [v14 futureWithError:v7];
    goto LABEL_7;
  }

  v6 = [v4 cloudShareID];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277D2C900] futureWithResult:v6];
LABEL_7:
    v15 = v8;
    goto LABEL_11;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v19;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@No cloud share ID was found for participant: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = MEMORY[0x277D2C900];
  v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  v15 = [v20 futureWithError:v21];

  v7 = 0;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)fetchCurrentParticipantCloudShareID
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMBCloudZone_Share__fetchCurrentParticipantCloudShareID__block_invoke;
  v4[3] = &unk_2786E1B68;
  v4[4] = self;
  v2 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Fetch Current Participant Cloud Share ID" block:v4];

  return v2;
}

id __58__HMBCloudZone_Share__fetchCurrentParticipantCloudShareID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createShareModel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMBCloudZone_Share__fetchCurrentParticipantCloudShareID__block_invoke_2;
  v5[3] = &unk_2786E1CA8;
  v5[4] = *(a1 + 32);
  v3 = [v2 flatMap:v5];

  return v3;
}

id __58__HMBCloudZone_Share__fetchCurrentParticipantCloudShareID__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 currentUserParticipant];
  v5 = [v4 userIdentity];
  v6 = [v5 userRecordID];

  if (v6)
  {
    v7 = [[HMBShareUserID alloc] initWithUserRecordID:v6];
    v8 = [MEMORY[0x277D2C900] futureWithResult:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@No current participant record ID found on cloud zone share: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v8 = [v13 futureWithError:v7];
  }

  v14 = v8;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)fetchOwnerParticipantCloudShareID
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMBCloudZone_Share__fetchOwnerParticipantCloudShareID__block_invoke;
  v4[3] = &unk_2786E1B68;
  v4[4] = self;
  v2 = [(HMBCloudZone *)self _addShareOperationAfterStartupWithName:@"Fetch Owner Participant Cloud Share ID" block:v4];

  return v2;
}

id __56__HMBCloudZone_Share__fetchOwnerParticipantCloudShareID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createShareModel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HMBCloudZone_Share__fetchOwnerParticipantCloudShareID__block_invoke_2;
  v5[3] = &unk_2786E1CA8;
  v5[4] = *(a1 + 32);
  v3 = [v2 flatMap:v5];

  return v3;
}

id __56__HMBCloudZone_Share__fetchOwnerParticipantCloudShareID__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 owner];
  v5 = [v4 userIdentity];
  v6 = [v5 userRecordID];

  if (v6)
  {
    v7 = [[HMBShareUserID alloc] initWithUserRecordID:v6];
    v8 = [MEMORY[0x277D2C900] futureWithResult:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@No owner record ID found on cloud zone share: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v8 = [v13 futureWithError:v7];
  }

  v14 = v8;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)cloudMetadataForModel:(id)model usingEncoding:(unint64_t)encoding
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"HM.device";
  modelCopy = model;
  deviceIdentifier = [(HMBCloudZone *)self deviceIdentifier];
  v16[0] = deviceIdentifier;
  v15[1] = @"HM.encoding";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:encoding];
  v16[1] = v8;
  v15[2] = @"HM.type";
  hmbType = [modelCopy hmbType];
  v16[2] = hmbType;
  v15[3] = @"HM.modelID";
  hmbModelID = [modelCopy hmbModelID];
  v16[3] = hmbModelID;
  v15[4] = @"HM.parentModelID";
  hmbParentModelID = [modelCopy hmbParentModelID];

  v16[4] = hmbParentModelID;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)populateV4CloudRecord:(id)record withModel:(id)model metadataFieldData:(id)data startEncoding:(unint64_t)encoding endEncoding:(unint64_t)endEncoding encodingContext:(id)context error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  modelCopy = model;
  dataCopy = data;
  contextCopy = context;
  cloudDatabase = [(HMBCloudZone *)self cloudDatabase];
  if (encoding >= 2)
  {
    v17 = 1;
    do
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", v17];
      configuration = [cloudDatabase configuration];
      [recordCopy hmbSetObject:0 forKey:v18 encrypted:{objc_msgSend(configuration, "isManateeContainer")}];

      ++v17;
    }

    while (encoding != v17);
  }

  if (encoding >= endEncoding)
  {
    v21 = 0;
LABEL_10:
    configuration2 = [cloudDatabase configuration];
    v30 = dataCopy;
    [recordCopy hmbSetObject:dataCopy forKey:@"k00" encrypted:{objc_msgSend(configuration2, "isManateeContainer")}];

    v20 = 1;
  }

  else
  {
    selfCopy = self;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v21;
      modelContainer = [contextCopy modelContainer];
      v24 = [MEMORY[0x277CBEB98] set];
      v46 = v21;
      v25 = [modelContainer dataFromModel:modelCopy encoding:encoding storageLocation:1 updatedModelIDs:v24 error:&v46];
      v21 = v46;

      if (!v25)
      {
        break;
      }

      encoding = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", encoding];
      hmbCompress = [v25 hmbCompress];
      configuration3 = [cloudDatabase configuration];
      [recordCopy hmbSetObject:hmbCompress forKey:encoding encrypted:{objc_msgSend(configuration3, "isManateeContainer")}];

      v20 = ++encoding >= endEncoding;
      if (endEncoding == encoding)
      {
        goto LABEL_10;
      }
    }

    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      [modelCopy hmbCanonicalType];
      v35 = v42 = v31;
      hmbModelID = [modelCopy hmbModelID];
      uUIDString = [hmbModelID UUIDString];
      *buf = 138544130;
      v48 = v34;
      v49 = 2112;
      v50 = v35;
      v51 = 2112;
      v52 = uUIDString;
      v53 = 2112;
      v54 = v21;
      _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to encode model (%@.%@): %@", buf, 0x2Au);

      v31 = v42;
    }

    objc_autoreleasePoolPop(v31);
    if (error)
    {
      v38 = v21;
      *error = v21;
    }

    v30 = dataCopy;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v20;
}

@end