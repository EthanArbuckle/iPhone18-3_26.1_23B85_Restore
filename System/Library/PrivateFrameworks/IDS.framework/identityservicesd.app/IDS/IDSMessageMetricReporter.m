@interface IDSMessageMetricReporter
+ (BOOL)_shouldIgnoreAutoBugCaptureForECFailure:(id)a3;
+ (BOOL)_shouldIgnoreAutoBugCaptureForLegacyFailure:(id)a3;
+ (BOOL)_shouldIgnoreMPError:(id)a3;
+ (id)_metadataWithEndpoint:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 secondaryError:(id)a7 ECError:(id)a8 legacyError:(id)a9;
+ (id)errorToReportForLegacyError:(id)a3;
+ (id)errorToReportForNGMError:(id)a3;
+ (id)messageMetadataWithEndpoint:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 secondaryError:(id)a7 ECError:(id)a8 legacyError:(id)a9;
+ (void)noteKeyGenerationForMetric;
+ (void)reportEncryptionSideMetricWithEndpoint:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 secondaryError:(id)a7 ECError:(id)a8 legacyError:(id)a9;
+ (void)reportMessageMetricWithMetadata:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 command:(id)a7 decryptedEqual:(BOOL)a8 triedLastResort:(BOOL)a9 secondaryError:(id)a10 ECError:(id)a11 legacyError:(id)a12 fromDestination:(id)a13 fromToken:(id)a14 toToken:(id)a15;
@end

@implementation IDSMessageMetricReporter

+ (id)_metadataWithEndpoint:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 secondaryError:(id)a7 ECError:(id)a8 legacyError:(id)a9
{
  v14 = a3;
  v35 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a5;
  v20 = objc_alloc_init(NSMutableDictionary);
  [v14 queryTimeInterval];
  if (v21 > 0.0)
  {
    [v14 queryTimeInterval];
    v22 = [NSNumber numberWithDouble:?];
    [v20 setObject:v22 forKeyedSubscript:@"ids_querytime"];
  }

  v23 = +[FTDeviceSupport sharedInstance];
  v24 = [v23 productBuildVersion];
  [v20 setObject:v24 forKeyedSubscript:@"ids_build"];

  [v20 setObject:v19 forKeyedSubscript:@"ids_sender_EC_success"];
  if (v17)
  {
    v25 = [IDSMessageMetricReporter errorToReportForNGMError:v17];

    v26 = [v25 domain];
    [v20 setObject:v26 forKeyedSubscript:@"ids_sender_EC_error_domain"];

    v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 code]);
    [v20 setObject:v27 forKeyedSubscript:@"ids_sender_EC_enc_error_code"];
  }

  [v20 setObject:v15 forKeyedSubscript:@"ids_sender_leg_success"];
  if (v18)
  {
    v28 = [IDSMessageMetricReporter errorToReportForLegacyError:v18];

    v29 = [v28 domain];
    [v20 setObject:v29 forKeyedSubscript:@"ids_sender_leg_error_domain"];

    v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 code]);
    [v20 setObject:v30 forKeyedSubscript:@"ids_sender_leg_error_code"];
  }

  [v20 setObject:v35 forKeyedSubscript:@"ids_sender_secondary_success"];
  if (v16)
  {
    v31 = [IDSMessageMetricReporter errorToReportForNGMError:v16];

    v32 = [v31 domain];
    [v20 setObject:v32 forKeyedSubscript:@"ids_sender_secondary_error_domain"];

    v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 code]);
    [v20 setObject:v33 forKeyedSubscript:@"ids_sender_secondary_enc_error_code"];
  }

  return v20;
}

+ (id)messageMetadataWithEndpoint:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 secondaryError:(id)a7 ECError:(id)a8 legacyError:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (CUTIsInternalInstall())
  {
    v22 = [a1 _metadataWithEndpoint:v15 secondarySuccess:v16 ECSuccess:v17 legacySuccess:v18 secondaryError:v19 ECError:v20 legacyError:v21];
    v23 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (void)reportEncryptionSideMetricWithEndpoint:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 secondaryError:(id)a7 ECError:(id)a8 legacyError:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = +[IMLockdownManager sharedInstance];
  v23 = [v22 isInternalInstall];

  if (v23)
  {
    v24 = [a1 _metadataWithEndpoint:v15 secondarySuccess:v16 ECSuccess:v17 legacySuccess:v18 secondaryError:v19 ECError:v20 legacyError:v21];
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

+ (void)reportMessageMetricWithMetadata:(id)a3 secondarySuccess:(id)a4 ECSuccess:(id)a5 legacySuccess:(id)a6 command:(id)a7 decryptedEqual:(BOOL)a8 triedLastResort:(BOOL)a9 secondaryError:(id)a10 ECError:(id)a11 legacyError:(id)a12 fromDestination:(id)a13 fromToken:(id)a14 toToken:(id)a15
{
  v78 = a8;
  v87 = a3;
  v88 = a4;
  v19 = a5;
  v20 = a6;
  v81 = a7;
  v84 = a10;
  v86 = a11;
  v85 = a12;
  v80 = a13;
  v83 = a14;
  v82 = a15;
  v21 = +[IMLockdownManager sharedInstance];
  v22 = [v21 isInternalInstall];

  if (v22)
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = [NSNumber numberWithBool:a9];
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

    if (v20)
    {
      [v23 setObject:v20 forKeyedSubscript:@"ids_recieved_leg_success"];
    }

    if (v19)
    {
      [v23 setObject:v19 forKeyedSubscript:@"ids_recieved_EC_success"];
    }

    if (v88)
    {
      [v23 setObject:v88 forKeyedSubscript:@"ids_recieved_secondary_success"];
    }

    if (v81)
    {
      [v23 setObject:v81 forKeyedSubscript:@"ids_msg_command"];
    }

    if (v19 && v20)
    {
      v29 = [NSNumber numberWithBool:v78];
      [v23 setObject:v29 forKeyedSubscript:@"ids_decrypt_equal"];
    }

    if (!v86)
    {
LABEL_22:
      if (v85)
      {
        v38 = [IDSMessageMetricReporter errorToReportForLegacyError:v85];
        v39 = [v38 domain];
        [v23 setObject:v39 forKeyedSubscript:@"ids_legacy_error_domain"];

        v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 code]);
        [v23 setObject:v40 forKeyedSubscript:@"ids_legacy_error_code"];
      }

      if (v84)
      {
        v41 = [IDSMessageMetricReporter errorToReportForNGMError:v84];
        v42 = [v41 domain];
        [v23 setObject:v42 forKeyedSubscript:@"ids_secondary_error_domain"];

        v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
        [v23 setObject:v43 forKeyedSubscript:@"ids_secondary_error_code"];
      }

      if (v87)
      {
        v44 = objc_opt_class();
        v45 = objc_opt_class();
        v46 = objc_opt_class();
        v47 = [NSSet setWithObjects:v44, v45, v46, objc_opt_class(), 0];
        v98 = 0;
        v48 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v47 fromData:v87 error:&v98];
        v49 = v98;

        if (v49)
        {
          v50 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v100 = v49;
            v101 = 2112;
            v102 = v87;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Failed to get payload metadata {payloadMetadataError: %@, payloadMetadataData: %@}", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v73 = v49;
            v74 = v87;
            _IDSLogV();
          }
        }

        if (v48)
        {
          [v23 addEntriesFromDictionary:v48];
        }
      }

      if (v83 && v82)
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
          v57 = [v83 mutableCopy];
          [v57 appendData:v82];
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

      if (v80)
      {
        v79 = [NSSet setWithObject:?];
      }

      else
      {
        v79 = 0;
      }

      v61 = [v19 BOOLValue];
      v62 = [v20 BOOLValue];
      v63 = [v88 BOOLValue];
      if (v61 & 1 | (v19 == 0))
      {
        v64 = 0;
      }

      else
      {
        v64 = ![IDSMessageMetricReporter _shouldIgnoreAutoBugCaptureForECFailure:v86];
      }

      if ((v20 == 0) | v62 & 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = ![IDSMessageMetricReporter _shouldIgnoreAutoBugCaptureForLegacyFailure:v85];
      }

      if (((v64 | v65) & 1) == 0)
      {
        v68 = 0;
LABEL_68:
        if (!((v88 == 0) | v63 & 1))
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
            v91 = v88;
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
          v69 = v63;
          v67 = 0;
          goto LABEL_67;
        }

        v67 = [NSString stringWithFormat:@"Legacy (%@:%@)", v76, v75];
      }

      v69 = v63;
LABEL_67:
      v92[0] = _NSConcreteStackBlock;
      v92[1] = 3221225472;
      v92[2] = sub_100347C88;
      v92[3] = &unk_100BD8898;
      v68 = v67;
      v93 = v68;
      v94 = v20;
      v95 = v19;
      [IDSAutoBugCapture triggerCaptureWithEvent:101 destinations:v79 context:v68 completion:v92];
      v63 = v69;

      goto LABEL_68;
    }

    v30 = [IDSMessageMetricReporter errorToReportForNGMError:v86];
    v31 = [v30 domain];
    [v23 setObject:v31 forKeyedSubscript:@"ids_EC_error_domain"];

    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 code]);
    [v23 setObject:v32 forKeyedSubscript:@"ids_EC_error_code"];

    v33 = [v30 domain];
    if ([v33 isEqualToString:IDSDecryptionErrorDomain])
    {
      v34 = [v30 code];

      if (v34 != 13)
      {
LABEL_21:

        goto LABEL_22;
      }

      v35 = +[IDSRegistrationKeyManager sharedInstance];
      v33 = [v35 errorContainerToReport];

      v36 = [[IDSNGMKeyLoadingMetric alloc] initWithErrorContainer:v33 missingIdentity:1 missingPrekey:1];
      v37 = [(IDSNGMKeyLoadingMetric *)v36 dictionaryRepresentation];
      [v23 addEntriesFromDictionary:v37];
    }

    goto LABEL_21;
  }

LABEL_76:
}

+ (id)errorToReportForNGMError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = IDSDecryptionErrorDomain;
  if ([v4 isEqualToString:IDSDecryptionErrorDomain] && objc_msgSend(v3, "code") == 15)
  {
    goto LABEL_6;
  }

  v6 = [v3 domain];
  if ([v6 isEqualToString:IDSEncryptionErrorDomain] && objc_msgSend(v3, "code") == 15)
  {

LABEL_6:
LABEL_9:
    v9 = [v3 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v3;
    }

    v13 = v12;
    goto LABEL_13;
  }

  v7 = [v3 domain];
  if ([v7 isEqualToString:v5])
  {
    v8 = [v3 code];

    if (v8 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = [v3 domain];
  if ([v14 isEqualToString:v5])
  {
    v15 = [v3 code];

    if (v15 == 12)
    {
      v16 = [v3 userInfo];
      v9 = [v16 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!v9)
      {
        v13 = v3;
        goto LABEL_14;
      }

      v11 = [v9 userInfo];
      v17 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v9;
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

  v13 = v3;
LABEL_25:

  return v13;
}

+ (id)errorToReportForLegacyError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = IDSDecryptionErrorDomain;
  if ([v4 isEqualToString:IDSDecryptionErrorDomain] && objc_msgSend(v3, "code") == 11)
  {
    goto LABEL_6;
  }

  v6 = [v3 domain];
  if ([v6 isEqualToString:IDSEncryptionErrorDomain] && objc_msgSend(v3, "code") == 10)
  {

LABEL_6:
LABEL_9:
    v9 = [v3 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v3;
    }

    v13 = v12;
    goto LABEL_13;
  }

  v7 = [v3 domain];
  if ([v7 isEqualToString:v5])
  {
    v8 = [v3 code];

    if (v8 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = [v3 domain];
  if ([v14 isEqualToString:v5])
  {
    v15 = [v3 code];

    if (v15 == 9)
    {
      v16 = [v3 userInfo];
      v9 = [v16 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!v9)
      {
        v13 = v3;
        goto LABEL_14;
      }

      v11 = [v9 userInfo];
      v17 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v9;
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

  v13 = v3;
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

+ (BOOL)_shouldIgnoreAutoBugCaptureForECFailure:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v7 = [v4 domain];
  if (![v7 isEqualToString:IDSDecryptionErrorDomain])
  {
    goto LABEL_6;
  }

  if ([v4 code] != 14)
  {
    if ([v4 code] == 15)
    {
      v8 = [a1 _shouldIgnoreMPError:v6];
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

+ (BOOL)_shouldIgnoreMPError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"com.apple.messageprotection"])
  {
    v5 = [v3 code] == 5 || objc_msgSend(v3, "code") == 801;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_shouldIgnoreAutoBugCaptureForLegacyFailure:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:IDSDecryptionErrorDomain])
  {
    v5 = [v3 code] == 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end