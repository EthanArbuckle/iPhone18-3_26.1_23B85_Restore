@interface _DPDediscoKeyConfiguration
+ (id)constructTrust:(id)a3 policy:(__SecPolicy *)a4 overrideVerifyDate:(id)a5;
+ (id)extractCertificatesFromChain:(id)a3;
+ (id)extractPublicKeyFromString:(id)a3;
+ (id)keysFromConfiguration:(id)a3 error:(id *)a4 overrideVerifyDate:(id)a5;
+ (id)verifySignature:(id)a3 data:(id)a4 certificate:(id)a5 overrideVerifyDate:(id)a6 isAppleServer:(BOOL)a7;
- (_DPDediscoKeyConfiguration)initWithDestinationKey:(id)a3 facilitatorPublicKey:(id)a4 keysMetadataArray:(id)a5;
@end

@implementation _DPDediscoKeyConfiguration

- (_DPDediscoKeyConfiguration)initWithDestinationKey:(id)a3 facilitatorPublicKey:(id)a4 keysMetadataArray:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _DPDediscoKeyConfiguration;
  v12 = [(_DPDediscoKeyConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinationPublicKey, a3);
    objc_storeStrong(&v13->_facilitatorPublicKey, a4);
    objc_storeStrong(&v13->_keysMetadataArray, a5);
  }

  return v13;
}

+ (id)keysFromConfiguration:(id)a3 error:(id *)a4 overrideVerifyDate:(id)a5
{
  v7 = a5;
  v38 = 0;
  v8 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:&v38];
  v9 = v38;
  if (v9)
  {
    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E3FC();
    }

    if (a4)
    {
      *a4 = [_DPDediscoError errorWithCode:300 underlyingError:v9 description:@"Failed to deserialize the configuration."];
    }
  }

  v11 = [v8 objectForKeyedSubscript:@"public-keys"];
  v12 = [v8 objectForKeyedSubscript:@"certificate"];
  v13 = [v8 objectForKeyedSubscript:@"signature"];
  v14 = v13;
  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v13 == 0;
  if (!v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [objc_opt_class() verifySignature:v14 data:v11 certificate:v12 overrideVerifyDate:v7 isAppleServer:1];
    v18 = v17;
    if (v17)
    {
      if (a4)
      {
        v19 = v17;
        v20 = 0;
        *a4 = v18;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v37 = v9;
      v36 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v37];
      v23 = v37;

      v35 = v23;
      if (v23)
      {
        v24 = +[_DPLog service];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10004E4F8();
        }

        if (a4)
        {
          *a4 = [_DPDediscoError errorWithCode:300 underlyingError:v23 description:@"Failed to deserialize the inner configuration"];
        }
      }

      v25 = [v36 objectForKeyedSubscript:@"dsPublicKey"];
      v26 = [v36 objectForKeyedSubscript:@"fsPublicKey"];
      v27 = v26;
      if (v25 && v26)
      {
        v33 = [_DPDediscoKeyConfiguration alloc];
        v28 = [objc_opt_class() extractPublicKeyFromString:v25];
        [objc_opt_class() extractPublicKeyFromString:v27];
        v30 = v29 = v27;
        v20 = [(_DPDediscoKeyConfiguration *)v33 initWithDestinationKey:v28 facilitatorPublicKey:v30];

        v31 = v25;
        v18 = 0;
        v9 = v35;
      }

      else
      {
        v32 = +[_DPLog service];
        v18 = 0;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10004E574();
        }

        v29 = v27;

        if (a4)
        {
          [_DPDediscoError errorWithCode:300 description:@"Failed to obtain fields from the inner configuration"];
          *a4 = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v9 = v35;
        v31 = v34;
      }
    }
  }

  else
  {
    v21 = +[_DPLog service];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004E478();
    }

    if (a4)
    {
      [_DPDediscoError errorWithCode:300 description:@"Failed to obtain fields from configuration."];
      *a4 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (id)verifySignature:(id)a3 data:(id)a4 certificate:(id)a5 overrideVerifyDate:(id)a6 isAppleServer:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [a1 extractCertificatesFromChain:a5];
  ApplePinned = SecPolicyCreateApplePinned();
  if (!ApplePinned)
  {
    v20 = [_DPDediscoError errorWithCode:301 description:@"Failed to create a certificate policy."];
    goto LABEL_15;
  }

  v16 = ApplePinned;
  v17 = [a1 constructTrust:v14 policy:ApplePinned overrideVerifyDate:v13];
  CFRelease(v16);
  if (v17)
  {
    error = 0;
    if (!SecTrustEvaluateWithError(v17, &error))
    {
      v21 = error;
      v25 = +[_DPLog service];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10004E5F4();
      }

      v23 = @"Failed to evaluate certificate chain.";
      v24 = 301;
      goto LABEL_13;
    }

    v18 = SecTrustCopyKey(v17);
    error = 0;
    v19 = SecKeyVerifySignature(v18, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v12, v11, &error);
    CFRelease(v18);
    v20 = 0;
    if (!v19)
    {
      v21 = error;
      v22 = +[_DPLog service];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10004E670();
      }

      v23 = @"Failed to verify configuration signature.";
      v24 = 302;
LABEL_13:
      v20 = [_DPDediscoError errorWithCode:v24 underlyingError:v21 description:v23];
    }
  }

  else
  {
    v20 = [_DPDediscoError errorWithCode:301 description:@"Failed to create a certificate trust."];
  }

LABEL_15:

  return v20;
}

+ (id)extractCertificatesFromChain:(id)a3
{
  v3 = a3;
  v27 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"(-----BEGIN CERTIFICATE-----\n[A-Za-z0-9/+\n]+={0 options:2}\n-----END CERTIFICATE-----\n)" error:0, &v27];
  v5 = v27;
  v6 = v5;
  if (v4)
  {
    v22 = v5;
    v7 = [[NSString alloc] initWithData:v3 encoding:4];
    v8 = [&__NSArray0__struct mutableCopy];
    [v4 matchesInString:v7 options:0 range:{0, objc_msgSend(v3, "length")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v23 + 1) + 8 * i) range];
          v16 = [v7 substringWithRange:v14, v15];
          [v16 dataUsingEncoding:4];
          v17 = SecCertificateCreateWithPEM();
          if (!v17)
          {
            v20 = +[_DPLog service];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10004E6EC();
            }

            v19 = 0;
            goto LABEL_14;
          }

          v18 = v17;
          [v8 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = v8;
LABEL_14:
    v6 = v22;
  }

  else
  {
    v7 = +[_DPLog service];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004E72C();
    }

    v19 = 0;
  }

  return v19;
}

+ (id)constructTrust:(id)a3 policy:(__SecPolicy *)a4 overrideVerifyDate:(id)a5
{
  v7 = a5;
  trust = 0;
  if (SecTrustCreateWithCertificates(a3, a4, &trust))
  {
    v8 = +[_DPLog service];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7A0();
    }

    v9 = 0;
  }

  else
  {
    if (v7)
    {
      SecTrustSetVerifyDate(trust, v7);
    }

    v9 = trust;
  }

  return v9;
}

+ (id)extractPublicKeyFromString:(id)a3
{
  v3 = a3;
  v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];

  if (v4)
  {
    v11[0] = kSecAttrKeyType;
    v11[1] = kSecAttrKeyClass;
    v12[0] = kSecAttrKeyTypeECSECPrimeRandom;
    v12[1] = kSecAttrKeyClassPublic;
    v11[2] = kSecAttrKeySizeInBits;
    v12[2] = &off_1000759D8;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    v10 = 0;
    v6 = SecKeyCreateWithData(v4, v5, &v10);
    v7 = v10;
    if (!v6)
    {
      v8 = +[_DPLog service];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10004E814();
      }
    }
  }

  else
  {
    v5 = +[_DPLog service];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004E888();
    }

    v6 = 0;
  }

  return v6;
}

@end