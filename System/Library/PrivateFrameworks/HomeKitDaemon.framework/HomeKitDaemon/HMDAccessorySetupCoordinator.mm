@interface HMDAccessorySetupCoordinator
+ (id)logCategory;
- (HMDAccessorySetupCoordinator)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher chipAccessoryServerBrowser:(id)browser chipDataSource:(id)source;
- (id)_createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:(id)representation error:(id *)error;
- (id)_setupPayloadWithCHIPSetupPayload:(id)payload setupPayloadURL:(id)l;
- (id)createCHIPSetupAccessoryPayloadWithSetupPayloadURL:(id)l error:(id *)error;
- (id)createSetupAccessoryPayloadWithCHIPSetupPayload:(id)payload error:(id *)error;
- (id)logIdentifier;
- (void)_handleStagedPairingCommissioneeInfo:(id)info forRequest:(id)request;
- (void)_handleStagedPairingDeviceCredential:(id)credential completionHandler:(id)handler forRequest:(id)request activity:(id)activity;
- (void)_handleStagedPairingProgressState:(int64_t)state forRequest:(id)request;
- (void)_handleStagedPairingReadyToCancel:(id)cancel forRequest:(id)request;
- (void)_handleStagedPairingServer:(id)server error:(id)error forRequest:(id)request activity:(id)activity;
- (void)_handleStagedPairingThreadNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity;
- (void)_handleStagedPairingWiFiNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity;
- (void)configure;
- (void)handleCancelStagedCHIPAccessoryPairingMessage:(id)message;
- (void)handleCancelStagingMessage:(id)message;
- (void)handleConfirmDeviceCredentialMessage:(id)message;
- (void)handleCreateCHIPSetupAccessoryPayloadMessage:(id)message;
- (void)handleCreateCHIPSetupPayloadMessage:(id)message;
- (void)handleRejectDeviceCredentialMessage:(id)message;
- (void)handleSelectThreadNetworkAssociationMessage:(id)message;
- (void)handleSelectWiFiNetworkAssociationMessage:(id)message;
- (void)handleStageCHIPAccessoryPairingInStepsMessage:(id)message;
- (void)startMetricsForThirdPartyPairing;
- (void)stopMetricsForThirdPartyPairingWithError:(id)error;
@end

@implementation HMDAccessorySetupCoordinator

- (id)logIdentifier
{
  uUID = [MEMORY[0x277CD17C8] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)_handleStagedPairingServer:(id)server error:(id)error forRequest:(id)request activity:(id)activity
{
  v105 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  errorCopy = error;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  identifier = [serverCopy identifier];
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138544130;
    v96 = v19;
    v97 = 2112;
    v98 = identifier;
    v99 = 2112;
    v100 = errorCopy;
    v101 = 2112;
    v102 = uUID;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling staged pairing identifier %@ and error %@ for request UUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v87 = identifier;
  if (!identifier || ([requestCopy pendingRequestMessage], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    productID = [serverCopy productID];

    if (productID)
    {
      v86 = activityCopy;
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      productID4 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(productID4, OS_LOG_TYPE_INFO);
      v27 = MEMORY[0x277D17A50];
      if (v26)
      {
        HMFGetLogIdentifier();
        v28 = v85 = v23;
        v29 = *MEMORY[0x277D17A68];
        v30 = requestCopy;
        v31 = errorCopy;
        v32 = *v27;
        productID2 = [serverCopy productID];
        *buf = 138544386;
        v96 = v28;
        v97 = 2114;
        v98 = v29;
        v99 = 2112;
        v100 = @"Accessory Info";
        v101 = 2114;
        v102 = v32;
        errorCopy = v31;
        requestCopy = v30;
        v103 = 2112;
        v104 = productID2;
        _os_log_impl(&dword_229538000, productID4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

        v23 = v85;
      }

      else
      {
        v29 = *MEMORY[0x277D17A68];
      }

      objc_autoreleasePoolPop(v23);
      mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
      v35 = objc_alloc(MEMORY[0x277D17DF8]);
      productID3 = [serverCopy productID];
      if (productID3)
      {
        v93 = *MEMORY[0x277D17A50];
        productID4 = [serverCopy productID];
        v94 = productID4;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      }

      else
      {
        v37 = MEMORY[0x277CBEC10];
      }

      v48 = [v35 initWithTag:v29 data:v37];
      tagProcessorList = [v86 tagProcessorList];
      [mEMORY[0x277D17DE8] submitTaggedEvent:v48 processorList:tagProcessorList];

      if (productID3)
      {
      }

      activityCopy = v86;
      identifier = v87;
    }

    [serverCopy startPairingMetricWithActivity:activityCopy];
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    uUID2 = [requestCopy UUID];
    [stagingRequestsByUUID setObject:0 forKeyedSubscript:uUID2];

    if (identifier)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = selfCopy;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        uUID3 = [requestCopy UUID];
        *buf = 138543874;
        v96 = v55;
        v97 = 2112;
        v98 = identifier;
        v99 = 2112;
        v100 = uUID3;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Successfully staged CHIP accessory server with identifier %@ in multiple steps for request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)v53 chipAccessoryServerBrowser];
      systemCommissionerPairingManager = [chipAccessoryServerBrowser systemCommissionerPairingManager];
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke;
      v88[3] = &unk_278681F20;
      v88[4] = v53;
      v89 = requestCopy;
      v90 = activityCopy;
      v91 = identifier;
      v92 = serverCopy;
      [systemCommissionerPairingManager fetchSystemCommissionerPairingsWithCompletionHandler:v88];

      goto LABEL_41;
    }

    v59 = mapHAPPairingErrorToHMError(errorCopy);
    v60 = objc_autoreleasePoolPush();
    v61 = selfCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      uUID4 = [requestCopy UUID];
      *buf = 138543874;
      v96 = v63;
      v97 = 2112;
      v98 = uUID4;
      v99 = 2112;
      v100 = v59;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage CHIP accessory pairing for request UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    pendingRequestMessage = [requestCopy pendingRequestMessage];

    v66 = objc_autoreleasePoolPush();
    v67 = v61;
    v68 = HMFGetOSLogHandle();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);
    if (!pendingRequestMessage)
    {
      if (v69)
      {
        v79 = HMFGetLogIdentifier();
        uUID5 = [requestCopy UUID];
        *buf = 138543874;
        v96 = v79;
        v97 = 2112;
        v98 = v59;
        v99 = 2112;
        v100 = uUID5;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Queueing staging error %@ for request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v66);
      if (v59)
      {
        [requestCopy setError:v59];
      }

      else
      {
        v83 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [requestCopy setError:v83];
      }

      identifier = v87;
      goto LABEL_40;
    }

    if (v69)
    {
      v70 = HMFGetLogIdentifier();
      uUID6 = [requestCopy UUID];
      *buf = 138543874;
      v96 = v70;
      v97 = 2112;
      v98 = uUID6;
      v99 = 2112;
      v100 = v59;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Responding for request UUID %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v66);
    pendingRequestMessage2 = [requestCopy pendingRequestMessage];
    [pendingRequestMessage2 respondWithError:v59];

    domain = [(__CFString *)v59 domain];
    v74 = domain;
    if (domain == *MEMORY[0x277CCFD28])
    {
      code = [(__CFString *)v59 code];

      identifier = v87;
      if (code == 13)
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {

      identifier = v87;
    }

    v82 = *MEMORY[0x277D17A70];
    HMMLogTagActivityWithError();
    [activityCopy invalidate];
    goto LABEL_40;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    uUID7 = [requestCopy UUID];
    *buf = 138543618;
    v96 = v41;
    v97 = 2112;
    v98 = uUID7;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received staged pairing identifier for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v43 = objc_autoreleasePoolPush();
  v44 = v39;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v46 = HMFGetLogIdentifier();
    v47 = *MEMORY[0x277D17A70];
    *buf = 138543874;
    v96 = v46;
    v97 = 2114;
    v98 = v47;
    v99 = 2112;
    v100 = @"unexpected pairing server";
    _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
  }

  else
  {
    v47 = *MEMORY[0x277D17A70];
  }

  objc_autoreleasePoolPop(v43);
  mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
  v76 = objc_alloc(MEMORY[0x277D17DF8]);
  v77 = [v76 initWithTag:v47 data:MEMORY[0x277CBEC10]];
  tagProcessorList2 = [activityCopy tagProcessorList];
  [mEMORY[0x277D17DE8]2 submitTaggedEvent:v77 processorList:tagProcessorList2];

  identifier = v87;
LABEL_41:

  v84 = *MEMORY[0x277D85DE8];
}

void __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke(id *a1, void *a2, void *a3)
{
  v74[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke_175;
    v59[3] = &unk_2786884A0;
    v60 = a1[7];
    v7 = [(__CFString *)v5 na_firstObjectPassingTest:v59];
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v7 uuid];
        v14 = a1[7];
        *buf = 138543874;
        v64 = v12;
        v65 = 2112;
        v66 = v13;
        v67 = 2112;
        v68 = v14;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Passing back pairing UUID %@ for staged pairing identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = [a1[5] pendingRequestMessage];
      v73[0] = *MEMORY[0x277CCEE50];
      v16 = [a1[5] UUID];
      v17 = *MEMORY[0x277CCEE00];
      v18 = a1[7];
      v74[0] = v16;
      v74[1] = v18;
      v19 = *MEMORY[0x277CCEE20];
      v73[1] = v17;
      v73[2] = v19;
      v20 = [v7 uuid];
      v74[2] = v20;
      v21 = 0x277CBE000uLL;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
      [v15 respondWithPayload:v22];

      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      v27 = MEMORY[0x277D17A18];
      if (v26)
      {
        HMFGetLogIdentifier();
        v28 = v58 = v23;
        v29 = *MEMORY[0x277D17A10];
        v30 = v27;
        v31 = v5;
        v32 = v7;
        v33 = v6;
        v34 = *v30;
        v35 = [a1[8] softwareVersionString];
        *buf = 138544386;
        v64 = v28;
        v65 = 2114;
        v66 = v29;
        v67 = 2112;
        v68 = @"Firmware version";
        v69 = 2114;
        v70 = v34;
        v6 = v33;
        v7 = v32;
        v5 = v31;
        v71 = 2112;
        v72 = v35;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

        v21 = 0x277CBE000;
        v23 = v58;
      }

      else
      {
        v29 = *MEMORY[0x277D17A10];
      }

      objc_autoreleasePoolPop(v23);
      v47 = [MEMORY[0x277D17DE8] sharedInstance];
      v52 = objc_alloc(MEMORY[0x277D17DF8]);
      v53 = [a1[8] softwareVersionString];
      if (v53)
      {
        v61 = *MEMORY[0x277D17A18];
        v25 = [a1[8] softwareVersionString];
        v62 = v25;
        v54 = [*(v21 + 2752) dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      }

      else
      {
        v54 = MEMORY[0x277CBEC10];
      }

      v55 = [v52 initWithTag:v29 data:v54];
      v56 = [a1[6] tagProcessorList];
      [v47 submitTaggedEvent:v55 processorList:v56];

      if (v53)
      {
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        v46 = a1[7];
        *buf = 138543874;
        v64 = v45;
        v65 = 2112;
        v66 = v46;
        v67 = 2112;
        v68 = v5;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not find system commissioner pairing for newly staged server with identifier %@ in all pairings: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v48 = [a1[5] pendingRequestMessage];
      [v48 respondWithError:v47];

      v49 = a1[4];
      v50 = *MEMORY[0x277D17A70];
      v51 = a1[6];
      HMMLogTagActivityWithError();
      [a1[6] invalidate];
    }

    v40 = v60;
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = a1[4];
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v39;
      v65 = 2112;
      v66 = v6;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@System commissioner failed to fetch pairings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v6];
    v41 = [a1[5] pendingRequestMessage];
    [v41 respondWithError:v40];

    v42 = a1[4];
    v43 = *MEMORY[0x277D17A70];
    v44 = a1[6];
    HMMLogTagActivityWithError();
    [a1[6] invalidate];
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D17B90];
  v4 = [a2 nodeID];
  v5 = [v3 identifierStringWithCHIPNodeID:v4];

  v6 = [v5 isEqual:*(a1 + 32)];
  return v6;
}

- (void)_handleStagedPairingCommissioneeInfo:(id)info forRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  requestCopy = request;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = uUID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling commissionee info for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  uUID2 = [requestCopy UUID];
  v25[0] = uUID2;
  v24[1] = *MEMORY[0x277CCEE10];
  v15 = encodeRootObjectForIncomingXPCMessage(infoCopy, 0);
  v25[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCEDE0] messagePayload:v16];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessorySetupCoordinator *)selfCopy messageTargetUUID];
  v20 = [v18 initWithTarget:messageTargetUUID];
  [v17 setDestination:v20];

  messageDispatcher = [(HMDAccessorySetupCoordinator *)selfCopy messageDispatcher];
  v22 = [v17 copy];
  [messageDispatcher sendMessage:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingProgressState:(int64_t)state forRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v27 = v11;
    v28 = 2048;
    stateCopy = state;
    v30 = 2112;
    v31 = uUID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling progress state (%ld) for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ((state - 1) > 0x25)
  {
    v13 = 15;
  }

  else
  {
    v13 = qword_22A587318[state - 1];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  uUID2 = [requestCopy UUID];
  v24[1] = *MEMORY[0x277CCEE30];
  v25[0] = uUID2;
  v25[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCEE98] messagePayload:v16];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessorySetupCoordinator *)selfCopy messageTargetUUID];
  v20 = [v18 initWithTarget:messageTargetUUID];
  [v17 setDestination:v20];

  messageDispatcher = [(HMDAccessorySetupCoordinator *)selfCopy messageDispatcher];
  v22 = [v17 copy];
  [messageDispatcher sendMessage:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingReadyToCancel:(id)cancel forRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  requestCopy = request;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    v26 = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = uUID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling ready to cancel for request UUID: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  pendingCancelMessage = [requestCopy pendingCancelMessage];

  if (pendingCancelMessage)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to a pending Cancel message", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    pendingCancelMessage2 = [requestCopy pendingCancelMessage];
    [pendingCancelMessage2 respondWithSuccess];

    pendingRequestMessage = [requestCopy pendingRequestMessage];

    if (pendingRequestMessage)
    {
      pendingRequestMessage2 = [requestCopy pendingRequestMessage];
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [pendingRequestMessage2 respondWithError:v22];
    }

    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
    uUID2 = [requestCopy UUID];
    [stagingRequestsByUUID setObject:0 forKeyedSubscript:uUID2];
  }

  else
  {
    [requestCopy setCancelHandler:cancelCopy];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingThreadNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity
{
  v56 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v51 = v18;
    v52 = 2112;
    v53 = resultsCopy;
    v54 = 2112;
    v55 = uUID;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling Thread scan results %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  selectWiFiNetworkHandler = [requestCopy selectWiFiNetworkHandler];
  if (selectWiFiNetworkHandler)
  {

LABEL_6:
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [requestCopy UUID];
      *buf = 138543618;
      v51 = v25;
      v52 = 2112;
      v53 = uUID2;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received Thread scan results for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    handlerCopy[2](handlerCopy, 0);
    v27 = objc_autoreleasePoolPush();
    v28 = v23;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = *MEMORY[0x277D17A70];
      *buf = 138543874;
      v51 = v30;
      v52 = 2114;
      v53 = v31;
      v54 = 2112;
      v55 = @"Unexpected thread scan results";
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
    }

    else
    {
      v31 = *MEMORY[0x277D17A70];
    }

    objc_autoreleasePoolPop(v27);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v33 = objc_alloc(MEMORY[0x277D17DF8]);
    pendingResponsePayloads = [v33 initWithTag:v31 data:MEMORY[0x277CBEC10]];
    tagProcessorList = [activityCopy tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:pendingResponsePayloads processorList:tagProcessorList];
    goto LABEL_12;
  }

  selectThreadNetworkHandler = [requestCopy selectThreadNetworkHandler];

  if (selectThreadNetworkHandler)
  {
    goto LABEL_6;
  }

  if (resultsCopy)
  {
    uUID3 = [requestCopy UUID];
    v49[0] = uUID3;
    v48[1] = *MEMORY[0x277CCEE60];
    v38 = encodeRootObject();
    v49[1] = v38;
    mEMORY[0x277D17DE8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  }

  else
  {
    mEMORY[0x277D17DE8] = MEMORY[0x277CBEC10];
  }

  [requestCopy setSelectThreadNetworkHandler:handlerCopy];
  pendingRequestMessage = [requestCopy pendingRequestMessage];

  if (!pendingRequestMessage)
  {
    pendingResponsePayloads = [requestCopy pendingResponsePayloads];
    [pendingResponsePayloads addObject:mEMORY[0x277D17DE8]];
    goto LABEL_13;
  }

  pendingRequestMessage2 = [requestCopy pendingRequestMessage];
  [pendingRequestMessage2 respondWithPayload:mEMORY[0x277D17DE8]];

  [requestCopy setPendingRequestMessage:0];
  v41 = objc_autoreleasePoolPush();
  v42 = selfCopy;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    v45 = *MEMORY[0x277D17A90];
    *buf = 138543874;
    v51 = v44;
    v52 = 2114;
    v53 = v45;
    v54 = 2112;
    v55 = @"Thread Scan Results Ready";
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
  }

  else
  {
    v45 = *MEMORY[0x277D17A90];
  }

  objc_autoreleasePoolPop(v41);
  pendingResponsePayloads = [MEMORY[0x277D17DE8] sharedInstance];
  v46 = objc_alloc(MEMORY[0x277D17DF8]);
  tagProcessorList = [v46 initWithTag:v45 data:MEMORY[0x277CBEC10]];
  tagProcessorList2 = [activityCopy tagProcessorList];
  [pendingResponsePayloads submitTaggedEvent:tagProcessorList processorList:tagProcessorList2];

LABEL_12:
LABEL_13:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingWiFiNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity
{
  v45 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v40 = v18;
    v41 = 2112;
    v42 = resultsCopy;
    v43 = 2112;
    v44 = uUID;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling WiFi scan results %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  selectWiFiNetworkHandler = [requestCopy selectWiFiNetworkHandler];
  if (selectWiFiNetworkHandler)
  {
  }

  else
  {
    selectThreadNetworkHandler = [requestCopy selectThreadNetworkHandler];

    if (!selectThreadNetworkHandler)
    {
      v28 = *MEMORY[0x277CCEE50];
      if (resultsCopy)
      {
        v37[0] = *MEMORY[0x277CCEE50];
        uUID2 = [requestCopy UUID];
        v38[0] = uUID2;
        v37[1] = *MEMORY[0x277CCEE70];
        v30 = encodeRootObject();
        v38[1] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      }

      else
      {
        uUID2 = [requestCopy UUID];
        v36 = uUID2;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      }

      [requestCopy setSelectWiFiNetworkHandler:handlerCopy];
      pendingRequestMessage = [requestCopy pendingRequestMessage];

      if (pendingRequestMessage)
      {
        pendingRequestMessage2 = [requestCopy pendingRequestMessage];
        [pendingRequestMessage2 respondWithPayload:v31];

        [requestCopy setPendingRequestMessage:0];
      }

      else
      {
        pendingResponsePayloads = [requestCopy pendingResponsePayloads];
        [pendingResponsePayloads addObject:v31];
      }

      goto LABEL_9;
    }
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    uUID3 = [requestCopy UUID];
    *buf = 138543618;
    v40 = v25;
    v41 = 2112;
    v42 = uUID3;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received WiFi scan results for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  handlerCopy[2](handlerCopy, 0);
LABEL_9:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingDeviceCredential:(id)credential completionHandler:(id)handler forRequest:(id)request activity:(id)activity
{
  v43 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v38 = v18;
    v39 = 2112;
    v40 = credentialCopy;
    v41 = 2112;
    v42 = uUID;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling device credential %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  uUID2 = [requestCopy UUID];
  v36[0] = uUID2;
  v35[1] = *MEMORY[0x277CCEE18];
  v21 = encodeRootObject();
  v36[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  pendingRequestMessage = [requestCopy pendingRequestMessage];

  if (pendingRequestMessage)
  {
    pendingRequestMessage2 = [requestCopy pendingRequestMessage];
    [pendingRequestMessage2 respondWithPayload:v22];

    [requestCopy setPendingRequestMessage:0];
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = *MEMORY[0x277D17A40];
      *buf = 138543874;
      v38 = v28;
      v39 = 2114;
      v40 = v29;
      v41 = 2112;
      v42 = @"Device credential sent to client";
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
    }

    else
    {
      v29 = *MEMORY[0x277D17A40];
    }

    objc_autoreleasePoolPop(v25);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v31 = objc_alloc(MEMORY[0x277D17DF8]);
    v32 = [v31 initWithTag:v29 data:MEMORY[0x277CBEC10]];
    tagProcessorList = [activityCopy tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v32 processorList:tagProcessorList];
  }

  else
  {
    mEMORY[0x277D17DE8] = [requestCopy pendingResponsePayloads];
    [mEMORY[0x277D17DE8] addObject:v22];
  }

  [requestCopy setConfirmDeviceCredentialCompletionHandler:handlerCopy];
  v34 = *MEMORY[0x277D85DE8];
}

- (id)_setupPayloadWithCHIPSetupPayload:(id)payload setupPayloadURL:(id)l
{
  v42 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  lCopy = l;
  if (!payloadCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = lCopy;
  v9 = objc_alloc(MEMORY[0x277CD1C98]);
  setupCode = [payloadCopy setupCode];
  stringValue = [setupCode stringValue];
  v12 = [v9 initWithSetupCode:stringValue communicationProtocol:2];

  v13 = [objc_alloc(MEMORY[0x277CD1C38]) initWithCHIPSetupPayload:payloadCopy];
  [v12 setSetupPayloadURL:v8];
  setupID = [payloadCopy setupID];
  [v12 setSetupID:setupID];

  [v12 setSupportsIP:{objc_msgSend(payloadCopy, "supportsIP")}];
  [v12 setSupportsBTLE:{objc_msgSend(payloadCopy, "supportsBLE")}];
  [v12 setSupportsWAC:{objc_msgSend(payloadCopy, "supportsSoftAP")}];
  vendorID = [payloadCopy vendorID];
  productID = [payloadCopy productID];
  v17 = productID;
  if (vendorID && productID)
  {
    chipDataSource = [(HMDAccessorySetupCoordinator *)self chipDataSource];
    [chipDataSource vendorMetadataStore];
    v36 = vendorID;
    v19 = v17;
    v20 = v13;
    v22 = v21 = v8;
    vendorID2 = [payloadCopy vendorID];
    [payloadCopy productID];
    v24 = v37 = self;
    v25 = [v22 retrieveVendorMetadataForVendorID:vendorID2 productID:v24];

    v8 = v21;
    v13 = v20;
    v17 = v19;
    vendorID = v36;

    productID2 = [payloadCopy productID];
    v27 = [v25 productWithID:productID2];

    categoryNumber = [v27 categoryNumber];
    [v12 setCategoryNumber:categoryNumber];

    deviceTypeID = [v27 deviceTypeID];
    [v13 setDeviceTypeID:deviceTypeID];

    self = v37;
  }

  [v12 setChipAccessorySetupPayload:v13];
  v30 = objc_autoreleasePoolPush();
  selfCopy = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v33;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Created CHIP setup accessory payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:(id)representation error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if (!representationCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = representationCopy;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  decimalStringRepresentationCHIPAccessorySetupPayloadFactory = [(HMDAccessorySetupCoordinator *)self decimalStringRepresentationCHIPAccessorySetupPayloadFactory];
  v10 = (decimalStringRepresentationCHIPAccessorySetupPayloadFactory)[2](decimalStringRepresentationCHIPAccessorySetupPayloadFactory, v7);

  if (v10)
  {
    v11 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v10 setupPayloadURL:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from decimal string representation: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)handleCancelStagedCHIPAccessoryPairingMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:*MEMORY[0x277CCEE00]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Discarding staged accessory server with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)selfCopy chipAccessoryServerBrowser];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__HMDAccessorySetupCoordinator_handleCancelStagedCHIPAccessoryPairingMessage___block_invoke;
    v17[3] = &unk_27868A1D8;
    v17[4] = selfCopy;
    v18 = messageCopy;
    [chipAccessoryServerBrowser discardStagedAccessoryServerWithIdentifier:v6 completionHandler:v17];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory pairing identifier in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __78__HMDAccessorySetupCoordinator_handleCancelStagedCHIPAccessoryPairingMessage___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to discard staged accessory server: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v8 respondWithError:v9];
  }

  else
  {
    [*(a1 + 40) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleCreateCHIPSetupPayloadMessage:(id)message
{
  v69 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:*MEMORY[0x277CCEE00]];
  if (v6)
  {
    chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)self chipAccessoryServerBrowser];
    v8 = [chipAccessoryServerBrowser stagedAccessoryServerWithIdentifier:v6];

    if (v8)
    {
      currentBundleIdentifier = [(HMDAccessorySetupCoordinator *)self currentBundleIdentifier];
      v10 = [currentBundleIdentifier isEqualToString:*MEMORY[0x277CCFE40]];

      if ((v10 & 1) == 0)
      {
        metricsActivity = [(HMDAccessorySetupCoordinator *)self metricsActivity];
        if (!metricsActivity || (v12 = metricsActivity, -[HMDAccessorySetupCoordinator metricsActivity](self, "metricsActivity"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isValid], v13, v12, (v14 & 1) == 0))
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543362;
            v60 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting metrics collection for 3rd party pairing via locker", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDAccessorySetupCoordinator *)selfCopy startMetricsForThirdPartyPairing];
          metricsActivity2 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
          [v8 startPairingMetricWithActivity:metricsActivity2];

          v20 = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
          v24 = MEMORY[0x277D17A28];
          if (v23)
          {
            HMFGetLogIdentifier();
            v25 = currentBundleIdentifier4 = v20;
            v26 = *MEMORY[0x277D17A68];
            v27 = *v24;
            currentBundleIdentifier2 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
            *buf = 138544386;
            v60 = v25;
            v61 = 2114;
            v62 = v26;
            v63 = 2112;
            v64 = @"Accessory Info";
            v65 = 2114;
            v66 = v27;
            v67 = 2112;
            v68 = currentBundleIdentifier2;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

            v29 = v26;
            v20 = currentBundleIdentifier4;
          }

          else
          {
            v29 = *MEMORY[0x277D17A68];
          }

          objc_autoreleasePoolPop(v20);
          mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
          v41 = objc_alloc(MEMORY[0x277D17DF8]);
          currentBundleIdentifier3 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
          if (currentBundleIdentifier3)
          {
            v57 = *MEMORY[0x277D17A28];
            currentBundleIdentifier4 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
            v58 = currentBundleIdentifier4;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          }

          else
          {
            v43 = MEMORY[0x277CBEC10];
          }

          v44 = [v41 initWithTag:v29 data:v43];
          metricsActivity3 = [(HMDAccessorySetupCoordinator *)v21 metricsActivity];
          tagProcessorList = [metricsActivity3 tagProcessorList];
          [mEMORY[0x277D17DE8] submitTaggedEvent:v44 processorList:tagProcessorList];

          if (currentBundleIdentifier3)
          {
          }
        }
      }

      v47 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v50;
        v61 = 2112;
        v62 = v8;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Opening pairing window with PIN on CHIP accessory server: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      +[HMDHAPAccessory chipPairingModeActiveDuration];
      v52 = v51;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __68__HMDAccessorySetupCoordinator_handleCreateCHIPSetupPayloadMessage___block_invoke;
      v55[3] = &unk_278688540;
      v55[4] = selfCopy2;
      v56 = messageCopy;
      [v8 openPairingWindowWithPINForDuration:v55 completionHandler:v52];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v38;
        v61 = 2112;
        v62 = v6;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory server with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v39];

      v8 = 0;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v60 = v33;
      v61 = 2112;
      v62 = messagePayload;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory pairing identifier in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v8];
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __68__HMDAccessorySetupCoordinator_handleCreateCHIPSetupPayloadMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14 = *MEMORY[0x277CCEE38];
    v15 = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [*(a1 + 40) respondWithPayload:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to open pairing window with PIN: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v12 respondWithError:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleCancelStagingMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling cancel staging message with staging request UUID: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v13 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (v13)
    {
      error = [v13 error];

      if (error)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          error2 = [v13 error];
          v38 = 138543618;
          v39 = v18;
          v40 = 2112;
          v41 = error2;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to cancel staging message with success in presence of queued pairing error: %@", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];

        [messageCopy respondWithSuccess];
      }

      else
      {
        cancelHandler = [v13 cancelHandler];

        if (cancelHandler)
        {
          stagingRequestsByUUID3 = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
          [stagingRequestsByUUID3 setObject:0 forKeyedSubscript:v6];

          cancelHandler2 = [v13 cancelHandler];
          cancelHandler2[2]();

          [messageCopy respondWithSuccess];
          pendingRequestMessage = [v13 pendingRequestMessage];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [pendingRequestMessage respondWithError:v32];

          [v13 setPendingRequestMessage:0];
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            v38 = 138543618;
            v39 = v36;
            v40 = 2112;
            v41 = v6;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Staging request UUID: %@ is not ready to cancel yet", &v38, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          [v13 setPendingCancelMessage:messageCopy];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v38 = 138543618;
        v39 = v26;
        v40 = 2112;
        v41 = v6;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for cancel staging message with staging request UUID: %@", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v27];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v38 = 138543618;
      v39 = v21;
      v40 = 2112;
      v41 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in cancel staging message payload: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)handleSelectWiFiNetworkAssociationMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  if (v6)
  {
    v7 = *MEMORY[0x277CCEE68];
    v44 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v9 = [messageCopy unarchivedObjectForKey:v7 ofClasses:v8];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v13;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling select wifi network message for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v15 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (!v15)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v32;
        v47 = 2112;
        v48 = v6;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for select wifi network message with staging request UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v33 = MEMORY[0x277CCA9B8];
      v34 = 2;
      goto LABEL_23;
    }

    error = [v15 error];

    if (error)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        error2 = [v15 error];
        *buf = 138543618;
        v46 = v20;
        v47 = 2112;
        v48 = error2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Responding to select wifi network message with queued pairing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      error3 = [v15 error];
      [messageCopy respondWithError:error3];

      stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v18 stagingRequestsByUUID];
      [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
      goto LABEL_24;
    }

    selectWiFiNetworkHandler = [v15 selectWiFiNetworkHandler];

    if (selectWiFiNetworkHandler)
    {
      pendingRequestMessage = [v15 pendingRequestMessage];

      if (!pendingRequestMessage)
      {
        selectWiFiNetworkHandler2 = [v15 selectWiFiNetworkHandler];
        (selectWiFiNetworkHandler2)[2](selectWiFiNetworkHandler2, v9);

        [v15 setSelectWiFiNetworkHandler:0];
        [v15 setPendingRequestMessage:messageCopy];
        goto LABEL_25;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v40;
      v47 = 2112;
      v48 = v6;
      v41 = "%{public}@A pending request message already exists for staging request UUID: %@";
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v37);
        v33 = MEMORY[0x277CCA9B8];
        v34 = 52;
LABEL_23:
        stagingRequestsByUUID2 = [v33 hmErrorWithCode:v34];
        [messageCopy respondWithError:stagingRequestsByUUID2];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v40;
      v47 = 2112;
      v48 = v6;
      v41 = "%{public}@No pending select wifi network completion handler exists for staging request UUID: %@";
    }

    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);

    goto LABEL_22;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v46 = v27;
    v47 = 2112;
    v48 = messagePayload;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in select-wifi-network message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v9];
LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)handleSelectThreadNetworkAssociationMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  if (v6)
  {
    v7 = *MEMORY[0x277CCEE58];
    v44 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v9 = [messageCopy unarchivedObjectForKey:v7 ofClasses:v8];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v13;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling select Thread network message for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v15 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (!v15)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v32;
        v47 = 2112;
        v48 = v6;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for select Thread network message with staging request UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v33 = MEMORY[0x277CCA9B8];
      v34 = 2;
      goto LABEL_23;
    }

    error = [v15 error];

    if (error)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        error2 = [v15 error];
        *buf = 138543618;
        v46 = v20;
        v47 = 2112;
        v48 = error2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Responding to select Thread network message with queued pairing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      error3 = [v15 error];
      [messageCopy respondWithError:error3];

      stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v18 stagingRequestsByUUID];
      [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
      goto LABEL_24;
    }

    selectThreadNetworkHandler = [v15 selectThreadNetworkHandler];

    if (selectThreadNetworkHandler)
    {
      pendingRequestMessage = [v15 pendingRequestMessage];

      if (!pendingRequestMessage)
      {
        selectThreadNetworkHandler2 = [v15 selectThreadNetworkHandler];
        (selectThreadNetworkHandler2)[2](selectThreadNetworkHandler2, v9);

        [v15 setSelectThreadNetworkHandler:0];
        [v15 setPendingRequestMessage:messageCopy];
        goto LABEL_25;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v40;
      v47 = 2112;
      v48 = v6;
      v41 = "%{public}@A pending request message already exists for staging request UUID: %@";
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v37);
        v33 = MEMORY[0x277CCA9B8];
        v34 = 52;
LABEL_23:
        stagingRequestsByUUID2 = [v33 hmErrorWithCode:v34];
        [messageCopy respondWithError:stagingRequestsByUUID2];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v40;
      v47 = 2112;
      v48 = v6;
      v41 = "%{public}@No pending select Thread network completion handler exists for staging request UUID: %@";
    }

    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);

    goto LABEL_22;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v46 = v27;
    v47 = 2112;
    v48 = messagePayload;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in select-thread-network message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v9];
LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)handleRejectDeviceCredentialMessage:(id)message
{
  v48 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v44 = 138543618;
      v45 = v11;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling reject device credential message with staging request UUID: %@", &v44, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v13 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (v13)
    {
      error = [v13 error];

      if (error)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          error2 = [v13 error];
          v44 = 138543618;
          v45 = v18;
          v46 = 2112;
          v47 = error2;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Responding to reject device credential message with queued pairing error: %@", &v44, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        error3 = [v13 error];
        [messageCopy respondWithError:error3];

        stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
        goto LABEL_23;
      }

      confirmDeviceCredentialCompletionHandler = [v13 confirmDeviceCredentialCompletionHandler];

      if (!confirmDeviceCredentialCompletionHandler)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v44 = 138543618;
          v45 = v34;
          v46 = 2112;
          v47 = v6;
          v35 = "%{public}@No pending reject device credential completion handler exists for staging request UUID: %@";
          goto LABEL_21;
        }

LABEL_22:

        objc_autoreleasePoolPop(v31);
        stagingRequestsByUUID2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [messageCopy respondWithError:stagingRequestsByUUID2];
LABEL_23:

        goto LABEL_24;
      }

      pendingRequestMessage = [v13 pendingRequestMessage];

      if (pendingRequestMessage)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v44 = 138543618;
          v45 = v34;
          v46 = 2112;
          v47 = v6;
          v35 = "%{public}@A pending reject device credential message already exists for staging request UUID: %@";
LABEL_21:
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, v35, &v44, 0x16u);

          goto LABEL_22;
        }

        goto LABEL_22;
      }

      confirmDeviceCredentialCompletionHandler2 = [v13 confirmDeviceCredentialCompletionHandler];
      v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (confirmDeviceCredentialCompletionHandler2)[2](confirmDeviceCredentialCompletionHandler2, v38);

      [v13 setConfirmDeviceCredentialCompletionHandler:0];
      pendingResponsePayloads = [v13 pendingResponsePayloads];
      v40 = [pendingResponsePayloads count];

      if (v40)
      {
        pendingResponsePayloads2 = [v13 pendingResponsePayloads];
        v42 = [pendingResponsePayloads2 objectAtIndexedSubscript:0];

        pendingResponsePayloads3 = [v13 pendingResponsePayloads];
        [pendingResponsePayloads3 removeObjectAtIndex:0];

        [messageCopy respondWithPayload:v42];
      }

      else
      {
        [v13 setPendingRequestMessage:messageCopy];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v44 = 138543618;
        v45 = v27;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for reject device credential message with staging request UUID: %@", &v44, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v28];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v44 = 138543618;
      v45 = v22;
      v46 = 2112;
      v47 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in reject device credential message payload: %@", &v44, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }

LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleConfirmDeviceCredentialMessage:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v41 = 138543618;
      v42 = v11;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling confirm device credential message with staging request UUID: %@", &v41, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v13 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (v13)
    {
      error = [v13 error];

      if (error)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          error2 = [v13 error];
          v41 = 138543618;
          v42 = v18;
          v43 = 2112;
          v44 = error2;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Responding to confirm device credential message with queued pairing error: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        error3 = [v13 error];
        [messageCopy respondWithError:error3];

        stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
LABEL_9:

        goto LABEL_16;
      }

      confirmDeviceCredentialCompletionHandler = [v13 confirmDeviceCredentialCompletionHandler];

      if (!confirmDeviceCredentialCompletionHandler)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v41 = 138543618;
          v42 = v40;
          v43 = 2112;
          v44 = v6;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@No pending confirm device credential completion handler exists for staging request UUID: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        stagingRequestsByUUID2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [messageCopy respondWithError:stagingRequestsByUUID2];
        goto LABEL_9;
      }

      confirmDeviceCredentialCompletionHandler2 = [v13 confirmDeviceCredentialCompletionHandler];
      confirmDeviceCredentialCompletionHandler2[2](confirmDeviceCredentialCompletionHandler2, 0);

      [v13 setConfirmDeviceCredentialCompletionHandler:0];
      pendingResponsePayloads = [v13 pendingResponsePayloads];
      v33 = [pendingResponsePayloads count];

      if (v33)
      {
        pendingResponsePayloads2 = [v13 pendingResponsePayloads];
        v35 = [pendingResponsePayloads2 objectAtIndexedSubscript:0];

        pendingResponsePayloads3 = [v13 pendingResponsePayloads];
        [pendingResponsePayloads3 removeObjectAtIndex:0];

        [messageCopy respondWithPayload:v35];
      }

      else
      {
        [v13 setPendingRequestMessage:messageCopy];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v27;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for confirm device credential message with staging request UUID: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v28];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v41 = 138543618;
      v42 = v22;
      v43 = 2112;
      v44 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in confirm device credential message payload: %@", &v41, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleStageCHIPAccessoryPairingInStepsMessage:(id)message
{
  v153[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessorySetupCoordinator *)self startMetricsForThirdPartyPairing];
  metricsActivity = [(HMDAccessorySetupCoordinator *)self metricsActivity];
  v7 = *MEMORY[0x277CCEE28];
  v153[0] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:1];
  v9 = [messageCopy unarchivedObjectForKey:v7 ofClasses:v8];

  if (v9)
  {
    v93 = [messageCopy BOOLForKey:*MEMORY[0x277CCEE48]];
    categoryNumber = [v9 categoryNumber];

    if (categoryNumber)
    {
      categoryNumber2 = [v9 categoryNumber];
    }

    else
    {
      categoryNumber2 = &unk_283E74780;
    }

    productNumber = [v9 productNumber];

    if (productNumber)
    {
      productNumber2 = [v9 productNumber];
    }

    else
    {
      productNumber2 = @"Unknown";
    }

    v105 = metricsActivity;
    v106 = productNumber2;
    v103 = messageCopy;
    v104 = categoryNumber2;
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    v26 = MEMORY[0x277D17A68];
    v27 = MEMORY[0x277D17A38];
    v28 = 0x277CCA000uLL;
    v29 = MEMORY[0x277D17A30];
    if (v25)
    {
      v91 = HMFGetLogIdentifier();
      v30 = *v26;
      v97 = *v26;
      v100 = *v27;
      v107 = v22;
      v89 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "communicationProtocol")}];
      v94 = *v29;
      v31 = *MEMORY[0x277D17A58];
      v32 = *MEMORY[0x277D17A28];
      currentBundleIdentifier = [(HMDAccessorySetupCoordinator *)selfCopy currentBundleIdentifier];
      v34 = *MEMORY[0x277D17A60];
      v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "requiresMatterCustomCommissioningFlow")}];
      *buf = 138546434;
      v128 = v91;
      v129 = 2114;
      v130 = v97;
      v28 = 0x277CCA000;
      v131 = 2112;
      v132 = @"Accessory Info";
      v133 = 2114;
      v134 = v100;
      v135 = 2112;
      v136 = v89;
      v137 = 2114;
      v138 = v94;
      v139 = 2112;
      v140 = v104;
      v141 = 2114;
      v98 = v32;
      v101 = v31;
      v142 = v31;
      v143 = 2112;
      v144 = v106;
      v145 = 2114;
      v146 = v32;
      v147 = 2112;
      v148 = currentBundleIdentifier;
      v149 = 2114;
      v95 = v34;
      v150 = v34;
      v151 = 2112;
      v152 = v35;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);

      v22 = v107;
      v29 = MEMORY[0x277D17A30];
      v26 = MEMORY[0x277D17A68];

      v27 = MEMORY[0x277D17A38];
    }

    else
    {
      v95 = *MEMORY[0x277D17A60];
      v101 = *MEMORY[0x277D17A58];
      v98 = *MEMORY[0x277D17A28];
    }

    objc_autoreleasePoolPop(v22);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v37 = objc_alloc(MEMORY[0x277D17DF8]);
    v38 = *v26;
    v39 = *v27;
    v40 = [*(v28 + 2992) numberWithInteger:{objc_msgSend(v9, "communicationProtocol")}];
    v108 = v9;
    v41 = *v29;
    currentBundleIdentifier2 = [(HMDAccessorySetupCoordinator *)selfCopy currentBundleIdentifier];
    v43 = [*(v28 + 2992) numberWithBool:{objc_msgSend(v108, "requiresMatterCustomCommissioningFlow")}];
    v87 = v98;
    v18 = v104;
    v84 = v39;
    v44 = HMDTaggedLoggingCreateDictionary();
    v99 = v38;
    v45 = [v37 initWithTag:v38 data:{v44, v84, v40, v41, v104, v101, v106, v87, currentBundleIdentifier2, v95, v43}];
    metricsActivity = v105;
    tagProcessorList = [v105 tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v45 processorList:tagProcessorList];

    v9 = v108;
    chipAccessorySetupPayload = [v108 chipAccessorySetupPayload];
    v102 = chipAccessorySetupPayload;
    if (chipAccessorySetupPayload)
    {
      chipSetupPayload = [chipAccessorySetupPayload chipSetupPayload];
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v90 = HMFGetLogIdentifier();
        v52 = *MEMORY[0x277D17A98];
        vendorID = [chipSetupPayload vendorID];
        v53 = *MEMORY[0x277D17A88];
        v92 = v49;
        v54 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "supportsSoftAP")}];
        v55 = *MEMORY[0x277D17A48];
        v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "hasShortDiscriminator")}];
        *buf = 138545410;
        v128 = v90;
        v129 = 2114;
        v57 = v99;
        v130 = v99;
        v131 = 2112;
        v132 = @"Accessory Info";
        v133 = 2114;
        v96 = v52;
        v134 = v52;
        v58 = v53;
        v135 = 2112;
        v136 = vendorID;
        v137 = 2114;
        v138 = v53;
        v139 = 2112;
        v140 = v54;
        v141 = 2114;
        v142 = v55;
        v143 = 2112;
        v144 = v56;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);

        v49 = v92;
      }

      else
      {
        v96 = *MEMORY[0x277D17A98];
        v58 = *MEMORY[0x277D17A88];
        v55 = *MEMORY[0x277D17A48];
        v57 = v99;
      }

      objc_autoreleasePoolPop(v49);
      mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
      v65 = objc_alloc(MEMORY[0x277D17DF8]);
      vendorID2 = [chipSetupPayload vendorID];
      v67 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "supportsSoftAP")}];
      v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "hasShortDiscriminator")}];
      v85 = v58;
      v69 = HMDTaggedLoggingCreateDictionary();
      v70 = [v65 initWithTag:v57 data:{v69, v96, vendorID2, v85, v67, v55, v68}];
      tagProcessorList2 = [v105 tagProcessorList];
      [mEMORY[0x277D17DE8]2 submitTaggedEvent:v70 processorList:tagProcessorList2];

      v72 = objc_alloc_init(HMDAccessorySetupCoordinatorStagingRequest);
      array = [MEMORY[0x277CBEB18] array];
      [(HMDAccessorySetupCoordinatorStagingRequest *)v72 setPendingResponsePayloads:array];

      messageCopy = v103;
      [(HMDAccessorySetupCoordinatorStagingRequest *)v72 setPendingRequestMessage:v103];
      stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)v50 stagingRequestsByUUID];
      uUID = [(HMDAccessorySetupCoordinatorStagingRequest *)v72 UUID];
      [stagingRequestsByUUID setObject:v72 forKeyedSubscript:uUID];

      v76 = objc_autoreleasePoolPush();
      v77 = v50;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = HMFGetLogIdentifier();
        uUID2 = [(HMDAccessorySetupCoordinatorStagingRequest *)v72 UUID];
        *buf = 138543874;
        v128 = v79;
        v129 = 2112;
        v130 = chipSetupPayload;
        v131 = 2112;
        v132 = uUID2;
        _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_INFO, "%{public}@Handling stage CHIP accessory pairing in steps message with setup payload: %@, request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v76);
      chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)v77 chipAccessoryServerBrowser];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke;
      v124[3] = &unk_278681E08;
      v124[4] = v77;
      v125 = v72;
      v126 = v105;
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_3;
      v121[3] = &unk_278681E30;
      v121[4] = v77;
      v122 = v125;
      v123 = v126;
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_5;
      v118[3] = &unk_278681E58;
      v118[4] = v77;
      v119 = v122;
      v120 = v123;
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_7;
      v116[3] = &unk_278681E80;
      v116[4] = v77;
      v117 = v119;
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_9;
      v114[3] = &unk_278681EA8;
      v114[4] = v77;
      v115 = v117;
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_11;
      v112[3] = &unk_278681ED0;
      v112[4] = v77;
      v113 = v115;
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_13;
      v109[3] = &unk_278681EF8;
      v109[4] = v77;
      v110 = v113;
      v111 = v120;
      v82 = v113;
      LOBYTE(v86) = v93;
      metricsActivity = v105;
      [chipAccessoryServerBrowser stageAccessoryServerWithSetupPayload:chipSetupPayload fabricID:0 deviceCredentialHandler:v124 wifiScanResultsHandler:v121 threadScanResultsHandler:v118 readyToCancelHandler:v116 progressUpdateHandler:v114 commissioneeInfoHandler:v112 scanningNetworks:v86 completionHandler:v109];

      v9 = v108;
      v18 = v104;
    }

    else
    {
      v59 = objc_autoreleasePoolPush();
      v60 = selfCopy;
      v61 = HMFGetOSLogHandle();
      messageCopy = v103;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        v128 = v62;
        v129 = 2112;
        v130 = v108;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory setup payload on setup accessory payload: %@", buf, 0x16u);

        v9 = v108;
      }

      objc_autoreleasePoolPop(v59);
      chipSetupPayload = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v103 respondWithError:chipSetupPayload];
      v63 = *MEMORY[0x277D17A70];
      HMMLogTagActivityWithError();
      [v105 invalidate];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [messageCopy messagePayload];
      v17 = v16 = messageCopy;
      *buf = 138543618;
      v128 = v15;
      v129 = 2112;
      v130 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not find setup accessory payload in message payload: %@", buf, 0x16u);

      messageCopy = v16;
      v9 = 0;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v18];
    v19 = *MEMORY[0x277D17A70];
    HMMLogTagActivityWithError();
    [metricsActivity invalidate];
  }

  v83 = *MEMORY[0x277D85DE8];
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_2;
  block[3] = &unk_278688978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v15 = v6;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_4;
  block[3] = &unk_278688978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v15 = v6;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_6;
  block[3] = &unk_278688978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v15 = v6;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_8;
  block[3] = &unk_278689F98;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v3;
  v8 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_10;
  block[3] = &unk_278685DF8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = a2;
  v7 = v5;
  dispatch_async(v4, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_12;
  block[3] = &unk_27868A010;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_13(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_14;
  block[3] = &unk_278689550;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v15 = v9;
  v16 = *(a1 + 48);
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)handleCreateCHIPSetupAccessoryPayloadMessage:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v32 = v9;
    v33 = 2112;
    v34 = messagePayload;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling create CHIP setup accessory payload message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy URLForKey:*MEMORY[0x277CCEE40]];
  v12 = [messageCopy stringForKey:*MEMORY[0x277CCEE08]];
  v13 = v12;
  if (v11)
  {
    v28 = 0;
    v14 = &v28;
    v15 = [(HMDAccessorySetupCoordinator *)selfCopy createCHIPSetupAccessoryPayloadWithSetupPayloadURL:v11 error:&v28];
  }

  else
  {
    if (!v12)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        messagePayload2 = [messageCopy messagePayload];
        *buf = 138543618;
        v32 = v24;
        v33 = 2112;
        v34 = messagePayload2;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find any setup information in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      goto LABEL_12;
    }

    v27 = 0;
    v14 = &v27;
    v15 = [(HMDAccessorySetupCoordinator *)selfCopy _createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:v12 error:&v27];
  }

  v16 = v15;
  v17 = *v14;
  if (!v16)
  {
LABEL_12:
    [messageCopy respondWithError:v17];
    goto LABEL_13;
  }

  v29 = *MEMORY[0x277CCEE28];
  v18 = [v16 copy];
  v19 = encodeRootObjectForIncomingXPCMessage(v18, 0);
  v30 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [messageCopy respondWithPayload:v20];

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)stopMetricsForThirdPartyPairingWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stop metrics for 3rd party pairing, error:%@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  metricsActivity = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
  isValid = [metricsActivity isValid];

  if (isValid)
  {
    if (errorCopy)
    {
      v11 = *MEMORY[0x277D17A70];
      metricsActivity2 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
      HMMLogTagActivityWithError();
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *MEMORY[0x277D17A80];
        v24 = 138543874;
        v25 = v16;
        v26 = 2114;
        v27 = v17;
        v28 = 2112;
        v29 = @"Stop";
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", &v24, 0x20u);
      }

      else
      {
        v17 = *MEMORY[0x277D17A80];
      }

      objc_autoreleasePoolPop(v13);
      metricsActivity2 = [MEMORY[0x277D17DE8] sharedInstance];
      v18 = objc_alloc(MEMORY[0x277D17DF8]);
      v19 = [v18 initWithTag:v17 data:MEMORY[0x277CBEC10]];
      metricsActivity3 = [(HMDAccessorySetupCoordinator *)v14 metricsActivity];
      tagProcessorList = [metricsActivity3 tagProcessorList];
      [metricsActivity2 submitTaggedEvent:v19 processorList:tagProcessorList];
    }

    metricsActivity4 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
    [metricsActivity4 invalidate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)startMetricsForThirdPartyPairing
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Start metrics for 3rd party pairing", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  metricsActivity = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
  if (metricsActivity)
  {
    v8 = metricsActivity;
    metricsActivity2 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
    isValid = [metricsActivity2 isValid];

    if (isValid)
    {
      metricsActivity3 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
      [metricsActivity3 invalidate];
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"CHIP Third Party Pairing"];
  [(HMDAccessorySetupCoordinator *)selfCopy setMetricsActivity:v12];

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = *MEMORY[0x277D17A78];
    v24 = 138543874;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 2112;
    v29 = @"Start";
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", &v24, 0x20u);
  }

  else
  {
    v17 = *MEMORY[0x277D17A78];
  }

  objc_autoreleasePoolPop(v13);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v19 = objc_alloc(MEMORY[0x277D17DF8]);
  v20 = [v19 initWithTag:v17 data:MEMORY[0x277CBEC10]];
  metricsActivity4 = [(HMDAccessorySetupCoordinator *)v14 metricsActivity];
  tagProcessorList = [metricsActivity4 tagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v20 processorList:tagProcessorList];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)createSetupAccessoryPayloadWithCHIPSetupPayload:(id)payload error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (!payloadCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = payloadCopy;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  payloadCHIPAccessorySetupPayloadFactory = [(HMDAccessorySetupCoordinator *)self payloadCHIPAccessorySetupPayloadFactory];
  v10 = (payloadCHIPAccessorySetupPayloadFactory)[2](payloadCHIPAccessorySetupPayloadFactory, v7);

  if (v10)
  {
    v11 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v10 setupPayloadURL:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from setup payload %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createCHIPSetupAccessoryPayloadWithSetupPayloadURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = lCopy;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  absoluteString = [v7 absoluteString];
  stringByRemovingPercentEncoding = [absoluteString stringByRemovingPercentEncoding];

  urlStringCHIPAccessorySetupPayloadFactory = [(HMDAccessorySetupCoordinator *)self urlStringCHIPAccessorySetupPayloadFactory];
  v12 = (urlStringCHIPAccessorySetupPayloadFactory)[2](urlStringCHIPAccessorySetupPayloadFactory, stringByRemovingPercentEncoding);

  if (v12)
  {
    v13 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v12 setupPayloadURL:v7];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = stringByRemovingPercentEncoding;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from setup payload URL string: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)configure
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  messageDispatcher = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v5 = *MEMORY[0x277CCEDF0];
  v40[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [messageDispatcher registerForMessage:v5 receiver:self policies:v6 selector:sel_handleCreateCHIPSetupAccessoryPayloadMessage_];

  messageDispatcher2 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v8 = *MEMORY[0x277CCEE90];
  v39 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [messageDispatcher2 registerForMessage:v8 receiver:self policies:v9 selector:sel_handleStageCHIPAccessoryPairingInStepsMessage_];

  messageDispatcher3 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v11 = *MEMORY[0x277CCEDE8];
  v38 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [messageDispatcher3 registerForMessage:v11 receiver:self policies:v12 selector:sel_handleConfirmDeviceCredentialMessage_];

  messageDispatcher4 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v14 = *MEMORY[0x277CCEE78];
  v37 = v3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [messageDispatcher4 registerForMessage:v14 receiver:self policies:v15 selector:sel_handleRejectDeviceCredentialMessage_];

  messageDispatcher5 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v17 = *MEMORY[0x277CCEE80];
  v36 = v3;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [messageDispatcher5 registerForMessage:v17 receiver:self policies:v18 selector:sel_handleSelectThreadNetworkAssociationMessage_];

  messageDispatcher6 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v20 = *MEMORY[0x277CCEE88];
  v35 = v3;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  [messageDispatcher6 registerForMessage:v20 receiver:self policies:v21 selector:sel_handleSelectWiFiNetworkAssociationMessage_];

  messageDispatcher7 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v23 = *MEMORY[0x277CCEDD8];
  v34 = v3;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [messageDispatcher7 registerForMessage:v23 receiver:self policies:v24 selector:sel_handleCancelStagingMessage_];

  messageDispatcher8 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v26 = *MEMORY[0x277CCEDF8];
  v33 = v3;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [messageDispatcher8 registerForMessage:v26 receiver:self policies:v27 selector:sel_handleCreateCHIPSetupPayloadMessage_];

  messageDispatcher9 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v29 = *MEMORY[0x277CCEDD0];
  v32 = v3;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [messageDispatcher9 registerForMessage:v29 receiver:self policies:v30 selector:sel_handleCancelStagedCHIPAccessoryPairingMessage_];

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySetupCoordinator)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher chipAccessoryServerBrowser:(id)browser chipDataSource:(id)source
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  browserCopy = browser;
  sourceCopy = source;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!browserCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_11:
    v25 = _HMFPreconditionFailure();
    return __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke_3(v25);
  }

  v26.receiver = self;
  v26.super_class = HMDAccessorySetupCoordinator;
  v16 = [(HMDAccessorySetupCoordinator *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    objc_storeStrong(&v17->_chipAccessoryServerBrowser, browser);
    objc_storeStrong(&v17->_chipDataSource, source);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stagingRequestsByUUID = v17->_stagingRequestsByUUID;
    v17->_stagingRequestsByUUID = dictionary;

    currentBundleIdentifier = v17->_currentBundleIdentifier;
    v17->_currentBundleIdentifier = 0;

    urlStringCHIPAccessorySetupPayloadFactory = v17->_urlStringCHIPAccessorySetupPayloadFactory;
    v17->_urlStringCHIPAccessorySetupPayloadFactory = &__block_literal_global_225895;

    decimalStringRepresentationCHIPAccessorySetupPayloadFactory = v17->_decimalStringRepresentationCHIPAccessorySetupPayloadFactory;
    v17->_decimalStringRepresentationCHIPAccessorySetupPayloadFactory = &__block_literal_global_70_225896;

    payloadCHIPAccessorySetupPayloadFactory = v17->_payloadCHIPAccessorySetupPayloadFactory;
    v17->_payloadCHIPAccessorySetupPayloadFactory = &__block_literal_global_73_225897;
  }

  return v17;
}

id __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithCHIPSetupPayload:v3];

  return v4;
}

id __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithSetupCodeString:v3];

  return v4;
}

id __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithSetupPayloadString:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t76 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t76, &__block_literal_global_186_225916);
  }

  v3 = logCategory__hmf_once_v77;

  return v3;
}

void __43__HMDAccessorySetupCoordinator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v77;
  logCategory__hmf_once_v77 = v1;
}

@end