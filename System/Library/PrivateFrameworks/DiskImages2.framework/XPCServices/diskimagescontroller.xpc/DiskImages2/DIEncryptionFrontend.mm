@interface DIEncryptionFrontend
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)a3 error:(id *)a4;
- (BOOL)addPassphraseEntryWithXpcHandler:(id)a3 flags:(unint64_t)a4 usage:(int64_t)a5 error:(id *)a6;
- (BOOL)askPermissionWithRememberPassword:(BOOL *)a3 error:(id *)a4;
- (BOOL)checkAuthEntriesWithHasPassphraseEntry:(BOOL *)a3 hasPublicKeyEntry:(BOOL *)a4 error:(id *)a5;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)a3 usage:(int64_t)a4 error:(id *)a5;
- (BOOL)keychainUnlockWithError:(id *)a3;
- (BOOL)keychainUnlockWithIsSystemKeychain:(BOOL)a3 error:(id *)a4;
- (BOOL)setPassphrase:(const char *)a3 error:(id *)a4;
- (BOOL)storeInKeychainWithPassphrase:(id)a3 forceSystemKeychain:(BOOL)a4 error:(id *)a5;
- (BOOL)unlockUsingPublicKeyWithError:(id *)a3;
- (BOOL)unlockUsingSaksWithError:(id *)a3;
- (BOOL)unlockUsingSymmetricKeyWithError:(id *)a3;
- (BOOL)unlockWithPassphrase:(const char *)a3 error:(id *)a4;
- (BOOL)unlockWithXpcHandler:(id)a3 error:(id *)a4;
- (BOOL)updateDiskImageParamsWithFrontend:(id)a3 error:(id *)a4;
- (BOOL)validateDeserializationWithError:(id *)a3;
- (DIEncryptionFrontend)initWithCoder:(id)a3;
- (DIEncryptionFrontend)initWithParams:(id)a3;
- (NSString)CLIPassphrasePromptCreate;
- (NSString)CLIPassphrasePromptUnlock;
- (NSString)GUIPassphrasePromptCreate;
- (NSString)GUIPassphrasePromptUnlock;
- (expected<crypto::crypto_serializer_t,)getSerializerWithAuthTable:(DIEncryptionFrontend *)self;
- (id).cxx_construct;
- (id)getCertificateWithCertificatePath:(id)a3 error:(id *)a4;
- (id)getCertificateWithPublicKey:(id)a3 error:(id *)a4;
- (unint64_t)flags;
- (void)encodeWithCoder:(id)a3;
- (void)generateAuthTableWithError:(id *)a3;
@end

@implementation DIEncryptionFrontend

- (DIEncryptionFrontend)initWithParams:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DIEncryptionFrontend;
  v6 = [(DIEncryptionFrontend *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diParams, a3);
    if ([(DIEncryptionFrontend *)v7 validateDeserializationWithError:0])
    {
      v8 = [v5 encryptionUUID];
      encryptionUUID = v7->_encryptionUUID;
      v7->_encryptionUUID = v8;
    }
  }

  return v7;
}

- (NSString)GUIPassphrasePromptCreate
{
  v2 = [(DIEncryptionFrontend *)self diParams];
  v3 = [v2 inputURL];
  v4 = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter a new password to secure “%@”", v4];

  return v5;
}

- (NSString)GUIPassphrasePromptUnlock
{
  v2 = [(DIEncryptionFrontend *)self diParams];
  v3 = [v2 inputURL];
  v4 = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter password to access “%@”", v4];

  return v5;
}

- (NSString)CLIPassphrasePromptCreate
{
  v2 = [(DIEncryptionFrontend *)self diParams];
  v3 = [v2 inputURL];
  v4 = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter a new password to secure “%@”: ", v4];

  return v5;
}

- (NSString)CLIPassphrasePromptUnlock
{
  v2 = [(DIEncryptionFrontend *)self diParams];
  v3 = [v2 inputURL];
  v4 = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter password to access “%@”: ", v4];

  return v5;
}

- (unint64_t)flags
{
  v2 = [(DIEncryptionFrontend *)self diParams];
  v3 = [v2 readPassphraseFlags];

  v4 = isatty(0);
  v5 = 2;
  if (!v4)
  {
    v5 = 8;
  }

  v6 = v3 & 0xFFFFFFFFFFFFFFF5;
  if (v4)
  {
    v6 = v3;
  }

  if ((v3 & 8) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (+[DIEncryptionFrontend hasGUIaccess])
  {
    return v7;
  }

  else
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

- (id)getCertificateWithCertificatePath:(id)a3 error:(id *)a4
{
  v5 = [NSData dataWithContentsOfFile:a3];
  if (!v5)
  {
    v5 = [DIError nilWithPOSIXCode:*__error() description:@"Failed to read from certificate file " error:a4];
  }

  return v5;
}

- (id)getCertificateWithPublicKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v11 = 0;
  v12[0] = kSecClass;
  v12[1] = kSecAttrPublicKeyHash;
  v13[0] = kSecClassCertificate;
  v13[1] = v5;
  v12[2] = kSecReturnData;
  v13[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = SecItemCopyMatching(v7, &v11);
  if (v8)
  {
    v9 = [DIError nilWithOSStatus:v8 verboseInfo:@"Failed to find keychain item using hashed key" error:a4];
  }

  else
  {
    v9 = v11;
  }

  return v9;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)a3 usage:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v9 = *__error();
  if (sub_1000E044C())
  {
    v10 = sub_1000E03D8();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v33 = 72;
    v34 = 2080;
    v35 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E03D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v33 = 72;
      v34 = 2080;
      v35 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (a4)
  {
    v13 = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v14 = v13;
    v15 = [v13 UTF8String];
    if (v7)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v13 = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v17 = v13;
    v15 = [v13 UTF8String];
    if (v7)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  v18 = readpassphrase(v15, __s1, 0x102uLL, v16);

  if (v18)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    if (v7)
    {
      goto LABEL_21;
    }

    v19 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
    v20 = v19 == 0;

    if (v20)
    {
      goto LABEL_21;
    }

    v21 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
    v22 = v21;
    v23 = readpassphrase([v21 UTF8String], buf, 0x102uLL, 2);

    if (!v23)
    {
      return [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:a5];
    }

    if (!strncmp(__s1, buf, 0x101uLL))
    {
LABEL_21:
      if (a4 == 1)
      {
        return [(DIEncryptionFrontend *)self setPassphrase:__s1 error:a5];
      }

      if (a4)
      {
        return [DIError failWithPOSIXCode:80 verboseInfo:@"Failed to use the passphrase that was given" error:a5];
      }

      return [(DIEncryptionFrontend *)self unlockWithPassphrase:__s1 error:a5];
    }

    return [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:a5];
  }

  if (v7)
  {
    return [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:a5];
  }

  v25 = *__error();
  if (sub_1000E044C())
  {
    v26 = sub_1000E03D8();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v33 = 72;
    v34 = 2080;
    v35 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
    v27 = _os_log_send_and_compose_impl();

    if (v27)
    {
      fprintf(__stderrp, "%s\n", v27);
      free(v27);
    }
  }

  else
  {
    v28 = sub_1000E03D8();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v33 = 72;
      v34 = 2080;
      v35 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
    }
  }

  *__error() = v25;
  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:25 userInfo:0];
  v30 = [DIError failWithInError:v29 outError:a5];

  return v30;
}

- (BOOL)storeInKeychainWithPassphrase:(id)a3 forceSystemKeychain:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(DIEncryptionFrontend *)self diParams];
  v10 = [v9 inputURL];
  v11 = [v10 path];
  v12 = [v11 lastPathComponent];

  v13 = [v8 UTF8String];
  if (v13 && *v13)
  {
    v14 = [[NSData alloc] initWithBytes:v13 length:strlen(v13)];
    v36[0] = kSecClassGenericPassword;
    v35[0] = kSecClass;
    v35[1] = kSecAttrAccount;
    v15 = [(DIEncryptionFrontend *)self encryptionUUID];
    v16 = [v15 UUIDString];
    v36[1] = v16;
    v36[2] = @"disk image password";
    v35[2] = kSecAttrDescription;
    v35[3] = kSecAttrLabel;
    v36[3] = v12;
    v36[4] = v12;
    v35[4] = kSecAttrService;
    v35[5] = kSecAttrSynchronizable;
    v35[6] = kSecValueData;
    v36[5] = &__kCFBooleanTrue;
    v36[6] = v14;
    v17 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];
    v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

    v28 = 0;
    if (a4)
    {
      goto LABEL_28;
    }

    if (![(DIEncryptionFrontend *)self checkWithHasIcloudKeychain:&v28 error:a5])
    {
LABEL_14:
      v19 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ((v28 & 1) == 0)
    {
LABEL_28:
      if (![DIEncryptionFrontend updateSystemKeychainAttrWithDict:v18 isStoring:1 error:a5])
      {
        goto LABEL_14;
      }
    }

    v20 = *__error();
    if (sub_1000E044C())
    {
      v21 = sub_1000E03D8();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      v22 = "system";
      *buf = 68158210;
      v30 = 80;
      v32 = "[DIEncryptionFrontend storeInKeychainWithPassphrase:forceSystemKeychain:error:]";
      v31 = 2080;
      if (v28)
      {
        v22 = "iCloud";
      }

      v33 = 2080;
      v34 = v22;
      v23 = _os_log_send_and_compose_impl();

      if (v23)
      {
        fprintf(__stderrp, "%s\n", v23);
        free(v23);
      }
    }

    else
    {
      v24 = sub_1000E03D8();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if (v28)
        {
          v25 = "iCloud";
        }

        else
        {
          v25 = "system";
        }

        *buf = 68158210;
        v30 = 80;
        v31 = 2080;
        v32 = "[DIEncryptionFrontend storeInKeychainWithPassphrase:forceSystemKeychain:error:]";
        v33 = 2080;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%.*s: Storing passphrase in the %s keychain", buf, 0x1Cu);
      }
    }

    *__error() = v20;
    v26 = SecItemAdd(v18, 0);
    if (v26)
    {
      v19 = [DIError failWithOSStatus:v26 description:@"Failed to store the passphrase in the keychain" error:a5];
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_24;
  }

  v19 = [DIError failWithEnumValue:154 verboseInfo:@"Cannot store an empty passphrase" error:a5];
LABEL_25:

  return v19;
}

- (BOOL)askPermissionWithRememberPassword:(BOOL *)a3 error:(id *)a4
{
  if (![(DIEncryptionFrontend *)self allowStoringInKeychain])
  {
    return 1;
  }

  v6 = *__error();
  if (sub_1000E044C())
  {
    *error = 0;
    v7 = sub_1000E03D8();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 64;
    v21 = 2080;
    v22 = "[DIEncryptionFrontend askPermissionWithRememberPassword:error:]";
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E03D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 64;
      v21 = 2080;
      v22 = "[DIEncryptionFrontend askPermissionWithRememberPassword:error:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Asking user permission to store the passphrase in the keychain", buf, 0x12u);
    }
  }

  *__error() = v6;
  error[0] = 0;
  v18[0] = kCFUserNotificationAlertHeaderKey;
  v18[1] = kCFUserNotificationDefaultButtonTitleKey;
  v19[0] = @"Remember password in my keychain?";
  v19[1] = @"Yes";
  v18[2] = kCFUserNotificationOtherButtonTitleKey;
  v18[3] = kCFUserNotificationAlternateButtonTitleKey;
  v19[2] = @"No";
  v19[3] = @"Cancel";
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v11 = CFUserNotificationCreate(0, 0.0, 3uLL, error, v10);
  v12 = v11;
  if (!v11)
  {
    v15 = [NSString stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error[0]];
    v14 = [DIError failWithEnumValue:154 verboseInfo:v15 error:a4];

    return v14;
  }

  *buf = 0;
  if (!CFUserNotificationReceiveResponse(v11, 0.0, buf))
  {
    if (*buf != 2)
    {
      if (*buf)
      {
        v13 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:a4];
        goto LABEL_11;
      }

      *a3 = 1;
    }

    return 1;
  }

  v13 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:a4];
LABEL_11:
  v14 = v13;

  return v14;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)a3 error:(id *)a4
{
  error = 0;
  if (a3)
  {
    v7 = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v8 = [NSMutableArray arrayWithObject:v7];

    v9 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v10 = 65539;
    v11 = v9 != 0;

    if (v9)
    {
      v12 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v8 addObject:v12];

      v10 = 196611;
    }

    v31[0] = kCFUserNotificationAlertHeaderKey;
    v13 = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    v14 = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v8 = [NSMutableArray arrayWithObject:v14];

    v31[0] = kCFUserNotificationAlertHeaderKey;
    v13 = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v11 = 0;
    v10 = 65539;
  }

  v32[0] = v13;
  v32[1] = @"OK";
  v31[1] = kCFUserNotificationDefaultButtonTitleKey;
  v31[2] = kCFUserNotificationAlternateButtonTitleKey;
  v31[3] = kCFUserNotificationTextFieldTitlesKey;
  v32[2] = @"Cancel";
  v32[3] = v8;
  v15 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

  v17 = CFUserNotificationCreate(0, 0.0, v10, &error, v16);
  v18 = v17;
  if (!v17)
  {
    v20 = [NSString stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v19 = [DIError failWithEnumValue:154 verboseInfo:v20 error:a4];

    goto LABEL_14;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v17, 0.0, &responseFlags))
  {
    v28 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v21 = 0;
      v22 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:a4];
    }

    else
    {
      v21 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 0);
      if (v11)
      {
        v24 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 1);
        if (![v21 isEqualToString:v24])
        {
          v19 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:a4];

          goto LABEL_13;
        }
      }

      if (a3 == 1)
      {
        v27 = v21;
        v26 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v21 UTF8String], a4);
      }

      else
      {
        if (a3)
        {
          v22 = [DIError failWithPOSIXCode:80 verboseInfo:@"Failed to use the passphrase that was given" error:a4];
          goto LABEL_12;
        }

        v25 = v21;
        v26 = -[DIEncryptionFrontend unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v21 UTF8String], a4);
      }

      if ((v26 & 1) == 0 || ![(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v28 error:a4])
      {
        v19 = 0;
        goto LABEL_13;
      }

      if (![(DIEncryptionFrontend *)self allowStoringInKeychain]|| v28 != 1)
      {
        v19 = 1;
        goto LABEL_13;
      }

      v22 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v21 forceSystemKeychain:0 error:a4];
    }

LABEL_12:
    v19 = v22;
LABEL_13:

    goto LABEL_14;
  }

  v19 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:a4];
LABEL_14:

  return v19;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 validateDeserializationWithError:a4];
  if (v7)
  {
    v8 = [v6 diParams];
    v9 = [v8 diskImageParamsXPC];
    v10 = [(DIEncryptionFrontend *)self diParams];
    [v10 setDiskImageParamsXPC:v9];

    -[DIEncryptionFrontend setAllowStoringInKeychain:](self, "setAllowStoringInKeychain:", [v6 allowStoringInKeychain]);
  }

  return v7;
}

- (DIEncryptionFrontend)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionFrontend *)self initWithParams:v5];
  if (v6)
  {
    v6->_allowStoringInKeychain = [v4 decodeBoolForKey:@"allowStoringInKeychain"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(DIEncryptionFrontend *)self diParams];
  [v5 encodeObject:v4 forKey:@"diParams"];

  [v5 encodeBool:-[DIEncryptionFrontend allowStoringInKeychain](self forKey:{"allowStoringInKeychain"), @"allowStoringInKeychain"}];
}

- (BOOL)validateDeserializationWithError:(id *)a3
{
  v4 = [(DIEncryptionFrontend *)self diParams];
  LOBYTE(a3) = [v4 validateDeserializationWithError:a3];

  return a3;
}

- (void)generateAuthTableWithError:(id *)a3
{
  p_auth_table = &self->auth_table;
  if (!self->auth_table.__engaged_)
  {
    v5 = [(DIEncryptionFrontend *)self diParams];
    v6 = [v5 diskImageParamsXPC];
    v7 = [v6 backendXPC];

    if (v7)
    {
      [v7 getCryptoHeaderBackend];
      if (v12)
      {
        [v7 cryptoHeader];
        sub_1001886C0();
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    v8 = [DIError nilWithUnexpected:v10 verboseInfo:v11 error:@"Failed to open crypto header", a3];
    p_auth_table = 0;
    if (v12 == 1 && v11)
    {
      sub_10000367C(v11);
    }
  }

  return p_auth_table;
}

- (expected<crypto::crypto_serializer_t,)getSerializerWithAuthTable:(DIEncryptionFrontend *)self
{
  v7 = [(DIEncryptionFrontend *)self diParams];
  v8 = [v7 diskImageParamsXPC];
  v9 = [v8 backendXPC];
  v10 = v9;
  if (v9)
  {
    [v9 getCryptoHeaderBackend];
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21)
  {
    v12 = [(DIEncryptionFrontend *)self diParams];
    v13 = v12;
    if (v12)
    {
      [v12 backend];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    sub_100030C94(&v16, &v18);
    if (v17)
    {
      sub_10000367C(v17);
    }

    v14 = v18[1];
    v15 = v18[2];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100188860(v14, &v20, a4, retstr);
    if (v15)
    {
      sub_10000367C(v15);
    }

    result = v19;
    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v21)
    {
      result = v20.var0.var0.__cntrl_;
      if (v20.var0.var0.__cntrl_)
      {
        sub_10000367C(v20.var0.var0.__cntrl_);
      }
    }
  }

  else
  {
    retstr->var0.var0.var0 = v20;
    LOBYTE(retstr[2].var0.var0.var0.var0.var1.var1) = 0;
  }

  return result;
}

- (BOOL)unlockWithPassphrase:(const char *)a3 error:(id *)a4
{
  v7 = [(DIEncryptionFrontend *)self diParams];
  v8 = [v7 diskImageParamsXPC];

  v20 = v8;
  v9 = [v8 backendXPC];
  v10 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4];
  v11 = v10;
  if (v10)
  {
    v12 = *v10;
    v28 = v10;
    v29 = v12;
    v30[0] = 0;
    v31 = 0;
    v13 = &selRef_stringWithCString_encoding_;
    if (v12 == v10[1])
    {
LABEL_20:
      sleep(2u);
      v4 = [v13 + 445 failWithPOSIXCode:80 description:@"Incorrect passphrase" error:a4];
    }

    else
    {
      while (1)
      {
        v14 = sub_100031244(&v28);
        if (!*(v14 + 632))
        {
          v15 = sub_100180660(v14, a3, &v21);
          if (v23 == 1)
          {
            [v9 cryptoHeader];
            sub_100036F78();
          }

          v16 = std::generic_category();
          *buf = 35;
          v27 = v16;
          if (*(*v22 + 32))(v22, v21, buf) || ((v27->equivalent_0)(v27, &v21, *buf))
          {
            v17 = 1;
          }

          else
          {
            v4 = [DIError failWithUnexpected:v21 error:v22, a4];
            v17 = 0;
          }

          if (v23 == 1)
          {
            *buf = &v21;
            sub_100036760(buf);
          }

          if ((v17 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v28, v24);
        if (v25[640] == 1)
        {
          sub_100035E5C(v25);
        }

        if (v28 == v11 && v29 == v11[1])
        {
          if (v31)
          {
            sub_100035E5C(v30);
          }

          v13 = &selRef_stringWithCString_encoding_;
          goto LABEL_20;
        }
      }

      if (v31)
      {
        sub_100035E5C(v30);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)setPassphrase:(const char *)a3 error:(id *)a4
{
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a4];
  if (!v7)
  {
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v8 = v7;
  [(DIEncryptionFrontend *)self getSerializerWithAuthTable:v7];
  if (v18)
  {
    LODWORD(v22) = 8;
    sub_10017FF04(v8, a3, &v22, v17, &v26);
    if (v28)
    {
      (*(v17[0] + 1))(v15, v17, &v27 + 4);
      if (v16)
      {
        v9 = *(v8 + 8);
        v19[0] = v8;
        v19[1] = v9;
        v10 = v19;
        v20[0] = 0;
        v21 = 0;
        sub_10017FA9C(v8, v15, v19, &v22);
        if (v21 == 1)
        {
          sub_100035E5C(v20);
        }

        v11 = v25;
        if (v25 & 1) != 0 || (LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to add passphrase entry to auth table", a4], (v25))
        {
          if (v24[640] == 1)
          {
            sub_100035E5C(v24);
          }

          if (v11)
          {
            (*(v17[0] + 4))(&v22, v17, v8);
            v12 = v24[0];
            if ((v24[0] & 1) == 0)
            {
              LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to update crypto header", a4];
            }

            LOBYTE(v10) = v12 | v10;
          }
        }
      }

      else
      {
        LOBYTE(v10) = [DIError failWithUnexpected:*&v15[0] verboseInfo:*(&v15[0] + 1) error:@"Failed to serialize passphrase to crypto header", a4];
      }

      if (v16 == 1)
      {
        sub_100036B7C(v15);
      }

      goto LABEL_19;
    }

    v13 = [DIError failWithUnexpected:v26 verboseInfo:v27 error:@"Failed to create passphrase auth entry", a4];
  }

  else
  {
    v13 = [DIError failWithUnexpected:v17[0] verboseInfo:v17[1] error:@"Failed to create crypto serializer", a4];
  }

  LOBYTE(v10) = v13;
LABEL_19:
  if (v18 == 1)
  {
    (*(v17[0] + 7))(v17);
  }

  return v10 & 1;
}

- (BOOL)addPassphraseEntryWithXpcHandler:(id)a3 flags:(unint64_t)a4 usage:(int64_t)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  if ((v8 & 8) != 0)
  {
    v11 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:1 usage:a5 error:a6];
    goto LABEL_14;
  }

  if (([(DIEncryptionFrontend *)self flags]& 2) != 0)
  {
    v19 = 0;
    v12 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:0 usage:a5 error:&v19];
    v13 = v19;
    v14 = v13;
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v16 = [v13 code];
      if (v16 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -v16;
      }

      if (v17 == 25)
      {

        if ((v8 & 4) == 0)
        {
          goto LABEL_4;
        }

LABEL_13:
        v11 = [v10 GUIAskForPassphraseWithEncryptionFrontend:self usage:a5 error:a6];
        goto LABEL_14;
      }

      v15 = [DIError failWithInError:v14 outError:a6];
    }

    goto LABEL_15;
  }

  if ((v8 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = [DIError failWithPOSIXCode:25 verboseInfo:@"Cannot retrieve passphrase from user via TTY or GUI" error:a6];
LABEL_14:
  v15 = v11;
LABEL_15:

  return v15;
}

- (BOOL)unlockWithXpcHandler:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DIEncryptionFrontend *)self diParams];
  v8 = [v7 mutableSymmetricKey];

  if (!v8)
  {
    v11 = [(DIEncryptionFrontend *)self flags];
    v39 = 0;
    if (![(DIEncryptionFrontend *)self checkAuthEntriesWithHasPassphraseEntry:&v39 + 1 hasPublicKeyEntry:&v39 error:a4])
    {
      goto LABEL_25;
    }

    if (v39 == 1 && (v11 & 1) != 0)
    {
      if (![(DIEncryptionFrontend *)self unlockUsingPublicKeyWithError:a4])
      {
        goto LABEL_25;
      }

      v12 = [(DIEncryptionFrontend *)self diParams];
      v13 = [v12 hasUnlockedBackend];

      if (v13)
      {
LABEL_9:
        v10 = 1;
        goto LABEL_26;
      }
    }

    if (HIBYTE(v39) != 1)
    {
      v22 = @"The image is encrypted but has no passphrase auth entry";
      v23 = 81;
      goto LABEL_28;
    }

    if ((v11 & 8) != 0)
    {
      v9 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:1 usage:0 error:a4];
      goto LABEL_3;
    }

    if (v11)
    {
      if (![(DIEncryptionFrontend *)self unlockUsingPublicKeyWithError:a4])
      {
        goto LABEL_25;
      }

      v14 = [(DIEncryptionFrontend *)self diParams];
      v15 = [v14 hasUnlockedBackend];

      if (v15)
      {
        goto LABEL_9;
      }

      if (![v6 keychainUnlockWithEncryptionUnlocker:self error:a4])
      {
        goto LABEL_25;
      }

      v16 = [(DIEncryptionFrontend *)self diParams];
      v17 = [v16 hasUnlockedBackend];

      if (v17)
      {
        goto LABEL_9;
      }

      if ([(DIEncryptionFrontend *)self allowStoringInKeychain])
      {
        if (![(DIEncryptionFrontend *)self lookupLegacyKeychainWithXpcHandler:v6 error:a4])
        {
          goto LABEL_25;
        }

        v18 = [(DIEncryptionFrontend *)self diParams];
        v19 = [v18 hasUnlockedBackend];

        if (v19)
        {
          goto LABEL_9;
        }
      }
    }

    if ([(DIEncryptionFrontend *)self unlockUsingSaksWithError:a4])
    {
      v20 = [(DIEncryptionFrontend *)self diParams];
      v21 = [v20 hasUnlockedBackend];

      if (v21)
      {
        goto LABEL_9;
      }

      if ((v11 & 2) != 0)
      {
        v38 = 0;
        v25 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:0 usage:0 error:&v38];
        v26 = v38;
        v27 = v26;
        if (v25)
        {
LABEL_31:
          v10 = 1;
LABEL_50:

          goto LABEL_26;
        }

        v28 = [v26 code];
        if (v28 >= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = -v28;
        }

        if (v29 != 25)
        {
          v36 = [DIError failWithInError:v27 outError:a4];
LABEL_49:
          v10 = v36;
          goto LABEL_50;
        }

        if ((v11 & 4) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v11 & 4) == 0)
      {
LABEL_24:
        v22 = @"Cannot retrieve passphrase from user via TTY or GUI";
        v23 = 25;
LABEL_28:
        v9 = [DIError failWithPOSIXCode:v23 verboseInfo:v22 error:a4];
        goto LABEL_3;
      }

      v30 = 0;
      v31 = 2;
      while (1)
      {
        v37 = v30;
        v32 = [v6 GUIAskForPassphraseWithEncryptionFrontend:self usage:0 error:&v37];
        v27 = v37;

        if (v32)
        {
          goto LABEL_31;
        }

        v33 = [v27 code];
        if (v33 >= 0)
        {
          v34 = v33;
        }

        else
        {
          v34 = -v33;
        }

        v35 = v34 != 80 || v31-- == 0;
        v30 = v27;
        if (v35)
        {
          v36 = [DIError failWithInError:v27 outError:a4];
          goto LABEL_49;
        }
      }
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v9 = [(DIEncryptionFrontend *)self unlockUsingSymmetricKeyWithError:a4];
LABEL_3:
  v10 = v9;
LABEL_26:

  return v10;
}

- (BOOL)keychainUnlockWithIsSystemKeychain:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  result = 0;
  v48[0] = kSecClassGenericPassword;
  v47[0] = kSecClass;
  v47[1] = kSecAttrAccount;
  v7 = [(DIEncryptionFrontend *)self encryptionUUID];
  v8 = [v7 UUIDString];
  v48[1] = v8;
  v48[2] = kSecAttrSynchronizableAny;
  v47[2] = kSecAttrSynchronizable;
  v47[3] = kSecReturnData;
  v47[4] = kSecUseDataProtectionKeychain;
  v48[3] = &__kCFBooleanTrue;
  v48[4] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:5];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  if (v5 && ![DIEncryptionFrontend updateSystemKeychainAttrWithDict:v10 isStoring:0 error:0])
  {
    goto LABEL_44;
  }

  v11 = *__error();
  if (sub_1000E044C())
  {
    v39 = 0;
    v12 = sub_1000E03D8();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    v13 = "iCloud";
    *buf = 68158210;
    v42 = 65;
    v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    v43 = 2080;
    if (v5)
    {
      v13 = "system";
    }

    v45 = 2080;
    v46 = v13;
    LODWORD(v38) = 28;
    v37 = buf;
    v14 = _os_log_send_and_compose_impl();

    if (v14)
    {
      fprintf(__stderrp, "%s\n", v14);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "iCloud";
      *buf = 68158210;
      v42 = 65;
      v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      v43 = 2080;
      if (v5)
      {
        v16 = "system";
      }

      v45 = 2080;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Looking for encrypted image passphrase in the %s keychain", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  v17 = SecItemCopyMatching(v10, &result);
  v18 = v17;
  if (v17 == -25308)
  {
    v19 = *__error();
    if (!sub_1000E044C())
    {
      v33 = sub_1000E03D8();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v42 = 65;
        v43 = 2080;
        v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%.*s: Keychain item requires ACL upgrade", buf, 0x12u);
      }

      goto LABEL_39;
    }

    v39 = 0;
    v25 = sub_1000E03D8();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v42 = 65;
    v43 = 2080;
    v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    LODWORD(v38) = 18;
    v37 = buf;
    v21 = _os_log_send_and_compose_impl();

    if (v21)
    {
LABEL_18:
      fprintf(__stderrp, "%s\n", v21);
      free(v21);
    }

LABEL_39:
    *__error() = v19;
    v32 = 1;
    [(DIEncryptionFrontend *)self setAllowStoringInKeychain:1, v37, v38, v39];
    goto LABEL_45;
  }

  if (v17)
  {
    if (v17 == -25300)
    {
      v19 = *__error();
      if (!sub_1000E044C())
      {
        v34 = sub_1000E03D8();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v42 = 65;
          v43 = 2080;
          v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%.*s: No matching item found in keychain", buf, 0x12u);
        }

        goto LABEL_39;
      }

      v39 = 0;
      v20 = sub_1000E03D8();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v42 = 65;
      v43 = 2080;
      v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      LODWORD(v38) = 18;
      v37 = buf;
      v21 = _os_log_send_and_compose_impl();

      if (v21)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }

    v26 = *__error();
    if (sub_1000E044C())
    {
      v27 = sub_1000E03D8();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v42 = 65;
      v43 = 2080;
      v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      v45 = 1024;
      LODWORD(v46) = v18;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        fprintf(__stderrp, "%s\n", v28);
        free(v28);
      }
    }

    else
    {
      v35 = sub_1000E03D8();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v42 = 65;
        v43 = 2080;
        v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
        v45 = 1024;
        LODWORD(v46) = v18;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Keychain lookup returned %d", buf, 0x18u);
      }
    }

    *__error() = v26;
LABEL_44:
    v32 = 1;
    goto LABEL_45;
  }

  v22 = *__error();
  if (sub_1000E044C())
  {
    v23 = sub_1000E03D8();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v42 = 65;
    v43 = 2080;
    v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    v24 = _os_log_send_and_compose_impl();

    if (v24)
    {
      fprintf(__stderrp, "%s\n", v24);
      free(v24);
    }
  }

  else
  {
    v29 = sub_1000E03D8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v42 = 65;
      v43 = 2080;
      v44 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%.*s: Passphrase found in keychain, unlocking the image", buf, 0x12u);
    }
  }

  *__error() = v22;
  v30 = result;
  v31 = result;
  v32 = -[DIEncryptionFrontend unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v30 bytes], a4);

LABEL_45:
  return v32;
}

- (BOOL)keychainUnlockWithError:(id *)a3
{
  v7 = 0;
  v5 = [(DIEncryptionFrontend *)self checkWithHasIcloudKeychain:&v7 error:a3];
  if (v5 && (v7 != 1 || (v5 = [(DIEncryptionFrontend *)self keychainUnlockWithIsSystemKeychain:0 error:a3])))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)unlockUsingSaksWithError:(id *)a3
{
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v6 = [(DIEncryptionFrontend *)self generateAuthTableWithError:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v6;
    v23 = v6;
    v24 = v8;
    v25[0] = 0;
    v26 = 0;
    if (v8 == v6[1])
    {
      v3 = 1;
    }

    else
    {
      while (1)
      {
        v9 = sub_100031244(&v23);
        if (*(v9 + 632) == 3 && *(v9 + 12) == 9)
        {
          __p = 0;
          v19 = 0;
          v20 = 0;
          sub_100036BE0(&__p, *(v9 + 16), *(v9 + 24), *(v9 + 24) - *(v9 + 16));
          v11 = [NSData dataWithBytes:__p length:v19 - __p];
          v12 = [[NSString alloc] initWithData:v11 encoding:4];
          if ([DIKeyRetriever decryptKeyWithData:v12 destKey:&v27 destKeySize:88 error:a3]&& (v13 = [(DIEncryptionFrontend *)self unlockWithPassphrase:&v27 error:a3], v30 = 0u, memset(v31, 0, sizeof(v31)), v28 = 0u, v29 = 0u, v27 = 0u, (v13 & 1) != 0))
          {
            v14 = [(DIEncryptionFrontend *)self diParams];
            v15 = [v14 hasUnlockedBackend];

            v16 = v15 ^ 1;
            v3 |= v15;
          }

          else
          {
            v16 = 0;
            v3 = 0;
          }

          if (__p)
          {
            v19 = __p;
            operator delete(__p);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v23, v21);
        if (v22[640] == 1)
        {
          sub_100035E5C(v22);
        }

        if (v23 == v7 && v24 == v7[1])
        {
          v3 = 1;
          break;
        }
      }

      if (v26)
      {
        sub_100035E5C(v25);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)checkAuthEntriesWithHasPassphraseEntry:(BOOL *)a3 hasPublicKeyEntry:(BOOL *)a4 error:(id *)a5
{
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a5];
  v8 = v7;
  if (v7)
  {
    *a3 = 0;
    *a4 = 0;
    v9 = *v7;
    v16 = v7;
    v17 = v9;
    v18[0] = 0;
    v19 = 0;
    if (v9 != v7[1])
    {
      do
      {
        v12[0] = a3;
        v12[1] = a4;
        v10 = *(sub_100031244(&v16) + 632);
        if (v10 == -1)
        {
          sub_100036CC4();
        }

        v13 = v12;
        (off_100205A48[v10])(&v13);
        sub_1000312E4(&v16, v14);
        if (v15[640] == 1)
        {
          sub_100035E5C(v15);
        }
      }

      while (v16 != v8 || v17 != v8[1]);
      if (v19)
      {
        sub_100035E5C(v18);
      }
    }
  }

  return v8 != 0;
}

- (BOOL)unlockUsingPublicKeyWithError:(id *)a3
{
  v6 = [(DIEncryptionFrontend *)self diParams];
  v7 = [v6 diskImageParamsXPC];

  v17 = v7;
  v8 = [v7 backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a3];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v25 = v9;
    v26 = v11;
    v27[0] = 0;
    v28 = 0;
    if (v11 == v9[1])
    {
      v3 = 1;
    }

    else
    {
      while (1)
      {
        v12 = sub_100031244(&v25);
        if (*(v12 + 632) == 1)
        {
          v13 = sub_1001819E0(v12, &v18);
          if (v20 == 1)
          {
            [v8 cryptoHeader];
            sub_100036F78();
          }

          v14 = std::generic_category();
          *buf = 35;
          v24 = v14;
          if (*(*v19 + 32))(v19, v18, buf) || ((v24->equivalent_0)(v24, &v18, *buf))
          {
            v15 = 1;
          }

          else
          {
            v3 = [DIError failWithUnexpected:v18 error:v19, a3];
            v15 = 0;
          }

          if (v20 == 1)
          {
            *buf = &v18;
            sub_100036760(buf);
          }

          if ((v15 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v25, v21);
        if (v22[640] == 1)
        {
          sub_100035E5C(v22);
        }

        if (v25 == v10 && v26 == v10[1])
        {
          v3 = 1;
          break;
        }
      }

      if (v28)
      {
        sub_100035E5C(v27);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)unlockUsingSymmetricKeyWithError:(id *)a3
{
  v6 = [(DIEncryptionFrontend *)self diParams];
  v7 = [v6 diskImageParamsXPC];

  v18 = v7;
  v8 = [v7 backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:a3];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v26 = v9;
    v27 = v11;
    v28[0] = 0;
    v29 = 0;
    if (v11 == v9[1])
    {
LABEL_19:
      v3 = [DIError failWithPOSIXCode:80 verboseInfo:@"The symmteric key is wrong" error:a3];
    }

    else
    {
      while (1)
      {
        v12 = sub_100031244(&v26);
        if (v12[158] == 2)
        {
          v13 = [(DIEncryptionFrontend *)self diParams];
          v14 = [v13 mutableSymmetricKey];
          sub_100181EE0(v14, v12, &v19);

          if (v21 == 1)
          {
            [v8 cryptoHeader];
            sub_100036F78();
          }

          v15 = std::generic_category();
          *buf = 35;
          v25 = v15;
          if (*(*v20 + 32))(v20, v19, buf) || ((v25->equivalent_0)(v25, &v19, *buf))
          {
            v16 = 1;
          }

          else
          {
            v3 = [DIError failWithUnexpected:v19 error:v20, a3];
            v16 = 0;
          }

          if (v21 == 1)
          {
            *buf = &v19;
            sub_100036760(buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v26, v22);
        if (v23[640] == 1)
        {
          sub_100035E5C(v23);
        }

        if (v26 == v10 && v27 == v10[1])
        {
          if (v29)
          {
            sub_100035E5C(v28);
          }

          goto LABEL_19;
        }
      }

      if (v29)
      {
        sub_100035E5C(v28);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 48) = 0;
  return self;
}

@end