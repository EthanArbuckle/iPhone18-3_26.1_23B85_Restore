@interface MTRPluginLocalClient
+ (id)localDispatchQueue;
- (MTRPluginClient)pluginClient;
- (MTRPluginLocalClient)initWithPluginClient:(id)a3;
- (NSString)description;
- (id)deviceController;
- (void)_registerDevice:(id)a3 addedViaDelegate:(BOOL)a4;
- (void)_unregisterDevice:(id)a3;
- (void)addDelegateForDevice:(id)a3 interestedPathsForAttributes:(id)a4 interestedPathsForEvents:(id)a5;
- (void)controller:(id)a3 suspendedChangedTo:(BOOL)a4;
- (void)dealloc;
- (void)device:(id)a3 injectAttributeReport:(id)a4;
- (void)device:(id)a3 injectEventReport:(id)a4;
- (void)device:(id)a3 internalStateUpdated:(id)a4;
- (void)device:(id)a3 receivedAttributeReport:(id)a4;
- (void)device:(id)a3 receivedEventReport:(id)a4;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)deviceBecameActive:(id)a3;
- (void)deviceCachePrimed:(id)a3;
- (void)deviceConfigurationChanged:(id)a3;
- (void)deviceController:(id)a3 deleteNodeID:(id)a4;
- (void)deviceController:(id)a3 getNodesWithStoredDataWithReply:(id)a4;
- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7;
- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5;
- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13;
- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6;
- (void)deviceController:(id)a3 nodeID:(id)a4 openCommissioningWindowWithSetupPasscode:(id)a5 discriminator:(id)a6 duration:(id)a7 completion:(id)a8;
- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6;
- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9;
- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10;
- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4;
- (void)invalidate;
- (void)logState;
- (void)removeDelegateForDevice:(id)a3;
- (void)reportAllAttributesForDevice:(id)a3;
- (void)reportAllInternalStateForDevice:(id)a3;
@end

@implementation MTRPluginLocalClient

+ (id)localDispatchQueue
{
  if (localDispatchQueue_predicateNAME != -1)
  {
    +[MTRPluginLocalClient localDispatchQueue];
  }

  v3 = localDispatchQueue_sLocalDispatchQueue;

  return v3;
}

void __42__MTRPluginLocalClient_localDispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MTRPluginLocalDispatchQueue", v2);
  v1 = localDispatchQueue_sLocalDispatchQueue;
  localDispatchQueue_sLocalDispatchQueue = v0;
}

- (MTRPluginLocalClient)initWithPluginClient:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MTRPluginLocalClient;
  v5 = [(MTRPluginLocalClient *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(MTRPluginLocalClient *)v5 setPluginClient:v4];
    v7 = [MEMORY[0x277CBEB98] set];
    registeredNodeIDs = v6->_registeredNodeIDs;
    v6->_registeredNodeIDs = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginLocalClient *)v6 setSubscribedMTRDevices:v9];

    v10 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginLocalClient *)v6 setTemporarilyRegisteredNodeIDs:v10];

    v11 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginLocalClient *)v6 setRegisteredMTRDeviceControllerIDs:v11];

    v12 = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginLocalClient *)v6 setContext:v12];

    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ initialized with pluginClient %@", buf, 0x16u);
    }

    v14 = v6;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  [(MTRPluginLocalClient *)self setPluginClient:0];
  v3 = [(MTRPluginLocalClient *)self temporaryDeviceCleanupSource];

  if (v3)
  {
    v4 = [(MTRPluginLocalClient *)self temporaryDeviceCleanupSource];
    dispatch_source_cancel(v4);

    [(MTRPluginLocalClient *)self setTemporaryDeviceCleanupSource:0];
  }

  v5.receiver = self;
  v5.super_class = MTRPluginLocalClient;
  [(MTRPluginLocalClient *)&v5 dealloc];
}

- (void)invalidate
{
  [(MTRPluginLocalClient *)self setPluginClient:0];
  v3 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MTRPluginLocalClient_invalidate__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__MTRPluginLocalClient_invalidate__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) registeredMTRDeviceControllerIDs];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = +[MTRPluginDeviceControllerRegistry sharedInstance];
        v9 = [v8 deviceControllerForUUID:v7];

        [v9 removeDeviceControllerDelegate:*(a1 + 32)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = [MEMORY[0x277CBEB98] set];
  [*(a1 + 32) setRegisteredNodeIDs:v10];

  v11 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setTemporarilyRegisteredNodeIDs:v11];

  v12 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setSubscribedMTRDevices:v12];

  v13 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setRegisteredMTRDeviceControllerIDs:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_registerDevice:(id)a3 addedViaDelegate:(BOOL)a4
{
  v6 = a3;
  v7 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke;
  block[3] = &unk_279893BB8;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v21 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEFAULT, "** Tried to register nil device", buf, 2u);
    }

    goto LABEL_23;
  }

  if (*(a1 + 48) != 1)
  {
    goto LABEL_8;
  }

  v2 = [*(a1 + 40) registeredNodeIDs];
  v3 = [*(a1 + 32) nodeID];
  v4 = [v2 containsObject:v3];

  if (!v4)
  {
    v22 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v25 = @"NO";
      if (*(a1 + 48))
      {
        v25 = @"YES";
      }

      *buf = 138412802;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "%@  => registering device: %@ addedViaDelegate: %@", buf, 0x20u);
    }

    v26 = [*(a1 + 40) registeredNodeIDs];
    v27 = [v26 mutableCopy];

    v28 = [*(a1 + 32) nodeID];
    [v27 addObject:v28];

    v29 = [v27 copy];
    [*(a1 + 40) setRegisteredNodeIDs:v29];

    [*(a1 + 40) addDelegateForDevice:*(a1 + 32) interestedPathsForAttributes:0 interestedPathsForEvents:0];
    [*(a1 + 40) reportAllAttributesForDevice:*(a1 + 32)];
    [*(a1 + 40) reportAllInternalStateForDevice:*(a1 + 32)];
    v30 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 40);
      *buf = 138412546;
      v37 = v31;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEFAULT, "   => %@ Registered nodeIDs: %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
LABEL_8:
    v8 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
    v9 = [*(a1 + 32) nodeID];
    v10 = [v8 containsObject:v9];

    if ((v10 & 1) == 0)
    {
      v11 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = @"NO";
        if (*(a1 + 48))
        {
          v14 = @"YES";
        }

        *buf = 138412802;
        v37 = v12;
        v38 = 2112;
        v39 = v13;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@  => registering temporary device: %@ addedViaDelegate: %@", buf, 0x20u);
      }

      v15 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
      v16 = [*(a1 + 32) nodeID];
      [v15 addObject:v16];

      v17 = [*(a1 + 40) temporaryDeviceCleanupSource];
      v18 = +[MTRPluginLocalClient localDispatchQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke_27;
      v34[3] = &unk_279893AC8;
      v33 = *(a1 + 32);
      v19 = v33.i64[0];
      v35 = vextq_s8(v33, v33, 8uLL);
      v20 = MTRBufferedExecutionBlock(v17, v18, v34, 10.0);
      [*(a1 + 40) setTemporaryDeviceCleanupSource:v20];
    }

LABEL_23:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *MEMORY[0x277D85DE8];

  [v5 addDelegateForDevice:v6 interestedPathsForAttributes:0 interestedPathsForEvents:0];
}

void __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke_27(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 temporarilyRegisteredNodeIDs];
    v6 = [*(a1 + 32) registeredNodeIDs];
    *buf = 138412802;
    v51 = v3;
    v52 = 2112;
    v53 = v5;
    v54 = 2112;
    v55 = v6;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cleaning up temporary nodeIDs: %@  (permanent ones: %@)", buf, 0x20u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [*(a1 + 32) temporarilyRegisteredNodeIDs];
  v8 = [v7 copy];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    v36 = *v45;
    do
    {
      v12 = 0;
      v37 = v10;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        v14 = [*(a1 + 32) registeredNodeIDs];
        v15 = [*(a1 + 40) nodeID];
        v16 = [v14 containsObject:v15];

        if (v16)
        {
          v17 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 32);
            *buf = 138412546;
            v51 = v18;
            v52 = 2112;
            v53 = v13;
            _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@  => *** Not cleaning up temporary device, as it's permanent now: %@", buf, 0x16u);
          }
        }

        else
        {
          v39 = v12;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = [*(a1 + 32) subscribedMTRDevices];
          v20 = [v19 copy];

          v21 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v41;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v40 + 1) + 8 * i);
                v26 = [*(a1 + 40) nodeID];
                v27 = [v26 isEqual:v13];

                if (v27)
                {
                  v28 = matterPluginLog_default;
                  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = *(a1 + 32);
                    *buf = 138412546;
                    v51 = v29;
                    v52 = 2112;
                    v53 = v25;
                    _os_log_impl(&dword_25830F000, v28, OS_LOG_TYPE_DEFAULT, "%@  => unregistering temporary device: %@", buf, 0x16u);
                  }

                  [*(a1 + 32) _unregisterDevice:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v22);
          }

          v11 = v36;
          v10 = v37;
          v12 = v39;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  v30 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 32);
    v32 = v30;
    v33 = [v31 temporarilyRegisteredNodeIDs];
    *buf = 138412546;
    v51 = v31;
    v52 = 2112;
    v53 = v33;
    _os_log_impl(&dword_25830F000, v32, OS_LOG_TYPE_DEFAULT, "%@ => Done cleaning up temporary nodeIDs: %@", buf, 0x16u);
  }

  v34 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setTemporarilyRegisteredNodeIDs:v34];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterDevice:(id)a3
{
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MTRPluginLocalClient__unregisterDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__MTRPluginLocalClient__unregisterDevice___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = matterPluginLog_default;
  v4 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v26 = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@  => unregistering device: %@", &v26, 0x16u);
    }

    [*(a1 + 40) removeDelegateForDevice:*(a1 + 32)];
    v7 = [*(a1 + 40) registeredNodeIDs];
    v8 = [*(a1 + 32) nodeID];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [*(a1 + 40) registeredNodeIDs];
      v11 = [v10 mutableCopy];

      v12 = [*(a1 + 32) nodeID];
      [v11 removeObject:v12];

      v13 = [v11 copy];
      [*(a1 + 40) setRegisteredNodeIDs:v13];
    }

    else
    {
      v14 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, " => Device wasn't registered, ignoring", &v26, 2u);
      }
    }

    v15 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
    v16 = [*(a1 + 32) nodeID];
    v17 = [v15 containsObject:v16];

    if (v17)
    {
      v18 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
      v19 = [*(a1 + 32) nodeID];
      [v18 removeObject:v19];
    }

    else
    {
      v20 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_DEFAULT, " => Device wasn't registered in temporary list, ignoring", &v26, 2u);
      }
    }

    v21 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      v23 = v21;
      v24 = [v22 registeredNodeIDs];
      v26 = 138412546;
      v27 = v22;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEFAULT, "   => %@ Registered nodeIDs: %@", &v26, 0x16u);
    }
  }

  else if (v4)
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "** Tried to unregister nil device", &v26, 2u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getStateWithReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__MTRPluginLocalClient_deviceController_nodeID_getStateWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __66__MTRPluginLocalClient_deviceController_nodeID_getStateWithReply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getState controllerUUID %@ nodeID %@", &v11, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 state];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ state %lu", &v11, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getDeviceCachePrimedWithReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__MTRPluginLocalClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __78__MTRPluginLocalClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getDeviceCachePrimed controllerUUID %@ nodeID %@", &v11, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 deviceCachePrimed];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ deviceCachePrimed %lu", &v11, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedStartTimeWithReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__MTRPluginLocalClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __79__MTRPluginLocalClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getEstimatedStartTime controllerUUID %@ nodeID %@", &v11, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 estimatedStartTime];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ estimatedStartTime %@", &v11, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 getEstimatedSubscriptionLatencyWithReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__MTRPluginLocalClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __89__MTRPluginLocalClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getEstimatedSubscriptionLatency controllerUUID %@ nodeID %@", &v11, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 estimatedSubscriptionLatency];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ estimatedSubscriptionLatency %@", &v11, 0x20u);
  }

  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 params:(id)a8 withReply:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[MTRPluginLocalClient localDispatchQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __115__MTRPluginLocalClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  v30[3] = &unk_279893C08;
  v30[4] = self;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  dispatch_async(v22, v30);
}

void __115__MTRPluginLocalClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v13 = 138413826;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ readAttributeWithEndpointID controllerUUID %@ nodeID %@ endpointID %@ clusterID %@ attribute %@ params %@", &v13, 0x48u);
  }

  v10 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v11 = [v10 readAttributeWithEndpointID:*(a1 + 56) clusterID:*(a1 + 64) attributeID:*(a1 + 72) params:*(a1 + 80)];
  (*(*(a1 + 88) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 readAttributePaths:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MTRPluginLocalClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  block[3] = &unk_279893C30;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

void __77__MTRPluginLocalClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v12 = 138413058;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ readAttributePaths controllerUUID %@ nodeID %@ attributePaths %@", &v12, 0x2Au);
  }

  v7 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v8 = [v7 readAttributePaths:*(a1 + 56)];
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@  => device %@ readAttributePaths %@", &v12, 0x20u);
  }

  (*(*(a1 + 64) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 writeAttributeWithEndpointID:(id)a5 clusterID:(id)a6 attributeID:(id)a7 value:(id)a8 expectedValueInterval:(id)a9 timedWriteTimeout:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v24 = +[MTRPluginLocalClient localDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __145__MTRPluginLocalClient_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke;
    block[3] = &unk_279893C58;
    block[4] = self;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    dispatch_async(v24, block);
  }
}

void __145__MTRPluginLocalClient_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    *buf = 138414338;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ writeAttributeWithEndpointID controllerUUID %@ nodeID %@ endpointID %@ clusterID %@ attribute %@ value %@ expectedValueInterval %@ timedWriteTimeout %@", buf, 0x5Cu);
  }

  v12 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  [v12 writeAttributeWithEndpointID:*(a1 + 56) clusterID:*(a1 + 64) attributeID:*(a1 + 72) value:*(a1 + 80) expectedValueInterval:*(a1 + 88) timedWriteTimeout:*(a1 + 96)];
  v13 = +[MTRPluginMetricsCollector sharedInstance];
  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) pluginClient];
  v16 = [v15 clientType];
  LOBYTE(v21) = *(a1 + 96) != 0;
  v17 = [MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:v12 homeID:v14 clientType:v16 endpointID:*(a1 + 56) clusterID:*(a1 + 64) attributeID:*(a1 + 72) timedWrite:v21 remoteMessageID:0];
  [v13 collectMetric:v17];

  v18 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138412546;
    v23 = v19;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@  => device %@", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommandWithEndpointID:(id)a5 clusterID:(id)a6 commandID:(id)a7 commandFields:(id)a8 expectedValues:(id)a9 expectedValueInterval:(id)a10 timedInvokeTimeout:(id)a11 serverSideProcessingTimeout:(id)a12 completion:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v31 = a6;
  v21 = a7;
  v30 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    +[MTRPluginLocalClient localDispatchQueue];
    v28 = v27 = v21;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
    block[3] = &unk_279893CA8;
    block[4] = self;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v31;
    v37 = v27;
    v38 = v30;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v42 = v25;
    v43 = v26;
    dispatch_async(v28, block);

    v21 = v27;
  }
}

void __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v12 = *(a1 + 96);
    v11 = *(a1 + 104);
    *buf = 138414594;
    v56 = v3;
    v57 = 2112;
    v58 = v4;
    v59 = 2112;
    v60 = v5;
    v61 = 2112;
    v62 = v6;
    v63 = 2112;
    v64 = v7;
    v65 = 2112;
    v66 = v8;
    v67 = 2112;
    v68 = v9;
    v69 = 2112;
    v70 = v10;
    v71 = 2112;
    v72 = v12;
    v73 = 2112;
    v74 = v11;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ invokeCommandWithEndpointID controllerUUID %@ nodeID %@ endpointID %@ clusterID %@ commandID %@ commandFields %@ expectedValues %@ expectedValueInterval %@ timedInvokeTimeout %@", buf, 0x66u);
  }

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 80);
    *buf = 138412546;
    v56 = v14;
    v57 = 2112;
    v58 = v15;
    _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ commandFields: %@", buf, 0x16u);
  }

  v16 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 80);
    v19 = v16;
    v20 = [v18 allKeys];
    *buf = 138412546;
    v56 = v17;
    v57 = 2112;
    v58 = v20;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ commandFields allKeys: %@", buf, 0x16u);
  }

  v21 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 80);
    v24 = v21;
    v25 = [v23 allObjects];
    *buf = 138412546;
    v56 = v22;
    v57 = 2112;
    v58 = v25;
    _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ commandFields allObjects: %@", buf, 0x16u);
  }

  v26 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 80);
    v29 = v26;
    v30 = [v28 objectForKey:@"value"];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    *buf = 138412546;
    v56 = v27;
    v57 = 2112;
    v58 = v32;
    _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "%@ commandFields objectForKey: 'value' class: %@", buf, 0x16u);
  }

  v51 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v33 = *(a1 + 40);
  v34 = [*(a1 + 32) pluginClient];
  v35 = [v34 clientType];
  LOBYTE(v48) = *(a1 + 104) != 0;
  v36 = [MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:v51 homeID:v33 clientType:v35 endpointID:*(a1 + 56) clusterID:*(a1 + 64) commandID:*(a1 + 72) commandFields:*(a1 + 80) expectedValues:*(a1 + 88) expectedValueInterval:*(a1 + 96) timedInvoke:v48 remoteMessageID:0];

  v49 = *(a1 + 64);
  v50 = *(a1 + 56);
  v37 = *(a1 + 72);
  v38 = *(a1 + 80);
  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  v41 = *(a1 + 104);
  v42 = *(a1 + 112);
  v43 = +[MTRPluginServer serverWorkQueue];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_36;
  v52[3] = &unk_279893C80;
  v44 = v36;
  v53 = v44;
  v54 = *(a1 + 120);
  [v51 _invokeCommandWithEndpointID:v50 clusterID:v49 commandID:v37 commandFields:v38 expectedValues:v39 expectedValueInterval:v40 timedInvokeTimeout:v41 serverSideProcessingTimeout:v42 queue:v43 completion:v52];

  v45 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 32);
    *buf = 138412546;
    v56 = v46;
    v57 = 2112;
    v58 = v51;
    _os_log_impl(&dword_25830F000, v45, OS_LOG_TYPE_DEFAULT, "%@  => device %@", buf, 0x16u);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MTRPluginMetricsCollector sharedInstance];
  [v6 collectMetric:*(a1 + 32) error:v5];

  (*(*(a1 + 40) + 16))();
}

- (void)deviceController:(id)a3 nodeID:(id)a4 invokeCommands:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v14 = +[MTRPluginLocalClient localDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke;
    block[3] = &unk_279893C30;
    block[4] = self;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    dispatch_async(v14, block);
  }
}

void __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *buf = 138413058;
    v56 = v3;
    v57 = 2112;
    v58 = v4;
    v59 = 2112;
    v60 = v5;
    v61 = 2112;
    v62 = v6;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ invokeCommands: controllerUUID %@ nodeID %@ commands %@", buf, 0x2Au);
  }

  v35 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v34 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = *(a1 + 56);
  v32 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v32)
  {
    v31 = *v50;
    do
    {
      v7 = 0;
      do
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v7;
        v8 = *(*(&v49 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v37 = v10;
        v11 = [v10 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v46;
          do
          {
            v14 = 0;
            v36 = v12;
            do
            {
              if (*v46 != v13)
              {
                objc_enumerationMutation(v37);
              }

              v15 = *(*(&v45 + 1) + 8 * v14);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && v15)
              {
                v16 = *(a1 + 32);
                v38 = *(a1 + 40);
                v17 = v15;
                v18 = [v16 pluginClient];
                v19 = [v18 clientType];
                v20 = [v17 path];
                [v17 commandFields];
                v22 = v21 = a1;
                v23 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v35 homeID:v38 clientType:v19 commandPath:v20 commandFields:v22 remoteMessageID:0];

                a1 = v21;
                v12 = v36;
                [v34 addObject:v23];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v37 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v12);
        }

        v7 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v32);
  }

  v24 = *(a1 + 56);
  v25 = +[MTRPluginServer serverWorkQueue];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke_41;
  v39[3] = &unk_279893CD0;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v40 = v34;
  v41 = v26;
  v42 = v27;
  v43 = *(a1 + 48);
  v44 = *(a1 + 64);
  v28 = v34;
  [v35 invokeCommands:v24 queue:v25 completion:v39];

  v29 = *MEMORY[0x277D85DE8];
}

void __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = +[MTRPluginMetricsCollector sharedInstance];
        [v13 collectMetric:v12 error:v6];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v9);
  }

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    *buf = 138413058;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ invokeCommands: controllerUUID %@ nodeID %@ completed with error %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 openCommissioningWindowWithSetupPasscode:(id)a5 discriminator:(id)a6 duration:(id)a7 completion:(id)a8
{
  v13 = *MEMORY[0x277D85DE8];
  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ openCommissioningWindowWithSetupPasscode not implemented", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 nodeID:(id)a4 downloadLogOfType:(int64_t)a5 timeout:(double)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v15 = +[MTRPluginLocalClient localDispatchQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
    v16[3] = &unk_279893D20;
    v16[4] = self;
    v20 = a5;
    v17 = v13;
    v18 = v12;
    v21 = a6;
    v19 = v14;
    dispatch_async(v15, v16);
  }
}

void __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v20 = v4;
    v21 = 1024;
    v22 = v3;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ downloadLogOfType: %d  nodeID: %@", buf, 0x1Cu);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 48) nodeID:*(a1 + 40) requestedViaDelegate:0];
  v7 = [*(a1 + 32) pluginClient];
  v8 = [v7 homeUUID];
  v9 = [*(a1 + 32) pluginClient];
  v10 = +[MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:](MTRPluginDownloadDiagnosticLogMetric, "downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:", v6, v8, [v9 clientType], *(a1 + 64), 0);

  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = +[MTRPluginServer serverWorkQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_43;
  v16[3] = &unk_279893CF8;
  v17 = v10;
  v18 = *(a1 + 56);
  v14 = v10;
  [v6 downloadLogOfType:v11 timeout:v13 queue:v16 completion:v12];

  v15 = *MEMORY[0x277D85DE8];
}

void __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MTRPluginMetricsCollector sharedInstance];
  [v6 collectMetric:*(a1 + 32) error:v5];

  (*(*(a1 + 40) + 16))();
}

- (void)deviceController:(id)a3 deleteNodeID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MTRPluginLocalClient_deviceController_deleteNodeID___block_invoke;
  block[3] = &unk_279893D48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__MTRPluginLocalClient_deviceController_deleteNodeID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ deviceController: %@ deleteNodeID: %@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) deviceController];
  [v6 forgetDeviceWithNodeID:*(a1 + 48)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 getNodesWithStoredDataWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MTRPluginLocalClient_deviceController_getNodesWithStoredDataWithReply___block_invoke;
  block[3] = &unk_279893D70;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __73__MTRPluginLocalClient_deviceController_getNodesWithStoredDataWithReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ deviceController: %@ getNodesWithStoredDataWithReply", &v9, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) deviceController];
  v7 = [v6 nodesWithStoredData];
  (*(v5 + 16))(v5, v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceController:(id)a3 updateControllerConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v8 = +[MTRPluginLocalClient localDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__MTRPluginLocalClient_deviceController_updateControllerConfiguration___block_invoke;
    block[3] = &unk_279893D48;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __71__MTRPluginLocalClient_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v77 = v3;
    v78 = 2112;
    v79 = v4;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Got updateControllerConfiguration %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) registeredNodeIDs];
  v64 = [v5 mutableCopy];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v8 = [v7 deviceControllerForUUID:*(a1 + 48)];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [v8 controllerNodeID];

  if (v10)
  {
    v11 = [v8 controllerNodeID];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD50F8]];
  }

  v12 = [v8 compressedFabricID];

  if (v12)
  {
    v13 = [v8 compressedFabricID];
    [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD50E0]];
  }

  v58 = v8;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isRunning")}];
  [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD50F0]];

  v15 = 0x277CCA000uLL;
  v59 = v6;
  v57 = v9;
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD50E8]];
  v63 = [MEMORY[0x277CBEB18] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v56 = *MEMORY[0x277CD5110];
  v16 = [*(a1 + 40) objectForKey:?];
  v17 = [v16 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    v20 = *MEMORY[0x277CD5108];
    v60 = *MEMORY[0x277CD5100];
    v21 = 0x277CBE000uLL;
    v61 = v16;
    v62 = *v70;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        v24 = *(v21 + 2752);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v23)
        {
          v25 = [v23 objectForKey:v20];
          v26 = *(v15 + 2992);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v23 objectForKey:v20];

            if (!v27)
            {
              continue;
            }

            v28 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 48) nodeID:v27 requestedViaDelegate:1];
            v29 = matterPluginLog_default;
            if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 32);
              v31 = *(a1 + 48);
              *buf = 138412802;
              v77 = v30;
              v78 = 2112;
              v79 = v31;
              v80 = 2112;
              v81 = v28;
              _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ register device: %@", buf, 0x20u);
            }

            [*(a1 + 32) _registerDevice:v28 addedViaDelegate:1];
            [v64 removeObject:v27];
            v32 = [v28 _internalProperties];
            if (v32)
            {
              v74[0] = v20;
              v74[1] = v60;
              v75[0] = v27;
              v33 = [v28 _internalProperties];
              v75[1] = v33;
              [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
              v34 = v18;
              v35 = v20;
              v37 = v36 = v15;
              [v63 addObject:v37];

              v15 = v36;
              v20 = v35;
              v18 = v34;

              v16 = v61;
              v19 = v62;
            }

            v21 = 0x277CBE000;
          }

          else
          {
            v27 = v25;
          }
        }

        else
        {
          v38 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v77 = v23;
            _os_log_error_impl(&dword_25830F000, v38, OS_LOG_TYPE_ERROR, "Invalid nodeIDInfo: %@", buf, 0xCu);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v18);
  }

  if ([v63 count])
  {
    [v59 setObject:v63 forKeyedSubscript:v56];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v39 = v64;
  v40 = [v39 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v66;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 48) nodeID:*(*(&v65 + 1) + 8 * j) requestedViaDelegate:1];
        v45 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v46 = *(a1 + 32);
          v47 = *(a1 + 48);
          *buf = 138412802;
          v77 = v46;
          v78 = 2112;
          v79 = v47;
          v80 = 2112;
          v81 = v44;
          _os_log_impl(&dword_25830F000, v45, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ unregister device: %@", buf, 0x20u);
        }

        [*(a1 + 32) _unregisterDevice:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v41);
  }

  v48 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v49 = *(a1 + 32);
    v50 = *(a1 + 48);
    v51 = v48;
    v52 = [v49 registeredNodeIDs];
    *buf = 138412802;
    v77 = v49;
    v78 = 2112;
    v79 = v50;
    v80 = 2112;
    v81 = v52;
    _os_log_impl(&dword_25830F000, v51, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ self.registeredNodeIDs: %@", buf, 0x20u);
  }

  if ([v59 count])
  {
    v53 = [*(a1 + 32) pluginClient];
    v54 = [v53 clientProxy];
    [v54 controller:*(a1 + 48) controllerConfigurationUpdated:v59];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MTRPluginLocalClient *)self pluginClient];
  v8 = [v4 stringWithFormat:@"<%@: %p client: %@>", v6, self, v7];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)deviceController
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v5 = [(MTRPluginLocalClient *)self pluginClient];
  v6 = [v5 homeUUID];
  v7 = [v4 deviceControllerForUUID:v6];

  if (!v7)
  {
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(MTRPluginLocalClient *)self pluginClient];
      v11 = [v10 homeUUID];
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ *** deviceController nil (not found) for controllerUUID: %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)addDelegateForDevice:(id)a3 interestedPathsForAttributes:(id)a4 interestedPathsForEvents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__MTRPluginLocalClient_addDelegateForDevice_interestedPathsForAttributes_interestedPathsForEvents___block_invoke;
  v15[3] = &unk_279893D98;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __99__MTRPluginLocalClient_addDelegateForDevice_interestedPathsForAttributes_interestedPathsForEvents___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v20 = 138413058;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ addDelegateForDevice: %@ interestedPathsForAttributes: %@ interestedPathsForEvents: %@", &v20, 0x2Au);
  }

  v7 = [*(a1 + 32) subscribedMTRDevices];
  v8 = [v7 containsObject:*(a1 + 40)];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) subscribedMTRDevices];
    [v9 addObject:*(a1 + 40)];

    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = v10;
      v14 = +[MTRPluginLocalClient localDispatchQueue];
      v20 = 138412802;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ Setting delegate on device: %@ queue: %@", &v20, 0x20u);
    }

    v17 = a1 + 32;
    v15 = *(a1 + 32);
    v16 = *(v17 + 8);
    v18 = +[MTRPluginLocalClient localDispatchQueue];
    [v16 addDelegate:v15 queue:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegateForDevice:(id)a3
{
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MTRPluginLocalClient_removeDelegateForDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__MTRPluginLocalClient_removeDelegateForDevice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) subscribedMTRDevices];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = matterPluginLog_default;
  v5 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ removing delegate on device: %@", &v12, 0x16u);
    }

    [*(a1 + 40) removeDelegate:*(a1 + 32)];
    v8 = [*(a1 + 32) subscribedMTRDevices];
    [v8 removeObject:*(a1 + 40)];
  }

  else if (v5)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cannot find device %@ to removeDelegate - ignoring", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reportAllAttributesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MTRPluginLocalClient_reportAllAttributesForDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__MTRPluginLocalClient_reportAllAttributesForDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getAllAttributesReport];
  v3 = [v2 count];
  v4 = matterPluginLog_default;
  v5 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = v4;
      v13 = 138412546;
      v14 = v6;
      v15 = 2048;
      v16 = [v2 count];
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Reporting all known attributes %lu", &v13, 0x16u);
    }

    v8 = [*(a1 + 40) pluginClient];
    v9 = [v8 clientProxy];
    v10 = [*(a1 + 32) nodeID];
    [v9 device:v10 receivedAttributeReport:v2];
  }

  else if (v5)
  {
    v11 = *(a1 + 40);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ No known attributes to report", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportAllInternalStateForDevice:(id)a3
{
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MTRPluginLocalClient_reportAllInternalStateForDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__MTRPluginLocalClient_reportAllInternalStateForDevice___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 _internalProperties];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Reporting properties", &v11, 0xCu);
  }

  v8 = a1 + 32;
  v6 = *(a1 + 32);
  v7 = *(v8 + 8);
  v9 = [v6 _internalProperties];
  [v7 device:v6 internalStateUpdated:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logState
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(MTRPluginLocalClient *)self subscribedMTRDevices];
    *buf = 138412546;
    v20 = self;
    v21 = 2048;
    v22 = [v5 count];
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ logState for %lu devices:", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(MTRPluginLocalClient *)self subscribedMTRDevices];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v14 + 1) + 8 * i);
          *buf = 138412546;
          v20 = self;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@     => %@", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v7);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v6 nodeID];
      v24 = 138412802;
      v25 = self;
      v26 = 2112;
      v27 = v11;
      v28 = 2048;
      v29 = a4;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ device %@ stateChanged %lu", &v24, 0x20u);
    }

    v12 = +[MTRPluginClientManager sharedInstance];
    v13 = objc_opt_self();
    v14 = [v13 pluginClient];
    v15 = [v12 isPluginClientLowestHash:v14];

    if (v15)
    {
      v16 = +[MTRPluginMetricsCollector sharedInstance];
      v17 = [(MTRPluginLocalClient *)self pluginClient];
      v18 = [v17 homeUUID];
      v19 = [MTRPluginStateChangedMetric stateChangedMetricForDevice:v6 homeID:v18 state:a4 remoteMessageID:0];
      [v16 collectMetric:v19];
    }

    v20 = [(MTRPluginLocalClient *)self pluginClient];
    v21 = [v20 clientProxy];
    v22 = [v6 nodeID];
    [v21 device:v22 stateChanged:a4];

    objc_autoreleasePoolPop(v8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedAttributeReport:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 nodeID];
      v23 = 138412802;
      v24 = self;
      v25 = 2112;
      v26 = v12;
      v27 = 2048;
      v28 = [v7 count];
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedAttributeReport %ld", &v23, 0x20u);
    }

    v13 = +[MTRPluginClientManager sharedInstance];
    v14 = [(MTRPluginLocalClient *)self pluginClient];
    v15 = [v13 isPluginClientLowestHash:v14];

    if (v15)
    {
      v16 = [(MTRPluginLocalClient *)self pluginClient];
      v17 = [v16 homeUUID];
      v18 = [MTRPluginAttributeReportMetric attributeReportMetricForDevice:v6 homeID:v17 attributeReport:v7 remoteMessageID:0];
      [v18 submitMetric];
    }

    v19 = [(MTRPluginLocalClient *)self pluginClient];
    v20 = [v19 clientProxy];
    v21 = [v6 nodeID];
    [v20 device:v21 receivedAttributeReport:v7];

    objc_autoreleasePoolPop(v9);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedEventReport:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 nodeID];
      v23 = 138412802;
      v24 = self;
      v25 = 2112;
      v26 = v12;
      v27 = 2048;
      v28 = [v7 count];
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedEventReport %ld", &v23, 0x20u);
    }

    v13 = +[MTRPluginClientManager sharedInstance];
    v14 = [(MTRPluginLocalClient *)self pluginClient];
    v15 = [v13 isPluginClientLowestHash:v14];

    if (v15)
    {
      v16 = [(MTRPluginLocalClient *)self pluginClient];
      v17 = [v16 homeUUID];
      v18 = [MTRPluginEventReportMetric eventReportMetricForDevice:v6 homeID:v17 eventReport:v7 remoteMessageID:0];
      [v18 submitMetric];
    }

    v19 = [(MTRPluginLocalClient *)self pluginClient];
    v20 = [v19 clientProxy];
    v21 = [v6 nodeID];
    [v20 device:v21 receivedEventReport:v7];

    objc_autoreleasePoolPop(v9);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)deviceBecameActive:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 nodeID];
      v22 = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ deviceBecameActive %@", &v22, 0x16u);
    }

    v10 = +[MTRPluginClientManager sharedInstance];
    v11 = objc_opt_self();
    v12 = [v11 pluginClient];
    v13 = [v10 isPluginClientLowestHash:v12];

    if (v13)
    {
      v14 = +[MTRPluginMetricsCollector sharedInstance];
      v15 = [(MTRPluginLocalClient *)self pluginClient];
      v16 = [v15 homeUUID];
      v17 = [MTRPluginDeviceActiveMetric deviceActiveMetricForDevice:v4 homeID:v16 remoteMessageID:0];
      [v14 collectMetric:v17];
    }

    v18 = [(MTRPluginLocalClient *)self pluginClient];
    v19 = [v18 clientProxy];
    v20 = [v4 nodeID];
    [v19 deviceBecameActive:v20];

    objc_autoreleasePoolPop(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)deviceCachePrimed:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 nodeID];
      v22 = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ deviceCachePrimed %@", &v22, 0x16u);
    }

    v10 = +[MTRPluginClientManager sharedInstance];
    v11 = objc_opt_self();
    v12 = [v11 pluginClient];
    v13 = [v10 isPluginClientLowestHash:v12];

    if (v13)
    {
      v14 = +[MTRPluginMetricsCollector sharedInstance];
      v15 = [(MTRPluginLocalClient *)self pluginClient];
      v16 = [v15 homeUUID];
      v17 = [MTRPluginDeviceCachePrimedMetric deviceCachePrimedMetricForDevice:v4 homeID:v16 remoteMessageID:0];
      [v14 collectMetric:v17];
    }

    v18 = [(MTRPluginLocalClient *)self pluginClient];
    v19 = [v18 clientProxy];
    v20 = [v4 nodeID];
    [v19 deviceCachePrimed:v20];

    objc_autoreleasePoolPop(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationChanged:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 nodeID];
      v22 = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ deviceConfigurationChanged %@", &v22, 0x16u);
    }

    v10 = +[MTRPluginClientManager sharedInstance];
    v11 = objc_opt_self();
    v12 = [v11 pluginClient];
    v13 = [v10 isPluginClientLowestHash:v12];

    if (v13)
    {
      v14 = +[MTRPluginMetricsCollector sharedInstance];
      v15 = [(MTRPluginLocalClient *)self pluginClient];
      v16 = [v15 homeUUID];
      v17 = [MTRPluginDeviceConfigChangedMetric deviceConfigChangedMetricForDevice:v4 homeID:v16 remoteMessageID:0];
      [v14 collectMetric:v17];
    }

    v18 = [(MTRPluginLocalClient *)self pluginClient];
    v19 = [v18 clientProxy];
    v20 = [v4 nodeID];
    [v19 deviceConfigurationChanged:v20];

    objc_autoreleasePoolPop(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 internalStateUpdated:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ((MTRPluginForceRemoteControl() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 nodeID];
      v25 = 138412546;
      v26 = self;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ device %@ internalStateUpdated", &v25, 0x16u);
    }

    v13 = +[MTRPluginClientManager sharedInstance];
    v14 = objc_opt_self();
    v15 = [v14 pluginClient];
    v16 = [v13 isPluginClientLowestHash:v15];

    if (v16)
    {
      v17 = +[MTRPluginMetricsCollector sharedInstance];
      v18 = [(MTRPluginLocalClient *)self pluginClient];
      v19 = [v18 homeUUID];
      v20 = [MTRPluginDeviceInternalStateUpdatedMetric deviceInternalStateUpdatedForDevice:v6 homeID:v19 remoteMessageID:0];
      [v17 collectMetric:v20];
    }

    v21 = [(MTRPluginLocalClient *)self pluginClient];
    v22 = [v21 clientProxy];
    v23 = [v6 nodeID];
    [v22 device:v23 internalStateUpdated:v7];

    objc_autoreleasePoolPop(v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 injectAttributeReport:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MTRPluginLocalClient_device_injectAttributeReport___block_invoke;
  block[3] = &unk_279893D48;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __53__MTRPluginLocalClient_device_injectAttributeReport___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CD5310];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deviceController];
  v6 = [v3 deviceWithNodeID:v4 controller:v5];

  v7 = [v6 deviceController];
  LODWORD(v5) = [v7 isSuspended];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 _injectAttributeReport:*(a1 + 48) fromSubscription:1];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)device:(id)a3 injectEventReport:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MTRPluginLocalClient_device_injectEventReport___block_invoke;
  block[3] = &unk_279893D48;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __49__MTRPluginLocalClient_device_injectEventReport___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CD5310];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deviceController];
  v6 = [v3 deviceWithNodeID:v4 controller:v5];

  v7 = [v6 deviceController];
  LODWORD(v5) = [v7 isSuspended];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 _injectEventReport:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)controller:(id)a3 suspendedChangedTo:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    if (v4)
    {
      v8 = @"YES";
    }

    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ controller %@ suspendedChangedTo: %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (MTRPluginClient)pluginClient
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginClient);

  return WeakRetained;
}

- (void)_deviceForControllerUUID:(void *)a1 nodeID:(void *)a2 requestedViaDelegate:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 pluginClient];
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = a3;
  _os_log_error_impl(&dword_25830F000, v5, OS_LOG_TYPE_ERROR, "%@ Cannot find device controller for client %@ nodeID %@ - controller was not added to registry", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end