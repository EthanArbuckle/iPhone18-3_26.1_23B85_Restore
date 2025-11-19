@interface HMDAccessorySetupCoordinator
+ (id)logCategory;
- (HMDAccessorySetupCoordinator)initWithWorkQueue:(id)a3 messageDispatcher:(id)a4 chipAccessoryServerBrowser:(id)a5 chipDataSource:(id)a6;
- (id)_createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:(id)a3 error:(id *)a4;
- (id)_setupPayloadWithCHIPSetupPayload:(id)a3 setupPayloadURL:(id)a4;
- (id)createCHIPSetupAccessoryPayloadWithSetupPayloadURL:(id)a3 error:(id *)a4;
- (id)createSetupAccessoryPayloadWithCHIPSetupPayload:(id)a3 error:(id *)a4;
- (id)logIdentifier;
- (void)_handleStagedPairingCommissioneeInfo:(id)a3 forRequest:(id)a4;
- (void)_handleStagedPairingDeviceCredential:(id)a3 completionHandler:(id)a4 forRequest:(id)a5 activity:(id)a6;
- (void)_handleStagedPairingProgressState:(int64_t)a3 forRequest:(id)a4;
- (void)_handleStagedPairingReadyToCancel:(id)a3 forRequest:(id)a4;
- (void)_handleStagedPairingServer:(id)a3 error:(id)a4 forRequest:(id)a5 activity:(id)a6;
- (void)_handleStagedPairingThreadNetworkScanResults:(id)a3 completionHandler:(id)a4 forRequest:(id)a5 activity:(id)a6;
- (void)_handleStagedPairingWiFiNetworkScanResults:(id)a3 completionHandler:(id)a4 forRequest:(id)a5 activity:(id)a6;
- (void)configure;
- (void)handleCancelStagedCHIPAccessoryPairingMessage:(id)a3;
- (void)handleCancelStagingMessage:(id)a3;
- (void)handleConfirmDeviceCredentialMessage:(id)a3;
- (void)handleCreateCHIPSetupAccessoryPayloadMessage:(id)a3;
- (void)handleCreateCHIPSetupPayloadMessage:(id)a3;
- (void)handleRejectDeviceCredentialMessage:(id)a3;
- (void)handleSelectThreadNetworkAssociationMessage:(id)a3;
- (void)handleSelectWiFiNetworkAssociationMessage:(id)a3;
- (void)handleStageCHIPAccessoryPairingInStepsMessage:(id)a3;
- (void)startMetricsForThirdPartyPairing;
- (void)stopMetricsForThirdPartyPairingWithError:(id)a3;
@end

@implementation HMDAccessorySetupCoordinator

- (id)logIdentifier
{
  v2 = [MEMORY[0x277CD17C8] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleStagedPairingServer:(id)a3 error:(id)a4 forRequest:(id)a5 activity:(id)a6
{
  v105 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [v10 identifier];
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v12 UUID];
    *buf = 138544130;
    v96 = v19;
    v97 = 2112;
    v98 = v15;
    v99 = 2112;
    v100 = v11;
    v101 = 2112;
    v102 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling staged pairing identifier %@ and error %@ for request UUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v87 = v15;
  if (!v15 || ([v12 pendingRequestMessage], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v22 = [v10 productID];

    if (v22)
    {
      v86 = v13;
      v23 = objc_autoreleasePoolPush();
      v24 = v17;
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      v27 = MEMORY[0x277D17A50];
      if (v26)
      {
        HMFGetLogIdentifier();
        v28 = v85 = v23;
        v29 = *MEMORY[0x277D17A68];
        v30 = v12;
        v31 = v11;
        v32 = *v27;
        v33 = [v10 productID];
        *buf = 138544386;
        v96 = v28;
        v97 = 2114;
        v98 = v29;
        v99 = 2112;
        v100 = @"Accessory Info";
        v101 = 2114;
        v102 = v32;
        v11 = v31;
        v12 = v30;
        v103 = 2112;
        v104 = v33;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

        v23 = v85;
      }

      else
      {
        v29 = *MEMORY[0x277D17A68];
      }

      objc_autoreleasePoolPop(v23);
      v34 = [MEMORY[0x277D17DE8] sharedInstance];
      v35 = objc_alloc(MEMORY[0x277D17DF8]);
      v36 = [v10 productID];
      if (v36)
      {
        v93 = *MEMORY[0x277D17A50];
        v25 = [v10 productID];
        v94 = v25;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      }

      else
      {
        v37 = MEMORY[0x277CBEC10];
      }

      v48 = [v35 initWithTag:v29 data:v37];
      v49 = [v86 tagProcessorList];
      [v34 submitTaggedEvent:v48 processorList:v49];

      if (v36)
      {
      }

      v13 = v86;
      v15 = v87;
    }

    [v10 startPairingMetricWithActivity:v13];
    v50 = [(HMDAccessorySetupCoordinator *)v17 stagingRequestsByUUID];
    v51 = [v12 UUID];
    [v50 setObject:0 forKeyedSubscript:v51];

    if (v15)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = v17;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        v56 = [v12 UUID];
        *buf = 138543874;
        v96 = v55;
        v97 = 2112;
        v98 = v15;
        v99 = 2112;
        v100 = v56;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Successfully staged CHIP accessory server with identifier %@ in multiple steps for request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      v57 = [(HMDAccessorySetupCoordinator *)v53 chipAccessoryServerBrowser];
      v58 = [v57 systemCommissionerPairingManager];
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke;
      v88[3] = &unk_278681F20;
      v88[4] = v53;
      v89 = v12;
      v90 = v13;
      v91 = v15;
      v92 = v10;
      [v58 fetchSystemCommissionerPairingsWithCompletionHandler:v88];

      goto LABEL_41;
    }

    v59 = mapHAPPairingErrorToHMError(v11);
    v60 = objc_autoreleasePoolPush();
    v61 = v17;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      v64 = [v12 UUID];
      *buf = 138543874;
      v96 = v63;
      v97 = 2112;
      v98 = v64;
      v99 = 2112;
      v100 = v59;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage CHIP accessory pairing for request UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    v65 = [v12 pendingRequestMessage];

    v66 = objc_autoreleasePoolPush();
    v67 = v61;
    v68 = HMFGetOSLogHandle();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);
    if (!v65)
    {
      if (v69)
      {
        v79 = HMFGetLogIdentifier();
        v80 = [v12 UUID];
        *buf = 138543874;
        v96 = v79;
        v97 = 2112;
        v98 = v59;
        v99 = 2112;
        v100 = v80;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Queueing staging error %@ for request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v66);
      if (v59)
      {
        [v12 setError:v59];
      }

      else
      {
        v83 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v12 setError:v83];
      }

      v15 = v87;
      goto LABEL_40;
    }

    if (v69)
    {
      v70 = HMFGetLogIdentifier();
      v71 = [v12 UUID];
      *buf = 138543874;
      v96 = v70;
      v97 = 2112;
      v98 = v71;
      v99 = 2112;
      v100 = v59;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Responding for request UUID %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v66);
    v72 = [v12 pendingRequestMessage];
    [v72 respondWithError:v59];

    v73 = [(__CFString *)v59 domain];
    v74 = v73;
    if (v73 == *MEMORY[0x277CCFD28])
    {
      v81 = [(__CFString *)v59 code];

      v15 = v87;
      if (v81 == 13)
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {

      v15 = v87;
    }

    v82 = *MEMORY[0x277D17A70];
    HMMLogTagActivityWithError();
    [v13 invalidate];
    goto LABEL_40;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = v17;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    v42 = [v12 UUID];
    *buf = 138543618;
    v96 = v41;
    v97 = 2112;
    v98 = v42;
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
  v75 = [MEMORY[0x277D17DE8] sharedInstance];
  v76 = objc_alloc(MEMORY[0x277D17DF8]);
  v77 = [v76 initWithTag:v47 data:MEMORY[0x277CBEC10]];
  v78 = [v13 tagProcessorList];
  [v75 submitTaggedEvent:v77 processorList:v78];

  v15 = v87;
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

- (void)_handleStagedPairingCommissioneeInfo:(id)a3 forRequest:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 UUID];
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling commissionee info for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [v7 UUID];
  v25[0] = v14;
  v24[1] = *MEMORY[0x277CCEE10];
  v15 = encodeRootObjectForIncomingXPCMessage(v6, 0);
  v25[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCEDE0] messagePayload:v16];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  v19 = [(HMDAccessorySetupCoordinator *)v10 messageTargetUUID];
  v20 = [v18 initWithTarget:v19];
  [v17 setDestination:v20];

  v21 = [(HMDAccessorySetupCoordinator *)v10 messageDispatcher];
  v22 = [v17 copy];
  [v21 sendMessage:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingProgressState:(int64_t)a3 forRequest:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 UUID];
    *buf = 138543874;
    v27 = v11;
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling progress state (%ld) for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ((a3 - 1) > 0x25)
  {
    v13 = 15;
  }

  else
  {
    v13 = qword_22A587318[a3 - 1];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v15 = [v6 UUID];
  v24[1] = *MEMORY[0x277CCEE30];
  v25[0] = v15;
  v25[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCEE98] messagePayload:v16];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  v19 = [(HMDAccessorySetupCoordinator *)v9 messageTargetUUID];
  v20 = [v18 initWithTarget:v19];
  [v17 setDestination:v20];

  v21 = [(HMDAccessorySetupCoordinator *)v9 messageDispatcher];
  v22 = [v17 copy];
  [v21 sendMessage:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingReadyToCancel:(id)a3 forRequest:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 UUID];
    v26 = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling ready to cancel for request UUID: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [v7 pendingCancelMessage];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v10;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to a pending Cancel message", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [v7 pendingCancelMessage];
    [v19 respondWithSuccess];

    v20 = [v7 pendingRequestMessage];

    if (v20)
    {
      v21 = [v7 pendingRequestMessage];
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v21 respondWithError:v22];
    }

    v23 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
    v24 = [v7 UUID];
    [v23 setObject:0 forKeyedSubscript:v24];
  }

  else
  {
    [v7 setCancelHandler:v6];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingThreadNetworkScanResults:(id)a3 completionHandler:(id)a4 forRequest:(id)a5 activity:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v12 UUID];
    *buf = 138543874;
    v51 = v18;
    v52 = 2112;
    v53 = v10;
    v54 = 2112;
    v55 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling Thread scan results %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [v12 selectWiFiNetworkHandler];
  if (v20)
  {

LABEL_6:
    v22 = objc_autoreleasePoolPush();
    v23 = v16;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v12 UUID];
      *buf = 138543618;
      v51 = v25;
      v52 = 2112;
      v53 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received Thread scan results for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v11[2](v11, 0);
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
    v32 = [MEMORY[0x277D17DE8] sharedInstance];
    v33 = objc_alloc(MEMORY[0x277D17DF8]);
    v34 = [v33 initWithTag:v31 data:MEMORY[0x277CBEC10]];
    v35 = [v13 tagProcessorList];
    [v32 submitTaggedEvent:v34 processorList:v35];
    goto LABEL_12;
  }

  v21 = [v12 selectThreadNetworkHandler];

  if (v21)
  {
    goto LABEL_6;
  }

  if (v10)
  {
    v37 = [v12 UUID];
    v49[0] = v37;
    v48[1] = *MEMORY[0x277CCEE60];
    v38 = encodeRootObject();
    v49[1] = v38;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  }

  else
  {
    v32 = MEMORY[0x277CBEC10];
  }

  [v12 setSelectThreadNetworkHandler:v11];
  v39 = [v12 pendingRequestMessage];

  if (!v39)
  {
    v34 = [v12 pendingResponsePayloads];
    [v34 addObject:v32];
    goto LABEL_13;
  }

  v40 = [v12 pendingRequestMessage];
  [v40 respondWithPayload:v32];

  [v12 setPendingRequestMessage:0];
  v41 = objc_autoreleasePoolPush();
  v42 = v16;
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
  v34 = [MEMORY[0x277D17DE8] sharedInstance];
  v46 = objc_alloc(MEMORY[0x277D17DF8]);
  v35 = [v46 initWithTag:v45 data:MEMORY[0x277CBEC10]];
  v47 = [v13 tagProcessorList];
  [v34 submitTaggedEvent:v35 processorList:v47];

LABEL_12:
LABEL_13:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingWiFiNetworkScanResults:(id)a3 completionHandler:(id)a4 forRequest:(id)a5 activity:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v12 UUID];
    *buf = 138543874;
    v40 = v18;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling WiFi scan results %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [v12 selectWiFiNetworkHandler];
  if (v20)
  {
  }

  else
  {
    v21 = [v12 selectThreadNetworkHandler];

    if (!v21)
    {
      v28 = *MEMORY[0x277CCEE50];
      if (v10)
      {
        v37[0] = *MEMORY[0x277CCEE50];
        v29 = [v12 UUID];
        v38[0] = v29;
        v37[1] = *MEMORY[0x277CCEE70];
        v30 = encodeRootObject();
        v38[1] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      }

      else
      {
        v29 = [v12 UUID];
        v36 = v29;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      }

      [v12 setSelectWiFiNetworkHandler:v11];
      v32 = [v12 pendingRequestMessage];

      if (v32)
      {
        v33 = [v12 pendingRequestMessage];
        [v33 respondWithPayload:v31];

        [v12 setPendingRequestMessage:0];
      }

      else
      {
        v34 = [v12 pendingResponsePayloads];
        [v34 addObject:v31];
      }

      goto LABEL_9;
    }
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v16;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v12 UUID];
    *buf = 138543618;
    v40 = v25;
    v41 = 2112;
    v42 = v26;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received WiFi scan results for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v11[2](v11, 0);
LABEL_9:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleStagedPairingDeviceCredential:(id)a3 completionHandler:(id)a4 forRequest:(id)a5 activity:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v12 UUID];
    *buf = 138543874;
    v38 = v18;
    v39 = 2112;
    v40 = v10;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling device credential %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [v12 UUID];
  v36[0] = v20;
  v35[1] = *MEMORY[0x277CCEE18];
  v21 = encodeRootObject();
  v36[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v23 = [v12 pendingRequestMessage];

  if (v23)
  {
    v24 = [v12 pendingRequestMessage];
    [v24 respondWithPayload:v22];

    [v12 setPendingRequestMessage:0];
    v25 = objc_autoreleasePoolPush();
    v26 = v16;
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
    v30 = [MEMORY[0x277D17DE8] sharedInstance];
    v31 = objc_alloc(MEMORY[0x277D17DF8]);
    v32 = [v31 initWithTag:v29 data:MEMORY[0x277CBEC10]];
    v33 = [v13 tagProcessorList];
    [v30 submitTaggedEvent:v32 processorList:v33];
  }

  else
  {
    v30 = [v12 pendingResponsePayloads];
    [v30 addObject:v22];
  }

  [v12 setConfirmDeviceCredentialCompletionHandler:v11];
  v34 = *MEMORY[0x277D85DE8];
}

- (id)_setupPayloadWithCHIPSetupPayload:(id)a3 setupPayloadURL:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CD1C98]);
  v10 = [v6 setupCode];
  v11 = [v10 stringValue];
  v12 = [v9 initWithSetupCode:v11 communicationProtocol:2];

  v13 = [objc_alloc(MEMORY[0x277CD1C38]) initWithCHIPSetupPayload:v6];
  [v12 setSetupPayloadURL:v8];
  v14 = [v6 setupID];
  [v12 setSetupID:v14];

  [v12 setSupportsIP:{objc_msgSend(v6, "supportsIP")}];
  [v12 setSupportsBTLE:{objc_msgSend(v6, "supportsBLE")}];
  [v12 setSupportsWAC:{objc_msgSend(v6, "supportsSoftAP")}];
  v15 = [v6 vendorID];
  v16 = [v6 productID];
  v17 = v16;
  if (v15 && v16)
  {
    v18 = [(HMDAccessorySetupCoordinator *)self chipDataSource];
    [v18 vendorMetadataStore];
    v36 = v15;
    v19 = v17;
    v20 = v13;
    v22 = v21 = v8;
    v23 = [v6 vendorID];
    [v6 productID];
    v24 = v37 = self;
    v25 = [v22 retrieveVendorMetadataForVendorID:v23 productID:v24];

    v8 = v21;
    v13 = v20;
    v17 = v19;
    v15 = v36;

    v26 = [v6 productID];
    v27 = [v25 productWithID:v26];

    v28 = [v27 categoryNumber];
    [v12 setCategoryNumber:v28];

    v29 = [v27 deviceTypeID];
    [v13 setDeviceTypeID:v29];

    self = v37;
  }

  [v12 setChipAccessorySetupPayload:v13];
  v30 = objc_autoreleasePoolPush();
  v31 = self;
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

- (id)_createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  v8 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessorySetupCoordinator *)self decimalStringRepresentationCHIPAccessorySetupPayloadFactory];
  v10 = (v9)[2](v9, v7);

  if (v10)
  {
    v11 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v10 setupPayloadURL:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)handleCancelStagedCHIPAccessoryPairingMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 stringForKey:*MEMORY[0x277CCEE00]];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
    v12 = [(HMDAccessorySetupCoordinator *)v8 chipAccessoryServerBrowser];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__HMDAccessorySetupCoordinator_handleCancelStagedCHIPAccessoryPairingMessage___block_invoke;
    v17[3] = &unk_27868A1D8;
    v17[4] = v8;
    v18 = v4;
    [v12 discardStagedAccessoryServerWithIdentifier:v6 completionHandler:v17];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v4 messagePayload];
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory pairing identifier in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v15];
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

- (void)handleCreateCHIPSetupPayloadMessage:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 stringForKey:*MEMORY[0x277CCEE00]];
  if (v6)
  {
    v7 = [(HMDAccessorySetupCoordinator *)self chipAccessoryServerBrowser];
    v8 = [v7 stagedAccessoryServerWithIdentifier:v6];

    if (v8)
    {
      v9 = [(HMDAccessorySetupCoordinator *)self currentBundleIdentifier];
      v10 = [v9 isEqualToString:*MEMORY[0x277CCFE40]];

      if ((v10 & 1) == 0)
      {
        v11 = [(HMDAccessorySetupCoordinator *)self metricsActivity];
        if (!v11 || (v12 = v11, -[HMDAccessorySetupCoordinator metricsActivity](self, "metricsActivity"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isValid], v13, v12, (v14 & 1) == 0))
        {
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543362;
            v60 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting metrics collection for 3rd party pairing via locker", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDAccessorySetupCoordinator *)v16 startMetricsForThirdPartyPairing];
          v19 = [(HMDAccessorySetupCoordinator *)v16 metricsActivity];
          [v8 startPairingMetricWithActivity:v19];

          v20 = objc_autoreleasePoolPush();
          v21 = v16;
          v22 = HMFGetOSLogHandle();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
          v24 = MEMORY[0x277D17A28];
          if (v23)
          {
            HMFGetLogIdentifier();
            v25 = v54 = v20;
            v26 = *MEMORY[0x277D17A68];
            v27 = *v24;
            v28 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
            *buf = 138544386;
            v60 = v25;
            v61 = 2114;
            v62 = v26;
            v63 = 2112;
            v64 = @"Accessory Info";
            v65 = 2114;
            v66 = v27;
            v67 = 2112;
            v68 = v28;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

            v29 = v26;
            v20 = v54;
          }

          else
          {
            v29 = *MEMORY[0x277D17A68];
          }

          objc_autoreleasePoolPop(v20);
          v40 = [MEMORY[0x277D17DE8] sharedInstance];
          v41 = objc_alloc(MEMORY[0x277D17DF8]);
          v42 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
          if (v42)
          {
            v57 = *MEMORY[0x277D17A28];
            v54 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
            v58 = v54;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          }

          else
          {
            v43 = MEMORY[0x277CBEC10];
          }

          v44 = [v41 initWithTag:v29 data:v43];
          v45 = [(HMDAccessorySetupCoordinator *)v21 metricsActivity];
          v46 = [v45 tagProcessorList];
          [v40 submitTaggedEvent:v44 processorList:v46];

          if (v42)
          {
          }
        }
      }

      v47 = objc_autoreleasePoolPush();
      v48 = self;
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
      v55[4] = v48;
      v56 = v4;
      [v8 openPairingWindowWithPINForDuration:v55 completionHandler:v52];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
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
      [v4 respondWithError:v39];

      v8 = 0;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v4 messagePayload];
      *buf = 138543618;
      v60 = v33;
      v61 = 2112;
      v62 = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory pairing identifier in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v8];
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

- (void)handleCancelStagingMessage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
    v12 = [(HMDAccessorySetupCoordinator *)v8 stagingRequestsByUUID];
    v13 = [v12 objectForKeyedSubscript:v6];

    if (v13)
    {
      v14 = [v13 error];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v8;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v13 error];
          v38 = 138543618;
          v39 = v18;
          v40 = 2112;
          v41 = v19;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to cancel staging message with success in presence of queued pairing error: %@", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v20 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [v20 setObject:0 forKeyedSubscript:v6];

        [v4 respondWithSuccess];
      }

      else
      {
        v28 = [v13 cancelHandler];

        if (v28)
        {
          v29 = [(HMDAccessorySetupCoordinator *)v8 stagingRequestsByUUID];
          [v29 setObject:0 forKeyedSubscript:v6];

          v30 = [v13 cancelHandler];
          v30[2]();

          [v4 respondWithSuccess];
          v31 = [v13 pendingRequestMessage];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [v31 respondWithError:v32];

          [v13 setPendingRequestMessage:0];
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = v8;
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
          [v13 setPendingCancelMessage:v4];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v8;
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
      [v4 respondWithError:v27];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 messagePayload];
      v38 = 138543618;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in cancel staging message payload: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v13];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)handleSelectWiFiNetworkAssociationMessage:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 uuidForKey:*MEMORY[0x277CCEE50]];
  if (v6)
  {
    v7 = *MEMORY[0x277CCEE68];
    v44 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v9 = [v4 unarchivedObjectForKey:v7 ofClasses:v8];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    v14 = [(HMDAccessorySetupCoordinator *)v11 stagingRequestsByUUID];
    v15 = [v14 objectForKeyedSubscript:v6];

    if (!v15)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v11;
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

    v16 = [v15 error];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v11;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v15 error];
        *buf = 138543618;
        v46 = v20;
        v47 = 2112;
        v48 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Responding to select wifi network message with queued pairing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [v15 error];
      [v4 respondWithError:v22];

      v23 = [(HMDAccessorySetupCoordinator *)v18 stagingRequestsByUUID];
      [v23 setObject:0 forKeyedSubscript:v6];
      goto LABEL_24;
    }

    v35 = [v15 selectWiFiNetworkHandler];

    if (v35)
    {
      v36 = [v15 pendingRequestMessage];

      if (!v36)
      {
        v43 = [v15 selectWiFiNetworkHandler];
        (v43)[2](v43, v9);

        [v15 setSelectWiFiNetworkHandler:0];
        [v15 setPendingRequestMessage:v4];
        goto LABEL_25;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v11;
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
      v38 = v11;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v37);
        v33 = MEMORY[0x277CCA9B8];
        v34 = 52;
LABEL_23:
        v23 = [v33 hmErrorWithCode:v34];
        [v4 respondWithError:v23];
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
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v4 messagePayload];
    *buf = 138543618;
    v46 = v27;
    v47 = 2112;
    v48 = v28;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in select-wifi-network message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v4 respondWithError:v9];
LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)handleSelectThreadNetworkAssociationMessage:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 uuidForKey:*MEMORY[0x277CCEE50]];
  if (v6)
  {
    v7 = *MEMORY[0x277CCEE58];
    v44 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v9 = [v4 unarchivedObjectForKey:v7 ofClasses:v8];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    v14 = [(HMDAccessorySetupCoordinator *)v11 stagingRequestsByUUID];
    v15 = [v14 objectForKeyedSubscript:v6];

    if (!v15)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v11;
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

    v16 = [v15 error];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v11;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v15 error];
        *buf = 138543618;
        v46 = v20;
        v47 = 2112;
        v48 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Responding to select Thread network message with queued pairing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [v15 error];
      [v4 respondWithError:v22];

      v23 = [(HMDAccessorySetupCoordinator *)v18 stagingRequestsByUUID];
      [v23 setObject:0 forKeyedSubscript:v6];
      goto LABEL_24;
    }

    v35 = [v15 selectThreadNetworkHandler];

    if (v35)
    {
      v36 = [v15 pendingRequestMessage];

      if (!v36)
      {
        v43 = [v15 selectThreadNetworkHandler];
        (v43)[2](v43, v9);

        [v15 setSelectThreadNetworkHandler:0];
        [v15 setPendingRequestMessage:v4];
        goto LABEL_25;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v11;
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
      v38 = v11;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v37);
        v33 = MEMORY[0x277CCA9B8];
        v34 = 52;
LABEL_23:
        v23 = [v33 hmErrorWithCode:v34];
        [v4 respondWithError:v23];
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
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v4 messagePayload];
    *buf = 138543618;
    v46 = v27;
    v47 = 2112;
    v48 = v28;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in select-thread-network message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v4 respondWithError:v9];
LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)handleRejectDeviceCredentialMessage:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
    v12 = [(HMDAccessorySetupCoordinator *)v8 stagingRequestsByUUID];
    v13 = [v12 objectForKeyedSubscript:v6];

    if (v13)
    {
      v14 = [v13 error];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v8;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v13 error];
          v44 = 138543618;
          v45 = v18;
          v46 = 2112;
          v47 = v19;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Responding to reject device credential message with queued pairing error: %@", &v44, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v20 = [v13 error];
        [v4 respondWithError:v20];

        v21 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [v21 setObject:0 forKeyedSubscript:v6];
        goto LABEL_23;
      }

      v29 = [v13 confirmDeviceCredentialCompletionHandler];

      if (!v29)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v8;
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
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [v4 respondWithError:v21];
LABEL_23:

        goto LABEL_24;
      }

      v30 = [v13 pendingRequestMessage];

      if (v30)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v8;
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

      v37 = [v13 confirmDeviceCredentialCompletionHandler];
      v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (v37)[2](v37, v38);

      [v13 setConfirmDeviceCredentialCompletionHandler:0];
      v39 = [v13 pendingResponsePayloads];
      v40 = [v39 count];

      if (v40)
      {
        v41 = [v13 pendingResponsePayloads];
        v42 = [v41 objectAtIndexedSubscript:0];

        v43 = [v13 pendingResponsePayloads];
        [v43 removeObjectAtIndex:0];

        [v4 respondWithPayload:v42];
      }

      else
      {
        [v13 setPendingRequestMessage:v4];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v8;
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
      [v4 respondWithError:v28];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 messagePayload];
      v44 = 138543618;
      v45 = v22;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in reject device credential message payload: %@", &v44, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v13];
  }

LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleConfirmDeviceCredentialMessage:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
    v12 = [(HMDAccessorySetupCoordinator *)v8 stagingRequestsByUUID];
    v13 = [v12 objectForKeyedSubscript:v6];

    if (v13)
    {
      v14 = [v13 error];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v8;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v13 error];
          v41 = 138543618;
          v42 = v18;
          v43 = 2112;
          v44 = v19;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Responding to confirm device credential message with queued pairing error: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v20 = [v13 error];
        [v4 respondWithError:v20];

        v21 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [v21 setObject:0 forKeyedSubscript:v6];
LABEL_9:

        goto LABEL_16;
      }

      v30 = [v13 confirmDeviceCredentialCompletionHandler];

      if (!v30)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v8;
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
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [v4 respondWithError:v21];
        goto LABEL_9;
      }

      v31 = [v13 confirmDeviceCredentialCompletionHandler];
      v31[2](v31, 0);

      [v13 setConfirmDeviceCredentialCompletionHandler:0];
      v32 = [v13 pendingResponsePayloads];
      v33 = [v32 count];

      if (v33)
      {
        v34 = [v13 pendingResponsePayloads];
        v35 = [v34 objectAtIndexedSubscript:0];

        v36 = [v13 pendingResponsePayloads];
        [v36 removeObjectAtIndex:0];

        [v4 respondWithPayload:v35];
      }

      else
      {
        [v13 setPendingRequestMessage:v4];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v8;
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
      [v4 respondWithError:v28];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 messagePayload];
      v41 = 138543618;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in confirm device credential message payload: %@", &v41, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v13];
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleStageCHIPAccessoryPairingInStepsMessage:(id)a3
{
  v153[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDAccessorySetupCoordinator *)self startMetricsForThirdPartyPairing];
  v6 = [(HMDAccessorySetupCoordinator *)self metricsActivity];
  v7 = *MEMORY[0x277CCEE28];
  v153[0] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:1];
  v9 = [v4 unarchivedObjectForKey:v7 ofClasses:v8];

  if (v9)
  {
    v93 = [v4 BOOLForKey:*MEMORY[0x277CCEE48]];
    v10 = [v9 categoryNumber];

    if (v10)
    {
      v11 = [v9 categoryNumber];
    }

    else
    {
      v11 = &unk_283E74780;
    }

    v20 = [v9 productNumber];

    if (v20)
    {
      v21 = [v9 productNumber];
    }

    else
    {
      v21 = @"Unknown";
    }

    v105 = v6;
    v106 = v21;
    v103 = v4;
    v104 = v11;
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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
      v33 = [(HMDAccessorySetupCoordinator *)v23 currentBundleIdentifier];
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
      v148 = v33;
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
    v36 = [MEMORY[0x277D17DE8] sharedInstance];
    v37 = objc_alloc(MEMORY[0x277D17DF8]);
    v38 = *v26;
    v39 = *v27;
    v40 = [*(v28 + 2992) numberWithInteger:{objc_msgSend(v9, "communicationProtocol")}];
    v108 = v9;
    v41 = *v29;
    v42 = [(HMDAccessorySetupCoordinator *)v23 currentBundleIdentifier];
    v43 = [*(v28 + 2992) numberWithBool:{objc_msgSend(v108, "requiresMatterCustomCommissioningFlow")}];
    v87 = v98;
    v18 = v104;
    v84 = v39;
    v44 = HMDTaggedLoggingCreateDictionary();
    v99 = v38;
    v45 = [v37 initWithTag:v38 data:{v44, v84, v40, v41, v104, v101, v106, v87, v42, v95, v43}];
    v6 = v105;
    v46 = [v105 tagProcessorList];
    [v36 submitTaggedEvent:v45 processorList:v46];

    v9 = v108;
    v47 = [v108 chipAccessorySetupPayload];
    v102 = v47;
    if (v47)
    {
      v48 = [v47 chipSetupPayload];
      v49 = objc_autoreleasePoolPush();
      v50 = v23;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v90 = HMFGetLogIdentifier();
        v52 = *MEMORY[0x277D17A98];
        v88 = [v48 vendorID];
        v53 = *MEMORY[0x277D17A88];
        v92 = v49;
        v54 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v48, "supportsSoftAP")}];
        v55 = *MEMORY[0x277D17A48];
        v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v48, "hasShortDiscriminator")}];
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
        v136 = v88;
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
      v64 = [MEMORY[0x277D17DE8] sharedInstance];
      v65 = objc_alloc(MEMORY[0x277D17DF8]);
      v66 = [v48 vendorID];
      v67 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v48, "supportsSoftAP")}];
      v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v48, "hasShortDiscriminator")}];
      v85 = v58;
      v69 = HMDTaggedLoggingCreateDictionary();
      v70 = [v65 initWithTag:v57 data:{v69, v96, v66, v85, v67, v55, v68}];
      v71 = [v105 tagProcessorList];
      [v64 submitTaggedEvent:v70 processorList:v71];

      v72 = objc_alloc_init(HMDAccessorySetupCoordinatorStagingRequest);
      v73 = [MEMORY[0x277CBEB18] array];
      [(HMDAccessorySetupCoordinatorStagingRequest *)v72 setPendingResponsePayloads:v73];

      v4 = v103;
      [(HMDAccessorySetupCoordinatorStagingRequest *)v72 setPendingRequestMessage:v103];
      v74 = [(HMDAccessorySetupCoordinator *)v50 stagingRequestsByUUID];
      v75 = [(HMDAccessorySetupCoordinatorStagingRequest *)v72 UUID];
      [v74 setObject:v72 forKeyedSubscript:v75];

      v76 = objc_autoreleasePoolPush();
      v77 = v50;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = HMFGetLogIdentifier();
        v80 = [(HMDAccessorySetupCoordinatorStagingRequest *)v72 UUID];
        *buf = 138543874;
        v128 = v79;
        v129 = 2112;
        v130 = v48;
        v131 = 2112;
        v132 = v80;
        _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_INFO, "%{public}@Handling stage CHIP accessory pairing in steps message with setup payload: %@, request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v76);
      v81 = [(HMDAccessorySetupCoordinator *)v77 chipAccessoryServerBrowser];
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
      v6 = v105;
      [v81 stageAccessoryServerWithSetupPayload:v48 fabricID:0 deviceCredentialHandler:v124 wifiScanResultsHandler:v121 threadScanResultsHandler:v118 readyToCancelHandler:v116 progressUpdateHandler:v114 commissioneeInfoHandler:v112 scanningNetworks:v86 completionHandler:v109];

      v9 = v108;
      v18 = v104;
    }

    else
    {
      v59 = objc_autoreleasePoolPush();
      v60 = v23;
      v61 = HMFGetOSLogHandle();
      v4 = v103;
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
      v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v103 respondWithError:v48];
      v63 = *MEMORY[0x277D17A70];
      HMMLogTagActivityWithError();
      [v105 invalidate];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [v4 messagePayload];
      v17 = v16 = v4;
      *buf = 138543618;
      v128 = v15;
      v129 = 2112;
      v130 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not find setup accessory payload in message payload: %@", buf, 0x16u);

      v4 = v16;
      v9 = 0;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v18];
    v19 = *MEMORY[0x277D17A70];
    HMMLogTagActivityWithError();
    [v6 invalidate];
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

- (void)handleCreateCHIPSetupAccessoryPayloadMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling create CHIP setup accessory payload message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 URLForKey:*MEMORY[0x277CCEE40]];
  v12 = [v4 stringForKey:*MEMORY[0x277CCEE08]];
  v13 = v12;
  if (v11)
  {
    v28 = 0;
    v14 = &v28;
    v15 = [(HMDAccessorySetupCoordinator *)v7 createCHIPSetupAccessoryPayloadWithSetupPayloadURL:v11 error:&v28];
  }

  else
  {
    if (!v12)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v7;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v4 messagePayload];
        *buf = 138543618;
        v32 = v24;
        v33 = 2112;
        v34 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find any setup information in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      goto LABEL_12;
    }

    v27 = 0;
    v14 = &v27;
    v15 = [(HMDAccessorySetupCoordinator *)v7 _createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:v12 error:&v27];
  }

  v16 = v15;
  v17 = *v14;
  if (!v16)
  {
LABEL_12:
    [v4 respondWithError:v17];
    goto LABEL_13;
  }

  v29 = *MEMORY[0x277CCEE28];
  v18 = [v16 copy];
  v19 = encodeRootObjectForIncomingXPCMessage(v18, 0);
  v30 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v4 respondWithPayload:v20];

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)stopMetricsForThirdPartyPairingWithError:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stop metrics for 3rd party pairing, error:%@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessorySetupCoordinator *)v6 metricsActivity];
  v10 = [v9 isValid];

  if (v10)
  {
    if (v4)
    {
      v11 = *MEMORY[0x277D17A70];
      v12 = [(HMDAccessorySetupCoordinator *)v6 metricsActivity];
      HMMLogTagActivityWithError();
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v6;
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
      v12 = [MEMORY[0x277D17DE8] sharedInstance];
      v18 = objc_alloc(MEMORY[0x277D17DF8]);
      v19 = [v18 initWithTag:v17 data:MEMORY[0x277CBEC10]];
      v20 = [(HMDAccessorySetupCoordinator *)v14 metricsActivity];
      v21 = [v20 tagProcessorList];
      [v12 submitTaggedEvent:v19 processorList:v21];
    }

    v22 = [(HMDAccessorySetupCoordinator *)v6 metricsActivity];
    [v22 invalidate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)startMetricsForThirdPartyPairing
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Start metrics for 3rd party pairing", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAccessorySetupCoordinator *)v4 metricsActivity];
  if (v7)
  {
    v8 = v7;
    v9 = [(HMDAccessorySetupCoordinator *)v4 metricsActivity];
    v10 = [v9 isValid];

    if (v10)
    {
      v11 = [(HMDAccessorySetupCoordinator *)v4 metricsActivity];
      [v11 invalidate];
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"CHIP Third Party Pairing"];
  [(HMDAccessorySetupCoordinator *)v4 setMetricsActivity:v12];

  v13 = objc_autoreleasePoolPush();
  v14 = v4;
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
  v18 = [MEMORY[0x277D17DE8] sharedInstance];
  v19 = objc_alloc(MEMORY[0x277D17DF8]);
  v20 = [v19 initWithTag:v17 data:MEMORY[0x277CBEC10]];
  v21 = [(HMDAccessorySetupCoordinator *)v14 metricsActivity];
  v22 = [v21 tagProcessorList];
  [v18 submitTaggedEvent:v20 processorList:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)createSetupAccessoryPayloadWithCHIPSetupPayload:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  v8 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessorySetupCoordinator *)self payloadCHIPAccessorySetupPayloadFactory];
  v10 = (v9)[2](v9, v7);

  if (v10)
  {
    v11 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v10 setupPayloadURL:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createCHIPSetupAccessoryPayloadWithSetupPayloadURL:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  v8 = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 absoluteString];
  v10 = [v9 stringByRemovingPercentEncoding];

  v11 = [(HMDAccessorySetupCoordinator *)self urlStringCHIPAccessorySetupPayloadFactory];
  v12 = (v11)[2](v11, v10);

  if (v12)
  {
    v13 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v12 setupPayloadURL:v7];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from setup payload URL string: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v13 = 0;
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
  v4 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v5 = *MEMORY[0x277CCEDF0];
  v40[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v4 registerForMessage:v5 receiver:self policies:v6 selector:sel_handleCreateCHIPSetupAccessoryPayloadMessage_];

  v7 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v8 = *MEMORY[0x277CCEE90];
  v39 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v7 registerForMessage:v8 receiver:self policies:v9 selector:sel_handleStageCHIPAccessoryPairingInStepsMessage_];

  v10 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v11 = *MEMORY[0x277CCEDE8];
  v38 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [v10 registerForMessage:v11 receiver:self policies:v12 selector:sel_handleConfirmDeviceCredentialMessage_];

  v13 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v14 = *MEMORY[0x277CCEE78];
  v37 = v3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [v13 registerForMessage:v14 receiver:self policies:v15 selector:sel_handleRejectDeviceCredentialMessage_];

  v16 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v17 = *MEMORY[0x277CCEE80];
  v36 = v3;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v16 registerForMessage:v17 receiver:self policies:v18 selector:sel_handleSelectThreadNetworkAssociationMessage_];

  v19 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v20 = *MEMORY[0x277CCEE88];
  v35 = v3;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  [v19 registerForMessage:v20 receiver:self policies:v21 selector:sel_handleSelectWiFiNetworkAssociationMessage_];

  v22 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v23 = *MEMORY[0x277CCEDD8];
  v34 = v3;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v22 registerForMessage:v23 receiver:self policies:v24 selector:sel_handleCancelStagingMessage_];

  v25 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v26 = *MEMORY[0x277CCEDF8];
  v33 = v3;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [v25 registerForMessage:v26 receiver:self policies:v27 selector:sel_handleCreateCHIPSetupPayloadMessage_];

  v28 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v29 = *MEMORY[0x277CCEDD0];
  v32 = v3;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [v28 registerForMessage:v29 receiver:self policies:v30 selector:sel_handleCancelStagedCHIPAccessoryPairingMessage_];

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySetupCoordinator)initWithWorkQueue:(id)a3 messageDispatcher:(id)a4 chipAccessoryServerBrowser:(id)a5 chipDataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
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
    objc_storeStrong(&v16->_workQueue, a3);
    objc_storeStrong(&v17->_messageDispatcher, a4);
    objc_storeStrong(&v17->_chipAccessoryServerBrowser, a5);
    objc_storeStrong(&v17->_chipDataSource, a6);
    v18 = [MEMORY[0x277CBEB38] dictionary];
    stagingRequestsByUUID = v17->_stagingRequestsByUUID;
    v17->_stagingRequestsByUUID = v18;

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