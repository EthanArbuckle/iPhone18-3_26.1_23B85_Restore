@interface HMMCoreAnalyticsLogEventObserver
+ (id)logCategory;
- (BOOL)filterAcceptsEvent:(id)event;
- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)delegate filters:(id)filters;
- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)delegate filters:(id)filters submissionBlock:(id)block;
- (HMMCoreAnalyticsLogEventObserverDelegate)delegate;
- (id)dictionaryFromEvent:(id)event;
- (void)addAccessoryDetailsForLogEvent:(id)event toEventDictionary:(id)dictionary;
- (void)addErrorDetailsForLogEvent:(id)event toEventDictionary:(id)dictionary;
- (void)addHomeSummaryForLogEvent:(id)event toEventDictionary:(id)dictionary;
- (void)observeEvent:(id)event;
@end

@implementation HMMCoreAnalyticsLogEventObserver

- (HMMCoreAnalyticsLogEventObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observeEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = objc_opt_class();
    _os_log_impl(&dword_22B074000, v7, OS_LOG_TYPE_INFO, "%{public}@[CA] Received event from dispatcher: %{public}@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    coreAnalyticsEventName = [v11 coreAnalyticsEventName];
    if ([(HMMCoreAnalyticsLogEventObserver *)selfCopy filterAcceptsEvent:v11])
    {
      submissionBlock = [(HMMCoreAnalyticsLogEventObserver *)selfCopy submissionBlock];
      v14 = [(HMMCoreAnalyticsLogEventObserver *)selfCopy dictionaryFromEvent:v11];
      (submissionBlock)[2](submissionBlock, coreAnalyticsEventName, v14);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2114;
        v23 = coreAnalyticsEventName;
        _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Event %{public}@ is not submitted due to filtering.", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)filterAcceptsEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  filters = [(HMMCoreAnalyticsLogEventObserver *)self filters];
  v6 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(filters);
        }

        if (![*(*(&v13 + 1) + 8 * i) isEventInSample:eventCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)dictionaryFromEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  coreAnalyticsEventDictionary = [eventCopy coreAnalyticsEventDictionary];
  v6 = [coreAnalyticsEventDictionary mutableCopy];

  delegate = [(HMMCoreAnalyticsLogEventObserver *)self delegate];
  [delegate addCommonDimensionsToEventDictionary:v6];
  [(HMMCoreAnalyticsLogEventObserver *)self addErrorDetailsForLogEvent:eventCopy toEventDictionary:v6];
  [(HMMCoreAnalyticsLogEventObserver *)self addAccessoryDetailsForLogEvent:eventCopy toEventDictionary:v6];
  error = [eventCopy error];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (error)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v13;
    v21 = 2114;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v6;
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v13 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v13;
    v21 = 2114;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v6;
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(&dword_22B074000, v14, v15, "%{public}@[CA] Submitting event: %{public}@/%@", &v19, 0x20u);

LABEL_7:
  objc_autoreleasePoolPop(v9);
  [v6 setObject:&unk_283EF3D08 forKeyedSubscript:@"numEvents"];
  [(HMMCoreAnalyticsLogEventObserver *)selfCopy addHomeSummaryForLogEvent:eventCopy toEventDictionary:v6];
  v16 = [v6 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)addErrorDetailsForLogEvent:(id)event toEventDictionary:(id)dictionary
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dictionaryCopy = dictionary;
  error = [eventCopy error];
  if (error)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v12;
      v41 = 2114;
      v42 = objc_opt_class();
      v43 = 2112;
      v44 = error;
      _os_log_impl(&dword_22B074000, v11, OS_LOG_TYPE_INFO, "%{public}@[CA] Adding error details from %{public}@: %@", buf, 0x20u);
    }

    v38 = eventCopy;

    objc_autoreleasePoolPop(v9);
    domain = [error domain];
    [dictionaryCopy setObject:domain forKeyedSubscript:@"errorDomain"];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(error, "code")}];
    [dictionaryCopy setObject:v14 forKeyedSubscript:@"errorCode"];

    userInfo = [error userInfo];
    v16 = [userInfo objectForKeyedSubscript:@"InternalErrorMarker"];

    if (v16)
    {
      [dictionaryCopy setObject:v16 forKeyedSubscript:@"errorMarker"];
    }

    underlyingErrors = [error underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "code")}];
      [dictionaryCopy setObject:v19 forKeyedSubscript:@"underlyingErrorCode"];

      domain2 = [firstObject domain];
      [dictionaryCopy setObject:domain2 forKeyedSubscript:@"underlyingErrorDomain"];
    }

    underlyingErrors2 = [firstObject underlyingErrors];
    firstObject2 = [underlyingErrors2 firstObject];

    if (firstObject2)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject2, "code")}];
      [dictionaryCopy setObject:v23 forKeyedSubscript:@"underlyingErrorCode2"];

      domain3 = [firstObject2 domain];
      [dictionaryCopy setObject:domain3 forKeyedSubscript:@"underlyingErrorDomain2"];
    }

    underlyingErrors3 = [firstObject2 underlyingErrors];
    firstObject3 = [underlyingErrors3 firstObject];

    if (firstObject3)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject3, "code")}];
      [dictionaryCopy setObject:v27 forKeyedSubscript:@"underlyingErrorCode3"];

      domain4 = [firstObject3 domain];
      [dictionaryCopy setObject:domain4 forKeyedSubscript:@"underlyingErrorDomain3"];
    }

    v29 = [domain length] - 6;
    if (v29 >= 1)
    {
      v30 = [domain substringFromIndex:v29];
      v31 = [v30 isEqualToString:@"Domain"];

      if (v31)
      {
        v32 = [domain substringToIndex:v29];

        domain = v32;
      }
    }

    v33 = MEMORY[0x277CCACA8];
    code = [error code];
    eventCopy = v38;
    if (v16)
    {
      [v33 stringWithFormat:@"%@%zd(%ld)", domain, code, objc_msgSend(v16, "longValue")];
    }

    else
    {
      [v33 stringWithFormat:@"%@%zd", domain, code, v37];
    }
    v35 = ;
    [dictionaryCopy setObject:v35 forKeyedSubscript:@"error"];
    [dictionaryCopy setObject:&unk_283EF3D08 forKeyedSubscript:@"numErrorEvents"];
  }

  else
  {
    [dictionaryCopy setObject:&unk_283EF3D20 forKeyedSubscript:@"errorCode"];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)addAccessoryDetailsForLogEvent:(id)event toEventDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dictionaryCopy = dictionary;
  if (([eventCopy coreAnalyticsEventOptions] & 4) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = [(HMMCoreAnalyticsLogEventObserver *)self delegate];
      accessoryIdentifier = [eventCopy accessoryIdentifier];
      [delegate addDimensionsForAccessoryIdentifier:accessoryIdentifier toEventDictionary:dictionaryCopy];

      if (([eventCopy coreAnalyticsEventOptions] & 0x80000000) != 0)
      {
        v10 = [dictionaryCopy objectForKeyedSubscript:@"accessoryManufacturer"];
        [dictionaryCopy setObject:v10 forKeyedSubscript:@"cameraManufacturer"];

        v11 = [dictionaryCopy objectForKeyedSubscript:@"accessoryModel"];
        [dictionaryCopy setObject:v11 forKeyedSubscript:@"cameraModel"];

        v12 = [dictionaryCopy objectForKeyedSubscript:@"accessoryFirmwareVersion"];
        [dictionaryCopy setObject:v12 forKeyedSubscript:@"cameraFirmware"];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v16;
        v20 = 2114;
        v21 = objc_opt_class();
        _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_ERROR, "%{public}@Core Analytics event uses accessory identifier but doesn't define accessoryIdentifier property: %{public}@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addHomeSummaryForLogEvent:(id)event toEventDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dictionaryCopy = dictionary;
  delegate = [(HMMCoreAnalyticsLogEventObserver *)self delegate];
  if ([eventCopy coreAnalyticsEventOptions])
  {
    [delegate addAggregatedHomeDimensionsToEventDictionary:dictionaryCopy];
  }

  if (([eventCopy coreAnalyticsEventOptions] & 2) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      homeUUID = [eventCopy homeUUID];
      if (homeUUID)
      {
        v10 = homeUUID;
        [delegate addDimensionsForHome:homeUUID toEventDictionary:dictionaryCopy];
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2114;
        v19 = objc_opt_class();
        _os_log_impl(&dword_22B074000, v13, OS_LOG_TYPE_ERROR, "%{public}@Core Analytics event uses home UUID but doesn't define homeUUID property: %{public}@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)delegate filters:(id)filters submissionBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  filtersCopy = filters;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = HMMCoreAnalyticsLogEventObserver;
  v11 = [(HMMCoreAnalyticsLogEventObserver *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    filters = v12->_filters;
    v12->_filters = weakObjectsHashTable;

    v15 = _Block_copy(blockCopy);
    submissionBlock = v12->_submissionBlock;
    v12->_submissionBlock = v15;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = filtersCopy;
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(NSHashTable *)v12->_filters addObject:*(*(&v24 + 1) + 8 * v21++), v24];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)delegate filters:(id)filters
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMMCoreAnalyticsLogEventObserver_initWithDelegate_filters___block_invoke;
  v8[3] = &unk_2786F8FE8;
  selfCopy = self;
  v6 = [(HMMCoreAnalyticsLogEventObserver *)selfCopy initWithDelegate:delegate filters:filters submissionBlock:v8];

  return v6;
}

void __61__HMMCoreAnalyticsLogEventObserver_initWithDelegate_filters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((AnalyticsSendEventLazy() & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_22B074000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Event %{public}@ was not in the CoreAnalytics config and was dropped", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_763 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_763, &__block_literal_global_764);
  }

  v3 = logCategory__hmf_once_v10_765;

  return v3;
}

uint64_t __47__HMMCoreAnalyticsLogEventObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v10_765 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end