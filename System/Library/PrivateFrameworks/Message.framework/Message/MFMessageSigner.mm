@interface MFMessageSigner
- (MFError)error;
- (MFMessageSigner)initWithSender:(id)sender signingTrust:(__SecTrust *)trust encryptionTrust:(__SecTrust *)encryptionTrust verification:(int)verification;
@end

@implementation MFMessageSigner

- (MFMessageSigner)initWithSender:(id)sender signingTrust:(__SecTrust *)trust encryptionTrust:(__SecTrust *)encryptionTrust verification:(int)verification
{
  senderCopy = sender;
  v12 = [(MFMessageSigner *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_status = verification;
    objc_storeStrong(&v12->_sender, sender);
    if (trust)
    {
      v14 = [[MFCertificateTrustInfo alloc] initWithCertificateType:0 trust:trust sender:senderCopy];
      signingCertificateTrustInfo = v13->_signingCertificateTrustInfo;
      v13->_signingCertificateTrustInfo = v14;
    }

    if (encryptionTrust)
    {
      v16 = [[MFCertificateTrustInfo alloc] initWithCertificateType:1 trust:encryptionTrust sender:senderCopy];
      encryptionCertificateTrustInfo = v13->_encryptionCertificateTrustInfo;
      v13->_encryptionCertificateTrustInfo = v16;
    }
  }

  return v13;
}

- (MFError)error
{
  v2 = 0;
  v19 = *MEMORY[0x1E69E9840];
  status = self->_status;
  if (status > 0xC)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v5 = 1 << status;
  if ((v5 & 0x1DFC) != 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = MFLookupLocalizedString(@"SMIME_DAMAGED_SIG", @"The digital signature for this message is incorrect. The message may have been tampered with or corrupted since being signed by “%@”.", @"Delayed");
    sender = [(MFCertificateTrustInfo *)self->_signingCertificateTrustInfo sender];
    v2 = [v6 initWithFormat:v7, sender];

    v9 = MFLogGeneral();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_6;
    }

    v10 = self->_status;
    *buf = 134217984;
    v18 = v10;
    v11 = "#SMIMEErrors Verification was not good (%ld)";
  }

  else
  {
    v12 = 0;
    if ((v5 & 0x201) == 0)
    {
      goto LABEL_9;
    }

    v2 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
    v9 = MFLogGeneral();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_6;
    }

    v16 = self->_status;
    *buf = 134217984;
    v18 = v16;
    v11 = "#SMIMEErrors Verification went south (%ld)";
  }

  _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
LABEL_6:

  if (v2)
  {
    v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v2];
    v13 = MFLookupLocalizedString(@"SMIME_SIG_TITLE", @"Unable to verify message signature", @"Delayed");
    [v12 setShortDescription:v13];

    [v12 setUserInfoObject:self forKey:@"MFSignerInfoErrorKey"];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

@end