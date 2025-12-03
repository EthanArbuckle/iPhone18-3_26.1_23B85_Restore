@interface HMDResidentSyncServer
- (HMDBufferingStructureDataFilter)_createResponseAdapterForRequest:(void *)request writer:(void *)writer forceFullResponse:(_BYTE *)response;
- (HMDRemoteAccountMessageDestination)_destinationForUser:(uint64_t)user restrictToResidentCapable:;
- (HMDResidentSyncServer)initWithHome:(id)home codingModel:(id)model dispatcher:(id)dispatcher residentDeviceManager:(id)manager notificationCenter:(id)center persistence:(id)persistence dataSource:(id)source logEventSubmitter:(id)self0;
- (id)_generateHomeDataWithRequest:(void *)request message:(int)message useCachedToken:(void *)token error:;
- (id)decodeToken:(id)token error:(id *)error;
- (id)start;
- (int64_t)currentToken:(id *)token andHistory:(id *)history fromToken:(id)fromToken limit:(int64_t)limit error:(id *)error;
- (uint64_t)_currentToken:(void *)token andHistory:(void *)history fromToken:(uint64_t)fromToken limit:(void *)limit error:;
- (uint64_t)_parseRequestDetails:(void *)details fromDictionary:(void *)dictionary message:;
- (void)_handleFetchHomeData:(id)data;
- (void)_notifyDevicesOfHomeChangeWithToken:(void *)token changes:;
- (void)handlePersistentStoreChanged:(id)changed;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handlePrimaryResidentState:(void *)state;
- (void)interceptRemoteResidentRequest:(id)request proceed:(id)proceed;
- (void)stop;
@end

@implementation HMDResidentSyncServer

- (id)decodeToken:(id)token error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = HMDResidentSyncServer;
  v7 = [(HMDResidentSyncController *)&v15 decodeToken:tokenCopy error:error];
  if (!v7)
  {
    goto LABEL_8;
  }

  if ([(NSPersistentHistoryToken *)self->_storeExemplarToken compareToken:v7 error:0])
  {
    v8 = v7;
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Client-provided change token is incompatible with our store, ignoring it", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *error = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)handlePrimaryResidentState:(void *)state
{
  if (state)
  {
    v3 = state[4];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__HMDResidentSyncServer_handlePrimaryResidentState___block_invoke;
    v5[3] = &unk_278687F68;
    v5[4] = state;
    v6 = a2;
    state = [MEMORY[0x277D0F7C0] inContext:v3 perform:v5];
    v2 = vars8;
  }

  return state;
}

uint64_t __52__HMDResidentSyncServer_handlePrimaryResidentState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) persistentStoreCoordinator];
  v3 = *MEMORY[0x277CBE260];
  [*(*(a1 + 32) + 40) removeObserver:*(a1 + 32) name:*MEMORY[0x277CBE260] object:v2];
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 40) addObserver:*(a1 + 32) selector:sel_handlePersistentStoreChanged_ name:v3 object:v2];
    v4 = *(a1 + 32);
    v20 = 0;
    [(HMDResidentSyncServer *)v4 _currentToken:0 andHistory:0 fromToken:0 limit:0 error:?];
    v5 = v20;
    v6 = v20;
    objc_storeStrong((*(a1 + 32) + 96), v5);
    *(*(a1 + 32) + 88) = 1;
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDShortDescriptionForToken(v6);
      *buf = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Became primary resident, will broadcast Home change notification with token %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentSyncServer *)*(a1 + 32) _notifyDevicesOfHomeChangeWithToken:v6 changes:0];
    [*(*(a1 + 32) + 32) reset];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not acting as the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 32);
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;

    *(*(a1 + 32) + 88) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (uint64_t)_currentToken:(void *)token andHistory:(void *)history fromToken:(uint64_t)fromToken limit:(void *)limit error:
{
  v57[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v9 = historyCopy;
  if (!self)
  {
    v37 = 0;
    goto LABEL_35;
  }

  fromTokenCopy = fromToken;
  if (historyCopy)
  {
    v10 = fromToken < 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v50 = *MEMORY[0x277CCA050];
  while (1)
  {
    v12 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v9];
    v13 = v12;
    v14 = (v11 & 1) != 0 ? 5 : 3;
    [v12 setResultType:v14];
    v57[0] = *(self + 72);
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    [v13 setAffectedStores:v15];

    fetchRequest = [MEMORY[0x277CBE4C8] fetchRequest];
    v17 = MEMORY[0x277CCAC30];
    v18 = HMDWorkingContextNameForHomeUUID(*(self + 16));
    v19 = [v17 predicateWithFormat:@"%K == %@", @"contextName", v18];
    [fetchRequest setPredicate:v19];

    if (v11)
    {
      if (fromTokenCopy)
      {
        [v13 setFetchBatchSize:fromTokenCopy];
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
      v56 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      [fetchRequest setSortDescriptors:v21];

      [fetchRequest setFetchLimit:1];
      [v13 setFetchLimit:1];
    }

    [v13 setFetchRequest:fetchRequest];
    v22 = *(self + 32);
    v51 = 0;
    v23 = [v22 executeRequest:v13 error:&v51];
    v24 = v51;
    v25 = v24;
    if (v23)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    domain = [v24 domain];
    if (([domain isEqualToString:v50] & 1) == 0)
    {

LABEL_28:
      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v36;
        v54 = 2114;
        v55 = v25;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch store history: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      if (limit)
      {
        *limit = HMDSanitizeCoreDataError(v25);
      }

      result = 0;
LABEL_33:
      v37 = 0;
      goto LABEL_34;
    }

    code = [v25 code];

    if (code != 134301)
    {
      goto LABEL_28;
    }

    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Provided change token was expired, ignoring it", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v11 = 0;
    v9 = 0;
  }

  result = [v23 result];

  if (![result count])
  {
    if (v9)
    {
      v37 = 1;
    }

    else
    {
      if (!limit)
      {
        v9 = 0;
        goto LABEL_33;
      }

      [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unable to fetch current transaction" reason:0 suggestion:0];
      v9 = 0;
      *limit = v37 = 0;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    if (v11)
    {
      [result lastObject];
    }

    else
    {
      [result firstObject];
    }
    v40 = ;
    *a2 = [v40 token];
    if ((v11 & 1) == 0)
    {

      goto LABEL_52;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (!fromTokenCopy || [result count] <= fromTokenCopy)
  {
    if (token)
    {
      v45 = result;
      *token = result;
    }

    v37 = 2;
    goto LABEL_34;
  }

  v41 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v44;
    v54 = 2048;
    v55 = fromTokenCopy;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Not processing history, would need to process more than %zd transactions", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
LABEL_52:
  v37 = 3;
LABEL_34:

LABEL_35:
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)_notifyDevicesOfHomeChangeWithToken:(void *)token changes:
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a2;
  tokenCopy = token;
  if (!self)
  {
    goto LABEL_42;
  }

  selfCopy = self;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v7 = [self encodeToken:v5 error:0];
    [v6 setObject:v7 forKeyedSubscript:@"etag"];
    [self[8] primaryResidentGenerationID];
    v9 = v8 = self;
    uUIDString = [v9 UUIDString];
    [v6 setObject:uUIDString forKeyedSubscript:@"resgen"];

    primaryResidentSelectionTimestamp = [v8[8] primaryResidentSelectionTimestamp];
    [v6 setObject:primaryResidentSelectionTimestamp forKeyedSubscript:@"seltimestamp"];

    if ([v6 count])
    {
      v12 = [v6 copy];
    }

    else
    {
      v12 = 0;
    }

    self = selfCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = self[2];
  v14 = self[4];
  v73 = 0;
  v15 = [(_MKFModel *)_MKFHome modelWithModelID:v13 context:v14 error:&v73];
  v16 = v73;
  if (!v15)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543618;
      v76 = v56;
      v77 = 2114;
      v78 = v16;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    goto LABEL_41;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v17 = v15;
  users = [v17 users];
  allObjects = [users allObjects];
  v20 = [allObjects mutableCopy];

  guests = [v17 guests];

  allObjects2 = [guests allObjects];
  [v20 addObjectsFromArray:allObjects2];

  dictionary = [v20 copy];
  v68 = [dictionary countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (!v68)
  {
    goto LABEL_37;
  }

  v58 = v16;
  v59 = v15;
  v60 = v5;
  v65 = 0;
  v67 = *v70;
  v24 = tokenCopy;
  v25 = selfCopy;
  v63 = v12;
  obj = dictionary;
  do
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v70 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v69 + 1) + 8 * i);
      if (v24)
      {
        v28 = v27;
        v29 = v24;
        v30 = v17;
        if (!v28)
        {
          _HMFPreconditionFailure();
        }

        v31 = v30;
        v32 = v17;
        v33 = [[HMDResidentSyncCodingContext alloc] initWithTargetUser:v28 targetIsResident:0 targetDeviceAddress:0];
        if ([v25[3] isRelevantChanges:v29 withRootObject:v31 conditions:0 userContext:v33])
        {
          v34 = [(HMDResidentSyncServer *)v25 _destinationForUser:v28 restrictToResidentCapable:0];
          goto LABEL_30;
        }

        if ([v28 isOwner])
        {
          v35 = [[HMDResidentSyncCodingContext alloc] initWithTargetUser:v28 targetIsResident:1 targetDeviceAddress:0];
          if ([v25[3] isRelevantChanges:v29 withRootObject:v31 conditions:0 userContext:v35])
          {
            context = objc_autoreleasePoolPush();
            v36 = v25;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543362;
              v76 = v38;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Broadcasting Home change notification to residents only", buf, 0xCu);

              v24 = tokenCopy;
            }

            objc_autoreleasePoolPop(context);
            v34 = [(HMDResidentSyncServer *)v36 _destinationForUser:v28 restrictToResidentCapable:1];

LABEL_29:
            v12 = v63;
            v25 = selfCopy;
LABEL_30:

            v17 = v32;
            if (!v34)
            {
              goto LABEL_32;
            }

LABEL_31:
            v43 = [HMDRemoteMessage alloc];
            v44 = HMDHomeDataChangedMessageTimeout();
            modelID = [v17 modelID];
            uUIDString2 = [modelID UUIDString];
            v65 = 1;
            v47 = [(HMDRemoteMessage *)v43 initWithName:@"HMDHomeDataChangedMessage" qualityOfService:-1 destination:v34 payload:v12 type:3 timeout:1 secure:v44 restriction:-1 sendOptions:1 collapseID:uUIDString2];

            v25 = selfCopy;
            [selfCopy[7] sendMessage:v47];

            goto LABEL_32;
          }
        }

        v39 = objc_autoreleasePoolPush();
        v40 = v25;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v76 = v42;
          v77 = 2112;
          v78 = v28;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Skipping notifying user %@ of home change because it is not relevant", buf, 0x16u);

          v24 = tokenCopy;
        }

        objc_autoreleasePoolPop(v39);
        v34 = 0;
        goto LABEL_29;
      }

      v34 = [(HMDResidentSyncServer *)v25 _destinationForUser:v27 restrictToResidentCapable:0];
      if (v34)
      {
        goto LABEL_31;
      }

LABEL_32:
    }

    v68 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  }

  while (v68);

  v15 = v59;
  v5 = v60;
  v16 = v58;
  if ((v65 & 1) != 0 && isInternalBuild())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [tokenCopy summary];
    v49 = v48 = v25;
    [dictionary setObject:v49 forKeyedSubscript:@"HMDGeneratedHomeDataChangedSummaryNotificationKey"];

    modelID2 = [v17 modelID];
    [dictionary setObject:modelID2 forKeyedSubscript:@"HMDGeneratedHomeDataChangedHomeUUIDNotificationKey"];

    v51 = v48[5];
    v52 = [dictionary copy];
    logAndPostNotificationWithNotificationCenter(v51, @"HMDGeneratedHomeDataChangedNotification", v48, v52);

LABEL_37:
  }

LABEL_41:

LABEL_42:
  v57 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteAccountMessageDestination)_destinationForUser:(uint64_t)user restrictToResidentCapable:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  accountHandle = [v5 accountHandle];
  if (accountHandle)
  {
    WeakRetained = objc_loadWeakRetained(self + 1);
    v8 = WeakRetained;
    if (WeakRetained && user)
    {
      destinationForEnabledResidents = [WeakRetained destinationForEnabledResidents];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      v13 = v12;
      if (destinationForEnabledResidents)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Residents only broadcast of Home Data Changed notification is utilizing bulk send API", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        goto LABEL_15;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v19;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Bulk send destination invalid, residents only broadcast of Home Data Changed notification is falling back to account destination", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    v20 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [self messageTargetUUID];
    destinationForEnabledResidents = [(HMDRemoteAccountMessageDestination *)v20 initWithTarget:messageTargetUUID handle:accountHandle multicast:1];

    [(HMDRemoteAccountMessageDestination *)destinationForEnabledResidents setRestrictToResidentCapable:user];
LABEL_15:

    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v18;
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Skipping notifying user %{public}@ of home change because the account handle is missing", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  destinationForEnabledResidents = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return destinationForEnabledResidents;
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  if ([v7 isCurrentDevice])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._home);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__HMDResidentSyncServer_handlePrimaryResidentChanged___block_invoke;
    v10[3] = &unk_27868A250;
    v10[4] = self;
    [WeakRetained doFullImportWithCompletion:v10];
  }

  else
  {
    v9 = -[HMDResidentSyncServer handlePrimaryResidentState:](self, [v7 isCurrentDevice]);
  }
}

void __54__HMDResidentSyncServer_handlePrimaryResidentChanged___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(*(a1 + 32) + 64) isCurrentDeviceConfirmedPrimaryResident])
  {
    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v3;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Full import for home failed with error: %{public}@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }

    v8 = [(HMDResidentSyncServer *)*(a1 + 32) handlePrimaryResidentState:?];
    [*(*(a1 + 32) + 40) postNotificationName:@"HMDHomeDataReadyAfterBecomingPrimaryNotification" object:*(a1 + 32) userInfo:0];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@We are not the primary resident anymore.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handlePersistentStoreChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE300]];

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

  if (v8)
  {
    identifier = [(NSPersistentStore *)self->_store identifier];
    v10 = [identifier isEqualToString:v8];

    if (v10)
    {
      context = self->super._context;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__HMDResidentSyncServer_handlePersistentStoreChanged___block_invoke;
      v12[3] = &unk_27868A750;
      v12[4] = self;
      v13 = changedCopy;
      [(HMDManagedObjectContext *)context performBlock:v12];
    }
  }
}

void __54__HMDResidentSyncServer_handlePersistentStoreChanged___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    v3 = *(v2 + 96);
    v4 = [*(a1 + 40) userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE200]];

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

    if (!v7 || ([*(a1 + 32) changeToken:v7 isAheadOf:v3] & 1) != 0)
    {
      v8 = [*(*(a1 + 32) + 104) maximumTransactionsForStoreChange];
      v9 = *(a1 + 32);
      v49 = 0;
      v50 = v7;
      v10 = [(HMDResidentSyncServer *)v9 _currentToken:&v49 andHistory:v3 fromToken:v8 limit:0 error:?];
      v11 = v50;
      v12 = v50;

      v13 = v49;
      if (!v10)
      {
LABEL_34:

        [*(*(a1 + 32) + 32) reset];
        goto LABEL_35;
      }

      if (v10 == 1)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v52 = v17;
          v18 = "%{public}@Not broadcasting Home change notification, no new transactions.";
          v19 = v16;
          v20 = OS_LOG_TYPE_DEBUG;
          v21 = 12;
LABEL_25:
          _os_log_impl(&dword_229538000, v19, v20, v18, buf, v21);

          goto LABEL_26;
        }

        goto LABEL_26;
      }

      objc_storeStrong((*(a1 + 32) + 96), v11);
      if (([*(*(a1 + 32) + 64) isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v39 = [v13 count];
          *buf = 138543618;
          v52 = v17;
          v53 = 2048;
          v54 = v39;
          v18 = "%{public}@Not broadcasting Home change notification, no longer the primary resident (processed %tu transactions)";
          v19 = v16;
          v20 = OS_LOG_TYPE_INFO;
          v21 = 22;
          goto LABEL_25;
        }

LABEL_26:

        objc_autoreleasePoolPop(v14);
        goto LABEL_34;
      }

      if (v13)
      {
        v31 = [[HMDManagedObjectCodingChangeSet alloc] initWithCodingModel:*(*(a1 + 32) + 24) context:*(*(a1 + 32) + 32) transactions:v13];
        v32 = [(HMDManagedObjectCodingChangeSet *)v31 isEmpty];
        v33 = objc_autoreleasePoolPush();
        v34 = *(a1 + 32);
        v35 = HMFGetOSLogHandle();
        v36 = v35;
        if (v32)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            v38 = [v13 count];
            *buf = 138543618;
            v52 = v37;
            v53 = 2048;
            v54 = v38;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Not broadcasting Home change notification, no syncable changes (processed %tu transactions)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          goto LABEL_33;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v42 = v48 = v33;
          v46 = [v13 count];
          v43 = HMDShortDescriptionForToken(v12);
          v47 = [(HMDManagedObjectCodingChangeSet *)v31 summary];
          v44 = [v47 shortDescriptionForChangeSet];
          *buf = 138544130;
          v52 = v42;
          v53 = 2048;
          v54 = v46;
          v55 = 2114;
          v56 = v43;
          v57 = 2114;
          v58 = v44;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Found syncable changes (processed %tu transactions), will broadcast Home change notification with token %{public}@. Changes: %{public}@", buf, 0x2Au);

          v33 = v48;
        }
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = *(a1 + 32);
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v40 = HMFGetLogIdentifier();
          v41 = HMDShortDescriptionForToken(v12);
          *buf = 138543874;
          v52 = v40;
          v53 = 2048;
          v54 = v8;
          v55 = 2114;
          v56 = v41;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Assuming syncable changes (more than %tu transactions), will broadcast Home change notification with token %{public}@", buf, 0x20u);
        }

        v31 = 0;
      }

      objc_autoreleasePoolPop(v33);
      [(HMDResidentSyncServer *)*(a1 + 32) _notifyDevicesOfHomeChangeWithToken:v12 changes:v31];
LABEL_33:

      goto LABEL_34;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      v30 = HMDShortDescriptionForToken(v7);
      *buf = 138543618;
      v52 = v29;
      v53 = 2112;
      v54 = v30;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Not broadcasting Home change notification, provided token is not ahead: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring persistent store change, not the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

LABEL_35:
  v45 = *MEMORY[0x277D85DE8];
}

- (int64_t)currentToken:(id *)token andHistory:(id *)history fromToken:(id)fromToken limit:(int64_t)limit error:(id *)error
{
  fromTokenCopy = fromToken;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__175147;
  v40 = __Block_byref_object_dispose__175148;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__175147;
  v34 = __Block_byref_object_dispose__175148;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__175147;
  v28 = __Block_byref_object_dispose__175148;
  v29 = 0;
  context = self->super._context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HMDResidentSyncServer_currentToken_andHistory_fromToken_limit_error___block_invoke;
  v17[3] = &unk_27867D000;
  v19 = &v42;
  v20 = &v36;
  v17[4] = self;
  v21 = &v30;
  v14 = fromTokenCopy;
  v22 = &v24;
  limitCopy = limit;
  v18 = v14;
  [(HMDManagedObjectContext *)context performBlockAndWait:v17];
  if (token)
  {
    *token = v37[5];
  }

  if (history)
  {
    *history = v31[5];
  }

  if (error)
  {
    *error = v25[5];
  }

  v15 = v43[3];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v15;
}

void __71__HMDResidentSyncServer_currentToken_andHistory_fromToken_limit_error___block_invoke(void *a1)
{
  v2 = *(a1[7] + 8);
  v3 = *(v2 + 40);
  v4 = *(a1[8] + 8);
  v11 = *(v4 + 40);
  obj = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[10];
  v8 = *(a1[9] + 8);
  v10 = *(v8 + 40);
  v9 = [(HMDResidentSyncServer *)v5 _currentToken:&v11 andHistory:v6 fromToken:v7 limit:&v10 error:?];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v4 + 40), v11);
  objc_storeStrong((v8 + 40), v10);
  *(*(a1[6] + 8) + 24) = v9;
}

- (void)_handleFetchHomeData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  context = self->super._context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDResidentSyncServer__handleFetchHomeData___block_invoke;
  v7[3] = &unk_278686B48;
  objc_copyWeak(&v9, &location);
  v6 = dataCopy;
  v8 = v6;
  [(HMDManagedObjectContext *)context performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__HMDResidentSyncServer__handleFetchHomeData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v3 = [v2 messagePayload];
    v4 = [(HMDResidentSyncServer *)WeakRetained _parseRequestDetails:v9 fromDictionary:v3 message:v2];

    if (v4)
    {
      v8 = 0;
      v5 = [(HMDResidentSyncServer *)WeakRetained _generateHomeDataWithRequest:v9 message:v2 useCachedToken:1 error:&v8];
      v6 = v8;
      if (v5)
      {
        [v2 respondWithPayload:v5];
      }

      else
      {
        [v2 respondWithError:v6];
      }
    }
  }
}

- (uint64_t)_parseRequestDetails:(void *)details fromDictionary:(void *)dictionary message:
{
  v48 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  dictionaryCopy = dictionary;
  if (self)
  {
    if (!detailsCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        shortDescription = [dictionaryCopy shortDescription];
        v44 = 138543618;
        v45 = v16;
        v46 = 2112;
        v47 = shortDescription;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: missing resident sync details", &v44, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [dictionaryCopy respondWithError:v9];
      goto LABEL_23;
    }

    v9 = [detailsCopy objectForKeyedSubscript:@"schema"];
    if (!v9)
    {
      v18 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:0 minorVersion:0 updateVersion:0];
      v19 = *a2;
      *a2 = v18;

      *(a2 + 8) = 1;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v9];
      if (v10)
      {
        v11 = v10;
        objc_storeStrong(a2, v10);
        v12 = [detailsCopy objectForKeyedSubscript:@"opts"];
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          *(a2 + 8) = [v12 unsignedIntegerValue];

LABEL_13:
          v20 = [detailsCopy hmf_dataForKey:@"etag"];
          v21 = v20;
          if (v20)
          {
            v20 = [self decodeToken:v20 error:0];
          }

          v22 = *(a2 + 16);
          *(a2 + 16) = v20;

          self = 1;
          goto LABEL_24;
        }

        v38 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          shortDescription2 = [dictionaryCopy shortDescription];
          v44 = 138543618;
          v45 = v41;
          v46 = 2112;
          v47 = shortDescription2;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: invalid request options", &v44, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
        [dictionaryCopy respondWithError:v43];

LABEL_23:
        self = 0;
LABEL_24:

        goto LABEL_25;
      }

      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        shortDescription3 = [dictionaryCopy shortDescription];
        v44 = 138543618;
        v45 = v33;
        v46 = 2112;
        v47 = shortDescription3;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: invalid schema version", &v44, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v28 = MEMORY[0x277CCA9B8];
      v29 = 3;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        shortDescription4 = [dictionaryCopy shortDescription];
        v44 = 138543618;
        v45 = v26;
        v46 = 2112;
        v47 = shortDescription4;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Rejecting request %@: invalid schema version", &v44, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v28 = MEMORY[0x277CCA9B8];
      v29 = 22;
    }

    v35 = [v28 hmErrorWithCode:v29];
    [dictionaryCopy respondWithError:v35];

    goto LABEL_23;
  }

LABEL_25:

  v36 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)_generateHomeDataWithRequest:(void *)request message:(int)message useCachedToken:(void *)token error:
{
  v189[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (self)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = *(self + 96);
    if (v12)
    {
      v13 = message == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && ([self changeToken:v12 isAheadOf:*(a2 + 16)] & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v173 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Provided token is up to date with cached token, home data not modified", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v188 = @"response";
      v189[0] = &unk_283E73868;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:&v188 count:1];
      goto LABEL_111;
    }

    v168 = 0;
    v169 = 0;
    v14 = -[HMDResidentSyncServer _currentToken:andHistory:fromToken:limit:error:](self, &v169, &v168, *(a2 + 16), [*(self + 104) maximumTransactionsForSparseUpdate], token);
    v15 = v169;
    v16 = v168;
    v17 = v16;
    if (!v14)
    {
      v22 = 0;
LABEL_110:

LABEL_111:
      [*(self + 32) reset];
      goto LABEL_112;
    }

    if (v14 == 1)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v173 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@No history transactions since the provided token, home data not modified", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v186 = @"response";
      v187 = &unk_283E73868;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
      goto LABEL_110;
    }

    if (v16)
    {
      v27 = [[HMDManagedObjectCodingChangeSet alloc] initWithCodingModel:*(self + 24) context:*(self + 32) transactions:v16];
    }

    else
    {
      v27 = 0;
    }

    v167 = 0;
    v28 = [self encodeToken:v15 error:&v167];
    v29 = v167;
    v30 = v29;
    if (!v28)
    {
      if (token)
      {
        v43 = v29;
        v22 = 0;
        *token = v30;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_109;
    }

    v161 = v28;
    WeakRetained = objc_loadWeakRetained((self + 8));
    v162 = requestCopy;
    v32 = [requestCopy userForHome:WeakRetained];

    v158 = v32;
    v159 = v27;
    if ([v32 isRestrictedGuest])
    {
      remoteSourceDevice = [v162 remoteSourceDevice];
      v34 = remoteSourceDevice;
      if (remoteSourceDevice)
      {
        v151 = v15;
        context = v17;
        version = [remoteSourceDevice version];
        v36 = +[HMDHomeKitVersion version12];
        v37 = [version isAtLeastVersion:v36];

        if (v37)
        {

          v15 = v151;
          v17 = context;
          v27 = v159;
          goto LABEL_24;
        }

        v60 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v62 = HMFGetOSLogHandle();
        v27 = v159;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v63 = v150 = v60;
          version2 = [v34 version];
          *buf = 138544130;
          v173 = v63;
          v174 = 2112;
          v175 = version2;
          v176 = 2112;
          v177 = *&v34;
          v178 = 2112;
          v179 = *&v162;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEBUG, "%{public}@Not sending home data to Restricted Guest with version: %@, device: %@, message: %@", buf, 0x2Au);

          v60 = v150;
        }

        objc_autoreleasePoolPop(v60);
        v184[0] = @"response";
        v184[1] = @"etag";
        v185[0] = &unk_283E73868;
        v185[1] = v161;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];
        v15 = v151;
        v17 = context;
      }

      else
      {
        contextb = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v153 = HMFGetLogIdentifier();
          *buf = 138543618;
          v173 = v153;
          v174 = 2112;
          v175 = v162;
          _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine source device, not generating home data for message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contextb);
        if (token)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *token = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        v27 = v159;
      }

      v28 = v161;
LABEL_108:

      requestCopy = v162;
LABEL_109:

      goto LABEL_110;
    }

LABEL_24:
    if (v27 && [(HMDManagedObjectCodingChangeSet *)v27 isEmpty])
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v17;
        *buf = 138543362;
        v173 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEBUG, "%{public}@No syncable changes since the provided token, home data not modified", buf, 0xCu);

        v17 = v41;
      }

      objc_autoreleasePoolPop(v38);
      v182[0] = @"response";
      v182[1] = @"etag";
      v28 = v161;
      v183[0] = &unk_283E73868;
      v183[1] = v161;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:2];
      v27 = v159;
      goto LABEL_108;
    }

    v44 = *(self + 16);
    v45 = *(self + 32);
    v166 = v30;
    v46 = [(_MKFModel *)_MKFHome modelWithModelID:v44 context:v45 error:&v166];
    v149 = v166;

    if (!v46)
    {
      v59 = 0;
      v28 = v161;
      if (token)
      {
        HMDSanitizeCoreDataError(v149);
        *token = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      v32 = v158;
      goto LABEL_107;
    }

    contexta = v17;
    v47 = v162;
    v147 = v46;
    v48 = objc_loadWeakRetained((self + 8));
    v143 = v47;
    v49 = [v47 matchingRemoteIdentityUserForHome:v48];

    v152 = v49;
    if (!v49)
    {
      v65 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v68 = v144 = v65;
        [v143 shortDescription];
        v70 = v69 = v15;
        *buf = 138543618;
        v173 = v68;
        v174 = 2112;
        v175 = v70;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine remote user for '%@'", buf, 0x16u);

        v15 = v69;
        v65 = v144;
      }

      objc_autoreleasePoolPop(v65);
      if (token)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        *token = v71 = 0;
      }

      else
      {
        v71 = 0;
      }

      v17 = contexta;
      v27 = v159;
      v28 = v161;
LABEL_70:

      v146 = v71;
      if (!v71)
      {
        v59 = v46;
        v22 = 0;
        v32 = v158;
LABEL_106:

LABEL_107:
        v30 = v149;
        goto LABEL_108;
      }

      v137 = v46;
      v154 = v15;
      v138 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v81 = [HMDStructuredWriter writerIntoOPACKData:?];
      v165 = 0;
      v82 = *a2;
      schemaVersion = [self schemaVersion];
      v84 = [v82 compare:schemaVersion];

      if (v84 == -1)
      {
        v85 = [HMDResidentSyncServer _createResponseAdapterForRequest:a2 writer:v81 forceFullResponse:&v165];
        if (v85 == v81)
        {
          v140 = v81;
        }

        else
        {
          v86 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v88 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v89 = v141 = v86;
            v90 = *a2;
            HMFBooleanToString();
            v92 = v91 = selfCopy7;
            *buf = 138543874;
            v173 = v89;
            v174 = 2112;
            v175 = v90;
            v27 = v159;
            v176 = 2112;
            v177 = *&v92;
            _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_INFO, "%{public}@Using adapters for client version %@ (forceFullResponse=%@)", buf, 0x20u);

            selfCopy7 = v91;
            v86 = v141;
          }

          objc_autoreleasePoolPop(v86);
          v93 = v85;

          v140 = v93;
          v71 = v146;
        }

        v28 = v161;
      }

      else
      {
        v140 = v81;
      }

      v94 = v137;
      if (v27)
      {
        targetUser = [(HMDResidentSyncCodingContext *)v71 targetUser];
        databaseID = [targetUser databaseID];
        objectID = [databaseID objectID];
        v98 = v27;
        v99 = objectID;
        v163 = 0;
        v164 = 0;
        v100 = [(HMDManagedObjectCodingChangeSet *)v98 changeScopeForObjectWithID:objectID attributeKeys:&v164 relationshipKeys:&v163];
        v101 = v164;
        v102 = v163;

        if (v100 == 3 || [v101 containsObject:@"privilege"])
        {
          v103 = v102;
          v104 = objc_autoreleasePoolPush();
          selfCopy8 = self;
          v106 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
          {
            v107 = HMFGetLogIdentifier();
            *buf = 138543362;
            v173 = v107;
            _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_INFO, "%{public}@Change includes user privilege. Forcing full update", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v104);
          v165 = 1;
          v102 = v103;
        }

        v27 = v159;
        v28 = v161;
        v71 = v146;
      }

      targetUser2 = [(HMDResidentSyncCodingContext *)v71 targetUser];
      isRestrictedGuest = [targetUser2 isRestrictedGuest];

      if (isRestrictedGuest)
      {
        v165 = 1;
        v17 = contexta;
      }

      else
      {
        v17 = contexta;
        if ((v165 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v27 = 0;
LABEL_91:
      v15 = v154;
      if (([*(self + 24) encodeRootObject:v147 withWriter:v140 changes:v27 conditions:0 userContext:v71] & 1) == 0)
      {
        v59 = v94;
        if (token)
        {
          [v140 error];
          *token = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        v32 = v158;
        v125 = v138;
        goto LABEL_105;
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v111 = v110 - v11;
      v112 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v114 = HMFGetOSLogHandle();
      v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
      v160 = v27;
      v59 = v94;
      if (v27)
      {
        if (v115)
        {
          v116 = HMFGetLogIdentifier();
          v117 = [v17 count];
          v118 = v138;
          v119 = [v138 length];
          [v143 shortDescription];
          v120 = v148 = v112;
          *buf = 138544386;
          v173 = v116;
          v174 = 2048;
          v175 = v117;
          v176 = 2048;
          v177 = *&v119;
          v15 = v154;
          v178 = 2048;
          v179 = v111;
          v180 = 2112;
          v181 = v120;
          _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Generated sparse home data (%tu transactions, %tu bytes) in %.3lf seconds for %@", buf, 0x34u);

          v112 = v148;
          v121 = 2;
LABEL_104:

          objc_autoreleasePoolPop(v112);
          v170[0] = @"response";
          v126 = [MEMORY[0x277CCABB0] numberWithInteger:v121];
          v171[0] = v126;
          v171[1] = v118;
          v170[1] = @"data";
          v170[2] = @"etag";
          v28 = v161;
          v171[2] = v161;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:3];

          v27 = v160;
          v125 = v118;
          v17 = contexta;
          v32 = v158;
LABEL_105:

          goto LABEL_106;
        }

        v121 = 2;
      }

      else
      {
        if (v115)
        {
          v122 = HMFGetLogIdentifier();
          v118 = v138;
          v123 = [v138 length];
          shortDescription = [v143 shortDescription];
          *buf = 138544130;
          v173 = v122;
          v174 = 2048;
          v175 = v123;
          v15 = v154;
          v176 = 2048;
          v177 = v111;
          v178 = 2112;
          v179 = *&shortDescription;
          _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Generated full home data (%tu bytes) in %.3lf seconds for %@", buf, 0x2Au);

          v121 = 1;
          goto LABEL_104;
        }

        v121 = 1;
      }

      v118 = v138;
      goto LABEL_104;
    }

    uuid = [v49 uuid];
    v51 = *(self + 32);
    v52 = uuid;
    v53 = v51;
    v54 = [(_MKFModel *)_MKFUser modelWithModelID:v52 context:v53];
    v55 = v54;
    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = [(_MKFModel *)_MKFGuest modelWithModelID:v52 context:v53];
    }

    v72 = v56;

    v145 = v72;
    if (v72)
    {
      home = [v72 home];
      v74 = home;
      if (home == v147)
      {
        isResidentSyncParticipant = [v72 isResidentSyncParticipant];

        if (isResidentSyncParticipant)
        {
          if (*(a2 + 8))
          {
            isOwner = [v145 isOwner];
          }

          else
          {
            isOwner = 0;
          }

          remoteSourceDevice2 = [v143 remoteSourceDevice];
          deviceAddress = [remoteSourceDevice2 deviceAddress];

          if (deviceAddress)
          {
            v71 = [[HMDResidentSyncCodingContext alloc] initWithTargetUser:v145 targetIsResident:isOwner targetDeviceAddress:deviceAddress];
            v17 = contexta;
          }

          else
          {
            v131 = objc_autoreleasePoolPush();
            selfCopy10 = self;
            v133 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v134 = v142 = v131;
              [v143 shortDescription];
              v139 = selfCopy10;
              v136 = v135 = v15;
              *buf = 138543618;
              v173 = v134;
              v174 = 2112;
              v175 = v136;
              _os_log_impl(&dword_229538000, v133, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine device address for '%@'", buf, 0x16u);

              v15 = v135;
              selfCopy10 = v139;

              v131 = v142;
            }

            objc_autoreleasePoolPop(v131);
            v17 = contexta;
            if (token)
            {
              [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
              *token = v71 = 0;
            }

            else
            {
              v71 = 0;
            }
          }

          v27 = v159;

          goto LABEL_67;
        }
      }

      else
      {
      }
    }

    v77 = objc_autoreleasePoolPush();
    selfCopy11 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v80 = HMFGetLogIdentifier();
      *buf = 138543618;
      v173 = v80;
      v174 = 2114;
      v175 = v152;
      _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_ERROR, "%{public}@Unable to find active MKFUser for %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v77);
    if (token)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      *token = v71 = 0;
    }

    else
    {
      v71 = 0;
    }

    v17 = contexta;
    v27 = v159;
LABEL_67:
    v28 = v161;

    goto LABEL_70;
  }

  v22 = 0;
LABEL_112:

  v127 = *MEMORY[0x277D85DE8];

  return v22;
}

- (HMDBufferingStructureDataFilter)_createResponseAdapterForRequest:(void *)request writer:(void *)writer forceFullResponse:(_BYTE *)response
{
  writerCopy = writer;
  v6 = *request;
  v7 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];
  v8 = [v6 compare:v7];

  if (v8 == -1)
  {
    if (response)
    {
      *response = 1;
    }

    v9 = writerCopy;
    writerCopy = [[HMDBufferingStructureDataFilter alloc] initWithUnderlyingWriter:v9 block:&__block_literal_global_16324];
  }

  v10 = writerCopy;

  return writerCopy;
}

- (void)interceptRemoteResidentRequest:(id)request proceed:(id)proceed
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  proceedCopy = proceed;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v8 = [requestCopy dictionaryForKey:@"$HMDRS$"];
  v9 = [(HMDResidentSyncServer *)self _parseRequestDetails:v8 fromDictionary:requestCopy message:?];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._home);
    isCurrentDeviceConfirmedPrimaryResident = [WeakRetained isCurrentDeviceConfirmedPrimaryResident];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    if (isCurrentDeviceConfirmedPrimaryResident)
    {
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        shortDescription = [requestCopy shortDescription];
        *buf = 138543618;
        v32 = v15;
        v33 = 2112;
        v34 = shortDescription;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Intercepting remote resident request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [requestCopy mutableCopy];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3254779904;
      v22[2] = __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke;
      v22[3] = &unk_283CF2860;
      v23 = requestCopy;
      v24 = selfCopy;
      v25 = v28;
      v26 = v29;
      v27 = v30;
      [v17 setResponseHandler:v22];
      proceedCopy[2](proceedCopy, v17);
    }

    else
    {
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        shortDescription2 = [requestCopy shortDescription];
        *buf = 138543618;
        v32 = v19;
        v33 = 2112;
        v34 = shortDescription2;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Rejecting resident request %@: not the primary resident", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
      [requestCopy respondWithError:v17];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    [*(a1 + 32) respondWithError:v5];
  }

  else
  {
    v8 = MEMORY[0x277D0F7C0];
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(v10 + 32);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3254779904;
    v18 = __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke_2;
    v19 = &unk_283CF2828;
    v20 = v10;
    v12 = v9;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v21 = *(a1 + 32);
    v22 = v6;
    v15 = [v8 inContext:v11 perform:&v16];
    [v7 respondWithOutcomeOf:{v15, v16, v17, v18, v19, v20}];
  }
}

uint64_t __64__HMDResidentSyncServer_interceptRemoteResidentRequest_proceed___block_invoke_2(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v22 = 0;
  v4 = [(HMDResidentSyncServer *)v2 _generateHomeDataWithRequest:v3 message:0 useCachedToken:&v22 error:?];
  v5 = v22;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] shortDescription];
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Responding to intercepted remote resident request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [a1[6] mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
    }

    v18 = v14;

    [v18 setObject:v4 forKeyedSubscript:@"$HMDRS$"];
    [v18 copy];
    v19 = 1;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] shortDescription];
      *buf = 138543874;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch Home data changes for successfully handled message '%{public}@': %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v17 = v5;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v18 = 0;
    }

    v19 = 2;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)stop
{
  [(HMFMessageDispatcher *)self->_dispatcher deregisterReceiver:self];
  notificationCenter = self->super._notificationCenter;

  [(NSNotificationCenter *)notificationCenter removeObserver:self];
}

- (id)start
{
  v17[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->super._home);
  v4 = [HMDUserMessagePolicy userMessagePolicyWithHome:WeakRetained userPrivilege:5 remoteAccessRequired:0];

  v5 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v5 setRoles:{objc_msgSend(v5, "roles") | 8}];
  v6 = [v5 copy];
  dispatcher = self->_dispatcher;
  v17[0] = v4;
  v17[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [(HMFMessageDispatcher *)dispatcher registerForMessage:@"HMDFetchHomeDataMessage" receiver:self policies:v8 selector:sel__handleFetchHomeData_];

  if (shouldEnableInternalDebugInterfaces__hmf_once_t48 != -1)
  {
    dispatch_once(&shouldEnableInternalDebugInterfaces__hmf_once_t48, &__block_literal_global_786);
  }

  if (shouldEnableInternalDebugInterfaces__hmf_once_v49 == 1)
  {
    v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v10 = self->_dispatcher;
    v11 = [@"HMDFetchHomeDataMessage" stringByAppendingString:@".Debug"];
    v16 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(HMFMessageDispatcher *)v10 registerForMessage:v11 receiver:self policies:v12 selector:sel__handleFetchHomeData_];
  }

  [(NSNotificationCenter *)self->super._notificationCenter addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:self->_residentDeviceManager];
  [(NSNotificationCenter *)self->super._notificationCenter addObserver:self selector:sel_handleReassertAsTheCurrentPrimaryResident_ name:@"HMDResidentDeviceManagerReassertAsCurrentPrimaryNotification" object:self->_residentDeviceManager];
  v13 = [(HMDResidentSyncServer *)self handlePrimaryResidentState:?];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDResidentSyncServer)initWithHome:(id)home codingModel:(id)model dispatcher:(id)dispatcher residentDeviceManager:(id)manager notificationCenter:(id)center persistence:(id)persistence dataSource:(id)source logEventSubmitter:(id)self0
{
  v36[1] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  persistenceCopy = persistence;
  sourceCopy = source;
  submitterCopy = submitter;
  v35.receiver = self;
  v35.super_class = HMDResidentSyncServer;
  v19 = [(HMDResidentSyncController *)&v35 initWithHome:home codingModel:model notificationCenter:center persistence:persistenceCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dispatcher, dispatcher);
    objc_storeStrong(&v20->_residentDeviceManager, manager);
    workingStore = [persistenceCopy workingStore];
    store = v20->_store;
    v20->_store = workingStore;

    coordinator = [persistenceCopy coordinator];
    v36[0] = v20->_store;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v25 = [coordinator currentPersistentHistoryTokenFromStores:v24];
    storeExemplarToken = v20->_storeExemplarToken;
    v20->_storeExemplarToken = v25;

    objc_storeStrong(&v20->_logEventSubmitter, submitter);
    objc_storeStrong(&v20->_dataSource, source);
    context = v20->super._context;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __143__HMDResidentSyncServer_initWithHome_codingModel_dispatcher_residentDeviceManager_notificationCenter_persistence_dataSource_logEventSubmitter___block_invoke;
    v33[3] = &unk_27868A728;
    v34 = v20;
    [(HMDManagedObjectContext *)context performBlockAndWait:v33];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v20;
}

void __143__HMDResidentSyncServer_initWithHome_codingModel_dispatcher_residentDeviceManager_notificationCenter_persistence_dataSource_logEventSubmitter___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v7 = 0;
  v3 = [v1 setQueryGenerationFromToken:v2 error:&v7];
  v4 = v7;

  if (v3)
  {
  }

  else
  {
    v5 = _HMFPreconditionFailureWithFormat();
    [(HMDResidentSyncController *)v5 .cxx_destruct];
  }
}

@end