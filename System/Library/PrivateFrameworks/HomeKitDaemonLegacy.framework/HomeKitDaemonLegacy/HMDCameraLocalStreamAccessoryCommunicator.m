@interface HMDCameraLocalStreamAccessoryCommunicator
+ (id)logCategory;
- (HMDCameraLocalStreamAccessoryCommunicator)initWithWorkQueue:(id)a3 sessionID:(id)a4 accessory:(id)a5 streamManagementService:(id)a6;
- (HMDHAPAccessory)accessory;
- (id)logIdentifier;
- (void)_handleReadSupportedConfigurationsResponses:(id)a3 completion:(id)a4;
- (void)_handleSelectedStreamConfigurationWriteResponses:(id)a3 completion:(id)a4;
- (void)_handleSetupEndPointReadResponses:(id)a3 completion:(id)a4;
- (void)_handleSetupEndPointWriteResponses:(id)a3 completion:(id)a4;
- (void)_writeSelectedStreamConfigurationData:(id)a3 completion:(id)a4;
- (void)readSetupEndPointWithCompletion:(id)a3;
- (void)readSupportedConfigurationsWithCompletion:(id)a3;
- (void)writeReselectedStreamConfiguration:(id)a3 completion:(id)a4;
- (void)writeSelectedStreamConfiguration:(id)a3 completion:(id)a4;
- (void)writeSetupEndPoint:(id)a3 completion:(id)a4;
@end

@implementation HMDCameraLocalStreamAccessoryCommunicator

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraLocalStreamAccessoryCommunicator *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)_handleSelectedStreamConfigurationWriteResponses:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received response for selected stream configuration write", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v6 firstObject];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 error];

    if (!v15)
    {
      v7[2](v7, 0);
      goto LABEL_13;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v10;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v14 error];
      v28 = 138543618;
      v29 = v19;
      v30 = 2114;
      v31 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to write selected stream configuration: the write reply ended in error response: %{public}@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [v14 error];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v10;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to write selected stream configuration: the write reply did not contain any responses", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  }

  v26 = v21;
  v7[2](v7, v21);

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_writeSelectedStreamConfigurationData:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraLocalStreamAccessoryCommunicator *)self accessory];
  if (v9)
  {
    v10 = [(HMDCameraLocalStreamAccessoryCommunicator *)self streamManagementService];
    v11 = [v10 findCharacteristicWithType:*MEMORY[0x277CFE6D8]];

    v12 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v11 value:v6 authorizationData:0 type:0];
    v22 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v14 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__HMDCameraLocalStreamAccessoryCommunicator__writeSelectedStreamConfigurationData_completion___block_invoke;
    v20[3] = &unk_279732070;
    v20[4] = self;
    v21 = v7;
    [v9 writeCharacteristicValues:v13 source:1070 queue:v14 completionHandler:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to write selected stream configuration: accessory reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v11 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
    (*(v7 + 2))(v7, v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetupEndPointReadResponses:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v42 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received response for setup endpoint read", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v53 count:16];
  obj = v13;
  if (v14)
  {
    v15 = v14;
    v41 = v7;
    v44 = 0;
    v16 = *v46;
    v17 = *MEMORY[0x277CFE6E0];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        v20 = [v19 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v23 = [v19 request];
          v24 = [v23 characteristic];
          v25 = [v24 type];
          v26 = [v25 isEqualToString:v17];

          if (v26)
          {
            v27 = v22;

            v44 = v20;
          }
        }
      }

      v28 = obj;
      v15 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v15);

    v7 = v41;
    v29 = v44;
    if (v44)
    {
      v30 = [(HAPTLVBase *)[HMDSetupEndPointRead alloc] initWithTLVData:v44];
      if (v30)
      {
        (v41)[2](v41, v30, 0);
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v42;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v38;
          v51 = 2112;
          v52 = v44;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to read setup endpoint: could not initialize setup endpoint from TLV data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
        v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1042];
        v41[2](v41, 0, v39);
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v31 = objc_autoreleasePoolPush();
  v32 = v42;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v34;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to read setup endpoint: the reply does not contain the expected response", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  v7[2](v7, 0, v29);
  v28 = obj;
LABEL_27:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetupEndPointWriteResponses:(id)a3 completion:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38 = a4;
  v7 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response for setup endpoint write", buf, 0xCu);
  }

  v37 = v9;
  objc_autoreleasePoolPop(v8);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    v16 = *MEMORY[0x277CFE6E0];
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v39 + 1) + 8 * v17);
      v19 = [v18 request];
      v20 = [v19 characteristic];
      v21 = [v20 type];
      v22 = [v21 isEqualToString:v16];

      if (v22)
      {
        break;
      }

      if (v14 == ++v17)
      {
        v14 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v23 = v18;

    if (!v23)
    {
      goto LABEL_17;
    }

    v24 = [v23 error];

    v25 = v38;
    if (v24)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v37;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v23 error];
        *buf = 138543618;
        v44 = v29;
        v45 = 2112;
        v46 = v30;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to write setup endpoint: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = [v23 error];
      (*(v38 + 2))(v38, v31);
    }

    else
    {
      (*(v38 + 2))(v38, 0);
    }
  }

  else
  {
LABEL_11:

LABEL_17:
    v32 = objc_autoreleasePoolPush();
    v33 = v37;
    v34 = HMFGetOSLogHandle();
    v25 = v38;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to write setup endpoint: the reply does not contain the expected response", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    (*(v38 + 2))(v38, v23);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleReadSupportedConfigurationsResponses:(id)a3 completion:(id)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v72 = a4;
  v7 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v85 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response for supported configurations read", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v13)
  {

    v38 = 0;
    v15 = 0;
LABEL_29:
    v43 = objc_autoreleasePoolPush();
    v44 = v9;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v46;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: Supported configurations read response did not include supported video stream configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
    v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v42 = v72;
    (*(v72 + 2))(v72, 0, 0, 0, v37);
    v36 = 0;
    goto LABEL_48;
  }

  v14 = v13;
  v71 = v9;
  v15 = 0;
  v75 = 0;
  v78 = 0;
  v79 = *v81;
  v77 = *MEMORY[0x277CFE708];
  v74 = *MEMORY[0x277CFE6F8];
  v73 = *MEMORY[0x277CFE700];
  obj = v12;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v81 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v80 + 1) + 8 * i);
      v18 = [v17 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        v21 = v15;
        v22 = [v17 request];
        v23 = [v22 characteristic];
        v24 = [v23 type];
        v25 = [v24 isEqualToString:v77];

        if (v25)
        {
          v26 = v78;
          v78 = v18;
        }

        else
        {
          v27 = [v17 request];
          v28 = [v27 characteristic];
          v29 = [v28 type];
          v30 = [v29 isEqualToString:v74];

          if (v30)
          {
            v26 = v75;
            v75 = v18;
          }

          else
          {
            v31 = [v17 request];
            v32 = [v31 characteristic];
            v33 = [v32 type];
            v34 = [v33 isEqualToString:v73];

            v15 = v21;
            v26 = v21;
            v21 = v18;
            if (!v34)
            {
              goto LABEL_18;
            }
          }
        }

        v35 = v20;

        v15 = v21;
      }

LABEL_18:
    }

    v12 = obj;
    v14 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v14);

  v36 = v78;
  if (!v78)
  {
    v38 = v75;
    v9 = v71;
    goto LABEL_29;
  }

  v37 = [(HAPTLVBase *)[HMDSupportedVideoStreamConfiguration alloc] initWithTLVData:v78];
  v38 = v75;
  if (!v37)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = v71;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v85 = v50;
      v86 = 2112;
      v87 = v78;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: Could not initialize video stream configuration from TLV data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v51 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1040];
    goto LABEL_38;
  }

  if (!v75)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = v71;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v55;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: Supported configurations read response did not include supported audio stream configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v52);
    v51 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
LABEL_38:
    v39 = v51;
    v42 = v72;
    (*(v72 + 2))(v72, 0, 0, 0, v51);
    goto LABEL_47;
  }

  v39 = [(HAPTLVBase *)[HMDSupportedAudioStreamConfiguration alloc] initWithTLVData:v75];
  if (!v39)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = v71;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      v85 = v59;
      v86 = 2112;
      v87 = v75;
      _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: Could not initialize audio stream configuration from TLV data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    v60 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1040];
    goto LABEL_45;
  }

  if (!v15)
  {
    v61 = objc_autoreleasePoolPush();
    v62 = v71;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v64;
      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: Supported configurations read response did not include supported RTP configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v61);
    v60 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
LABEL_45:
    v41 = v60;
    v42 = v72;
    (*(v72 + 2))(v72, 0, 0, 0, v60);
    goto LABEL_46;
  }

  v40 = [(HAPTLVBase *)[HMDSupportedRTPConfiguration alloc] initWithTLVData:v15];
  if (v40)
  {
    v41 = v40;
    v42 = v72;
    (*(v72 + 2))(v72, v37, v39, v40, 0);
  }

  else
  {
    v66 = objc_autoreleasePoolPush();
    v67 = v71;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543618;
      v85 = v69;
      v86 = 2112;
      v87 = v15;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: Could not initialize RTP configuration from TLV data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v66);
    v70 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1040];
    v42 = v72;
    (*(v72 + 2))(v72, 0, 0, 0, v70);

    v41 = 0;
  }

LABEL_46:

LABEL_47:
  v12 = obj;
LABEL_48:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)writeReselectedStreamConfiguration:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Writing reselected stream configuration %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v6 tlvData];
  [(HMDCameraLocalStreamAccessoryCommunicator *)v10 _writeSelectedStreamConfigurationData:v13 completion:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)writeSelectedStreamConfiguration:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Writing selected stream configuration: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v6 tlvData];
  [(HMDCameraLocalStreamAccessoryCommunicator *)v10 _writeSelectedStreamConfigurationData:v13 completion:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)readSetupEndPointWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reading setup endpoint", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 accessory];
  if (v10)
  {
    v11 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 streamManagementService];
    v12 = [v11 findCharacteristicWithType:*MEMORY[0x277CFE6E0]];

    v13 = [HMDCharacteristicRequest requestWithCharacteristic:v12];
    v23 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];

    v15 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__HMDCameraLocalStreamAccessoryCommunicator_readSetupEndPointWithCompletion___block_invoke;
    v21[3] = &unk_279732070;
    v21[4] = v7;
    v22 = v4;
    [v10 readCharacteristicValues:v14 source:1070 queue:v15 completionHandler:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to read setup endpoint: accessory reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
    (*(v4 + 2))(v4, 0, v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)writeSetupEndPoint:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v12;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Writing setup endpoint: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraLocalStreamAccessoryCommunicator *)v10 accessory];
  if (v13)
  {
    v14 = [(HMDCameraLocalStreamAccessoryCommunicator *)v10 streamManagementService];
    v15 = [v14 findCharacteristicWithType:*MEMORY[0x277CFE6E0]];

    v16 = [v6 tlvData];
    v17 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v15 value:v16 authorizationData:0 type:0];

    v27 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v19 = [(HMDCameraLocalStreamAccessoryCommunicator *)v10 workQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__HMDCameraLocalStreamAccessoryCommunicator_writeSetupEndPoint_completion___block_invoke;
    v25[3] = &unk_279732070;
    v25[4] = v10;
    v26 = v7;
    [v13 writeCharacteristicValues:v18 source:1070 queue:v19 completionHandler:v25];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to write setup endpoint: accessory reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
    (*(v7 + 2))(v7, v15);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)readSupportedConfigurationsWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraLocalStreamAccessoryCommunicator *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reading supported configurations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 accessory];
  if (v10)
  {
    v11 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 streamManagementService];
    v12 = [v11 findCharacteristicWithType:*MEMORY[0x277CFE708]];

    v13 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 streamManagementService];
    v14 = [v13 findCharacteristicWithType:*MEMORY[0x277CFE6F8]];

    v15 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 streamManagementService];
    v16 = [v15 findCharacteristicWithType:*MEMORY[0x277CFE700]];

    v17 = [HMDCharacteristicRequest requestWithCharacteristic:v12];
    v29[0] = v17;
    v18 = [HMDCharacteristicRequest requestWithCharacteristic:v14];
    v29[1] = v18;
    v19 = [HMDCharacteristicRequest requestWithCharacteristic:v16];
    v29[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

    v21 = [(HMDCameraLocalStreamAccessoryCommunicator *)v7 workQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__HMDCameraLocalStreamAccessoryCommunicator_readSupportedConfigurationsWithCompletion___block_invoke;
    v27[3] = &unk_279732070;
    v27[4] = v7;
    v28 = v4;
    [v10 readCharacteristicValues:v20 source:1070 queue:v21 completionHandler:v27];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v7;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to read supported configurations: accessory reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
    (*(v4 + 2))(v4, 0, 0, 0, v12);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (HMDCameraLocalStreamAccessoryCommunicator)initWithWorkQueue:(id)a3 sessionID:(id)a4 accessory:(id)a5 streamManagementService:(id)a6
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
    v19 = _HMFPreconditionFailure();
    return +[(HMDCameraLocalStreamAccessoryCommunicator *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDCameraLocalStreamAccessoryCommunicator;
  v16 = [(HMDCameraLocalStreamAccessoryCommunicator *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_workQueue, a3);
    objc_storeStrong(&v17->_sessionID, a4);
    objc_storeWeak(&v17->_accessory, v13);
    objc_storeStrong(&v17->_streamManagementService, a6);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_151647 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_151647, &__block_literal_global_151648);
  }

  v3 = logCategory__hmf_once_v28_151649;

  return v3;
}

uint64_t __56__HMDCameraLocalStreamAccessoryCommunicator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28_151649;
  logCategory__hmf_once_v28_151649 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end