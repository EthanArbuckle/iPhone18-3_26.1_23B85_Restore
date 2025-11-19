@interface HMDWalletPassLibrary
+ (id)logCategory;
- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)a3 serialNumber:(id)a4;
- (BOOL)removePassWithTypeIdentifier:(id)a3 serialNumber:(id)a4 flow:(id)a5;
- (HMDWalletPassLibrary)initWithWorkQueue:(id)a3;
- (HMDWalletPassLibraryDelegate)delegate;
- (NSSet)walletKeys;
- (id)createTemporaryPassDirectoryURL;
- (id)passUniqueIDOfWalletKeyWithTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (id)urlForWalletKeyWithTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (id)walletKeyWithTypeIdentifier:(id)a3 serialNumber:(id)a4 flow:(id)a5;
- (void)addPassAtURL:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)deleteKeyMaterialForSubCredentialId:(id)a3;
- (void)enableExpressWithAuthData:(id)a3 passTypeIdentifier:(id)a4 serialNumber:(id)a5 flow:(id)a6 completion:(id)a7;
- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)a3 completion:(id)a4;
- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)fetchHomeKeySupportedWithFlow:(id)a3 completion:(id)a4;
- (void)fetchIsExpressEnabledForPassWithTypeIdentifier:(id)a3 serialNumber:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)fetchTransactionKeyForPassWithTypeIdentifier:(id)a3 serialNumber:(id)a4 completion:(id)a5;
- (void)generateHomeKeyNFCInfoWithReaderPublicKey:(id)a3 readerIdentifier:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)handlePassLibraryDidChangeNotification:(id)a3;
- (void)start;
- (void)updatePassAtURL:(id)a3 flow:(id)a4 completion:(id)a5;
@end

@implementation HMDWalletPassLibrary

- (HMDWalletPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)deleteKeyMaterialForSubCredentialId:(id)a3
{
  v4 = a3;
  v5 = [(HMDWalletPassLibrary *)self passLibrary];
  [v5 deleteKeyMaterialForSubCredentialId:v4];
}

- (void)handlePassLibraryDidChangeNotification:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v4 = [v33 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D386C8]];

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

  v8 = [v7 na_filter:&__block_literal_global_65_153087];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [(HMDWalletPassLibrary *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_2;
        block[3] = &unk_2797359B0;
        block[4] = self;
        block[5] = v13;
        dispatch_async(v14, block);
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  v15 = [v33 userInfo];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D38738]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 na_filter:&__block_literal_global_68_153088];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v19;
  v20 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    v23 = *MEMORY[0x277D38748];
    v24 = *MEMORY[0x277D38700];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v34);
        }

        v26 = *(*(&v39 + 1) + 8 * j);
        v27 = [v26 hmf_stringForKey:v23];
        v28 = [v26 hmf_stringForKey:v24];
        v29 = v28;
        if (v27)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v31 = [(HMDWalletPassLibrary *)self workQueue];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_4;
          v36[3] = &unk_279734960;
          v36[4] = self;
          v37 = v27;
          v38 = v29;
          dispatch_async(v31, v36);
        }
      }

      v21 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v21);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) serialNumber];
  v4 = [*(a1 + 40) passTypeIdentifier];
  [v5 passLibrary:v2 didAddPassWithSerialNumber:v3 typeIdentifier:v4];
}

void __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 passLibrary:*(a1 + 32) didRemovePassWithSerialNumber:*(a1 + 40) typeIdentifier:*(a1 + 48)];
}

uint64_t __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

uint64_t __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (void)fetchTransactionKeyForPassWithTypeIdentifier:(id)a3 serialNumber:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(HMDWalletPassLibrary *)self passLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HMDWalletPassLibrary_fetchTransactionKeyForPassWithTypeIdentifier_serialNumber_completion___block_invoke;
  v14[3] = &unk_27972F998;
  v15 = v8;
  v16 = v9;
  v14[4] = self;
  v12 = v8;
  v13 = v9;
  [v11 fetchTransactionKeyForPassTypeIdentifier:v10 serialNumber:v12 completionHandler:v14];
}

void __93__HMDWalletPassLibrary_fetchTransactionKeyForPassWithTypeIdentifier_serialNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if ([v5 length] == 65)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_5:
    v7();
    goto LABEL_9;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    v16 = 138544130;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2048;
    v21 = [v5 length];
    v22 = 2048;
    v23 = 65;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch transaction key for pass with serial number: %@, received unexpected transaction key length: %lu expected: %lu", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *(a1 + 48);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v13 + 16))(v13, 0, v14);

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
}

- (id)createTemporaryPassDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = HMDCreateHomeKitDaemonCacheDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [v4 URLByAppendingPathComponent:v6];

  return v7;
}

- (void)generateHomeKeyNFCInfoWithReaderPublicKey:(id)a3 readerIdentifier:(id)a4 flow:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(HMDWalletPassLibrary *)self passLibrary];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__HMDWalletPassLibrary_generateHomeKeyNFCInfoWithReaderPublicKey_readerIdentifier_flow_completion___block_invoke;
  v18[3] = &unk_27972F970;
  v19 = v10;
  v20 = self;
  v21 = v11;
  v22 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v14 generateTransactionKeyWithReaderIdentifier:v17 readerPublicKey:v13 completion:v18];
}

void __99__HMDWalletPassLibrary_generateHomeKeyNFCInfoWithReaderPublicKey_readerIdentifier_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11 && v12 && v13 && v14 && *(a1 + 32))
  {
    if ([v14 length] == 65)
    {
      v16 = [HMDHomeWalletKeySecureElementInfo alloc];
      v17 = [*(a1 + 32) hmf_hexadecimalRepresentation];
      v18 = [(HMDHomeWalletKeySecureElementInfo *)v16 initWithDeviceCredentialKey:v14 applicationIdentifier:v12 subCredentialIdentifier:v13 secureElementIdentifier:v11 pairedReaderIdentifier:v17 paymentCredentialType:0];

      v19 = *(a1 + 56);
      v45 = v18;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      (*(v19 + 16))(v19, v20, 0);
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = *(a1 + 40);
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        [*(a1 + 48) UUID];
        v44 = v13;
        v37 = v12;
        v38 = v11;
        v40 = v39 = v15;
        *buf = 138544130;
        v47 = v36;
        v48 = 2112;
        v49 = v40;
        v50 = 2048;
        v51 = [v14 length];
        v52 = 2048;
        v53 = 65;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info, received unexpected transaction key length: %lu expected: %lu", buf, 0x2Au);

        v15 = v39;
        v11 = v38;
        v12 = v37;
        v13 = v44;
      }

      objc_autoreleasePoolPop(v33);
      v41 = *(a1 + 56);
      v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (*(v41 + 16))(v41, 0, v42);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v24 = v14;
      v25 = v13;
      v26 = v12;
      v27 = v11;
      v29 = v28 = v15;
      [*(a1 + 48) UUID];
      v30 = v43 = v21;
      v31 = *(a1 + 32);
      *buf = 138545154;
      v47 = v29;
      v48 = 2112;
      v49 = v30;
      v50 = 2112;
      v51 = v27;
      v52 = 2112;
      v53 = v26;
      v54 = 2112;
      v55 = v25;
      v56 = 2112;
      v57 = v24;
      v58 = 2112;
      v59 = v31;
      v60 = 2112;
      v61 = v28;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info because either secureElementIdentifier: %@ is nil or applicationIdentifier: %@ is nil or subCredentialIdentifier: %@ is nil or transactionKey: %@ is nil or readerIdentifier is nil: %@ error: %@", buf, 0x52u);

      v21 = v43;
      v15 = v28;
      v11 = v27;
      v12 = v26;
      v13 = v25;
      v14 = v24;
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 56) + 16))();
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)a3 flow:(id)a4 completion:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v9 = a5;
  v50 = 0;
  v45 = v8;
  v10 = [objc_alloc(MEMORY[0x277D37EE8]) initWithFileURL:v8 error:&v50];
  v44 = v50;
  if (v10)
  {
    [v10 setOwnsFileURL:1];
    v11 = [MEMORY[0x277D37F98] createWithValidatedFileDataAccessor:v10];
    v12 = [v11 paymentPass];

    if (v12)
    {
      v13 = [(HMDWalletPassLibrary *)self secureElementIdentifier];
      v14 = v13;
      if (v13)
      {
        v51 = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
        [v12 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v15];

        v16 = objc_alloc_init(MEMORY[0x277D380F0]);
        v17 = [objc_alloc(MEMORY[0x277D37E90]) initForPaymentPass:v12 withTechologyTest:&__block_literal_global_54_153109];
        if (v17)
        {
          v18 = objc_alloc(MEMORY[0x277D37E88]);
          [v12 secureElementPass];
          v19 = v43 = v12;
          v20 = [v18 initWithPassInformation:v17 forSecureElementPass:v19];

          v12 = v43;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __101__HMDWalletPassLibrary_fetchExpressEnablementConflictingPassDescriptionForPassAtURL_flow_completion___block_invoke_55;
          v47[3] = &unk_27972F948;
          v49 = v9;
          v47[4] = self;
          v48 = v46;
          [v16 conflictingExpressPassIdentifiersForPassConfiguration:v20 withCompletion:v47];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            v40 = [v46 UUID];
            *buf = 138543618;
            v53 = v39;
            v54 = 2112;
            v55 = v40;
            v41 = v40;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Express pass info is nil", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          (*(v9 + 2))(v9, 0, v20);
          v17 = 0;
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v46 UUID];
          *buf = 138543618;
          v53 = v34;
          v54 = 2112;
          v55 = v35;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, secure element identifier is nil", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v9 + 2))(v9, 0, v16);
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v46 UUID];
        *buf = 138543874;
        v53 = v29;
        v54 = 2112;
        v55 = v30;
        v56 = 2112;
        v57 = v8;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, cannot create payment pass at url: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v9 + 2))(v9, 0, v14);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v46 UUID];
      *buf = 138543874;
      v53 = v24;
      v54 = 2112;
      v55 = v25;
      v56 = 2112;
      v57 = v8;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, create data accessor for pass at url: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v9 + 2))(v9, 0, v12);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __101__HMDWalletPassLibrary_fetchExpressEnablementConflictingPassDescriptionForPassAtURL_flow_completion___block_invoke_55(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = [*(a1 + 32) passLibrary];
    v6 = [v5 passWithUniqueID:v4];

    if (v6)
    {
      v7 = [v6 localizedDescription];
      if (!v7)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [*(a1 + 40) UUID];
          v26 = 138543874;
          v27 = v21;
          v28 = 2112;
          v29 = v22;
          v30 = 2112;
          v31 = v4;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to look up for localized description for conflicting pass with identifier: %@", &v26, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = *(a1 + 48);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v23 + 16))(v23, 0, v24);

        v8 = 0;
        goto LABEL_13;
      }

      v8 = v7;
      v9 = *(*(a1 + 48) + 16);
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
        v26 = 138543874;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = v4;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to look up for express enablement conflicting pass with identifier: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 48);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v9 = *(v17 + 16);
    }

    v9();
LABEL_13:

    goto LABEL_14;
  }

  v10 = *(a1 + 48);
  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(v10 + 16))(v10, 0, v11);

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277D0F7B8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 untrackedPlaceholderFlow];
  [(HMDWalletPassLibrary *)self fetchExpressEnablementConflictingPassDescriptionForPassAtURL:v8 flow:v9 completion:v7];
}

- (id)passUniqueIDOfWalletKeyWithTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [v8 passWithPassTypeIdentifier:v6 serialNumber:v7];

  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v11)
    {
      v14 = [v10 uniqueID];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v22;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = objc_opt_class();
        v23 = v31;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Pass object is not of type payment pass %@:%@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find pass with type identifier: %@ and serial number: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)fetchIsExpressEnabledForPassWithTypeIdentifier:(id)a3 serialNumber:(id)a4 flow:(id)a5 completion:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDWalletPassLibrary *)self passLibrary];
  v15 = [v14 passWithPassTypeIdentifier:v10 serialNumber:v11];

  if (v15)
  {
    v45 = v10;
    v46 = v12;
    v16 = v15;
    objc_opt_class();
    v17 = objc_opt_isKindOfClass() & 1;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v17)
    {
      v20 = objc_alloc_init(MEMORY[0x277D380F0]);
      v21 = [v16 uniqueID];
      v22 = [v20 expressPassConfigurationWithPassUniqueIdentifier:v21];

      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v40 = [v46 UUID];
        [v22 isNFCExpressEnabled];
        HMFBooleanToString();
        v26 = v42 = v19;
        [v22 isUWBExpressEnabled];
        HMFBooleanToString();
        v27 = v43 = v23;
        *buf = 138544130;
        v48 = v41;
        v49 = 2112;
        v50 = v40;
        v51 = 2112;
        v52 = v26;
        v53 = 2112;
        v54 = v27;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found current express config with expressEnabled: %@, UWBEnabled: %@", buf, 0x2Au);

        v23 = v43;
        v19 = v42;
      }

      objc_autoreleasePoolPop(v23);
      v13[2](v13, [v22 isNFCExpressEnabled], 0);
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v44 = v33;
        v37 = [v46 UUID];
        *buf = 138544130;
        v48 = v36;
        v49 = 2112;
        v50 = v37;
        v51 = 2112;
        v52 = v16;
        v53 = 2112;
        v54 = objc_opt_class();
        v38 = v54;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);

        v33 = v44;
      }

      objc_autoreleasePoolPop(v33);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (v13)[2](v13, 0, v20);
    }

    v10 = v45;
    v12 = v46;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v12 UUID];
      *buf = 138544130;
      v48 = v31;
      v49 = 2112;
      v50 = v32;
      v51 = 2112;
      v52 = v10;
      v53 = 2112;
      v54 = v11;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v28);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v13)[2](v13, 0, v19);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)a3 serialNumber:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [v8 passWithPassTypeIdentifier:v6 serialNumber:v7];

  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v11)
    {
      v14 = objc_alloc_init(MEMORY[0x277D380F0]);
      v15 = [v10 uniqueID];
      v16 = [v14 isExpressModeEnabledForPassUniqueIdentifier:v15];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v24;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = objc_opt_class();
        v25 = v33;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Pass object is not of type payment pass %@:%@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v20;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find pass with type identifier: %@ and serial number: %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)enableExpressWithAuthData:(id)a3 passTypeIdentifier:(id)a4 serialNumber:(id)a5 flow:(id)a6 completion:(id)a7
{
  v63 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(HMDWalletPassLibrary *)self passLibrary];
  v17 = [v16 passWithPassTypeIdentifier:v12 serialNumber:v13];

  if (v17)
  {
    v49 = v12;
    v50 = v14;
    v48 = v13;
    v18 = v17;
    objc_opt_class();
    v19 = objc_opt_isKindOfClass() & 1;
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v19)
    {
      v22 = objc_alloc_init(MEMORY[0x277D380F0]);
      v23 = [v18 uniqueID];
      v24 = [v22 expressPassConfigurationWithPassUniqueIdentifier:v23];

      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v45 = v21;
        [v14 UUID];
        v29 = v46 = v25;
        [v24 isNFCExpressEnabled];
        v30 = HMFBooleanToString();
        [v24 isUWBExpressEnabled];
        HMFBooleanToString();
        v31 = v47 = v24;
        *buf = 138544130;
        v56 = v28;
        v57 = 2112;
        v58 = v29;
        v59 = 2112;
        v60 = v30;
        v61 = 2112;
        v62 = v31;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found current express config with expressEnabled: %@, UWBEnabled: %@", buf, 0x2Au);

        v25 = v46;
        v24 = v47;

        v21 = v45;
      }

      objc_autoreleasePoolPop(v25);
      v32 = [objc_alloc(MEMORY[0x277D37E88]) initForPaymentPass:v18 isNFCExpressEnabled:1 isUWBExpressEnabled:objc_msgSend(v24 withTechologyTest:{"isUWBExpressEnabled"), &__block_literal_global_153130}];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __98__HMDWalletPassLibrary_enableExpressWithAuthData_passTypeIdentifier_serialNumber_flow_completion___block_invoke_2;
      v52[3] = &unk_27972F920;
      v52[4] = v26;
      v14 = v50;
      v53 = v50;
      v54 = v15;
      [v22 setExpressWithPassConfiguration:v32 credential:v51 handler:v52];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [v50 UUID];
        *buf = 138544130;
        v56 = v41;
        v57 = 2112;
        v58 = v42;
        v59 = 2112;
        v60 = v18;
        v61 = 2112;
        v62 = objc_opt_class();
        v43 = v62;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v38);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v15 + 2))(v15, v22);
      v14 = v50;
    }

    v13 = v48;
    v12 = v49;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v14 UUID];
      *buf = 138544130;
      v56 = v36;
      v57 = 2112;
      v58 = v37;
      v59 = 2112;
      v60 = v12;
      v61 = 2112;
      v62 = v13;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v33);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v15 + 2))(v15, v21);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __98__HMDWalletPassLibrary_enableExpressWithAuthData_passTypeIdentifier_serialNumber_flow_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express config. Current state is: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v11 + 16))(v11, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchHomeKeySupportedWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = objc_alloc_init(MEMORY[0x277D37CF8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDWalletPassLibrary_fetchHomeKeySupportedWithFlow_completion___block_invoke;
  v12[3] = &unk_27972F8D8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v8 canAddSecureElementPassWithConfiguration:v9 completion:v12];
}

void __65__HMDWalletPassLibrary_fetchHomeKeySupportedWithFlow_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    v10 = HMFBooleanToString();
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet responded to canAddSecureElementPassWithConfiguration with canAdd: %@, error: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)removePassWithTypeIdentifier:(id)a3 serialNumber:(id)a4 flow:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDWalletPassLibrary *)self passLibrary];
  v12 = [v11 passWithPassTypeIdentifier:v8 serialNumber:v9];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v10 UUID];
      v24 = 138544386;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing pass with identifier: %@ and serial number: %@: %@", &v24, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [(HMDWalletPassLibrary *)v14 passLibrary];
    [v18 removePass:v12];

    v19 = [(HMDWalletPassLibrary *)v14 walletKeys];
    v20 = [v19 count] == 0;

    v21 = +[HMDHomeKeyDataRecorder sharedRecorder];
    [v21 recordRemovedWalletKeyWithSerialNumber:v9 noWalletKeysRemaining:v20];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

- (id)urlForWalletKeyWithTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [v8 passWithPassTypeIdentifier:v7 serialNumber:v6];

  v10 = [v9 passURL];

  return v10;
}

- (id)walletKeyWithTypeIdentifier:(id)a3 serialNumber:(id)a4 flow:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
  {
    v11 = [(HMDWalletPassLibrary *)self passLibrary];
    v12 = [v11 passWithPassTypeIdentifier:v8 serialNumber:v9];

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v10 UUID];
      v26 = 138544386;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found pass with identifier: %@ and serial number: %@: %@", &v26, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    if (v12)
    {
      v18 = [[HMDHomeWalletKey alloc] initWithPKPass:v12 flow:v10];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v10 UUID];
      v26 = 138544130;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Invalid parameter when looking up wallet key. typeIdentifier: %@, serialNumber: %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)updatePassAtURL:(id)a3 flow:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(HMDWalletPassLibrary *)self passLibrary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMDWalletPassLibrary_updatePassAtURL_flow_completion___block_invoke;
  v11[3] = &unk_279730A60;
  v12 = v7;
  v10 = v7;
  [v9 replaceUnsignedPassAtURL:v8 withCompletionHandler:v11];
}

void __56__HMDWalletPassLibrary_updatePassAtURL_flow_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v2 + 16))(v2, v5);
  }
}

- (void)addPassAtURL:(id)a3 flow:(id)a4 completion:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(HMDWalletPassLibrary *)self passLibrary];
  v23[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HMDWalletPassLibrary_addPassAtURL_flow_completion___block_invoke;
  v17[3] = &unk_27972F8B0;
  objc_copyWeak(&v21, &location);
  v13 = v9;
  v18 = v13;
  v14 = v8;
  v19 = v14;
  v15 = v10;
  v20 = v15;
  [v11 addUnsignedPassesAtURLs:v12 withCompletionHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

void __53__HMDWalletPassLibrary_addPassAtURL_flow_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) UUID];
    v10 = *(a1 + 40);
    v14 = 138544130;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2048;
    v21 = a2;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addUnsignedPassesAtURLs: %@, finished with status: %ld", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *(a1 + 48);
  if (a2)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v11, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D386D8];
  v4 = [(HMDWalletPassLibrary *)self passLibrary];
  [v5 addObserver:self selector:sel_handlePassLibraryDidChangeNotification_ name:v3 object:v4];
}

- (NSSet)walletKeys
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDWalletPassLibrary *)self passLibrary];
  v5 = [v4 passes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 secureElementPass];
        v13 = [v12 isHomeKeyPass];

        if (v13)
        {
          v14 = [HMDHomeWalletKey alloc];
          v15 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
          v16 = [(HMDHomeWalletKey *)v14 initWithPKPass:v11 flow:v15];

          [v3 addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = [v3 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMDWalletPassLibrary)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDWalletPassLibrary;
  v6 = [(HMDWalletPassLibrary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, a3);
    v8 = [MEMORY[0x277D37FC0] sharedInstance];
    passLibrary = v7->_passLibrary;
    v7->_passLibrary = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t33_153153 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33_153153, &__block_literal_global_72);
  }

  v3 = logCategory__hmf_once_v34_153154;

  return v3;
}

uint64_t __35__HMDWalletPassLibrary_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v34_153154;
  logCategory__hmf_once_v34_153154 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end