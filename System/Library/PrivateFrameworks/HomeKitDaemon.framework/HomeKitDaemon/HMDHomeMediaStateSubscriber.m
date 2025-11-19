@interface HMDHomeMediaStateSubscriber
+ (id)logCategory;
+ (id)shortDescription;
- (HMDHomeMediaStateSubscriber)initWithHomeUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 remoteSubscriptionProvider:(id)a6 localSubscriptionProvider:(id)a7;
- (HMDHomeMediaStateSubscriberDataSource)dataSource;
- (id)logIdentifier;
- (id)nonCurrentAccessoryUUIDs;
- (id)topicsForAccessoryUUID:(void *)a1 homeUUID:(void *)a2;
- (void)_localSubscribeForAppleMediaState:(void *)a3 forAccessories:;
- (void)_subscribeForAppleMediaState:(void *)a3 forAccessories:(void *)a4 subscriptionToken:;
- (void)localSubscribeForAppleMediaState;
- (void)localSubscribeForAppleMediaStateForAccessory:(id)a3;
- (void)localUnsubscribeForAppleMediaState;
- (void)localUnsubscribeForAppleMediaStateForAccessory:(id)a3;
- (void)processEvent:(void *)a3 topic:;
- (void)subscribeForAppleMediaStateForAccessory:(id)a3 subscriptionToken:(id)a4;
- (void)subscribeForAppleMediaStateWithSubscriptionToken:(id)a3;
- (void)unsubscribeForAppleMediaStateForAccessory:(id)a3 subscriptionToken:(id)a4;
- (void)unsubscribeForAppleMediaStateWithSubscriptionToken:(id)a3;
@end

@implementation HMDHomeMediaStateSubscriber

- (HMDHomeMediaStateSubscriberDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeMediaStateSubscriber *)self homeUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)processEvent:(void *)a3 topic:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDHomeMediaStateSubscriber_processEvent_topic___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void __50__HMDHomeMediaStateSubscriber_processEvent_topic___block_invoke(uint64_t a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [v1 workQueue];
    dispatch_assert_queue_V2(v5);

    v6 = [MEMORY[0x277CD19F0] decodeTopic:v4];
    v7 = [v6 asAccessoryTopic];

    if (v7)
    {
      v8 = [v1 homeUUID];
      v9 = [v7 homeUUID];
      v10 = [v8 hmf_isEqualToUUID:v9];

      if (v10)
      {
        v11 = [v7 accessoryEventTopicSuffixID];
        if (v11 == *MEMORY[0x277CCEA68])
        {
          v12 = objc_alloc(MEMORY[0x277CD1700]);
          v13 = [v3 encodedData];
          v14 = [v12 initWithProtoData:v13];

          if (v14)
          {
            v15 = [v7 accessoryUUID];
            v16 = v14;
            v17 = v15;
            v18 = [v1 workQueue];
            dispatch_assert_queue_V2(v18);

            v19 = [v1 dataSource];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 currentAccessoryUUIDsForMediaStateSubscriber:v1];
              v22 = v21;
              if (v21 && [v21 hmf_isEqualToUUID:v17])
              {
                v23 = v16;
                context = objc_autoreleasePoolPush();
                v24 = v1;
                v25 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v102 = v22;
                  v27 = v26 = v20;
                  *buf = 138543874;
                  v114 = v27;
                  v115 = 2112;
                  v116 = v17;
                  v117 = 2112;
                  v118 = v23;
                  _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Not updating Media State for current accessory: %@ to: %@", buf, 0x20u);

                  v20 = v26;
                  v22 = v102;
                }

                objc_autoreleasePoolPop(context);
                v16 = v23;
              }

              else
              {
                contexta = v17;
                v53 = [v20 mediaProfileForAppleMediaAccessoryUUID:v17 mediaStateSubscriber:v1];
                v99 = objc_autoreleasePoolPush();
                v54 = v1;
                v55 = HMFGetOSLogHandle();
                v56 = v55;
                if (v53)
                {
                  v103 = v22;
                  v106 = v20;
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                  {
                    v57 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    v114 = v57;
                    v115 = 2112;
                    v116 = contexta;
                    v117 = 2112;
                    v118 = v16;
                    _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Updating Media State for accessory: %@ to: %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v99);
                  v58 = [MEMORY[0x277CBEB38] dictionary];
                  v59 = [v16 mediaIdentifier];
                  [v58 setObject:v59 forKeyedSubscript:*MEMORY[0x277CD0920]];

                  v60 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "playbackState")}];
                  [v58 setObject:v60 forKeyedSubscript:*MEMORY[0x277CD0938]];

                  v61 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "shuffleState")}];
                  [v58 setObject:v61 forKeyedSubscript:*MEMORY[0x277CD0990]];

                  v62 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "repeatState")}];
                  [v58 setObject:v62 forKeyedSubscript:*MEMORY[0x277CD0960]];

                  v63 = MEMORY[0x277CCABB0];
                  [v16 volume];
                  v64 = [v63 numberWithDouble:?];
                  [v58 setObject:v64 forKeyedSubscript:*MEMORY[0x277CD09B0]];

                  v65 = [v53 uniqueIdentifier];
                  v66 = [v65 UUIDString];
                  [v58 setObject:v66 forKeyedSubscript:*MEMORY[0x277CD0910]];

                  v67 = [v53 mediaSession];
                  v68 = [v67 uuid];
                  [v68 UUIDString];
                  v70 = v69 = v16;
                  [v58 setObject:v70 forKeyedSubscript:*MEMORY[0x277CD09A8]];

                  v16 = v69;
                  v71 = [v58 copy];
                  [v53 handleSessionUpdatedNotification:v71];

                  v22 = v103;
                  v20 = v106;
                }

                else
                {
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v104 = v22;
                    v96 = v95 = v20;
                    *buf = 138543618;
                    v114 = v96;
                    v115 = 2112;
                    v116 = contexta;
                    _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@No media profile found for accessory %@", buf, 0x16u);

                    v20 = v95;
                    v22 = v104;
                  }

                  objc_autoreleasePoolPop(v99);
                  v53 = 0;
                }

                v17 = contexta;
              }
            }

            else
            {
              v72 = v16;
              v73 = objc_autoreleasePoolPush();
              v74 = v1;
              v75 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v76 = HMFGetLogIdentifier();
                *buf = 138543618;
                v114 = v76;
                v115 = 2112;
                v116 = v17;
                _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@Unable to update media state for accessory : %@, nil data source", buf, 0x16u);

                v20 = 0;
              }

              objc_autoreleasePoolPop(v73);
              v16 = v72;
            }

LABEL_60:
            goto LABEL_61;
          }

          v47 = objc_autoreleasePoolPush();
          v48 = v1;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            v51 = [v3 encodedData];
            *buf = 138543874;
            v114 = v50;
            v115 = 2112;
            v116 = v4;
            v117 = 2112;
            v118 = v51;
            v52 = "%{public}@Skipping handling of accessory topic: %@ with bad media state payload: %@";
LABEL_39:
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, v52, buf, 0x20u);

            goto LABEL_40;
          }

          goto LABEL_40;
        }

        v33 = [v7 accessoryEventTopicSuffixID];
        if (v33 == *MEMORY[0x277CCEA90])
        {
          v34 = objc_alloc(MEMORY[0x277CD1730]);
          v35 = [v3 encodedData];
          v14 = [v34 initWithProtoData:v35];

          if (v14)
          {
            v36 = [v7 accessoryUUID];
            v16 = v14;
            v17 = v36;
            v37 = [v1 workQueue];
            dispatch_assert_queue_V2(v37);

            v38 = [v1 dataSource];
            v39 = v38;
            if (v38)
            {
              v40 = [v38 currentAccessoryUUIDsForMediaStateSubscriber:v1];
              v41 = v40;
              if (v40 && [v40 hmf_isEqualToUUID:v17])
              {
                v105 = v41;
                v42 = v16;
                v43 = objc_autoreleasePoolPush();
                v44 = v1;
                v45 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v46 = contextc = v43;
                  *buf = 138543874;
                  v114 = v46;
                  v115 = 2112;
                  v116 = v17;
                  v117 = 2112;
                  v118 = v42;
                  _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Not updating sleep wake state for current accessory: %@ to: %@", buf, 0x20u);

                  v43 = contextc;
                }

                objc_autoreleasePoolPop(v43);
                v16 = v42;
                v41 = v105;
              }

              else
              {
                contextb = v17;
                v77 = [v39 mediaProfileForAppleMediaAccessoryUUID:v17 mediaStateSubscriber:v1];
                v101 = objc_autoreleasePoolPush();
                v78 = v1;
                v79 = HMFGetOSLogHandle();
                v80 = v79;
                if (v77)
                {
                  v107 = v41;
                  v100 = v39;
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                  {
                    v81 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    v114 = v81;
                    v115 = 2112;
                    v116 = contextb;
                    v117 = 2112;
                    v118 = v16;
                    _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_INFO, "%{public}@Updating sleep wake state for accessory: %@ to: %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v101);
                  v82 = [MEMORY[0x277CBEB38] dictionary];
                  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "sleepWakeState")}];
                  [v82 setObject:v83 forKeyedSubscript:*MEMORY[0x277CD09A0]];

                  v84 = [v77 uniqueIdentifier];
                  v85 = [v84 UUIDString];
                  [v82 setObject:v85 forKeyedSubscript:*MEMORY[0x277CD0910]];

                  v86 = [v77 mediaSession];
                  v87 = [v86 uuid];
                  [v87 UUIDString];
                  v89 = v88 = v16;
                  [v82 setObject:v89 forKeyedSubscript:*MEMORY[0x277CD09A8]];

                  v16 = v88;
                  v90 = [v82 copy];
                  [v77 handleSessionUpdatedNotification:v90];

                  v39 = v100;
                  v41 = v107;
                }

                else
                {
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    v97 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v114 = v97;
                    v115 = 2112;
                    v116 = contextb;
                    _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_ERROR, "%{public}@No media profile found for accessory %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v101);
                  v77 = 0;
                }

                v17 = contextb;
              }
            }

            else
            {
              v91 = objc_autoreleasePoolPush();
              v92 = v1;
              v93 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v94 = contextd = v16;
                *buf = 138543618;
                v114 = v94;
                v115 = 2112;
                v116 = v17;
                _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_ERROR, "%{public}@Unable to update sleep wake state for accessory : %@, nil data source", buf, 0x16u);

                v16 = contextd;
              }

              objc_autoreleasePoolPop(v91);
            }

            goto LABEL_60;
          }

          v47 = objc_autoreleasePoolPush();
          v48 = v1;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            v51 = [v3 encodedData];
            *buf = 138543874;
            v114 = v50;
            v115 = 2112;
            v116 = v4;
            v117 = 2112;
            v118 = v51;
            v52 = "%{public}@Skipping handling of accessory topic: %@ with bad sleep wake state payload: %@";
            goto LABEL_39;
          }

LABEL_40:

          objc_autoreleasePoolPop(v47);
LABEL_61:

          goto LABEL_62;
        }

        v28 = objc_autoreleasePoolPush();
        v29 = v1;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v114 = v31;
          v115 = 2112;
          v116 = v4;
          v32 = "%{public}@Skipping handling of unexpected accessory topic: %@";
          goto LABEL_16;
        }

LABEL_17:

        objc_autoreleasePoolPop(v28);
LABEL_62:

        goto LABEL_63;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = v1;
      v30 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v114 = v31;
      v115 = 2112;
      v116 = v4;
      v32 = "%{public}@Skipping handling of accessory topic: %@ with unexpected home";
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v1;
      v30 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v114 = v31;
      v115 = 2112;
      v116 = v4;
      v32 = "%{public}@Skipping handling of non accessory topic: %@";
    }

LABEL_16:
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);

    goto LABEL_17;
  }

LABEL_63:

  v98 = *MEMORY[0x277D85DE8];
}

- (void)localSubscribeForAppleMediaStateForAccessory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaStateSubscriber *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 currentAccessoryUUIDsForMediaStateSubscriber:self];
    if (v7 && ([v4 uuid], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hmf_isEqualToUUID:", v7), v8, v9))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v13;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Skipping local subscribe to media state for current accessory : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v14 = [(HMDHomeMediaStateSubscriber *)self workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __76__HMDHomeMediaStateSubscriber_localSubscribeForAppleMediaStateForAccessory___block_invoke;
      v20[3] = &unk_27868A750;
      v20[4] = self;
      v21 = v4;
      dispatch_async(v14, v20);
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
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to locally subscribe to media state for accessory : %@, nil data source", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __76__HMDHomeMediaStateSubscriber_localSubscribeForAppleMediaStateForAccessory___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuid];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(HMDHomeMediaStateSubscriber *)v1 _localSubscribeForAppleMediaState:v3 forAccessories:?];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_localSubscribeForAppleMediaState:(void *)a3 forAccessories:
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = a3;
  if (a1)
  {
    v4 = [a1 workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v20;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      if (a2)
      {
        v10 = v5;
      }

      else
      {
        v10 = v6;
      }

      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = [a1 homeUUID];
          v14 = [HMDHomeMediaStateSubscriber topicsForAccessoryUUID:v12 homeUUID:v13];

          [v10 addObjectsFromArray:v14];
          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    if ([v5 count] || objc_msgSend(v6, "count"))
    {
      objc_initWeak(&location, a1);
      v15 = [a1 localSubscriptionProvider];
      v16 = [v5 copy];
      v17 = [v6 copy];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __80__HMDHomeMediaStateSubscriber__localSubscribeForAppleMediaState_forAccessories___block_invoke;
      v21[3] = &unk_27867D1E0;
      objc_copyWeak(&v23, &location);
      v24 = a2;
      v22 = v7;
      [v15 changeRegistrationsForConsumer:a1 topicFilterAdditions:v16 topicFilterRemovals:v17 completion:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)topicsForAccessoryUUID:(void *)a1 homeUUID:(void *)a2
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD16F0];
  v4 = *MEMORY[0x277CCEA68];
  v5 = a2;
  v6 = a1;
  v7 = [v3 topicFromSuffixID:v4 homeUUID:v5 accessoryUUID:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA90] homeUUID:v5 accessoryUUID:v6];

  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __80__HMDHomeMediaStateSubscriber__localSubscribeForAppleMediaState_forAccessories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    *buf = 138543874;
    if (v13)
    {
      v15 = @"subscribe";
    }

    else
    {
      v15 = @"unsubscribe";
    }

    v22 = v11;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did %@ locally to apple media state for accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([v5 count] && v9)
  {
    v16 = [v9 workQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__HMDHomeMediaStateSubscriber__localSubscribeForAppleMediaState_forAccessories___block_invoke_12;
    v18[3] = &unk_27868A750;
    v19 = v5;
    v20 = v9;
    dispatch_async(v16, v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HMDHomeMediaStateSubscriber__localSubscribeForAppleMediaState_forAccessories___block_invoke_12(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__HMDHomeMediaStateSubscriber__localSubscribeForAppleMediaState_forAccessories___block_invoke_2;
  v3[3] = &unk_278688EF8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v3];
}

- (void)localUnsubscribeForAppleMediaStateForAccessory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeMediaStateSubscriber *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 currentAccessoryUUIDsForMediaStateSubscriber:self];
    if (v7 && ([v4 uuid], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hmf_isEqualToUUID:", v7), v8, v9))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v13;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Skipping local unsubscribe to media state for current accessory : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v14 = [(HMDHomeMediaStateSubscriber *)self workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__HMDHomeMediaStateSubscriber_localUnsubscribeForAppleMediaStateForAccessory___block_invoke;
      v20[3] = &unk_27868A750;
      v20[4] = self;
      v21 = v4;
      dispatch_async(v14, v20);
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
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to locally unsubscribe to media state for accessory : %@, nil data source", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __78__HMDHomeMediaStateSubscriber_localUnsubscribeForAppleMediaStateForAccessory___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuid];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(HMDHomeMediaStateSubscriber *)v1 _localSubscribeForAppleMediaState:v3 forAccessories:?];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)localUnsubscribeForAppleMediaState
{
  v3 = [(HMDHomeMediaStateSubscriber *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDHomeMediaStateSubscriber_localUnsubscribeForAppleMediaState__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __65__HMDHomeMediaStateSubscriber_localUnsubscribeForAppleMediaState__block_invoke(uint64_t a1)
{
  v2 = [(HMDHomeMediaStateSubscriber *)*(a1 + 32) nonCurrentAccessoryUUIDs];
  [(HMDHomeMediaStateSubscriber *)*(a1 + 32) _localSubscribeForAppleMediaState:v2 forAccessories:?];
}

- (id)nonCurrentAccessoryUUIDs
{
  v1 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 dataSource];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 appleMediaAccessoryUUIDsForMediaStateSubscriber:v1];
      if ([v4 count])
      {
        v5 = [v3 currentAccessoryUUIDsForMediaStateSubscriber:v1];
        v6 = v5;
        if (v5)
        {
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __55__HMDHomeMediaStateSubscriber_nonCurrentAccessoryUUIDs__block_invoke;
          v14[3] = &unk_27868A1B0;
          v15 = v5;
          v7 = [v4 na_filter:v14];

          v4 = v7;
        }

        v4 = v4;

        v1 = v4;
      }

      else
      {
        v1 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v1;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to get non-current accessory uuids due to nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v1 = MEMORY[0x277CBEBF8];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)localSubscribeForAppleMediaState
{
  v3 = [(HMDHomeMediaStateSubscriber *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDHomeMediaStateSubscriber_localSubscribeForAppleMediaState__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __63__HMDHomeMediaStateSubscriber_localSubscribeForAppleMediaState__block_invoke(uint64_t a1)
{
  v2 = [(HMDHomeMediaStateSubscriber *)*(a1 + 32) nonCurrentAccessoryUUIDs];
  [(HMDHomeMediaStateSubscriber *)*(a1 + 32) _localSubscribeForAppleMediaState:v2 forAccessories:?];
}

- (void)unsubscribeForAppleMediaStateForAccessory:(id)a3 subscriptionToken:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeMediaStateSubscriber *)self dataSource];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 currentAccessoryUUIDsForMediaStateSubscriber:self];
    if (v10 && ([v6 uuid], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hmf_isEqualToUUID:", v10), v11, v12))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v16;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping unsubscribe to media state for current accessory : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v17 = [(HMDHomeMediaStateSubscriber *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__HMDHomeMediaStateSubscriber_unsubscribeForAppleMediaStateForAccessory_subscriptionToken___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v24 = v6;
      v25 = v7;
      dispatch_async(v17, block);
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
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to unsubscribe to media state for accessory : %@, nil data source", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __91__HMDHomeMediaStateSubscriber_unsubscribeForAppleMediaStateForAccessory_subscriptionToken___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(HMDHomeMediaStateSubscriber *)v2 _subscribeForAppleMediaState:v4 forAccessories:*(a1 + 48) subscriptionToken:?];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeForAppleMediaState:(void *)a3 forAccessories:(void *)a4 subscriptionToken:
{
  v45 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v34 = a4;
  if (a1)
  {
    v7 = [a1 workQueue];
    dispatch_assert_queue_V2(v7);

    v32 = [MEMORY[0x277CBEB18] array];
    v31 = [MEMORY[0x277CBEB18] array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v30;
    v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v8)
    {
      v9 = *v41;
      do
      {
        v10 = 0;
        do
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v40 + 1) + 8 * v10);
          v12 = [a1 homeUUID];
          v13 = [HMDHomeMediaStateSubscriber topicsForAccessoryUUID:v11 homeUUID:v12];

          v14 = [a1 subscribedAccessoriesToTokenMap];
          v15 = [v14 objectForKeyedSubscript:v11];
          v16 = v15;
          if (a2)
          {
            v17 = v15 == 0;

            if (v17)
            {
              v18 = [MEMORY[0x277CBEB58] set];
              v19 = [a1 subscribedAccessoriesToTokenMap];
              [v19 setObject:v18 forKeyedSubscript:v11];

              [v32 addObjectsFromArray:v13];
            }

            v20 = [a1 subscribedAccessoriesToTokenMap];
            v21 = [v20 objectForKeyedSubscript:v11];
            [v21 addObject:v34];
          }

          else
          {
            [v15 removeObject:v34];

            v22 = [a1 subscribedAccessoriesToTokenMap];
            v23 = [v22 objectForKeyedSubscript:v11];
            v24 = [v23 count] == 0;

            if (v24)
            {
              v25 = [a1 subscribedAccessoriesToTokenMap];
              [v25 setObject:0 forKeyedSubscript:v11];

              [v31 addObjectsFromArray:v13];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v8);
    }

    if ([v32 count] || objc_msgSend(v31, "count"))
    {
      objc_initWeak(&location, a1);
      v26 = [a1 remoteSubscriptionProvider];
      v27 = [v32 copy];
      v28 = [v31 copy];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __93__HMDHomeMediaStateSubscriber__subscribeForAppleMediaState_forAccessories_subscriptionToken___block_invoke;
      v35[3] = &unk_27867D1E0;
      objc_copyWeak(&v37, &location);
      v38 = a2;
      v36 = obj;
      [v26 changeRegistrationsForConsumer:a1 topicFilterAdditions:v27 topicFilterRemovals:v28 completion:v35];

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeMediaStateSubscriber__subscribeForAppleMediaState_forAccessories_subscriptionToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    *buf = 138543874;
    if (v13)
    {
      v15 = @"subscribe";
    }

    else
    {
      v15 = @"unsubscribe";
    }

    v22 = v11;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did %@ to apple media state for accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([v5 count] && v9)
  {
    v16 = [v9 workQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__HMDHomeMediaStateSubscriber__subscribeForAppleMediaState_forAccessories_subscriptionToken___block_invoke_9;
    v18[3] = &unk_27868A750;
    v19 = v5;
    v20 = v9;
    dispatch_async(v16, v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __93__HMDHomeMediaStateSubscriber__subscribeForAppleMediaState_forAccessories_subscriptionToken___block_invoke_9(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__HMDHomeMediaStateSubscriber__subscribeForAppleMediaState_forAccessories_subscriptionToken___block_invoke_2;
  v3[3] = &unk_278688EF8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v3];
}

- (void)subscribeForAppleMediaStateForAccessory:(id)a3 subscriptionToken:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeMediaStateSubscriber *)self dataSource];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 currentAccessoryUUIDsForMediaStateSubscriber:self];
    if (v10 && ([v6 uuid], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hmf_isEqualToUUID:", v10), v11, v12))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v16;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping subscribe to media state for current accessory : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v17 = [(HMDHomeMediaStateSubscriber *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__HMDHomeMediaStateSubscriber_subscribeForAppleMediaStateForAccessory_subscriptionToken___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v24 = v6;
      v25 = v7;
      dispatch_async(v17, block);
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
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to subscribe to media state for accessory : %@, nil data source", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __89__HMDHomeMediaStateSubscriber_subscribeForAppleMediaStateForAccessory_subscriptionToken___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(HMDHomeMediaStateSubscriber *)v2 _subscribeForAppleMediaState:v4 forAccessories:*(a1 + 48) subscriptionToken:?];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeForAppleMediaStateWithSubscriptionToken:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaStateSubscriber *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMDHomeMediaStateSubscriber_unsubscribeForAppleMediaStateWithSubscriptionToken___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __82__HMDHomeMediaStateSubscriber_unsubscribeForAppleMediaStateWithSubscriptionToken___block_invoke(uint64_t a1)
{
  v2 = [(HMDHomeMediaStateSubscriber *)*(a1 + 32) nonCurrentAccessoryUUIDs];
  [(HMDHomeMediaStateSubscriber *)*(a1 + 32) _subscribeForAppleMediaState:v2 forAccessories:*(a1 + 40) subscriptionToken:?];
}

- (void)subscribeForAppleMediaStateWithSubscriptionToken:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeMediaStateSubscriber *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDHomeMediaStateSubscriber_subscribeForAppleMediaStateWithSubscriptionToken___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __80__HMDHomeMediaStateSubscriber_subscribeForAppleMediaStateWithSubscriptionToken___block_invoke(uint64_t a1)
{
  v2 = [(HMDHomeMediaStateSubscriber *)*(a1 + 32) nonCurrentAccessoryUUIDs];
  [(HMDHomeMediaStateSubscriber *)*(a1 + 32) _subscribeForAppleMediaState:v2 forAccessories:*(a1 + 40) subscriptionToken:?];
}

- (HMDHomeMediaStateSubscriber)initWithHomeUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 remoteSubscriptionProvider:(id)a6 localSubscriptionProvider:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HMDHomeMediaStateSubscriber;
  v17 = [(HMDHomeMediaStateSubscriber *)&v23 init];
  if (v17)
  {
    v18 = [v12 copy];
    homeUUID = v17->_homeUUID;
    v17->_homeUUID = v18;

    objc_storeStrong(&v17->_workQueue, a4);
    objc_storeStrong(&v17->_remoteSubscriptionProvider, a6);
    objc_storeStrong(&v17->_localSubscriptionProvider, a7);
    v20 = [MEMORY[0x277CBEB38] dictionary];
    subscribedAccessoriesToTokenMap = v17->_subscribedAccessoriesToTokenMap;
    v17->_subscribedAccessoriesToTokenMap = v20;

    objc_storeWeak(&v17->_dataSource, v14);
  }

  return v17;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_176804 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_176804, &__block_literal_global_176805);
  }

  v3 = logCategory__hmf_once_v25_176806;

  return v3;
}

void __42__HMDHomeMediaStateSubscriber_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_176806;
  logCategory__hmf_once_v25_176806 = v1;
}

@end