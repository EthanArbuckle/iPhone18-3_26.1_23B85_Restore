@interface MFCertificateTrustInfo
- (BOOL)hasTrustException;
- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)type trust:(__SecTrust *)trust sender:(id)sender;
- (NSString)commonName;
- (NSString)emailAddress;
- (int)action;
- (unint64_t)keychainStatus;
- (void)addTrustException;
- (void)dealloc;
- (void)keychainStatus;
- (void)removeCertificateFromKeychain;
- (void)removeTrustException;
- (void)saveCertificateToKeychain;
@end

@implementation MFCertificateTrustInfo

- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)type trust:(__SecTrust *)trust sender:(id)sender
{
  senderCopy = sender;
  if (!trust)
  {
    [MFCertificateTrustInfo initWithCertificateType:a2 trust:self sender:?];
  }

  v17.receiver = self;
  v17.super_class = MFCertificateTrustInfo;
  v10 = [(MFCertificateTrustInfo *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_certificateType = type;
    v10->_trust = CFRetain(trust);
    v12 = [senderCopy copy];
    sender = v11->_sender;
    v11->_sender = v12;

    mf_copyUncommentedAddress = [senderCopy mf_copyUncommentedAddress];
    uncommentedSender = v11->_uncommentedSender;
    v11->_uncommentedSender = mf_copyUncommentedAddress;
  }

  return v11;
}

- (void)dealloc
{
  CFRelease(self->_trust);
  v3.receiver = self;
  v3.super_class = MFCertificateTrustInfo;
  [(MFCertificateTrustInfo *)&v3 dealloc];
}

- (int)action
{
  v3 = +[MFMessageKeychainManager newTrustManager];
  LODWORD(self) = [v3 actionForSMIMETrust:self->_trust sender:self->_uncommentedSender];

  return self;
}

- (NSString)commonName
{
  [(MFCertificateTrustInfo *)self certificate];
  v2 = SecCertificateCopyCommonNames();
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)emailAddress
{
  [(MFCertificateTrustInfo *)self certificate];
  v2 = SecCertificateCopyRFC822Names();
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasTrustException
{
  v3 = +[MFMessageKeychainManager newTrustManager];
  LOBYTE(self) = [v3 _hasExceptionsForSMIMETrust:self->_trust sender:self->_uncommentedSender];

  return self;
}

- (void)addTrustException
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = +[MFMessageKeychainManager newTrustManager];
  [v3 addSMIMETrust:self->_trust sender:self->_uncommentedSender];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sender = self->_sender;
    v8 = 138412290;
    v9 = sender;
    _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_INFO, "#SMIMEErrors Added trust exception for %@", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MFCertificateTrustInfoTrustDidChangeNotification" object:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeTrustException
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[MFMessageKeychainManager newTrustManager];
  [v3 removeSMIMETrust:self->_trust sender:self->_uncommentedSender];
  policies = 0;
  if (!SecTrustCopyPolicies(self->_trust, &policies))
  {
    SecTrustSetPolicies(self->_trust, MEMORY[0x277CBEBF8]);
    SecTrustSetPolicies(self->_trust, policies);
    CFRelease(policies);
  }

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sender = self->_sender;
    *buf = 138412290;
    v10 = sender;
    _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_INFO, "#SMIMEErrors Removed trust exception for %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MFCertificateTrustInfoTrustDidChangeNotification" object:self];

  v7 = *MEMORY[0x277D85DE8];
}

- (unint64_t)keychainStatus
{
  if (self->_certificateType != 1)
  {
    return 0;
  }

  p_sender = &self->_sender;
  sender = self->_sender;
  v11 = 0;
  v5 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:sender error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    if (CFEqual([(MFCertificateTrustInfo *)self certificate], v5))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    CFRelease(v5);
  }

  else
  {
    if (v6)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MFCertificateTrustInfo *)p_sender keychainStatus];
      }
    }

    v8 = 0;
  }

  return v8;
}

- (void)saveCertificateToKeychain
{
  if (self->_certificateType == 1)
  {
    v2 = [MFMessageKeychainManager saveEncryptionCertificate:[(MFCertificateTrustInfo *)self certificate] forAddress:self->_sender];
  }
}

- (void)removeCertificateFromKeychain
{
  if (self->_certificateType == 1)
  {
    v4 = [MFMessageKeychainManager saveEncryptionCertificate:0 forAddress:self->_sender, v2, v3];
  }
}

- (void)initWithCertificateType:(uint64_t)a1 trust:(uint64_t)a2 sender:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MFCertificateTrustInfo.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"trust"}];
}

- (void)keychainStatus
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *self;
  ef_publicDescription = [a2 ef_publicDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2114;
  v10 = ef_publicDescription;
  _os_log_error_impl(&dword_258BDA000, a3, OS_LOG_TYPE_ERROR, "#SMIMEErrors Error when retrieving encryption certificate for %@: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end