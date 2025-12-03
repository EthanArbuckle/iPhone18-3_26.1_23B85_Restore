@interface FamilyCircleServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FamilyCircleServiceDelegate)initWithQueueProvider:(id)provider;
- (id)_applyScreenTimeModel:(id)model dsid:(id)dsid;
- (id)_familyGrandSlamSignerWithAccountStore:(id)store;
- (id)_grandSlamAccountForAccountStore:(id)store;
- (id)_grandSlamSignerWithAccountStore:(id)store;
- (id)_networkService;
- (id)_primaryAccount;
- (id)_turnOnScreentimeForDSID:(id)d;
- (void)buildInvite:(id)invite replyBlock:(id)block;
- (void)cacheObjectSettings:(id)settings dsid:(id)dsid options:(id)options replyBlock:(id)block;
- (void)cancelChildTransferRequest:(id)request replyBlock:(id)block;
- (void)cancelInvitationWith:(id)with familyID:(id)d options:(id)options replyBlock:(id)block;
- (void)clearFamilyCircleCacheWithReplyBlock:(id)block;
- (void)clearPhotoCacheWithReplyBlock:(id)block;
- (void)didAddAccount:(id)account replyBlock:(id)block;
- (void)didDeleteAccount:(id)account replyBlock:(id)block;
- (void)didReceiveFamilyEventPushNotificationWithPayload:(id)payload options:(id)options replyBlock:(id)block;
- (void)enableSettingsForMemberDSID:(id)d options:(id)options replyBlock:(id)block;
- (void)enableSettingsForMemberDSID:(id)d screentimeModelCache:(id)cache options:(id)options replyBlock:(id)block;
- (void)familyChecklistRankingConfigWithCachePolicy:(unint64_t)policy replyBlock:(id)block;
- (void)fetchEligibilityForPropertyName:(id)name bundleID:(id)d completion:(id)completion;
- (void)fetchFamilyCircleWithCachePolicy:(unint64_t)policy signedInAccountShouldBeApprover:(BOOL)approver context:(id)context options:(id)options replyBlock:(id)block;
- (void)fetchFamilyMemberPhotoWithDSID:(id)d hashedDSID:(id)iD size:(int64_t)size localFallback:(BOOL)fallback options:(id)options replyBlock:(id)block;
- (void)fetchFollowupsWithAltDSID:(id)d options:(id)options replyBlock:(id)block;
- (void)fetchParentalControlBitsForAltDSID:(id)d replyBlock:(id)block;
- (void)fetchSettingsPresetsForAge:(id)age fromCache:(BOOL)cache storeFront:(id)front version:(id)version options:(id)options replyBlock:(id)block;
- (void)fetchSettingsPresetsForMemberWithAltDSID:(id)d fromCache:(BOOL)cache storeFront:(id)front version:(id)version options:(id)options replyBlock:(id)block;
- (void)handleContactsChanged;
- (void)launchICloudFamilySettingsWithOptions:(id)options;
- (void)launchOutOfProcessFamilyWithOptions:(id)options completion:(id)completion;
- (void)registerPushToken:(id)token options:(id)options replyBlock:(id)block;
- (void)removeFamilyMemberWithDSID:(id)d options:(id)options replyBlock:(id)block;
- (void)removeFamilyWithReplyBlock:(id)block;
- (void)resendChildTransferRequest:(id)request replyBlock:(id)block;
- (void)runHeartbeatWithOptions:(id)options replyBlock:(id)block;
- (void)setCommLimitsCollaborationSwitchForAltDSID:(id)d enableCollaboration:(BOOL)collaboration replyBlock:(id)block;
- (void)setCommLimitsMailAppSwitchForAltDSID:(id)d enableMailApp:(BOOL)app replyBlock:(id)block;
- (void)setRestrictionsForProtoAccountWithCompletion:(id)completion;
- (void)updateFamilyInviteStatusWith:(int64_t)with inviteCode:(id)code options:(id)options responseFormat:(int64_t)format additionalRequestParameters:(id)parameters replyBlock:(id)block;
- (void)updateFamilyMemberFlagWithDSID:(id)d ephemeralAuthResults:(id)results flag:(id)flag enabled:(BOOL)enabled replyBlock:(id)block;
- (void)updateFamilyMemberFlagsWithDSID:(id)d flags:(id)flags replyBlock:(id)block;
@end

@implementation FamilyCircleServiceDelegate

- (id)_primaryAccount
{
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (id)_networkService
{
  v3 = objc_alloc_init(FADeviceInfo);
  v4 = [FANetworkService alloc];
  _primaryAccount = [(FamilyCircleServiceDelegate *)self _primaryAccount];
  v6 = objc_opt_new();
  v7 = +[AAURLSession sharedSession];
  familyRefreshActivityScheduler = [(FamilyCircleServiceDelegate *)self familyRefreshActivityScheduler];
  v9 = [(FANetworkService *)v4 initWithAccount:_primaryAccount deviceInfo:v3 urlProvider:v6 urlSession:v7 familyRefreshActivityScheduler:familyRefreshActivityScheduler];

  return v9;
}

- (FamilyCircleServiceDelegate)initWithQueueProvider:(id)provider
{
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = FamilyCircleServiceDelegate;
  v6 = [(FamilyCircleServiceDelegate *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queueProvider, provider);
    v8 = [[FAActivityManager alloc] initWithQueueProvider:providerCopy];
    activityManager = v7->_activityManager;
    v7->_activityManager = v8;

    [(FAActivityManager *)v7->_activityManager checkinXPCActivities];
    objc_initWeak(&location, v7);
    v10 = objc_alloc_init(FAMarqueeUpdateHandler);
    marqueeUpdateHandler = v7->_marqueeUpdateHandler;
    v7->_marqueeUpdateHandler = v10;

    v12 = [FAFamilyFetchActivityScheduler alloc];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001511C;
    v23[3] = &unk_1000A6BF8;
    objc_copyWeak(&v24, &location);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001523C;
    v21[3] = &unk_1000A6C48;
    v13 = v7;
    v22 = v13;
    v14 = [v12 initWithFamilyCircleFetchBlock:v23 cacheLoadBlock:v21];
    v15 = v13[3];
    v13[3] = v14;

    [v13[3] reschedule];
    +[FAFamilyCFUScheduler scheduleWakeupIfNeeded];
    v16 = [FAXPCEventObserver alloc];
    v17 = objc_alloc_init(_TtC13familycircled16XPCStreamHandler);
    v18 = [(FAXPCEventObserver *)v16 initWithStream:v17 delegate:v13];
    v19 = v13[2];
    v13[2] = v18;

    [v13[2] start];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)handleContactsChanged
{
  v2 = objc_alloc_init(FAMarqueeUpdateHandler);
  [(FAMarqueeUpdateHandler *)v2 updateMarqueeCache];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FAServiceProtocol];
  [v6 setClass:objc_opt_class() forSelector:"cacheObjectSettings:dsid:options:replyBlock:" argumentIndex:0 ofReply:0];
  [connectionCopy setExportedInterface:v6];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)fetchFamilyCircleWithCachePolicy:(unint64_t)policy signedInAccountShouldBeApprover:(BOOL)approver context:(id)context options:(id)options replyBlock:(id)block
{
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v16 = [queueProvider requestQueueWithOptions:optionsCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000156E4;
  v20[3] = &unk_1000A6C98;
  v23 = blockCopy;
  policyCopy = policy;
  approverCopy = approver;
  v20[4] = self;
  v21 = optionsCopy;
  v22 = contextCopy;
  v17 = blockCopy;
  v18 = contextCopy;
  v19 = optionsCopy;
  dispatch_async(v16, v20);
}

- (void)removeFamilyMemberWithDSID:(id)d options:(id)options replyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [queueProvider requestQueueWithOptions:optionsCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000159E0;
  block[3] = &unk_1000A6A20;
  block[4] = self;
  v16 = dCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = dCopy;
  dispatch_async(v12, block);
}

- (void)removeFamilyWithReplyBlock:(id)block
{
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v6 = [queueProvider requestQueueWithOptions:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015C18;
  v8[3] = &unk_1000A66B8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, v8);
}

- (void)fetchFamilyMemberPhotoWithDSID:(id)d hashedDSID:(id)iD size:(int64_t)size localFallback:(BOOL)fallback options:(id)options replyBlock:(id)block
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v19 = [queueProvider requestQueueWithOptions:optionsCopy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015EB4;
  block[3] = &unk_1000A6D60;
  block[4] = self;
  v25 = dCopy;
  fallbackCopy = fallback;
  v26 = iDCopy;
  v27 = optionsCopy;
  v28 = blockCopy;
  sizeCopy = size;
  v20 = blockCopy;
  v21 = optionsCopy;
  v22 = iDCopy;
  v23 = dCopy;
  dispatch_async(v19, block);
}

- (void)registerPushToken:(id)token options:(id)options replyBlock:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [queueProvider requestQueueWithOptions:optionsCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016388;
  block[3] = &unk_1000A6A20;
  block[4] = self;
  v16 = tokenCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = tokenCopy;
  dispatch_async(v12, block);
}

- (void)clearFamilyCircleCacheWithReplyBlock:(id)block
{
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v6 = [queueProvider requestQueueWithOptions:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016550;
  v8[3] = &unk_1000A66B8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, v8);
}

- (void)clearPhotoCacheWithReplyBlock:(id)block
{
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v6 = [queueProvider requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016818;
  block[3] = &unk_1000A6D88;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, block);
}

- (void)didReceiveFamilyEventPushNotificationWithPayload:(id)payload options:(id)options replyBlock:(id)block
{
  blockCopy = block;
  _networkService = [(FamilyCircleServiceDelegate *)self _networkService];
  familyRefreshActivityScheduler = [(FamilyCircleServiceDelegate *)self familyRefreshActivityScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100016A88;
  v10[3] = &unk_1000A6C70;
  v11 = blockCopy;
  v9 = blockCopy;
  [FAFamilyCircleDaemonChangeHandler handleDidReceivePushEventWithNetworkService:_networkService familyRefreshActivityScheduler:familyRefreshActivityScheduler completion:v10];
}

- (void)updateFamilyMemberFlagWithDSID:(id)d ephemeralAuthResults:(id)results flag:(id)flag enabled:(BOOL)enabled replyBlock:(id)block
{
  dCopy = d;
  resultsCopy = results;
  flagCopy = flag;
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v17 = [queueProvider requestQueueWithOptions:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100016BE4;
  v22[3] = &unk_1000A6DD8;
  v23 = resultsCopy;
  selfCopy = self;
  v25 = dCopy;
  v26 = flagCopy;
  enabledCopy = enabled;
  v27 = blockCopy;
  v18 = blockCopy;
  v19 = flagCopy;
  v20 = dCopy;
  v21 = resultsCopy;
  dispatch_async(v17, v22);
}

- (void)updateFamilyMemberFlagsWithDSID:(id)d flags:(id)flags replyBlock:(id)block
{
  dCopy = d;
  flagsCopy = flags;
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [queueProvider requestQueueWithOptions:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100016FA0;
  v16[3] = &unk_1000A6AC8;
  v16[4] = self;
  v17 = dCopy;
  v18 = flagsCopy;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = flagsCopy;
  v15 = dCopy;
  dispatch_async(v12, v16);
}

- (void)launchICloudFamilySettingsWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=FAMILY"];
  [v5 openSensitiveURL:v4 withOptions:optionsCopy];
}

- (void)launchOutOfProcessFamilyWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v7 = objc_alloc_init(FARemotePresenter);
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting remote user interface", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000172EC;
  v11[3] = &unk_1000A6E00;
  v12 = v7;
  v13 = completionCopy;
  v9 = v7;
  v10 = completionCopy;
  [(FARemotePresenter *)v9 presentRemoteUserInterfaceWithOptions:optionsCopy completion:v11];
}

- (void)fetchEligibilityForPropertyName:(id)name bundleID:(id)d completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000173F0;
  v10[3] = &unk_1000A6E28;
  selfCopy = self;
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  v7 = dCopy;
  v8 = nameCopy;
  v9 = completionCopy;
  [(FamilyCircleServiceDelegate *)selfCopy fetchFamilyCircleWithCachePolicy:0 signedInAccountShouldBeApprover:0 context:0 options:0 replyBlock:v10];
}

- (void)fetchFollowupsWithAltDSID:(id)d options:(id)options replyBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v10 = [queueProvider requestQueueWithOptions:optionsCopy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000175BC;
  v12[3] = &unk_1000A66B8;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  dispatch_async(v10, v12);
}

- (void)didAddAccount:(id)account replyBlock:(id)block
{
  if (account && block)
  {
    [FAActivityManager handleAccountAddition:"handleAccountAddition:completion:" completion:?];
  }

  v6 = objc_alloc_init(FAURLConfiguration);
  [v6 fetchAAURLConfigurationWithCompletion:&stru_1000A6E68];
  marqueeUpdateHandler = [(FamilyCircleServiceDelegate *)self marqueeUpdateHandler];
  [marqueeUpdateHandler updateMarqueeCache];
}

- (void)didDeleteAccount:(id)account replyBlock:(id)block
{
  accountCopy = account;
  blockCopy = block;
  v8 = blockCopy;
  if (accountCopy && blockCopy)
  {
    [(FAActivityManager *)self->_activityManager handleAccountDeletion:accountCopy completion:blockCopy];
  }

  v9 = _FALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100078E78();
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 removeObjectForKey:FAFamilySettingRowFamilyCountKey];

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 removeObjectForKey:FAFamilySettingRowPendingInvitesKey];

  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100078EB4();
  }

  v13 = [FLFollowUpController alloc];
  v14 = [v13 initWithClientIdentifier:FAFollowUpClientIdentifier];
  v19 = 0;
  v15 = [v14 clearPendingFollowUpItems:&v19];
  v16 = v19;
  if ((v15 & 1) == 0)
  {
    v17 = _FALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100078EF0(v16, v17);
    }
  }

  marqueeUpdateHandler = [(FamilyCircleServiceDelegate *)self marqueeUpdateHandler];
  [marqueeUpdateHandler updateMarqueeCache];
}

- (id)_grandSlamAccountForAccountStore:(id)store
{
  storeCopy = store;
  _primaryAccount = [(FamilyCircleServiceDelegate *)self _primaryAccount];
  v6 = [storeCopy aa_grandSlamAccountForiCloudAccount:_primaryAccount];

  return v6;
}

- (id)_grandSlamSignerWithAccountStore:(id)store
{
  storeCopy = store;
  v5 = [AAGrandSlamSigner alloc];
  v6 = [(FamilyCircleServiceDelegate *)self _grandSlamAccountForAccountStore:storeCopy];
  v7 = [v5 initWithAccountStore:storeCopy grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];

  return v7;
}

- (id)_familyGrandSlamSignerWithAccountStore:(id)store
{
  storeCopy = store;
  v5 = [AAGrandSlamSigner alloc];
  v6 = [(FamilyCircleServiceDelegate *)self _grandSlamAccountForAccountStore:storeCopy];
  v7 = [v5 initWithAccountStore:storeCopy grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDFamilySharing];

  [v7 setHeaderFieldKey:AAFamilyGrandSlamTokenHeaderKey];

  return v7;
}

- (void)runHeartbeatWithOptions:(id)options replyBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v9 = [queueProvider requestQueueWithOptions:optionsCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017B90;
  v11[3] = &unk_1000A66B8;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  dispatch_async(v9, v11);
}

- (void)fetchSettingsPresetsForMemberWithAltDSID:(id)d fromCache:(BOOL)cache storeFront:(id)front version:(id)version options:(id)options replyBlock:(id)block
{
  dCopy = d;
  frontCopy = front;
  versionCopy = version;
  optionsCopy = options;
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v20 = [queueProvider requestQueueWithOptions:optionsCopy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F88;
  block[3] = &unk_1000A6E90;
  block[4] = self;
  v27 = optionsCopy;
  cacheCopy = cache;
  v28 = dCopy;
  v29 = frontCopy;
  v30 = versionCopy;
  v31 = blockCopy;
  v21 = blockCopy;
  v22 = versionCopy;
  v23 = frontCopy;
  v24 = dCopy;
  v25 = optionsCopy;
  dispatch_async(v20, block);
}

- (void)fetchSettingsPresetsForAge:(id)age fromCache:(BOOL)cache storeFront:(id)front version:(id)version options:(id)options replyBlock:(id)block
{
  ageCopy = age;
  frontCopy = front;
  versionCopy = version;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v20 = [queueProvider requestQueueWithOptions:optionsCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018230;
  block[3] = &unk_1000A6EF8;
  cacheCopy = cache;
  v26 = ageCopy;
  v27 = frontCopy;
  v28 = versionCopy;
  v29 = blockCopy;
  v21 = blockCopy;
  v22 = versionCopy;
  v23 = frontCopy;
  v24 = ageCopy;
  dispatch_async(v20, block);
}

- (void)updateFamilyInviteStatusWith:(int64_t)with inviteCode:(id)code options:(id)options responseFormat:(int64_t)format additionalRequestParameters:(id)parameters replyBlock:(id)block
{
  codeCopy = code;
  parametersCopy = parameters;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v19 = [queueProvider requestQueueWithOptions:optionsCopy];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100018428;
  v23[3] = &unk_1000A6F20;
  v23[4] = self;
  v24 = codeCopy;
  withCopy = with;
  formatCopy = format;
  v25 = parametersCopy;
  v26 = blockCopy;
  v20 = blockCopy;
  v21 = parametersCopy;
  v22 = codeCopy;
  dispatch_async(v19, v23);
}

- (void)cancelInvitationWith:(id)with familyID:(id)d options:(id)options replyBlock:(id)block
{
  withCopy = with;
  dCopy = d;
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v13 = [queueProvider requestQueueWithOptions:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001868C;
  v17[3] = &unk_1000A6AC8;
  v17[4] = self;
  v18 = withCopy;
  v19 = dCopy;
  v20 = blockCopy;
  v14 = blockCopy;
  v15 = dCopy;
  v16 = withCopy;
  dispatch_async(v13, v17);
}

- (void)cacheObjectSettings:(id)settings dsid:(id)dsid options:(id)options replyBlock:(id)block
{
  settingsCopy = settings;
  dsidCopy = dsid;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [queueProvider requestQueueWithOptions:optionsCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188A4;
  block[3] = &unk_1000A6A20;
  v20 = dsidCopy;
  v21 = settingsCopy;
  v22 = blockCopy;
  v16 = blockCopy;
  v17 = settingsCopy;
  v18 = dsidCopy;
  dispatch_async(v15, block);
}

- (void)resendChildTransferRequest:(id)request replyBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = +[ACAccountStore defaultStore];
  v9 = [FAResendChildTransferRequestOperation alloc];
  _networkService = [(FamilyCircleServiceDelegate *)self _networkService];
  v11 = [(FamilyCircleServiceDelegate *)self _grandSlamSignerWithAccountStore:v8];
  v12 = [(FamilyCircleServiceDelegate *)self _familyGrandSlamSignerWithAccountStore:v8];
  v13 = [(FAResendChildTransferRequestOperation *)v9 initWithNetworkService:_networkService grandSlamSigner:v11 familyGrandSlamSigner:v12 email:requestCopy isResend:1];

  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [queueProvider requestQueueWithOptions:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018B5C;
  v18[3] = &unk_1000A66B8;
  v19 = v13;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)cancelChildTransferRequest:(id)request replyBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = +[ACAccountStore defaultStore];
  v9 = [FAResendChildTransferRequestOperation alloc];
  _networkService = [(FamilyCircleServiceDelegate *)self _networkService];
  v11 = [(FamilyCircleServiceDelegate *)self _grandSlamSignerWithAccountStore:v8];
  v12 = [(FamilyCircleServiceDelegate *)self _familyGrandSlamSignerWithAccountStore:v8];
  v13 = [(FAResendChildTransferRequestOperation *)v9 initWithNetworkService:_networkService grandSlamSigner:v11 familyGrandSlamSigner:v12 email:requestCopy isResend:1];

  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [queueProvider requestQueueWithOptions:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018E18;
  v18[3] = &unk_1000A66B8;
  v19 = v13;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)fetchParentalControlBitsForAltDSID:(id)d replyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v8 = objc_alloc_init(FAParentalControlsOperation);
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v10 = [queueProvider requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019060;
  block[3] = &unk_1000A6A20;
  v15 = v8;
  v16 = dCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = dCopy;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)setCommLimitsCollaborationSwitchForAltDSID:(id)d enableCollaboration:(BOOL)collaboration replyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = objc_alloc_init(FAParentalControlsOperation);
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [queueProvider requestQueueWithOptions:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000192B8;
  v16[3] = &unk_1000A6F98;
  v17 = v10;
  v18 = dCopy;
  collaborationCopy = collaboration;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = dCopy;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)setCommLimitsMailAppSwitchForAltDSID:(id)d enableMailApp:(BOOL)app replyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = objc_alloc_init(FAParentalControlsOperation);
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [queueProvider requestQueueWithOptions:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000195A0;
  v16[3] = &unk_1000A6F98;
  v17 = v10;
  v18 = dCopy;
  appCopy = app;
  v19 = blockCopy;
  v13 = blockCopy;
  v14 = dCopy;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)familyChecklistRankingConfigWithCachePolicy:(unint64_t)policy replyBlock:(id)block
{
  blockCopy = block;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v8 = [queueProvider requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019840;
  block[3] = &unk_1000A6FC0;
  v11 = blockCopy;
  policyCopy = policy;
  block[4] = self;
  v9 = blockCopy;
  dispatch_async(v8, block);
}

- (void)buildInvite:(id)invite replyBlock:(id)block
{
  blockCopy = block;
  inviteCopy = invite;
  v8 = +[ACAccountStore defaultStore];
  v9 = [FABuildInviteOperation alloc];
  _networkService = [(FamilyCircleServiceDelegate *)self _networkService];
  v11 = [(FamilyCircleServiceDelegate *)self _grandSlamSignerWithAccountStore:v8];
  v12 = [(FamilyCircleServiceDelegate *)self _familyGrandSlamSignerWithAccountStore:v8];
  v13 = [(FABuildInviteOperation *)v9 initWithNetworkService:_networkService grandSlamSigner:v11 familyGrandSlamSigner:v12 inviteRecipients:inviteCopy];

  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [queueProvider requestQueueWithOptions:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100019B2C;
  v18[3] = &unk_1000A66B8;
  v19 = v13;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)enableSettingsForMemberDSID:(id)d options:(id)options replyBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [queueProvider requestQueueWithOptions:optionsCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019D60;
  block[3] = &unk_1000A6A20;
  v16 = dCopy;
  selfCopy = self;
  v18 = blockCopy;
  v13 = blockCopy;
  v14 = dCopy;
  dispatch_async(v12, block);
}

- (void)enableSettingsForMemberDSID:(id)d screentimeModelCache:(id)cache options:(id)options replyBlock:(id)block
{
  dCopy = d;
  cacheCopy = cache;
  blockCopy = block;
  optionsCopy = options;
  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [queueProvider requestQueueWithOptions:optionsCopy];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001A0A4;
  v19[3] = &unk_1000A6AC8;
  v19[4] = self;
  v20 = dCopy;
  v21 = cacheCopy;
  v22 = blockCopy;
  v16 = blockCopy;
  v17 = cacheCopy;
  v18 = dCopy;
  dispatch_async(v15, v19);
}

- (id)_turnOnScreentimeForDSID:(id)d
{
  dCopy = d;
  v4 = [AAFPromise alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A264;
  v8[3] = &unk_1000A6198;
  v9 = dCopy;
  v5 = dCopy;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

- (id)_applyScreenTimeModel:(id)model dsid:(id)dsid
{
  modelCopy = model;
  dsidCopy = dsid;
  v7 = [AAFPromise alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001A700;
  v12[3] = &unk_1000A6120;
  v13 = modelCopy;
  v14 = dsidCopy;
  v8 = dsidCopy;
  v9 = modelCopy;
  v10 = [v7 initWithBlock:v12];

  return v10;
}

- (void)setRestrictionsForProtoAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting proto account restrictions through ST settings.", buf, 2u);
  }

  queueProvider = [(FamilyCircleServiceDelegate *)self queueProvider];
  v7 = [queueProvider requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AADC;
  block[3] = &unk_1000A6D88;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

@end