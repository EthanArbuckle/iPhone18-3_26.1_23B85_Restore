@interface HMDCharacteristicReadWriteNetworkInformation
- (HMDCharacteristicReadWriteNetworkInformation)initWithWifiManager:(id)a3;
- (void)_handleWifiCurrentNetworkChangedNotification:(id)a3;
- (void)_refreshBluetoothInformation;
- (void)_refreshWifiInformation;
- (void)refreshNetworkInformation;
@end

@implementation HMDCharacteristicReadWriteNetworkInformation

- (void)refreshNetworkInformation
{
  v11 = *MEMORY[0x277D85DE8];
  [(HMDCharacteristicReadWriteNetworkInformation *)self _refreshWifiInformation];
  [(HMDCharacteristicReadWriteNetworkInformation *)self _refreshBluetoothInformation];
  default_evaluator = nw_path_create_default_evaluator();
  v4 = nw_path_evaluator_copy_path();
  [(HMDCharacteristicReadWriteNetworkInformation *)self setEthernetConnectionState:1];
  [(HMDCharacteristicReadWriteNetworkInformation *)self setCellularDataConnectionState:1];
  enumerate_block[0] = MEMORY[0x277D85DD0];
  enumerate_block[1] = 3221225472;
  enumerate_block[2] = __73__HMDCharacteristicReadWriteNetworkInformation_refreshNetworkInformation__block_invoke;
  enumerate_block[3] = &unk_2797284E8;
  enumerate_block[4] = self;
  nw_path_enumerate_interfaces(v4, enumerate_block);
  [(HMDCharacteristicReadWriteNetworkInformation *)self setIsConnectedToInternet:0];
  if (nw_path_get_status(v4) == nw_path_status_satisfied && (nw_path_has_ipv4(v4) || nw_path_has_ipv6(v4)) && nw_path_has_dns(v4))
  {
    [(HMDCharacteristicReadWriteNetworkInformation *)self setIsConnectedToInternet:1];
  }

  if (nw_path_get_ipv4_network_signature())
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v10 length:20];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setIpv4Signature:v5];
  }

  if (nw_path_get_ipv6_network_signature())
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v9 length:20];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setIpv6Signature:v6];
  }

  HMFUptime();
  [(HMDCharacteristicReadWriteNetworkInformation *)self setTimeIntervalNetworkInformationCache:?];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDCharacteristicReadWriteNetworkInformation_refreshNetworkInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = nw_interface_get_type(v3);
  if (type == nw_interface_type_cellular)
  {
    [*(a1 + 32) setCellularDataConnectionState:2];
  }

  else if (type == nw_interface_type_wired)
  {
    [*(a1 + 32) setEthernetConnectionState:2];
  }

  name = nw_interface_get_name(v3);
  if (!strcmp("ir0", name))
  {
    [*(a1 + 32) setIsInfraRelayInterfaceActive:1];
  }

  return 1;
}

- (void)_refreshBluetoothInformation
{
  v3 = [MEMORY[0x277CFEA60] getInstance];
  -[HMDCharacteristicReadWriteNetworkInformation setBluetoothState:](self, "setBluetoothState:", [v3 state]);
}

- (void)_refreshWifiInformation
{
  v3 = [(HMDCharacteristicReadWriteNetworkInformation *)self wifiManager];
  v4 = [v3 currentNetworkAssociation];

  if (v4)
  {
    v5 = [(HMDCharacteristicReadWriteNetworkInformation *)self wifiManager];
    v6 = [v5 currentNetworkAssociation];
    v7 = [v6 SSID];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiSSID:v7];

    v8 = [(HMDCharacteristicReadWriteNetworkInformation *)self wifiManager];
    v9 = [v8 currentNetworkAssociation];
    v10 = [v9 BSSID];
    v11 = [v10 formattedString];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiBSSID:v11];
  }

  else
  {
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiSSID:0];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiBSSID:0];
  }

  v14 = objc_alloc_init(MEMORY[0x277D02B18]);
  [v14 activate];
  v12 = [v14 wifiUIStateFlags];
  [v14 invalidate];
  if (v12)
  {
    if ((v12 & 2) != 0)
    {
      if (v12)
      {
        v13 = 2;
      }

      else if ((v12 & 4) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = (v12 >> 1) & 4;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiConnectionState:v13];
}

- (void)_handleWifiCurrentNetworkChangedNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Wifi current network configuration changed. Refresh network information.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDCharacteristicReadWriteNetworkInformation *)v6 refreshNetworkInformation];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDCharacteristicReadWriteNetworkInformation)initWithWifiManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMDCharacteristicReadWriteNetworkInformation;
  v6 = [(HMDCharacteristicReadWriteNetworkInformation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wifiManager, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__handleWifiCurrentNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];
  }

  return v7;
}

@end