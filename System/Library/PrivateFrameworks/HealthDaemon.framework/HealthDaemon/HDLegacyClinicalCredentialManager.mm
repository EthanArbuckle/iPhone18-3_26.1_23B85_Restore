@interface HDLegacyClinicalCredentialManager
- (BOOL)_assignCredentialManagerError:(uint64_t)error code:(void *)code description:;
- (BOOL)deleteCredentialKeyFromKeychainWithError:(id *)error;
- (BOOL)unitTesting_storeCredentialKeyInKeychain:(id)keychain error:(id *)error;
- (HDLegacyClinicalCredentialManager)init;
- (NSData)cachedCredentialKey;
- (id)_credentialKeyBaseAttributes;
- (id)_tokenDataFromToken:(id)token error:(id *)error;
- (id)unitTesting_retrieveCredentialKeyFromKeychainWithError:(id *)error;
- (void)_assignCredentialManagerError:(uint64_t)error code:(void *)code format:(uint64_t)format;
- (void)setCachedCredentialKey:(id)key;
@end

@implementation HDLegacyClinicalCredentialManager

- (HDLegacyClinicalCredentialManager)init
{
  v6.receiver = self;
  v6.super_class = HDLegacyClinicalCredentialManager;
  v2 = [(HDLegacyClinicalCredentialManager *)&v6 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    credentialKeyQueue = v2->_credentialKeyQueue;
    v2->_credentialKeyQueue = v3;
  }

  return v2;
}

- (BOOL)_assignCredentialManagerError:(uint64_t)error code:(void *)code description:
{
  v15[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v8 = codeCopy;
  if (self)
  {
    if (codeCopy)
    {
      v14 = *MEMORY[0x277CCA450];
      v15[0] = codeCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.healthd.healthrecords.HDClinicalCredentialManager" code:error userInfo:v9];
    if (v10)
    {
      if (a2)
      {
        v11 = v10;
        *a2 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return self != 0;
}

- (id)_tokenDataFromToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v7 = tokenCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  v8 = tokenCopy;
  v9 = MEMORY[0x277CCA900];
  v10 = v8;
  v11 = [v9 characterSetWithCharactersInString:&stru_283C1FE08];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  LOBYTE(v11) = [v12 isEqualToString:v10];
  if ((v11 & 1) == 0)
  {
    [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:106 description:@"Token contains invalid padding."];

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = [v10 dataUsingEncoding:4];
  if (!v13)
  {
    [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:103 description:@"Failed to encode token."];
  }

LABEL_7:

  return v13;
}

- (void)_assignCredentialManagerError:(uint64_t)error code:(void *)code format:(uint64_t)format
{
  if (self)
  {
    v11 = MEMORY[0x277CCACA8];
    codeCopy = code;
    v13 = [[v11 alloc] initWithFormat:codeCopy arguments:&a9];

    [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:a2 code:1 description:v13];
  }
}

- (id)_credentialKeyBaseAttributes
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *MEMORY[0x277CDC250];
    v2 = *MEMORY[0x277CDBED8];
    v8[0] = *MEMORY[0x277CDC228];
    v8[1] = v2;
    v3 = *MEMORY[0x277CDBF10];
    v9[0] = v1;
    v9[1] = v3;
    v8[2] = *MEMORY[0x277CDBF30];
    v4 = [@"com.apple.healthd.healthrecords.credential-key" dataUsingEncoding:4];
    v9[2] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)unitTesting_retrieveCredentialKeyFromKeychainWithError:(id *)error
{
  result[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    _credentialKeyBaseAttributes = [(HDLegacyClinicalCredentialManager *)self _credentialKeyBaseAttributes];
    v6 = [_credentialKeyBaseAttributes mutableCopy];

    v21 = *MEMORY[0x277CDC558];
    result[0] = *MEMORY[0x277CBED28];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:result forKeys:&v21 count:1];
    [v6 addEntriesFromDictionary:v7];

    result[0] = 0;
    v8 = SecItemCopyMatching(v6, result);
    switch(v8)
    {
      case 0xFFFF9D24:
        v15 = @"Credential key not accessible.";
        selfCopy2 = self;
        errorCopy2 = error;
        v18 = 102;
        break;
      case 0xFFFF9D2C:
        v15 = @"Credential key not found.";
        selfCopy2 = self;
        errorCopy2 = error;
        v18 = 100;
        break;
      case 0:
        v14 = result[0];
LABEL_11:

        goto LABEL_12;
      default:
        [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:v9 format:@"Failed to fetch credential key. OSStatus: %d", v10, v11, v12, v13, v8];
LABEL_10:
        v14 = 0;
        goto LABEL_11;
    }

    [(HDLegacyClinicalCredentialManager *)selfCopy2 _assignCredentialManagerError:errorCopy2 code:v18 description:v15];
    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:
  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)unitTesting_storeCredentialKeyInKeychain:(id)keychain error:(id *)error
{
  v35[13] = *MEMORY[0x277D85DE8];
  if (self)
  {
    keychainCopy = keychain;
    _credentialKeyBaseAttributes = [(HDLegacyClinicalCredentialManager *)self _credentialKeyBaseAttributes];
    v8 = [_credentialKeyBaseAttributes mutableCopy];

    v9 = *MEMORY[0x277CDBFE0];
    v35[0] = *MEMORY[0x277CDC008];
    v10 = *MEMORY[0x277CDC018];
    v34[0] = v9;
    v34[1] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:256];
    v35[1] = v11;
    v34[2] = *MEMORY[0x277CDBFA8];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:256];
    v13 = *MEMORY[0x277CDBF60];
    v14 = *MEMORY[0x277CBED28];
    v35[2] = v12;
    v35[3] = v14;
    v15 = *MEMORY[0x277CDBF50];
    v34[3] = v13;
    v34[4] = v15;
    v16 = *MEMORY[0x277CDBF58];
    v17 = *MEMORY[0x277CBED10];
    v35[4] = v14;
    v35[5] = v17;
    v18 = *MEMORY[0x277CDBF68];
    v34[5] = v16;
    v34[6] = v18;
    v19 = *MEMORY[0x277CDBF78];
    v35[6] = v17;
    v35[7] = v17;
    v20 = *MEMORY[0x277CDBF80];
    v34[7] = v19;
    v34[8] = v20;
    v21 = *MEMORY[0x277CDBFD0];
    v34[9] = *MEMORY[0x277CDBF70];
    v34[10] = v21;
    v35[8] = v17;
    v35[9] = v17;
    v22 = *MEMORY[0x277CDC140];
    v35[10] = v14;
    v35[11] = v17;
    v23 = *MEMORY[0x277CDC5E8];
    v34[11] = v22;
    v34[12] = v23;
    v35[12] = keychainCopy;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:13];

    [v8 addEntriesFromDictionary:v24];
    v25 = SecItemAdd(v8, 0);
    if (v25)
    {
      if (v25 == -25299)
      {
        [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:101 description:@"Credential key exists in Keychain."];
      }

      else
      {
        [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:v26 format:@"Failed to add credential key. OSStatus: %d", v27, v28, v29, v30, v25];
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)deleteCredentialKeyFromKeychainWithError:(id *)error
{
  _credentialKeyBaseAttributes = [(HDLegacyClinicalCredentialManager *)self _credentialKeyBaseAttributes];
  v6 = SecItemDelete(_credentialKeyBaseAttributes);
  v12 = 1;
  if (v6 && v6 != -25300)
  {
    if (v6 == -25308)
    {
      [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:102 description:@"Credential key not accessible."];
    }

    else
    {
      [(HDLegacyClinicalCredentialManager *)self _assignCredentialManagerError:error code:v7 format:@"Failed to delete credential key. OSStatus: %d", v8, v9, v10, v11, v6];
    }

    v12 = 0;
  }

  return v12;
}

- (NSData)cachedCredentialKey
{
  selfCopy = self;
  if (self)
  {
    self = self->_credentialKeyQueue;
  }

  dispatch_assert_queue_not_V2(&self->super);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__152;
  v11 = __Block_byref_object_dispose__152;
  v12 = 0;
  if (selfCopy)
  {
    credentialKeyQueue = selfCopy->_credentialKeyQueue;
  }

  else
  {
    credentialKeyQueue = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDLegacyClinicalCredentialManager_cachedCredentialKey__block_invoke;
  v6[3] = &unk_278613990;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(credentialKeyQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setCachedCredentialKey:(id)key
{
  keyCopy = key;
  if (self)
  {
    credentialKeyQueue = self->_credentialKeyQueue;
  }

  else
  {
    credentialKeyQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HDLegacyClinicalCredentialManager_setCachedCredentialKey___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(credentialKeyQueue, v7);
}

uint64_t __60__HDLegacyClinicalCredentialManager_setCachedCredentialKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end