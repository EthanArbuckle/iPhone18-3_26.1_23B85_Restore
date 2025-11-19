@interface HMDUserCloudShareController
+ (id)identifierForConnection:(id)a3;
+ (id)logCategory;
- (HMDUserCloudShareController)initWithDelegate:(id)a3 queue:(id)a4 pendingRequestTimeoutInterval:(double)a5;
- (HMDUserCloudShareControllerDelegate)delegate;
- (NSHashTable)connectedClients;
- (NSMutableDictionary)containerIdToConnectionIdentifierMap;
- (id)_connectionForContainerID:(id)a3;
- (void)_addRequestToPending:(id)a3;
- (void)_deregisterXpcClient:(id)a3;
- (void)_handlePendingRequestTimeouts;
- (void)_handleShareForRemoteClientRequest:(id)a3;
- (void)_invalidateXpcClient:(id)a3;
- (void)_registerWithXpcClient:(id)a3 containerIDs:(id)a4;
- (void)_removeTimerIfNotNeeded;
- (void)_resumeRequestsForContainerID:(id)a3 connection:(id)a4;
- (void)_sendRepairRequest:(id)a3 toConnection:(id)a4;
- (void)_sendShareRequest:(id)a3 toConnection:(id)a4;
- (void)_startTimerIfNeeded;
- (void)deregisterXpcClient:(id)a3;
- (void)handleShareForRemoteClientRequest:(id)a3 home:(id)a4 completionHandler:(id)a5;
- (void)handleShareRepairForRemoteClientRequest:(id)a3 home:(id)a4 completion:(id)a5;
- (void)invalidateXpcClient:(id)a3;
- (void)registerWithXpcClient:(id)a3 containerIDs:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDUserCloudShareController

- (HMDUserCloudShareControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidateXpcClient:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDUserCloudShareController_invalidateXpcClient___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_invalidateXpcClient:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDUserCloudShareController *)self connectedClients];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Found invalidated connection %@ will de-register.", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUserCloudShareController *)v9 _deregisterXpcClient:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deregisterXpcClient:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDUserCloudShareController_deregisterXpcClient___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_deregisterXpcClient:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v27 = v4;
  v6 = [HMDUserCloudShareController identifierForConnection:v4];
  v7 = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
  v8 = [v7 allKeys];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    v28 = *v31;
    do
    {
      v13 = 0;
      v29 = v11;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
        v16 = [v15 objectForKeyedSubscript:v14];

        if ([v16 isEqualToString:v6])
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = self;
            v21 = v9;
            v23 = v22 = v6;
            *buf = 138543874;
            v35 = v23;
            v36 = 2112;
            v37 = v22;
            v38 = 2112;
            v39 = v14;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Deregistering connection %@ from container %@.", buf, 0x20u);

            v6 = v22;
            v9 = v21;
            self = v20;
            v12 = v28;
          }

          objc_autoreleasePoolPop(v17);
          v24 = [(HMDUserCloudShareController *)v18 containerIdToConnectionIdentifierMap];
          [v24 removeObjectForKey:v14];

          v11 = v29;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v11);
  }

  v25 = [(HMDUserCloudShareController *)self connectedClients];
  [v25 removeObject:v27];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)registerWithXpcClient:(id)a3 containerIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserCloudShareController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDUserCloudShareController_registerWithXpcClient_containerIDs___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_registerWithXpcClient:(id)a3 containerIDs:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v39 = [HMDUserCloudShareController identifierForConnection:v6];
  if (v39)
  {
    v36 = v7;
    v37 = v6;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          v14 = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (v15 && ([v15 isEqual:v39] & 1) == 0)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543874;
              v50 = v24;
              v51 = 2112;
              v52 = v15;
              v53 = 2112;
              v54 = v13;
              _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Another connection with identifier: %@ is registered for the same container: %@.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v21);
          }

          else
          {
            v16 = objc_autoreleasePoolPush();
            v17 = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543874;
              v50 = v19;
              v51 = 2112;
              v52 = v39;
              v53 = 2112;
              v54 = v13;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Registering connection identifier: %@ for container: %@.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v16);
            v20 = [(HMDUserCloudShareController *)v17 containerIdToConnectionIdentifierMap];
            [v20 setObject:v39 forKeyedSubscript:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v10);
    }

    v25 = [(HMDUserCloudShareController *)self connectedClients];
    v6 = v37;
    [v25 addObject:v37];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = obj;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(HMDUserCloudShareController *)self _resumeRequestsForContainerID:*(*(&v40 + 1) + 8 * j) connection:v37, v36];
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v28);
    }

    v7 = v36;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot register a client without a valid connection identifier.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v4 = [(HMDUserCloudShareController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUserCloudShareController_timerDidFire___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __44__HMDUserCloudShareController_timerDidFire___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handlePendingRequestTimeouts];
  [*(a1 + 32) setPendingRequestTimer:0];
  v2 = *(a1 + 32);

  return [v2 _startTimerIfNeeded];
}

- (NSHashTable)connectedClients
{
  v3 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  connectedClients = self->_connectedClients;

  return connectedClients;
}

- (NSMutableDictionary)containerIdToConnectionIdentifierMap
{
  v3 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  containerIdToConnectionIdentifierMap = self->_containerIdToConnectionIdentifierMap;

  return containerIdToConnectionIdentifierMap;
}

- (void)handleShareRepairForRemoteClientRequest:(id)a3 home:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD1468]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD1498]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v37 = 0;
  v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v37];
  v36 = v37;
  if (v14)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing required items in payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Could not decode payload" reason:@"Unable to find required items in payload" suggestion:0];
    v10[2](v10, v24);
  }

  else
  {
    v24 = [(HMDUserCloudShareController *)self delegate];
    v25 = [HMDUserCloudShareRepairRequest alloc];
    v26 = [v24 currentDateForUserCloudShareController:self];
    v35 = v9;
    v27 = [(HMDUserCloudShareRepairRequest *)v25 initWithStartDate:v26 containerID:v14 home:v9 repairInfo:v18];

    v28 = [(HMDUserCloudShareController *)self _connectionForContainerID:v14];
    v29 = v28;
    if (v28)
    {
      [(HMDUserCloudShareController *)self _sendRepairRequest:v27 toConnection:v28];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v33;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Add repair request %@ to pending for %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      [(HMDUserCloudShareController *)v30 _addRequestToPending:v27];
      [v24 userCloudShareController:v30 wakeClientForRepairWithContainerID:v14];
    }

    v10[2](v10, 0);

    v9 = v35;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleShareForRemoteClientRequest:(id)a3 home:(id)a4 completionHandler:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
  v11 = v8;
  v67 = v9;
  v71 = v11;
  if (v10)
  {
    v12 = v11;
    v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1478]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v68 = v15;
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v15];
    v17 = [v12 uuid];
    LODWORD(v15) = [v17 isEqual:v16];

    if (v15)
    {
      v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1470]];
      v19 = __findUserWithUUID(v18, v12);
      v20 = v19;

      v21 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD14A8]];
      v22 = __findUserWithUUID(v21, v12);
      v23 = v22;

      v24 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD14B8]];
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

      v27 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD14B0]];
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

      v30 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1468]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v19 && v22 && v25 && v31 && v28)
      {
        v33 = 0;
      }

      else
      {
        v40 = v10;
        v41 = objc_autoreleasePoolPush();
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v78 = v43;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode all required items from payload.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v41);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Could not decode payload" reason:@"Unable to decode all required items" suggestion:0];
        v10 = v40;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v78 = v39;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Messaged home had different identifier from payload.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Inconsistent payload home and originating home" reason:@"Messaged home must match home in payload" suggestion:0];
      v19 = 0;
      v22 = 0;
      v25 = 0;
      v28 = 0;
      v31 = 0;
    }

    v9 = v67;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not decode Remote ClientRequestPayload.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Could not decode payload" reason:@"Need a valid payload" suggestion:0];
    v19 = 0;
    v22 = 0;
    v25 = 0;
    v28 = 0;
    v31 = 0;
  }

  v69 = v10;
  v44 = v19;
  v45 = v22;
  v46 = v25;
  v47 = v28;
  v48 = v31;
  v49 = v48;
  if (v33)
  {
    v66 = v48;
    v50 = objc_autoreleasePoolPush();
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v54 = v53 = v9;
      *buf = 138543362;
      v78 = v54;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Could not decode payload.", buf, 0xCu);

      v9 = v53;
    }

    objc_autoreleasePoolPop(v50);
    v9[2](v9, 0, v33);
    v55 = v71;
    v56 = v66;
  }

  else
  {
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 138412290;
      v78 = v49;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MultiUser.Share.Req", "container=%{signpost.description:attribute}@ ", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__HMDUserCloudShareController_handleShareForRemoteClientRequest_home_completionHandler___block_invoke;
    aBlock[3] = &unk_279729E00;
    aBlock[4] = self;
    v76 = 0xEEEEB0B5B2B2EEEELL;
    v75 = v9;
    v65 = _Block_copy(aBlock);
    v58 = [HMDUserCloudShareEstablishShareRequest alloc];
    v59 = [(HMDUserCloudShareController *)self delegate];
    [v59 currentDateForUserCloudShareController:self];
    v60 = v56 = v49;
    v55 = v71;
    v61 = [(HMDUserCloudShareEstablishShareRequest *)v58 initWithHome:v71 fromUser:v44 toUser:v45 encodedShareURL:v46 shareToken:v47 containerID:v56 currentDate:v60 completion:v65];

    v62 = [(HMDUserCloudShareController *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDUserCloudShareController_handleShareForRemoteClientRequest_home_completionHandler___block_invoke_109;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v73 = v61;
    v63 = v61;
    dispatch_async(v62, block);

    v9 = v67;
    v33 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];
}

void __88__HMDUserCloudShareController_handleShareForRemoteClientRequest_home_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v11 = 138412290;
    v12 = v6;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MultiUser.Share.Req", "error=%{signpost.description:attribute}@ ", &v11, 0xCu);
  }

  (*(a1[5] + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleShareForRemoteClientRequest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 containerID];
  v7 = [(HMDUserCloudShareController *)self _connectionForContainerID:v6];

  if (v7)
  {
    [(HMDUserCloudShareController *)self _sendShareRequest:v4 toConnection:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 containerID];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No process registered to handle container %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUserCloudShareController *)v9 _addRequestToPending:v4];
    v13 = [(HMDUserCloudShareController *)v9 delegate];
    v14 = [v4 containerID];
    [v13 userCloudShareController:v9 wakeClientWithContainerID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendRepairRequest:(id)a3 toConnection:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending repair request %@ to client %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDUserCloudShareController *)v10 delegate];
  v14 = [v6 repairInfo];
  v15 = [v6 home];
  v16 = [v6 containerID];
  [v13 userCloudShareController:v10 sendRepairInfo:v14 toConnection:v7 home:v15 containerID:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_sendShareRequest:(id)a3 toConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v16 = [(HMDUserCloudShareController *)self delegate];
  v9 = [v7 fromUser];
  v10 = [v7 toUser];
  v11 = [v7 home];
  v12 = [v7 encodedShareURL];
  v13 = [v7 shareToken];
  v14 = [v7 containerID];
  v15 = [v7 completion];

  [v16 userCloudShareController:self sendShareRequestMessageWithConnection:v6 fromUser:v9 toUser:v10 home:v11 shareURL:v12 shareToken:v13 containerID:v14 completion:v15];
}

- (void)_resumeRequestsForContainerID:(id)a3 connection:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a4;
  v7 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v7);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = self;
  v8 = [(HMDUserCloudShareController *)self pendingRequests];
  v9 = [v8 copy];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v39;
    *&v11 = 138543362;
    v32 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = [v15 containerID];
        v17 = [v16 isEqualToString:v6];

        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v36;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v21;
            v44 = 2112;
            v45 = v15;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Resuming request %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          v22 = v15;
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

          v25 = v22;
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

          if (v24)
          {
            [(HMDUserCloudShareController *)v19 _sendShareRequest:v24 toConnection:v35];
          }

          else if (v27)
          {
            [(HMDUserCloudShareController *)v19 _sendRepairRequest:v27 toConnection:v35];
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v28 = v19;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v33 = HMFGetLogIdentifier();
              *buf = v32;
              v43 = v33;
              _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not determine request type.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(context);
          }

          v30 = [(HMDUserCloudShareController *)v19 pendingRequests];
          [v30 removeObject:v25];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v12);
  }

  [(HMDUserCloudShareController *)v36 _removeTimerIfNotNeeded];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handlePendingRequestTimeouts
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(HMDUserCloudShareController *)self pendingRequests];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    *&v7 = 138543618;
    v28 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 startDate];
        [v12 timeIntervalSinceNow];
        v14 = -v13;
        [(HMDUserCloudShareController *)self pendingRequestTimeoutInterval];
        v16 = v15;

        if (v16 < v14)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v28;
            v34 = v20;
            v35 = 2112;
            v36 = v11;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Timing out pending request %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          v21 = v11;
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

          if (v23)
          {
            v24 = [v23 completion];
            v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"No process received pending request in time" reason:@"No process received share message in required time." suggestion:0];
            (v24)[2](v24, 0, v25);
          }

          v26 = [(HMDUserCloudShareController *)v18 pendingRequests];
          [v26 removeObject:v21];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_addRequestToPending:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding request to pending %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDUserCloudShareController *)v7 pendingRequests];
  [v10 addObject:v4];

  [(HMDUserCloudShareController *)v7 _startTimerIfNeeded];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_removeTimerIfNotNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v11 = [(HMDUserCloudShareController *)self pendingRequests];
  if ([v11 count])
  {
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = [(HMDUserCloudShareController *)self pendingRequestTimer];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing timer as there are no more pending requests", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDUserCloudShareController *)v7 setPendingRequestTimer:0];
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_startTimerIfNeeded
{
  v3 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v8 = [(HMDUserCloudShareController *)self pendingRequests];
  if ([v8 count])
  {
    v4 = [(HMDUserCloudShareController *)self pendingRequestTimer];

    if (v4)
    {
      return;
    }

    v5 = [(HMDUserCloudShareController *)self delegate];
    [(HMDUserCloudShareController *)self pendingRequestTimeoutInterval];
    v6 = [v5 userCloudShareController:self timerWithInterval:?];
    [(HMDUserCloudShareController *)self setPendingRequestTimer:v6];

    v7 = [(HMDUserCloudShareController *)self pendingRequestTimer];
    [v7 setDelegate:self];

    v8 = [(HMDUserCloudShareController *)self pendingRequestTimer];
    [v8 resume];
  }
}

- (id)_connectionForContainerID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserCloudShareController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDUserCloudShareController *)self containerIdToConnectionIdentifierMap];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(HMDUserCloudShareController *)self connectedClients];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [HMDUserCloudShareController identifierForConnection:v12];
          if ([v13 isEqualToString:v7])
          {
            v9 = v12;

            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDUserCloudShareController)initWithDelegate:(id)a3 queue:(id)a4 pendingRequestTimeoutInterval:(double)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = HMDUserCloudShareController;
  v10 = [(HMDUserCloudShareController *)&v20 init];
  if (v10)
  {
    v11 = HMFGetOSLogHandle();
    logger = v10->_logger;
    v10->_logger = v11;

    objc_storeWeak(&v10->_delegate, v8);
    objc_storeStrong(&v10->_clientQueue, a4);
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    connectedClients = v10->_connectedClients;
    v10->_connectedClients = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    containerIdToConnectionIdentifierMap = v10->_containerIdToConnectionIdentifierMap;
    v10->_containerIdToConnectionIdentifierMap = v15;

    v17 = [MEMORY[0x277CBEB18] array];
    pendingRequests = v10->_pendingRequests;
    v10->_pendingRequests = v17;

    v10->_pendingRequestTimeoutInterval = a5;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_91912 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_91912, &__block_literal_global_91913);
  }

  v3 = logCategory__hmf_once_v28_91914;

  return v3;
}

uint64_t __42__HMDUserCloudShareController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28_91914;
  logCategory__hmf_once_v28_91914 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)identifierForConnection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 processInfo];
  v6 = [v4 processInfo];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get identifier for connection: %@ process info: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

@end