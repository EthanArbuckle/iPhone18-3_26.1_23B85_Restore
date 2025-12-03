@interface MFCertificateTrustInformationKeychainManager
+ (OS_os_log)log;
- (BOOL)canSaveCertificateToKeychain;
- (BOOL)hasTrustException;
- (MFCertificateTrustInformationKeychainManager)initWithTrustInformation:(id)information;
- (int)action;
- (unint64_t)keychainStatus;
- (void)addTrustException;
- (void)removeCertificateFromKeychain;
- (void)removeTrustException;
- (void)saveCertificateToKeychain;
@end

@implementation MFCertificateTrustInformationKeychainManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MFCertificateTrustInformationKeychainManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_11 != -1)
  {
    dispatch_once(&log_onceToken_11, block);
  }

  v2 = log_log_11;

  return v2;
}

void __51__MFCertificateTrustInformationKeychainManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_11;
  log_log_11 = v1;
}

- (MFCertificateTrustInformationKeychainManager)initWithTrustInformation:(id)information
{
  informationCopy = information;
  v18.receiver = self;
  v18.super_class = MFCertificateTrustInformationKeychainManager;
  v6 = [(MFCertificateTrustInformationKeychainManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustInformation, information);
    v8 = +[MFMessageKeychainManager newTrustManager];
    keychainManager = v7->_keychainManager;
    v7->_keychainManager = v8;

    sender = [(EMCertificateTrustInformation *)v7->_trustInformation sender];
    emailAddressValue = [sender emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v13 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [sender stringValue];
    }

    v15 = stringValue;

    addressForSaving = v7->_addressForSaving;
    v7->_addressForSaving = v15;
  }

  return v7;
}

- (int)action
{
  if (self)
  {
    v3 = self->_keychainManager;
    trustInformation = self->_trustInformation;
  }

  else
  {
    v3 = 0;
    trustInformation = 0;
  }

  v5 = trustInformation;
  trust = [(EMCertificateTrustInformation *)v5 trust];
  addressForSaving = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
  LODWORD(trust) = [(CertUITrustManager *)v3 actionForSMIMETrust:trust sender:addressForSaving];

  return trust;
}

- (BOOL)hasTrustException
{
  if (self)
  {
    v3 = self->_keychainManager;
    trustInformation = self->_trustInformation;
  }

  else
  {
    v3 = 0;
    trustInformation = 0;
  }

  v5 = trustInformation;
  trust = [(EMCertificateTrustInformation *)v5 trust];
  addressForSaving = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
  LOBYTE(trust) = [(CertUITrustManager *)v3 _hasExceptionsForSMIMETrust:trust sender:addressForSaving];

  return trust;
}

- (void)addTrustException
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = self->_keychainManager;
    trustInformation = self->_trustInformation;
  }

  else
  {
    v3 = 0;
    trustInformation = 0;
  }

  v5 = trustInformation;
  trust = [(EMCertificateTrustInformation *)v5 trust];
  addressForSaving = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
  [(CertUITrustManager *)v3 addSMIMETrust:trust sender:addressForSaving];

  v8 = +[MFCertificateTrustInformationKeychainManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    addressForSaving2 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
    v12 = 138412290;
    v13 = addressForSaving2;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Added trust exception for %@", &v12, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MFCertificateTrustDidChangeNotification" object:self];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)saveCertificateToKeychain
{
  if ([(MFCertificateTrustInformationKeychainManager *)self canSaveCertificateToKeychain])
  {
    if (self)
    {
      trustInformation = self->_trustInformation;
    }

    else
    {
      trustInformation = 0;
    }

    v7 = trustInformation;
    certificate = [(EMCertificateTrustInformation *)v7 certificate];
    addressForSaving = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
    v6 = [MFMessageKeychainManager saveEncryptionCertificate:certificate forAddress:addressForSaving];
  }
}

- (void)removeCertificateFromKeychain
{
  if ([(MFCertificateTrustInformationKeychainManager *)self canSaveCertificateToKeychain])
  {
    addressForSaving = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
    v3 = [MFMessageKeychainManager saveEncryptionCertificate:0 forAddress:?];
  }
}

- (BOOL)canSaveCertificateToKeychain
{
  if (self)
  {
    self = self->_trustInformation;
  }

  return [(MFCertificateTrustInformationKeychainManager *)self certificateType]== 1;
}

- (void)removeTrustException
{
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_trustInformation;
  }

  trust = [(MFCertificateTrustInformationKeychainManager *)self trust];
  if (selfCopy)
  {
    keychainManager = selfCopy->_keychainManager;
  }

  else
  {
    keychainManager = 0;
  }

  v5 = keychainManager;
  addressForSaving = [(MFCertificateTrustInformationKeychainManager *)selfCopy addressForSaving];
  [(CertUITrustManager *)v5 removeSMIMETrust:trust sender:addressForSaving];

  policies = 0;
  if (!SecTrustCopyPolicies(trust, &policies))
  {
    SecTrustSetPolicies(trust, MEMORY[0x1E695E0F0]);
    SecTrustSetPolicies(trust, policies);
    CFRelease(policies);
  }

  v7 = +[MFCertificateTrustInformationKeychainManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    addressForSaving2 = [(MFCertificateTrustInformationKeychainManager *)selfCopy addressForSaving];
    *buf = 138412290;
    v13 = addressForSaving2;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Removed trust exception for %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MFCertificateTrustDidChangeNotification" object:selfCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)keychainStatus
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_trustInformation;
  }

  if ([(MFCertificateTrustInformationKeychainManager *)self certificateType]== 1)
  {
    addressForSaving = [(MFCertificateTrustInformationKeychainManager *)selfCopy addressForSaving];
    v15 = 0;
    v4 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:addressForSaving error:&v15];
    v5 = v15;

    if (v4)
    {
      if (selfCopy)
      {
        trustInformation = selfCopy->_trustInformation;
      }

      else
      {
        trustInformation = 0;
      }

      v7 = trustInformation;
      v8 = CFEqual([(EMCertificateTrustInformation *)v7 certificate], v4);

      CFRelease(v4);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      if (v5)
      {
        v10 = +[MFCertificateTrustInformationKeychainManager log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          addressForSaving2 = [(MFCertificateTrustInformationKeychainManager *)selfCopy addressForSaving];
          ef_publicDescription = [v5 ef_publicDescription];
          *buf = 138412546;
          v17 = addressForSaving2;
          v18 = 2114;
          v19 = ef_publicDescription;
          _os_log_error_impl(&dword_1B0389000, v10, OS_LOG_TYPE_ERROR, "Error when retrieving encryption certificate for %@: %{public}@", buf, 0x16u);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end