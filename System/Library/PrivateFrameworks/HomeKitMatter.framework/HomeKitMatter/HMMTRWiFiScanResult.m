@interface HMMTRWiFiScanResult
- (HMMTRWiFiScanResult)initWithMTRNetworkCommissioningClusterWiFiInterfaceScanResult:(id)a3;
@end

@implementation HMMTRWiFiScanResult

- (HMMTRWiFiScanResult)initWithMTRNetworkCommissioningClusterWiFiInterfaceScanResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMMTRWiFiScanResult;
  v5 = [(HMMTRWiFiScanResult *)&v15 init];
  if (v5)
  {
    v6 = [v4 ssid];
    ssid = v5->_ssid;
    v5->_ssid = v6;

    v8 = [v4 rssi];
    rssi = v5->_rssi;
    v5->_rssi = v8;

    v10 = [v4 security];
    security = v5->_security;
    v5->_security = v10;

    v12 = [v4 wiFiBand];
    band = v5->_band;
    v5->_band = v12;
  }

  return v5;
}

@end