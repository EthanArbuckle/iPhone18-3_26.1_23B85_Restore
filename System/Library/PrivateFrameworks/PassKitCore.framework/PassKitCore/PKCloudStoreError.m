@interface PKCloudStoreError
+ (BOOL)_isCloudKitErrorDomain:(id)a3;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (BOOL)isAccountUnavailable;
- (BOOL)isAuthenticationOrQuotaError;
- (BOOL)isChangeTokenExpired;
- (BOOL)isConflictDetected;
- (BOOL)isInitializationTimeOutError;
- (BOOL)isKeychainSyncingInProgress;
- (BOOL)isManateeNotAvailableError;
- (BOOL)isNetworkUnavailable;
- (BOOL)isPCSError;
- (BOOL)isPartialErrorWithUnkownItems;
- (BOOL)isParticipantMayNeedVerificationError;
- (BOOL)isUnrecoverableDecryptionError;
- (BOOL)isZoneNotFoundError;
- (PKCloudStoreError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (PKCloudStoreError)initWithError:(id)a3;
- (id)_allPartialErrors;
- (id)_objectsOfClassTypeFromPartialErrors:(Class)a3;
- (id)_partialErrorsDictionary;
- (id)allZoneIDs;
- (id)errorForPartialErrorWithObject:(id)a3;
- (int64_t)_code;
@end

@implementation PKCloudStoreError

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[PKCloudStoreError alloc] initWithDomain:v8 code:a4 userInfo:v7];

  return v9;
}

- (PKCloudStoreError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([objc_opt_class() _isCloudKitErrorDomain:v8])
  {
    v10 = [v9 objectForKey:*MEMORY[0x1E696AA08]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 domain];
      v13 = [v12 isEqualToString:*MEMORY[0x1E695B778]];

      if (v13)
      {
        v14 = [v11 domain];

        a4 = [v11 code];
        v15 = [v11 userInfo];

        v8 = v14;
        v9 = v15;
      }
    }

    v18.receiver = self;
    v18.super_class = PKCloudStoreError;
    self = [(PKCloudStoreError *)&v18 initWithDomain:v8 code:a4 userInfo:v9];

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PKCloudStoreError)initWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v4 code];
  v7 = [v4 userInfo];

  v8 = [(PKCloudStoreError *)self initWithDomain:v5 code:v6 userInfo:v7];
  return v8;
}

- (id)errorForPartialErrorWithObject:(id)a3
{
  v4 = a3;
  v5 = [(PKCloudStoreError *)self _partialErrorsDictionary];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [[PKCloudStoreError alloc] initWithError:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isChangeTokenExpired
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PKCloudStoreError *)self _code];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(PKCloudStoreError *)self _allPartialErrors];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * v8)];
          v10 = [(PKCloudStoreError *)v9 isChangeTokenExpired];

          if (v10)
          {

            return 1;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  return v3 == 21;
}

- (BOOL)isZoneNotFoundError
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PKCloudStoreError *)self _code];
  if (![(PKCloudStoreError *)self isPartialError])
  {
    return ((v3 - 26) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(PKCloudStoreError *)self _allPartialErrors];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * v8)];
        v10 = [(PKCloudStoreError *)v9 isZoneNotFoundError];

        if (v10)
        {

          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (BOOL)isPartialErrorWithUnkownItems
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(PKCloudStoreError *)self isUnknownItemError])
  {
    return 1;
  }

  if (![(PKCloudStoreError *)self isPartialError])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(PKCloudStoreError *)self _allPartialErrors];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * i)];
        v10 = [(PKCloudStoreError *)v9 isUnknownItemError];

        if (!v10)
        {
          v3 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v3 = 1;
LABEL_15:

  return v3;
}

- (BOOL)isUnrecoverableDecryptionError
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PKCloudStoreError *)self _code];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(PKCloudStoreError *)self _allPartialErrors];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * v8)];
          v10 = [(PKCloudStoreError *)v9 isUnrecoverableDecryptionError];

          if (v10)
          {

            return 1;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  return v3 == 112;
}

- (BOOL)isManateeNotAvailableError
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [[PKCloudStoreError alloc] initWithError:*(*(&v11 + 1) + 8 * v7)];
          v9 = [(PKCloudStoreError *)v8 isManateeNotAvailableError];

          if (v9)
          {

            return 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  return [(PKCloudStoreError *)self _code]== 110;
}

- (BOOL)isNetworkUnavailable
{
  v3 = objc_opt_class();
  v4 = [(PKCloudStoreError *)self domain];
  v5 = [v3 _isCloudKitErrorDomain:v4];

  if (v5)
  {
    if ([(PKCloudStoreError *)self isPartialError])
    {
      v6 = [(PKCloudStoreError *)self _allPartialErrors];
      v7 = [v6 pk_firstObjectPassingTest:&__block_literal_global_44];
      LOBYTE(v5) = v7 != 0;
    }

    else
    {
      v8 = [(PKCloudStoreError *)self _code];
      if (v8 <= 0x17)
      {
        LOBYTE(v5) = 0x8000D8u >> v8;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5 & 1;
}

uint64_t __41__PKCloudStoreError_isNetworkUnavailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCloudStoreError alloc] initWithError:v2];

  v4 = [(PKCloudStoreError *)v3 isNetworkUnavailable];
  return v4;
}

- (BOOL)isAccountUnavailable
{
  v3 = objc_opt_class();
  v4 = [(PKCloudStoreError *)self domain];
  LODWORD(v3) = [v3 _isCloudKitErrorDomain:v4];

  if (!v3)
  {
    return 0;
  }

  if (![(PKCloudStoreError *)self isPartialError])
  {
    return [(PKCloudStoreError *)self _code]== 36;
  }

  v5 = [(PKCloudStoreError *)self _allPartialErrors];
  v6 = [v5 pk_firstObjectPassingTest:&__block_literal_global_15_0];
  v7 = v6 != 0;

  return v7;
}

uint64_t __41__PKCloudStoreError_isAccountUnavailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCloudStoreError alloc] initWithError:v2];

  v4 = [(PKCloudStoreError *)v3 isAccountUnavailable];
  return v4;
}

- (BOOL)isKeychainSyncingInProgress
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [[PKCloudStoreError alloc] initWithError:*(*(&v10 + 1) + 8 * i)];
          v8 = [(PKCloudStoreError *)v7 isKeychainSyncingInProgress];

          if (v8)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = [(PKCloudStoreError *)self _code]== 111;
  }

  return v4;
}

- (BOOL)isPCSError
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = *v14;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [[PKCloudStoreError alloc] initWithError:*(*(&v13 + 1) + 8 * i)];
          v8 = [(PKCloudStoreError *)v7 isPCSError];

          if (v8)
          {
            LOBYTE(v4) = 1;
            goto LABEL_16;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v9 = [(PKCloudStoreError *)self domain];
    v10 = [v9 isEqualToString:*MEMORY[0x1E695B778]];

    if (v10)
    {
      v11 = [(PKCloudStoreError *)self code];
      if ((v11 - 5000) <= 0xA)
      {
        LOBYTE(v4) = 0x4BFu >> (v11 + 120);
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (BOOL)isInitializationTimeOutError
{
  if ([(PKCloudStoreError *)self _code]!= 20)
  {
    return 0;
  }

  v3 = [(PKCloudStoreError *)self userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E696AA08]];

  v5 = [v4 domain];
  if ([v5 isEqualToString:@"PKPassKitErrorDomain"])
  {
    v6 = [v4 code] == -4007;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isParticipantMayNeedVerificationError
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [[PKCloudStoreError alloc] initWithError:*(*(&v10 + 1) + 8 * i)];
          v8 = [(PKCloudStoreError *)v7 isParticipantMayNeedVerificationError];

          if (v8)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = [(PKCloudStoreError *)self _code]== 33;
  }

  return v4;
}

- (BOOL)isConflictDetected
{
  v3 = [(PKCloudStoreError *)self _code];
  v4 = [(PKCloudStoreError *)self domain];
  v5 = *MEMORY[0x1E695B778];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  if (v9 && v3 == 2004)
  {
    return 1;
  }

  return v3 == 14 || v3 == 11;
}

- (BOOL)isAuthenticationOrQuotaError
{
  v3 = objc_opt_class();
  v4 = [(PKCloudStoreError *)self domain];
  LODWORD(v3) = [v3 _isCloudKitErrorDomain:v4];

  if (!v3)
  {
    return 0;
  }

  if (![(PKCloudStoreError *)self isPartialError])
  {
    return ([(PKCloudStoreError *)self _code]& 0xFFFFFFFFFFFFFFEFLL) == 9;
  }

  v5 = [(PKCloudStoreError *)self _allPartialErrors];
  v6 = [v5 pk_firstObjectPassingTest:&__block_literal_global_17];
  v7 = v6 != 0;

  return v7;
}

uint64_t __49__PKCloudStoreError_isAuthenticationOrQuotaError__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCloudStoreError alloc] initWithError:v2];

  v4 = [(PKCloudStoreError *)v3 isAuthenticationOrQuotaError];
  return v4;
}

- (id)allZoneIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(PKCloudStoreError *)self _objectsOfClassTypeFromPartialErrors:objc_opt_class()];
  [v3 unionSet:v4];

  v5 = [(PKCloudStoreError *)self _objectsOfClassTypeFromPartialErrors:objc_opt_class()];
  v6 = [v5 allObjects];
  v7 = [v6 valueForKey:@"zoneID"];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 copy];

  return v8;
}

- (id)_objectsOfClassTypeFromPartialErrors:(Class)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(PKCloudStoreError *)self _partialErrorsDictionary];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__PKCloudStoreError__objectsOfClassTypeFromPartialErrors___block_invoke;
  v13 = &unk_1E79CC9F8;
  v14 = v5;
  v15 = a3;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

void __58__PKCloudStoreError__objectsOfClassTypeFromPartialErrors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (int64_t)_code
{
  v3 = [(PKCloudStoreError *)self code];
  v4 = [(PKCloudStoreError *)self domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695B778]];

  result = v3;
  if (v5)
  {

    JUMPOUT(0x1B26F7FE0);
  }

  return result;
}

- (id)_partialErrorsDictionary
{
  v2 = [(PKCloudStoreError *)self userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x1E695B798]];

  return v3;
}

- (id)_allPartialErrors
{
  v2 = [(PKCloudStoreError *)self _partialErrorsDictionary];
  v3 = [v2 allValues];

  return v3;
}

+ (BOOL)_isCloudKitErrorDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E695B778]];
  }

  return v4;
}

@end