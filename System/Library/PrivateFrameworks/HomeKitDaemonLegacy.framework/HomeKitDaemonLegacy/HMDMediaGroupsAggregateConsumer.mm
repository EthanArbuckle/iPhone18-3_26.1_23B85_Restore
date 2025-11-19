@interface HMDMediaGroupsAggregateConsumer
+ (id)logCategory;
- (BOOL)isAggregateTopic:(id)a3;
- (HMDMediaGroupSetupMetricDispatcher)homeTheaterSetupMetricDispatcher;
- (HMDMediaGroupSetupMetricDispatcher)mediaSystemSetupMetricDispatcher;
- (HMDMediaGroupsAggregateConsumer)initWithIdentifier:(id)a3 subscriptionProvider:(id)a4 notificationCenter:(id)a5 stageManager:(id)a6;
- (HMDMediaGroupsAggregateConsumerDelegate)delegate;
- (HMDMediaGroupsAggregateData)aggregationData;
- (NSArray)groupDestinations;
- (NSArray)groups;
- (id)allMediaSystemData;
- (id)destinationControllerDataWithIdentifier:(id)a3;
- (id)destinationControllerDataWithParentIdentifier:(id)a3;
- (id)destinationWithIdentifier:(id)a3;
- (id)destinationWithParentIdentifier:(id)a3;
- (id)groupWithIdentifier:(id)a3;
- (id)logIdentifier;
- (id)mediaSystemDataWithIdentifier:(id)a3;
- (void)_trackHomeTheaterMetricsInAggregateData:(id)a3;
- (void)_trackMediaSystemMetricsInAggregateData:(id)a3;
- (void)commitAggregationData:(id)a3;
- (void)configureWithHome:(id)a3;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)notifyOfUpdatedAggregateData;
- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)a3;
- (void)startSubscriptionForHome:(id)a3;
- (void)stopSubscription;
- (void)unconfigure;
- (void)unstageNullDestinationForCurrentDestinationController;
@end

@implementation HMDMediaGroupsAggregateConsumer

- (HMDMediaGroupSetupMetricDispatcher)homeTheaterSetupMetricDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_homeTheaterSetupMetricDispatcher);

  return WeakRetained;
}

- (HMDMediaGroupSetupMetricDispatcher)mediaSystemSetupMetricDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaSystemSetupMetricDispatcher);

  return WeakRetained;
}

- (HMDMediaGroupsAggregateConsumerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsAggregateConsumer *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)mediaSystemDataWithIdentifier:(id)a3
{
  v3 = [(HMDMediaGroupsAggregateConsumer *)self groupWithIdentifier:a3];
  v4 = [v3 mediaSystemData];

  return v4;
}

- (id)allMediaSystemData
{
  v2 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v3 = [v2 groups];
  v4 = [v3 na_map:&__block_literal_global_63676];

  return v4;
}

- (id)groupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v6 = [v5 groups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMDMediaGroupsAggregateConsumer_groupWithIdentifier___block_invoke;
  v10[3] = &unk_27972E038;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __55__HMDMediaGroupsAggregateConsumer_groupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (NSArray)groupDestinations
{
  v3 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v4 = [v3 destinations];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDMediaGroupsAggregateConsumer_groupDestinations__block_invoke;
  v7[3] = &unk_27972DFC0;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

  return v5;
}

uint64_t __52__HMDMediaGroupsAggregateConsumer_groupDestinations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) aggregationData];
  v5 = [v4 groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMDMediaGroupsAggregateConsumer_groupDestinations__block_invoke_2;
  v9[3] = &unk_27972E038;
  v10 = v3;
  v6 = v3;
  v7 = [v5 na_any:v9];

  return v7;
}

uint64_t __52__HMDMediaGroupsAggregateConsumer_groupDestinations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) parentIdentifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (NSArray)groups
{
  v2 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v3 = [v2 groups];

  return v3;
}

- (id)destinationWithParentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v6 = [v5 destinations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HMDMediaGroupsAggregateConsumer_destinationWithParentIdentifier___block_invoke;
  v10[3] = &unk_27972DFC0;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __67__HMDMediaGroupsAggregateConsumer_destinationWithParentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)destinationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v6 = [v5 destinations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HMDMediaGroupsAggregateConsumer_destinationWithIdentifier___block_invoke;
  v10[3] = &unk_27972DFC0;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __61__HMDMediaGroupsAggregateConsumer_destinationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)destinationControllerDataWithParentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v6 = [v5 destinationControllersData];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithParentIdentifier___block_invoke;
  v10[3] = &unk_27972B060;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __81__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithParentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)destinationControllerDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  v6 = [v5 destinationControllersData];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithIdentifier___block_invoke;
  v10[3] = &unk_27972B060;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __75__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (BOOL)isAggregateTopic:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD19F0] decodeTopic:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 asHomeEventTopic];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 homeEventTopicSuffixID];
      if (v9 == *MEMORY[0x277CCFF30])
      {
        v10 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v15 = objc_autoreleasePoolPush();
      v19 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "homeEventTopicSuffixID")}];
        v23 = 138543874;
        v24 = v18;
        v25 = 2112;
        v26 = v20;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected topic id: %@ topic: %@", &v23, 0x20u);

        goto LABEL_12;
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
        v23 = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert to parsed home topic using topic: %@", &v23, 0x16u);
LABEL_12:
      }
    }

    objc_autoreleasePoolPop(v15);
    v10 = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMDMediaGroupsAggregateConsumer *)self isAggregateTopic:v7])
  {
    v8 = [HMDMediaGroupsAggregateData alloc];
    v9 = [v6 encodedData];
    v10 = [(HMDMediaGroupsAggregateData *)v8 initWithProtoBufferData:v9];

    if (v10)
    {
      [(HMDMediaGroupsAggregateConsumer *)self commitAggregationData:v10];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Error deserializing event encoded aggregation data for topic: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle received event due to unexpected topic: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfUpdatedAggregateData
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated aggregate data", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMediaGroupsAggregateConsumer *)v4 delegate];
  v8 = v7;
  if (v7)
  {
    [v7 didUpdateAggregateDataForMediaGroupsAggregateConsumer:v4];
    v9 = [(HMDMediaGroupsAggregateConsumer *)v4 notificationCenter];
    [v9 postNotificationName:@"HMDMediaGroupsAggregateConsumerUpdatedAggregateDataNotification" object:v4];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of update aggregate data due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unstageNullDestinationForCurrentDestinationController
{
  v2 = [(HMDMediaGroupsAggregateConsumer *)self stageManager];
  [v2 unstageNullDestinationForCurrentDestinationController];
}

- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self stageManager];
  [v5 stageNullDestinationForCurrentDestinationControllerIdentifier:v4];
}

- (void)startSubscriptionForHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaGroupsAggregateDataTopicName];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Subscribing to aggregated media group data with topic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDMediaGroupsAggregateConsumer *)v7 subscriptionProvider];
  v14 = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HMDMediaGroupsAggregateConsumer_startSubscriptionForHome___block_invoke;
  v13[3] = &unk_279734EB8;
  v13[4] = v7;
  [v10 registerConsumer:v7 topicFilters:v11 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HMDMediaGroupsAggregateConsumer_startSubscriptionForHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Register consumer completed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDMediaGroupsAggregateConsumer_startSubscriptionForHome___block_invoke_17;
  v12[3] = &unk_279734E90;
  v12[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopSubscription
{
  v3 = [(HMDMediaGroupsAggregateConsumer *)self subscriptionProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HMDMediaGroupsAggregateConsumer_stopSubscription__block_invoke;
  v4[3] = &unk_2797359D8;
  v4[4] = self;
  [v3 unregisterConsumer:self completion:v4];
}

void __51__HMDMediaGroupsAggregateConsumer_stopSubscription__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unregister consumer completed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring media groups aggregate consumer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMediaGroupsAggregateConsumer *)v4 stopSubscription];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring media groups aggregate consumer", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsAggregateConsumer *)v6 stageManager];
  [v9 configure];

  [(HMDMediaGroupsAggregateConsumer *)v6 startSubscriptionForHome:v4];
  v10 = [v4 mediaSystemSetupMetricDispatcher];
  [(HMDMediaGroupsAggregateConsumer *)v6 setMediaSystemSetupMetricDispatcher:v10];

  v11 = [v4 homeTheaterSetupMetricDispatcher];
  [(HMDMediaGroupsAggregateConsumer *)v6 setHomeTheaterSetupMetricDispatcher:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsAggregateData)aggregationData
{
  v2 = [(HMDMediaGroupsAggregateConsumer *)self stageManager];
  v3 = [v2 aggregateData];

  return v3;
}

- (void)_trackHomeTheaterMetricsInAggregateData:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self homeTheaterSetupMetricDispatcher];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 activeGroupIdentifier];

    if (v7)
    {
      v8 = [v6 activeGroupIdentifier];
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v12;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Check committed home theater UUID: %@ in aggregate data", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [v4 destinationControllersData];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __75__HMDMediaGroupsAggregateConsumer__trackHomeTheaterMetricsInAggregateData___block_invoke;
      v34 = &unk_27972B060;
      v14 = v8;
      v35 = v14;
      v15 = [v13 na_firstObjectPassingTest:&v31];
      if (!v15)
      {
        goto LABEL_12;
      }

      v16 = [v6 activeMetricType];
      v17 = objc_autoreleasePoolPush();
      v18 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
        v21 = v30 = v17;
        *buf = 138543618;
        v37 = v20;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Attempting to mark request committed for metric type: %@", buf, 0x16u);

        v17 = v30;
      }

      objc_autoreleasePoolPop(v17);
      if (v16 == 4)
      {
        v29 = [v15 destinationIdentifier];

        if (v29)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_12;
        }

        v22 = [v15 destinationIdentifier];

        if (!v22)
        {
          goto LABEL_12;
        }
      }

      v23 = [v15 identifier];
      [v6 markRequestCommittedForGroupIdentifier:v23 metricType:v16 error:0];

LABEL_12:
      goto LABEL_16;
    }
  }

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@No home theater setup metric has been tracked", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HMDMediaGroupsAggregateConsumer__trackHomeTheaterMetricsInAggregateData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 hmf_isEqualToUUID:v3];

  return v4;
}

- (void)_trackMediaSystemMetricsInAggregateData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateConsumer *)self mediaSystemSetupMetricDispatcher];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 activeGroupIdentifier];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Check committed media system in aggregate data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [v6 activeGroupIdentifier];
      v13 = [v4 groups];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__HMDMediaGroupsAggregateConsumer__trackMediaSystemMetricsInAggregateData___block_invoke;
      v23[3] = &unk_27972E038;
      v14 = v12;
      v24 = v14;
      v15 = [v13 na_firstObjectPassingTest:v23];
      v16 = [v6 activeMetricType];
      if (v15 && v16 == 1)
      {
        v17 = 1;
      }

      else
      {
        if (v15 || v16 != 2)
        {
          goto LABEL_15;
        }

        v17 = 2;
      }

      [v6 markRequestCommittedForGroupIdentifier:v14 metricType:v17 error:0];
LABEL_15:

      goto LABEL_16;
    }
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@No media system setup metric has been tracked", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __75__HMDMediaGroupsAggregateConsumer__trackMediaSystemMetricsInAggregateData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaSystemData];
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

- (void)commitAggregationData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Committing aggregation data %@ for consumer", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsAggregateConsumer *)v6 stageManager];
  [v9 commitAggregateData:v4];

  [(HMDMediaGroupsAggregateConsumer *)v6 _trackMediaSystemMetricsInAggregateData:v4];
  [(HMDMediaGroupsAggregateConsumer *)v6 _trackHomeTheaterMetricsInAggregateData:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsAggregateConsumer)initWithIdentifier:(id)a3 subscriptionProvider:(id)a4 notificationCenter:(id)a5 stageManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v20 = _HMFPreconditionFailure();
    return +[(HMDMediaGroupsAggregateConsumer *)v20];
  }

  v22.receiver = self;
  v22.super_class = HMDMediaGroupsAggregateConsumer;
  v16 = [(HMDMediaGroupsAggregateConsumer *)&v22 init];
  if (v16)
  {
    v17 = HMFGetOSLogHandle();
    logger = v16->_logger;
    v16->_logger = v17;

    objc_storeStrong(&v16->_identifier, a3);
    objc_storeStrong(&v16->_subscriptionProvider, a4);
    objc_storeStrong(&v16->_notificationCenter, a5);
    objc_storeStrong(&v16->_stageManager, a6);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_63722 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_63722, &__block_literal_global_26_63723);
  }

  v3 = logCategory__hmf_once_v19_63724;

  return v3;
}

uint64_t __46__HMDMediaGroupsAggregateConsumer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_63724;
  logCategory__hmf_once_v19_63724 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end