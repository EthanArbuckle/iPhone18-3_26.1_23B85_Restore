@interface HMMTRFirmwareUpdateStatus
+ (id)logCategory;
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRFirmwareUpdateStatus)initWithFirmwareUpdateStatus:(id)a3 accessoryServer:(id)a4 browser:(id)a5;
- (id)_updateStateAsString:(unsigned __int8)a3;
- (id)readForHAPFirmwareUpdateReadinessCharacteristic:(id)a3;
- (id)readForHAPFirmwareUpdateStatusCharacteristic:(id)a3;
- (id)readForMatterFirmwareUpdateStatusCharacteristic:(id)a3;
- (unint64_t)incrementOtaAnnounceDelayCounter;
- (void)checkCurrentFirmwareVersionNumber:(id)a3;
- (void)handleOTARequestorAttributeReport:(id)a3;
- (void)setLocalFirmwareUpdateStatus:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)updateDownloadedFirmwareVersionNumber:(id)a3;
- (void)updateFirmwareUpdateStatus:(int64_t)a3;
@end

@implementation HMMTRFirmwareUpdateStatus

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (HMMTRAccessoryServer)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (void)handleOTARequestorAttributeReport:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_22;
  }

  v7 = [v5 cluster];
  v8 = [v7 isEqualToNumber:&unk_283EE7C80];

  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = [v6 attribute];
  v10 = [v9 isEqualToNumber:&unk_283EE7C98];

  if (!v10)
  {
    v16 = [v6 attribute];
    v17 = [v16 isEqualToNumber:&unk_283EE7CB0];

    if (v17)
    {
      v18 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v4];
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

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v24 = HMFGetLogIdentifier();
      v25 = [(HMMTRFirmwareUpdateStatus *)v22 accessoryServer];
      v37 = 138543874;
      v38 = v24;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v25;
      v26 = "%{public}@OTA Requestor cluster, UpdatePossible Attribute report value:%@ for accessory:%@";
    }

    else
    {
      v27 = [v6 attribute];
      v28 = [v27 isEqualToNumber:&unk_283EE7CC8];

      if (v28)
      {
        v29 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v4];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v20 = v30;

        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v24 = HMFGetLogIdentifier();
        v25 = -[HMMTRFirmwareUpdateStatus _updateStateAsString:](v22, "_updateStateAsString:", [v20 unsignedIntValue]);
        v31 = [(HMMTRFirmwareUpdateStatus *)v22 accessoryServer];
        v37 = 138543874;
        v38 = v24;
        v39 = 2112;
        v40 = v25;
        v41 = 2112;
        v42 = v31;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@OTA Requestor cluster, UpdateState Attribute report value:%@ for accessory:%@", &v37, 0x20u);

        goto LABEL_20;
      }

      v33 = [v6 attribute];
      v34 = [v33 isEqualToNumber:&unk_283EE7CE0];

      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v20 = v36;

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v24 = HMFGetLogIdentifier();
      v25 = [(HMMTRFirmwareUpdateStatus *)v22 accessoryServer];
      v37 = 138543874;
      v38 = v24;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = v25;
      v26 = "%{public}@OTA Requestor cluster, UpdateStateProgress Attribute report value:%@ for accessory:%@";
    }

    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, v26, &v37, 0x20u);
LABEL_20:

LABEL_21:
    objc_autoreleasePoolPop(v21);

    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMMTRFirmwareUpdateStatus *)v12 accessoryServer];
    v37 = 138543874;
    v38 = v14;
    v39 = 2112;
    v40 = v4;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@OTA Requestor cluster, DefaultOTAProviders Attribute report:%@ for accessory:%@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_updateStateAsString:(unsigned __int8)a3
{
  if ((a3 - 1) > 7u)
  {
    return @"Unknown";
  }

  else
  {
    return off_2786ED9D0[(a3 - 1)];
  }
}

- (id)readForHAPFirmwareUpdateReadinessCharacteristic:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqual:@"00000234-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CFEB50]);
    v17 = 0;
    v8 = [v7 serializeWithError:&v17];
    v9 = v17;
    [v4 setValue:v8];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated HAP firmware update readiness characteristic on local read to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v4 value];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)readForHAPFirmwareUpdateStatusCharacteristic:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqual:@"00000235-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CFEB58]);
    v17 = 0;
    v8 = [v7 serializeWithError:&v17];
    v9 = v17;
    [v4 setValue:v8];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated HAP firmware update status characteristic on local read to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v4 value];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)readForMatterFirmwareUpdateStatusCharacteristic:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqual:@"0000026E-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = [(HMMTRFirmwareUpdateStatus *)self localFirmwareUpdateStatus];
    v22 = 0;
    v8 = [v7 serializeWithError:&v22];
    v9 = v22;

    [v4 setValue:v8];
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
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated matter firmware update status characteristic on local read to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMMTRFirmwareUpdateStatus *)v11 browser];
    v15 = [v14 softwareUpdateProvider];
    v16 = [(HMMTRFirmwareUpdateStatus *)v11 accessoryServer];
    v17 = [v16 currentPairing];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__HMMTRFirmwareUpdateStatus_readForMatterFirmwareUpdateStatusCharacteristic___block_invoke;
    v21[3] = &unk_2786EF290;
    v21[4] = v11;
    [v15 notifyDelegateCheckFirmwareUpdateSessionWithPairing:v17 completionHandler:v21];

    v18 = [v4 value];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __77__HMMTRFirmwareUpdateStatus_readForMatterFirmwareUpdateStatusCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Delegate call to check firmware update session failed: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateFirmwareUpdateStatus:(int64_t)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRFirmwareUpdateStatus *)v6 otaProviderState];
    v9 = HAPOTAProviderStateAsString();
    v10 = HAPOTAProviderStateAsString();
    v11 = [(HMMTRFirmwareUpdateStatus *)v6 accessoryServer];
    *buf = 138544130;
    v71 = v8;
    v72 = 2112;
    v73 = v9;
    v74 = 2112;
    v75 = v10;
    v76 = 2112;
    v77 = v11;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating OTA Provider state from %@ to %@ for accessory server [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (a3 >= 7)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v6;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v30;
      v72 = 1024;
      LODWORD(v73) = a3;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid OTA provider state : %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    if (((1 << a3) & 0x43) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v6;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v15;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Resetting downloadedFirmwareVersionNumber to nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [(HMMTRFirmwareUpdateStatus *)v13 setDownloadedFirmwareVersionNumber:0];
    }

    v56 = a3;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = [(HMMTRFirmwareUpdateStatus *)v6 accessoryServer];
    v18 = [v17 primaryAccessory];
    v19 = [v18 services];

    v20 = [v19 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v65;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v65 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v64 + 1) + 8 * i);
          v25 = [v24 type];
          v26 = [v25 isEqualToString:@"00000236-0000-1000-8000-0026BB765291"];

          if (v26)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v31 = [v24 characteristics];
            v32 = [v31 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v61;
              v55 = v16;
LABEL_22:
              v35 = 0;
              while (1)
              {
                if (*v61 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v60 + 1) + 8 * v35);
                v37 = [v36 type];
                v38 = [v37 isEqualToString:@"0000026E-0000-1000-8000-0026BB765291"];

                if (v38)
                {
                  break;
                }

                if (v33 == ++v35)
                {
                  v33 = [v31 countByEnumeratingWithState:&v60 objects:v68 count:16];
                  v16 = v55;
                  if (v33)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_36;
                }
              }

              v39 = [v36 copy];
              v40 = [v36 service];
              [v39 setService:v40];

              v41 = [objc_alloc(MEMORY[0x277CFEC10]) initWithValue:v56];
              v42 = [objc_alloc(MEMORY[0x277CFEB98]) initWithOTAProviderState:v41 downloadedFirmwareVersionNumber:0 accessoryDownloadProgressPercent:0];
              v59 = 0;
              v43 = [v42 serializeWithError:&v59];
              v44 = v59;
              if (v44)
              {
                v45 = v44;
                v46 = objc_autoreleasePoolPush();
                v47 = v6;
                v48 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v49 = v57 = v43;
                  *buf = 138543618;
                  v71 = v49;
                  v72 = 2112;
                  v73 = v45;
                  _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_ERROR, "%{public}@Matter firmware update status serialized failed. Error: %@", buf, 0x16u);

                  v43 = v57;
                }

                objc_autoreleasePoolPop(v46);
                v16 = v55;
                goto LABEL_38;
              }

              [(HMMTRFirmwareUpdateStatus *)v6 setLocalFirmwareUpdateStatus:v42];
              v58 = v43;
              [v39 setValue:v43];
              v50 = objc_autoreleasePoolPush();
              v51 = v6;
              v52 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                v53 = HMFGetLogIdentifier();
                *buf = 138543618;
                v71 = v53;
                v72 = 2112;
                v73 = v39;
                _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Notification: Updated characteristic: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v50);
              v16 = v55;
              [v55 addObject:v39];
            }

LABEL_36:

            goto LABEL_37;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:

    v19 = [(HMMTRFirmwareUpdateStatus *)v6 accessoryServer];
    v31 = [v19 delegate];
    v39 = [(HMMTRFirmwareUpdateStatus *)v6 accessoryServer];
    [v31 accessoryServer:v39 didUpdateValuesForCharacteristics:v16 stateNumber:0 broadcast:0];
LABEL_38:
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)checkCurrentFirmwareVersionNumber:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTRFirmwareUpdateStatus *)v6 downloadedFirmwareVersionNumber];
    *buf = 138543874;
    v29 = v8;
    v30 = 2112;
    v31 = v4;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Checking currentFirmwareVersionNumber: %@ with downloadedFirmwareVersionNumber: %@ to determine if a software update was installed.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMMTRFirmwareUpdateStatus *)v6 downloadedFirmwareVersionNumber];

  if (v10)
  {
    v11 = [(HMMTRFirmwareUpdateStatus *)v6 downloadedFirmwareVersionNumber];
    v12 = [v4 isEqualToNumber:v11];

    if (v12)
    {
      v13 = [(HMMTRFirmwareUpdateStatus *)v6 accessoryServer];
      v14 = [v13 otaUpdateTimer];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v6;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v18;
          _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Stopping OTA update timer", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v19 = [(HMMTRFirmwareUpdateStatus *)v16 accessoryServer];
        v20 = [v19 otaUpdateTimer];
        [v20 stop];
      }

      v21 = objc_autoreleasePoolPush();
      v22 = v6;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v24;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating OTA Provider state to Installed and re-setting downloadedFirmwareVersionNumber to nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      [(HMMTRFirmwareUpdateStatus *)v22 setDownloadedFirmwareVersionNumber:0];
      v25 = [(HMMTRFirmwareUpdateStatus *)v22 accessoryServer];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__HMMTRFirmwareUpdateStatus_checkCurrentFirmwareVersionNumber___block_invoke;
      v27[3] = &unk_2786EF290;
      v27[4] = v22;
      [v25 refreshThreadCapabilitiesWithCompletion:v27];

      [(HMMTRFirmwareUpdateStatus *)v22 updateFirmwareUpdateStatus:6];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRFirmwareUpdateStatus_checkCurrentFirmwareVersionNumber___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) accessoryServer];
    v9 = [v8 nodeID];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Done refreshing thread capabilities for accessory server with nodeID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateDownloadedFirmwareVersionNumber:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMMTRFirmwareUpdateStatus *)self setDownloadedFirmwareVersionNumber:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTRFirmwareUpdateStatus *)v6 downloadedFirmwareVersionNumber];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated downloadedFirmwareVersionNumber: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setLocalFirmwareUpdateStatus:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_localFirmwareUpdateStatus, a3);
  v6 = [v5 OTAProviderState];
  self->_otaProviderState = [v6 value];

  v7 = [(HMMTRFirmwareUpdateStatus *)self otaProviderState];
  if (v7 <= 6)
  {
    if (((1 << v7) & 0x35) != 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(HMMTRFirmwareUpdateStatus *)v9 idleResetTimer];
        [v12 timeInterval];
        v14 = v13;
        v15 = [(HMMTRFirmwareUpdateStatus *)v9 accessoryServer];
        *v31 = 138543874;
        *&v31[4] = v11;
        *&v31[12] = 2048;
        *&v31[14] = v14;
        *&v31[22] = 2112;
        v32 = v15;
        v16 = "%{public}@Kicking idle reset timer with delay of %f seconds for accessory server [%@]";
LABEL_5:
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, v16, v31, 0x20u);
      }
    }

    else
    {
      if (((1 << v7) & 0x42) != 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HMMTRFirmwareUpdateStatus *)v19 accessoryServer];
          *v31 = 138543618;
          *&v31[4] = v21;
          *&v31[12] = 2112;
          *&v31[14] = v22;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Stop idle reset timer for accessory server [%@]", v31, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [(HMMTRFirmwareUpdateStatus *)v19 idleResetTimer];
        [v17 suspend];
        goto LABEL_11;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(HMMTRFirmwareUpdateStatus *)v9 idleResetTimer];
        [v12 timeInterval];
        v26 = v25;
        v15 = [(HMMTRFirmwareUpdateStatus *)v9 accessoryServer];
        *v31 = 138543874;
        *&v31[4] = v11;
        *&v31[12] = 2048;
        *&v31[14] = v26;
        *&v31[22] = 2112;
        v32 = v15;
        v16 = "%{public}@Starting idle reset timer with delay of %f seconds for accessory server [%@]";
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v8);
    v17 = [(HMMTRFirmwareUpdateStatus *)v9 idleResetTimer];
    [v17 resume];
LABEL_11:

    goto LABEL_12;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *v31 = 138543618;
    *&v31[4] = v30;
    *&v31[12] = 1024;
    *&v31[14] = [(HMMTRFirmwareUpdateStatus *)v28 otaProviderState];
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid OTA provider state : %d", v31, 0x12u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_12:
  v23 = [(HMMTRFirmwareUpdateStatus *)self accessoryServer:*v31];
  [v23 handleFirmwareUpdateStatusChange:{-[HMMTRFirmwareUpdateStatus otaProviderState](self, "otaProviderState")}];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTRFirmwareUpdateStatus *)v6 accessoryServer];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Idle reset timed out for accessory server [%@]", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMMTRFirmwareUpdateStatus *)v6 otaProviderState]!= 1)
  {
    [(HMMTRFirmwareUpdateStatus *)v6 updateFirmwareUpdateStatus:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)incrementOtaAnnounceDelayCounter
{
  [(HMMTRFirmwareUpdateStatus *)self setOtaAnnounceDelayCounter:[(HMMTRFirmwareUpdateStatus *)self otaAnnounceDelayCounter]+ 1];

  return [(HMMTRFirmwareUpdateStatus *)self otaAnnounceDelayCounter];
}

- (HMMTRFirmwareUpdateStatus)initWithFirmwareUpdateStatus:(id)a3 accessoryServer:(id)a4 browser:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = HMMTRFirmwareUpdateStatus;
  v12 = [(HMMTRFirmwareUpdateStatus *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_accessoryServer, v10);
    objc_storeWeak(&v13->_browser, v11);
    objc_storeStrong(&v13->_localFirmwareUpdateStatus, a3);
    downloadedFirmwareVersionNumber = v13->_downloadedFirmwareVersionNumber;
    v13->_downloadedFirmwareVersionNumber = 0;

    v13->_otaAnnounceDelayCounter = 0;
    v15 = [(HAPMatterFirmwareUpdateStatus *)v13->_localFirmwareUpdateStatus OTAProviderState];
    v13->_otaProviderState = [v15 value];

    v16 = HMFDispatchQueueName();
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_get_global_queue(17, 0);
    v19 = dispatch_queue_create_with_target_V2(v16, v17, v18);
    idleResetTimerQueue = v13->_idleResetTimerQueue;
    v13->_idleResetTimerQueue = v19;

    v21 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:86400.0];
    idleResetTimer = v13->_idleResetTimer;
    v13->_idleResetTimer = v21;

    [(HMFTimer *)v13->_idleResetTimer setDelegateQueue:v13->_idleResetTimerQueue];
    [(HMFTimer *)v13->_idleResetTimer setDelegate:v13];
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26, &__block_literal_global_1659);
  }

  v3 = logCategory__hmf_once_v27;

  return v3;
}

uint64_t __40__HMMTRFirmwareUpdateStatus_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v27 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end