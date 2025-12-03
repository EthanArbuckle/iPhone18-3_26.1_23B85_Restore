@interface _DPDediscoKeyConfiguration
+ (id)constructTrust:(id)trust policy:(__SecPolicy *)policy overrideVerifyDate:(id)date;
+ (id)extractCertificatesFromChain:(id)chain;
+ (id)extractPublicKeyFromString:(id)string;
+ (id)keysFromConfiguration:(id)configuration error:(id *)error overrideVerifyDate:(id)date;
+ (id)verifySignature:(id)signature data:(id)data certificate:(id)certificate overrideVerifyDate:(id)date isAppleServer:(BOOL)server;
- (_DPDediscoKeyConfiguration)initWithDestinationKey:(id)key facilitatorPublicKey:(id)publicKey keysMetadataArray:(id)array;
@end

@implementation _DPDediscoKeyConfiguration

- (_DPDediscoKeyConfiguration)initWithDestinationKey:(id)key facilitatorPublicKey:(id)publicKey keysMetadataArray:(id)array
{
  keyCopy = key;
  publicKeyCopy = publicKey;
  arrayCopy = array;
  v15.receiver = self;
  v15.super_class = _DPDediscoKeyConfiguration;
  v12 = [(_DPDediscoKeyConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinationPublicKey, key);
    objc_storeStrong(&v13->_facilitatorPublicKey, publicKey);
    objc_storeStrong(&v13->_keysMetadataArray, array);
  }

  return v13;
}

+ (id)keysFromConfiguration:(id)configuration error:(id *)error overrideVerifyDate:(id)date
{
  dateCopy = date;
  v38 = 0;
  v8 = [NSPropertyListSerialization propertyListWithData:configuration options:0 format:0 error:&v38];
  v9 = v38;
  if (v9)
  {
    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E3FC();
    }

    if (error)
    {
      *error = [_DPDediscoError errorWithCode:300 underlyingError:v9 description:@"Failed to deserialize the configuration."];
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
    v17 = [objc_opt_class() verifySignature:v14 data:v11 certificate:v12 overrideVerifyDate:dateCopy isAppleServer:1];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v20 = 0;
        *error = v18;
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

        if (error)
        {
          *error = [_DPDediscoError errorWithCode:300 underlyingError:v23 description:@"Failed to deserialize the inner configuration"];
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

        if (error)
        {
          [_DPDediscoError errorWithCode:300 description:@"Failed to obtain fields from the inner configuration"];
          *error = v20 = 0;
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

    if (error)
    {
      [_DPDediscoError errorWithCode:300 description:@"Failed to obtain fields from configuration."];
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (id)verifySignature:(id)signature data:(id)data certificate:(id)certificate overrideVerifyDate:(id)date isAppleServer:(BOOL)server
{
  signatureCopy = signature;
  dataCopy = data;
  dateCopy = date;
  v14 = [self extractCertificatesFromChain:certificate];
  ApplePinned = SecPolicyCreateApplePinned();
  if (!ApplePinned)
  {
    v20 = [_DPDediscoError errorWithCode:301 description:@"Failed to create a certificate policy."];
    goto LABEL_15;
  }

  v16 = ApplePinned;
  v17 = [self constructTrust:v14 policy:ApplePinned overrideVerifyDate:dateCopy];
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
    v19 = SecKeyVerifySignature(v18, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, dataCopy, signatureCopy, &error);
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

+ (id)extractCertificatesFromChain:(id)chain
{
  chainCopy = chain;
  v27 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"(-----BEGIN CERTIFICATE-----\n[A-Za-z0-9/+\n]+={0 options:2}\n-----END CERTIFICATE-----\n)" error:0, &v27];
  v5 = v27;
  v6 = v5;
  if (v4)
  {
    v22 = v5;
    v7 = [[NSString alloc] initWithData:chainCopy encoding:4];
    v8 = [&__NSArray0__struct mutableCopy];
    [v4 matchesInString:v7 options:0 range:{0, objc_msgSend(chainCopy, "length")}];
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

          range = [*(*(&v23 + 1) + 8 * i) range];
          v16 = [v7 substringWithRange:range, v15];
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

+ (id)constructTrust:(id)trust policy:(__SecPolicy *)policy overrideVerifyDate:(id)date
{
  dateCopy = date;
  trust = 0;
  if (SecTrustCreateWithCertificates(trust, policy, &trust))
  {
    v8 = +[_DPLog service];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7A0();
    }

    trustCopy = 0;
  }

  else
  {
    if (dateCopy)
    {
      SecTrustSetVerifyDate(trust, dateCopy);
    }

    trustCopy = trust;
  }

  return trustCopy;
}

+ (id)extractPublicKeyFromString:(id)string
{
  stringCopy = string;
  v4 = [[NSData alloc] initWithBase64EncodedString:stringCopy options:0];

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