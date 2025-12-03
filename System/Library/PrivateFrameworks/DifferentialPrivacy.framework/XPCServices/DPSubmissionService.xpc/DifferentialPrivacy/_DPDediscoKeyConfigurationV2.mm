@interface _DPDediscoKeyConfigurationV2
+ (id)decodeDAPEncodedConfig:(id)config withError:(id *)error;
+ (id)extractPublicKeyFromString:(id)string;
+ (id)keysFromConfiguration:(id)configuration dediscoServerNames:(id)names error:(id *)error overrideVerifyDate:(id)date;
+ (id)verifySignature:(id)signature data:(id)data certificate:(id)certificate overrideVerifyDate:(id)date isAppleServer:(BOOL)server;
- (_DPDediscoKeyConfigurationV2)initWithDestinationKey:(id)key facilitatorPublicKey:(id)publicKey keysMetadataArray:(id)array;
- (id)helperURL;
- (id)leaderURL;
- (unsigned)helperHPKEConfigID;
- (unsigned)leaderHPKEConfigID;
@end

@implementation _DPDediscoKeyConfigurationV2

+ (id)keysFromConfiguration:(id)configuration dediscoServerNames:(id)names error:(id *)error overrideVerifyDate:(id)date
{
  configurationCopy = configuration;
  namesCopy = names;
  dateCopy = date;
  v78 = 0;
  v68 = [NSPropertyListSerialization propertyListWithData:configurationCopy options:0 format:0 error:&v78];
  v11 = v78;
  if (v11)
  {
    v12 = v11;
    v13 = +[_DPLog service];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004E3FC();
    }

    if (error)
    {
      [_DPDediscoError errorWithCode:300 underlyingError:v12 description:@"Failed to deserialize the configuration."];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_73;
  }

  selfCopy = self;
  v58 = configurationCopy;
  v60 = [&__NSArray0__struct mutableCopy];
  v15 = [&off_100075AD8 objectAtIndexedSubscript:0];
  v86[0] = v15;
  v16 = [namesCopy objectForKeyedSubscript:kDPMetadataDediscoServerConfigurationLeader];
  v85 = v16;
  v17 = [NSArray arrayWithObjects:&v85 count:1];
  v87[0] = v17;
  v18 = [&off_100075AD8 objectAtIndexedSubscript:1];
  v86[1] = v18;
  v19 = [namesCopy objectForKeyedSubscript:kDPMetadataDediscoServerConfigurationHelpers];
  v87[1] = v19;
  v61 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v59 = namesCopy;
  v55 = [&off_100075AD8 countByEnumeratingWithState:&v74 objects:v84 count:16];
  v12 = 0;
  if (!v55)
  {
    v46 = v60;
    goto LABEL_65;
  }

  v20 = *v75;
  v54 = *v75;
  do
  {
    v21 = 0;
    do
    {
      if (*v75 != v20)
      {
        objc_enumerationMutation(&off_100075AD8);
      }

      v56 = v21;
      v22 = *(*(&v74 + 1) + 8 * v21);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v66 = v22;
      obj = [v61 objectForKeyedSubscript:?];
      v65 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      if (v65)
      {
        v64 = *v71;
        do
        {
          v23 = 0;
          v24 = v12;
          do
          {
            if (*v71 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v70 + 1) + 8 * v23);
            v26 = [v68 objectForKeyedSubscript:v66];
            v27 = [v26 objectForKeyedSubscript:v25];

            v28 = [v27 objectForKeyedSubscript:@"config"];
            v29 = [v27 objectForKeyedSubscript:@"certificate"];
            v30 = [v27 objectForKeyedSubscript:@"signature"];
            v31 = [v27 objectForKeyedSubscript:@"url"];
            v32 = v31;
            if (v28)
            {
              v33 = v29 == 0;
            }

            else
            {
              v33 = 1;
            }

            v35 = v33 || v30 == 0 || v31 == 0;
            if (v35 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v32 length])
            {
              v37 = [NSString stringWithFormat:@"Failed to obtain fields from Dedisco V2 configuration file for server %@.", v25];
              v40 = +[_DPLog service];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v80 = v37;
                _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
              }

              if (error)
              {
                [_DPDediscoError errorWithCode:300 description:v37];
                *error = v39 = 0;
                goto LABEL_39;
              }

LABEL_38:
              v39 = 0;
              goto LABEL_39;
            }

            v36 = [objc_opt_class() verifySignature:v30 data:v28 certificate:v29 overrideVerifyDate:dateCopy isAppleServer:{objc_msgSend(v25, "localizedCaseInsensitiveContainsString:", @"apple"}];
            v37 = v36;
            if (v36)
            {
              if (error)
              {
                v38 = v36;
                v39 = 0;
                *error = v37;
LABEL_39:
                v12 = v24;
                goto LABEL_40;
              }

              goto LABEL_38;
            }

            v69 = v24;
            v53 = [selfCopy decodeDAPEncodedConfig:v28 withError:&v69];
            v12 = v69;

            if (!v53 || v12)
            {
              v42 = +[_DPLog service];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v80 = @"Failed to decode the DAP encoded configuration file";
                v81 = 2112;
                v82 = v12;
                _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@ error: %@", buf, 0x16u);
              }

              if (!error)
              {
                goto LABEL_56;
              }

              [_DPDediscoError errorWithCode:300 underlyingError:v12 description:@"Failed to decode the DAP encoded configuration file"];
              *error = v39 = 0;
            }

            else
            {
              v41 = [NSURL URLWithString:v32];

              if (!v41)
              {
                v43 = [NSString stringWithFormat:@"The URL %@ provided by server %@ is not valid.", v32, v25];
                v44 = +[_DPLog service];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v80 = v43;
                  _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "error: %@", buf, 0xCu);
                }

                if (error)
                {
                  *error = [_DPDediscoError errorWithCode:300 underlyingError:0 description:v43];
                }

LABEL_56:
                v39 = 0;
                goto LABEL_57;
              }

              [v53 setObject:v32 forKeyedSubscript:@"url"];
              [v60 addObject:v53];
              v39 = 1;
            }

LABEL_57:

LABEL_40:
            if (!v39)
            {
              v14 = 0;
              configurationCopy = v58;
              namesCopy = v59;
              goto LABEL_72;
            }

            v23 = v23 + 1;
            v24 = v12;
          }

          while (v65 != v23);
          v45 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
          v65 = v45;
        }

        while (v45);
      }

      v21 = v56 + 1;
      namesCopy = v59;
      v46 = v60;
      v20 = v54;
    }

    while ((v56 + 1) != v55);
    v55 = [&off_100075AD8 countByEnumeratingWithState:&v74 objects:v84 count:16];
  }

  while (v55);
LABEL_65:
  if ([v46 count] > 1)
  {
    v48 = [_DPDediscoKeyConfigurationV2 alloc];
    obj = [v46 objectAtIndexedSubscript:0];
    v49 = [obj objectForKeyedSubscript:@"publicKey"];
    v50 = [v46 objectAtIndexedSubscript:1];
    v51 = [v50 objectForKeyedSubscript:@"publicKey"];
    v14 = [(_DPDediscoKeyConfigurationV2 *)v48 initWithDestinationKey:v49 facilitatorPublicKey:v51 keysMetadataArray:v46];

    namesCopy = v59;
    configurationCopy = v58;
  }

  else
  {
    obj = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Found %lu number of leader and helpers at least one leader and one helper role needs to be provided.", [v46 count]);;
    v47 = +[_DPLog service];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10004F918(obj, v12, v47);
    }

    configurationCopy = v58;
    if (error)
    {
      [_DPDediscoError errorWithCode:300 underlyingError:v12 description:obj];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_72:

LABEL_73:

  return v14;
}

- (_DPDediscoKeyConfigurationV2)initWithDestinationKey:(id)key facilitatorPublicKey:(id)publicKey keysMetadataArray:(id)array
{
  v6.receiver = self;
  v6.super_class = _DPDediscoKeyConfigurationV2;
  return [(_DPDediscoKeyConfiguration *)&v6 initWithDestinationKey:key facilitatorPublicKey:publicKey keysMetadataArray:array];
}

+ (id)decodeDAPEncodedConfig:(id)config withError:(id *)error
{
  configCopy = config;
  if ([configCopy length] > 8)
  {
    v8 = [&__NSDictionary0__struct mutableCopy];
    bytes = [configCopy bytes];
    v10 = [NSNumber numberWithChar:*bytes];
    [v8 setObject:v10 forKeyedSubscript:@"id"];

    v11 = [NSNumber numberWithUnsignedShort:bswap32(*(bytes + 1)) >> 16];
    [v8 setObject:v11 forKeyedSubscript:@"kem_id"];

    v12 = [NSNumber numberWithUnsignedShort:bswap32(*(bytes + 3)) >> 16];
    [v8 setObject:v12 forKeyedSubscript:@"kdf_id"];

    v13 = [NSNumber numberWithUnsignedShort:bswap32(*(bytes + 5)) >> 16];
    [v8 setObject:v13 forKeyedSubscript:@"aead_id"];

    v14 = *(bytes + 7);
    v15 = [v8 objectForKeyedSubscript:@"kem_id"];
    if ([v15 unsignedShortValue] == 16)
    {
      v16 = [v8 objectForKeyedSubscript:@"kdf_id"];
      if ([v16 unsignedShortValue] == 1)
      {
        v17 = [v8 objectForKeyedSubscript:@"aead_id"];
        unsignedShortValue = [v17 unsignedShortValue];

        if (unsignedShortValue == 1)
        {
          if (v14)
          {
            v19 = __rev16(v14);
            if ([configCopy length] == (v19 + 9))
            {
              v20 = [NSData dataWithBytes:bytes + 9 length:v19];
              [v8 setObject:v20 forKeyedSubscript:@"publicKey"];
              v7 = v8;

LABEL_29:
              goto LABEL_30;
            }

            v24 = +[_DPLog service];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_10004FA20();
            }

            if (error)
            {
              v22 = @"Dedisco V2 config is malformed; buffer length does not match the expected value.";
              goto LABEL_19;
            }

LABEL_28:
            v7 = 0;
            goto LABEL_29;
          }

          v23 = +[_DPLog service];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10004FAA0();
          }

          if (!error)
          {
            goto LABEL_28;
          }

          v22 = @"Dedisco V2 config is malformed; public key length is zero.";
LABEL_19:
          [_DPDediscoError errorWithCode:300 description:v22];
          *error = v7 = 0;
          goto LABEL_29;
        }

LABEL_15:
        v21 = +[_DPLog service];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10004F9A0();
        }

        if (!error)
        {
          goto LABEL_28;
        }

        v22 = @"Dedisco V2 config is malformed; HPKE configuration is not supported.";
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

  v6 = +[_DPLog service];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10004FB20();
  }

  if (error)
  {
    [_DPDediscoError errorWithCode:300 description:@"Malformed Dedisco V2 config, the buffer length is lower than the minimum length."];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_30:

  return v7;
}

+ (id)extractPublicKeyFromString:(id)string
{
  stringCopy = string;
  v4 = [[NSData alloc] initWithBase64EncodedString:stringCopy options:0];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E888();
    }
  }

  return v4;
}

+ (id)verifySignature:(id)signature data:(id)data certificate:(id)certificate overrideVerifyDate:(id)date isAppleServer:(BOOL)server
{
  signatureCopy = signature;
  dataCopy = data;
  dateCopy = date;
  v14 = [self extractCertificatesFromChain:certificate];
  PPMAggregatorConfigSigning = SecPolicyCreatePPMAggregatorConfigSigning();
  if (!PPMAggregatorConfigSigning)
  {
    v20 = [_DPDediscoError errorWithCode:301 description:@"Failed to create a certificate policy."];
    goto LABEL_15;
  }

  v16 = PPMAggregatorConfigSigning;
  v17 = [self constructTrust:v14 policy:PPMAggregatorConfigSigning overrideVerifyDate:dateCopy];
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

- (id)leaderURL
{
  keysMetadataArray = [(_DPDediscoKeyConfiguration *)self keysMetadataArray];
  v3 = [keysMetadataArray objectAtIndexedSubscript:0];
  v4 = [v3 objectForKeyedSubscript:@"url"];

  return v4;
}

- (id)helperURL
{
  keysMetadataArray = [(_DPDediscoKeyConfiguration *)self keysMetadataArray];
  v3 = [keysMetadataArray objectAtIndexedSubscript:1];
  v4 = [v3 objectForKeyedSubscript:@"url"];

  return v4;
}

- (unsigned)leaderHPKEConfigID
{
  keysMetadataArray = [(_DPDediscoKeyConfiguration *)self keysMetadataArray];
  v3 = [keysMetadataArray objectAtIndexedSubscript:0];
  v4 = [v3 objectForKeyedSubscript:@"id"];
  unsignedCharValue = [v4 unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)helperHPKEConfigID
{
  keysMetadataArray = [(_DPDediscoKeyConfiguration *)self keysMetadataArray];
  v3 = [keysMetadataArray objectAtIndexedSubscript:1];
  v4 = [v3 objectForKeyedSubscript:@"id"];
  unsignedCharValue = [v4 unsignedCharValue];

  return unsignedCharValue;
}

@end