@interface OTInheritanceKey(CDP)
- (id)accessCode;
- (uint64_t)initFromAccessKey:()CDP;
@end

@implementation OTInheritanceKey(CDP)

- (uint64_t)initFromAccessKey:()CDP
{
  v4 = a3;
  wrappingKeyData = [v4 wrappingKeyData];
  v6 = [wrappingKeyData length];

  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [OTInheritanceKey(CDP) initFromAccessKey:v7];
    }

    v8 = objc_alloc(MEMORY[0x1E69B7CD8]);
    wrappedKeyData = [v4 wrappedKeyData];
    wrappingKeyData2 = [v4 wrappingKeyData];
    beneficiaryID = [v4 beneficiaryID];
    v22 = 0;
    v12 = &v22;
    v13 = [v8 initWithWrappedKeyData:wrappedKeyData wrappingKeyData:wrappingKeyData2 uuid:beneficiaryID error:&v22];
  }

  else
  {
    wrappingKeyString = [v4 wrappingKeyString];
    v15 = [wrappingKeyString length];

    if (!v15)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [OTInheritanceKey(CDP) initFromAccessKey:v16];
    }

    v17 = objc_alloc(MEMORY[0x1E69B7CD8]);
    wrappedKeyData = [v4 wrappedKeyData];
    wrappingKeyData2 = [v4 wrappingKeyString];
    beneficiaryID = [v4 beneficiaryID];
    v21 = 0;
    v12 = &v21;
    v13 = [v17 initWithWrappedKeyData:wrappedKeyData wrappingKeyString:wrappingKeyData2 uuid:beneficiaryID error:&v21];
  }

  v15 = v13;
  v18 = *v12;

  if (v18)
  {
    v19 = _CDPLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(OTInheritanceKey(CDP) *)v18 initFromAccessKey:v19];
    }
  }

LABEL_14:

  return v15;
}

- (id)accessCode
{
  v2 = objc_alloc(MEMORY[0x1E698DD88]);
  uuid = [self uuid];
  v4 = [v2 initWithBeneficiairyIdentifier:uuid];

  claimTokenData = [self claimTokenData];
  [v4 setClaimTokenData:claimTokenData];

  claimTokenString = [self claimTokenString];
  [v4 setClaimTokenString:claimTokenString];

  wrappingKeyData = [self wrappingKeyData];
  [v4 setWrappingKeyData:wrappingKeyData];

  wrappingKeyString = [self wrappingKeyString];
  [v4 setWrappingKeyString:wrappingKeyString];

  wrappedKeyData = [self wrappedKeyData];
  [v4 setWrappedKeyData:wrappedKeyData];

  wrappedKeyString = [self wrappedKeyString];
  [v4 setWrappedKeyString:wrappedKeyString];

  return v4;
}

- (void)initFromAccessKey:()CDP .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Error creating key from access key string. Error - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end