@interface HDEncryptedArchiveKeyPair
+ (id)fetchFromKeychainForLabel:(id)a3 includePrivate:(BOOL)a4 error:(id *)a5;
+ (id)randomKeyPairWithError:(id *)a3;
- (BOOL)_deleteFromKeychainWithLabel:(id)a3 public:(BOOL)a4 error:(id *)a5;
- (BOOL)addToKeychainWithLabel:(id)a3 error:(id *)a4;
- (BOOL)deleteFromKeychainWithLabel:(id)a3 error:(id *)a4;
- (HDEncryptedArchiveKeyPair)initWithPublicSecKey:(__SecKey *)a3;
- (HDEncryptedArchiveKeyPair)initWithSecKey:(__SecKey *)a3;
- (id)keyDataForDecryptionWithError:(id *)a3;
- (id)keyDataForEncryptionWithError:(id *)a3;
- (void)dealloc;
@end

@implementation HDEncryptedArchiveKeyPair

- (HDEncryptedArchiveKeyPair)initWithSecKey:(__SecKey *)a3
{
  v6.receiver = self;
  v6.super_class = HDEncryptedArchiveKeyPair;
  v4 = [(HDEncryptedArchiveKeyPair *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_fullKey = a3;
    v4->_publicKey = SecKeyCopyPublicKey(a3);
  }

  return v4;
}

- (HDEncryptedArchiveKeyPair)initWithPublicSecKey:(__SecKey *)a3
{
  v6.receiver = self;
  v6.super_class = HDEncryptedArchiveKeyPair;
  v4 = [(HDEncryptedArchiveKeyPair *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_publicKey = a3;
  }

  return v4;
}

- (void)dealloc
{
  fullKey = self->_fullKey;
  if (fullKey)
  {
    CFRelease(fullKey);
    self->_fullKey = 0;
  }

  CFRelease(self->_publicKey);
  self->_publicKey = 0;
  v4.receiver = self;
  v4.super_class = HDEncryptedArchiveKeyPair;
  [(HDEncryptedArchiveKeyPair *)&v4 dealloc];
}

+ (id)randomKeyPairWithError:(id *)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC040];
  v5 = *MEMORY[0x277CDC018];
  v15[0] = *MEMORY[0x277CDC028];
  v15[1] = v5;
  v16[0] = v4;
  v16[1] = &unk_283CB3DE0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14 = 0;
  v7 = SecKeyCreateRandomKey(v6, &v14);
  if (v7)
  {
    v8 = v7;
    v9 = [[HDEncryptedArchiveKeyPair alloc] initWithSecKey:v7];
    CFRelease(v8);
  }

  else
  {
    v10 = v14;
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)fetchFromKeychainForLabel:(id)a3 includePrivate:(BOOL)a4 error:(id *)a5
{
  v36[6] = *MEMORY[0x277D85DE8];
  v7 = "private";
  if (a4)
  {
    v8 = MEMORY[0x277CDBF18];
  }

  else
  {
    v7 = "public";
    v8 = MEMORY[0x277CDBEE8];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", a3, v7];
  result = 0;
  v10 = *MEMORY[0x277CDC228];
  v35[0] = *MEMORY[0x277CDC080];
  v35[1] = v10;
  v11 = *MEMORY[0x277CDC250];
  v36[0] = v9;
  v36[1] = v11;
  v12 = *MEMORY[0x277CDC140];
  v35[2] = *MEMORY[0x277CDC5C8];
  v35[3] = v12;
  v36[2] = MEMORY[0x277CBEC38];
  v36[3] = MEMORY[0x277CBEC28];
  v13 = *v8;
  v14 = *MEMORY[0x277CDC568];
  v35[4] = *MEMORY[0x277CDBED8];
  v35[5] = v14;
  v36[4] = v13;
  v36[5] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
  v16 = SecItemCopyMatching(v15, &result);
  if (v16)
  {
    if (v16 == -25300)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:118 format:@"No matching key found."];
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA590];
      v22 = v16;
      v33 = *MEMORY[0x277CCA450];
      v34 = @"Failed to retrieve key.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v24 = [v20 errorWithDomain:v21 code:v22 userInfo:v23];
      if (v24)
      {
        if (a5)
        {
          v25 = v24;
          *a5 = v24;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v17 = CFGetTypeID(result);
    if (v17 == SecKeyGetTypeID())
    {
      v18 = [HDEncryptedArchiveKeyPair alloc];
      if (a4)
      {
        v19 = [(HDEncryptedArchiveKeyPair *)v18 initWithSecKey:result];
      }

      else
      {
        v19 = [(HDEncryptedArchiveKeyPair *)v18 initWithPublicSecKey:result];
      }

      v29 = v19;
      goto LABEL_19;
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = CFGetTypeID(result);
    v28 = CFCopyTypeIDDescription(v27);
    [v26 hk_assignError:a5 code:3 format:{@"Unexpected return type %@ during keychain fetch.", v28}];

    CFRelease(result);
  }

  v29 = 0;
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)addToKeychainWithLabel:(id)a3 error:(id *)a4
{
  v51[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CDC080];
  v7 = MEMORY[0x277CDC5C8];
  v8 = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CDC140];
  v10 = MEMORY[0x277CBEC28];
  v11 = MEMORY[0x277CDBED8];
  v12 = MEMORY[0x277CDC5F8];
  if (self->_fullKey)
  {
    v50[0] = *MEMORY[0x277CDC080];
    v42 = v5;
    v13 = v5;
    v14 = MEMORY[0x277CDC5C8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", v42, "private"];
    v16 = *v14;
    v51[0] = v15;
    v51[1] = v8;
    v17 = *v9;
    v50[1] = v16;
    v50[2] = v17;
    v50[3] = *v11;
    v18 = *MEMORY[0x277CDBF18];
    v51[2] = v10;
    v51[3] = v18;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
    v20 = v19 = v10;

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v20);
    CFDictionarySetValue(MutableCopy, *v12, self->_fullKey);
    v22 = SecItemAdd(MutableCopy, 0);
    CFRelease(MutableCopy);
    if (v22)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA590];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Failed to store private key.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v26 = [v23 errorWithDomain:v24 code:v22 userInfo:v25];
      if (!v26)
      {
        v5 = v13;
        goto LABEL_14;
      }

      v27 = a4;
      v5 = v13;
      if (a4)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    v10 = v19;
    v5 = v13;
    v9 = MEMORY[0x277CDC140];
    v7 = MEMORY[0x277CDC5C8];
    v6 = MEMORY[0x277CDC080];
  }

  if (self->_publicKey)
  {
    v46[0] = *v6;
    v29 = v7;
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", v5, "public"];
    v31 = *v29;
    v47[0] = v30;
    v47[1] = v8;
    v32 = *v9;
    v46[1] = v31;
    v46[2] = v32;
    v46[3] = *v11;
    v33 = *MEMORY[0x277CDBEE8];
    v47[2] = v10;
    v47[3] = v33;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];

    v34 = CFDictionaryCreateMutableCopy(0, 0, v20);
    CFDictionarySetValue(v34, *v12, self->_publicKey);
    v35 = SecItemAdd(v34, 0);
    CFRelease(v34);
    if (!v35)
    {
      v39 = 1;
      goto LABEL_15;
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA590];
    v38 = v35;
    v44 = *MEMORY[0x277CCA450];
    v45 = @"Failed to store public key.";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v26 = [v36 errorWithDomain:v37 code:v38 userInfo:v25];
    if (!v26)
    {
LABEL_14:

      v39 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v27 = a4;
    if (a4)
    {
LABEL_5:
      v28 = v26;
      *v27 = v26;
      goto LABEL_14;
    }

LABEL_11:
    _HKLogDroppedError();
    goto LABEL_14;
  }

  v39 = 1;
LABEL_16:

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)_deleteFromKeychainWithLabel:(id)a3 public:(BOOL)a4 error:(id *)a5
{
  v29[6] = *MEMORY[0x277D85DE8];
  v6 = "public";
  if (a4)
  {
    v7 = MEMORY[0x277CDBEE8];
  }

  else
  {
    v6 = "private";
    v7 = MEMORY[0x277CDBF18];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", a3, v6];
  v9 = *MEMORY[0x277CDC228];
  v28[0] = *MEMORY[0x277CDC080];
  v28[1] = v9;
  v10 = *MEMORY[0x277CDC250];
  v29[0] = v8;
  v29[1] = v10;
  v11 = *MEMORY[0x277CDC140];
  v28[2] = *MEMORY[0x277CDC5C8];
  v28[3] = v11;
  v29[2] = MEMORY[0x277CBEC38];
  v29[3] = MEMORY[0x277CBEC28];
  v12 = *v7;
  v13 = *MEMORY[0x277CDC568];
  v28[4] = *MEMORY[0x277CDBED8];
  v28[5] = v13;
  v29[4] = v12;
  v29[5] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v15 = SecItemDelete(v14);
  v16 = v15;
  if (v15 != -25300 && v15)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"Failed to delete key.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v20 = [v17 errorWithDomain:v18 code:v16 userInfo:v19];
    if (v20)
    {
      if (a5)
      {
        v21 = v20;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (v16)
  {
    v22 = v16 == -25300;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)deleteFromKeychainWithLabel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = 0;
  if ([(HDEncryptedArchiveKeyPair *)self _deleteFromKeychainWithLabel:v6 public:0 error:a4])
  {
    v7 = [(HDEncryptedArchiveKeyPair *)self _deleteFromKeychainWithLabel:v6 public:1 error:a4];
  }

  return v7;
}

- (id)keyDataForEncryptionWithError:(id *)a3
{
  error = 0;
  v4 = SecKeyCopyExternalRepresentation(self->_publicKey, &error);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = error;
    if (v7)
    {
      if (a3)
      {
        v8 = v7;
        *a3 = v7;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v5;
}

- (id)keyDataForDecryptionWithError:(id *)a3
{
  fullKey = self->_fullKey;
  if (fullKey)
  {
    error = 0;
    v5 = SecKeyCopyExternalRepresentation(fullKey, &error);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = error;
      if (v8)
      {
        if (a3)
        {
          v9 = v8;
          *a3 = v8;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:924 format:@"Private key not available; did you only fetch the public key?"];
    v6 = 0;
  }

  return v6;
}

@end