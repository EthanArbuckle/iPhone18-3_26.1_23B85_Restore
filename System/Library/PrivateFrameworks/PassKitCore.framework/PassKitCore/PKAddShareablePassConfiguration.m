@interface PKAddShareablePassConfiguration
+ (void)_configurationForPassMetadata:(id)a3 provisioningPolicyIdentifier:(id)a4 primaryAction:(unint64_t)a5 completion:(id)a6;
- (BOOL)hasRequiredDataForProvisioning;
- (NSArray)metadataProviders;
- (PKAddShareablePassConfiguration)initWithCoder:(id)a3;
- (PKAddShareablePassConfiguration)initWithPrimaryAction:(unint64_t)a3 credentialsMetadata:(id)a4;
- (id)_primaryActionToString:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_extendableDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAddShareablePassConfiguration

+ (void)_configurationForPassMetadata:(id)a3 provisioningPolicyIdentifier:(id)a4 primaryAction:(unint64_t)a5 completion:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [[PKAddShareablePassConfiguration alloc] initWithPrimaryAction:a5 credentialsMetadata:v11];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PKAddShareablePassConfiguration__configurationForPassMetadata_provisioningPolicyIdentifier_primaryAction_completion___block_invoke;
  aBlock[3] = &unk_1E79CEA58;
  v27 = v10;
  v13 = v12;
  v25 = v13;
  v26 = v9;
  v14 = v9;
  v15 = v10;
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

- (PKAddShareablePassConfiguration)initWithPrimaryAction:(unint64_t)a3 credentialsMetadata:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKAddShareablePassConfiguration;
  v8 = [(PKAddSecureElementPassConfiguration *)&v11 initWithType:2];
  v9 = v8;
  if (v8)
  {
    v8->_primaryAction = a3;
    objc_storeStrong(&v8->_credentialsMetadata, a4);
  }

  return v9;
}

- (BOOL)hasRequiredDataForProvisioning
{
  v3 = [(PKAddShareablePassConfiguration *)self credentialsMetadata];
  v4 = [v3 pk_containsObjectPassingTest:&__block_literal_global_59];
  v5 = [v3 count];
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

- (void)_extendableDescription:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKAddShareablePassConfiguration;
  v4 = a3;
  [(PKAddSecureElementPassConfiguration *)&v6 _extendableDescription:v4];
  [v4 appendFormat:@"credentialsMetadata: '%@'; ", self->_credentialsMetadata];
  [v4 appendFormat:@"requiresNVC: '%d'; ", self->_requiresNonceValidityChecks];
  v5 = [(PKAddShareablePassConfiguration *)self _primaryActionToString:self->_primaryAction];
  [v4 appendFormat:@"primaryAction: '%@'; ", v5];
}

- (id)_primaryActionToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Share";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Add";
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PKAddShareablePassConfiguration;
  v4 = [(PKAddSecureElementPassConfiguration *)&v8 copyWithZone:a3];
  v5 = [(NSArray *)self->_credentialsMetadata copy];
  v6 = v4[8];
  v4[8] = v5;

  *(v4 + 48) = self->_requiresNonceValidityChecks;
  v4[7] = self->_primaryAction;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKAddShareablePassConfiguration;
  v4 = a3;
  [(PKAddSecureElementPassConfiguration *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_credentialsMetadata forKey:{@"credentialsMetadata", v6.receiver, v6.super_class}];
  [v4 encodeBool:self->_requiresNonceValidityChecks forKey:@"requiresNonceValidityChecks"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_primaryAction];
  [v4 encodeObject:v5 forKey:@"primaryAction"];
}

- (PKAddShareablePassConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAddShareablePassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"credentialsMetadata"];
    credentialsMetadata = v5->_credentialsMetadata;
    v5->_credentialsMetadata = v9;

    v5->_requiresNonceValidityChecks = [v4 decodeBoolForKey:@"requiresNonceValidityChecks"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAction"];
    v5->_primaryAction = [v11 unsignedIntegerValue];
  }

  return v5;
}

@end