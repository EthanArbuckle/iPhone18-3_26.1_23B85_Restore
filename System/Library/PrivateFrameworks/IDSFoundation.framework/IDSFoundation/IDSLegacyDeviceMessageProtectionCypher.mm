@interface IDSLegacyDeviceMessageProtectionCypher
+ (id)cypherWithEndpoint:(id)a3 error:(id *)a4;
- (IDSLegacyDeviceMessageProtectionCypher)initWithCoder:(id)a3;
- (IDSLegacyDeviceMessageProtectionCypher)initWithPublicIdentity:(id)a3;
- (id)_fullIdentityFromAccountIdentity:(id)a3 error:(id *)a4;
- (id)cypherData:(id)a3 withAccountIdentity:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (id)decypherData:(id)a3 withAccountIdentity:(id)a4 signingDevicePublicKey:(id)a5 identifier:(id)a6 error:(id *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSLegacyDeviceMessageProtectionCypher

- (IDSLegacyDeviceMessageProtectionCypher)initWithPublicIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSLegacyDeviceMessageProtectionCypher;
  v6 = [(IDSLegacyDeviceMessageProtectionCypher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publicIdentity, a3);
  }

  return v7;
}

+ (id)cypherWithEndpoint:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [a1 alloc];
  v7 = [v5 publicDeviceIdentityContainer];

  v8 = [v7 legacyPublicIdentity];
  v9 = [v6 initWithPublicIdentity:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
  [v4 encodeObject:v5 forKey:@"kIDSLegacyDeviceMessageProtectionCypherPublicIdentity"];
}

- (IDSLegacyDeviceMessageProtectionCypher)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSLegacyDeviceMessageProtectionCypherPublicIdentity"];

  if (v5)
  {
    self = [(IDSLegacyDeviceMessageProtectionCypher *)self initWithPublicIdentity:v5];
    v6 = self;
  }

  else
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to initWithCoder MPLegacy cypher", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)cypherData:(id)a3 withAccountIdentity:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = MEMORY[0x1E69A6138];
  v11 = a4;
  v12 = [v10 registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_INFO, "LegacyMP cypher data - Begin", &v25, 2u);
  }

  v13 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1A7E1C348(v9, v13);
  }

  v14 = [(IDSLegacyDeviceMessageProtectionCypher *)self _fullIdentityFromAccountIdentity:v11 error:a6];

  if (v14)
  {
    v15 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
    v16 = [v15 signAndProtectData:v9 withSigner:v14 error:a6];

    v17 = [MEMORY[0x1E69A6138] registration];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "LegacyMP cypher data - encryption success - Done", &v25, 2u);
      }

      v16 = v16;
      v19 = v16;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
        v22 = v21;
        if (a6)
        {
          v23 = *a6;
        }

        else
        {
          v23 = 0;
        }

        v25 = 138478595;
        v26 = v9;
        v27 = 2113;
        v28 = v14;
        v29 = 2113;
        v30 = v21;
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "LegacyMP cypher data - missing decryption failed - Fail {data: %{private}@, fullIdentity: %{private}@, publicIdentity: %{private}@, error: %{public}@}", &v25, 0x2Au);
      }

      v19 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
      v25 = 138478083;
      v26 = v9;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "LegacyMP cypher data - missing full identity - Fail {data: %{private}@, publicIdentity: %{public}@}", &v25, 0x16u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)decypherData:(id)a3 withAccountIdentity:(id)a4 signingDevicePublicKey:(id)a5 identifier:(id)a6 error:(id *)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = MEMORY[0x1E69A6138];
  v12 = a4;
  v13 = [v11 registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_INFO, "LegacyMP decypher data - Begin", &v26, 2u);
  }

  v14 = [(IDSLegacyDeviceMessageProtectionCypher *)self _fullIdentityFromAccountIdentity:v12 error:a7];

  if (v14)
  {
    v15 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
    v16 = [v14 verifyAndExposeData:v10 withSigner:v15 error:a7];

    v17 = [MEMORY[0x1E69A6138] registration];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "LegacyMP decypher data - decryption success - Done", &v26, 2u);
      }

      v19 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1A7E1C3C0(v16, v19);
      }

      v16 = v16;
      v20 = v16;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
        v23 = v22;
        if (a7)
        {
          v24 = *a7;
        }

        else
        {
          v24 = 0;
        }

        v26 = 138478595;
        v27 = v10;
        v28 = 2114;
        v29 = v22;
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
    v16 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(IDSLegacyDeviceMessageProtectionCypher *)self publicIdentity];
      v26 = 138543618;
      v27 = v10;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "LegacyMP decypher data - missing full identity - Fail {data: %{public}@, publicIdentity: %{public}@", &v26, 0x16u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)_fullIdentityFromAccountIdentity:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 deviceKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 legacyIdentity];
    v8 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      v13 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v18 = v5;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Failed ot create full identity from account identity {accountIdentity: %{private}@}", buf, 0xCu);
      }

      v9 = 0;
    }

    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = v5;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create full identity from account identity - class mismatch {accountIdentity: %{private}@}", buf, 0xCu);
  }

  if (a4)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E699BB58];
    v15 = *MEMORY[0x1E696A578];
    v16 = @"Device Identity class mismatch expected IDSDeviceIdentity";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v11 errorWithDomain:v12 code:-2000 userInfo:v8];
    *a4 = v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end