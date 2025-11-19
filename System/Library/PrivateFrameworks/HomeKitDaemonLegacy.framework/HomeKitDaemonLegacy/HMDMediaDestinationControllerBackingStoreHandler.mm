@interface HMDMediaDestinationControllerBackingStoreHandler
+ (id)backingStoreObjectForData:(id)a3;
+ (id)logCategory;
- (HMDMediaDestinationControllerBackingStoreHandler)initWithData:(id)a3 backingStore:(id)a4 metricsEventDispatcher:(id)a5 delegate:(id)a6;
- (HMDMediaDestinationControllerBackingStoreHandlerDelegate)delegate;
- (HMMediaDestinationControllerData)data;
- (id)logIdentifier;
- (void)mergeData:(id)a3;
- (void)migrateWithCurrentCloudRecord:(id)a3 home:(id)a4 cloudZone:(id)a5 migrationQueue:(id)a6 completion:(id)a7;
- (void)migrateWithHome:(id)a3 cloudZone:(id)a4 migrationQueue:(id)a5 completion:(id)a6;
- (void)notifyDidUpdateAvailableDestinationIdentifiers:(id)a3;
- (void)notifyDidUpdateDestinationIdentifier:(id)a3;
- (void)recoverDueToInvalidRecordInCloudWithHome:(id)a3 migrationQueue:(id)a4 completion:(id)a5;
- (void)recoverDueToNoRecordInCloudWithHome:(id)a3 migrationQueue:(id)a4 completion:(id)a5;
- (void)removeControllerWithCompletion:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)transactionObjectUpdatedAvailableDestinationIdentifiers:(id)a3 message:(id)a4;
- (void)transactionObjectUpdatedDestinationIdentifier:(id)a3 message:(id)a4;
- (void)transactionObjectUpdatedSupportedOptions:(unint64_t)a3 message:(id)a4;
- (void)updateAvailableDestinationIdentifiers:(id)a3;
- (void)updateAvailableDestinationIdentifiers:(id)a3 completion:(id)a4;
- (void)updateDestinationIdentifier:(id)a3;
- (void)updateDestinationIdentifier:(id)a3 completion:(id)a4;
- (void)updateSupportedOptions:(unint64_t)a3;
- (void)updateSupportedOptions:(unint64_t)a3 completion:(id)a4;
@end

@implementation HMDMediaDestinationControllerBackingStoreHandler

- (HMDMediaDestinationControllerBackingStoreHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDBackingStoreHandler *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove unknown child with model object: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
  [v7 respondWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdatedSupportedOptions:(unint64_t)a3 message:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  v8 = [v7 supportedOptions];

  if (v8 != a3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMMediaDestinationControllerSupportOptionsAsString();
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Transaction updated supported options: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDMediaDestinationControllerBackingStoreHandler *)v10 updateSupportedOptions:a3];
    v14 = [v6 transactionResult];
    [v14 markChanged];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdatedAvailableDestinationIdentifiers:(id)a3 message:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  v9 = [v8 availableDestinationIdentifiers];

  v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v12 = [v10 isEqualToSet:v11];

  if ((v12 & 1) == 0)
  {
    [(HMDMediaDestinationControllerBackingStoreHandler *)self updateAvailableDestinationIdentifiers:v6];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Transaction updated available destination identifiers: %@ to identifiers: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v7 transactionResult];
    [v17 markChanged];

    v18 = [v7 transactionResult];
    [v18 markSaveToAssistant];

    [(HMDMediaDestinationControllerBackingStoreHandler *)v14 notifyDidUpdateAvailableDestinationIdentifiers:v6];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdatedDestinationIdentifier:(id)a3 message:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  v9 = [v8 destinationIdentifier];

  if ((HMFEqualObjects() & 1) == 0)
  {
    [(HMDMediaDestinationControllerBackingStoreHandler *)self updateDestinationIdentifier:v6];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Transaction updated destination identifier: %@ to destination identifier: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v7 transactionResult];
    [v14 markChanged];

    v15 = [v7 transactionResult];
    [v15 markSaveToAssistant];

    v16 = [(HMDMediaDestinationControllerBackingStoreHandler *)v11 metricsEventDispatcher];
    [v16 submitTransactionUpdatedDestinationEventWithDestinationIdentifier:v6 existingDestinationIdentifier:v9];

    [(HMDMediaDestinationControllerBackingStoreHandler *)v11 notifyDidUpdateDestinationIdentifier:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v52 = 138543618;
    v53 = v14;
    v54 = 2112;
    v55 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating media destination controller using transaction object: %@", &v52, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (!isFeatureHomeTheaterQFAEnabledForTests || ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v19 = v9;
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
      v22 = [v21 uuid];
      v23 = [(HMDBackingStoreHandler *)v12 identifier];
      v24 = [v22 isEqual:v23];

      if (v24)
      {
        v25 = [v8 objectChangeType];
        if (v25 == 1)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = v12;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            v52 = 138543362;
            v53 = v29;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly processing destination controller add after one already exists", &v52, 0xCu);
          }

          objc_autoreleasePoolPop(v26);
        }

        v30 = [v21 setProperties];
        if ([v30 containsObject:@"destinationModelIdentifier"])
        {
          v31 = [v21 destinationModelIdentifier];
          [(HMDMediaDestinationControllerBackingStoreHandler *)v12 transactionObjectUpdatedDestinationIdentifier:v31 message:v10];
        }

        if ([v30 containsObject:@"availableDestinationModelIdentifierStrings"])
        {
          v32 = [v21 availableDestinationModelIdentifiers];
          [(HMDMediaDestinationControllerBackingStoreHandler *)v12 transactionObjectUpdatedAvailableDestinationIdentifiers:v32 message:v10];
        }

        if ([v30 containsObject:@"supportedOptions"])
        {
          v33 = [v21 supportedOptions];
          -[HMDMediaDestinationControllerBackingStoreHandler transactionObjectUpdatedSupportedOptions:message:](v12, "transactionObjectUpdatedSupportedOptions:message:", [v33 unsignedIntegerValue], v10);
        }

        if (v25 == 1)
        {
          v34 = [(HMDMediaDestinationControllerBackingStoreHandler *)v12 delegate];
          v35 = objc_autoreleasePoolPush();
          v36 = v12;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            v52 = 138543874;
            v53 = v38;
            v54 = 2112;
            v55 = v21;
            v56 = 2112;
            v57 = v34;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Notifying of unexpected model add: %@ delegate: %@", &v52, 0x20u);
          }

          objc_autoreleasePoolPop(v35);
          [v34 mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:v36];
        }

        [v10 respondWithSuccess];
        goto LABEL_35;
      }

      v46 = objc_autoreleasePoolPush();
      v47 = v12;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        v50 = [v21 uuid];
        v52 = 138543618;
        v53 = v49;
        v54 = 2112;
        v55 = v50;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Received unknown media destination controller model with identifier: %@", &v52, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
      v30 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [v10 respondWithError:v30];
      v43 = [(HMDMediaDestinationControllerBackingStoreHandler *)v47 metricsEventDispatcher];
      v44 = v43;
      v45 = 1;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v12;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v52 = 138543618;
        v53 = v42;
        v54 = 2112;
        v55 = v8;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination controller model from new model object: %@", &v52, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v30 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      [v10 respondWithError:v30];
      v43 = [(HMDMediaDestinationControllerBackingStoreHandler *)v40 metricsEventDispatcher];
      v44 = v43;
      v45 = 7;
    }

    [v43 submitFailureEventWithEventErrorCode:v45 error:v30];

LABEL_35:
    goto LABEL_36;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v12;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v52 = 138543362;
    v53 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping due to Home Theater QFA enabled", &v52, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_36:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidUpdateAvailableDestinationIdentifiers:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationControllerBackingStoreHandler *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated available destination identifiers: %@ delegate: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [v5 mediaDestinationControllerBackingStoreHandler:v7 didUpdateAvailableDestinationIdentifiers:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidUpdateDestinationIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationControllerBackingStoreHandler *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated destination identifier: %@ delegate: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [v5 mediaDestinationControllerBackingStoreHandler:v7 didUpdateDestinationIdentifier:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSupportedOptions:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestinationControllerData *)self->_data setSupportedOptions:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAvailableDestinationIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestinationControllerData *)self->_data setAvailableDestinationIdentifiers:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateDestinationIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestinationControllerData *)self->_data setDestinationIdentifier:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaDestinationControllerData)data
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableMediaDestinationControllerData *)self->_data copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)recoverDueToInvalidRecordInCloudWithHome:(id)a3 migrationQueue:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Recovering cloud data due to invalid cloud record", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  v16 = [(HMDMediaDestinationControllerBackingStoreHandler *)v12 metricsEventDispatcher];
  [v16 submitFailureEventWithEventErrorCode:11 error:v15];

  v17 = [(HMDMediaDestinationControllerBackingStoreHandler *)v12 data];
  v18 = [v17 identifier];

  [v8 dropAllChangesWithObjectID:v18];
  v19 = [(HMDMediaDestinationControllerBackingStoreHandler *)v12 data];
  v20 = [HMDMediaDestinationControllerBackingStoreHandler backingStoreObjectForData:v19];

  [v20 setObjectChangeType:2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __119__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToInvalidRecordInCloudWithHome_migrationQueue_completion___block_invoke;
  v24[3] = &unk_279735738;
  v25 = v20;
  v26 = v10;
  v21 = v20;
  v22 = v10;
  dispatch_async(v9, v24);

  v23 = *MEMORY[0x277D85DE8];
}

void __119__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToInvalidRecordInCloudWithHome_migrationQueue_completion___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v4[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  (*(v1 + 16))(v1, MEMORY[0x277CBEBF8], v2, 0);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)migrateWithCurrentCloudRecord:(id)a3 home:(id)a4 cloudZone:(id)a5 migrationQueue:(id)a6 completion:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 extractObjectChange];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v41 = v14;
    v20 = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
    v21 = [v19 destinationModelIdentifier];
    v22 = [v20 destinationIdentifier];
    v23 = HMFEqualObjects();

    if (v23)
    {
      v24 = [v19 availableDestinationModelIdentifiers];
      v25 = [v24 count];
      v26 = [v20 availableDestinationIdentifiers];
      if (v25 == [v26 count])
      {
        v40 = v13;
        v27 = [v19 availableDestinationModelIdentifiers];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __123__HMDMediaDestinationControllerBackingStoreHandler_migrateWithCurrentCloudRecord_home_cloudZone_migrationQueue_completion___block_invoke_2;
        v44[3] = &unk_2797358A0;
        v39 = v20;
        v45 = v39;
        v28 = [v27 na_allObjectsPassTest:v44];

        if (v28)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __123__HMDMediaDestinationControllerBackingStoreHandler_migrateWithCurrentCloudRecord_home_cloudZone_migrationQueue_completion___block_invoke_3;
          block[3] = &unk_2797348C0;
          v43 = v16;
          dispatch_async(v15, block);

          v20 = v39;
          v13 = v40;
LABEL_17:
          v14 = v41;
          goto LABEL_18;
        }

        v13 = v40;
      }

      else
      {
      }
    }

    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v13;
      *buf = 138543874;
      v49 = v37;
      v50 = 2112;
      v51 = v19;
      v52 = 2112;
      v53 = v20;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Recovering due to miss matched model: %@ data: %@", buf, 0x20u);

      v13 = v36;
    }

    objc_autoreleasePoolPop(v33);
    [(HMDMediaDestinationControllerBackingStoreHandler *)v34 recoverDueToInvalidRecordInCloudWithHome:v13 migrationQueue:v15 completion:v16];
    goto LABEL_17;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v32;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate due to unknown model extracted from record: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __123__HMDMediaDestinationControllerBackingStoreHandler_migrateWithCurrentCloudRecord_home_cloudZone_migrationQueue_completion___block_invoke;
  v46[3] = &unk_2797348C0;
  v47 = v16;
  dispatch_async(v15, v46);
  v20 = v47;
LABEL_18:

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __123__HMDMediaDestinationControllerBackingStoreHandler_migrateWithCurrentCloudRecord_home_cloudZone_migrationQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 availableDestinationIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)recoverDueToNoRecordInCloudWithHome:(id)a3 migrationQueue:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Recovering cloud data due to no record added", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDMediaDestinationControllerBackingStoreHandler *)v12 data];
  v16 = [v15 identifier];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke;
  v20[3] = &unk_27972F8D8;
  v20[4] = v12;
  v21 = v9;
  v22 = v10;
  v17 = v10;
  v18 = v9;
  [v8 cleanChangesIfNoAddChangeObjectID:v16 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __114__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping migration due to add transaction already exists", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke_22;
    block[3] = &unk_2797348C0;
    v10 = *(a1 + 40);
    v23 = *(a1 + 48);
    dispatch_async(v10, block);
    v11 = v23;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v12 = [*(a1 + 32) metricsEventDispatcher];
    [v12 submitFailureEventWithEventErrorCode:10 error:v11];

    v13 = [*(a1 + 32) data];
    v14 = [HMDMediaDestinationControllerBackingStoreHandler backingStoreObjectForData:v13];

    [v14 setObjectChangeType:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __114__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke_2;
    v19[3] = &unk_279735738;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v20 = v14;
    v21 = v16;
    v17 = v14;
    dispatch_async(v15, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __114__HMDMediaDestinationControllerBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v4[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  (*(v1 + 16))(v1, v2, MEMORY[0x277CBEBF8], 0);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)migrateWithHome:(id)a3 cloudZone:(id)a4 migrationQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  v15 = [v14 identifier];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __104__HMDMediaDestinationControllerBackingStoreHandler_migrateWithHome_cloudZone_migrationQueue_completion___block_invoke;
  v20[3] = &unk_279725398;
  v20[4] = self;
  v21 = v10;
  v23 = v11;
  v24 = v13;
  v22 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v10;
  [v16 cloudRecordWithObjectID:v15 completionHandler:v20];
}

uint64_t __104__HMDMediaDestinationControllerBackingStoreHandler_migrateWithHome_cloudZone_migrationQueue_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (a2)
  {
    return [v3 migrateWithCurrentCloudRecord:a2 home:a1[5] cloudZone:a1[7] migrationQueue:a1[6] completion:a1[8]];
  }

  else
  {
    return [v3 recoverDueToNoRecordInCloudWithHome:a1[5] migrationQueue:a1[6] completion:a1[8]];
  }
}

- (void)mergeData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (([(HMMutableMediaDestinationControllerData *)self->_data isEqual:v4]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [v4 mutableCopy];
    data = self->_data;
    self->_data = v5;

    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merged data: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeControllerWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing destination controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMDMediaDestinationControllerModel alloc];
  v10 = [(HMDMediaDestinationControllerBackingStoreHandler *)v6 data];
  v11 = [(HMDMediaDestinationControllerModel *)v9 initWithData:v10 changeType:3];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HMDMediaDestinationControllerBackingStoreHandler_removeControllerWithCompletion___block_invoke;
  v14[3] = &unk_279733F30;
  v14[4] = v6;
  v15 = v4;
  v12 = v4;
  [(HMDBackingStoreHandler *)v6 runTransactionWithModel:v11 reason:@"MediaDestinationControllerRemoveControllerWithCompletion" completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __83__HMDMediaDestinationControllerBackingStoreHandler_removeControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run remove destination controller transaction completed with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Run remove destination controller transaction completed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAvailableDestinationIdentifiers:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to available destination identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDMediaDestinationControllerModel alloc];
  v13 = [(HMDMediaDestinationControllerBackingStoreHandler *)v9 data];
  v14 = [(HMDMediaDestinationControllerModel *)v12 initWithData:v13 changeType:2];

  [(HMDMediaDestinationControllerModel *)v14 setAvailableDestinationModelIdentifiers:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__HMDMediaDestinationControllerBackingStoreHandler_updateAvailableDestinationIdentifiers_completion___block_invoke;
  v17[3] = &unk_279733F30;
  v17[4] = v9;
  v18 = v7;
  v15 = v7;
  [(HMDBackingStoreHandler *)v9 runTransactionWithModel:v14 reason:@"UpdateAvailableDestinationIdentifiers" completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __101__HMDMediaDestinationControllerBackingStoreHandler_updateAvailableDestinationIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run update available destination identifiers transaction completed with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Run update available destination identifiers transaction completed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSupportedOptions:(unint64_t)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationControllerSupportOptionsAsString();
    *buf = 138543618;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating to supported options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [HMDMediaDestinationControllerModel alloc];
  v13 = [(HMDMediaDestinationControllerBackingStoreHandler *)v8 data];
  v14 = [(HMDMediaDestinationControllerModel *)v12 initWithData:v13 changeType:2];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(HMDMediaDestinationControllerModel *)v14 setSupportedOptions:v15];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__HMDMediaDestinationControllerBackingStoreHandler_updateSupportedOptions_completion___block_invoke;
  v18[3] = &unk_279733F30;
  v18[4] = v8;
  v19 = v6;
  v16 = v6;
  [(HMDBackingStoreHandler *)v8 runTransactionWithModel:v14 reason:@"UpdateSupportedOptions" completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __86__HMDMediaDestinationControllerBackingStoreHandler_updateSupportedOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run update supported options transaction completed with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Run update supported options transaction completed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationIdentifier:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to destination identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDMediaDestinationControllerModel alloc];
  v13 = [(HMDMediaDestinationControllerBackingStoreHandler *)v9 data];
  v14 = [(HMDMediaDestinationControllerModel *)v12 initWithData:v13 changeType:2];

  [(HMDMediaDestinationControllerModel *)v14 setDestinationModelIdentifier:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__HMDMediaDestinationControllerBackingStoreHandler_updateDestinationIdentifier_completion___block_invoke;
  v17[3] = &unk_279733F30;
  v17[4] = v9;
  v18 = v7;
  v15 = v7;
  [(HMDBackingStoreHandler *)v9 runTransactionWithModel:v14 reason:@"UpdateDestinationIdentifier" completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __91__HMDMediaDestinationControllerBackingStoreHandler_updateDestinationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run update destination identifier transaction completed with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Run update destination identifier transaction completed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationControllerBackingStoreHandler)initWithData:(id)a3 backingStore:(id)a4 metricsEventDispatcher:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return +[(HMDMediaDestinationControllerBackingStoreHandler *)v20];
  }

  v14 = v13;
  v15 = [v10 identifier];
  v22.receiver = self;
  v22.super_class = HMDMediaDestinationControllerBackingStoreHandler;
  v16 = [(HMDBackingStoreHandler *)&v22 initWithIdentifier:v15 backingStore:v11];

  if (v16)
  {
    v17 = [v10 mutableCopy];
    data = v16->_data;
    v16->_data = v17;

    objc_storeWeak(&v16->_delegate, v14);
    objc_storeStrong(&v16->_metricsEventDispatcher, a5);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37, &__block_literal_global_4003);
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

uint64_t __63__HMDMediaDestinationControllerBackingStoreHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v38 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)backingStoreObjectForData:(id)a3
{
  v3 = a3;
  v4 = [[HMDMediaDestinationControllerModel alloc] initWithData:v3 changeType:0];
  v5 = [v3 availableDestinationIdentifiers];
  [(HMDMediaDestinationControllerModel *)v4 setAvailableDestinationModelIdentifiers:v5];

  v6 = [v3 destinationIdentifier];

  [(HMDMediaDestinationControllerModel *)v4 setDestinationModelIdentifier:v6];

  return v4;
}

@end