@interface HMDCharacteristicReadWriteLogEventManager
+ (HMDCharacteristicReadWriteLogEventManager)sharedInstance;
- (BOOL)_compareIPSignatures:(id)signatures secondSignature:(id)signature;
- (HMDCharacteristicReadWriteLogEventManager)initWithUptimeProvider:(id)provider;
- (double)elapsedTimeInterval:(double)interval;
- (id)_getOrCreateAccessoryStatisticsForAccessoryUUID:(id)d;
- (void)_setupNetworkCacheWithWifiManager:(id)manager;
- (void)_updateBluetoothStatisticsForLogEvent:(id)event;
- (void)_updateNetworkStatisticsForLogEvent:(id)event;
- (void)_updateWiFiStatisticsForLogEvent:(id)event;
- (void)updateSessionConnectivity:(BOOL)connectivity withSessionInfo:(id)info forAccessoryUUID:(id)d;
- (void)updateStatisticsForLogEvent:(id)event;
@end

@implementation HMDCharacteristicReadWriteLogEventManager

- (void)updateStatisticsForLogEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  accessoryUUID = [eventCopy accessoryUUID];
  error = [eventCopy error];
  code = [error code];

  linkLayerType = [eventCopy linkLayerType];
  v8 = [(HMDCharacteristicReadWriteLogEventManager *)self _getOrCreateAccessoryStatisticsForAccessoryUUID:accessoryUUID];
  [v8 timeOfLastSuccessfulRequest];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [eventCopy setTimeIntervalSinceLastSuccessfulRequest:?];
  [v8 timeOfLastFailedRequest];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [eventCopy setTimeIntervalSinceLastFailedRequest:?];
  [eventCopy setLastSuccessLinkLayerType:{objc_msgSend(v8, "lastSuccessLinkLayerType")}];
  [eventCopy setLastFailedLinkLayerType:{objc_msgSend(v8, "lastFailedLinkLayerType")}];
  if (code)
  {
    [v8 timeOfFirstFailureRequest];
    if (v9 <= 0.0)
    {
      [v8 setConsecutiveFailureCount:1];
      uptimeProvider = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
      [uptimeProvider uptime];
      [v8 setTimeOfFirstFailureRequest:?];
    }

    else
    {
      [v8 setConsecutiveFailureCount:{objc_msgSend(v8, "consecutiveFailureCount") + 1}];
    }

    uptimeProvider2 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
    [uptimeProvider2 uptime];
    [v8 setTimeOfLastFailedRequest:?];

    [v8 setHasFailedOnce:1];
    [v8 setConsecutiveSuccessCount:0];
    [v8 setLastFailedLinkLayerType:linkLayerType];
  }

  else
  {
    [v8 setConsecutiveFailureCount:0];
    [v8 setTimeOfFirstFailureRequest:0.0];
    uptimeProvider3 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
    [uptimeProvider3 uptime];
    [v8 setTimeOfLastSuccessfulRequest:?];

    [v8 setHasSucceededOnce:1];
    [v8 setConsecutiveSuccessCount:{objc_msgSend(v8, "consecutiveSuccessCount") + 1}];
    [v8 setLastSuccessLinkLayerType:linkLayerType];
  }

  [eventCopy setHasSucceededOnce:{objc_msgSend(v8, "hasSucceededOnce")}];
  [eventCopy setHasFailedOnce:{objc_msgSend(v8, "hasFailedOnce")}];
  [eventCopy setConsecutiveFailureCount:{objc_msgSend(v8, "consecutiveFailureCount")}];
  [v8 timeOfFirstFailureRequest];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [eventCopy setTimeIntervalSinceFirstFailure:?];
  [v8 noSessionStartTime];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [eventCopy setNoSessionDuration:?];
  [eventCopy setConsecutiveSuccessCount:{objc_msgSend(v8, "consecutiveSuccessCount")}];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateSessionConnectivity:(BOOL)connectivity withSessionInfo:(id)info forAccessoryUUID:(id)d
{
  connectivityCopy = connectivity;
  infoCopy = info;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v9 = [(HMDCharacteristicReadWriteLogEventManager *)self _getOrCreateAccessoryStatisticsForAccessoryUUID:dCopy];
  v10 = v9;
  if (connectivityCopy)
  {
    [v9 setNoSessionStartTime:0.0];
  }

  else
  {
    [v9 noSessionStartTime];
    if (v11 == 0.0)
    {
      uptimeProvider = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
      [uptimeProvider uptime];
      [v10 setNoSessionStartTime:?];
    }
  }

  if (infoCopy)
  {
    ipAddress = [infoCopy ipAddress];
    if (ipAddress)
    {
      [infoCopy ipAddress];
    }

    else
    {
      [v10 ipAddress];
    }
    v14 = ;
    [v10 setIpAddress:v14];

    serviceName = [infoCopy serviceName];
    if (serviceName)
    {
      [infoCopy serviceName];
    }

    else
    {
      [v10 serviceName];
    }
    v16 = ;
    [v10 setServiceName:v16];

    [v10 setNumIPAddresses:{objc_msgSend(infoCopy, "numIPAddresses")}];
    [v10 setResolveAttempted:{objc_msgSend(infoCopy, "resolveAttempted")}];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_updateNetworkStatisticsForLogEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  uptimeProvider = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
  [uptimeProvider uptime];
  v6 = v5;
  networkInformationCache = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [networkInformationCache timeIntervalNetworkInformationCache];
  v9 = v6 - v8;

  if (v9 > 10.0)
  {
    networkInformationCache2 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    [networkInformationCache2 refreshNetworkInformation];
  }

  [(HMDCharacteristicReadWriteLogEventManager *)self _updateWiFiStatisticsForLogEvent:eventCopy];
  [(HMDCharacteristicReadWriteLogEventManager *)self _updateBluetoothStatisticsForLogEvent:eventCopy];
  networkInformationCache3 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [eventCopy setEthernetConnectionState:{objc_msgSend(networkInformationCache3, "ethernetConnectionState")}];

  networkInformationCache4 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [eventCopy setCellularDataConnectionState:{objc_msgSend(networkInformationCache4, "cellularDataConnectionState")}];

  networkInformationCache5 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [eventCopy setIsConnectedToInternet:{objc_msgSend(networkInformationCache5, "isConnectedToInternet")}];

  networkInformationCache6 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  isInfraRelayInterfaceActive = [networkInformationCache6 isInfraRelayInterfaceActive];

  if (isInfraRelayInterfaceActive)
  {
    [eventCopy setMediaSystemConfiguration:{objc_msgSend(eventCopy, "mediaSystemConfiguration") | 1}];
  }

  accessoryUUID = [eventCopy accessoryUUID];
  error = [eventCopy error];
  code = [error code];

  accessoryStatisticsByHMDAccessoryUUID = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
  v20 = [accessoryStatisticsByHMDAccessoryUUID objectForKeyedSubscript:accessoryUUID];

  if (v20)
  {
    lastSuccessIpv4Signature = [v20 lastSuccessIpv4Signature];
    networkInformationCache7 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    ipv4Signature = [networkInformationCache7 ipv4Signature];
    v42 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:lastSuccessIpv4Signature secondSignature:ipv4Signature];

    lastSuccessIpv6Signature = [v20 lastSuccessIpv6Signature];
    networkInformationCache8 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    ipv6Signature = [networkInformationCache8 ipv6Signature];
    v27 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:lastSuccessIpv6Signature secondSignature:ipv6Signature];

    lastFailureIpv4Signature = [v20 lastFailureIpv4Signature];
    networkInformationCache9 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    ipv4Signature2 = [networkInformationCache9 ipv4Signature];
    v31 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:lastFailureIpv4Signature secondSignature:ipv4Signature2];

    lastFailureIpv6Signature = [v20 lastFailureIpv6Signature];
    networkInformationCache10 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    ipv6Signature2 = [networkInformationCache10 ipv6Signature];
    v35 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:lastFailureIpv6Signature secondSignature:ipv6Signature2];

    [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    if (code)
      v36 = {;
      ipv4Signature3 = [v36 ipv4Signature];
      [v20 setLastFailureIpv4Signature:ipv4Signature3];

      networkInformationCache11 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      ipv6Signature3 = [networkInformationCache11 ipv6Signature];
      [v20 setLastFailureIpv6Signature:ipv6Signature3];
    }

    else
      v40 = {;
      ipv4Signature4 = [v40 ipv4Signature];
      [v20 setLastSuccessIpv4Signature:ipv4Signature4];

      networkInformationCache11 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      ipv6Signature3 = [networkInformationCache11 ipv6Signature];
      [v20 setLastSuccessIpv6Signature:ipv6Signature3];
    }

    [eventCopy setIsCurrentNetworkSignatureSameAsLastSuccess:v42 & v27];
    [eventCopy setIsCurrentNetworkSignatureSameAsLastFailure:v31 & v35];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_compareIPSignatures:(id)signatures secondSignature:(id)signature
{
  signaturesCopy = signatures;
  signatureCopy = signature;
  v7 = signatureCopy;
  if (signaturesCopy == signatureCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (signaturesCopy && signatureCopy)
    {
      v8 = [signaturesCopy isEqualToData:signatureCopy];
    }
  }

  return v8;
}

- (void)_updateBluetoothStatisticsForLogEvent:(id)event
{
  eventCopy = event;
  networkInformationCache = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [eventCopy setBluetoothState:{objc_msgSend(networkInformationCache, "bluetoothState")}];
}

- (void)_updateWiFiStatisticsForLogEvent:(id)event
{
  eventCopy = event;
  accessoryUUID = [eventCopy accessoryUUID];
  error = [eventCopy error];
  code = [error code];

  accessoryStatisticsByHMDAccessoryUUID = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
  v8 = [accessoryStatisticsByHMDAccessoryUUID objectForKeyedSubscript:accessoryUUID];

  if (!v8)
  {
    goto LABEL_17;
  }

  lastSuccessSSID = [v8 lastSuccessSSID];
  if (lastSuccessSSID)
  {
    v10 = lastSuccessSSID;
    lastSuccessBSSID = [v8 lastSuccessBSSID];

    if (lastSuccessBSSID)
    {
      networkInformationCache = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      wifiSSID = [networkInformationCache wifiSSID];
      if (wifiSSID)
      {
        lastSuccessSSID2 = [v8 lastSuccessSSID];
        networkInformationCache2 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
        wifiSSID2 = [networkInformationCache2 wifiSSID];
        v34 = [lastSuccessSSID2 isEqualToString:wifiSSID2];
      }

      else
      {
        v34 = 0;
      }

      networkInformationCache3 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      wifiBSSID = [networkInformationCache3 wifiBSSID];
      if (wifiBSSID)
      {
        lastSuccessBSSID2 = [v8 lastSuccessBSSID];
        networkInformationCache4 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
        wifiBSSID2 = [networkInformationCache4 wifiBSSID];
        lastSuccessBSSID = [lastSuccessBSSID2 isEqualToString:wifiBSSID2];
      }

      else
      {
        lastSuccessBSSID = 0;
      }

      v17 = v34;
      goto LABEL_13;
    }
  }

  else
  {
    lastSuccessBSSID = 0;
  }

  v17 = 0;
LABEL_13:
  v23 = eventCopy;
  if (!code)
  {
    networkInformationCache5 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    wifiSSID3 = [networkInformationCache5 wifiSSID];
    [v8 setLastSuccessSSID:wifiSSID3];

    networkInformationCache6 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    wifiBSSID3 = [networkInformationCache6 wifiBSSID];
    [v8 setLastSuccessBSSID:wifiBSSID3];

    v23 = eventCopy;
  }

  [v23 setIsSSIDSameAsLastSuccessRequest:v17];
  [eventCopy setIsBSSIDSameAsLastSuccessRequest:lastSuccessBSSID];
  networkInformationCache7 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [eventCopy setWifiConnectionState:{objc_msgSend(networkInformationCache7, "wifiConnectionState")}];

  networkInformationCache8 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  wifiBSSID4 = [networkInformationCache8 wifiBSSID];

  if (wifiBSSID4)
  {
    networkInformationCache9 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    wifiBSSID5 = [networkInformationCache9 wifiBSSID];
    v33 = [wifiBSSID5 substringToIndex:8];
    [eventCopy setWifiAccessPointOUI:v33];
  }

LABEL_17:
}

- (void)_setupNetworkCacheWithWifiManager:(id)manager
{
  managerCopy = manager;
  networkInformationCache = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];

  if (!networkInformationCache)
  {
    v5 = [[HMDCharacteristicReadWriteNetworkInformation alloc] initWithWifiManager:managerCopy];
    [(HMDCharacteristicReadWriteLogEventManager *)self setNetworkInformationCache:v5];
  }
}

- (double)elapsedTimeInterval:(double)interval
{
  v3 = 0.0;
  if (interval > 0.0)
  {
    uptimeProvider = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
    [uptimeProvider uptime];
    v3 = v6 - interval;
  }

  return v3;
}

- (id)_getOrCreateAccessoryStatisticsForAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_lock);
  accessoryStatisticsByHMDAccessoryUUID = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
  v6 = [accessoryStatisticsByHMDAccessoryUUID objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(HMDCharacteristicReadWriteAccessoryStatistics);
    accessoryStatisticsByHMDAccessoryUUID2 = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
    [accessoryStatisticsByHMDAccessoryUUID2 setObject:v6 forKeyedSubscript:dCopy];
  }

  return v6;
}

- (HMDCharacteristicReadWriteLogEventManager)initWithUptimeProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicReadWriteLogEventManager;
  v6 = [(HMDCharacteristicReadWriteLogEventManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uptimeProvider, provider);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryStatisticsByHMDAccessoryUUID = v7->_accessoryStatisticsByHMDAccessoryUUID;
    v7->_accessoryStatisticsByHMDAccessoryUUID = v8;
  }

  return v7;
}

+ (HMDCharacteristicReadWriteLogEventManager)sharedInstance
{
  if (sharedInstance__hmf_once_t0_212146 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_212146, &__block_literal_global_212147);
  }

  v3 = sharedInstance__hmf_once_v1_212148;

  return v3;
}

void __59__HMDCharacteristicReadWriteLogEventManager_sharedInstance__block_invoke()
{
  v0 = [HMDCharacteristicReadWriteLogEventManager alloc];
  v3 = [MEMORY[0x277D17E00] sharedInstance];
  v1 = [(HMDCharacteristicReadWriteLogEventManager *)v0 initWithUptimeProvider:v3];
  v2 = sharedInstance__hmf_once_v1_212148;
  sharedInstance__hmf_once_v1_212148 = v1;
}

@end