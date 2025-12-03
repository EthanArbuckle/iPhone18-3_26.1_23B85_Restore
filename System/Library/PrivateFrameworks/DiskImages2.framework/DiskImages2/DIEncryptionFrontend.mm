@interface DIEncryptionFrontend
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error;
- (BOOL)addPassphraseEntryWithXpcHandler:(id)handler flags:(unint64_t)flags usage:(int64_t)usage error:(id *)error;
- (BOOL)askPermissionWithRememberPassword:(BOOL *)password error:(id *)error;
- (BOOL)checkAuthEntriesWithHasPassphraseEntry:(BOOL *)entry hasPublicKeyEntry:(BOOL *)keyEntry error:(id *)error;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error;
- (BOOL)keychainUnlockWithError:(id *)error;
- (BOOL)keychainUnlockWithIsSystemKeychain:(BOOL)keychain error:(id *)error;
- (BOOL)setPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)storeInKeychainWithPassphrase:(id)passphrase forceSystemKeychain:(BOOL)keychain error:(id *)error;
- (BOOL)unlockUsingPublicKeyWithError:(id *)error;
- (BOOL)unlockUsingSaksWithError:(id *)error;
- (BOOL)unlockUsingSymmetricKeyWithError:(id *)error;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)unlockWithXpcHandler:(id)handler error:(id *)error;
- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error;
- (BOOL)validateDeserializationWithError:(id *)error;
- (DIEncryptionFrontend)initWithCoder:(id)coder;
- (DIEncryptionFrontend)initWithParams:(id)params;
- (NSString)CLIPassphrasePromptCreate;
- (NSString)CLIPassphrasePromptUnlock;
- (NSString)GUIPassphrasePromptCreate;
- (NSString)GUIPassphrasePromptUnlock;
- (expected<crypto::crypto_serializer_t,)getSerializerWithAuthTable:(DIEncryptionFrontend *)self;
- (id).cxx_construct;
- (id)getCertificateWithCertificatePath:(id)path error:(id *)error;
- (id)getCertificateWithPublicKey:(id)key error:(id *)error;
- (unint64_t)flags;
- (void)encodeWithCoder:(id)coder;
- (void)generateAuthTableWithError:(id *)error;
@end

@implementation DIEncryptionFrontend

- (DIEncryptionFrontend)initWithParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = DIEncryptionFrontend;
  v6 = [(DIEncryptionFrontend *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diParams, params);
    if ([(DIEncryptionFrontend *)v7 validateDeserializationWithError:0])
    {
      encryptionUUID = [paramsCopy encryptionUUID];
      encryptionUUID = v7->_encryptionUUID;
      v7->_encryptionUUID = encryptionUUID;
    }
  }

  return v7;
}

- (NSString)GUIPassphrasePromptCreate
{
  v2 = MEMORY[0x277CCACA8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v6 = [v2 stringWithFormat:@"Enter a new password to secure “%@”", lastPathComponent];

  return v6;
}

- (NSString)GUIPassphrasePromptUnlock
{
  v2 = MEMORY[0x277CCACA8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v6 = [v2 stringWithFormat:@"Enter password to access “%@”", lastPathComponent];

  return v6;
}

- (NSString)CLIPassphrasePromptCreate
{
  v2 = MEMORY[0x277CCACA8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v6 = [v2 stringWithFormat:@"Enter a new password to secure “%@”: ", lastPathComponent];

  return v6;
}

- (NSString)CLIPassphrasePromptUnlock
{
  v2 = MEMORY[0x277CCACA8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v6 = [v2 stringWithFormat:@"Enter password to access “%@”: ", lastPathComponent];

  return v6;
}

- (unint64_t)flags
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  readPassphraseFlags = [diParams readPassphraseFlags];

  v4 = isatty(0);
  v5 = 2;
  if (!v4)
  {
    v5 = 8;
  }

  v6 = readPassphraseFlags & 0xFFFFFFFFFFFFFFF5;
  if (v4)
  {
    v6 = readPassphraseFlags;
  }

  if ((readPassphraseFlags & 8) != 0)
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

- (id)getCertificateWithCertificatePath:(id)path error:(id *)error
{
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
  if (!v5)
  {
    v5 = [DIError nilWithPOSIXCode:*__error() description:@"Failed to read from certificate file " error:error];
  }

  return v5;
}

- (id)getCertificateWithPublicKey:(id)key error:(id *)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v14 = 0;
  v6 = MEMORY[0x277CBEB38];
  v7 = *MEMORY[0x277CDC100];
  v15[0] = *MEMORY[0x277CDC228];
  v15[1] = v7;
  v16[0] = *MEMORY[0x277CDC230];
  v16[1] = keyCopy;
  v15[2] = *MEMORY[0x277CDC558];
  v16[2] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [v6 dictionaryWithDictionary:v8];

  v10 = SecItemCopyMatching(v9, &v14);
  if (v10)
  {
    v11 = [DIError nilWithOSStatus:v10 verboseInfo:@"Failed to find keychain item using hashed key" error:error];
  }

  else
  {
    v11 = v14;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error
{
  stdinCopy = stdin;
  v38 = *MEMORY[0x277D85DE8];
  v9 = *__error();
  if (DIForwardLogs())
  {
    v10 = getDIOSLog();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v34 = 72;
    v35 = 2080;
    v36 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = getDIOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v34 = 72;
      v35 = 2080;
      v36 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (usage)
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v14 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
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
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v17 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  v18 = readpassphrase(uTF8String, __s1, 0x102uLL, v16);

  if (v18)
  {
    if (!usage)
    {
      goto LABEL_21;
    }

    if (stdinCopy)
    {
      goto LABEL_21;
    }

    cLIVerifyPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
    v20 = cLIVerifyPassphrasePromptCreate == 0;

    if (v20)
    {
      goto LABEL_21;
    }

    cLIVerifyPassphrasePromptCreate2 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
    v22 = cLIVerifyPassphrasePromptCreate2;
    v23 = readpassphrase([cLIVerifyPassphrasePromptCreate2 UTF8String], buf, 0x102uLL, 2);

    if (!v23)
    {
      v24 = [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:error];
      goto LABEL_36;
    }

    if (!strncmp(__s1, buf, 0x101uLL))
    {
LABEL_21:
      if (usage == 1)
      {
        v24 = [(DIEncryptionFrontend *)self setPassphrase:__s1 error:error];
      }

      else if (usage)
      {
        v24 = [DIError failWithPOSIXCode:80 verboseInfo:@"Failed to use the passphrase that was given" error:error];
      }

      else
      {
        v24 = [(DIEncryptionFrontend *)self unlockWithPassphrase:__s1 error:error];
      }

      goto LABEL_36;
    }

    v24 = [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:error];
LABEL_36:
    v30 = v24;
    goto LABEL_37;
  }

  if (stdinCopy)
  {
    v24 = [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:error];
    goto LABEL_36;
  }

  v25 = *__error();
  if (DIForwardLogs())
  {
    v26 = getDIOSLog();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v34 = 72;
    v35 = 2080;
    v36 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
    v27 = _os_log_send_and_compose_impl();

    if (v27)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
      free(v27);
    }
  }

  else
  {
    v28 = getDIOSLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v34 = 72;
      v35 = 2080;
      v36 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&dword_248DE0000, v28, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
    }
  }

  *__error() = v25;
  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:25 userInfo:0];
  v30 = [DIError failWithInError:v29 outError:error];

LABEL_37:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)storeInKeychainWithPassphrase:(id)passphrase forceSystemKeychain:(BOOL)keychain error:(id *)error
{
  v43[7] = *MEMORY[0x277D85DE8];
  passphraseCopy = passphrase;
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  path = [inputURL path];
  lastPathComponent = [path lastPathComponent];

  uTF8String = [passphraseCopy UTF8String];
  if (uTF8String && *uTF8String)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:uTF8String length:strlen(uTF8String)];
    v15 = MEMORY[0x277CBEB38];
    v16 = *MEMORY[0x277CDC228];
    v43[0] = *MEMORY[0x277CDC238];
    v17 = *MEMORY[0x277CDBF20];
    v42[0] = v16;
    v42[1] = v17;
    encryptionUUID = [(DIEncryptionFrontend *)self encryptionUUID];
    uUIDString = [encryptionUUID UUIDString];
    v43[1] = uUIDString;
    v43[2] = @"disk image password";
    v20 = *MEMORY[0x277CDC080];
    v42[2] = *MEMORY[0x277CDBFA0];
    v42[3] = v20;
    v21 = *MEMORY[0x277CDC120];
    v43[3] = lastPathComponent;
    v43[4] = lastPathComponent;
    v22 = *MEMORY[0x277CDC140];
    v42[4] = v21;
    v42[5] = v22;
    v42[6] = *MEMORY[0x277CDC5E8];
    v43[5] = MEMORY[0x277CBEC38];
    v43[6] = v14;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:7];
    v24 = [v15 dictionaryWithDictionary:v23];

    v35 = 0;
    if (keychain)
    {
      goto LABEL_28;
    }

    if (![(DIEncryptionFrontend *)self checkWithHasIcloudKeychain:&v35 error:error])
    {
LABEL_14:
      v25 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ((v35 & 1) == 0)
    {
LABEL_28:
      if (![DIEncryptionFrontend updateSystemKeychainAttrWithDict:v24 isStoring:1 error:error])
      {
        goto LABEL_14;
      }
    }

    v26 = *__error();
    if (DIForwardLogs())
    {
      v27 = getDIOSLog();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      v28 = "system";
      *buf = 68158210;
      v37 = 80;
      v39 = "[DIEncryptionFrontend storeInKeychainWithPassphrase:forceSystemKeychain:error:]";
      v38 = 2080;
      if (v35)
      {
        v28 = "iCloud";
      }

      v40 = 2080;
      v41 = v28;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v29);
        free(v29);
      }
    }

    else
    {
      v30 = getDIOSLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (v35)
        {
          v31 = "iCloud";
        }

        else
        {
          v31 = "system";
        }

        *buf = 68158210;
        v37 = 80;
        v38 = 2080;
        v39 = "[DIEncryptionFrontend storeInKeychainWithPassphrase:forceSystemKeychain:error:]";
        v40 = 2080;
        v41 = v31;
        _os_log_impl(&dword_248DE0000, v30, OS_LOG_TYPE_DEFAULT, "%.*s: Storing passphrase in the %s keychain", buf, 0x1Cu);
      }
    }

    *__error() = v26;
    v32 = SecItemAdd(v24, 0);
    if (v32)
    {
      v25 = [DIError failWithOSStatus:v32 description:@"Failed to store the passphrase in the keychain" error:error];
    }

    else
    {
      v25 = 1;
    }

    goto LABEL_24;
  }

  v25 = [DIError failWithEnumValue:154 verboseInfo:@"Cannot store an empty passphrase" error:error];
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)askPermissionWithRememberPassword:(BOOL *)password error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(DIEncryptionFrontend *)self allowStoringInKeychain])
  {
    goto LABEL_17;
  }

  v6 = *__error();
  if (DIForwardLogs())
  {
    *error = 0;
    v7 = getDIOSLog();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 64;
    v24 = 2080;
    v25 = "[DIEncryptionFrontend askPermissionWithRememberPassword:error:]";
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = getDIOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 64;
      v24 = 2080;
      v25 = "[DIEncryptionFrontend askPermissionWithRememberPassword:error:]";
      _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Asking user permission to store the passphrase in the keychain", buf, 0x12u);
    }
  }

  *__error() = v6;
  error[0] = 0;
  v10 = *MEMORY[0x277CBF1E8];
  v21[0] = *MEMORY[0x277CBF188];
  v21[1] = v10;
  v22[0] = @"Remember password in my keychain?";
  v22[1] = @"Yes";
  v11 = *MEMORY[0x277CBF1C0];
  v21[2] = *MEMORY[0x277CBF218];
  v21[3] = v11;
  v22[2] = @"No";
  v22[3] = @"Cancel";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v13 = CFUserNotificationCreate(0, 0.0, 3uLL, error, v12);
  v14 = v13;
  if (!v13)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error[0]];
    v16 = [DIError failWithEnumValue:154 verboseInfo:v17 error:error];

    goto LABEL_18;
  }

  *buf = 0;
  if (!CFUserNotificationReceiveResponse(v13, 0.0, buf))
  {
    if (*buf != 2)
    {
      if (*buf)
      {
        v15 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
        goto LABEL_11;
      }

      *password = 1;
    }

LABEL_17:
    v16 = 1;
    goto LABEL_18;
  }

  v15 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_11:
  v16 = v15;

LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error
{
  v38[4] = *MEMORY[0x277D85DE8];
  error = 0;
  v7 = MEMORY[0x277CBEB18];
  if (usage)
  {
    gUIPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v9 = [v7 arrayWithObject:gUIPassphraseLabelCreate];

    gUIVerifyPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v11 = 65539;
    v12 = gUIVerifyPassphraseLabelCreate != 0;

    if (gUIVerifyPassphraseLabelCreate)
    {
      gUIVerifyPassphraseLabelCreate2 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v9 addObject:gUIVerifyPassphraseLabelCreate2];

      v11 = 196611;
    }

    v14 = MEMORY[0x277CBEB38];
    v37[0] = *MEMORY[0x277CBF188];
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    gUIPassphraseLabelUnlock = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v9 = [v7 arrayWithObject:gUIPassphraseLabelUnlock];

    v14 = MEMORY[0x277CBEB38];
    v37[0] = *MEMORY[0x277CBF188];
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v12 = 0;
    v11 = 65539;
  }

  v17 = *MEMORY[0x277CBF1E8];
  v38[0] = gUIPassphrasePromptCreate;
  v38[1] = @"OK";
  v18 = *MEMORY[0x277CBF1C0];
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = *MEMORY[0x277CBF230];
  v38[2] = @"Cancel";
  v38[3] = v9;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v20 = [v14 dictionaryWithDictionary:v19];

  v21 = CFUserNotificationCreate(0, 0.0, v11, &error, v20);
  v22 = v21;
  if (!v21)
  {
    error = [MEMORY[0x277CCACA8] stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v23 = [DIError failWithEnumValue:154 verboseInfo:error error:error];

    goto LABEL_14;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v21, 0.0, &responseFlags))
  {
    v34 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v25 = 0;
      v26 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
    }

    else
    {
      v29 = *MEMORY[0x277CBF238];
      v25 = CFUserNotificationGetResponseValue(v22, *MEMORY[0x277CBF238], 0);
      if (v12)
      {
        v30 = CFUserNotificationGetResponseValue(v22, v29, 1);
        if (![v25 isEqualToString:v30])
        {
          v23 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:error];

          goto LABEL_13;
        }
      }

      if (usage == 1)
      {
        v33 = v25;
        v32 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v25 UTF8String], error);
      }

      else
      {
        if (usage)
        {
          v26 = [DIError failWithPOSIXCode:80 verboseInfo:@"Failed to use the passphrase that was given" error:error];
          goto LABEL_12;
        }

        v31 = v25;
        v32 = -[DIEncryptionFrontend unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v25 UTF8String], error);
      }

      if (!v32 || ![(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v34 error:error])
      {
        v23 = 0;
        goto LABEL_13;
      }

      if (![(DIEncryptionFrontend *)self allowStoringInKeychain]|| v34 != 1)
      {
        v23 = 1;
        goto LABEL_13;
      }

      v26 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v25 forceSystemKeychain:0 error:error];
    }

LABEL_12:
    v23 = v26;
LABEL_13:

    goto LABEL_14;
  }

  v23 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error
{
  frontendCopy = frontend;
  v7 = [frontendCopy validateDeserializationWithError:error];
  if (v7)
  {
    diParams = [frontendCopy diParams];
    diskImageParamsXPC = [diParams diskImageParamsXPC];
    diParams2 = [(DIEncryptionFrontend *)self diParams];
    [diParams2 setDiskImageParamsXPC:diskImageParamsXPC];

    -[DIEncryptionFrontend setAllowStoringInKeychain:](self, "setAllowStoringInKeychain:", [frontendCopy allowStoringInKeychain]);
  }

  return v7;
}

- (DIEncryptionFrontend)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionFrontend *)self initWithParams:v5];
  if (v6)
  {
    v6->_allowStoringInKeychain = [coderCopy decodeBoolForKey:@"allowStoringInKeychain"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diParams = [(DIEncryptionFrontend *)self diParams];
  [coderCopy encodeObject:diParams forKey:@"diParams"];

  [coderCopy encodeBool:-[DIEncryptionFrontend allowStoringInKeychain](self forKey:{"allowStoringInKeychain"), @"allowStoringInKeychain"}];
}

- (BOOL)validateDeserializationWithError:(id *)error
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  LOBYTE(error) = [diParams validateDeserializationWithError:error];

  return error;
}

- (void)generateAuthTableWithError:(id *)error
{
  p_auth_table = &self->auth_table;
  if (!self->auth_table.__engaged_)
  {
    diParams = [(DIEncryptionFrontend *)self diParams];
    diskImageParamsXPC = [diParams diskImageParamsXPC];
    backendXPC = [diskImageParamsXPC backendXPC];

    if (backendXPC)
    {
      [backendXPC getCryptoHeaderBackend];
      if (v12)
      {
        [backendXPC cryptoHeader];
        crypto::header::generate_auth_table();
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    error = [DIError nilWithUnexpected:v10 verboseInfo:v11 error:@"Failed to open crypto header", error];
    p_auth_table = 0;
    if (v12 == 1 && v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  return p_auth_table;
}

- (expected<crypto::crypto_serializer_t,)getSerializerWithAuthTable:(DIEncryptionFrontend *)self
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  v10 = backendXPC;
  if (backendXPC)
  {
    [backendXPC getCryptoHeaderBackend];
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21)
  {
    diParams2 = [(DIEncryptionFrontend *)self diParams];
    v13 = diParams2;
    if (diParams2)
    {
      [diParams2 backend];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    std::dynamic_pointer_cast[abi:ne200100]<crypto_format_getter,Backend>(&v16, &v18);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v14 = v18[1];
    v15 = v18[2];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    crypto::crypto_serializer_t::create_serializer(v14, &v20, a4, retstr);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    result = v19;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v21)
    {
      result = v20.var0.var0.__cntrl_;
      if (v20.var0.var0.__cntrl_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20.var0.var0.__cntrl_);
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

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  v21 = diskImageParamsXPC;
  backendXPC = [diskImageParamsXPC backendXPC];
  v10 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v11 = v10;
  if (v10)
  {
    v12 = *v10;
    v29 = v10;
    v30 = v12;
    v31[0] = 0;
    v32 = 0;
    v13 = 0x278F80000;
    if (v12 == v10[1])
    {
LABEL_20:
      sleep(2u);
      error = [*(v13 + 848) failWithPOSIXCode:80 description:@"Incorrect passphrase" error:error];
    }

    else
    {
      while (1)
      {
        v14 = crypto::auth_table::const_iterator::operator*(&v29);
        if (!*(v14 + 158))
        {
          v15 = crypto::auth_entry_ns::passphrase::unlock(v14, passphrase, &v22);
          if (v24 == 1)
          {
            [backendXPC cryptoHeader];
            std::allocate_shared[abi:ne200100]<crypto::format,std::allocator<crypto::format>,crypto::keys,std::shared_ptr<crypto::header> &,0>();
          }

          v16 = std::generic_category();
          *buf = 35;
          v28 = v16;
          if (*(*v23 + 32))(v23, v22, buf) || ((v28->equivalent_0)(v28, &v22, *buf))
          {
            v17 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v22 error:v23, error];
            v17 = 0;
          }

          if (v24 == 1)
          {
            *buf = &v22;
            std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          if ((v17 & 1) == 0)
          {
            break;
          }
        }

        crypto::auth_table::const_iterator::operator++(&v29, v25);
        if (v26[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
        }

        if (v29 == v11 && v30 == v11[1])
        {
          if (v32)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v31);
          }

          v13 = 0x278F80000uLL;
          goto LABEL_20;
        }
      }

      if (v32)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v31);
      }
    }
  }

  else
  {
    error = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return error & 1;
}

- (BOOL)setPassphrase:(const char *)passphrase error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  if (!v7)
  {
    LOBYTE(v10) = 0;
    goto LABEL_21;
  }

  v8 = v7;
  [(DIEncryptionFrontend *)self getSerializerWithAuthTable:v7];
  if (v19)
  {
    LODWORD(v23) = 8;
    crypto::auth_entry_ns::passphrase::create(passphrase, v8, &v23, v18, &v27);
    if (v29)
    {
      (*(v18[0] + 1))(v16, v18, &v28 + 4);
      if (v17)
      {
        v9 = *(v8 + 8);
        v20[0] = v8;
        v20[1] = v9;
        v10 = v20;
        v21[0] = 0;
        v22 = 0;
        crypto::auth_table::replace(v8, v16, v20, &v23);
        if (v22 == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v21);
        }

        v11 = v26;
        if (v26 & 1) != 0 || (LOBYTE(v10) = [DIError failWithUnexpected:v23 verboseInfo:v24 error:@"Failed to add passphrase entry to auth table", error], (v26))
        {
          if (v25[640] == 1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v25);
          }

          if (v11)
          {
            (*(v18[0] + 4))(&v23, v18, v8);
            v12 = v25[0];
            if ((v25[0] & 1) == 0)
            {
              LOBYTE(v10) = [DIError failWithUnexpected:v23 verboseInfo:v24 error:@"Failed to update crypto header", error];
            }

            LOBYTE(v10) = v12 | v10;
          }
        }
      }

      else
      {
        LOBYTE(v10) = [DIError failWithUnexpected:*&v16[0] verboseInfo:*(&v16[0] + 1) error:@"Failed to serialize passphrase to crypto header", error];
      }

      if (v17 == 1)
      {
        crypto::descriptor_handle_t::~descriptor_handle_t(v16);
      }

      goto LABEL_19;
    }

    error = [DIError failWithUnexpected:v27 verboseInfo:v28 error:@"Failed to create passphrase auth entry", error];
  }

  else
  {
    error = [DIError failWithUnexpected:v18[0] verboseInfo:v18[1] error:@"Failed to create crypto serializer", error];
  }

  LOBYTE(v10) = error;
LABEL_19:
  if (v19 == 1)
  {
    (*(v18[0] + 7))(v18);
  }

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)addPassphraseEntryWithXpcHandler:(id)handler flags:(unint64_t)flags usage:(int64_t)usage error:(id *)error
{
  flagsCopy = flags;
  handlerCopy = handler;
  if ((flagsCopy & 8) != 0)
  {
    v11 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:1 usage:usage error:error];
    goto LABEL_14;
  }

  if (([(DIEncryptionFrontend *)self flags]& 2) != 0)
  {
    v19 = 0;
    v12 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:0 usage:usage error:&v19];
    v13 = v19;
    v14 = v13;
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      code = [v13 code];
      if (code >= 0)
      {
        v17 = code;
      }

      else
      {
        v17 = -code;
      }

      if (v17 == 25)
      {

        if ((flagsCopy & 4) == 0)
        {
          goto LABEL_4;
        }

LABEL_13:
        v11 = [handlerCopy GUIAskForPassphraseWithEncryptionFrontend:self usage:usage error:error];
        goto LABEL_14;
      }

      v15 = [DIError failWithInError:v14 outError:error];
    }

    goto LABEL_15;
  }

  if ((flagsCopy & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = [DIError failWithPOSIXCode:25 verboseInfo:@"Cannot retrieve passphrase from user via TTY or GUI" error:error];
LABEL_14:
  v15 = v11;
LABEL_15:

  return v15;
}

- (BOOL)unlockWithXpcHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  diParams = [(DIEncryptionFrontend *)self diParams];
  mutableSymmetricKey = [diParams mutableSymmetricKey];

  if (!mutableSymmetricKey)
  {
    flags = [(DIEncryptionFrontend *)self flags];
    v39 = 0;
    if (![(DIEncryptionFrontend *)self checkAuthEntriesWithHasPassphraseEntry:&v39 + 1 hasPublicKeyEntry:&v39 error:error])
    {
      goto LABEL_25;
    }

    if (v39 == 1 && (flags & 1) != 0)
    {
      if (![(DIEncryptionFrontend *)self unlockUsingPublicKeyWithError:error])
      {
        goto LABEL_25;
      }

      diParams2 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend = [diParams2 hasUnlockedBackend];

      if (hasUnlockedBackend)
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

    if ((flags & 8) != 0)
    {
      v9 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:1 usage:0 error:error];
      goto LABEL_3;
    }

    if (flags)
    {
      if (![(DIEncryptionFrontend *)self unlockUsingPublicKeyWithError:error])
      {
        goto LABEL_25;
      }

      diParams3 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend2 = [diParams3 hasUnlockedBackend];

      if (hasUnlockedBackend2)
      {
        goto LABEL_9;
      }

      if (![handlerCopy keychainUnlockWithEncryptionUnlocker:self error:error])
      {
        goto LABEL_25;
      }

      diParams4 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend3 = [diParams4 hasUnlockedBackend];

      if (hasUnlockedBackend3)
      {
        goto LABEL_9;
      }

      if ([(DIEncryptionFrontend *)self allowStoringInKeychain])
      {
        if (![(DIEncryptionFrontend *)self lookupLegacyKeychainWithXpcHandler:handlerCopy error:error])
        {
          goto LABEL_25;
        }

        diParams5 = [(DIEncryptionFrontend *)self diParams];
        hasUnlockedBackend4 = [diParams5 hasUnlockedBackend];

        if (hasUnlockedBackend4)
        {
          goto LABEL_9;
        }
      }
    }

    if ([(DIEncryptionFrontend *)self unlockUsingSaksWithError:error])
    {
      diParams6 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend5 = [diParams6 hasUnlockedBackend];

      if (hasUnlockedBackend5)
      {
        goto LABEL_9;
      }

      if ((flags & 2) != 0)
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

        code = [v26 code];
        if (code >= 0)
        {
          v29 = code;
        }

        else
        {
          v29 = -code;
        }

        if (v29 != 25)
        {
          v36 = [DIError failWithInError:v27 outError:error];
LABEL_49:
          v10 = v36;
          goto LABEL_50;
        }

        if ((flags & 4) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((flags & 4) == 0)
      {
LABEL_24:
        v22 = @"Cannot retrieve passphrase from user via TTY or GUI";
        v23 = 25;
LABEL_28:
        v9 = [DIError failWithPOSIXCode:v23 verboseInfo:v22 error:error];
        goto LABEL_3;
      }

      v30 = 0;
      v31 = 2;
      while (1)
      {
        v37 = v30;
        v32 = [handlerCopy GUIAskForPassphraseWithEncryptionFrontend:self usage:0 error:&v37];
        v27 = v37;

        if (v32)
        {
          goto LABEL_31;
        }

        code2 = [v27 code];
        if (code2 >= 0)
        {
          v34 = code2;
        }

        else
        {
          v34 = -code2;
        }

        v35 = v34 != 80 || v31-- == 0;
        v30 = v27;
        if (v35)
        {
          v36 = [DIError failWithInError:v27 outError:error];
          goto LABEL_49;
        }
      }
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v9 = [(DIEncryptionFrontend *)self unlockUsingSymmetricKeyWithError:error];
LABEL_3:
  v10 = v9;
LABEL_26:

  return v10;
}

- (BOOL)keychainUnlockWithIsSystemKeychain:(BOOL)keychain error:(id *)error
{
  keychainCopy = keychain;
  v55[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v7 = MEMORY[0x277CBEB38];
  v8 = *MEMORY[0x277CDC228];
  v55[0] = *MEMORY[0x277CDC238];
  v9 = *MEMORY[0x277CDBF20];
  v54[0] = v8;
  v54[1] = v9;
  encryptionUUID = [(DIEncryptionFrontend *)self encryptionUUID];
  uUIDString = [encryptionUUID UUIDString];
  v12 = *MEMORY[0x277CDC140];
  v13 = *MEMORY[0x277CDC148];
  v55[1] = uUIDString;
  v55[2] = v13;
  v14 = *MEMORY[0x277CDC558];
  v54[2] = v12;
  v54[3] = v14;
  v54[4] = *MEMORY[0x277CDC5C8];
  v55[3] = MEMORY[0x277CBEC38];
  v55[4] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:5];
  v16 = [v7 dictionaryWithDictionary:v15];

  if (keychainCopy && ![DIEncryptionFrontend updateSystemKeychainAttrWithDict:v16 isStoring:0 error:0])
  {
    goto LABEL_44;
  }

  v17 = *__error();
  if (DIForwardLogs())
  {
    v46 = 0;
    v18 = getDIOSLog();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    v19 = "iCloud";
    *buf = 68158210;
    v49 = 65;
    v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    v50 = 2080;
    if (keychainCopy)
    {
      v19 = "system";
    }

    v52 = 2080;
    v53 = v19;
    LODWORD(v45) = 28;
    v44 = buf;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
      free(v20);
    }
  }

  else
  {
    v21 = getDIOSLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "iCloud";
      *buf = 68158210;
      v49 = 65;
      v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      v50 = 2080;
      if (keychainCopy)
      {
        v22 = "system";
      }

      v52 = 2080;
      v53 = v22;
      _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEFAULT, "%.*s: Looking for encrypted image passphrase in the %s keychain", buf, 0x1Cu);
    }
  }

  *__error() = v17;
  v23 = SecItemCopyMatching(v16, &result);
  v24 = v23;
  if (v23 == -25308)
  {
    v25 = *__error();
    if (!DIForwardLogs())
    {
      v39 = getDIOSLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v49 = 65;
        v50 = 2080;
        v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
        _os_log_impl(&dword_248DE0000, v39, OS_LOG_TYPE_DEFAULT, "%.*s: Keychain item requires ACL upgrade", buf, 0x12u);
      }

      goto LABEL_39;
    }

    v46 = 0;
    v31 = getDIOSLog();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v49 = 65;
    v50 = 2080;
    v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    LODWORD(v45) = 18;
    v44 = buf;
    v27 = _os_log_send_and_compose_impl();

    if (v27)
    {
LABEL_18:
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
      free(v27);
    }

LABEL_39:
    *__error() = v25;
    v38 = 1;
    [(DIEncryptionFrontend *)self setAllowStoringInKeychain:1, v44, v45, v46];
    goto LABEL_45;
  }

  if (v23)
  {
    if (v23 == -25300)
    {
      v25 = *__error();
      if (!DIForwardLogs())
      {
        v40 = getDIOSLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v49 = 65;
          v50 = 2080;
          v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
          _os_log_impl(&dword_248DE0000, v40, OS_LOG_TYPE_DEFAULT, "%.*s: No matching item found in keychain", buf, 0x12u);
        }

        goto LABEL_39;
      }

      v46 = 0;
      v26 = getDIOSLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v49 = 65;
      v50 = 2080;
      v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      LODWORD(v45) = 18;
      v44 = buf;
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }

    v32 = *__error();
    if (DIForwardLogs())
    {
      v33 = getDIOSLog();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v49 = 65;
      v50 = 2080;
      v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      v52 = 1024;
      LODWORD(v53) = v24;
      v34 = _os_log_send_and_compose_impl();

      if (v34)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v34);
        free(v34);
      }
    }

    else
    {
      v41 = getDIOSLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v49 = 65;
        v50 = 2080;
        v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
        v52 = 1024;
        LODWORD(v53) = v24;
        _os_log_impl(&dword_248DE0000, v41, OS_LOG_TYPE_DEFAULT, "%.*s: Keychain lookup returned %d", buf, 0x18u);
      }
    }

    *__error() = v32;
LABEL_44:
    v38 = 1;
    goto LABEL_45;
  }

  v28 = *__error();
  if (DIForwardLogs())
  {
    v29 = getDIOSLog();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v49 = 65;
    v50 = 2080;
    v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    v30 = _os_log_send_and_compose_impl();

    if (v30)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v30);
      free(v30);
    }
  }

  else
  {
    v35 = getDIOSLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v49 = 65;
      v50 = 2080;
      v51 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      _os_log_impl(&dword_248DE0000, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Passphrase found in keychain, unlocking the image", buf, 0x12u);
    }
  }

  *__error() = v28;
  v36 = result;
  v37 = result;
  v38 = -[DIEncryptionFrontend unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v36 bytes], error);

LABEL_45:
  v42 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)keychainUnlockWithError:(id *)error
{
  v7 = 0;
  v5 = [(DIEncryptionFrontend *)self checkWithHasIcloudKeychain:&v7 error:error];
  if (v5 && (v7 != 1 || (v5 = [(DIEncryptionFrontend *)self keychainUnlockWithIsSystemKeychain:0 error:error])))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)unlockUsingSaksWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v6 = [(DIEncryptionFrontend *)self generateAuthTableWithError:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v6;
    v24 = v6;
    v25 = v8;
    v26[0] = 0;
    v27 = 0;
    if (v8 == v6[1])
    {
      v3 = 1;
    }

    else
    {
      while (1)
      {
        v9 = crypto::auth_table::const_iterator::operator*(&v24);
        if (*(v9 + 632) == 3 && *(v9 + 12) == 9)
        {
          __p = 0;
          v20 = 0;
          v21 = 0;
          std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&__p, *(v9 + 16), *(v9 + 24), *(v9 + 24) - *(v9 + 16));
          v11 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v20 - __p];
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
          if ([DIKeyRetriever decryptKeyWithData:v12 destKey:&v28 destKeySize:88 error:error]&& (v13 = [(DIEncryptionFrontend *)self unlockWithPassphrase:&v28 error:error], v31 = 0u, memset(v32, 0, sizeof(v32)), v29 = 0u, v30 = 0u, v28 = 0u, v13))
          {
            diParams = [(DIEncryptionFrontend *)self diParams];
            hasUnlockedBackend = [diParams hasUnlockedBackend];

            v16 = hasUnlockedBackend ^ 1;
            v3 |= hasUnlockedBackend;
          }

          else
          {
            v16 = 0;
            v3 = 0;
          }

          if (__p)
          {
            v20 = __p;
            operator delete(__p);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        crypto::auth_table::const_iterator::operator++(&v24, v22);
        if (v23[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v23);
        }

        if (v24 == v7 && v25 == v7[1])
        {
          v3 = 1;
          break;
        }
      }

      if (v27)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (BOOL)checkAuthEntriesWithHasPassphraseEntry:(BOOL *)entry hasPublicKeyEntry:(BOOL *)keyEntry error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v8 = v7;
  if (v7)
  {
    *entry = 0;
    *keyEntry = 0;
    v9 = *v7;
    v17 = v7;
    v18 = v9;
    v19[0] = 0;
    v20 = 0;
    if (v9 != v7[1])
    {
      do
      {
        v13[0] = entry;
        v13[1] = keyEntry;
        v10 = *(crypto::auth_table::const_iterator::operator*(&v17) + 632);
        if (v10 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v14 = v13;
        (off_285BD4AE0[v10])(&v14);
        crypto::auth_table::const_iterator::operator++(&v17, v15);
        if (v16[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
        }
      }

      while (v17 != v8 || v18 != v8[1]);
      if (v20)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v19);
      }
    }
  }

  result = v8 != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)unlockUsingPublicKeyWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  v18 = diskImageParamsXPC;
  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
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
      error = 1;
    }

    else
    {
      while (1)
      {
        v12 = crypto::auth_table::const_iterator::operator*(&v26);
        if (*(v12 + 632) == 1)
        {
          v13 = crypto::auth_entry_ns::public_key::unlock(v12, &v19);
          if (v21 == 1)
          {
            [backendXPC cryptoHeader];
            std::allocate_shared[abi:ne200100]<crypto::format,std::allocator<crypto::format>,crypto::keys,std::shared_ptr<crypto::header> &,0>();
          }

          v14 = std::generic_category();
          *buf = 35;
          v25 = v14;
          if (*(*v20 + 32))(v20, v19, buf) || ((v25->equivalent_0)(v25, &v19, *buf))
          {
            v15 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v19 error:v20, error];
            v15 = 0;
          }

          if (v21 == 1)
          {
            *buf = &v19;
            std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          if ((v15 & 1) == 0)
          {
            break;
          }
        }

        crypto::auth_table::const_iterator::operator++(&v26, v22);
        if (v23[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v23);
        }

        if (v26 == v10 && v27 == v10[1])
        {
          error = 1;
          break;
        }
      }

      if (v29)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);
      }
    }
  }

  else
  {
    error = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)unlockUsingSymmetricKeyWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  v19 = diskImageParamsXPC;
  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v27 = v9;
    v28 = v11;
    v29[0] = 0;
    v30 = 0;
    if (v11 == v9[1])
    {
LABEL_19:
      error = [DIError failWithPOSIXCode:80 verboseInfo:@"The symmteric key is wrong" error:error];
    }

    else
    {
      while (1)
      {
        v12 = crypto::auth_table::const_iterator::operator*(&v27);
        if (*(v12 + 158) == 2)
        {
          diParams2 = [(DIEncryptionFrontend *)self diParams];
          mutableSymmetricKey = [diParams2 mutableSymmetricKey];
          crypto::auth_entry_ns::symmetric_key::unlock(v12, mutableSymmetricKey, &v20);

          if (v22 == 1)
          {
            [backendXPC cryptoHeader];
            std::allocate_shared[abi:ne200100]<crypto::format,std::allocator<crypto::format>,crypto::keys,std::shared_ptr<crypto::header> &,0>();
          }

          v15 = std::generic_category();
          *buf = 35;
          v26 = v15;
          if (*(*v21 + 32))(v21, v20, buf) || ((v26->equivalent_0)(v26, &v20, *buf))
          {
            v16 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v20 error:v21, error];
            v16 = 0;
          }

          if (v22 == 1)
          {
            *buf = &v20;
            std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        crypto::auth_table::const_iterator::operator++(&v27, v23);
        if (v24[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v24);
        }

        if (v27 == v10 && v28 == v10[1])
        {
          if (v30)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29);
          }

          goto LABEL_19;
        }
      }

      if (v30)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29);
      }
    }
  }

  else
  {
    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return error;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 48) = 0;
  return self;
}

@end