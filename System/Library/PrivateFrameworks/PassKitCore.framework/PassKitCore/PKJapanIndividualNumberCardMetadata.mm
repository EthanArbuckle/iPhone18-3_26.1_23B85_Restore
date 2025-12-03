@interface PKJapanIndividualNumberCardMetadata
- (PKJapanIndividualNumberCardMetadata)initWithCoder:(id)coder;
- (PKJapanIndividualNumberCardMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardConfigurationIdentifier:(id)configurationIdentifier preview:(id)preview;
- (PKJapanIndividualNumberCardMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardTemplateIdentifier:(id)templateIdentifier preview:(id)preview;
- (id)copyWithZone:(_NSZone *)zone;
- (id)supportDataRepresentationWithSID:(id)d;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setAuthenticationPassword:(id)password;
- (void)setSigningPassword:(id)password;
@end

@implementation PKJapanIndividualNumberCardMetadata

- (PKJapanIndividualNumberCardMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardTemplateIdentifier:(id)templateIdentifier preview:(id)preview
{
  v7.receiver = self;
  v7.super_class = PKJapanIndividualNumberCardMetadata;
  return [(PKIdentityDocumentMetadata *)&v7 initWithProvisioningCredentialIdentifier:identifier sharingInstanceIdentifier:instanceIdentifier cardConfigurationIdentifier:0 cardTemplateIdentifier:templateIdentifier requiresSimultaneousRequestRouting:1 issuingCountryCode:@"JP" documentType:3 preview:preview];
}

- (PKJapanIndividualNumberCardMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardConfigurationIdentifier:(id)configurationIdentifier preview:(id)preview
{
  v7.receiver = self;
  v7.super_class = PKJapanIndividualNumberCardMetadata;
  return [(PKIdentityDocumentMetadata *)&v7 initWithProvisioningCredentialIdentifier:identifier sharingInstanceIdentifier:instanceIdentifier cardConfigurationIdentifier:configurationIdentifier cardTemplateIdentifier:0 requiresSimultaneousRequestRouting:1 issuingCountryCode:@"JP" documentType:3 preview:preview];
}

- (void)setAuthenticationPassword:(id)password
{
  passwordCopy = password;
  pk_zString = [passwordCopy length];
  if (pk_zString)
  {
    pk_zString = [passwordCopy pk_zString];
  }

  authenticationPassword = self->_authenticationPassword;
  self->_authenticationPassword = pk_zString;
}

- (void)setSigningPassword:(id)password
{
  passwordCopy = password;
  pk_zString = [passwordCopy length];
  if (pk_zString)
  {
    pk_zString = [passwordCopy pk_zString];
  }

  signingPassword = self->_signingPassword;
  self->_signingPassword = pk_zString;
}

- (id)supportDataRepresentationWithSID:(id)d
{
  dCopy = d;
  v5 = [[PKProvisioningJPKISupportData alloc] initWithPIN:self->_authenticationPassword password:self->_signingPassword type:0 sid:dCopy];

  return v5;
}

- (void)_extendableDescription:(id)description
{
  v7.receiver = self;
  v7.super_class = PKJapanIndividualNumberCardMetadata;
  descriptionCopy = description;
  [(PKIdentityDocumentMetadata *)&v7 _extendableDescription:descriptionCopy];
  if ([(NSString *)self->_authenticationPassword length])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [descriptionCopy appendFormat:@"authenticationPassword is non-empty: '%@'; ", v5];
  if ([(NSString *)self->_signingPassword length])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [descriptionCopy appendFormat:@"signingPassword is non-empty: '%@'; ", v6];
}

- (PKJapanIndividualNumberCardMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKJapanIndividualNumberCardMetadata;
  v5 = [(PKIdentityDocumentMetadata *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authentication"];
    [(PKJapanIndividualNumberCardMetadata *)v5 setAuthenticationPassword:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signing"];
    [(PKJapanIndividualNumberCardMetadata *)v5 setSigningPassword:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKJapanIndividualNumberCardMetadata;
  coderCopy = coder;
  [(PKIdentityDocumentMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_authenticationPassword forKey:{@"authentication", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_signingPassword forKey:@"signing"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PKJapanIndividualNumberCardMetadata;
  v4 = [(PKIdentityDocumentMetadata *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_authenticationPassword copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_signingPassword copy];
  v8 = v4[5];
  v4[5] = v7;

  return v4;
}

@end