@interface MFCertificateTrustInfo
- (ECSecureMIMETrustEvaluation)trustEvaluation;
- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)a3 trust:(__SecTrust *)a4 sender:(id)a5;
- (__SecTrust)trust;
- (void)dealloc;
@end

@implementation MFCertificateTrustInfo

- (MFCertificateTrustInfo)initWithCertificateType:(unint64_t)a3 trust:(__SecTrust *)a4 sender:(id)a5
{
  v9 = a5;
  if (!a4)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MFCertificateTrustInfo.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"trust"}];
  }

  v23.receiver = self;
  v23.super_class = MFCertificateTrustInfo;
  v10 = [(MFCertificateTrustInfo *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_certificateType = a3;
    v10->_unevaluatedTrust = CFRetain(a4);
    v12 = [v9 copy];
    sender = v11->_sender;
    v11->_sender = v12;

    v14 = v9;
    v15 = [v14 emailAddressValue];
    v16 = [v15 simpleAddress];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v14 stringValue];
    }

    v19 = v18;

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
    v4 = [MEMORY[0x1E695E000] em_userDefaults];
    v5 = [v4 mf_blockRemoteContent];

    if (v5)
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
  v2 = [(MFCertificateTrustInfo *)self trustEvaluation];
  v3 = [v2 trust];

  return v3;
}

@end