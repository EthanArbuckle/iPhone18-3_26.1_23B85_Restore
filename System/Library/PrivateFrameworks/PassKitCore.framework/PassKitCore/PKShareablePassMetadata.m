@interface PKShareablePassMetadata
- (NSString)cardConfigurationIdentifier;
- (NSString)cardTemplateIdentifier;
- (NSString)description;
- (NSString)serverEnvironmentIdentifier;
- (PKShareablePassMetadata)initWithCoder:(id)a3;
- (id)_initWithProvisioningCredentialIdentifier:(id)a3 cardConfigurationIdentifier:(id)a4 sharingInstanceIdentifier:(id)a5 passThumbnailImage:(CGImage *)a6 ownerDisplayName:(id)a7 localizedDescription:(id)a8 accountHash:(id)a9 templateIdentifier:(id)a10 relyingPartyIdentifier:(id)a11 requiresUnifiedAccessCapableDevice:(BOOL)a12 passPreviewMetadata:(id)a13;
- (id)_initWithPushProvisioningTarget:(id)a3 passThumbnailImage:(CGImage *)a4 ownerDisplayName:(id)a5 localizedDescription:(id)a6 passPreviewMetadata:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setUnderlyingPreview:(id)a3;
@end

@implementation PKShareablePassMetadata

- (id)_initWithProvisioningCredentialIdentifier:(id)a3 cardConfigurationIdentifier:(id)a4 sharingInstanceIdentifier:(id)a5 passThumbnailImage:(CGImage *)a6 ownerDisplayName:(id)a7 localizedDescription:(id)a8 accountHash:(id)a9 templateIdentifier:(id)a10 relyingPartyIdentifier:(id)a11 requiresUnifiedAccessCapableDevice:(BOOL)a12 passPreviewMetadata:(id)a13
{
  v36 = a13;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v35 = a8;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [PKPushProvisioningTarget alloc];
  v26 = [v24 copy];

  v27 = [v23 copy];
  v28 = [v22 copy];

  v29 = [v19 copy];
  v30 = [v18 copy];

  LOBYTE(v34) = a12;
  v31 = [(PKPushProvisioningTarget *)v25 initWithAppleIdentifier:0 appleIdentifierType:3 provisioningCredentialIdentifier:v26 cardConfigurationIdentifier:v27 sharingInstanceIdentifier:v28 nonce:0 accountHash:v20 templateIdentifier:v29 relyingPartyIdentifier:v30 requiresSimultaneousRequestRouting:v34 targetDevice:0 environmentIdentifier:0];

  v32 = [(PKShareablePassMetadata *)self _initWithPushProvisioningTarget:v31 passThumbnailImage:a6 ownerDisplayName:v21 localizedDescription:v35 passPreviewMetadata:v36];
  return v32;
}

- (id)_initWithPushProvisioningTarget:(id)a3 passThumbnailImage:(CGImage *)a4 ownerDisplayName:(id)a5 localizedDescription:(id)a6 passPreviewMetadata:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
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
    if (v14)
    {
      v21 = [v14 copy];
      [v19 setOwnerDisplayName:v21];
    }

    if (a4)
    {
      [v19 setPassThumbnailImage:a4];
    }

    if (v15)
    {
      v22 = [v15 copy];
      [v19 setLocalizedDescription:v22];
    }

    objc_storeStrong(&v20->_provisioningTarget, a3);
    objc_storeStrong(&v20->_preview, v19);
  }

  return v20;
}

- (void)setUnderlyingPreview:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_preview, a3);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0x1CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Unable to set underlying preview as it is not the expected subclass: %@", &v7, 0xCu);
    }
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
  [v3 appendFormat:@"passPreview: '%@'; ", self->_preview];
  [v3 appendFormat:@"provisioningTarget: '%@';", self->_provisioningTarget];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (PKShareablePassMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKShareablePassMetadata;
  v5 = [(PKShareablePassMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    preview = v5->_preview;
    v5->_preview = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningTarget"];
    provisioningTarget = v5->_provisioningTarget;
    v5->_provisioningTarget = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  preview = self->_preview;
  v15 = a3;
  [v15 encodeObject:preview forKey:@"preview"];
  [v15 encodeObject:self->_provisioningTarget forKey:@"provisioningTarget"];
  v5 = [(PKPushProvisioningTarget *)self->_provisioningTarget provisioningCredentialIdentifier];
  [v15 encodeObject:v5 forKey:@"credentialIdentifier"];

  v6 = [(PKPushProvisioningTarget *)self->_provisioningTarget cardConfigurationIdentifier];
  [v15 encodeObject:v6 forKey:@"cardConfigurationIdentifier"];

  v7 = [(PKPushProvisioningTarget *)self->_provisioningTarget sharingInstanceIdentifier];
  [v15 encodeObject:v7 forKey:@"sharingInstanceIdentifier"];

  v8 = [(PKAddPassMetadataPreview *)self->_preview pkPassThumbnailImage];
  [v15 encodeObject:v8 forKey:@"thumbnailImage"];

  v9 = [(PKAddPassMetadataPreview *)self->_preview localizedDescription];
  [v15 encodeObject:v9 forKey:@"localizedDescription"];

  v10 = [(PKShareablePassMetadataPreview *)self->_preview ownerDisplayName];
  [v15 encodeObject:v10 forKey:@"ownerDisplayName"];

  v11 = [(PKPushProvisioningTarget *)self->_provisioningTarget nonce];
  [v15 encodeObject:v11 forKey:@"nonce"];

  v12 = [(PKPushProvisioningTarget *)self->_provisioningTarget accountHash];
  [v15 encodeObject:v12 forKey:@"accountHash"];

  v13 = [(PKPushProvisioningTarget *)self->_provisioningTarget templateIdentifier];
  [v15 encodeObject:v13 forKey:@"templateIdentifier"];

  v14 = [(PKPushProvisioningTarget *)self->_provisioningTarget relyingPartyIdentifier];
  [v15 encodeObject:v14 forKey:@"relyingPartyIdentifier"];

  [v15 encodeBool:-[PKPushProvisioningTarget requiresSimultaneousRequestRouting](self->_provisioningTarget forKey:{"requiresSimultaneousRequestRouting"), @"requiresUnifiedAccessCapableDevice"}];
  [v15 encodeInteger:-[PKPushProvisioningTarget targetDevice](self->_provisioningTarget forKey:{"targetDevice"), @"targetDevice"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(PKShareablePassMetadataPreview *)self->_preview copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(PKPushProvisioningTarget *)self->_provisioningTarget copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

@end