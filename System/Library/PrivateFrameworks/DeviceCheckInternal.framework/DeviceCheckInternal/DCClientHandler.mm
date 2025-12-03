@interface DCClientHandler
- (BOOL)entitlementsValidatedForPID:(int)d;
- (BOOL)isSupported;
- (DCClientHandler)initWithConnection:(id)connection;
- (id)_stringValueForEntitlement:(id)entitlement;
- (id)generateAppIDFromCurrentConnection;
- (void)appAttestationAssert:(id)assert keyId:(id)id clientDataHash:(id)hash completion:(id)completion;
- (void)appAttestationAssertWithTeamIdentifier:(id)identifier appUUID:(id)d keyId:(id)id clientDataHash:(id)hash completion:(id)completion;
- (void)appAttestationAttestKey:(id)key keyId:(id)id clientDataHash:(id)hash completion:(id)completion;
- (void)appAttestationAttestKeyWithTeamIdentifier:(id)identifier appUUID:(id)d keyId:(id)id clientDataHash:(id)hash completion:(id)completion;
- (void)appAttestationCreateKey:(id)key completion:(id)completion;
- (void)appAttestationCreateKeyWithTeamIdentifier:(id)identifier appUUID:(id)d completion:(id)completion;
- (void)appAttestationDeviceAttestKey:(id)key useSystemKeychain:(BOOL)keychain clientDataHash:(id)hash options:(id)options completion:(id)completion;
- (void)appAttestationDeviceIsSupportedWithCompletion:(id)completion;
- (void)appAttestationIsSupportedWithCompletion:(id)completion;
- (void)appAttestationPrivIsSupportedWithCompletion:(id)completion;
- (void)appAttestationSign:(id)sign appUUID:(id)d keyId:(id)id teamId:(id)teamId completion:(id)completion;
- (void)appAttestationWebAttestKey:(id)key clientDataHash:(id)hash authData:(id)data completion:(id)completion;
- (void)appAttestationWebIsSupportedWithCompletion:(id)completion;
- (void)baaSignatureForData:(id)data completion:(id)completion;
- (void)baaSignaturesForData:(id)data completion:(id)completion;
- (void)fetchOpaqueBlobWithCompletion:(id)completion;
- (void)getKeyProxyEndpoint:(id)endpoint keyId:(id)id teamIdentifier:(id)identifier completion:(id)completion;
- (void)isSupportedDeviceWithCompletion:(id)completion;
- (void)isSupportedForPrivService:(BOOL)service completion:(id)completion;
@end

@implementation DCClientHandler

- (DCClientHandler)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = DCClientHandler;
  v5 = [(DCClientHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DCClientHandler *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (void)fetchOpaqueBlobWithCompletion:(id)completion
{
  completionCopy = completion;
  if (qword_100010D08 != -1)
  {
    sub_1000062FC();
  }

  v5 = qword_100010D00;
  if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "DCClientHandler.m";
    v14 = 1024;
    v15 = 63;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device look up request.", &v12, 0x12u);
  }

  if ([(DCClientHandler *)self isSupported])
  {
    generateAppIDFromCurrentConnection = [(DCClientHandler *)self generateAppIDFromCurrentConnection];
    if (generateAppIDFromCurrentConnection)
    {
      v7 = objc_alloc_init(DCContext);
      [v7 setClientAppID:generateAppIDFromCurrentConnection];
      v8 = [DCDDeviceMetadata alloc];
      v9 = objc_alloc_init(DCCryptoProxyImpl);
      v10 = [v8 initWithContext:v7 cryptoProxy:v9];

      [v10 generateEncryptedBlobWithCompletion:completionCopy];
    }

    else
    {
      if (qword_100010D08 != -1)
      {
        sub_100006310();
      }

      v11 = qword_100010D00;
      if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "DCClientHandler.m";
        v14 = 1024;
        v15 = 74;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch AppID.", &v12, 0x12u);
      }

      v7 = [NSError dc_errorWithCode:0];
      completionCopy[2](completionCopy, 0, v7);
    }
  }

  else
  {
    generateAppIDFromCurrentConnection = [NSError dc_errorWithCode:1];
    completionCopy[2](completionCopy, 0, generateAppIDFromCurrentConnection);
  }
}

- (void)isSupportedDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [(DCClientHandler *)self isSupported], 0);
}

- (id)_stringValueForEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)appAttestationCreateKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = sub_100000F04();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001C3C;
  v11[3] = &unk_10000C470;
  objc_copyWeak(&v14, &location);
  v12 = keyCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = keyCopy;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)appAttestationCreateKeyWithTeamIdentifier:(id)identifier appUUID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E9C;
  block[3] = &unk_10000C498;
  objc_copyWeak(&v19, &location);
  v16 = identifierCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dCopy;
  v14 = identifierCopy;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)appAttestationAttestKey:(id)key keyId:(id)id clientDataHash:(id)hash completion:(id)completion
{
  keyCopy = key;
  idCopy = id;
  hashCopy = hash;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002128;
  v19[3] = &unk_10000C4C0;
  objc_copyWeak(&v24, &location);
  v20 = keyCopy;
  v21 = idCopy;
  v22 = hashCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = hashCopy;
  v17 = idCopy;
  v18 = keyCopy;
  dispatch_async(v14, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)appAttestationAttestKeyWithTeamIdentifier:(id)identifier appUUID:(id)d keyId:(id)id clientDataHash:(id)hash completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  idCopy = id;
  hashCopy = hash;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000023D8;
  block[3] = &unk_10000C4E8;
  objc_copyWeak(&v29, &location);
  v24 = identifierCopy;
  v25 = dCopy;
  v26 = idCopy;
  v27 = hashCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = hashCopy;
  v20 = idCopy;
  v21 = dCopy;
  v22 = identifierCopy;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)appAttestationWebAttestKey:(id)key clientDataHash:(id)hash authData:(id)data completion:(id)completion
{
  keyCopy = key;
  hashCopy = hash;
  dataCopy = data;
  completionCopy = completion;
  v13 = sub_100000F04();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002634;
  v18[3] = &unk_10000C558;
  v19 = keyCopy;
  v20 = dataCopy;
  v21 = hashCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = hashCopy;
  v16 = dataCopy;
  v17 = keyCopy;
  dispatch_async(v13, v18);
}

- (void)appAttestationDeviceAttestKey:(id)key useSystemKeychain:(BOOL)keychain clientDataHash:(id)hash options:(id)options completion:(id)completion
{
  keyCopy = key;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002CB8;
  v18[3] = &unk_10000C580;
  objc_copyWeak(&v22, &location);
  keychainCopy = keychain;
  v19 = keyCopy;
  v20 = optionsCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = optionsCopy;
  v17 = keyCopy;
  dispatch_async(v14, v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)appAttestationAssert:(id)assert keyId:(id)id clientDataHash:(id)hash completion:(id)completion
{
  assertCopy = assert;
  idCopy = id;
  hashCopy = hash;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003454;
  v19[3] = &unk_10000C4C0;
  objc_copyWeak(&v24, &location);
  v20 = assertCopy;
  v21 = idCopy;
  v22 = hashCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = hashCopy;
  v17 = idCopy;
  v18 = assertCopy;
  dispatch_async(v14, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)appAttestationAssertWithTeamIdentifier:(id)identifier appUUID:(id)d keyId:(id)id clientDataHash:(id)hash completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  idCopy = id;
  hashCopy = hash;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003704;
  block[3] = &unk_10000C4E8;
  objc_copyWeak(&v29, &location);
  v24 = identifierCopy;
  v25 = dCopy;
  v26 = idCopy;
  v27 = hashCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = hashCopy;
  v20 = idCopy;
  v21 = dCopy;
  v22 = identifierCopy;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)appAttestationSign:(id)sign appUUID:(id)d keyId:(id)id teamId:(id)teamId completion:(id)completion
{
  signCopy = sign;
  dCopy = d;
  idCopy = id;
  teamIdCopy = teamId;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000039B8;
  block[3] = &unk_10000C4E8;
  objc_copyWeak(&v29, &location);
  v24 = dCopy;
  v25 = idCopy;
  v26 = teamIdCopy;
  v27 = signCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = signCopy;
  v20 = teamIdCopy;
  v21 = idCopy;
  v22 = dCopy;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)appAttestationIsSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100000F04();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003BAC;
  v7[3] = &unk_10000C5A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)appAttestationPrivIsSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100000F04();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003C6C;
  v7[3] = &unk_10000C5A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)appAttestationWebIsSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D20;
  block[3] = &unk_10000C5D0;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

- (void)appAttestationDeviceIsSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003E40;
  block[3] = &unk_10000C5F8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)getKeyProxyEndpoint:(id)endpoint keyId:(id)id teamIdentifier:(id)identifier completion:(id)completion
{
  endpointCopy = endpoint;
  idCopy = id;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000040E0;
  block[3] = &unk_10000C648;
  objc_copyWeak(&v25, &location);
  v20 = endpointCopy;
  v21 = idCopy;
  selfCopy = self;
  v24 = completionCopy;
  v22 = identifierCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = idCopy;
  v18 = endpointCopy;
  dispatch_async(v14, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)baaSignaturesForData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (qword_100010D08 != -1)
  {
    sub_1000062FC();
  }

  v8 = qword_100010D00;
  if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "DCClientHandler.m";
    v19 = 1024;
    v20 = 412;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Handling sign data with BAA certificate.", buf, 0x12u);
  }

  if ([(DCClientHandler *)self isSupported])
  {
    generateAppIDFromCurrentConnection = [(DCClientHandler *)self generateAppIDFromCurrentConnection];
    if (generateAppIDFromCurrentConnection)
    {
      v10 = objc_alloc_init(DCContext);
      [v10 setClientAppID:generateAppIDFromCurrentConnection];
      v11 = [DCDDeviceMetadata alloc];
      v12 = objc_alloc_init(DCCryptoProxyImpl);
      v13 = [v11 initWithContext:v10 cryptoProxy:v12];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000047DC;
      v15[3] = &unk_10000C670;
      v16 = completionCopy;
      [v13 baaSignaturesForData:dataCopy completion:v15];
    }

    else
    {
      if (qword_100010D08 != -1)
      {
        sub_100006310();
      }

      v14 = qword_100010D00;
      if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "DCClientHandler.m";
        v19 = 1024;
        v20 = 430;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch AppID.", buf, 0x12u);
      }

      v10 = [NSError dc_errorWithCode:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v10);
    }
  }

  else
  {
    generateAppIDFromCurrentConnection = [NSError errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, generateAppIDFromCurrentConnection);
  }
}

- (void)baaSignatureForData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (qword_100010D08 != -1)
  {
    sub_1000062FC();
  }

  v8 = qword_100010D00;
  if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "DCClientHandler.m";
    v17 = 1024;
    v18 = 437;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Handling sign data with BAA certificate.", &v15, 0x12u);
  }

  if ([(DCClientHandler *)self isSupported])
  {
    generateAppIDFromCurrentConnection = [(DCClientHandler *)self generateAppIDFromCurrentConnection];
    if (generateAppIDFromCurrentConnection)
    {
      v10 = objc_alloc_init(DCContext);
      [v10 setClientAppID:generateAppIDFromCurrentConnection];
      v11 = [DCDDeviceMetadata alloc];
      v12 = objc_alloc_init(DCCryptoProxyImpl);
      v13 = [v11 initWithContext:v10 cryptoProxy:v12];

      [v13 baaSignatureForData:dataCopy completion:completionCopy];
    }

    else
    {
      if (qword_100010D08 != -1)
      {
        sub_100006310();
      }

      v14 = qword_100010D00;
      if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "DCClientHandler.m";
        v17 = 1024;
        v18 = 453;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch AppID.", &v15, 0x12u);
      }

      v10 = [NSError dc_errorWithCode:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v10);
    }
  }

  else
  {
    generateAppIDFromCurrentConnection = [NSError errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, generateAppIDFromCurrentConnection);
  }
}

- (BOOL)isSupported
{
  IsSupported = DeviceIdentityIsSupported();
  if (IsSupported)
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v3 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "DCClientHandler.m";
      v8 = 1024;
      v9 = 470;
      v4 = "%25s:%-5d DeviceCheck is supported.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v4, &v6, 0x12u);
    }
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v3 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "DCClientHandler.m";
      v8 = 1024;
      v9 = 471;
      v4 = "%25s:%-5d DeviceCheck is not supported.";
      goto LABEL_10;
    }
  }

  return IsSupported;
}

- (void)isSupportedForPrivService:(BOOL)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (!+[FeatureFlagsManager isMacEnabled]|| serviceCopy)
  {
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    IsSupported = AppAttest_AppAttestation_IsSupported();
    memset(buf, 0, sizeof(buf));
    if (serviceCopy)
    {
      IsEligibleApplicationPriv = AppAttest_AppAttestation_IsEligibleApplicationPriv();
    }

    else
    {
      IsEligibleApplicationPriv = AppAttest_AppAttestation_IsEligibleApplication();
    }

    v12 = IsEligibleApplicationPriv;
    v13 = IsSupported & IsEligibleApplicationPriv;
    if (v13 == 1)
    {
      if (qword_100010D08 != -1)
      {
        sub_100006310();
      }

      v14 = qword_100010D00;
      if (!os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 136316162;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      *&buf[18] = 1024;
      *&buf[20] = IsSupported;
      *&buf[24] = 1024;
      *&buf[26] = v12;
      *&buf[30] = 1024;
      v17 = serviceCopy;
      v15 = "%25s:%-5d App attestation service is supported. { isSupportedHardware=%d, isEligibleApplication=%d, privService=%d }";
    }

    else
    {
      if (qword_100010D08 != -1)
      {
        sub_100006310();
      }

      v14 = qword_100010D00;
      if (!os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 136316162;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 491;
      *&buf[18] = 1024;
      *&buf[20] = IsSupported;
      *&buf[24] = 1024;
      *&buf[26] = v12;
      *&buf[30] = 1024;
      v17 = serviceCopy;
      v15 = "%25s:%-5d App attestation service is not supported. { isSupportedHardware=%d, isEligibleApplication=%d, privService=%d }";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0x24u);
LABEL_21:
    completionCopy[2](completionCopy, v13, 0);
    goto LABEL_22;
  }

  memset(buf, 0, sizeof(buf));
  v7 = self->_connection;
  if (v7)
  {
    [(NSXPCConnection *)v7 auditToken];
  }

  IsSupportedAndEligibleApplication = AppAttest_AppAttestation_IsSupportedAndEligibleApplication();
  completionCopy[2](completionCopy, IsSupportedAndEligibleApplication, 0);
LABEL_22:
}

- (id)generateAppIDFromCurrentConnection
{
  v3 = [(DCClientHandler *)self _stringValueForEntitlement:@"application-identifier"];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  if ([(__CFString *)v3 length]|| (memset(&token, 0, sizeof(token)), (v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token)) == 0))
  {
    v5 = v3;
  }

  else
  {
    v7 = v6;
    v8 = SecTaskCopyTeamIdentifier();
    v9 = SecTaskCopySigningIdentifier(v7, 0);
    if (v8 && [v8 length] && (objc_msgSend(v8, "isEqualToString:", @"0000000000") & 1) == 0)
    {
      v10 = [NSString stringWithFormat:@"%@.%@", v8, v9];
    }

    else
    {
      v10 = v9;
    }

    v5 = v10;

    if (qword_100010D08 != -1)
    {
      sub_100006310();
    }

    v11 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 136315650;
      *&token.val[1] = "DCClientHandler.m";
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 536;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to fetch appID for client connection from entitlement, using codesign identifier. { appID=%@ }", &token, 0x1Cu);
    }

    CFRelease(v7);
  }

  if ([(__CFString *)v5 length])
  {
    if (qword_100010D08 != -1)
    {
      sub_100006310();
    }

    v12 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 136315650;
      *&token.val[1] = "DCClientHandler.m";
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 541;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched appID for client connection from entitlement. { appID=%@ }", &token, 0x1Cu);
    }
  }

  if ([(__CFString *)v5 length])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)entitlementsValidatedForPID:(int)d
{
  v15 = 0;
  memset(buffer, 0, sizeof(buffer));
  v3 = proc_pidinfo(d, 3, 0, buffer, 136);
  if (v3 <= 0)
  {
    v5 = v3;
    if (qword_100010D08 != -1)
    {
      sub_100006310();
    }

    v6 = qword_100010D00;
    v4 = os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      v8 = 136315650;
      v9 = "DCClientHandler.m";
      v10 = 1024;
      v11 = 567;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d proc_pidinfo failed. { ErrorCode: %d }", &v8, 0x18u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    return (BYTE1(buffer[0]) >> 6) & 1;
  }

  return v4;
}

@end