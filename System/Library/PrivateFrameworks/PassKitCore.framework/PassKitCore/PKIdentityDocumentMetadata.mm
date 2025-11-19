@interface PKIdentityDocumentMetadata
- (NSString)cardConfigurationIdentifier;
- (NSString)cardTemplateIdentifier;
- (NSString)description;
- (NSString)serverEnvironmentIdentifier;
- (PKIdentityDocumentMetadata)initWithCoder:(id)a3;
- (PKIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)a3 sharingInstanceIdentifier:(id)a4 cardConfigurationIdentifier:(id)a5 cardTemplateIdentifier:(id)a6 requiresSimultaneousRequestRouting:(BOOL)a7 issuingCountryCode:(id)a8 documentType:(int64_t)a9 preview:(id)a10;
- (PKIdentityDocumentMetadata)initWithPushProvisioningTarget:(id)a3 preview:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)documentType;
- (void)_extendableDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIdentityDocumentMetadata

- (PKIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)a3 sharingInstanceIdentifier:(id)a4 cardConfigurationIdentifier:(id)a5 cardTemplateIdentifier:(id)a6 requiresSimultaneousRequestRouting:(BOOL)a7 issuingCountryCode:(id)a8 documentType:(int64_t)a9 preview:(id)a10
{
  v31 = a10;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [PKPushProvisioningTarget alloc];
  v21 = [v19 copy];

  v22 = [v17 copy];
  v23 = [v18 copy];

  v24 = [v16 copy];
  v25 = [v15 copy];

  LOBYTE(v29) = a7;
  v26 = [(PKPushProvisioningTarget *)v20 initWithAppleIdentifier:0 appleIdentifierType:3 provisioningCredentialIdentifier:v21 cardConfigurationIdentifier:v22 sharingInstanceIdentifier:v23 nonce:0 accountHash:0 templateIdentifier:v24 relyingPartyIdentifier:0 requiresSimultaneousRequestRouting:v29 targetDevice:0 issuingCountryCode:v25 documentType:a9 environmentIdentifier:0];

  v27 = [(PKIdentityDocumentMetadata *)self initWithPushProvisioningTarget:v26 preview:v31];
  return v27;
}

- (PKIdentityDocumentMetadata)initWithPushProvisioningTarget:(id)a3 preview:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKIdentityDocumentMetadata;
  v9 = [(PKIdentityDocumentMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provisioningTarget, a3);
    objc_storeStrong(&v10->_underlyingPreview, a4);
  }

  return v10;
}

- (int64_t)documentType
{
  v2 = [(PKPushProvisioningTarget *)self->_provisioningTarget documentType];
  if ((v2 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1ADB9A990[v2 - 1];
  }
}

- (NSString)cardTemplateIdentifier
{
  v2 = [(PKPushProvisioningTarget *)self->_provisioningTarget templateIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F227FD28;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)cardConfigurationIdentifier
{
  v2 = [(PKPushProvisioningTarget *)self->_provisioningTarget cardConfigurationIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F227FD28;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)serverEnvironmentIdentifier
{
  v2 = [(PKPushProvisioningTarget *)self->_provisioningTarget environmentIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F227FD28;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(PKIdentityDocumentMetadata *)self _extendableDescription:v3];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (void)_extendableDescription:(id)a3
{
  underlyingPreview = self->_underlyingPreview;
  v5 = a3;
  [v5 appendFormat:@"passPreview: '%@'; ", underlyingPreview];
  [v5 appendFormat:@"provisioningTarget: '%@';", self->_provisioningTarget];
}

- (PKIdentityDocumentMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKIdentityDocumentMetadata;
  v5 = [(PKIdentityDocumentMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    underlyingPreview = v5->_underlyingPreview;
    v5->_underlyingPreview = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTarget"];
    provisioningTarget = v5->_provisioningTarget;
    v5->_provisioningTarget = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  underlyingPreview = self->_underlyingPreview;
  v5 = a3;
  [v5 encodeObject:underlyingPreview forKey:@"preview"];
  [v5 encodeObject:self->_provisioningTarget forKey:@"provisioningTarget"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(PKAddPassMetadataPreview *)self->_underlyingPreview copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(PKPushProvisioningTarget *)self->_provisioningTarget copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

@end