@interface IDSAuthenticationSigningResult
- (IDSAuthenticationSigningResult)initWithSubscriptionIdentifiers:(id)identifiers authenticationCertificates:(id)certificates inputData:(id)data nonce:(id)nonce signature:(id)signature;
- (NSString)serverVerifiableEncoding;
- (id)description;
@end

@implementation IDSAuthenticationSigningResult

- (IDSAuthenticationSigningResult)initWithSubscriptionIdentifiers:(id)identifiers authenticationCertificates:(id)certificates inputData:(id)data nonce:(id)nonce signature:(id)signature
{
  identifiersCopy = identifiers;
  certificatesCopy = certificates;
  dataCopy = data;
  nonceCopy = nonce;
  signatureCopy = signature;
  v32.receiver = self;
  v32.super_class = IDSAuthenticationSigningResult;
  v17 = [(IDSAuthenticationSigningResult *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputData, data);
    objc_storeStrong(&v18->_nonce, nonce);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = [identifiersCopy count];
    v29 = v18;
    v31 = dataCopy;
    if (v20 == [certificatesCopy count])
    {
      if ([identifiersCopy count])
      {
        v21 = 0;
        do
        {
          v22 = [certificatesCopy objectAtIndexedSubscript:{v21, v29}];
          v23 = [identifiersCopy objectAtIndexedSubscript:v21];
          v24 = [objc_alloc(MEMORY[0x1E69A51C8]) initWithSubscriptionIdentifier:v23 authenticationCertificate:v22 signature:signatureCopy nonce:nonceCopy];
          [v19 addObject:v24];

          ++v21;
        }

        while ([identifiersCopy count] > v21);
      }
    }

    else
    {
      v25 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_195B2B3AC(identifiersCopy, certificatesCopy, v25);
      }
    }

    v26 = [v19 copy];
    v18 = v30;
    authenticationCertificateSignatures = v30->_authenticationCertificateSignatures;
    v30->_authenticationCertificateSignatures = v26;

    dataCopy = v31;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  authenticationCertificateSignatures = [(IDSAuthenticationSigningResult *)self authenticationCertificateSignatures];
  v6 = [v3 stringWithFormat:@"<%@: %p authenticationCertificateSignatures: %@>", v4, self, authenticationCertificateSignatures];

  return v6;
}

- (NSString)serverVerifiableEncoding
{
  authenticationCertificateSignatures = [(IDSAuthenticationSigningResult *)self authenticationCertificateSignatures];
  firstObject = [authenticationCertificateSignatures firstObject];
  serverVerifiableEncoding = [firstObject serverVerifiableEncoding];

  return serverVerifiableEncoding;
}

@end