@interface HMDAppleMediaAccessorySensorManagerDataStore
- (HMDAppleMediaAccessorySensorManagerDataStore)initWithLocalMOC:(id)a3;
- (id)currentSensorPairingWithMOC:(uint64_t)a3 error:;
- (void)fetchSensorUUIDWithCompletion:(id)a3;
- (void)saveSensorUUID:(id)a3 completion:(id)a4;
@end

@implementation HMDAppleMediaAccessorySensorManagerDataStore

- (void)fetchSensorUUIDWithCompletion:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HMDAppleMediaAccessorySensorManagerDataStore_fetchSensorUUIDWithCompletion___block_invoke;
  v10[3] = &unk_278689F98;
  v10[4] = self;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  v9 = v7;
  [v9 performBlock:v10];
}

void __78__HMDAppleMediaAccessorySensorManagerDataStore_fetchSensorUUIDWithCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v8 = 0;
  v4 = [(HMDAppleMediaAccessorySensorManagerDataStore *)v2 currentSensorPairingWithMOC:v3 error:&v8];
  v5 = v8;
  v6 = a1[6];
  v7 = [v4 pairedSensorUUID];
  (*(v6 + 16))(v6, v7);
}

- (id)currentSensorPairingWithMOC:(uint64_t)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    [v5 hmd_assertIsExecuting];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__18771;
    v16 = __Block_byref_object_dispose__18772;
    v17 = 0;
    v7 = +[MKFLocalAppleMediaSensorPairing fetchRequest];
    v8 = [v6 executeFetchRequest:v7 error:a3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__HMDAppleMediaAccessorySensorManagerDataStore_currentSensorPairingWithMOC_error___block_invoke;
    v11[3] = &unk_278670DB8;
    v11[4] = &v12;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
    v9 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __82__HMDAppleMediaAccessorySensorManagerDataStore_currentSensorPairingWithMOC_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [v7 entity];
  v5 = +[MKFLocalAppleMediaSensorPairing entity];
  v6 = [v4 isKindOfEntity:v5];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)saveSensorUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v7, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HMDAppleMediaAccessorySensorManagerDataStore_saveSensorUUID_completion___block_invoke;
  v14[3] = &unk_278689AB8;
  v14[4] = self;
  v15 = v10;
  v16 = v6;
  v17 = v8;
  v11 = v6;
  v12 = v8;
  v13 = v10;
  [v13 performBlock:v14];
}

void __74__HMDAppleMediaAccessorySensorManagerDataStore_saveSensorUUID_completion___block_invoke(uint64_t *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v34 = 0;
  v4 = [(HMDAppleMediaAccessorySensorManagerDataStore *)v2 currentSensorPairingWithMOC:v3 error:&v34];
  v5 = v34;
  if (v5)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v10;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch the current the local sensor pairing with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = a1[7];
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
    }

    goto LABEL_23;
  }

  if (!v4)
  {
    v12 = MEMORY[0x277CBE408];
    v13 = +[MKFLocalAppleMediaSensorPairing entity];
    v14 = [v13 name];
    v4 = [v12 insertNewObjectForEntityForName:v14 inManagedObjectContext:a1[5]];

    v15 = objc_autoreleasePoolPush();
    v16 = a1[4];
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v18;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Created new sensor pairing local model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  [v4 setPairedSensorUUID:a1[6]];
  v19 = a1[5];
  v33 = 0;
  v20 = [v19 save:&v33];
  v6 = v33;
  v21 = objc_autoreleasePoolPush();
  v22 = a1[4];
  v23 = HMFGetOSLogHandle();
  v24 = v23;
  if (v20 && !v6)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = a1[6];
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Saved local pairedSensorUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = a1[7];
    if (v27)
    {
      (*(v27 + 16))(v27, 0);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    v29 = a1[6];
    *buf = 138543618;
    v36 = v28;
    v37 = 2112;
    v38 = v29;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to update the local pairedSensorUUID to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v30 = a1[7];
  if (v30)
  {
    if (v6)
    {
      (*(v30 + 16))(v30, v6);
      goto LABEL_23;
    }

    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v30 + 16))(v30, v31);

LABEL_22:
    v6 = 0;
  }

LABEL_23:

  v32 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessorySensorManagerDataStore)initWithLocalMOC:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessorySensorManagerDataStore;
  v6 = [(HMDAppleMediaAccessorySensorManagerDataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localMOC, a3);
  }

  return v7;
}

@end