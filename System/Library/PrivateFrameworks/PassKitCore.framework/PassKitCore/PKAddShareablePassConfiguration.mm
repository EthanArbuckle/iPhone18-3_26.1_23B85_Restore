@interface PKAddShareablePassConfiguration
+ (void)_configurationForPassMetadata:(id)metadata provisioningPolicyIdentifier:(id)identifier primaryAction:(unint64_t)action completion:(id)completion;
- (BOOL)hasRequiredDataForProvisioning;
- (NSArray)metadataProviders;
- (PKAddShareablePassConfiguration)initWithCoder:(id)coder;
- (PKAddShareablePassConfiguration)initWithPrimaryAction:(unint64_t)action credentialsMetadata:(id)metadata;
- (id)_primaryActionToString:(unint64_t)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_extendableDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAddShareablePassConfiguration

+ (void)_configurationForPassMetadata:(id)metadata provisioningPolicyIdentifier:(id)identifier primaryAction:(unint64_t)action completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  metadataCopy = metadata;
  v12 = [[PKAddShareablePassConfiguration alloc] initWithPrimaryAction:action credentialsMetadata:metadataCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke;
  aBlock[3] = &unk_1E79CEA58;
  v27 = completionCopy;
  v13 = v12;
  v25 = v13;
  v26 = identifierCopy;
  v14 = identifierCopy;
  v15 = completionCopy;
  v16 = _Block_copy(aBlock);
  v17 = PKLogFacilityTypeGetObject(0x1CuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v13;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Push Provisioning: Preflighting %@", buf, 0xCu);
  }

  v18 = +[PKPassLibrary sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke_261;
  v21[3] = &unk_1E79CB038;
  v22 = v13;
  v23 = v16;
  v19 = v13;
  v20 = v16;
  [v18 configurePushProvisioningConfigurationV2:v19 completion:v21];
}

uint64_t __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
    v4 = *(*(a1 + 48) + 16);
  }

  return v4();
}

void __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke_261(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke_2;
  v9[3] = &unk_1E79CB4E8;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 40);
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) shareablePassConfiguration];
  v3 = v2;
  if (v2 && !*(a1 + 40))
  {
    v8 = [v2 credentialsMetadata];
    v9 = *(a1 + 48);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

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

- (PKAddShareablePassConfiguration)initWithPrimaryAction:(unint64_t)action credentialsMetadata:(id)metadata
{
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = PKAddShareablePassConfiguration;
  v8 = [(PKAddSecureElementPassConfiguration *)&v11 initWithType:2];
  v9 = v8;
  if (v8)
  {
    v8->_primaryAction = action;
    objc_storeStrong(&v8->_credentialsMetadata, metadata);
  }

  return v9;
}

- (BOOL)hasRequiredDataForProvisioning
{
  credentialsMetadata = [(PKAddShareablePassConfiguration *)self credentialsMetadata];
  v4 = [credentialsMetadata pk_containsObjectPassingTest:&__block_literal_global_59];
  v5 = [credentialsMetadata count];
  v6 = v5 != 0;
  if (v5 && v4)
  {
    v6 = !self->_requiresNonceValidityChecks;
  }

  return v6;
}

uint64_t __65__PKAddShareablePassConfiguration_hasRequiredDataForProvisioning__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 provisioningTarget];
  v3 = [v2 targetDevice];
  v4 = [v2 nonce];

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;

  return v6;
}

- (NSArray)metadataProviders
{
  if (self->_credentialsMetadata)
  {
    return self->_credentialsMetadata;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_extendableDescription:(id)description
{
  v6.receiver = self;
  v6.super_class = PKAddShareablePassConfiguration;
  descriptionCopy = description;
  [(PKAddSecureElementPassConfiguration *)&v6 _extendableDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"credentialsMetadata: '%@'; ", self->_credentialsMetadata];
  [descriptionCopy appendFormat:@"requiresNVC: '%d'; ", self->_requiresNonceValidityChecks];
  v5 = [(PKAddShareablePassConfiguration *)self _primaryActionToString:self->_primaryAction];
  [descriptionCopy appendFormat:@"primaryAction: '%@'; ", v5];
}

- (id)_primaryActionToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Share";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"Add";
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = PKAddShareablePassConfiguration;
  v4 = [(PKAddSecureElementPassConfiguration *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_credentialsMetadata copy];
  v6 = v4[8];
  v4[8] = v5;

  *(v4 + 48) = self->_requiresNonceValidityChecks;
  v4[7] = self->_primaryAction;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKAddShareablePassConfiguration;
  coderCopy = coder;
  [(PKAddSecureElementPassConfiguration *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_credentialsMetadata forKey:{@"credentialsMetadata", v6.receiver, v6.super_class}];
  [coderCopy encodeBool:self->_requiresNonceValidityChecks forKey:@"requiresNonceValidityChecks"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_primaryAction];
  [coderCopy encodeObject:v5 forKey:@"primaryAction"];
}

- (PKAddShareablePassConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAddShareablePassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"credentialsMetadata"];
    credentialsMetadata = v5->_credentialsMetadata;
    v5->_credentialsMetadata = v9;

    v5->_requiresNonceValidityChecks = [coderCopy decodeBoolForKey:@"requiresNonceValidityChecks"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAction"];
    v5->_primaryAction = [v11 unsignedIntegerValue];
  }

  return v5;
}

@end