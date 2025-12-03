@interface PKIdentityDocumentMetadata
- (NSString)cardConfigurationIdentifier;
- (NSString)cardTemplateIdentifier;
- (NSString)description;
- (NSString)serverEnvironmentIdentifier;
- (PKIdentityDocumentMetadata)initWithCoder:(id)coder;
- (PKIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardConfigurationIdentifier:(id)configurationIdentifier cardTemplateIdentifier:(id)templateIdentifier requiresSimultaneousRequestRouting:(BOOL)routing issuingCountryCode:(id)code documentType:(int64_t)type preview:(id)self0;
- (PKIdentityDocumentMetadata)initWithPushProvisioningTarget:(id)target preview:(id)preview;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)documentType;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityDocumentMetadata

- (PKIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardConfigurationIdentifier:(id)configurationIdentifier cardTemplateIdentifier:(id)templateIdentifier requiresSimultaneousRequestRouting:(BOOL)routing issuingCountryCode:(id)code documentType:(int64_t)type preview:(id)self0
{
  previewCopy = preview;
  codeCopy = code;
  templateIdentifierCopy = templateIdentifier;
  configurationIdentifierCopy = configurationIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  identifierCopy = identifier;
  v20 = [PKPushProvisioningTarget alloc];
  v21 = [identifierCopy copy];

  v22 = [configurationIdentifierCopy copy];
  v23 = [instanceIdentifierCopy copy];

  v24 = [templateIdentifierCopy copy];
  v25 = [codeCopy copy];

  LOBYTE(v29) = routing;
  v26 = [(PKPushProvisioningTarget *)v20 initWithAppleIdentifier:0 appleIdentifierType:3 provisioningCredentialIdentifier:v21 cardConfigurationIdentifier:v22 sharingInstanceIdentifier:v23 nonce:0 accountHash:0 templateIdentifier:v24 relyingPartyIdentifier:0 requiresSimultaneousRequestRouting:v29 targetDevice:0 issuingCountryCode:v25 documentType:type environmentIdentifier:0];

  v27 = [(PKIdentityDocumentMetadata *)self initWithPushProvisioningTarget:v26 preview:previewCopy];
  return v27;
}

- (PKIdentityDocumentMetadata)initWithPushProvisioningTarget:(id)target preview:(id)preview
{
  targetCopy = target;
  previewCopy = preview;
  v12.receiver = self;
  v12.super_class = PKIdentityDocumentMetadata;
  v9 = [(PKIdentityDocumentMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provisioningTarget, target);
    objc_storeStrong(&v10->_underlyingPreview, preview);
  }

  return v10;
}

- (int64_t)documentType
{
  documentType = [(PKPushProvisioningTarget *)self->_provisioningTarget documentType];
  if ((documentType - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1ADB9A990[documentType - 1];
  }
}

- (NSString)cardTemplateIdentifier
{
  templateIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget templateIdentifier];
  v3 = templateIdentifier;
  if (templateIdentifier)
  {
    v4 = templateIdentifier;
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
  cardConfigurationIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget cardConfigurationIdentifier];
  v3 = cardConfigurationIdentifier;
  if (cardConfigurationIdentifier)
  {
    v4 = cardConfigurationIdentifier;
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
  environmentIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget environmentIdentifier];
  v3 = environmentIdentifier;
  if (environmentIdentifier)
  {
    v4 = environmentIdentifier;
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

- (void)_extendableDescription:(id)description
{
  underlyingPreview = self->_underlyingPreview;
  descriptionCopy = description;
  [descriptionCopy appendFormat:@"passPreview: '%@'; ", underlyingPreview];
  [descriptionCopy appendFormat:@"provisioningTarget: '%@';", self->_provisioningTarget];
}

- (PKIdentityDocumentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKIdentityDocumentMetadata;
  v5 = [(PKIdentityDocumentMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    underlyingPreview = v5->_underlyingPreview;
    v5->_underlyingPreview = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTarget"];
    provisioningTarget = v5->_provisioningTarget;
    v5->_provisioningTarget = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  underlyingPreview = self->_underlyingPreview;
  coderCopy = coder;
  [coderCopy encodeObject:underlyingPreview forKey:@"preview"];
  [coderCopy encodeObject:self->_provisioningTarget forKey:@"provisioningTarget"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(PKAddPassMetadataPreview *)self->_underlyingPreview copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(PKPushProvisioningTarget *)self->_provisioningTarget copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

@end