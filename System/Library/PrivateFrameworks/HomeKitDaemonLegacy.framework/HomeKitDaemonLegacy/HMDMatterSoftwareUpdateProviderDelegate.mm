@interface HMDMatterSoftwareUpdateProviderDelegate
+ (id)logCategory;
- (BOOL)canEstablishConnectionForHMDHAPAccessory:(id)accessory;
- (BOOL)isUARPFirmwareVersionMismatchForAccessory:(id)accessory version:(id)version;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDHomeManager)homeManager;
- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)manager accessoryFirmwareUpdateManager:(id)updateManager;
- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)manager accessoryFirmwareUpdateManager:(id)updateManager dataSource:(id)source;
- (HMMTRSoftwareUpdateProvider)softwareUpdateProvider;
- (id)_accessoryWithPairing:(id)pairing;
- (id)_queryImageResponseWithStatus:(id)status delayedActionTime:(id)time;
- (void)applyUpdateWithPairing:(id)pairing requestParams:(id)params queue:(id)queue completionHandler:(id)handler;
- (void)configureWithSoftwareUpdateProvider:(id)provider;
- (void)manageBusyImageResponses:(id)responses completionHandler:(id)handler;
- (void)manageNonBusyAvailableImageResponses:(id)responses normalStatus:(id)status error:(id)error completionHandler:(id)handler;
- (void)notifyCheckFirmwareUpdateSessionWithPairing:(id)pairing queue:(id)queue completionHandler:(id)handler;
- (void)notifyUpdateWithPairing:(id)pairing params:(id)params queue:(id)queue completionHandler:(id)handler;
- (void)queryImageWithPairing:(id)pairing requestParams:(id)params queue:(id)queue accessoryInitiated:(BOOL)initiated completionHandler:(id)handler;
- (void)resetImageResponseCounters:(id)counters;
- (void)resetOTAProviderStateForHMDHAPAccessory:(id)accessory;
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

- (id)_accessoryWithPairing:(id)pairing
{
  v71 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  homeManager = [(HMDMatterSoftwareUpdateProviderDelegate *)self homeManager];
  homes = [homeManager homes];

  obj = homes;
  v6 = [homes countByEnumeratingWithState:&v64 objects:v70 count:16];
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
      matterFabricID = [v10 matterFabricID];
      fabricID = [pairingCopy fabricID];
      v13 = [matterFabricID isEqualToNumber:fabricID];

      if (v13)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        hapAccessories = [v10 hapAccessories];
        v41 = [hapAccessories countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (!v41)
        {
          goto LABEL_29;
        }

        v15 = *v61;
        v39 = v7;
        v40 = v8;
        v37 = *v61;
        v38 = i;
        v49 = matterFabricID;
        v44 = hapAccessories;
        while (1)
        {
          v16 = 0;
          do
          {
            if (*v61 != v15)
            {
              objc_enumerationMutation(hapAccessories);
            }

            v17 = *(*(&v60 + 1) + 8 * v16);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v42 = v16;
            v43 = v17;
            chipStorage = [v17 chipStorage];
            pairings = [chipStorage pairings];

            v54 = pairings;
            v20 = [pairings countByEnumeratingWithState:&v56 objects:v68 count:16];
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
                  nodeID = [pairingCopy nodeID];
                  chipPluginPairing = [v24 chipPluginPairing];
                  nodeID2 = [chipPluginPairing nodeID];
                  if (![nodeID isEqualToNumber:nodeID2])
                  {
                    goto LABEL_24;
                  }

                  fabricID2 = [pairingCopy fabricID];
                  chipPluginPairing2 = [v24 chipPluginPairing];
                  fabricID3 = [chipPluginPairing2 fabricID];
                  if (![fabricID2 isEqualToNumber:fabricID3])
                  {
                    goto LABEL_23;
                  }

                  rootPublicKey = [pairingCopy rootPublicKey];
                  chipPluginPairing3 = [v24 chipPluginPairing];
                  rootPublicKey2 = [chipPluginPairing3 rootPublicKey];
                  v51 = rootPublicKey;
                  if (![rootPublicKey isEqualToData:rootPublicKey2])
                  {

                    matterFabricID = v49;
LABEL_23:

                    v22 = v52;
                    v21 = v53;
LABEL_24:

                    goto LABEL_25;
                  }

                  vendorID = [pairingCopy vendorID];
                  chipPluginPairing4 = [v24 chipPluginPairing];
                  vendorID2 = [chipPluginPairing4 vendorID];
                  v48 = [vendorID isEqualToNumber:vendorID2];

                  matterFabricID = v49;
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
            hapAccessories = v44;
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

- (void)resetOTAProviderStateForHMDHAPAccessory:(id)accessory
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    v24 = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = shortDescription;
    v28 = 2112;
    v29 = accessoryCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ Resetting OTA provider state for %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([accessoryCopy supportsCHIP])
  {
    softwareUpdateProvider = [(HMDMatterSoftwareUpdateProviderDelegate *)selfCopy softwareUpdateProvider];
    if (softwareUpdateProvider)
    {
      chipStorage = [accessoryCopy chipStorage];
      nodeID = [chipStorage nodeID];
      [softwareUpdateProvider updateOTAProviderStateForNodeID:nodeID otaProviderState:1];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        shortDescription2 = [accessoryCopy shortDescription];
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = shortDescription2;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@ Couldn't get a strong ref to the software update provider", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      shortDescription3 = [accessoryCopy shortDescription];
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = shortDescription3;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@%@ Not a matter accessory", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)canEstablishConnectionForHMDHAPAccessory:(id)accessory
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = shortDescription;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ canEstablishConnectionForHMDHAPAccessory", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([accessoryCopy supportsCHIP])
  {
    softwareUpdateProvider = [(HMDMatterSoftwareUpdateProviderDelegate *)selfCopy softwareUpdateProvider];
    if (softwareUpdateProvider)
    {
      chipStorage = [accessoryCopy chipStorage];
      nodeID = [chipStorage nodeID];
      v13 = [softwareUpdateProvider canEstablishConnectionForNodeID:nodeID];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        shortDescription2 = [accessoryCopy shortDescription];
        v26 = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = shortDescription2;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@ Couldn't get a strong ref to the software update provider", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      shortDescription3 = [accessoryCopy shortDescription];
      v26 = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = shortDescription3;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@ Not a matter accessory", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)queryImageWithPairing:(id)pairing requestParams:(id)params queue:(id)queue accessoryInitiated:(BOOL)initiated completionHandler:(id)handler
{
  pairingCopy = pairing;
  paramsCopy = params;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__HMDMatterSoftwareUpdateProviderDelegate_queryImageWithPairing_requestParams_queue_accessoryInitiated_completionHandler___block_invoke;
  block[3] = &unk_279733CD0;
  block[4] = self;
  v19 = pairingCopy;
  v20 = paramsCopy;
  v21 = handlerCopy;
  initiatedCopy = initiated;
  v15 = paramsCopy;
  v16 = handlerCopy;
  v17 = pairingCopy;
  dispatch_async(queue, block);
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

- (BOOL)isUARPFirmwareVersionMismatchForAccessory:(id)accessory version:(id)version
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  versionCopy = version;
  accessoryFirmwareUpdateManager = [(HMDMatterSoftwareUpdateProviderDelegate *)self accessoryFirmwareUpdateManager];
  v9 = [accessoryFirmwareUpdateManager UARPAccessoryForHMDAccessory:accessoryCopy];
  stringValue = [versionCopy stringValue];
  firmwareVersion = [v9 firmwareVersion];
  if (firmwareVersion && (v12 = firmwareVersion, [v9 firmwareVersion], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", stringValue), v13, v12, (v14 & 1) != 0))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      [v9 firmwareVersion];
      v21 = v24 = v16;
      *buf = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = shortDescription;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = stringValue;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ Firmware version from uarpAccessory (%@) doesn't match accessory version (%@)", buf, 0x2Au);

      v16 = v24;
    }

    objc_autoreleasePoolPop(v16);
    v15 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_queryImageResponseWithStatus:(id)status delayedActionTime:(id)time
{
  v5 = MEMORY[0x277D17B80];
  timeCopy = time;
  statusCopy = status;
  v8 = [[v5 alloc] initWithStatus:statusCopy delayedActionTime:timeCopy imageURI:0 softwareVersion:0 softwareVersionString:0 updateToken:0 userConsentNeeded:0 metadataForRequestor:0];

  return v8;
}

- (void)resetImageResponseCounters:(id)counters
{
  v15 = *MEMORY[0x277D85DE8];
  countersCopy = counters;
  if (countersCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      shortDescription = [countersCopy shortDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = shortDescription;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ Sending Available status response, reset all other responses counters", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [countersCopy resetNonAvailableCounters];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)manageBusyImageResponses:(id)responses completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  handlerCopy = handler;
  if (responsesCopy)
  {
    [responsesCopy handleBusyImageResponseCounter];
    v9 = v8;
  }

  else
  {
    v9 = 120.0;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    shortDescription = [responsesCopy shortDescription];
    v18 = 138543874;
    v19 = v13;
    v20 = 2112;
    v21 = shortDescription;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@%@ Sending BUSY status response with %.0f seconds delay", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v16 = [(HMDMatterSoftwareUpdateProviderDelegate *)selfCopy _queryImageResponseWithStatus:&unk_286629560 delayedActionTime:v15];
  handlerCopy[2](handlerCopy, v16, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)manageNonBusyAvailableImageResponses:(id)responses normalStatus:(id)status error:(id)error completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  statusCopy = status;
  errorCopy = error;
  handlerCopy = handler;
  if (!responsesCopy)
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

  if ([responsesCopy handleNotAvailableImageResponseCounter])
  {
LABEL_9:
    selfCopy = self;
    v19 = statusCopy;
    v20 = 0;
    goto LABEL_10;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    shortDescription = [responsesCopy shortDescription];
    v27 = 138543874;
    v28 = v17;
    v29 = 2112;
    v30 = shortDescription;
    v31 = 2048;
    v32 = 0x40F5180000000000;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@%@ Sending BUSY status response with %0.f delay due to request rate exceeding threshold", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = &unk_286629560;
  v20 = &unk_28662BE88;
  selfCopy = selfCopy2;
LABEL_10:
  v25 = [(HMDMatterSoftwareUpdateProviderDelegate *)selfCopy _queryImageResponseWithStatus:v19 delayedActionTime:v20];
  handlerCopy[2](handlerCopy, v25, errorCopy);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)notifyCheckFirmwareUpdateSessionWithPairing:(id)pairing queue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__HMDMatterSoftwareUpdateProviderDelegate_notifyCheckFirmwareUpdateSessionWithPairing_queue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v13 = pairingCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = pairingCopy;
  dispatch_async(queue, block);
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

- (void)notifyUpdateWithPairing:(id)pairing params:(id)params queue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  paramsCopy = params;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__HMDMatterSoftwareUpdateProviderDelegate_notifyUpdateWithPairing_params_queue_completionHandler___block_invoke;
  v16[3] = &unk_279734578;
  v16[4] = self;
  v17 = pairingCopy;
  v18 = paramsCopy;
  v19 = handlerCopy;
  v13 = paramsCopy;
  v14 = handlerCopy;
  v15 = pairingCopy;
  dispatch_async(queue, v16);
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

- (void)applyUpdateWithPairing:(id)pairing requestParams:(id)params queue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__HMDMatterSoftwareUpdateProviderDelegate_applyUpdateWithPairing_requestParams_queue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v14 = pairingCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = pairingCopy;
  dispatch_async(queue, block);
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

- (void)configureWithSoftwareUpdateProvider:(id)provider
{
  v18 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dataSource = [(HMDMatterSoftwareUpdateProviderDelegate *)self dataSource];
  isMatterAccessorySoftwareUpdateEnabled = [dataSource isMatterAccessorySoftwareUpdateEnabled];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (isMatterAccessorySoftwareUpdateEnabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring with matter software update provider", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [providerCopy setDelegate:selfCopy];
    [(HMDMatterSoftwareUpdateProviderDelegate *)selfCopy setSoftwareUpdateProvider:providerCopy];
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

- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)manager accessoryFirmwareUpdateManager:(id)updateManager dataSource:(id)source
{
  managerCopy = manager;
  updateManagerCopy = updateManager;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HMDMatterSoftwareUpdateProviderDelegate;
  v11 = [(HMDMatterSoftwareUpdateProviderDelegate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, managerCopy);
    objc_storeWeak(&v12->_accessoryFirmwareUpdateManager, updateManagerCopy);
    objc_storeStrong(&v12->_dataSource, source);
  }

  return v12;
}

- (HMDMatterSoftwareUpdateProviderDelegate)initWithHomeManager:(id)manager accessoryFirmwareUpdateManager:(id)updateManager
{
  updateManagerCopy = updateManager;
  managerCopy = manager;
  v8 = objc_alloc_init(HMDMatterSoftwareUpdateProviderDelegateDataSource);
  v9 = [(HMDMatterSoftwareUpdateProviderDelegate *)self initWithHomeManager:managerCopy accessoryFirmwareUpdateManager:updateManagerCopy dataSource:v8];

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