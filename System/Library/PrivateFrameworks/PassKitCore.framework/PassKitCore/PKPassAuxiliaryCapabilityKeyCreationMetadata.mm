@interface PKPassAuxiliaryCapabilityKeyCreationMetadata
+ (id)createMetadataFromDictionary:(id)dictionary forCapability:(id)capability;
+ (id)createMetadataFromDictionary:(id)dictionary forDecryptionCapabilityType:(unint64_t)type;
+ (id)createMetadataFromDictionary:(id)dictionary forSignatureCapabilityType:(unint64_t)type;
- (PKPassAuxiliaryCapabilityKeyCreationMetadata)initWithDictionary:(id)dictionary;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (PKPassAuxiliaryCapabilityKeyCreationMetadata)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {

    return [(PKPassAuxiliaryCapabilityKeyCreationMetadata *)self _init];
  }

  else
  {

    return 0;
  }
}

+ (id)createMetadataFromDictionary:(id)dictionary forCapability:(id)capability
{
  dictionaryCopy = dictionary;
  capabilityCopy = capability;
  role = [capabilityCopy role];
  if (role == 2)
  {
    v9 = [self createMetadataFromDictionary:dictionaryCopy forSignatureCapabilityType:{objc_msgSend(capabilityCopy, "type")}];
    goto LABEL_5;
  }

  if (role == 1)
  {
    v9 = [self createMetadataFromDictionary:dictionaryCopy forDecryptionCapabilityType:{objc_msgSend(capabilityCopy, "type")}];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)createMetadataFromDictionary:(id)dictionary forDecryptionCapabilityType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PKPassAuxiliaryCapabilityKeyCreationMetadata_createMetadataFromDictionary_forDecryptionCapabilityType___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5__8__0l;
  aBlock[4] = type;
  v6 = _Block_copy(aBlock);
  v7 = v6[2]();
  if (v7)
  {
    v8 = v7;
    v9 = [[v7 alloc] initWithDictionary:dictionaryCopy];
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
      v16 = dictionaryCopy;
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

+ (id)createMetadataFromDictionary:(id)dictionary forSignatureCapabilityType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__PKPassAuxiliaryCapabilityKeyCreationMetadata_createMetadataFromDictionary_forSignatureCapabilityType___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5__8__0l;
  aBlock[4] = type;
  v6 = _Block_copy(aBlock);
  v7 = v6[2]();
  if (v7)
  {
    v8 = v7;
    v9 = [[v7 alloc] initWithDictionary:dictionaryCopy];
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
      v16 = dictionaryCopy;
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

- (id)copyWithZone:(_NSZone *)zone
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureCarConnectivityConsortium
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureFido
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureIdentityAccount
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureUnifiedAccessHydra
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureUnifiedAccessHome
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureAliroHydra
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)signatureAliroHome
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end