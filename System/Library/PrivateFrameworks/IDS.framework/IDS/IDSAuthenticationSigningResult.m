@interface IDSAuthenticationSigningResult
- (IDSAuthenticationSigningResult)initWithSubscriptionIdentifiers:(id)a3 authenticationCertificates:(id)a4 inputData:(id)a5 nonce:(id)a6 signature:(id)a7;
- (NSString)serverVerifiableEncoding;
- (id)description;
@end

@implementation IDSAuthenticationSigningResult

- (IDSAuthenticationSigningResult)initWithSubscriptionIdentifiers:(id)a3 authenticationCertificates:(id)a4 inputData:(id)a5 nonce:(id)a6 signature:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = IDSAuthenticationSigningResult;
  v17 = [(IDSAuthenticationSigningResult *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputData, a5);
    objc_storeStrong(&v18->_nonce, a6);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = [v12 count];
    v29 = v18;
    v31 = v14;
    if (v20 == [v13 count])
    {
      if ([v12 count])
      {
        v21 = 0;
        do
        {
          v22 = [v13 objectAtIndexedSubscript:{v21, v29}];
          v23 = [v12 objectAtIndexedSubscript:v21];
          v24 = [objc_alloc(MEMORY[0x1E69A51C8]) initWithSubscriptionIdentifier:v23 authenticationCertificate:v22 signature:v16 nonce:v15];
          [v19 addObject:v24];

          ++v21;
        }

        while ([v12 count] > v21);
      }
    }

    else
    {
      v25 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_195B2B3AC(v12, v13, v25);
      }
    }

    v26 = [v19 copy];
    v18 = v30;
    authenticationCertificateSignatures = v30->_authenticationCertificateSignatures;
    v30->_authenticationCertificateSignatures = v26;

    v14 = v31;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSAuthenticationSigningResult *)self authenticationCertificateSignatures];
  v6 = [v3 stringWithFormat:@"<%@: %p authenticationCertificateSignatures: %@>", v4, self, v5];

  return v6;
}

- (NSString)serverVerifiableEncoding
{
  v2 = [(IDSAuthenticationSigningResult *)self authenticationCertificateSignatures];
  v3 = [v2 firstObject];
  v4 = [v3 serverVerifiableEncoding];

  return v4;
}

@end