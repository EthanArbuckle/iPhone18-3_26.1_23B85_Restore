@interface PKAddIdentityDocumentConfiguration
+ (void)configurationForMetadata:(id)metadata completion:(id)completion;
- (BOOL)hasRequiredDataForProvisioning;
- (NSArray)metadataProviders;
- (PKAddIdentityDocumentConfiguration)initWithCoder:(id)coder;
- (PKAddIdentityDocumentConfiguration)initWithMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAddIdentityDocumentConfiguration

- (PKAddIdentityDocumentConfiguration)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = PKAddIdentityDocumentConfiguration;
  v6 = [(PKAddSecureElementPassConfiguration *)&v9 initWithType:4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, metadata);
  }

  return v7;
}

+ (void)configurationForMetadata:(id)metadata completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  metadataCopy = metadata;
  v7 = [[PKAddIdentityDocumentConfiguration alloc] initWithMetadata:metadataCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKAddIdentityDocumentConfiguration_configurationForMetadata_completion___block_invoke;
  aBlock[3] = &unk_1E79C4A68;
  v20 = completionCopy;
  v8 = v7;
  v19 = v8;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  v11 = PKLogFacilityTypeGetObject(0x1CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Push Provisioning: Preflighting %@", buf, 0xCu);
  }

  v12 = +[PKPassLibrary sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PKAddIdentityDocumentConfiguration_configurationForMetadata_completion___block_invoke_255;
  v15[3] = &unk_1E79CB038;
  v16 = v8;
  v17 = v10;
  v13 = v8;
  v14 = v10;
  [v12 configurePushProvisioningConfigurationV2:v13 completion:v15];
}

uint64_t __74__PKAddIdentityDocumentConfiguration_configurationForMetadata_completion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3 || (a2 & 1) == 0)
  {
    return (*(v4 + 16))(v4, 0);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32), 0);
  }
}

void __74__PKAddIdentityDocumentConfiguration_configurationForMetadata_completion___block_invoke_255(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKAddIdentityDocumentConfiguration_configurationForMetadata_completion___block_invoke_2;
  v9[3] = &unk_1E79CB4E8;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 40);
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __74__PKAddIdentityDocumentConfiguration_configurationForMetadata_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identityDocumentConfiguration];
  v3 = v2;
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v8 = [v2 metadata];
    v9 = *(a1 + 48);
    v10 = *(v9 + 56);
    *(v9 + 56) = v8;

    *(*(a1 + 48) + 48) = [v3 requiresNonceValidityChecks];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unable to fetch provisioning nonces with error: %@", &v11, 0xCu);
    }

    v6 = *(a1 + 56);
    if (*(a1 + 40))
    {
      (*(v6 + 16))(*(a1 + 56), 0);
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKAddSecureElementPassErrorDomain" code:0 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

- (BOOL)hasRequiredDataForProvisioning
{
  metadata = self->_metadata;
  if (!metadata)
  {
    return 0;
  }

  provisioningTarget = [(PKIdentityDocumentMetadata *)metadata provisioningTarget];
  nonce = [provisioningTarget nonce];
  v8 = (nonce && (v6 = nonce, v7 = [provisioningTarget targetDevice], v6, v7) || !self->_requiresNonceValidityChecks) && -[PKIdentityDocumentMetadata _hasRequiredDataForProvisioning](self->_metadata, "_hasRequiredDataForProvisioning");

  return v8;
}

- (NSArray)metadataProviders
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_metadata)
  {
    v4[0] = self->_metadata;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)_extendableDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKAddIdentityDocumentConfiguration;
  descriptionCopy = description;
  [(PKAddSecureElementPassConfiguration *)&v5 _extendableDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"metadata: '%@'; ", self->_metadata];
  [descriptionCopy appendFormat:@"requiresNVC: '%d'; ", self->_requiresNonceValidityChecks];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = PKAddIdentityDocumentConfiguration;
  v4 = [(PKAddSecureElementPassConfiguration *)&v8 copyWithZone:zone];
  v5 = [(PKIdentityDocumentMetadata *)self->_metadata copy];
  v6 = v4[7];
  v4[7] = v5;

  *(v4 + 48) = self->_requiresNonceValidityChecks;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAddIdentityDocumentConfiguration;
  coderCopy = coder;
  [(PKAddSecureElementPassConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_metadata forKey:{@"metadata", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_requiresNonceValidityChecks forKey:@"requiresNonceValidityChecks"];
}

- (PKAddIdentityDocumentConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKAddIdentityDocumentConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v11;

    v5->_requiresNonceValidityChecks = [coderCopy decodeBoolForKey:@"requiresNonceValidityChecks"];
  }

  return v5;
}

@end