@interface PKShareablePassMetadata
- (NSString)cardConfigurationIdentifier;
- (NSString)cardTemplateIdentifier;
- (NSString)description;
- (NSString)serverEnvironmentIdentifier;
- (PKShareablePassMetadata)initWithCoder:(id)coder;
- (id)_initWithProvisioningCredentialIdentifier:(id)identifier cardConfigurationIdentifier:(id)configurationIdentifier sharingInstanceIdentifier:(id)instanceIdentifier passThumbnailImage:(CGImage *)image ownerDisplayName:(id)name localizedDescription:(id)description accountHash:(id)hash templateIdentifier:(id)self0 relyingPartyIdentifier:(id)self1 requiresUnifiedAccessCapableDevice:(BOOL)self2 passPreviewMetadata:(id)self3;
- (id)_initWithPushProvisioningTarget:(id)target passThumbnailImage:(CGImage *)image ownerDisplayName:(id)name localizedDescription:(id)description passPreviewMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setUnderlyingPreview:(id)preview;
@end

@implementation PKShareablePassMetadata

- (id)_initWithProvisioningCredentialIdentifier:(id)identifier cardConfigurationIdentifier:(id)configurationIdentifier sharingInstanceIdentifier:(id)instanceIdentifier passThumbnailImage:(CGImage *)image ownerDisplayName:(id)name localizedDescription:(id)description accountHash:(id)hash templateIdentifier:(id)self0 relyingPartyIdentifier:(id)self1 requiresUnifiedAccessCapableDevice:(BOOL)self2 passPreviewMetadata:(id)self3
{
  metadataCopy = metadata;
  partyIdentifierCopy = partyIdentifier;
  templateIdentifierCopy = templateIdentifier;
  hashCopy = hash;
  descriptionCopy = description;
  nameCopy = name;
  instanceIdentifierCopy = instanceIdentifier;
  configurationIdentifierCopy = configurationIdentifier;
  identifierCopy = identifier;
  v25 = [PKPushProvisioningTarget alloc];
  v26 = [identifierCopy copy];

  v27 = [configurationIdentifierCopy copy];
  v28 = [instanceIdentifierCopy copy];

  v29 = [templateIdentifierCopy copy];
  v30 = [partyIdentifierCopy copy];

  LOBYTE(v34) = device;
  v31 = [(PKPushProvisioningTarget *)v25 initWithAppleIdentifier:0 appleIdentifierType:3 provisioningCredentialIdentifier:v26 cardConfigurationIdentifier:v27 sharingInstanceIdentifier:v28 nonce:0 accountHash:hashCopy templateIdentifier:v29 relyingPartyIdentifier:v30 requiresSimultaneousRequestRouting:v34 targetDevice:0 environmentIdentifier:0];

  v32 = [(PKShareablePassMetadata *)self _initWithPushProvisioningTarget:v31 passThumbnailImage:image ownerDisplayName:nameCopy localizedDescription:descriptionCopy passPreviewMetadata:metadataCopy];
  return v32;
}

- (id)_initWithPushProvisioningTarget:(id)target passThumbnailImage:(CGImage *)image ownerDisplayName:(id)name localizedDescription:(id)description passPreviewMetadata:(id)metadata
{
  targetCopy = target;
  nameCopy = name;
  descriptionCopy = description;
  metadataCopy = metadata;
  v17 = metadataCopy;
  if (metadataCopy)
  {
    v18 = metadataCopy;
  }

  else
  {
    v18 = [[PKShareablePassMetadataPreview alloc] _initWithPassThumbnail:0 localizedDescription:0 provisioningTemplateIdentifier:0];
  }

  v19 = v18;
  v24.receiver = self;
  v24.super_class = PKShareablePassMetadata;
  v20 = [(PKShareablePassMetadata *)&v24 init];
  if (v20)
  {
    if (nameCopy)
    {
      v21 = [nameCopy copy];
      [v19 setOwnerDisplayName:v21];
    }

    if (image)
    {
      [v19 setPassThumbnailImage:image];
    }

    if (descriptionCopy)
    {
      v22 = [descriptionCopy copy];
      [v19 setLocalizedDescription:v22];
    }

    objc_storeStrong(&v20->_provisioningTarget, target);
    objc_storeStrong(&v20->_preview, v19);
  }

  return v20;
}

- (void)setUnderlyingPreview:(id)preview
{
  v9 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_preview, preview);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0x1CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = previewCopy;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Unable to set underlying preview as it is not the expected subclass: %@", &v7, 0xCu);
    }
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
  [v3 appendFormat:@"passPreview: '%@'; ", self->_preview];
  [v3 appendFormat:@"provisioningTarget: '%@';", self->_provisioningTarget];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (PKShareablePassMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKShareablePassMetadata;
  v5 = [(PKShareablePassMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    preview = v5->_preview;
    v5->_preview = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTarget"];
    provisioningTarget = v5->_provisioningTarget;
    v5->_provisioningTarget = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  preview = self->_preview;
  coderCopy = coder;
  [coderCopy encodeObject:preview forKey:@"preview"];
  [coderCopy encodeObject:self->_provisioningTarget forKey:@"provisioningTarget"];
  provisioningCredentialIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget provisioningCredentialIdentifier];
  [coderCopy encodeObject:provisioningCredentialIdentifier forKey:@"credentialIdentifier"];

  cardConfigurationIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget cardConfigurationIdentifier];
  [coderCopy encodeObject:cardConfigurationIdentifier forKey:@"cardConfigurationIdentifier"];

  sharingInstanceIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget sharingInstanceIdentifier];
  [coderCopy encodeObject:sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];

  pkPassThumbnailImage = [(PKAddPassMetadataPreview *)self->_preview pkPassThumbnailImage];
  [coderCopy encodeObject:pkPassThumbnailImage forKey:@"thumbnailImage"];

  localizedDescription = [(PKAddPassMetadataPreview *)self->_preview localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  ownerDisplayName = [(PKShareablePassMetadataPreview *)self->_preview ownerDisplayName];
  [coderCopy encodeObject:ownerDisplayName forKey:@"ownerDisplayName"];

  nonce = [(PKPushProvisioningTarget *)self->_provisioningTarget nonce];
  [coderCopy encodeObject:nonce forKey:@"nonce"];

  accountHash = [(PKPushProvisioningTarget *)self->_provisioningTarget accountHash];
  [coderCopy encodeObject:accountHash forKey:@"accountHash"];

  templateIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget templateIdentifier];
  [coderCopy encodeObject:templateIdentifier forKey:@"templateIdentifier"];

  relyingPartyIdentifier = [(PKPushProvisioningTarget *)self->_provisioningTarget relyingPartyIdentifier];
  [coderCopy encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];

  [coderCopy encodeBool:-[PKPushProvisioningTarget requiresSimultaneousRequestRouting](self->_provisioningTarget forKey:{"requiresSimultaneousRequestRouting"), @"requiresUnifiedAccessCapableDevice"}];
  [coderCopy encodeInteger:-[PKPushProvisioningTarget targetDevice](self->_provisioningTarget forKey:{"targetDevice"), @"targetDevice"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(PKShareablePassMetadataPreview *)self->_preview copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(PKPushProvisioningTarget *)self->_provisioningTarget copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

@end