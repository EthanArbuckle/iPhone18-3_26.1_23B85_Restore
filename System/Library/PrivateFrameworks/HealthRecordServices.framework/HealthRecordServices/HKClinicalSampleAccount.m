@interface HKClinicalSampleAccount
- (id)asClinicalGatewayWithBrand:(id)a3;
- (id)asClinicalProviderWithBrand:(id)a3;
@end

@implementation HKClinicalSampleAccount

- (id)asClinicalGatewayWithBrand:(id)a3
{
  provider = self->_provider;
  v4 = a3;
  v5 = [(HKClinicalSampleAccountProvider *)provider gateway];
  v6 = [HKClinicalGateway alloc];
  v7 = [v5 identifier];
  v8 = [v5 title];
  v18 = [v5 properties];
  v9 = [v18 objectForKeyedSubscript:@"subtitle"];
  v10 = [v5 properties];
  v11 = [v10 objectForKeyedSubscript:@"description"];
  v12 = HKClinicalGatewayUnknownBaseURL();
  v13 = [v5 FHIRVersion];
  v14 = v6;
  v15 = v7;
  v16 = [(HKClinicalGateway *)v14 initWithExternalID:v7 title:v8 subtitle:v9 displayableDescription:v11 phoneNumber:0 informationURL:0 passwordResetURL:0 patientPortalURL:0 signupURL:0 status:1 type:1 brand:v4 country:@"US" baseURL:v12 FHIRVersion:v13 authSchemas:0 resourceSchemas:0 features:0 gatewayVersions:0 minCompatibleAPIVersion:0];

  return v16;
}

- (id)asClinicalProviderWithBrand:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [(HKClinicalSampleAccount *)self asClinicalGatewayWithBrand:a3];
  v5 = [HKClinicalProvider alloc];
  v6 = [(HKClinicalSampleAccountProvider *)self->_provider identifier];
  v7 = [(HKClinicalSampleAccountProvider *)self->_provider title];
  v8 = [(HKClinicalSampleAccountProvider *)self->_provider properties];
  v9 = [v8 objectForKeyedSubscript:@"subtitle"];
  v10 = [(HKClinicalSampleAccountProvider *)self->_provider properties];
  v11 = [v10 objectForKeyedSubscript:@"location"];
  v12 = [v4 brand];
  v17[0] = v4;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [(HKClinicalProvider *)v5 initWithExternalID:v6 title:v7 subtitle:v9 location:v11 informationURL:0 brand:v12 gateways:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end