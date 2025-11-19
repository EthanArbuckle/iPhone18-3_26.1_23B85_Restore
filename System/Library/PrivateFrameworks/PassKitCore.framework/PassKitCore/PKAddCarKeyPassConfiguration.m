@interface PKAddCarKeyPassConfiguration
- (PKAddCarKeyPassConfiguration)init;
- (PKAddCarKeyPassConfiguration)initWithCoder:(id)a3;
- (id)description;
- (id)manufacturerOrIssuerIdentifier;
- (id)vehicleInitiatedPairingLaunchURL;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAddCarKeyPassConfiguration

- (PKAddCarKeyPassConfiguration)init
{
  v6.receiver = self;
  v6.super_class = PKAddCarKeyPassConfiguration;
  v2 = [(PKAddSecureElementPassConfiguration *)&v6 initWithType:1];
  v3 = v2;
  if (v2)
  {
    password = v2->_password;
    v2->_password = &stru_1F227FD28;
  }

  return v3;
}

- (id)vehicleInitiatedPairingLaunchURL
{
  v3 = [(PKAddSecureElementPassConfiguration *)self issuerIdentifier];
  v4 = PKVehicleInitiatedPairingLaunchURL(v3, self->_supportedRadioTechnologies, self->_provisioningTemplateIdentifier, self->_referralSource);

  return v4;
}

- (id)manufacturerOrIssuerIdentifier
{
  manufacturerIdentifier = self->_manufacturerIdentifier;
  if (manufacturerIdentifier)
  {
    v3 = manufacturerIdentifier;
  }

  else
  {
    v3 = [(PKAddSecureElementPassConfiguration *)self issuerIdentifier];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKAddCarKeyPassConfiguration;
  v4 = a3;
  [(PKAddSecureElementPassConfiguration *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_password forKey:{@"password", v6.receiver, v6.super_class}];
  v5 = PKSubcredentialPairingReferralSourceToString(self->_referralSource);
  [v4 encodeObject:v5 forKey:@"referralSource"];

  [v4 encodeInteger:self->_supportedRadioTechnologies forKey:@"supportedRadioTechnologies"];
  [v4 encodeObject:self->_provisioningTemplateIdentifier forKey:@"provisioningTemplateIdentifier"];
  [v4 encodeObject:self->_manufacturerIdentifier forKey:@"manufacturerIdentifier"];
  [v4 encodeObject:self->_pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  [v4 encodeObject:self->_productPlanIdentifier forKey:@"productPlanIdentifier"];
  [v4 encodeObject:self->_vehicleName forKey:@"vehicleName"];
  [v4 encodeBool:self->_ownerKeyPairingAvailable forKey:@"ownerKeyPairingAvailable"];
  [v4 encodeBool:self->_proofOfOwnershipPresent forKey:@"proofOfOwnershipPresent"];
  [v4 encodeBool:self->_onlineServicesActivated forKey:@"onlineServicesActivated"];
  [v4 encodeBool:self->_passwordEnteredManually forKey:@"passwordEnteredManually"];
}

- (PKAddCarKeyPassConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKAddCarKeyPassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v5->_password;
    v5->_password = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referralSource"];
    v5->_referralSource = PKSubcredentialPairingReferralSourceFromString(v8);

    v5->_supportedRadioTechnologies = [v4 decodeIntegerForKey:@"supportedRadioTechnologies"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTemplateIdentifier"];
    provisioningTemplateIdentifier = v5->_provisioningTemplateIdentifier;
    v5->_provisioningTemplateIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerIdentifier"];
    manufacturerIdentifier = v5->_manufacturerIdentifier;
    v5->_manufacturerIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedReaderIdentifier"];
    pairedReaderIdentifier = v5->_pairedReaderIdentifier;
    v5->_pairedReaderIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productPlanIdentifier"];
    productPlanIdentifier = v5->_productPlanIdentifier;
    v5->_productPlanIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleName"];
    vehicleName = v5->_vehicleName;
    v5->_vehicleName = v17;

    v5->_ownerKeyPairingAvailable = [v4 decodeBoolForKey:@"ownerKeyPairingAvailable"];
    v5->_proofOfOwnershipPresent = [v4 decodeBoolForKey:@"proofOfOwnershipPresent"];
    v5->_onlineServicesActivated = [v4 decodeBoolForKey:@"onlineServicesActivated"];
    v5->_passwordEnteredManually = [v4 decodeBoolForKey:@"passwordEnteredManually"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"manufacturerIdentifier: '%@'; ", self->_manufacturerIdentifier];
  v4 = [(PKAddSecureElementPassConfiguration *)self issuerIdentifier];
  [v3 appendFormat:@"issuerIdentifier: '%@'; ", v4];

  [v3 appendFormat:@"provisioningTemplateIdentifier: '%@'; ", self->_provisioningTemplateIdentifier];
  [v3 appendFormat:@"pairedReaderIdentifier: '%@'; ", self->_pairedReaderIdentifier];
  [v3 appendFormat:@"productPlanIdentifier: '%@'; ", self->_productPlanIdentifier];
  [v3 appendFormat:@"vehicleName: '%@'; ", self->_vehicleName];
  if ([(NSString *)self->_password length])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  [v3 appendFormat:@"hasPassword: '%@'; ", v5];
  if (self->_passwordEnteredManually)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v3 appendFormat:@"passwordEnteredManually: '%@'; ", v6];
  [v3 appendFormat:@">"];

  return v3;
}

@end