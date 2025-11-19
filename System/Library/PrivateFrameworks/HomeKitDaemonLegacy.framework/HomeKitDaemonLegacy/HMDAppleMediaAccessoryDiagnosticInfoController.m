@interface HMDAppleMediaAccessoryDiagnosticInfoController
+ (id)diagnosticInfoDescriptionWithData:(id)a3;
+ (id)snapshotForDataSource:(id)a3;
- (HMDAppleMediaAccessoryDiagnosticInfoController)initWithDataSource:(id)a3 isHH2Mode:(BOOL)a4;
- (HMDAppleMediaAccessoryDiagnosticInfoControllerDataSource)dataSource;
- (id)_diagnosticInfoWithAdditionalKeys:(id)a3 filterKeyPaths:(id)a4;
- (id)diagnosticInfoDataWithAdditionalKeys:(id)a3 filterKeyPaths:(id)a4;
@end

@implementation HMDAppleMediaAccessoryDiagnosticInfoController

+ (id)snapshotForDataSource:(id)a3
{
  v3 = objc_allocWithZone(type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot());
  v4 = swift_unknownObjectRetain();
  v5 = sub_253222A10(v4);

  return v5;
}

- (HMDAppleMediaAccessoryDiagnosticInfoControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)diagnosticInfoDataWithAdditionalKeys:(id)a3 filterKeyPaths:(id)a4
{
  v4 = [(HMDAppleMediaAccessoryDiagnosticInfoController *)self _diagnosticInfoWithAdditionalKeys:a3 filterKeyPaths:a4];
  v5 = [v4 data];

  return v5;
}

- (id)_diagnosticInfoWithAdditionalKeys:(id)a3 filterKeyPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAppleMediaAccessoryDiagnosticInfoController *)self dataSource];
  v9 = objc_alloc_init(MEMORY[0x277CD16B8]);
  [v9 setVersion:12];
  if ([(HMDAppleMediaAccessoryDiagnosticInfoController *)self isHH2Mode])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v9 setHomeHubVersion:v10];
  v11 = [MEMORY[0x277CBEAA8] now];
  [v11 timeIntervalSince1970];
  [v9 setGenerationTime:?];
  v12 = [v7 count];
  v13 = &unk_286627178;
  if (v12)
  {
    v13 = v7;
  }

  v14 = v13;
  v15 = [[HMDKeyPaths alloc] initFor:v14];
  if (v8)
  {
    v16 = [HMDAppleMediaAccessoryDiagnosticInfoController snapshotForDataSource:v8];
    v69 = v16;
    if ([v15 pushKey:@"appleMediaAccessoryDiagnosticInfo"])
    {
      v67 = v14;
      v17 = v6;
      v18 = objc_alloc_init(MEMORY[0x277CD16A0]);
      if ([v15 pushKey:@"cloudInfo"])
      {
        v19 = objc_alloc_init(MEMORY[0x277CD16A8]);
        if ([v15 containsKey:@"cloudState"])
        {
          [v19 setCloudState:{objc_msgSend(v16, "isSignedIntoiCloud")}];
        }

        if ([v15 containsKey:{@"octagonState", v67}])
        {
          [v19 setOctagonState:{objc_msgSend(v16, "octagonState")}];
        }

        if ([v15 containsKey:@"firstCloudImportComplete"])
        {
          [v19 setFirstCloudImportComplete:{objc_msgSend(v16, "isFirstCloudImportComplete")}];
        }

        [v18 setCloudInfo:v19];
        [v15 popKey];
      }

      if ([v15 containsKey:{@"wifiInfo", v67}])
      {
        v20 = [v16 networkInfo];
        if (v20)
        {
          [v18 setWifiInfo:v20];
        }
      }

      if ([v15 containsKey:@"mediaRouteIdString"])
      {
        v21 = [v16 mediaRouteIdString];
        [v18 setMediaRouteIdString:v21];
      }

      if ([v15 containsKey:@"serialNumber"])
      {
        v22 = [v16 systemInfoSerialNumber];
        [v18 setSerialNumber:v22];
      }

      if ([v15 containsKey:@"modelIdentifier"])
      {
        v23 = [v16 systemInfoModelIdentifier];
        [v18 setModelIdentifier:v23];
      }

      if ([v15 containsKey:@"softwareVersion"])
      {
        v24 = [v16 systemInfoSoftwareVersion];
        [v18 setSoftwareVersion:v24];
      }

      if ([v15 containsKey:@"regionInfo"])
      {
        v25 = [v16 systemInfoRegionInfo];
        [v18 setRegionInfo:v25];
      }

      v26 = [v16 currentAppleMediaAccessory];

      if (v26)
      {
        if ([v15 containsKey:@"manufacturer"])
        {
          v27 = [v16 currentAccessoryManufacturer];
          [v18 setManufacturer:v27];
        }

        if ([v15 containsKey:@"eventRouterServerInfo"])
        {
          v28 = [v16 eventRouterServerInfo];
          [v18 setEventRouterServerInfo:v28];
        }

        if ([v15 containsKey:@"softwareUpdateDescriptor"])
        {
          v29 = [v16 softwareUpdateDescriptor];
          [v18 setSoftwareUpdateDescriptor:v29];
        }

        if ([v15 containsKey:@"softwareUpdateProgress"])
        {
          v30 = [v16 softwareUpdateProgress];
          [v18 setSoftwareUpdateProgress:v30];
        }

        if ([v15 pushKey:@"currentAccessoryInfo"])
        {
          v31 = objc_alloc_init(MEMORY[0x277CD16B0]);
          if ([v15 containsKey:@"uuidString"])
          {
            v32 = [v16 currentAccessoryUUID];
            v33 = [v32 UUIDString];
            [v31 setUuidString:v33];

            v16 = v69;
          }

          if ([v15 containsKey:@"publicPairingIdentity"])
          {
            v34 = [v16 currentAccessoryPublicPairingIdentity];
            [v31 setPublicPairingIdentity:v34];
          }

          [v18 setCurrentAccessoryInfo:v31];
          [v15 popKey];
        }
      }

      if ([v15 containsKey:@"numAppleMediaAccessories"])
      {
        v35 = [v16 currentHome];

        if (v35)
        {
          [v18 setNumAppleMediaAccessories:{objc_msgSend(v16, "currentHomeNumberOfAppleMediaAccessories")}];
        }
      }

      if ([v15 containsKey:@"numResidents"])
      {
        v36 = [v16 currentHome];

        if (v36)
        {
          [v18 setNumResidents:{objc_msgSend(v16, "currentHomeNumberOfResidents")}];
        }
      }

      if ([v15 containsKey:@"primaryResidentStatus"])
      {
        v37 = [v16 currentHome];

        if (v37)
        {
          v38 = [v16 currentHome];
          v39 = [v38 residentDeviceManager];
          v40 = [v39 confirmedPrimaryResidentDevice];

          v16 = v69;
          if (v40)
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }

          [v18 setPrimaryResidentStatus:v41];
        }
      }

      if ([v15 containsKey:@"sfProblemFlags"])
      {
        [v18 setSfProblemFlags:{objc_msgSend(v16, "sfProblemFlags")}];
      }

      if ([v15 containsKey:@"networkInfos"])
      {
        v42 = [v16 networkInfoProtoNetworkInfo];
        v43 = [v42 mutableCopy];
        [v18 setNetworkInfos:v43];

        v16 = v69;
      }

      if ([v15 containsKey:@"networkServiceInfos"])
      {
        v44 = [v16 networkInfoProtoNetworkServiceInfo];
        v45 = [v44 mutableCopy];
        [v18 setNetworkServiceInfos:v45];

        v16 = v69;
      }

      if ([v15 containsKey:@"networkVisibleDeviceInfos"])
      {
        v46 = [v16 networkVisibleDevices];
        v47 = [v46 mutableCopy];
        [v18 setNetworkVisibleDeviceInfos:v47];

        v16 = v69;
      }

      if ([v15 containsKey:@"nearbyVisibleDeviceInfos"])
      {
        v48 = [v16 nearbyVisibleDevices];
        v49 = [v48 mutableCopy];
        [v18 setNearbyVisibleDeviceInfos:v49];

        v16 = v69;
      }

      if ([v15 pushKey:@"idsInfo"])
      {
        v50 = objc_alloc_init(MEMORY[0x277CD16C0]);
        if ([v15 containsKey:@"idsIdentifierString"])
        {
          v51 = [v16 currentDeviceIDSIdentifier];
          v52 = [v51 UUIDString];
          [v50 setIdsIdentifierString:v52];

          v16 = v69;
        }

        if ([v15 containsKey:@"idsState"])
        {
          [v50 setIdsState:0];
          v53 = [v16 currentDeviceIDSIdentifier];

          if (v53)
          {
            [v50 setIdsState:1];
          }
        }

        [v18 setIdsInfo:v50];
        [v15 popKey];
      }

      [v11 timeIntervalSince1970];
      [v18 setGenerationTime:?];
      [v9 setAppleMediaAccessoryDiagnosticInfo:v18];
      [v15 popKey];

      v6 = v17;
      v14 = v68;
    }

    if ([v15 containsKey:@"numHomes"])
    {
      [v9 setNumHomes:{objc_msgSend(v16, "numHomes")}];
    }

    if ([v6 containsObject:*MEMORY[0x277CD0118]])
    {
      v54 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v55 = [HMDCurrentAccessorySetupMetricDispatcher readLastAccessorySetupInfo:v54];

      if (v55)
      {
        [v9 setLastSetupInfo:v55];
        v56 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [HMDCurrentAccessorySetupMetricDispatcher removeLastAccessorySetupInfoFromUserDefaults:v56];
      }

      v16 = v69;
    }

    if ([v16 isCurrentDevicePrimaryResident] && objc_msgSend(v15, "pushKey:", @"primaryResidentDiagnosticInfo"))
    {
      v57 = v6;
      v58 = objc_alloc_init(MEMORY[0x277CD16C8]);
      if ([v15 containsKey:@"wifiInfo"])
      {
        v59 = [v16 networkInfo];
        [v58 setWifiInfo:v59];
      }

      if ([v15 containsKey:@"eventRouterServerInfo"])
      {
        v60 = [v16 eventRouterServerInfo];
        [v58 setEventRouterServerInfo:v60];
      }

      if ([v15 containsKey:@"networkInfos"])
      {
        v61 = [v16 networkInfoProtoNetworkInfo];
        v62 = [v61 mutableCopy];
        [v58 setNetworkInfos:v62];

        v16 = v69;
      }

      if ([v15 containsKey:@"networkVisibleDeviceInfos"])
      {
        v63 = [v16 networkVisibleDevices];
        v64 = [v63 mutableCopy];
        [v58 setNetworkVisibleDeviceInfos:v64];

        v16 = v69;
      }

      if ([v15 containsKey:@"numAppleMediaAccessories"])
      {
        [v58 setNumAppleMediaAccessories:{objc_msgSend(v16, "currentHomeNumberOfAppleMediaAccessories")}];
      }

      if ([v15 containsKey:@"numResidents"])
      {
        [v58 setNumResidents:{objc_msgSend(v16, "currentHomeNumberOfResidents")}];
      }

      [v9 setPrimaryResidentDiagnosticInfo:v58];
      [v15 popKey];

      v6 = v57;
    }
  }

  v65 = v9;

  return v9;
}

- (HMDAppleMediaAccessoryDiagnosticInfoController)initWithDataSource:(id)a3 isHH2Mode:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HMDAppleMediaAccessoryDiagnosticInfoController;
  v7 = [(HMDAppleMediaAccessoryDiagnosticInfoController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isHH2Mode = a4;
    objc_storeWeak(&v7->_dataSource, v6);
  }

  return v8;
}

+ (id)diagnosticInfoDescriptionWithData:(id)a3
{
  v235 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CD16B8]) initWithData:v3];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "version")}];
    [v5 setObject:v6 forKeyedSubscript:@"version"];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "homeHubVersion")}];
    v209 = v5;
    [v5 setObject:v7 forKeyedSubscript:@"homehubversion"];

    if ([v4 hasNumHomes])
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "numHomes")}];
      [v5 setObject:v8 forKeyedSubscript:@"homes.num"];
    }

    if ([v4 hasAppleMediaAccessoryDiagnosticInfo])
    {
      v203 = v4;
      v204 = v3;
      v9 = [v4 appleMediaAccessoryDiagnosticInfo];
      if ([v9 hasCloudInfo])
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [v9 cloudInfo];
        v12 = [v10 numberWithInt:{objc_msgSend(v11, "cloudState")}];
        [v5 setObject:v12 forKeyedSubscript:@"cloud.state"];

        v13 = MEMORY[0x277CCABB0];
        v14 = [v9 cloudInfo];
        v15 = [v13 numberWithInt:{objc_msgSend(v14, "octagonState")}];
        [v5 setObject:v15 forKeyedSubscript:@"cloud.octagonstate"];

        v16 = [v9 cloudInfo];
        if ([v16 firstCloudImportComplete])
        {
          v17 = @"true";
        }

        else
        {
          v17 = @"false";
        }

        [v5 setObject:v17 forKeyedSubscript:@"cloud.firstImportComplete"];
      }

      if ([v9 hasWifiInfo])
      {
        v18 = [v9 wifiInfo];
        v19 = [v18 networkSSID];
        [v5 setObject:v19 forKeyedSubscript:@"wifi.netssid"];

        v20 = [v9 wifiInfo];
        v21 = [v20 networkBSSID];
        [v5 setObject:v21 forKeyedSubscript:@"wifi.netbssid"];

        v22 = [v9 wifiInfo];
        v23 = [v22 networkGatewayIPAddress];
        [v5 setObject:v23 forKeyedSubscript:@"wifi.netgateway"];

        v24 = [v9 wifiInfo];
        v25 = [v24 macAddress];
        [v5 setObject:v25 forKeyedSubscript:@"wifi.macAddress"];

        v26 = [v9 wifiInfo];
        v27 = [v26 networkGatewayMacAddress];
        [v5 setObject:v27 forKeyedSubscript:@"wifi.gatewayMacAddress"];

        v28 = MEMORY[0x277CCABB0];
        v29 = [v9 wifiInfo];
        v30 = [v28 numberWithInt:{objc_msgSend(v29, "networkRSSI")}];
        [v5 setObject:v30 forKeyedSubscript:@"wifi.netrssi"];

        v31 = MEMORY[0x277CCABB0];
        v32 = [v9 wifiInfo];
        v33 = [v31 numberWithBool:{objc_msgSend(v32, "requiresPassword")}];
        [v5 setObject:v33 forKeyedSubscript:@"wifi.requiresPassword"];
      }

      v34 = [v9 currentAccessoryInfo];

      if (v34)
      {
        v35 = [v9 currentAccessoryInfo];
        v36 = [v35 uuidString];
        [v5 setObject:v36 forKeyedSubscript:@"accessory.uuid"];

        v37 = [v9 currentAccessoryInfo];
        v38 = [v37 publicPairingIdentity];
        v39 = [v38 identifier];
        [v5 setObject:v39 forKeyedSubscript:@"accessory.pairingIdentity"];
      }

      v40 = [v9 mediaRouteIdString];
      [v5 setObject:v40 forKeyedSubscript:@"accessory.mediaRouteID"];

      v41 = [v9 idsInfo];

      if (v41)
      {
        v42 = [v9 idsInfo];
        v43 = [v42 idsIdentifierString];
        [v5 setObject:v43 forKeyedSubscript:@"ids.identifier"];

        v44 = MEMORY[0x277CCABB0];
        v45 = [v9 idsInfo];
        v46 = [v44 numberWithInt:{objc_msgSend(v45, "idsState")}];
        [v5 setObject:v46 forKeyedSubscript:@"ids.state"];
      }

      if ([v9 hasManufacturer])
      {
        v47 = [v9 manufacturer];
        [v5 setObject:v47 forKeyedSubscript:@"dev.manufacturer"];
      }

      if ([v9 hasSerialNumber])
      {
        v48 = [v9 serialNumber];
        [v5 setObject:v48 forKeyedSubscript:@"dev.serialNumber"];
      }

      if ([v9 hasModelIdentifier])
      {
        v49 = [v9 modelIdentifier];
        [v5 setObject:v49 forKeyedSubscript:@"dev.model"];
      }

      if ([v9 hasRegionInfo])
      {
        v50 = [v9 regionInfo];
        [v5 setObject:v50 forKeyedSubscript:@"dev.region"];
      }

      if ([v9 hasSoftwareVersion])
      {
        v51 = [v9 softwareVersion];
        [v5 setObject:v51 forKeyedSubscript:@"dev.software.version"];
      }

      if ([v9 hasSoftwareUpdateDescriptor])
      {
        v52 = MEMORY[0x277CCABB0];
        v53 = [v9 softwareUpdateDescriptor];
        v54 = [v52 numberWithLongLong:{objc_msgSend(v53, "status")}];
        [v5 setObject:v54 forKeyedSubscript:@"dev.softwareUpdate.descriptor.status"];
      }

      if ([v9 hasSoftwareUpdateProgress])
      {
        v55 = MEMORY[0x277CCABB0];
        v56 = [v9 softwareUpdateProgress];
        [v56 percentageComplete];
        v57 = [v55 numberWithFloat:?];
        [v5 setObject:v57 forKeyedSubscript:@"dev.softwareUpdate.progress.percentageComplete"];
      }

      if ([v9 hasSfProblemFlags])
      {
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "sfProblemFlags")}];
        [v5 setObject:v58 forKeyedSubscript:@"dev.sfProblemFlags"];
      }

      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v59 = [v9 networkVisibleDeviceInfos];
      v60 = [v59 countByEnumeratingWithState:&v226 objects:v234 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = 0;
        v63 = *v227;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v227 != v63)
            {
              objc_enumerationMutation(v59);
            }

            v65 = *(*(&v226 + 1) + 8 * i);
            v66 = [v65 idsIdentifierString];

            if (v66)
            {
              v67 = MEMORY[0x277CCACA8];
              v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
              v69 = [v67 stringWithFormat:@"dev.networkVisibleDevice.%@.%@", v68, @"ids"];

              v70 = [v65 idsIdentifierString];
              [v209 setObject:v70 forKeyedSubscript:v69];
            }

            v71 = [v65 mediaRouteIdString];

            if (v71)
            {
              v72 = MEMORY[0x277CCACA8];
              v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
              v74 = [v72 stringWithFormat:@"dev.networkVisibleDevice.%@.%@", v73, @"mediaRouteID"];

              v75 = [v65 mediaRouteIdString];
              [v209 setObject:v75 forKeyedSubscript:v74];
            }

            ++v62;
          }

          v61 = [v59 countByEnumeratingWithState:&v226 objects:v234 count:16];
        }

        while (v61);
      }

      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v76 = [v9 networkVisibleDeviceInfos];
      v77 = [v76 countByEnumeratingWithState:&v222 objects:v233 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = 0;
        v80 = *v223;
        do
        {
          for (j = 0; j != v78; ++j)
          {
            if (*v223 != v80)
            {
              objc_enumerationMutation(v76);
            }

            v82 = *(*(&v222 + 1) + 8 * j);
            v83 = [v82 idsIdentifierString];

            if (v83)
            {
              v84 = MEMORY[0x277CCACA8];
              v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
              v86 = [v84 stringWithFormat:@"dev.nearbyVisibleDevice.%@.%@", v85, @"ids"];

              v87 = [v82 idsIdentifierString];
              [v209 setObject:v87 forKeyedSubscript:v86];
            }

            v88 = [v82 mediaRouteIdString];

            if (v88)
            {
              v89 = MEMORY[0x277CCACA8];
              v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
              v91 = [v89 stringWithFormat:@"dev.nearbyVisibleDevice.%@.%@", v90, @"mediaRouteID"];

              v92 = [v82 mediaRouteIdString];
              [v209 setObject:v92 forKeyedSubscript:v91];
            }

            ++v79;
          }

          v78 = [v76 countByEnumeratingWithState:&v222 objects:v233 count:16];
        }

        while (v78);
      }

      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      obj = [v9 networkInfos];
      v93 = [obj countByEnumeratingWithState:&v218 objects:v232 count:16];
      if (v93)
      {
        v94 = v93;
        v95 = *v219;
        do
        {
          v96 = 0;
          v205 = v94;
          do
          {
            if (*v219 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v97 = *(*(&v218 + 1) + 8 * v96);
            v98 = [v97 ifaceName];

            if (v98)
            {
              v99 = [v97 ifaceName];
              v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", v99, @"name"];
              [v209 setObject:v99 forKeyedSubscript:v100];
              v101 = [v97 macAddress];

              if (v101)
              {
                v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", v99, @"mac"];

                v103 = [v97 macAddress];
                [v209 setObject:v103 forKeyedSubscript:v102];

                v100 = v102;
              }

              v104 = [v97 ipv4Addresses];
              v105 = [v104 count];

              if (v105)
              {
                v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", v99, @"ipv4"];

                v107 = [v97 ipv4Addresses];
                [v209 setObject:v107 forKeyedSubscript:v106];

                v100 = v106;
              }

              v108 = [v97 ipv6Addresses];
              v109 = [v108 count];

              if (v109)
              {
                v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", v99, @"ipv6"];

                v111 = [v97 ipv6Addresses];
                [v209 setObject:v111 forKeyedSubscript:v110];

                v100 = v110;
              }

              if ([v97 hasWifiInfo])
              {
                v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", v99, @"wifi.SSID"];

                v113 = [v97 wifiInfo];
                v114 = [v113 ssid];
                [v209 setObject:v114 forKeyedSubscript:v112];

                v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", v99, @"wifi.BSSID"];

                v115 = [v97 wifiInfo];
                v116 = [v115 bssid];
                v94 = v205;
                [v209 setObject:v116 forKeyedSubscript:v100];
              }
            }

            ++v96;
          }

          while (v94 != v96);
          v94 = [obj countByEnumeratingWithState:&v218 objects:v232 count:16];
        }

        while (v94);
      }

      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v206 = [v9 networkServiceInfos];
      v117 = [v206 countByEnumeratingWithState:&v214 objects:v231 count:16];
      if (v117)
      {
        v118 = v117;
        obja = *v215;
        do
        {
          for (k = 0; k != v118; ++k)
          {
            if (*v215 != obja)
            {
              objc_enumerationMutation(v206);
            }

            v120 = *(*(&v214 + 1) + 8 * k);
            v121 = [v120 ifaceName];

            if (v121)
            {
              v122 = [v120 ifaceName];
              v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"name"];
              [v209 setObject:v122 forKeyedSubscript:v123];
              v124 = [v120 networkSignatureV4];

              if (v124)
              {
                v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"NetSigV4"];

                v126 = [v120 networkSignatureV4];
                [v209 setObject:v126 forKeyedSubscript:v125];

                v123 = v125;
              }

              v127 = [v120 networkSignatureV6];

              if (v127)
              {
                v128 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"netSigV6"];

                v129 = [v120 networkSignatureV6];
                [v209 setObject:v129 forKeyedSubscript:v128];

                v123 = v128;
              }

              v130 = [v120 routerIPv4];

              if (v130)
              {
                v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"routerV4"];

                v132 = [v120 routerIPv4];
                [v209 setObject:v132 forKeyedSubscript:v131];

                v123 = v131;
              }

              v133 = [v120 routerIPv6];

              if (v133)
              {
                v134 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"routerV6"];

                v135 = [v120 routerIPv6];
                [v209 setObject:v135 forKeyedSubscript:v134];

                v123 = v134;
              }

              v136 = [v120 ipv4Addresses];
              v137 = [v136 count];

              if (v137)
              {
                v138 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"ipv4"];

                v139 = [v120 ipv4Addresses];
                [v209 setObject:v139 forKeyedSubscript:v138];

                v123 = v138;
              }

              v140 = [v120 ipv6Addresses];
              v141 = [v140 count];

              if (v141)
              {
                v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", v122, @"ipv6"];

                v143 = [v120 ipv6Addresses];
                [v209 setObject:v143 forKeyedSubscript:v142];

                v123 = v142;
              }
            }
          }

          v118 = [v206 countByEnumeratingWithState:&v214 objects:v231 count:16];
        }

        while (v118);
      }

      v144 = v9;
      v145 = [v9 eventRouterServerInfo];

      if (v145)
      {
        v146 = MEMORY[0x277CCABB0];
        v147 = [v9 eventRouterServerInfo];
        v148 = [v146 numberWithInt:{objc_msgSend(v147, "mode")}];
        [v209 setObject:v148 forKeyedSubscript:@"evtrouter.server.mode"];

        v149 = MEMORY[0x277CCABB0];
        v150 = [v9 eventRouterServerInfo];
        v151 = [v149 numberWithInt:{objc_msgSend(v150, "connectionState")}];
        [v209 setObject:v151 forKeyedSubscript:@"evtrouter.server.connectionState"];

        v152 = [v9 eventRouterServerInfo];
        LODWORD(v150) = [v152 hasLastConnected];

        if (v150)
        {
          v153 = MEMORY[0x277CBEAA8];
          v154 = [v9 eventRouterServerInfo];
          [v154 lastConnected];
          v155 = [v153 dateWithTimeIntervalSinceReferenceDate:?];
          v156 = [v155 description];
          [v209 setObject:v156 forKeyedSubscript:@"evtrouter.server.lastConnected"];
        }

        v157 = [v9 eventRouterServerInfo];
        v158 = [v157 connectedClients];
        v159 = [v158 count];

        if (v159)
        {
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v160 = [v9 eventRouterServerInfo];
          v161 = [v160 connectedClients];

          v162 = [v161 countByEnumeratingWithState:&v210 objects:v230 count:16];
          if (v162)
          {
            v163 = v162;
            v164 = *v211;
            v165 = &stru_286509E58;
            do
            {
              v166 = 0;
              v167 = v165;
              do
              {
                if (*v211 != v164)
                {
                  objc_enumerationMutation(v161);
                }

                v168 = [*(*(&v210 + 1) + 8 * v166) connectedClientIdentifierString];
                v165 = [(__CFString *)v167 stringByAppendingFormat:@" %@", v168];

                ++v166;
                v167 = v165;
              }

              while (v163 != v166);
              v163 = [v161 countByEnumeratingWithState:&v210 objects:v230 count:16];
            }

            while (v163);
          }

          else
          {
            v165 = &stru_286509E58;
          }

          [v209 setObject:v165 forKeyedSubscript:@"evtrouter.server.connectedClients"];
          v144 = v9;
        }
      }

      v4 = v203;
      v3 = v204;
    }

    if ([v4 hasLastSetupInfo])
    {
      v170 = [v4 lastSetupInfo];
      v171 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v170, "version")}];
      [v209 setObject:v171 forKeyedSubscript:@"lastSetup.version"];

      v172 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "sessionSetupOpenMSHH1")}];
      [v209 setObject:v172 forKeyedSubscript:@"lastSetup.sessionSetupOpenMSHH1"];

      v173 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "controllerKeyExchangeMSHH1")}];
      [v209 setObject:v173 forKeyedSubscript:@"lastSetup.controllerKeyExchangeMSHH1"];

      v174 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "newAccessoryTransferMSHH1")}];
      [v209 setObject:v174 forKeyedSubscript:@"lastSetup.newAccessoryTransferMSHH1"];

      v175 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "sessionSetupCloseMSHH1")}];
      [v209 setObject:v175 forKeyedSubscript:@"lastSetup.sessionSetupCloseMSHH1"];

      v176 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "totalDurationMSHH1")}];
      [v209 setObject:v176 forKeyedSubscript:@"lastSetup.totalDurationMSHH1"];

      v177 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "sentinelZoneFetchMSHH1")}];
      [v209 setObject:v177 forKeyedSubscript:@"lastSetup.sentinelZoneFetchMSHH1"];

      v178 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "accountSettleWaitMSHH2")}];
      [v209 setObject:v178 forKeyedSubscript:@"lastSetup.accountSettleWaitMSHH2"];

      v179 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "currentDeviceIDSWaitMSHH2")}];
      [v209 setObject:v179 forKeyedSubscript:@"lastSetup.currentDeviceIDSWaitMSHH2"];

      v180 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "homeManagerReadyMSHH2")}];
      [v209 setObject:v180 forKeyedSubscript:@"lastSetup.homeManagerReadyMSHH2"];

      v181 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "firstCoreDataImportMSHH2")}];
      [v209 setObject:v181 forKeyedSubscript:@"lastSetup.firstCoreDataImportMSHH2"];

      v182 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "accessoryAddMSHH2")}];
      [v209 setObject:v182 forKeyedSubscript:@"lastSetup.accessoryAddMSHH2"];

      v183 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "settingsCreationMSHH2")}];
      [v209 setObject:v183 forKeyedSubscript:@"lastSetup.settingsCreationMSHH2"];

      v184 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "pairingIdentityCreationMSHH2")}];
      [v209 setObject:v184 forKeyedSubscript:@"lastSetup.pairingIdentityCreationMSHH2"];

      v185 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "siriReadyMSHH2")}];
      [v209 setObject:v185 forKeyedSubscript:@"lastSetup.siriReadyMSHH2"];

      v186 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "eventRouterServerConnectionMSHH2")}];
      [v209 setObject:v186 forKeyedSubscript:@"lastSetup.eventRouterServerConnectionMSHH2"];

      v187 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "primaryResidentElectionMSHH2")}];
      [v209 setObject:v187 forKeyedSubscript:@"lastSetup.primaryResidentElectionMSHH2"];

      v188 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "eventRouterFirstEventPushMSHH2")}];
      [v209 setObject:v188 forKeyedSubscript:@"lastSetup.eventRouterFirstEventPushMSHH2"];

      v189 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "totalDurationMSHH2")}];
      [v209 setObject:v189 forKeyedSubscript:@"lastSetup.totalDurationMSHH2"];

      v190 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v170, "iCloudAvailableINT")}];
      [v209 setObject:v190 forKeyedSubscript:@"lastSetup.iCloudAvailableINT"];

      v191 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v170, "iDSAvailableINT")}];
      [v209 setObject:v191 forKeyedSubscript:@"lastSetup.iDSAvailableINT"];

      v192 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v170, "manateeAvailableINT")}];
      [v209 setObject:v192 forKeyedSubscript:@"lastSetup.manateeAvailableINT"];

      v193 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v170, "networkAvailableINT")}];
      [v209 setObject:v193 forKeyedSubscript:@"lastSetup.networkAvailableINT"];

      v194 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "lastKnownStageErrorCode")}];
      [v209 setObject:v194 forKeyedSubscript:@"lastSetup.lastKnownStageErrorCode"];

      v195 = [v170 lastKnownStageErrorDomain];
      [v209 setObject:v195 forKeyedSubscript:@"lastSetup.lastKnownStageErrorDomain"];

      v196 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v170, "lastKnownStageUnderlyingErrorCode")}];
      [v209 setObject:v196 forKeyedSubscript:@"lastSetup.lastKnownStageUnderlyingErrorCode"];

      v197 = [v170 lastKnownStageUnderlyingErrorDomain];
      [v209 setObject:v197 forKeyedSubscript:@"lastSetup.lastKnownStageUnderlyingErrorDomain"];

      v198 = [v170 lastKnownStageErrorString];
      [v209 setObject:v198 forKeyedSubscript:@"lastSetup.lastKnownStageErrorString"];

      v199 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v170, "savedEventState")}];
      [v209 setObject:v199 forKeyedSubscript:@"lastSetup.savedEventState"];
    }

    v169 = v209;
    [v209 setObject:@"false" forKeyedSubscript:@"isPrimaryResident"];
    if ([v4 hasPrimaryResidentDiagnosticInfo])
    {
      [v209 setObject:@"true" forKeyedSubscript:@"isPrimaryResident"];
    }
  }

  else
  {
    v169 = 0;
  }

  v200 = [v169 copy];

  v201 = *MEMORY[0x277D85DE8];

  return v200;
}

@end