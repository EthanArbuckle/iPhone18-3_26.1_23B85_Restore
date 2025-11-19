@interface IDSMPFullLegacyIdentity
+ (IDSMPFullLegacyIdentity)identityWithData:(id)a3 error:(id *)a4;
+ (IDSMPFullLegacyIdentity)identityWithDataProtectionClass:(unsigned int)a3 error:(id *)a4;
+ (IDSMPFullLegacyIdentity)identityWithError:(id *)a3;
+ (_SecMPFullIdentity)_createFullIdentityFromData:(id)a3 error:(id *)a4;
+ (_SecMPFullIdentity)_createFullIdentityWithDataProtectionClass:(unsigned int)a3 error:(id *)a4;
+ (_SecMPFullIdentity)_createFullIdentityWithError:(id *)a3;
+ (_SecMPPublicIdentity)_copyPublicIdentityFromFullIdentity:(_SecMPFullIdentity *)a3 error:(id *)a4;
- (BOOL)didDataRepresentationFormatChangeFromDataRepresentation:(id)a3 error:(id *)a4;
- (BOOL)purgeFromKeychain:(id *)a3;
- (BOOL)updateIdentityToDataProtectionClass:(unsigned int)a3 error:(id *)a4;
- (IDSMPFullLegacyIdentity)initWithCoder:(id)a3;
- (IDSMPFullLegacyIdentity)initWithFullIdentity:(_SecMPFullIdentity *)a3;
- (id)dataRepresentationWithError:(id *)a3;
- (id)protectedHashOfMessageData:(id)a3 error:(id *)a4;
- (id)publicIdentityWithError:(id *)a3;
- (id)verifyAndExposeData:(id)a3 withSigner:(id)a4 error:(id *)a5;
- (unsigned)dataProtectionClassWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSMPFullLegacyIdentity

+ (IDSMPFullLegacyIdentity)identityWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [a1 _createFullIdentityFromData:v6 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [[a1 alloc] initWithFullIdentity:v8];
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

+ (IDSMPFullLegacyIdentity)identityWithError:(id *)a3
{
  v4 = [a1 _createFullIdentityWithError:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [[a1 alloc] initWithFullIdentity:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (IDSMPFullLegacyIdentity)identityWithDataProtectionClass:(unsigned int)a3 error:(id *)a4
{
  v5 = [a1 _createFullIdentityWithDataProtectionClass:*&a3 error:a4];
  if (v5)
  {
    v6 = v5;
    v7 = [[a1 alloc] initWithFullIdentity:v5];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (IDSMPFullLegacyIdentity)initWithFullIdentity:(_SecMPFullIdentity *)a3
{
  v4.receiver = self;
  v4.super_class = IDSMPFullLegacyIdentity;
  return [(IDSMPIdentity *)&v4 initWithBackingValue:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = 0;
  v5 = [(IDSMPFullLegacyIdentity *)self dataRepresentationWithError:&v8];
  v6 = v8;
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"kIDSMPFullLegacyIdentityData"];
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

- (IDSMPFullLegacyIdentity)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSMPFullLegacyIdentityData"];

  v12 = 0;
  v6 = [objc_opt_class() _createFullIdentityFromData:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [(IDSMPFullLegacyIdentity *)self initWithFullIdentity:v6];
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

- (id)publicIdentityWithError:(id *)a3
{
  v3 = [objc_opt_class() _copyPublicIdentityFromFullIdentity:-[IDSMPFullLegacyIdentity fullIdentity](self error:{"fullIdentity"), a3}];
  if (v3)
  {
    v4 = v3;
    v5 = [[IDSMPPublicLegacyIdentity alloc] initWithPublicIdentity:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)verifyAndExposeData:(id)a3 withSigner:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v18 = 0;
  v11 = [v9 publicIdentity];
  v12 = [(IDSMPFullLegacyIdentity *)self fullIdentity];
  if (qword_1EB2B87D0 != -1)
  {
    sub_1A7E1A548();
  }

  if (!off_1EB2B87D8)
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

  if (off_1EB2B87D8(v8, v11, v12, v10, &v18))
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
    v22 = self;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_ERROR, "Failed to decrypt with message protection {data: %{private}@, fullKey: %{private}@, publicKey: %{public}@, error: %{public}@}", buf, 0x2Au);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)protectedHashOfMessageData:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0;
  v7 = [(IDSMPFullLegacyIdentity *)self fullIdentity];
  if (qword_1EB2B8860 != -1)
  {
    sub_1A7E1A55C();
  }

  if (!off_1EB2B8868)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v10 = v9;
    *a4 = v9;
    goto LABEL_9;
  }

  v8 = off_1EB2B8868(v6, v7, &v13);
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = v13;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478339;
    v15 = v6;
    v16 = 2113;
    v17 = self;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_ERROR, "Failed to hash message with message protection {data: %{private}@, fullKey: %{private}@, error: %{public}@}", buf, 0x20u);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (unsigned)dataProtectionClassWithError:(id *)a3
{
  v11 = 0;
  v4 = [(IDSMPFullLegacyIdentity *)self fullIdentity];
  if (qword_1EB2B8840 != -1)
  {
    sub_1A7E1A570();
  }

  if (off_1EB2B8848 && (v5 = off_1EB2B8848(v4, &v11)) != 0)
  {
    v6 = v5;
    v7 = IMGetKeychainDataProtectionClassFromSecAttrDataProtectionClass();
    CFRelease(v6);
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1A584();
    }

    v8 = v11;
    if (a3)
    {
      v8 = v11;
      *a3 = v8;
    }

    v7 = 2;
  }

  return v7;
}

- (BOOL)updateIdentityToDataProtectionClass:(unsigned int)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = IMGetSecAttrDataProtectionClassFromKeychainDataProtectionClass();
  v14 = 0;
  v8 = [(IDSMPFullLegacyIdentity *)self fullIdentity];
  if (qword_1EB2B8830 != -1)
  {
    sub_1A7E1A5EC();
  }

  if (off_1EB2B8838 && off_1EB2B8838(v8, v7, &v14))
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v16 = self;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Updated identity data protectionClass {identity: %{private}@, dataProtectionClass: %d}", buf, 0x12u);
    }

    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1A600();
    }

    v10 = v14;
    if (a4)
    {
      v10 = v14;
      v11 = 0;
      *a4 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)purgeFromKeychain:(id *)a3
{
  v5 = [(IDSMPIdentity *)self description];
  v12 = 0;
  v6 = [(IDSMPFullLegacyIdentity *)self fullIdentity];
  if (qword_1EB2BBF20 != -1)
  {
    sub_1A7E1A67C();
  }

  if (!off_1EB2BBF18)
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

  if (off_1EB2BBF18(v6, &v12))
  {
    v7 = 1;
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
    sub_1A7E1A690();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (BOOL)didDataRepresentationFormatChangeFromDataRepresentation:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(IDSMPFullLegacyIdentity *)self dataRepresentationWithError:a4];
  if (v7)
  {
    v8 = [v6 isEqualToData:v7];
    v9 = v8 ^ 1;
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      if (v8)
      {
        v11 = @"NO";
      }

      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Serialization of message protection identity completed for updated check {dataIsDifferent: %@}", &v14, 0xCu);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v13 = *a4;
      }

      else
      {
        v13 = 0;
      }

      v14 = 138543875;
      v15 = v13;
      v16 = 2113;
      v17 = self;
      v18 = 2113;
      v19 = v6;
      _os_log_error_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_ERROR, "Failed to serialize IDSMPFullLegacyIdentity - Failed to determine didDataRepresentationFormatChangeFromDataRepresentation {error: %{public}@, fullIdentity: %{private}@, originalDataRepresentation: %{private}@}", &v14, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

+ (_SecMPFullIdentity)_createFullIdentityFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v11 = 0;
  if (qword_1EB2B8820 != -1)
  {
    sub_1A7E1A700();
  }

  if (!off_1EB2B8828)
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

  v6 = off_1EB2B8828(0, v5, &v11);
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
    sub_1A7E1A714();
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (_SecMPFullIdentity)_createFullIdentityWithError:(id *)a3
{
  v8 = 0;
  if (qword_1EB2BBF30 != -1)
  {
    sub_1A7E1A77C();
  }

  if (!off_1EB2BBF28)
  {
    v5 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    v6 = v5;
    *a3 = v5;
    goto LABEL_9;
  }

  result = off_1EB2BBF28(0, &v8);
  if (result)
  {
    return result;
  }

  v5 = v8;
  if (a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A790(v5, v7);
  }

  return 0;
}

+ (_SecMPFullIdentity)_createFullIdentityWithDataProtectionClass:(unsigned int)a3 error:(id *)a4
{
  v10 = 0;
  v5 = IMGetSecAttrDataProtectionClassFromKeychainDataProtectionClass();
  if (qword_1EB2BBF40 != -1)
  {
    sub_1A7E1A808();
  }

  if (!off_1EB2BBF38)
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

  result = off_1EB2BBF38(0, v5, &v10);
  if (result)
  {
    return result;
  }

  v7 = v10;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A81C();
  }

  return 0;
}

+ (_SecMPPublicIdentity)_copyPublicIdentityFromFullIdentity:(_SecMPFullIdentity *)a3 error:(id *)a4
{
  v10 = 0;
  if (qword_1EB2B8800 != -1)
  {
    sub_1A7E1A89C();
  }

  if (!off_1EB2B8808)
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

  result = off_1EB2B8808(0, a3, &v10);
  if (result)
  {
    return result;
  }

  v7 = v10;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A8B0();
  }

  return 0;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v12 = 0;
  v6 = [(IDSMPFullLegacyIdentity *)self fullIdentity];
  if (qword_1EB2B8850 != -1)
  {
    sub_1A7E1A918();
  }

  if (!off_1EB2B8858)
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

  if (off_1EB2B8858(v6, v5, &v12))
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
    sub_1A7E1A92C();
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end