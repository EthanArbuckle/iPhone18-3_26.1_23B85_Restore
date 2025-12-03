@interface IDSLegacyDeviceMessageProtectionCypher
+ (id)cypherWithEndpoint:(id)endpoint error:(id *)error;
- (IDSLegacyDeviceMessageProtectionCypher)initWithCoder:(id)coder;
- (IDSLegacyDeviceMessageProtectionCypher)initWithPublicIdentity:(id)identity;
- (id)_fullIdentityFromAccountIdentity:(id)identity error:(id *)error;
- (id)cypherData:(id)data withAccountIdentity:(id)identity identifier:(id *)identifier error:(id *)error;
- (id)decypherData:(id)data withAccountIdentity:(id)identity signingDevicePublicKey:(id)key identifier:(id)identifier error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSLegacyDeviceMessageProtectionCypher

- (IDSLegacyDeviceMessageProtectionCypher)initWithPublicIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = IDSLegacyDeviceMessageProtectionCypher;
  v6 = [(IDSLegacyDeviceMessageProtectionCypher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publicIdentity, identity);
  }

  return v7;
}

+ (id)cypherWithEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  v6 = [self alloc];
  publicDeviceIdentityContainer = [endpointCopy publicDeviceIdentityContainer];

  legacyPublicIdentity = [publicDeviceIdentityContainer legacyPublicIdentity];
  v9 = [v6 initWithPublicIdentity:legacyPublicIdentity];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  publicIdentity = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
  [coderCopy encodeObject:publicIdentity forKey:@"kIDSLegacyDeviceMessageProtectionCypherPublicIdentity"];
}

- (IDSLegacyDeviceMessageProtectionCypher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSLegacyDeviceMessageProtectionCypherPublicIdentity"];

  if (v5)
  {
    self = [(IDSLegacyDeviceMessageProtectionCypher *)self initWithPublicIdentity:v5];
    selfCopy = self;
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Failed to initWithCoder MPLegacy cypher", v9, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)cypherData:(id)data withAccountIdentity:(id)identity identifier:(id *)identifier error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10 = MEMORY[0x1E69A6138];
  identityCopy = identity;
  registration = [v10 registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_INFO, "LegacyMP cypher data - Begin", &v25, 2u);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1C348(dataCopy, registration2);
  }

  v14 = [(IDSLegacyDeviceMessageProtectionCypher *)self _fullIdentityFromAccountIdentity:identityCopy error:error];

  if (v14)
  {
    publicIdentity = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
    registration4 = [publicIdentity signAndProtectData:dataCopy withSigner:v14 error:error];

    registration3 = [MEMORY[0x1E69A6138] registration];
    v18 = registration3;
    if (registration4)
    {
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "LegacyMP cypher data - encryption success - Done", &v25, 2u);
      }

      registration4 = registration4;
      v19 = registration4;
    }

    else
    {
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        publicIdentity2 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
        v22 = publicIdentity2;
        if (error)
        {
          v23 = *error;
        }

        else
        {
          v23 = 0;
        }

        v25 = 138478595;
        v26 = dataCopy;
        v27 = 2113;
        v28 = v14;
        v29 = 2113;
        v30 = publicIdentity2;
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "LegacyMP cypher data - missing decryption failed - Fail {data: %{private}@, fullIdentity: %{private}@, publicIdentity: %{private}@, error: %{public}@}", &v25, 0x2Au);
      }

      v19 = 0;
    }
  }

  else
  {
    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
    {
      publicIdentity3 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
      v25 = 138478083;
      v26 = dataCopy;
      v27 = 2114;
      v28 = publicIdentity3;
      _os_log_impl(&dword_1A7AD9000, registration4, OS_LOG_TYPE_DEFAULT, "LegacyMP cypher data - missing full identity - Fail {data: %{private}@, publicIdentity: %{public}@}", &v25, 0x16u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)decypherData:(id)data withAccountIdentity:(id)identity signingDevicePublicKey:(id)key identifier:(id)identifier error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = MEMORY[0x1E69A6138];
  identityCopy = identity;
  registration = [v11 registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_INFO, "LegacyMP decypher data - Begin", &v26, 2u);
  }

  v14 = [(IDSLegacyDeviceMessageProtectionCypher *)self _fullIdentityFromAccountIdentity:identityCopy error:error];

  if (v14)
  {
    publicIdentity = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
    registration4 = [v14 verifyAndExposeData:dataCopy withSigner:publicIdentity error:error];

    registration2 = [MEMORY[0x1E69A6138] registration];
    v18 = registration2;
    if (registration4)
    {
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "LegacyMP decypher data - decryption success - Done", &v26, 2u);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEBUG))
      {
        sub_1A7E1C3C0(registration4, registration3);
      }

      registration4 = registration4;
      v20 = registration4;
    }

    else
    {
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        publicIdentity2 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
        v23 = publicIdentity2;
        if (error)
        {
          v24 = *error;
        }

        else
        {
          v24 = 0;
        }

        v26 = 138478595;
        v27 = dataCopy;
        v28 = 2114;
        v29 = publicIdentity2;
        v30 = 2113;
        v31 = v14;
        v32 = 2114;
        v33 = v24;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "LegacyMP decyper data - decryption failed - Fail {data: %{private}@, publicIdentity: %{public}@, fullIdentity: %{private}@, error: %{public}@}", &v26, 0x2Au);
      }

      v20 = 0;
    }
  }

  else
  {
    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
    {
      publicIdentity3 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
      v26 = 138543618;
      v27 = dataCopy;
      v28 = 2114;
      v29 = publicIdentity3;
      _os_log_impl(&dword_1A7AD9000, registration4, OS_LOG_TYPE_DEFAULT, "LegacyMP decypher data - missing full identity - Fail {data: %{public}@, publicIdentity: %{public}@", &v26, 0x16u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)_fullIdentityFromAccountIdentity:(id)identity error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  deviceKey = [identityCopy deviceKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    legacyIdentity = [deviceKey legacyIdentity];
    v8 = legacyIdentity;
    if (legacyIdentity)
    {
      v8 = legacyIdentity;
      v9 = v8;
    }

    else
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v18 = identityCopy;
        _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Failed ot create full identity from account identity {accountIdentity: %{private}@}", buf, 0xCu);
      }

      v9 = 0;
    }

    goto LABEL_11;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = identityCopy;
    _os_log_impl(&dword_1A7AD9000, registration2, OS_LOG_TYPE_DEFAULT, "Failed to create full identity from account identity - class mismatch {accountIdentity: %{private}@}", buf, 0xCu);
  }

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E699BB58];
    v15 = *MEMORY[0x1E696A578];
    v16 = @"Device Identity class mismatch expected IDSDeviceIdentity";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v11 errorWithDomain:v12 code:-2000 userInfo:v8];
    *error = v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end