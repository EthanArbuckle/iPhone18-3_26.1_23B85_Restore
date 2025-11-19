@interface HMMTRDoorLockClusterAPIRouter
+ (BOOL)isCredentialTypeAliro:(id)a3;
+ (id)aliroClearCredentialParamsFromParams:(id)a3 flow:(id)a4;
+ (id)aliroCredentialFromCredential:(id)a3 flow:(id)a4;
+ (id)aliroCredentialTypeForCredentialType:(id)a3 flow:(id)a4;
+ (id)aliroGetCredentialParamsFromParams:(id)a3 flow:(id)a4;
+ (id)aliroReaderConfigParamsFromParams:(id)a3;
+ (id)aliroSetCredentialParamsFromParams:(id)a3 flow:(id)a4;
+ (id)arrayOfDataFromRead:(id)a3;
+ (id)credentialTypeForAliroCredentialType:(unsigned __int8)a3 flow:(id)a4;
+ (id)doorLockFeatureMapSupportsAppleCustomAliroBLEUWB:(id)a3;
+ (id)doorLockFeatureMapSupportsAppleCustomAliroProvisioning:(id)a3;
+ (id)mergeAndRemoveDuplicatesFromArray:(id)a3 andArray:(id)a4;
+ (id)readerConfigParamsFromReaderConfig:(id)a3;
- (HMMTRDoorLockClusterAPIRouter)initWithDoorLock:(id)a3 device:(id)a4 queue:(id)a5;
- (MTRClusterDoorLock)doorLock;
- (id)appendAliroCredentialsToUser:(id)a3 aliroCredentials:(id)a4;
- (id)getAliroCredentialAtIndex:(int64_t)a3 forCredentialType:(int64_t)a4 flow:(id)a5;
- (id)getAppleAliroCredentialsWithCredentialType:(int64_t)a3 startingAtIndex:(int64_t)a4 credentials:(id)a5 flow:(id)a6;
- (void)clearCredentialWithParams:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)fetchAppleClusterFeaturesWithFlow:(id)a3 completion:(id)a4;
- (void)getCredentialStatusWithParams:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)getUserWithParams:(id)a3 includeAliroCredentials:(BOOL)a4 temporaryCachedAliroCredentials:(id)a5 flow:(id)a6 completion:(id)a7;
- (void)isCustomClusterAvailableWithFlow:(id)a3 completion:(id)a4;
- (void)numberOfAliroDeviceKeyCredentialsSupportedWithFlow:(id)a3 completion:(id)a4;
- (void)numberOfAliroIssuerKeyCredentialsSupportedWithFlow:(id)a3 completion:(id)a4;
- (void)readAttributeAliroBLEAdvertisingVersionWithFlow:(id)a3 completion:(id)a4;
- (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow:(id)a3 completion:(id)a4;
- (void)readAttributeAliroGroupResolvingKeyWithFlow:(id)a3 completion:(id)a4;
- (void)readAttributeAliroReaderGroupIdentifierWithFlow:(id)a3 completion:(id)a4;
- (void)readAttributeAliroReaderVerificationKeyWithFlow:(id)a3 completion:(id)a4;
- (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow:(id)a3 completion:(id)a4;
- (void)setAliroReaderConfigWithConfig:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)setCredentialWithParams:(id)a3 flow:(id)a4 completion:(id)a5;
@end

@implementation HMMTRDoorLockClusterAPIRouter

- (MTRClusterDoorLock)doorLock
{
  WeakRetained = objc_loadWeakRetained(&self->_doorLock);

  return WeakRetained;
}

- (id)getAliroCredentialAtIndex:(int64_t)a3 forCredentialType:(int64_t)a4 flow:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138544130;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2048;
    v37 = a3;
    v38 = 2048;
    v39 = a4;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getCredentialAtIndex: %ld forCredentialType: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v14 setCredentialType:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v14 setCredentialIndex:v16];

  v17 = objc_opt_new();
  [v17 setCredential:v14];
  v18 = [(HMMTRDoorLockClusterAPIRouter *)v10 doorLock];
  if (v18)
  {
    v19 = objc_opt_new();
    v20 = [v19 completionHandlerAdapter];
    [v18 appleGetAliroCredentialStatusWithParams:v17 expectedValues:0 expectedValueInterval:0 completion:v20];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __82__HMMTRDoorLockClusterAPIRouter_getAliroCredentialAtIndex_forCredentialType_flow___block_invoke;
    v30[3] = &unk_2786EF9E0;
    v30[4] = v10;
    v31 = v8;
    v21 = [v19 addFailureBlock:v30];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v10;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v8 UUID];
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v21 = [v27 futureWithError:v19];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

void __82__HMMTRDoorLockClusterAPIRouter_getAliroCredentialAtIndex_forCredentialType_flow___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get credential with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)getAppleAliroCredentialsWithCredentialType:(int64_t)a3 startingAtIndex:(int64_t)a4 credentials:(id)a5 flow:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(HMMTRDoorLockClusterAPIRouter *)self getAliroCredentialAtIndex:a4 forCredentialType:a3 flow:v11];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__HMMTRDoorLockClusterAPIRouter_getAppleAliroCredentialsWithCredentialType_startingAtIndex_credentials_flow___block_invoke;
  v17[3] = &unk_2786EF0E8;
  v21 = a3;
  v22 = a4;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = [v12 flatMap:v17];

  return v15;
}

id __109__HMMTRDoorLockClusterAPIRouter_getAppleAliroCredentialsWithCredentialType_startingAtIndex_credentials_flow___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 credentialExists];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = a1[4];
    v7 = [HMMCredentialKey alloc];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a1[8]];
    v10 = [(HMMCredentialKey *)v7 initWithCredentialType:v8 andCredentialIndex:v9];
    [v6 setObject:v3 forKey:v10];
  }

  v11 = [v3 nextCredentialIndex];

  if (v11)
  {
    v12 = a1[5];
    v13 = a1[7];
    v14 = [v3 nextCredentialIndex];
    v15 = [v12 getAppleAliroCredentialsWithCredentialType:v13 startingAtIndex:objc_msgSend(v14 credentials:"integerValue") flow:{a1[4], a1[6]}];
  }

  else
  {
    v15 = [MEMORY[0x277D2C900] futureWithResult:a1[4]];
  }

  return v15;
}

- (id)appendAliroCredentialsToUser:(id)a3 aliroCredentials:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB18];
  v8 = a4;
  v9 = [v7 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HMMTRDoorLockClusterAPIRouter_appendAliroCredentialsToUser_aliroCredentials___block_invoke;
  v18[3] = &unk_2786EF0C0;
  v10 = v6;
  v19 = v10;
  v20 = self;
  v21 = v9;
  v11 = v9;
  [v8 na_each:v18];

  v12 = objc_opt_class();
  v13 = [v10 credentials];
  v14 = [v12 mergeAndRemoveDuplicatesFromArray:v13 andArray:v11];
  [v10 setCredentials:v14];

  v15 = v21;
  v16 = v10;

  return v10;
}

void __79__HMMTRDoorLockClusterAPIRouter_appendAliroCredentialsToUser_aliroCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = [a3 userIndex];
  v6 = [*(a1 + 32) userIndex];

  if (v5 == v6)
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = [v18 credentialType];
    v10 = [v9 unsignedIntegerValue];
    v11 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v12 = [v8 credentialTypeForAliroCredentialType:v10 flow:v11];

    v13 = [HMMCredentialKey alloc];
    v14 = [v18 credentialIndex];
    v15 = [(HMMCredentialKey *)v13 initWithCredentialType:v12 andCredentialIndex:v14];

    v16 = *(a1 + 48);
    v17 = [(HMMCredentialKey *)v15 credentialStruct];
    [v16 addObject:v17];
  }
}

- (void)getUserWithParams:(id)a3 includeAliroCredentials:(BOOL)a4 temporaryCachedAliroCredentials:(id)a5 flow:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke;
  v20[3] = &unk_2786EF098;
  v23 = v13;
  v24 = v15;
  v20[4] = self;
  v21 = v14;
  v25 = a4;
  v22 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = v15;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v18 completion:v20];
}

void __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      v7 = *(a1 + 48);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_49;
      v19[3] = &unk_2786EF070;
      v24 = a2;
      v25 = *(a1 + 72);
      v23 = *(a1 + 64);
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v20 = v8;
      v21 = v9;
      v22 = v10;
      [v6 getUserWithParams:v7 expectedValues:0 expectedValueInterval:0 completion:v19];

      v11 = v23;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 64);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v17 + 16))(v17, 0, v11);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = [v5 userStatus];
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = [v5 userStatus];
    if ([v8 isEqualToNumber:&unk_283EE8868])
    {

LABEL_13:
      (*(*(a1 + 56) + 16))();
      goto LABEL_14;
    }

    v9 = *(a1 + 65);

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"aliroCredentials"];
    objc_sync_exit(v10);

    if (!*(a1 + 32) || !v11)
    {
      v19 = *(a1 + 40);
      v20 = [MEMORY[0x277CBEB38] dictionary];
      v21 = [v19 getAppleAliroCredentialsWithCredentialType:1 startingAtIndex:1 credentials:v20 flow:*(a1 + 48)];
      v44[0] = v21;
      v22 = *(a1 + 40);
      v23 = [MEMORY[0x277CBEB38] dictionary];
      v24 = [v22 getAppleAliroCredentialsWithCredentialType:2 startingAtIndex:1 credentials:v23 flow:*(a1 + 48)];
      v44[1] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];

      v26 = [MEMORY[0x277D2C900] combineAllFutures:v25];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_58;
      v33[3] = &unk_2786EF048;
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v34 = v27;
      v35 = v28;
      v36 = v5;
      v37 = *(a1 + 56);
      v29 = [v26 addSuccessBlock:v33];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_2;
      v31[3] = &unk_2786F0BC0;
      v32 = *(a1 + 56);
      v30 = [v29 addFailureBlock:v31];

      goto LABEL_14;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 48) UUID];
      *buf = 138543874;
      v39 = v15;
      v40 = 2112;
      v41 = v16;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Begin process to re-add AliroCredentialsToUser: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [*(a1 + 40) appendAliroCredentialsToUser:v5 aliroCredentials:v11];
    (*(*(a1 + 56) + 16))();
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

void __123__HMMTRDoorLockClusterAPIRouter_getUserWithParams_includeAliroCredentials_temporaryCachedAliroCredentials_flow_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndexedSubscript:0];
  v4 = [v3 mutableCopy];

  v5 = [v8 objectAtIndexedSubscript:1];
  [v4 addEntriesFromDictionary:v5];

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"aliroCredentials"];
  objc_sync_exit(v6);

  v7 = [*(a1 + 40) appendAliroCredentialsToUser:*(a1 + 48) aliroCredentials:v4];
  (*(*(a1 + 56) + 16))();
}

- (void)setAliroReaderConfigWithConfig:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMMTRDoorLockClusterAPIRouter_setAliroReaderConfigWithConfig_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v11 completion:v14];
}

void __80__HMMTRDoorLockClusterAPIRouter_setAliroReaderConfigWithConfig_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() readerConfigParamsFromReaderConfig:*(a1 + 40)];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [v7 signingKey];
      v46 = 138543874;
      v47 = v11;
      v48 = 2112;
      v49 = v12;
      v50 = 2048;
      v51 = [v13 length];
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] signingKeySize: %lu", &v46, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 48) UUID];
      v19 = [v7 verificationKey];
      v20 = [v19 length];
      v46 = 138543874;
      v47 = v17;
      v48 = 2112;
      v49 = v18;
      v50 = 2048;
      v51 = v20;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] verificationKey: %lu", &v46, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 48) UUID];
      v26 = [v7 groupIdentifier];
      v27 = [v26 length];
      v46 = 138543874;
      v47 = v24;
      v48 = 2112;
      v49 = v25;
      v50 = 2048;
      v51 = v27;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] groupIdentifier: %lu", &v46, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [*(a1 + 48) UUID];
      v33 = [v7 groupResolvingKey];
      v34 = [v33 length];
      v46 = 138543874;
      v47 = v31;
      v48 = 2112;
      v49 = v32;
      v50 = 2048;
      v51 = v34;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] groupResolvingKey: %lu", &v46, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v35 = [*(a1 + 32) doorLock];
    v36 = v35;
    if (v35)
    {
      if (!a2)
      {
        [v35 setAliroReaderConfigWithParams:v7 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
        goto LABEL_19;
      }

      v37 = *(a1 + 32);
      v38 = [objc_opt_class() aliroReaderConfigParamsFromParams:v7];
      [v36 appleSetAliroReaderConfigWithParams:v38 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = *(a1 + 32);
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [*(a1 + 48) UUID];
        v46 = 138543618;
        v47 = v42;
        v48 = 2112;
        v49 = v43;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v46, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v44 = *(a1 + 56);
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v44 + 16))(v44, v38);
    }

LABEL_19:
    goto LABEL_20;
  }

  (*(*(a1 + 56) + 16))();
LABEL_20:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)clearCredentialWithParams:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HMMTRDoorLockClusterAPIRouter_clearCredentialWithParams_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v12 completion:v14];
}

void __75__HMMTRDoorLockClusterAPIRouter_clearCredentialWithParams_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      if (!a2)
      {
        goto LABEL_7;
      }

      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = [*(a1 + 48) credential];
      v10 = [v9 credentialType];
      LODWORD(v8) = [v8 isCredentialTypeAliro:v10];

      if (!v8)
      {
LABEL_7:
        [v6 clearCredentialWithParams:*(a1 + 48) expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
LABEL_12:

        goto LABEL_13;
      }

      v11 = *(a1 + 32);
      v12 = [objc_opt_class() aliroClearCredentialParamsFromParams:*(a1 + 48) flow:*(a1 + 40)];
      [v6 appleClearAliroCredentialWithParams:v12 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 40) UUID];
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = *(a1 + 56);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v18 + 16))(v18, v12);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)getCredentialStatusWithParams:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMMTRDoorLockClusterAPIRouter_getCredentialStatusWithParams_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v12 completion:v14];
}

void __79__HMMTRDoorLockClusterAPIRouter_getCredentialStatusWithParams_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      if (!a2)
      {
        goto LABEL_7;
      }

      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = [*(a1 + 48) credential];
      v10 = [v9 credentialType];
      LODWORD(v8) = [v8 isCredentialTypeAliro:v10];

      if (!v8)
      {
LABEL_7:
        [v6 getCredentialStatusWithParams:*(a1 + 48) expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
LABEL_12:

        goto LABEL_13;
      }

      v11 = *(a1 + 32);
      v12 = [objc_opt_class() aliroGetCredentialParamsFromParams:*(a1 + 48) flow:*(a1 + 40)];
      [v6 appleGetAliroCredentialStatusWithParams:v12 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 40) UUID];
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = *(a1 + 56);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v18 + 16))(v18, 0, v12);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setCredentialWithParams:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__HMMTRDoorLockClusterAPIRouter_setCredentialWithParams_flow_completion___block_invoke;
  v14[3] = &unk_2786EF020;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v12 completion:v14];
}

void __73__HMMTRDoorLockClusterAPIRouter_setCredentialWithParams_flow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) doorLock];
    if (v6)
    {
      if (!a2)
      {
        goto LABEL_7;
      }

      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = [*(a1 + 48) credential];
      v10 = [v9 credentialType];
      LODWORD(v8) = [v8 isCredentialTypeAliro:v10];

      if (!v8)
      {
LABEL_7:
        [v6 setCredentialWithParams:*(a1 + 48) expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
LABEL_12:

        goto LABEL_13;
      }

      v11 = *(a1 + 32);
      v12 = [objc_opt_class() aliroSetCredentialParamsFromParams:*(a1 + 48) flow:*(a1 + 40)];
      [v6 appleSetAliroCredentialWithParams:v12 expectedValues:0 expectedValueInterval:0 completion:*(a1 + 56)];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 40) UUID];
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = *(a1 + 56);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v18 + 16))(v18, 0, v12);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeAliroBLEAdvertisingVersionWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroBLEAdvertisingVersionWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroBLEAdvertisingVersionWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroBLEAdvertisingVersionWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroBLEAdvertisingVersionWithParams:0];
      }
      v14 = ;
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v19 = 138543618;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__HMMTRDoorLockClusterAPIRouter_readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __102__HMMTRDoorLockClusterAPIRouter_readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroSupportedBLEUWBProtocolVersionsWithParams:0];
      }
      v14 = ;
      v15 = *(a1 + 32);
      v16 = [objc_opt_class() arrayOfDataFromRead:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v18 = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __116__HMMTRDoorLockClusterAPIRouter_readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __116__HMMTRDoorLockClusterAPIRouter_readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithParams:0];
      }
      v14 = ;
      v15 = *(a1 + 32);
      v16 = [objc_opt_class() arrayOfDataFromRead:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v18 = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)numberOfAliroDeviceKeyCredentialsSupportedWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroDeviceKeyCredentialsSupportedWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroDeviceKeyCredentialsSupportedWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleNumberOfAliroEndpointKeysSupportedWithParams:0];
      }

      else
      {
        [v6 readAttributeNumberOfAliroEndpointKeysSupportedWithParams:0];
      }
      v14 = ;
      v15 = [v14 objectForKey:@"value"];
      if (!v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [*(a1 + 40) UUID];
          v22 = 138543618;
          v23 = v19;
          v24 = 2112;
          v25 = v20;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of aliro device credentials supported, assuming 50 by default", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v15 = &unk_283EE8850;
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v22 = 138543618;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)numberOfAliroIssuerKeyCredentialsSupportedWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroIssuerKeyCredentialsSupportedWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __95__HMMTRDoorLockClusterAPIRouter_numberOfAliroIssuerKeyCredentialsSupportedWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithParams:0];
      }

      else
      {
        [v6 readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithParams:0];
      }
      v14 = ;
      v15 = [v14 objectForKey:@"value"];
      if (!v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [*(a1 + 40) UUID];
          v22 = 138543618;
          v23 = v19;
          v24 = 2112;
          v25 = v20;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of aliro issuer credentials supported, assuming 50 by default", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v15 = &unk_283EE8850;
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v22 = 138543618;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeAliroGroupResolvingKeyWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__HMMTRDoorLockClusterAPIRouter_readAttributeAliroGroupResolvingKeyWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __88__HMMTRDoorLockClusterAPIRouter_readAttributeAliroGroupResolvingKeyWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroGroupResolvingKeyWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroGroupResolvingKeyWithParams:0];
      }
      v14 = ;
      v15 = [HMMTRSyncClusterDoorLock dataOfReadValue:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v17 = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeAliroReaderGroupIdentifierWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderGroupIdentifierWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderGroupIdentifierWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroReaderGroupIdentifierWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroReaderGroupIdentifierWithParams:0];
      }
      v14 = ;
      v15 = [HMMTRSyncClusterDoorLock dataOfReadValue:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v17 = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeAliroReaderVerificationKeyWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderVerificationKeyWithFlow_completion___block_invoke;
  v10[3] = &unk_2786F0C38;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRDoorLockClusterAPIRouter *)self isCustomClusterAvailableWithFlow:v8 completion:v10];
}

void __92__HMMTRDoorLockClusterAPIRouter_readAttributeAliroReaderVerificationKeyWithFlow_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) doorLock];
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        [v6 readAttributeAppleAliroReaderVerificationKeyWithParams:0];
      }

      else
      {
        [v6 readAttributeAliroReaderVerificationKeyWithParams:0];
      }
      v14 = ;
      v15 = [HMMTRSyncClusterDoorLock dataOfReadValue:v14];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) UUID];
        v17 = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Door lock became nil", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (*(v13 + 16))(v13, 0, v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchAppleClusterFeaturesWithFlow:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 UUID];
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching apple cluster features", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = +[HMMTRDescriptorClusterManager sharedManager];
  v14 = [(HMMTRDoorLockClusterAPIRouter *)v9 device];
  v15 = [(HMMTRDoorLockClusterAPIRouter *)v9 queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__HMMTRDoorLockClusterAPIRouter_fetchAppleClusterFeaturesWithFlow_completion___block_invoke;
  v19[3] = &unk_2786F0F20;
  v19[4] = v9;
  v20 = v6;
  v21 = v7;
  v16 = v7;
  v17 = v6;
  [v13 endpointForClusterID:&unk_283EE8820 mtrDevice:v14 callbackQueue:v15 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __78__HMMTRDoorLockClusterAPIRouter_fetchAppleClusterFeaturesWithFlow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v42 = 138543874;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v46 = 2112;
      v47 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found Apple Lock Cluster on endpoint: %@", &v42, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) device];
    v13 = [v12 readAttributeWithEndpointID:v5 clusterID:&unk_283EE8820 attributeID:&unk_283EE8838 params:0];

    v14 = [HMMTRSyncClusterDoorLock numberFromAttributeDictionary:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        v42 = 138543874;
        v43 = v19;
        v44 = 2112;
        v45 = v20;
        v46 = 2112;
        v47 = v14;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] featureMap: %@", &v42, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = *(a1 + 32);
      v22 = [objc_opt_class() doorLockFeatureMapSupportsAppleCustomAliroProvisioning:v14];
      v23 = [v22 BOOLValue];

      v24 = *(a1 + 32);
      v25 = [objc_opt_class() doorLockFeatureMapSupportsAppleCustomAliroBLEUWB:v14];
      [v25 BOOLValue];

      v26 = [MEMORY[0x277CCABB0] numberWithBool:v23];
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:v26];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [*(a1 + 40) UUID];
        v42 = 138544130;
        v43 = v35;
        v44 = 2112;
        v45 = v36;
        v46 = 2112;
        v47 = v13;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find featureMap, which is required, on Apple custom lock cluster. values: %@, error: %@", &v42, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:0];
      v37 = *(a1 + 48);
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:{@"Did not find featureMap, which is required, on Apple custom lock cluster."}];
      (*(v37 + 16))(v37, 0, 0, v38);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    v30 = v29;
    if (v6)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [*(a1 + 40) UUID];
        v42 = 138543874;
        v43 = v31;
        v44 = 2112;
        v45 = v32;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error while looking for Apple Lock Cluster: %@", &v42, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v33 = *(a1 + 32);
      v34 = 0;
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [*(a1 + 40) UUID];
        v42 = 138543618;
        v43 = v39;
        v44 = 2112;
        v45 = v40;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find Apple Lock Cluster", &v42, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v33 = *(a1 + 32);
      v34 = MEMORY[0x277CBEC28];
    }

    [v33 setNsNumberIsCustomClusterAvailable:v34];
    (*(*(a1 + 48) + 16))();
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)isCustomClusterAvailableWithFlow:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRDoorLockClusterAPIRouter *)self nsNumberIsCustomClusterAvailable];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 UUID];
      v14 = [(HMMTRDoorLockClusterAPIRouter *)v10 nsNumberIsCustomClusterAvailable];
      [v14 BOOLValue];
      v15 = HMFBooleanToString();
      *buf = 138543874;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning cached value for isCustomClusterAvailable: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [(HMMTRDoorLockClusterAPIRouter *)v10 nsNumberIsCustomClusterAvailable];
    v7[2](v7, [v16 BOOLValue], 0);
  }

  else
  {
    v17 = +[HMMTRDescriptorClusterManager sharedManager];
    v18 = [(HMMTRDoorLockClusterAPIRouter *)self device];
    v19 = [(HMMTRDoorLockClusterAPIRouter *)self queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__HMMTRDoorLockClusterAPIRouter_isCustomClusterAvailableWithFlow_completion___block_invoke;
    v21[3] = &unk_2786F0F20;
    v21[4] = self;
    v22 = v6;
    v23 = v7;
    [v17 endpointForClusterID:&unk_283EE8820 mtrDevice:v18 callbackQueue:v19 completionHandler:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __77__HMMTRDoorLockClusterAPIRouter_isCustomClusterAvailableWithFlow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v40 = 138543874;
      v41 = v10;
      v42 = 2112;
      v43 = v11;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found Apple Lock Cluster on endpoint: %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) device];
    v13 = [v12 readAttributeWithEndpointID:v5 clusterID:&unk_283EE8820 attributeID:&unk_283EE8838 params:0];

    v14 = [HMMTRSyncClusterDoorLock numberFromAttributeDictionary:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        v40 = 138543874;
        v41 = v19;
        v42 = 2112;
        v43 = v20;
        v44 = 2112;
        v45 = v14;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] featureMap: %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = *(a1 + 32);
      v22 = [objc_opt_class() doorLockFeatureMapSupportsAppleCustomAliroProvisioning:v14];
      v23 = [v22 BOOLValue];

      v24 = [MEMORY[0x277CCABB0] numberWithBool:v23];
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:v24];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [*(a1 + 40) UUID];
        v40 = 138544130;
        v41 = v33;
        v42 = 2112;
        v43 = v34;
        v44 = 2112;
        v45 = v13;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find featureMap, which is required, on Apple custom lock cluster. values: %@, error: %@", &v40, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setNsNumberIsCustomClusterAvailable:0];
      v35 = *(a1 + 48);
      v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:{@"Did not find featureMap, which is required, on Apple custom lock cluster."}];
      (*(v35 + 16))(v35, 0, v36);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v6)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) UUID];
        v40 = 138543874;
        v41 = v29;
        v42 = 2112;
        v43 = v30;
        v44 = 2112;
        v45 = v6;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error while looking for Apple Lock Cluster: %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(a1 + 32);
      v32 = 0;
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [*(a1 + 40) UUID];
        v40 = 138543618;
        v41 = v37;
        v42 = 2112;
        v43 = v38;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find Apple Lock Cluster", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(a1 + 32);
      v32 = MEMORY[0x277CBEC28];
    }

    [v31 setNsNumberIsCustomClusterAvailable:v32];
    (*(*(a1 + 48) + 16))();
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (HMMTRDoorLockClusterAPIRouter)initWithDoorLock:(id)a3 device:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMMTRDoorLockClusterAPIRouter;
  v11 = [(HMMTRDoorLockClusterAPIRouter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_doorLock, v8);
    objc_storeStrong(&v12->_device, a4);
    objc_storeStrong(&v12->_queue, a5);
  }

  return v12;
}

+ (id)mergeAndRemoveDuplicatesFromArray:(id)a3 andArray:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v37 = [v6 array];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = v11;

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v14;
  v31 = v12;
  v47[0] = v12;
  v47[1] = v14;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v35 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v35)
  {
    v34 = *v43;
    do
    {
      v15 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v15;
        v16 = *(*(&v42 + 1) + 8 * v15);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v39;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              v23 = MEMORY[0x277CCACA8];
              v24 = [v22 credentialType];
              v25 = [v22 credentialIndex];
              v26 = [v23 stringWithFormat:@"%@_%@", v24, v25];

              if (([v9 containsObject:v26] & 1) == 0)
              {
                [v9 addObject:v26];
                [v37 addObject:v22];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v19);
        }

        v15 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v35);
  }

  v27 = [v37 copy];
  objc_autoreleasePoolPop(context);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)readerConfigParamsFromReaderConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 readerPrivateKey];
  [v4 setSigningKey:v5];

  v6 = [v3 readerPublicKeyExternalRepresentation];
  [v4 setVerificationKey:v6];

  v7 = [v3 readerGroupIdentifier];
  [v4 setGroupIdentifier:v7];

  v8 = [v3 groupResolvingKey];

  [v4 setGroupResolvingKey:v8];

  return v4;
}

+ (id)doorLockFeatureMapSupportsAppleCustomAliroBLEUWB:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 2}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)doorLockFeatureMapSupportsAppleCustomAliroProvisioning:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 1}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)aliroReaderConfigParamsFromParams:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 signingKey];
  [v4 setSigningKey:v5];

  v6 = [v3 verificationKey];
  [v4 setVerificationKey:v6];

  v7 = [v3 groupIdentifier];
  [v4 setGroupIdentifier:v7];

  v8 = [v3 groupResolvingKey];

  [v4 setGroupResolvingKey:v8];

  return v4;
}

+ (id)aliroClearCredentialParamsFromParams:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 credential];

  v10 = [a1 aliroCredentialFromCredential:v9 flow:v6];

  [v8 setCredential:v10];

  return v8;
}

+ (id)aliroGetCredentialParamsFromParams:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 credential];

  v10 = [a1 aliroCredentialFromCredential:v9 flow:v6];

  [v8 setCredential:v10];

  return v8;
}

+ (id)credentialTypeForAliroCredentialType:(unsigned __int8)a3 flow:(id)a4
{
  v5 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v5 == 3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 UUID];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = 3;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot convert AliroNonEvictableEndpointKey credential type: %ld to credential type", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v4 = &unk_283EE88B0;
  }

  else
  {
    if (v5 == 2)
    {
      v4 = &unk_283EE7A28;
    }

    else
    {
      if (v5 != 1)
      {
        goto LABEL_10;
      }

      v4 = &unk_283EE7A10;
    }

    v8 = v4;
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)aliroCredentialTypeForCredentialType:(id)a3 flow:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (HMFEqualObjects())
  {
    v8 = &unk_283EE8880;
  }

  else if (HMFEqualObjects())
  {
    v8 = &unk_283EE8898;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 UUID];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot convert credential type: %@ to an Apple Aliro custom cluster credential type", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = &unk_283EE88B0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)aliroCredentialFromCredential:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 credentialType];
  v10 = [a1 aliroCredentialTypeForCredentialType:v9 flow:v6];

  [v8 setCredentialType:v10];
  v11 = [v7 credentialIndex];

  [v8 setCredentialIndex:v11];

  return v8;
}

+ (id)aliroSetCredentialParamsFromParams:(id)a3 flow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 operationType];
  [v8 setOperationType:v9];

  v10 = [v7 userIndex];
  [v8 setUserIndex:v10];

  v11 = [v7 credential];
  v12 = [a1 aliroCredentialFromCredential:v11 flow:v6];

  [v8 setCredential:v12];
  v13 = [v7 credentialData];

  [v8 setCredentialData:v13];

  return v8;
}

+ (BOOL)isCredentialTypeAliro:(id)a3
{
  v3 = a3;
  if (HMFEqualObjects())
  {
    v4 = 1;
  }

  else
  {
    v4 = HMFEqualObjects();
  }

  return v4;
}

+ (id)arrayOfDataFromRead:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 na_map:&__block_literal_global_9662];

  return v6;
}

void *__53__HMMTRDoorLockClusterAPIRouter_arrayOfDataFromRead___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [HMMTRSyncClusterDoorLock valueFromDictionaryWithData:v4];

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

  return v6;
}

@end