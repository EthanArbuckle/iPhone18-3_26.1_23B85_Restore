@interface HMDResidentSyncClient
- (HMDResidentSyncClient)initWithHome:(id)home codingModel:(id)model dispatcher:(id)dispatcher residentDeviceManager:(id)manager notificationCenter:(id)center persistence:(id)persistence isResidentCapable:(BOOL)capable dataSource:(id)self0 logEventSubmitter:(id)self1;
- (_BYTE)_syncDetailsWithChangeToken:(_BYTE *)token;
- (id)_performFetchIfRequired;
- (id)_performFetchWithReason:(uint64_t)reason;
- (id)_performMaybeDelayedFetchWithReason:(uint64_t)reason;
- (id)start;
- (uint64_t)_applyAndSaveHomeDataChanges:(void *)changes forRequest:(void *)request previousLastSeenToken:(void *)token versionChecksum:(void *)checksum error:;
- (uint64_t)_fetchOrCreateMetadataWithError:(uint64_t)result;
- (void)_handleHomeDataChanged:(id)changed;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)performResidentRequest:(id)request options:(unint64_t)options;
- (void)performSync;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentSyncClient

- (void)_handleHomeDataChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  context = self->super._context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDResidentSyncClient__handleHomeDataChanged___block_invoke;
  v7[3] = &unk_278686B48;
  objc_copyWeak(&v9, &location);
  v6 = changedCopy;
  v8 = v6;
  [(HMDManagedObjectContext *)context performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__HMDResidentSyncClient__handleHomeDataChanged___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    [v2 respondWithSuccess];
    v3 = [v2 remoteSourceDevice];
    if (!v3)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = WeakRetained;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Ignoring home data changed message, unable to determine source device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      goto LABEL_25;
    }

    v4 = [v2 dataForKey:@"etag"];
    v5 = [v2 uuidForKey:@"resgen"];
    v6 = [v2 dateForKey:@"seltimestamp"];
    if (!v4)
    {
      goto LABEL_13;
    }

    v7 = [WeakRetained decodeToken:v4 error:0];
    if (v7)
    {
      v8 = [WeakRetained[12] lastSeenToken];
      v9 = [WeakRetained changeToken:v7 isAheadOf:v8];

      context = objc_autoreleasePoolPush();
      v10 = WeakRetained;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier();
          v14 = HMDShortDescriptionForToken(v7);
          *buf = 138543618;
          *&buf[4] = v13;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Home data on resident has changed, saving last seen change token: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [v10[12] setLastSeenToken:v7];
        v15 = v10[4];
        v40 = 0;
        v16 = [v15 save:&v40];
        v17 = v40;
        if ((v16 & 1) == 0)
        {
          contexta = objc_autoreleasePoolPush();
          v18 = v10;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v35;
            *&buf[12] = 2114;
            *&buf[14] = v17;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to save last seen change token, proceeding anyway: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(contexta);
        }

        [v10[12] willAccessValueForKey:0];
        [v10[4] setQueryGenerationFromToken:0 error:0];
        *(v10 + 128) = 0;
        [v10[13] suspend];

LABEL_13:
        v20 = [WeakRetained[8] foundNewPrimaryResident:v3 generationID:v5 selectionTimestamp:v6 changeSource:3];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __49__HMDResidentSyncClient___handleHomeDataChanged___block_invoke;
        v42 = &unk_27867CF88;
        v43 = WeakRetained;
        v44 = v3;
        v21 = [v20 then:buf];

LABEL_24:
LABEL_25:

        goto LABEL_26;
      }

      if (v12)
      {
        v30 = HMFGetLogIdentifier();
        HMDShortDescriptionForToken(v7);
        v31 = v36 = v6;
        v34 = [v10[12] lastSeenToken];
        v32 = HMDShortDescriptionForToken(v34);
        *buf = 138543874;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        *&buf[22] = 2114;
        v42 = v32;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring home data changed message, incoming change token %{public}@ is not ahead of last seen token %{public}@", buf, 0x20u);

        v6 = v36;
      }

      objc_autoreleasePoolPop(context);
      [v10[8] sawGenerationID:v5 forDevice:v3];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = WeakRetained;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Ignoring home data changed message, failed to decode change token", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }

    goto LABEL_24;
  }

LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HMDResidentSyncClient___handleHomeDataChanged___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 unsignedIntValue];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [*(a1 + 40) shortDescription];
        v16 = 138543618;
        v17 = v9;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resident Device Manager asked to ignore the home data changed message from: %{public}@", &v16, 0x16u);
      }
    }

    else
    {
      if (v4 != 2)
      {
LABEL_9:
        v11 = 1;
        goto LABEL_12;
      }

      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Primary resident is changing, will fetch once we're notified that it changed", &v16, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_9;
  }

  v12 = [(HMDResidentSyncClient *)*(a1 + 32) _performMaybeDelayedFetchWithReason:?];
  if (!v12)
  {
    _HMFPreconditionFailure();
  }

  v13 = v12;
  v11 = 3;

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_performMaybeDelayedFetchWithReason:(uint64_t)reason
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!reason)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ((*(reason + 80) & 1) == 0)
  {
    v12 = [(HMDResidentSyncClient *)reason _performFetchWithReason:v3];
LABEL_8:
    v11 = v12;
    goto LABEL_9;
  }

  anyObject = [*(reason + 88) anyObject];

  if (anyObject)
  {
    v5 = objc_autoreleasePoolPush();
    reasonCopy = reason;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Eliding delayed home data fetch because there are requests in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = MEMORY[0x277D0F7C0];
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    v11 = [v9 futureWithError:v10];

    goto LABEL_9;
  }

  if (*(reason + 112))
  {
    v15 = objc_autoreleasePoolPush();
    reasonCopy2 = reason;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v18;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Waiting for existing delayed fetch (reason: %{public}@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v12 = reasonCopy2[14];
    goto LABEL_8;
  }

  v19 = arc4random_uniform(0xAu) + 5;
  v20 = objc_autoreleasePoolPush();
  reasonCopy3 = reason;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v23;
    v33 = 1024;
    LODWORD(v34) = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Delaying home data fetch for %u seconds", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [MEMORY[0x277D0F7C0] futureWithPromise:reasonCopy3 + 15];
  objc_storeStrong(reasonCopy3 + 14, v24);
  v25 = reasonCopy3[9];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__HMDResidentSyncClient__performMaybeDelayedFetchWithReason___block_invoke;
  v28[3] = &unk_27868A010;
  v28[4] = reasonCopy3;
  v26 = v24;
  v29 = v26;
  v30 = v3;
  [v25 performWithDelay:v19 block:v28];
  v27 = v30;
  v11 = v26;

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_performFetchWithReason:(uint64_t)reason
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (reason)
  {
    v4 = *(reason + 112);
    if (v4)
    {
      *(reason + 112) = 0;
    }

    v42 = v3;
    v43 = v3;
    *(reason + 128) = 0;
    [*(reason + 104) suspend];
    anyObject = [*(reason + 88) anyObject];

    if (anyObject)
    {
      v6 = objc_autoreleasePoolPush();
      reasonCopy = reason;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Eliding home data fetch because there are requests in progress", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v10 = MEMORY[0x277D0F7C0];
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
      v12 = [v10 futureWithError:v11];
    }

    else
    {
      persistentStoreCoordinator = [*(reason + 32) persistentStoreCoordinator];
      managedObjectModel = [persistentStoreCoordinator managedObjectModel];
      versionChecksum = [managedObjectModel versionChecksum];

      lastSyncChecksum = [*(reason + 96) lastSyncChecksum];
      v17 = HMFEqualObjects();

      if ((v17 & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        reasonCopy2 = reason;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          lastSyncChecksum2 = [reasonCopy2[12] lastSyncChecksum];
          *buf = 138543874;
          *&buf[4] = v21;
          *&buf[12] = 2114;
          *&buf[14] = versionChecksum;
          *&buf[22] = 2114;
          v49 = lastSyncChecksum2;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Database checksums don't match, forcing a full sync: %{public}@ != %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      lastSeenToken = [*(reason + 96) lastSeenToken];
      if (v17)
      {
        lastSyncToken = [*(reason + 96) lastSyncToken];
      }

      else
      {
        lastSyncToken = 0;
      }

      v40 = lastSyncToken;
      v41 = [(HMDResidentSyncClient *)reason _syncDetailsWithChangeToken:lastSyncToken];
      v25 = objc_autoreleasePoolPush();
      reasonCopy3 = reason;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching home data with reason: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [[HMDRemoteHomeMessageDestination alloc] initWithTarget:reasonCopy3[2] homeUUID:reasonCopy3[2]];
      v30 = [HMDRemoteMessage secureMessageWithName:@"HMDFetchHomeDataMessage" destination:v29 messagePayload:v41];
      [reasonCopy3[11] addObject:v30];
      objc_initWeak(&location, reasonCopy3);
      v31 = [reasonCopy3[7] sendMessageExpectingResponse:v30];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __55__HMDResidentSyncClient__reallyPerformFetchWithReason___block_invoke;
      v49 = &unk_27867CFB0;
      objc_copyWeak(v53, &location);
      v32 = v30;
      v50 = v32;
      v33 = lastSeenToken;
      v51 = v33;
      v11 = versionChecksum;
      v52 = v11;
      v34 = [v31 then:buf];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __55__HMDResidentSyncClient__reallyPerformFetchWithReason___block_invoke_2;
      v44[3] = &unk_27867CFD8;
      objc_copyWeak(&v46, &location);
      v35 = v32;
      v45 = v35;
      v12 = [v34 recover:v44];

      objc_destroyWeak(&v46);
      objc_destroyWeak(v53);

      objc_destroyWeak(&location);
    }

    v36 = *(reason + 120);
    if (v36)
    {
      [v36 resolveWithFuture:v12];
      v37 = *(reason + 120);
      *(reason + 120) = 0;
    }

    v3 = v42;
  }

  else
  {
    v12 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v12;
}

void __61__HMDResidentSyncClient__performMaybeDelayedFetchWithReason___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HMDResidentSyncClient__performMaybeDelayedFetchWithReason___block_invoke_2;
  v5[3] = &unk_27868A010;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 performBlock:v5];
}

void __61__HMDResidentSyncClient__performMaybeDelayedFetchWithReason___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Jitter timer fired", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (*(v6 + 112) == *(a1 + 40))
  {
    v11 = [(HMDResidentSyncClient *)v6 _performFetchWithReason:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@The future changed, not fetching", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (_BYTE)_syncDetailsWithChangeToken:(_BYTE *)token
{
  v3 = a2;
  if (token)
  {
    v4 = token[80];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    schemaVersion = [token schemaVersion];
    versionString = [schemaVersion versionString];
    [v5 setObject:versionString forKeyedSubscript:@"schema"];

    if (v4)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [v5 setObject:v8 forKeyedSubscript:@"opts"];

      if (v3)
      {
LABEL_4:
        v9 = [token encodeToken:v3 error:0];
        [v5 setObject:v9 forKeyedSubscript:@"etag"];

LABEL_7:
        token = [v5 copy];

        goto LABEL_8;
      }
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"opts"];
      if (v3)
      {
        goto LABEL_4;
      }
    }

    [v5 setObject:0 forKeyedSubscript:@"etag"];
    goto LABEL_7;
  }

LABEL_8:

  return token;
}

uint64_t __55__HMDResidentSyncClient__reallyPerformFetchWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 homeManager];
      v9 = [v7 uuid];
      v10 = [v8 sharedUserAcceptEventBuilderForHomeUuid:v9];
    }

    else
    {
      v10 = 0;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v22 = 0;
    v15 = [(HMDResidentSyncClient *)v5 _applyAndSaveHomeDataChanges:v3 forRequest:v12 previousLastSeenToken:v13 versionChecksum:v14 error:&v22];
    v16 = v22;
    if (v15)
    {
      [v10 markResidentSyncEnd];
      [v5[11] removeObject:*(a1 + 32)];
      [v5[13] reset];
      v5[17] = 0;
      v17 = [(HMDResidentSyncClient *)v5 _performFetchIfRequired];
      v11 = 1;
    }

    else
    {
      [v10 markTransientError:v16];
      v18 = v16;
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }

      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t __55__HMDResidentSyncClient__reallyPerformFetchWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v18 = 1;
    goto LABEL_16;
  }

  [*(WeakRetained + 11) removeObject:*(a1 + 32)];
  if ([v3 isHMError] && objc_msgSend(v3, "code") == 10)
  {
    v6 = v5[17];
    v5[17] = v6 + 1;
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6 >= 4)
    {
      if (v10)
      {
        v11 = HMFGetLogIdentifier();
        v12 = v8[17];
        v24 = 138543874;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        v28 = 2114;
        v29 = v3;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home data %ld time(s) with error: %{public}@. Giving up.", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      *(v8 + 128) = 0;
      [v8[13] suspend];
      goto LABEL_11;
    }

    if (v10)
    {
      v21 = HMFGetLogIdentifier();
      v22 = v8[17];
      [v8[13] timeInterval];
      v24 = 138544130;
      v25 = v21;
      v26 = 2048;
      v27 = v22;
      v28 = 2114;
      v29 = v3;
      v30 = 2048;
      v31 = v23;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home data %ld time(s) with error: %{public}@ (will retry in %.0lf seconds)", &v24, 0x2Au);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [v8[13] timeInterval];
      v24 = 138543874;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2114;
      v29 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home data (will retry in %.0lf seconds): %{public}@", &v24, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v7);
  *(v8 + 128) = 1;
  [v8[13] resume];
LABEL_11:
  v15 = v3;
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v18 = 2;
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (uint64_t)_applyAndSaveHomeDataChanges:(void *)changes forRequest:(void *)request previousLastSeenToken:(void *)token versionChecksum:(void *)checksum error:
{
  v206 = *MEMORY[0x277D85DE8];
  v11 = a2;
  changesCopy = changes;
  requestCopy = request;
  tokenCopy = token;
  if (!self)
  {
    v28 = 0;
    goto LABEL_128;
  }

  v15 = [v11 objectForKeyedSubscript:@"response"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v24 = requestCopy;
      v25 = changesCopy;
      v27 = v26 = tokenCopy;
      *buf = 138543362;
      v193 = v27;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid home data response, missing response type", buf, 0xCu);

      tokenCopy = v26;
      changesCopy = v25;
      requestCopy = v24;
    }

    objc_autoreleasePoolPop(v21);
    if (checksum)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      *checksum = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_127;
  }

  v187 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.resident-sync"];
  v18 = [v11 objectForKeyedSubscript:@"etag"];
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

  if (v20)
  {
    v189 = [self decodeToken:v20 error:0];
  }

  else
  {
    v189 = 0;
  }

  integerValue = [(__CFString *)v17 integerValue];
  v188 = requestCopy;
  if ((integerValue - 1) < 2)
  {
    v30 = changesCopy;
    v31 = [v11 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v186 = v31;

    if (v33)
    {
      if (v189)
      {
        changesCopy = v30;
        goto LABEL_25;
      }

      v179 = v17;
      v184 = v11;
      v58 = 0;
      v59 = v20;
      v70 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v74 = v73 = tokenCopy;
        *buf = 138543362;
        v193 = v74;
        _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Invalid home data response, missing change token", buf, 0xCu);

        tokenCopy = v73;
      }

      objc_autoreleasePoolPop(v70);
      changesCopy = v30;
      if (checksum)
      {
        *checksum = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      }
    }

    else
    {
      v179 = v17;
      v184 = v11;
      v58 = v189;
      v59 = v20;
      v60 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v64 = v63 = tokenCopy;
        *buf = 138543362;
        v193 = v64;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Invalid home data response, missing data payload", buf, 0xCu);

        tokenCopy = v63;
      }

      objc_autoreleasePoolPop(v60);
      changesCopy = v30;
      if (checksum)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        *checksum = v28 = 0;
LABEL_53:
        v20 = v59;
        v39 = v58;
        v11 = v184;
        v17 = v179;
LABEL_125:
        requestCopy = v188;
        goto LABEL_126;
      }
    }

    v28 = 0;
    goto LABEL_53;
  }

  if (integerValue)
  {
    checksumCopy = checksum;
    v51 = v20;
    v52 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v55 = changesCopy;
      v57 = v56 = tokenCopy;
      *buf = 138543618;
      v193 = v57;
      v194 = 2114;
      v195 = v17;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Invalid home data response, invalid response type: %{public}@", buf, 0x16u);

      tokenCopy = v56;
      changesCopy = v55;
    }

    objc_autoreleasePoolPop(v52);
    if (checksumCopy)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      *checksumCopy = v28 = 0;
    }

    else
    {
      v28 = 0;
    }

    v20 = v51;
    v39 = v189;
    goto LABEL_125;
  }

  v186 = 0;
LABEL_25:
  v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;
  if (self[12] || ([(HMDResidentSyncClient *)self _fetchOrCreateMetadataWithError:checksum]& 1) != 0)
  {
    v35 = self[4];
    currentQueryGenerationToken = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
    [v35 setQueryGenerationFromToken:currentQueryGenerationToken error:0];

    home = [self[12] home];
    v183 = v20;
    if (!home)
    {
      v65 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v68 = v177 = tokenCopy;
        shortDescription = [changesCopy shortDescription];
        *buf = 138543618;
        v193 = v68;
        v194 = 2114;
        v195 = shortDescription;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Unable to apply home data for %{public}@, home has been removed", buf, 0x16u);

        v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;
        tokenCopy = v177;
      }

      objc_autoreleasePoolPop(v65);
      if (checksum)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        *checksum = v28 = 0;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_123;
    }

    checksumCopy2 = checksum;
    v37 = [MEMORY[0x277CBEAA8] now];
    [self[12] setLastSyncTimestamp:v37];

    integerValue2 = [(__CFString *)v17 integerValue];
    v39 = v189;
    v175 = changesCopy;
    v176 = tokenCopy;
    context = integerValue2;
    if (v189)
    {
      v40 = integerValue2 == 1;
      lastSyncToken = [self[12] lastSyncToken];
      LOBYTE(v40) = [(HMDResidentSyncController *)self changeToken:v189 isAheadOf:lastSyncToken orEqual:v40];

      if (v40)
      {
        [self[12] setLastSyncToken:v189];
        if (v186)
        {
          integerValue3 = [(__CFString *)v17 integerValue];
          v42 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v164 = v42;
            v45 = HMFGetLogIdentifier();
            shortDescription2 = [changesCopy shortDescription];
            v47 = HMDShortDescriptionForToken(v189);
            v48 = v47;
            if (integerValue3 > 2)
            {
              v49 = @"Unknown";
            }

            else
            {
              v49 = off_27867D020[integerValue3];
            }

            *buf = 138544130;
            v193 = v45;
            v194 = 2112;
            v195 = shortDescription2;
            v196 = 2114;
            v197 = v47;
            v198 = 2114;
            v199 = v49;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Applying home data changes for %@ with change token %{public}@, homeDataType: %{public}@", buf, 0x2Au);

            v42 = v164;
          }

          objc_autoreleasePoolPop(v42);
          v166 = v186;
          v163 = v11;
          v129 = [v163 objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v130 = v129;
          }

          else
          {
            v130 = 0;
          }

          v131 = v130;

          v185 = v11;
          v168 = v131;
          if (v131)
          {
            integerValue4 = [(__CFString *)v131 integerValue];
            if (integerValue4 > 7)
            {
              goto LABEL_108;
            }

            if (((1 << integerValue4) & 0x3A) != 0)
            {
              v133 = objc_autoreleasePoolPush();
              v134 = selfCopy6;
              v135 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                v136 = HMFGetLogIdentifier();
                v137 = @"Unknown";
                *buf = 138543618;
                v193 = v136;
                v194 = 2114;
                v195 = @"Unknown";
                _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_ERROR, "%{public}@Unexpected transport type: %{public}@, not generating log event", buf, 0x16u);

                v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;
              }

              goto LABEL_115;
            }

            if (((1 << integerValue4) & 0xC4) != 0)
            {
              integerValue5 = [(__CFString *)v131 integerValue];
            }

            else
            {
LABEL_108:
              v139 = objc_autoreleasePoolPush();
              v140 = selfCopy6;
              v141 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v142 = HMFGetLogIdentifier();
                *buf = 138543618;
                v193 = v142;
                v194 = 2112;
                v195 = v168;
                _os_log_impl(&dword_229538000, v141, OS_LOG_TYPE_ERROR, "%{public}@Unknown transport type (%@). Log it anyway", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v139);
              integerValue5 = 0;
            }
          }

          else
          {
            integerValue5 = 0;
          }

          if (integerValue3)
          {
            logEventSubmitter = [selfCopy6 logEventSubmitter];
            v144 = [HMDResidentSyncClientHomeDataLogEvent alloc];
            v145 = selfCopy6[2];
            v146 = v166;
            v147 = [v166 length];
            v148 = v145;
            v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;
            v149 = [(HMDResidentSyncClientHomeDataLogEvent *)v144 initWithHomeUUID:v148 encodedDataSize:v147 homeDataType:integerValue3 transportType:integerValue5];
            [logEventSubmitter submitLogEvent:v149];

LABEL_116:
            v151 = [HMDStructuredReader readerFromOPACKData:v146];
            if ([selfCopy6[3] updateRootObject:home fromReader:v151])
            {

              v86 = 0;
              tokenCopy = v176;
              v20 = v183;
              v39 = v189;
LABEL_64:
              lastSeenToken = [self[12] lastSeenToken];
              lastSyncToken2 = [self[12] lastSyncToken];
              v172 = lastSeenToken;
              v190 = lastSyncToken2;
              if (v39 && [self changeToken:v39 isAheadOf:lastSeenToken])
              {
                [self[12] setLastSeenToken:v39];
              }

              else if (([self changeToken:lastSeenToken isAheadOf:v188] & 1) == 0 && objc_msgSend(self, "changeToken:isAheadOf:", lastSeenToken, lastSyncToken2))
              {
                v89 = objc_autoreleasePoolPush();
                selfCopy7 = self;
                v91 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                {
                  v92 = HMFGetLogIdentifier();
                  HMDShortDescriptionForToken(v172);
                  v180 = v17;
                  v93 = v11;
                  v95 = v94 = v39;
                  v96 = HMDShortDescriptionForToken(v190);
                  *buf = 138543874;
                  v193 = v92;
                  v194 = 2114;
                  v195 = v95;
                  v196 = 2114;
                  v197 = v96;
                  _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@Reverting last seen token %{public}@ to last sync token %{public}@ after successful fetch", buf, 0x20u);

                  v39 = v94;
                  v11 = v93;
                  v17 = v180;

                  tokenCopy = v176;
                }

                objc_autoreleasePoolPop(v89);
                [selfCopy7[12] setLastSeenToken:v190];
                v20 = v183;
              }

              if (tokenCopy)
              {
                v97 = context == 1;
              }

              else
              {
                v97 = 0;
              }

              if (v97)
              {
                v98 = v86;
              }

              else
              {
                v98 = 1;
              }

              if ((v98 & 1) == 0)
              {
                v99 = objc_autoreleasePoolPush();
                selfCopy8 = self;
                v101 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v103 = v102 = tokenCopy;
                  [selfCopy8[12] lastSyncChecksum];
                  v104 = v17;
                  v105 = v11;
                  v107 = v106 = v39;
                  *buf = 138543874;
                  v193 = v103;
                  v194 = 2114;
                  v195 = v107;
                  v196 = 2114;
                  v197 = v102;
                  _os_log_impl(&dword_229538000, v101, OS_LOG_TYPE_INFO, "%{public}@Updating the lastSyncChecksum from: %{public}@ to %{public}@", buf, 0x20u);

                  v39 = v106;
                  v11 = v105;
                  v17 = v104;

                  tokenCopy = v102;
                }

                objc_autoreleasePoolPop(v99);
                [selfCopy8[12] setLastSyncChecksum:tokenCopy];
                v20 = v183;
              }

              insertedObjects = [self[4] insertedObjects];
              v167 = [insertedObjects count];

              updatedObjects = [self[4] updatedObjects];
              v165 = [updatedObjects count];

              deletedObjects = [self[4] deletedObjects];
              v111 = [deletedObjects count];

              v112 = self[4];
              v191 = 0;
              v28 = [v112 save:&v191];
              v113 = v191;
              contexta = objc_autoreleasePoolPush();
              selfCopy9 = self;
              v115 = HMFGetOSLogHandle();
              v116 = v115;
              if (v28)
              {
                if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                {
                  HMFGetLogIdentifier();
                  v117 = v170 = v113;
                  shortDescription3 = [v175 shortDescription];
                  HMDShortDescriptionForToken(v39);
                  v181 = v17;
                  v119 = v11;
                  v121 = v120 = v39;
                  *buf = 138544642;
                  v193 = v117;
                  v194 = 2048;
                  v195 = v167;
                  v196 = 2048;
                  v197 = v165;
                  v198 = 2048;
                  v199 = v111;
                  v200 = 2112;
                  v201 = shortDescription3;
                  v202 = 2114;
                  v203 = v121;
                  _os_log_impl(&dword_229538000, v116, OS_LOG_TYPE_DEFAULT, "%{public}@Database changes saved (%tu / %tu / %tu) for %@ with change token %{public}@", buf, 0x3Eu);

                  v20 = v183;
                  v39 = v120;
                  v11 = v119;
                  v17 = v181;

                  v113 = v170;
                }

                objc_autoreleasePoolPop(contexta);
              }

              else
              {
                if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v122 = v162 = v111;
                  shortDescription4 = [v175 shortDescription];
                  HMDShortDescriptionForToken(v39);
                  v182 = v17;
                  v124 = v11;
                  v126 = v125 = v39;
                  *buf = 138544898;
                  v193 = v122;
                  v194 = 2048;
                  v195 = v167;
                  v196 = 2048;
                  v197 = v165;
                  v198 = 2048;
                  v199 = v162;
                  v200 = 2112;
                  v201 = shortDescription4;
                  v202 = 2114;
                  v203 = v126;
                  v204 = 2114;
                  v205 = v113;
                  _os_log_impl(&dword_229538000, v116, OS_LOG_TYPE_ERROR, "%{public}@Failed to save database changes (%tu / %tu / %tu) for %@ with change token %{public}@: %{public}@", buf, 0x48u);

                  v20 = v183;
                  v39 = v125;
                  v11 = v124;
                  v17 = v182;
                }

                objc_autoreleasePoolPop(contexta);
                if (checksumCopy2)
                {
                  *checksumCopy2 = HMDSanitizeCoreDataError(v113);
                }

                [self[4] rollback];
              }

              changesCopy = v175;
              tokenCopy = v176;
              v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;

              goto LABEL_124;
            }

            v152 = objc_autoreleasePoolPush();
            v153 = selfCopy6;
            v154 = v152;
            v155 = v153;
            v156 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              v157 = HMFGetLogIdentifier();
              [v151 error];
              v159 = v158 = changesCopy;
              *buf = 138543618;
              v193 = v157;
              v194 = 2114;
              v195 = v159;
              _os_log_impl(&dword_229538000, v156, OS_LOG_TYPE_ERROR, "%{public}@Failed to apply home data: %{public}@", buf, 0x16u);

              changesCopy = v158;
              v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;
            }

            objc_autoreleasePoolPop(v154);
            v11 = v185;
            if (checksumCopy2)
            {
              *checksumCopy2 = [v151 error];
            }

            [self[4] rollback];

            v28 = 0;
            tokenCopy = v176;
LABEL_123:
            v20 = v183;
            v39 = v189;
LABEL_124:

            [self[4] refreshAllObjects];
            [*(self + v34[35]) willAccessValueForKey:0];
            [self[4] setQueryGenerationFromToken:0 error:0];

            goto LABEL_125;
          }

          v133 = objc_autoreleasePoolPush();
          v134 = selfCopy6;
          v135 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            v150 = HMFGetLogIdentifier();
            *buf = 138543362;
            v193 = v150;
            _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_ERROR, "%{public}@Unexpected HMDFetchHomeDataResponseType_NotModified, not generating log event", buf, 0xCu);

            v34 = &OBJC_IVAR___HMDCameraMetricsLogEvent__accessory;
          }

LABEL_115:

          objc_autoreleasePoolPop(v133);
          v146 = v166;
          goto LABEL_116;
        }

        v75 = objc_autoreleasePoolPush();
        selfCopy12 = self;
        v77 = HMFGetOSLogHandle();
        v39 = v189;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = HMFGetLogIdentifier();
          shortDescription5 = [changesCopy shortDescription];
          v128 = HMDShortDescriptionForToken(v189);
          *buf = 138543874;
          v193 = v78;
          v194 = 2112;
          v195 = shortDescription5;
          v196 = 2114;
          v197 = v128;
          _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Applying last sync token update only for %@ with change token %{public}@", buf, 0x20u);

          v39 = v189;
          goto LABEL_62;
        }

LABEL_63:

        objc_autoreleasePoolPop(v75);
        v86 = 1;
        v20 = v183;
        goto LABEL_64;
      }

      v75 = objc_autoreleasePoolPush();
      selfCopy12 = self;
      v77 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v78 = HMFGetLogIdentifier();
      [changesCopy shortDescription];
      v79 = v17;
      v80 = v11;
      v82 = v81 = v189;
      *buf = 138543618;
      v193 = v78;
      v194 = 2114;
      v195 = v82;
      v83 = "%{public}@Not persisting stale home data for %{public}@ (incoming change token is not ahead of last sync)";
      v84 = v77;
      v85 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v75 = objc_autoreleasePoolPush();
      selfCopy12 = self;
      v77 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        goto LABEL_63;
      }

      v78 = HMFGetLogIdentifier();
      [changesCopy shortDescription];
      v79 = v17;
      v80 = v11;
      v82 = v81 = 0;
      *buf = 138543618;
      v193 = v78;
      v194 = 2114;
      v195 = v82;
      v83 = "%{public}@Updating last sync timestamp only for %{public}@";
      v84 = v77;
      v85 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_229538000, v84, v85, v83, buf, 0x16u);

    v39 = v81;
    v11 = v80;
    v17 = v79;
LABEL_62:

    tokenCopy = v176;
    goto LABEL_63;
  }

  v28 = 0;
  requestCopy = v188;
  v39 = v189;
LABEL_126:

LABEL_127:
LABEL_128:

  v160 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)_performFetchIfRequired
{
  selfCopy = self;
  if (self)
  {
    anyObject = [self[11] anyObject];

    if (anyObject)
    {
      selfCopy = [MEMORY[0x277D0F7C0] futureWithNoValue];
      goto LABEL_13;
    }

    persistentStoreCoordinator = [selfCopy[4] persistentStoreCoordinator];
    managedObjectModel = [persistentStoreCoordinator managedObjectModel];
    versionChecksum = [managedObjectModel versionChecksum];

    lastSeenToken = [selfCopy[12] lastSeenToken];

    if (lastSeenToken)
    {
      lastSeenToken2 = [selfCopy[12] lastSeenToken];
      lastSyncToken = [selfCopy[12] lastSyncToken];
      lastSyncChecksum = [selfCopy[12] lastSyncChecksum];
      v10 = HMFEqualObjects();
      v11 = [(HMDResidentSyncController *)selfCopy changeToken:lastSeenToken2 isAheadOf:lastSyncToken orEqual:v10 ^ 1u];

      if (v11)
      {
        v12 = @"lastSeenToken is ahead of lastSyncToken (or equal with mismatched schema checksums)";
      }

      else
      {
        v13 = [MEMORY[0x277CBEAA8] now];
        lastSyncTimestamp = [selfCopy[12] lastSyncTimestamp];
        [v13 timeIntervalSinceDate:lastSyncTimestamp];
        v16 = v15;
        v17 = HMDHomeDataChangedMessageTimeout();

        if (v16 < v17)
        {
          futureWithNoValue = [MEMORY[0x277D0F7C0] futureWithNoValue];
LABEL_12:
          selfCopy = futureWithNoValue;

          goto LABEL_13;
        }

        v12 = @"lastSyncTimestamp indicates data may be stale";
      }
    }

    else
    {
      v12 = @"lastSeenToken is nil";
    }

    futureWithNoValue = [(HMDResidentSyncClient *)selfCopy _performFetchWithReason:v12];
    goto LABEL_12;
  }

LABEL_13:

  return selfCopy;
}

- (uint64_t)_fetchOrCreateMetadataWithError:(uint64_t)result
{
  v35 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = *(result + 32);
    v29 = 0;
    v6 = [(_MKFModel *)_MKFHome modelWithModelID:v4 context:v5 error:&v29];
    v7 = v29;
    if (!v6)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v14;
        v33 = 2114;
        v34 = v7;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to find or create resident sync metadata, home not found: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      if (a2)
      {
        v15 = v7;
        *a2 = v7;
      }

      v30 = 0;
      goto LABEL_16;
    }

    residentSyncMetadata = [v6 residentSyncMetadata];
    if (residentSyncMetadata)
    {
      v9 = residentSyncMetadata;
      v10 = v7;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v3;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Creating initial resident sync metadata", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v9 = [[MKFResidentSyncMetadata alloc] initWithContext:v3[4]];
      [(MKFResidentSyncMetadata *)v9 setHome:v6];
      v20 = v3[4];
      v28 = v7;
      v21 = [v20 save:&v28];
      v10 = v28;

      if ((v21 & 1) == 0)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v17;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v27;
          v33 = 2114;
          v34 = v10;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to save resident sync metadata: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        if (a2)
        {
          *a2 = HMDSanitizeCoreDataError(v10);
        }

        [v3[4] rollback];
        v22 = 0;
        goto LABEL_15;
      }

      [v3[4] refreshAllObjects];
      [v17[12] willAccessValueForKey:0];
      [v3[4] setQueryGenerationFromToken:0 error:0];
    }

    objc_storeStrong(v3 + 12, v9);
    v22 = 1;
LABEL_15:
    v30 = v22;

    v7 = v10;
LABEL_16:

    result = v30;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)timerDidFire:(id)fire
{
  retryTimer = self->_retryTimer;
  if (retryTimer == fire)
  {
    [(HMFExponentialBackoffTimer *)retryTimer suspend];
    context = self->super._context;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__HMDResidentSyncClient_timerDidFire___block_invoke;
    v6[3] = &unk_27868A728;
    v6[4] = self;
    [(HMDManagedObjectContext *)context performBlock:v6];
  }
}

id *__38__HMDResidentSyncClient_timerDidFire___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 128) == 1)
  {
    return [(HMDResidentSyncClient *)result _performFetchIfRequired];
  }

  return result;
}

- (void)performResidentRequest:(id)request options:(unint64_t)options
{
  requestCopy = request;
  if (requestCopy)
  {
    v6 = requestCopy;
    destination = [requestCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = destination;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      v10 = [HMDRemoteHomeMessageDestination alloc];
      destination2 = [v6 destination];
      target = [destination2 target];
      destination = [(HMDRemoteHomeMessageDestination *)v10 initWithTarget:target homeUUID:self->super._homeUUID];
    }

    v13 = MEMORY[0x277D0F7C0];
    context = self->super._context;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke;
    v19[3] = &unk_278686828;
    v19[4] = self;
    v20 = v6;
    v21 = destination;
    v15 = destination;
    v16 = v6;
    v17 = [v13 inContext:context perform:v19];
    [v16 respondWithOutcomeOf:v17];
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke(v18);
  }
}

uint64_t __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 64) isCurrentDevicePrimaryResident])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 40) shortDescription];
      *buf = 138543618;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Unable to dispatch resident request '%@': this device is the primary resident", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    if (v7)
    {
      v8 = v7;
      v9 = 2;
      v10 = v8;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v8 = 0;
      v10 = 0;
      v9 = 2;
    }
  }

  else
  {
    v11 = [*(a1 + 40) messagePayload];
    v12 = [v11 mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
    }

    v10 = v14;

    v8 = [*(*(a1 + 32) + 96) lastSyncToken];
    v15 = [(HMDResidentSyncClient *)*(a1 + 32) _syncDetailsWithChangeToken:v8];
    [v10 setObject:v15 forKeyedSubscript:@"$HMDRS$"];

    v16 = [HMDRemoteMessage alloc];
    v17 = [*(a1 + 40) name];
    v18 = [*(a1 + 40) qualityOfService];
    v19 = *(a1 + 48);
    v20 = [v10 copy];
    v21 = [*(a1 + 40) headers];
    [*(a1 + 40) timeout];
    LOBYTE(v39) = 1;
    v23 = -[HMDRemoteMessage initWithName:qualityOfService:destination:payload:headers:type:timeout:secure:restriction:sendOptions:](v16, "initWithName:qualityOfService:destination:payload:headers:type:timeout:secure:restriction:sendOptions:", v17, v18, v19, v20, v21, 3, v22, v39, [*(a1 + 40) remoteRestriction], 0);

    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 40) shortDescription];
      v29 = [(HMFObject *)v23 shortDescription];
      *buf = 138543874;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Dispatching resident request '%@' using remote message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    [*(*(a1 + 32) + 88) addObject:v23];
    v30 = [*(*(a1 + 32) + 56) sendMessageExpectingResponse:v23];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke_234;
    v42[3] = &unk_27867CF60;
    v31 = *(a1 + 40);
    v42[4] = *(a1 + 32);
    v43 = v31;
    v32 = v23;
    v44 = v32;
    v33 = [v30 then:v42];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke_239;
    v40[3] = &unk_2786898D8;
    v40[4] = *(a1 + 32);
    v34 = v32;
    v41 = v34;
    v35 = [v33 finally:v40];
    if (!v35)
    {
      _HMFPreconditionFailure();
    }

    v36 = v35;

    v9 = 3;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke_234(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_dictionaryForKey:@"$HMDRS$"];
  if (!v4)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      v31 = 2114;
      v32 = @"$HMDRS$";
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Resident response payload for '%@' is missing resident sync details key (%{public}@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    if (v16)
    {
      v9 = v16;
      v10 = 2;
      v8 = v9;
      goto LABEL_16;
    }

    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
    v9 = 0;
    v8 = 0;
LABEL_15:
    v10 = 2;
    goto LABEL_16;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v26 = 0;
  v7 = [(HMDResidentSyncClient *)v5 _applyAndSaveHomeDataChanges:v4 forRequest:v6 previousLastSeenToken:0 versionChecksum:0 error:&v26];
  v8 = v26;
  if ((v7 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) shortDescription];
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Resident response for '%@' was success but local database save failed, returning partial success error code", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008 description:@"Resident request succeeded but database save failed" underlyingError:v8];
    v9 = v22;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    goto LABEL_15;
  }

  v9 = [v3 mutableCopy];
  [v9 removeObjectForKey:@"$HMDRS$"];
  [v9 copy];
  v10 = 1;
LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __56__HMDResidentSyncClient_performResidentRequest_options___block_invoke_239(uint64_t a1)
{
  [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
  v2 = [(HMDResidentSyncClient *)*(a1 + 32) _performFetchIfRequired];
  return 1;
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  v33 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->super._home);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    homeManager = [WeakRetained homeManager];
    uuid = [v6 uuid];
    v9 = [homeManager sharedUserAcceptEventBuilderForHomeUuid:uuid];

    [v9 markDiscoverPrimaryResidentEnd];
    [v9 markResidentSyncBegin];
  }

  userInfo = [changedCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if ([v13 isCurrentDevice])
  {
    context = self->super._context;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __54__HMDResidentSyncClient_handlePrimaryResidentChanged___block_invoke;
    v29 = &unk_27868A728;
    selfCopy = self;
    v15 = &v26;
LABEL_12:
    [(HMDManagedObjectContext *)context performBlock:v15, v21, v22, v23, v24, v25, v26, v27, v28, v29, selfCopy];
    goto LABEL_13;
  }

  if (v13)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Primary resident changed, asking the new primary for an update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    context = selfCopy2->super._context;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __54__HMDResidentSyncClient_handlePrimaryResidentChanged___block_invoke_223;
    v24 = &unk_27868A728;
    v25 = selfCopy2;
    v15 = &v21;
    goto LABEL_12;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentSyncClient_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(v1 + 112);
    if (v3)
    {
      *(v1 + 112) = 0;
    }

    v4 = *(v1 + 120);
    if (v4)
    {
      v5 = [v4 voidResolverBlock];
      v6 = *(v1 + 120);
      *(v1 + 120) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      *(v7 + 128) = 0;
      v8 = *(v7 + 104);

      [v8 suspend];
    }
  }
}

- (void)performSync
{
  context = self->super._context;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__HMDResidentSyncClient_performSync__block_invoke;
  v3[3] = &unk_27868A728;
  v3[4] = self;
  [(HMDManagedObjectContext *)context performBlock:v3];
}

- (void)stop
{
  [(HMFMessageDispatcher *)self->_dispatcher deregisterReceiver:self];
  notificationCenter = self->super._notificationCenter;

  [(NSNotificationCenter *)notificationCenter removeObserver:self];
}

- (id)start
{
  v13[2] = *MEMORY[0x277D85DE8];
  context = self->super._context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__HMDResidentSyncClient_start__block_invoke;
  v12[3] = &unk_27868A700;
  v12[4] = self;
  v4 = [MEMORY[0x277D0F7C0] inContext:context perform:v12];
  WeakRetained = objc_loadWeakRetained(&self->super._home);
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:WeakRetained userPrivilege:3 remoteAccessRequired:0];

  dispatcher = self->_dispatcher;
  v13[0] = v6;
  v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [(HMFMessageDispatcher *)dispatcher registerForMessage:@"HMDHomeDataChangedMessage" receiver:self policies:v9 selector:sel__handleHomeDataChanged_];

  [(NSNotificationCenter *)self->super._notificationCenter addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:self->_residentDeviceManager];
  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

HMDResidentSyncClient *__30__HMDResidentSyncClient_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, BOOL a9, void *a10, void *a11)
{
  *(*(a1 + 32) + 136) = 0;
  v12 = *(a1 + 32);
  v30 = 0;
  v13 = [(HMDResidentSyncClient *)v12 _fetchOrCreateMetadataWithError:?];
  v14 = v30;
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    v19 = v14;
    v17 = v19;
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v18 = 2;
    goto LABEL_8;
  }

  v16 = [(HMDResidentSyncClient *)*(a1 + 32) _performFetchIfRequired];
  if (v16)
  {
    v17 = v16;

    v18 = 3;
LABEL_8:

    return v18;
  }

  v22 = _HMFPreconditionFailure();
  return [(HMDResidentSyncClient *)v22 initWithHome:v23 codingModel:v24 dispatcher:v25 residentDeviceManager:v26 notificationCenter:v27 persistence:v28 isResidentCapable:v29 dataSource:a9 logEventSubmitter:a10, a11];
}

- (HMDResidentSyncClient)initWithHome:(id)home codingModel:(id)model dispatcher:(id)dispatcher residentDeviceManager:(id)manager notificationCenter:(id)center persistence:(id)persistence isResidentCapable:(BOOL)capable dataSource:(id)self0 logEventSubmitter:(id)self1
{
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  sourceCopy = source;
  submitterCopy = submitter;
  v30.receiver = self;
  v30.super_class = HMDResidentSyncClient;
  v19 = [(HMDResidentSyncController *)&v30 initWithHome:home codingModel:model notificationCenter:center persistence:persistence];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dispatcher, dispatcher);
    objc_storeStrong(&v20->_residentDeviceManager, manager);
    objc_storeStrong(&v20->_dataSource, source);
    v20->_residentCapable = capable;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    requestsInProgress = v20->_requestsInProgress;
    v20->_requestsInProgress = weakObjectsHashTable;

    v23 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:2 maximumTimeInterval:0 exponentialFactor:10.0 options:28800.0];
    retryTimer = v20->_retryTimer;
    v20->_retryTimer = v23;

    [(HMFExponentialBackoffTimer *)v20->_retryTimer setDelegate:v20];
    objc_storeStrong(&v20->_logEventSubmitter, submitter);
    v25 = objc_opt_new();
    [(HMDManagedObjectContext *)v20->super._context setMergePolicy:v25];

    v20->_accessDeniedCount = 0;
  }

  return v20;
}

@end