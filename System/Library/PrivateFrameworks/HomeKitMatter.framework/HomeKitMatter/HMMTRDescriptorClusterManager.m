@interface HMMTRDescriptorClusterManager
+ (id)logCategory;
+ (id)sharedManager;
- (HMMTRDescriptorClusterManager)init;
- (id)_buildClustersInUseDictWithClustersInUse:(id)a3;
- (id)_endpointIncludingClusterID:(id)a3 amongEndpoints:(id)a4 device:(id)a5 error:(id *)a6;
- (id)_fetchAccessoryConfigurationForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5;
- (id)_fetchAccessoryConfigurationForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)_populateMeasuredValueAttributeForClusterClassName:(id)a3 clusterClassFeatureMap:(id)a4 endpoint:(id)a5 device:(id)a6 deviceTopology:(id)a7 callbackQueue:(id)a8;
- (id)buildClusterDescriptorWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
- (id)endpointForClusterID:(id)a3 mtrDevice:(id)a4;
- (id)endpointsWithMTRDevice:(id)a3 endpointID:(id)a4;
- (id)fetchClientClustersForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5;
- (id)fetchClusterAcceptedCommandsForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)fetchClusterAttributesForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)fetchClusterEventListForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)fetchClusterFeatureMapForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)fetchClusterGeneratedCommandsForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)fetchClusterRevisionForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6;
- (id)fetchDeviceTypesWithMTRDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5;
- (id)fetchPartsListForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5;
- (id)fetchServerClustersForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5;
- (id)getBridgeEndpointsDeviceTypes:(id)a3 endpointDeviceTypes:(id)a4;
- (id)hapServiceDescriptionForServiceType:(id)a3 linkedServiceTypes:(id)a4 clustersInUse:(id)a5 endpoint:(id)a6 name:(id)a7 hapToCHIPClusterMappingArray:(id)a8 clusterClassesToQuery:(id)a9 hapServicesToCheckForFeatureMap:(id)a10 hapServicesToCheckForOptionalMatterAttribute:(id)a11 hapServicesToCheckForRequiredAttributeValues:(id)a12 hapCharacteristicsToCheckForRequiredAttributeValues:(id)a13 server:(id)a14;
- (id)hapServiceDescriptionsForTopology:(id)a3 namesDictionary:(id)a4 server:(id)a5;
- (id)runBlockForAllEndpointsWithClusterID:(id)a3 mtrDevice:(id)a4 callbackQueue:(id)a5 block:(id)a6;
- (void)_populateAttributeValuesForClusterClassName:(id)a3 clusterClassFeatureMap:(id)a4 endpoint:(id)a5 device:(id)a6 deviceTopology:(id)a7 callbackQueue:(id)a8 completionHandler:(id)a9;
- (void)_queryAttributeValueFromClusterAtCHIPEndpoint:(id)a3 device:(id)a4 attributeValuesToCheckDict:(id)a5 attributeValuesSupportedDict:(id)a6 attributeValuesRetrievedDict:(id)a7 callbackQueue:(id)a8 clusterClassName:(id)a9 completionHandler:(id)a10;
- (void)_queryEndpointsForClusterID:(id)a3 endpoints:(id)a4 device:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)_queryEndpointsForClusterID:(id)a3 endpoints:(id)a4 mtrDevice:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)_queryFeatureMapFromClusterAtCHIPEndpoint:(id)a3 device:(id)a4 callbackQueue:(id)a5 clusterClassName:(id)a6 completionHandler:(id)a7;
- (void)_querySupportedAttributesFromClusterAtCHIPEndpoint:(id)a3 device:(id)a4 callbackQueue:(id)a5 clusterClassName:(id)a6 completionHandler:(id)a7;
- (void)_removeDisabledCharacteristicsFromServiceDescription:(id)a3 endpoint:(id)a4 topology:(id)a5;
- (void)_runBlockForAllEndpointsWithClusterID:(id)a3 endpoints:(id)a4 device:(id)a5 callbackQueue:(id)a6 finishedRunningAllBlocksPromise:(id)a7 block:(id)a8;
- (void)_runBlockForAllEndpointsWithClusterID:(id)a3 endpoints:(id)a4 mtrDevice:(id)a5 callbackQueue:(id)a6 finishedRunningAllBlocksPromise:(id)a7 block:(id)a8;
- (void)_updateOTARequestorEndpointsInTopology:(id)a3 device:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)_verifyHAPCharacteristicSupportAtCHIPEndpoint:(id)a3 device:(id)a4 endpointDeviceTypes:(id)a5 callbackQueue:(id)a6 clusterClassToQueryForFeatureMap:(id)a7 hapServicesToCheckForFeatureMap:(id)a8 hapServicesInUse:(id)a9 deviceTopology:(id)a10 bridgeAggregateNodeEndpoint:(id)a11 server:(id)a12 lastError:(id)a13 completionHandler:(id)a14;
- (void)_verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint:(id)a3 device:(id)a4 callbackQueue:(id)a5 hapServicesToCheckForRequiredAttributeValues:(id)a6 hapCharacteristicsToCheckForRequiredAttributeValues:(id)a7 attributeValuesSupportedDict:(id)a8 attributeValuesRetrievedDict:(id)a9 deviceTopology:(id)a10 server:(id)a11 lastError:(id)a12 completionHandler:(id)a13;
- (void)_verifyHAPOptionalCharacteristicSupportAtCHIPEndpoint:(id)a3 device:(id)a4 endpointDeviceTypes:(id)a5 callbackQueue:(id)a6 clusterClassToQueryForAttributes:(id)a7 hapServicesToCheckForOptionalMatterAttribute:(id)a8 clusterAttributesSupported:(id)a9 hapServicesInUse:(id)a10 deviceTopology:(id)a11 bridgeAggregateNodeEndpoint:(id)a12 server:(id)a13 lastError:(id)a14 completionHandler:(id)a15;
- (void)endpointForClusterID:(id)a3 device:(id)a4 partsList:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)endpointForClusterID:(id)a3 mtrDevice:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)fetchAccessoryConfigurationForDevice:(id)a3 nodeId:(id)a4 server:(id)a5 reasonString:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8;
- (void)fetchDeviceTypesForDevice:(id)a3 atEndpoint:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)fetchDeviceTypesForEndpoints:(id)a3 device:(id)a4 endpointDeviceTypes:(id)a5 lastError:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8;
- (void)fetchDeviceTypesForEndpoints:(id)a3 mtrDevice:(id)a4 endpointDeviceTypes:(id)a5 lastError:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8;
- (void)fetchDeviceTypesWithMTRDevice:(id)a3 atEndpoint:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)fetchEndpointsWithMTRDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)fetchHAPCategoryForCHIPDevice:(id)a3 nodeId:(id)a4 server:(id)a5 partsList:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8;
- (void)fetchHAPCategoryWithMTRDevice:(id)a3 nodeId:(id)a4 server:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)fetchHAPServicesAtCHIPEndpoint:(id)a3 deviceTopology:(id)a4 endpointDeviceTypes:(id)a5 accessoryInfo:(id)a6 hapToCHIPClusterMappingArray:(id)a7 device:(id)a8 isBridge:(BOOL)a9 bridgeAggregateNodeEndpoint:(id)a10 isComposedDevice:(BOOL)a11 server:(id)a12 callbackQueue:(id)a13 completionHandler:(id)a14;
- (void)fetchHAPServicesForEndpoints:(id)a3 endpointDeviceTypes:(id)a4 device:(id)a5 nodeId:(id)a6 isBridge:(BOOL)a7 bridgeAggregateNodeEndpoint:(id)a8 server:(id)a9 topology:(id)a10 hapAccessoryInfo:(id)a11 callbackQueue:(id)a12 completionHandler:(id)a13;
- (void)fetchHAPServicesWithMTRDevice:(id)a3 nodeId:(id)a4 server:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)isEndpointPresentForClusterID:(id)a3 endpoint:(id)a4 device:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
- (void)isEndpointPresentForClusterID:(id)a3 endpoint:(id)a4 mtrDevice:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation HMMTRDescriptorClusterManager

- (void)_runBlockForAllEndpointsWithClusterID:(id)a3 endpoints:(id)a4 mtrDevice:(id)a5 callbackQueue:(id)a6 finishedRunningAllBlocksPromise:(id)a7 block:(id)a8
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v15 count])
  {
    v20 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v17];
    *buf = _HMFThreadLocalAsyncContextPush();
    v21 = MEMORY[0x277D0F7C0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __143__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_mtrDevice_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke;
    v31[3] = &unk_2786EE870;
    v31[4] = self;
    v32 = v16;
    v33 = v17;
    v34 = v14;
    v35 = v19;
    v22 = [v15 na_map:v31];
    v23 = [v21 allSettled:v22];
    v24 = [v23 ignoreResult];

    [v18 resolveWithFuture:v24];
    _HMFThreadLocalAsyncContextPop();
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v16 nodeID];
      *buf = 138543874;
      *&buf[4] = v27;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Cluster ID %@ not found at any endpoints of node %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v18 rejectWithError:v20];
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __143__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_mtrDevice_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) buildClusterDescriptorWithDevice:*(a1 + 40) endpointID:v3 queue:*(a1 + 48)];
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [v4 readAttributeServerListWithParams:v5];

  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v6 forIdentify:@"serverList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if ([v9 containsObject:*(a1 + 56)])
    {
      v10 = (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) nodeID];
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@ServerList attribute at endpoint %@ of node %@ absent from cache", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = [MEMORY[0x277D0F7C0] futureWithNoValue];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_runBlockForAllEndpointsWithClusterID:(id)a3 endpoints:(id)a4 device:(id)a5 callbackQueue:(id)a6 finishedRunningAllBlocksPromise:(id)a7 block:(id)a8
{
  v39 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v15 count])
  {
    v20 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v17];
    *buf = _HMFThreadLocalAsyncContextPush();
    v21 = MEMORY[0x277D0F7C0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke;
    v30[3] = &unk_2786EE870;
    v31 = v16;
    v32 = v17;
    v33 = v14;
    v34 = self;
    v35 = v19;
    v22 = [v15 na_map:v30];
    v23 = [v21 allSettled:v22];
    v24 = [v23 ignoreResult];

    [v18 resolveWithFuture:v24];
    _HMFThreadLocalAsyncContextPop();
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v28;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Cluster ID %@ not found at any endpoints", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v18 rejectWithError:v20];
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CD51F0]) initWithDevice:*(a1 + 32) endpoint:objc_msgSend(v3 queue:{"unsignedShortValue"), *(a1 + 40)}];
  v16 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
  v6 = [v16 resolverBlock];
  [v4 readAttributeServerListWithCompletionHandler:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke_2;
  v12[3] = &unk_2786EE820;
  v13 = *(a1 + 48);
  v15 = *(a1 + 64);
  v14 = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke_3;
  v10[3] = &unk_2786EE848;
  v10[4] = *(a1 + 56);
  v11 = v14;
  v7 = v14;
  v8 = [v5 then:v12 orRecover:v10];

  return v8;
}

uint64_t __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 containsObject:a1[4]])
  {
    v4 = a1[5];
    (*(a1[6] + 16))();
  }

  else
  {
    [MEMORY[0x277D0F7C0] futureWithNoValue];
  }
  v5 = ;
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke_3(v8);
  }
}

uint64_t __140__HMMTRDescriptorClusterManager__runBlockForAllEndpointsWithClusterID_endpoints_device_callbackQueue_finishedRunningAllBlocksPromise_block___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to get clusters at endpoint %@: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (void)_queryEndpointsForClusterID:(id)a3 endpoints:(id)a4 mtrDevice:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v23 = 0;
  v13 = a6;
  v14 = [(HMMTRDescriptorClusterManager *)self _endpointIncludingClusterID:a3 amongEndpoints:a4 device:a5 error:&v23];
  v15 = v23;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __113__HMMTRDescriptorClusterManager__queryEndpointsForClusterID_endpoints_mtrDevice_callbackQueue_completionHandler___block_invoke;
  v19[3] = &unk_2786F0EA8;
  v21 = v15;
  v22 = v12;
  v20 = v14;
  v16 = v15;
  v17 = v14;
  v18 = v12;
  dispatch_async(v13, v19);
}

- (id)_endpointIncludingClusterID:(id)a3 amongEndpoints:(id)a4 device:(id)a5 error:(id *)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v47 = dispatch_queue_create("hmmtr.descriptorClusterManager.temporary", 0);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = v12;
  v46 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v46)
  {
    v45 = *v49;
    *&v15 = 138543874;
    v38 = v15;
    v44 = self;
    v39 = v11;
    v40 = a6;
    v41 = v13;
    obj = v14;
    while (2)
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v49 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        v18 = [(HMMTRDescriptorClusterManager *)self buildClusterDescriptorWithDevice:v13 endpointID:v17 queue:v47, v38];
        v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v20 = [v18 readAttributeServerListWithParams:v19];

        v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"serverList"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = self;
        v24 = v22;

        if (v24)
        {
          if ([v24 containsObject:v11])
          {
            v6 = v17;
            v25 = 0;
          }

          else
          {
            v25 = 1;
          }
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v26 = v23;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = HMFGetLogIdentifier();
            v29 = [v41 nodeID];
            *buf = v38;
            v53 = v28;
            v54 = 2112;
            v55 = v17;
            v56 = 2112;
            v57 = v29;
            _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@ServerList at endpoint %@ of node %@ absent from cache", buf, 0x20u);

            v11 = v39;
            v13 = v41;
          }

          objc_autoreleasePoolPop(context);
          if (v40)
          {
            [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2318];
            v25 = 0;
            *v40 = v6 = 0;
          }

          else
          {
            v25 = 0;
            v6 = 0;
          }
        }

        if (!v25)
        {
          v14 = obj;

          goto LABEL_25;
        }

        self = v44;
      }

      v14 = obj;
      v46 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = HMFGetLogIdentifier();
    [v13 nodeID];
    v35 = v34 = v13;
    *buf = 138543874;
    v53 = v33;
    v54 = 2112;
    v55 = v11;
    v56 = 2112;
    v57 = v35;
    _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Cluster ID %@ not found at any endpoints of node %@", buf, 0x20u);

    v13 = v34;
  }

  objc_autoreleasePoolPop(v30);
  v6 = 0;
LABEL_25:

  v36 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_queryEndpointsForClusterID:(id)a3 endpoints:(id)a4 device:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 count])
  {
    v17 = [v13 popFirstObject];
    v18 = [objc_alloc(MEMORY[0x277CD51F0]) initWithDevice:v14 endpoint:objc_msgSend(v17 queue:{"unsignedShortValue"), v15}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __110__HMMTRDescriptorClusterManager__queryEndpointsForClusterID_endpoints_device_callbackQueue_completionHandler___block_invoke;
    v25[3] = &unk_2786EE7F8;
    v25[4] = self;
    v26 = v17;
    v31 = v16;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v19 = v17;
    [v18 readAttributeServerListWithCompletionHandler:v25];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Cluster ID %@ not found at any endpoints", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    (*(v16 + 2))(v16, 0, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __110__HMMTRDescriptorClusterManager__queryEndpointsForClusterID_endpoints_device_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 40);
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get clusters at endpoint %@: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(*(a1 + 80) + 16);
  }

  else
  {
    if (![v5 containsObject:*(a1 + 48)])
    {
      [*(a1 + 32) _queryEndpointsForClusterID:*(a1 + 48) endpoints:*(a1 + 56) device:*(a1 + 64) callbackQueue:*(a1 + 72) completionHandler:*(a1 + 80)];
      goto LABEL_8;
    }

    v13 = *(a1 + 40);
    v12 = *(*(a1 + 80) + 16);
  }

  v12();
LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)isEndpointPresentForClusterID:(id)a3 endpoint:(id)a4 mtrDevice:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v21 = a3;
  v12 = a7;
  v13 = [(HMMTRDescriptorClusterManager *)self buildClusterDescriptorWithDevice:a5 endpointID:a4 queue:a6];
  v14 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v15 = [v13 readAttributeServerListWithParams:v14];

  v16 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v15 forIdentify:@"serverList"];
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
  v19 = v18;
  if (v18)
  {
    if ([v18 containsObject:v21])
    {
      v12[2](v12, 1, 0);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2318];
    (v12)[2](v12, 0, v20);
  }
}

- (void)isEndpointPresentForClusterID:(id)a3 endpoint:(id)a4 device:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = MEMORY[0x277CD51F0];
  v16 = a6;
  v17 = a5;
  v18 = [[v15 alloc] initWithDevice:v17 endpointID:v13 queue:v16];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __111__HMMTRDescriptorClusterManager_isEndpointPresentForClusterID_endpoint_device_callbackQueue_completionHandler___block_invoke;
  v22[3] = &unk_2786F0030;
  v22[4] = self;
  v23 = v13;
  v24 = v12;
  v25 = v14;
  v19 = v12;
  v20 = v14;
  v21 = v13;
  [v18 readAttributeServerListWithCompletionHandler:v22];
}

void __111__HMMTRDescriptorClusterManager_isEndpointPresentForClusterID_endpoint_device_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 40);
      v17 = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get clusters at endpoint %@: %@", &v17, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v7);
    v12 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (![v5 containsObject:*(a1 + 48)])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Cluster ID %@ not found at endpoint: %@", &v17, 0x20u);
    }

    goto LABEL_9;
  }

  v12 = *(*(a1 + 56) + 16);
LABEL_10:
  v12();

  v16 = *MEMORY[0x277D85DE8];
}

- (id)runBlockForAllEndpointsWithClusterID:(id)a3 mtrDevice:(id)a4 callbackQueue:(id)a5 block:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v11 nodeID];
    *buf = 138543874;
    *&buf[4] = v17;
    v33 = 2112;
    v34 = v18;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Running block on all endpoints of node %@ with clusterID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  *buf = 0;
  v19 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__HMMTRDescriptorClusterManager_runBlockForAllEndpointsWithClusterID_mtrDevice_callbackQueue_block___block_invoke;
  v26[3] = &unk_2786EE7D0;
  v26[4] = v15;
  v27 = v11;
  v28 = *buf;
  v29 = v10;
  v30 = v12;
  v31 = v13;
  v20 = v13;
  v21 = v12;
  v22 = v10;
  v23 = v11;
  [(HMMTRDescriptorClusterManager *)v15 fetchEndpointsWithMTRDevice:v23 endpointID:&unk_283EE8598 callbackQueue:v21 completionHandler:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

void __100__HMMTRDescriptorClusterManager_runBlockForAllEndpointsWithClusterID_mtrDevice_callbackQueue_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
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
      v11 = [*(a1 + 40) nodeID];
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get endpoints for node %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) rejectWithError:v6];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v12 addObjectsFromArray:v5];
    [*(a1 + 32) _runBlockForAllEndpointsWithClusterID:*(a1 + 56) endpoints:v12 mtrDevice:*(a1 + 40) callbackQueue:*(a1 + 64) finishedRunningAllBlocksPromise:*(a1 + 48) block:*(a1 + 72)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)endpointForClusterID:(id)a3 mtrDevice:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 nodeID];
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Finding endpoint for clusterID %@ from node %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMMTRDescriptorClusterManager *)v9 endpointsWithMTRDevice:v7 endpointID:&unk_283EE8598];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v14 addObjectsFromArray:v13];
    v15 = [(HMMTRDescriptorClusterManager *)v9 _endpointIncludingClusterID:v6 amongEndpoints:v14 device:v7 error:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v7 nodeID];
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get endpoints for node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)endpointForClusterID:(id)a3 mtrDevice:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v11 nodeID];
    *buf = 138543874;
    v30 = v17;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Finding endpoint for clusterID %@ from node %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__HMMTRDescriptorClusterManager_endpointForClusterID_mtrDevice_callbackQueue_completionHandler___block_invoke;
  v24[3] = &unk_2786F0ED0;
  v24[4] = v15;
  v25 = v11;
  v27 = v12;
  v28 = v13;
  v26 = v10;
  v19 = v12;
  v20 = v10;
  v21 = v13;
  v22 = v11;
  [(HMMTRDescriptorClusterManager *)v15 fetchEndpointsWithMTRDevice:v22 endpointID:&unk_283EE8598 callbackQueue:v19 completionHandler:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __96__HMMTRDescriptorClusterManager_endpointForClusterID_mtrDevice_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v11 = [*(a1 + 40) nodeID];
      *buf = 138543874;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get endpoints for node %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v12 addObjectsFromArray:v5];
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__HMMTRDescriptorClusterManager_endpointForClusterID_mtrDevice_callbackQueue_completionHandler___block_invoke_401;
    v18[3] = &unk_2786EFDD0;
    v19 = *(a1 + 64);
    [v13 _queryEndpointsForClusterID:v15 endpoints:v12 mtrDevice:v14 callbackQueue:v16 completionHandler:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)endpointForClusterID:(id)a3 device:(id)a4 partsList:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v20;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Finding endpoint for clusterID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __103__HMMTRDescriptorClusterManager_endpointForClusterID_device_partsList_callbackQueue_completionHandler___block_invoke;
  v27[3] = &unk_2786EEE48;
  v28 = v14;
  v29 = v18;
  v30 = v12;
  v31 = v13;
  v32 = v15;
  v33 = v16;
  v21 = v16;
  v22 = v15;
  v23 = v13;
  v24 = v12;
  v25 = v14;
  dispatch_async(v22, v27);

  v26 = *MEMORY[0x277D85DE8];
}

void __103__HMMTRDescriptorClusterManager_endpointForClusterID_device_partsList_callbackQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
  [v2 addObjectsFromArray:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HMMTRDescriptorClusterManager_endpointForClusterID_device_partsList_callbackQueue_completionHandler___block_invoke_2;
  v7[3] = &unk_2786EFDD0;
  v8 = *(a1 + 72);
  [v3 _queryEndpointsForClusterID:v4 endpoints:v2 device:v5 callbackQueue:v6 completionHandler:v7];
}

- (void)fetchDeviceTypesWithMTRDevice:(id)a3 atEndpoint:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v113 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v18 = v17 = v15;
    v19 = [v10 nodeID];
    *buf = 138543874;
    v104 = v18;
    v105 = 2112;
    v106 = v11;
    v107 = 2112;
    v108 = v19;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Examining MTRClusterDescriptor device list at endpoint %@ of node %@", buf, 0x20u);

    v15 = v17;
  }

  objc_autoreleasePoolPop(v14);
  v20 = [(HMMTRDescriptorClusterManager *)v15 buildClusterDescriptorWithDevice:v10 endpointID:v11 queue:v12];
  v21 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v82 = v20;
  v22 = [v20 readAttributeDeviceTypeListWithParams:v21];

  if (v22)
  {
    v83 = 0;
  }

  else
  {
    v83 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2316];
  }

  v23 = *MEMORY[0x277CD5188];
  v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v93 = [MEMORY[0x277CBEB18] array];
  v81 = v22;
  if ([v26 isEqual:*MEMORY[0x277CD50B0]])
  {
    v78 = v13;
    v79 = v11;
    v80 = v10;
    v87 = *MEMORY[0x277CD51A0];
    v27 = [v22 objectForKeyedSubscript:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v100;
      v94 = *MEMORY[0x277CD50D8];
      v90 = *MEMORY[0x277CD5180];
      v34 = *MEMORY[0x277CD50D0];
      v85 = v30;
      v86 = v23;
      v84 = *v100;
      do
      {
        v35 = 0;
        v88 = v32;
        do
        {
          if (*v100 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v92 = v35;
          v36 = *(*(&v99 + 1) + 8 * v35);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = [v36 objectForKeyedSubscript:v94];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v91 = v38;

            v39 = [v91 objectForKeyedSubscript:v23];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = v39;
            }

            else
            {
              v40 = 0;
            }

            v41 = v32;
            v42 = v33;
            v43 = v30;
            v44 = v23;
            v45 = v26;
            v26 = v40;

            v46 = v91;
            v23 = v44;
            v30 = v43;
            v33 = v42;
            v32 = v41;
            if ([v26 isEqual:v90])
            {
              v89 = v26;
              v47 = [v91 objectForKeyedSubscript:v87];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              v49 = v48;

              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v50 = v49;
              v51 = [v50 countByEnumeratingWithState:&v95 objects:v111 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v96;
                do
                {
                  for (i = 0; i != v52; ++i)
                  {
                    if (*v96 != v53)
                    {
                      objc_enumerationMutation(v50);
                    }

                    v55 = *(*(&v95 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v56 = [v55 objectForKeyedSubscript:v34];
                      objc_opt_class();
                      v57 = (objc_opt_isKindOfClass() & 1) != 0 ? v56 : 0;
                      v58 = v57;

                      v59 = [v58 isEqual:&unk_283EE8598];
                      if (v59)
                      {
                        v60 = [v55 objectForKeyedSubscript:v94];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v61 = v60;
                        }

                        else
                        {
                          v61 = 0;
                        }

                        v62 = v61;

                        v63 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v62 forIdentify:@"deviceType"];

                        v64 = v63;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v65 = v64;
                        }

                        else
                        {
                          v65 = 0;
                        }

                        v66 = v65;

                        [v93 addObject:v66];
                      }
                    }
                  }

                  v52 = [v50 countByEnumeratingWithState:&v95 objects:v111 count:16];
                }

                while (v52);
              }

              v30 = v85;
              v23 = v86;
              v33 = v84;
              v32 = v88;
              v26 = v89;
              v46 = v91;
            }
          }

          v35 = v92 + 1;
        }

        while (v92 + 1 != v32);
        v32 = [v30 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v32);
    }

    v11 = v79;
    v10 = v80;
    v13 = v78;
    v67 = v30;
    v22 = v81;
  }

  else
  {
    v68 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2317];
    v67 = v83;
    v83 = v68;
  }

  if ([v93 hmf_isEmpty])
  {
    v69 = v83;
    v13[2](v13, 0, v83);
    v70 = v93;
  }

  else
  {
    v71 = objc_autoreleasePoolPush();
    v72 = v15;
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v74 = HMFGetLogIdentifier();
      [v10 nodeID];
      v76 = v75 = v13;
      *buf = 138544130;
      v104 = v74;
      v105 = 2112;
      v106 = v11;
      v107 = 2112;
      v108 = v76;
      v109 = 2112;
      v110 = v93;
      _os_log_impl(&dword_22AEAE000, v73, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration : Got at endpoint %@ of node %@, following device types in use %@", buf, 0x2Au);

      v13 = v75;
    }

    objc_autoreleasePoolPop(v71);
    v70 = v93;
    (v13)[2](v13, v93, 0);
    v22 = v81;
    v69 = v83;
  }

  v77 = *MEMORY[0x277D85DE8];
}

- (void)fetchDeviceTypesForDevice:(id)a3 atEndpoint:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v17;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Examining MTRBaseClusterDescriptor device list at endpoint %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CD51F0]) initWithDevice:v10 endpoint:objc_msgSend(v11 queue:{"unsignedShortValue"), v12}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__HMMTRDescriptorClusterManager_fetchDeviceTypesForDevice_atEndpoint_callbackQueue_completionHandler___block_invoke;
  v22[3] = &unk_2786F1038;
  v23 = v11;
  v24 = v13;
  v22[4] = v15;
  v19 = v11;
  v20 = v13;
  [v18 readAttributeDeviceListWithCompletionHandler:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __102__HMMTRDescriptorClusterManager_fetchDeviceTypesForDevice_atEndpoint_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v22 = *(*(a1 + 48) + 16);
LABEL_17:
    v22();
    goto LABEL_18;
  }

  if (![v5 count])
  {
    v22 = *(*(a1 + 48) + 16);
    goto LABEL_17;
  }

  v24 = v6;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    *buf = 138543874;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration : Got at endpoint %@ following device type in use %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v5;
  obj = v5;
  v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v27 + 1) + 8 * i) type];
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v21;
          v34 = 2112;
          v35 = v17;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration : Found device type %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [v12 addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  (*(*(a1 + 48) + 16))();
  v6 = v24;
  v5 = v25;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)fetchClusterGeneratedCommandsForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 nodeID];
    *buf = 138543874;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@fetchClusterGeneratedCommandsForDevice: Examining MTRBaseClusterDescriptor cluster generated command list attribute at endpoint %@ of node %@ to retrieve accepted commands.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [v10 readAttributeWithEndpointID:v11 clusterID:v12 attributeID:&unk_283EE8778 params:v19];

  if (v20)
  {
    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"GeneratedCommands"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = v15;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = v13;
      [v10 nodeID];
      v32 = v24;
      v29 = v28 = v12;
      *buf = 138544386;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@fetchClusterGeneratedCommandsForDevice: For endpoint %@ of node %@, cluster %@, retrieved the following generated command list %@", buf, 0x34u);

      v12 = v28;
      v24 = v32;

      v13 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fetchClusterAcceptedCommandsForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 nodeID];
    *buf = 138543874;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@fetchClusterAcceptedCommandsForDevice: Examining MTRBaseClusterDescriptor cluster acceptedCommandList attribute at endpoint %@ of node %@ to retrieve accepted commands.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [v10 readAttributeWithEndpointID:v11 clusterID:v12 attributeID:&unk_283EE8760 params:v19];

  if (v20)
  {
    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"AcceptedCommands"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = v15;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = v13;
      [v10 nodeID];
      v32 = v24;
      v29 = v28 = v12;
      *buf = 138544386;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@fetchClusterAcceptedCommandsForDevice: For endpoint %@ of node %@, cluster %@, retrieved the following accepted command list %@", buf, 0x34u);

      v12 = v28;
      v24 = v32;

      v13 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fetchClusterFeatureMapForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 nodeID];
    *buf = 138543874;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@fetchClusterFeatureMapForDevice: Examining MTRBaseClusterDescriptor cluster feature map attribute at endpoint %@ of node %@ to retrieve feature map.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [v10 readAttributeWithEndpointID:v11 clusterID:v12 attributeID:&unk_283EE8748 params:v19];

  if (v20)
  {
    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"FeatureMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = v15;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = v13;
      [v10 nodeID];
      v32 = v24;
      v29 = v28 = v12;
      *buf = 138544386;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@fetchClusterFeatureMapForDevice: For endpoint %@ of node %@, cluster %@, retrieved the following feature map %@", buf, 0x34u);

      v12 = v28;
      v24 = v32;

      v13 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fetchClusterRevisionForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 nodeID];
    *buf = 138543874;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@fetchClusterRevisionForDevice: Examining MTRBaseClusterDescriptor cluster revision attribute at endpoint %@ of node %@ to cluster revision number.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [v10 readAttributeWithEndpointID:v11 clusterID:v12 attributeID:&unk_283EE8730 params:v19];

  if (v20)
  {
    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"Revision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = v15;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = v13;
      [v10 nodeID];
      v32 = v24;
      v29 = v28 = v12;
      *buf = 138544386;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@fetchClusterRevisionForDevice: For endpoint %@ of node %@, cluster %@, retrieved the revison number %@", buf, 0x34u);

      v12 = v28;
      v24 = v32;

      v13 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fetchClusterEventListForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 nodeID];
    *buf = 138543874;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@fetchClusterEventListForDevice: Examining MTRBaseClusterDescriptor eventlist attribute at endpoint %@ of node %@ to retrieve events.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [v10 readAttributeWithEndpointID:v11 clusterID:v12 attributeID:&unk_283EE8718 params:v19];

  if (v20)
  {
    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"EventList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = v15;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = v13;
      [v10 nodeID];
      v32 = v24;
      v29 = v28 = v12;
      *buf = 138544386;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@fetchClusterEventListForDevice: For endpoint %@ of node %@, cluster %@, retrieved the following events %@", buf, 0x34u);

      v12 = v28;
      v24 = v32;

      v13 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fetchClusterAttributesForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 nodeID];
    *buf = 138543874;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@fetchClusterAttributesForDevice: Examining MTRBaseClusterDescriptor attributelist attribute at endpoint %@ of node %@ to retrieve cluster attributes.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [v10 readAttributeWithEndpointID:v11 clusterID:v12 attributeID:&unk_283EE8700 params:v19];

  if (v20)
  {
    v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v20 forIdentify:@"AttributeList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = v15;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = v13;
      [v10 nodeID];
      v32 = v24;
      v29 = v28 = v12;
      *buf = 138544386;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@fetchClusterAttributesForDevice: For endpoint %@ of node %@, cluster %@, retrieved the following attributes %@", buf, 0x34u);

      v12 = v28;
      v24 = v32;

      v13 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)fetchClientClustersForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 nodeID];
    *buf = 138543874;
    v29 = v14;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@fetchClientClustersForDevice: Examining MTRBaseClusterDescriptor clientlist attribute at endpoint %@ of node %@ to retrieve client clusters.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMMTRDescriptorClusterManager *)v12 buildClusterDescriptorWithDevice:v8 endpointID:v9 queue:v10];
  v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v18 = [v16 readAttributeClientListWithParams:v17];

  if (v18)
  {
    v19 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v18 forIdentify:@"ClustersInUse"];
    v20 = objc_autoreleasePoolPush();
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      [v8 nodeID];
      v24 = v27 = v10;
      *buf = 138544130;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v19;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@fetchClientClustersForDevice of endpoint %@ of node %@: Retrieved the following client clusters %@", buf, 0x2Au);

      v10 = v27;
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)fetchServerClustersForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 nodeID];
    *buf = 138543874;
    v29 = v14;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@fetchServerClustersForDevice: Examining MTRBaseClusterDescriptor serverlist attribute at endpoint %@ of node %@ to retrieve server clusters.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMMTRDescriptorClusterManager *)v12 buildClusterDescriptorWithDevice:v8 endpointID:v9 queue:v10];
  v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v18 = [v16 readAttributeServerListWithParams:v17];

  if (v18)
  {
    v19 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v18 forIdentify:@"ClustersInUse"];
    v20 = objc_autoreleasePoolPush();
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      [v8 nodeID];
      v24 = v27 = v10;
      *buf = 138544130;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v19;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@fetchServerClustersForDevice for endpoint %@ of node %@: Retrieved the following server clusters %@", buf, 0x2Au);

      v10 = v27;
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)fetchDeviceTypesWithMTRDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 nodeID];
    *buf = 138543874;
    v30 = v14;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@fetchDeviceTypesWithMTRDevice: Examining MTRClusterDescriptor cluster parts list at endpoint %@ of node %@ to retrieve device types.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMMTRDescriptorClusterManager *)v12 buildClusterDescriptorWithDevice:v8 endpointID:v9 queue:v10];
  v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v18 = [v16 readAttributeDeviceTypeListWithParams:v17];
  if (v18)
  {
    v19 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v18 clusterIdentifier:&unk_283EE86D0 attributeIdentifier:&unk_283EE86E8 forIdentify:@"DeviceList"];
    v20 = objc_autoreleasePoolPush();
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v23 = v28 = v10;
      [v8 nodeID];
      v24 = v27 = v20;
      *buf = 138544130;
      v30 = v23;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@fetchDeviceTypesWithMTRDevice: At endpoint %@ of node %@, retrieved the following device types in use %@", buf, 0x2Au);

      v20 = v27;
      v10 = v28;
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)fetchEndpointsWithMTRDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HMMTRDescriptorClusterManager_fetchEndpointsWithMTRDevice_endpointID_callbackQueue_completionHandler___block_invoke;
  v16[3] = &unk_2786EFA60;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(a5, v16);
}

void __104__HMMTRDescriptorClusterManager_fetchEndpointsWithMTRDevice_endpointID_callbackQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) endpointsWithMTRDevice:*(a1 + 40) endpointID:*(a1 + 48)];
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2315];
  }

  (*(*(a1 + 56) + 16))();
}

- (id)endpointsWithMTRDevice:(id)a3 endpointID:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 nodeID];
    *buf = 138543874;
    v40 = v11;
    v41 = 2112;
    v42 = v7;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Examining MTRClusterDescriptor cluster parts list at endpoint %@ of node %@ to retrieve endpoints in use.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = dispatch_queue_create("hmmtr.descriptorClusterManager.temporary", 0);
  v14 = [(HMMTRDescriptorClusterManager *)v9 buildClusterDescriptorWithDevice:v6 endpointID:v7 queue:v13];
  v15 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v16 = [v14 readAttributePartsListWithParams:v15];

  v17 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v16 forIdentify:@"partsList"];
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

  if (v19 || ![v7 isEqual:&unk_283EE8598])
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v9;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v38 = v14;
      v29 = v28 = v6;
      [v28 nodeID];
      v36 = v16;
      v31 = v30 = v13;
      *buf = 138544130;
      v40 = v29;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Retrieved the following endpoints of endpoint %@ of node %@ in use %@", buf, 0x2Au);

      v13 = v30;
      v16 = v36;

      v6 = v28;
      v14 = v38;
    }

    objc_autoreleasePoolPop(v25);
    v32 = v19;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v23 = v35 = v21;
      [v6 nodeID];
      v24 = v37 = v20;
      *buf = 138543874;
      v40 = v23;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Parts list of endpoint %@ of node %@ absent from cache", buf, 0x20u);

      v20 = v37;
      v21 = v35;
    }

    objc_autoreleasePoolPop(v20);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)fetchPartsListForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 nodeID];
    *buf = 138543874;
    v33 = v14;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@fetchPartsListForDevice: Examining MTRClusterDescriptor cluster parts list at endpoint %@ of node %@ to retrieve endpoints in use.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMMTRDescriptorClusterManager *)v12 buildClusterDescriptorWithDevice:v8 endpointID:v9 queue:v10];
  v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v18 = [v16 readAttributePartsListWithParams:v17];
  if (v18)
  {
    v19 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v18 forIdentify:@"PartsList"];
    context = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      [v8 nodeID];
      v30 = v8;
      v24 = v23 = v10;
      *buf = 138544130;
      v33 = v22;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_DEBUG, "%{public}@fetchPartsListForDevice for endpoint %@ of node %@: Retrieved the following parts list in use %@", buf, 0x2Au);

      v10 = v23;
      v8 = v30;
    }

LABEL_10:

    objc_autoreleasePoolPop(context);
    goto LABEL_11;
  }

  if ([v9 isEqual:&unk_283EE8598])
  {
    context = objc_autoreleasePoolPush();
    v25 = v12;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v8 nodeID];
      *buf = 138543874;
      v33 = v26;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v27;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@fetchPartsListForDevice for endpoint %@ of node %@: Failed to read parts list.", buf, 0x20u);
    }

    v19 = 0;
    goto LABEL_10;
  }

  v19 = 0;
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)fetchHAPServicesForEndpoints:(id)a3 endpointDeviceTypes:(id)a4 device:(id)a5 nodeId:(id)a6 isBridge:(BOOL)a7 bridgeAggregateNodeEndpoint:(id)a8 server:(id)a9 topology:(id)a10 hapAccessoryInfo:(id)a11 callbackQueue:(id)a12 completionHandler:(id)a13
{
  v57 = a7;
  v18 = a3;
  v19 = a4;
  v60 = a5;
  v56 = a6;
  v55 = a8;
  v59 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v49 = self;
  v24 = [(HMMTRDescriptorClusterManager *)self protocolMap];
  v25 = [v24 hapToCHIPClusterMappingArray];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke;
  v84[3] = &unk_2786EE708;
  v26 = v22;
  v85 = v26;
  v27 = v23;
  v86 = v27;
  v51 = MEMORY[0x2318887D0](v84);
  v58 = v25;
  v53 = v27;
  v54 = v24;
  v52 = v26;
  if ([v18 count])
  {
    if (!v20)
    {
      v20 = objc_alloc_init(HMMTRMutableDeviceTopology);
    }

    v28 = v19;
    if (!v21)
    {
      v29 = objc_opt_new();
      v21 = [[HMMTRHAPAccessoryInfo alloc] initWithType:v29];
    }

    [v18 popFirstObject];
    v31 = v30 = v18;
    v48 = [v28 objectForKey:v31];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_3;
    v69[3] = &unk_2786EE780;
    v69[4] = v49;
    v70 = v31;
    v71 = v60;
    v50 = v20;
    v72 = v50;
    v73 = v24;
    v74 = v28;
    v75 = v26;
    v32 = v21;
    v76 = v32;
    v77 = v25;
    v83 = v57;
    v33 = v55;
    v78 = v55;
    v79 = v59;
    v80 = v30;
    v34 = v56;
    v81 = v56;
    v35 = v27;
    v82 = v27;
    v36 = v31;
    v18 = v30;
    v37 = v36;
    v38 = v52;
    [v73 servicesOfMTRDevice:v71 forDeviceTypes:v48 endpoint:v36 callbackQueue:v75 completionHandler:v69];

    v39 = v60;
    v40 = v51;
  }

  else
  {
    v41 = v57;
    if (v57)
    {
      v33 = v55;
      v34 = v56;
      if (!v20)
      {
        if ([v18 count])
        {
          v20 = 0;
        }

        else
        {
          v20 = objc_alloc_init(HMMTRMutableDeviceTopology);
        }
      }

      v43 = MEMORY[0x277CBEA60];
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      v45 = [v43 arrayWithObject:v44];

      if (v55)
      {
        [(HMMTRMutableDeviceTopology *)v20 setHAPCategories:v45 atEndpoint:v55];
        v46 = [[HMMTRHAPDescriptionAtEndpoint alloc] initWithType:v45 serviceDescriptions:0];
        [(HMMTRHAPAccessoryInfo *)v21 setAccessoryInfo:v46 forEndpoint:v55];
      }

      v42 = v19;

      v41 = v57;
    }

    else
    {
      v42 = v19;
      v33 = v55;
      v34 = v56;
    }

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_365;
    v61[3] = &unk_2786EE7A8;
    v68 = v41;
    v47 = v49;
    v62 = v20;
    v63 = v49;
    v39 = v60;
    v64 = v60;
    v40 = v51;
    v67 = v51;
    v32 = v21;
    v65 = v32;
    v66 = v33;
    v50 = v62;
    v38 = v52;
    [(HMMTRDescriptorClusterManager *)v47 _updateOTARequestorEndpointsInTopology:v62 device:v64 callbackQueue:v52 completionHandler:v61];

    v37 = v62;
    v28 = v42;
    v35 = v53;
  }
}

void __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_2;
      v17[3] = &unk_2786EE6E0;
      v22 = v16;
      v18 = v11;
      v23 = a3;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      dispatch_async(v15, v17);
    }
  }
}

void __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v36 = a4;
  if (v36)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) nodeID];
      *buf = 138544130;
      v53 = v12;
      v54 = 2112;
      v55 = v13;
      v56 = 2112;
      v57 = v14;
      v58 = 2112;
      v59 = v36;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to get HAP Services from plist for endpoint:%@ of node %@. Error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
  }

  v35 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = *(a1 + 56);
  v19 = [v35 allObjects];
  [v18 setHAPServiceTypes:v19 atEndpoint:*(a1 + 40)];

  [*(a1 + 56) setHAPLinkedServiceTypes:v8 atEndpoint:*(a1 + 40)];
  [*(a1 + 56) setHAPDisabledCharacteristics:v15 atEndpoint:*(a1 + 40)];
  [*(a1 + 56) setDeviceFeatureMapValues:v16 atEndpoint:*(a1 + 40)];
  [*(a1 + 56) setDeviceAttributeValues:v17 atEndpoint:*(a1 + 40)];
  v20 = *(a1 + 64);
  v21 = [*(a1 + 72) objectForKey:*(a1 + 40)];
  [v20 categoriesForDeviceTypes:v21];
  v22 = v34 = v7;

  [MEMORY[0x277CBEB98] setWithArray:v22];
  v23 = v33 = v8;
  v24 = *(a1 + 56);
  v25 = [v23 allObjects];
  [v24 setHAPCategories:v25 atEndpoint:*(a1 + 40)];

  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = *(a1 + 80);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_361;
  v37[3] = &unk_2786EE758;
  v38 = v26;
  v30 = *(a1 + 56);
  v31 = *(a1 + 32);
  v39 = v30;
  v40 = v31;
  v41 = *(a1 + 72);
  v42 = *(a1 + 88);
  v43 = *(a1 + 96);
  v44 = *(a1 + 48);
  v51 = *(a1 + 144);
  v45 = *(a1 + 104);
  v46 = *(a1 + 112);
  v47 = *(a1 + 80);
  v48 = *(a1 + 120);
  v49 = *(a1 + 128);
  v50 = *(a1 + 136);
  [v28 fetchEndpointsWithMTRDevice:v27 endpointID:v38 callbackQueue:v29 completionHandler:v37];

  v32 = *MEMORY[0x277D85DE8];
}

void __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_365(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) clustersInUse];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v8), v24}];
        v10 = [v9 count];

        if (v10)
        {

          goto LABEL_14;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 80))
  {
LABEL_14:
    v17 = *(a1 + 32);
    v16 = [*(a1 + 40) protocolMap];
    v18 = [v16 version];
    [v17 setVersion:v18 for:@"EnumeratedProtocolMap"];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 48) nodeID];
      *buf = 138543618;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@No endpoints of node %@ contain clusters, not storing topology. Enumeration will re-run next time.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    v3 = v16 = v3;
  }

  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v21 = *(a1 + 56);
  v22 = *(a1 + 32);
  (*(*(a1 + 72) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_361(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isEqual:&unk_283EE8598];
  v5 = 0;
  if (v3 && (v4 & 1) == 0)
  {
    if ([v3 count])
    {
      [*(a1 + 40) setPartsList:v3 atEndpoint:*(a1 + 32)];
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 40);
  v15 = *(a1 + 72);
  v16 = *(a1 + 64);
  v8 = *(a1 + 136);
  v9 = *(a1 + 88);
  v14 = *(a1 + 80);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_2_362;
  v19[3] = &unk_2786EE730;
  v19[4] = v7;
  v20 = v6;
  v21 = *(a1 + 80);
  v22 = *(a1 + 40);
  v23 = *(a1 + 112);
  v24 = *(a1 + 56);
  v25 = *(a1 + 120);
  v26 = *(a1 + 96);
  v27 = *(a1 + 64);
  v28 = *(a1 + 104);
  v29 = *(a1 + 128);
  LOBYTE(v13) = v5;
  LOBYTE(v12) = v8;
  [v7 fetchHAPServicesAtCHIPEndpoint:v20 deviceTopology:v18 endpointDeviceTypes:v17 accessoryInfo:v16 hapToCHIPClusterMappingArray:v15 device:v14 isBridge:v12 bridgeAggregateNodeEndpoint:v9 isComposedDevice:v13 server:v10 callbackQueue:v11 completionHandler:v19];
}

void __198__HMMTRDescriptorClusterManager_fetchHAPServicesForEndpoints_endpointDeviceTypes_device_nodeId_isBridge_bridgeAggregateNodeEndpoint_server_topology_hapAccessoryInfo_callbackQueue_completionHandler___block_invoke_2_362(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v24 = v12;
      v16 = a3;
      v17 = v9;
      v18 = *(a1 + 40);
      v19 = [*(a1 + 48) nodeID];
      *buf = 138544130;
      v26 = v15;
      v27 = 2112;
      v28 = v18;
      v9 = v17;
      a3 = v16;
      v12 = v24;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to get HAP Services at Endpoint:%@ of node %@. Error:%@. Error is not fatal, continuing with enumeration", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v20 = *(a1 + 56);
    v21 = [MEMORY[0x277CBEA60] array];
    [v20 setClustersInUse:v21 atEndpoint:*(a1 + 40)];
  }

  v22 = *(a1 + 104);
  [*(a1 + 32) fetchHAPServicesForEndpoints:*(a1 + 64) endpointDeviceTypes:*(a1 + 72) device:*(a1 + 48) nodeId:*(a1 + 80) isBridge:a3 bridgeAggregateNodeEndpoint:v10 server:*(a1 + 88) topology:*(a1 + 56) hapAccessoryInfo:*(a1 + 96) callbackQueue:v22 completionHandler:*(a1 + 112)];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateOTARequestorEndpointsInTopology:(id)a3 device:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__7675;
  v28[4] = __Block_byref_object_dispose__7676;
  v29 = 0;
  v14 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v12];
  v15 = _HMFThreadLocalAsyncContextPush();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __111__HMMTRDescriptorClusterManager__updateOTARequestorEndpointsInTopology_device_callbackQueue_completionHandler___block_invoke;
  v24[3] = &unk_2786EE690;
  v26 = v28;
  v27 = v15;
  v16 = v10;
  v25 = v16;
  v17 = [(HMMTRDescriptorClusterManager *)self runBlockForAllEndpointsWithClusterID:&unk_283EE86B8 mtrDevice:v11 callbackQueue:v12 block:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __111__HMMTRDescriptorClusterManager__updateOTARequestorEndpointsInTopology_device_callbackQueue_completionHandler___block_invoke_2;
  v21[3] = &unk_2786EE6B8;
  v21[4] = self;
  v18 = v11;
  v22 = v18;
  v19 = v13;
  v23 = v19;
  v20 = [v17 finally:v21];

  _HMFThreadLocalAsyncContextPop();
  _Block_object_dispose(v28, 8);
}

id __111__HMMTRDescriptorClusterManager__updateOTARequestorEndpointsInTopology_device_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v6 isEqualToNumber:v4])
  {
    v5 = *(*(a1 + 40) + 8);
LABEL_4:
    objc_storeStrong((v5 + 40), a2);
    v7 = 1;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  [*(a1 + 32) setOTARequestorEnabled:v7 atEndpoint:v4];
  v8 = [MEMORY[0x277D0F7C0] futureWithNoValue];

  return v8;
}

uint64_t __111__HMMTRDescriptorClusterManager__updateOTARequestorEndpointsInTopology_device_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) nodeID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated OTA requestor endpoints of node %@ in topology", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  (*(*(a1 + 48) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)fetchDeviceTypesForEndpoints:(id)a3 mtrDevice:(id)a4 endpointDeviceTypes:(id)a5 lastError:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __134__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_mtrDevice_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke;
  v36[3] = &unk_2786EE668;
  v36[4] = self;
  v20 = v15;
  v37 = v20;
  v21 = v18;
  v38 = v21;
  v22 = v19;
  v39 = v22;
  v23 = MEMORY[0x2318887D0](v36);
  if ([v14 count])
  {
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v24 = [v14 popFirstObject];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __134__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_mtrDevice_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke_2;
    v27[3] = &unk_2786EE640;
    v28 = v17;
    v29 = self;
    v30 = v24;
    v31 = v20;
    v16 = v16;
    v32 = v16;
    v33 = v14;
    v34 = v21;
    v35 = v22;
    v25 = v24;
    [(HMMTRDescriptorClusterManager *)self fetchDeviceTypesWithMTRDevice:v31 atEndpoint:v25 callbackQueue:v34 completionHandler:v27];

    v23 = v26;
  }

  else
  {
    (v23)[2](v23, v16, v17);
  }
}

void __134__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_mtrDevice_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) nodeID];
    *buf = 138544130;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Calling fetch Device Types completion block for node %@, error: %@, endpointDeviceTypes %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __134__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_mtrDevice_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke_351;
      block[3] = &unk_2786F0EA8;
      v18 = v13;
      v16 = v5;
      v17 = v6;
      dispatch_async(v12, block);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __134__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_mtrDevice_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v13 = [*(a1 + 56) nodeID];
      v22 = 138544130;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration Endpoint: %@ of node %@ Failed to get the device types %@. Not fatal, continuing with enumeration...", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v14 = v6;

    v7 = v14;
  }

  else if (v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 48);
      v20 = [*(a1 + 56) nodeID];
      v22 = 138544130;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration Endpoint: %@ of node %@. The List of device types %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 64) setObject:v5 forKey:*(a1 + 48)];
  }

  [*(a1 + 40) fetchDeviceTypesForEndpoints:*(a1 + 72) mtrDevice:*(a1 + 56) endpointDeviceTypes:*(a1 + 64) lastError:v7 callbackQueue:*(a1 + 80) completionHandler:*(a1 + 88)];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchDeviceTypesForEndpoints:(id)a3 device:(id)a4 endpointDeviceTypes:(id)a5 lastError:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __131__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_device_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke;
  v34[3] = &unk_2786EE4D8;
  v34[4] = self;
  v20 = v18;
  v35 = v20;
  v21 = v19;
  v36 = v21;
  v22 = MEMORY[0x2318887D0](v34);
  if ([v14 count])
  {
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v23 = [v14 popFirstObject];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __131__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_device_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke_2;
    v25[3] = &unk_2786EE640;
    v26 = v17;
    v27 = self;
    v28 = v23;
    v16 = v16;
    v29 = v16;
    v30 = v14;
    v31 = v15;
    v32 = v20;
    v33 = v21;
    v24 = v23;
    [(HMMTRDescriptorClusterManager *)self fetchDeviceTypesForDevice:v31 atEndpoint:v24 callbackQueue:v32 completionHandler:v25];
  }

  else
  {
    (v22)[2](v22, v16, v17);
  }
}

void __131__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_device_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Calling fetch Device Types completion block, error: %@, endpointDeviceTypes %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __131__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_device_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke_350;
      block[3] = &unk_2786F0EA8;
      v17 = v12;
      v15 = v5;
      v16 = v6;
      dispatch_async(v11, block);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __131__HMMTRDescriptorClusterManager_fetchDeviceTypesForEndpoints_device_endpointDeviceTypes_lastError_callbackQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration Endpoint: %@ Failed to get the device types %@. Not fatal, continuing with enumeration...", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = v6;

    v7 = v13;
  }

  else if (v5)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 48);
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration Endpoint: %@ The List of device types %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [*(a1 + 56) setObject:v5 forKey:*(a1 + 48)];
  }

  [*(a1 + 40) fetchDeviceTypesForEndpoints:*(a1 + 64) device:*(a1 + 72) endpointDeviceTypes:*(a1 + 56) lastError:v7 callbackQueue:*(a1 + 80) completionHandler:*(a1 + 88)];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)hapServiceDescriptionForServiceType:(id)a3 linkedServiceTypes:(id)a4 clustersInUse:(id)a5 endpoint:(id)a6 name:(id)a7 hapToCHIPClusterMappingArray:(id)a8 clusterClassesToQuery:(id)a9 hapServicesToCheckForFeatureMap:(id)a10 hapServicesToCheckForOptionalMatterAttribute:(id)a11 hapServicesToCheckForRequiredAttributeValues:(id)a12 hapCharacteristicsToCheckForRequiredAttributeValues:(id)a13 server:(id)a14
{
  v224 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a4;
  v189 = a5;
  v193 = a6;
  v22 = a7;
  v23 = a8;
  v185 = a9;
  v178 = a10;
  v176 = a11;
  v177 = a12;
  v184 = a13;
  v192 = a14;
  v24 = [HMMTRHAPServiceDescription alloc];
  v25 = [(HMMTRDescriptorClusterManager *)self protocolMap];
  v26 = [v25 optionalServiceLabelIndexIncludedInService:v20];
  v173 = v21;
  v174 = v20;
  v27 = v20;
  v28 = v23;
  v29 = v193;
  v172 = v22;
  v30 = [(HMMTRHAPServiceDescription *)v24 initWithType:v27 linkedServiceTypes:v21 endpoint:v193 name:v22 optionalServiceLabelIndexIncluded:v26];

  v190 = self;
  v31 = [(HMMTRDescriptorClusterManager *)self protocolMap];
  v191 = v30;
  v32 = [(HMMTRHAPServiceDescription *)v30 serviceType];
  v33 = [v31 requiredCharacteristicsForService:v32];

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v206 objects:v223 count:16];
  v175 = v34;
  if (!v35)
  {
LABEL_35:

    v72 = [(HMMTRDescriptorClusterManager *)v190 protocolMap];
    v73 = [(HMMTRHAPServiceDescription *)v191 serviceType];
    v74 = [v72 optionalCharacteristicsForService:v73];

    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v75 = v74;
    v76 = [v75 countByEnumeratingWithState:&v198 objects:v211 count:16];
    if (!v76)
    {
LABEL_76:

      v127 = v191;
      v83 = v192;
LABEL_85:
      v133 = v175;
      goto LABEL_86;
    }

    v77 = v76;
    v78 = *v199;
    v171 = v28;
    v167 = v75;
    v163 = *v199;
LABEL_37:
    v79 = 0;
    v165 = v77;
    while (1)
    {
      if (*v199 != v78)
      {
        objc_enumerationMutation(v75);
      }

      v80 = *(*(&v198 + 1) + 8 * v79);
      v81 = [(HMMTRDescriptorClusterManager *)v190 protocolMap];
      obja = v80;
      v82 = [v81 getIDForCharacteristic:v80];

      v83 = v192;
      if (!v82)
      {
        v158 = objc_autoreleasePoolPush();
        v159 = v190;
        v160 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
        {
          v161 = HMFGetLogIdentifier();
          v162 = [v192 nodeID];
          *buf = 138544130;
          v213 = v161;
          v214 = 2112;
          v215 = obja;
          v216 = 2112;
          v217 = v193;
          v218 = 2112;
          v219 = v162;
          _os_log_impl(&dword_22AEAE000, v160, OS_LOG_TYPE_DEBUG, "%{public}@Failed to find HAP characteristic ID for characteristic %@ on endpoint %@ of node %@, aborting", buf, 0x2Au);

          v29 = v193;
        }

        objc_autoreleasePoolPop(v158);
LABEL_84:

        v127 = 0;
        goto LABEL_85;
      }

      v169 = v79;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v84 = [v28 objectForKeyedSubscript:v82];
      v188 = [v84 countByEnumeratingWithState:&v194 objects:v210 count:16];
      if (v188)
      {
        v85 = 0;
        v186 = *v195;
        v180 = v84;
        while (2)
        {
          for (i = 0; i != v188; ++i)
          {
            if (*v195 != v186)
            {
              objc_enumerationMutation(v84);
            }

            v87 = *(*(&v194 + 1) + 8 * i);
            v88 = objc_autoreleasePoolPush();
            v89 = v190;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v91 = HMFGetLogIdentifier();
              v92 = [v192 nodeID];
              *buf = 138544386;
              v213 = v91;
              v214 = 2112;
              v215 = v82;
              v216 = 2112;
              v217 = v87;
              v218 = 2112;
              v219 = v193;
              v220 = 2112;
              v221 = v92;
              _os_log_impl(&dword_22AEAE000, v90, OS_LOG_TYPE_DEBUG, "%{public}@Looking for optional HAP Characteristic %@ as its matching CHIP clusterID %@ on endpoint %@ of node %@", buf, 0x34u);

              v29 = v193;
            }

            objc_autoreleasePoolPop(v88);
            v93 = [v189 objectForKeyedSubscript:v87];
            v94 = (v93 == 0) | v85;

            if ((v94 & 1) == 0)
            {
              [v192 setClusterIDForCharacteristic:v82 endpointID:v29 clusterID:v87];
              v95 = objc_autoreleasePoolPush();
              v96 = v89;
              v97 = HMFGetOSLogHandle();
              v98 = v29;
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
              {
                v99 = HMFGetLogIdentifier();
                v100 = [v192 nodeID];
                *buf = 138544386;
                v213 = v99;
                v214 = 2112;
                v215 = v82;
                v216 = 2112;
                v217 = v87;
                v218 = 2112;
                v219 = v98;
                v220 = 2112;
                v221 = v100;
                _os_log_impl(&dword_22AEAE000, v97, OS_LOG_TYPE_DEBUG, "%{public}@Constructed HAP service description for optional HAP Characteristic %@, CHIP clusterID %@, endpoint %@ of node %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v95);
              [(HMMTRHAPServiceDescription *)v191 addOptionalCharacteristic:v82];
              v101 = [(HMMTRDescriptorClusterManager *)v96 protocolMap];
              v102 = [v192 clusterIDCharacteristicMap];
              v103 = [v101 getMTRClusterClassForCharacteristic:v82 endpointID:v98 clusterIDCharacteristicMap:v102];

              if (!v103)
              {
                v134 = objc_autoreleasePoolPush();
                v135 = v96;
                v136 = HMFGetOSLogHandle();
                v83 = v192;
                v75 = v167;
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                {
                  v137 = HMFGetLogIdentifier();
                  v138 = [v192 nodeID];
                  *buf = 138544130;
                  v213 = v137;
                  v214 = 2112;
                  v215 = v82;
                  v216 = 2112;
                  v217 = v193;
                  v218 = 2112;
                  v219 = v138;
                  _os_log_impl(&dword_22AEAE000, v136, OS_LOG_TYPE_DEBUG, "%{public}@Cluster class name not found for optional characteristic %@ in use at endpoint %@ of node %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v134);
                v29 = v193;
                v28 = v171;
                goto LABEL_84;
              }

              [v185 addObject:v103];
              v104 = [v184 objectForKey:v82];

              if (v104)
              {
                [v177 addObject:v191];
              }

              v105 = [(HMMTRDescriptorClusterManager *)v96 protocolMap];
              v106 = [v105 getRequiredFeaturesBitmapForCharacteristic:obja];

              v107 = objc_autoreleasePoolPush();
              v108 = v96;
              v109 = HMFGetOSLogHandle();
              v110 = os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG);
              v84 = v180;
              if (v106)
              {
                if (v110)
                {
                  v111 = HMFGetLogIdentifier();
                  v112 = [v192 nodeID];
                  *buf = 138544386;
                  v213 = v111;
                  v214 = 2112;
                  v215 = v106;
                  v216 = 2112;
                  v217 = v82;
                  v218 = 2112;
                  v219 = v193;
                  v220 = 2112;
                  v221 = v112;
                  _os_log_impl(&dword_22AEAE000, v109, OS_LOG_TYPE_DEBUG, "%{public}@Found required feature map %@ for optional characteristic %@ on endpoint %@ of node %@", buf, 0x34u);
                }

                objc_autoreleasePoolPop(v107);
                [(HMMTRHAPServiceDescription *)v191 addFeatureMapForCharacteristic:v82 featureMap:v106];
                [v178 addObject:v191];
              }

              else
              {
                if (v110)
                {
                  v113 = HMFGetLogIdentifier();
                  v114 = [v192 nodeID];
                  *buf = 138544130;
                  v213 = v113;
                  v214 = 2112;
                  v215 = v82;
                  v216 = 2112;
                  v217 = v193;
                  v218 = 2112;
                  v219 = v114;
                  _os_log_impl(&dword_22AEAE000, v109, OS_LOG_TYPE_DEBUG, "%{public}@Feature map information not available for optional characteristic %@ on endpoint %@ of node %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v107);
              }

              v115 = [(HMMTRDescriptorClusterManager *)v108 protocolMap];
              v116 = [v115 isRequiresOptionalMatterAttributeForCharacteristic:obja];

              if (v116)
              {
                v117 = objc_autoreleasePoolPush();
                v118 = v108;
                v119 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                {
                  v120 = HMFGetLogIdentifier();
                  v121 = [v192 nodeID];
                  *buf = 138544130;
                  v213 = v120;
                  v214 = 2112;
                  v215 = v82;
                  v216 = 2112;
                  v217 = v193;
                  v218 = 2112;
                  v219 = v121;
                  _os_log_impl(&dword_22AEAE000, v119, OS_LOG_TYPE_DEBUG, "%{public}@Optional characteristic %@ on endpoint %@ of node %@ requires an additional Optional Matter attribute check", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v117);
                [v176 addObject:v191];
              }

              v85 = 1;
              v29 = v193;
            }
          }

          v188 = [v84 countByEnumeratingWithState:&v194 objects:v210 count:16];
          if (v188)
          {
            continue;
          }

          break;
        }

        v83 = v192;
        v75 = v167;
        if (v85)
        {
          goto LABEL_74;
        }
      }

      else
      {
      }

      v122 = objc_autoreleasePoolPush();
      v123 = v190;
      v124 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
      {
        v125 = HMFGetLogIdentifier();
        v126 = [v83 nodeID];
        *buf = 138544130;
        v213 = v125;
        v214 = 2112;
        v215 = v82;
        v216 = 2112;
        v217 = v193;
        v218 = 2112;
        v219 = v126;
        _os_log_impl(&dword_22AEAE000, v124, OS_LOG_TYPE_DEBUG, "%{public}@Optional characteristic %@ cannot be found in clusters in use at endpoint %@ of node %@", buf, 0x2Au);

        v29 = v193;
      }

      objc_autoreleasePoolPop(v122);
LABEL_74:

      v28 = v171;
      v79 = v169 + 1;
      v78 = v163;
      if (v169 + 1 == v165)
      {
        v77 = [v75 countByEnumeratingWithState:&v198 objects:v211 count:16];
        if (v77)
        {
          goto LABEL_37;
        }

        goto LABEL_76;
      }
    }
  }

  v36 = v35;
  v37 = *v207;
LABEL_3:
  v38 = 0;
  while (1)
  {
    if (*v207 != v37)
    {
      objc_enumerationMutation(v34);
    }

    v168 = v38;
    v39 = *(*(&v206 + 1) + 8 * v38);
    v40 = [(HMMTRDescriptorClusterManager *)v190 protocolMap];
    v181 = v39;
    v41 = [v40 getIDForCharacteristic:v39];

    if (!v41)
    {
      break;
    }

    if (!v28 || ![v28 count])
    {
      v141 = objc_autoreleasePoolPush();
      v142 = v190;
      v143 = HMFGetOSLogHandle();
      v83 = v192;
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v145 = v144 = v28;
        v146 = [v192 nodeID];
        *buf = 138544130;
        v213 = v145;
        v214 = 2112;
        v215 = v181;
        v216 = 2112;
        v217 = v29;
        v218 = 2112;
        v219 = v146;
        _os_log_impl(&dword_22AEAE000, v143, OS_LOG_TYPE_DEBUG, "%{public}@Failed to find HAP to CHIP cluster mapping for characteristic %@ on endpoint %@ of node %@, aborting", buf, 0x2Au);

        v28 = v144;
      }

      objc_autoreleasePoolPop(v141);
      goto LABEL_80;
    }

    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    obj = [v28 objectForKeyedSubscript:v41];
    v187 = [obj countByEnumeratingWithState:&v202 objects:v222 count:16];
    if (!v187)
    {

LABEL_96:
      v153 = objc_autoreleasePoolPush();
      v154 = v190;
      v155 = HMFGetOSLogHandle();
      v83 = v192;
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
      {
        v156 = HMFGetLogIdentifier();
        v157 = [v192 nodeID];
        *buf = 138544130;
        v213 = v156;
        v214 = 2112;
        v215 = v41;
        v216 = 2112;
        v217 = v193;
        v218 = 2112;
        v219 = v157;
        _os_log_impl(&dword_22AEAE000, v155, OS_LOG_TYPE_DEBUG, "%{public}@Mandatory characteristic %@ cannot be found in clusters in use at endpoint %@ of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v153);
      v29 = v193;
      goto LABEL_80;
    }

    v164 = v36;
    v166 = v37;
    v170 = v28;
    v42 = 0;
    v43 = *v203;
    v179 = *v203;
    do
    {
      for (j = 0; j != v187; ++j)
      {
        if (*v203 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v202 + 1) + 8 * j);
        v46 = objc_autoreleasePoolPush();
        v47 = v190;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [v192 nodeID];
          *buf = 138544386;
          v213 = v49;
          v214 = 2112;
          v215 = v41;
          v216 = 2112;
          v217 = v45;
          v218 = 2112;
          v219 = v193;
          v220 = 2112;
          v221 = v50;
          _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Looking for required HAP Characteristic %@ as its matching CHIP clusterID %@ on endpoint %@ of node %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v46);
        v51 = [v189 objectForKeyedSubscript:v45];
        v52 = (v51 == 0) | v42;

        if ((v52 & 1) == 0)
        {
          v29 = v193;
          [v192 setClusterIDForCharacteristic:v41 endpointID:v193 clusterID:v45];
          v53 = objc_autoreleasePoolPush();
          v54 = v47;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            v56 = HMFGetLogIdentifier();
            v57 = [v192 nodeID];
            *buf = 138544386;
            v213 = v56;
            v214 = 2112;
            v215 = v41;
            v216 = 2112;
            v217 = v45;
            v218 = 2112;
            v219 = v193;
            v220 = 2112;
            v221 = v57;
            _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_DEBUG, "%{public}@Constructed HAP service description for HAP Characteristic %@, CHIP clusterID %@, endpoint %@ of node %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v53);
          [(HMMTRHAPServiceDescription *)v191 addMandatoryCharacteristic:v41];
          v58 = [(HMMTRDescriptorClusterManager *)v54 protocolMap];
          v59 = [v192 clusterIDCharacteristicMap];
          v60 = [v58 getMTRClusterClassForCharacteristic:v41 endpointID:v193 clusterIDCharacteristicMap:v59];

          if (!v60)
          {
            v128 = objc_autoreleasePoolPush();
            v129 = v54;
            v130 = HMFGetOSLogHandle();
            v83 = v192;
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
            {
              v131 = HMFGetLogIdentifier();
              v132 = [v192 nodeID];
              *buf = 138544130;
              v213 = v131;
              v214 = 2112;
              v215 = v41;
              v216 = 2112;
              v217 = v193;
              v218 = 2112;
              v219 = v132;
              _os_log_impl(&dword_22AEAE000, v130, OS_LOG_TYPE_DEBUG, "%{public}@Cluster class name not found for mandatory characteristic %@ in use at endpoint %@ of node %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v128);
            v28 = v170;
            goto LABEL_80;
          }

          [v185 addObject:v60];
          v61 = [v184 objectForKey:v41];

          if (v61)
          {
            [v177 addObject:v191];
          }

          v62 = [(HMMTRDescriptorClusterManager *)v54 protocolMap];
          v63 = [v62 getRequiredFeaturesBitmapForCharacteristic:v181];

          v64 = objc_autoreleasePoolPush();
          v65 = v54;
          v66 = HMFGetOSLogHandle();
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
          v43 = v179;
          if (v63)
          {
            if (v67)
            {
              v68 = HMFGetLogIdentifier();
              v69 = [v192 nodeID];
              *buf = 138544386;
              v213 = v68;
              v214 = 2112;
              v215 = v63;
              v216 = 2112;
              v217 = v41;
              v218 = 2112;
              v219 = v193;
              v220 = 2112;
              v221 = v69;
              _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_DEBUG, "%{public}@Found required feature map %@ for mandatory characteristic %@ on endpoint %@ of node %@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v64);
            [(HMMTRHAPServiceDescription *)v191 addFeatureMapForCharacteristic:v41 featureMap:v63];
            [v178 addObject:v191];
          }

          else
          {
            if (v67)
            {
              v70 = HMFGetLogIdentifier();
              v71 = [v192 nodeID];
              *buf = 138544130;
              v213 = v70;
              v214 = 2112;
              v215 = v41;
              v216 = 2112;
              v217 = v193;
              v218 = 2112;
              v219 = v71;
              _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_DEBUG, "%{public}@Feature map information not available for mandatory characteristic %@ on endpoint %@ of node %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v64);
          }

          v42 = 1;
        }
      }

      v187 = [obj countByEnumeratingWithState:&v202 objects:v222 count:16];
    }

    while (v187);

    v28 = v170;
    if ((v42 & 1) == 0)
    {
      goto LABEL_96;
    }

    v37 = v166;
    v38 = v168 + 1;
    v36 = v164;
    v29 = v193;
    v34 = v175;
    if (v168 + 1 == v164)
    {
      v36 = [v175 countByEnumeratingWithState:&v206 objects:v223 count:16];
      if (!v36)
      {
        goto LABEL_35;
      }

      goto LABEL_3;
    }
  }

  v147 = objc_autoreleasePoolPush();
  v148 = v190;
  v149 = HMFGetOSLogHandle();
  v83 = v192;
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v151 = v150 = v28;
    v152 = [v192 nodeID];
    *buf = 138544130;
    v213 = v151;
    v214 = 2112;
    v215 = v181;
    v216 = 2112;
    v217 = v29;
    v218 = 2112;
    v219 = v152;
    _os_log_impl(&dword_22AEAE000, v149, OS_LOG_TYPE_DEBUG, "%{public}@Failed to find HAP characteristic ID for characteristic %@ on endpoint %@ of node %@, aborting", buf, 0x2Au);

    v28 = v150;
  }

  objc_autoreleasePoolPop(v147);
  v41 = 0;
LABEL_80:

  v127 = 0;
  v133 = v175;
  v75 = v175;
LABEL_86:

  v139 = *MEMORY[0x277D85DE8];

  return v127;
}

- (id)_buildClustersInUseDictWithClustersInUse:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lX", objc_msgSend(v10, "unsignedLongValue")];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hapServiceDescriptionsForTopology:(id)a3 namesDictionary:(id)a4 server:(id)a5
{
  v115 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v62 = a4;
  v84 = a5;
  v61 = [(HMMTRDescriptorClusterManager *)self protocolMap];
  v83 = [v61 hapToCHIPClusterMappingArray];
  v58 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v58 setNumberStyle:1];
  v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [v8 hapServiceTypes];
  v81 = v8;
  v73 = [v8 hapLinkedServiceTypes];
  v74 = v9;
  v10 = MEMORY[0x277CBEB18];
  v11 = [v9 allKeys];
  v12 = [v10 arrayWithArray:v11];

  v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v12 sortUsingComparator:&__block_literal_global_345];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v12;
  v63 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v63)
  {
    v60 = *v107;
    v82 = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v107 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v13;
        v14 = *(*(&v106 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "integerValue")}];
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v89 = objc_opt_new();
        v88 = objc_opt_new();
        v87 = objc_opt_new();
        v86 = objc_opt_new();
        v85 = [v61 retrieveHAPCharacteristicsToCheckForRequiredAttributeValues];
        v17 = [v81 getPartsListAtEndpoint:v15];
        v18 = [v81 getNodeLabelAtEndpoint:v15];
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = &stru_283ED2308;
        }

        [v62 setObject:v19 forKey:v14];
        v20 = [v81 getClustersInUseAtEndpoint:v15];
        v76 = [(HMMTRDescriptorClusterManager *)self _buildClustersInUseDictWithClustersInUse:v20];

        v21 = [v74 objectForKeyedSubscript:v14];
        v64 = v14;
        v22 = [v73 objectForKeyedSubscript:v14];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v70 = v21;
        v23 = [v70 countByEnumeratingWithState:&v102 objects:v113 count:16];
        v75 = v22;
        if (v23)
        {
          v24 = v23;
          v25 = *v103;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v103 != v25)
              {
                objc_enumerationMutation(v70);
              }

              v27 = *(*(&v102 + 1) + 8 * i);
              v28 = objc_alloc_init(MEMORY[0x277CBEA60]);
              if ([v22 count])
              {
                v29 = [v22 objectForKey:v27];

                v28 = v29;
              }

              v30 = [(HMMTRDescriptorClusterManager *)v82 hapServiceDescriptionForServiceType:v27 linkedServiceTypes:v28 clustersInUse:v76 endpoint:v15 name:v19 hapToCHIPClusterMappingArray:v83 clusterClassesToQuery:v89 hapServicesToCheckForFeatureMap:v88 hapServicesToCheckForOptionalMatterAttribute:v87 hapServicesToCheckForRequiredAttributeValues:v86 hapCharacteristicsToCheckForRequiredAttributeValues:v85 server:v84];
              v31 = v30;
              if (v30)
              {
                [v30 setEndpoint:v15];
                [(HMMTRDescriptorClusterManager *)v82 _removeDisabledCharacteristicsFromServiceDescription:v31 endpoint:v15 topology:v81];
                [v16 addObject:v31];
              }

              v22 = v75;
            }

            v24 = [v70 countByEnumeratingWithState:&v102 objects:v113 count:16];
          }

          while (v24);
        }

        v66 = v19;
        v67 = v15;
        v80 = v16;

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v69 = v17;
        self = v82;
        v77 = [v69 countByEnumeratingWithState:&v98 objects:v112 count:16];
        if (v77)
        {
          v72 = *v99;
          do
          {
            v32 = 0;
            do
            {
              if (*v99 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v78 = v32;
              v33 = *(*(&v98 + 1) + 8 * v32);
              v34 = [v33 stringValue];
              v35 = [v74 objectForKeyedSubscript:v34];

              v36 = [v33 stringValue];
              v37 = [v73 objectForKeyedSubscript:v36];

              v38 = [v81 getClustersInUseAtEndpoint:v33];
              v39 = [(HMMTRDescriptorClusterManager *)v82 _buildClustersInUseDictWithClustersInUse:v38];

              self = v82;
              v40 = [v81 getNodeLabelAtEndpoint:v33];
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v79 = v35;
              v41 = [v79 countByEnumeratingWithState:&v94 objects:v111 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v95;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v95 != v43)
                    {
                      objc_enumerationMutation(v79);
                    }

                    v45 = *(*(&v94 + 1) + 8 * j);
                    v46 = objc_alloc_init(MEMORY[0x277CBEA60]);
                    if ([v37 count])
                    {
                      v47 = [v37 objectForKey:v45];

                      v46 = v47;
                      self = v82;
                    }

                    v48 = [(HMMTRDescriptorClusterManager *)self hapServiceDescriptionForServiceType:v45 linkedServiceTypes:v46 clustersInUse:v39 endpoint:v33 name:v40 hapToCHIPClusterMappingArray:v83 clusterClassesToQuery:v89 hapServicesToCheckForFeatureMap:v88 hapServicesToCheckForOptionalMatterAttribute:v87 hapServicesToCheckForRequiredAttributeValues:v86 hapCharacteristicsToCheckForRequiredAttributeValues:v85 server:v84];
                    v49 = v48;
                    if (v48)
                    {
                      [v48 setEndpoint:v33];
                      [(HMMTRDescriptorClusterManager *)self _removeDisabledCharacteristicsFromServiceDescription:v49 endpoint:v33 topology:v81];
                      [v80 addObject:v49];
                    }
                  }

                  v42 = [v79 countByEnumeratingWithState:&v94 objects:v111 count:16];
                }

                while (v42);
              }

              v50 = [v33 stringValue];
              [v71 addObject:v50];

              v32 = v78 + 1;
            }

            while (v78 + 1 != v77);
            v77 = [v69 countByEnumeratingWithState:&v98 objects:v112 count:16];
          }

          while (v77);
        }

        if (v80)
        {
          [v65 setObject:v80 forKey:v64];
        }

        v13 = v68 + 1;
      }

      while (v68 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v63);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v51 = v71;
  v52 = [v51 countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v91;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v91 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [v65 removeObjectForKey:*(*(&v90 + 1) + 8 * k)];
      }

      v53 = [v51 countByEnumeratingWithState:&v90 objects:v110 count:16];
    }

    while (v53);
  }

  v56 = *MEMORY[0x277D85DE8];

  return v65;
}

uint64_t __90__HMMTRDescriptorClusterManager_hapServiceDescriptionsForTopology_namesDictionary_server___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_removeDisabledCharacteristicsFromServiceDescription:(id)a3 endpoint:(id)a4 topology:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [v7 requiredCharacteristics];
  v11 = [v10 countByEnumeratingWithState:&v46 objects:v55 count:16];
  v40 = v8;
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    v38 = v7;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [HMMTRUtilities hmmtr_shortTypeFromUUID:*(*(&v46 + 1) + 8 * i)];
        v16 = [v7 serviceType];
        v17 = [v9 isHAPCharacteristicDisabledAtEndpoint:v8 hapServiceType:v16 hapCharacteristic:v15];

        if (v17)
        {
          [v7 removeCharacteristic:v15];
          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v21 = v12;
            v22 = v13;
            v23 = v9;
            v25 = v24 = v10;
            *buf = 138543618;
            v52 = v25;
            v53 = 2112;
            v54 = v15;
            _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Removed disabled required characteristic : %@", buf, 0x16u);

            v10 = v24;
            v9 = v23;
            v13 = v22;
            v12 = v21;
            v7 = v38;
          }

          objc_autoreleasePoolPop(v18);
          v8 = v40;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v12);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v7 optionalCharacteristics];
  v26 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = [HMMTRUtilities hmmtr_shortTypeFromUUID:*(*(&v42 + 1) + 8 * j)];
        v31 = [v7 serviceType];
        v32 = [v9 isHAPCharacteristicDisabledAtEndpoint:v8 hapServiceType:v31 hapCharacteristic:v30];

        if (v32)
        {
          [v7 removeCharacteristic:v30];
          v33 = objc_autoreleasePoolPush();
          v34 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v52 = v36;
            v53 = 2112;
            v54 = v30;
            _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Removed disabled optional characteristic : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          v8 = v40;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v27);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)fetchHAPServicesAtCHIPEndpoint:(id)a3 deviceTopology:(id)a4 endpointDeviceTypes:(id)a5 accessoryInfo:(id)a6 hapToCHIPClusterMappingArray:(id)a7 device:(id)a8 isBridge:(BOOL)a9 bridgeAggregateNodeEndpoint:(id)a10 isComposedDevice:(BOOL)a11 server:(id)a12 callbackQueue:(id)a13 completionHandler:(id)a14
{
  v179 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v133 = a4;
  v112 = a5;
  v111 = a6;
  v131 = a7;
  v20 = a8;
  v21 = a10;
  v132 = a12;
  v114 = a13;
  v22 = v21;
  v110 = a14;
  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v20 nodeID];
    *buf = 138544386;
    v172 = v26;
    v173 = 2112;
    v174 = v19;
    v175 = 2112;
    v176 = v22;
    v177 = 1024;
    *v178 = a11;
    *&v178[4] = 2112;
    *&v178[6] = v27;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Fetching server list from descriptor cluster at endpoint %@, bridgeAggregateNodeEndpoint %@, isComposedDevice %d of node %@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = [(HMMTRDescriptorClusterManager *)v24 buildClusterDescriptorWithDevice:v20 endpointID:v19 queue:v114];
  v29 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v109 = v28;
  v30 = [v28 readAttributeServerListWithParams:v29];

  v108 = v30;
  v31 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v30 forIdentify:@"ServerList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v107 = v31;

  v113 = v33;
  if (v33)
  {
    if ([v33 count])
    {
      v103 = v22;
      v104 = v20;
      [v133 setClustersInUse:v33 atEndpoint:v19];
      v34 = [(HMMTRDescriptorClusterManager *)v24 protocolMap];
      v126 = [(HMMTRDescriptorClusterManager *)v24 _buildClustersInUseDictWithClustersInUse:v33];
      v35 = [v133 getHAPServiceTypesAtEndpoint:v19];
      v124 = [v133 getHAPLinkedServiceTypesAtEndpoint:v19];
      v36 = [v133 getHAPCategoriesAtEndpoint:v19];
      v128 = objc_opt_new();
      v127 = objc_opt_new();
      v118 = objc_opt_new();
      v120 = objc_opt_new();
      v101 = v34;
      v122 = [v34 retrieveHAPCharacteristicsToCheckForRequiredAttributeValues];
      v37 = objc_autoreleasePoolPush();
      v38 = v24;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [v104 nodeID];
        *buf = 138544130;
        v172 = v40;
        v173 = 2112;
        v174 = v19;
        v175 = 2112;
        v176 = v41;
        v177 = 2112;
        *v178 = v33;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Retrieved at endpoint %@ of node %@, following clusters in use %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v37);
      v42 = objc_autoreleasePoolPush();
      v43 = v38;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v46 = [v104 nodeID];
        *buf = 138544130;
        v172 = v45;
        v173 = 2112;
        v174 = v19;
        v175 = 2112;
        v176 = v46;
        v177 = 2112;
        *v178 = v36;
        _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_INFO, "%{public}@Retrieved at endpoint %@ of node %@, following HAP categories in use %@", buf, 0x2Au);
      }

      v99 = v36;
      v130 = v19;

      v47 = v43;
      objc_autoreleasePoolPop(v42);
      v48 = objc_opt_new();
      v116 = objc_opt_new();
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      obj = v35;
      v49 = [obj countByEnumeratingWithState:&v164 objects:v170 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v165;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v165 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v53 = *(*(&v164 + 1) + 8 * i);
            v54 = [v124 objectForKey:v53];
            v55 = [v133 getNodeLabelAtEndpoint:v19];
            if (v55)
            {
              v56 = v55;
            }

            else
            {
              v56 = &stru_283ED2308;
            }

            v57 = [(HMMTRDescriptorClusterManager *)v47 hapServiceDescriptionForServiceType:v53 linkedServiceTypes:v54 clustersInUse:v126 endpoint:v19 name:v56 hapToCHIPClusterMappingArray:v131 clusterClassesToQuery:v128 hapServicesToCheckForFeatureMap:v127 hapServicesToCheckForOptionalMatterAttribute:v118 hapServicesToCheckForRequiredAttributeValues:v120 hapCharacteristicsToCheckForRequiredAttributeValues:v122 server:v132];
            v58 = v57;
            if (v57)
            {
              [v57 setEndpoint:v19];
              [v116 addObject:v58];
              [v48 addObject:v53];
            }
          }

          v50 = [obj countByEnumeratingWithState:&v164 objects:v170 count:16];
        }

        while (v50);
      }

      v59 = [v128 allObjects];
      v102 = [v59 mutableCopy];

      v60 = [v128 allObjects];
      v61 = [v60 mutableCopy];

      v62 = objc_opt_new();
      v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v142[0] = MEMORY[0x277D85DD0];
      v142[1] = 3221225472;
      v142[2] = __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke;
      v142[3] = &unk_2786EE618;
      v142[4] = v47;
      v143 = v19;
      v144 = v104;
      v145 = v112;
      v146 = v114;
      v98 = v61;
      v147 = v98;
      v119 = v118;
      v148 = v119;
      v97 = v62;
      v149 = v97;
      v150 = v116;
      v151 = v133;
      v152 = v103;
      v153 = v132;
      v96 = v120;
      v154 = v96;
      v95 = v122;
      v155 = v95;
      v94 = v93;
      v156 = v94;
      v92 = v91;
      v157 = v92;
      v161 = v110;
      v162 = a9;
      v106 = v99;
      v158 = v106;
      v159 = v111;
      v160 = v113;
      v163 = a11;
      v100 = v151;
      v117 = v150;
      v105 = v143;
      [(HMMTRDescriptorClusterManager *)v47 _verifyHAPCharacteristicSupportAtCHIPEndpoint:v143 device:v144 endpointDeviceTypes:v145 callbackQueue:v146 clusterClassToQueryForFeatureMap:v102 hapServicesToCheckForFeatureMap:v127 hapServicesInUse:v150 deviceTopology:v151 bridgeAggregateNodeEndpoint:v152 server:v153 lastError:0 completionHandler:v142];
      v63 = [v124 mutableCopy];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v64 = v124;
      v65 = [v64 countByEnumeratingWithState:&v138 objects:v169 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v139;
        v121 = *v139;
        v123 = v64;
        do
        {
          v68 = 0;
          v125 = v66;
          do
          {
            if (*v139 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v138 + 1) + 8 * v68);
            if ([v48 containsObject:v69])
            {
              v70 = [v64 objectForKey:v69];
              v71 = [v70 mutableCopy];
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v137 = 0u;
              v72 = v70;
              v73 = [v72 countByEnumeratingWithState:&v134 objects:v168 count:16];
              if (v73)
              {
                v74 = v73;
                v75 = *v135;
                do
                {
                  for (j = 0; j != v74; ++j)
                  {
                    if (*v135 != v75)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v77 = *(*(&v134 + 1) + 8 * j);
                    if (([v48 containsObject:v77] & 1) == 0)
                    {
                      [v71 removeObject:v77];
                    }
                  }

                  v74 = [v72 countByEnumeratingWithState:&v134 objects:v168 count:16];
                }

                while (v74);
              }

              if ([v71 count])
              {
                [v63 setObject:v71 forKey:v69];
              }

              else
              {
                [v63 removeObjectForKey:v69];
              }

              v67 = v121;

              v64 = v123;
              v66 = v125;
            }

            else
            {
              [v63 removeObjectForKey:v69];
            }

            ++v68;
          }

          while (v68 != v66);
          v66 = [v64 countByEnumeratingWithState:&v138 objects:v169 count:16];
        }

        while (v66);
      }

      [v100 setHAPServiceTypes:v48 atEndpoint:v105];
      [v100 setHAPLinkedServiceTypes:v63 atEndpoint:v105];

      v19 = v130;
      v22 = v103;
      v20 = v104;
      v78 = v110;
    }

    else
    {
      v85 = objc_autoreleasePoolPush();
      v86 = v24;
      v87 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v88 = HMFGetLogIdentifier();
        v89 = [v20 nodeID];
        *buf = 138543874;
        v172 = v88;
        v173 = 2112;
        v174 = v19;
        v175 = 2112;
        v176 = v89;
        _os_log_impl(&dword_22AEAE000, v87, OS_LOG_TYPE_ERROR, "%{public}@No clusters in use at endpoint %@ of node %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v85);
      v78 = v110;
      (*(v110 + 2))(v110, 0, a9, v22, 0);
    }
  }

  else
  {
    v79 = objc_autoreleasePoolPush();
    v80 = v24;
    v81 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = HMFGetLogIdentifier();
      v83 = [v20 nodeID];
      *buf = 138543874;
      v172 = v82;
      v173 = 2112;
      v174 = v19;
      v175 = 2112;
      v176 = v83;
      _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch clusters in use at endpoint %@ of node %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v79);
    v84 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2314];
    v78 = v110;
    (*(v110 + 2))(v110, 0, a9, v22, v84);
  }

  v90 = *MEMORY[0x277D85DE8];
}

void __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 104);
  v11 = *(a1 + 88);
  v9 = *(a1 + 120);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke_2;
  v12[3] = &unk_2786EE5F0;
  v12[4] = v3;
  v13 = v2;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 128);
  v17 = *(a1 + 136);
  v18 = *(a1 + 144);
  v19 = *(a1 + 152);
  v20 = *(a1 + 104);
  v21 = *(a1 + 120);
  v27 = *(a1 + 184);
  v28 = *(a1 + 192);
  v22 = *(a1 + 112);
  v23 = *(a1 + 160);
  v24 = *(a1 + 96);
  v25 = *(a1 + 168);
  v26 = *(a1 + 176);
  v29 = *(a1 + 193);
  [v3 _verifyHAPOptionalCharacteristicSupportAtCHIPEndpoint:v13 device:v4 endpointDeviceTypes:v5 callbackQueue:v6 clusterClassToQueryForAttributes:v7 hapServicesToCheckForOptionalMatterAttribute:v8 clusterAttributesSupported:v11 hapServicesInUse:v10 deviceTopology:v9 bridgeAggregateNodeEndpoint:0 server:v12 lastError:? completionHandler:?];
}

void __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v9 = *(a1 + 104);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke_3;
  v11[3] = &unk_2786EE5C8;
  v11[4] = v2;
  v12 = v4;
  v21 = *(a1 + 152);
  v22 = *(a1 + 160);
  v13 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = *(a1 + 40);
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v20 = *(a1 + 56);
  v23 = *(a1 + 161);
  [v2 _verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint:v3 device:v12 callbackQueue:v5 hapServicesToCheckForRequiredAttributeValues:v6 hapCharacteristicsToCheckForRequiredAttributeValues:v7 attributeValuesSupportedDict:v8 attributeValuesRetrievedDict:v10 deviceTopology:v9 server:0 lastError:v11 completionHandler:?];
}

void __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v11 = [*(a1 + 56) getPartsListAtEndpoint:*(a1 + 64)];
    v12 = [*(a1 + 56) getFixedLabelsAtEndpoint:*(a1 + 64)];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke_325;
    v34[3] = &unk_2786EE5A0;
    v35 = *(a1 + 72);
    v36 = *(a1 + 80);
    v13 = v11;
    v37 = v13;
    v14 = v12;
    v38 = v14;
    v39 = *(a1 + 88);
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    v40 = v15;
    v41 = v16;
    v42 = *(a1 + 56);
    v44 = *(a1 + 112);
    v45 = *(a1 + 120);
    v43 = *(a1 + 48);
    v17 = MEMORY[0x2318887D0](v34);
    if ([*(a1 + 96) indexOfObject:&unk_283EE8688] == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 120) != 1)
    {
      if ([*(a1 + 96) indexOfObject:&unk_283EE86A0] == 0x7FFFFFFFFFFFFFFFLL || (*(a1 + 120) & 1) != 0 || (*(a1 + 121) & 1) != 0)
      {
        v17[2](v17, 0);
LABEL_25:

        goto LABEL_26;
      }

      v26 = [*(a1 + 32) createClusterInstance];
      v19 = (v26)[2](v26, @"MTRClusterBasic", *(a1 + 40), *(a1 + 64), *(a1 + 104));

      v27 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v21 = [v19 readAttributeNodeLabelWithParams:v27];

      v22 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v21 forIdentify:@"nodeLabel"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v22;
      }

      else
      {
        v28 = 0;
      }

      v24 = v28;

      if (v24)
      {
LABEL_24:
        [*(a1 + 56) setNodeLabel:v24 atEndpoint:*(a1 + 64)];
        (v17)[2](v17, v24);

        goto LABEL_25;
      }

      context = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        objc_autoreleasePoolPop(context);
        goto LABEL_24;
      }
    }

    else
    {
      v18 = [*(a1 + 32) createClusterInstance];
      v19 = (v18)[2](v18, @"MTRClusterBridgedDeviceBasic", *(a1 + 40), *(a1 + 64), *(a1 + 104));

      v20 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v21 = [v19 readAttributeNodeLabelWithParams:v20];

      v22 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v21 forIdentify:@"nodeLabel"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (v24)
      {
        goto LABEL_24;
      }

      context = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }
    }

    v31 = HMFGetLogIdentifier();
    v30 = [*(a1 + 40) nodeID];
    *buf = 138543618;
    v47 = v31;
    v48 = 2112;
    v49 = v30;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Attribute node label absent from cache of node %@", buf, 0x16u);

    goto LABEL_23;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) nodeID];
    *buf = 138543874;
    v47 = v7;
    v48 = 2112;
    v49 = v8;
    v50 = 2112;
    v51 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@HAP characteristics support verification for node %@ failed with error : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 120);
  v10 = *(a1 + 48);
  (*(*(a1 + 112) + 16))();
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
}

void __242__HMMTRDescriptorClusterManager_fetchHAPServicesAtCHIPEndpoint_deviceTopology_endpointDeviceTypes_accessoryInfo_hapToCHIPClusterMappingArray_device_isBridge_bridgeAggregateNodeEndpoint_isComposedDevice_server_callbackQueue_completionHandler___block_invoke_325(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[HMMTRHAPDescriptionAtEndpoint alloc] initWithType:*(a1 + 32) serviceDescriptions:*(a1 + 40) name:v3 partsList:*(a1 + 48) fixedLabels:*(a1 + 56)];
  [*(a1 + 64) setAccessoryInfo:v4 forEndpoint:*(a1 + 72)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 80);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 88);
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updated topology : %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 64);
  v11 = *(a1 + 112);
  v12 = *(a1 + 96);
  (*(*(a1 + 104) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint:(id)a3 device:(id)a4 callbackQueue:(id)a5 hapServicesToCheckForRequiredAttributeValues:(id)a6 hapCharacteristicsToCheckForRequiredAttributeValues:(id)a7 attributeValuesSupportedDict:(id)a8 attributeValuesRetrievedDict:(id)a9 deviceTopology:(id)a10 server:(id)a11 lastError:(id)a12 completionHandler:(id)a13
{
  v117 = *MEMORY[0x277D85DE8];
  v71 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v70 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v62 = a12;
  v25 = a13;
  v63 = v20;
  v69 = v19;
  v72 = v25;
  v73 = v24;
  if (![v20 count] || !objc_msgSend(v21, "count"))
  {
    v38 = v70;
    v39 = [v70 allKeys];
    v37 = v71;
    v74 = v39;
    if (![v70 count] || !objc_msgSend(v39, "count"))
    {
      (*(v25 + 2))(v25, 0);
      v20 = v63;
      goto LABEL_36;
    }

    v68 = v23;
    v59 = v21;
    v61 = v18;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v63;
    v66 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
    if (!v66)
    {
      goto LABEL_34;
    }

    v65 = *v87;
    while (1)
    {
      v40 = 0;
      do
      {
        if (*v87 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v40;
        v41 = *(*(&v86 + 1) + 8 * v40);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v79 = v41;
        v76 = [v41 optionalCharacteristics];
        v42 = [v76 countByEnumeratingWithState:&v82 objects:v103 count:16];
        if (v42)
        {
          v43 = v42;
          v81 = *v83;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v83 != v81)
              {
                objc_enumerationMutation(v76);
              }

              v45 = [HMMTRUtilities hmmtr_shortTypeFromUUID:*(*(&v82 + 1) + 8 * i)];
              if ([v39 containsObject:v45])
              {
                v46 = [v38 objectForKey:v45];
                v47 = v22;
                v48 = [v22 objectForKey:v45];
                v49 = v48;
                if (v48)
                {
                  v50 = 1 << [v48 unsignedIntegerValue];
                  if ((v50 & ~[v46 unsignedIntegerValue]) == 0)
                  {

LABEL_29:
                    v22 = v47;
                    v25 = v72;
                    v24 = v73;
                    v39 = v74;
                    goto LABEL_30;
                  }

                  [v79 removeCharacteristic:v45];
                  v51 = objc_autoreleasePoolPush();
                  v57 = self;
                  v53 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                  {
                    v54 = HMFGetLogIdentifier();
                    *buf = 138544386;
                    v106 = v54;
                    v107 = 2112;
                    v108 = v45;
                    v109 = 2112;
                    v55 = v71;
                    v110 = v71;
                    v111 = 2112;
                    v112 = v49;
                    v113 = 2112;
                    v114 = v46;
                    v56 = v53;
LABEL_26:
                    _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_INFO, "%{public}@Removed unsupported characteristic %@ for endpoint %@ due to attribute value %@ not matching supported attribute mask %@.", buf, 0x34u);

LABEL_28:
                    objc_autoreleasePoolPop(v51);

                    v46 = [v79 serviceType];
                    [v68 addHAPDisabledCharacteristic:v45 atEndpoint:v55 hapServiceType:v46];
                    v37 = v55;
                    v19 = v69;
                    v38 = v70;
                    goto LABEL_29;
                  }
                }

                else
                {
                  [v79 removeCharacteristic:v45];
                  v51 = objc_autoreleasePoolPush();
                  v52 = self;
                  v53 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                  {
                    v54 = HMFGetLogIdentifier();
                    *buf = 138544386;
                    v106 = v54;
                    v107 = 2112;
                    v108 = v45;
                    v109 = 2112;
                    v55 = v71;
                    v110 = v71;
                    v111 = 2112;
                    v112 = 0;
                    v113 = 2112;
                    v114 = v46;
                    v56 = v53;
                    goto LABEL_26;
                  }
                }

                v55 = v71;
                goto LABEL_28;
              }

LABEL_30:
            }

            v43 = [v76 countByEnumeratingWithState:&v82 objects:v103 count:16];
          }

          while (v43);
        }

        v40 = v67 + 1;
      }

      while (v67 + 1 != v66);
      v66 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
      if (!v66)
      {
LABEL_34:

        (*(v25 + 2))(v25, v62);
        v21 = v59;
        v18 = v61;
        v20 = v63;
        v23 = v68;
        goto LABEL_36;
      }
    }
  }

  v26 = v22;
  v60 = v18;
  v74 = [v21 keyEnumerator];
  v27 = [v74 nextObject];
  v28 = [v21 objectForKey:v27];
  v29 = [(HMMTRDescriptorClusterManager *)self protocolMap];
  v30 = [v24 clusterIDCharacteristicMap];
  v31 = v27;
  v80 = [v29 getClusterClassForCharacteristic:v27 endpointID:v71 clusterIDCharacteristicMap:v30];

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138544642;
    v106 = v35;
    v107 = 2112;
    v108 = v31;
    v109 = 2112;
    v110 = v80;
    v111 = 2112;
    v112 = v20;
    v113 = 2112;
    v114 = v21;
    v115 = 2112;
    v116 = v28;
    _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint shortCharacteristicKey = %@, clusterClassName = %@,  hapServicesToCheckForRequiredAttributeValues = %@, hapCharacteristicsToCheckForRequiredAttributeValues = %@, curHAPCharacteristicAttributesToCheck = %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v32);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __332__HMMTRDescriptorClusterManager__verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint_device_callbackQueue_hapServicesToCheckForRequiredAttributeValues_hapCharacteristicsToCheckForRequiredAttributeValues_attributeValuesSupportedDict_attributeValuesRetrievedDict_deviceTopology_server_lastError_completionHandler___block_invoke;
  v90[3] = &unk_2786EE578;
  v91 = v26;
  v92 = v31;
  v93 = v70;
  v94 = v21;
  v95 = v33;
  v75 = v28;
  v96 = v71;
  v97 = v60;
  v98 = v69;
  v99 = v20;
  v100 = v23;
  v24 = v73;
  v101 = v73;
  v25 = v72;
  v102 = v72;
  v78 = v31;
  v36 = v33;
  v22 = v26;
  v38 = v70;
  v37 = v71;
  [(HMMTRDescriptorClusterManager *)v36 _queryAttributeValueFromClusterAtCHIPEndpoint:v96 device:v97 attributeValuesToCheckDict:v28 attributeValuesSupportedDict:v93 attributeValuesRetrievedDict:v91 callbackQueue:v98 clusterClassName:v80 completionHandler:v90];

  v18 = v60;
  v19 = v69;

LABEL_36:
  v58 = *MEMORY[0x277D85DE8];
}

void __332__HMMTRDescriptorClusterManager__verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint_device_callbackQueue_hapServicesToCheckForRequiredAttributeValues_hapCharacteristicsToCheckForRequiredAttributeValues_attributeValuesSupportedDict_attributeValuesRetrievedDict_deviceTopology_server_lastError_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (a4)
  {
    [*(a1 + 32) setObject:a4 forKey:*(a1 + 40)];
  }

  [*(a1 + 48) setObject:v6 forKey:*(a1 + 40)];
  [*(a1 + 56) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 64) _verifyHAPCharacteristicSupportWithRequiredAttributeValuesAtCHIPEndpoint:*(a1 + 72) device:*(a1 + 80) callbackQueue:*(a1 + 88) hapServicesToCheckForRequiredAttributeValues:*(a1 + 96) hapCharacteristicsToCheckForRequiredAttributeValues:*(a1 + 56) attributeValuesSupportedDict:*(a1 + 48) attributeValuesRetrievedDict:*(a1 + 32) deviceTopology:*(a1 + 104) server:*(a1 + 112) lastError:0 completionHandler:*(a1 + 120)];
}

- (void)_verifyHAPOptionalCharacteristicSupportAtCHIPEndpoint:(id)a3 device:(id)a4 endpointDeviceTypes:(id)a5 callbackQueue:(id)a6 clusterClassToQueryForAttributes:(id)a7 hapServicesToCheckForOptionalMatterAttribute:(id)a8 clusterAttributesSupported:(id)a9 hapServicesInUse:(id)a10 deviceTopology:(id)a11 bridgeAggregateNodeEndpoint:(id)a12 server:(id)a13 lastError:(id)a14 completionHandler:(id)a15
{
  v139 = *MEMORY[0x277D85DE8];
  v96 = a3;
  v20 = a4;
  v80 = a5;
  v82 = a6;
  v21 = a7;
  v22 = a8;
  v89 = a9;
  v23 = v20;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = v21;
  v28 = a13;
  v77 = a14;
  v76 = a15;
  v29 = objc_autoreleasePoolPush();
  v30 = self;
  v31 = HMFGetOSLogHandle();
  v98 = v30;
  v81 = v24;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v32 = v27;
    v34 = v33 = v23;
    [v33 nodeID];
    v36 = v35 = v22;
    *buf = 138543874;
    v125 = v34;
    v126 = 2112;
    v127 = v36;
    v128 = 2112;
    v129 = v32;
    _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Cluster classes to query for attributes of node %@: %@", buf, 0x20u);

    v22 = v35;
    v30 = v98;

    v23 = v33;
    v27 = v32;
  }

  v92 = v28;
  v78 = v26;
  v88 = v25;

  objc_autoreleasePoolPop(v29);
  v90 = v23;
  v79 = v27;
  if ([v27 count])
  {
    v94 = [v27 popFirstObject];
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __328__HMMTRDescriptorClusterManager__verifyHAPOptionalCharacteristicSupportAtCHIPEndpoint_device_endpointDeviceTypes_callbackQueue_clusterClassToQueryForAttributes_hapServicesToCheckForOptionalMatterAttribute_clusterAttributesSupported_hapServicesInUse_deviceTopology_bridgeAggregateNodeEndpoint_server_lastError_completionHandler___block_invoke;
    v111[3] = &unk_2786EE550;
    v111[4] = v30;
    v37 = v96;
    v112 = v96;
    v38 = v22;
    v113 = v23;
    v39 = v89;
    v114 = v89;
    v40 = v80;
    v115 = v80;
    v116 = v82;
    v117 = v27;
    v118 = v38;
    v119 = v81;
    v41 = v25;
    v120 = v25;
    v42 = v26;
    v121 = v26;
    v43 = v92;
    v122 = v92;
    v44 = v76;
    v123 = v76;
    v45 = v23;
    [(HMMTRDescriptorClusterManager *)v98 _querySupportedAttributesFromClusterAtCHIPEndpoint:v112 device:v113 callbackQueue:v116 clusterClassName:v94 completionHandler:v111];

    v46 = v77;
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v75 = v22;
    obj = v22;
    v37 = v96;
    v39 = v89;
    v85 = [obj countByEnumeratingWithState:&v107 objects:v138 count:16];
    if (v85)
    {
      v84 = *v108;
      do
      {
        v47 = 0;
        do
        {
          if (*v108 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v86 = v47;
          v48 = *(*(&v107 + 1) + 8 * v47);
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v91 = v48;
          v87 = [v48 optionalCharacteristics];
          v95 = [v87 countByEnumeratingWithState:&v103 objects:v137 count:16];
          if (v95)
          {
            v93 = *v104;
            do
            {
              for (i = 0; i != v95; ++i)
              {
                if (*v104 != v93)
                {
                  objc_enumerationMutation(v87);
                }

                v50 = *(*(&v103 + 1) + 8 * i);
                v51 = [HMMTRUtilities hmmtr_shortTypeFromUUID:v50];
                v52 = [(HMMTRDescriptorClusterManager *)v98 protocolMap];
                v53 = [v92 clusterIDCharacteristicMap];
                v54 = [v52 getClusterClassForCharacteristic:v51 endpointID:v37 clusterIDCharacteristicMap:v53];

                v55 = [v39 objectForKey:v54];
                v56 = [(HMMTRDescriptorClusterManager *)v98 protocolMap];
                v57 = [v56 getCHIPAttributesForCharacteristic:v50];

                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v58 = v57;
                v59 = [v58 countByEnumeratingWithState:&v99 objects:v136 count:16];
                if (v59)
                {
                  v60 = v59;
                  v61 = *v100;
                  while (2)
                  {
                    for (j = 0; j != v60; ++j)
                    {
                      if (*v100 != v61)
                      {
                        objc_enumerationMutation(v58);
                      }

                      if (([v55 containsObject:*(*(&v99 + 1) + 8 * j)] & 1) == 0)
                      {
                        v63 = objc_autoreleasePoolPush();
                        v64 = v98;
                        v65 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                        {
                          v66 = HMFGetLogIdentifier();
                          v67 = [v90 nodeID];
                          *buf = 138544642;
                          v125 = v66;
                          v126 = 2112;
                          v127 = v58;
                          v128 = 2112;
                          v129 = v51;
                          v130 = 2112;
                          v131 = v55;
                          v132 = 2112;
                          v133 = v96;
                          v134 = 2112;
                          v135 = v67;
                          _os_log_impl(&dword_22AEAE000, v65, OS_LOG_TYPE_INFO, "%{public}@Attributes %@ for characteristic %@ not found in supported attribute list %@ for endpoint %@ of node %@", buf, 0x3Eu);

                          v37 = v96;
                          v39 = v89;
                        }

                        objc_autoreleasePoolPop(v63);
                        [v91 removeCharacteristic:v51];
                        v68 = [v91 serviceType];
                        [v88 addHAPDisabledCharacteristic:v51 atEndpoint:v37 hapServiceType:v68];

                        v69 = objc_autoreleasePoolPush();
                        v70 = v64;
                        v71 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                        {
                          v72 = HMFGetLogIdentifier();
                          v73 = [v90 nodeID];
                          *buf = 138544130;
                          v125 = v72;
                          v126 = 2112;
                          v127 = v51;
                          v128 = 2112;
                          v129 = v96;
                          v130 = 2112;
                          v131 = v73;
                          _os_log_impl(&dword_22AEAE000, v71, OS_LOG_TYPE_INFO, "%{public}@Removed unsupported characteristic %@ for endpoint %@ of node %@", buf, 0x2Au);

                          v39 = v89;
                          v37 = v96;
                        }

                        objc_autoreleasePoolPop(v69);
                        goto LABEL_29;
                      }
                    }

                    v60 = [v58 countByEnumeratingWithState:&v99 objects:v136 count:16];
                    if (v60)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_29:
              }

              v95 = [v87 countByEnumeratingWithState:&v103 objects:v137 count:16];
            }

            while (v95);
          }

          v47 = v86 + 1;
        }

        while (v86 + 1 != v85);
        v85 = [obj countByEnumeratingWithState:&v107 objects:v138 count:16];
      }

      while (v85);
    }

    v44 = v76;
    v46 = v77;
    (*(v76 + 2))(v76, v77);
    v45 = v90;
    v40 = v80;
    v38 = v75;
    v41 = v88;
    v42 = v78;
    v43 = v92;
  }

  v74 = *MEMORY[0x277D85DE8];
}

void __328__HMMTRDescriptorClusterManager__verifyHAPOptionalCharacteristicSupportAtCHIPEndpoint_device_endpointDeviceTypes_callbackQueue_clusterClassToQueryForAttributes_hapServicesToCheckForOptionalMatterAttribute_clusterAttributesSupported_hapServicesInUse_deviceTopology_bridgeAggregateNodeEndpoint_server_lastError_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = [*(a1 + 48) nodeID];
      *buf = 138544386;
      v20 = v13;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to get device attribute list for cluster class name %@ at endpoint %@ of node %@. Error: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v16 = [*(a1 + 32) protocolMap];
    v17 = [v16 mtrBaseClusterNameFromMTRClusterName:v7];

    [*(a1 + 56) setObject:v8 forKey:v17];
  }

  [*(a1 + 32) _verifyHAPOptionalCharacteristicSupportAtCHIPEndpoint:*(a1 + 40) device:*(a1 + 48) endpointDeviceTypes:*(a1 + 64) callbackQueue:*(a1 + 72) clusterClassToQueryForAttributes:*(a1 + 80) hapServicesToCheckForOptionalMatterAttribute:*(a1 + 88) clusterAttributesSupported:*(a1 + 56) hapServicesInUse:*(a1 + 96) deviceTopology:*(a1 + 104) bridgeAggregateNodeEndpoint:*(a1 + 112) server:*(a1 + 120) lastError:0 completionHandler:*(a1 + 128)];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_verifyHAPCharacteristicSupportAtCHIPEndpoint:(id)a3 device:(id)a4 endpointDeviceTypes:(id)a5 callbackQueue:(id)a6 clusterClassToQueryForFeatureMap:(id)a7 hapServicesToCheckForFeatureMap:(id)a8 hapServicesInUse:(id)a9 deviceTopology:(id)a10 bridgeAggregateNodeEndpoint:(id)a11 server:(id)a12 lastError:(id)a13 completionHandler:(id)a14
{
  v143 = *MEMORY[0x277D85DE8];
  v96 = a3;
  v19 = a4;
  v89 = a5;
  v88 = a6;
  v20 = a7;
  v87 = a8;
  v21 = a9;
  v22 = a10;
  v23 = v19;
  v24 = a11;
  v25 = a12;
  v85 = a13;
  v84 = a14;
  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  v98 = v22;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v23 nodeID];
    *buf = 138543874;
    v136 = v29;
    v137 = 2112;
    *v138 = v30;
    *&v138[8] = 2112;
    *&v138[10] = v20;
    _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Cluster classes to query for feature map of node %@: %@", buf, 0x20u);

    v22 = v98;
  }

  v83 = v24;
  v86 = v21;

  objc_autoreleasePoolPop(v26);
  v99 = v25;
  v97 = v23;
  if ([v20 count])
  {
    v107 = [v20 popFirstObject];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __280__HMMTRDescriptorClusterManager__verifyHAPCharacteristicSupportAtCHIPEndpoint_device_endpointDeviceTypes_callbackQueue_clusterClassToQueryForFeatureMap_hapServicesToCheckForFeatureMap_hapServicesInUse_deviceTopology_bridgeAggregateNodeEndpoint_server_lastError_completionHandler___block_invoke;
    v122[3] = &unk_2786EE528;
    v122[4] = v27;
    v31 = v20;
    v123 = v96;
    v124 = v23;
    v125 = v22;
    v126 = v88;
    v127 = v89;
    v128 = v20;
    v32 = v87;
    v129 = v87;
    v33 = v21;
    v130 = v21;
    v34 = v83;
    v131 = v83;
    v132 = v99;
    v35 = v84;
    v133 = v84;
    v36 = v27;
    v37 = v107;
    v38 = v96;
    v39 = v31;
    v25 = v99;
    [(HMMTRDescriptorClusterManager *)v36 _queryFeatureMapFromClusterAtCHIPEndpoint:v123 device:v124 callbackQueue:v126 clusterClassName:v107 completionHandler:v122];

    v40 = v85;
    goto LABEL_45;
  }

  v100 = v27;
  v82 = v20;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v87;
  v38 = v96;
  v92 = [obj countByEnumeratingWithState:&v118 objects:v142 count:16];
  if (!v92)
  {
    goto LABEL_29;
  }

  v91 = *v119;
  do
  {
    v41 = 0;
    do
    {
      if (*v119 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v93 = v41;
      v42 = *(*(&v118 + 1) + 8 * v41);
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v104 = v42;
      v94 = [v42 characteristicFeatureMap];
      v102 = [v94 countByEnumeratingWithState:&v114 objects:v141 count:16];
      if (v102)
      {
        v101 = *v115;
        do
        {
          for (i = 0; i != v102; ++i)
          {
            if (*v115 != v101)
            {
              objc_enumerationMutation(v94);
            }

            v44 = *(*(&v114 + 1) + 8 * i);
            v45 = [HMMTRUtilities hmmtr_shortTypeFromUUID:v44];
            v46 = [(HMMTRDescriptorClusterManager *)v100 protocolMap];
            v47 = [v25 clusterIDCharacteristicMap];
            v48 = [v46 getClusterClassForCharacteristic:v45 endpointID:v38 clusterIDCharacteristicMap:v47];

            v108 = v48;
            v49 = [v22 getFeatureMapForClusterClassName:v48 endpoint:v38];
            v50 = [v104 characteristicFeatureMap];
            v51 = [v50 objectForKey:v44];

            v52 = objc_autoreleasePoolPush();
            v53 = v100;
            v54 = HMFGetOSLogHandle();
            v55 = v54;
            if (!v49)
            {
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v68 = v67 = v52;
                v69 = [v97 nodeID];
                *buf = 138544386;
                v136 = v68;
                v137 = 2112;
                *v138 = v45;
                *&v138[8] = 2112;
                *&v138[10] = v108;
                *&v138[18] = 2112;
                *v139 = v38;
                *&v139[8] = 2112;
                v140 = v69;
                _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device feature map value for characteristic %@ with cluster class name %@ at endpoint %@ of node %@", buf, 0x34u);

                v25 = v99;
                v52 = v67;
                v22 = v98;
              }

              goto LABEL_24;
            }

            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v56 = v95 = v52;
              v57 = [v49 unsignedIntValue];
              v58 = [v51 unsignedIntValue];
              v59 = [v97 nodeID];
              *buf = 138544386;
              v136 = v56;
              v137 = 1024;
              *v138 = v57;
              *&v138[4] = 2112;
              *&v138[6] = v45;
              *&v138[14] = 1024;
              *&v138[16] = v58;
              v22 = v98;
              v25 = v99;
              *v139 = 2112;
              *&v139[2] = v59;
              _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Comparing device feature map %u with characteristic %@ required feature map %u of node %@", buf, 0x2Cu);

              v38 = v96;
              v52 = v95;
            }

            objc_autoreleasePoolPop(v52);
            v60 = [v49 unsignedIntegerValue];
            v61 = [v51 unsignedIntegerValue] & v60;
            if (v61 != [v51 unsignedIntegerValue])
            {
              [v104 removeCharacteristic:v45];
              v62 = [v104 serviceType];
              [v22 addHAPDisabledCharacteristic:v45 atEndpoint:v38 hapServiceType:v62];

              v63 = objc_autoreleasePoolPush();
              v64 = v53;
              v55 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                v65 = HMFGetLogIdentifier();
                v66 = [v97 nodeID];
                *buf = 138544130;
                v136 = v65;
                v137 = 2112;
                *v138 = v45;
                *&v138[8] = 2112;
                *&v138[10] = v96;
                *&v138[18] = 2112;
                *v139 = v66;
                _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Removed unsupported characteristic %@ for endpoint %@ of node %@", buf, 0x2Au);

                v22 = v98;
                v38 = v96;
              }

              v52 = v63;
              v25 = v99;
LABEL_24:

              objc_autoreleasePoolPop(v52);
            }
          }

          v102 = [v94 countByEnumeratingWithState:&v114 objects:v141 count:16];
        }

        while (v102);
      }

      v41 = v93 + 1;
    }

    while (v93 + 1 != v92);
    v92 = [obj countByEnumeratingWithState:&v118 objects:v142 count:16];
  }

  while (v92);
LABEL_29:

  v37 = [v89 objectForKey:v38];
  v39 = v82;
  v70 = v87;
  v35 = v84;
  v40 = v85;
  if ([v37 count] == 1)
  {
    v105 = [v37 objectAtIndex:0];
    if ([v105 integerValue] == 256)
    {
      v103 = [v22 getClustersInUseAtEndpoint:v38];
      if ([v103 containsObject:&unk_283EE8670])
      {
        v109 = v37;
        v71 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000008-0000-1000-8000-0026BB765291"];
        v72 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000043-0000-1000-8000-0026BB765291"];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v73 = v86;
        v74 = [v73 countByEnumeratingWithState:&v110 objects:v134 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v111;
          do
          {
            for (j = 0; j != v75; ++j)
            {
              if (*v111 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v78 = *(*(&v110 + 1) + 8 * j);
              v79 = [v78 serviceType];
              v80 = [v79 isEqualToString:v72];

              if (v80)
              {
                [v78 removeCharacteristic:v71];
                [v22 addHAPDisabledCharacteristic:v71 atEndpoint:v96 hapServiceType:v72];
              }

              v25 = v99;
            }

            v75 = [v73 countByEnumeratingWithState:&v110 objects:v134 count:16];
          }

          while (v75);
        }

        v38 = v96;
        v39 = v82;
        v70 = v87;
        v35 = v84;
        v40 = v85;
        v37 = v109;
      }
    }
  }

  (v35)[2](v35, v40);
  v33 = v86;
  v34 = v83;
  v32 = v70;
LABEL_45:

  v81 = *MEMORY[0x277D85DE8];
}

void __280__HMMTRDescriptorClusterManager__verifyHAPCharacteristicSupportAtCHIPEndpoint_device_endpointDeviceTypes_callbackQueue_clusterClassToQueryForFeatureMap_hapServicesToCheckForFeatureMap_hapServicesInUse_deviceTopology_bridgeAggregateNodeEndpoint_server_lastError_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v26 = a4;
  if (v26)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) nodeID];
      *buf = 138544130;
      v40 = v12;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v13;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to get device feature map value for cluster class name %@ at endpoint %@ of node %@. Ignoring feature map errors", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = &unk_283EE8598;
  }

  v15 = [*(a1 + 32) protocolMap];
  v16 = [v15 mtrBaseClusterNameFromMTRClusterName:v7];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v7;
  }

  v19 = v18;

  [*(a1 + 56) addDeviceFeatureMapValue:v8 clusterClassName:v19 atEndpoint:*(a1 + 40)];
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __280__HMMTRDescriptorClusterManager__verifyHAPCharacteristicSupportAtCHIPEndpoint_device_endpointDeviceTypes_callbackQueue_clusterClassToQueryForFeatureMap_hapServicesToCheckForFeatureMap_hapServicesInUse_deviceTopology_bridgeAggregateNodeEndpoint_server_lastError_completionHandler___block_invoke_304;
  v27[3] = &unk_2786EE500;
  v27[4] = v21;
  v28 = v20;
  v29 = *(a1 + 48);
  v30 = *(a1 + 72);
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  v33 = *(a1 + 88);
  v34 = *(a1 + 96);
  v35 = *(a1 + 56);
  v36 = *(a1 + 104);
  v37 = *(a1 + 112);
  v38 = *(a1 + 120);
  [v21 _populateAttributeValuesForClusterClassName:v7 clusterClassFeatureMap:v8 endpoint:v28 device:v22 deviceTopology:v23 callbackQueue:v24 completionHandler:v27];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_populateMeasuredValueAttributeForClusterClassName:(id)a3 clusterClassFeatureMap:(id)a4 endpoint:(id)a5 device:(id)a6 deviceTopology:(id)a7 callbackQueue:(id)a8
{
  v95 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (([v14 isEqualToString:@"HMMTRSyncClusterCarbonDioxideConcentrationMeasurement"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"MTRClusterCarbonDioxideConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"HMMTRSyncClusterCarbonMonoxideConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"MTRClusterCarbonMonoxideConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"HMMTRSyncClusterNitrogenDioxideConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"MTRClusterNitrogenDioxideConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"HMMTRSyncClusterOzoneConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"MTRClusterOzoneConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"HMMTRSyncClusterPM10ConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"MTRClusterPM10ConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"HMMTRSyncClusterPM25ConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"MTRClusterPM25ConcentrationMeasurement") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"HMMTRSyncClusterTotalVolatileOrganicCompoundsConcentrationMeasurement") & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"MTRClusterTotalVolatileOrganicCompoundsConcentrationMeasurement"))
  {
    v80 = v18;
    v75 = v15;
    v20 = [(HMMTRDescriptorClusterManager *)self protocolMap];
    v21 = [v20 getBaseClusterName:v14];

    v76 = self;
    v22 = [(HMMTRDescriptorClusterManager *)self createClusterInstance];
    v81 = v17;
    v23 = v17;
    v24 = v21;
    v74 = v19;
    (v22)[2](v22, v14, v23, v16, v19);
    v26 = v25 = v16;

    v27 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v28 = [v26 readAttributeMinMeasuredValueWithParams:v27];

    v29 = [v21 stringByAppendingString:@"MinMeasuredValue"];
    v30 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v28 forIdentify:v29];

    v83 = v14;
    v31 = v30;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    v34 = v25;
    v35 = v31;
    v82 = v26;
    if (!v33)
    {
      v77 = v28;
      v36 = objc_autoreleasePoolPush();
      v37 = v76;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [v81 nodeID];
        *buf = 138544130;
        v88 = v39;
        v89 = 2112;
        v90 = v83;
        v91 = 2112;
        v92 = v25;
        v93 = 2112;
        v94 = v40;
        _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_ERROR, "%{public}@MinMeasuredValue attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v36);
      v35 = &unk_283EE8598;
      v34 = v25;
      v28 = v77;
    }

    v86 = v35;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    v78 = v34;
    [v80 addDeviceAttributeValues:v41 clusterClassName:v83 attributeName:@"MinMeasuredValue" atEndpoint:v34];

    v42 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v43 = [v26 readAttributeMaxMeasuredValueWithParams:v42];

    v44 = [v24 stringByAppendingString:@"MaxMeasuredValue"];
    v45 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v43 forIdentify:v44];

    v46 = v45;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    v49 = v46;
    v79 = v24;
    if (!v48)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v76;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        v54 = [v81 nodeID];
        *buf = 138544130;
        v88 = v53;
        v89 = 2112;
        v90 = v83;
        v91 = 2112;
        v92 = v78;
        v93 = 2112;
        v94 = v54;
        _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_ERROR, "%{public}@MaxMeasuredValue attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v50);
      v49 = &unk_283EE8658;
      v26 = v82;
    }

    v85 = v49;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    [v80 addDeviceAttributeValues:v55 clusterClassName:v83 attributeName:@"MaxMeasuredValue" atEndpoint:v78];

    v56 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v57 = [v26 readAttributeMeasurementUnitWithParams:v56];

    v58 = v57;
    v59 = [v24 stringByAppendingString:@"MeasurementUnit"];
    v60 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v57 forIdentify:v59];

    v61 = v60;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    v63 = v62;

    if (v63)
    {
      v84 = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
      [v80 addDeviceAttributeValues:v64 clusterClassName:v83 attributeName:@"MeasurementUnit" atEndpoint:v78];

      v65 = 0;
      v18 = v80;
      v19 = v74;
      v17 = v81;
      v66 = v82;
      v16 = v78;
      v14 = v83;
    }

    else
    {
      v67 = objc_autoreleasePoolPush();
      v68 = v76;
      v69 = HMFGetOSLogHandle();
      v14 = v83;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        v71 = [v81 nodeID];
        *buf = 138544130;
        v88 = v70;
        v89 = 2112;
        v90 = v83;
        v91 = 2112;
        v92 = v78;
        v93 = 2112;
        v94 = v71;
        _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_ERROR, "%{public}@MeasurementUnit attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v67);
      v65 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14];
      v16 = v78;
      v18 = v80;
      v17 = v81;
      v19 = v74;
      v66 = v82;
    }

    v15 = v75;
  }

  else
  {
    v65 = 0;
  }

  v72 = *MEMORY[0x277D85DE8];

  return v65;
}

- (void)_populateAttributeValuesForClusterClassName:(id)a3 clusterClassFeatureMap:(id)a4 endpoint:(id)a5 device:(id)a6 deviceTopology:(id)a7 callbackQueue:(id)a8 completionHandler:(id)a9
{
  v249 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v228 = a7;
  v230 = a8;
  v226 = a9;
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544386;
    v240 = v22;
    v241 = 2112;
    v242 = v15;
    v243 = 2112;
    v244 = v16;
    v245 = 2112;
    v246 = v17;
    v247 = 2112;
    v248 = v18;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Populate attribute values for %@ cluster with featureMap %@ on endpoint %@ from device %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v19);
  v227 = v16;
  v229 = v18;
  if ([v15 isEqualToString:@"MTRClusterPowerSourceConfiguration"])
  {
    v23 = [(HMMTRDescriptorClusterManager *)v20 createClusterInstance];
    v24 = (v23)[2](v23, v15, v18, v17, v230);

    v25 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v26 = [v24 readAttributeSourcesWithParams:v25];

    v27 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v26 forIdentify:@"sources"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (!v29)
    {
      v223 = v24;
      v44 = objc_autoreleasePoolPush();
      v45 = v20;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [v229 nodeID];
        *buf = 138544130;
        v240 = v47;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v48;
        _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Sources attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v44);
      v35 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2310];
      v30 = v228;
      v24 = v223;
      goto LABEL_29;
    }

    v30 = v228;
    [v228 addDeviceAttributeValues:v29 clusterClassName:v15 attributeName:@"Sources" atEndpoint:v17];
LABEL_15:
    v35 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if ([v15 isEqualToString:@"MTRClusterPowerSource"])
  {
    v31 = [(HMMTRDescriptorClusterManager *)v20 createClusterInstance];
    v24 = (v31)[2](v31, v15, v18, v17, v230);

    v32 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v26 = [v24 readAttributeOrderWithParams:v32];

    v27 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v26 forIdentify:@"order"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v27;
    }

    else
    {
      v33 = 0;
    }

    v29 = v33;

    if (!v29)
    {
      v49 = v17;
      v50 = v15;
      v51 = v49;
      v224 = v24;
      v52 = objc_autoreleasePoolPush();
      v53 = v20;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        v56 = [v18 nodeID];
        *buf = 138544130;
        v240 = v55;
        v241 = 2112;
        v242 = v50;
        v243 = 2112;
        v244 = v51;
        v245 = 2112;
        v246 = v56;
        _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_ERROR, "%{public}@Order attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v52);
      v35 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2311];
      v30 = v228;
      v24 = v224;
      v57 = v51;
      v15 = v50;
      v17 = v57;
      goto LABEL_29;
    }

    v238 = v29;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v238 count:1];
    v30 = v228;
    [v228 addDeviceAttributeValues:v34 clusterClassName:v15 attributeName:@"Order" atEndpoint:v17];

    goto LABEL_15;
  }

  if (([v15 isEqualToString:@"MTRClusterColorControl"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"HMMTRSyncColorControl"))
  {
    v36 = [(HMMTRDescriptorClusterManager *)v20 createClusterInstance];
    v37 = (v36)[2](v36, v15, v18, v17, v230);

    v38 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v222 = v37;
    v39 = [v37 readAttributeColorTempPhysicalMinMiredsWithParams:v38];

    v40 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v39 forIdentify:@"colorTempPhysicalMinMireds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;

    if (v42)
    {
      v237 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:1];
      [v228 addDeviceAttributeValues:v43 clusterClassName:v15 attributeName:@"ColorTempPhysicalMinMireds" atEndpoint:v17];

      v35 = 0;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v59 = v20;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        v62 = [v229 nodeID];
        *buf = 138544130;
        v240 = v61;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v62;
        _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_ERROR, "%{public}@ColorTempPhysicalMinMireds attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      v35 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2312];
    }

    v63 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v64 = [v222 readAttributeColorTempPhysicalMaxMiredsWithParams:v63];

    v65 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v64 forIdentify:@"colorTempPhysicalMaxMireds"];

    v66 = v65;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;

    if (v68)
    {
      v236 = v68;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v236 count:1];
      v30 = v228;
      [v228 addDeviceAttributeValues:v69 clusterClassName:v15 attributeName:@"ColorTempPhysicalMaxMireds" atEndpoint:v17];
    }

    else
    {
      v70 = objc_autoreleasePoolPush();
      v71 = v20;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = HMFGetLogIdentifier();
        [v229 nodeID];
        v74 = contextb = v70;
        *buf = 138544130;
        v240 = v73;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v74;
        _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_ERROR, "%{public}@ColorTempPhysicalMaxMireds attribute from the %@ cluster endpoint:%@ absent from cache of node %@", buf, 0x2Au);

        v70 = contextb;
      }

      objc_autoreleasePoolPop(v70);
      [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2313];
      v35 = v69 = v35;
      v30 = v228;
    }

    v24 = v222;
    goto LABEL_30;
  }

  if (([v15 isEqualToString:@"HMMTRThermostat"] & 1) == 0 && !objc_msgSend(v15, "isEqualToString:", @"MTRClusterThermostat"))
  {
    v30 = v228;
    v83 = [(HMMTRDescriptorClusterManager *)v20 _populateMeasuredValueAttributeForClusterClassName:v15 clusterClassFeatureMap:v16 endpoint:v17 device:v18 deviceTopology:v228 callbackQueue:v230];
    if (v83)
    {
      v24 = v83;
      v35 = v24;
    }

    else
    {
      v24 = 0;
      v35 = 0;
    }

    goto LABEL_30;
  }

  v24 = v16;
  v75 = [(HMMTRDescriptorClusterManager *)v20 createClusterInstance];
  v76 = (v75)[2](v75, v15, v18, v17, v230);

  contexta = v76;
  v225 = v24;
  if (([v24 unsignedIntValue] & 2) != 0 || (objc_msgSend(v24, "unsignedIntValue") & 0x20) != 0)
  {
    v77 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v78 = [v76 readAttributeMinCoolSetpointLimitWithParams:v77];

    v79 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v78 forIdentify:@"minCoolSetpointLimit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    v81 = v80;

    if (v81)
    {
      v82 = v78;
    }

    else
    {
      v84 = objc_autoreleasePoolPush();
      v85 = v20;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = HMFGetLogIdentifier();
        v88 = [v229 nodeID];
        *buf = 138544130;
        v240 = v87;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v88;
        _os_log_impl(&dword_22AEAE000, v86, OS_LOG_TYPE_INFO, "%{public}@MinCoolSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

        v76 = contexta;
      }

      objc_autoreleasePoolPop(v84);
      v89 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v82 = [v76 readAttributeAbsMinCoolSetpointLimitWithParams:v89];

      v90 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v82 forIdentify:@"absMinCoolSetpointLimit"];

      v79 = v90;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v79;
      }

      else
      {
        v91 = 0;
      }

      v92 = v91;

      if (!v92)
      {
        v118 = v82;
        v119 = objc_autoreleasePoolPush();
        v120 = v85;
        v121 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
        {
          v122 = HMFGetLogIdentifier();
          v123 = [v229 nodeID];
          *buf = 138544130;
          v240 = v122;
          v241 = 2112;
          v242 = v15;
          v243 = 2112;
          v244 = v17;
          v245 = 2112;
          v246 = v123;
          _os_log_impl(&dword_22AEAE000, v121, OS_LOG_TYPE_INFO, "%{public}@AbsMinCoolSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v119);
        v93 = &unk_283EE85E0;
        v82 = v118;
        goto LABEL_61;
      }
    }

    v93 = v79;
LABEL_61:
    v94 = objc_autoreleasePoolPush();
    v95 = v20;
    v96 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      v97 = HMFGetLogIdentifier();
      [v229 nodeID];
      v98 = v211 = v82;
      *buf = 138544386;
      v240 = v97;
      v241 = 2112;
      v242 = v93;
      v243 = 2112;
      v244 = v15;
      v245 = 2112;
      v246 = v17;
      v247 = 2112;
      v248 = v98;
      _os_log_impl(&dword_22AEAE000, v96, OS_LOG_TYPE_INFO, "%{public}@Saving AbsMinCoolSetpointLimit attribute as %@ from the %@ cluster for endpoint:%@ of node %@", buf, 0x34u);

      v82 = v211;
    }

    objc_autoreleasePoolPop(v94);
    v235 = v93;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v235 count:1];
    [v228 addDeviceAttributeValues:v99 clusterClassName:v15 attributeName:@"AbsMinCoolSetpointLimit" atEndpoint:v17];

    v100 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v76 = contexta;
    v101 = [contexta readAttributeMaxCoolSetpointLimitWithParams:v100];

    v102 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v101 forIdentify:@"maxCoolSetpointLimit"];

    v103 = v102;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    v105 = v104;

    v217 = v95;
    if (v105)
    {
      v106 = v101;
      v107 = v103;
    }

    else
    {
      v108 = objc_autoreleasePoolPush();
      v109 = v95;
      v110 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
      {
        v111 = HMFGetLogIdentifier();
        v112 = [v229 nodeID];
        *buf = 138544130;
        v240 = v111;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v112;
        _os_log_impl(&dword_22AEAE000, v110, OS_LOG_TYPE_INFO, "%{public}@MaxCoolSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

        v76 = contexta;
      }

      objc_autoreleasePoolPop(v108);
      v113 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v114 = [v76 readAttributeAbsMaxCoolSetpointLimitWithParams:v113];

      v212 = v114;
      v115 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v114 forIdentify:@"absMaxCoolSetpointLimit"];

      v103 = v115;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v116 = v103;
      }

      else
      {
        v116 = 0;
      }

      v117 = v116;

      if (v117)
      {
        v107 = v103;
      }

      else
      {
        v124 = objc_autoreleasePoolPush();
        v125 = v109;
        v126 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
        {
          v127 = HMFGetLogIdentifier();
          v128 = [v229 nodeID];
          *buf = 138544130;
          v240 = v127;
          v241 = 2112;
          v242 = v15;
          v243 = 2112;
          v244 = v17;
          v245 = 2112;
          v246 = v128;
          _os_log_impl(&dword_22AEAE000, v126, OS_LOG_TYPE_INFO, "%{public}@AbsMaxCoolSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

          v76 = contexta;
        }

        objc_autoreleasePoolPop(v124);
        v107 = &unk_283EE85F8;
      }

      v106 = v212;
    }

    v129 = objc_autoreleasePoolPush();
    v130 = v217;
    v131 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v132 = v213 = v106;
      v133 = [v229 nodeID];
      *buf = 138544386;
      v240 = v132;
      v241 = 2112;
      v242 = v107;
      v243 = 2112;
      v244 = v15;
      v245 = 2112;
      v246 = v17;
      v247 = 2112;
      v248 = v133;
      _os_log_impl(&dword_22AEAE000, v131, OS_LOG_TYPE_INFO, "%{public}@Saving AbsMaxCoolSetpointLimit attribute as %@ from the %@ cluster for endpoint:%@ of node %@", buf, 0x34u);

      v76 = contexta;
      v106 = v213;
    }

    objc_autoreleasePoolPop(v129);
    v234 = v107;
    v134 = [MEMORY[0x277CBEA60] arrayWithObjects:&v234 count:1];
    [v228 addDeviceAttributeValues:v134 clusterClassName:v15 attributeName:@"AbsMaxCoolSetpointLimit" atEndpoint:v17];

    v24 = v225;
  }

  if (([v24 unsignedIntValue] & 1) != 0 || (objc_msgSend(v24, "unsignedIntValue") & 0x20) != 0)
  {
    v135 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v136 = [v76 readAttributeMinHeatSetpointLimitWithParams:v135];

    v137 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v136 forIdentify:@"minHeatSetpointLimit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v138 = v137;
    }

    else
    {
      v138 = 0;
    }

    v139 = v138;

    if (v139)
    {
      v140 = v136;
    }

    else
    {
      v141 = objc_autoreleasePoolPush();
      v142 = v20;
      v143 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
      {
        v144 = HMFGetLogIdentifier();
        v145 = [v229 nodeID];
        *buf = 138544130;
        v240 = v144;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v145;
        _os_log_impl(&dword_22AEAE000, v143, OS_LOG_TYPE_INFO, "%{public}@MinHeatSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

        v76 = contexta;
      }

      objc_autoreleasePoolPop(v141);
      v146 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v140 = [v76 readAttributeAbsMinHeatSetpointLimitWithParams:v146];

      v147 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v140 forIdentify:@"absMinHeatSetpointLimit"];

      v137 = v147;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v148 = v137;
      }

      else
      {
        v148 = 0;
      }

      v149 = v148;

      if (!v149)
      {
        v175 = v140;
        v176 = objc_autoreleasePoolPush();
        v177 = v142;
        v178 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
        {
          v179 = HMFGetLogIdentifier();
          v180 = [v229 nodeID];
          *buf = 138544130;
          v240 = v179;
          v241 = 2112;
          v242 = v15;
          v243 = 2112;
          v244 = v17;
          v245 = 2112;
          v246 = v180;
          _os_log_impl(&dword_22AEAE000, v178, OS_LOG_TYPE_INFO, "%{public}@AbsMinHeatSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v176);
        v150 = &unk_283EE8610;
        v140 = v175;
        goto LABEL_100;
      }
    }

    v150 = v137;
LABEL_100:
    v151 = objc_autoreleasePoolPush();
    v152 = v20;
    v153 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
    {
      v154 = HMFGetLogIdentifier();
      [v229 nodeID];
      v155 = v214 = v140;
      *buf = 138544386;
      v240 = v154;
      v241 = 2112;
      v242 = v150;
      v243 = 2112;
      v244 = v15;
      v245 = 2112;
      v246 = v17;
      v247 = 2112;
      v248 = v155;
      _os_log_impl(&dword_22AEAE000, v153, OS_LOG_TYPE_INFO, "%{public}@Saving AbsMinHeatSetpointLimit attribute as %@ from the %@ cluster for endpoint:%@ of node %@", buf, 0x34u);

      v140 = v214;
    }

    objc_autoreleasePoolPop(v151);
    v233 = v150;
    v156 = [MEMORY[0x277CBEA60] arrayWithObjects:&v233 count:1];
    [v228 addDeviceAttributeValues:v156 clusterClassName:v15 attributeName:@"AbsMinHeatSetpointLimit" atEndpoint:v17];

    v157 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v76 = contexta;
    v158 = [contexta readAttributeMaxHeatSetpointLimitWithParams:v157];

    v159 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v158 forIdentify:@"maxHeatSetpointLimit"];

    v160 = v159;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v161 = v160;
    }

    else
    {
      v161 = 0;
    }

    v162 = v161;

    v218 = v152;
    if (v162)
    {
      v163 = v158;
      v164 = v160;
    }

    else
    {
      v165 = objc_autoreleasePoolPush();
      v166 = v152;
      v167 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
      {
        v168 = HMFGetLogIdentifier();
        v169 = [v229 nodeID];
        *buf = 138544130;
        v240 = v168;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v169;
        _os_log_impl(&dword_22AEAE000, v167, OS_LOG_TYPE_INFO, "%{public}@MaxHeatSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

        v76 = contexta;
      }

      objc_autoreleasePoolPop(v165);
      v170 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v171 = [v76 readAttributeAbsMaxHeatSetpointLimitWithParams:v170];

      v215 = v171;
      v172 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v171 forIdentify:@"absMaxHeatSetpointLimit"];

      v160 = v172;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v173 = v160;
      }

      else
      {
        v173 = 0;
      }

      v174 = v173;

      if (v174)
      {
        v164 = v160;
      }

      else
      {
        v181 = objc_autoreleasePoolPush();
        v182 = v166;
        v183 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
        {
          v184 = HMFGetLogIdentifier();
          v185 = [v229 nodeID];
          *buf = 138544130;
          v240 = v184;
          v241 = 2112;
          v242 = v15;
          v243 = 2112;
          v244 = v17;
          v245 = 2112;
          v246 = v185;
          _os_log_impl(&dword_22AEAE000, v183, OS_LOG_TYPE_INFO, "%{public}@AbsMaxHeatSetpointLimit attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

          v76 = contexta;
        }

        objc_autoreleasePoolPop(v181);
        v164 = &unk_283EE8628;
      }

      v163 = v215;
    }

    v186 = objc_autoreleasePoolPush();
    v187 = v218;
    v188 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v189 = v216 = v163;
      v190 = [v229 nodeID];
      *buf = 138544386;
      v240 = v189;
      v241 = 2112;
      v242 = v164;
      v243 = 2112;
      v244 = v15;
      v245 = 2112;
      v246 = v17;
      v247 = 2112;
      v248 = v190;
      _os_log_impl(&dword_22AEAE000, v188, OS_LOG_TYPE_INFO, "%{public}@Saving AbsMaxHeatSetpointLimit attribute as %@ from the %@ cluster for endpoint:%@ of node %@", buf, 0x34u);

      v76 = contexta;
      v163 = v216;
    }

    objc_autoreleasePoolPop(v186);
    v232 = v164;
    v191 = [MEMORY[0x277CBEA60] arrayWithObjects:&v232 count:1];
    [v228 addDeviceAttributeValues:v191 clusterClassName:v15 attributeName:@"AbsMaxHeatSetpointLimit" atEndpoint:v17];

    v24 = v225;
  }

  if (([v24 unsignedIntValue] & 0x20) != 0)
  {
    v192 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v193 = [v76 readAttributeMinSetpointDeadBandWithParams:v192];

    v194 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v193 forIdentify:@"minSetpointDeadBand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v195 = v194;
    }

    else
    {
      v195 = 0;
    }

    v196 = v195;

    v197 = v194;
    if (!v196)
    {
      v198 = objc_autoreleasePoolPush();
      v199 = v20;
      v200 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v202 = v201 = v193;
        v203 = [v229 nodeID];
        *buf = 138544130;
        v240 = v202;
        v241 = 2112;
        v242 = v15;
        v243 = 2112;
        v244 = v17;
        v245 = 2112;
        v246 = v203;
        _os_log_impl(&dword_22AEAE000, v200, OS_LOG_TYPE_INFO, "%{public}@MinSetpointDeadBand attribute from the %@ cluster endpoint:%@ of node %@ not available", buf, 0x2Au);

        v76 = contexta;
        v193 = v201;
      }

      objc_autoreleasePoolPop(v198);
      v197 = &unk_283EE8640;
    }

    v204 = objc_autoreleasePoolPush();
    v205 = v20;
    v206 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v208 = v207 = v193;
      v209 = [v229 nodeID];
      *buf = 138544386;
      v240 = v208;
      v241 = 2112;
      v242 = v197;
      v243 = 2112;
      v244 = v15;
      v245 = 2112;
      v246 = v17;
      v247 = 2112;
      v248 = v209;
      _os_log_impl(&dword_22AEAE000, v206, OS_LOG_TYPE_INFO, "%{public}@Saving MinSetpointDeadBand attribute as %@ from the %@ cluster for endpoint:%@ of node %@", buf, 0x34u);

      v76 = contexta;
      v193 = v207;
    }

    objc_autoreleasePoolPop(v204);
    v231 = v197;
    v210 = [MEMORY[0x277CBEA60] arrayWithObjects:&v231 count:1];
    [v228 addDeviceAttributeValues:v210 clusterClassName:v15 attributeName:@"MinSetpointDeadBand" atEndpoint:v17];

    v24 = v225;
  }

  v35 = 0;
  v30 = v228;
LABEL_30:

  v226[2](v226, v35);
  v58 = *MEMORY[0x277D85DE8];
}

- (void)_queryAttributeValueFromClusterAtCHIPEndpoint:(id)a3 device:(id)a4 attributeValuesToCheckDict:(id)a5 attributeValuesSupportedDict:(id)a6 attributeValuesRetrievedDict:(id)a7 callbackQueue:(id)a8 clusterClassName:(id)a9 completionHandler:(id)a10
{
  v94 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v83 = a4;
  v17 = a5;
  v82 = a6;
  v81 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if ([v17 count] && objc_msgSend(v19, "length"))
  {
    v78 = [v17 keyEnumerator];
    v21 = [v78 nextObject];
    v22 = [(HMMTRDescriptorClusterManager *)self protocolMap];
    v23 = [v22 mtrClusterNameFromMTRBaseClusterName:v21];

    v77 = v21;
    v24 = [v17 objectForKey:v21];
    v25 = [v24 firstObject];

    v26 = [v25 objectForKey:@"Selector"];
    v76 = v25;
    v27 = [v25 objectForKey:@"SupportedAttributeBitmap"];
    v28 = [(HMMTRDescriptorClusterManager *)self createClusterInstance];
    v80 = v23;
    v29 = (v28)[2](v28, v23, v83, v16, v18);

    v79 = v26;
    v30 = v26;
    v31 = v29;
    v32 = NSSelectorFromString(v30);
    if (v29 && (v33 = v32, (objc_opt_respondsToSelector() & 1) != 0))
    {
      v85 = 0;
      v84 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v34 = [v29 methodSignatureForSelector:v33];
      v74 = v34;
      if (v34)
      {
        v35 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v34];
        [v35 setArgument:&v84 atIndex:2];
        [v35 setSelector:v33];
        [v35 invokeWithTarget:v31];
        v72 = v35;
        [v35 getReturnValue:&v85];
        v36 = v85;
        v37 = v27;
        v71 = v36;
        if (v36)
        {
          v38 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v36 forIdentify:@"attributeValue"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;
          v67 = v38;

          context = objc_autoreleasePoolPush();
          v68 = self;
          v41 = HMFGetOSLogHandle();
          v42 = v41;
          if (v40)
          {
            v43 = v72;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v44 = v65 = v40;
              *buf = 138544130;
              v87 = v44;
              v88 = 2112;
              v89 = v19;
              v90 = 2112;
              v91 = v16;
              v92 = 2112;
              v93 = v65;
              _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_INFO, "%{public}@Received supportedAttribute value from accessory for cluster class %@ on endpoint %@. Value: %@", buf, 0x2Au);

              v40 = v65;
            }

            objc_autoreleasePoolPop(context);
            v20[2](v20, v80, v37, v40, 0);
          }

          else
          {
            v43 = v72;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v62 = HMFGetLogIdentifier();
              *buf = 138543874;
              v87 = v62;
              v88 = 2112;
              v89 = v31;
              v90 = 2112;
              v91 = v16;
              _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Error: Failed to read attribute value from cluster class %@ on endpoint %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            v63 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2309];
            (v20)[2](v20, v80, v37, 0, v63);

            v40 = 0;
          }

          v61 = v67;
        }

        else
        {
          v56 = objc_autoreleasePoolPush();
          v57 = self;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v70 = v19;
            v60 = v59 = v18;
            *buf = 138543874;
            v87 = v60;
            v88 = 2112;
            v89 = v31;
            v90 = 2112;
            v91 = v16;
            _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@Error: Failed to read attribute from cluster class %@ on endpoint %@", buf, 0x20u);

            v18 = v59;
            v19 = v70;
          }

          objc_autoreleasePoolPop(v56);
          v61 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2308];
          (v20)[2](v20, v80, v37, 0, v61);
          v43 = v72;
        }
      }

      else
      {
        v73 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        v37 = v27;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v69 = v19;
          v55 = v54 = v18;
          *buf = 138543874;
          v87 = v55;
          v88 = 2112;
          v89 = v79;
          v90 = 2112;
          v91 = v31;
          _os_log_impl(&dword_22AEAE000, v53, OS_LOG_TYPE_ERROR, "%{public}@Error: Cannot get signature for %@ from %@ cluster", buf, 0x20u);

          v18 = v54;
          v19 = v69;
        }

        objc_autoreleasePoolPop(v73);
        v43 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
        (v20)[2](v20, v80, v37, 0, v43);
      }
    }

    else
    {
      v75 = v18;
      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v48 = v16;
        v50 = v49 = v31;
        *buf = 138543618;
        v87 = v50;
        v88 = 2112;
        v89 = v49;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Attribute selector not found for cluster: %@", buf, 0x16u);

        v31 = v49;
        v16 = v48;
      }

      objc_autoreleasePoolPop(v45);
      v51 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      v37 = v27;
      (v20)[2](v20, v80, v27, 0, v51);

      v18 = v75;
    }
  }

  else
  {
    v20[2](v20, 0, &unk_283EE8598, 0, 0);
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (void)_querySupportedAttributesFromClusterAtCHIPEndpoint:(id)a3 device:(id)a4 callbackQueue:(id)a5 clusterClassName:(id)a6 completionHandler:(id)a7
{
  v58 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v12 nodeID];
    *buf = 138544130;
    v49 = v19;
    v50 = 2112;
    v51 = v14;
    v52 = 2112;
    v53 = v47;
    v54 = 2112;
    v55 = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Querying device cluster %@ at endpoint %@ of node %@ for supported attributes", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [(HMMTRDescriptorClusterManager *)v17 createClusterInstance];
  v22 = (v21)[2](v21, v14, v12, v47, v13);

  if (objc_opt_respondsToSelector())
  {
    v46 = v13;
    v23 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v24 = [v22 readAttributeAttributeListWithParams:v23];

    v25 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v24 forIdentify:@"attributeList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = objc_autoreleasePoolPush();
    v29 = v17;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (v27)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v32 = v42 = v15;
        [v12 nodeID];
        v44 = v12;
        v34 = v33 = v28;
        *buf = 138544386;
        v49 = v32;
        v50 = 2112;
        v51 = v14;
        v52 = 2112;
        v53 = v47;
        v54 = 2112;
        v55 = v34;
        v56 = 2112;
        v57 = v27;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Received supported attributes list from accessory for cluster class %@ on endpoint %@ of node %@. Attributes: %@", buf, 0x34u);

        v28 = v33;
        v12 = v44;

        v15 = v42;
      }

      objc_autoreleasePoolPop(v28);
      v15[2](v15, v14, v27, 0);
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        v43 = [v12 nodeID];
        *buf = 138544130;
        v49 = v45;
        v50 = 2112;
        v51 = v14;
        v52 = 2112;
        v53 = v47;
        v54 = 2112;
        v55 = v43;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@AttributeList attribute for cluster class %@ on endpoint %@ absent from cache of node %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v28);
      v40 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2307];
      (v15)[2](v15, v14, 0, v40);
    }

    v13 = v46;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v17;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [v12 nodeID];
      *buf = 138543874;
      v49 = v38;
      v50 = 2112;
      v51 = v22;
      v52 = 2112;
      v53 = v39;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@Supported attributes selector not found for cluster: %@ of node %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
    v24 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (v15)[2](v15, v14, 0, v24);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_queryFeatureMapFromClusterAtCHIPEndpoint:(id)a3 device:(id)a4 callbackQueue:(id)a5 clusterClassName:(id)a6 completionHandler:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v12 nodeID];
    *buf = 138544130;
    v48 = v19;
    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v46;
    v53 = 2112;
    v54 = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Querying device cluster %@ at endpoint %@ of node %@ for feature map value", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [(HMMTRDescriptorClusterManager *)v17 createClusterInstance];
  v22 = (v21)[2](v21, v14, v12, v46, v13);

  if (objc_opt_respondsToSelector())
  {
    v45 = v13;
    v23 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v24 = [v22 readAttributeFeatureMapWithParams:v23];

    v25 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v24 forIdentify:@"featureMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = objc_autoreleasePoolPush();
    v29 = v17;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (v27)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v32 = v43 = v12;
        [v43 nodeID];
        v33 = v41 = v28;
        *buf = 138544130;
        v48 = v32;
        v49 = 2112;
        v50 = v14;
        v51 = 2112;
        v52 = v33;
        v53 = 2112;
        v54 = v27;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Received feature map from accessory for cluster class %@ of node %@. Value: %@", buf, 0x2Au);

        v28 = v41;
        v12 = v43;
      }

      objc_autoreleasePoolPop(v28);
      v15[2](v15, v14, v27, 0);
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        v42 = [v12 nodeID];
        *buf = 138543874;
        v48 = v44;
        v49 = 2112;
        v50 = v14;
        v51 = 2112;
        v52 = v42;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Feature map not in cache for cluster class %@ of node %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v39 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2306];
      (v15)[2](v15, v14, 0, v39);
    }

    v13 = v45;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v17;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v12 nodeID];
      *buf = 138543874;
      v48 = v37;
      v49 = 2112;
      v50 = v22;
      v51 = 2112;
      v52 = v38;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Feature map selector not found for cluster: %@ of node %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    v24 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (v15)[2](v15, v14, 0, v24);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)fetchHAPCategoryWithMTRDevice:(id)a3 nodeId:(id)a4 server:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__HMMTRDescriptorClusterManager_fetchHAPCategoryWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke;
  v19[3] = &unk_2786F0ED0;
  v19[4] = self;
  v20 = v12;
  v22 = v13;
  v23 = v14;
  v21 = v11;
  v15 = v13;
  v16 = v11;
  v17 = v14;
  v18 = v12;
  [(HMMTRDescriptorClusterManager *)self fetchEndpointsWithMTRDevice:v16 endpointID:&unk_283EE8598 callbackQueue:v15 completionHandler:v19];
}

void __109__HMMTRDescriptorClusterManager_fetchHAPCategoryWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v7 addObjectsFromArray:v5];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138544130;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Total endpoints In Use at endpoint 0 of node %@: %@. Error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 32);
    v14 = [v7 mutableCopy];
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __109__HMMTRDescriptorClusterManager_fetchHAPCategoryWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_133;
    v24[3] = &unk_2786EE4D8;
    v17 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v25 = v17;
    v26 = *(a1 + 64);
    [v13 fetchDeviceTypesForEndpoints:v14 mtrDevice:v15 endpointDeviceTypes:0 lastError:0 callbackQueue:v16 completionHandler:v24];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = *(a1 + 40);
      *buf = 138543874;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@No Endpoints In Use at endpoint 0 of node %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    (*(*(a1 + 64) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __109__HMMTRDescriptorClusterManager_fetchHAPCategoryWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 40);
      *buf = 138544130;
      v59 = v10;
      v60 = 2112;
      v61 = v11;
      v62 = 2112;
      v63 = v6;
      v64 = 2112;
      v65 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while getting all the device types for each endpoint of node %@. %@. DeviceTypes: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    if (v5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 40);
        *buf = 138543618;
        v59 = v15;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@DeviceList is incomplete, proceeding anyway. Only partial enumeration is possible for node %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_9;
    }

    v38 = *(*(a1 + 48) + 16);
LABEL_43:
    v38();
    goto LABEL_44;
  }

  if (!v5)
  {
    v38 = *(*(a1 + 48) + 16);
    goto LABEL_43;
  }

LABEL_9:
  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = *(a1 + 40);
    *buf = 138543874;
    v59 = v20;
    v60 = 2112;
    v61 = v21;
    v62 = 2112;
    v63 = v5;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration for node %@. The List of device types @%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = [*(a1 + 32) protocolMap];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v23 = v5;
  v45 = [v23 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v45)
  {

    v47 = 0;
    goto LABEL_40;
  }

  v46 = 0;
  v47 = 0;
  v24 = *v53;
  v43 = *v53;
  v44 = v6;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      v26 = v22;
      if (*v53 != v24)
      {
        objc_enumerationMutation(v23);
      }

      v27 = *(*(&v52 + 1) + 8 * i);
      v28 = [v23 objectForKey:v27];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
        while (2)
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v49 != v32)
            {
              objc_enumerationMutation(v29);
            }

            if ([*(*(&v48 + 1) + 8 * j) integerValue] == 14)
            {
              (*(*(a1 + 48) + 16))();

              v6 = v44;
              goto LABEL_44;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      v22 = v26;
      v34 = [v26 categoriesForDeviceTypes:v29];
      if ([v34 count])
      {
        if (!v47)
        {
          goto LABEL_30;
        }

        v35 = [v34 objectAtIndexedSubscript:0];
        if ([v35 isEqual:&unk_283EE85C8])
        {
          goto LABEL_31;
        }

        v41 = [v27 unsignedShortValue];
        if (v41 < [v47 unsignedShortValue])
        {

LABEL_30:
          v36 = [v34 objectAtIndexedSubscript:0];

          v35 = v47;
          v46 = v36;
          v47 = v27;
          v22 = v26;
LABEL_31:
          v24 = v43;

          goto LABEL_33;
        }

        v42 = [v46 isEqual:&unk_283EE85C8];

        if (v42)
        {
          goto LABEL_30;
        }
      }

      v24 = v43;
LABEL_33:
    }

    v45 = [v23 countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v45);

  v37 = v46;
  if (v46)
  {
    (*(*(a1 + 48) + 16))();
    v6 = v44;
    goto LABEL_41;
  }

  v6 = v44;
LABEL_40:
  v39 = *(a1 + 48);
  v37 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v39 + 16))(v39, 0, v23, v37);
LABEL_41:

LABEL_44:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)fetchHAPCategoryForCHIPDevice:(id)a3 nodeId:(id)a4 server:(id)a5 partsList:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v17 count])
  {
    v31 = v16;
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v20 addObjectsFromArray:v17];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v24;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Total endpoints In Use at endpoint 0 of node %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [v20 mutableCopy];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __119__HMMTRDescriptorClusterManager_fetchHAPCategoryForCHIPDevice_nodeId_server_partsList_callbackQueue_completionHandler___block_invoke;
    v32[3] = &unk_2786EE4D8;
    v32[4] = v22;
    v33 = v15;
    v34 = v19;
    [(HMMTRDescriptorClusterManager *)v22 fetchDeviceTypesForEndpoints:v25 device:v14 endpointDeviceTypes:0 lastError:0 callbackQueue:v18 completionHandler:v32];

    v16 = v31;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v29;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@No Endpoints In Use at endpoint 0 of node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
    (*(v19 + 2))(v19, 0, 0, v20);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRDescriptorClusterManager_fetchHAPCategoryForCHIPDevice_nodeId_server_partsList_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 40);
      *buf = 138544130;
      v59 = v10;
      v60 = 2112;
      v61 = v11;
      v62 = 2112;
      v63 = v6;
      v64 = 2112;
      v65 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while getting all the device types for each endpoint of node %@. %@. DeviceTypes: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    if (v5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 40);
        *buf = 138543618;
        v59 = v15;
        v60 = 2112;
        v61 = v16;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@DeviceList is incomplete, proceeding anyway. Only partial enumeration is possible for node %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_9;
    }

    v38 = *(*(a1 + 48) + 16);
LABEL_43:
    v38();
    goto LABEL_44;
  }

  if (!v5)
  {
    v38 = *(*(a1 + 48) + 16);
    goto LABEL_43;
  }

LABEL_9:
  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = *(a1 + 40);
    *buf = 138543874;
    v59 = v20;
    v60 = 2112;
    v61 = v21;
    v62 = 2112;
    v63 = v5;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration for node %@. The List of device types @%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = +[HMMTRProtocolMap protocolMap];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v23 = v5;
  v45 = [v23 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v45)
  {

    v47 = 0;
    goto LABEL_40;
  }

  v46 = 0;
  v47 = 0;
  v24 = *v53;
  v43 = *v53;
  v44 = v6;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      v26 = v22;
      if (*v53 != v24)
      {
        objc_enumerationMutation(v23);
      }

      v27 = *(*(&v52 + 1) + 8 * i);
      v28 = [v23 objectForKey:v27];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
        while (2)
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v49 != v32)
            {
              objc_enumerationMutation(v29);
            }

            if ([*(*(&v48 + 1) + 8 * j) integerValue] == 14)
            {
              (*(*(a1 + 48) + 16))();

              v6 = v44;
              goto LABEL_44;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      v22 = v26;
      v34 = [v26 categoriesForDeviceTypes:v29];
      if ([v34 count])
      {
        if (!v47)
        {
          goto LABEL_30;
        }

        v35 = [v34 objectAtIndexedSubscript:0];
        if ([v35 isEqual:&unk_283EE85C8])
        {
          goto LABEL_31;
        }

        v41 = [v27 unsignedShortValue];
        if (v41 < [v47 unsignedShortValue])
        {

LABEL_30:
          v36 = [v34 objectAtIndexedSubscript:0];

          v35 = v47;
          v46 = v36;
          v47 = v27;
          v22 = v26;
LABEL_31:
          v24 = v43;

          goto LABEL_33;
        }

        v42 = [v46 isEqual:&unk_283EE85C8];

        if (v42)
        {
          goto LABEL_30;
        }
      }

      v24 = v43;
LABEL_33:
    }

    v45 = [v23 countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v45);

  v37 = v46;
  if (v46)
  {
    (*(*(a1 + 48) + 16))();
    v6 = v44;
    goto LABEL_41;
  }

  v6 = v44;
LABEL_40:
  v39 = *(a1 + 48);
  v37 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v39 + 16))(v39, 0, v23, v37);
LABEL_41:

LABEL_44:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)fetchHAPServicesWithMTRDevice:(id)a3 nodeId:(id)a4 server:(id)a5 callbackQueue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__7675;
  v30[4] = __Block_byref_object_dispose__7676;
  v31 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke;
  v22[3] = &unk_2786EE4B0;
  v22[4] = self;
  v17 = v12;
  v23 = v17;
  v18 = v16;
  v27 = v18;
  v28 = v32;
  v19 = v15;
  v24 = v19;
  v20 = v14;
  v25 = v20;
  v29 = v30;
  v21 = v13;
  v26 = v21;
  [(HMMTRDescriptorClusterManager *)self fetchEndpointsWithMTRDevice:v17 endpointID:&unk_283EE8598 callbackQueue:v19 completionHandler:v22];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v7 addObjectsFromArray:v5];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) nodeID];
      *buf = 138544130;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Total endpoints In Use at endpoint 0 of node %@: %@. Error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 32);
    v14 = [v7 mutableCopy];
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_120;
    v28[3] = &unk_2786EE488;
    v28[4] = *(a1 + 32);
    v29 = v15;
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v34 = v17;
    v35 = v18;
    v19 = *(a1 + 56);
    v20 = *(a1 + 88);
    v30 = v19;
    v36 = v20;
    v31 = v5;
    v32 = *(a1 + 64);
    v33 = *(a1 + 48);
    [v13 fetchDeviceTypesForEndpoints:v14 mtrDevice:v29 endpointDeviceTypes:0 lastError:0 callbackQueue:v16 completionHandler:v28];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 40) nodeID];
      *buf = 138543874;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@No Endpoints In Use at endpoint 0 of node %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = *(*(*(a1 + 80) + 8) + 24);
    (*(*(a1 + 72) + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
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
      v11 = [*(a1 + 40) nodeID];
      *buf = 138544130;
      v79 = v10;
      v80 = 2112;
      v81 = v11;
      v82 = 2112;
      v83 = v6;
      v84 = 2112;
      v85 = v5;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while getting all the device types for each endpoint of node %@. %@. DeviceTypes: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    if (!v5)
    {
      v54 = *(*(*(a1 + 88) + 8) + 24);
      (*(*(a1 + 80) + 16))();
      goto LABEL_36;
    }

    v58 = v6;
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) nodeID];
      *buf = 138543618;
      v79 = v15;
      v80 = 2112;
      v81 = v16;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@DeviceList is incomplete, proceeding anyway. Only partial enumeration is possible for node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_9;
  }

  v58 = 0;
  if (v5)
  {
LABEL_9:
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) nodeID];
      *buf = 138543874;
      v79 = v20;
      v80 = 2112;
      v81 = v21;
      v82 = 2112;
      v83 = v5;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Device Type Enumeration for node %@. The List of device types @%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [*(a1 + 48) setEndpointToDeviceTypesMap:v5];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v57 = v5;
    v22 = v5;
    v23 = [v22 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v73;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v73 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
          {
            v27 = *(*(&v72 + 1) + 8 * i);
            v28 = [v22 objectForKey:v27];
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v29 = v28;
            v30 = [v29 countByEnumeratingWithState:&v68 objects:v76 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v69;
              while (2)
              {
                v33 = a1;
                for (j = 0; j != v31; ++j)
                {
                  if (*v69 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  if ([*(*(&v68 + 1) + 8 * j) integerValue] == 14)
                  {
                    a1 = v33;
                    *(*(*(v33 + 88) + 8) + 24) = 1;
                    objc_storeStrong((*(*(v33 + 96) + 8) + 40), v27);
                    goto LABEL_27;
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v68 objects:v76 count:16];
                a1 = v33;
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

LABEL_27:
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v24);
    }

    v5 = v57;
  }

  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v36 = *(a1 + 32);
    v35 = *(a1 + 40);
    v37 = *(*(*(a1 + 96) + 8) + 40);
    v38 = *(a1 + 72);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_2;
    v59[3] = &unk_2786EE460;
    v59[4] = v36;
    v60 = v35;
    v64 = *(a1 + 80);
    v65 = *(a1 + 88);
    v61 = v5;
    v39 = *(a1 + 64);
    v40 = *(a1 + 48);
    v41 = *(a1 + 72);
    v42 = *(a1 + 56);
    *&v43 = v41;
    *(&v43 + 1) = v42;
    *&v44 = v39;
    *(&v44 + 1) = v40;
    v62 = v44;
    v63 = v43;
    [v36 fetchEndpointsWithMTRDevice:v60 endpointID:v37 callbackQueue:v38 completionHandler:v59];
  }

  else
  {
    v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v45 addObjectsFromArray:*(a1 + 56)];
    v46 = *(a1 + 32);
    v47 = [v45 mutableCopy];
    v48 = *(*(*(a1 + 88) + 8) + 24);
    v49 = v5;
    v51 = *(a1 + 40);
    v50 = *(a1 + 48);
    v53 = *(a1 + 64);
    v52 = *(a1 + 72);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_121;
    v66[3] = &unk_2786EE3E8;
    v67 = *(a1 + 80);
    v56 = v50;
    v5 = v49;
    [v46 fetchHAPServicesForEndpoints:v47 endpointDeviceTypes:v49 device:v51 nodeId:v53 isBridge:v48 bridgeAggregateNodeEndpoint:0 server:v56 topology:0 hapAccessoryInfo:0 callbackQueue:v52 completionHandler:v66];
  }

  v6 = v58;
LABEL_36:

  v55 = *MEMORY[0x277D85DE8];
}

void __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) nodeID];
      *buf = 138544130;
      v42 = v11;
      v43 = 2112;
      v44 = v12;
      v45 = 2112;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Endpoints In Use for the bridge of node %@: %@. Error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v32 = *(a1 + 32);
    v13 = [v5 mutableCopy];
    v14 = [*(a1 + 32) getBridgeEndpointsDeviceTypes:v5 endpointDeviceTypes:*(a1 + 48)];
    v31 = *(a1 + 40);
    v30 = *(*(*(a1 + 96) + 8) + 24);
    v15 = *(a1 + 64);
    v28 = *(a1 + 56);
    v29 = *(*(*(a1 + 104) + 8) + 40);
    v16 = *(a1 + 72);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_123;
    v33[3] = &unk_2786EE438;
    v40 = *(a1 + 88);
    v34 = *(a1 + 80);
    v35 = v5;
    v27 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v27;
    *(&v21 + 1) = v17;
    v36 = v21;
    v37 = v20;
    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    [v32 fetchHAPServicesForEndpoints:v13 endpointDeviceTypes:v14 device:v31 nodeId:v28 isBridge:v30 bridgeAggregateNodeEndpoint:v29 server:v15 topology:0 hapAccessoryInfo:0 callbackQueue:v16 completionHandler:v33];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 40) nodeID];
      *buf = 138543874;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while getting all the endpoints for the aggregate node (bridge) endpoint of node %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v24 = *(*(*(a1 + 96) + 8) + 24);
    v25 = *(*(*(a1 + 104) + 8) + 40);
    (*(*(a1 + 88) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_123(uint64_t a1, void *a2, char a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  if (a6)
  {
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_283EE8598, 0}];
    [v14 addObjectsFromArray:*(a1 + 32)];
    [v14 removeObjectsInArray:*(a1 + 40)];
    v21 = *(a1 + 48);
    v15 = [v14 mutableCopy];
    v16 = *(a1 + 64);
    v20 = *(a1 + 56);
    v18 = *(a1 + 80);
    v19 = *(a1 + 72);
    v17 = *(a1 + 88);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_2_124;
    v22[3] = &unk_2786EE410;
    v22[4] = *(a1 + 48);
    v23 = v16;
    v28 = *(a1 + 96);
    v24 = v11;
    v29 = a3;
    v25 = v12;
    v26 = v13;
    v27 = 0;
    [v21 fetchHAPServicesForEndpoints:v15 endpointDeviceTypes:v20 device:v23 nodeId:v19 isBridge:0 bridgeAggregateNodeEndpoint:0 server:v18 topology:0 hapAccessoryInfo:0 callbackQueue:v17 completionHandler:v22];
  }
}

void __109__HMMTRDescriptorClusterManager_fetchHAPServicesWithMTRDevice_nodeId_server_callbackQueue_completionHandler___block_invoke_2_124(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) nodeID];
      v42 = 138543874;
      v43 = v18;
      v44 = 2112;
      v45 = v19;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Native Matter functionalities shall be ignored for fetching HAP services for bridge native Matter functionalities failed for node %@ with error %@", &v42, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = *(a1 + 72);
    v21 = *(a1 + 88);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(*(a1 + 80) + 16);
  }

  else
  {
    if (a3)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) nodeID];
        v42 = 138543618;
        v43 = v29;
        v44 = 2112;
        v45 = v30;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Redundant native bridge Matter functionalities shall be ignored for node %@", &v42, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = *(a1 + 72);
      v32 = *(a1 + 88);
      v33 = *(a1 + 48);
      v34 = *(a1 + 56);
      v35 = *(a1 + 64);
      (*(*(a1 + 80) + 16))();
    }

    v36 = *(a1 + 72);
    v37 = *(a1 + 88);
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    v40 = *(a1 + 64);
    v25 = *(*(a1 + 80) + 16);
  }

  v25();

  v41 = *MEMORY[0x277D85DE8];
}

- (void)fetchAccessoryConfigurationForDevice:(id)a3 nodeId:(id)a4 server:(id)a5 reasonString:(id)a6 callbackQueue:(id)a7 completionHandler:(id)a8
{
  v79 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v60 = a8;
  v61 = v18;
  v62 = v14;
  v19 = [(HMMTRDescriptorClusterManager *)self fetchPartsListForDevice:v14 endpointID:&unk_283EE8598 callbackQueue:v18];
  v59 = v19;
  if (v19 && (v20 = v19, [v19 count]))
  {
    v21 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v21 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v56 = v17;
    v74[0] = v17;
    v73[0] = @"Reason";
    v73[1] = @"Time";
    v22 = [MEMORY[0x277CBEAA8] now];
    v55 = v21;
    v23 = [v21 stringFromDate:v22];
    v74[1] = v23;
    v74[2] = v15;
    v57 = v16;
    v73[2] = @"NodeID";
    v73[3] = @"FabricID";
    v24 = [v16 fabricID];
    v74[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
    v58 = [v25 mutableCopy];

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = [(HMMTRDescriptorClusterManager *)self _fetchAccessoryConfigurationForDevice:v62 endpointID:&unk_283EE8598 callbackQueue:v61];
    v28 = v27;
    if (v27)
    {
      v71[0] = @"EndpointID";
      v71[1] = @"EndpointData";
      v72[0] = &unk_283EE8598;
      v72[1] = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
      [v26 addObject:v29];
    }

    v54 = v28;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = v20;
    v31 = [v30 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v65;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v65 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v64 + 1) + 8 * i);
          v36 = [(HMMTRDescriptorClusterManager *)self _fetchAccessoryConfigurationForDevice:v62 endpointID:v35 callbackQueue:v61];
          v37 = v36;
          if (v36)
          {
            v68[0] = @"EndpointID";
            v68[1] = @"EndpointData";
            v69[0] = v35;
            v69[1] = v36;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
            [v26 addObject:v38];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v32);
    }

    [v58 setObject:v26 forKey:@"Endpoints"];
    v63 = 0;
    v39 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v58 options:0 error:&v63];
    v40 = v63;
    if (v39)
    {
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v39 encoding:4];
      v42 = v60;
      (*(v60 + 2))(v60, v41);

      v16 = v57;
      v17 = v56;
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v49 = self;
      v50 = HMFGetOSLogHandle();
      v17 = v56;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        v52 = [v40 localizedDescription];
        *buf = 138543618;
        v76 = v51;
        v77 = 2112;
        v78 = v52;
        _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_ERROR, "%{public}@Accessory Configuration: JSON conversion failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v48);
      v42 = v60;
      (*(v60 + 2))(v60, 0);
      v16 = v57;
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
      v47 = [v62 nodeID];
      *buf = 138543618;
      v76 = v46;
      v77 = 2112;
      v78 = v47;
      _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Accessory Configuration: No Endpoints In Use at endpoint 0 of node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v42 = v60;
    (*(v60 + 2))(v60, 0);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (id)_fetchAccessoryConfigurationForDevice:(id)a3 endpointID:(id)a4 callbackQueue:(id)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = self;
  v67 = v10;
  v68 = v9;
  v12 = [(HMMTRDescriptorClusterManager *)self fetchPartsListForDevice:v8 endpointID:v9 callbackQueue:v10];
  if (v12)
  {
    [v11 setObject:v12 forKey:@"PartsList"];
  }

  v59 = v12;
  [(HMMTRDescriptorClusterManager *)self fetchDeviceTypesWithMTRDevice:v8 endpointID:v68 callbackQueue:v10];
  v60 = v65 = v8;
  v61 = v11;
  if (v60)
  {
    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v60;
    v13 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v78;
      v16 = *MEMORY[0x277CD50D0];
      v17 = *MEMORY[0x277CD50D8];
      v18 = *MEMORY[0x277CD51A0];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v77 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:v16];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          v24 = [v20 objectForKeyedSubscript:v17];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v27 = [v26 objectForKeyedSubscript:v18];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          if (v29)
          {
            v30 = v23 == 0;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            v87[0] = @"Type";
            v87[1] = @"Revision";
            v88[0] = v29;
            v88[1] = v23;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
            [v62 addObject:v31];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v14);
    }

    v11 = v61;
    [v61 setObject:v62 forKey:@"DeviceTypes"];

    v8 = v65;
  }

  v32 = [(HMMTRDescriptorClusterManager *)v66 fetchServerClustersForDevice:v8 endpointID:v68 callbackQueue:v10];
  obja = v32;
  if (v32)
  {
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v73 objects:v86 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v74;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v74 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v73 + 1) + 8 * j);
          v40 = [(HMMTRDescriptorClusterManager *)v66 _fetchAccessoryConfigurationForDevice:v8 endpointID:v68 clusterID:v39 callbackQueue:v67];
          v41 = v40;
          if (v39)
          {
            v42 = v40 == 0;
          }

          else
          {
            v42 = 1;
          }

          if (!v42)
          {
            v84[0] = @"ClusterID";
            v84[1] = @"ClusterInfo";
            v85[0] = v39;
            v85[1] = v40;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
            [v33 addObject:v43];

            v8 = v65;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v73 objects:v86 count:16];
      }

      while (v36);
    }

    v11 = v61;
    [v61 setObject:v33 forKey:@"ServerClusters"];

    v32 = obja;
  }

  v44 = [(HMMTRDescriptorClusterManager *)v66 fetchClientClustersForDevice:v8 endpointID:v68 callbackQueue:v67];
  if (v44)
  {
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v46 = v44;
    v47 = [v46 countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v70;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v70 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v69 + 1) + 8 * k);
          v52 = [(HMMTRDescriptorClusterManager *)v66 _fetchAccessoryConfigurationForDevice:v8 endpointID:v68 clusterID:v51 callbackQueue:v67];
          v53 = v52;
          if (v51)
          {
            v54 = v52 == 0;
          }

          else
          {
            v54 = 1;
          }

          if (!v54)
          {
            v81[0] = @"ClusterID";
            v81[1] = @"ClusterInfo";
            v82[0] = v51;
            v82[1] = v52;
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
            [v45 addObject:v55];

            v8 = v65;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v69 objects:v83 count:16];
      }

      while (v48);
    }

    v11 = v61;
    [v61 setObject:v45 forKey:@"ClientClusters"];

    v32 = obja;
  }

  v56 = [v11 copy];

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

- (id)_fetchAccessoryConfigurationForDevice:(id)a3 endpointID:(id)a4 clusterID:(id)a5 callbackQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = [(HMMTRDescriptorClusterManager *)self fetchClusterRevisionForDevice:v10 endpointID:v11 clusterID:v12 callbackQueue:v13];
  if (v15)
  {
    [v14 setObject:v15 forKey:@"ClusterRevision"];
  }

  v16 = [(HMMTRDescriptorClusterManager *)self fetchClusterFeatureMapForDevice:v10 endpointID:v11 clusterID:v12 callbackQueue:v13];
  if (v16)
  {
    [v14 setObject:v16 forKey:@"FeatureMap"];
  }

  v17 = [(HMMTRDescriptorClusterManager *)self fetchClusterAttributesForDevice:v10 endpointID:v11 clusterID:v12 callbackQueue:v13];
  if (v17)
  {
    [v14 setObject:v17 forKey:@"Attributes"];
  }

  v23 = v15;
  v18 = [(HMMTRDescriptorClusterManager *)self fetchClusterEventListForDevice:v10 endpointID:v11 clusterID:v12 callbackQueue:v13];
  if (v18)
  {
    [v14 setObject:v18 forKey:@"Events"];
  }

  v19 = [(HMMTRDescriptorClusterManager *)self fetchClusterAcceptedCommandsForDevice:v10 endpointID:v11 clusterID:v12 callbackQueue:v13];
  if (v19)
  {
    [v14 setObject:v19 forKey:@"AcceptedCommands"];
  }

  v20 = [(HMMTRDescriptorClusterManager *)self fetchClusterGeneratedCommandsForDevice:v10 endpointID:v11 clusterID:v12 callbackQueue:v13];
  if (v20)
  {
    [v14 setObject:v20 forKey:@"GeneratedCommands"];
  }

  v22 = [v14 copy];

  return v22;
}

- (id)getBridgeEndpointsDeviceTypes:(id)a3 endpointDeviceTypes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v17}];
        if (v14)
        {
          [v7 setObject:v14 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)buildClusterDescriptorWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMMTRDescriptorClusterManager *)self createClusterInstance];
  v12 = (v11)[2](v11, @"MTRClusterDescriptor", v10, v9, v8);

  return v12;
}

- (HMMTRDescriptorClusterManager)init
{
  v6.receiver = self;
  v6.super_class = HMMTRDescriptorClusterManager;
  v2 = [(HMMTRDescriptorClusterManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    createClusterInstance = v2->_createClusterInstance;
    v2->_createClusterInstance = &__block_literal_global_7891;
  }

  return v3;
}

id __37__HMMTRDescriptorClusterManager_init__block_invoke(uint64_t a1, NSString *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_alloc(NSClassFromString(a2)) initWithDevice:v10 endpointID:v9 queue:v8];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t199 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t199, &__block_literal_global_408);
  }

  v3 = logCategory__hmf_once_v200;

  return v3;
}

uint64_t __44__HMMTRDescriptorClusterManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v200;
  logCategory__hmf_once_v200 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_43);
  }

  v3 = cachedDescriptorClusterManager;

  return v3;
}

uint64_t __46__HMMTRDescriptorClusterManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HMMTRDescriptorClusterManager);
  v1 = cachedDescriptorClusterManager;
  cachedDescriptorClusterManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end