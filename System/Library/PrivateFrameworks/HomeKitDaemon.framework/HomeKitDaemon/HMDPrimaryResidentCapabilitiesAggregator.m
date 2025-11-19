@interface HMDPrimaryResidentCapabilitiesAggregator
+ (id)logCategory;
- (HMDPrimaryResidentCapabilitiesAggregator)initWithDataSource:(id)a3 delegate:(id)a4 queue:(id)a5 notificationCenter:(id)a6 homeUUID:(id)a7 accessories:(id)a8;
- (id)accessoryCapabilitiesForAccessory:(id)a3 ifDifferentFrom:(id)a4;
- (id)logIdentifier;
- (id)publicPairingIdentityForAccessory:(id)a3 ifDifferentFrom:(id)a4;
- (id)residentCapabilitiesForAccessory:(id)a3 ifDifferentFrom:(id)a4;
- (void)_handleAddedAccessories:(uint64_t)a1;
- (void)_handleDidBecomePrimaryResident;
- (void)_processEventIfNewer:(void *)a3 topic:;
- (void)didAddAccessory:(id)a3;
- (void)didRemoveAccessory:(id)a3;
- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)a3;
- (void)processSoftwareVersionEvent:(void *)a3 accessoryTopic:;
- (void)startIfPrimaryResident;
@end

@implementation HMDPrimaryResidentCapabilitiesAggregator

- (void)_processEventIfNewer:(void *)a3 topic:
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v10;
      v73 = 2112;
      v74 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received event for: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained(v8 + 2);
    v12 = objc_loadWeakRetained(v8 + 3);
    if (!WeakRetained)
    {
      goto LABEL_16;
    }

    v13 = [MEMORY[0x277CD19F0] decodeTopic:v6];
    v14 = [v13 asAccessoryTopic];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 accessoryEventTopicSuffixID];
      if (v16 == *MEMORY[0x277CCEA50])
      {
        v17 = objc_alloc(MEMORY[0x277CD1678]);
        v18 = [v5 encodedData];
        v19 = [v17 initWithProtoData:v18];

        v20 = [v15 accessoryUUID];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke;
        v65[3] = &unk_278688E70;
        v66 = v19;
        v67 = v8;
        v68 = v12;
        v69 = v5;
        v70 = v15;
        v21 = v19;
        [v68 aggregator:v8 accessoryCapabilitiesWithUUID:v20 completion:v65];

        v22 = v66;
LABEL_14:

        goto LABEL_15;
      }

      v28 = [v15 accessoryEventTopicSuffixID];
      if (v28 == *MEMORY[0x277CCEA88])
      {
        v29 = objc_alloc(MEMORY[0x277CD1D60]);
        v30 = [v5 encodedData];
        v31 = [v29 initWithProtoData:v30];

        v32 = [v15 accessoryUUID];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke_23;
        v59[3] = &unk_278688E70;
        v60 = v31;
        v61 = v8;
        v62 = v12;
        v63 = v5;
        v64 = v15;
        v21 = v31;
        [v62 aggregator:v8 residentCapabilitiesWithUUID:v32 completion:v59];

        v22 = v60;
        goto LABEL_14;
      }

      v34 = [v15 accessoryEventTopicSuffixID];
      if (v34 == *MEMORY[0x277CCEA80])
      {
        v35 = v5;
        v57 = v15;
        v36 = objc_loadWeakRetained(v8 + 3);
        if (v36)
        {
          v37 = objc_alloc(MEMORY[0x277D0F8A8]);
          context = v35;
          v38 = [v35 encodedData];
          v39 = [v37 initWithProtoData:v38];

          if (v39)
          {
            v40 = [v57 accessoryUUID];
            [v36 aggregator:v8 didReceivePublicPairingKeyWithUUID:v40 pairingIdentity:v39];
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v54 = v8;
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v51 = v52 = v49;
              *buf = 138543618;
              v72 = v51;
              v73 = 2112;
              v74 = context;
              _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory public pairing identity event: %@ due to invalid data", buf, 0x16u);

              v49 = v52;
            }

            objc_autoreleasePoolPop(v49);
          }

          v35 = context;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v47 = v8;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            *buf = 138543618;
            v72 = v53;
            v73 = 2112;
            v74 = v35;
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory public pairing identity event: %@ due to no delegate", buf, 0x16u);
          }

          objc_autoreleasePoolPop(contexta);
        }

        goto LABEL_15;
      }

      v41 = [v15 accessoryEventTopicSuffixID];
      if (v41 == *MEMORY[0x277CCEA60])
      {
        v42 = v15;
        v43 = v5;
        v58 = objc_loadWeakRetained(v8 + 3);
        v44 = [v42 accessoryUUID];

        v45 = [v43 encodedData];

        [v58 aggregator:v8 didReceiveDeviceIRKWithUUID:v44 deviceIRK:v45];
        goto LABEL_15;
      }

      v46 = [v15 accessoryEventTopicSuffixID];
      if (v46 == *MEMORY[0x277CCEAA0])
      {
        [(HMDPrimaryResidentCapabilitiesAggregator *)v8 processSoftwareVersionEvent:v5 accessoryTopic:v15];
        goto LABEL_15;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = v8;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v26;
        v73 = 2112;
        v74 = v6;
        v27 = "%{public}@Accessory event does not have expected suffix %@";
        goto LABEL_10;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v8;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v26;
        v73 = 2112;
        v74 = v6;
        v27 = "%{public}@Unable to parse topic %@";
LABEL_10:
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v23);
LABEL_15:

LABEL_16:
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1678]) initWithProtoData:v3];
  }

  else
  {
    v4 = 0;
  }

  if (([*(a1 + 32) isEqual:v4] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating on receiving different accessory capabilities %@.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) encodedData];
    v14 = [*(a1 + 64) accessoryUUID];
    v15 = [*(a1 + 64) homeUUID];
    [v12 aggregator:v10 changedAccessoryCapabilities:v11 rawCapabilities:v13 accessoryUUID:v14 homeUUID:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke_23(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:v3];
  }

  else
  {
    v4 = 0;
  }

  if (([*(a1 + 32) isEqual:v4] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating on receiving different resident capabilities %@.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) encodedData];
    v14 = [*(a1 + 64) accessoryUUID];
    v15 = [*(a1 + 64) homeUUID];
    [v12 aggregator:v10 changedResidentCapabilities:v11 rawCapabilities:v13 accessoryUUID:v14 homeUUID:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processSoftwareVersionEvent:(void *)a3 accessoryTopic:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 3);
  if (WeakRetained)
  {
    v8 = objc_alloc(MEMORY[0x277CD1738]);
    v9 = [v5 encodedData];
    v10 = [v8 initWithProtoData:v9];

    if (v10)
    {
      v11 = [v6 accessoryUUID];
      v12 = [v10 softwareVersion];
      [WeakRetained aggregator:a1 didReceiveSoftwareVersionWithUUID:v11 softwareVersion:v12];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory software version event: %@ due to invalid data", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory software version event: %@ due to no delegate", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)a3
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDPrimaryResidentCapabilitiesAggregator_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __99__HMDPrimaryResidentCapabilitiesAggregator_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isCurrentDevicePrimaryResident];

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v4 == *(v5 + 8))
    {
      goto LABEL_14;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Primary resident status changed to %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 8) = v4;
    v12 = *(a1 + 32);
    if (v12)
    {
      if (*(v12 + 8) == 1)
      {
        [(HMDPrimaryResidentCapabilitiesAggregator *)v12 _handleDidBecomePrimaryResident];
      }

      else
      {
        dispatch_assert_queue_V2(*(v12 + 40));
        v13 = objc_loadWeakRetained((v12 + 16));
        v14 = v13;
        if (v13)
        {
          v15 = [v13 localAndRemoteSubscriptionProvider];
          [v15 unregisterConsumer:v12 completion:&__block_literal_global_20_272962];
        }
      }
    }
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidBecomePrimaryResident
{
  dispatch_assert_queue_V2(*(a1 + 40));
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  [WeakRetained aggregatorDidBecomePrimary:a1];

  v3 = [*(a1 + 56) allObjects];
  [(HMDPrimaryResidentCapabilitiesAggregator *)a1 _handleAddedAccessories:v3];
}

- (void)_handleAddedAccessories:(uint64_t)a1
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if ([v3 count])
    {
      if (*(a1 + 8) == 1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 16));
        v5 = WeakRetained;
        if (WeakRetained)
        {
          v30 = WeakRetained;
          v31 = v3;
          v39 = [MEMORY[0x277CBEB18] array];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          obj = *(a1 + 56);
          v40 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v40)
          {
            v38 = *v50;
            v37 = *MEMORY[0x277CCEA50];
            v36 = *MEMORY[0x277CCEA88];
            v35 = *MEMORY[0x277CCEA80];
            v34 = *MEMORY[0x277CCEA60];
            v33 = *MEMORY[0x277CCEAA0];
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v50 != v38)
                {
                  objc_enumerationMutation(obj);
                }

                v7 = *(*(&v49 + 1) + 8 * i);
                v44 = *(a1 + 32);
                v8 = MEMORY[0x277CD16F0];
                v43 = *(a1 + 32);
                v9 = v7;
                v42 = [v8 topicFromSuffixID:v37 homeUUID:v43 accessoryUUID:v9];
                *buf = v42;
                v10 = MEMORY[0x277CD16F0];
                v41 = *(a1 + 32);
                v11 = [v10 topicFromSuffixID:v36 homeUUID:v41 accessoryUUID:v9];
                *&buf[8] = v11;
                v12 = MEMORY[0x277CD16F0];
                v13 = *(a1 + 32);
                v14 = [v12 topicFromSuffixID:v35 homeUUID:v13 accessoryUUID:v9];
                *&buf[16] = v14;
                v15 = MEMORY[0x277CD16F0];
                v16 = *(a1 + 32);
                v17 = [v15 topicFromSuffixID:v34 homeUUID:v16 accessoryUUID:v9];
                v55 = v17;
                v18 = MEMORY[0x277CD16F0];
                v19 = a1;
                v20 = *(a1 + 32);
                v21 = [v18 topicFromSuffixID:v33 homeUUID:v20 accessoryUUID:v9];

                v56 = v21;
                v22 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:5];

                a1 = v19;
                [v39 addObjectsFromArray:v22];
              }

              v40 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
            }

            while (v40);
          }

          v23 = objc_autoreleasePoolPush();
          v24 = a1;
          v25 = HMFGetOSLogHandle();
          v3 = v31;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v31;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Subscribing for accessories: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v5 = v30;
          v27 = [v30 localAndRemoteSubscriptionProvider];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke;
          v45[3] = &unk_278688E48;
          v45[4] = v24;
          v46 = v39;
          v47 = v30;
          v48 = v31;
          v28 = v39;
          [v27 changeRegistrationsForConsumer:v24 topicFilterAdditions:v28 topicFilterRemovals:MEMORY[0x277CBEBF8] completion:v45];
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 56);
      *buf = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error subscribing to capabilities for accessories: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 40);
    }

    else
    {
      v13 = 0;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_2;
    v17[3] = &unk_2786891E0;
    v18 = *(a1 + 40);
    v19 = v5;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    v20 = v14;
    v21 = v15;
    dispatch_async(v13, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_3;
  v5[3] = &unk_278688E20;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v5];
}

void __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_3(id *a1, void *a2)
{
  v7 = a2;
  v3 = [a1[4] objectForKeyedSubscript:v7];
  v4 = [a1[5] eventStoreReadHandle];
  v5 = [v4 lastEventForTopic:v7];

  v6 = v3;
  if (v3 || (v6 = v5) != 0)
  {
    [(HMDPrimaryResidentCapabilitiesAggregator *)a1[6] _processEventIfNewer:v6 topic:v7];
  }
}

- (id)publicPairingIdentityForAccessory:(id)a3 ifDifferentFrom:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v9 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA80] homeUUID:self->_homeUUID accessoryUUID:v6];
      v10 = [WeakRetained eventStoreReadHandle];
      v11 = [v10 lastEventForTopic:v9];

      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x277D0F8A8]);
        v13 = [v11 encodedData];
        v14 = [v12 initWithProtoData:v13];

        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = 0;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      v15 = [v14 publicPairingIdentity];
      v16 = [v15 isEqual:v7];

      if (v16)
      {
        v17 = 0;
LABEL_10:

        goto LABEL_13;
      }

LABEL_9:
      v17 = v7;
      goto LABEL_10;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (id)residentCapabilitiesForAccessory:(id)a3 ifDifferentFrom:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v9 = WeakRetained;
    v10 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA88] homeUUID:self->_homeUUID accessoryUUID:v6];
    v11 = [v9 eventStoreReadHandle];
    v12 = [v11 lastEventForTopic:v10];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:v7];
      v14 = objc_alloc(MEMORY[0x277CD1D60]);
      v15 = [v12 encodedData];
      v16 = [v14 initWithProtoData:v15];

      if (v16 && ([v16 isEqual:v13] & 1) == 0)
      {
        v22 = [v16 pbCapabilities];
        v17 = [v22 data];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v7;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident capabilities due to nil datasource", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 0;
    v17 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)accessoryCapabilitiesForAccessory:(id)a3 ifDifferentFrom:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v9 = WeakRetained;
    v10 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA50] homeUUID:self->_homeUUID accessoryUUID:v6];
    v11 = [v9 eventStoreReadHandle];
    v12 = [v11 lastEventForTopic:v10];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CD1678]) initWithProtoData:v7];
      v14 = objc_alloc(MEMORY[0x277CD1678]);
      v15 = [v12 encodedData];
      v16 = [v14 initWithProtoData:v15];

      if (v16 && ([v16 isEqual:v13] & 1) == 0)
      {
        v22 = [v16 pbCapabilities];
        v17 = [v22 data];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v7;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create accessory capabilities due to nil datasource", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 0;
    v17 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)didRemoveAccessory:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDPrimaryResidentCapabilitiesAggregator_didRemoveAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__HMDPrimaryResidentCapabilitiesAggregator_didRemoveAccessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 containsObject:*(a1 + 40)])
  {
    v4 = *(a1 + 32);
    v5 = v4 ? *(v4 + 56) : 0;
    [v5 removeObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 40);

      dispatch_assert_queue_V2(v7);
    }
  }
}

- (void)didAddAccessory:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDPrimaryResidentCapabilitiesAggregator_didAddAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __60__HMDPrimaryResidentCapabilitiesAggregator_didAddAccessory___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  if (([v3 containsObject:*(a1 + 40)] & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 56);
    }

    else
    {
      v5 = 0;
    }

    [v5 addObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    v9[0] = *(a1 + 40);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(HMDPrimaryResidentCapabilitiesAggregator *)v6 _handleAddedAccessories:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startIfPrimaryResident
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDPrimaryResidentCapabilitiesAggregator_startIfPrimaryResident__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__HMDPrimaryResidentCapabilitiesAggregator_startIfPrimaryResident__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    if (WeakRetained)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [WeakRetained isCurrentDevicePrimaryResident];
        v9 = @"NO";
        if (v8)
        {
          v9 = @"YES";
        }

        v20 = 138543618;
        v21 = v7;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting capabilities aggregator, primary resident: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 48);
      }

      else
      {
        v11 = 0;
      }

      [v11 removeObserver:?];
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 48);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = [WeakRetained primaryResidentChangeMonitor];
      [v14 addObserver:v12 selector:sel_handlePrimaryResidentIsCurrentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:v15];

      v16 = [WeakRetained isCurrentDevicePrimaryResident];
      v17 = *(a1 + 32);
      if (v17)
      {
        *(v17 + 8) = v16;
        v18 = *(a1 + 32);
        if (v18)
        {
          if (*(v18 + 8) == 1)
          {
            [(HMDPrimaryResidentCapabilitiesAggregator *)v18 _handleDidBecomePrimaryResident];
          }
        }
      }
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDPrimaryResidentCapabilitiesAggregator)initWithDataSource:(id)a3 delegate:(id)a4 queue:(id)a5 notificationCenter:(id)a6 homeUUID:(id)a7 accessories:(id)a8
{
  v14 = a3;
  v15 = a4;
  v24 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = HMDPrimaryResidentCapabilitiesAggregator;
  v19 = [(HMDPrimaryResidentCapabilitiesAggregator *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, a5);
    objc_storeWeak(&v20->_dataSource, v14);
    objc_storeWeak(&v20->_delegate, v15);
    objc_storeStrong(&v20->_homeUUID, a7);
    objc_storeStrong(&v20->_notificationCenter, a6);
    v21 = [MEMORY[0x277CBEB58] setWithArray:v18];
    accessories = v20->_accessories;
    v20->_accessories = v21;
  }

  return v20;
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_homeUUID;
  }

  return [(HMDPrimaryResidentCapabilitiesAggregator *)self UUIDString];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_272987 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_272987, &__block_literal_global_272988);
  }

  v3 = logCategory__hmf_once_v1_272989;

  return v3;
}

void __55__HMDPrimaryResidentCapabilitiesAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_272989;
  logCategory__hmf_once_v1_272989 = v1;
}

@end