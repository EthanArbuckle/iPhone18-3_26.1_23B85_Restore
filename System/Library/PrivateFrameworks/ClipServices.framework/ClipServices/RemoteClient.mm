@interface RemoteClient
+ (void)_didEndDownloadingAppForBundleID:(id)d error:(id)error completionHandler:(id)handler;
+ (void)_didEndOpenAppForURL:(id)l adamID:(id)d error:(id)error completionHandler:(id)handler;
+ (void)_didStartDownloadingAppForBundleID:(id)d;
+ (void)_didStartOpenAppForURL:(id)l adamID:(id)d;
- (BOOL)_canSkipShowingAppClipCardOnLaunchForSession:(id)session;
- (RemoteClient)initWithConnection:(id)connection appManager:(id)manager clipMetadataManager:(id)metadataManager;
- (id)_deducedInstalledFullAppBundleIDForSession:(id)session;
- (id)_validateIngestedBundleID:(id)d forSession:(id)session appInstalled:(BOOL *)installed clipRequestsLocationConfirmation:(BOOL *)confirmation clipRequestsNotification:(BOOL *)notification;
- (void)_fetchClipMetadataAndImagesWithURL:(id)l prewarmClip:(BOOL)clip reply:(id)reply;
- (void)_installClipWithURL:(id)l options:(id)options reply:(id)reply;
- (void)_openClipDirectlyWithURL:(id)l launchOptions:(id)options reply:(id)reply;
- (void)_openClipWithInvocationUIWithURL:(id)l reply:(id)reply;
- (void)_remoteClientDisconnected;
- (void)cancelPrewarmingClipWithURL:(id)l reply:(id)reply;
- (void)checkAndConsumeShowsAppAttributionBannerForBundleID:(id)d completion:(id)completion;
- (void)fetchABRMetadataForDiagnosticsWithURL:(id)l reply:(id)reply;
- (void)fetchAMPMetadataForDiagnosticsWithBundleID:(id)d reply:(id)reply;
- (void)fetchClipMetadataWithURL:(id)l reply:(id)reply;
- (void)getLastLaunchOptionsWithBundleID:(id)d reply:(id)reply;
- (void)getUserNotificationConsentForBundleID:(id)d reply:(id)reply;
- (void)installClipWithURL:(id)l reply:(id)reply;
- (void)isClipURL:(id)l reply:(id)reply;
- (void)notifyWebClipActivationWithBundleID:(id)d referrerBundleID:(id)iD reply:(id)reply;
- (void)openClipWithInvocationUIIfNeededWithURL:(id)l reply:(id)reply;
- (void)openClipWithURL:(id)l launchOptions:(id)options reply:(id)reply;
- (void)performValidationWithRequest:(id)request reply:(id)reply;
- (void)registerSessionWithURL:(id)l configuration:(id)configuration;
- (void)stopStallingCurrentInstallationWithReply:(id)reply;
- (void)uninstallClipWithURL:(id)l reply:(id)reply;
- (void)uninstallClipsWithBundleIDs:(id)ds reply:(id)reply;
- (void)unregisterSessionWithURL:(id)l;
@end

@implementation RemoteClient

- (RemoteClient)initWithConnection:(id)connection appManager:(id)manager clipMetadataManager:(id)metadataManager
{
  connectionCopy = connection;
  managerCopy = manager;
  metadataManagerCopy = metadataManager;
  v26.receiver = self;
  v26.super_class = RemoteClient;
  v11 = [(RemoteClient *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appManager, manager);
    objc_storeStrong(&v12->_clipMetadataManager, metadataManager);
    if (qword_100019DA0 != -1)
    {
      sub_100009214();
    }

    [connectionCopy setExportedInterface:qword_100019D98];
    [connectionCopy setExportedObject:v12];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPSSessionObserving];
    [connectionCopy setRemoteObjectInterface:v13];

    v14 = sub_100004064();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v28 = v12;
      v29 = 2112;
      v30 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): connection established: %@", buf, 0x16u);
    }

    objc_initWeak(buf, v12);
    objc_initWeak(&location, connectionCopy);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000045D0;
    v22[3] = &unk_100014778;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    [connectionCopy setInterruptionHandler:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000046AC;
    v19[3] = &unk_100014778;
    objc_copyWeak(&v20, buf);
    objc_copyWeak(&v21, &location);
    [connectionCopy setInvalidationHandler:v19];
    [(RemoteClientNotEntitled *)v12 setConnection:connectionCopy];
    v15 = [CPSSessionRemoteObserver observerWithXPCProxy:connectionCopy];
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
  allSessions = [v3 allSessions];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = allSessions;
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

- (void)isClipURL:(id)l reply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004990;
  v7[3] = &unk_1000147A0;
  selfCopy = self;
  lCopy = l;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = lCopy;
  [(RemoteClient *)selfCopy fetchClipMetadataWithURL:v6 reply:v7];
}

- (void)_fetchClipMetadataAndImagesWithURL:(id)l prewarmClip:(BOOL)clip reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  +[CPSSessionManager sharedManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004B94;
  v13[3] = &unk_100014818;
  v13[4] = self;
  v14 = lCopy;
  v15 = v17 = clip;
  v16 = replyCopy;
  v10 = v15;
  v11 = lCopy;
  v12 = replyCopy;
  [v10 getSessionWithURL:v11 completion:v13];
}

- (void)cancelPrewarmingClipWithURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  +[CPSSessionManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000528C;
  v10 = v9[3] = &unk_100014840;
  v11 = replyCopy;
  v7 = v10;
  v8 = replyCopy;
  [v7 getSessionWithURL:lCopy completion:v9];
}

- (void)installClipWithURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  v8 = objc_alloc_init(CPSClipLaunchOptions);
  [v8 setSkipsLaunching:1];
  [(RemoteClient *)self _installClipWithURL:lCopy options:v8 reply:replyCopy];
}

- (void)openClipWithURL:(id)l launchOptions:(id)options reply:(id)reply
{
  lCopy = l;
  optionsCopy = options;
  replyCopy = reply;
  predefinedBundleID = [optionsCopy predefinedBundleID];

  if (!predefinedBundleID)
  {
    goto LABEL_5;
  }

  connection = [(RemoteClientNotEntitled *)self connection];
  v13 = [connection valueForEntitlement:@"com.apple.private.ClipServices.request-install-clips"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 BOOLValue])
  {

LABEL_5:
    v14 = sub_100004064();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v18 = 134218499;
      selfCopy = self;
      v20 = 2117;
      v21 = lCopy;
      v22 = 1024;
      skipsLaunching = [optionsCopy skipsLaunching];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): opening clip with URL (%{sensitive}@) skipLaunching: %d", &v18, 0x1Cu);
    }

    [(RemoteClient *)self _installClipWithURL:lCopy options:optionsCopy reply:replyCopy];
    goto LABEL_11;
  }

  v16 = sub_100004064();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10000936C();
  }

  v17 = [NSError cps_errorWithCode:12];
  replyCopy[2](replyCopy, v17);

LABEL_11:
}

- (void)uninstallClipWithURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  appLinkResolver = [(AppManager *)self->_appManager appLinkResolver];
  v9 = [appLinkResolver appBundleIdentifierForURL:lCopy];

  if (v9)
  {
    v12 = v9;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [(RemoteClient *)self uninstallClipsWithBundleIDs:v10 reply:replyCopy];
  }

  else
  {
    v11 = sub_100004064();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      selfCopy = self;
      v15 = 2117;
      v16 = lCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RemoteClient (%p): uninstall clip for %{sensitive}@", buf, 0x16u);
    }

    v10 = [NSError cps_errorWithCode:2];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v10);
    }
  }
}

- (void)uninstallClipsWithBundleIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  v7 = +[CPSClipCleanupManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000057D0;
  v9[3] = &unk_100014868;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 removeClipsByUser:dsCopy completionHandler:v9];
}

- (void)fetchClipMetadataWithURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  v7 = +[CPSSessionManager sharedManager];
  v8 = [v7 sessionWithURL:lCopy createIfNoExist:1];

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
  v12 = replyCopy;
  v10 = replyCopy;
  [v8 fetchMetadataWithCompletion:v11];
}

- (void)openClipWithInvocationUIIfNeededWithURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v8 = +[CPSSessionManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005A60;
  v11[3] = &unk_100014890;
  v12 = lCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = lCopy;
  v10 = replyCopy;
  [v8 getSessionWithURL:v9 completion:v11];
}

- (void)_openClipDirectlyWithURL:(id)l launchOptions:(id)options reply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005E18;
  v9[3] = &unk_1000148B8;
  selfCopy = self;
  lCopy = l;
  replyCopy = reply;
  v7 = replyCopy;
  v8 = lCopy;
  [(RemoteClient *)selfCopy openClipWithURL:v8 launchOptions:options reply:v9];
}

- (void)_openClipWithInvocationUIWithURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v8 = +[CPSOpenClipCardPresenter sharedPresenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005F6C;
  v11[3] = &unk_1000148E0;
  v11[4] = self;
  v12 = lCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = lCopy;
  [v8 showCardWithURL:v10 completionHandler:v11];
}

- (void)stopStallingCurrentInstallationWithReply:(id)reply
{
  replyCopy = reply;
  v6 = +[CPSSessionManager sharedManager];
  legacyInstaller = [v6 legacyInstaller];

  if (legacyInstaller)
  {
    [v6 legacyInstaller];
  }

  else
  {
    [v6 clipInstaller];
  }
  v5 = ;
  replyCopy[2](replyCopy, [v5 stopStallingCurrentInstallation]);
}

- (id)_validateIngestedBundleID:(id)d forSession:(id)session appInstalled:(BOOL *)installed clipRequestsLocationConfirmation:(BOOL *)confirmation clipRequestsNotification:(BOOL *)notification
{
  dCopy = d;
  sessionCopy = session;
  v13 = sessionCopy;
  if (dCopy)
  {
    configuration = [sessionCopy configuration];
    usedByPPT = [configuration usedByPPT];

    if (usedByPPT)
    {
LABEL_5:
      v19 = dCopy;
      goto LABEL_7;
    }

    v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
    if (v16)
    {
      v17 = v16;
      appClipMetadata = [v16 appClipMetadata];
      *installed = 1;
      *notification = [appClipMetadata wantsEphemeralNotifications];
      *confirmation = [appClipMetadata wantsLocationConfirmation];

      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_7:

  return v19;
}

- (id)_deducedInstalledFullAppBundleIDForSession:(id)session
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  fallbackClipBundleID = [configuration fallbackClipBundleID];

  metadata = [sessionCopy metadata];
  fullAppBundleID = [metadata fullAppBundleID];
  if (![fullAppBundleID length])
  {
    configuration2 = [sessionCopy configuration];
    launchReason = [configuration2 launchReason];
    if ([launchReason isEqualToString:CPSSessionLaunchReasonMessages])
    {
      v10 = [fallbackClipBundleID length];

      if (!v10 || (v11 = [fallbackClipBundleID rangeOfString:@"." options:4], v11 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v12 = 0;
        goto LABEL_9;
      }

      metadata = [fallbackClipBundleID substringToIndex:v11];
      fullAppBundleID = [[LSApplicationRecord alloc] initWithBundleIdentifier:metadata allowPlaceholder:0 error:0];
      if (fullAppBundleID)
      {
        v14 = [sessionCopy url];
        applicationIdentifier = [fullAppBundleID applicationIdentifier];
        v16 = [CPSUtilities validDomainAssociationWithAnyServiceTypeForURL:v14 applicationIdentifier:applicationIdentifier];

        if (v16)
        {
          v17 = metadata;
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

- (void)_installClipWithURL:(id)l options:(id)options reply:(id)reply
{
  lCopy = l;
  optionsCopy = options;
  replyCopy = reply;
  [RemoteClient _didStartOpenAppForURL:lCopy adamID:0];
  +[CPSSessionManager sharedManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000064D0;
  v15[3] = &unk_100014A48;
  v15[4] = self;
  v18 = v16 = optionsCopy;
  v19 = replyCopy;
  v17 = lCopy;
  v11 = v18;
  v12 = replyCopy;
  v13 = lCopy;
  v14 = optionsCopy;
  [v11 getSessionWithURL:v13 completion:v15];
}

- (BOOL)_canSkipShowingAppClipCardOnLaunchForSession:(id)session
{
  sessionCopy = session;
  v5 = [(RemoteClient *)self _deducedInstalledFullAppBundleIDForSession:sessionCopy];

  if (v5)
  {
    hasFullAppInstalledOnSystem = 1;
  }

  else
  {
    v11 = 0;
    configuration = [sessionCopy configuration];
    hasFullAppInstalledOnSystem = 0;
    if ([configuration mayLaunchWithoutInvocationUI])
    {
      metadata = [sessionCopy metadata];
      if ([metadata hasUpToDateVersionInstalledOnSystemIsPlaceholder:&v11] && v11 != 1)
      {
        hasFullAppInstalledOnSystem = 1;
      }

      else
      {
        metadata2 = [sessionCopy metadata];
        hasFullAppInstalledOnSystem = [metadata2 hasFullAppInstalledOnSystem];
      }
    }
  }

  return hasFullAppInstalledOnSystem;
}

+ (void)_didStartDownloadingAppForBundleID:(id)d
{
  dCopy = d;
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
    selfCopy = self;
    v9 = 2113;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "RemoteClient (%p): downloading clip for bundleID: %{private}@", &v7, 0x16u);
  }
}

+ (void)_didEndDownloadingAppForBundleID:(id)d error:(id)error completionHandler:(id)handler
{
  dCopy = d;
  errorCopy = error;
  handlerCopy = handler;
  v11 = sub_100004064();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "downloadAppAction", "end downloading app", &v14, 2u);
  }

  v12 = sub_100004064();
  v13 = v12;
  if (errorCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100009550(self, v13, errorCopy);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 134218243;
    selfCopy = self;
    v16 = 2113;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "RemoteClient (%p): success in downloading clip for bundleID: %{private}@", &v14, 0x16u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, errorCopy);
  }
}

+ (void)_didStartOpenAppForURL:(id)l adamID:(id)d
{
  lCopy = l;
  dCopy = d;
  v8 = sub_100004064();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "openAppAction", "start open app", &v12, 2u);
  }

  v9 = sub_100004064();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (lCopy)
  {
    if (v10)
    {
      v12 = 134218243;
      selfCopy2 = self;
      v14 = 2117;
      v15 = lCopy;
      v11 = "RemoteClient (%p): opening clip for %{sensitive}@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, &v12, 0x16u);
    }
  }

  else if (v10)
  {
    v12 = 134218243;
    selfCopy2 = self;
    v14 = 2117;
    v15 = dCopy;
    v11 = "RemoteClient (%p): opening clip for adamID: %{sensitive}@";
    goto LABEL_8;
  }
}

+ (void)_didEndOpenAppForURL:(id)l adamID:(id)d error:(id)error completionHandler:(id)handler
{
  lCopy = l;
  dCopy = d;
  errorCopy = error;
  handlerCopy = handler;
  v14 = sub_100004064();
  if (os_signpost_enabled(v14))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "openAppAction", "end open app", &v19, 2u);
  }

  if (errorCopy)
  {
    v15 = sub_100004064();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000095F8(self, v15, errorCopy);
    }
  }

  else
  {
    v16 = sub_100004064();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (lCopy)
    {
      if (!v17)
      {
        goto LABEL_12;
      }

      v19 = 134218243;
      selfCopy2 = self;
      v21 = 2117;
      v22 = lCopy;
      v18 = "RemoteClient (%p): success in opening clip for %{sensitive}@";
    }

    else
    {
      if (!v17)
      {
        goto LABEL_12;
      }

      v19 = 134218243;
      selfCopy2 = self;
      v21 = 2117;
      v22 = dCopy;
      v18 = "RemoteClient (%p): success in opening clip for adamID: %{sensitive}@";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v18, &v19, 0x16u);
  }

LABEL_12:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, errorCopy);
  }
}

- (void)registerSessionWithURL:(id)l configuration:(id)configuration
{
  lCopy = l;
  configurationCopy = configuration;
  if ((+[CPSClipURL isSupported]& 1) != 0)
  {
    v8 = +[CPSSessionManager sharedManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008194;
    v10[3] = &unk_100014A70;
    v11 = lCopy;
    selfCopy = self;
    [v8 getSessionWithURL:v11 configuration:configurationCopy completion:v10];
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

- (void)unregisterSessionWithURL:(id)l
{
  lCopy = l;
  v5 = +[CPSSessionManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000083B0;
  v7[3] = &unk_100014A70;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  [v5 getSessionWithURL:v6 completion:v7];
}

- (void)getUserNotificationConsentForBundleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v7 = +[CPSClipDataSQLiteStore defaultStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000084F4;
  v9[3] = &unk_100014A98;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 getAppClipRecordWithBundleID:dCopy completion:v9];
}

- (void)notifyWebClipActivationWithBundleID:(id)d referrerBundleID:(id)iD reply:(id)reply
{
  iDCopy = iD;
  replyCopy = reply;
  dCopy = d;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = +[CPSWebClipStore sharedStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000086E0;
  v14[3] = &unk_100014AE8;
  v15 = iDCopy;
  v16 = replyCopy;
  v17 = Current;
  v12 = iDCopy;
  v13 = replyCopy;
  [v11 getAppClipWithIdentifier:dCopy receiveOnQueue:&_dispatch_main_q completionHandler:v14];
}

- (void)getLastLaunchOptionsWithBundleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v7 = +[CPSClipDataSQLiteStore defaultStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008C30;
  v9[3] = &unk_100014A98;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 getAppClipRecordWithBundleID:dCopy completion:v9];
}

- (void)checkAndConsumeShowsAppAttributionBannerForBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[CPSWebClipStore sharedStore];
  v8 = [v7 synchronouslyGetAppClipWithIdentifier:dCopy];

  if (v8)
  {
    v9 = +[CPSSessionManager sharedManager];
    pageURL = [v8 pageURL];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008DF0;
    v11[3] = &unk_100014B10;
    v12 = completionCopy;
    [v9 getSessionWithURL:pageURL completion:v11];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)performValidationWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  v7 = [[CPSURLValidator alloc] initWithRequest:requestCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008F04;
  v9[3] = &unk_100014B38;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 validateWithCompletion:v9];
}

- (void)fetchABRMetadataForDiagnosticsWithURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  v7 = objc_alloc_init(CPSBusinessItemFetcher);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008FE0;
  v9[3] = &unk_1000146C0;
  v10 = replyCopy;
  v8 = replyCopy;
  [v7 fetchBusinessMetadataForURL:lCopy availabilityHandler:0 completion:v9];
}

- (void)fetchAMPMetadataForDiagnosticsWithBundleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = objc_alloc_init(CPSAppInfoFetcher);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000090D0;
  v10[3] = &unk_100014B60;
  v10[4] = self;
  v11 = replyCopy;
  v9 = replyCopy;
  [v8 lookUpClipMetadataByBundleID:dCopy sourceBundleID:0 downloadIconIfNeeded:0 skipCaching:1 completionHandler:v10];
}

@end