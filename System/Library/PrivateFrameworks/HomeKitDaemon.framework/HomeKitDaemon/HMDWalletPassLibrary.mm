@interface HMDWalletPassLibrary
+ (id)logCategory;
- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)identifier serialNumber:(id)number;
- (BOOL)removePassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow;
- (HMDWalletPassLibrary)initWithWorkQueue:(id)queue;
- (HMDWalletPassLibraryDelegate)delegate;
- (NSSet)walletKeys;
- (id)createTemporaryPassDirectoryURL;
- (id)nfcInfoFromPaymentApplication:(id)application readerKey:(id)key flow:(id)flow;
- (id)passUniqueIDOfWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number;
- (id)urlForWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number;
- (id)walletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow;
- (void)addPassAtURL:(id)l flow:(id)flow completion:(id)completion;
- (void)deleteKeyMaterialForSubCredentialId:(id)id;
- (void)enableExpressWithAuthData:(id)data passTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion;
- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l completion:(id)completion;
- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l flow:(id)flow completion:(id)completion;
- (void)fetchHomeKeySupportedWithFlow:(id)flow completion:(id)completion;
- (void)fetchIsExpressEnabledForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion;
- (void)fetchTransactionKeyForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number completion:(id)completion;
- (void)generateHomeKeyNFCInfoWithReaderPublicKey:(id)key readerIdentifier:(id)identifier flow:(id)flow completion:(id)completion;
- (void)handlePassLibraryDidChangeNotification:(id)notification;
- (void)start;
- (void)updatePassAtURL:(id)l flow:(id)flow completion:(id)completion;
@end

@implementation HMDWalletPassLibrary

- (HMDWalletPassLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)deleteKeyMaterialForSubCredentialId:(id)id
{
  idCopy = id;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  [passLibrary deleteKeyMaterialForSubCredentialId:idCopy];
}

- (void)handlePassLibraryDidChangeNotification:(id)notification
{
  v50 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D386C8]];

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

  v8 = [v7 na_filter:&__block_literal_global_69];

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
        workQueue = [(HMDWalletPassLibrary *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_2;
        block[3] = &unk_27868A750;
        block[4] = self;
        block[5] = v13;
        dispatch_async(workQueue, block);
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  userInfo2 = [notificationCopy userInfo];
  v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D38738]];

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

  v19 = [v18 na_filter:&__block_literal_global_72];

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
          workQueue2 = [(HMDWalletPassLibrary *)self workQueue];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __63__HMDWalletPassLibrary_handlePassLibraryDidChangeNotification___block_invoke_4;
          v36[3] = &unk_27868A010;
          v36[4] = self;
          v37 = v27;
          v38 = v29;
          dispatch_async(workQueue2, v36);
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

- (void)fetchTransactionKeyForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  identifierCopy = identifier;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HMDWalletPassLibrary_fetchTransactionKeyForPassWithTypeIdentifier_serialNumber_completion___block_invoke;
  v14[3] = &unk_278682098;
  v15 = numberCopy;
  v16 = completionCopy;
  v14[4] = self;
  v12 = numberCopy;
  v13 = completionCopy;
  [passLibrary fetchTransactionKeyForPassTypeIdentifier:identifierCopy serialNumber:v12 completionHandler:v14];
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch transaction key for pass with serial number: %@, received unexpected transaction key length: %lu expected: %lu", &v16, 0x2Au);
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v4 URLByAppendingPathComponent:uUIDString];

  return v7;
}

- (id)nfcInfoFromPaymentApplication:(id)application readerKey:(id)key flow:(id)flow
{
  v62 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  keyCopy = key;
  flowCopy = flow;
  secureElementIdentifier = [applicationCopy secureElementIdentifier];
  applicationIdentifier = [applicationCopy applicationIdentifier];
  subcredentials = [applicationCopy subcredentials];
  anyObject = [subcredentials anyObject];
  transactionKey = [anyObject transactionKey];

  subcredentials2 = [applicationCopy subcredentials];
  anyObject2 = [subcredentials2 anyObject];
  identifier = [anyObject2 identifier];

  v17 = +[HMDHomeWalletKeySecureElementInfo hmdPaymentTypeFromPKPaymentType:flow:](HMDHomeWalletKeySecureElementInfo, "hmdPaymentTypeFromPKPaymentType:flow:", [applicationCopy paymentType], flowCopy);
  if ([applicationCopy paymentType] == 1003)
  {
    identifier2 = [keyCopy identifier];
  }

  else
  {
    [keyCopy publicKey];
    v19 = secureElementIdentifier;
    v20 = flowCopy;
    v22 = v21 = keyCopy;
    identifier2 = [HMDNIST256Utilities identifier16BytesForKey:v22];

    keyCopy = v21;
    flowCopy = v20;
    secureElementIdentifier = v19;
  }

  v23 = applicationIdentifier;
  if (secureElementIdentifier && applicationIdentifier && identifier && transactionKey && identifier2)
  {
    if ([transactionKey length] == 65)
    {
      v24 = [HMDHomeWalletKeySecureElementInfo alloc];
      [identifier2 hmf_hexadecimalRepresentation];
      v26 = v25 = keyCopy;
      v27 = [(HMDHomeWalletKeySecureElementInfo *)v24 initWithDeviceCredentialKey:transactionKey applicationIdentifier:v23 subCredentialIdentifier:identifier secureElementIdentifier:secureElementIdentifier pairedReaderIdentifier:v26 paymentCredentialType:v17];

      keyCopy = v25;
    }

    else
    {
      v34 = secureElementIdentifier;
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v38 = v43 = v35;
        [flowCopy UUID];
        v39 = v46 = keyCopy;
        *buf = 138544130;
        v49 = v38;
        v50 = 2112;
        v51 = v39;
        v52 = 2048;
        v53 = [transactionKey length];
        v54 = 2048;
        v55 = 65;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info, received unexpected transaction key length: %lu expected: %lu", buf, 0x2Au);

        keyCopy = v46;
        v35 = v43;
      }

      objc_autoreleasePoolPop(v35);
      v27 = 0;
      secureElementIdentifier = v34;
    }
  }

  else
  {
    v28 = secureElementIdentifier;
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v32 = v45 = keyCopy;
      [flowCopy UUID];
      v33 = v42 = v29;
      *buf = 138544898;
      v49 = v32;
      v50 = 2112;
      v51 = v33;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v23;
      v56 = 2112;
      v57 = identifier;
      v58 = 2112;
      v59 = transactionKey;
      v60 = 2112;
      v61 = identifier2;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info because either secureElementIdentifier: %@ is nil or applicationIdentifier: %@ is nil or subCredentialIdentifier: %@ is nil or transactionKey: %@ is nil or readerIdentifier is nil: %@", buf, 0x48u);

      v29 = v42;
      keyCopy = v45;
    }

    objc_autoreleasePoolPop(v29);
    v27 = 0;
    secureElementIdentifier = v28;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)generateHomeKeyNFCInfoWithReaderPublicKey:(id)key readerIdentifier:(id)identifier flow:(id)flow completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  identifierCopy = identifier;
  flowCopy = flow;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v30 = v17;
    v31 = 2112;
    v32 = uUID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called generateHomeKeyNFCInfo in old pass library", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__HMDWalletPassLibrary_generateHomeKeyNFCInfoWithReaderPublicKey_readerIdentifier_flow_completion___block_invoke;
  v24[3] = &unk_278682070;
  v25 = identifierCopy;
  v26 = selfCopy;
  v27 = flowCopy;
  v28 = completionCopy;
  v20 = completionCopy;
  v21 = flowCopy;
  v22 = identifierCopy;
  [passLibrary generateTransactionKeyWithReaderIdentifier:v22 readerPublicKey:keyCopy completion:v24];

  v23 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info, received unexpected transaction key length: %lu expected: %lu", buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate home key nfc info because either secureElementIdentifier: %@ is nil or applicationIdentifier: %@ is nil or subCredentialIdentifier: %@ is nil or transactionKey: %@ is nil or readerIdentifier is nil: %@ error: %@", buf, 0x52u);

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

- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l flow:(id)flow completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  v50 = 0;
  v45 = lCopy;
  v10 = [objc_alloc(MEMORY[0x277D37EE8]) initWithFileURL:lCopy error:&v50];
  v44 = v50;
  if (v10)
  {
    [v10 setOwnsFileURL:1];
    v11 = [MEMORY[0x277D37F98] createWithValidatedFileDataAccessor:v10];
    paymentPass = [v11 paymentPass];

    if (paymentPass)
    {
      secureElementIdentifier = [(HMDWalletPassLibrary *)self secureElementIdentifier];
      v14 = secureElementIdentifier;
      if (secureElementIdentifier)
      {
        v51 = secureElementIdentifier;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
        [paymentPass updateDevicePaymentApplicationsWithSecureElementIdentifiers:v15];

        v16 = objc_alloc_init(MEMORY[0x277D380F0]);
        v17 = [objc_alloc(MEMORY[0x277D37E90]) initForPaymentPass:paymentPass withTechologyTest:&__block_literal_global_57_228159];
        if (v17)
        {
          v18 = objc_alloc(MEMORY[0x277D37E88]);
          [paymentPass secureElementPass];
          v19 = v43 = paymentPass;
          v20 = [v18 initWithPassInformation:v17 forSecureElementPass:v19];

          paymentPass = v43;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __101__HMDWalletPassLibrary_fetchExpressEnablementConflictingPassDescriptionForPassAtURL_flow_completion___block_invoke_58;
          v47[3] = &unk_278687C70;
          v49 = completionCopy;
          v47[4] = self;
          v48 = flowCopy;
          [v16 conflictingExpressPassIdentifiersForPassConfiguration:v20 withCompletion:v47];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          selfCopy = self;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            uUID = [flowCopy UUID];
            *buf = 138543618;
            v53 = v39;
            v54 = 2112;
            v55 = uUID;
            v41 = uUID;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Express pass info is nil", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          (*(completionCopy + 2))(completionCopy, 0, v20);
          v17 = 0;
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          uUID2 = [flowCopy UUID];
          *buf = 138543618;
          v53 = v34;
          v54 = 2112;
          v55 = uUID2;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, secure element identifier is nil", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(completionCopy + 2))(completionCopy, 0, v16);
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543874;
        v53 = v29;
        v54 = 2112;
        v55 = uUID3;
        v56 = 2112;
        v57 = lCopy;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, cannot create payment pass at url: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543874;
      v53 = v24;
      v54 = 2112;
      v55 = uUID4;
      v56 = 2112;
      v57 = lCopy;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflict, create data accessor for pass at url: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    paymentPass = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, paymentPass);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __101__HMDWalletPassLibrary_fetchExpressEnablementConflictingPassDescriptionForPassAtURL_flow_completion___block_invoke_58(uint64_t a1, void *a2)
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
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to look up for localized description for conflicting pass with identifier: %@", &v26, 0x20u);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to look up for express enablement conflicting pass with identifier: %@", &v26, 0x20u);
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

- (void)fetchExpressEnablementConflictingPassDescriptionForPassAtURL:(id)l completion:(id)completion
{
  v6 = MEMORY[0x277D0F7B8];
  completionCopy = completion;
  lCopy = l;
  untrackedPlaceholderFlow = [v6 untrackedPlaceholderFlow];
  [(HMDWalletPassLibrary *)self fetchExpressEnablementConflictingPassDescriptionForPassAtURL:lCopy flow:untrackedPlaceholderFlow completion:completionCopy];
}

- (id)passUniqueIDOfWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

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
      uniqueID = [v10 uniqueID];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Pass object is not of type payment pass %@:%@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      uniqueID = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = identifierCopy;
      v30 = 2112;
      v31 = numberCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find pass with type identifier: %@ and serial number: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    uniqueID = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return uniqueID;
}

- (void)fetchIsExpressEnabledForPassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v15 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v15)
  {
    v45 = identifierCopy;
    v46 = flowCopy;
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
      uniqueID = [v16 uniqueID];
      v22 = [v20 expressPassConfigurationWithPassUniqueIdentifier:uniqueID];

      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v43 = numberCopy;
        uUID = [v46 UUID];
        [v22 isNFCExpressEnabled];
        HMFBooleanToString();
        v27 = v42 = v19;
        [v22 isUWBExpressEnabled];
        v28 = HMFBooleanToString();
        *buf = 138544130;
        v48 = v26;
        v49 = 2112;
        v50 = uUID;
        v51 = 2112;
        v52 = v27;
        v53 = 2112;
        v54 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found current express config with expressEnabled: %@, UWBEnabled: %@", buf, 0x2Au);

        v19 = v42;
        numberCopy = v43;
      }

      objc_autoreleasePoolPop(v23);
      completionCopy[2](completionCopy, [v22 isNFCExpressEnabled], objc_msgSend(v22, "isUWBExpressEnabled"), 0);
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v37 = v44 = v34;
        uUID2 = [v46 UUID];
        *buf = 138544130;
        v48 = v37;
        v49 = 2112;
        v50 = uUID2;
        v51 = 2112;
        v52 = v16;
        v53 = 2112;
        v54 = objc_opt_class();
        v39 = v54;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);

        v34 = v44;
      }

      objc_autoreleasePoolPop(v34);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (completionCopy)[2](completionCopy, 0, 0, v20);
    }

    identifierCopy = v45;
    flowCopy = v46;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138544130;
      v48 = v32;
      v49 = 2112;
      v50 = uUID3;
      v51 = 2112;
      v52 = identifierCopy;
      v53 = 2112;
      v54 = numberCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (completionCopy)[2](completionCopy, 0, 0, v19);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExpressModeEnabledForPassUniqueIdentifier:(id)identifier serialNumber:(id)number
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

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
      uniqueID = [v10 uniqueID];
      v16 = [v14 isExpressModeEnabledForPassUniqueIdentifier:uniqueID];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Pass object is not of type payment pass %@:%@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v20;
      v30 = 2112;
      v31 = identifierCopy;
      v32 = 2112;
      v33 = numberCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find pass with type identifier: %@ and serial number: %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

void __130__HMDWalletPassLibrary_setExpressSettingsWithAuthData_enableUWB_enableNFCExpress_passTypeIdentifier_serialNumber_flow_completion___block_invoke_52(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully set express settings for home key", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express config. Current state is: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)enableExpressWithAuthData:(id)data passTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow completion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v17 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v17)
  {
    v49 = identifierCopy;
    v50 = flowCopy;
    v48 = numberCopy;
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
      uniqueID = [v18 uniqueID];
      v24 = [v22 expressPassConfigurationWithPassUniqueIdentifier:uniqueID];

      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v45 = v21;
        [flowCopy UUID];
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
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found current express config with expressEnabled: %@, UWBEnabled: %@", buf, 0x2Au);

        v25 = v46;
        v24 = v47;

        v21 = v45;
      }

      objc_autoreleasePoolPop(v25);
      v32 = [objc_alloc(MEMORY[0x277D37E88]) initForPaymentPass:v18 isNFCExpressEnabled:1 isUWBExpressEnabled:objc_msgSend(v24 withTechologyTest:{"isUWBExpressEnabled"), &__block_literal_global_228188}];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __98__HMDWalletPassLibrary_enableExpressWithAuthData_passTypeIdentifier_serialNumber_flow_completion___block_invoke_2;
      v52[3] = &unk_278682048;
      v52[4] = selfCopy;
      flowCopy = v50;
      v53 = v50;
      v54 = completionCopy;
      [v22 setExpressWithPassConfiguration:v32 credential:dataCopy handler:v52];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        uUID = [v50 UUID];
        *buf = 138544130;
        v56 = v41;
        v57 = 2112;
        v58 = uUID;
        v59 = 2112;
        v60 = v18;
        v61 = 2112;
        v62 = objc_opt_class();
        v43 = v62;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Pass object is not of type payment pass %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v38);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, v22);
      flowCopy = v50;
    }

    numberCopy = v48;
    identifierCopy = v49;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138544130;
      v56 = v36;
      v57 = 2112;
      v58 = uUID2;
      v59 = 2112;
      v60 = identifierCopy;
      v61 = 2112;
      v62 = numberCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to find pass with type identifier: %@ and serial number: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v33);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, v21);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express config. Current state is: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v11 + 16))(v11, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchHomeKeySupportedWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = objc_alloc_init(MEMORY[0x277D37CF8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDWalletPassLibrary_fetchHomeKeySupportedWithFlow_completion___block_invoke;
  v12[3] = &unk_278682000;
  v12[4] = self;
  v13 = flowCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = flowCopy;
  [passLibrary canAddSecureElementPassWithConfiguration:v9 completion:v12];
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet responded to canAddSecureElementPassWithConfiguration with canAdd: %@, error: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)removePassWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v29 = 138543618;
    v30 = v14;
    v31 = 2112;
    v32 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called removePass in old pass library", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v17 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v29 = 138544386;
      v30 = v21;
      v31 = 2112;
      v32 = uUID2;
      v33 = 2112;
      v34 = identifierCopy;
      v35 = 2112;
      v36 = numberCopy;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing pass with identifier: %@ and serial number: %@: %@", &v29, 0x34u);
    }

    objc_autoreleasePoolPop(v18);
    passLibrary2 = [(HMDWalletPassLibrary *)v19 passLibrary];
    [passLibrary2 removePass:v17];

    walletKeys = [(HMDWalletPassLibrary *)v19 walletKeys];
    v25 = [walletKeys count] == 0;

    v26 = +[HMDHomeKeyDataRecorder sharedRecorder];
    [v26 recordRemovedWalletKeyWithSerialNumber:numberCopy noWalletKeysRemaining:v25];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17 != 0;
}

- (id)urlForWalletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number
{
  numberCopy = number;
  identifierCopy = identifier;
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  v9 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

  passURL = [v9 passURL];

  return passURL;
}

- (id)walletKeyWithTypeIdentifier:(id)identifier serialNumber:(id)number flow:(id)flow
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;
  if (identifierCopy && numberCopy)
  {
    passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
    v12 = [passLibrary passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v26 = 138544386;
      v27 = v16;
      v28 = 2112;
      v29 = uUID;
      v30 = 2112;
      v31 = identifierCopy;
      v32 = 2112;
      v33 = numberCopy;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found pass with identifier: %@ and serial number: %@: %@", &v26, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    if (v12)
    {
      v18 = [[HMDHomeWalletKey alloc] initWithPKPass:v12 flow:flowCopy];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v26 = 138544130;
      v27 = v22;
      v28 = 2112;
      v29 = uUID2;
      v30 = 2112;
      v31 = identifierCopy;
      v32 = 2112;
      v33 = numberCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Invalid parameter when looking up wallet key. typeIdentifier: %@, serialNumber: %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)updatePassAtURL:(id)l flow:(id)flow completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called updatePass in old pass library", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HMDWalletPassLibrary_updatePassAtURL_flow_completion___block_invoke;
  v19[3] = &unk_278683B50;
  v20 = completionCopy;
  v17 = completionCopy;
  [passLibrary replaceUnsignedPassAtURL:lCopy withCompletionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
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

- (void)addPassAtURL:(id)l flow:(id)flow completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v29 = v14;
    v30 = 2112;
    v31 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] WalletV2Error: Called addPass in old pass library", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, selfCopy);
  passLibrary = [(HMDWalletPassLibrary *)selfCopy passLibrary];
  v27 = lCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__HMDWalletPassLibrary_addPassAtURL_flow_completion___block_invoke;
  v22[3] = &unk_278681FD8;
  objc_copyWeak(&v26, buf);
  v18 = flowCopy;
  v23 = v18;
  v19 = lCopy;
  v24 = v19;
  v20 = completionCopy;
  v25 = v20;
  [passLibrary addUnsignedPassesAtURLs:v17 withCompletionHandler:v22];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addUnsignedPassesAtURLs: %@, finished with status: %ld", &v14, 0x2Au);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D386D8];
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  [defaultCenter addObserver:self selector:sel_handlePassLibraryDidChangeNotification_ name:v3 object:passLibrary];
}

- (NSSet)walletKeys
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  passLibrary = [(HMDWalletPassLibrary *)self passLibrary];
  passes = [passLibrary passes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = passes;
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
        secureElementPass = [v11 secureElementPass];
        isHomeKeyPass = [secureElementPass isHomeKeyPass];

        if (isHomeKeyPass)
        {
          v14 = [HMDHomeWalletKey alloc];
          untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
          v16 = [(HMDHomeWalletKey *)v14 initWithPKPass:v11 flow:untrackedPlaceholderFlow];

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

- (HMDWalletPassLibrary)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDWalletPassLibrary;
  v6 = [(HMDWalletPassLibrary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
    passLibrary = v7->_passLibrary;
    v7->_passLibrary = mEMORY[0x277D37FC0];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t45_228213 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45_228213, &__block_literal_global_76_228214);
  }

  v3 = logCategory__hmf_once_v46_228215;

  return v3;
}

void __35__HMDWalletPassLibrary_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v46_228215;
  logCategory__hmf_once_v46_228215 = v1;
}

@end