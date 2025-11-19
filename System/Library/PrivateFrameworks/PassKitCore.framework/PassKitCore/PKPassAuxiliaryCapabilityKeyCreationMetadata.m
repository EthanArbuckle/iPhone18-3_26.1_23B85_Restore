@interface PKPassAuxiliaryCapabilityKeyCreationMetadata
+ (id)createMetadataFromDictionary:(id)a3 forCapability:(id)a4;
+ (id)createMetadataFromDictionary:(id)a3 forDecryptionCapabilityType:(unint64_t)a4;
+ (id)createMetadataFromDictionary:(id)a3 forSignatureCapabilityType:(unint64_t)a4;
- (PKPassAuxiliaryCapabilityKeyCreationMetadata)initWithDictionary:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decryptionISO18013;
- (id)signatureAliroHome;
- (id)signatureAliroHydra;
- (id)signatureCarConnectivityConsortium;
- (id)signatureFido;
- (id)signatureIdentityAccount;
- (id)signatureUnifiedAccessHome;
- (id)signatureUnifiedAccessHydra;
@end

@implementation PKPassAuxiliaryCapabilityKeyCreationMetadata

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassAuxiliaryCapabilityKeyCreationMetadata;
  return [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)&v3 init];
}

- (PKPassAuxiliaryCapabilityKeyCreationMetadata)initWithDictionary:(id)a3
{
  if (a3)
  {

    return [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _init];
  }

  else
  {

    return 0;
  }
}

+ (id)createMetadataFromDictionary:(id)a3 forCapability:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 role];
  if (v8 == 2)
  {
    v9 = [a1 createMetadataFromDictionary:v6 forSignatureCapabilityType:{objc_msgSend(v7, "type")}];
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v9 = [a1 createMetadataFromDictionary:v6 forDecryptionCapabilityType:{objc_msgSend(v7, "type")}];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)createMetadataFromDictionary:(id)a3 forDecryptionCapabilityType:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKPassAuxiliaryCapabilityKeyCreationMetadata_createMetadataFromDictionary_forDecryptionCapabilityType___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5__8__0l;
  aBlock[4] = a4;
  v6 = _Block_copy(aBlock);
  v7 = v6[2]();
  if (v7)
  {
    v8 = v7;
    v9 = [[v7 alloc] initWithDictionary:v5];
    if (v9)
    {
      goto LABEL_7;
    }

    v10 = PKLogFacilityTypeGetObject(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to initialize %@ metadata from %@", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

id __105__PKPassAuxiliaryCapabilityKeyCreationMetadata_createMetadataFromDictionary_forDecryptionCapabilityType___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)createMetadataFromDictionary:(id)a3 forSignatureCapabilityType:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__PKPassAuxiliaryCapabilityKeyCreationMetadata_createMetadataFromDictionary_forSignatureCapabilityType___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5__8__0l;
  aBlock[4] = a4;
  v6 = _Block_copy(aBlock);
  v7 = v6[2]();
  if (v7)
  {
    v8 = v7;
    v9 = [[v7 alloc] initWithDictionary:v5];
    if (v9)
    {
      goto LABEL_7;
    }

    v10 = PKLogFacilityTypeGetObject(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to initialize %@ metadata from %@", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

id __104__PKPassAuxiliaryCapabilityKeyCreationMetadata_createMetadataFromDictionary_forSignatureCapabilityType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) - 1;
  if (v2 <= 6 && ((0x65u >> v2) & 1) != 0)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKPassAuxiliaryCapabilityKeyCreationMetadata);
  [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _copyInto:v4];
  return v4;
}

- (id)decryptionISO18013
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureCarConnectivityConsortium
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureFido
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureIdentityAccount
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureUnifiedAccessHydra
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureUnifiedAccessHome
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureAliroHydra
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)signatureAliroHome
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end