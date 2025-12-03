@interface MFAANetwork
+ (id)sharedInstance;
- (BOOL)_verifyFairPlaySignatureSync:(id)sync forData:(id)data timedOut:(BOOL *)out error:(id *)error;
- (BOOL)bypassFairPlaySAPSignatureVerification;
- (BOOL)disableFairPlaySAP;
- (BOOL)forceFairPlaySAPFailure;
- (BOOL)forceNetworkFailure;
- (BOOL)forceTokenActivationFailure;
- (BOOL)forceTokenConfirmationFailure;
- (BOOL)spoofPPIDMetadata;
- (BOOL)spoofTokenActivation;
- (MFAANetwork)init;
- (NSDictionary)certStatusCache;
- (NSDictionary)pairingTable;
- (NSNumber)certStatusCacheVersion;
- (NSNumber)pairingTableVersion;
- (id)_fairPlaySignatureForDataSync:(id)sync timedOut:(BOOL *)out error:(id *)error;
- (id)_generateTokenAuthURLRequestForEndpoint:(id)endpoint sessionID:(id)d signature:(id)signature requestUUID:(id)iD;
- (id)_init;
- (id)_openFairPlaySAPSession;
- (id)_selectedAPIServer;
- (id)_selectedFairPlaySAPServer;
- (unint64_t)pairingTokenExpirationS;
- (void)_addPairingWithToken:(id)token withReply:(id)reply;
- (void)_confirmActivationForToken:(id)token withUUID:(id)d withReply:(id)reply;
- (void)_getCachedStatusForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply;
- (void)_init;
- (void)_removePairingWithToken:(id)token withReply:(id)reply;
- (void)_requestActivationForToken:(id)token withUUID:(id)d withReply:(id)reply;
- (void)_requestMetadataForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply;
- (void)_requestMetadataForToken:(id)token withUUID:(id)d requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply;
- (void)_selectedFairPlaySAPServer;
- (void)_setCachedStatusForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid certStatus:(int)status;
- (void)_validateCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply;
- (void)_verifyPairingWithToken:(id)token withReply:(id)reply;
- (void)dealloc;
- (void)session:(id)session requestCertificateWithCompletionHandler:(id)handler;
- (void)session:(id)session requestHandshakeWithServer:(id)server completionHandler:(id)handler;
- (void)setCertStatusCache:(id)cache;
- (void)setCertStatusCacheVersion:(id)version;
- (void)setPairingTable:(id)table;
- (void)setPairingTableVersion:(id)version;
@end

@implementation MFAANetwork

- (MFAANetwork)init
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector("sharedInstance");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  +[NSException raise:format:](NSException, "raise:format:", NSInternalInconsistencyException, @"Use +[%@ %@] instead of +[%@ %@].", v5, v6, v8, v9);

  return 0;
}

- (id)_init
{
  init_logging();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MFAANetwork _init];
  }

  v21.receiver = self;
  v21.super_class = MFAANetwork;
  v6 = [(MFAANetwork *)&v21 init];
  if (v6)
  {
    v7 = objc_alloc_init(MFAANetworkExported);
    exportedObject = v6->_exportedObject;
    v6->_exportedObject = v7;

    v6->_isInternalBuild = systemInfo_isInternalBuild();
    v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.MFAAuthentication"];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = v9;

    v11 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v12 = [NSURLSession sessionWithConfiguration:v11];
    urlSession = v6->_urlSession;
    v6->_urlSession = v12;

    v14 = [FairPlaySAPSession sessionWithDelegate:v6];
    fairPlaySAPSession = v6->_fairPlaySAPSession;
    v6->_fairPlaySAPSession = v14;

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(MFAANetwork *)&v6->_fairPlaySAPSession _init];
    }

    v18 = dispatch_queue_create("userDefaultsQueue", 0);
    userDefaultsQueue = v6->_userDefaultsQueue;
    v6->_userDefaultsQueue = v18;
  }

  return v6;
}

- (void)dealloc
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invalidating NSURLSession...", buf, 2u);
  }

  urlSession = [(MFAANetwork *)self urlSession];
  [urlSession invalidateAndCancel];

  v7.receiver = self;
  v7.super_class = MFAANetwork;
  [(MFAANetwork *)&v7 dealloc];
}

- (BOOL)forceNetworkFailure
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"ForceNetworkFailure"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)forceTokenActivationFailure
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"ForceTokenActivationFailure"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)forceTokenConfirmationFailure
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"ForceTokenConfirmationFailure"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)spoofTokenActivation
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"SpoofTokenActivation"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)spoofPPIDMetadata
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"SpoofPPIDMetadata"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)disableFairPlaySAP
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"DisableFairPlaySAP"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)forceFairPlaySAPFailure
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"ForceFairPlaySAPFailure"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (BOOL)bypassFairPlaySAPSignatureVerification
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  if ([userDefaults BOOLForKey:@"BypassFairPlaySAPSignatureVerification"])
  {
    isInternalBuild = [(MFAANetwork *)self isInternalBuild];
  }

  else
  {
    isInternalBuild = 0;
  }

  return isInternalBuild;
}

- (unint64_t)pairingTokenExpirationS
{
  v3 = 2592000;
  if ([(MFAANetwork *)self isInternalBuild])
  {
    userDefaults = [(MFAANetwork *)self userDefaults];
    v5 = [userDefaults integerForKey:@"PairingTokenExpirationS"];

    if (v5)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v6 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v6 = &_os_log_default;
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "pairingTokenExpirationS: %lu", &v9, 0xCu);
      }

      return v5;
    }
  }

  return v3;
}

- (NSDictionary)certStatusCache
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  v3 = [userDefaults dictionaryForKey:@"CertStatusCache"];

  return v3;
}

- (NSNumber)certStatusCacheVersion
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  v3 = [userDefaults objectForKey:@"CertStatusCacheVersion"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)pairingTable
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  v3 = [userDefaults dictionaryForKey:@"PairingTable"];

  return v3;
}

- (NSNumber)pairingTableVersion
{
  userDefaults = [(MFAANetwork *)self userDefaults];
  v3 = [userDefaults objectForKey:@"PairingTableVersion"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCertStatusCache:(id)cache
{
  cacheCopy = cache;
  userDefaults = [(MFAANetwork *)self userDefaults];
  [userDefaults setObject:cacheCopy forKey:@"CertStatusCache"];
}

- (void)setCertStatusCacheVersion:(id)version
{
  versionCopy = version;
  userDefaults = [(MFAANetwork *)self userDefaults];
  [userDefaults setObject:versionCopy forKey:@"CertStatusCacheVersion"];
}

- (void)setPairingTable:(id)table
{
  tableCopy = table;
  userDefaults = [(MFAANetwork *)self userDefaults];
  [userDefaults setObject:tableCopy forKey:@"PairingTable"];
}

- (void)setPairingTableVersion:(id)version
{
  versionCopy = version;
  userDefaults = [(MFAANetwork *)self userDefaults];
  [userDefaults setObject:versionCopy forKey:@"PairingTableVersion"];
}

- (id)_selectedFairPlaySAPServer
{
  v3 = @"https://albert.apple.com";
  if (systemInfo_isInternalBuild())
  {
    v11[0] = @"prod";
    v11[1] = @"it";
    v12[0] = @"https://albert.apple.com";
    v12[1] = @"https://iphonesysit.corp.apple.com";
    v11[2] = @"ut";
    v11[3] = @"maint";
    v12[2] = @"https://iphonesysut.corp.apple.com";
    v12[3] = @"https://iphonesysmaint.corp.apple.com";
    v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    userDefaults = [(MFAANetwork *)self userDefaults];
    v6 = [userDefaults stringForKey:@"FairPlaySAPServer"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:v6];

      if (v7)
      {
        v3 = [v4 objectForKeyedSubscript:v6];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v8 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v8 = &_os_log_default;
          v9 = &_os_log_default;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _selectedFairPlaySAPServer];
        }

        v3 = @"https://albert.apple.com";
      }
    }
  }

  return v3;
}

- (id)_selectedAPIServer
{
  v3 = @"https://aquila.apple.com";
  if (systemInfo_isInternalBuild())
  {
    v15[0] = @"prod";
    v15[1] = @"it";
    v16[0] = @"https://aquila.apple.com";
    v16[1] = @"https://aquila-it.corp.apple.com";
    v15[2] = @"ut";
    v15[3] = @"maint";
    v16[2] = @"https://aquila-ut.corp.apple.com";
    v16[3] = @"https://aquila-maint.corp.apple.com";
    v15[4] = @"custom";
    userDefaults = [(MFAANetwork *)self userDefaults];
    v5 = [userDefaults stringForKey:@"CustomServer"];
    v6 = v5;
    v7 = &stru_100086C60;
    if (v5)
    {
      v7 = v5;
    }

    v16[4] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

    userDefaults2 = [(MFAANetwork *)self userDefaults];
    v10 = [userDefaults2 stringForKey:@"Server"];

    if (v10)
    {
      v11 = [v8 objectForKeyedSubscript:v10];

      if (v11)
      {
        v3 = [v8 objectForKeyedSubscript:v10];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v12 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v12 = &_os_log_default;
          v13 = &_os_log_default;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _selectedFairPlaySAPServer];
        }

        v3 = @"https://aquila.apple.com";
      }
    }
  }

  return v3;
}

- (id)_openFairPlaySAPSession
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  fairPlaySAPSession = [(MFAANetwork *)self fairPlaySAPSession];
  state = [fairPlaySAPSession state];

  if (!state)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v5 = &_os_log_default;
      v6 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Opening FairPlay SAP session...", buf, 2u);
    }

    v7 = dispatch_semaphore_create(0);
    fairPlaySAPSession2 = [(MFAANetwork *)self fairPlaySAPSession];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __38__MFAANetwork__openFairPlaySAPSession__block_invoke;
    v12[3] = &unk_1000806E8;
    v14 = &v16;
    v9 = v7;
    v13 = v9;
    [fairPlaySAPSession2 openWithCompletionHandler:v12];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __38__MFAANetwork__openFairPlaySAPSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    if (v6)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v7 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__MFAANetwork__openFairPlaySAPSession__block_invoke_cold_2();
    }

    v10 = *(*(a1 + 40) + 8);
    v11 = v4;
    v8 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    if (v6)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v8 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FairPlay SAP session opened!", v13, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_fairPlaySignatureForDataSync:(id)sync timedOut:(BOOL *)out error:(id *)error
{
  syncCopy = sync;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  if (out)
  {
    *out = 0;
  }

  if (error)
  {
    *error = 0;
  }

  _openFairPlaySAPSession = [(MFAANetwork *)self _openFairPlaySAPSession];
  v10 = _openFairPlaySAPSession;
  if (_openFairPlaySAPSession)
  {
    if (error)
    {
      v11 = _openFairPlaySAPSession;
      *error = v10;
    }
  }

  else
  {
    v12 = dispatch_semaphore_create(0);
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    fairPlaySAPSession = [(MFAANetwork *)self fairPlaySAPSession];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __60__MFAANetwork__fairPlaySignatureForDataSync_timedOut_error___block_invoke;
    v20[3] = &unk_100080710;
    v22 = &v30;
    v23 = &v24;
    v14 = v12;
    v21 = v14;
    [fairPlaySAPSession signatureForData:syncCopy completionHandler:v20];

    v15 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v16 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _fairPlaySignatureForDataSync:timedOut:error:];
      }

      if (out)
      {
        *out = 1;
      }
    }

    if (error)
    {
      *error = v25[5];
    }

    _Block_object_dispose(&v24, 8);
  }

  v18 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v18;
}

void __60__MFAANetwork__fairPlaySignatureForDataSync_timedOut_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_verifyFairPlaySignatureSync:(id)sync forData:(id)data timedOut:(BOOL *)out error:(id *)error
{
  syncCopy = sync;
  dataCopy = data;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (out)
  {
    *out = 0;
  }

  if (error)
  {
    *error = 0;
  }

  v12 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  fairPlaySAPSession = [(MFAANetwork *)self fairPlaySAPSession];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __67__MFAANetwork__verifyFairPlaySignatureSync_forData_timedOut_error___block_invoke;
  v20[3] = &unk_100080738;
  v22 = &v30;
  v23 = &v24;
  v14 = v12;
  v21 = v14;
  [fairPlaySAPSession verifySignature:syncCopy forData:dataCopy completionHandler:v20];

  v15 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v14, v15))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _verifyFairPlaySignatureSync:forData:timedOut:error:];
    }

    if (out)
    {
      *out = 1;
    }
  }

  if (error)
  {
    *error = v25[5];
  }

  v18 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

void __67__MFAANetwork__verifyFairPlaySignatureSync_forData_timedOut_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_generateTokenAuthURLRequestForEndpoint:(id)endpoint sessionID:(id)d signature:(id)signature requestUUID:(id)iD
{
  dCopy = d;
  signatureCopy = signature;
  iDCopy = iD;
  endpointCopy = endpoint;
  _selectedAPIServer = [(MFAANetwork *)self _selectedAPIServer];
  endpointCopy = [NSString stringWithFormat:@"%@/%@", _selectedAPIServer, endpointCopy];

  v16 = [NSURL URLWithString:endpointCopy];

  v17 = [NSMutableURLRequest requestWithURL:v16 cachePolicy:0 timeoutInterval:60.0];
  [v17 setHTTPMethod:@"POST"];
  [v17 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v17 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  [v17 setValue:@"1.0" forHTTPHeaderField:@"protocol-version"];
  if (dCopy)
  {
    [v17 setValue:dCopy forHTTPHeaderField:@"session-identifier"];
  }

  if (iDCopy)
  {
    [v17 setValue:iDCopy forHTTPHeaderField:@"X-Request-ID"];
  }

  if ([(MFAANetwork *)self disableFairPlaySAP])
  {
    [v17 setValue:@"true" forHTTPHeaderField:@"X-Mescal-Skipped"];
    v18 = [@"1234" dataUsingEncoding:4];

    signatureCopy = v18;
  }

  if (signatureCopy)
  {
    v19 = [signatureCopy base64EncodedStringWithOptions:0];
    [v17 setValue:v19 forHTTPHeaderField:@"signature"];
  }

  return v17;
}

- (void)_requestMetadataForToken:(id)token withUUID:(id)d requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply
{
  tokenCopy = token;
  dCopy = d;
  localeCopy = locale;
  infoCopy = info;
  replyCopy = reply;
  v15 = +[NSUUID UUID];
  uUIDString = [v15 UUIDString];

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v17 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [tokenCopy length];
    localeIdentifier = [localeCopy localeIdentifier];
    [localeCopy languageCodeAndCountryCode];
    v21 = replyCopy;
    v22 = infoCopy;
    v24 = v23 = localeCopy;
    *buf = 138479107;
    v112 = tokenCopy;
    v113 = 2048;
    v114 = v19;
    v115 = 2112;
    v116 = dCopy;
    v117 = 2112;
    v118 = localeIdentifier;
    v119 = 2112;
    v120 = v24;
    v121 = 2112;
    v122 = uUIDString;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requesting PPID metadata for token: %{private}@ (token.length: %lu, uuid: %@, requestedLocale: %@ [%@], requestUUID: %@)", buf, 0x3Eu);

    localeCopy = v23;
    infoCopy = v22;
    replyCopy = v21;
  }

  v25 = +[NSXPCConnection currentConnection];
  if (([v25 hasCategory:@"token-auth" forEntitlement:@"com.apple.MFAAuthentication"] & 1) == 0)
  {
    v27 = localeCopy;
    v28 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v29 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    goto LABEL_33;
  }

  if (!tokenCopy || !dCopy || !localeCopy)
  {
    v27 = localeCopy;
    v28 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"token, uuid, or requestedLocale = nil."];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v29 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

LABEL_33:

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v28);
    localeCopy = v27;
    goto LABEL_34;
  }

  if ([(MFAANetwork *)self forceNetworkFailure])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v26 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v26 = &_os_log_default;
      v33 = &_os_log_default;
    }

    v34 = localeCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Forcing network failure...", buf, 2u);
    }

    v28 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v35 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v35 = &_os_log_default;
      v36 = &_os_log_default;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v28);
    localeCopy = v34;
    goto LABEL_34;
  }

  if (![(MFAANetwork *)self spoofPPIDMetadata])
  {
    v97 = localeCopy;
    v28 = _splitASN1Tokens(tokenCopy);
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v37 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v37 = &_os_log_default;
      v40 = &_os_log_default;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v41 = [v28 count];
      *buf = 134217984;
      v112 = v41;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "tokenArray.count: %lu", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v42 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v42 = &_os_log_default;
      v46 = &_os_log_default;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (!v28)
    {
      v49 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"The provided token data could not be parsed."];
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v50 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v50 = &_os_log_default;
        v68 = &_os_log_default;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v49);
      localeCopy = v97;
      goto LABEL_151;
    }

    v47 = base64EncodeArray(v28);
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v48 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v48 = &_os_log_default;
      v51 = &_os_log_default;
    }

    v95 = infoCopy;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v109[0] = @"tokens";
    v109[1] = @"uuid";
    v110[0] = v47;
    v110[1] = dCopy;
    v109[2] = @"locale";
    languageCodeAndCountryCode = [v97 languageCodeAndCountryCode];
    v110[2] = languageCodeAndCountryCode;
    v53 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
    v54 = [NSMutableDictionary dictionaryWithDictionary:v53];

    infoCopy = v95;
    if (v95)
    {
      [v54 setObject:v95 forKey:@"request_info"];
    }

    v96 = v54;
    v94 = v47;
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v55 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v55 = &_os_log_default;
      v56 = &_os_log_default;
    }

    v57 = uUIDString;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (![NSJSONSerialization isValidJSONObject:v54])
    {
      v66 = logObjectForModule(2);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v61 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v67 = logObjectForModule(2);
      localeCopy = v97;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v61);
      v49 = v94;
      v65 = v96;
      goto LABEL_150;
    }

    v105 = 0;
    v98 = [NSJSONSerialization dataWithJSONObject:v54 options:0 error:&v105];
    v58 = v105;
    v59 = logObjectForModule(2);
    v60 = v59;
    v93 = v58;
    if (v58)
    {
      uUIDString = v57;
      v61 = v93;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v62 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v63 = logObjectForModule(2);
      v49 = v94;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v62);
      v64 = v62;
      v65 = v96;
      localeCopy = v97;
      goto LABEL_149;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:v98 withUUID:? requestedLocale:? requestInfo:? withReply:?];
    }

    v69 = logObjectForModule(2);
    uUIDString = v57;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v49 = v94;
    if ([(MFAANetwork *)self disableFairPlaySAP])
    {
      v70 = logObjectForModule(2);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Skipping generation of FairPlay SAP signature...", buf, 2u);
      }

      v92 = 0;
      goto LABEL_133;
    }

    if ([(MFAANetwork *)self forceFairPlaySAPFailure])
    {
      v92 = [@"1234" dataUsingEncoding:4];
LABEL_133:
      v71 = logObjectForModule(2);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        _selectedAPIServer = [(MFAANetwork *)self _selectedAPIServer];
        *buf = 138412290;
        v112 = _selectedAPIServer;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "self._selectedAPIServer: %@", buf, 0xCu);
      }

      if (v92)
      {
        fairPlaySAPSession = [(MFAANetwork *)self fairPlaySAPSession];
        uUID = [fairPlaySAPSession UUID];
        uUIDString2 = [uUID UUIDString];
        v76 = [(MFAANetwork *)self _generateTokenAuthURLRequestForEndpoint:@"deviceservices/queryProductPlan" sessionID:uUIDString2 signature:v92 requestUUID:uUIDString];
      }

      else
      {
        v76 = [(MFAANetwork *)self _generateTokenAuthURLRequestForEndpoint:@"deviceservices/queryProductPlan" sessionID:0 signature:0 requestUUID:uUIDString];
      }

      localeCopy = v97;
      v77 = logObjectForModule(2);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v78 = logObjectForModule(2);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v76 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v79 = logObjectForModule(2);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v80 = logObjectForModule(2);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v98 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v81 = logObjectForModule(2);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      urlSession = [(MFAANetwork *)self urlSession];
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207;
      v102[3] = &unk_100080788;
      v102[4] = self;
      v103 = replyCopy;
      v83 = [urlSession uploadTaskWithRequest:v76 fromData:v98 completionHandler:v102];

      [v83 resume];
      infoCopy = v95;
      v65 = v96;
      v64 = v92;
      v61 = 0;
      v49 = v94;
      goto LABEL_149;
    }

    buf[0] = 0;
    v104 = 0;
    v84 = [(MFAANetwork *)self _fairPlaySignatureForDataSync:v98 timedOut:buf error:&v104];
    v85 = v104;
    v86 = v85;
    localeCopy = v97;
    v92 = v84;
    if (buf[0] == 1)
    {
      v91 = v85;
      v87 = logObjectForModule(2);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _fairPlaySignatureForDataSync:timedOut:error:];
      }

      v100 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v88 = logObjectForModule(2);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v65 = v96;
    }

    else
    {
      if (v84 && !v85)
      {
        goto LABEL_133;
      }

      v89 = logObjectForModule(2);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if ([v86 code] == -5)
      {
        v100 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5, v86];
        v65 = v96;
      }

      else
      {
        v65 = v96;
        if ([v86 code] == -6)
        {
          v90 = -6;
        }

        else
        {
          v90 = -4;
        }

        v100 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:v90];
      }

      v88 = logObjectForModule(2);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }
    }

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v100);
    v64 = v92;
    v61 = 0;
LABEL_149:

LABEL_150:
LABEL_151:

    goto LABEL_34;
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v32 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v32 = &_os_log_default;
    v38 = &_os_log_default;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Spoofing PPID metadata...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v39 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v39 = &_os_log_default;
    v43 = &_os_log_default;
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v112) = 1000;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Sleeping %dms...", buf, 8u);
  }

  v44 = dispatch_time(0, 1000000000);
  v45 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke;
  block[3] = &unk_100080760;
  v108 = replyCopy;
  v107 = localeCopy;
  dispatch_after(v44, v45, block);

  v28 = v108;
LABEL_34:
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
    }

    v16 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v17 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_148;
  }

  if (v12)
  {
    v14 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v20 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
  }

  if ([v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v22 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v22 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10();
    }
  }

  v16 = v8;
  v24 = [v16 statusCode];
  if (v24 == 200)
  {
    goto LABEL_60;
  }

  if (v24 == 401)
  {
    v26 = -4;
  }

  else
  {
    if (v24 == 400)
    {
      v25 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"The server has determined that the data provided was invalid."];
      goto LABEL_56;
    }

    v26 = -6;
  }

  v25 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:v26];
LABEL_56:
  v27 = v25;
  if (v25)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v28 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v28 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_12();
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v32 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v32 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_148;
  }

LABEL_60:
  if (v7 && [v7 length])
  {
    if ([*(a1 + 32) disableFairPlaySAP] & 1) != 0 || (objc_msgSend(*(a1 + 32), "bypassFairPlaySAPSignatureVerification"))
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v29 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v29 = &_os_log_default;
        v38 = &_os_log_default;
      }

      v74 = v8;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Bypassing verification of FairPlay SAP signature from server...", buf, 2u);
      }

LABEL_103:

      v75 = 0;
      v39 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v75];
      v40 = v75;
      v41 = v40;
      if (gLogObjects)
      {
        v42 = gNumLogObjects <= 2;
      }

      else
      {
        v42 = 1;
      }

      v43 = !v42;
      if (v40)
      {
        if (v43)
        {
          v44 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v44 = &_os_log_default;
          v46 = &_os_log_default;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_21();
        }

        v47 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
        if (gLogObjects && gNumLogObjects >= 3)
        {
          v48 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v48 = &_os_log_default;
          v49 = &_os_log_default;
        }

        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v43)
        {
          v45 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v45 = &_os_log_default;
          v50 = &_os_log_default;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_25();
        }

        v51 = [v39 objectForKeyedSubscript:@"ppid"];
        if (v51)
        {
          v52 = v51;
          v53 = [v39 objectForKeyedSubscript:@"locale"];
          if (v53)
          {
            v54 = v53;
            v55 = [v39 objectForKeyedSubscript:@"ppid_metadata"];

            if (v55)
            {
              v47 = [v39 objectForKeyedSubscript:@"locale"];
              if (v47)
              {
                v56 = *(a1 + 40);
                v57 = [v39 objectForKeyedSubscript:@"ppid"];
                v58 = [NSLocale localeWithLocaleIdentifier:v47];
                v59 = [v39 objectForKeyedSubscript:@"ppid_metadata"];
                (*(v56 + 16))(v56, v57, v58, v59, 0);
              }

              else
              {
                v72 = logObjectForModule(2);
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_26();
                }

                v57 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
                v73 = logObjectForModule(2);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
                }

                (*(*(a1 + 40) + 16))();
              }

              v8 = v74;

              goto LABEL_147;
            }
          }

          else
          {
          }
        }

        v62 = logObjectForModule(2);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_28();
        }

        v47 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
        v48 = logObjectForModule(2);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
LABEL_146:

          (*(*(a1 + 40) + 16))();
          v8 = v74;
LABEL_147:

          goto LABEL_148;
        }
      }

      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      goto LABEL_146;
    }

    if ([*(a1 + 32) forceFairPlaySAPFailure])
    {
      v29 = [@"1234" dataUsingEncoding:4];
    }

    else
    {
      v60 = [v16 allHeaderFields];
      v61 = [v60 objectForKeyedSubscript:@"signature"];

      if (v61)
      {
        v29 = [[NSData alloc] initWithBase64EncodedString:v61 options:0];
      }

      else
      {
        v29 = 0;
      }
    }

    buf[0] = 0;
    v63 = *(a1 + 32);
    v76 = 0;
    v64 = [v63 _verifyFairPlaySignatureSync:v29 forData:v7 timedOut:buf error:&v76];
    v65 = v76;
    v66 = v65;
    if (buf[0] == 1)
    {
      v67 = v8;
      v68 = logObjectForModule(2);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _verifyFairPlaySignatureSync:forData:timedOut:error:];
      }

      v69 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v70 = logObjectForModule(2);
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_162;
      }
    }

    else
    {
      if (v64)
      {
        v74 = v8;

        goto LABEL_103;
      }

      v67 = v8;
      v71 = logObjectForModule(2);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v69 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
      v70 = logObjectForModule(2);
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
LABEL_162:

        (*(*(a1 + 40) + 16))();
        v8 = v67;
        goto LABEL_148;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    goto LABEL_162;
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v30 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v30 = &_os_log_default;
    v34 = &_os_log_default;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "responseData is empty!", buf, 2u);
  }

  v35 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v36 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v36 = &_os_log_default;
    v37 = &_os_log_default;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
  }

  (*(*(a1 + 40) + 16))();
LABEL_148:
}

- (void)_requestActivationForToken:(id)token withUUID:(id)d withReply:(id)reply
{
  tokenCopy = token;
  dCopy = d;
  replyCopy = reply;
  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

  if (gLogObjects)
  {
    v13 = gNumLogObjects < 3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  else
  {
    v15 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478595;
    v93 = tokenCopy;
    v94 = 2048;
    v95 = [tokenCopy length];
    v96 = 2112;
    v97 = dCopy;
    v98 = 2112;
    v99 = uUIDString;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requesting activation for token: %{private}@ (token.length: %lu, uuid: %@, requestUUID: %@)", buf, 0x2Au);
  }

  v16 = +[NSXPCConnection currentConnection];
  v82 = uUIDString;
  if (([v16 hasCategory:@"token-auth" forEntitlement:@"com.apple.MFAAuthentication"] & 1) == 0)
  {
    v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v19 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    goto LABEL_68;
  }

  if (tokenCopy && dCopy)
  {
    if ([(MFAANetwork *)self forceNetworkFailure])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v17 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v17 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Forcing network failure...", buf, 2u);
      }

      v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v19 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v19 = &_os_log_default;
        v24 = &_os_log_default;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if ([(MFAANetwork *)self forceTokenActivationFailure])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v22 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v22 = &_os_log_default;
        v26 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Forcing token activation failure...", buf, 2u);
      }

      v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v19 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v19 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if ([(MFAANetwork *)self spoofTokenActivation])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v25 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v25 = &_os_log_default;
        v30 = &_os_log_default;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Spoofing token activation...", buf, 2u);
      }

      if (gLogObjects && gNumLogObjects >= 3)
      {
        v31 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v31 = &_os_log_default;
        v35 = &_os_log_default;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v93) = 1000;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Sleeping %dms...", buf, 8u);
      }

      v36 = dispatch_time(0, 1000000000);
      v37 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke;
      block[3] = &unk_100080760;
      v89 = replyCopy;
      v88 = tokenCopy;
      dispatch_after(v36, v37, block);

      v18 = v89;
      goto LABEL_69;
    }

    v18 = _splitASN1Tokens(tokenCopy);
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v29 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v33 = [v18 count];
      *buf = 134217984;
      v93 = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "tokenArray.count: %lu", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v34 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v34 = &_os_log_default;
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (!v18)
    {
      v48 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"The provided token data could not be parsed."];
      v51 = logObjectForModule(2);
      v28 = v82;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, v48);
      goto LABEL_150;
    }

    v39 = base64EncodeArray(v18);
    v40 = logObjectForModule(2);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v90[0] = @"tokens";
    v90[1] = @"uuid";
    v81 = v39;
    v91[0] = v39;
    v91[1] = dCopy;
    v41 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
    v42 = logObjectForModule(2);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (![NSJSONSerialization isValidJSONObject:v41])
    {
      v52 = logObjectForModule(2);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v50 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v53 = logObjectForModule(2);
      v48 = v39;
      v28 = v82;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, v50);
      goto LABEL_149;
    }

    v86 = 0;
    v80 = [NSJSONSerialization dataWithJSONObject:v41 options:0 error:&v86];
    v43 = v86;
    v44 = logObjectForModule(2);
    v45 = v44;
    v79 = v43;
    if (v43)
    {
      v28 = v82;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v46 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v47 = logObjectForModule(2);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, v46);
      v48 = v81;
      v49 = v46;
      v50 = v79;
      goto LABEL_148;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:v80 withUUID:? requestedLocale:? requestInfo:? withReply:?];
    }

    v54 = logObjectForModule(2);
    v28 = v82;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if ([(MFAANetwork *)self disableFairPlaySAP])
    {
      v55 = logObjectForModule(2);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Skipping generation of FairPlay SAP signature...", buf, 2u);
      }

      v78 = 0;
      goto LABEL_131;
    }

    if ([(MFAANetwork *)self forceFairPlaySAPFailure])
    {
      v78 = [@"1234" dataUsingEncoding:4];
LABEL_131:
      v56 = logObjectForModule(2);
      v77 = v41;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        _selectedAPIServer = [(MFAANetwork *)self _selectedAPIServer];
        *buf = 138412290;
        v93 = _selectedAPIServer;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "self._selectedAPIServer: %@", buf, 0xCu);

        v41 = v77;
      }

      if (v78)
      {
        fairPlaySAPSession = [(MFAANetwork *)self fairPlaySAPSession];
        uUID = [fairPlaySAPSession UUID];
        uUIDString2 = [uUID UUIDString];
        v61 = [(MFAANetwork *)self _generateTokenAuthURLRequestForEndpoint:@"deviceservices/activateAccessory" sessionID:uUIDString2 signature:v78 requestUUID:v82];

        v41 = v77;
      }

      else
      {
        v61 = [(MFAANetwork *)self _generateTokenAuthURLRequestForEndpoint:@"deviceservices/activateAccessory" sessionID:0 signature:0 requestUUID:v82];
      }

      v62 = logObjectForModule(2);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v63 = logObjectForModule(2);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v61 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v64 = logObjectForModule(2);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v65 = logObjectForModule(2);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v80 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v66 = logObjectForModule(2);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      urlSession = [(MFAANetwork *)self urlSession];
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217;
      v83[3] = &unk_100080788;
      v83[4] = self;
      v84 = replyCopy;
      v68 = [urlSession uploadTaskWithRequest:v61 fromData:v80 completionHandler:v83];

      [v68 resume];
      v48 = v81;
      v28 = v82;
      v50 = 0;
      goto LABEL_147;
    }

    buf[0] = 0;
    v85 = 0;
    v69 = [(MFAANetwork *)self _fairPlaySignatureForDataSync:v80 timedOut:buf error:&v85];
    v70 = v85;
    v78 = v69;
    if (buf[0] == 1)
    {
      v76 = v70;
      v71 = logObjectForModule(2);
      v48 = v81;
      v50 = 0;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _fairPlaySignatureForDataSync:timedOut:error:];
      }

      v75 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v72 = logObjectForModule(2);
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (v69 && !v70)
      {
        goto LABEL_131;
      }

      v76 = v70;
      v73 = logObjectForModule(2);
      v48 = v81;
      v50 = 0;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if ([v76 code] == -5)
      {
        v74 = -5;
      }

      else if ([v76 code] == -6)
      {
        v74 = -6;
      }

      else
      {
        v74 = -4;
      }

      v75 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:v74];
      v72 = logObjectForModule(2);
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
LABEL_167:

        (*(replyCopy + 2))(replyCopy, 0, v75);
LABEL_147:
        v49 = v78;
LABEL_148:

LABEL_149:
LABEL_150:

        goto LABEL_70;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    goto LABEL_167;
  }

  v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"token or uuid = nil."];
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v19 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v19 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_68;
  }

LABEL_67:
  [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
LABEL_68:

  (*(replyCopy + 2))(replyCopy, 0, v18);
LABEL_69:
  v28 = v82;
LABEL_70:
}

void __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
    }

    v16 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v17 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_98;
  }

  if (v12)
  {
    v14 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v20 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
  }

  if ([v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v22 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v22 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10();
    }
  }

  v16 = v8;
  v24 = [v16 statusCode];
  if (v24 == 200)
  {
    goto LABEL_60;
  }

  if (v24 == 401)
  {
    v26 = -4;
  }

  else
  {
    if (v24 == 400)
    {
      v25 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"The server has determined that the data provided was invalid."];
      goto LABEL_56;
    }

    v26 = -6;
  }

  v25 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:v26];
LABEL_56:
  v27 = v25;
  if (v25)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v28 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v28 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_12();
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v31 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v31 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

LABEL_96:

    (*(*(a1 + 40) + 16))();
LABEL_97:

    goto LABEL_98;
  }

LABEL_60:
  if (!v7 || ![v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v29 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "responseData is empty!", buf, 2u);
    }

    v27 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v31 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v31 = &_os_log_default;
      v34 = &_os_log_default;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    goto LABEL_96;
  }

  if ([*(a1 + 32) disableFairPlaySAP] & 1) != 0 || (objc_msgSend(*(a1 + 32), "bypassFairPlaySAPSignatureVerification"))
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v27 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v27 = &_os_log_default;
      v35 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Bypassing verification of FairPlay SAP signature from server...", buf, 2u);
    }

    goto LABEL_104;
  }

  if ([*(a1 + 32) forceFairPlaySAPFailure])
  {
    v27 = [@"1234" dataUsingEncoding:4];
  }

  else
  {
    v66 = [v16 allHeaderFields];
    v67 = [v66 objectForKeyedSubscript:@"signature"];

    if (v67)
    {
      v27 = [[NSData alloc] initWithBase64EncodedString:v67 options:0];
    }

    else
    {
      v27 = 0;
    }
  }

  buf[0] = 0;
  v70 = *(a1 + 32);
  v87 = 0;
  v71 = [v70 _verifyFairPlaySignatureSync:v27 forData:v7 timedOut:buf error:&v87];
  v72 = v87;
  v73 = v72;
  if (buf[0] == 1)
  {
    v74 = a1;
    v75 = logObjectForModule(2);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _verifyFairPlaySignatureSync:forData:timedOut:error:];
    }

    v76 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
    v77 = logObjectForModule(2);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  if ((v71 & 1) == 0)
  {
    v74 = a1;
    v78 = logObjectForModule(2);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v76 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
    v77 = logObjectForModule(2);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_181;
    }

LABEL_180:
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
LABEL_181:

    (*(*(v74 + 40) + 16))();
    goto LABEL_97;
  }

LABEL_104:
  v86 = 0;
  v36 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v86];
  v37 = v86;
  if (gLogObjects)
  {
    v38 = gNumLogObjects <= 2;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  v81 = v37;
  if (v37)
  {
    if (v39)
    {
      v40 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v40 = &_os_log_default;
      v42 = &_os_log_default;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_21();
    }

    v43 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v44 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v44 = &_os_log_default;
      v45 = &_os_log_default;
    }

    v46 = v43;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v79 = a1;
    if (v39)
    {
      v41 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v41 = &_os_log_default;
      v47 = &_os_log_default;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_25();
    }

    v48 = [v36 objectForKeyedSubscript:@"tokens"];
    if (v48 && (v49 = v48, [v36 objectForKeyedSubscript:@"tokens"], v50 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v50, v49, (isKindOfClass & 1) != 0))
    {
      v52 = [v36 objectForKeyedSubscript:@"tokens"];
      v46 = v52;
      if (v52 && [v52 count] == 2)
      {
        v53 = logObjectForModule(2);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_26();
        }

        v80 = v36;

        v54 = v46;
        v55 = base64DecodeArray(v46);
        v56 = logObjectForModule(2);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_27();
        }

        v57 = +[NSMutableData data];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v58 = v55;
        v59 = [v58 countByEnumeratingWithState:&v82 objects:v89 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v83;
          do
          {
            for (i = 0; i != v60; i = i + 1)
            {
              if (*v83 != v61)
              {
                objc_enumerationMutation(v58);
              }

              [v57 appendData:*(*(&v82 + 1) + 8 * i)];
            }

            v60 = [v58 countByEnumeratingWithState:&v82 objects:v89 count:16];
          }

          while (v60);
        }

        v63 = logObjectForModule(2);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_28();
        }

        (*(*(v79 + 40) + 16))();
        v36 = v80;
        v46 = v54;
      }

      else
      {
        v68 = logObjectForModule(2);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_29();
        }

        v58 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
        v69 = logObjectForModule(2);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
        }

        (*(*(v79 + 40) + 16))();
      }
    }

    else
    {
      v64 = logObjectForModule(2);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_31();
      }

      v46 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-6];
      v65 = logObjectForModule(2);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(*(v79 + 40) + 16))();
    }
  }

LABEL_98:
}

- (void)_confirmActivationForToken:(id)token withUUID:(id)d withReply:(id)reply
{
  tokenCopy = token;
  dCopy = d;
  replyCopy = reply;
  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

  if (gLogObjects)
  {
    v13 = gNumLogObjects < 3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  else
  {
    v15 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478595;
    v93 = tokenCopy;
    v94 = 2048;
    v95 = [tokenCopy length];
    v96 = 2112;
    v97 = dCopy;
    v98 = 2112;
    v99 = uUIDString;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Confirming activation for token: %{private}@ (token.length: %lu, uuid: %@, requestUUID: %@)", buf, 0x2Au);
  }

  v16 = +[NSXPCConnection currentConnection];
  v83 = uUIDString;
  if (([v16 hasCategory:@"token-auth" forEntitlement:@"com.apple.MFAAuthentication"] & 1) == 0)
  {
    v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v19 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    goto LABEL_68;
  }

  if (tokenCopy && dCopy)
  {
    if ([(MFAANetwork *)self forceNetworkFailure])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v17 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v17 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Forcing network failure...", buf, 2u);
      }

      v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v19 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v19 = &_os_log_default;
        v24 = &_os_log_default;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if ([(MFAANetwork *)self forceTokenConfirmationFailure])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v22 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v22 = &_os_log_default;
        v26 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Forcing token confirmation failure...", buf, 2u);
      }

      v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v19 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v19 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if ([(MFAANetwork *)self spoofTokenActivation])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v25 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v25 = &_os_log_default;
        v30 = &_os_log_default;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Spoofing token confirmation...", buf, 2u);
      }

      if (gLogObjects && gNumLogObjects >= 3)
      {
        v31 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v31 = &_os_log_default;
        v35 = &_os_log_default;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v93) = 1000;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Sleeping %dms...", buf, 8u);
      }

      v36 = dispatch_time(0, 1000000000);
      v37 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __61__MFAANetwork__confirmActivationForToken_withUUID_withReply___block_invoke;
      block[3] = &unk_1000807B0;
      v89 = replyCopy;
      dispatch_after(v36, v37, block);

      v18 = v89;
      goto LABEL_69;
    }

    v18 = _splitASN1Tokens(tokenCopy);
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v29 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v33 = [v18 count];
      *buf = 134217984;
      v93 = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "tokenArray.count: %lu", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v34 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v34 = &_os_log_default;
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (!v18)
    {
      v49 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"The provided token data could not be parsed."];
      v52 = logObjectForModule(2);
      v28 = v83;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, v49);
      goto LABEL_150;
    }

    v39 = base64EncodeArray(v18);
    v40 = logObjectForModule(2);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v90[0] = @"tokens";
    v90[1] = @"uuid";
    v82 = v39;
    v91[0] = v39;
    v91[1] = dCopy;
    v41 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
    v42 = logObjectForModule(2);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (![NSJSONSerialization isValidJSONObject:v41])
    {
      v53 = logObjectForModule(2);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v51 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v54 = logObjectForModule(2);
      v49 = v39;
      v28 = v83;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, v51);
      goto LABEL_149;
    }

    v87 = 0;
    v81 = [NSJSONSerialization dataWithJSONObject:v41 options:0 error:&v87];
    v43 = v87;
    v44 = logObjectForModule(2);
    v45 = v44;
    v80 = v43;
    if (v43)
    {
      v28 = v83;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v46 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v47 = logObjectForModule(2);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, v46);
      v48 = v46;
      v50 = v81;
      v49 = v82;
      v51 = v80;
      goto LABEL_148;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:v81 withUUID:? requestedLocale:? requestInfo:? withReply:?];
    }

    v55 = logObjectForModule(2);
    v28 = v83;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if ([(MFAANetwork *)self disableFairPlaySAP])
    {
      v56 = logObjectForModule(2);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Skipping generation of FairPlay SAP signature...", buf, 2u);
      }

      v79 = 0;
      goto LABEL_131;
    }

    if ([(MFAANetwork *)self forceFairPlaySAPFailure])
    {
      v79 = [@"1234" dataUsingEncoding:4];
LABEL_131:
      v57 = logObjectForModule(2);
      v77 = v41;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        _selectedAPIServer = [(MFAANetwork *)self _selectedAPIServer];
        *buf = 138412290;
        v93 = _selectedAPIServer;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "self._selectedAPIServer: %@", buf, 0xCu);
      }

      if (v79)
      {
        fairPlaySAPSession = [(MFAANetwork *)self fairPlaySAPSession];
        uUID = [fairPlaySAPSession UUID];
        uUIDString2 = [uUID UUIDString];
        v62 = [(MFAANetwork *)self _generateTokenAuthURLRequestForEndpoint:@"deviceservices/ackAccessory" sessionID:uUIDString2 signature:v79 requestUUID:v83];
      }

      else
      {
        v62 = [(MFAANetwork *)self _generateTokenAuthURLRequestForEndpoint:@"deviceservices/ackAccessory" sessionID:0 signature:0 requestUUID:v83];
      }

      v63 = logObjectForModule(2);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v64 = logObjectForModule(2);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v62 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v65 = logObjectForModule(2);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v66 = logObjectForModule(2);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v81 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v67 = logObjectForModule(2);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      urlSession = [(MFAANetwork *)self urlSession];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = __61__MFAANetwork__confirmActivationForToken_withUUID_withReply___block_invoke_220;
      v84[3] = &unk_1000807D8;
      v85 = replyCopy;
      v50 = v81;
      v69 = [urlSession uploadTaskWithRequest:v62 fromData:v81 completionHandler:v84];

      [v69 resume];
      v49 = v82;
      v28 = v83;
      v41 = v77;
      v51 = 0;
      goto LABEL_147;
    }

    buf[0] = 0;
    v86 = 0;
    v70 = [(MFAANetwork *)self _fairPlaySignatureForDataSync:v81 timedOut:buf error:&v86];
    v71 = v86;
    v79 = v70;
    if (buf[0] == 1)
    {
      v78 = v71;
      v72 = logObjectForModule(2);
      v49 = v82;
      v51 = 0;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _fairPlaySignatureForDataSync:timedOut:error:];
      }

      v76 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
      v73 = logObjectForModule(2);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (v70 && !v71)
      {
        goto LABEL_131;
      }

      v78 = v71;
      v74 = logObjectForModule(2);
      v49 = v82;
      v51 = 0;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if ([v78 code] == -5)
      {
        v75 = -5;
      }

      else if ([v78 code] == -6)
      {
        v75 = -6;
      }

      else
      {
        v75 = -4;
      }

      v76 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:v75];
      v73 = logObjectForModule(2);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
LABEL_167:

        (*(replyCopy + 2))(replyCopy, v76);
        v50 = v81;
LABEL_147:
        v48 = v79;
LABEL_148:

LABEL_149:
LABEL_150:

        goto LABEL_70;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    goto LABEL_167;
  }

  v18 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"token or uuid = nil."];
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v19 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v19 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_68;
  }

LABEL_67:
  [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
LABEL_68:

  (*(replyCopy + 2))(replyCopy, v18);
LABEL_69:
  v28 = v83;
LABEL_70:
}

void __61__MFAANetwork__confirmActivationForToken_withUUID_withReply___block_invoke_220(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
    }

    v16 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v17 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v19 = *(*(a1 + 32) + 16);
    goto LABEL_64;
  }

  if (v12)
  {
    v14 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v20 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v21 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v21 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
  }

  if ([v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v23 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10();
    }
  }

  v16 = v8;
  v25 = [v16 statusCode];
  if (v25 > 399)
  {
    if (v25 == 401)
    {
      v27 = -4;
      goto LABEL_58;
    }

    if (v25 == 400)
    {
      v26 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-3 description:@"The server has determined that the data provided was invalid."];
      goto LABEL_59;
    }
  }

  else if (v25 == 200 || v25 == 204)
  {
    goto LABEL_63;
  }

  v27 = -6;
LABEL_58:
  v26 = [NSError MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:v27];
LABEL_59:
  v28 = v26;
  if (!v26)
  {
LABEL_63:
    v19 = *(*(a1 + 32) + 16);
LABEL_64:
    v19();
    goto LABEL_65;
  }

  v33 = a1;
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v29 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v29 = &_os_log_default;
    v30 = &_os_log_default;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_12();
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v31 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v31 = &_os_log_default;
    v32 = &_os_log_default;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
  }

  (*(*(v33 + 32) + 16))();
LABEL_65:
}

- (void)_requestMetadataForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid requestedLocale:(id)locale requestInfo:(id)info withReply:(id)reply
{
  serialCopy = serial;
  seqCopy = seq;
  ppidCopy = ppid;
  localeCopy = locale;
  infoCopy = info;
  replyCopy = reply;
  v18 = +[NSUUID UUID];
  uUIDString = [v18 UUIDString];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v20 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v90 = [serialCopy length];
    selfCopy = self;
    v23 = uUIDString;
    v24 = ppidCopy;
    v25 = seqCopy;
    v26 = [seqCopy length];
    localeIdentifier = [localeCopy localeIdentifier];
    languageCodeAndCountryCode = [localeCopy languageCodeAndCountryCode];
    *buf = 138479363;
    v106 = serialCopy;
    v107 = 2048;
    v108 = v90;
    v109 = 2048;
    v110 = v26;
    seqCopy = v25;
    ppidCopy = v24;
    v29 = v23;
    self = selfCopy;
    v111 = 2113;
    v112 = v24;
    v113 = 2112;
    v114 = localeIdentifier;
    v30 = localeIdentifier;
    v115 = 2112;
    v116 = languageCodeAndCountryCode;
    v117 = 2112;
    uUIDString = v29;
    v118 = v29;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Requesting PPID metadata for certificate serial: %{private}@ (certSerial.length: %lu, issuerSeq.length: %lu, ppid: %{private}@, requestedLocale: %@ [%@], requestUUID: %@)", buf, 0x48u);
  }

  v31 = +[NSXPCConnection currentConnection];
  if (([v31 hasCategory:@"certificate-auth" forEntitlement:@"com.apple.MFAAuthentication"] & 1) == 0)
  {
    v33 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v34 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v34 = &_os_log_default;
      v35 = &_os_log_default;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    goto LABEL_51;
  }

  if (!serialCopy || !seqCopy || !ppidCopy || !localeCopy)
  {
    v33 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"certSerial, certIssuerSeq, ppid or requestedLocale = nil."];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v34 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v34 = &_os_log_default;
      v36 = &_os_log_default;
    }

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

LABEL_50:
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
LABEL_51:

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v33);
    goto LABEL_52;
  }

  if ([(MFAANetwork *)self forceNetworkFailure])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v32 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v32 = &_os_log_default;
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Forcing network failure...", buf, 2u);
    }

    v33 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v34 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v34 = &_os_log_default;
      v39 = &_os_log_default;
    }

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (![(MFAANetwork *)self spoofPPIDMetadata])
  {
    selfCopy2 = self;
    v103[0] = @"cert_serial";
    v89 = serialCopy;
    v40 = [serialCopy base64EncodedStringWithOptions:0];
    v104[0] = v40;
    v103[1] = @"issuer_dn";
    v88 = seqCopy;
    v41 = [seqCopy base64EncodedStringWithOptions:0];
    v104[1] = v41;
    v104[2] = ppidCopy;
    v91 = ppidCopy;
    v103[2] = @"ppid";
    v103[3] = @"locale";
    languageCodeAndCountryCode2 = [localeCopy languageCodeAndCountryCode];
    v104[3] = languageCodeAndCountryCode2;
    v43 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
    v33 = [NSMutableDictionary dictionaryWithDictionary:v43];

    if (infoCopy)
    {
      [v33 setObject:infoCopy forKey:@"request_info"];
    }

    serialCopy = v89;
    ppidCopy = v91;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v44 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v44 = &_os_log_default;
      v47 = &_os_log_default;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (![NSJSONSerialization isValidJSONObject:v33])
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v58 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v58 = &_os_log_default;
        v59 = &_os_log_default;
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v60 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v61 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v61 = &_os_log_default;
        v62 = &_os_log_default;
      }

      seqCopy = v88;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v60);
      goto LABEL_129;
    }

    v98 = 0;
    v85 = [NSJSONSerialization dataWithJSONObject:v33 options:0 error:&v98];
    v48 = v98;
    v49 = logObjectForModule(1);
    v50 = v49;
    seqCopy = v88;
    if (v48)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v51 = v48;

      v52 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v53 = logObjectForModule(1);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v52);
      goto LABEL_78;
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:v85 withUUID:? requestedLocale:? requestInfo:? withReply:?];
    }

    v63 = logObjectForModule(1);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if ([(MFAANetwork *)selfCopy2 disableFairPlaySAP])
    {
      v64 = logObjectForModule(1);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Skipping generation of FairPlay SAP signature...", buf, 2u);
      }

      v52 = 0;
      goto LABEL_112;
    }

    if ([(MFAANetwork *)selfCopy2 forceFairPlaySAPFailure])
    {
      v52 = [@"1234" dataUsingEncoding:4];
LABEL_112:
      v65 = logObjectForModule(1);
      v84 = v52;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        _selectedAPIServer = [(MFAANetwork *)selfCopy2 _selectedAPIServer];
        *buf = 138412290;
        v106 = _selectedAPIServer;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "self._selectedAPIServer: %@", buf, 0xCu);

        v52 = v84;
      }

      if (v52)
      {
        fairPlaySAPSession = [(MFAANetwork *)selfCopy2 fairPlaySAPSession];
        uUID = [fairPlaySAPSession UUID];
        uUIDString2 = [uUID UUIDString];
        v70 = [(MFAANetwork *)selfCopy2 _generateTokenAuthURLRequestForEndpoint:@"deviceservices/queryProductPlan" sessionID:uUIDString2 signature:v84 requestUUID:uUIDString];

        ppidCopy = v91;
        v71 = v70;
      }

      else
      {
        v71 = [(MFAANetwork *)selfCopy2 _generateTokenAuthURLRequestForEndpoint:@"deviceservices/queryProductPlan" sessionID:0 signature:0 requestUUID:uUIDString];
      }

      v72 = logObjectForModule(1);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v73 = logObjectForModule(1);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v71 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v74 = logObjectForModule(1);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v75 = logObjectForModule(1);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v85 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v76 = logObjectForModule(1);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      urlSession = [(MFAANetwork *)selfCopy2 urlSession];
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234;
      v94[3] = &unk_100080828;
      v96 = replyCopy;
      v94[4] = selfCopy2;
      v95 = ppidCopy;
      v54 = v85;
      v78 = [urlSession uploadTaskWithRequest:v71 fromData:v85 completionHandler:v94];

      [v78 resume];
      ppidCopy = v91;

      v51 = 0;
      v52 = v84;
      goto LABEL_128;
    }

    buf[0] = 0;
    v97 = 0;
    v52 = [(MFAANetwork *)selfCopy2 _fairPlaySignatureForDataSync:v85 timedOut:buf error:&v97];
    v79 = v97;
    if (buf[0] == 1)
    {
      v87 = v79;
      v80 = logObjectForModule(1);
      v51 = 0;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _fairPlaySignatureForDataSync:timedOut:error:];
      }

      v81 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v82 = logObjectForModule(1);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (v52 && !v79)
      {
        goto LABEL_112;
      }

      v87 = v79;
      v83 = logObjectForModule(1);
      v51 = 0;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v81 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v82 = logObjectForModule(1);
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
LABEL_141:

        (*(replyCopy + 2))(replyCopy, 0, 0, 0, v81);
        serialCopy = v89;
LABEL_78:
        v54 = v85;
LABEL_128:

        v60 = v51;
LABEL_129:

        goto LABEL_52;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    goto LABEL_141;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v37 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v37 = &_os_log_default;
    v45 = &_os_log_default;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Spoofing PPID metadata...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v46 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v46 = &_os_log_default;
    v55 = &_os_log_default;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v106) = 1000;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Sleeping %dms...", buf, 8u);
  }

  v56 = dispatch_time(0, 1000000000);
  v57 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke;
  block[3] = &unk_100080800;
  v102 = replyCopy;
  v100 = ppidCopy;
  v101 = localeCopy;
  dispatch_after(v56, v57, block);

  v33 = v102;
LABEL_52:
}

void __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
    }

    v16 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v17 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_152;
  }

  if (v12)
  {
    v14 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v20 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
  }

  if ([v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v22 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v22 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10();
    }
  }

  v16 = v8;
  v24 = [v16 statusCode];
  if (v24 == 200)
  {
    goto LABEL_60;
  }

  if (v24 == 401)
  {
    v26 = -4;
  }

  else
  {
    if (v24 == 400)
    {
      v25 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"The server has determined that the data provided was invalid."];
      goto LABEL_56;
    }

    v26 = -6;
  }

  v25 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:v26];
LABEL_56:
  v27 = v25;
  if (v25)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v28 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v28 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_12();
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v32 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v32 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_152;
  }

LABEL_60:
  if (v7 && [v7 length])
  {
    if ([*(a1 + 32) disableFairPlaySAP] & 1) != 0 || (objc_msgSend(*(a1 + 32), "bypassFairPlaySAPSignatureVerification"))
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v29 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v29 = &_os_log_default;
        v38 = &_os_log_default;
      }

      v77 = v8;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Bypassing verification of FairPlay SAP signature from server...", buf, 2u);
      }

LABEL_103:

      v79 = 0;
      v39 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v79];
      v40 = v79;
      v41 = v40;
      if (gLogObjects)
      {
        v42 = gNumLogObjects <= 1;
      }

      else
      {
        v42 = 1;
      }

      v43 = !v42;
      if (v40)
      {
        if (v43)
        {
          v44 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v44 = &_os_log_default;
          v46 = &_os_log_default;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_21();
        }

        v47 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v48 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v48 = &_os_log_default;
          v49 = &_os_log_default;
        }

        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_150;
        }
      }

      else
      {
        if (v43)
        {
          v45 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v45 = &_os_log_default;
          v50 = &_os_log_default;
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_25();
        }

        v51 = [v39 objectForKeyedSubscript:@"ppid"];
        if (v51)
        {
          v52 = v51;
          v53 = [v39 objectForKeyedSubscript:@"locale"];
          if (v53)
          {
            v54 = v53;
            v55 = [v39 objectForKeyedSubscript:@"ppid_metadata"];

            if (v55)
            {
              v56 = *(a1 + 40);
              v57 = [v39 objectForKeyedSubscript:@"ppid"];
              LOBYTE(v56) = [v56 isEqualToString:v57];

              if ((v56 & 1) == 0)
              {
                v58 = logObjectForModule(1);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234_cold_26(a1 + 40, v39);
                }
              }

              v47 = [v39 objectForKeyedSubscript:{@"locale", v77}];
              if (v47)
              {
                v59 = *(a1 + 48);
                v60 = [v39 objectForKeyedSubscript:@"ppid"];
                v61 = [NSLocale localeWithLocaleIdentifier:v47];
                v62 = [v39 objectForKeyedSubscript:@"ppid_metadata"];
                (*(v59 + 16))(v59, v60, v61, v62, 0);
              }

              else
              {
                v75 = logObjectForModule(1);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_26();
                }

                v60 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
                v76 = logObjectForModule(1);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
                }

                (*(*(a1 + 48) + 16))();
              }

              v8 = v78;

              goto LABEL_151;
            }
          }

          else
          {
          }
        }

        v65 = logObjectForModule(1);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234_cold_29();
        }

        v47 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
        v48 = logObjectForModule(1);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
LABEL_150:

          (*(*(a1 + 48) + 16))();
          v8 = v77;
LABEL_151:

          goto LABEL_152;
        }
      }

      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      goto LABEL_150;
    }

    if ([*(a1 + 32) forceFairPlaySAPFailure])
    {
      v29 = [@"1234" dataUsingEncoding:4];
    }

    else
    {
      v63 = [v16 allHeaderFields];
      v64 = [v63 objectForKeyedSubscript:@"signature"];

      if (v64)
      {
        v29 = [[NSData alloc] initWithBase64EncodedString:v64 options:0];
      }

      else
      {
        v29 = 0;
      }
    }

    buf[0] = 0;
    v66 = *(a1 + 32);
    v80 = 0;
    v67 = [v66 _verifyFairPlaySignatureSync:v29 forData:v7 timedOut:buf error:&v80];
    v68 = v80;
    v69 = v68;
    if (buf[0] == 1)
    {
      v70 = v8;
      v71 = logObjectForModule(1);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _verifyFairPlaySignatureSync:forData:timedOut:error:];
      }

      v72 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v73 = logObjectForModule(1);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_166;
      }
    }

    else
    {
      if (v67)
      {
        v77 = v8;

        goto LABEL_103;
      }

      v70 = v8;
      v74 = logObjectForModule(1);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v72 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
      v73 = logObjectForModule(1);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
LABEL_166:

        (*(*(a1 + 48) + 16))();
        v8 = v70;
        goto LABEL_152;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    goto LABEL_166;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v30 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v30 = &_os_log_default;
    v34 = &_os_log_default;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "responseData is empty!", buf, 2u);
  }

  v35 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v36 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v36 = &_os_log_default;
    v37 = &_os_log_default;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
  }

  (*(*(a1 + 48) + 16))();
LABEL_152:
}

- (void)_validateCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply
{
  serialCopy = serial;
  seqCopy = seq;
  ppidCopy = ppid;
  replyCopy = reply;
  v13 = +[NSUUID UUID];
  uUIDString = [v13 UUIDString];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v15 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478851;
    v103 = serialCopy;
    v104 = 2048;
    v105 = [serialCopy length];
    v106 = 2048;
    v107 = [seqCopy length];
    v108 = 2113;
    v109 = ppidCopy;
    v110 = 2112;
    v111 = uUIDString;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Validating certificate serial: %{private}@ (certSerial.length: %lu, issuerSeq.length: %lu, ppid: %{private}@, requestUUID: %@)", buf, 0x34u);
  }

  v17 = +[NSXPCConnection currentConnection];
  v89 = serialCopy;
  if (([v17 hasCategory:@"certificate-auth" forEntitlement:@"com.apple.MFAAuthentication"] & 1) == 0)
  {
    v19 = ppidCopy;
    v20 = v17;
    v21 = replyCopy;
    v22 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v23 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v25 = v21;
    (*(v21 + 2))(v21, 0, v22);
    goto LABEL_35;
  }

  if (!serialCopy || !seqCopy || !ppidCopy)
  {
    v19 = ppidCopy;
    v20 = v17;
    v26 = replyCopy;
    v22 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"certSerial, certIssuerSeq, ppid or requestedLocale = nil."];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v27 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v27 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    v25 = v26;
    (*(v26 + 2))(v26, 2, v22);
LABEL_35:
    v17 = v20;
    goto LABEL_36;
  }

  v86 = replyCopy;
  if (![(MFAANetwork *)self forceNetworkFailure])
  {
    v84 = uUIDString;
    v100 = @"certificates";
    v97[0] = @"cert_serial";
    v29 = [serialCopy base64EncodedStringWithOptions:0];
    v98[0] = v29;
    v97[1] = @"issuer_dn";
    v83 = seqCopy;
    v30 = [seqCopy base64EncodedStringWithOptions:0];
    v97[2] = @"ppid";
    v98[1] = v30;
    v98[2] = ppidCopy;
    v82 = ppidCopy;
    v31 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:3];
    v99 = v31;
    v32 = [NSArray arrayWithObjects:&v99 count:1];
    v101 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v34 = [NSMutableDictionary dictionaryWithDictionary:v33];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v35 = &_os_log_default;
      v38 = &_os_log_default;
    }

    uUIDString = v84;
    seqCopy = v83;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (![NSJSONSerialization isValidJSONObject:v34])
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v45 = *(gLogObjects + 8);
        v19 = v82;
      }

      else
      {
        v19 = v82;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v45 = &_os_log_default;
        v46 = &_os_log_default;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v43 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v47 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v47 = &_os_log_default;
        v48 = &_os_log_default;
      }

      uUIDString = v84;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v25 = v86;
      (v86)[2](v86, 0, v43);
      v22 = v34;
      goto LABEL_138;
    }

    v96 = 0;
    v81 = [NSJSONSerialization dataWithJSONObject:v34 options:0 error:&v96];
    v39 = v96;
    if (gLogObjects)
    {
      v40 = gNumLogObjects <= 1;
    }

    else
    {
      v40 = 1;
    }

    v41 = !v40;
    v80 = v39;
    if (v39)
    {
      v19 = v82;
      if (v41)
      {
        v42 = *(gLogObjects + 8);
        v43 = v80;
      }

      else
      {
        v43 = v39;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v42 = &_os_log_default;
        v50 = &_os_log_default;
      }

      seqCopy = v83;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v51 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v52 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v52 = &_os_log_default;
        v53 = &_os_log_default;
      }

      uUIDString = v84;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v25 = v86;
      v54 = v51;
      v86[2](v86, 0, v51);
      v22 = v34;
      goto LABEL_137;
    }

    v19 = v82;
    if (v41)
    {
      v49 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v49 = &_os_log_default;
      v55 = &_os_log_default;
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:v81 withUUID:? requestedLocale:? requestInfo:? withReply:?];
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v56 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v56 = &_os_log_default;
      v57 = &_os_log_default;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    selfCopy2 = self;
    if ([(MFAANetwork *)self disableFairPlaySAP])
    {
      v59 = logObjectForModule(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Skipping generation of FairPlay SAP signature...", buf, 2u);
      }

      v60 = 0;
      selfCopy2 = self;
      goto LABEL_121;
    }

    if ([(MFAANetwork *)self forceFairPlaySAPFailure])
    {
      v60 = [@"1234" dataUsingEncoding:4];
LABEL_121:
      v61 = logObjectForModule(1);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        _selectedAPIServer = [(MFAANetwork *)selfCopy2 _selectedAPIServer];
        *buf = 138412290;
        v103 = _selectedAPIServer;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "self._selectedAPIServer: %@", buf, 0xCu);

        v19 = v82;
      }

      v85 = v60;
      if (v60)
      {
        fairPlaySAPSession = [(MFAANetwork *)selfCopy2 fairPlaySAPSession];
        uUID = [fairPlaySAPSession UUID];
        uUIDString2 = [uUID UUIDString];
        v66 = [(MFAANetwork *)selfCopy2 _generateTokenAuthURLRequestForEndpoint:@"deviceservices/validateCertificate" sessionID:uUIDString2 signature:v60 requestUUID:uUIDString];

        v19 = v82;
      }

      else
      {
        v66 = [(MFAANetwork *)selfCopy2 _generateTokenAuthURLRequestForEndpoint:@"deviceservices/validateCertificate" sessionID:0 signature:0 requestUUID:uUIDString];
      }

      v43 = 0;
      v67 = logObjectForModule(1);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v68 = logObjectForModule(1);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v66 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v69 = logObjectForModule(1);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v70 = logObjectForModule(1);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v81 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v71 = logObjectForModule(1);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      urlSession = [(MFAANetwork *)self urlSession];
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = __60__MFAANetwork__validateCertSerial_issuerSeq_ppid_withReply___block_invoke;
      v90[3] = &unk_100080850;
      v25 = v86;
      v94 = v86;
      v90[4] = self;
      v91 = v89;
      v92 = v83;
      v93 = v19;
      v73 = [urlSession uploadTaskWithRequest:v66 fromData:v81 completionHandler:v90];

      seqCopy = v83;
      [v73 resume];

      v19 = v82;
      v22 = v34;
      v54 = v85;
      goto LABEL_137;
    }

    buf[0] = 0;
    v95 = 0;
    v60 = [(MFAANetwork *)self _fairPlaySignatureForDataSync:v81 timedOut:buf error:&v95];
    v74 = v95;
    v75 = v74;
    if (buf[0] == 1)
    {
      v54 = v60;
      v76 = logObjectForModule(1);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _fairPlaySignatureForDataSync:timedOut:error:];
      }

      v88 = v75;

      v77 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v78 = logObjectForModule(1);
      v43 = 0;
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (v60 && !v74)
      {
        goto LABEL_121;
      }

      v54 = v60;
      v79 = logObjectForModule(1);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v88 = v75;

      v77 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v78 = logObjectForModule(1);
      v43 = 0;
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
LABEL_150:
        v25 = v86;
        v22 = v34;

        (v25)[2](v25, 0, v77);
        seqCopy = v83;
        uUIDString = v84;
LABEL_137:

LABEL_138:
        goto LABEL_36;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    goto LABEL_150;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v18 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v18 = &_os_log_default;
    v36 = &_os_log_default;
  }

  v19 = ppidCopy;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Forcing network failure...", buf, 2u);
  }

  v22 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-5];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v37 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v37 = &_os_log_default;
    v44 = &_os_log_default;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
  }

  v25 = v86;
  (v86)[2](v86, 0, v22);
LABEL_36:
}

void __60__MFAANetwork__validateCertSerial_issuerSeq_ppid_withReply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
    }

    v16 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-5];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v17 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_189;
  }

  if (v12)
  {
    v14 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v20 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
  }

  if ([v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v22 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v22 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10();
    }
  }

  v16 = v8;
  v24 = [v16 statusCode];
  if (v24 == 200)
  {
LABEL_53:
    if (!v7 || ![v7 length])
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v28 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v28 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "responseData is empty!", buf, 2u);
      }

      v27 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v37 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v37 = &_os_log_default;
        v38 = &_os_log_default;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      (*(*(a1 + 64) + 16))();
      goto LABEL_97;
    }

    v26 = &selRef_componentsSeparatedByCharactersInSet_;
    if ([*(a1 + 32) disableFairPlaySAP] & 1) != 0 || (objc_msgSend(*(a1 + 32), "bypassFairPlaySAPSignatureVerification"))
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v27 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v27 = &_os_log_default;
        v39 = &_os_log_default;
      }

      v116 = a1;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Bypassing verification of FairPlay SAP signature from server...", buf, 2u);
      }

LABEL_103:

      v117 = 0;
      v40 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v117];
      v41 = v117;
      v42 = v41;
      v43 = v26[362];
      if (v43)
      {
        v44 = gNumLogObjects <= 1;
      }

      else
      {
        v44 = 1;
      }

      v45 = !v44;
      if (v41)
      {
        v46 = v41;
        if (v45)
        {
          v47 = v40;
          v48 = *(v43 + 1);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v47 = v40;
          v48 = &_os_log_default;
          v50 = &_os_log_default;
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_21();
        }

        v51 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v52 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v52 = &_os_log_default;
          v53 = &_os_log_default;
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
        }

        (*(*(v116 + 64) + 16))();
        v40 = v47;
        v42 = v46;
        goto LABEL_188;
      }

      if (v45)
      {
        v49 = *(v43 + 1);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v49 = &_os_log_default;
        v54 = &_os_log_default;
      }

      v115 = v8;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_25();
      }

      v51 = [v40 objectForKeyedSubscript:@"certificates"];
      if (!v51)
      {
        goto LABEL_170;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v51 count] != 1)
      {
        goto LABEL_170;
      }

      v55 = [v51 objectAtIndexedSubscript:0];
      v56 = [v55 objectForKeyedSubscript:@"cert_serial"];
      if (v56)
      {
        v113 = v56;
        v57 = [v51 objectAtIndexedSubscript:0];
        v58 = [v57 objectForKeyedSubscript:@"cert_serial"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v109 = v58;
          v111 = v57;
          v107 = [v51 objectAtIndexedSubscript:0];
          v59 = [v107 objectForKeyedSubscript:@"cert_code"];
          if (v59)
          {
            v106 = v59;
            v60 = [v51 objectAtIndexedSubscript:0];
            v61 = [v60 objectForKeyedSubscript:@"cert_code"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v62 = logObjectForModule(2);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                __60__MFAANetwork__validateCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_26();
              }

              v63 = [NSData alloc];
              v64 = [v51 objectAtIndexedSubscript:0];
              v65 = [v64 objectForKeyedSubscript:@"cert_serial"];
              v66 = [v63 initWithBase64EncodedString:v65 options:0];

              v67 = logObjectForModule(2);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
              {
                __60__MFAANetwork__validateCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_27();
              }

              v114 = v66;
              if (([v66 isEqualToData:*(v116 + 40)] & 1) == 0)
              {
                v88 = logObjectForModule(1);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  __60__MFAANetwork__validateCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_28();
                }

                v89 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
                v90 = logObjectForModule(1);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
                }

                (*(*(v116 + 64) + 16))();
                goto LABEL_215;
              }

              v68 = [v51 objectAtIndexedSubscript:0];
              v69 = [v68 objectForKeyedSubscript:@"cert_code"];
              v70 = [v69 intValue];

              v103 = v40;
              v104 = v16;
              if (v70 <= 1002)
              {
                if (v70 == 1000)
                {
                  v93 = 0;
                  v91 = 1;
                  v92 = 1;
                  goto LABEL_208;
                }

                if (v70 == 1001 || v70 == 1002)
                {
                  goto LABEL_198;
                }
              }

              else
              {
                if (v70 <= 1004)
                {
                  if (v70 == 1003)
                  {
                    v93 = 0;
                    v91 = 0;
                    v92 = 2;
                    goto LABEL_208;
                  }

LABEL_198:
                  v91 = 0;
                  v92 = 0;
                  v93 = 1;
LABEL_208:
                  v97 = v116;
                  v98 = logObjectForModule(1);
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                  {
                    v108 = [v51 objectAtIndexedSubscript:0];
                    v112 = v93;
                    v110 = v91;
                    v99 = [v108 objectForKeyedSubscript:@"cert_code"];
                    v100 = [v51 objectAtIndexedSubscript:0];
                    v101 = [v100 objectForKeyedSubscript:@"ppid_code"];
                    *buf = 67109634;
                    v120 = v92;
                    v121 = 2112;
                    v122 = v99;
                    v123 = 2112;
                    v124 = v101;
                    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "certStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d, certCode: %@, ppidCode: %@", buf, 0x1Cu);

                    v97 = v116;
                    v91 = v110;
                    v93 = v112;
                  }

                  if (v93 | v91)
                  {
                    v102 = 0;
                  }

                  else
                  {
                    v102 = v92;
                  }

                  [*(v97 + 32) _setCachedStatusForCertSerial:*(v97 + 40) issuerSeq:*(v97 + 48) ppid:*(v97 + 56) certStatus:v102];
                  (*(*(v97 + 64) + 16))();
LABEL_214:
                  v40 = v103;
                  v16 = v104;
LABEL_215:
                  v87 = v114;
LABEL_187:

                  v8 = v115;
LABEL_188:

                  goto LABEL_189;
                }

                if (v70 == 1005)
                {
                  v93 = 0;
                  v91 = 0;
                  v92 = 4;
                  goto LABEL_208;
                }

                if (v70 == 1006)
                {
                  v93 = 0;
                  v91 = 0;
                  v92 = 3;
                  goto LABEL_208;
                }
              }

              v94 = [NSString stringWithFormat:@"Invalid cert code returned from server: %d", v70];
              v95 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6 failureReason:v94];
              v96 = logObjectForModule(1);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
              }

              (*(*(v116 + 64) + 16))();
              goto LABEL_214;
            }

LABEL_170:
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v82 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [MFAANetwork _init];
              }

              v82 = &_os_log_default;
              v83 = &_os_log_default;
            }

            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234_cold_29();
            }

            v84 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v85 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [MFAANetwork _init];
              }

              v85 = &_os_log_default;
              v86 = &_os_log_default;
            }

            v87 = v84;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
            }

            (*(*(v116 + 64) + 16))();
            goto LABEL_187;
          }
        }
      }

      goto LABEL_170;
    }

    if ([*(a1 + 32) forceFairPlaySAPFailure])
    {
      v27 = [@"1234" dataUsingEncoding:4];
    }

    else
    {
      v71 = [v16 allHeaderFields];
      v72 = [v71 objectForKeyedSubscript:@"signature"];

      if (v72)
      {
        v27 = [[NSData alloc] initWithBase64EncodedString:v72 options:0];
      }

      else
      {
        v27 = 0;
      }
    }

    buf[0] = 0;
    v73 = *(a1 + 32);
    v118 = 0;
    v74 = [v73 _verifyFairPlaySignatureSync:v27 forData:v7 timedOut:buf error:&v118];
    v75 = v118;
    v76 = v75;
    if (buf[0] == 1)
    {
      v77 = a1;
      v78 = logObjectForModule(1);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _verifyFairPlaySignatureSync:forData:timedOut:error:];
      }

      v79 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
      v80 = logObjectForModule(1);
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_166;
      }
    }

    else
    {
      if (v74)
      {
        v116 = a1;

        v26 = &selRef_componentsSeparatedByCharactersInSet_;
        goto LABEL_103;
      }

      v77 = a1;
      v81 = logObjectForModule(1);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      v79 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-6];
      v80 = logObjectForModule(1);
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_166;
      }
    }

    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
LABEL_166:

    (*(*(v77 + 64) + 16))();
LABEL_97:

    goto LABEL_189;
  }

  if (v24 == 401)
  {
    v29 = -4;
    goto LABEL_65;
  }

  if (v24 != 400)
  {
    v29 = -6;
LABEL_65:
    v25 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:v29];
    if (!v25)
    {
      goto LABEL_53;
    }

    goto LABEL_66;
  }

  v25 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"The server has determined that the data provided was invalid."];
  if (!v25)
  {
    goto LABEL_53;
  }

LABEL_66:
  v30 = v16;
  v31 = a1;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v32 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v32 = &_os_log_default;
    v33 = &_os_log_default;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_12();
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v34 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v34 = &_os_log_default;
    v35 = &_os_log_default;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
  }

  (*(*(v31 + 64) + 16))();
  v16 = v30;
LABEL_189:
}

- (void)_getCachedStatusForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid withReply:(id)reply
{
  serialCopy = serial;
  seqCopy = seq;
  ppidCopy = ppid;
  replyCopy = reply;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 2;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478595;
    *&buf[4] = serialCopy;
    *&buf[12] = 2048;
    *&buf[14] = [serialCopy length];
    *&buf[22] = 2048;
    v35 = [seqCopy length];
    v36 = 2113;
    v37 = ppidCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Getting cached status for cert serial: %{private}@ (certSerial.length: %lu, issuerSeq.length: %lu, ppid: %{private}@)", buf, 0x2Au);
  }

  v17 = +[NSXPCConnection currentConnection];
  if (([v17 hasCategory:@"certificate-auth" forEntitlement:@"com.apple.MFAAuthentication"] & 1) == 0)
  {
    v23 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v24 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v24 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v23);
    }

    goto LABEL_39;
  }

  if (!serialCopy || !seqCopy || !ppidCopy)
  {
    v23 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"certSerial, certIssuerSeq, or ppid = nil."];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v25 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v25 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (replyCopy)
    {
      v28 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
      replyCopy[2](replyCopy, 0, v28);
    }

LABEL_39:

    goto LABEL_40;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v35) = 0;
  v18 = [seqCopy base64EncodedStringWithOptions:0];
  v19 = [serialCopy base64EncodedStringWithOptions:0];
  userDefaultsQueue = [(MFAANetwork *)self userDefaultsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__MFAANetwork__getCachedStatusForCertSerial_issuerSeq_ppid_withReply___block_invoke;
  block[3] = &unk_100080878;
  block[4] = self;
  v21 = v18;
  v30 = v21;
  v22 = v19;
  v31 = v22;
  v33 = buf;
  v32 = serialCopy;
  dispatch_sync(userDefaultsQueue, block);

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(*&buf[8] + 24), 0);
  }

  _Block_object_dispose(buf, 8);
LABEL_40:
}

void __70__MFAANetwork__getCachedStatusForCertSerial_issuerSeq_ppid_withReply___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) certStatusCacheVersion];
    v25 = 138412290;
    *v26 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "certStatusCacheVersion: %@", &v25, 0xCu);
  }

  v6 = [*(a1 + 32) certStatusCache];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v7 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __70__MFAANetwork__getCachedStatusForCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_3();
  }

  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:*(a1 + 40)];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];

    v11 = [v10 objectForKeyedSubscript:@"Status"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v10 objectForKeyedSubscript:@"Status"];
      *(*(*(a1 + 64) + 8) + 24) = [v13 intValue];

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v14 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v14 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = *(*(*(a1 + 64) + 8) + 24);
        v19 = [v10 objectForKeyedSubscript:@"Timestamp"];
        v20 = *(a1 + 56);
        v25 = 67109635;
        *v26 = v18;
        *&v26[4] = 2112;
        *&v26[6] = v19;
        v27 = 2113;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Cert serial found in local cache! (cachedCertStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d, timestamp: %@, certSerial: %{private}@)", &v25, 0x1Cu);
      }

      if (*(*(*(a1 + 64) + 8) + 24) >= 5u)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v21 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v21 = &_os_log_default;
          v24 = &_os_log_default;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __70__MFAANetwork__getCachedStatusForCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_7();
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v15 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v15 = &_os_log_default;
        v22 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 56);
        v25 = 138477827;
        *v26 = v23;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Cert serial not found in local cache... (certSerial: %{private}@)", &v25, 0xCu);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v10 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Local cache doesn't exist!", &v25, 2u);
    }
  }
}

- (void)_setCachedStatusForCertSerial:(id)serial issuerSeq:(id)seq ppid:(id)ppid certStatus:(int)status
{
  serialCopy = serial;
  seqCopy = seq;
  ppidCopy = ppid;
  v13 = ppidCopy;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  if (serialCopy && seqCopy && ppidCopy)
  {
    v14 = [seqCopy base64EncodedStringWithOptions:0];
    v15 = [serialCopy base64EncodedStringWithOptions:0];
    userDefaultsQueue = [(MFAANetwork *)self userDefaultsQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __71__MFAANetwork__setCachedStatusForCertSerial_issuerSeq_ppid_certStatus___block_invoke;
    v22[3] = &unk_1000808A0;
    v22[4] = self;
    statusCopy = status;
    v23 = serialCopy;
    v24 = v14;
    v25 = v15;
    v26 = &v28;
    v17 = v15;
    v18 = v14;
    dispatch_sync(userDefaultsQueue, v22);
  }

  else
  {
    v19 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
    v18 = v29[5];
    v29[5] = v19;
  }

  if (v29[5])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v20 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v20 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _setCachedStatusForCertSerial:issuerSeq:ppid:certStatus:];
    }
  }

  _Block_object_dispose(&v28, 8);
}

void __71__MFAANetwork__setCachedStatusForCertSerial_issuerSeq_ppid_certStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) certStatusCache];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Local cert cache doesn't exist, creating it...", &v31, 2u);
    }

    v3 = +[NSMutableDictionary dictionary];
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (*(a1 + 72))
  {
    if (v8)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v31 = 138477827;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Adding cert status to cache... (certSerial: %{private}@)", &v31, 0xCu);
    }

    v13 = [v3 objectForKeyedSubscript:*(a1 + 48)];
    v14 = [v13 mutableCopy];

    v15 = [v3 objectForKeyedSubscript:*(a1 + 48)];
    v16 = [v15 objectForKeyedSubscript:*(a1 + 56)];
    v17 = [v16 mutableCopy];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v18 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v18 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __71__MFAANetwork__setCachedStatusForCertSerial_issuerSeq_ppid_certStatus___block_invoke_cold_4();
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v20 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v20 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __71__MFAANetwork__setCachedStatusForCertSerial_issuerSeq_ppid_certStatus___block_invoke_cold_6();
    }

    if (v14)
    {
      if (v17)
      {
LABEL_47:
        v22 = [NSNumber numberWithUnsignedInt:*(a1 + 72)];
        [v17 setObject:v22 forKeyedSubscript:@"Status"];

        v23 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTime()];
        [v17 setObject:v23 forKeyedSubscript:@"Timestamp"];

        [v14 setObject:v17 forKeyedSubscript:*(a1 + 56)];
        [v3 setObject:v14 forKeyedSubscript:*(a1 + 48)];

        goto LABEL_57;
      }
    }

    else
    {
      v14 = +[NSMutableDictionary dictionary];
      if (v17)
      {
        goto LABEL_47;
      }
    }

    v17 = +[NSMutableDictionary dictionary];
    goto LABEL_47;
  }

  if (v8)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v10 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v25 = *(a1 + 40);
    v31 = 138477827;
    v32 = v25;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Removing cert status from cache... (certSerial: %{private}@)", &v31, 0xCu);
  }

  v26 = [v3 objectForKeyedSubscript:*(a1 + 48)];
  v14 = [v26 mutableCopy];

  [v14 removeObjectForKey:*(a1 + 56)];
  [v3 setObject:v14 forKeyedSubscript:*(a1 + 48)];
  if (![v14 count])
  {
    [v3 removeObjectForKey:*(a1 + 48)];
  }

LABEL_57:

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) setCertStatusCache:v3];
    [*(a1 + 32) setCertStatusCacheVersion:&off_100087830];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v27 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v27 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Updated local cert cache!", &v31, 2u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v29 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __70__MFAANetwork__getCachedStatusForCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_3();
    }
  }
}

- (void)_addPairingWithToken:(id)token withReply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    *&buf[4] = tokenCopy;
    *&buf[12] = 2048;
    *&buf[14] = [tokenCopy length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding pairing with token: %{private}@ (pairingToken.length: %lu)", buf, 0x16u);
  }

  v11 = +[NSXPCConnection currentConnection];
  if ([v11 hasCategory:@"pairing" forEntitlement:@"com.apple.MFAAuthentication"])
  {
    if (tokenCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [tokenCopy base64EncodedStringWithOptions:0];
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v13 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pairingTokenBase64: %{private}@", buf, 0xCu);
      }

      if (v12)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v31 = __Block_byref_object_copy_;
        v32 = __Block_byref_object_dispose_;
        v33 = 0;
        userDefaultsQueue = [(MFAANetwork *)self userDefaultsQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __46__MFAANetwork__addPairingWithToken_withReply___block_invoke;
        block[3] = &unk_1000808C8;
        block[4] = self;
        v12 = v12;
        v28 = v12;
        v29 = buf;
        dispatch_sync(userDefaultsQueue, block);

        if (*(*&buf[8] + 40))
        {
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v21 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _init];
            }

            v21 = &_os_log_default;
            v24 = &_os_log_default;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _setCachedStatusForCertSerial:issuerSeq:ppid:certStatus:];
          }
        }

        if (replyCopy)
        {
          replyCopy[2](replyCopy, *(*&buf[8] + 40));
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v22 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-4 description:@"Could not Base64 encode pairing token."];
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v23 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v23 = &_os_log_default;
          v25 = &_os_log_default;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
        }

        if (replyCopy)
        {
          v26 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
          (replyCopy)[2](replyCopy, v26);
        }
      }
    }

    else
    {
      v12 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-3 description:@"Invalid pairingToken provided."];
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v15 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if (replyCopy)
      {
        v18 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
        (replyCopy)[2](replyCopy, v18);
      }
    }
  }

  else
  {
    v12 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v14 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (replyCopy)
    {
      (replyCopy)[2](replyCopy, v12);
    }
  }
}

void __46__MFAANetwork__addPairingWithToken_withReply___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) pairingTableVersion];
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "pairingTableVersion: %@", &v21, 0xCu);
  }

  v6 = [*(a1 + 32) pairingTable];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Pairing table doesn't exist, creating it...", &v21, 2u);
    }

    v7 = +[NSMutableDictionary dictionary];
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v10 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v21 = 138477827;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Adding pairing token to table... (pairingTokenBase64: %{private}@)", &v21, 0xCu);
  }

  v13 = +[NSMutableDictionary dictionary];
  v14 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTime()];
  [v13 setObject:v14 forKeyedSubscript:@"Timestamp"];

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v15 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __46__MFAANetwork__addPairingWithToken_withReply___block_invoke_cold_5();
  }

  [v7 setObject:v13 forKeyedSubscript:*(a1 + 40)];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) setPairingTable:v7];
    [*(a1 + 32) setPairingTableVersion:&off_100087848];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v17 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Updated pairing table!", &v21, 2u);
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v19 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __46__MFAANetwork__addPairingWithToken_withReply___block_invoke_cold_8();
    }
  }
}

- (void)_removePairingWithToken:(id)token withReply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    *&buf[4] = tokenCopy;
    *&buf[12] = 2048;
    *&buf[14] = [tokenCopy length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing pairing with token: %{private}@ (pairingToken.length: %lu)", buf, 0x16u);
  }

  v11 = +[NSXPCConnection currentConnection];
  if ([v11 hasCategory:@"pairing" forEntitlement:@"com.apple.MFAAuthentication"])
  {
    if (tokenCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [tokenCopy base64EncodedStringWithOptions:0];
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v13 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pairingTokenBase64: %{private}@", buf, 0xCu);
      }

      if (v12)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v32 = __Block_byref_object_copy_;
        v33 = __Block_byref_object_dispose_;
        v34 = 0;
        userDefaultsQueue = [(MFAANetwork *)self userDefaultsQueue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = __49__MFAANetwork__removePairingWithToken_withReply___block_invoke;
        v27[3] = &unk_1000808F0;
        v27[4] = self;
        v28 = tokenCopy;
        v12 = v12;
        v29 = v12;
        v30 = buf;
        dispatch_sync(userDefaultsQueue, v27);

        if (*(*&buf[8] + 40))
        {
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v21 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _init];
            }

            v21 = &_os_log_default;
            v24 = &_os_log_default;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _setCachedStatusForCertSerial:issuerSeq:ppid:certStatus:];
          }
        }

        if (replyCopy)
        {
          replyCopy[2](replyCopy, *(*&buf[8] + 40));
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v22 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-4 description:@"Could not Base64 encode pairing token."];
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v23 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v23 = &_os_log_default;
          v25 = &_os_log_default;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
        }

        if (replyCopy)
        {
          v26 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
          (replyCopy)[2](replyCopy, v26);
        }
      }
    }

    else
    {
      v12 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-3 description:@"Invalid pairingToken provided."];
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v15 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if (replyCopy)
      {
        v18 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
        (replyCopy)[2](replyCopy, v18);
      }
    }
  }

  else
  {
    v12 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v14 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (replyCopy)
    {
      (replyCopy)[2](replyCopy, v12);
    }
  }
}

void __49__MFAANetwork__removePairingWithToken_withReply___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) pairingTableVersion];
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "pairingTableVersion: %@", &v20, 0xCu);
  }

  v6 = [*(a1 + 32) pairingTable];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v9 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pairing table doesn't exist!", &v20, 2u);
    }

    goto LABEL_53;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v8 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v8 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 40);
    v12 = [v11 length];
    v13 = *(a1 + 48);
    v20 = 138478339;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 2113;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing pairing token from table... (pairingToken: %{private}@, pairingToken.length: %lu, pairingTokenBase64: %{private}@)", &v20, 0x20u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v14 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __49__MFAANetwork__removePairingWithToken_withReply___block_invoke_cold_4(a1, v7);
  }

  [v7 removeObjectForKey:*(a1 + 48)];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 32) setPairingTable:v7];
    [*(a1 + 32) setPairingTableVersion:&off_100087848];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v16 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v16 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Updated pairing table!", &v20, 2u);
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v9 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __46__MFAANetwork__addPairingWithToken_withReply___block_invoke_cold_8();
    }

LABEL_53:
  }
}

- (void)_verifyPairingWithToken:(id)token withReply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    *&buf[4] = tokenCopy;
    *&buf[12] = 2048;
    *&buf[14] = [tokenCopy length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Verifying pairing status with token: %{private}@ (pairingToken.length: %lu)", buf, 0x16u);
  }

  v11 = +[NSXPCConnection currentConnection];
  if ([v11 hasCategory:@"pairing" forEntitlement:@"com.apple.MFAAuthentication"])
  {
    if (tokenCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [tokenCopy base64EncodedStringWithOptions:0];
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v13 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "pairingTokenBase64: %{private}@", buf, 0xCu);
      }

      if (v12)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v39 = 0;
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 0;
        userDefaultsQueue = [(MFAANetwork *)self userDefaultsQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __49__MFAANetwork__verifyPairingWithToken_withReply___block_invoke;
        block[3] = &unk_100080918;
        block[4] = self;
        v12 = v12;
        v30 = v12;
        v27 = tokenCopy;
        v31 = v27;
        v32 = buf;
        v33 = &v34;
        dispatch_sync(userDefaultsQueue, block);

        if (*(v35 + 24) == 1)
        {
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v21 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _init];
            }

            v21 = &_os_log_default;
            v26 = &_os_log_default;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Pairing token is expired - removing it from pairing table...", v28, 2u);
          }

          [(MFAANetwork *)self _removePairingWithToken:v27 withReply:0];
        }

        if (replyCopy)
        {
          (*(replyCopy + 2))(replyCopy, *(*&buf[8] + 24), 0);
        }

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v22 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-4 description:@"Could not Base64 encode pairing token."];
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v23 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v23 = &_os_log_default;
          v24 = &_os_log_default;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
        }

        if (replyCopy)
        {
          v25 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
          (*(replyCopy + 2))(replyCopy, 0, v25);
        }
      }
    }

    else
    {
      v12 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-3 description:@"Invalid pairingToken provided."];
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v15 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if (replyCopy)
      {
        v18 = [NSError MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
        (*(replyCopy + 2))(replyCopy, 0, v18);
      }
    }
  }

  else
  {
    v12 = [NSError MFAA_errorWithDomain:@"MFAAPairingManagerErrorDomain" code:-2];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v14 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0, v12);
    }
  }
}

void __49__MFAANetwork__verifyPairingWithToken_withReply___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) pairingTableVersion];
    v41 = 138412290;
    v42 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "pairingTableVersion: %@", &v41, 0xCu);
  }

  v6 = [*(a1 + 32) pairingTable];
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__MFAANetwork__addPairingWithToken_withReply___block_invoke_cold_8();
  }

  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:*(a1 + 40)];
    v10 = v9;
    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (v9)
    {
      if (v12)
      {
        v13 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v13 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v10 objectForKeyedSubscript:@"Timestamp"];
        v17 = *(a1 + 48);
        v18 = [v17 length];
        v19 = *(a1 + 40);
        v41 = 138413059;
        v42 = v16;
        v43 = 2113;
        v44 = v17;
        v45 = 2048;
        v46 = v18;
        v47 = 2113;
        v48 = v19;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Pairing token found in pairing table! (timestamp: %@, pairingToken: %{private}@, pairingToken.length: %lu, pairingTokenBase64: %{private}@)", &v41, 0x2Au);
      }

      v20 = [v10 objectForKeyedSubscript:@"Timestamp"];
      v21 = [v20 unsignedLongLongValue];

      CurrentUnixTime = systemInfo_getCurrentUnixTime();
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v23 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v23 = &_os_log_default;
        v24 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v41 = 134218496;
        v42 = v21;
        v43 = 2048;
        v44 = CurrentUnixTime;
        v45 = 2048;
        v46 = CurrentUnixTime - v21;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "pairingEntryTimestamp: %llu, currentTimestamp: %llu, delta: %lld", &v41, 0x20u);
      }

      if (CurrentUnixTime - v21 >= [*(a1 + 32) pairingTokenExpirationS])
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v25 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v25 = &_os_log_default;
          v31 = &_os_log_default;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Pairing token is valid - updating timestamp...", &v41, 2u);
        }

        v32 = [v6 mutableCopy];
        v33 = [v10 mutableCopy];
        v34 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTime()];
        [v33 setObject:v34 forKeyedSubscript:@"Timestamp"];

        [v32 setObject:v33 forKeyedSubscript:*(a1 + 40)];
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v35 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v35 = &_os_log_default;
          v36 = &_os_log_default;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v41 = 138477827;
          v42 = v33;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "pairingEntryMutable: %{private}@", &v41, 0xCu);
        }

        [*(a1 + 32) setPairingTable:v32];
        [*(a1 + 32) setPairingTableVersion:&off_100087848];
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v37 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v37 = &_os_log_default;
          v38 = &_os_log_default;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          LOWORD(v41) = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Updated pairing table!", &v41, 2u);
        }

        if (gLogObjects && gNumLogObjects >= 4)
        {
          v39 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v39 = &_os_log_default;
          v40 = &_os_log_default;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          __49__MFAANetwork__verifyPairingWithToken_withReply___block_invoke_cold_10();
        }
      }
    }

    else
    {
      if (v12)
      {
        v14 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v14 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 48);
        v29 = [v28 length];
        v30 = *(a1 + 40);
        v41 = 138478339;
        v42 = v28;
        v43 = 2048;
        v44 = v29;
        v45 = 2113;
        v46 = v30;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Pairing token not found in pairing table! (pairingToken: %{private}@, pairingToken.length: %lu, pairingTokenBase64: %{private}@)", &v41, 0x20u);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v10 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Pairing table doesn't exist!", &v41, 2u);
    }
  }
}

- (void)session:(id)session requestCertificateWithCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting certificate for FairPlay SAP session...", buf, 2u);
  }

  if (handlerCopy)
  {
    v10 = [NSString stringWithFormat:@"%@/%@", @"https://static.ips.apple.com", @"deviceservices/setup.crt"];
    v11 = [NSURL URLWithString:v10];

    v12 = [NSURLRequest requestWithURL:v11 cachePolicy:0 timeoutInterval:60.0];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MFAANetwork _requestMetadataForToken:v12 withUUID:? requestedLocale:? requestInfo:? withReply:?];
    }

    v17 = +[NSURLSession sharedSession];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke;
    v19[3] = &unk_1000807D8;
    v20 = handlerCopy;
    v18 = [v17 dataTaskWithRequest:v12 completionHandler:v19];

    [v18 resume];
  }
}

void __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v9)
  {
    if (v12)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v14 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v20 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
    }

    if ([v8 statusCode] == 200)
    {
      if (v7 && [v7 length])
      {
        (*(*(a1 + 32) + 16))();
        goto LABEL_54;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v23 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v23 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke_cold_10();
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v22 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v22 = &_os_log_default;
        v24 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke_cold_8();
      }
    }

    v26 = *(a1 + 32);
    v27 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-6 userInfo:0];
    (*(v26 + 16))(v26, 0, v27);

    goto LABEL_54;
  }

  if (v12)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v13 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
  }

  v16 = *(a1 + 32);
  v17 = [v10 userInfo];
  v18 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-5 userInfo:v17];
  (*(v16 + 16))(v16, 0, v18);

LABEL_54:
}

- (void)session:(id)session requestHandshakeWithServer:(id)server completionHandler:(id)handler
{
  sessionCopy = session;
  serverCopy = server;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requesting handshake for FairPlay SAP session...", buf, 2u);
  }

  if (handlerCopy)
  {
    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (serverCopy)
    {
      if (v15)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v16 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        _selectedFairPlaySAPServer = [(MFAANetwork *)self _selectedFairPlaySAPServer];
        *buf = 138412290;
        v62 = _selectedFairPlaySAPServer;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "self._selectedFairPlaySAPServer: %@", buf, 0xCu);
      }

      selfCopy = self;
      _selectedFairPlaySAPServer2 = [(MFAANetwork *)self _selectedFairPlaySAPServer];
      v21 = [NSString stringWithFormat:@"%@/%@", _selectedFairPlaySAPServer2, @"deviceservices/sapSession"];
      v22 = [NSURL URLWithString:v21];

      v55 = v22;
      v23 = [NSMutableURLRequest requestWithURL:v22 cachePolicy:0 timeoutInterval:60.0];
      [v23 setHTTPMethod:@"POST"];
      [v23 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      [v23 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
      [v23 setValue:@"1.0" forHTTPHeaderField:@"protocol-version"];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v24 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v24 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v26 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v26 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:v23 withUUID:? requestedLocale:? requestInfo:? withReply:?];
      }

      v59[0] = @"session-request";
      v28 = [serverCopy base64EncodedStringWithOptions:0];
      v59[1] = @"session-identifier";
      v60[0] = v28;
      v29 = sessionCopy;
      uUID = [sessionCopy UUID];
      uUIDString = [uUID UUIDString];
      v60[1] = uUIDString;
      v32 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v33 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v33 = &_os_log_default;
        v34 = &_os_log_default;
      }

      sessionCopy = v29;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
      }

      if ([NSJSONSerialization isValidJSONObject:v32])
      {
        v58 = 0;
        v53 = [NSJSONSerialization dataWithJSONObject:v32 options:0 error:&v58];
        v35 = v58;
        v36 = v35;
        if (gLogObjects)
        {
          v37 = gNumLogObjects <= 0;
        }

        else
        {
          v37 = 1;
        }

        v38 = !v37;
        if (v35)
        {
          if (v38)
          {
            v39 = *gLogObjects;
            v40 = v55;
          }

          else
          {
            v40 = v55;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _init];
            }

            v39 = &_os_log_default;
            v45 = &_os_log_default;
          }

          sessionCopy = v29;
          v46 = v53;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
          }

          v47 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-4 userInfo:0];
          handlerCopy[2](handlerCopy, 0, v47);
        }

        else
        {
          if (v38)
          {
            v44 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _init];
            }

            v44 = &_os_log_default;
            v48 = &_os_log_default;
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            [MFAANetwork _requestMetadataForToken:v53 withUUID:? requestedLocale:? requestInfo:? withReply:?];
          }

          if (gLogObjects && gNumLogObjects >= 1)
          {
            v49 = *gLogObjects;
            v40 = v55;
          }

          else
          {
            v40 = v55;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [MFAANetwork _init];
            }

            v49 = &_os_log_default;
            v50 = &_os_log_default;
          }

          v46 = v53;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
          }

          v51 = +[NSURLSession sharedSession];
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = __68__MFAANetwork_session_requestHandshakeWithServer_completionHandler___block_invoke;
          v56[3] = &unk_100080788;
          v56[4] = selfCopy;
          v57 = handlerCopy;
          v52 = [v51 uploadTaskWithRequest:v23 fromData:v53 completionHandler:v56];

          [v52 resume];
          v47 = v57;
          sessionCopy = v29;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v41 = *gLogObjects;
          v40 = v55;
        }

        else
        {
          v40 = v55;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [MFAANetwork _init];
          }

          v41 = &_os_log_default;
          v43 = &_os_log_default;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:];
        }

        v36 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-4 userInfo:0];
        handlerCopy[2](handlerCopy, 0, v36);
      }
    }

    else
    {
      if (v15)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MFAANetwork _init];
        }

        v17 = &_os_log_default;
        v42 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork session:requestHandshakeWithServer:completionHandler:];
      }

      v40 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-3 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v40);
    }
  }
}

void __68__MFAANetwork_session_requestHandshakeWithServer_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v13 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2();
    }

    v16 = *(a1 + 40);
    v17 = [v10 userInfo];
    v18 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-5 userInfo:v17];
    (*(v16 + 16))(v16, 0, v18);
    goto LABEL_18;
  }

  if (v12)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v14 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_6();
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(v7);
  }

  if ([v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v22 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v22 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10();
    }
  }

  if ([v8 statusCode] != 200)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v28 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v28 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke_cold_8();
    }

    goto LABEL_72;
  }

  if (!v7 || ![v7 length])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v29 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v29 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke_cold_10();
    }

LABEL_72:
    v32 = *(a1 + 40);
    v17 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-6 userInfo:0];
    (*(v32 + 16))(v32, 0, v17);
    goto LABEL_73;
  }

  v48 = 0;
  v18 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v48];
  v24 = v48;
  v17 = v24;
  if (gLogObjects)
  {
    v25 = gNumLogObjects <= 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  if (v24)
  {
    if (v26)
    {
      v27 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MFAANetwork _init];
      }

      v27 = &_os_log_default;
      v34 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_21();
    }

LABEL_92:

    v47 = *(a1 + 40);
    v41 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:-6 userInfo:0];
    v46 = *(v47 + 16);
    goto LABEL_93;
  }

  if (v26)
  {
    v33 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v33 = &_os_log_default;
    v35 = &_os_log_default;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_25();
  }

  v36 = [v18 objectForKeyedSubscript:@"session-info"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_90:
    v27 = logObjectForModule(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_31();
    }

    goto LABEL_92;
  }

  v37 = [v18 objectForKeyedSubscript:@"session-validity"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_90;
  }

  v39 = [NSData alloc];
  v40 = [v18 objectForKeyedSubscript:@"session-info"];
  v41 = [v39 initWithBase64EncodedString:v40 options:0];

  v42 = [v18 objectForKeyedSubscript:@"session-validity"];
  [v42 doubleValue];
  v44 = v43;
  v45 = [*(a1 + 32) fairPlaySAPSession];
  [v45 setTTL:v44];

  v46 = *(*(a1 + 40) + 16);
LABEL_93:
  v46();

LABEL_18:
LABEL_73:
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __29__MFAANetwork_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __29__MFAANetwork_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

- (void)_init
{
  v1 = [*self description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_selectedFairPlaySAPServer
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __38__MFAANetwork__openFairPlaySAPSession__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fairPlaySignatureForDataSync:timedOut:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyFairPlaySignatureSync:forData:timedOut:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:.cold.13()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:.cold.15()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_requestMetadataForToken:(void *)a1 withUUID:requestedLocale:requestInfo:withReply:.cold.17(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:.cold.18()
{
  OUTLINED_FUNCTION_8();
  v0 = [NSString alloc];
  v2 = OUTLINED_FUNCTION_11(v0, v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_requestMetadataForToken:withUUID:requestedLocale:requestInfo:withReply:.cold.19()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_requestMetadataForToken:(void *)a1 withUUID:requestedLocale:requestInfo:withReply:.cold.24(void *a1)
{
  v1 = [a1 allHTTPHeaderFields];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_8(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_10()
{
  OUTLINED_FUNCTION_8();
  v0 = [NSString alloc];
  v2 = OUTLINED_FUNCTION_11(v0, v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_12()
{
  OUTLINED_FUNCTION_9();
  v0 = [NSString alloc];
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&_mh_execute_header, v3, v4, "Server responded with invalid HTTP status code: %ld!\nresponseData (string): %@", v5, v6, v7, v8, v9);
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_21()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __87__MFAANetwork__requestMetadataForToken_withUUID_requestedLocale_requestInfo_withReply___block_invoke_207_cold_28()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_28()
{
  OUTLINED_FUNCTION_8();
  [v0 length];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_29()
{
  OUTLINED_FUNCTION_8();
  [v0 count];
  OUTLINED_FUNCTION_5(&_mh_execute_header, v1, v2, "Invalid token array received from server - newTokenArray: %{private}@, newTokenArray.count: %lu!", v3, v4, v5, v6, 3u);
}

void __61__MFAANetwork__requestActivationForToken_withUUID_withReply___block_invoke_217_cold_31()
{
  OUTLINED_FUNCTION_8();
  [v0 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5(&_mh_execute_header, v1, v2, "Invalid response dictionary received from server! (responseDict.count: %lu, responseDict: %{private}@)", v3, v4, v5, v6, v7);
}

void __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234_cold_26(uint64_t a1, void *a2)
{
  v8 = [a2 objectForKeyedSubscript:@"ppid"];
  OUTLINED_FUNCTION_5(&_mh_execute_header, v2, v3, "PPID returned from server does not match provided PPID! (providedPPID: %{private}@, returnedPPID: %{private}@)", v4, v5, v6, v7, 3u);
}

void __98__MFAANetwork__requestMetadataForCertSerial_issuerSeq_ppid_requestedLocale_requestInfo_withReply___block_invoke_234_cold_29()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__MFAANetwork__validateCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_28()
{
  OUTLINED_FUNCTION_3();
  v3 = 2113;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Different cert serial than requested returned from server: %{private}@ (requested: %{private}@)", v2, 0x16u);
}

void __70__MFAANetwork__getCachedStatusForCertSerial_issuerSeq_ppid_withReply___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setCachedStatusForCertSerial:issuerSeq:ppid:certStatus:.cold.2()
{
  OUTLINED_FUNCTION_15(__stack_chk_guard);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__MFAANetwork__removePairingWithToken_withReply___block_invoke_cold_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(a1 + 48)];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__MFAANetwork_session_requestCertificateWithCompletionHandler___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)session:requestHandshakeWithServer:completionHandler:.cold.18()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end