@interface DCClientHandler
- (BOOL)entitlementsValidatedForPID:(int)a3;
- (BOOL)isSupported;
- (DCClientHandler)initWithConnection:(id)a3;
- (id)_stringValueForEntitlement:(id)a3;
- (id)generateAppIDFromCurrentConnection;
- (void)appAttestationAssert:(id)a3 keyId:(id)a4 clientDataHash:(id)a5 completion:(id)a6;
- (void)appAttestationAssertWithTeamIdentifier:(id)a3 appUUID:(id)a4 keyId:(id)a5 clientDataHash:(id)a6 completion:(id)a7;
- (void)appAttestationAttestKey:(id)a3 keyId:(id)a4 clientDataHash:(id)a5 completion:(id)a6;
- (void)appAttestationAttestKeyWithTeamIdentifier:(id)a3 appUUID:(id)a4 keyId:(id)a5 clientDataHash:(id)a6 completion:(id)a7;
- (void)appAttestationCreateKey:(id)a3 completion:(id)a4;
- (void)appAttestationCreateKeyWithTeamIdentifier:(id)a3 appUUID:(id)a4 completion:(id)a5;
- (void)appAttestationDeviceAttestKey:(id)a3 useSystemKeychain:(BOOL)a4 clientDataHash:(id)a5 options:(id)a6 completion:(id)a7;
- (void)appAttestationDeviceIsSupportedWithCompletion:(id)a3;
- (void)appAttestationIsSupportedWithCompletion:(id)a3;
- (void)appAttestationPrivIsSupportedWithCompletion:(id)a3;
- (void)appAttestationSign:(id)a3 appUUID:(id)a4 keyId:(id)a5 teamId:(id)a6 completion:(id)a7;
- (void)appAttestationWebAttestKey:(id)a3 clientDataHash:(id)a4 authData:(id)a5 completion:(id)a6;
- (void)appAttestationWebIsSupportedWithCompletion:(id)a3;
- (void)baaSignatureForData:(id)a3 completion:(id)a4;
- (void)baaSignaturesForData:(id)a3 completion:(id)a4;
- (void)fetchOpaqueBlobWithCompletion:(id)a3;
- (void)getKeyProxyEndpoint:(id)a3 keyId:(id)a4 teamIdentifier:(id)a5 completion:(id)a6;
- (void)isSupportedDeviceWithCompletion:(id)a3;
- (void)isSupportedForPrivService:(BOOL)a3 completion:(id)a4;
@end

@implementation DCClientHandler

- (DCClientHandler)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DCClientHandler;
  v5 = [(DCClientHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DCClientHandler *)v5 setConnection:v4];
  }

  return v6;
}

- (void)fetchOpaqueBlobWithCompletion:(id)a3
{
  v4 = a3;
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
    v6 = [(DCClientHandler *)self generateAppIDFromCurrentConnection];
    if (v6)
    {
      v7 = objc_alloc_init(DCContext);
      [v7 setClientAppID:v6];
      v8 = [DCDDeviceMetadata alloc];
      v9 = objc_alloc_init(DCCryptoProxyImpl);
      v10 = [v8 initWithContext:v7 cryptoProxy:v9];

      [v10 generateEncryptedBlobWithCompletion:v4];
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
      v4[2](v4, 0, v7);
    }
  }

  else
  {
    v6 = [NSError dc_errorWithCode:1];
    v4[2](v4, 0, v6);
  }
}

- (void)isSupportedDeviceWithCompletion:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(DCClientHandler *)self isSupported], 0);
}

- (id)_stringValueForEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:a3];
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

- (void)appAttestationCreateKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = sub_100000F04();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001C3C;
  v11[3] = &unk_10000C470;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)appAttestationCreateKeyWithTeamIdentifier:(id)a3 appUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E9C;
  block[3] = &unk_10000C498;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)appAttestationAttestKey:(id)a3 keyId:(id)a4 clientDataHash:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002128;
  v19[3] = &unk_10000C4C0;
  objc_copyWeak(&v24, &location);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)appAttestationAttestKeyWithTeamIdentifier:(id)a3 appUUID:(id)a4 keyId:(id)a5 clientDataHash:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v17 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000023D8;
  block[3] = &unk_10000C4E8;
  objc_copyWeak(&v29, &location);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)appAttestationWebAttestKey:(id)a3 clientDataHash:(id)a4 authData:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_100000F04();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002634;
  v18[3] = &unk_10000C558;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  v17 = v9;
  dispatch_async(v13, v18);
}

- (void)appAttestationDeviceAttestKey:(id)a3 useSystemKeychain:(BOOL)a4 clientDataHash:(id)a5 options:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002CB8;
  v18[3] = &unk_10000C580;
  objc_copyWeak(&v22, &location);
  v23 = a4;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  dispatch_async(v14, v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)appAttestationAssert:(id)a3 keyId:(id)a4 clientDataHash:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003454;
  v19[3] = &unk_10000C4C0;
  objc_copyWeak(&v24, &location);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)appAttestationAssertWithTeamIdentifier:(id)a3 appUUID:(id)a4 keyId:(id)a5 clientDataHash:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v17 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003704;
  block[3] = &unk_10000C4E8;
  objc_copyWeak(&v29, &location);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)appAttestationSign:(id)a3 appUUID:(id)a4 keyId:(id)a5 teamId:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_initWeak(&location, self);
  v17 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000039B8;
  block[3] = &unk_10000C4E8;
  objc_copyWeak(&v29, &location);
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v12;
  v28 = v16;
  v18 = v16;
  v19 = v12;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  dispatch_async(v17, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)appAttestationIsSupportedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100000F04();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003BAC;
  v7[3] = &unk_10000C5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)appAttestationPrivIsSupportedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100000F04();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003C6C;
  v7[3] = &unk_10000C5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)appAttestationWebIsSupportedWithCompletion:(id)a3
{
  v3 = a3;
  v4 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D20;
  block[3] = &unk_10000C5D0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)appAttestationDeviceIsSupportedWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003E40;
  block[3] = &unk_10000C5F8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)getKeyProxyEndpoint:(id)a3 keyId:(id)a4 teamIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = sub_100000F04();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000040E0;
  block[3] = &unk_10000C648;
  objc_copyWeak(&v25, &location);
  v20 = v10;
  v21 = v11;
  v23 = self;
  v24 = v13;
  v22 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)baaSignaturesForData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v9 = [(DCClientHandler *)self generateAppIDFromCurrentConnection];
    if (v9)
    {
      v10 = objc_alloc_init(DCContext);
      [v10 setClientAppID:v9];
      v11 = [DCDDeviceMetadata alloc];
      v12 = objc_alloc_init(DCCryptoProxyImpl);
      v13 = [v11 initWithContext:v10 cryptoProxy:v12];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000047DC;
      v15[3] = &unk_10000C670;
      v16 = v7;
      [v13 baaSignaturesForData:v6 completion:v15];
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
      (*(v7 + 2))(v7, 0, 0, v10);
    }
  }

  else
  {
    v9 = [NSError errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v9);
  }
}

- (void)baaSignatureForData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v9 = [(DCClientHandler *)self generateAppIDFromCurrentConnection];
    if (v9)
    {
      v10 = objc_alloc_init(DCContext);
      [v10 setClientAppID:v9];
      v11 = [DCDDeviceMetadata alloc];
      v12 = objc_alloc_init(DCCryptoProxyImpl);
      v13 = [v11 initWithContext:v10 cryptoProxy:v12];

      [v13 baaSignatureForData:v6 completion:v7];
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
      (*(v7 + 2))(v7, 0, 0, v10);
    }
  }

  else
  {
    v9 = [NSError errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v9);
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

- (void)isSupportedForPrivService:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!+[FeatureFlagsManager isMacEnabled]|| v4)
  {
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    IsSupported = AppAttest_AppAttestation_IsSupported();
    memset(buf, 0, sizeof(buf));
    if (v4)
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
      v17 = v4;
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
      v17 = v4;
      v15 = "%25s:%-5d App attestation service is not supported. { isSupportedHardware=%d, isEligibleApplication=%d, privService=%d }";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0x24u);
LABEL_21:
    v6[2](v6, v13, 0);
    goto LABEL_22;
  }

  memset(buf, 0, sizeof(buf));
  v7 = self->_connection;
  if (v7)
  {
    [(NSXPCConnection *)v7 auditToken];
  }

  IsSupportedAndEligibleApplication = AppAttest_AppAttestation_IsSupportedAndEligibleApplication();
  v6[2](v6, IsSupportedAndEligibleApplication, 0);
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

- (BOOL)entitlementsValidatedForPID:(int)a3
{
  v15 = 0;
  memset(buffer, 0, sizeof(buffer));
  v3 = proc_pidinfo(a3, 3, 0, buffer, 136);
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