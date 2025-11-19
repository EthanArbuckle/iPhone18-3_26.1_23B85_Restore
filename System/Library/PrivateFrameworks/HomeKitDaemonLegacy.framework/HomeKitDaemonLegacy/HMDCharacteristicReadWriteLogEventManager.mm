@interface HMDCharacteristicReadWriteLogEventManager
+ (HMDCharacteristicReadWriteLogEventManager)sharedInstance;
- (BOOL)_compareIPSignatures:(id)a3 secondSignature:(id)a4;
- (HMDCharacteristicReadWriteLogEventManager)initWithUptimeProvider:(id)a3;
- (double)elapsedTimeInterval:(double)a3;
- (id)_getOrCreateAccessoryStatisticsForAccessoryUUID:(id)a3;
- (void)_setupNetworkCacheWithWifiManager:(id)a3;
- (void)_updateBluetoothStatisticsForLogEvent:(id)a3;
- (void)_updateNetworkStatisticsForLogEvent:(id)a3;
- (void)_updateWiFiStatisticsForLogEvent:(id)a3;
- (void)updateSessionConnectivity:(BOOL)a3 withSessionInfo:(id)a4 forAccessoryUUID:(id)a5;
- (void)updateStatisticsForLogEvent:(id)a3;
@end

@implementation HMDCharacteristicReadWriteLogEventManager

- (void)updateStatisticsForLogEvent:(id)a3
{
  v13 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v13 accessoryUUID];
  v5 = [v13 error];
  v6 = [v5 code];

  v7 = [v13 linkLayerType];
  v8 = [(HMDCharacteristicReadWriteLogEventManager *)self _getOrCreateAccessoryStatisticsForAccessoryUUID:v4];
  [v8 timeOfLastSuccessfulRequest];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [v13 setTimeIntervalSinceLastSuccessfulRequest:?];
  [v8 timeOfLastFailedRequest];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [v13 setTimeIntervalSinceLastFailedRequest:?];
  [v13 setLastSuccessLinkLayerType:{objc_msgSend(v8, "lastSuccessLinkLayerType")}];
  [v13 setLastFailedLinkLayerType:{objc_msgSend(v8, "lastFailedLinkLayerType")}];
  if (v6)
  {
    [v8 timeOfFirstFailureRequest];
    if (v9 <= 0.0)
    {
      [v8 setConsecutiveFailureCount:1];
      v11 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
      [v11 uptime];
      [v8 setTimeOfFirstFailureRequest:?];
    }

    else
    {
      [v8 setConsecutiveFailureCount:{objc_msgSend(v8, "consecutiveFailureCount") + 1}];
    }

    v12 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
    [v12 uptime];
    [v8 setTimeOfLastFailedRequest:?];

    [v8 setHasFailedOnce:1];
    [v8 setConsecutiveSuccessCount:0];
    [v8 setLastFailedLinkLayerType:v7];
  }

  else
  {
    [v8 setConsecutiveFailureCount:0];
    [v8 setTimeOfFirstFailureRequest:0.0];
    v10 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
    [v10 uptime];
    [v8 setTimeOfLastSuccessfulRequest:?];

    [v8 setHasSucceededOnce:1];
    [v8 setConsecutiveSuccessCount:{objc_msgSend(v8, "consecutiveSuccessCount") + 1}];
    [v8 setLastSuccessLinkLayerType:v7];
  }

  [v13 setHasSucceededOnce:{objc_msgSend(v8, "hasSucceededOnce")}];
  [v13 setHasFailedOnce:{objc_msgSend(v8, "hasFailedOnce")}];
  [v13 setConsecutiveFailureCount:{objc_msgSend(v8, "consecutiveFailureCount")}];
  [v8 timeOfFirstFailureRequest];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [v13 setTimeIntervalSinceFirstFailure:?];
  [v8 noSessionStartTime];
  [(HMDCharacteristicReadWriteLogEventManager *)self elapsedTimeInterval:?];
  [v13 setNoSessionDuration:?];
  [v13 setConsecutiveSuccessCount:{objc_msgSend(v8, "consecutiveSuccessCount")}];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateSessionConnectivity:(BOOL)a3 withSessionInfo:(id)a4 forAccessoryUUID:(id)a5
{
  v6 = a3;
  v17 = a4;
  v8 = a5;
  os_unfair_lock_lock_with_options();
  v9 = [(HMDCharacteristicReadWriteLogEventManager *)self _getOrCreateAccessoryStatisticsForAccessoryUUID:v8];
  v10 = v9;
  if (v6)
  {
    [v9 setNoSessionStartTime:0.0];
  }

  else
  {
    [v9 noSessionStartTime];
    if (v11 == 0.0)
    {
      v12 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
      [v12 uptime];
      [v10 setNoSessionStartTime:?];
    }
  }

  if (v17)
  {
    v13 = [v17 ipAddress];
    if (v13)
    {
      [v17 ipAddress];
    }

    else
    {
      [v10 ipAddress];
    }
    v14 = ;
    [v10 setIpAddress:v14];

    v15 = [v17 serviceName];
    if (v15)
    {
      [v17 serviceName];
    }

    else
    {
      [v10 serviceName];
    }
    v16 = ;
    [v10 setServiceName:v16];

    [v10 setNumIPAddresses:{objc_msgSend(v17, "numIPAddresses")}];
    [v10 setResolveAttempted:{objc_msgSend(v17, "resolveAttempted")}];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_updateNetworkStatisticsForLogEvent:(id)a3
{
  v43 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
  [v4 uptime];
  v6 = v5;
  v7 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [v7 timeIntervalNetworkInformationCache];
  v9 = v6 - v8;

  if (v9 > 10.0)
  {
    v10 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    [v10 refreshNetworkInformation];
  }

  [(HMDCharacteristicReadWriteLogEventManager *)self _updateWiFiStatisticsForLogEvent:v43];
  [(HMDCharacteristicReadWriteLogEventManager *)self _updateBluetoothStatisticsForLogEvent:v43];
  v11 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [v43 setEthernetConnectionState:{objc_msgSend(v11, "ethernetConnectionState")}];

  v12 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [v43 setCellularDataConnectionState:{objc_msgSend(v12, "cellularDataConnectionState")}];

  v13 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [v43 setIsConnectedToInternet:{objc_msgSend(v13, "isConnectedToInternet")}];

  v14 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  v15 = [v14 isInfraRelayInterfaceActive];

  if (v15)
  {
    [v43 setMediaSystemConfiguration:{objc_msgSend(v43, "mediaSystemConfiguration") | 1}];
  }

  v16 = [v43 accessoryUUID];
  v17 = [v43 error];
  v18 = [v17 code];

  v19 = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
  v20 = [v19 objectForKeyedSubscript:v16];

  if (v20)
  {
    v21 = [v20 lastSuccessIpv4Signature];
    v22 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v23 = [v22 ipv4Signature];
    v42 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:v21 secondSignature:v23];

    v24 = [v20 lastSuccessIpv6Signature];
    v25 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v26 = [v25 ipv6Signature];
    v27 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:v24 secondSignature:v26];

    v28 = [v20 lastFailureIpv4Signature];
    v29 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v30 = [v29 ipv4Signature];
    v31 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:v28 secondSignature:v30];

    v32 = [v20 lastFailureIpv6Signature];
    v33 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v34 = [v33 ipv6Signature];
    v35 = [(HMDCharacteristicReadWriteLogEventManager *)self _compareIPSignatures:v32 secondSignature:v34];

    [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    if (v18)
      v36 = {;
      v37 = [v36 ipv4Signature];
      [v20 setLastFailureIpv4Signature:v37];

      v38 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      v39 = [v38 ipv6Signature];
      [v20 setLastFailureIpv6Signature:v39];
    }

    else
      v40 = {;
      v41 = [v40 ipv4Signature];
      [v20 setLastSuccessIpv4Signature:v41];

      v38 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      v39 = [v38 ipv6Signature];
      [v20 setLastSuccessIpv6Signature:v39];
    }

    [v43 setIsCurrentNetworkSignatureSameAsLastSuccess:v42 & v27];
    [v43 setIsCurrentNetworkSignatureSameAsLastFailure:v31 & v35];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_compareIPSignatures:(id)a3 secondSignature:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToData:v6];
    }
  }

  return v8;
}

- (void)_updateBluetoothStatisticsForLogEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [v4 setBluetoothState:{objc_msgSend(v5, "bluetoothState")}];
}

- (void)_updateWiFiStatisticsForLogEvent:(id)a3
{
  v35 = a3;
  v4 = [v35 accessoryUUID];
  v5 = [v35 error];
  v6 = [v5 code];

  v7 = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
  v8 = [v7 objectForKeyedSubscript:v4];

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [v8 lastSuccessSSID];
  if (v9)
  {
    v10 = v9;
    v11 = [v8 lastSuccessBSSID];

    if (v11)
    {
      v12 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      v13 = [v12 wifiSSID];
      if (v13)
      {
        v14 = [v8 lastSuccessSSID];
        v15 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
        v16 = [v15 wifiSSID];
        v34 = [v14 isEqualToString:v16];
      }

      else
      {
        v34 = 0;
      }

      v18 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
      v19 = [v18 wifiBSSID];
      if (v19)
      {
        v20 = [v8 lastSuccessBSSID];
        v21 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
        v22 = [v21 wifiBSSID];
        v11 = [v20 isEqualToString:v22];
      }

      else
      {
        v11 = 0;
      }

      v17 = v34;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = 0;
LABEL_13:
  v23 = v35;
  if (!v6)
  {
    v24 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v25 = [v24 wifiSSID];
    [v8 setLastSuccessSSID:v25];

    v26 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v27 = [v26 wifiBSSID];
    [v8 setLastSuccessBSSID:v27];

    v23 = v35;
  }

  [v23 setIsSSIDSameAsLastSuccessRequest:v17];
  [v35 setIsBSSIDSameAsLastSuccessRequest:v11];
  v28 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  [v35 setWifiConnectionState:{objc_msgSend(v28, "wifiConnectionState")}];

  v29 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
  v30 = [v29 wifiBSSID];

  if (v30)
  {
    v31 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];
    v32 = [v31 wifiBSSID];
    v33 = [v32 substringToIndex:8];
    [v35 setWifiAccessPointOUI:v33];
  }

LABEL_17:
}

- (void)_setupNetworkCacheWithWifiManager:(id)a3
{
  v6 = a3;
  v4 = [(HMDCharacteristicReadWriteLogEventManager *)self networkInformationCache];

  if (!v4)
  {
    v5 = [[HMDCharacteristicReadWriteNetworkInformation alloc] initWithWifiManager:v6];
    [(HMDCharacteristicReadWriteLogEventManager *)self setNetworkInformationCache:v5];
  }
}

- (double)elapsedTimeInterval:(double)a3
{
  v3 = 0.0;
  if (a3 > 0.0)
  {
    v5 = [(HMDCharacteristicReadWriteLogEventManager *)self uptimeProvider];
    [v5 uptime];
    v3 = v6 - a3;
  }

  return v3;
}

- (id)_getOrCreateAccessoryStatisticsForAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = objc_alloc_init(HMDCharacteristicReadWriteAccessoryStatistics);
    v7 = [(HMDCharacteristicReadWriteLogEventManager *)self accessoryStatisticsByHMDAccessoryUUID];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (HMDCharacteristicReadWriteLogEventManager)initWithUptimeProvider:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicReadWriteLogEventManager;
  v6 = [(HMDCharacteristicReadWriteLogEventManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uptimeProvider, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryStatisticsByHMDAccessoryUUID = v7->_accessoryStatisticsByHMDAccessoryUUID;
    v7->_accessoryStatisticsByHMDAccessoryUUID = v8;
  }

  return v7;
}

+ (HMDCharacteristicReadWriteLogEventManager)sharedInstance
{
  if (sharedInstance__hmf_once_t0 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0, &__block_literal_global_141625);
  }

  v3 = sharedInstance__hmf_once_v1;

  return v3;
}

void __59__HMDCharacteristicReadWriteLogEventManager_sharedInstance__block_invoke()
{
  v0 = [HMDCharacteristicReadWriteLogEventManager alloc];
  v3 = [MEMORY[0x277D17E00] sharedInstance];
  v1 = [(HMDCharacteristicReadWriteLogEventManager *)v0 initWithUptimeProvider:v3];
  v2 = sharedInstance__hmf_once_v1;
  sharedInstance__hmf_once_v1 = v1;
}

@end