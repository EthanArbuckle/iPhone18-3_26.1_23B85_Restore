@interface HKClinicalSampleAccount
- (id)asClinicalGatewayWithBrand:(id)brand;
- (id)asClinicalProviderWithBrand:(id)brand;
@end

@implementation HKClinicalSampleAccount

- (id)asClinicalGatewayWithBrand:(id)brand
{
  provider = self->_provider;
  brandCopy = brand;
  gateway = [(HKClinicalSampleAccountProvider *)provider gateway];
  v6 = [HKClinicalGateway alloc];
  identifier = [gateway identifier];
  title = [gateway title];
  properties = [gateway properties];
  v9 = [properties objectForKeyedSubscript:@"subtitle"];
  properties2 = [gateway properties];
  v11 = [properties2 objectForKeyedSubscript:@"description"];
  v12 = HKClinicalGatewayUnknownBaseURL();
  fHIRVersion = [gateway FHIRVersion];
  v14 = v6;
  v15 = identifier;
  v16 = [(HKClinicalGateway *)v14 initWithExternalID:identifier title:title subtitle:v9 displayableDescription:v11 phoneNumber:0 informationURL:0 passwordResetURL:0 patientPortalURL:0 signupURL:0 status:1 type:1 brand:brandCopy country:@"US" baseURL:v12 FHIRVersion:fHIRVersion authSchemas:0 resourceSchemas:0 features:0 gatewayVersions:0 minCompatibleAPIVersion:0];

  return v16;
}

- (id)asClinicalProviderWithBrand:(id)brand
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [(HKClinicalSampleAccount *)self asClinicalGatewayWithBrand:brand];
  v5 = [HKClinicalProvider alloc];
  identifier = [(HKClinicalSampleAccountProvider *)self->_provider identifier];
  title = [(HKClinicalSampleAccountProvider *)self->_provider title];
  properties = [(HKClinicalSampleAccountProvider *)self->_provider properties];
  v9 = [properties objectForKeyedSubscript:@"subtitle"];
  properties2 = [(HKClinicalSampleAccountProvider *)self->_provider properties];
  v11 = [properties2 objectForKeyedSubscript:@"location"];
  brand = [v4 brand];
  v17[0] = v4;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [(HKClinicalProvider *)v5 initWithExternalID:identifier title:title subtitle:v9 location:v11 informationURL:0 brand:brand gateways:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end