@interface IDSEncryptionHelpers
+ (BOOL)areDataProtectionKeysAvailableForService:(id)service withDataProtectionClass:(unsigned int)class fromDevice:(id)device;
+ (id)decryptLocalDeliveryPayload:(id)payload forService:(id)service withDataProtectionClass:(unsigned int)class fromDevice:(id)device encryptionType:(int64_t)type priority:(int64_t)priority error:(id *)error;
+ (id)encryptLocalDeliveryPayload:(id)payload toDevice:(id)device forService:(id)service withDataProtectionClass:(unsigned int)class encryptionType:(int64_t)type priority:(int64_t)priority error:(int64_t *)error;
+ (void)logEncryptionErrorForToken:(id)token deviceID:(id)d forURI:(id)i fromURI:(id)rI forService:(id)service messageData:(id)data type:(int64_t)type encrypt:(BOOL)self0 remote:(BOOL)self1 priority:(int64_t)self2;
@end

@implementation IDSEncryptionHelpers

+ (void)logEncryptionErrorForToken:(id)token deviceID:(id)d forURI:(id)i fromURI:(id)rI forService:(id)service messageData:(id)data type:(int64_t)type encrypt:(BOOL)self0 remote:(BOOL)self1 priority:(int64_t)self2
{
  tokenCopy = token;
  dCopy = d;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  dataCopy = data;
  v20 = @"Decryption";
  if (encrypt)
  {
    v20 = @"Encryption";
    v21 = @"encrypt";
  }

  else
  {
    v21 = @"decrypt";
  }

  v68 = v20;
  v67 = v21;
  if (!type)
  {
    goto LABEL_134;
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "******************************************************************", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    priorityCopy = v68;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "*******************  %@ Error ****************************", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    priorityCopy2 = v68;
    _IDSLogV();
  }

  v24 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "******************************************************************", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v25 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    priorityCopy = priority;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "***  Priority: %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    priorityCopy2 = priority;
    _IDSLogV();
  }

  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    rawToken = [tokenCopy rawToken];
    v28 = IDSLoggableDescriptionForTokenOnService();
    *buf = 138412290;
    priorityCopy = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "***     Token: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    rawToken2 = [tokenCopy rawToken];
    priorityCopy2 = IDSLoggableDescriptionForTokenOnService();
    _IDSLogV();
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    priorityCopy = dCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "*** Device ID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    priorityCopy2 = dCopy;
    _IDSLogV();
  }

  v31 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    priorityCopy = rICopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "***      From: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    priorityCopy2 = rICopy;
    _IDSLogV();
  }

  v32 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    priorityCopy = iCopy;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "***        To: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    priorityCopy2 = iCopy;
    _IDSLogV();
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "***", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (type > 3)
  {
    if ((type - 4) >= 2)
    {
      goto LABEL_129;
    }

    goto LABEL_60;
  }

  if (type != -1)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_129;
      }

      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "  Plain text encryption error? This is non-sensical", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_129;
      }

      goto LABEL_58;
    }

LABEL_60:
    v35 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = v68;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Public/Private %@ failed :(", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      priorityCopy2 = v68;
      _IDSLogV();
    }

    v36 = +[IDSPeerIDManager sharedInstance];
    v62 = [v36 publicKeyForURI:iCopy pushToken:tokenCopy fromURI:rICopy service:serviceCopy];

    v37 = +[IDSPublicKeyStorage sharedInstance];
    v64 = [v37 publicDeviceIdentityContainerForDeviceID:dCopy];

    v38 = +[IDSRegistrationKeyManager sharedInstance];
    publicMessageProtectionData = [v38 publicMessageProtectionData];

    v39 = +[IDSRegistrationKeyManager sharedInstance];
    copyMessageProtectionIdentity = [v39 copyMessageProtectionIdentity];

    v65 = tokenCopy;
    v41 = iCopy;
    v42 = rICopy;
    v43 = serviceCopy;
    v44 = +[IDSPeerIDManager sharedInstance];
    v45 = [v44 publicKeyForURI:v41 pushToken:v65 fromURI:v42 service:v43];

    if (!v45)
    {
      goto LABEL_76;
    }

    cf = 0;
    if (qword_100CBD520 != -1)
    {
      sub_100921A78();
    }

    if (off_100CBD518)
    {
      v46 = off_100CBD518(0, v45, &cf);
      if (cf)
      {
        v47 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          priorityCopy = v45;
          v74 = 2112;
          v75 = cf;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed creating public identity from data: %@  (Error: %@)", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    else
    {
LABEL_76:
      v46 = 0;
    }

    legacyPublicIdentity = [v64 legacyPublicIdentity];
    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = copyMessageProtectionIdentity;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, " => Current local publicIdentity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v50 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = publicMessageProtectionData;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " => Current local publicIdentity data: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v51 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = v46;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " => Current remote publicIdentity for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v52 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = legacyPublicIdentity;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, " => Current remote publicIdentity for device: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (copyMessageProtectionIdentity)
    {
      CFRelease(copyMessageProtectionIdentity);
    }

    v53 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = v62;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " => Current remote public key data for token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v54 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = v64;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, " => Current remote public key data for device: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v55 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      priorityCopy = v67;
      v74 = 2112;
      v75 = dataCopy;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, " => Data we tried to %@: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v56 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = @"NO";
      if (remote)
      {
        v57 = @"YES";
      }

      *buf = 138412290;
      priorityCopy = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, " => Is remote: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v58 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      priorityCopy = v65;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, " => Token: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_129;
  }

  v60 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "  Unknown encryption type error? This is non-sensical", buf, 2u);
  }

  if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
  {
    goto LABEL_129;
  }

LABEL_58:
  _IDSLogV();
LABEL_129:
  v59 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "******************************************************************", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_134:
}

+ (id)encryptLocalDeliveryPayload:(id)payload toDevice:(id)device forService:(id)service withDataProtectionClass:(unsigned int)class encryptionType:(int64_t)type priority:(int64_t)priority error:(int64_t *)error
{
  v9 = *&class;
  payloadCopy = payload;
  deviceCopy = device;
  serviceCopy = service;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming Encryption Request", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (qword_100CBD4E0 != -1)
  {
    sub_100921AA0();
  }

  if (qword_100CBD4F0 != -1)
  {
    sub_100921AC8();
  }

  v51 = 0;
  v16 = +[IDSPairingManager sharedInstance];
  v17 = [v16 pairedDeviceForUniqueID:deviceCopy];

  publicClassAKey = [v17 publicClassAKey];
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v53 = deviceCopy;
    v54 = 2112;
    v55 = publicClassAKey;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Public Key for Device Class A for UniqueID %@: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = +[IDSCurrentDevice sharedInstance];
    encryptionClassAKey = [v21 encryptionClassAKey];
    *buf = 138412290;
    v53 = encryptionClassAKey;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Public Key for My Class A key is %@:", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v23 = +[IDSCurrentDevice sharedInstance];
    encryptionClassAKey2 = [v23 encryptionClassAKey];
    _IDSLogV();
  }

  if (!off_100CBD4E8 || (v24 = off_100CBD4E8(0, publicClassAKey, &v51)) == 0)
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v51;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Public Identity Fetch Error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_50;
  }

  v25 = +[IDSRegistrationKeyManager sharedInstance];
  v26 = [v25 latestCopyMessageProtectionIdentityForDataProtectionClass:v9];

  if (!v26)
  {
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = IDSDataProtectionClassStringFromDataProtectionClass();
      *buf = 138412290;
      v53 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Unable to fetch full identify for data protection class %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v46 = IDSDataProtectionClassStringFromDataProtectionClass();
      _IDSLogV();
    }

    goto LABEL_50;
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v24;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Fetched device public identity: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v29 = malloc_type_malloc(0x10uLL, 0xB909B099uLL);
  if (SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v29))
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Failed To Generate Key", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    free(v29);
LABEL_50:
    v34 = 0;
    goto LABEL_51;
  }

  v36 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Symmestric key generated Sucessfully", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1004A4488;
  v50[3] = &unk_100BDD958;
  v50[4] = v29;
  v48 = [[NSData alloc] initWithBytesNoCopy:v29 length:16 deallocator:v50];
  v37 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Symmestric key converted to NSData sucessfully", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v47 = sub_1004A3480(1, payloadCopy, v48);
  if (v47)
  {
    v38 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Data encrypted with Symmestric key sucessfully", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v39 = objc_alloc_init(NSMutableData);
  err = 0;
  if (off_100CBD4D8 && (off_100CBD4D8(v48, v26, v24, v39, &err) & 1) != 0)
  {
    if (v39)
    {
      v40 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Encryption Success", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v41 = [NSDictionary dictionaryWithObjectsAndKeys:v39, @"ekd", v47, @"sed", 0];
      v42 = JWEncodeDictionary();

      goto LABEL_91;
    }
  }

  else
  {
    v43 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = err;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "   Public/Private encryption failed with error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (error)
    {
      *error = 201;
      if (CFErrorGetCode(err) == -25304)
      {
        v44 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "   ********* Security reported invalid local item ref, this is bad - we're purging this, and please file this radar", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }
    }
  }

  v42 = 0;
LABEL_91:
  CFRelease(v26);
  CFRelease(v24);
  if (err)
  {
    CFRelease(err);
  }

  v34 = v42;
LABEL_51:

  return v34;
}

+ (id)decryptLocalDeliveryPayload:(id)payload forService:(id)service withDataProtectionClass:(unsigned int)class fromDevice:(id)device encryptionType:(int64_t)type priority:(int64_t)priority error:(id *)error
{
  v10 = *&class;
  payloadCopy = payload;
  serviceCopy = service;
  deviceCopy = device;
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Incoming Decryption Request", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v14 = JWDecodeDictionary();
  if (!v14)
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received payload is not a dictionary, failing decryption", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v16 = [v14 _dataForKey:@"ekd"];
  v17 = [v14 _dataForKey:@"sed"];
  if ([v16 length] && objc_msgSend(v17, "length"))
  {
    v49 = +[IDSMessageHashStore sharedInstance];
    v18 = v16;
    if (qword_100CBD530 != -1)
    {
      sub_100921AF0();
    }

    if (off_100CBD528)
    {
      v19 = +[IDSRegistrationKeyManager sharedInstance];
      v20 = [v19 latestCopyMessageProtectionIdentityForDataProtectionClass:2];

      *buf = 0;
      v21 = off_100CBD528(v18, v20, buf);
      if (v20)
      {
        CFRelease(v20);
      }

      if (v21 && ![v49 containsMessageHash:v21])
      {
        [v49 addMessageHash:v21];
        v53 = 0;
        v22 = +[IDSPairingManager sharedInstance];
        v23 = [v22 pairedDeviceForUniqueID:deviceCopy];
        publicClassAKey = [v23 publicClassAKey];

        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = deviceCopy;
          v55 = 2112;
          v56 = publicClassAKey;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Public Key for Device Class A for UniqueID %@: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = +[IDSCurrentDevice sharedInstance];
          encryptionClassAKey = [v26 encryptionClassAKey];
          *buf = 138412290;
          *&buf[4] = encryptionClassAKey;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Public Key for My Class A key is %@:", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v28 = +[IDSCurrentDevice sharedInstance];
          encryptionClassAKey2 = [v28 encryptionClassAKey];
          _IDSLogV();
        }

        if (qword_100CBD500 != -1)
        {
          sub_100921B18();
        }

        if (qword_100CBD510 != -1)
        {
          sub_100921B40();
        }

        if (off_100CBD4F8 && (v29 = off_100CBD4F8(0, publicClassAKey, &v53)) != 0)
        {
          v30 = +[IDSRegistrationKeyManager sharedInstance];
          cf = [v30 latestCopyMessageProtectionIdentityForDataProtectionClass:v10];

          if (cf)
          {
            v31 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = cf;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            v32 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v29;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Fetched device public identity: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            v33 = objc_alloc_init(NSMutableData);
            v52 = 0;
            if (off_100CBD508 && (off_100CBD508(v18, v29, cf, v33, &v52) & 1) != 0)
            {
              if (v33)
              {
                v34 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Symmetric Key Decryption Success", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                v35 = sub_1004A3480(0, v17, v33);
                if (v35)
                {
                  v36 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Symmetric Key Payload Decryption Success", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }

                  v37 = v35;
                }

                goto LABEL_100;
              }
            }

            else
            {
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "   Public/Private decryption failed with error: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }

              if (error)
              {
                v35 = 0;
                *error = v52;
LABEL_100:
                CFRelease(cf);
                CFRelease(v29);
                goto LABEL_101;
              }
            }

            v35 = 0;
            goto LABEL_100;
          }

          v43 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = IDSDataProtectionClassStringFromDataProtectionClass();
            *buf = 138412290;
            *&buf[4] = v44;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Unable to fetch full identify for data protection class %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v46 = IDSDataProtectionClassStringFromDataProtectionClass();
            _IDSLogV();
          }
        }

        else
        {
          v41 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v53;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Public Identity Fetch Error: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        v35 = 0;
LABEL_101:

LABEL_77:
        goto LABEL_78;
      }
    }

    else
    {

      v21 = 0;
    }

    v39 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Received duplicate payload, returning early", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [v49 updateCreationDateForHash:v21];
    v35 = 0;
    goto LABEL_77;
  }

  v38 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Received invalid payload for decryption, failing", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v35 = 0;
LABEL_78:

  return v35;
}

+ (BOOL)areDataProtectionKeysAvailableForService:(id)service withDataProtectionClass:(unsigned int)class fromDevice:(id)device
{
  v5 = *&class;
  deviceCopy = device;
  v7 = +[IDSPairingManager sharedInstance];
  v8 = [v7 pairedDeviceForUniqueID:deviceCopy];

  publicClassAKey = [v8 publicClassAKey];

  v10 = +[IDSRegistrationKeyManager sharedInstance];
  v11 = [v10 latestCopyMessageProtectionIdentityForDataProtectionClass:v5];

  if (v11)
  {
    CFRelease(v11);
  }

  if (publicClassAKey)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;

  return v13;
}

@end