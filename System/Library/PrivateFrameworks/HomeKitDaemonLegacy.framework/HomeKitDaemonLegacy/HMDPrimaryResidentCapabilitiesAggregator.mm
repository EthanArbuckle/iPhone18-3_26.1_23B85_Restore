@interface HMDPrimaryResidentCapabilitiesAggregator
+ (id)logCategory;
- (HMDPrimaryResidentCapabilitiesAggregator)initWithDataSource:(id)source delegate:(id)delegate queue:(id)queue notificationCenter:(id)center homeUUID:(id)d accessories:(id)accessories;
- (id)accessoryCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from;
- (id)logIdentifier;
- (id)publicPairingIdentityForAccessory:(id)accessory ifDifferentFrom:(id)from;
- (id)residentCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from;
- (void)_handleAddedAccessories:(uint64_t)accessories;
- (void)_handleDidBecomePrimaryResident;
- (void)_processEventIfNewer:(void *)newer topic:;
- (void)didAddAccessory:(id)accessory;
- (void)didRemoveAccessory:(id)accessory;
- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)notification;
- (void)processSoftwareVersionEvent:(void *)event accessoryTopic:;
- (void)startIfPrimaryResident;
@end

@implementation HMDPrimaryResidentCapabilitiesAggregator

- (void)_processEventIfNewer:(void *)newer topic:
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  newerCopy = newer;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v10;
      v73 = 2112;
      v74 = newerCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received event for: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained(selfCopy + 2);
    v12 = objc_loadWeakRetained(selfCopy + 3);
    if (!WeakRetained)
    {
      goto LABEL_16;
    }

    v13 = [MEMORY[0x277CD19F0] decodeTopic:newerCopy];
    asAccessoryTopic = [v13 asAccessoryTopic];
    v15 = asAccessoryTopic;
    if (asAccessoryTopic)
    {
      accessoryEventTopicSuffixID = [asAccessoryTopic accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID == *MEMORY[0x277CCEA50])
      {
        v17 = objc_alloc(MEMORY[0x277CD1678]);
        encodedData = [v5 encodedData];
        v19 = [v17 initWithProtoData:encodedData];

        accessoryUUID = [v15 accessoryUUID];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke;
        v65[3] = &unk_279726398;
        v66 = v19;
        v67 = selfCopy;
        v68 = v12;
        v69 = v5;
        v70 = v15;
        v21 = v19;
        [v68 aggregator:selfCopy accessoryCapabilitiesWithUUID:accessoryUUID completion:v65];

        v22 = v66;
LABEL_14:

        goto LABEL_15;
      }

      accessoryEventTopicSuffixID2 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID2 == *MEMORY[0x277CCEA88])
      {
        v29 = objc_alloc(MEMORY[0x277CD1D60]);
        encodedData2 = [v5 encodedData];
        v31 = [v29 initWithProtoData:encodedData2];

        accessoryUUID2 = [v15 accessoryUUID];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke_23;
        v59[3] = &unk_279726398;
        v60 = v31;
        v61 = selfCopy;
        v62 = v12;
        v63 = v5;
        v64 = v15;
        v21 = v31;
        [v62 aggregator:selfCopy residentCapabilitiesWithUUID:accessoryUUID2 completion:v59];

        v22 = v60;
        goto LABEL_14;
      }

      accessoryEventTopicSuffixID3 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID3 == *MEMORY[0x277CCEA80])
      {
        v35 = v5;
        v57 = v15;
        v36 = objc_loadWeakRetained(selfCopy + 3);
        if (v36)
        {
          v37 = objc_alloc(MEMORY[0x277D0F8A8]);
          context = v35;
          encodedData3 = [v35 encodedData];
          v39 = [v37 initWithProtoData:encodedData3];

          if (v39)
          {
            accessoryUUID3 = [v57 accessoryUUID];
            [v36 aggregator:selfCopy didReceivePublicPairingKeyWithUUID:accessoryUUID3 pairingIdentity:v39];
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v54 = selfCopy;
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v51 = v52 = v49;
              *buf = 138543618;
              v72 = v51;
              v73 = 2112;
              v74 = context;
              _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory public pairing identity event: %@ due to invalid data", buf, 0x16u);

              v49 = v52;
            }

            objc_autoreleasePoolPop(v49);
          }

          v35 = context;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v47 = selfCopy;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            *buf = 138543618;
            v72 = v53;
            v73 = 2112;
            v74 = v35;
            _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory public pairing identity event: %@ due to no delegate", buf, 0x16u);
          }

          objc_autoreleasePoolPop(contexta);
        }

        goto LABEL_15;
      }

      accessoryEventTopicSuffixID4 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID4 == *MEMORY[0x277CCEA60])
      {
        v42 = v15;
        v43 = v5;
        v58 = objc_loadWeakRetained(selfCopy + 3);
        accessoryUUID4 = [v42 accessoryUUID];

        encodedData4 = [v43 encodedData];

        [v58 aggregator:selfCopy didReceiveDeviceIRKWithUUID:accessoryUUID4 deviceIRK:encodedData4];
        goto LABEL_15;
      }

      accessoryEventTopicSuffixID5 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID5 == *MEMORY[0x277CCEAA0])
      {
        [(HMDPrimaryResidentCapabilitiesAggregator *)selfCopy processSoftwareVersionEvent:v5 accessoryTopic:v15];
        goto LABEL_15;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v26;
        v73 = 2112;
        v74 = newerCopy;
        v27 = "%{public}@Accessory event does not have expected suffix %@";
        goto LABEL_10;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v26;
        v73 = 2112;
        v74 = newerCopy;
        v27 = "%{public}@Unable to parse topic %@";
LABEL_10:
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating on receiving different accessory capabilities %@.", &v17, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating on receiving different resident capabilities %@.", &v17, 0x16u);
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

- (void)processSoftwareVersionEvent:(void *)event accessoryTopic:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(self + 3);
  if (WeakRetained)
  {
    v8 = objc_alloc(MEMORY[0x277CD1738]);
    encodedData = [v5 encodedData];
    v10 = [v8 initWithProtoData:encodedData];

    if (v10)
    {
      accessoryUUID = [eventCopy accessoryUUID];
      softwareVersion = [v10 softwareVersion];
      [WeakRetained aggregator:self didReceiveSoftwareVersionWithUUID:accessoryUUID softwareVersion:softwareVersion];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory software version event: %@ due to invalid data", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory software version event: %@ due to no delegate", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)notification
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
  block[3] = &unk_279735D00;
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Primary resident status changed to %@", &v17, 0x16u);
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
          [v15 unregisterConsumer:v12 completion:&__block_literal_global_20_46582];
        }
      }
    }
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidBecomePrimaryResident
{
  dispatch_assert_queue_V2(*(self + 40));
  WeakRetained = objc_loadWeakRetained((self + 24));
  [WeakRetained aggregatorDidBecomePrimary:self];

  allObjects = [*(self + 56) allObjects];
  [(HMDPrimaryResidentCapabilitiesAggregator *)self _handleAddedAccessories:allObjects];
}

- (void)_handleAddedAccessories:(uint64_t)accessories
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (accessories)
  {
    dispatch_assert_queue_V2(*(accessories + 40));
    if ([v3 count])
    {
      if (*(accessories + 8) == 1)
      {
        WeakRetained = objc_loadWeakRetained((accessories + 16));
        v5 = WeakRetained;
        if (WeakRetained)
        {
          v30 = WeakRetained;
          v31 = v3;
          array = [MEMORY[0x277CBEB18] array];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          obj = *(accessories + 56);
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
                v44 = *(accessories + 32);
                v8 = MEMORY[0x277CD16F0];
                v43 = *(accessories + 32);
                v9 = v7;
                v42 = [v8 topicFromSuffixID:v37 homeUUID:v43 accessoryUUID:v9];
                *buf = v42;
                v10 = MEMORY[0x277CD16F0];
                v41 = *(accessories + 32);
                v11 = [v10 topicFromSuffixID:v36 homeUUID:v41 accessoryUUID:v9];
                *&buf[8] = v11;
                v12 = MEMORY[0x277CD16F0];
                v13 = *(accessories + 32);
                v14 = [v12 topicFromSuffixID:v35 homeUUID:v13 accessoryUUID:v9];
                *&buf[16] = v14;
                v15 = MEMORY[0x277CD16F0];
                v16 = *(accessories + 32);
                v17 = [v15 topicFromSuffixID:v34 homeUUID:v16 accessoryUUID:v9];
                v55 = v17;
                v18 = MEMORY[0x277CD16F0];
                accessoriesCopy = accessories;
                v20 = *(accessories + 32);
                v21 = [v18 topicFromSuffixID:v33 homeUUID:v20 accessoryUUID:v9];

                v56 = v21;
                v22 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:5];

                accessories = accessoriesCopy;
                [array addObjectsFromArray:v22];
              }

              v40 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
            }

            while (v40);
          }

          v23 = objc_autoreleasePoolPush();
          accessoriesCopy2 = accessories;
          v25 = HMFGetOSLogHandle();
          v3 = v31;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v31;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Subscribing for accessories: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v5 = v30;
          localAndRemoteSubscriptionProvider = [v30 localAndRemoteSubscriptionProvider];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke;
          v45[3] = &unk_27972B260;
          v45[4] = accessoriesCopy2;
          v46 = array;
          v47 = v30;
          v48 = v31;
          v28 = array;
          [localAndRemoteSubscriptionProvider changeRegistrationsForConsumer:accessoriesCopy2 topicFilterAdditions:v28 topicFilterRemovals:MEMORY[0x277CBEBF8] completion:v45];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error subscribing to capabilities for accessories: %@, error: %@", buf, 0x20u);
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
    v17[3] = &unk_279734870;
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
  v5[3] = &unk_279726370;
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

- (id)publicPairingIdentityForAccessory:(id)accessory ifDifferentFrom:(id)from
{
  accessoryCopy = accessory;
  fromCopy = from;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v9 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA80] homeUUID:self->_homeUUID accessoryUUID:accessoryCopy];
      eventStoreReadHandle = [WeakRetained eventStoreReadHandle];
      v11 = [eventStoreReadHandle lastEventForTopic:v9];

      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x277D0F8A8]);
        encodedData = [v11 encodedData];
        v14 = [v12 initWithProtoData:encodedData];

        if (!fromCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = 0;
        if (!fromCopy)
        {
          goto LABEL_9;
        }
      }

      publicPairingIdentity = [v14 publicPairingIdentity];
      v16 = [publicPairingIdentity isEqual:fromCopy];

      if (v16)
      {
        v17 = 0;
LABEL_10:

        goto LABEL_13;
      }

LABEL_9:
      v17 = fromCopy;
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

- (id)residentCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  fromCopy = from;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v9 = WeakRetained;
    v10 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA88] homeUUID:self->_homeUUID accessoryUUID:accessoryCopy];
    eventStoreReadHandle = [v9 eventStoreReadHandle];
    v12 = [eventStoreReadHandle lastEventForTopic:v10];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:fromCopy];
      v14 = objc_alloc(MEMORY[0x277CD1D60]);
      encodedData = [v12 encodedData];
      v16 = [v14 initWithProtoData:encodedData];

      if (v16 && ([v16 isEqual:v13] & 1) == 0)
      {
        pbCapabilities = [v16 pbCapabilities];
        data = [pbCapabilities data];
      }

      else
      {
        data = 0;
      }
    }

    else
    {
      data = fromCopy;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident capabilities due to nil datasource", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 0;
    data = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)accessoryCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  fromCopy = from;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v9 = WeakRetained;
    v10 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA50] homeUUID:self->_homeUUID accessoryUUID:accessoryCopy];
    eventStoreReadHandle = [v9 eventStoreReadHandle];
    v12 = [eventStoreReadHandle lastEventForTopic:v10];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CD1678]) initWithProtoData:fromCopy];
      v14 = objc_alloc(MEMORY[0x277CD1678]);
      encodedData = [v12 encodedData];
      v16 = [v14 initWithProtoData:encodedData];

      if (v16 && ([v16 isEqual:v13] & 1) == 0)
      {
        pbCapabilities = [v16 pbCapabilities];
        data = [pbCapabilities data];
      }

      else
      {
        data = 0;
      }
    }

    else
    {
      data = fromCopy;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create accessory capabilities due to nil datasource", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 0;
    data = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)didRemoveAccessory:(id)accessory
{
  accessoryCopy = accessory;
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
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
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

- (void)didAddAccessory:(id)accessory
{
  accessoryCopy = accessory;
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
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
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
  block[3] = &unk_279735D00;
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
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting capabilities aggregator, primary resident: %@", &v20, 0x16u);
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

- (HMDPrimaryResidentCapabilitiesAggregator)initWithDataSource:(id)source delegate:(id)delegate queue:(id)queue notificationCenter:(id)center homeUUID:(id)d accessories:(id)accessories
{
  sourceCopy = source;
  delegateCopy = delegate;
  queueCopy = queue;
  centerCopy = center;
  dCopy = d;
  accessoriesCopy = accessories;
  v25.receiver = self;
  v25.super_class = HMDPrimaryResidentCapabilitiesAggregator;
  v19 = [(HMDPrimaryResidentCapabilitiesAggregator *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeWeak(&v20->_dataSource, sourceCopy);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_homeUUID, d);
    objc_storeStrong(&v20->_notificationCenter, center);
    v21 = [MEMORY[0x277CBEB58] setWithArray:accessoriesCopy];
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
  if (logCategory__hmf_once_t0_46608 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_46608, &__block_literal_global_46609);
  }

  v3 = logCategory__hmf_once_v1_46610;

  return v3;
}

uint64_t __55__HMDPrimaryResidentCapabilitiesAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_46610;
  logCategory__hmf_once_v1_46610 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end