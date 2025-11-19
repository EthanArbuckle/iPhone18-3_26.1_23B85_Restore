@interface RemoteClient
+ (void)_didEndDownloadingAppForBundleID:(id)a3 error:(id)a4 completionHandler:(id)a5;
+ (void)_didEndOpenAppForURL:(id)a3 adamID:(id)a4 error:(id)a5 completionHandler:(id)a6;
+ (void)_didStartDownloadingAppForBundleID:(id)a3;
+ (void)_didStartOpenAppForURL:(id)a3 adamID:(id)a4;
- (BOOL)_canSkipShowingAppClipCardOnLaunchForSession:(id)a3;
- (RemoteClient)initWithConnection:(id)a3 appManager:(id)a4 clipMetadataManager:(id)a5;
- (id)_deducedInstalledFullAppBundleIDForSession:(id)a3;
- (id)_validateIngestedBundleID:(id)a3 forSession:(id)a4 appInstalled:(BOOL *)a5 clipRequestsLocationConfirmation:(BOOL *)a6 clipRequestsNotification:(BOOL *)a7;
- (void)_fetchClipMetadataAndImagesWithURL:(id)a3 prewarmClip:(BOOL)a4 reply:(id)a5;
- (void)_installClipWithURL:(id)a3 options:(id)a4 reply:(id)a5;
- (void)_openClipDirectlyWithURL:(id)a3 launchOptions:(id)a4 reply:(id)a5;
- (void)_openClipWithInvocationUIWithURL:(id)a3 reply:(id)a4;
- (void)_remoteClientDisconnected;
- (void)cancelPrewarmingClipWithURL:(id)a3 reply:(id)a4;
- (void)checkAndConsumeShowsAppAttributionBannerForBundleID:(id)a3 completion:(id)a4;
- (void)fetchABRMetadataForDiagnosticsWithURL:(id)a3 reply:(id)a4;
- (void)fetchAMPMetadataForDiagnosticsWithBundleID:(id)a3 reply:(id)a4;
- (void)fetchClipMetadataWithURL:(id)a3 reply:(id)a4;
- (void)getLastLaunchOptionsWithBundleID:(id)a3 reply:(id)a4;
- (void)getUserNotificationConsentForBundleID:(id)a3 reply:(id)a4;
- (void)installClipWithURL:(id)a3 reply:(id)a4;
- (void)isClipURL:(id)a3 reply:(id)a4;
- (void)notifyWebClipActivationWithBundleID:(id)a3 referrerBundleID:(id)a4 reply:(id)a5;
- (void)openClipWithInvocationUIIfNeededWithURL:(id)a3 reply:(id)a4;
- (void)openClipWithURL:(id)a3 launchOptions:(id)a4 reply:(id)a5;
- (void)performValidationWithRequest:(id)a3 reply:(id)a4;
- (void)registerSessionWithURL:(id)a3 configuration:(id)a4;
- (void)stopStallingCurrentInstallationWithReply:(id)a3;
- (void)uninstallClipWithURL:(id)a3 reply:(id)a4;
- (void)uninstallClipsWithBundleIDs:(id)a3 reply:(id)a4;
- (void)unregisterSessionWithURL:(id)a3;
@end

@implementation RemoteClient

- (RemoteClient)initWithConnection:(id)a3 appManager:(id)a4 clipMetadataManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = RemoteClient;
  v11 = [(RemoteClient *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appManager, a4);
    objc_storeStrong(&v12->_clipMetadataManager, a5);
    if (qword_100019DA0 != -1)
    {
      sub_100009214();
    }

    [v8 setExportedInterface:qword_100019D98];
    [v8 setExportedObject:v12];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPSSessionObserving];
    [v8 setRemoteObjectInterface:v13];

    v14 = sub_100004064();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v28 = v12;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): connection established: %@", buf, 0x16u);
    }

    objc_initWeak(buf, v12);
    objc_initWeak(&location, v8);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000045D0;
    v22[3] = &unk_100014778;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    [v8 setInterruptionHandler:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000046AC;
    v19[3] = &unk_100014778;
    objc_copyWeak(&v20, buf);
    objc_copyWeak(&v21, &location);
    [v8 setInvalidationHandler:v19];
    [(RemoteClientNotEntitled *)v12 setConnection:v8];
    v15 = [CPSSessionRemoteObserver observerWithXPCProxy:v8];
    sessionObserver = v12->_sessionObserver;
    v12->_sessionObserver = v15;

    v17 = v12;
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v12;
}

- (void)_remoteClientDisconnected
{
  [(RemoteClientNotEntitled *)self setConnection:0];
  v3 = +[CPSSessionManager sharedManager];
  v4 = [v3 allSessions];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) removeRemoteObjectProxy:{self->_sessionObserver, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)isClipURL:(id)a3 reply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004990;
  v7[3] = &unk_1000147A0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(RemoteClient *)v8 fetchClipMetadataWithURL:v6 reply:v7];
}

- (void)_fetchClipMetadataAndImagesWithURL:(id)a3 prewarmClip:(BOOL)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  +[CPSSessionManager sharedManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004B94;
  v13[3] = &unk_100014818;
  v13[4] = self;
  v14 = v8;
  v15 = v17 = a4;
  v16 = v9;
  v10 = v15;
  v11 = v8;
  v12 = v9;
  [v10 getSessionWithURL:v11 completion:v13];
}

- (void)cancelPrewarmingClipWithURL:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[CPSSessionManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000528C;
  v10 = v9[3] = &unk_100014840;
  v11 = v5;
  v7 = v10;
  v8 = v5;
  [v7 getSessionWithURL:v6 completion:v9];
}

- (void)installClipWithURL:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CPSClipLaunchOptions);
  [v8 setSkipsLaunching:1];
  [(RemoteClient *)self _installClipWithURL:v7 options:v8 reply:v6];
}

- (void)openClipWithURL:(id)a3 launchOptions:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 predefinedBundleID];

  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [(RemoteClientNotEntitled *)self connection];
  v13 = [v12 valueForEntitlement:@"com.apple.private.ClipServices.request-install-clips"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 BOOLValue])
  {

LABEL_5:
    v14 = sub_100004064();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v18 = 134218499;
      v19 = self;
      v20 = 2117;
      v21 = v8;
      v22 = 1024;
      v23 = [v9 skipsLaunching];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): opening clip with URL (%{sensitive}@) skipLaunching: %d", &v18, 0x1Cu);
    }

    [(RemoteClient *)self _installClipWithURL:v8 options:v9 reply:v10];
    goto LABEL_11;
  }

  v16 = sub_100004064();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10000936C();
  }

  v17 = [NSError cps_errorWithCode:12];
  v10[2](v10, v17);

LABEL_11:
}

- (void)uninstallClipWithURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AppManager *)self->_appManager appLinkResolver];
  v9 = [v8 appBundleIdentifierForURL:v6];

  if (v9)
  {
    v12 = v9;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [(RemoteClient *)self uninstallClipsWithBundleIDs:v10 reply:v7];
  }

  else
  {
    v11 = sub_100004064();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      v14 = self;
      v15 = 2117;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): uninstall clip for %{sensitive}@", buf, 0x16u);
    }

    v10 = [NSError cps_errorWithCode:2];
    if (v7)
    {
      v7[2](v7, v10);
    }
  }
}

- (void)uninstallClipsWithBundleIDs:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSClipCleanupManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000057D0;
  v9[3] = &unk_100014868;
  v10 = v5;
  v8 = v5;
  [v7 removeClipsByUser:v6 completionHandler:v9];
}

- (void)fetchClipMetadataWithURL:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSSessionManager sharedManager];
  v8 = [v7 sessionWithURL:v6 createIfNoExist:1];

  v9 = sub_100004064();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000093AC();
  }

  if (CPSClipMetadataFetchIgnoresCache())
  {
    [v8 clearMetadataAndRefetch];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005954;
  v11[3] = &unk_1000146C0;
  v12 = v5;
  v10 = v5;
  [v8 fetchMetadataWithCompletion:v11];
}

- (void)openClipWithInvocationUIIfNeededWithURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CPSSessionManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005A60;
  v11[3] = &unk_100014890;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 getSessionWithURL:v9 completion:v11];
}

- (void)_openClipDirectlyWithURL:(id)a3 launchOptions:(id)a4 reply:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005E18;
  v9[3] = &unk_1000148B8;
  v10 = self;
  v11 = a3;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  [(RemoteClient *)v10 openClipWithURL:v8 launchOptions:a4 reply:v9];
}

- (void)_openClipWithInvocationUIWithURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CPSOpenClipCardPresenter sharedPresenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005F6C;
  v11[3] = &unk_1000148E0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 showCardWithURL:v10 completionHandler:v11];
}

- (void)stopStallingCurrentInstallationWithReply:(id)a3
{
  v3 = a3;
  v6 = +[CPSSessionManager sharedManager];
  v4 = [v6 legacyInstaller];

  if (v4)
  {
    [v6 legacyInstaller];
  }

  else
  {
    [v6 clipInstaller];
  }
  v5 = ;
  v3[2](v3, [v5 stopStallingCurrentInstallation]);
}

- (id)_validateIngestedBundleID:(id)a3 forSession:(id)a4 appInstalled:(BOOL *)a5 clipRequestsLocationConfirmation:(BOOL *)a6 clipRequestsNotification:(BOOL *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v11)
  {
    v14 = [v12 configuration];
    v15 = [v14 usedByPPT];

    if (v15)
    {
LABEL_5:
      v19 = v11;
      goto LABEL_7;
    }

    v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:0 error:0];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 appClipMetadata];
      *a5 = 1;
      *a7 = [v18 wantsEphemeralNotifications];
      *a6 = [v18 wantsLocationConfirmation];

      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_7:

  return v19;
}

- (id)_deducedInstalledFullAppBundleIDForSession:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  v5 = [v4 fallbackClipBundleID];

  v6 = [v3 metadata];
  v7 = [v6 fullAppBundleID];
  if (![v7 length])
  {
    v8 = [v3 configuration];
    v9 = [v8 launchReason];
    if ([v9 isEqualToString:CPSSessionLaunchReasonMessages])
    {
      v10 = [v5 length];

      if (!v10 || (v11 = [v5 rangeOfString:@"." options:4], v11 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v12 = 0;
        goto LABEL_9;
      }

      v6 = [v5 substringToIndex:v11];
      v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
      if (v7)
      {
        v14 = [v3 url];
        v15 = [v7 applicationIdentifier];
        v16 = [CPSUtilities validDomainAssociationWithAnyServiceTypeForURL:v14 applicationIdentifier:v15];

        if (v16)
        {
          v17 = v6;
        }

        else
        {
          v17 = 0;
        }

        v12 = v17;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_8:

LABEL_9:

  return v12;
}

- (void)_installClipWithURL:(id)a3 options:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [RemoteClient _didStartOpenAppForURL:v8 adamID:0];
  +[CPSSessionManager sharedManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000064D0;
  v15[3] = &unk_100014A48;
  v15[4] = self;
  v18 = v16 = v9;
  v19 = v10;
  v17 = v8;
  v11 = v18;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [v11 getSessionWithURL:v13 completion:v15];
}

- (BOOL)_canSkipShowingAppClipCardOnLaunchForSession:(id)a3
{
  v4 = a3;
  v5 = [(RemoteClient *)self _deducedInstalledFullAppBundleIDForSession:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v11 = 0;
    v7 = [v4 configuration];
    v6 = 0;
    if ([v7 mayLaunchWithoutInvocationUI])
    {
      v8 = [v4 metadata];
      if ([v8 hasUpToDateVersionInstalledOnSystemIsPlaceholder:&v11] && v11 != 1)
      {
        v6 = 1;
      }

      else
      {
        v9 = [v4 metadata];
        v6 = [v9 hasFullAppInstalledOnSystem];
      }
    }
  }

  return v6;
}

+ (void)_didStartDownloadingAppForBundleID:(id)a3
{
  v4 = a3;
  v5 = sub_100004064();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "downloadAppAction", "start downloading app", &v7, 2u);
  }

  v6 = sub_100004064();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134218243;
    v8 = a1;
    v9 = 2113;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "RemoteClient (%p): downloading clip for bundleID: %{private}@", &v7, 0x16u);
  }
}

+ (void)_didEndDownloadingAppForBundleID:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004064();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "downloadAppAction", "end downloading app", &v14, 2u);
  }

  v12 = sub_100004064();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100009550(a1, v13, v9);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 134218243;
    v15 = a1;
    v16 = 2113;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "RemoteClient (%p): success in downloading clip for bundleID: %{private}@", &v14, 0x16u);
  }

  if (v10)
  {
    v10[2](v10, v9);
  }
}

+ (void)_didStartOpenAppForURL:(id)a3 adamID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004064();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "openAppAction", "start open app", &v12, 2u);
  }

  v9 = sub_100004064();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v12 = 134218243;
      v13 = a1;
      v14 = 2117;
      v15 = v6;
      v11 = "RemoteClient (%p): opening clip for %{sensitive}@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, &v12, 0x16u);
    }
  }

  else if (v10)
  {
    v12 = 134218243;
    v13 = a1;
    v14 = 2117;
    v15 = v7;
    v11 = "RemoteClient (%p): opening clip for adamID: %{sensitive}@";
    goto LABEL_8;
  }
}

+ (void)_didEndOpenAppForURL:(id)a3 adamID:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004064();
  if (os_signpost_enabled(v14))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "openAppAction", "end open app", &v19, 2u);
  }

  if (v12)
  {
    v15 = sub_100004064();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000095F8(a1, v15, v12);
    }
  }

  else
  {
    v16 = sub_100004064();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (!v17)
      {
        goto LABEL_12;
      }

      v19 = 134218243;
      v20 = a1;
      v21 = 2117;
      v22 = v10;
      v18 = "RemoteClient (%p): success in opening clip for %{sensitive}@";
    }

    else
    {
      if (!v17)
      {
        goto LABEL_12;
      }

      v19 = 134218243;
      v20 = a1;
      v21 = 2117;
      v22 = v11;
      v18 = "RemoteClient (%p): success in opening clip for adamID: %{sensitive}@";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v18, &v19, 0x16u);
  }

LABEL_12:
  if (v13)
  {
    v13[2](v13, v12);
  }
}

- (void)registerSessionWithURL:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((+[CPSClipURL isSupported]& 1) != 0)
  {
    v8 = +[CPSSessionManager sharedManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008194;
    v10[3] = &unk_100014A70;
    v11 = v6;
    v12 = self;
    [v8 getSessionWithURL:v11 configuration:v7 completion:v10];
  }

  else
  {
    v9 = sub_100004064();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "registerSessionWithURL: App clips are unsupported", buf, 2u);
    }
  }
}

- (void)unregisterSessionWithURL:(id)a3
{
  v4 = a3;
  v5 = +[CPSSessionManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000083B0;
  v7[3] = &unk_100014A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 getSessionWithURL:v6 completion:v7];
}

- (void)getUserNotificationConsentForBundleID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSClipDataSQLiteStore defaultStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000084F4;
  v9[3] = &unk_100014A98;
  v10 = v5;
  v8 = v5;
  [v7 getAppClipRecordWithBundleID:v6 completion:v9];
}

- (void)notifyWebClipActivationWithBundleID:(id)a3 referrerBundleID:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = +[CPSWebClipStore sharedStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000086E0;
  v14[3] = &unk_100014AE8;
  v15 = v7;
  v16 = v8;
  v17 = Current;
  v12 = v7;
  v13 = v8;
  [v11 getAppClipWithIdentifier:v9 receiveOnQueue:&_dispatch_main_q completionHandler:v14];
}

- (void)getLastLaunchOptionsWithBundleID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSClipDataSQLiteStore defaultStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008C30;
  v9[3] = &unk_100014A98;
  v10 = v5;
  v8 = v5;
  [v7 getAppClipRecordWithBundleID:v6 completion:v9];
}

- (void)checkAndConsumeShowsAppAttributionBannerForBundleID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CPSWebClipStore sharedStore];
  v8 = [v7 synchronouslyGetAppClipWithIdentifier:v6];

  if (v8)
  {
    v9 = +[CPSSessionManager sharedManager];
    v10 = [v8 pageURL];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008DF0;
    v11[3] = &unk_100014B10;
    v12 = v5;
    [v9 getSessionWithURL:v10 completion:v11];
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

- (void)performValidationWithRequest:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CPSURLValidator alloc] initWithRequest:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008F04;
  v9[3] = &unk_100014B38;
  v10 = v5;
  v8 = v5;
  [v7 validateWithCompletion:v9];
}

- (void)fetchABRMetadataForDiagnosticsWithURL:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CPSBusinessItemFetcher);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008FE0;
  v9[3] = &unk_1000146C0;
  v10 = v5;
  v8 = v5;
  [v7 fetchBusinessMetadataForURL:v6 availabilityHandler:0 completion:v9];
}

- (void)fetchAMPMetadataForDiagnosticsWithBundleID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CPSAppInfoFetcher);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000090D0;
  v10[3] = &unk_100014B60;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 lookUpClipMetadataByBundleID:v7 sourceBundleID:0 downloadIconIfNeeded:0 skipCaching:1 completionHandler:v10];
}

@end