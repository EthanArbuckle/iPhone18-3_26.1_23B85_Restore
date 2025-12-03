@interface PKCloudStoreError
+ (BOOL)_isCloudKitErrorDomain:(id)domain;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
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
- (PKCloudStoreError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (PKCloudStoreError)initWithError:(id)error;
- (id)_allPartialErrors;
- (id)_objectsOfClassTypeFromPartialErrors:(Class)errors;
- (id)_partialErrorsDictionary;
- (id)allZoneIDs;
- (id)errorForPartialErrorWithObject:(id)object;
- (int64_t)_code;
@end

@implementation PKCloudStoreError

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  domainCopy = domain;
  v9 = [[PKCloudStoreError alloc] initWithDomain:domainCopy code:code userInfo:infoCopy];

  return v9;
}

- (PKCloudStoreError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  domainCopy = domain;
  infoCopy = info;
  if ([objc_opt_class() _isCloudKitErrorDomain:domainCopy])
  {
    v10 = [infoCopy objectForKey:*MEMORY[0x1E696AA08]];
    v11 = v10;
    if (v10)
    {
      domain = [v10 domain];
      v13 = [domain isEqualToString:*MEMORY[0x1E695B778]];

      if (v13)
      {
        domain2 = [v11 domain];

        code = [v11 code];
        userInfo = [v11 userInfo];

        domainCopy = domain2;
        infoCopy = userInfo;
      }
    }

    v18.receiver = self;
    v18.super_class = PKCloudStoreError;
    self = [(PKCloudStoreError *)&v18 initWithDomain:domainCopy code:code userInfo:infoCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKCloudStoreError)initWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  userInfo = [errorCopy userInfo];

  v8 = [(PKCloudStoreError *)self initWithDomain:domain code:code userInfo:userInfo];
  return v8;
}

- (id)errorForPartialErrorWithObject:(id)object
{
  objectCopy = object;
  _partialErrorsDictionary = [(PKCloudStoreError *)self _partialErrorsDictionary];
  v6 = [_partialErrorsDictionary objectForKey:objectCopy];

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
  _code = [(PKCloudStoreError *)self _code];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
    v5 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_allPartialErrors);
          }

          v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * v8)];
          isChangeTokenExpired = [(PKCloudStoreError *)v9 isChangeTokenExpired];

          if (isChangeTokenExpired)
          {

            return 1;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  return _code == 21;
}

- (BOOL)isZoneNotFoundError
{
  v17 = *MEMORY[0x1E69E9840];
  _code = [(PKCloudStoreError *)self _code];
  if (![(PKCloudStoreError *)self isPartialError])
  {
    return ((_code - 26) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
  v5 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_allPartialErrors);
        }

        v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * v8)];
        isZoneNotFoundError = [(PKCloudStoreError *)v9 isZoneNotFoundError];

        if (isZoneNotFoundError)
        {

          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
  v5 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_allPartialErrors);
        }

        v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * i)];
        isUnknownItemError = [(PKCloudStoreError *)v9 isUnknownItemError];

        if (!isUnknownItemError)
        {
          v3 = 0;
          goto LABEL_15;
        }
      }

      v6 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  _code = [(PKCloudStoreError *)self _code];
  if ([(PKCloudStoreError *)self isPartialError])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
    v5 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_allPartialErrors);
          }

          v9 = [[PKCloudStoreError alloc] initWithError:*(*(&v12 + 1) + 8 * v8)];
          isUnrecoverableDecryptionError = [(PKCloudStoreError *)v9 isUnrecoverableDecryptionError];

          if (isUnrecoverableDecryptionError)
          {

            return 1;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [_allPartialErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  return _code == 112;
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
    _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [_allPartialErrors countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(_allPartialErrors);
          }

          v8 = [[PKCloudStoreError alloc] initWithError:*(*(&v11 + 1) + 8 * v7)];
          isManateeNotAvailableError = [(PKCloudStoreError *)v8 isManateeNotAvailableError];

          if (isManateeNotAvailableError)
          {

            return 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [_allPartialErrors countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  domain = [(PKCloudStoreError *)self domain];
  v5 = [v3 _isCloudKitErrorDomain:domain];

  if (v5)
  {
    if ([(PKCloudStoreError *)self isPartialError])
    {
      _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
      v7 = [_allPartialErrors pk_firstObjectPassingTest:&__block_literal_global_44];
      LOBYTE(v5) = v7 != 0;
    }

    else
    {
      _code = [(PKCloudStoreError *)self _code];
      if (_code <= 0x17)
      {
        LOBYTE(v5) = 0x8000D8u >> _code;
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
  domain = [(PKCloudStoreError *)self domain];
  LODWORD(v3) = [v3 _isCloudKitErrorDomain:domain];

  if (!v3)
  {
    return 0;
  }

  if (![(PKCloudStoreError *)self isPartialError])
  {
    return [(PKCloudStoreError *)self _code]== 36;
  }

  _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
  v6 = [_allPartialErrors pk_firstObjectPassingTest:&__block_literal_global_15_0];
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
    _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [_allPartialErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(_allPartialErrors);
          }

          v7 = [[PKCloudStoreError alloc] initWithError:*(*(&v10 + 1) + 8 * i)];
          isKeychainSyncingInProgress = [(PKCloudStoreError *)v7 isKeychainSyncingInProgress];

          if (isKeychainSyncingInProgress)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [_allPartialErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [_allPartialErrors countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = *v14;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(_allPartialErrors);
          }

          v7 = [[PKCloudStoreError alloc] initWithError:*(*(&v13 + 1) + 8 * i)];
          isPCSError = [(PKCloudStoreError *)v7 isPCSError];

          if (isPCSError)
          {
            LOBYTE(v4) = 1;
            goto LABEL_16;
          }
        }

        v4 = [_allPartialErrors countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    domain = [(PKCloudStoreError *)self domain];
    v10 = [domain isEqualToString:*MEMORY[0x1E695B778]];

    if (v10)
    {
      code = [(PKCloudStoreError *)self code];
      if ((code - 5000) <= 0xA)
      {
        LOBYTE(v4) = 0x4BFu >> (code + 120);
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

  userInfo = [(PKCloudStoreError *)self userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  domain = [v4 domain];
  if ([domain isEqualToString:@"PKPassKitErrorDomain"])
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
    _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
    v4 = [_allPartialErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(_allPartialErrors);
          }

          v7 = [[PKCloudStoreError alloc] initWithError:*(*(&v10 + 1) + 8 * i)];
          isParticipantMayNeedVerificationError = [(PKCloudStoreError *)v7 isParticipantMayNeedVerificationError];

          if (isParticipantMayNeedVerificationError)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [_allPartialErrors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  _code = [(PKCloudStoreError *)self _code];
  domain = [(PKCloudStoreError *)self domain];
  v5 = *MEMORY[0x1E695B778];
  v6 = domain;
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

  if (v9 && _code == 2004)
  {
    return 1;
  }

  return _code == 14 || _code == 11;
}

- (BOOL)isAuthenticationOrQuotaError
{
  v3 = objc_opt_class();
  domain = [(PKCloudStoreError *)self domain];
  LODWORD(v3) = [v3 _isCloudKitErrorDomain:domain];

  if (!v3)
  {
    return 0;
  }

  if (![(PKCloudStoreError *)self isPartialError])
  {
    return ([(PKCloudStoreError *)self _code]& 0xFFFFFFFFFFFFFFEFLL) == 9;
  }

  _allPartialErrors = [(PKCloudStoreError *)self _allPartialErrors];
  v6 = [_allPartialErrors pk_firstObjectPassingTest:&__block_literal_global_17];
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
  allObjects = [v5 allObjects];
  v7 = [allObjects valueForKey:@"zoneID"];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 copy];

  return v8;
}

- (id)_objectsOfClassTypeFromPartialErrors:(Class)errors
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _partialErrorsDictionary = [(PKCloudStoreError *)self _partialErrorsDictionary];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__PKCloudStoreError__objectsOfClassTypeFromPartialErrors___block_invoke;
  v13 = &unk_1E79CC9F8;
  v14 = v5;
  errorsCopy = errors;
  v7 = v5;
  [_partialErrorsDictionary enumerateKeysAndObjectsUsingBlock:&v10];
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
  code = [(PKCloudStoreError *)self code];
  domain = [(PKCloudStoreError *)self domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E695B778]];

  result = code;
  if (v5)
  {

    JUMPOUT(0x1B26F7FE0);
  }

  return result;
}

- (id)_partialErrorsDictionary
{
  userInfo = [(PKCloudStoreError *)self userInfo];
  v3 = [userInfo objectForKey:*MEMORY[0x1E695B798]];

  return v3;
}

- (id)_allPartialErrors
{
  _partialErrorsDictionary = [(PKCloudStoreError *)self _partialErrorsDictionary];
  allValues = [_partialErrorsDictionary allValues];

  return allValues;
}

+ (BOOL)_isCloudKitErrorDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:*MEMORY[0x1E695B740]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [domainCopy isEqualToString:*MEMORY[0x1E695B778]];
  }

  return v4;
}

@end