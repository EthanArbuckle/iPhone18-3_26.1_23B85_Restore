@interface HDEncryptedArchiveSymmetricKey
+ (id)fetchFromKeychainForLabel:(id)a3 error:(id *)a4;
+ (id)randomKeyWithError:(id *)a3;
- (BOOL)addToKeychainWithLabel:(id)a3 error:(id *)a4;
- (BOOL)deleteFromKeychainWithLabel:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (HDEncryptedArchiveSymmetricKey)initWithCoder:(id)a3;
- (HDEncryptedArchiveSymmetricKey)initWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDEncryptedArchiveSymmetricKey

- (HDEncryptedArchiveSymmetricKey)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDEncryptedArchiveSymmetricKey;
  v5 = [(HDEncryptedArchiveSymmetricKey *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    key = v5->_key;
    v5->_key = v6;
  }

  return v5;
}

+ (id)randomKeyWithError:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  v5 = SecRandomCopyBytes(*MEMORY[0x277CDC540], [v4 length], objc_msgSend(v4, "mutableBytes"));
  if (v5)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:2000 format:{@"Failed to generate random symmetric key: %d", v5}];
    v6 = 0;
  }

  else
  {
    v6 = [[HDEncryptedArchiveSymmetricKey alloc] initWithData:v4];
  }

  return v6;
}

+ (id)fetchFromKeychainForLabel:(id)a3 error:(id *)a4
{
  v33[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  result = 0;
  v6 = *MEMORY[0x277CDC228];
  v32[0] = *MEMORY[0x277CDC080];
  v32[1] = v6;
  v7 = *MEMORY[0x277CDC250];
  v33[0] = v5;
  v33[1] = v7;
  v8 = *MEMORY[0x277CDC008];
  v9 = *MEMORY[0x277CDC5C8];
  v32[2] = *MEMORY[0x277CDBFE0];
  v32[3] = v9;
  v10 = *MEMORY[0x277CDBED8];
  v32[4] = *MEMORY[0x277CDC140];
  v32[5] = v10;
  v11 = *MEMORY[0x277CDBF18];
  v33[4] = MEMORY[0x277CBEC28];
  v33[5] = v11;
  v33[2] = v8;
  v33[3] = MEMORY[0x277CBEC38];
  v32[6] = *MEMORY[0x277CDC558];
  v33[6] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];
  v13 = SecItemCopyMatching(v12, &result);
  if (v13)
  {
    if (v13 != -25300)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = v13;
      v30 = *MEMORY[0x277CCA450];
      v31 = @"Failed to retrieve symmetric key.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v18 = [v14 errorWithDomain:v15 code:v16 userInfo:v17];
      if (v18)
      {
        if (a4)
        {
          v19 = v18;
          *a4 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (!result)
  {
LABEL_9:
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:118 format:@"No matching key found."];
    goto LABEL_13;
  }

  v20 = CFGetTypeID(result);
  if (v20 == CFDataGetTypeID())
  {
    v21 = [HDEncryptedArchiveSymmetricKey alloc];
    v22 = result;
    v23 = [(HDEncryptedArchiveSymmetricKey *)v21 initWithData:result];

    goto LABEL_14;
  }

  v24 = MEMORY[0x277CCA9B8];
  v25 = CFGetTypeID(result);
  v26 = CFCopyTypeIDDescription(v25);
  [v24 hk_assignError:a4 code:3 format:{@"Unexpected return type %@ during keychain fetch.", v26}];

  CFRelease(result);
LABEL_13:
  v23 = 0;
LABEL_14:

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)addToKeychainWithLabel:(id)a3 error:(id *)a4
{
  v29[8] = *MEMORY[0x277D85DE8];
  v6 = a3;
  key = self->_key;
  v8 = *MEMORY[0x277CDC228];
  v28[0] = *MEMORY[0x277CDC5E8];
  v28[1] = v8;
  v9 = *MEMORY[0x277CDC250];
  v29[0] = key;
  v29[1] = v9;
  v28[2] = *MEMORY[0x277CDC018];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{8 * -[NSData length](key, "length")}];
  v11 = *MEMORY[0x277CDBFE0];
  v12 = *MEMORY[0x277CDC008];
  v29[2] = v10;
  v29[3] = v12;
  v13 = *MEMORY[0x277CDC080];
  v28[3] = v11;
  v28[4] = v13;
  v14 = *MEMORY[0x277CDC5C8];
  v29[4] = v6;
  v29[5] = MEMORY[0x277CBEC38];
  v15 = *MEMORY[0x277CDC140];
  v28[5] = v14;
  v28[6] = v15;
  v28[7] = *MEMORY[0x277CDBED8];
  v16 = *MEMORY[0x277CDBF18];
  v29[6] = MEMORY[0x277CBEC28];
  v29[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];

  v18 = SecItemAdd(v17, 0);
  if (v18)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"Failed to store public key.";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22 = [v19 errorWithDomain:v20 code:v18 userInfo:v21];
    if (v22)
    {
      if (a4)
      {
        v23 = v22;
        *a4 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18 == 0;
}

- (BOOL)deleteFromKeychainWithLabel:(id)a3 error:(id *)a4
{
  v24[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CDC228];
  v23[0] = *MEMORY[0x277CDC080];
  v23[1] = v6;
  v7 = *MEMORY[0x277CDC250];
  v24[0] = v5;
  v24[1] = v7;
  v8 = *MEMORY[0x277CDC140];
  v23[2] = *MEMORY[0x277CDC5C8];
  v23[3] = v8;
  v24[2] = MEMORY[0x277CBEC38];
  v24[3] = MEMORY[0x277CBEC28];
  v23[4] = *MEMORY[0x277CDBED8];
  v24[4] = *MEMORY[0x277CDBF18];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300 && v10)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"Failed to delete key.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [v12 errorWithDomain:v13 code:v11 userInfo:v14];
    if (v15)
    {
      if (a4)
      {
        v16 = v15;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (v11)
  {
    v17 = v11 == -25300;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSData *)self->_key isEqualToData:v4[1]];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDEncryptedArchiveSymmetricKey allocWithZone:a3];
  key = self->_key;

  return [(HDEncryptedArchiveSymmetricKey *)v4 initWithData:key];
}

- (HDEncryptedArchiveSymmetricKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sym_key"];

  if (v5)
  {
    self = [(HDEncryptedArchiveSymmetricKey *)self initWithData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end