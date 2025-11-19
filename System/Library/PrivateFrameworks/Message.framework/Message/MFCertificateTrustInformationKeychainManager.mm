@interface MFCertificateTrustInformationKeychainManager
+ (OS_os_log)log;
- (BOOL)canSaveCertificateToKeychain;
- (BOOL)hasTrustException;
- (MFCertificateTrustInformationKeychainManager)initWithTrustInformation:(id)a3;
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
  block[4] = a1;
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

- (MFCertificateTrustInformationKeychainManager)initWithTrustInformation:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MFCertificateTrustInformationKeychainManager;
  v6 = [(MFCertificateTrustInformationKeychainManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustInformation, a3);
    v8 = +[MFMessageKeychainManager newTrustManager];
    keychainManager = v7->_keychainManager;
    v7->_keychainManager = v8;

    v10 = [(EMCertificateTrustInformation *)v7->_trustInformation sender];
    v11 = [v10 emailAddressValue];
    v12 = [v11 simpleAddress];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v10 stringValue];
    }

    v15 = v14;

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
  v6 = [(EMCertificateTrustInformation *)v5 trust];
  v7 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
  LODWORD(v6) = [(CertUITrustManager *)v3 actionForSMIMETrust:v6 sender:v7];

  return v6;
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
  v6 = [(EMCertificateTrustInformation *)v5 trust];
  v7 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
  LOBYTE(v6) = [(CertUITrustManager *)v3 _hasExceptionsForSMIMETrust:v6 sender:v7];

  return v6;
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
  v6 = [(EMCertificateTrustInformation *)v5 trust];
  v7 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
  [(CertUITrustManager *)v3 addSMIMETrust:v6 sender:v7];

  v8 = +[MFCertificateTrustInformationKeychainManager log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Added trust exception for %@", &v12, 0xCu);
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"MFCertificateTrustDidChangeNotification" object:self];

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
    v4 = [(EMCertificateTrustInformation *)v7 certificate];
    v5 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
    v6 = [MFMessageKeychainManager saveEncryptionCertificate:v4 forAddress:v5];
  }
}

- (void)removeCertificateFromKeychain
{
  if ([(MFCertificateTrustInformationKeychainManager *)self canSaveCertificateToKeychain])
  {
    v4 = [(MFCertificateTrustInformationKeychainManager *)self addressForSaving];
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
  v2 = self;
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_trustInformation;
  }

  v3 = [(MFCertificateTrustInformationKeychainManager *)self trust];
  if (v2)
  {
    keychainManager = v2->_keychainManager;
  }

  else
  {
    keychainManager = 0;
  }

  v5 = keychainManager;
  v6 = [(MFCertificateTrustInformationKeychainManager *)v2 addressForSaving];
  [(CertUITrustManager *)v5 removeSMIMETrust:v3 sender:v6];

  policies = 0;
  if (!SecTrustCopyPolicies(v3, &policies))
  {
    SecTrustSetPolicies(v3, MEMORY[0x1E695E0F0]);
    SecTrustSetPolicies(v3, policies);
    CFRelease(policies);
  }

  v7 = +[MFCertificateTrustInformationKeychainManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MFCertificateTrustInformationKeychainManager *)v2 addressForSaving];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Removed trust exception for %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"MFCertificateTrustDidChangeNotification" object:v2];

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)keychainStatus
{
  v2 = self;
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_trustInformation;
  }

  if ([(MFCertificateTrustInformationKeychainManager *)self certificateType]== 1)
  {
    v3 = [(MFCertificateTrustInformationKeychainManager *)v2 addressForSaving];
    v15 = 0;
    v4 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:v3 error:&v15];
    v5 = v15;

    if (v4)
    {
      if (v2)
      {
        trustInformation = v2->_trustInformation;
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
          v13 = [(MFCertificateTrustInformationKeychainManager *)v2 addressForSaving];
          v14 = [v5 ef_publicDescription];
          *buf = 138412546;
          v17 = v13;
          v18 = 2114;
          v19 = v14;
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