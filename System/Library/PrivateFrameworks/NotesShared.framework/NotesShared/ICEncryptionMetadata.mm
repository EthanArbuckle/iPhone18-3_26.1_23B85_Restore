@interface ICEncryptionMetadata
+ (id)makeForV1CipherWithObjectIdentifier:(id)a3 salt:(id)a4 iterationCount:(unint64_t)a5 hint:(id)a6;
+ (id)makeForV1NeoCipherWithObjectIdentifier:(id)a3 salt:(id)a4 iterationCount:(unint64_t)a5 hint:(id)a6;
+ (id)makeForV1NeoSidecarCipherWithObjectIdentifier:(id)a3;
+ (id)makeForV2CipherWithObjectIdentifier:(id)a3 accountKeyIdentifier:(id)a4;
+ (id)makeFromMetadata:(id)a3 forObjectIdentifier:(id)a4;
- (BOOL)deserializeWithData:(id)a3 authenticatedData:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)serialize;
- (BOOL)validate;
- (ICEncryptionMetadata)initWithCipherVersion:(int64_t)a3 objectIdentifier:(id)a4 passphraseSalt:(id)a5 passphraseIterationCount:(unint64_t)a6 passphraseHint:(id)a7 accountKeyIdentifier:(id)a8;
- (ICEncryptionMetadata)initWithSerializedData:(id)a3 authenticatedData:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)serialize;
- (void)validate;
@end

@implementation ICEncryptionMetadata

+ (id)makeForV1CipherWithObjectIdentifier:(id)a3 salt:(id)a4 iterationCount:(unint64_t)a5 hint:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[ICEncryptionMetadata alloc] initWithCipherVersion:0 objectIdentifier:v11 passphraseSalt:v10 passphraseIterationCount:a5 passphraseHint:v9 accountKeyIdentifier:0];

  return v12;
}

+ (id)makeForV1NeoCipherWithObjectIdentifier:(id)a3 salt:(id)a4 iterationCount:(unint64_t)a5 hint:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[ICEncryptionMetadata alloc] initWithCipherVersion:2 objectIdentifier:v11 passphraseSalt:v10 passphraseIterationCount:a5 passphraseHint:v9 accountKeyIdentifier:0];

  return v12;
}

+ (id)makeForV1NeoSidecarCipherWithObjectIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[ICEncryptionMetadata alloc] initWithCipherVersion:3 objectIdentifier:v3 passphraseSalt:0 passphraseIterationCount:0 passphraseHint:0 accountKeyIdentifier:0];

  return v4;
}

+ (id)makeForV2CipherWithObjectIdentifier:(id)a3 accountKeyIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ICEncryptionMetadata alloc] initWithCipherVersion:1 objectIdentifier:v6 passphraseSalt:0 passphraseIterationCount:0 passphraseHint:0 accountKeyIdentifier:v5];

  return v7;
}

+ (id)makeFromMetadata:(id)a3 forObjectIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [ICEncryptionMetadata alloc];
  v8 = [v6 cipherVersion];
  v9 = [v6 passphraseSalt];
  v10 = [v6 passphraseIterationCount];
  v11 = [v6 passphraseHint];
  v12 = [v6 accountKeyIdentifier];

  v13 = [(ICEncryptionMetadata *)v7 initWithCipherVersion:v8 objectIdentifier:v5 passphraseSalt:v9 passphraseIterationCount:v10 passphraseHint:v11 accountKeyIdentifier:v12];

  return v13;
}

- (ICEncryptionMetadata)initWithCipherVersion:(int64_t)a3 objectIdentifier:(id)a4 passphraseSalt:(id)a5 passphraseIterationCount:(unint64_t)a6 passphraseHint:(id)a7 accountKeyIdentifier:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v30.receiver = self;
  v30.super_class = ICEncryptionMetadata;
  v18 = [(ICEncryptionMetadata *)&v30 init];
  v19 = v18;
  if (!v18 || (v18->_cipherVersion = a3, v20 = [v14 copy], objectIdentifier = v19->_objectIdentifier, v19->_objectIdentifier = v20, objectIdentifier, v22 = objc_msgSend(v15, "copy"), passphraseSalt = v19->_passphraseSalt, v19->_passphraseSalt = v22, passphraseSalt, v19->_passphraseIterationCount = a6, v24 = objc_msgSend(v16, "copy"), passphraseHint = v19->_passphraseHint, v19->_passphraseHint = v24, passphraseHint, v26 = objc_msgSend(v17, "copy"), accountKeyIdentifier = v19->_accountKeyIdentifier, v19->_accountKeyIdentifier = v26, accountKeyIdentifier, -[ICEncryptionMetadata validate](v19, "validate")) && -[ICEncryptionMetadata serialize](v19, "serialize"))
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
  v7 = [(ICEncryptionMetadata *)self objectIdentifier];
  v8 = [(ICEncryptionMetadata *)self passphraseSalt];
  v9 = [v8 ic_sha256];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICEncryptionMetadata passphraseIterationCount](self, "passphraseIterationCount")}];
  v11 = [(ICEncryptionMetadata *)self passphraseHint];
  v12 = [(ICEncryptionMetadata *)self accountKeyIdentifier];
  v13 = [v3 stringWithFormat:@"<%@: %p, cipherVersion: %@, objectIdentifier: %@, passphraseSalt.sha256: %@, passphraseIterationCount: %@, passphraseHint: %@, accountKeyIdentifier: %@>", v5, self, v6, v7, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [v5 cipherVersion];
    if (v6 != [(ICEncryptionMetadata *)self cipherVersion])
    {
      LOBYTE(v22) = 0;
LABEL_56:

      return v22;
    }

    v7 = [v5 objectIdentifier];
    v8 = [(ICEncryptionMetadata *)self objectIdentifier];
    v9 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;
    if (v11 | v13)
    {
      v14 = v13;
      if (v11)
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

      v16 = [v11 isEqual:v13];

      if (!v16)
      {
        LOBYTE(v22) = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    v11 = [v5 passphraseSalt];
    v14 = [(ICEncryptionMetadata *)self passphraseSalt];
    if (v9 == v11)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17;
    if (v9 == v14)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    v20 = v19;
    if (v18 | v20)
    {
      v21 = v20;
      LOBYTE(v22) = 0;
      if (!v18 || !v20)
      {
        goto LABEL_53;
      }

      LODWORD(v22) = [v18 isEqual:v20];

      if (!v22)
      {
LABEL_54:

        goto LABEL_55;
      }
    }

    v23 = [v5 passphraseIterationCount];
    if (v23 == [(ICEncryptionMetadata *)self passphraseIterationCount])
    {
      v18 = [v5 passphraseHint];
      v21 = [(ICEncryptionMetadata *)self passphraseHint];
      if (v9 == v18)
      {
        v24 = 0;
      }

      else
      {
        v24 = v18;
      }

      v22 = v24;
      if (v9 == v21)
      {
        v25 = 0;
      }

      else
      {
        v25 = v21;
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

      v30 = [v5 accountKeyIdentifier];
      v31 = [(ICEncryptionMetadata *)self accountKeyIdentifier];
      v41 = v30;
      if (v9 == v30)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v33 = v32;
      v40 = v31;
      if (v9 == v31)
      {
        v34 = 0;
      }

      else
      {
        v34 = v31;
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
    v4 = [(ICEncryptionMetadata *)self cipherVersion];
    v5 = [(ICEncryptionMetadata *)self objectIdentifier];
    v6 = [v5 hash];
    if (!v6)
    {
      [MEMORY[0x277CBEB68] null];
      v8 = v7 = v4;
      v6 = [v8 hash];

      v4 = v7;
    }

    v9 = [(ICEncryptionMetadata *)self passphraseSalt];
    if (![v9 hash])
    {
      v10 = [MEMORY[0x277CBEB68] null];
      [v10 hash];
    }

    [(ICEncryptionMetadata *)self passphraseIterationCount];
    v11 = [(ICEncryptionMetadata *)self passphraseHint];
    if (![v11 hash])
    {
      v12 = [MEMORY[0x277CBEB68] null];
      [v12 hash];
    }

    v13 = [(ICEncryptionMetadata *)self accountKeyIdentifier];
    if (![v13 hash])
    {
      [MEMORY[0x277CBEB68] null];
      v24 = v6;
      v6 = v9;
      v21 = v4;
      v23 = v22 = v5;
      [v23 hash];

      v5 = v22;
      v4 = v21;
      v9 = v6;
      LOBYTE(v6) = v24;
    }

    self->_hash = ICHashWithHashKeys(v4 + 1, v14, v15, v16, v17, v18, v19, v20, v6);

    return self->_hash;
  }

  return result;
}

- (ICEncryptionMetadata)initWithSerializedData:(id)a3 authenticatedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ICEncryptionMetadata;
  v8 = [(ICEncryptionMetadata *)&v12 init];
  v9 = v8;
  if (!v8 || [(ICEncryptionMetadata *)v8 deserializeWithData:v6 authenticatedData:v7]&& [(ICEncryptionMetadata *)v9 validate])
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 ic_setNonNilObject:self->_passphraseSalt forKey:@"passphraseSalt"];
  if (self->_passphraseIterationCount)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 ic_setNonNilObject:v4 forKey:@"passphraseIterationCount"];
  }

  else
  {
    [v3 ic_setNonNilObject:0 forKey:@"passphraseIterationCount"];
  }

  [v3 ic_setNonNilObject:self->_passphraseHint forKey:@"passphraseHint"];
  v5 = MEMORY[0x277CCAC58];
  v6 = [v3 copy];
  v22 = 0;
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&v22];
  v8 = v22;
  serializedData = self->_serializedData;
  self->_serializedData = v7;

  if (self->_serializedData)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_cipherVersion];
    [v10 ic_setNonNilObject:v11 forKey:@"cipherVersion"];

    [v10 ic_setNonNilObject:self->_objectIdentifier forKey:@"objectIdentifier"];
    [v10 ic_setNonNilObject:self->_accountKeyIdentifier forKey:@"accountKeyIdentifier"];
    v12 = MEMORY[0x277CCAC58];
    v13 = [v10 copy];
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
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICEncryptionMetadata serialize];
    }

    v18 = 0;
    v15 = v8;
  }

  return v18;
}

- (BOOL)deserializeWithData:(id)a3 authenticatedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
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

      v6 = 0;
      goto LABEL_17;
    }

    v6 = v9;
  }

  if (![v7 length])
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
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v34];
  v11 = v34;

  v12 = ICCheckedDynamicCast();

  if (v12)
  {
    objc_opt_class();
    v33 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:&v33];
    v8 = v33;

    v14 = ICCheckedDynamicCast();

    v15 = v14 != 0;
    if (v14)
    {
      objc_storeStrong(&self->_serializedData, v6);
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

      objc_storeStrong(&self->_authenticatedData, a4);
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
  v3 = [(ICEncryptionMetadata *)self cipherVersion];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v12 = [(ICEncryptionMetadata *)self objectIdentifier];
      v13 = [v12 length];

      if (!v13)
      {
        v6 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ICEncryptionMetadata validate];
        }

        goto LABEL_28;
      }

      v14 = [(ICEncryptionMetadata *)self passphraseSalt];
      v15 = [v14 length];

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

    if (v3 == 3)
    {
      v7 = [(ICEncryptionMetadata *)self objectIdentifier];
      v8 = [v7 length];

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

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(ICEncryptionMetadata *)self accountKeyIdentifier];
      v5 = [v4 length];

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

  v10 = [(ICEncryptionMetadata *)self passphraseSalt];
  v11 = [v10 length];

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