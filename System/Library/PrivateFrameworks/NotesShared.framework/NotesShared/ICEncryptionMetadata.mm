@interface ICEncryptionMetadata
+ (id)makeForV1CipherWithObjectIdentifier:(id)identifier salt:(id)salt iterationCount:(unint64_t)count hint:(id)hint;
+ (id)makeForV1NeoCipherWithObjectIdentifier:(id)identifier salt:(id)salt iterationCount:(unint64_t)count hint:(id)hint;
+ (id)makeForV1NeoSidecarCipherWithObjectIdentifier:(id)identifier;
+ (id)makeForV2CipherWithObjectIdentifier:(id)identifier accountKeyIdentifier:(id)keyIdentifier;
+ (id)makeFromMetadata:(id)metadata forObjectIdentifier:(id)identifier;
- (BOOL)deserializeWithData:(id)data authenticatedData:(id)authenticatedData;
- (BOOL)isEqual:(id)equal;
- (BOOL)serialize;
- (BOOL)validate;
- (ICEncryptionMetadata)initWithCipherVersion:(int64_t)version objectIdentifier:(id)identifier passphraseSalt:(id)salt passphraseIterationCount:(unint64_t)count passphraseHint:(id)hint accountKeyIdentifier:(id)keyIdentifier;
- (ICEncryptionMetadata)initWithSerializedData:(id)data authenticatedData:(id)authenticatedData;
- (id)description;
- (unint64_t)hash;
- (void)serialize;
- (void)validate;
@end

@implementation ICEncryptionMetadata

+ (id)makeForV1CipherWithObjectIdentifier:(id)identifier salt:(id)salt iterationCount:(unint64_t)count hint:(id)hint
{
  hintCopy = hint;
  saltCopy = salt;
  identifierCopy = identifier;
  v12 = [[ICEncryptionMetadata alloc] initWithCipherVersion:0 objectIdentifier:identifierCopy passphraseSalt:saltCopy passphraseIterationCount:count passphraseHint:hintCopy accountKeyIdentifier:0];

  return v12;
}

+ (id)makeForV1NeoCipherWithObjectIdentifier:(id)identifier salt:(id)salt iterationCount:(unint64_t)count hint:(id)hint
{
  hintCopy = hint;
  saltCopy = salt;
  identifierCopy = identifier;
  v12 = [[ICEncryptionMetadata alloc] initWithCipherVersion:2 objectIdentifier:identifierCopy passphraseSalt:saltCopy passphraseIterationCount:count passphraseHint:hintCopy accountKeyIdentifier:0];

  return v12;
}

+ (id)makeForV1NeoSidecarCipherWithObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[ICEncryptionMetadata alloc] initWithCipherVersion:3 objectIdentifier:identifierCopy passphraseSalt:0 passphraseIterationCount:0 passphraseHint:0 accountKeyIdentifier:0];

  return v4;
}

+ (id)makeForV2CipherWithObjectIdentifier:(id)identifier accountKeyIdentifier:(id)keyIdentifier
{
  keyIdentifierCopy = keyIdentifier;
  identifierCopy = identifier;
  v7 = [[ICEncryptionMetadata alloc] initWithCipherVersion:1 objectIdentifier:identifierCopy passphraseSalt:0 passphraseIterationCount:0 passphraseHint:0 accountKeyIdentifier:keyIdentifierCopy];

  return v7;
}

+ (id)makeFromMetadata:(id)metadata forObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  v7 = [ICEncryptionMetadata alloc];
  cipherVersion = [metadataCopy cipherVersion];
  passphraseSalt = [metadataCopy passphraseSalt];
  passphraseIterationCount = [metadataCopy passphraseIterationCount];
  passphraseHint = [metadataCopy passphraseHint];
  accountKeyIdentifier = [metadataCopy accountKeyIdentifier];

  v13 = [(ICEncryptionMetadata *)v7 initWithCipherVersion:cipherVersion objectIdentifier:identifierCopy passphraseSalt:passphraseSalt passphraseIterationCount:passphraseIterationCount passphraseHint:passphraseHint accountKeyIdentifier:accountKeyIdentifier];

  return v13;
}

- (ICEncryptionMetadata)initWithCipherVersion:(int64_t)version objectIdentifier:(id)identifier passphraseSalt:(id)salt passphraseIterationCount:(unint64_t)count passphraseHint:(id)hint accountKeyIdentifier:(id)keyIdentifier
{
  identifierCopy = identifier;
  saltCopy = salt;
  hintCopy = hint;
  keyIdentifierCopy = keyIdentifier;
  v30.receiver = self;
  v30.super_class = ICEncryptionMetadata;
  v18 = [(ICEncryptionMetadata *)&v30 init];
  v19 = v18;
  if (!v18 || (v18->_cipherVersion = version, v20 = [identifierCopy copy], objectIdentifier = v19->_objectIdentifier, v19->_objectIdentifier = v20, objectIdentifier, v22 = objc_msgSend(saltCopy, "copy"), passphraseSalt = v19->_passphraseSalt, v19->_passphraseSalt = v22, passphraseSalt, v19->_passphraseIterationCount = count, v24 = objc_msgSend(hintCopy, "copy"), passphraseHint = v19->_passphraseHint, v19->_passphraseHint = v24, passphraseHint, v26 = objc_msgSend(keyIdentifierCopy, "copy"), accountKeyIdentifier = v19->_accountKeyIdentifier, v19->_accountKeyIdentifier = v26, accountKeyIdentifier, -[ICEncryptionMetadata validate](v19, "validate")) && -[ICEncryptionMetadata serialize](v19, "serialize"))
  {
    v28 = v19;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = ICCipherNameForCipherVersion([(ICEncryptionMetadata *)self cipherVersion]);
  objectIdentifier = [(ICEncryptionMetadata *)self objectIdentifier];
  passphraseSalt = [(ICEncryptionMetadata *)self passphraseSalt];
  ic_sha256 = [passphraseSalt ic_sha256];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICEncryptionMetadata passphraseIterationCount](self, "passphraseIterationCount")}];
  passphraseHint = [(ICEncryptionMetadata *)self passphraseHint];
  accountKeyIdentifier = [(ICEncryptionMetadata *)self accountKeyIdentifier];
  v13 = [v3 stringWithFormat:@"<%@: %p, cipherVersion: %@, objectIdentifier: %@, passphraseSalt.sha256: %@, passphraseIterationCount: %@, passphraseHint: %@, accountKeyIdentifier: %@>", v5, self, v6, objectIdentifier, ic_sha256, v10, passphraseHint, accountKeyIdentifier];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    cipherVersion = [v5 cipherVersion];
    if (cipherVersion != [(ICEncryptionMetadata *)self cipherVersion])
    {
      LOBYTE(v22) = 0;
LABEL_56:

      return v22;
    }

    objectIdentifier = [v5 objectIdentifier];
    objectIdentifier2 = [(ICEncryptionMetadata *)self objectIdentifier];
    v9 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == objectIdentifier)
    {
      v10 = 0;
    }

    else
    {
      v10 = objectIdentifier;
    }

    passphraseSalt = v10;
    if (v9 == objectIdentifier2)
    {
      v12 = 0;
    }

    else
    {
      v12 = objectIdentifier2;
    }

    v13 = v12;
    if (passphraseSalt | v13)
    {
      passphraseSalt2 = v13;
      if (passphraseSalt)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_48;
      }

      v16 = [passphraseSalt isEqual:v13];

      if (!v16)
      {
        LOBYTE(v22) = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    passphraseSalt = [v5 passphraseSalt];
    passphraseSalt2 = [(ICEncryptionMetadata *)self passphraseSalt];
    if (v9 == passphraseSalt)
    {
      v17 = 0;
    }

    else
    {
      v17 = passphraseSalt;
    }

    passphraseHint = v17;
    if (v9 == passphraseSalt2)
    {
      v19 = 0;
    }

    else
    {
      v19 = passphraseSalt2;
    }

    v20 = v19;
    if (passphraseHint | v20)
    {
      passphraseHint2 = v20;
      LOBYTE(v22) = 0;
      if (!passphraseHint || !v20)
      {
        goto LABEL_53;
      }

      LODWORD(v22) = [passphraseHint isEqual:v20];

      if (!v22)
      {
LABEL_54:

        goto LABEL_55;
      }
    }

    passphraseIterationCount = [v5 passphraseIterationCount];
    if (passphraseIterationCount == [(ICEncryptionMetadata *)self passphraseIterationCount])
    {
      passphraseHint = [v5 passphraseHint];
      passphraseHint2 = [(ICEncryptionMetadata *)self passphraseHint];
      if (v9 == passphraseHint)
      {
        v24 = 0;
      }

      else
      {
        v24 = passphraseHint;
      }

      v22 = v24;
      if (v9 == passphraseHint2)
      {
        v25 = 0;
      }

      else
      {
        v25 = passphraseHint2;
      }

      v26 = v25;
      if (v22 | v26)
      {
        v27 = v26;
        v28 = v22;
        LOBYTE(v22) = 0;
        v41 = v28;
        if (!v28 || !v26)
        {
LABEL_52:

LABEL_53:
          goto LABEL_54;
        }

        v29 = v26;
        LODWORD(v39) = [v28 isEqual:v26];

        if (!v39)
        {
          LOBYTE(v22) = 0;
          goto LABEL_53;
        }
      }

      accountKeyIdentifier = [v5 accountKeyIdentifier];
      accountKeyIdentifier2 = [(ICEncryptionMetadata *)self accountKeyIdentifier];
      v41 = accountKeyIdentifier;
      if (v9 == accountKeyIdentifier)
      {
        v32 = 0;
      }

      else
      {
        v32 = accountKeyIdentifier;
      }

      v33 = v32;
      v40 = accountKeyIdentifier2;
      if (v9 == accountKeyIdentifier2)
      {
        v34 = 0;
      }

      else
      {
        v34 = accountKeyIdentifier2;
      }

      v35 = v34;
      v36 = v35;
      v37 = v33;
      if (v33 | v35)
      {
        LOBYTE(v22) = 0;
        if (v37 && v35)
        {
          LOBYTE(v22) = [v37 isEqual:v35];
        }
      }

      else
      {
        LOBYTE(v22) = 1;
      }

      v27 = v40;
      goto LABEL_52;
    }

LABEL_48:
    LOBYTE(v22) = 0;
    goto LABEL_54;
  }

  LOBYTE(v22) = 1;
  return v22;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    cipherVersion = [(ICEncryptionMetadata *)self cipherVersion];
    objectIdentifier = [(ICEncryptionMetadata *)self objectIdentifier];
    v6 = [objectIdentifier hash];
    if (!v6)
    {
      [MEMORY[0x277CBEB68] null];
      v8 = v7 = cipherVersion;
      v6 = [v8 hash];

      cipherVersion = v7;
    }

    passphraseSalt = [(ICEncryptionMetadata *)self passphraseSalt];
    if (![passphraseSalt hash])
    {
      null = [MEMORY[0x277CBEB68] null];
      [null hash];
    }

    [(ICEncryptionMetadata *)self passphraseIterationCount];
    passphraseHint = [(ICEncryptionMetadata *)self passphraseHint];
    if (![passphraseHint hash])
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [null2 hash];
    }

    accountKeyIdentifier = [(ICEncryptionMetadata *)self accountKeyIdentifier];
    if (![accountKeyIdentifier hash])
    {
      [MEMORY[0x277CBEB68] null];
      v24 = v6;
      v6 = passphraseSalt;
      v21 = cipherVersion;
      v23 = v22 = objectIdentifier;
      [v23 hash];

      objectIdentifier = v22;
      cipherVersion = v21;
      passphraseSalt = v6;
      LOBYTE(v6) = v24;
    }

    self->_hash = ICHashWithHashKeys(cipherVersion + 1, v14, v15, v16, v17, v18, v19, v20, v6);

    return self->_hash;
  }

  return result;
}

- (ICEncryptionMetadata)initWithSerializedData:(id)data authenticatedData:(id)authenticatedData
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v12.receiver = self;
  v12.super_class = ICEncryptionMetadata;
  v8 = [(ICEncryptionMetadata *)&v12 init];
  v9 = v8;
  if (!v8 || [(ICEncryptionMetadata *)v8 deserializeWithData:dataCopy authenticatedData:authenticatedDataCopy]&& [(ICEncryptionMetadata *)v9 validate])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)serialize
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary ic_setNonNilObject:self->_passphraseSalt forKey:@"passphraseSalt"];
  if (self->_passphraseIterationCount)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [dictionary ic_setNonNilObject:v4 forKey:@"passphraseIterationCount"];
  }

  else
  {
    [dictionary ic_setNonNilObject:0 forKey:@"passphraseIterationCount"];
  }

  [dictionary ic_setNonNilObject:self->_passphraseHint forKey:@"passphraseHint"];
  v5 = MEMORY[0x277CCAC58];
  v6 = [dictionary copy];
  v22 = 0;
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&v22];
  v8 = v22;
  serializedData = self->_serializedData;
  self->_serializedData = v7;

  if (self->_serializedData)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_cipherVersion];
    [dictionary2 ic_setNonNilObject:v11 forKey:@"cipherVersion"];

    [dictionary2 ic_setNonNilObject:self->_objectIdentifier forKey:@"objectIdentifier"];
    [dictionary2 ic_setNonNilObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
    v12 = MEMORY[0x277CCAC58];
    v13 = [dictionary2 copy];
    v21 = 0;
    v14 = [v12 dataWithPropertyList:v13 format:200 options:0 error:&v21];
    v15 = v21;

    authenticatedData = self->_authenticatedData;
    self->_authenticatedData = v14;

    v17 = self->_authenticatedData;
    v18 = v17 != 0;
    if (!v17)
    {
      v19 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ICEncryptionMetadata serialize];
      }

      v18 = 0;
    }
  }

  else
  {
    dictionary2 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(dictionary2, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionMetadata serialize];
    }

    v18 = 0;
    v15 = v8;
  }

  return v18;
}

- (BOOL)deserializeWithData:(id)data authenticatedData:(id)authenticatedData
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  if ([dataCopy length])
  {
    v8 = 0;
  }

  else
  {
    v35 = 0;
    v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:MEMORY[0x277CBEC10] format:200 options:0 error:&v35];
    v8 = v35;

    if (!v9)
    {
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ICEncryptionMetadata deserializeWithData:authenticatedData:];
      }

      dataCopy = 0;
      goto LABEL_17;
    }

    dataCopy = v9;
  }

  if (![authenticatedDataCopy length])
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionMetadata deserializeWithData:authenticatedData:];
    }

LABEL_17:
    v15 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  v34 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v34];
  v11 = v34;

  v12 = ICCheckedDynamicCast();

  if (v12)
  {
    objc_opt_class();
    v33 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:authenticatedDataCopy options:0 format:0 error:&v33];
    v8 = v33;

    v14 = ICCheckedDynamicCast();

    v15 = v14 != 0;
    if (v14)
    {
      objc_storeStrong(&self->_serializedData, dataCopy);
      objc_opt_class();
      v16 = [v12 objectForKeyedSubscript:@"passphraseSalt"];
      v17 = ICDynamicCast();
      passphraseSalt = self->_passphraseSalt;
      self->_passphraseSalt = v17;

      objc_opt_class();
      v19 = [v12 objectForKeyedSubscript:@"passphraseIterationCount"];
      v20 = ICDynamicCast();
      self->_passphraseIterationCount = [v20 unsignedIntegerValue];

      objc_opt_class();
      v21 = [v12 objectForKeyedSubscript:@"passphraseHint"];
      v22 = ICDynamicCast();
      passphraseHint = self->_passphraseHint;
      self->_passphraseHint = v22;

      objc_storeStrong(&self->_authenticatedData, authenticatedData);
      objc_opt_class();
      v24 = [v14 objectForKeyedSubscript:@"cipherVersion"];
      v25 = ICCheckedDynamicCast();
      self->_cipherVersion = [v25 unsignedIntegerValue];

      objc_opt_class();
      v26 = [v14 objectForKeyedSubscript:@"objectIdentifier"];
      v27 = ICDynamicCast();
      objectIdentifier = self->_objectIdentifier;
      self->_objectIdentifier = v27;

      objc_opt_class();
      v29 = [v14 objectForKeyedSubscript:@"accountKeyIdentifier"];
      v30 = ICDynamicCast();
      accountKeyIdentifier = self->_accountKeyIdentifier;
      self->_accountKeyIdentifier = v30;
    }

    else
    {
      v29 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ICEncryptionMetadata deserializeWithData:authenticatedData:];
      }
    }
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionMetadata deserializeWithData:authenticatedData:];
    }

    v15 = 0;
    v8 = v11;
  }

LABEL_22:
  return v15;
}

- (BOOL)validate
{
  cipherVersion = [(ICEncryptionMetadata *)self cipherVersion];
  if (cipherVersion > 1)
  {
    if (cipherVersion == 2)
    {
      objectIdentifier = [(ICEncryptionMetadata *)self objectIdentifier];
      v13 = [objectIdentifier length];

      if (!v13)
      {
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ICEncryptionMetadata validate];
        }

        goto LABEL_28;
      }

      passphraseSalt = [(ICEncryptionMetadata *)self passphraseSalt];
      v15 = [passphraseSalt length];

      if (!v15)
      {
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ICEncryptionMetadata validate];
        }

        goto LABEL_28;
      }

      if (![(ICEncryptionMetadata *)self passphraseIterationCount])
      {
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ICEncryptionMetadata validate];
        }

        goto LABEL_28;
      }

      return 1;
    }

    if (cipherVersion == 3)
    {
      objectIdentifier2 = [(ICEncryptionMetadata *)self objectIdentifier];
      v8 = [objectIdentifier2 length];

      if (!v8)
      {
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ICEncryptionMetadata validate];
        }

        goto LABEL_28;
      }

      return 1;
    }

    goto LABEL_12;
  }

  if (cipherVersion)
  {
    if (cipherVersion == 1)
    {
      accountKeyIdentifier = [(ICEncryptionMetadata *)self accountKeyIdentifier];
      v5 = [accountKeyIdentifier length];

      if (!v5)
      {
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ICEncryptionMetadata validate];
        }

LABEL_28:
        v9 = 0;
LABEL_29:

        return v9;
      }

      return 1;
    }

LABEL_12:
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionMetadata validate];
    }

    v9 = 1;
    goto LABEL_29;
  }

  passphraseSalt2 = [(ICEncryptionMetadata *)self passphraseSalt];
  v11 = [passphraseSalt2 length];

  if (!v11)
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionMetadata validate];
    }

    goto LABEL_28;
  }

  return 1;
}

- (void)serialize
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deserializeWithData:authenticatedData:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deserializeWithData:authenticatedData:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deserializeWithData:authenticatedData:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deserializeWithData:authenticatedData:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validate
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end