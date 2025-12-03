@interface IDSMessageMetricReporter
+ (BOOL)_shouldIgnoreAutoBugCaptureForECFailure:(id)failure;
+ (BOOL)_shouldIgnoreAutoBugCaptureForLegacyFailure:(id)failure;
+ (BOOL)_shouldIgnoreMPError:(id)error;
+ (id)_metadataWithEndpoint:(id)endpoint secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess secondaryError:(id)error ECError:(id)cError legacyError:(id)legacyError;
+ (id)errorToReportForLegacyError:(id)error;
+ (id)errorToReportForNGMError:(id)error;
+ (id)messageMetadataWithEndpoint:(id)endpoint secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess secondaryError:(id)error ECError:(id)cError legacyError:(id)legacyError;
+ (void)noteKeyGenerationForMetric;
+ (void)reportEncryptionSideMetricWithEndpoint:(id)endpoint secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess secondaryError:(id)error ECError:(id)cError legacyError:(id)legacyError;
+ (void)reportMessageMetricWithMetadata:(id)metadata secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess command:(id)command decryptedEqual:(BOOL)equal triedLastResort:(BOOL)resort secondaryError:(id)self0 ECError:(id)self1 legacyError:(id)self2 fromDestination:(id)self3 fromToken:(id)self4 toToken:(id)self5;
@end

@implementation IDSMessageMetricReporter

+ (id)_metadataWithEndpoint:(id)endpoint secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess secondaryError:(id)error ECError:(id)cError legacyError:(id)legacyError
{
  endpointCopy = endpoint;
  successCopy = success;
  legacySuccessCopy = legacySuccess;
  errorCopy = error;
  cErrorCopy = cError;
  legacyErrorCopy = legacyError;
  cSuccessCopy = cSuccess;
  v20 = objc_alloc_init(NSMutableDictionary);
  [endpointCopy queryTimeInterval];
  if (v21 > 0.0)
  {
    [endpointCopy queryTimeInterval];
    v22 = [NSNumber numberWithDouble:?];
    [v20 setObject:v22 forKeyedSubscript:@"ids_querytime"];
  }

  v23 = +[FTDeviceSupport sharedInstance];
  productBuildVersion = [v23 productBuildVersion];
  [v20 setObject:productBuildVersion forKeyedSubscript:@"ids_build"];

  [v20 setObject:cSuccessCopy forKeyedSubscript:@"ids_sender_EC_success"];
  if (cErrorCopy)
  {
    v25 = [IDSMessageMetricReporter errorToReportForNGMError:cErrorCopy];

    domain = [v25 domain];
    [v20 setObject:domain forKeyedSubscript:@"ids_sender_EC_error_domain"];

    v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 code]);
    [v20 setObject:v27 forKeyedSubscript:@"ids_sender_EC_enc_error_code"];
  }

  [v20 setObject:legacySuccessCopy forKeyedSubscript:@"ids_sender_leg_success"];
  if (legacyErrorCopy)
  {
    v28 = [IDSMessageMetricReporter errorToReportForLegacyError:legacyErrorCopy];

    domain2 = [v28 domain];
    [v20 setObject:domain2 forKeyedSubscript:@"ids_sender_leg_error_domain"];

    v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 code]);
    [v20 setObject:v30 forKeyedSubscript:@"ids_sender_leg_error_code"];
  }

  [v20 setObject:successCopy forKeyedSubscript:@"ids_sender_secondary_success"];
  if (errorCopy)
  {
    v31 = [IDSMessageMetricReporter errorToReportForNGMError:errorCopy];

    domain3 = [v31 domain];
    [v20 setObject:domain3 forKeyedSubscript:@"ids_sender_secondary_error_domain"];

    v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 code]);
    [v20 setObject:v33 forKeyedSubscript:@"ids_sender_secondary_enc_error_code"];
  }

  return v20;
}

+ (id)messageMetadataWithEndpoint:(id)endpoint secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess secondaryError:(id)error ECError:(id)cError legacyError:(id)legacyError
{
  endpointCopy = endpoint;
  successCopy = success;
  cSuccessCopy = cSuccess;
  legacySuccessCopy = legacySuccess;
  errorCopy = error;
  cErrorCopy = cError;
  legacyErrorCopy = legacyError;
  if (CUTIsInternalInstall())
  {
    v22 = [self _metadataWithEndpoint:endpointCopy secondarySuccess:successCopy ECSuccess:cSuccessCopy legacySuccess:legacySuccessCopy secondaryError:errorCopy ECError:cErrorCopy legacyError:legacyErrorCopy];
    v23 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (void)reportEncryptionSideMetricWithEndpoint:(id)endpoint secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess secondaryError:(id)error ECError:(id)cError legacyError:(id)legacyError
{
  endpointCopy = endpoint;
  successCopy = success;
  cSuccessCopy = cSuccess;
  legacySuccessCopy = legacySuccess;
  errorCopy = error;
  cErrorCopy = cError;
  legacyErrorCopy = legacyError;
  v22 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v22 isInternalInstall];

  if (isInternalInstall)
  {
    v24 = [self _metadataWithEndpoint:endpointCopy secondarySuccess:successCopy ECSuccess:cSuccessCopy legacySuccess:legacySuccessCopy secondaryError:errorCopy ECError:cErrorCopy legacyError:legacyErrorCopy];
    v25 = [CUTReporting RTCSessionPromiseWithBatchingInterval:30.0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100346D10;
    v27[3] = &unk_100BD8870;
    v28 = v24;
    v26 = v24;
    [v25 registerResultBlock:v27];
  }
}

+ (void)reportMessageMetricWithMetadata:(id)metadata secondarySuccess:(id)success ECSuccess:(id)cSuccess legacySuccess:(id)legacySuccess command:(id)command decryptedEqual:(BOOL)equal triedLastResort:(BOOL)resort secondaryError:(id)self0 ECError:(id)self1 legacyError:(id)self2 fromDestination:(id)self3 fromToken:(id)self4 toToken:(id)self5
{
  equalCopy = equal;
  metadataCopy = metadata;
  successCopy = success;
  cSuccessCopy = cSuccess;
  legacySuccessCopy = legacySuccess;
  commandCopy = command;
  errorCopy = error;
  cErrorCopy = cError;
  legacyErrorCopy = legacyError;
  destinationCopy = destination;
  tokenCopy = token;
  toTokenCopy = toToken;
  v21 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v21 isInternalInstall];

  if (isInternalInstall)
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = [NSNumber numberWithBool:resort];
    [v23 setObject:v24 forKeyedSubscript:@"ids_tried_last_resort"];

    v25 = +[IMUserDefaults sharedDefaults];
    v26 = [v25 appValueForKey:@"LastKeyGeneration"];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &off_100C3BA58;
    }

    [v23 setObject:v28 forKeyedSubscript:@"ids_lastgeneration"];

    if (legacySuccessCopy)
    {
      [v23 setObject:legacySuccessCopy forKeyedSubscript:@"ids_recieved_leg_success"];
    }

    if (cSuccessCopy)
    {
      [v23 setObject:cSuccessCopy forKeyedSubscript:@"ids_recieved_EC_success"];
    }

    if (successCopy)
    {
      [v23 setObject:successCopy forKeyedSubscript:@"ids_recieved_secondary_success"];
    }

    if (commandCopy)
    {
      [v23 setObject:commandCopy forKeyedSubscript:@"ids_msg_command"];
    }

    if (cSuccessCopy && legacySuccessCopy)
    {
      v29 = [NSNumber numberWithBool:equalCopy];
      [v23 setObject:v29 forKeyedSubscript:@"ids_decrypt_equal"];
    }

    if (!cErrorCopy)
    {
LABEL_22:
      if (legacyErrorCopy)
      {
        v38 = [IDSMessageMetricReporter errorToReportForLegacyError:legacyErrorCopy];
        domain = [v38 domain];
        [v23 setObject:domain forKeyedSubscript:@"ids_legacy_error_domain"];

        v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 code]);
        [v23 setObject:v40 forKeyedSubscript:@"ids_legacy_error_code"];
      }

      if (errorCopy)
      {
        v41 = [IDSMessageMetricReporter errorToReportForNGMError:errorCopy];
        domain2 = [v41 domain];
        [v23 setObject:domain2 forKeyedSubscript:@"ids_secondary_error_domain"];

        v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
        [v23 setObject:v43 forKeyedSubscript:@"ids_secondary_error_code"];
      }

      if (metadataCopy)
      {
        v44 = objc_opt_class();
        v45 = objc_opt_class();
        v46 = objc_opt_class();
        v47 = [NSSet setWithObjects:v44, v45, v46, objc_opt_class(), 0];
        v98 = 0;
        v48 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v47 fromData:metadataCopy error:&v98];
        v49 = v98;

        if (v49)
        {
          v50 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v100 = v49;
            v101 = 2112;
            v102 = metadataCopy;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Failed to get payload metadata {payloadMetadataError: %@, payloadMetadataData: %@}", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v73 = v49;
            v74 = metadataCopy;
            _IDSLogV();
          }
        }

        if (v48)
        {
          [v23 addEntriesFromDictionary:v48];
        }
      }

      if (tokenCopy && toTokenCopy)
      {
        v51 = +[IMUserDefaults sharedDefaults];
        v52 = [v51 appValueForKey:@"ConversationSalt"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v52;
        }

        else
        {
          v54 = [[NSMutableData alloc] initWithLength:32];
          v55 = v54;
          arc4random_buf([v54 mutableBytes], 0x20uLL);
          v53 = [v54 copy];

          if (v53)
          {
            v56 = +[IMUserDefaults sharedDefaults];
            [v56 setAppValue:v53 forKey:@"ConversationSalt"];
          }
        }

        if (v53)
        {
          v57 = [tokenCopy mutableCopy];
          [v57 appendData:toTokenCopy];
          v58 = IDSSaltedHash();
          if (v58)
          {
            [v23 setObject:v58 forKeyedSubscript:@"ids_conversation_id"];
          }
        }
      }

      v59 = [CUTReporting RTCSessionPromiseWithBatchingInterval:30.0, v73, v74];
      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_100347B10;
      v96[3] = &unk_100BD8870;
      v60 = v23;
      v97 = v60;
      [v59 registerResultBlock:v96];
      if (!+[IDSAutoBugCapture isSupported])
      {
        goto LABEL_75;
      }

      if (destinationCopy)
      {
        v79 = [NSSet setWithObject:?];
      }

      else
      {
        v79 = 0;
      }

      bOOLValue = [cSuccessCopy BOOLValue];
      bOOLValue2 = [legacySuccessCopy BOOLValue];
      bOOLValue3 = [successCopy BOOLValue];
      if (bOOLValue & 1 | (cSuccessCopy == 0))
      {
        v64 = 0;
      }

      else
      {
        v64 = ![IDSMessageMetricReporter _shouldIgnoreAutoBugCaptureForECFailure:cErrorCopy];
      }

      if ((legacySuccessCopy == 0) | bOOLValue2 & 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = ![IDSMessageMetricReporter _shouldIgnoreAutoBugCaptureForLegacyFailure:legacyErrorCopy];
      }

      if (((v64 | v65) & 1) == 0)
      {
        v68 = 0;
LABEL_68:
        if (!((successCopy == 0) | bOOLValue3 & 1))
        {
          v70 = [v60 objectForKeyedSubscript:@"ids_secondary_error_domain"];
          v71 = [v60 objectForKeyedSubscript:@"ids_secondary_error_code"];
          if (![v70 isEqualToString:@"com.apple.messageprotection"] || (objc_msgSend(v71, "isEqualToNumber:", &off_100C3BA70) & 1) == 0 && (objc_msgSend(v71, "isEqualToNumber:", &off_100C3BA88) & 1) == 0)
          {
            v72 = [NSString stringWithFormat:@"Secondary (%@:%@)", v70, v71];

            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_100347D8C;
            v89[3] = &unk_100BD88C0;
            v68 = v72;
            v90 = v68;
            v91 = successCopy;
            [IDSAutoBugCapture triggerCaptureWithEvent:105 destinations:v79 context:v68 completion:v89];
          }
        }

LABEL_75:
        goto LABEL_76;
      }

      v66 = [v60 objectForKeyedSubscript:@"ids_EC_error_domain"];
      v77 = [v60 objectForKeyedSubscript:@"ids_EC_error_code"];
      v76 = [v60 objectForKeyedSubscript:@"ids_legacy_error_domain"];
      v75 = [v60 objectForKeyedSubscript:@"ids_legacy_error_code"];
      if ((v64 & v65) == 1)
      {
        v67 = [NSString stringWithFormat:@"EC (%@:%@) and Legacy (%@:%@)", v66, v77, v76, v75];
      }

      else if (v64)
      {
        v67 = [NSString stringWithFormat:@"EC (%@:%@)", v66, v77];
      }

      else
      {
        if (!v65)
        {
          v69 = bOOLValue3;
          v67 = 0;
          goto LABEL_67;
        }

        v67 = [NSString stringWithFormat:@"Legacy (%@:%@)", v76, v75];
      }

      v69 = bOOLValue3;
LABEL_67:
      v92[0] = _NSConcreteStackBlock;
      v92[1] = 3221225472;
      v92[2] = sub_100347C88;
      v92[3] = &unk_100BD8898;
      v68 = v67;
      v93 = v68;
      v94 = legacySuccessCopy;
      v95 = cSuccessCopy;
      [IDSAutoBugCapture triggerCaptureWithEvent:101 destinations:v79 context:v68 completion:v92];
      bOOLValue3 = v69;

      goto LABEL_68;
    }

    v30 = [IDSMessageMetricReporter errorToReportForNGMError:cErrorCopy];
    domain3 = [v30 domain];
    [v23 setObject:domain3 forKeyedSubscript:@"ids_EC_error_domain"];

    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 code]);
    [v23 setObject:v32 forKeyedSubscript:@"ids_EC_error_code"];

    domain4 = [v30 domain];
    if ([domain4 isEqualToString:IDSDecryptionErrorDomain])
    {
      code = [v30 code];

      if (code != 13)
      {
LABEL_21:

        goto LABEL_22;
      }

      v35 = +[IDSRegistrationKeyManager sharedInstance];
      domain4 = [v35 errorContainerToReport];

      v36 = [[IDSNGMKeyLoadingMetric alloc] initWithErrorContainer:domain4 missingIdentity:1 missingPrekey:1];
      dictionaryRepresentation = [(IDSNGMKeyLoadingMetric *)v36 dictionaryRepresentation];
      [v23 addEntriesFromDictionary:dictionaryRepresentation];
    }

    goto LABEL_21;
  }

LABEL_76:
}

+ (id)errorToReportForNGMError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = IDSDecryptionErrorDomain;
  if ([domain isEqualToString:IDSDecryptionErrorDomain] && objc_msgSend(errorCopy, "code") == 15)
  {
    goto LABEL_6;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:IDSEncryptionErrorDomain] && objc_msgSend(errorCopy, "code") == 15)
  {

LABEL_6:
LABEL_9:
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v9UserInfo = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = errorCopy;
    }

    v13 = v12;
    goto LABEL_13;
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:v5])
  {
    code = [errorCopy code];

    if (code == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqualToString:v5])
  {
    code2 = [errorCopy code];

    if (code2 == 12)
    {
      userInfo2 = [errorCopy userInfo];
      userInfo = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!userInfo)
      {
        v13 = errorCopy;
        goto LABEL_14;
      }

      v9UserInfo = [userInfo userInfo];
      v17 = [v9UserInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = userInfo;
      }

      v13 = v19;

LABEL_13:
LABEL_14:

      goto LABEL_25;
    }
  }

  else
  {
  }

  v13 = errorCopy;
LABEL_25:

  return v13;
}

+ (id)errorToReportForLegacyError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = IDSDecryptionErrorDomain;
  if ([domain isEqualToString:IDSDecryptionErrorDomain] && objc_msgSend(errorCopy, "code") == 11)
  {
    goto LABEL_6;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:IDSEncryptionErrorDomain] && objc_msgSend(errorCopy, "code") == 10)
  {

LABEL_6:
LABEL_9:
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    v9UserInfo = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = errorCopy;
    }

    v13 = v12;
    goto LABEL_13;
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:v5])
  {
    code = [errorCopy code];

    if (code == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqualToString:v5])
  {
    code2 = [errorCopy code];

    if (code2 == 9)
    {
      userInfo2 = [errorCopy userInfo];
      userInfo = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!userInfo)
      {
        v13 = errorCopy;
        goto LABEL_14;
      }

      v9UserInfo = [userInfo userInfo];
      v17 = [v9UserInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = userInfo;
      }

      v13 = v19;

LABEL_13:
LABEL_14:

      goto LABEL_25;
    }
  }

  else
  {
  }

  v13 = errorCopy;
LABEL_25:

  return v13;
}

+ (void)noteKeyGenerationForMetric
{
  v4 = +[IMUserDefaults sharedDefaults];
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v3 = [NSNumber numberWithDouble:?];
  [v4 setAppValue:v3 forKey:@"LastKeyGeneration"];
}

+ (BOOL)_shouldIgnoreAutoBugCaptureForECFailure:(id)failure
{
  failureCopy = failure;
  userInfo = [failureCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [failureCopy domain];
  if (![domain isEqualToString:IDSDecryptionErrorDomain])
  {
    goto LABEL_6;
  }

  if ([failureCopy code] != 14)
  {
    if ([failureCopy code] == 15)
    {
      v8 = [self _shouldIgnoreMPError:v6];
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

+ (BOOL)_shouldIgnoreMPError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.messageprotection"])
  {
    v5 = [errorCopy code] == 5 || objc_msgSend(errorCopy, "code") == 801;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_shouldIgnoreAutoBugCaptureForLegacyFailure:(id)failure
{
  failureCopy = failure;
  domain = [failureCopy domain];
  if ([domain isEqualToString:IDSDecryptionErrorDomain])
  {
    v5 = [failureCopy code] == 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end