@interface MCCertificateWrapperProfile
+ (id)_basicWrapperProfileDictForCertificateName:(id)a3 fileName:(id)a4 identifier:(id)a5;
+ (id)_identifierHashFromData:(id)a3;
+ (id)_wrapperPayloadDictWithCertData:(id)a3 fileName:(id)a4 name:(id)a5 identifier:(id)a6 type:(id)a7;
+ (id)_wrapperProfileDictForCertificate:(__SecCertificate *)a3 fileName:(id)a4 certData:(id)a5 type:(id)a6;
+ (id)_wrapperProfileForWAPICertificate:(__SecCertificate *)a3 fileName:(id)a4 PEMData:(id)a5;
+ (id)_wrapperWAPIPayloadDictWithPEMData:(id)a3 fileName:(id)a4 name:(id)a5 identifier:(id)a6;
+ (id)wrapperProfileDictionaryWithCertificateData:(id)a3 fileName:(id)a4 outSignerCerts:(id *)a5;
- (BOOL)isSigned;
- (id)_certificatePayload;
- (id)earliestCertificateExpiryDate;
- (id)stubDictionary;
- (int)trustLevel;
@end

@implementation MCCertificateWrapperProfile

- (id)_certificatePayload
{
  v2 = [(MCConfigurationProfile *)self payloads];
  v3 = [v2 objectAtIndex:0];

  return v3;
}

- (id)stubDictionary
{
  v4.receiver = self;
  v4.super_class = MCCertificateWrapperProfile;
  v2 = [(MCConfigurationProfile *)&v4 stubDictionary];
  [v2 setObject:@"CertificateWrapper" forKey:@"PayloadType"];

  return v2;
}

- (int)trustLevel
{
  v2 = [(MCCertificateWrapperProfile *)self _certificatePayload];
  v3 = [v2 copyCertificate];
  if (v3)
  {
    v4 = v3;
    if (SecCertificateIsSelfSignedCA())
    {
      v5 = 2;
      if (![MCKeychain itemExistsInKeychain:v4 useSystemKeychain:1])
      {
        if ([MCKeychain itemExistsInKeychain:v4 useSystemKeychain:0])
        {
          v5 = 2;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      BasicX509 = SecPolicyCreateBasicX509();
      trust = 0;
      if (SecTrustCreateWithCertificates([MEMORY[0x1E695DEC8] arrayWithObject:v4], BasicX509, &trust))
      {
        v5 = 0;
      }

      else
      {
        cf = 0;
        if (SecTrustEvaluateWithError(trust, &cf))
        {
          v5 = 2;
        }

        else
        {
          CFRelease(cf);
          v5 = 0;
        }

        if (trust)
        {
          CFRelease(trust);
        }
      }

      if (BasicX509)
      {
        CFRelease(BasicX509);
      }

      CFRelease(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSigned
{
  v2 = [(MCCertificateWrapperProfile *)self _certificatePayload];
  v3 = [v2 isSigned];

  return v3;
}

- (id)earliestCertificateExpiryDate
{
  v2 = [(MCCertificateWrapperProfile *)self _certificatePayload];
  v3 = [v2 expiry];

  return v3;
}

+ (id)_identifierHashFromData:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 32; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  [v4 appendString:@"a"];

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_wrapperPayloadDictWithCertData:(id)a3 fileName:(id)a4 name:(id)a5 identifier:(id)a6 type:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E696AEC0];
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [v13 MCMakeUUID];
  v18 = +[MCPayload wrapperPayloadDictionary];
  [v18 setObject:v14 forKey:@"PayloadType"];

  [v18 setObject:v15 forKey:@"PayloadIdentifier"];
  [v18 setObject:v17 forKey:@"PayloadUUID"];
  [v18 setObject:v12 forKey:@"PayloadDisplayName"];
  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v12;
  }

  [v18 setObject:v19 forKey:@"PayloadCertificateFileName"];
  [v18 setObject:v16 forKey:@"PayloadContent"];

  return v18;
}

+ (id)_wrapperWAPIPayloadDictWithPEMData:(id)a3 fileName:(id)a4 name:(id)a5 identifier:(id)a6
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [v8 MCMakeUUID];
  v13 = +[MCPayload wrapperPayloadDictionary];
  [v13 setObject:@"com.apple.security.wapi-identity" forKey:@"PayloadType"];
  [v13 setObject:v9 forKey:@"PayloadIdentifier"];

  [v13 setObject:v12 forKey:@"PayloadUUID"];
  [v13 setObject:v10 forKey:@"PayloadDisplayName"];

  [v13 setObject:v11 forKey:@"PEMData"];

  return v13;
}

+ (id)_basicWrapperProfileDictForCertificateName:(id)a3 fileName:(id)a4 identifier:(id)a5
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a5;
  v8 = a3;
  v9 = [v6 dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
  [v9 setObject:v10 forKey:@"PayloadVersion"];

  [v9 setObject:@"CertificateWrapper" forKey:@"PayloadType"];
  [v9 setObject:v7 forKey:@"PayloadIdentifier"];

  v11 = [MEMORY[0x1E696AEC0] MCMakeUUID];
  [v9 setObject:v11 forKey:@"PayloadUUID"];

  [v9 setObject:v8 forKey:@"PayloadDisplayName"];

  return v9;
}

+ (id)_wrapperProfileDictForCertificate:(__SecCertificate *)a3 fileName:(id)a4 certData:(id)a5 type:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = SecCertificateCopySubjectSummary(a3);
  v14 = [a1 _identifierHashFromData:v11];
  v15 = [a1 _basicWrapperProfileDictForCertificateName:v13 fileName:v12 identifier:v14];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [a1 _wrapperPayloadDictWithCertData:v11 fileName:v12 name:v13 identifier:v14 type:v10];

  [v16 addObject:v17];
  [v15 setObject:v16 forKey:@"PayloadContent"];

  return v15;
}

+ (id)_wrapperProfileForWAPICertificate:(__SecCertificate *)a3 fileName:(id)a4 PEMData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = SecCertificateCopySubjectSummary(a3);
  v11 = [a1 _identifierHashFromData:v8];
  v12 = [a1 _basicWrapperProfileDictForCertificateName:v10 fileName:v9 identifier:v11];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [a1 _wrapperWAPIPayloadDictWithPEMData:v8 fileName:v9 name:v10 identifier:v11];

  [v13 addObject:v14];
  [v12 setObject:v13 forKey:@"PayloadContent"];

  return v12;
}

+ (id)wrapperProfileDictionaryWithCertificateData:(id)a3 fileName:(id)a4 outSignerCerts:(id *)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [MCCrypto copyCertificateRefFromPEMData:v8];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:1];
      if ([v12 rangeOfString:@"-----BEGIN EC PRIVATE KEY-----"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [a1 _wrapperProfileDictForCertificate:v11 fileName:v9 certData:v8 type:@"com.apple.security.pem"];
      }

      else
      {
        [a1 _wrapperProfileForWAPICertificate:v11 fileName:v9 PEMData:v8];
      }
      v13 = ;
      v38[0] = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
      CFRelease(v11);
    }

    else
    {
      v14 = [MCCrypto copyCertificateRefFromPKCS1Data:v8];
      if (v14)
      {
        v15 = v14;
        v13 = [a1 _wrapperProfileDictForCertificate:v14 fileName:v9 certData:v8 type:@"com.apple.security.pkcs1"];
        v37 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        CFRelease(v15);
      }

      else
      {
        if ([MCCrypto isValidPKCS12Data:v8])
        {
          v27 = MCLocalizedString(@"PKCS12_CERTIFICATE_DESCRIPTION_SINGULAR_FORMAT");
          v28 = [a1 _identifierHashFromData:v8];
          v13 = [a1 _basicWrapperProfileDictForCertificateName:v27 fileName:v9 identifier:v28];
          v29 = [MEMORY[0x1E695DF70] array];
          v30 = [a1 _wrapperPayloadDictWithCertData:v8 fileName:v9 name:v27 identifier:v28 type:@"com.apple.security.pkcs12"];
          [v29 addObject:v30];
          [v13 setObject:v29 forKey:@"PayloadContent"];
        }

        else
        {
          v13 = 0;
        }

        v16 = 0;
      }
    }

    if ([v16 count])
    {
      v31 = a5;
      v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v33;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = SecCertificateCopyData(*(*(&v32 + 1) + 8 * i));
            if (v23)
            {
              [v17 addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v20);
      }

      if (v31)
      {
        v24 = v17;
        *v31 = v17;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v13;
}

@end