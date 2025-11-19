@interface HMDMatterSoftwareUpdateProviderDelegate
+ (id)logCategory;
- (BOOL)canEstablishConnectionForHMDHAPAccessory:(id)a3;
- (BOOL)isUARPFirmwareVersionMismatchForAccessory:(id)a3 version:(id)a4;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDHomeManager)homeManager;
- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)a3 accessoryFirmwareUpdateManager:(id)a4;
- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)a3 accessoryFirmwareUpdateManager:(id)a4 dataSource:(id)a5;
- (HMMTRSoftwareUpdateProvider)softwareUpdateProvider;
- (id)_accessoryWithPairing:(id)a3;
- (id)_queryImageResponseWithStatus:(id)a3 delayedActionTime:(id)a4;
- (void)applyUpdateWithPairing:(id)a3 requestParams:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)configureWithSoftwareUpdateProvider:(id)a3;
- (void)manageBusyImageResponses:(id)a3 completionHandler:(id)a4;
- (void)manageNonBusyAvailableImageResponses:(id)a3 normalStatus:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)notifyCheckFirmwareUpdateSessionWithPairing:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)notifyUpdateWithPairing:(id)a3 params:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)queryImageWithPairing:(id)a3 requestParams:(id)a4 queue:(id)a5 accessoryInitiated:(BOOL)a6 completionHandler:(id)a7;
- (void)resetImageResponseCounters:(id)a3;
- (void)resetOTAProviderStateForHMDHAPAccessory:(id)a3;
@end

@implementation HMDMatterSoftwareUpdateProviderDelegate

- (HMMTRSoftwareUpdateProvider)softwareUpdateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_softwareUpdateProvider);

  return WeakRetained;
}

- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryFirmwareUpdateManager);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)_accessoryWithPairing:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v4 = [(HMDMatterSoftwareUpdateProviderDelegate *)self homeManager];
  v5 = [v4 homes];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (!v6)
  {
    v34 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = *v65;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v65 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v64 + 1) + 8 * i);
      v11 = [v10 matterFabricID];
      v12 = [v55 fabricID];
      v13 = [v11 isEqualToNumber:v12];

      if (v13)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v14 = [v10 hapAccessories];
        v41 = [v14 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (!v41)
        {
          goto LABEL_29;
        }

        v15 = *v61;
        v39 = v7;
        v40 = v8;
        v37 = *v61;
        v38 = i;
        v49 = v11;
        v44 = v14;
        while (1)
        {
          v16 = 0;
          do
          {
            if (*v61 != v15)
            {
              objc_enumerationMutation(v14);
            }

            v17 = *(*(&v60 + 1) + 8 * v16);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v42 = v16;
            v43 = v17;
            v18 = [v17 chipStorage];
            v19 = [v18 pairings];

            v54 = v19;
            v20 = [v19 countByEnumeratingWithState:&v56 objects:v68 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v57;
              v52 = *v57;
              do
              {
                v23 = 0;
                v53 = v21;
                do
                {
                  if (*v57 != v22)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v24 = *(*(&v56 + 1) + 8 * v23);
                  v25 = [v55 nodeID];
                  v26 = [v24 chipPluginPairing];
                  v27 = [v26 nodeID];
                  if (![v25 isEqualToNumber:v27])
                  {
                    goto LABEL_24;
                  }

                  v28 = [v55 fabricID];
                  v29 = [v24 chipPluginPairing];
                  v30 = [v29 fabricID];
                  if (![v28 isEqualToNumber:v30])
                  {
                    goto LABEL_23;
                  }

                  v31 = [v55 rootPublicKey];
                  v50 = [v24 chipPluginPairing];
                  v32 = [v50 rootPublicKey];
                  v51 = v31;
                  if (![v31 isEqualToData:v32])
                  {

                    v11 = v49;
LABEL_23:

                    v22 = v52;
                    v21 = v53;
LABEL_24:

                    goto LABEL_25;
                  }

                  v46 = [v55 vendorID];
                  v47 = [v24 chipPluginPairing];
                  v33 = [v47 vendorID];
                  v48 = [v46 isEqualToNumber:v33];

                  v11 = v49;
                  v22 = v52;
                  v21 = v53;
                  if (v48)
                  {
                    v34 = v43;

                    goto LABEL_34;
                  }

LABEL_25:
                  ++v23;
                }

                while (v21 != v23);
                v21 = [v54 countByEnumeratingWithState:&v56 objects:v68 count:16];
              }

              while (v21);
            }

            v16 = v42 + 1;
            v7 = v39;
            v8 = v40;
            v15 = v37;
            i = v38;
            v14 = v44;
          }

          while (v42 + 1 != v41);
          v41 = [v44 countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (!v41)
          {
LABEL_29:

            break;
          }
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    v34 = 0;
  }

  while (v7);
LABEL_34:

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)resetOTAProviderStateForHMDHAPAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    v24 = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ Resetting OTA provider state for %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 supportsCHIP])
  {
    v10 = [(HMDMatterSoftwareUpdateProviderDelegate *)v6 softwareUpdateProvider];
    if (v10)
    {
      v11 = [v4 chipStorage];
      v12 = [v11 nodeID];
      [v10 updateOTAProviderStateForNodeID:v12 otaProviderState:1];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v4 shortDescription];
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@ Couldn't get a strong ref to the software update provider", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 shortDescription];
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@%@ Not a matter accessory", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)canEstablishConnectionForHMDHAPAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ canEstablishConnectionForHMDHAPAccessory", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 supportsCHIP])
  {
    v10 = [(HMDMatterSoftwareUpdateProviderDelegate *)v6 softwareUpdateProvider];
    if (v10)
    {
      v11 = [v4 chipStorage];
      v12 = [v11 nodeID];
      v13 = [v10 canEstablishConnectionForNodeID:v12];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v4 shortDescription];
        v26 = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@ Couldn't get a strong ref to the software update provider", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v4 shortDescription];
      v26 = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@ Not a matter accessory", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)queryImageWithPairing:(id)a3 requestParams:(id)a4 queue:(id)a5 accessoryInitiated:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__HMDMatterSoftwareUpdateProviderDelegate_queryImageWithPairing_requestParams_queue_accessoryInitiated_completionHandler___block_invoke;
  block[3] = &unk_279733CD0;
  block[4] = self;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = a6;
  v15 = v13;
  v16 = v14;
  v17 = v12;
  dispatch_async(a5, block);
}

void __122__HMDMatterSoftwareUpdateProviderDelegate_queryImageWithPairing_requestParams_queue_accessoryInitiated_completionHandler___block_invoke(uint64_t a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _accessoryWithPairing:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessoryServer];
    v5 = [*(a1 + 32) accessoryFirmwareUpdateManager];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 registerAndCreateSessionForAccessory:v3 updateUARPParameters:1];
      v8 = [*(a1 + 48) protocolsSupported];
      v9 = [v8 containsObject:&unk_286629548];

      if ((v9 & 1) == 0)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 32);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [v3 shortDescription];
          v29 = [*(a1 + 48) protocolsSupported];
          *buf = 138543874;
          v116 = v27;
          v117 = 2112;
          v118 = v28;
          v119 = 2112;
          v120 = v29;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@ Transfer protocols not supported in request: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
        v30 = *(a1 + 32);
        v31 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
        [v30 manageNonBusyAvailableImageResponses:v4 normalStatus:&unk_286629578 error:v31 completionHandler:*(a1 + 56)];
        goto LABEL_58;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 48) softwareVersion];
      LODWORD(v10) = [v10 isUARPFirmwareVersionMismatchForAccessory:v3 version:v11];

      if (v10)
      {
        if (*(a1 + 64) == 1)
        {
          [*(a1 + 32) manageBusyImageResponses:v4 completionHandler:*(a1 + 56)];
        }

        else
        {
          v38 = *(a1 + 56);
          v39 = [*(a1 + 32) _queryImageResponseWithStatus:&unk_286629530 delayedActionTime:0];
          (*(v38 + 16))(v38, v39, 0);
        }

        goto LABEL_59;
      }

      v114 = 0;
      v32 = [v6 availableSoftwareAssetForMatterAccessory:v3 error:&v114];
      v31 = v114;
      v33 = [v31 code];
      if (v33 <= 2)
      {
        if (v33 != 1)
        {
          if (v33 == 2)
          {
            if (*(a1 + 64) == 1)
            {
              [*(a1 + 32) manageBusyImageResponses:v4 completionHandler:*(a1 + 56)];
            }

            else
            {
              v65 = *(a1 + 56);
              v66 = [*(a1 + 32) _queryImageResponseWithStatus:&unk_286629548 delayedActionTime:0];
              (*(v65 + 16))(v65, v66, 0);
            }

            goto LABEL_57;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v33 == 3)
        {
          v40 = objc_autoreleasePoolPush();
          v41 = *(a1 + 32);
          v42 = HMFGetOSLogHandle();
          v43 = v42;
          if (!v32)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v96 = HMFGetLogIdentifier();
              v97 = [v3 shortDescription];
              *buf = 138543874;
              v116 = v96;
              v117 = 2112;
              v118 = v97;
              v119 = 2112;
              v120 = v31;
              _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@%@ Received nil asset ID even though status is OnLocalStorage, Error:%@", buf, 0x20u);

              v32 = 0;
            }

            objc_autoreleasePoolPop(v40);
            if (!v31)
            {
              v31 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
            }

            goto LABEL_20;
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v45 = v44 = v32;
            [v3 shortDescription];
            v46 = v112 = v40;
            *buf = 138543874;
            v116 = v45;
            v117 = 2112;
            v118 = v46;
            v119 = 2112;
            v120 = v44;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@%@ A software image is available for accessory with asset = %@", buf, 0x20u);

            v40 = v112;
            v32 = v44;
          }

          objc_autoreleasePoolPop(v40);
          [*(a1 + 32) resetImageResponseCounters:v4];
LABEL_32:
          v113 = v31;
          v47 = objc_autoreleasePoolPush();
          v48 = *(a1 + 32);
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v51 = v50 = v32;
            [*(a1 + 48) softwareVersion];
            v52 = v108 = v47;
            v53 = [v50 assetVersionNumber];
            *buf = 138543874;
            v116 = v51;
            v117 = 2112;
            v118 = v52;
            v119 = 2112;
            v120 = v53;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Accessory software version: %@. Software update version: %@", buf, 0x20u);

            v47 = v108;
            v32 = v50;
          }

          objc_autoreleasePoolPop(v47);
          v54 = [v3 home];
          v55 = [v54 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

          if (v55)
          {
            v56 = objc_autoreleasePoolPush();
            v57 = *(a1 + 32);
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = HMFGetLogIdentifier();
              v60 = [v3 shortDescription];
              *buf = 138543618;
              v116 = v59;
              v117 = 2112;
              v118 = v60;
              v61 = "%{public}@%@ Automatic third party accessory software update is enabled, granting consent.";
LABEL_40:
              v109 = 1;
              _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, v61, buf, 0x16u);

              goto LABEL_46;
            }
          }

          else
          {
            v62 = [v3 softwareUpdate];
            v63 = [v62 state];

            v56 = objc_autoreleasePoolPush();
            v57 = *(a1 + 32);
            v58 = HMFGetOSLogHandle();
            v64 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);
            if (v63 != 5)
            {
              if (v64)
              {
                v67 = HMFGetLogIdentifier();
                v68 = [v3 shortDescription];
                *buf = 138543618;
                v116 = v67;
                v117 = 2112;
                v118 = v68;
                _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@%@ User consent pending.", buf, 0x16u);
              }

              v109 = 0;
LABEL_46:

              objc_autoreleasePoolPop(v56);
              v69 = [v32 assetVersionNumber];
              v70 = [v69 unsignedLongValue];
              v71 = [*(a1 + 48) softwareVersion];
              v72 = [v71 unsignedLongValue];

              if (v70 <= v72)
              {
                v88 = objc_autoreleasePoolPush();
                v89 = *(a1 + 32);
                v90 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v91 = v111 = v32;
                  [v3 shortDescription];
                  v92 = v107 = v88;
                  v93 = [*(a1 + 48) softwareVersion];
                  v94 = [v111 assetVersionNumber];
                  *buf = 138544130;
                  v116 = v91;
                  v117 = 2112;
                  v118 = v92;
                  v119 = 2112;
                  v120 = v93;
                  v121 = 2112;
                  v122 = v94;
                  _os_log_impl(&dword_2531F8000, v90, OS_LOG_TYPE_ERROR, "%{public}@%@ Accessory software version (%@) is already at latest available version (%@).", buf, 0x2Au);

                  v88 = v107;
                  v32 = v111;
                }

                objc_autoreleasePoolPop(v88);
                [*(a1 + 32) manageNonBusyAvailableImageResponses:v4 normalStatus:&unk_286629530 error:0 completionHandler:*(a1 + 56)];
                goto LABEL_56;
              }

              v73 = v109;
              if ((v109 & 1) == 0)
              {
                v74 = [*(a1 + 48) requestorCanConsent];
                v75 = [v74 BOOLValue];

                if ((v75 & 1) == 0)
                {
                  if (*(a1 + 64) == 1)
                  {
                    v98 = objc_autoreleasePoolPush();
                    v99 = *(a1 + 32);
                    v100 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                    {
                      v101 = HMFGetLogIdentifier();
                      v102 = [v3 shortDescription];
                      *buf = 138543618;
                      v116 = v101;
                      v117 = 2112;
                      v118 = v102;
                      _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@%@ User has not consented to firmware update and requestor cannot consent.", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v98);
                    [*(a1 + 32) manageBusyImageResponses:v4 completionHandler:*(a1 + 56)];
                  }

                  else
                  {
                    v103 = *(a1 + 56);
                    v104 = [*(a1 + 32) _queryImageResponseWithStatus:&unk_286629548 delayedActionTime:0];
                    (*(v103 + 16))(v103, v104, 0);
                  }

                  goto LABEL_56;
                }

                v76 = objc_autoreleasePoolPush();
                v77 = *(a1 + 32);
                v78 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                {
                  v79 = HMFGetLogIdentifier();
                  v80 = [v3 shortDescription];
                  *buf = 138543618;
                  v116 = v79;
                  v117 = 2112;
                  v118 = v80;
                  _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@%@ User has not consented yet but requestor can consent. Delegating consent to requestor", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v76);
                v73 = v109;
              }

              [*(a1 + 32) resetImageResponseCounters:v4];
              v81 = *(a1 + 56);
              v105 = objc_alloc(MEMORY[0x277D17B80]);
              v106 = [v32 localURL];
              v82 = [v106 path];
              v83 = [v32 assetVersionNumber];
              [v32 assetVersion];
              v84 = v110 = v32;
              [&unk_286629518 unsignedIntValue];
              v85 = HMFRandomDataWithLength();
              v86 = [MEMORY[0x277CCABB0] numberWithBool:v73 ^ 1u];
              v87 = [v105 initWithStatus:&unk_286629548 delayedActionTime:&unk_28662BE78 imageURI:v82 softwareVersion:v83 softwareVersionString:v84 updateToken:v85 userConsentNeeded:v86 metadataForRequestor:0];
              (*(v81 + 16))(v81, v87, 0);

              v32 = v110;
LABEL_56:
              v31 = v113;
              goto LABEL_57;
            }

            if (v64)
            {
              v59 = HMFGetLogIdentifier();
              v60 = [v3 shortDescription];
              *buf = 138543618;
              v116 = v59;
              v117 = 2112;
              v118 = v60;
              v61 = "%{public}@%@ User requested update for this accessory, granting consent.";
              goto LABEL_40;
            }
          }

          v109 = 1;
          goto LABEL_46;
        }

        if (v33 != 4)
        {
          if (v33 == 5)
          {
LABEL_20:
            v34 = *(a1 + 32);
            v35 = *(a1 + 56);
            v36 = v4;
            v37 = v31;
LABEL_27:
            [v34 manageNonBusyAvailableImageResponses:v36 normalStatus:&unk_286629530 error:v37 completionHandler:v35];
LABEL_57:

LABEL_58:
            goto LABEL_59;
          }

          goto LABEL_32;
        }
      }

      v34 = *(a1 + 32);
      v35 = *(a1 + 56);
      v36 = v4;
      v37 = 0;
      goto LABEL_27;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v116 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, firmware update manager not found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = *(a1 + 32);
    v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v22 manageNonBusyAvailableImageResponses:v4 normalStatus:&unk_286629530 error:v23 completionHandler:*(a1 + 56)];

    v6 = 0;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      *buf = 138543618;
      v116 = v15;
      v117 = 2112;
      v118 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot proceed with software update. Accessory not found for pairing : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = *(a1 + 56);
    v4 = [*(a1 + 32) _queryImageResponseWithStatus:&unk_286629530 delayedActionTime:0];
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v17 + 16))(v17, v4, v6);
  }

LABEL_59:

  v95 = *MEMORY[0x277D85DE8];
}

- (BOOL)isUARPFirmwareVersionMismatchForAccessory:(id)a3 version:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMatterSoftwareUpdateProviderDelegate *)self accessoryFirmwareUpdateManager];
  v9 = [v8 UARPAccessoryForHMDAccessory:v6];
  v10 = [v7 stringValue];
  v11 = [v9 firmwareVersion];
  if (v11 && (v12 = v11, [v9 firmwareVersion], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v10), v13, v12, (v14 & 1) != 0))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v6 shortDescription];
      [v9 firmwareVersion];
      v21 = v24 = v16;
      *buf = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ Firmware version from uarpAccessory (%@) doesn't match accessory version (%@)", buf, 0x2Au);

      v16 = v24;
    }

    objc_autoreleasePoolPop(v16);
    v15 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_queryImageResponseWithStatus:(id)a3 delayedActionTime:(id)a4
{
  v5 = MEMORY[0x277D17B80];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithStatus:v7 delayedActionTime:v6 imageURI:0 softwareVersion:0 softwareVersionString:0 updateToken:0 userConsentNeeded:0 metadataForRequestor:0];

  return v8;
}

- (void)resetImageResponseCounters:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 shortDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ Sending Available status response, reset all other responses counters", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v4 resetNonAvailableCounters];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)manageBusyImageResponses:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [v6 handleBusyImageResponseCounter];
    v9 = v8;
  }

  else
  {
    v9 = 120.0;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v6 shortDescription];
    v18 = 138543874;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@%@ Sending BUSY status response with %.0f seconds delay", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v16 = [(HMDMatterSoftwareUpdateProviderDelegate *)v11 _queryImageResponseWithStatus:&unk_286629560 delayedActionTime:v15];
  v7[2](v7, v16, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)manageNonBusyAvailableImageResponses:(id)a3 normalStatus:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v22 = objc_autoreleasePoolPush();
    self = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@AccessoryServer is nil, responding with original status without rate-limiting", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_9;
  }

  if ([v10 handleNotAvailableImageResponseCounter])
  {
LABEL_9:
    v21 = self;
    v19 = v11;
    v20 = 0;
    goto LABEL_10;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 shortDescription];
    v27 = 138543874;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    v31 = 2048;
    v32 = 0x40F5180000000000;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@%@ Sending BUSY status response with %0.f delay due to request rate exceeding threshold", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = &unk_286629560;
  v20 = &unk_28662BE88;
  v21 = v15;
LABEL_10:
  v25 = [(HMDMatterSoftwareUpdateProviderDelegate *)v21 _queryImageResponseWithStatus:v19 delayedActionTime:v20];
  v13[2](v13, v25, v12);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)notifyCheckFirmwareUpdateSessionWithPairing:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__HMDMatterSoftwareUpdateProviderDelegate_notifyCheckFirmwareUpdateSessionWithPairing_queue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(a4, block);
}

void __111__HMDMatterSoftwareUpdateProviderDelegate_notifyCheckFirmwareUpdateSessionWithPairing_queue_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _accessoryWithPairing:*(a1 + 40)];
  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v20 = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Accessory not found for pairing : %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v6 = *(v12 + 16);
    goto LABEL_7;
  }

  v3 = [*(a1 + 32) accessoryFirmwareUpdateManager];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 registerAndCreateSessionForAccessory:v2 updateUARPParameters:1];
    v6 = *(*(a1 + 48) + 16);
LABEL_7:
    v6();
    goto LABEL_11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, firmware update manager not found", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = *(a1 + 48);
  v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  (*(v17 + 16))(v17, v18);

  v4 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyUpdateWithPairing:(id)a3 params:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__HMDMatterSoftwareUpdateProviderDelegate_notifyUpdateWithPairing_params_queue_completionHandler___block_invoke;
  v16[3] = &unk_279734578;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = v11;
  v14 = v12;
  v15 = v10;
  dispatch_async(a5, v16);
}

void __98__HMDMatterSoftwareUpdateProviderDelegate_notifyUpdateWithPairing_params_queue_completionHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _accessoryWithPairing:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      v37 = 138543618;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory not found for pairing : %@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = *(a1 + 56);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 2;
    goto LABEL_13;
  }

  if (([v2 supportsCHIP] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v3 shortDescription];
      v37 = 138543618;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@ Accessory has updated software image, but Accessory does not support Matter", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v18 = *(a1 + 56);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 5;
LABEL_13:
    v12 = [v19 hmfErrorWithCode:v20];
    (*(v18 + 16))(v18, v12);
    goto LABEL_18;
  }

  v4 = [*(a1 + 48) didTimeout];
  v5 = [v4 isEqualToNumber:&unk_286629560];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v3 shortDescription];
      v37 = 138543618;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@ Accessory update timed out", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:13 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v3 shortDescription];
      v28 = [*(a1 + 48) softwareVersion];
      v37 = 138543874;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@%@ Accessory has updated software image. New version: %@", &v37, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = 0;
  }

  v29 = [HMDMatterSoftwareUpdateEndEvent alloc];
  v30 = [*(a1 + 48) linkTypeForMetrics];
  v31 = [*(a1 + 48) previousSoftwareVersionNumberForMetrics];
  v32 = [*(a1 + 48) softwareVersion];
  v33 = [(HMDMatterSoftwareUpdateEndEvent *)v29 initWithAccessory:v3 linkType:v30 accessorySoftwareVersionNumber:v31 updateSoftwareVersionNumber:v32 error:v12];

  v34 = [v3 home];
  v35 = [v34 logEventSubmitter];
  [v35 submitLogEvent:v33];

  (*(*(a1 + 56) + 16))();
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)applyUpdateWithPairing:(id)a3 requestParams:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__HMDMatterSoftwareUpdateProviderDelegate_applyUpdateWithPairing_requestParams_queue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  dispatch_async(a5, block);
}

void __104__HMDMatterSoftwareUpdateProviderDelegate_applyUpdateWithPairing_requestParams_queue_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _accessoryWithPairing:*(a1 + 40)];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v2 shortDescription];
      v16 = 138543618;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ Inform accessory to proceed with applying the software image", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 48);
    v10 = [objc_alloc(MEMORY[0x277D17B78]) initWithAction:&unk_286629548 delayedActionTime:&unk_28662BE78];
    (*(v9 + 16))(v9, v10, 0);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Accessory should not proceed with applying the software image. Accessory not found for pairing : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v13 = *(a1 + 48);
    v10 = [objc_alloc(MEMORY[0x277D17B78]) initWithAction:&unk_286629530 delayedActionTime:&unk_28662BE78];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v13 + 16))(v13, v10, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureWithSoftwareUpdateProvider:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMatterSoftwareUpdateProviderDelegate *)self dataSource];
  v6 = [v5 isMatterAccessorySoftwareUpdateEnabled];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring with matter software update provider", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [v4 setDelegate:v8];
    [(HMDMatterSoftwareUpdateProviderDelegate *)v8 setSoftwareUpdateProvider:v4];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2080;
      v17 = "[HMDMatterSoftwareUpdateProviderDelegate configureWithSoftwareUpdateProvider:]";
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s: Matter Accessory Software Update not enabled.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)a3 accessoryFirmwareUpdateManager:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDMatterSoftwareUpdateProviderDelegate;
  v11 = [(HMDMatterSoftwareUpdateProviderDelegate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, v8);
    objc_storeWeak(&v12->_accessoryFirmwareUpdateManager, v9);
    objc_storeStrong(&v12->_dataSource, a5);
  }

  return v12;
}

- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)a3 accessoryFirmwareUpdateManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDMatterSoftwareUpdateProviderDelegateDataSource);
  v9 = [(HMDMatterSoftwareUpdateProviderDelegate *)self initWithHomeManager:v7 accessoryFirmwareUpdateManager:v6 dataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_139799 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_139799, &__block_literal_global_139800);
  }

  v3 = logCategory__hmf_once_v37_139801;

  return v3;
}

uint64_t __54__HMDMatterSoftwareUpdateProviderDelegate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37_139801;
  logCategory__hmf_once_v37_139801 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end