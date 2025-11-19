@interface OTInheritanceKey(CDP)
- (id)accessCode;
- (uint64_t)initFromAccessKey:()CDP;
@end

@implementation OTInheritanceKey(CDP)

- (uint64_t)initFromAccessKey:()CDP
{
  v4 = a3;
  v5 = [v4 wrappingKeyData];
  v6 = [v5 length];

  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [OTInheritanceKey(CDP) initFromAccessKey:v7];
    }

    v8 = objc_alloc(MEMORY[0x1E69B7CD8]);
    v9 = [v4 wrappedKeyData];
    v10 = [v4 wrappingKeyData];
    v11 = [v4 beneficiaryID];
    v22 = 0;
    v12 = &v22;
    v13 = [v8 initWithWrappedKeyData:v9 wrappingKeyData:v10 uuid:v11 error:&v22];
  }

  else
  {
    v14 = [v4 wrappingKeyString];
    v15 = [v14 length];

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
    v9 = [v4 wrappedKeyData];
    v10 = [v4 wrappingKeyString];
    v11 = [v4 beneficiaryID];
    v21 = 0;
    v12 = &v21;
    v13 = [v17 initWithWrappedKeyData:v9 wrappingKeyString:v10 uuid:v11 error:&v21];
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
  v3 = [a1 uuid];
  v4 = [v2 initWithBeneficiairyIdentifier:v3];

  v5 = [a1 claimTokenData];
  [v4 setClaimTokenData:v5];

  v6 = [a1 claimTokenString];
  [v4 setClaimTokenString:v6];

  v7 = [a1 wrappingKeyData];
  [v4 setWrappingKeyData:v7];

  v8 = [a1 wrappingKeyString];
  [v4 setWrappingKeyString:v8];

  v9 = [a1 wrappedKeyData];
  [v4 setWrappedKeyData:v9];

  v10 = [a1 wrappedKeyString];
  [v4 setWrappedKeyString:v10];

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