@interface HMMTRWiFiScanResult
- (HMMTRWiFiScanResult)initWithMTRNetworkCommissioningClusterWiFiInterfaceScanResult:(id)result;
@end

@implementation HMMTRWiFiScanResult

- (HMMTRWiFiScanResult)initWithMTRNetworkCommissioningClusterWiFiInterfaceScanResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = HMMTRWiFiScanResult;
  v5 = [(HMMTRWiFiScanResult *)&v15 init];
  if (v5)
  {
    ssid = [resultCopy ssid];
    ssid = v5->_ssid;
    v5->_ssid = ssid;

    rssi = [resultCopy rssi];
    rssi = v5->_rssi;
    v5->_rssi = rssi;

    security = [resultCopy security];
    security = v5->_security;
    v5->_security = security;

    wiFiBand = [resultCopy wiFiBand];
    band = v5->_band;
    v5->_band = wiFiBand;
  }

  return v5;
}

@end