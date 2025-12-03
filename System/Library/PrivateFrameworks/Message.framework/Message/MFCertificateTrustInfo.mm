@interface MFCertificateTrustInfo
- (ECSecureMIMETrustEvaluation)trustEvaluation;
- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)type trust:(__SecTrust *)trust sender:(id)sender;
- (__SecTrust)trust;
- (void)dealloc;
@end

@implementation MFCertificateTrustInfo

- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)type trust:(__SecTrust *)trust sender:(id)sender
{
  senderCopy = sender;
  if (!trust)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFCertificateTrustInfo.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"trust"}];
  }

  v23.receiver = self;
  v23.super_class = MFCertificateTrustInfo;
  v10 = [(MFCertificateTrustInfo *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_certificateType = type;
    v10->_unevaluatedTrust = CFRetain(trust);
    v12 = [senderCopy copy];
    sender = v11->_sender;
    v11->_sender = v12;

    v14 = senderCopy;
    emailAddressValue = [v14 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v17 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [v14 stringValue];
    }

    v19 = stringValue;

    uncommentedSender = v11->_uncommentedSender;
    v11->_uncommentedSender = v19;
  }

  return v11;
}

- (void)dealloc
{
  CFRelease(self->_unevaluatedTrust);
  v3.receiver = self;
  v3.super_class = MFCertificateTrustInfo;
  [(MFCertificateTrustInfo *)&v3 dealloc];
}

- (ECSecureMIMETrustEvaluation)trustEvaluation
{
  trustEvaluation = self->_trustEvaluation;
  if (!trustEvaluation)
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    mf_blockRemoteContent = [em_userDefaults mf_blockRemoteContent];

    if (mf_blockRemoteContent)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }

    v7 = [MEMORY[0x1E699B318] evaluateTrust:self->_unevaluatedTrust withOptions:v6 signerEmailAddress:self->_uncommentedSender];
    v8 = self->_trustEvaluation;
    self->_trustEvaluation = v7;

    trustEvaluation = self->_trustEvaluation;
  }

  v9 = trustEvaluation;

  return v9;
}

- (__SecTrust)trust
{
  trustEvaluation = [(MFCertificateTrustInfo *)self trustEvaluation];
  trust = [trustEvaluation trust];

  return trust;
}

@end