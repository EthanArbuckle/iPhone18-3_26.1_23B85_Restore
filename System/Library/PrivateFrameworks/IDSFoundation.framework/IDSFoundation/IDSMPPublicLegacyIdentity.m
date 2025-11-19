@interface IDSMPPublicLegacyIdentity
+ (IDSMPPublicLegacyIdentity)identityWithData:(id)a3 error:(id *)a4;
+ (_SecMPPublicIdentity)_createPublicIdentityFromData:(id)a3 error:(id *)a4;
- (IDSMPPublicLegacyIdentity)initWithCoder:(id)a3;
- (id)dataRepresentationWithError:(id *)a3;
- (id)signAndProtectData:(id)a3 withSigner:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSMPPublicLegacyIdentity

+ (IDSMPPublicLegacyIdentity)identityWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [a1 _createPublicIdentityFromData:v6 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [[a1 alloc] initWithPublicIdentity:v8];
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4 && v9)
  {
    v11 = v9;
    *a4 = v9;
  }

  return v10;
}

- (IDSMPPublicLegacyIdentity)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSMPPublicLegacyIdentityData"];

  v12 = 0;
  v6 = [objc_opt_class() _createPublicIdentityFromData:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [(IDSMPPublicLegacyIdentity *)self initWithPublicIdentity:v6];
    CFRelease(v6);
    self = v8;
    v9 = self;
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v14 = v7;
      v15 = 2113;
      v16 = v5;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "initWithCoder failed {error: %{public}@, data: %{private}@}", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = 0;
  v5 = [(IDSMPPublicLegacyIdentity *)self dataRepresentationWithError:&v8];
  v6 = v8;
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"kIDSMPPublicLegacyIdentityData"];
  }

  else
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to encode with coder {error: %{public}@}", buf, 0xCu);
    }

    [v4 failWithError:v6];
  }
}

- (id)signAndProtectData:(id)a3 withSigner:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v18 = 0;
  v11 = [v9 fullIdentity];
  v12 = [(IDSMPPublicLegacyIdentity *)self publicIdentity];
  if (qword_1EB2B87E0 != -1)
  {
    sub_1A7E1A99C();
  }

  if (!off_1EB2B87E8)
  {
    v14 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = v14;
    *a5 = v14;
    goto LABEL_8;
  }

  if (off_1EB2B87E8(v8, v11, v12, v10, &v18))
  {
    v13 = v10;
    goto LABEL_11;
  }

  v14 = v18;
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v16 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478595;
    v20 = v8;
    v21 = 2113;
    v22 = v9;
    v23 = 2114;
    v24 = self;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_ERROR, "Failed to encrypt with message protection {data: %{private}@, fullKey: %{private}@, publicKey: %{public}@, error: %{public}@}", buf, 0x2Au);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (_SecMPPublicIdentity)_createPublicIdentityFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v11 = 0;
  if (qword_1EB2B87F0 != -1)
  {
    sub_1A7E1A9B0();
  }

  if (!off_1EB2B87F8)
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v8 = v7;
    *a4 = v7;
    goto LABEL_9;
  }

  v6 = off_1EB2B87F8(0, v5, &v11);
  if (v6)
  {
    goto LABEL_12;
  }

  v7 = v11;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A9C4();
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v12 = 0;
  v6 = [(IDSMPPublicLegacyIdentity *)self publicIdentity];
  if (qword_1EB2B8810 != -1)
  {
    sub_1A7E1AA2C();
  }

  if (!off_1EB2B8818)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = v8;
    *a3 = v8;
    goto LABEL_8;
  }

  if (off_1EB2B8818(v6, v5, &v12))
  {
    v7 = v5;
    goto LABEL_11;
  }

  v8 = v12;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1AA40();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end