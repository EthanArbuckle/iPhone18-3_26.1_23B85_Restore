@interface HMDCharacteristicReadWriteNetworkInformation
- (HMDCharacteristicReadWriteNetworkInformation)initWithWifiManager:(id)manager;
- (void)_handleWifiCurrentNetworkChangedNotification:(id)notification;
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
  enumerate_block[3] = &unk_278678828;
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
  getInstance = [MEMORY[0x277CFEA60] getInstance];
  -[HMDCharacteristicReadWriteNetworkInformation setBluetoothState:](self, "setBluetoothState:", [getInstance state]);
}

- (void)_refreshWifiInformation
{
  wifiManager = [(HMDCharacteristicReadWriteNetworkInformation *)self wifiManager];
  currentNetworkAssociation = [wifiManager currentNetworkAssociation];

  if (currentNetworkAssociation)
  {
    wifiManager2 = [(HMDCharacteristicReadWriteNetworkInformation *)self wifiManager];
    currentNetworkAssociation2 = [wifiManager2 currentNetworkAssociation];
    sSID = [currentNetworkAssociation2 SSID];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiSSID:sSID];

    wifiManager3 = [(HMDCharacteristicReadWriteNetworkInformation *)self wifiManager];
    currentNetworkAssociation3 = [wifiManager3 currentNetworkAssociation];
    bSSID = [currentNetworkAssociation3 BSSID];
    formattedString = [bSSID formattedString];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiBSSID:formattedString];
  }

  else
  {
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiSSID:0];
    [(HMDCharacteristicReadWriteNetworkInformation *)self setWifiBSSID:0];
  }

  v14 = objc_alloc_init(MEMORY[0x277D02B18]);
  [v14 activate];
  wifiUIStateFlags = [v14 wifiUIStateFlags];
  [v14 invalidate];
  if (wifiUIStateFlags)
  {
    if ((wifiUIStateFlags & 2) != 0)
    {
      if (wifiUIStateFlags)
      {
        v13 = 2;
      }

      else if ((wifiUIStateFlags & 4) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = (wifiUIStateFlags >> 1) & 4;
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

- (void)_handleWifiCurrentNetworkChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Wifi current network configuration changed. Refresh network information.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDCharacteristicReadWriteNetworkInformation *)selfCopy refreshNetworkInformation];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDCharacteristicReadWriteNetworkInformation)initWithWifiManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = HMDCharacteristicReadWriteNetworkInformation;
  v6 = [(HMDCharacteristicReadWriteNetworkInformation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wifiManager, manager);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleWifiCurrentNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];
  }

  return v7;
}

@end