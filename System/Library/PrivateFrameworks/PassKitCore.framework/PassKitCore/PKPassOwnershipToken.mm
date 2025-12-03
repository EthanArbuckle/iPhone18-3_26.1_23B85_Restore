@interface PKPassOwnershipToken
+ (void)queryKeychainForOwnershipTokens:(id)tokens;
- (PKPassOwnershipToken)initWithIdentifier:(id)identifier;
- (PKPassOwnershipToken)initWithOwnershipToken:(id)token identifier:(id)identifier;
- (id)_wrapperWithType:(unint64_t)type identifier:(id)identifier;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_readFromKeychain;
- (void)_writeToKeychain;
- (void)deleteTokenFromKeychain;
- (void)deleteTokenFromLocalKeychain;
- (void)setOwnershipToken:(id)token;
@end

@implementation PKPassOwnershipToken

- (PKPassOwnershipToken)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10.receiver = self;
    v10.super_class = PKPassOwnershipToken;
    v5 = [(PKPassOwnershipToken *)&v10 init];
    if (v5)
    {
      v6 = [identifierCopy copy];
      ownershipTokenIdentifier = v5->_ownershipTokenIdentifier;
      v5->_ownershipTokenIdentifier = v6;

      [(PKPassOwnershipToken *)v5 _readFromKeychain];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPassOwnershipToken)initWithOwnershipToken:(id)token identifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  v8 = identifierCopy;
  selfCopy = 0;
  if (tokenCopy && identifierCopy)
  {
    v16.receiver = self;
    v16.super_class = PKPassOwnershipToken;
    v10 = [(PKPassOwnershipToken *)&v16 init];
    if (v10)
    {
      v11 = [v8 copy];
      ownershipTokenIdentifier = v10->_ownershipTokenIdentifier;
      v10->_ownershipTokenIdentifier = v11;

      v13 = [tokenCopy copy];
      ownershipToken = v10->_ownershipToken;
      v10->_ownershipToken = v13;

      [(PKPassOwnershipToken *)v10 _writeToKeychain];
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setOwnershipToken:(id)token
{
  if (self->_ownershipToken != token)
  {
    v5 = [token copy];
    ownershipToken = self->_ownershipToken;
    self->_ownershipToken = v5;

    [(PKPassOwnershipToken *)self _writeToKeychain];
  }
}

+ (void)queryKeychainForOwnershipTokens:(id)tokens
{
  v39 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:*MEMORY[0x1E697B008] forKey:*MEMORY[0x1E697AFF8]];
  [v4 setObject:@"com.apple.passd.pass-ownership-token" forKey:*MEMORY[0x1E697AE88]];
  [v4 setObject:@"com.apple.passd" forKey:*MEMORY[0x1E697ABD0]];
  v5 = *MEMORY[0x1E695E4D0];
  [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697AEB0]];
  [v4 setObject:*MEMORY[0x1E697B268] forKey:*MEMORY[0x1E697B260]];
  [v4 setObject:v5 forKey:*MEMORY[0x1E697B310]];
  [v4 setObject:v5 forKey:*MEMORY[0x1E697B318]];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  result = 0;
  v7 = SecItemCopyMatching(v6, &result);
  if (!v7 && result)
  {
    v28 = v6;
    v29 = v4;
    v30 = tokensCopy;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = result;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v13 = *MEMORY[0x1E697AC30];
      v14 = *MEMORY[0x1E697B3C0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 objectForKey:v13];
          v18 = [v16 objectForKey:v14];
          v19 = v18;
          if (v17 && [v18 length])
          {
            v20 = objc_alloc_init(PKPassOwnershipToken);
            v21 = [v17 copy];
            ownershipTokenIdentifier = v20->_ownershipTokenIdentifier;
            v20->_ownershipTokenIdentifier = v21;

            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v19 encoding:4];
            ownershipToken = v20->_ownershipToken;
            v20->_ownershipToken = v23;

            [v8 addObject:v20];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    if (result)
    {
      CFRelease(result);
    }

    tokensCopy = v30;
    if (v30)
    {
      v25 = [v8 copy];
      (v30)[2](v30, v25, 0);
    }

    v6 = v28;
    v4 = v29;
    goto LABEL_22;
  }

  v26 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v38 = v7;
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Error fetching pass ownership tokens from Keychain: %d", buf, 8u);
  }

  if (tokensCopy)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = [v27 initWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    tokensCopy[2](tokensCopy, 0, v8);
LABEL_22:
  }
}

void __61__PKPassOwnershipToken_deleteAllLocalKeychainOwnershipTokens__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Deleting local keychain pass ownership token %@", buf, 0xCu);
        }

        [v7 deleteTokenFromLocalKeychain];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)deleteTokenFromKeychain
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removing pass ownership token from Keychain", v5, 2u);
  }

  v4 = [(PKPassOwnershipToken *)self _wrapperWithType:1 identifier:self->_ownershipTokenIdentifier];
  [v4 resetKeychainItem];
}

- (void)deleteTokenFromLocalKeychain
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removing pass ownership token from Local Keychain", v5, 2u);
  }

  v4 = [(PKPassOwnershipToken *)self _wrapperWithType:1 identifier:self->_ownershipTokenIdentifier];
  [v4 resetLocalKeychainItem];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_ownershipTokenIdentifier forKey:@"ownershipTokenIdentifier"];
  [v3 setObject:self->_ownershipToken forKey:@"ownershipToken"];
  v4 = [v3 copy];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSString *)self->_ownershipTokenIdentifier description];
  [v3 appendFormat:@"ownershipTokenIdentifier: '%@'; ", v4];

  v5 = [(NSString *)self->_ownershipToken description];
  [v3 appendFormat:@"ownershipToken: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (void)_writeToKeychain
{
  v4 = [(PKPassOwnershipToken *)self _wrapperWithType:1 identifier:self->_ownershipTokenIdentifier];
  v3 = [(NSString *)self->_ownershipToken dataUsingEncoding:4];
  [v4 setObject:v3 forKey:*MEMORY[0x1E697B3C0]];
}

- (void)_readFromKeychain
{
  v6 = [(PKPassOwnershipToken *)self _wrapperWithType:1 identifier:self->_ownershipTokenIdentifier];
  v3 = [v6 objectForKey:*MEMORY[0x1E697B3C0]];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  ownershipToken = self->_ownershipToken;
  self->_ownershipToken = v4;
}

- (id)_wrapperWithType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[PKKeychainItemWrapper alloc] initWithIdentifier:identifierCopy accessGroup:@"com.apple.passd" serviceName:@"com.apple.passd.pass-ownership-token" type:type invisible:1];

  [(PKKeychainItemWrapper *)v6 setLabel:@"com.apple.passd.pass-ownership-token"];

  return v6;
}

@end