@interface PKAddCarKeyPassConfiguration
- (PKAddCarKeyPassConfiguration)init;
- (PKAddCarKeyPassConfiguration)initWithCoder:(id)coder;
- (id)description;
- (id)manufacturerOrIssuerIdentifier;
- (id)vehicleInitiatedPairingLaunchURL;
- (void)encodeWithCoder:(id)coder;
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
  issuerIdentifier = [(PKAddSecureElementPassConfiguration *)self issuerIdentifier];
  v4 = PKVehicleInitiatedPairingLaunchURL(issuerIdentifier, self->_supportedRadioTechnologies, self->_provisioningTemplateIdentifier, self->_referralSource);

  return v4;
}

- (id)manufacturerOrIssuerIdentifier
{
  manufacturerIdentifier = self->_manufacturerIdentifier;
  if (manufacturerIdentifier)
  {
    issuerIdentifier = manufacturerIdentifier;
  }

  else
  {
    issuerIdentifier = [(PKAddSecureElementPassConfiguration *)self issuerIdentifier];
  }

  return issuerIdentifier;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKAddCarKeyPassConfiguration;
  coderCopy = coder;
  [(PKAddSecureElementPassConfiguration *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_password forKey:{@"password", v6.receiver, v6.super_class}];
  v5 = PKSubcredentialPairingReferralSourceToString(self->_referralSource);
  [coderCopy encodeObject:v5 forKey:@"referralSource"];

  [coderCopy encodeInteger:self->_supportedRadioTechnologies forKey:@"supportedRadioTechnologies"];
  [coderCopy encodeObject:self->_provisioningTemplateIdentifier forKey:@"provisioningTemplateIdentifier"];
  [coderCopy encodeObject:self->_manufacturerIdentifier forKey:@"manufacturerIdentifier"];
  [coderCopy encodeObject:self->_pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  [coderCopy encodeObject:self->_productPlanIdentifier forKey:@"productPlanIdentifier"];
  [coderCopy encodeObject:self->_vehicleName forKey:@"vehicleName"];
  [coderCopy encodeBool:self->_ownerKeyPairingAvailable forKey:@"ownerKeyPairingAvailable"];
  [coderCopy encodeBool:self->_proofOfOwnershipPresent forKey:@"proofOfOwnershipPresent"];
  [coderCopy encodeBool:self->_onlineServicesActivated forKey:@"onlineServicesActivated"];
  [coderCopy encodeBool:self->_passwordEnteredManually forKey:@"passwordEnteredManually"];
}

- (PKAddCarKeyPassConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKAddCarKeyPassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v5->_password;
    v5->_password = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referralSource"];
    v5->_referralSource = PKSubcredentialPairingReferralSourceFromString(v8);

    v5->_supportedRadioTechnologies = [coderCopy decodeIntegerForKey:@"supportedRadioTechnologies"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTemplateIdentifier"];
    provisioningTemplateIdentifier = v5->_provisioningTemplateIdentifier;
    v5->_provisioningTemplateIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerIdentifier"];
    manufacturerIdentifier = v5->_manufacturerIdentifier;
    v5->_manufacturerIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedReaderIdentifier"];
    pairedReaderIdentifier = v5->_pairedReaderIdentifier;
    v5->_pairedReaderIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productPlanIdentifier"];
    productPlanIdentifier = v5->_productPlanIdentifier;
    v5->_productPlanIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleName"];
    vehicleName = v5->_vehicleName;
    v5->_vehicleName = v17;

    v5->_ownerKeyPairingAvailable = [coderCopy decodeBoolForKey:@"ownerKeyPairingAvailable"];
    v5->_proofOfOwnershipPresent = [coderCopy decodeBoolForKey:@"proofOfOwnershipPresent"];
    v5->_onlineServicesActivated = [coderCopy decodeBoolForKey:@"onlineServicesActivated"];
    v5->_passwordEnteredManually = [coderCopy decodeBoolForKey:@"passwordEnteredManually"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"manufacturerIdentifier: '%@'; ", self->_manufacturerIdentifier];
  issuerIdentifier = [(PKAddSecureElementPassConfiguration *)self issuerIdentifier];
  [v3 appendFormat:@"issuerIdentifier: '%@'; ", issuerIdentifier];

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