@interface IDSMPPublicLegacyIdentity
+ (IDSMPPublicLegacyIdentity)identityWithData:(id)data error:(id *)error;
+ (_SecMPPublicIdentity)_createPublicIdentityFromData:(id)data error:(id *)error;
- (IDSMPPublicLegacyIdentity)initWithCoder:(id)coder;
- (id)dataRepresentationWithError:(id *)error;
- (id)signAndProtectData:(id)data withSigner:(id)signer error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSMPPublicLegacyIdentity

+ (IDSMPPublicLegacyIdentity)identityWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [self _createPublicIdentityFromData:dataCopy error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [[self alloc] initWithPublicIdentity:v8];
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error && v9)
  {
    v11 = v9;
    *error = v9;
  }

  return v10;
}

- (IDSMPPublicLegacyIdentity)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSMPPublicLegacyIdentityData"];

  v12 = 0;
  v6 = [objc_opt_class() _createPublicIdentityFromData:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [(IDSMPPublicLegacyIdentity *)self initWithPublicIdentity:v6];
    CFRelease(v6);
    self = v8;
    selfCopy = self;
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v14 = v7;
      v15 = 2113;
      v16 = v5;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "initWithCoder failed {error: %{public}@, data: %{private}@}", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v11 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v8 = 0;
  v5 = [(IDSMPPublicLegacyIdentity *)self dataRepresentationWithError:&v8];
  v6 = v8;
  if (v5)
  {
    [coderCopy encodeObject:v5 forKey:@"kIDSMPPublicLegacyIdentityData"];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Failed to encode with coder {error: %{public}@}", buf, 0xCu);
    }

    [coderCopy failWithError:v6];
  }
}

- (id)signAndProtectData:(id)data withSigner:(id)signer error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  signerCopy = signer;
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v18 = 0;
  fullIdentity = [signerCopy fullIdentity];
  publicIdentity = [(IDSMPPublicLegacyIdentity *)self publicIdentity];
  if (qword_1EB2B87E0 != -1)
  {
    sub_1A7E1A99C();
  }

  if (!off_1EB2B87E8)
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = v14;
    *error = v14;
    goto LABEL_8;
  }

  if (off_1EB2B87E8(dataCopy, fullIdentity, publicIdentity, v10, &v18))
  {
    v13 = v10;
    goto LABEL_11;
  }

  v14 = v18;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_8:
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478595;
    v20 = dataCopy;
    v21 = 2113;
    v22 = signerCopy;
    v23 = 2114;
    selfCopy = self;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_ERROR, "Failed to encrypt with message protection {data: %{private}@, fullKey: %{private}@, publicKey: %{public}@, error: %{public}@}", buf, 0x2Au);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (_SecMPPublicIdentity)_createPublicIdentityFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v11 = 0;
  if (qword_1EB2B87F0 != -1)
  {
    sub_1A7E1A9B0();
  }

  if (!off_1EB2B87F8)
  {
    v7 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

LABEL_8:
    v8 = v7;
    *error = v7;
    goto LABEL_9;
  }

  v6 = off_1EB2B87F8(0, dataCopy, &v11);
  if (v6)
  {
    goto LABEL_12;
  }

  v7 = v11;
  if (error)
  {
    goto LABEL_8;
  }

LABEL_9:
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A9C4();
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)dataRepresentationWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v12 = 0;
  publicIdentity = [(IDSMPPublicLegacyIdentity *)self publicIdentity];
  if (qword_1EB2B8810 != -1)
  {
    sub_1A7E1AA2C();
  }

  if (!off_1EB2B8818)
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = v8;
    *error = v8;
    goto LABEL_8;
  }

  if (off_1EB2B8818(publicIdentity, v5, &v12))
  {
    v7 = v5;
    goto LABEL_11;
  }

  v8 = v12;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_8:
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1AA40();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end