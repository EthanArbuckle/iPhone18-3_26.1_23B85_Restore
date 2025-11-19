@interface HMDCHIPXPCClientConnection
+ (id)logCategory;
- (BOOL)allowsOperation;
- (HMDCHIPXPCClientConnection)initWithRemoteObjectProxy:(id)a3 homeManager:(id)a4 pid:(int)a5 processInfo:(id)a6 backgroundModeEntitled:(BOOL)a7 workQueue:(id)a8;
- (HMDHomeManager)homeManager;
- (void)_getDeviceControllerWithFabricId:(unint64_t)a3 accessories:(id)a4 home:(id)a5 remainingHomes:(id)a6 completion:(id)a7;
- (void)_registerReportHandlerWithHomeWithUUID:(id)a3;
- (void)deregisterReportHandlers;
- (void)downloadLogWithController:(id)a3 nodeId:(id)a4 type:(int64_t)a5 timeout:(double)a6 completion:(id)a7;
- (void)getAnyDeviceControllerWithCompletion:(id)a3;
- (void)invokeCommandWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 commandId:(id)a7 fields:(id)a8 timedInvokeTimeout:(id)a9 completion:(id)a10;
- (void)readAttributeCacheWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 completion:(id)a8;
- (void)readAttributeWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 params:(id)a8 completion:(id)a9;
- (void)stopReportsWithController:(id)a3 nodeId:(unint64_t)a4 completion:(id)a5;
- (void)subscribeAttributeWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 minInterval:(id)a8 maxInterval:(id)a9 params:(id)a10 establishedHandler:(id)a11;
- (void)subscribeWithController:(id)a3 nodeId:(unint64_t)a4 minInterval:(id)a5 maxInterval:(id)a6 params:(id)a7 shouldCache:(BOOL)a8 completion:(id)a9;
- (void)writeAttributeWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 value:(id)a8 timedWriteTimeout:(id)a9 completion:(id)a10;
@end

@implementation HMDCHIPXPCClientConnection

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)downloadLogWithController:(id)a3 nodeId:(id)a4 type:(int64_t)a5 timeout:(double)a6 completion:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    v40 = 138544386;
    v41 = v19;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v20;
    v48 = 2112;
    v49 = v21;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Download log via controller %@, nodeId %@, logType %@, timeout %@", &v40, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = v12;
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
    v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
    if (v25 && (-[HMDCHIPXPCClientConnection homeManager](v17, "homeManager"), v26 = objc_claimAutoreleasedReturnValue(), [v26 _homeWithUUID:v25], v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
    {
      [v27 downloadLogWithController:v22 nodeId:v13 type:a5 timeout:v14 completion:a6];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v17;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v31;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using invalid home UUID: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v27 = _Block_copy(v14);
      if (v27)
      {
        v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        (v27)[2](v27, 0, v32);
      }
    }

    goto LABEL_18;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = v17;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    v37 = objc_opt_class();
    v40 = 138543874;
    v41 = v36;
    v42 = 2112;
    v43 = v22;
    v44 = 2112;
    v45 = v37;
    v38 = v37;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Download log called with controller of unexpected class: %@ (%@)", &v40, 0x20u);
  }

  objc_autoreleasePoolPop(v33);
  v25 = _Block_copy(v14);
  if (v25)
  {
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v25 + 2))(v25, 0, v27);
LABEL_18:
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeCacheWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 completion:(id)a8
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v19);

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v23;
    v28 = 2112;
    v29 = v14;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not reading attribute cache with controller: %@, nodeID: 0x%llx: Unsupported", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  v18[2](v18, 0, v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)subscribeWithController:(id)a3 nodeId:(unint64_t)a4 minInterval:(id)a5 maxInterval:(id)a6 params:(id)a7 shouldCache:(BOOL)a8 completion:(id)a9
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v19);

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v23;
    v28 = 2112;
    v29 = v14;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not subscribing with controller: %@, nodeID: 0x%llx: Unsupported", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  v18[2](v18, v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)stopReportsWithController:(id)a3 nodeId:(unint64_t)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Stop reports with controller %@, nodeId 0x%llx", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v9[2](v9);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)subscribeAttributeWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 minInterval:(id)a8 maxInterval:(id)a9 params:(id)a10 establishedHandler:(id)a11
{
  v55 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v36 = a5;
  v35 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v34 = a11;
  v22 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v22);

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138545410;
    v38 = v26;
    v39 = 2112;
    v40 = v17;
    v41 = 2048;
    v42 = a4;
    v43 = 2112;
    v44 = v36;
    v45 = 2112;
    v46 = v35;
    v47 = 2112;
    v48 = v18;
    v49 = 2112;
    v50 = v19;
    v51 = 2112;
    v52 = v20;
    v53 = 2112;
    v54 = v21;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Subscribing attribute via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, attributeId %@ minInterval %@, maxInterval %@, params %@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = objc_autoreleasePoolPush();
  v28 = v24;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v30;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Subscribing attribute is not supported yet", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [(HMDCHIPXPCClientConnection *)v28 remoteObjectProxy];
  v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [v31 handleReportWithController:v17 nodeId:a4 values:0 error:v32];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)invokeCommandWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 commandId:(id)a7 fields:(id)a8 timedInvokeTimeout:(id)a9 completion:(id)a10
{
  v83 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = v17;
  v66 = v18;
  v20 = a7;
  v21 = a8;
  v65 = a9;
  v22 = a10;
  v23 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v23);

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138545154;
    v68 = v27;
    v69 = 2112;
    v70 = v16;
    v71 = 2048;
    v72 = a4;
    v73 = 2112;
    v74 = v19;
    v75 = 2112;
    v76 = v66;
    v77 = 2112;
    v78 = v20;
    v79 = 2112;
    v80 = v21;
    v81 = 2112;
    v82 = v65;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Invoking command via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, commandId %@, fields %@, timedInvokeTimeout %@", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v24);
  if ([(HMDCHIPXPCClientConnection *)v25 allowsOperation])
  {
    v28 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (!v30)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v25;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v43 = v63 = v19;
        v44 = objc_opt_class();
        *buf = 138543874;
        v68 = v43;
        v69 = 2112;
        v70 = v28;
        v71 = 2112;
        v72 = v44;
        v45 = v44;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@CHIP invoke command called with controller of unexpected class: %@ (%@)", buf, 0x20u);

        v19 = v63;
      }

      objc_autoreleasePoolPop(v40);
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v22[2](v22, 0, v31);
      goto LABEL_38;
    }

    v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
    if (v31)
    {
      if (v19 && v66 && v20 && v21)
      {
        v62 = v19;
        v32 = [(HMDCHIPXPCClientConnection *)v25 homeManager];
        v33 = [v32 _homeWithUUID:v31];

        if (v33)
        {
          v61 = [(HMDCHIPXPCClientConnection *)v25 processInfo];
          v60 = [v61 mainBundle];
          v34 = [v60 bundlePath];
          if (HMDIsSiriClientIdentifier(v34))
          {
            v35 = 1;
          }

          else if ([v34 isEqualToString:@"BackgroundShortcutRunner"])
          {
            v35 = 10;
          }

          else if (HMDIsFirstPartyClientIdentifier(v34))
          {
            v35 = 5;
          }

          else
          {
            v35 = 6;
          }

          v59 = v35;
          v19 = v62;
          [v33 invokeCommandWithNodeId:a4 endpointId:v62 clusterId:v66 commandId:v20 fields:v21 timedInvokeTimeout:v65 source:v59 completion:v22];
        }

        else
        {
          v53 = objc_autoreleasePoolPush();
          v54 = v25;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            v68 = v56;
            v69 = 2112;
            v70 = v31;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using unknown home UUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v53);
          v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          v22[2](v22, 0, v57);

          v33 = 0;
          v19 = v62;
        }

        goto LABEL_37;
      }

      v46 = objc_autoreleasePoolPush();
      v47 = v25;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v49 = v64 = v19;
        *buf = 138543362;
        v68 = v49;
        v50 = "%{public}@CHIP invoke command called with invalid nil parameter";
        v51 = v48;
        v52 = 12;
        goto LABEL_26;
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
      v47 = v25;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v49 = v64 = v19;
        *buf = 138543618;
        v68 = v49;
        v69 = 2112;
        v70 = v30;
        v50 = "%{public}@CHIP invoke command called with invalid home UUID string: %@";
        v51 = v48;
        v52 = 22;
LABEL_26:
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);

        v19 = v64;
      }
    }

    objc_autoreleasePoolPop(v46);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v22[2](v22, 0, v33);
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v25;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Invoke-command operation by backgrounded client not allowed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
  v22[2](v22, 0, v30);
LABEL_39:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)writeAttributeWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 value:(id)a8 timedWriteTimeout:(id)a9 completion:(id)a10
{
  v78 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = v17;
  v61 = v18;
  v20 = a7;
  v21 = a8;
  v60 = a9;
  v22 = a10;
  v23 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v23);

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138545154;
    v63 = v27;
    v64 = 2112;
    v65 = v16;
    v66 = 2048;
    v67 = a4;
    v68 = 2112;
    v69 = v19;
    v70 = 2112;
    v71 = v61;
    v72 = 2112;
    v73 = v20;
    v74 = 2112;
    v75 = v21;
    v76 = 2112;
    v77 = v60;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Writing attribute via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, attributeId %@, value %@, timedWriteTimeout %@", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v24);
  if ([(HMDCHIPXPCClientConnection *)v25 allowsOperation])
  {
    v28 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (!v30)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v25;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v41 = v58 = v38;
        v42 = objc_opt_class();
        *buf = 138543874;
        v63 = v41;
        v64 = 2112;
        v65 = v28;
        v66 = 2112;
        v67 = v42;
        v43 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@CHIP write attribute called with controller of unexpected class: %@ (%@)", buf, 0x20u);

        v38 = v58;
      }

      objc_autoreleasePoolPop(v38);
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v22[2](v22, 0, v31);
      goto LABEL_28;
    }

    v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
    if (v31)
    {
      if (v19 && v61 && v20 && v21)
      {
        v57 = v19;
        v32 = [(HMDCHIPXPCClientConnection *)v25 homeManager];
        v33 = [v32 _homeWithUUID:v31];

        if (v33)
        {
          v19 = v57;
          [v33 writeAttributeWithNodeId:a4 endpointId:v57 clusterId:v61 attributeId:v20 value:v21 timedWriteTimeout:v60 completion:v22];
        }

        else
        {
          v52 = objc_autoreleasePoolPush();
          v53 = v25;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543618;
            v63 = v55;
            v64 = 2112;
            v65 = v31;
            _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using unknown home UUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v52);
          v56 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          v22[2](v22, 0, v56);

          v33 = 0;
          v19 = v57;
        }

        goto LABEL_27;
      }

      v44 = objc_autoreleasePoolPush();
      v45 = v25;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v47 = v59 = v44;
        *buf = 138543362;
        v63 = v47;
        v48 = "%{public}@CHIP write attribute called with null values for nonnull parameter";
        v49 = v46;
        v50 = 12;
        goto LABEL_25;
      }
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v25;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v47 = v59 = v44;
        *buf = 138543618;
        v63 = v47;
        v64 = 2112;
        v65 = v30;
        v48 = "%{public}@CHIP write attribute called with invalid home UUID string: %@";
        v49 = v46;
        v50 = 22;
LABEL_25:
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);

        v44 = v59;
      }
    }

    objc_autoreleasePoolPop(v44);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v22[2](v22, 0, v33);
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = v25;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543362;
    v63 = v37;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Write operation by backgrounded client not allowed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v34);
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
  v22[2](v22, 0, v30);
LABEL_29:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)readAttributeWithController:(id)a3 nodeId:(unint64_t)a4 endpointId:(id)a5 clusterId:(id)a6 attributeId:(id)a7 params:(id)a8 completion:(id)a9
{
  v76 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = v16;
  v19 = v17;
  v20 = a7;
  v21 = v19;
  v61 = v20;
  v22 = a8;
  v23 = a9;
  v24 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v24);

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544898;
    v63 = v28;
    v64 = 2112;
    v65 = v15;
    v66 = 2048;
    v67 = a4;
    v68 = 2112;
    v69 = v18;
    v70 = 2112;
    v71 = v21;
    v72 = 2112;
    v73 = v61;
    v74 = 2112;
    v75 = v22;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Reading attribute via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, attributeId %@, params %@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v25);
  if ([(HMDCHIPXPCClientConnection *)v26 allowsOperation])
  {
    v29 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v31)
    {
      v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v31];
      if (v32)
      {
        v58 = v21;
        v33 = v18;
        v34 = [(HMDCHIPXPCClientConnection *)v26 homeManager];
        v35 = [v34 _homeWithUUID:v32];

        if (v35)
        {
          v18 = v33;
          v36 = v33;
          v21 = v58;
          [v35 readAttributeWithNodeId:a4 endpointId:v36 clusterId:v58 attributeId:v61 params:v22 completion:v23];
        }

        else
        {
          v51 = objc_autoreleasePoolPush();
          v52 = v26;
          v53 = HMFGetOSLogHandle();
          v18 = v33;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v55 = v54 = v51;
            *buf = 138543618;
            v63 = v55;
            v64 = 2112;
            v65 = v32;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using unknown home UUID: %@", buf, 0x16u);

            v51 = v54;
          }

          objc_autoreleasePoolPop(v51);
          v56 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          v23[2](v23, 0, v56);

          v35 = 0;
          v21 = v58;
        }
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        v48 = v26;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v50 = v60 = v47;
          *buf = 138543618;
          v63 = v50;
          v64 = 2112;
          v65 = v31;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@CHIP Read attribute called with invalid home UUID string: %@", buf, 0x16u);

          v47 = v60;
        }

        objc_autoreleasePoolPop(v47);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v23[2](v23, 0, v35);
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v26;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v44 = v59 = v41;
        v45 = objc_opt_class();
        *buf = 138543874;
        v63 = v44;
        v64 = 2112;
        v65 = v29;
        v66 = 2112;
        v67 = v45;
        v46 = v45;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@CHIP Read attribute called with controller of unexpected class: %@ (%@)", buf, 0x20u);

        v41 = v59;
      }

      objc_autoreleasePoolPop(v41);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v23[2](v23, 0, v32);
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = v26;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Read operation by backgrounded client not allowed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v23[2](v23, 0, v31);
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)getAnyDeviceControllerWithCompletion:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Retrieving any shared remote controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [(HMDCHIPXPCClientConnection *)v7 homeManager];
  v11 = [v10 homes];

  v12 = [v11 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v42 = v4;
    obj = v11;
    v41 = v7;
    v14 = 0;
    v15 = 0;
    v16 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v18 = v14;
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v14 = [v19 uuid];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = [v19 hapAccessories];
        v21 = [v20 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v45;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v45 != v23)
              {
                objc_enumerationMutation(v20);
              }

              if ([*(*(&v44 + 1) + 8 * j) supportsCHIP])
              {
                v25 = [v19 uuid];

                v15 = v25;
                goto LABEL_18;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v13 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v13);

    if (v15)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v41;
      v28 = HMFGetOSLogHandle();
      v4 = v42;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v29;
        v54 = 2112;
        v55 = v15;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Retrieved shared remote controller: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [v15 UUIDString];
      (v42)[2](v42, v30, 0);

      goto LABEL_32;
    }

    v7 = v41;
    v4 = v42;
    if (v14)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v41;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v38;
        v54 = 2112;
        v55 = v14;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Retrieved shared remote controller with no paired CHIP accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [v14 UUIDString];
      (v42)[2](v42, v39, 0);

      v15 = v14;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v31 = objc_autoreleasePoolPush();
  v32 = v7;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v34;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve any remote controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v4[2](v4, 0, v15);
LABEL_32:

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowsOperation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPXPCClientConnection *)self processInfo];
  v4 = [v3 isForegrounded];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Client foregrounded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    result = 1;
  }

  else
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      [(HMDCHIPXPCClientConnection *)v6 backgroundModeEntitled];
      v12 = HMFBooleanToString();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Client is not foregrounded: entitlement %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    result = [(HMDCHIPXPCClientConnection *)v6 backgroundModeEntitled];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_getDeviceControllerWithFabricId:(unint64_t)a3 accessories:(id)a4 home:(id)a5 remainingHomes:(id)a6 completion:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  while (1)
  {
    while ([v12 count])
    {
      v16 = [v12 lastObject];
      [v12 removeLastObject];
      if ([v16 supportsCHIP])
      {
        v21 = objc_alloc(MEMORY[0x277D0F820]);
        v22 = [v16 uuid];
        v23 = [v21 initWithTarget:v22];

        v24 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCEAB0] destination:v23 payload:0];
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __106__HMDCHIPXPCClientConnection__getDeviceControllerWithFabricId_accessories_home_remainingHomes_completion___block_invoke;
        v34 = &unk_278681920;
        v40 = a3;
        v35 = self;
        v36 = v13;
        v39 = v15;
        v20 = v12;
        v37 = v20;
        v38 = v14;
        v25 = v13;
        [v24 setResponseHandler:&v31];
        [v16 handleFetchCHIPPairingsMessage:{v24, v31, v32, v33, v34, v35}];

        goto LABEL_9;
      }
    }

    if (![v14 count])
    {
      break;
    }

    v17 = [v14 lastObject];

    v18 = MEMORY[0x277CBEB18];
    v19 = [v17 hapAccessories];
    v20 = [v18 arrayWithArray:v19];

    [v14 removeLastObject];
    v13 = v17;
    v12 = v20;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v20 = v12;
LABEL_11:
  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v30;
    v43 = 2048;
    v44 = a3;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve remote controller with fabric Id %llu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(v15 + 2))(v15, 0, v25);
LABEL_9:

  v26 = *MEMORY[0x277D85DE8];
}

void __106__HMDCHIPXPCClientConnection__getDeviceControllerWithFabricId_accessories_home_remainingHomes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CCE830];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v9 = [v6 hmf_unarchivedObjectForKey:v7 ofClasses:v8];

  if (v9)
  {
    v40 = v6;
    v41 = v5;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = v9;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      v13 = 0x277CCA000;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v19 = v43 = v16;
            v20 = [v15 home];
            [v20 identifier];
            v21 = a1;
            v22 = v11;
            v24 = v23 = v12;
            *buf = 138543618;
            v49 = v19;
            v50 = 2112;
            v51 = v24;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Fetched CHIP pairing with fabric Id: %@", buf, 0x16u);

            v12 = v23;
            v11 = v22;
            a1 = v21;
            v13 = 0x277CCA000uLL;

            v16 = v43;
          }

          objc_autoreleasePoolPop(v16);
          v25 = [v15 home];
          v26 = [v25 identifier];
          v27 = [*(v13 + 2992) numberWithUnsignedLongLong:*(a1 + 72)];
          v28 = [v26 isEqualToNumber:v27];

          if (v28)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = *(a1 + 32);
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = HMFGetLogIdentifier();
              v33 = *(a1 + 72);
              v34 = [*(a1 + 40) uuid];
              *buf = 138543874;
              v49 = v32;
              v50 = 2048;
              v51 = v33;
              v52 = 2112;
              v53 = v34;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Retrieved shared remote controller with fabric Id %llu: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v29);
            v35 = *(a1 + 64);
            v36 = [*(a1 + 40) uuid];
            v37 = [v36 UUIDString];
            (*(v35 + 16))(v35, v37, 0);

            v6 = v40;
            v5 = v41;
            v9 = v39;
            goto LABEL_17;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v6 = v40;
    v5 = v41;
    v9 = v39;
  }

  [*(a1 + 32) _getDeviceControllerWithFabricId:*(a1 + 72) accessories:*(a1 + 48) home:*(a1 + 40) remainingHomes:*(a1 + 56) completion:*(a1 + 64)];
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_registerReportHandlerWithHomeWithUUID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCHIPXPCClientConnection *)self homeManager];
  v7 = [v6 _homeWithUUID:v4];

  if (v7)
  {
    v8 = [(HMDCHIPXPCClientConnection *)self subscribedHomeUUIDs];
    v9 = [v8 containsObject:v4];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Registering report handler with home with UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [(HMDCHIPXPCClientConnection *)v11 subscribedHomeUUIDs];
      [v14 addObject:v4];

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCHIPXPCClientConnection pid](v11, "pid")}];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__HMDCHIPXPCClientConnection__registerReportHandlerWithHomeWithUUID___block_invoke;
      v21[3] = &unk_2786818F8;
      v21[4] = v11;
      v22 = v4;
      [v7 setCHIPReportHandlerWithSubscriber:v15 handler:v21];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not register report handler using unknown home UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __69__HMDCHIPXPCClientConnection__registerReportHandlerWithHomeWithUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v9;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Dispatching report to client using nodeId %tu, reports %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v5 xpcEncodedCHIPReportsFromHMFEncodedMessage];
  v11 = [*(a1 + 32) remoteObjectProxy];
  v12 = [*(a1 + 40) UUIDString];
  [v11 handleReportWithController:v12 nodeId:a2 values:v10 error:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deregisterReportHandlers
{
  v2 = self;
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(HMDCHIPXPCClientConnection *)v2 subscribedHomeUUIDs];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = 0x277CCA000uLL;
    v23 = v2;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(HMDCHIPXPCClientConnection *)v2 homeManager];
        v11 = [v10 _homeWithUUID:v9];

        if (v11)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = v2;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = v5;
            v16 = v6;
            v18 = v17 = v7;
            v19 = [v11 shortDescription];
            *buf = 138543618;
            v30 = v18;
            v31 = 2112;
            v32 = v19;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Deregistering report handlers from home: %@", buf, 0x16u);

            v7 = v17;
            v6 = v16;
            v5 = v15;
            v2 = v23;
          }

          objc_autoreleasePoolPop(v12);
          v20 = [*(v7 + 2992) numberWithInt:{-[HMDCHIPXPCClientConnection pid](v13, "pid")}];
          [v11 setCHIPReportHandlerWithSubscriber:v20 handler:0];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  v21 = [(HMDCHIPXPCClientConnection *)v2 subscribedHomeUUIDs];
  [v21 removeAllObjects];

  v22 = *MEMORY[0x277D85DE8];
}

- (HMDCHIPXPCClientConnection)initWithRemoteObjectProxy:(id)a3 homeManager:(id)a4 pid:(int)a5 processInfo:(id)a6 backgroundModeEntitled:(BOOL)a7 workQueue:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = HMDCHIPXPCClientConnection;
  v19 = [(HMDCHIPXPCClientConnection *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_remoteObjectProxy, a3);
    objc_storeWeak(&v20->_homeManager, v16);
    v20->_pid = a5;
    objc_storeStrong(&v20->_processInfo, a6);
    objc_storeStrong(&v20->_workQueue, a8);
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    subscribedHomeUUIDs = v20->_subscribedHomeUUIDs;
    v20->_subscribedHomeUUIDs = v21;

    v20->_backgroundModeEntitled = a7;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t44 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t44, &__block_literal_global_223371);
  }

  v3 = logCategory__hmf_once_v45;

  return v3;
}

void __41__HMDCHIPXPCClientConnection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v45;
  logCategory__hmf_once_v45 = v1;
}

@end