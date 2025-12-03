@interface MFMessageSigner
- (BOOL)hasSeparateSigningAndEncryptionCertificates;
- (MFError)error;
- (MFMessageSigner)initWithSender:(id)sender signingTrust:(__SecTrust *)trust encryptionTrust:(__SecTrust *)encryptionTrust verification:(int)verification;
- (void)dealloc;
@end

@implementation MFMessageSigner

- (MFMessageSigner)initWithSender:(id)sender signingTrust:(__SecTrust *)trust encryptionTrust:(__SecTrust *)encryptionTrust verification:(int)verification
{
  v10 = [(MFMessageSigner *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_status = verification;
    if (trust)
    {
      v10->_signingCertificateTrustInfo = [[MFCertificateTrustInfo alloc] initWithCertificateType:0 trust:trust sender:sender];
    }

    if (encryptionTrust)
    {
      v11->_encryptionCertificateTrustInfo = [[MFCertificateTrustInfo alloc] initWithCertificateType:1 trust:encryptionTrust sender:sender];
    }
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageSigner;
  [(MFMessageSigner *)&v3 dealloc];
}

- (BOOL)hasSeparateSigningAndEncryptionCertificates
{
  signingCertificateTrustInfo = self->_signingCertificateTrustInfo;
  if (signingCertificateTrustInfo)
  {
    if (!self->_encryptionCertificateTrustInfo || (v4 = [(MFCertificateTrustInfo *)signingCertificateTrustInfo trust], signingCertificateTrustInfo = [(MFCertificateTrustInfo *)self->_encryptionCertificateTrustInfo trust], v4 == signingCertificateTrustInfo))
    {
      LOBYTE(signingCertificateTrustInfo) = 0;
    }

    else
    {
      v5 = signingCertificateTrustInfo;
      LOBYTE(signingCertificateTrustInfo) = 1;
      if (v4 && v5)
      {
        CertificateAtIndex = SecTrustGetCertificateAtIndex(v4, 0);
        v7 = SecTrustGetCertificateAtIndex(v5, 0);
        LOBYTE(signingCertificateTrustInfo) = CFEqual(CertificateAtIndex, v7) == 0;
      }
    }
  }

  return signingCertificateTrustInfo;
}

- (MFError)error
{
  v2 = 0;
  v15 = *MEMORY[0x277D85DE8];
  status = self->_status;
  if (status <= 0xC)
  {
    v5 = 1 << status;
    if ((v5 & 0x1DFC) != 0)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:MFLookupLocalizedString(@"SMIME_DAMAGED_SIG", @"The digital signature for this message is incorrect. The message may have been tampered with or corrupted since being signed by “%@”.", @"Delayed", -[MFCertificateTrustInfo sender](self->_signingCertificateTrustInfo, "sender")];
      v7 = MFLogGeneral();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v8 = self->_status;
      *buf = 134217984;
      v14 = v8;
      v9 = "#SMIMEErrors Verification was not good (%ld)";
    }

    else
    {
      if ((v5 & 0x201) == 0)
      {
        goto LABEL_9;
      }

      v6 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v7 = MFLogGeneral();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v12 = self->_status;
      *buf = 134217984;
      v14 = v12;
      v9 = "#SMIMEErrors Verification went south (%ld)";
    }

    _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
LABEL_6:
    if (v6)
    {
      v2 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v6];

      [(MFError *)v2 setShortDescription:MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed")];
      [(MFError *)v2 setUserInfoObject:self forKey:@"MFSignerInfoErrorKey"];
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

@end