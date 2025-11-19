@interface HMMTRIdentifyDevice
+ (id)logCategory;
- (HMMTRIdentifyDevice)initWithDevice:(id)a3 topology:(id)a4 queue:(id)a5;
- (id)bridgeIdentifyEndpointWithAggregatorEndpoint:(id)a3;
- (id)logIdentifier;
- (void)identifyBridgeWithAggregatorEndpoint:(id)a3 completionHandler:(id)a4;
@end

@implementation HMMTRIdentifyDevice

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMMTRIdentifyDevice *)self device];
  v4 = [v3 nodeID];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)bridgeIdentifyEndpointWithAggregatorEndpoint:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRIdentifyDevice *)self device];
  v6 = [(HMMTRIdentifyDevice *)self queue];
  v7 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:v5 endpoint:0 queue:v6];

  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [v7 readAttributePartsListWithParams:v8];

  if (v9)
  {
    v10 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v9 forIdentify:@"PartsList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [(HMMTRIdentifyDevice *)self device];
      v14 = [v4 unsignedIntValue];
      v15 = [(HMMTRIdentifyDevice *)self queue];
      v16 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:v13 endpoint:v14 queue:v15];

      v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v18 = [v16 readAttributePartsListWithParams:v17];

      if (v18)
      {
        v19 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v18 forIdentify:@"PartsList"];
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
          v64 = v12;
          v65 = v9;
          v22 = [v12 mutableCopy];
          [v22 removeObjectsInArray:v21];
          [v22 sortUsingSelector:sel_compare_];
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v67 objects:v71 count:16];
          if (v24)
          {
            v25 = v24;
            v66 = v21;
            v60 = v18;
            v61 = v16;
            v62 = v7;
            v63 = v4;
            v26 = *v68;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v68 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v67 + 1) + 8 * i);
                v29 = [(HMMTRIdentifyDevice *)self device];
                v30 = [v28 unsignedIntValue];
                v31 = [(HMMTRIdentifyDevice *)self queue];
                v32 = [(HMMTRIdentifyDevice *)self mtrClusterDescriptorWithDevice:v29 endpoint:v30 queue:v31];

                v33 = objc_alloc_init(MEMORY[0x277CD54D8]);
                v34 = [v32 readAttributeServerListWithParams:v33];

                if (v34)
                {
                  v35 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v34 forIdentify:@"ServerList"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v37 = v36;

                  if ([v37 containsObject:&unk_283EE9000])
                  {
                    v38 = v28;

                    goto LABEL_38;
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v67 objects:v71 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

            v38 = 0;
LABEL_38:
            v7 = v62;
            v4 = v63;
            v18 = v60;
            v16 = v61;
            v21 = v66;
          }

          else
          {
            v38 = 0;
          }

          v12 = v64;
          v9 = v65;
        }

        else
        {
          v52 = v18;
          v53 = objc_autoreleasePoolPush();
          v54 = self;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v57 = v56 = v16;
            *buf = 138543618;
            v73 = v57;
            v74 = 2112;
            v75 = v52;
            _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Bad aggregator parts list: %@", buf, 0x16u);

            v16 = v56;
          }

          objc_autoreleasePoolPop(v53);
          v38 = 0;
          v18 = v52;
          v21 = 0;
        }
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        v48 = self;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v51 = v50 = v16;
          *buf = 138543618;
          v73 = v51;
          v74 = 2112;
          v75 = v4;
          _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to read aggregator %@ parts list", buf, 0x16u);

          v16 = v50;
        }

        objc_autoreleasePoolPop(v47);
        v38 = 0;
        v18 = 0;
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v73 = v46;
        v74 = 2112;
        v75 = v9;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Bad root parts list: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
      v38 = 0;
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v42;
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to read root parts list", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)identifyBridgeWithAggregatorEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 unsignedIntValue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke;
  v11[3] = &unk_2786F0C38;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(HMMTRIdentifyDevice *)self _identifyClusterPresentAtEndpoint:v8 completionHandler:v11];
}

void __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke(id *a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = a1[4];
    if (a2)
    {
      v7 = [a1[5] unsignedIntValue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_2;
      v23[3] = &unk_2786F0C10;
      v8 = a1[5];
      v23[4] = a1[4];
      v24 = v8;
      v25 = a1[6];
      [v6 _issueIdentifyCommand:v7 completionHandler:v23];
    }

    else
    {
      v9 = [a1[4] bridgeIdentifyEndpointWithAggregatorEndpoint:a1[5]];
      v10 = v9;
      if (v9)
      {
        v11 = a1[4];
        v12 = [v9 unsignedIntValue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_74;
        v20[3] = &unk_2786F0C10;
        v20[4] = a1[4];
        v21 = v10;
        v22 = a1[6];
        [v11 _issueIdentifyCommand:v12 completionHandler:v20];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = a1[4];
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v27 = v16;
          _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@No endpoint found to identify bridge", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        v17 = a1[6];
        v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
        v17[2](v17, v18);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Identify on aggregator %@ failed", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Identify on aggregator %@ successful", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__HMMTRIdentifyDevice_identifyBridgeWithAggregatorEndpoint_completionHandler___block_invoke_74(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Identify on endpoint %@ for bridge failed", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Identify on endpoint %@ for bridge successful", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __62__HMMTRIdentifyDevice_identifyWithEndpoint_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    if (a2)
    {
      v7 = *(a1 + 48);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __62__HMMTRIdentifyDevice_identifyWithEndpoint_completionHandler___block_invoke_2;
      v11[3] = &unk_2786F0BC0;
      v12 = *(a1 + 40);
      [v6 _issueIdentifyCommand:v7 completionHandler:v11];

      goto LABEL_10;
    }

    v8 = [*(a1 + 32) topology];
    v9 = [v8 getBridgeAggregateNodeEndpoint];

    v10 = [*(a1 + 32) topology];
    if (v10 && !*(a1 + 48))
    {

      if (v9)
      {
        [*(a1 + 32) identifyBridgeWithAggregatorEndpoint:v9 completionHandler:*(a1 + 40)];
        goto LABEL_9;
      }
    }

    else
    {
    }

    [*(a1 + 32) _processChildNodesForEndpoint:*(a1 + 48) completionHandler:*(a1 + 40)];
LABEL_9:

    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = v5;
    if ([v7 count])
    {
      v8 = dispatch_group_create();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v38 = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v7;
      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        v10 = *v33;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v32 + 1) + 8 * i);
            dispatch_group_enter(v8);
            v13 = *(a1 + 32);
            LOWORD(v12) = [v12 unsignedIntValue];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_73;
            v29[3] = &unk_2786F0D18;
            v31 = buf;
            v30 = v8;
            [v13 _issueIdentifyCommand:v12 completionHandler:v29];
          }

          v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v9);
      }

      v14 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_2;
      block[3] = &unk_2786F0B70;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v27 = buf;
      block[4] = v15;
      v28 = *(a1 + 48);
      v26 = v16;
      dispatch_group_notify(v8, v14, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = *(a1 + 48);
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No endpoints found with identify cluster for parent endpoint: %u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = *(a1 + 40);
      v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      (*(v22 + 16))(v22, v8);
    }

    v6 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_73(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __71__HMMTRIdentifyDevice__processChildNodesForEndpoint_completionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 56);
      v13 = 138543618;
      v14 = v8;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@No successful identify command issued for endpoint: %u", &v13, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, v11);

    v12 = *MEMORY[0x277D85DE8];
  }
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 80);
      *buf = 138543874;
      v82 = v10;
      v83 = 1024;
      v84 = v11;
      v85 = 2112;
      v86 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get parts list for endpoint: %u, error: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = v5;
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 80);
      *buf = 138543874;
      v82 = v16;
      v83 = 1024;
      v84 = v17;
      v85 = 2112;
      v86 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Endpoint %u, child nodes: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
    v52 = v5;
    v51 = v12;
    if (*(a1 + 80))
    {
      v64 = 0uLL;
      v65 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      obj = v12;
      v18 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v63;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v63 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v62 + 1) + 8 * i);
            dispatch_group_enter(*(a1 + 48));
            v23 = *(a1 + 32);
            v24 = [v22 unsignedIntValue];
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_3;
            v58[3] = &unk_2786F0AD0;
            v25 = *(a1 + 48);
            v26 = *(a1 + 72);
            v60 = v22;
            v61 = v26;
            v59 = v25;
            [v23 _identifyClusterPresentAtEndpoint:v24 completionHandler:v58];
          }

          v19 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
        }

        while (v19);
      }

      v27 = *(a1 + 48);
      v28 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_4;
      block[3] = &unk_2786F0AF8;
      v29 = *(a1 + 56);
      v30 = *(a1 + 72);
      v56 = v29;
      v57 = v30;
      dispatch_group_notify(v27, v28, block);

      v31 = v56;
    }

    else
    {
      v77 = 0uLL;
      v78 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      obja = v12;
      v32 = [obja countByEnumeratingWithState:&v75 objects:v80 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v76;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v76 != v34)
            {
              objc_enumerationMutation(obja);
            }

            v36 = *(*(&v75 + 1) + 8 * j);
            dispatch_group_enter(*(a1 + 40));
            v37 = *(a1 + 32);
            v38 = [v36 unsignedIntValue];
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_66;
            v70[3] = &unk_2786F0AA8;
            v39 = *(a1 + 40);
            v40 = *(a1 + 32);
            v71 = v39;
            v72 = v40;
            v41 = *(a1 + 64);
            v73 = v36;
            v74 = v41;
            [v37 _validIdentifyNodeForParentAtEndpoint:v38 completionHandler:v70];
          }

          v33 = [obja countByEnumeratingWithState:&v75 objects:v80 count:16];
        }

        while (v33);
      }

      v42 = *(a1 + 40);
      v43 = [*(a1 + 32) queue];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_68;
      v66[3] = &unk_2786F0B20;
      v66[4] = *(a1 + 32);
      v49 = *(a1 + 64);
      v67 = obja;
      v44 = *(a1 + 48);
      *&v45 = v49;
      *(&v45 + 1) = *(a1 + 72);
      v50 = v45;
      v46 = *(a1 + 56);
      *&v47 = v44;
      *(&v47 + 1) = v46;
      v68 = v47;
      v69 = v50;
      dispatch_group_notify(v42, v43, v66);

      v31 = v67;
    }

    v5 = v52;
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_66(uint64_t a1, char a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8 && (a2 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 48) unsignedIntValue];
      *buf = 138543874;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Node %u is not a valid node for identify. Invalidating child nodes: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 48)];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(*(a1 + 56) + 8) + 40) addObject:{*(*(&v20 + 1) + 8 * i), v20}];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v19 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_68(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138543618;
    v35 = v5;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@All invalid endpoints for identify: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (([*(*(*(a1 + 64) + 8) + 40) containsObject:v12] & 1) == 0)
        {
          dispatch_group_enter(*(a1 + 48));
          v13 = *(a1 + 32);
          v14 = [v12 unsignedIntValue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_69;
          v25[3] = &unk_2786F0AD0;
          v15 = *(a1 + 48);
          v16 = *(a1 + 72);
          v27 = v12;
          v28 = v16;
          v26 = v15;
          [v13 _identifyClusterPresentAtEndpoint:v14 completionHandler:v25];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  v17 = *(a1 + 48);
  v18 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_2;
  block[3] = &unk_2786F0AF8;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v23 = v19;
  v24 = v20;
  dispatch_group_notify(v17, v18, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __76__HMMTRIdentifyDevice__childNodesWithIdentifyForEndpoint_completionHandler___block_invoke_69(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HMMTRIdentifyDevice__issueIdentifyCommand_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    v10 = 138543874;
    v11 = v7;
    v12 = 1024;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Identify command status for endpoint: %u, error: %@", &v10, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (HMMTRIdentifyDevice)initWithDevice:(id)a3 topology:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMTRIdentifyDevice;
  v12 = [(HMMTRIdentifyDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, a3);
    objc_storeStrong(&v13->_topology, a4);
    objc_storeStrong(&v13->_queue, a5);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36, &__block_literal_global_11684);
  }

  v3 = logCategory__hmf_once_v37;

  return v3;
}

uint64_t __34__HMMTRIdentifyDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37;
  logCategory__hmf_once_v37 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end