@interface HMDAccessoryDiagnosticsSettings
- (HMDAccessoryDiagnosticsSettings)initWithService:(id)service;
- (id)attributeDescriptions;
@end

@implementation HMDAccessoryDiagnosticsSettings

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  transport = [(HMDAccessoryDiagnosticsSettings *)self transport];
  v5 = [v3 initWithName:@"transport" value:transport];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDAccessoryDiagnosticsSettings)initWithService:(id)service
{
  serviceCopy = service;
  v10.receiver = self;
  v10.super_class = HMDAccessoryDiagnosticsSettings;
  v6 = [(HMDAccessoryDiagnosticsSettings *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diagnosticsService, service);
    transport = v7->_transport;
    v7->_transport = @"DataStream";
  }

  return v7;
}

@end