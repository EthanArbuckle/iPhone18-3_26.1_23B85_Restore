@interface HMDAppleMediaAccessoryDiagnosticInfoController
+ (id)diagnosticInfoDescriptionWithData:(id)data;
+ (id)snapshotForDataSource:(id)source;
- (HMDAppleMediaAccessoryDiagnosticInfoController)initWithDataSource:(id)source isHH2Mode:(BOOL)mode;
- (HMDAppleMediaAccessoryDiagnosticInfoControllerDataSource)dataSource;
- (id)_diagnosticInfoWithAdditionalKeys:(id)keys filterKeyPaths:(id)paths;
- (id)diagnosticInfoDataWithAdditionalKeys:(id)keys filterKeyPaths:(id)paths;
@end

@implementation HMDAppleMediaAccessoryDiagnosticInfoController

+ (id)snapshotForDataSource:(id)source
{
  v3 = objc_allocWithZone(type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot());
  v4 = swift_unknownObjectRetain();
  v5 = sub_2295A470C(v4);

  return v5;
}

- (HMDAppleMediaAccessoryDiagnosticInfoControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)diagnosticInfoDataWithAdditionalKeys:(id)keys filterKeyPaths:(id)paths
{
  v4 = [(HMDAppleMediaAccessoryDiagnosticInfoController *)self _diagnosticInfoWithAdditionalKeys:keys filterKeyPaths:paths];
  data = [v4 data];

  return data;
}

- (id)_diagnosticInfoWithAdditionalKeys:(id)keys filterKeyPaths:(id)paths
{
  keysCopy = keys;
  pathsCopy = paths;
  dataSource = [(HMDAppleMediaAccessoryDiagnosticInfoController *)self dataSource];
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
  v12 = [pathsCopy count];
  v13 = &unk_283E75650;
  if (v12)
  {
    v13 = pathsCopy;
  }

  v14 = v13;
  v15 = [[HMDKeyPaths alloc] initFor:v14];
  if (dataSource)
  {
    v16 = [HMDAppleMediaAccessoryDiagnosticInfoController snapshotForDataSource:dataSource];
    v69 = v16;
    if ([v15 pushKey:@"appleMediaAccessoryDiagnosticInfo"])
    {
      v67 = v14;
      v17 = keysCopy;
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
        networkInfo = [v16 networkInfo];
        if (networkInfo)
        {
          [v18 setWifiInfo:networkInfo];
        }
      }

      if ([v15 containsKey:@"mediaRouteIdString"])
      {
        mediaRouteIdString = [v16 mediaRouteIdString];
        [v18 setMediaRouteIdString:mediaRouteIdString];
      }

      if ([v15 containsKey:@"serialNumber"])
      {
        systemInfoSerialNumber = [v16 systemInfoSerialNumber];
        [v18 setSerialNumber:systemInfoSerialNumber];
      }

      if ([v15 containsKey:@"modelIdentifier"])
      {
        systemInfoModelIdentifier = [v16 systemInfoModelIdentifier];
        [v18 setModelIdentifier:systemInfoModelIdentifier];
      }

      if ([v15 containsKey:@"softwareVersion"])
      {
        systemInfoSoftwareVersion = [v16 systemInfoSoftwareVersion];
        [v18 setSoftwareVersion:systemInfoSoftwareVersion];
      }

      if ([v15 containsKey:@"regionInfo"])
      {
        systemInfoRegionInfo = [v16 systemInfoRegionInfo];
        [v18 setRegionInfo:systemInfoRegionInfo];
      }

      currentAppleMediaAccessory = [v16 currentAppleMediaAccessory];

      if (currentAppleMediaAccessory)
      {
        if ([v15 containsKey:@"manufacturer"])
        {
          currentAccessoryManufacturer = [v16 currentAccessoryManufacturer];
          [v18 setManufacturer:currentAccessoryManufacturer];
        }

        if ([v15 containsKey:@"eventRouterServerInfo"])
        {
          eventRouterServerInfo = [v16 eventRouterServerInfo];
          [v18 setEventRouterServerInfo:eventRouterServerInfo];
        }

        if ([v15 containsKey:@"softwareUpdateDescriptor"])
        {
          softwareUpdateDescriptor = [v16 softwareUpdateDescriptor];
          [v18 setSoftwareUpdateDescriptor:softwareUpdateDescriptor];
        }

        if ([v15 containsKey:@"softwareUpdateProgress"])
        {
          softwareUpdateProgress = [v16 softwareUpdateProgress];
          [v18 setSoftwareUpdateProgress:softwareUpdateProgress];
        }

        if ([v15 pushKey:@"currentAccessoryInfo"])
        {
          v31 = objc_alloc_init(MEMORY[0x277CD16B0]);
          if ([v15 containsKey:@"uuidString"])
          {
            currentAccessoryUUID = [v16 currentAccessoryUUID];
            uUIDString = [currentAccessoryUUID UUIDString];
            [v31 setUuidString:uUIDString];

            v16 = v69;
          }

          if ([v15 containsKey:@"publicPairingIdentity"])
          {
            currentAccessoryPublicPairingIdentity = [v16 currentAccessoryPublicPairingIdentity];
            [v31 setPublicPairingIdentity:currentAccessoryPublicPairingIdentity];
          }

          [v18 setCurrentAccessoryInfo:v31];
          [v15 popKey];
        }
      }

      if ([v15 containsKey:@"numAppleMediaAccessories"])
      {
        currentHome = [v16 currentHome];

        if (currentHome)
        {
          [v18 setNumAppleMediaAccessories:{objc_msgSend(v16, "currentHomeNumberOfAppleMediaAccessories")}];
        }
      }

      if ([v15 containsKey:@"numResidents"])
      {
        currentHome2 = [v16 currentHome];

        if (currentHome2)
        {
          [v18 setNumResidents:{objc_msgSend(v16, "currentHomeNumberOfResidents")}];
        }
      }

      if ([v15 containsKey:@"primaryResidentStatus"])
      {
        currentHome3 = [v16 currentHome];

        if (currentHome3)
        {
          currentHome4 = [v16 currentHome];
          residentDeviceManager = [currentHome4 residentDeviceManager];
          confirmedPrimaryResidentDevice = [residentDeviceManager confirmedPrimaryResidentDevice];

          v16 = v69;
          if (confirmedPrimaryResidentDevice)
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
        networkInfoProtoNetworkInfo = [v16 networkInfoProtoNetworkInfo];
        v43 = [networkInfoProtoNetworkInfo mutableCopy];
        [v18 setNetworkInfos:v43];

        v16 = v69;
      }

      if ([v15 containsKey:@"networkServiceInfos"])
      {
        networkInfoProtoNetworkServiceInfo = [v16 networkInfoProtoNetworkServiceInfo];
        v45 = [networkInfoProtoNetworkServiceInfo mutableCopy];
        [v18 setNetworkServiceInfos:v45];

        v16 = v69;
      }

      if ([v15 containsKey:@"networkVisibleDeviceInfos"])
      {
        networkVisibleDevices = [v16 networkVisibleDevices];
        v47 = [networkVisibleDevices mutableCopy];
        [v18 setNetworkVisibleDeviceInfos:v47];

        v16 = v69;
      }

      if ([v15 containsKey:@"nearbyVisibleDeviceInfos"])
      {
        nearbyVisibleDevices = [v16 nearbyVisibleDevices];
        v49 = [nearbyVisibleDevices mutableCopy];
        [v18 setNearbyVisibleDeviceInfos:v49];

        v16 = v69;
      }

      if ([v15 pushKey:@"idsInfo"])
      {
        v50 = objc_alloc_init(MEMORY[0x277CD16C0]);
        if ([v15 containsKey:@"idsIdentifierString"])
        {
          currentDeviceIDSIdentifier = [v16 currentDeviceIDSIdentifier];
          uUIDString2 = [currentDeviceIDSIdentifier UUIDString];
          [v50 setIdsIdentifierString:uUIDString2];

          v16 = v69;
        }

        if ([v15 containsKey:@"idsState"])
        {
          [v50 setIdsState:0];
          currentDeviceIDSIdentifier2 = [v16 currentDeviceIDSIdentifier];

          if (currentDeviceIDSIdentifier2)
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

      keysCopy = v17;
      v14 = v68;
    }

    if ([v15 containsKey:@"numHomes"])
    {
      [v9 setNumHomes:{objc_msgSend(v16, "numHomes")}];
    }

    if ([keysCopy containsObject:*MEMORY[0x277CD0118]])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v55 = [HMDCurrentAccessorySetupMetricDispatcher readLastAccessorySetupInfo:standardUserDefaults];

      if (v55)
      {
        [v9 setLastSetupInfo:v55];
        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [HMDCurrentAccessorySetupMetricDispatcher removeLastAccessorySetupInfoFromUserDefaults:standardUserDefaults2];
      }

      v16 = v69;
    }

    if ([v16 isCurrentDevicePrimaryResident] && objc_msgSend(v15, "pushKey:", @"primaryResidentDiagnosticInfo"))
    {
      v57 = keysCopy;
      v58 = objc_alloc_init(MEMORY[0x277CD16C8]);
      if ([v15 containsKey:@"wifiInfo"])
      {
        networkInfo2 = [v16 networkInfo];
        [v58 setWifiInfo:networkInfo2];
      }

      if ([v15 containsKey:@"eventRouterServerInfo"])
      {
        eventRouterServerInfo2 = [v16 eventRouterServerInfo];
        [v58 setEventRouterServerInfo:eventRouterServerInfo2];
      }

      if ([v15 containsKey:@"networkInfos"])
      {
        networkInfoProtoNetworkInfo2 = [v16 networkInfoProtoNetworkInfo];
        v62 = [networkInfoProtoNetworkInfo2 mutableCopy];
        [v58 setNetworkInfos:v62];

        v16 = v69;
      }

      if ([v15 containsKey:@"networkVisibleDeviceInfos"])
      {
        networkVisibleDevices2 = [v16 networkVisibleDevices];
        v64 = [networkVisibleDevices2 mutableCopy];
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

      keysCopy = v57;
    }
  }

  v65 = v9;

  return v9;
}

- (HMDAppleMediaAccessoryDiagnosticInfoController)initWithDataSource:(id)source isHH2Mode:(BOOL)mode
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = HMDAppleMediaAccessoryDiagnosticInfoController;
  v7 = [(HMDAppleMediaAccessoryDiagnosticInfoController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isHH2Mode = mode;
    objc_storeWeak(&v7->_dataSource, sourceCopy);
  }

  return v8;
}

+ (id)diagnosticInfoDescriptionWithData:(id)data
{
  v235 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x277CD16B8]) initWithData:dataCopy];
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
      v204 = dataCopy;
      appleMediaAccessoryDiagnosticInfo = [v4 appleMediaAccessoryDiagnosticInfo];
      if ([appleMediaAccessoryDiagnosticInfo hasCloudInfo])
      {
        v10 = MEMORY[0x277CCABB0];
        cloudInfo = [appleMediaAccessoryDiagnosticInfo cloudInfo];
        v12 = [v10 numberWithInt:{objc_msgSend(cloudInfo, "cloudState")}];
        [v5 setObject:v12 forKeyedSubscript:@"cloud.state"];

        v13 = MEMORY[0x277CCABB0];
        cloudInfo2 = [appleMediaAccessoryDiagnosticInfo cloudInfo];
        v15 = [v13 numberWithInt:{objc_msgSend(cloudInfo2, "octagonState")}];
        [v5 setObject:v15 forKeyedSubscript:@"cloud.octagonstate"];

        cloudInfo3 = [appleMediaAccessoryDiagnosticInfo cloudInfo];
        if ([cloudInfo3 firstCloudImportComplete])
        {
          v17 = @"true";
        }

        else
        {
          v17 = @"false";
        }

        [v5 setObject:v17 forKeyedSubscript:@"cloud.firstImportComplete"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasWifiInfo])
      {
        wifiInfo = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        networkSSID = [wifiInfo networkSSID];
        [v5 setObject:networkSSID forKeyedSubscript:@"wifi.netssid"];

        wifiInfo2 = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        networkBSSID = [wifiInfo2 networkBSSID];
        [v5 setObject:networkBSSID forKeyedSubscript:@"wifi.netbssid"];

        wifiInfo3 = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        networkGatewayIPAddress = [wifiInfo3 networkGatewayIPAddress];
        [v5 setObject:networkGatewayIPAddress forKeyedSubscript:@"wifi.netgateway"];

        wifiInfo4 = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        macAddress = [wifiInfo4 macAddress];
        [v5 setObject:macAddress forKeyedSubscript:@"wifi.macAddress"];

        wifiInfo5 = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        networkGatewayMacAddress = [wifiInfo5 networkGatewayMacAddress];
        [v5 setObject:networkGatewayMacAddress forKeyedSubscript:@"wifi.gatewayMacAddress"];

        v28 = MEMORY[0x277CCABB0];
        wifiInfo6 = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        v30 = [v28 numberWithInt:{objc_msgSend(wifiInfo6, "networkRSSI")}];
        [v5 setObject:v30 forKeyedSubscript:@"wifi.netrssi"];

        v31 = MEMORY[0x277CCABB0];
        wifiInfo7 = [appleMediaAccessoryDiagnosticInfo wifiInfo];
        v33 = [v31 numberWithBool:{objc_msgSend(wifiInfo7, "requiresPassword")}];
        [v5 setObject:v33 forKeyedSubscript:@"wifi.requiresPassword"];
      }

      currentAccessoryInfo = [appleMediaAccessoryDiagnosticInfo currentAccessoryInfo];

      if (currentAccessoryInfo)
      {
        currentAccessoryInfo2 = [appleMediaAccessoryDiagnosticInfo currentAccessoryInfo];
        uuidString = [currentAccessoryInfo2 uuidString];
        [v5 setObject:uuidString forKeyedSubscript:@"accessory.uuid"];

        currentAccessoryInfo3 = [appleMediaAccessoryDiagnosticInfo currentAccessoryInfo];
        publicPairingIdentity = [currentAccessoryInfo3 publicPairingIdentity];
        identifier = [publicPairingIdentity identifier];
        [v5 setObject:identifier forKeyedSubscript:@"accessory.pairingIdentity"];
      }

      mediaRouteIdString = [appleMediaAccessoryDiagnosticInfo mediaRouteIdString];
      [v5 setObject:mediaRouteIdString forKeyedSubscript:@"accessory.mediaRouteID"];

      idsInfo = [appleMediaAccessoryDiagnosticInfo idsInfo];

      if (idsInfo)
      {
        idsInfo2 = [appleMediaAccessoryDiagnosticInfo idsInfo];
        idsIdentifierString = [idsInfo2 idsIdentifierString];
        [v5 setObject:idsIdentifierString forKeyedSubscript:@"ids.identifier"];

        v44 = MEMORY[0x277CCABB0];
        idsInfo3 = [appleMediaAccessoryDiagnosticInfo idsInfo];
        v46 = [v44 numberWithInt:{objc_msgSend(idsInfo3, "idsState")}];
        [v5 setObject:v46 forKeyedSubscript:@"ids.state"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasManufacturer])
      {
        manufacturer = [appleMediaAccessoryDiagnosticInfo manufacturer];
        [v5 setObject:manufacturer forKeyedSubscript:@"dev.manufacturer"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasSerialNumber])
      {
        serialNumber = [appleMediaAccessoryDiagnosticInfo serialNumber];
        [v5 setObject:serialNumber forKeyedSubscript:@"dev.serialNumber"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasModelIdentifier])
      {
        modelIdentifier = [appleMediaAccessoryDiagnosticInfo modelIdentifier];
        [v5 setObject:modelIdentifier forKeyedSubscript:@"dev.model"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasRegionInfo])
      {
        regionInfo = [appleMediaAccessoryDiagnosticInfo regionInfo];
        [v5 setObject:regionInfo forKeyedSubscript:@"dev.region"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasSoftwareVersion])
      {
        softwareVersion = [appleMediaAccessoryDiagnosticInfo softwareVersion];
        [v5 setObject:softwareVersion forKeyedSubscript:@"dev.software.version"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasSoftwareUpdateDescriptor])
      {
        v52 = MEMORY[0x277CCABB0];
        softwareUpdateDescriptor = [appleMediaAccessoryDiagnosticInfo softwareUpdateDescriptor];
        v54 = [v52 numberWithLongLong:{objc_msgSend(softwareUpdateDescriptor, "status")}];
        [v5 setObject:v54 forKeyedSubscript:@"dev.softwareUpdate.descriptor.status"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasSoftwareUpdateProgress])
      {
        v55 = MEMORY[0x277CCABB0];
        softwareUpdateProgress = [appleMediaAccessoryDiagnosticInfo softwareUpdateProgress];
        [softwareUpdateProgress percentageComplete];
        v57 = [v55 numberWithFloat:?];
        [v5 setObject:v57 forKeyedSubscript:@"dev.softwareUpdate.progress.percentageComplete"];
      }

      if ([appleMediaAccessoryDiagnosticInfo hasSfProblemFlags])
      {
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(appleMediaAccessoryDiagnosticInfo, "sfProblemFlags")}];
        [v5 setObject:v58 forKeyedSubscript:@"dev.sfProblemFlags"];
      }

      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      networkVisibleDeviceInfos = [appleMediaAccessoryDiagnosticInfo networkVisibleDeviceInfos];
      v60 = [networkVisibleDeviceInfos countByEnumeratingWithState:&v226 objects:v234 count:16];
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
              objc_enumerationMutation(networkVisibleDeviceInfos);
            }

            v65 = *(*(&v226 + 1) + 8 * i);
            idsIdentifierString2 = [v65 idsIdentifierString];

            if (idsIdentifierString2)
            {
              v67 = MEMORY[0x277CCACA8];
              v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
              v69 = [v67 stringWithFormat:@"dev.networkVisibleDevice.%@.%@", v68, @"ids"];

              idsIdentifierString3 = [v65 idsIdentifierString];
              [v209 setObject:idsIdentifierString3 forKeyedSubscript:v69];
            }

            mediaRouteIdString2 = [v65 mediaRouteIdString];

            if (mediaRouteIdString2)
            {
              v72 = MEMORY[0x277CCACA8];
              v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
              v74 = [v72 stringWithFormat:@"dev.networkVisibleDevice.%@.%@", v73, @"mediaRouteID"];

              mediaRouteIdString3 = [v65 mediaRouteIdString];
              [v209 setObject:mediaRouteIdString3 forKeyedSubscript:v74];
            }

            ++v62;
          }

          v61 = [networkVisibleDeviceInfos countByEnumeratingWithState:&v226 objects:v234 count:16];
        }

        while (v61);
      }

      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      networkVisibleDeviceInfos2 = [appleMediaAccessoryDiagnosticInfo networkVisibleDeviceInfos];
      v77 = [networkVisibleDeviceInfos2 countByEnumeratingWithState:&v222 objects:v233 count:16];
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
              objc_enumerationMutation(networkVisibleDeviceInfos2);
            }

            v82 = *(*(&v222 + 1) + 8 * j);
            idsIdentifierString4 = [v82 idsIdentifierString];

            if (idsIdentifierString4)
            {
              v84 = MEMORY[0x277CCACA8];
              v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
              v86 = [v84 stringWithFormat:@"dev.nearbyVisibleDevice.%@.%@", v85, @"ids"];

              idsIdentifierString5 = [v82 idsIdentifierString];
              [v209 setObject:idsIdentifierString5 forKeyedSubscript:v86];
            }

            mediaRouteIdString4 = [v82 mediaRouteIdString];

            if (mediaRouteIdString4)
            {
              v89 = MEMORY[0x277CCACA8];
              v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
              v91 = [v89 stringWithFormat:@"dev.nearbyVisibleDevice.%@.%@", v90, @"mediaRouteID"];

              mediaRouteIdString5 = [v82 mediaRouteIdString];
              [v209 setObject:mediaRouteIdString5 forKeyedSubscript:v91];
            }

            ++v79;
          }

          v78 = [networkVisibleDeviceInfos2 countByEnumeratingWithState:&v222 objects:v233 count:16];
        }

        while (v78);
      }

      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      obj = [appleMediaAccessoryDiagnosticInfo networkInfos];
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
            ifaceName = [v97 ifaceName];

            if (ifaceName)
            {
              ifaceName2 = [v97 ifaceName];
              v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", ifaceName2, @"name"];
              [v209 setObject:ifaceName2 forKeyedSubscript:v100];
              macAddress2 = [v97 macAddress];

              if (macAddress2)
              {
                v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", ifaceName2, @"mac"];

                macAddress3 = [v97 macAddress];
                [v209 setObject:macAddress3 forKeyedSubscript:v102];

                v100 = v102;
              }

              ipv4Addresses = [v97 ipv4Addresses];
              v105 = [ipv4Addresses count];

              if (v105)
              {
                v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", ifaceName2, @"ipv4"];

                ipv4Addresses2 = [v97 ipv4Addresses];
                [v209 setObject:ipv4Addresses2 forKeyedSubscript:v106];

                v100 = v106;
              }

              ipv6Addresses = [v97 ipv6Addresses];
              v109 = [ipv6Addresses count];

              if (v109)
              {
                v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", ifaceName2, @"ipv6"];

                ipv6Addresses2 = [v97 ipv6Addresses];
                [v209 setObject:ipv6Addresses2 forKeyedSubscript:v110];

                v100 = v110;
              }

              if ([v97 hasWifiInfo])
              {
                v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", ifaceName2, @"wifi.SSID"];

                wifiInfo8 = [v97 wifiInfo];
                ssid = [wifiInfo8 ssid];
                [v209 setObject:ssid forKeyedSubscript:v112];

                v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkInfo.%@.%@", ifaceName2, @"wifi.BSSID"];

                wifiInfo9 = [v97 wifiInfo];
                bssid = [wifiInfo9 bssid];
                v94 = v205;
                [v209 setObject:bssid forKeyedSubscript:v100];
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
      networkServiceInfos = [appleMediaAccessoryDiagnosticInfo networkServiceInfos];
      v117 = [networkServiceInfos countByEnumeratingWithState:&v214 objects:v231 count:16];
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
              objc_enumerationMutation(networkServiceInfos);
            }

            v120 = *(*(&v214 + 1) + 8 * k);
            ifaceName3 = [v120 ifaceName];

            if (ifaceName3)
            {
              ifaceName4 = [v120 ifaceName];
              v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"name"];
              [v209 setObject:ifaceName4 forKeyedSubscript:v123];
              networkSignatureV4 = [v120 networkSignatureV4];

              if (networkSignatureV4)
              {
                v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"NetSigV4"];

                networkSignatureV42 = [v120 networkSignatureV4];
                [v209 setObject:networkSignatureV42 forKeyedSubscript:v125];

                v123 = v125;
              }

              networkSignatureV6 = [v120 networkSignatureV6];

              if (networkSignatureV6)
              {
                v128 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"netSigV6"];

                networkSignatureV62 = [v120 networkSignatureV6];
                [v209 setObject:networkSignatureV62 forKeyedSubscript:v128];

                v123 = v128;
              }

              routerIPv4 = [v120 routerIPv4];

              if (routerIPv4)
              {
                v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"routerV4"];

                routerIPv42 = [v120 routerIPv4];
                [v209 setObject:routerIPv42 forKeyedSubscript:v131];

                v123 = v131;
              }

              routerIPv6 = [v120 routerIPv6];

              if (routerIPv6)
              {
                v134 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"routerV6"];

                routerIPv62 = [v120 routerIPv6];
                [v209 setObject:routerIPv62 forKeyedSubscript:v134];

                v123 = v134;
              }

              ipv4Addresses3 = [v120 ipv4Addresses];
              v137 = [ipv4Addresses3 count];

              if (v137)
              {
                v138 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"ipv4"];

                ipv4Addresses4 = [v120 ipv4Addresses];
                [v209 setObject:ipv4Addresses4 forKeyedSubscript:v138];

                v123 = v138;
              }

              ipv6Addresses3 = [v120 ipv6Addresses];
              v141 = [ipv6Addresses3 count];

              if (v141)
              {
                v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"dev.networkService.%@.%@", ifaceName4, @"ipv6"];

                ipv6Addresses4 = [v120 ipv6Addresses];
                [v209 setObject:ipv6Addresses4 forKeyedSubscript:v142];

                v123 = v142;
              }
            }
          }

          v118 = [networkServiceInfos countByEnumeratingWithState:&v214 objects:v231 count:16];
        }

        while (v118);
      }

      v144 = appleMediaAccessoryDiagnosticInfo;
      eventRouterServerInfo = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];

      if (eventRouterServerInfo)
      {
        v146 = MEMORY[0x277CCABB0];
        eventRouterServerInfo2 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
        v148 = [v146 numberWithInt:{objc_msgSend(eventRouterServerInfo2, "mode")}];
        [v209 setObject:v148 forKeyedSubscript:@"evtrouter.server.mode"];

        v149 = MEMORY[0x277CCABB0];
        eventRouterServerInfo3 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
        v151 = [v149 numberWithInt:{objc_msgSend(eventRouterServerInfo3, "connectionState")}];
        [v209 setObject:v151 forKeyedSubscript:@"evtrouter.server.connectionState"];

        eventRouterServerInfo4 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
        LODWORD(eventRouterServerInfo3) = [eventRouterServerInfo4 hasLastConnected];

        if (eventRouterServerInfo3)
        {
          v153 = MEMORY[0x277CBEAA8];
          eventRouterServerInfo5 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
          [eventRouterServerInfo5 lastConnected];
          v155 = [v153 dateWithTimeIntervalSinceReferenceDate:?];
          v156 = [v155 description];
          [v209 setObject:v156 forKeyedSubscript:@"evtrouter.server.lastConnected"];
        }

        eventRouterServerInfo6 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
        connectedClients = [eventRouterServerInfo6 connectedClients];
        v159 = [connectedClients count];

        if (v159)
        {
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          eventRouterServerInfo7 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
          connectedClients2 = [eventRouterServerInfo7 connectedClients];

          v162 = [connectedClients2 countByEnumeratingWithState:&v210 objects:v230 count:16];
          if (v162)
          {
            v163 = v162;
            v164 = *v211;
            v168 = &stru_283CF9D50;
            do
            {
              v166 = 0;
              v167 = v168;
              do
              {
                if (*v211 != v164)
                {
                  objc_enumerationMutation(connectedClients2);
                }

                connectedClientIdentifierString = [*(*(&v210 + 1) + 8 * v166) connectedClientIdentifierString];
                v168 = [(__CFString *)v167 stringByAppendingFormat:@" %@", connectedClientIdentifierString];

                ++v166;
                v167 = v168;
              }

              while (v163 != v166);
              v163 = [connectedClients2 countByEnumeratingWithState:&v210 objects:v230 count:16];
            }

            while (v163);
          }

          else
          {
            v168 = &stru_283CF9D50;
          }

          [v209 setObject:v168 forKeyedSubscript:@"evtrouter.server.connectedClients"];
          v144 = appleMediaAccessoryDiagnosticInfo;
        }
      }

      v4 = v203;
      dataCopy = v204;
    }

    if ([v4 hasLastSetupInfo])
    {
      lastSetupInfo = [v4 lastSetupInfo];
      v171 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(lastSetupInfo, "version")}];
      [v209 setObject:v171 forKeyedSubscript:@"lastSetup.version"];

      v172 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "sessionSetupOpenMSHH1")}];
      [v209 setObject:v172 forKeyedSubscript:@"lastSetup.sessionSetupOpenMSHH1"];

      v173 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "controllerKeyExchangeMSHH1")}];
      [v209 setObject:v173 forKeyedSubscript:@"lastSetup.controllerKeyExchangeMSHH1"];

      v174 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "newAccessoryTransferMSHH1")}];
      [v209 setObject:v174 forKeyedSubscript:@"lastSetup.newAccessoryTransferMSHH1"];

      v175 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "sessionSetupCloseMSHH1")}];
      [v209 setObject:v175 forKeyedSubscript:@"lastSetup.sessionSetupCloseMSHH1"];

      v176 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "totalDurationMSHH1")}];
      [v209 setObject:v176 forKeyedSubscript:@"lastSetup.totalDurationMSHH1"];

      v177 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "sentinelZoneFetchMSHH1")}];
      [v209 setObject:v177 forKeyedSubscript:@"lastSetup.sentinelZoneFetchMSHH1"];

      v178 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "accountSettleWaitMSHH2")}];
      [v209 setObject:v178 forKeyedSubscript:@"lastSetup.accountSettleWaitMSHH2"];

      v179 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "currentDeviceIDSWaitMSHH2")}];
      [v209 setObject:v179 forKeyedSubscript:@"lastSetup.currentDeviceIDSWaitMSHH2"];

      v180 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "homeManagerReadyMSHH2")}];
      [v209 setObject:v180 forKeyedSubscript:@"lastSetup.homeManagerReadyMSHH2"];

      v181 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "firstCoreDataImportMSHH2")}];
      [v209 setObject:v181 forKeyedSubscript:@"lastSetup.firstCoreDataImportMSHH2"];

      v182 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "accessoryAddMSHH2")}];
      [v209 setObject:v182 forKeyedSubscript:@"lastSetup.accessoryAddMSHH2"];

      v183 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "settingsCreationMSHH2")}];
      [v209 setObject:v183 forKeyedSubscript:@"lastSetup.settingsCreationMSHH2"];

      v184 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "pairingIdentityCreationMSHH2")}];
      [v209 setObject:v184 forKeyedSubscript:@"lastSetup.pairingIdentityCreationMSHH2"];

      v185 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "siriReadyMSHH2")}];
      [v209 setObject:v185 forKeyedSubscript:@"lastSetup.siriReadyMSHH2"];

      v186 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "eventRouterServerConnectionMSHH2")}];
      [v209 setObject:v186 forKeyedSubscript:@"lastSetup.eventRouterServerConnectionMSHH2"];

      v187 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "primaryResidentElectionMSHH2")}];
      [v209 setObject:v187 forKeyedSubscript:@"lastSetup.primaryResidentElectionMSHH2"];

      v188 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "eventRouterFirstEventPushMSHH2")}];
      [v209 setObject:v188 forKeyedSubscript:@"lastSetup.eventRouterFirstEventPushMSHH2"];

      v189 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "totalDurationMSHH2")}];
      [v209 setObject:v189 forKeyedSubscript:@"lastSetup.totalDurationMSHH2"];

      v190 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(lastSetupInfo, "iCloudAvailableINT")}];
      [v209 setObject:v190 forKeyedSubscript:@"lastSetup.iCloudAvailableINT"];

      v191 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(lastSetupInfo, "iDSAvailableINT")}];
      [v209 setObject:v191 forKeyedSubscript:@"lastSetup.iDSAvailableINT"];

      v192 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(lastSetupInfo, "manateeAvailableINT")}];
      [v209 setObject:v192 forKeyedSubscript:@"lastSetup.manateeAvailableINT"];

      v193 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(lastSetupInfo, "networkAvailableINT")}];
      [v209 setObject:v193 forKeyedSubscript:@"lastSetup.networkAvailableINT"];

      v194 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "lastKnownStageErrorCode")}];
      [v209 setObject:v194 forKeyedSubscript:@"lastSetup.lastKnownStageErrorCode"];

      lastKnownStageErrorDomain = [lastSetupInfo lastKnownStageErrorDomain];
      [v209 setObject:lastKnownStageErrorDomain forKeyedSubscript:@"lastSetup.lastKnownStageErrorDomain"];

      v196 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(lastSetupInfo, "lastKnownStageUnderlyingErrorCode")}];
      [v209 setObject:v196 forKeyedSubscript:@"lastSetup.lastKnownStageUnderlyingErrorCode"];

      lastKnownStageUnderlyingErrorDomain = [lastSetupInfo lastKnownStageUnderlyingErrorDomain];
      [v209 setObject:lastKnownStageUnderlyingErrorDomain forKeyedSubscript:@"lastSetup.lastKnownStageUnderlyingErrorDomain"];

      lastKnownStageErrorString = [lastSetupInfo lastKnownStageErrorString];
      [v209 setObject:lastKnownStageErrorString forKeyedSubscript:@"lastSetup.lastKnownStageErrorString"];

      v199 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(lastSetupInfo, "savedEventState")}];
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