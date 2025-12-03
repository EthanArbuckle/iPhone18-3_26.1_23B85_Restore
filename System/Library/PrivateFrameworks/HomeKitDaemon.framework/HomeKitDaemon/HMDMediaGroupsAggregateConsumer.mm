@interface HMDMediaGroupsAggregateConsumer
+ (id)logCategory;
- (BOOL)isAggregateTopic:(id)topic;
- (HMDMediaGroupSetupMetricDispatcher)homeTheaterSetupMetricDispatcher;
- (HMDMediaGroupSetupMetricDispatcher)mediaSystemSetupMetricDispatcher;
- (HMDMediaGroupsAggregateConsumer)initWithIdentifier:(id)identifier subscriptionProvider:(id)provider notificationCenter:(id)center stageManager:(id)manager;
- (HMDMediaGroupsAggregateConsumerDelegate)delegate;
- (HMDMediaGroupsAggregateData)aggregationData;
- (NSArray)groupDestinations;
- (NSArray)groups;
- (id)allMediaSystemData;
- (id)destinationControllerDataWithIdentifier:(id)identifier;
- (id)destinationControllerDataWithParentIdentifier:(id)identifier;
- (id)destinationWithIdentifier:(id)identifier;
- (id)destinationWithParentIdentifier:(id)identifier;
- (id)groupWithIdentifier:(id)identifier;
- (id)logIdentifier;
- (id)mediaSystemDataWithIdentifier:(id)identifier;
- (void)_trackHomeTheaterMetricsInAggregateData:(id)data;
- (void)_trackMediaSystemMetricsInAggregateData:(id)data;
- (void)commitAggregationData:(id)data;
- (void)configureWithHome:(id)home;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)notifyOfUpdatedAggregateData;
- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)identifier;
- (void)startSubscriptionForHome:(id)home;
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
  identifier = [(HMDMediaGroupsAggregateConsumer *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)mediaSystemDataWithIdentifier:(id)identifier
{
  v3 = [(HMDMediaGroupsAggregateConsumer *)self groupWithIdentifier:identifier];
  mediaSystemData = [v3 mediaSystemData];

  return mediaSystemData;
}

- (id)allMediaSystemData
{
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  groups = [aggregationData groups];
  v4 = [groups na_map:&__block_literal_global_56928];

  return v4;
}

- (id)groupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  groups = [aggregationData groups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMDMediaGroupsAggregateConsumer_groupWithIdentifier___block_invoke;
  v10[3] = &unk_278689080;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [groups na_firstObjectPassingTest:v10];

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
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  destinations = [aggregationData destinations];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDMediaGroupsAggregateConsumer_groupDestinations__block_invoke;
  v7[3] = &unk_278689008;
  v7[4] = self;
  v5 = [destinations na_filter:v7];

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
  v9[3] = &unk_278689080;
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
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  groups = [aggregationData groups];

  return groups;
}

- (id)destinationWithParentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  destinations = [aggregationData destinations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HMDMediaGroupsAggregateConsumer_destinationWithParentIdentifier___block_invoke;
  v10[3] = &unk_278689008;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [destinations na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __67__HMDMediaGroupsAggregateConsumer_destinationWithParentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)destinationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  destinations = [aggregationData destinations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HMDMediaGroupsAggregateConsumer_destinationWithIdentifier___block_invoke;
  v10[3] = &unk_278689008;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [destinations na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __61__HMDMediaGroupsAggregateConsumer_destinationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)destinationControllerDataWithParentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  destinationControllersData = [aggregationData destinationControllersData];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithParentIdentifier___block_invoke;
  v10[3] = &unk_27867BC08;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [destinationControllersData na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __81__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithParentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)destinationControllerDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aggregationData = [(HMDMediaGroupsAggregateConsumer *)self aggregationData];
  destinationControllersData = [aggregationData destinationControllersData];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithIdentifier___block_invoke;
  v10[3] = &unk_27867BC08;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [destinationControllersData na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __75__HMDMediaGroupsAggregateConsumer_destinationControllerDataWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (BOOL)isAggregateTopic:(id)topic
{
  v29 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  v5 = [MEMORY[0x277CD19F0] decodeTopic:topicCopy];
  v6 = v5;
  if (v5)
  {
    asHomeEventTopic = [v5 asHomeEventTopic];
    v8 = asHomeEventTopic;
    if (asHomeEventTopic)
    {
      homeEventTopicSuffixID = [asHomeEventTopic homeEventTopicSuffixID];
      if (homeEventTopicSuffixID == *MEMORY[0x277CCFF30])
      {
        v10 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected topic id: %@ topic: %@", &v23, 0x20u);

        goto LABEL_12;
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
        v23 = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert to parsed home topic using topic: %@", &v23, 0x16u);
LABEL_12:
      }
    }

    objc_autoreleasePoolPop(v15);
    v10 = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = topicCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  if ([(HMDMediaGroupsAggregateConsumer *)self isAggregateTopic:topicCopy])
  {
    v8 = [HMDMediaGroupsAggregateData alloc];
    encodedData = [eventCopy encodedData];
    v10 = [(HMDMediaGroupsAggregateData *)v8 initWithProtoBufferData:encodedData];

    if (v10)
    {
      [(HMDMediaGroupsAggregateConsumer *)self commitAggregationData:v10];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = topicCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Error deserializing event encoded aggregation data for topic: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = topicCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle received event due to unexpected topic: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfUpdatedAggregateData
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated aggregate data", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  delegate = [(HMDMediaGroupsAggregateConsumer *)selfCopy delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate didUpdateAggregateDataForMediaGroupsAggregateConsumer:selfCopy];
    notificationCenter = [(HMDMediaGroupsAggregateConsumer *)selfCopy notificationCenter];
    [notificationCenter postNotificationName:@"HMDMediaGroupsAggregateConsumerUpdatedAggregateDataNotification" object:selfCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of update aggregate data due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unstageNullDestinationForCurrentDestinationController
{
  stageManager = [(HMDMediaGroupsAggregateConsumer *)self stageManager];
  [stageManager unstageNullDestinationForCurrentDestinationController];
}

- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stageManager = [(HMDMediaGroupsAggregateConsumer *)self stageManager];
  [stageManager stageNullDestinationForCurrentDestinationControllerIdentifier:identifierCopy];
}

- (void)startSubscriptionForHome:(id)home
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  mediaGroupsAggregateDataTopicName = [homeCopy mediaGroupsAggregateDataTopicName];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = mediaGroupsAggregateDataTopicName;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Subscribing to aggregated media group data with topic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  subscriptionProvider = [(HMDMediaGroupsAggregateConsumer *)selfCopy subscriptionProvider];
  v14 = mediaGroupsAggregateDataTopicName;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HMDMediaGroupsAggregateConsumer_startSubscriptionForHome___block_invoke;
  v13[3] = &unk_278689230;
  v13[4] = selfCopy;
  [subscriptionProvider registerConsumer:selfCopy topicFilters:v11 completion:v13];

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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Register consumer completed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDMediaGroupsAggregateConsumer_startSubscriptionForHome___block_invoke_17;
  v12[3] = &unk_278688EF8;
  v12[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopSubscription
{
  subscriptionProvider = [(HMDMediaGroupsAggregateConsumer *)self subscriptionProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HMDMediaGroupsAggregateConsumer_stopSubscription__block_invoke;
  v4[3] = &unk_27868A250;
  v4[4] = self;
  [subscriptionProvider unregisterConsumer:self completion:v4];
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unregister consumer completed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring media groups aggregate consumer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMediaGroupsAggregateConsumer *)selfCopy stopSubscription];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  v15 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring media groups aggregate consumer", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  stageManager = [(HMDMediaGroupsAggregateConsumer *)selfCopy stageManager];
  [stageManager configure];

  [(HMDMediaGroupsAggregateConsumer *)selfCopy startSubscriptionForHome:homeCopy];
  mediaSystemSetupMetricDispatcher = [homeCopy mediaSystemSetupMetricDispatcher];
  [(HMDMediaGroupsAggregateConsumer *)selfCopy setMediaSystemSetupMetricDispatcher:mediaSystemSetupMetricDispatcher];

  homeTheaterSetupMetricDispatcher = [homeCopy homeTheaterSetupMetricDispatcher];
  [(HMDMediaGroupsAggregateConsumer *)selfCopy setHomeTheaterSetupMetricDispatcher:homeTheaterSetupMetricDispatcher];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsAggregateData)aggregationData
{
  stageManager = [(HMDMediaGroupsAggregateConsumer *)self stageManager];
  aggregateData = [stageManager aggregateData];

  return aggregateData;
}

- (void)_trackHomeTheaterMetricsInAggregateData:(id)data
{
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  homeTheaterSetupMetricDispatcher = [(HMDMediaGroupsAggregateConsumer *)self homeTheaterSetupMetricDispatcher];
  v6 = homeTheaterSetupMetricDispatcher;
  if (homeTheaterSetupMetricDispatcher)
  {
    activeGroupIdentifier = [homeTheaterSetupMetricDispatcher activeGroupIdentifier];

    if (activeGroupIdentifier)
    {
      activeGroupIdentifier2 = [v6 activeGroupIdentifier];
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v12;
        v38 = 2112;
        v39 = activeGroupIdentifier2;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Check committed home theater UUID: %@ in aggregate data", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      destinationControllersData = [dataCopy destinationControllersData];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __75__HMDMediaGroupsAggregateConsumer__trackHomeTheaterMetricsInAggregateData___block_invoke;
      v34 = &unk_27867BC08;
      v14 = activeGroupIdentifier2;
      v35 = v14;
      v15 = [destinationControllersData na_firstObjectPassingTest:&v31];
      if (!v15)
      {
        goto LABEL_12;
      }

      activeMetricType = [v6 activeMetricType];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:activeMetricType];
        v21 = v30 = v17;
        *buf = 138543618;
        v37 = v20;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Attempting to mark request committed for metric type: %@", buf, 0x16u);

        v17 = v30;
      }

      objc_autoreleasePoolPop(v17);
      if (activeMetricType == 4)
      {
        destinationIdentifier = [v15 destinationIdentifier];

        if (destinationIdentifier)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (activeMetricType != 3)
        {
          goto LABEL_12;
        }

        destinationIdentifier2 = [v15 destinationIdentifier];

        if (!destinationIdentifier2)
        {
          goto LABEL_12;
        }
      }

      identifier = [v15 identifier];
      [v6 markRequestCommittedForGroupIdentifier:identifier metricType:activeMetricType error:0];

LABEL_12:
      goto LABEL_16;
    }
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@No home theater setup metric has been tracked", buf, 0xCu);
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

- (void)_trackMediaSystemMetricsInAggregateData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  mediaSystemSetupMetricDispatcher = [(HMDMediaGroupsAggregateConsumer *)self mediaSystemSetupMetricDispatcher];
  v6 = mediaSystemSetupMetricDispatcher;
  if (mediaSystemSetupMetricDispatcher)
  {
    activeGroupIdentifier = [mediaSystemSetupMetricDispatcher activeGroupIdentifier];

    if (activeGroupIdentifier)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Check committed media system in aggregate data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      activeGroupIdentifier2 = [v6 activeGroupIdentifier];
      groups = [dataCopy groups];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__HMDMediaGroupsAggregateConsumer__trackMediaSystemMetricsInAggregateData___block_invoke;
      v23[3] = &unk_278689080;
      v14 = activeGroupIdentifier2;
      v24 = v14;
      v15 = [groups na_firstObjectPassingTest:v23];
      activeMetricType = [v6 activeMetricType];
      if (v15 && activeMetricType == 1)
      {
        v17 = 1;
      }

      else
      {
        if (v15 || activeMetricType != 2)
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
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@No media system setup metric has been tracked", buf, 0xCu);
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

- (void)commitAggregationData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = dataCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Committing aggregation data %@ for consumer", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  stageManager = [(HMDMediaGroupsAggregateConsumer *)selfCopy stageManager];
  [stageManager commitAggregateData:dataCopy];

  [(HMDMediaGroupsAggregateConsumer *)selfCopy _trackMediaSystemMetricsInAggregateData:dataCopy];
  [(HMDMediaGroupsAggregateConsumer *)selfCopy _trackHomeTheaterMetricsInAggregateData:dataCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsAggregateConsumer)initWithIdentifier:(id)identifier subscriptionProvider:(id)provider notificationCenter:(id)center stageManager:(id)manager
{
  identifierCopy = identifier;
  providerCopy = provider;
  centerCopy = center;
  managerCopy = manager;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!providerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!centerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = managerCopy;
  if (!managerCopy)
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

    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v16->_subscriptionProvider, provider);
    objc_storeStrong(&v16->_notificationCenter, center);
    objc_storeStrong(&v16->_stageManager, manager);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_56974 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_56974, &__block_literal_global_26_56975);
  }

  v3 = logCategory__hmf_once_v19_56976;

  return v3;
}

void __46__HMDMediaGroupsAggregateConsumer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_56976;
  logCategory__hmf_once_v19_56976 = v1;
}

@end