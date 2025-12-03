@interface RemoteClientNotEntitled
- (BOOL)_connectionClientHasReadAllWebClipsEntitlement;
- (BOOL)_connectionClientIsWebBrowser;
- (BOOL)_connectionIsAuthorizedForClientBundleID:(id)d;
- (RemoteClientNotEntitled)initWithConnection:(id)connection;
- (void)_requestLocationConsentWithRegion:(id)region clipBundleID:(id)d appName:(id)name record:(id)record completion:(id)completion;
- (void)confirmLocationWithURL:(id)l inRegion:(id)region reply:(id)reply;
- (void)fetchWebClipsURLStringForClientBundleID:(id)d reply:(id)reply;
- (void)fetchWebClipsUUIDStringForClientBundleID:(id)d reply:(id)reply;
- (void)getWebClipDictionaryWithIdentifier:(id)identifier reply:(id)reply;
@end

@implementation RemoteClientNotEntitled

- (RemoteClientNotEntitled)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = RemoteClientNotEntitled;
  v6 = [(RemoteClientNotEntitled *)&v17 init];
  if (v6)
  {
    if (qword_100019DE0 != -1)
    {
      sub_10000B414();
    }

    [connectionCopy setExportedInterface:qword_100019DD8];
    [connectionCopy setExportedObject:v6];
    objc_initWeak(&location, v6);
    objc_initWeak(&from, connectionCopy);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100009DB0;
    v12[3] = &unk_100014778;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    [connectionCopy setInterruptionHandler:v12];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009E8C;
    v9[3] = &unk_100014778;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    [connectionCopy setInvalidationHandler:v9];
    objc_storeStrong(&v6->_connection, connection);
    v7 = v6;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)confirmLocationWithURL:(id)l inRegion:(id)region reply:(id)reply
{
  lCopy = l;
  regionCopy = region;
  replyCopy = reply;
  if ((+[CPSLocationProvider locationServiceEnabled]& 1) != 0)
  {
    connection = [(RemoteClientNotEntitled *)self connection];
    v12 = connection;
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      *buf = 0u;
      v28 = 0u;
    }

    v26 = 0;
    v15 = [LSBundleProxy bundleProxyWithAuditToken:buf error:&v26];
    v14 = v26;

    bundleIdentifier = [v15 bundleIdentifier];
    if (bundleIdentifier)
    {
      v17 = +[CPSWebClipStore sharedStore];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000A1DC;
      v20[3] = &unk_100014CB0;
      v21 = bundleIdentifier;
      v25 = replyCopy;
      selfCopy = self;
      v23 = regionCopy;
      v24 = v15;
      [v17 getWebClipWithURL:lCopy completionHandler:v20];

      v18 = v21;
    }

    else
    {
      v19 = sub_100004064();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000B43C(v14, v19);
      }

      v18 = [NSError cps_errorWithCode:10];
      (*(replyCopy + 2))(replyCopy, 0, v18);
    }
  }

  else
  {
    v13 = sub_100004064();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "User has denied location confirmation for all app clips.", buf, 2u);
    }

    v14 = [NSError cps_errorWithCode:15];
    (*(replyCopy + 2))(replyCopy, 0, v14);
  }
}

- (void)_requestLocationConsentWithRegion:(id)region clipBundleID:(id)d appName:(id)name record:(id)record completion:(id)completion
{
  regionCopy = region;
  dCopy = d;
  nameCopy = name;
  recordCopy = record;
  completionCopy = completion;
  v16 = +[NSUserDefaults cps_clipServicesDefaults];
  cps_didShowFirstTimeLocationConsent = [v16 cps_didShowFirstTimeLocationConsent];

  if (cps_didShowFirstTimeLocationConsent)
  {
    completionCopy[2](completionCopy, +[CPSLocationProvider locationServiceEnabled]);
  }

  else
  {
    v18 = +[CPSLocationProvider sharedProvider];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000AC50;
    v19[3] = &unk_100014D00;
    v24 = completionCopy;
    v20 = recordCopy;
    v21 = dCopy;
    v22 = nameCopy;
    v23 = regionCopy;
    [v18 getCurrentLocationWithCompletion:v19];
  }
}

- (void)fetchWebClipsUUIDStringForClientBundleID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if ([(RemoteClientNotEntitled *)self _connectionIsAuthorizedForClientBundleID:dCopy])
  {
    v8 = +[CPSWebClipStore sharedStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000AFB8;
    v10[3] = &unk_100014868;
    v11 = replyCopy;
    [v8 fetchWebClipsUUIDStringForClientBundleID:dCopy completionHandler:v10];
  }

  else
  {
    v9 = [NSError cps_errorWithCode:20];
    (*(replyCopy + 2))(replyCopy, v9, 0);
  }
}

- (void)fetchWebClipsURLStringForClientBundleID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if ([(RemoteClientNotEntitled *)self _connectionIsAuthorizedForClientBundleID:dCopy])
  {
    v8 = +[CPSWebClipStore sharedStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B0E0;
    v10[3] = &unk_100014868;
    v11 = replyCopy;
    [v8 fetchWebClipsURLStringForClientBundleID:dCopy completionHandler:v10];
  }

  else
  {
    v9 = [NSError cps_errorWithCode:20];
    (*(replyCopy + 2))(replyCopy, v9, 0);
  }
}

- (void)getWebClipDictionaryWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if ([(RemoteClientNotEntitled *)self _connectionClientHasReadAllWebClipsEntitlement]|| [(RemoteClientNotEntitled *)self _connectionClientIsWebBrowser])
  {
    v8 = +[CPSWebClipStore sharedStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B210;
    v10[3] = &unk_100014D28;
    v11 = replyCopy;
    [v8 getWebClipDictionaryWithIdentifier:identifierCopy completionHandler:v10];
  }

  else
  {
    v9 = [NSError cps_errorWithCode:20];
    (*(replyCopy + 2))(replyCopy, v9, 0);
  }
}

- (BOOL)_connectionIsAuthorizedForClientBundleID:(id)d
{
  dCopy = d;
  if ([(RemoteClientNotEntitled *)self _connectionClientHasReadAllWebClipsEntitlement])
  {
    v5 = 1;
  }

  else if ([(RemoteClientNotEntitled *)self _connectionClientIsWebBrowser])
  {
    connection = [(RemoteClientNotEntitled *)self connection];
    v7 = connection;
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v8 = [LSBundleProxy bundleProxyWithAuditToken:v11 error:0];

    bundleIdentifier = [v8 bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:dCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_connectionClientHasReadAllWebClipsEntitlement
{
  connection = [(RemoteClientNotEntitled *)self connection];
  v3 = [connection valueForEntitlement:@"com.apple.private.ClipServices.read-all-web-clips"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_connectionClientIsWebBrowser
{
  connection = [(RemoteClientNotEntitled *)self connection];
  v3 = [connection valueForEntitlement:@"com.apple.developer.web-browser"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end