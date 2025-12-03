@interface HMMTRFirmwareUpdateStatus
+ (id)logCategory;
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRFirmwareUpdateStatus)initWithFirmwareUpdateStatus:(id)status accessoryServer:(id)server browser:(id)browser;
- (id)_updateStateAsString:(unsigned __int8)string;
- (id)readForHAPFirmwareUpdateReadinessCharacteristic:(id)characteristic;
- (id)readForHAPFirmwareUpdateStatusCharacteristic:(id)characteristic;
- (id)readForMatterFirmwareUpdateStatusCharacteristic:(id)characteristic;
- (unint64_t)incrementOtaAnnounceDelayCounter;
- (void)checkCurrentFirmwareVersionNumber:(id)number;
- (void)handleOTARequestorAttributeReport:(id)report;
- (void)setLocalFirmwareUpdateStatus:(id)status;
- (void)timerDidFire:(id)fire;
- (void)updateDownloadedFirmwareVersionNumber:(id)number;
- (void)updateFirmwareUpdateStatus:(int64_t)status;
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

- (void)handleOTARequestorAttributeReport:(id)report
{
  v43 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_22;
  }

  cluster = [v5 cluster];
  v8 = [cluster isEqualToNumber:&unk_283EE7C80];

  if (!v8)
  {
    goto LABEL_22;
  }

  attribute = [v6 attribute];
  v10 = [attribute isEqualToNumber:&unk_283EE7C98];

  if (!v10)
  {
    attribute2 = [v6 attribute];
    v17 = [attribute2 isEqualToNumber:&unk_283EE7CB0];

    if (v17)
    {
      v18 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:reportCopy];
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
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v24 = HMFGetLogIdentifier();
      accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy3 accessoryServer];
      v37 = 138543874;
      v38 = v24;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = accessoryServer;
      v26 = "%{public}@OTA Requestor cluster, UpdatePossible Attribute report value:%@ for accessory:%@";
    }

    else
    {
      attribute3 = [v6 attribute];
      v28 = [attribute3 isEqualToNumber:&unk_283EE7CC8];

      if (v28)
      {
        v29 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:reportCopy];
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
        selfCopy3 = self;
        v23 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v24 = HMFGetLogIdentifier();
        accessoryServer = -[HMMTRFirmwareUpdateStatus _updateStateAsString:](selfCopy3, "_updateStateAsString:", [v20 unsignedIntValue]);
        accessoryServer2 = [(HMMTRFirmwareUpdateStatus *)selfCopy3 accessoryServer];
        v37 = 138543874;
        v38 = v24;
        v39 = 2112;
        v40 = accessoryServer;
        v41 = 2112;
        v42 = accessoryServer2;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@OTA Requestor cluster, UpdateState Attribute report value:%@ for accessory:%@", &v37, 0x20u);

        goto LABEL_20;
      }

      attribute4 = [v6 attribute];
      v34 = [attribute4 isEqualToNumber:&unk_283EE7CE0];

      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:reportCopy];
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
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v24 = HMFGetLogIdentifier();
      accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy3 accessoryServer];
      v37 = 138543874;
      v38 = v24;
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      v42 = accessoryServer;
      v26 = "%{public}@OTA Requestor cluster, UpdateStateProgress Attribute report value:%@ for accessory:%@";
    }

    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, v26, &v37, 0x20u);
LABEL_20:

LABEL_21:
    objc_autoreleasePoolPop(v21);

    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    accessoryServer3 = [(HMMTRFirmwareUpdateStatus *)selfCopy4 accessoryServer];
    v37 = 138543874;
    v38 = v14;
    v39 = 2112;
    v40 = reportCopy;
    v41 = 2112;
    v42 = accessoryServer3;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@OTA Requestor cluster, DefaultOTAProviders Attribute report:%@ for accessory:%@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_updateStateAsString:(unsigned __int8)string
{
  if ((string - 1) > 7u)
  {
    return @"Unknown";
  }

  else
  {
    return off_2786ED9D0[(string - 1)];
  }
}

- (id)readForHAPFirmwareUpdateReadinessCharacteristic:(id)characteristic
{
  v22 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  v6 = [type isEqual:@"00000234-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CFEB50]);
    v17 = 0;
    v8 = [v7 serializeWithError:&v17];
    v9 = v17;
    [characteristicCopy setValue:v8];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = characteristicCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated HAP firmware update readiness characteristic on local read to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    value = [characteristicCopy value];
  }

  else
  {
    value = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)readForHAPFirmwareUpdateStatusCharacteristic:(id)characteristic
{
  v22 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  v6 = [type isEqual:@"00000235-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CFEB58]);
    v17 = 0;
    v8 = [v7 serializeWithError:&v17];
    v9 = v17;
    [characteristicCopy setValue:v8];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = characteristicCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated HAP firmware update status characteristic on local read to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    value = [characteristicCopy value];
  }

  else
  {
    value = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)readForMatterFirmwareUpdateStatusCharacteristic:(id)characteristic
{
  v27 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  v6 = [type isEqual:@"0000026E-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    localFirmwareUpdateStatus = [(HMMTRFirmwareUpdateStatus *)self localFirmwareUpdateStatus];
    v22 = 0;
    v8 = [localFirmwareUpdateStatus serializeWithError:&v22];
    v9 = v22;

    [characteristicCopy setValue:v8];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = characteristicCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated matter firmware update status characteristic on local read to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    browser = [(HMMTRFirmwareUpdateStatus *)selfCopy browser];
    softwareUpdateProvider = [browser softwareUpdateProvider];
    accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
    currentPairing = [accessoryServer currentPairing];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__HMMTRFirmwareUpdateStatus_readForMatterFirmwareUpdateStatusCharacteristic___block_invoke;
    v21[3] = &unk_2786EF290;
    v21[4] = selfCopy;
    [softwareUpdateProvider notifyDelegateCheckFirmwareUpdateSessionWithPairing:currentPairing completionHandler:v21];

    value = [characteristicCopy value];
  }

  else
  {
    value = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return value;
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

- (void)updateFirmwareUpdateStatus:(int64_t)status
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRFirmwareUpdateStatus *)selfCopy otaProviderState];
    v9 = HAPOTAProviderStateAsString();
    v10 = HAPOTAProviderStateAsString();
    accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
    *buf = 138544130;
    v71 = v8;
    v72 = 2112;
    v73 = v9;
    v74 = 2112;
    v75 = v10;
    v76 = 2112;
    v77 = accessoryServer;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating OTA Provider state from %@ to %@ for accessory server [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (status >= 7)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v30;
      v72 = 1024;
      LODWORD(v73) = status;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid OTA provider state : %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    if (((1 << status) & 0x43) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
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

    statusCopy = status;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    accessoryServer2 = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
    primaryAccessory = [accessoryServer2 primaryAccessory];
    services = [primaryAccessory services];

    v20 = [services countByEnumeratingWithState:&v64 objects:v69 count:16];
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
            objc_enumerationMutation(services);
          }

          v24 = *(*(&v64 + 1) + 8 * i);
          type = [v24 type];
          v26 = [type isEqualToString:@"00000236-0000-1000-8000-0026BB765291"];

          if (v26)
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            characteristics = [v24 characteristics];
            v32 = [characteristics countByEnumeratingWithState:&v60 objects:v68 count:16];
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
                  objc_enumerationMutation(characteristics);
                }

                v36 = *(*(&v60 + 1) + 8 * v35);
                type2 = [v36 type];
                v38 = [type2 isEqualToString:@"0000026E-0000-1000-8000-0026BB765291"];

                if (v38)
                {
                  break;
                }

                if (v33 == ++v35)
                {
                  v33 = [characteristics countByEnumeratingWithState:&v60 objects:v68 count:16];
                  v16 = v55;
                  if (v33)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_36;
                }
              }

              accessoryServer3 = [v36 copy];
              service = [v36 service];
              [accessoryServer3 setService:service];

              v41 = [objc_alloc(MEMORY[0x277CFEC10]) initWithValue:statusCopy];
              v42 = [objc_alloc(MEMORY[0x277CFEB98]) initWithOTAProviderState:v41 downloadedFirmwareVersionNumber:0 accessoryDownloadProgressPercent:0];
              v59 = 0;
              v43 = [v42 serializeWithError:&v59];
              v44 = v59;
              if (v44)
              {
                v45 = v44;
                v46 = objc_autoreleasePoolPush();
                v47 = selfCopy;
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

              [(HMMTRFirmwareUpdateStatus *)selfCopy setLocalFirmwareUpdateStatus:v42];
              v58 = v43;
              [accessoryServer3 setValue:v43];
              v50 = objc_autoreleasePoolPush();
              v51 = selfCopy;
              v52 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                v53 = HMFGetLogIdentifier();
                *buf = 138543618;
                v71 = v53;
                v72 = 2112;
                v73 = accessoryServer3;
                _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Notification: Updated characteristic: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v50);
              v16 = v55;
              [v55 addObject:accessoryServer3];
            }

LABEL_36:

            goto LABEL_37;
          }
        }

        v21 = [services countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:

    services = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
    characteristics = [services delegate];
    accessoryServer3 = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
    [characteristics accessoryServer:accessoryServer3 didUpdateValuesForCharacteristics:v16 stateNumber:0 broadcast:0];
LABEL_38:
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)checkCurrentFirmwareVersionNumber:(id)number
{
  v34 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    downloadedFirmwareVersionNumber = [(HMMTRFirmwareUpdateStatus *)selfCopy downloadedFirmwareVersionNumber];
    *buf = 138543874;
    v29 = v8;
    v30 = 2112;
    v31 = numberCopy;
    v32 = 2112;
    v33 = downloadedFirmwareVersionNumber;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Checking currentFirmwareVersionNumber: %@ with downloadedFirmwareVersionNumber: %@ to determine if a software update was installed.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  downloadedFirmwareVersionNumber2 = [(HMMTRFirmwareUpdateStatus *)selfCopy downloadedFirmwareVersionNumber];

  if (downloadedFirmwareVersionNumber2)
  {
    downloadedFirmwareVersionNumber3 = [(HMMTRFirmwareUpdateStatus *)selfCopy downloadedFirmwareVersionNumber];
    v12 = [numberCopy isEqualToNumber:downloadedFirmwareVersionNumber3];

    if (v12)
    {
      accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
      otaUpdateTimer = [accessoryServer otaUpdateTimer];

      if (otaUpdateTimer)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v18;
          _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Stopping OTA update timer", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        accessoryServer2 = [(HMMTRFirmwareUpdateStatus *)v16 accessoryServer];
        otaUpdateTimer2 = [accessoryServer2 otaUpdateTimer];
        [otaUpdateTimer2 stop];
      }

      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
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
      accessoryServer3 = [(HMMTRFirmwareUpdateStatus *)v22 accessoryServer];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__HMMTRFirmwareUpdateStatus_checkCurrentFirmwareVersionNumber___block_invoke;
      v27[3] = &unk_2786EF290;
      v27[4] = v22;
      [accessoryServer3 refreshThreadCapabilitiesWithCompletion:v27];

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

- (void)updateDownloadedFirmwareVersionNumber:(id)number
{
  v15 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  [(HMMTRFirmwareUpdateStatus *)self setDownloadedFirmwareVersionNumber:numberCopy];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    downloadedFirmwareVersionNumber = [(HMMTRFirmwareUpdateStatus *)selfCopy downloadedFirmwareVersionNumber];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = downloadedFirmwareVersionNumber;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated downloadedFirmwareVersionNumber: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setLocalFirmwareUpdateStatus:(id)status
{
  v33 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  objc_storeStrong(&self->_localFirmwareUpdateStatus, status);
  oTAProviderState = [statusCopy OTAProviderState];
  self->_otaProviderState = [oTAProviderState value];

  otaProviderState = [(HMMTRFirmwareUpdateStatus *)self otaProviderState];
  if (otaProviderState <= 6)
  {
    if (((1 << otaProviderState) & 0x35) != 0)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        idleResetTimer = [(HMMTRFirmwareUpdateStatus *)selfCopy3 idleResetTimer];
        [idleResetTimer timeInterval];
        v14 = v13;
        accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy3 accessoryServer];
        *v31 = 138543874;
        *&v31[4] = v11;
        *&v31[12] = 2048;
        *&v31[14] = v14;
        *&v31[22] = 2112;
        v32 = accessoryServer;
        v16 = "%{public}@Kicking idle reset timer with delay of %f seconds for accessory server [%@]";
LABEL_5:
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, v16, v31, 0x20u);
      }
    }

    else
    {
      if (((1 << otaProviderState) & 0x42) != 0)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          accessoryServer2 = [(HMMTRFirmwareUpdateStatus *)selfCopy2 accessoryServer];
          *v31 = 138543618;
          *&v31[4] = v21;
          *&v31[12] = 2112;
          *&v31[14] = accessoryServer2;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Stop idle reset timer for accessory server [%@]", v31, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        idleResetTimer2 = [(HMMTRFirmwareUpdateStatus *)selfCopy2 idleResetTimer];
        [idleResetTimer2 suspend];
        goto LABEL_11;
      }

      v8 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        idleResetTimer = [(HMMTRFirmwareUpdateStatus *)selfCopy3 idleResetTimer];
        [idleResetTimer timeInterval];
        v26 = v25;
        accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy3 accessoryServer];
        *v31 = 138543874;
        *&v31[4] = v11;
        *&v31[12] = 2048;
        *&v31[14] = v26;
        *&v31[22] = 2112;
        v32 = accessoryServer;
        v16 = "%{public}@Starting idle reset timer with delay of %f seconds for accessory server [%@]";
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v8);
    idleResetTimer2 = [(HMMTRFirmwareUpdateStatus *)selfCopy3 idleResetTimer];
    [idleResetTimer2 resume];
LABEL_11:

    goto LABEL_12;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *v31 = 138543618;
    *&v31[4] = v30;
    *&v31[12] = 1024;
    *&v31[14] = [(HMMTRFirmwareUpdateStatus *)selfCopy4 otaProviderState];
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid OTA provider state : %d", v31, 0x12u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_12:
  v23 = [(HMMTRFirmwareUpdateStatus *)self accessoryServer:*v31];
  [v23 handleFirmwareUpdateStatusChange:{-[HMMTRFirmwareUpdateStatus otaProviderState](self, "otaProviderState")}];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    accessoryServer = [(HMMTRFirmwareUpdateStatus *)selfCopy accessoryServer];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = accessoryServer;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Idle reset timed out for accessory server [%@]", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMMTRFirmwareUpdateStatus *)selfCopy otaProviderState]!= 1)
  {
    [(HMMTRFirmwareUpdateStatus *)selfCopy updateFirmwareUpdateStatus:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)incrementOtaAnnounceDelayCounter
{
  [(HMMTRFirmwareUpdateStatus *)self setOtaAnnounceDelayCounter:[(HMMTRFirmwareUpdateStatus *)self otaAnnounceDelayCounter]+ 1];

  return [(HMMTRFirmwareUpdateStatus *)self otaAnnounceDelayCounter];
}

- (HMMTRFirmwareUpdateStatus)initWithFirmwareUpdateStatus:(id)status accessoryServer:(id)server browser:(id)browser
{
  statusCopy = status;
  serverCopy = server;
  browserCopy = browser;
  v24.receiver = self;
  v24.super_class = HMMTRFirmwareUpdateStatus;
  v12 = [(HMMTRFirmwareUpdateStatus *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_accessoryServer, serverCopy);
    objc_storeWeak(&v13->_browser, browserCopy);
    objc_storeStrong(&v13->_localFirmwareUpdateStatus, status);
    downloadedFirmwareVersionNumber = v13->_downloadedFirmwareVersionNumber;
    v13->_downloadedFirmwareVersionNumber = 0;

    v13->_otaAnnounceDelayCounter = 0;
    oTAProviderState = [(HAPMatterFirmwareUpdateStatus *)v13->_localFirmwareUpdateStatus OTAProviderState];
    v13->_otaProviderState = [oTAProviderState value];

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