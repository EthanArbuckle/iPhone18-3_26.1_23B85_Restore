@interface HMDNetworkMismatchDetectorResult
- (HMDNetworkMismatchDetectorResult)initWithAccessoriesNotOnWiFi:(id)a3 accessoriesNotOnWiFiAndNotConnectingToPrimaryResident:(id)a4 accessoriesReportingDiagnostic:(id)a5;
- (id)description;
@end

@implementation HMDNetworkMismatchDetectorResult

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Accessories not on WiFi: %@", self->_accessoriesNotOnWiFi];
  v4 = [v3 stringByAppendingFormat:@", Accessories not connect to primary: %@", self->_accessoriesNotOnWiFiAndNotConnectingToPrimaryResident];

  v5 = [v4 stringByAppendingFormat:@", Accessories not report diagnostic: %@", self->_accessoriesReportingDiagnostic];

  v6 = [v5 stringByAppendingString:@">"];

  return v6;
}

- (HMDNetworkMismatchDetectorResult)initWithAccessoriesNotOnWiFi:(id)a3 accessoriesNotOnWiFiAndNotConnectingToPrimaryResident:(id)a4 accessoriesReportingDiagnostic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HMDNetworkMismatchDetectorResult;
  v11 = [(HMDNetworkMismatchDetectorResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    accessoriesNotOnWiFi = v11->_accessoriesNotOnWiFi;
    v11->_accessoriesNotOnWiFi = v12;

    v14 = [v9 copy];
    accessoriesNotOnWiFiAndNotConnectingToPrimaryResident = v11->_accessoriesNotOnWiFiAndNotConnectingToPrimaryResident;
    v11->_accessoriesNotOnWiFiAndNotConnectingToPrimaryResident = v14;

    v16 = [v10 copy];
    accessoriesReportingDiagnostic = v11->_accessoriesReportingDiagnostic;
    v11->_accessoriesReportingDiagnostic = v16;
  }

  return v11;
}

@end