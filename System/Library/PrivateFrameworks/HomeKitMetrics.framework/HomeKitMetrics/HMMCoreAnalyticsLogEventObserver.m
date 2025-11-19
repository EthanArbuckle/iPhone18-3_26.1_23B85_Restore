@interface HMMCoreAnalyticsLogEventObserver
+ (id)logCategory;
- (BOOL)filterAcceptsEvent:(id)a3;
- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)a3 filters:(id)a4;
- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)a3 filters:(id)a4 submissionBlock:(id)a5;
- (HMMCoreAnalyticsLogEventObserverDelegate)delegate;
- (id)dictionaryFromEvent:(id)a3;
- (void)addAccessoryDetailsForLogEvent:(id)a3 toEventDictionary:(id)a4;
- (void)addErrorDetailsForLogEvent:(id)a3 toEventDictionary:(id)a4;
- (void)addHomeSummaryForLogEvent:(id)a3 toEventDictionary:(id)a4;
- (void)observeEvent:(id)a3;
@end

@implementation HMMCoreAnalyticsLogEventObserver

- (HMMCoreAnalyticsLogEventObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observeEvent:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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
  v9 = v4;
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
    v12 = [v11 coreAnalyticsEventName];
    if ([(HMMCoreAnalyticsLogEventObserver *)v6 filterAcceptsEvent:v11])
    {
      v13 = [(HMMCoreAnalyticsLogEventObserver *)v6 submissionBlock];
      v14 = [(HMMCoreAnalyticsLogEventObserver *)v6 dictionaryFromEvent:v11];
      (v13)[2](v13, v12, v14);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2114;
        v23 = v12;
        _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Event %{public}@ is not submitted due to filtering.", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)filterAcceptsEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HMMCoreAnalyticsLogEventObserver *)self filters];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v13 + 1) + 8 * i) isEventInSample:v4])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)dictionaryFromEvent:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 coreAnalyticsEventDictionary];
  v6 = [v5 mutableCopy];

  v7 = [(HMMCoreAnalyticsLogEventObserver *)self delegate];
  [v7 addCommonDimensionsToEventDictionary:v6];
  [(HMMCoreAnalyticsLogEventObserver *)self addErrorDetailsForLogEvent:v4 toEventDictionary:v6];
  [(HMMCoreAnalyticsLogEventObserver *)self addAccessoryDetailsForLogEvent:v4 toEventDictionary:v6];
  v8 = [v4 error];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
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
  [(HMMCoreAnalyticsLogEventObserver *)v10 addHomeSummaryForLogEvent:v4 toEventDictionary:v6];
  v16 = [v6 copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)addErrorDetailsForLogEvent:(id)a3 toEventDictionary:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 error];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v12;
      v41 = 2114;
      v42 = objc_opt_class();
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_22B074000, v11, OS_LOG_TYPE_INFO, "%{public}@[CA] Adding error details from %{public}@: %@", buf, 0x20u);
    }

    v38 = v6;

    objc_autoreleasePoolPop(v9);
    v13 = [v8 domain];
    [v7 setObject:v13 forKeyedSubscript:@"errorDomain"];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
    [v7 setObject:v14 forKeyedSubscript:@"errorCode"];

    v15 = [v8 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"InternalErrorMarker"];

    if (v16)
    {
      [v7 setObject:v16 forKeyedSubscript:@"errorMarker"];
    }

    v17 = [v8 underlyingErrors];
    v18 = [v17 firstObject];

    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "code")}];
      [v7 setObject:v19 forKeyedSubscript:@"underlyingErrorCode"];

      v20 = [v18 domain];
      [v7 setObject:v20 forKeyedSubscript:@"underlyingErrorDomain"];
    }

    v21 = [v18 underlyingErrors];
    v22 = [v21 firstObject];

    if (v22)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "code")}];
      [v7 setObject:v23 forKeyedSubscript:@"underlyingErrorCode2"];

      v24 = [v22 domain];
      [v7 setObject:v24 forKeyedSubscript:@"underlyingErrorDomain2"];
    }

    v25 = [v22 underlyingErrors];
    v26 = [v25 firstObject];

    if (v26)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "code")}];
      [v7 setObject:v27 forKeyedSubscript:@"underlyingErrorCode3"];

      v28 = [v26 domain];
      [v7 setObject:v28 forKeyedSubscript:@"underlyingErrorDomain3"];
    }

    v29 = [v13 length] - 6;
    if (v29 >= 1)
    {
      v30 = [v13 substringFromIndex:v29];
      v31 = [v30 isEqualToString:@"Domain"];

      if (v31)
      {
        v32 = [v13 substringToIndex:v29];

        v13 = v32;
      }
    }

    v33 = MEMORY[0x277CCACA8];
    v34 = [v8 code];
    v6 = v38;
    if (v16)
    {
      [v33 stringWithFormat:@"%@%zd(%ld)", v13, v34, objc_msgSend(v16, "longValue")];
    }

    else
    {
      [v33 stringWithFormat:@"%@%zd", v13, v34, v37];
    }
    v35 = ;
    [v7 setObject:v35 forKeyedSubscript:@"error"];
    [v7 setObject:&unk_283EF3D08 forKeyedSubscript:@"numErrorEvents"];
  }

  else
  {
    [v7 setObject:&unk_283EF3D20 forKeyedSubscript:@"errorCode"];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)addAccessoryDetailsForLogEvent:(id)a3 toEventDictionary:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 coreAnalyticsEventOptions] & 4) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(HMMCoreAnalyticsLogEventObserver *)self delegate];
      v9 = [v6 accessoryIdentifier];
      [v8 addDimensionsForAccessoryIdentifier:v9 toEventDictionary:v7];

      if (([v6 coreAnalyticsEventOptions] & 0x80000000) != 0)
      {
        v10 = [v7 objectForKeyedSubscript:@"accessoryManufacturer"];
        [v7 setObject:v10 forKeyedSubscript:@"cameraManufacturer"];

        v11 = [v7 objectForKeyedSubscript:@"accessoryModel"];
        [v7 setObject:v11 forKeyedSubscript:@"cameraModel"];

        v12 = [v7 objectForKeyedSubscript:@"accessoryFirmwareVersion"];
        [v7 setObject:v12 forKeyedSubscript:@"cameraFirmware"];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
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

- (void)addHomeSummaryForLogEvent:(id)a3 toEventDictionary:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMCoreAnalyticsLogEventObserver *)self delegate];
  if ([v6 coreAnalyticsEventOptions])
  {
    [v8 addAggregatedHomeDimensionsToEventDictionary:v7];
  }

  if (([v6 coreAnalyticsEventOptions] & 2) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 homeUUID];
      if (v9)
      {
        v10 = v9;
        [v8 addDimensionsForHome:v9 toEventDictionary:v7];
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

- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)a3 filters:(id)a4 submissionBlock:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = HMMCoreAnalyticsLogEventObserver;
  v11 = [(HMMCoreAnalyticsLogEventObserver *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    filters = v12->_filters;
    v12->_filters = v13;

    v15 = _Block_copy(v10);
    submissionBlock = v12->_submissionBlock;
    v12->_submissionBlock = v15;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v9;
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

- (HMMCoreAnalyticsLogEventObserver)initWithDelegate:(id)a3 filters:(id)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HMMCoreAnalyticsLogEventObserver_initWithDelegate_filters___block_invoke;
  v8[3] = &unk_2786F8FE8;
  v9 = self;
  v6 = [(HMMCoreAnalyticsLogEventObserver *)v9 initWithDelegate:a3 filters:a4 submissionBlock:v8];

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