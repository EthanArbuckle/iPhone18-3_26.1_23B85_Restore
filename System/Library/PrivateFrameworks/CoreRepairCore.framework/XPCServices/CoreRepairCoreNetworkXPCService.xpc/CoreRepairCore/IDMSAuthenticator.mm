@interface IDMSAuthenticator
- (id)authKitSession;
- (id)authKitSessionConfig;
- (int64_t)_fetchGSTokenWithPassword:(id)a3 username:(id)a4 altDSID:(id *)a5 gsToken:(id *)a6;
- (void)_appendAdditionalHeaders:(id)a3 altDSID:(id)a4 gsToken:(id)a5;
@end

@implementation IDMSAuthenticator

- (int64_t)_fetchGSTokenWithPassword:(id)a3 username:(id)a4 altDSID:(id *)a5 gsToken:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100001458;
  v41 = sub_100001468;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100001458;
  v35 = sub_100001468;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v13 = dispatch_semaphore_create(0);
  [v11 setUsername:v10];
  [v11 _setPassword:v9];
  [v11 setShouldUpdatePersistentServiceTokens:0];
  [v11 setShouldPromptForPasswordOnly:1];
  [v11 setIsUsernameEditable:0];
  [v11 setIsEphemeral:1];
  [v11 setAuthenticationType:0];
  [v11 setServiceType:1];
  [v11 setServiceIdentifier:@"com.apple.gs.corerepair.auth"];
  v14 = handleForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Authenticating user credentials...", buf, 2u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001470;
  v21[3] = &unk_1000082A0;
  v23 = &v27;
  v24 = &v37;
  v25 = &v31;
  v15 = v13;
  v22 = v15;
  [v12 authenticateWithContext:v11 completion:v21];
  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waiting for IDMS", buf, 2u);
  }

  v17 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = handleForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100003008(v18);
    }

    v28[3] = -200;
  }

  if (a5)
  {
    *a5 = v38[5];
  }

  if (a6)
  {
    *a6 = v32[5];
  }

  v19 = v28[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  return v19;
}

- (void)_appendAdditionalHeaders:(id)a3 altDSID:(id)a4 gsToken:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v9 ak_addDeviceUDIDHeader];
  [v9 ak_addClientInfoHeader];
  [v9 ak_addAuthorizationHeaderWithServiceToken:v7 forAltDSID:v8];
}

- (id)authKitSessionConfig
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v2 setURLCache:0];
  [v2 setRequestCachePolicy:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [[AKAppleIDSession alloc] initWithIdentifier:v4];
  [v2 set_appleIDContext:v5];

  return v2;
}

- (id)authKitSession
{
  v2 = [(IDMSAuthenticator *)self authKitSessionConfig];
  v3 = [NSURLSession sessionWithConfiguration:v2];

  return v3;
}

@end