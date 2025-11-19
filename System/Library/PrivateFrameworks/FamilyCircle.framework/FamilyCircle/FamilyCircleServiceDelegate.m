@interface FamilyCircleServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FamilyCircleServiceDelegate)initWithQueueProvider:(id)a3;
- (id)_applyScreenTimeModel:(id)a3 dsid:(id)a4;
- (id)_familyGrandSlamSignerWithAccountStore:(id)a3;
- (id)_grandSlamAccountForAccountStore:(id)a3;
- (id)_grandSlamSignerWithAccountStore:(id)a3;
- (id)_networkService;
- (id)_primaryAccount;
- (id)_turnOnScreentimeForDSID:(id)a3;
- (void)buildInvite:(id)a3 replyBlock:(id)a4;
- (void)cacheObjectSettings:(id)a3 dsid:(id)a4 options:(id)a5 replyBlock:(id)a6;
- (void)cancelChildTransferRequest:(id)a3 replyBlock:(id)a4;
- (void)cancelInvitationWith:(id)a3 familyID:(id)a4 options:(id)a5 replyBlock:(id)a6;
- (void)clearFamilyCircleCacheWithReplyBlock:(id)a3;
- (void)clearPhotoCacheWithReplyBlock:(id)a3;
- (void)didAddAccount:(id)a3 replyBlock:(id)a4;
- (void)didDeleteAccount:(id)a3 replyBlock:(id)a4;
- (void)didReceiveFamilyEventPushNotificationWithPayload:(id)a3 options:(id)a4 replyBlock:(id)a5;
- (void)enableSettingsForMemberDSID:(id)a3 options:(id)a4 replyBlock:(id)a5;
- (void)enableSettingsForMemberDSID:(id)a3 screentimeModelCache:(id)a4 options:(id)a5 replyBlock:(id)a6;
- (void)familyChecklistRankingConfigWithCachePolicy:(unint64_t)a3 replyBlock:(id)a4;
- (void)fetchEligibilityForPropertyName:(id)a3 bundleID:(id)a4 completion:(id)a5;
- (void)fetchFamilyCircleWithCachePolicy:(unint64_t)a3 signedInAccountShouldBeApprover:(BOOL)a4 context:(id)a5 options:(id)a6 replyBlock:(id)a7;
- (void)fetchFamilyMemberPhotoWithDSID:(id)a3 hashedDSID:(id)a4 size:(int64_t)a5 localFallback:(BOOL)a6 options:(id)a7 replyBlock:(id)a8;
- (void)fetchFollowupsWithAltDSID:(id)a3 options:(id)a4 replyBlock:(id)a5;
- (void)fetchParentalControlBitsForAltDSID:(id)a3 replyBlock:(id)a4;
- (void)fetchSettingsPresetsForAge:(id)a3 fromCache:(BOOL)a4 storeFront:(id)a5 version:(id)a6 options:(id)a7 replyBlock:(id)a8;
- (void)fetchSettingsPresetsForMemberWithAltDSID:(id)a3 fromCache:(BOOL)a4 storeFront:(id)a5 version:(id)a6 options:(id)a7 replyBlock:(id)a8;
- (void)handleContactsChanged;
- (void)launchICloudFamilySettingsWithOptions:(id)a3;
- (void)launchOutOfProcessFamilyWithOptions:(id)a3 completion:(id)a4;
- (void)registerPushToken:(id)a3 options:(id)a4 replyBlock:(id)a5;
- (void)removeFamilyMemberWithDSID:(id)a3 options:(id)a4 replyBlock:(id)a5;
- (void)removeFamilyWithReplyBlock:(id)a3;
- (void)resendChildTransferRequest:(id)a3 replyBlock:(id)a4;
- (void)runHeartbeatWithOptions:(id)a3 replyBlock:(id)a4;
- (void)setCommLimitsCollaborationSwitchForAltDSID:(id)a3 enableCollaboration:(BOOL)a4 replyBlock:(id)a5;
- (void)setCommLimitsMailAppSwitchForAltDSID:(id)a3 enableMailApp:(BOOL)a4 replyBlock:(id)a5;
- (void)setRestrictionsForProtoAccountWithCompletion:(id)a3;
- (void)updateFamilyInviteStatusWith:(int64_t)a3 inviteCode:(id)a4 options:(id)a5 responseFormat:(int64_t)a6 additionalRequestParameters:(id)a7 replyBlock:(id)a8;
- (void)updateFamilyMemberFlagWithDSID:(id)a3 ephemeralAuthResults:(id)a4 flag:(id)a5 enabled:(BOOL)a6 replyBlock:(id)a7;
- (void)updateFamilyMemberFlagsWithDSID:(id)a3 flags:(id)a4 replyBlock:(id)a5;
@end

@implementation FamilyCircleServiceDelegate

- (id)_primaryAccount
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (id)_networkService
{
  v3 = objc_alloc_init(FADeviceInfo);
  v4 = [FANetworkService alloc];
  v5 = [(FamilyCircleServiceDelegate *)self _primaryAccount];
  v6 = objc_opt_new();
  v7 = +[AAURLSession sharedSession];
  v8 = [(FamilyCircleServiceDelegate *)self familyRefreshActivityScheduler];
  v9 = [(FANetworkService *)v4 initWithAccount:v5 deviceInfo:v3 urlProvider:v6 urlSession:v7 familyRefreshActivityScheduler:v8];

  return v9;
}

- (FamilyCircleServiceDelegate)initWithQueueProvider:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = FamilyCircleServiceDelegate;
  v6 = [(FamilyCircleServiceDelegate *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queueProvider, a3);
    v8 = [[FAActivityManager alloc] initWithQueueProvider:v5];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FAServiceProtocol];
  [v6 setClass:objc_opt_class() forSelector:"cacheObjectSettings:dsid:options:replyBlock:" argumentIndex:0 ofReply:0];
  [v5 setExportedInterface:v6];
  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)fetchFamilyCircleWithCachePolicy:(unint64_t)a3 signedInAccountShouldBeApprover:(BOOL)a4 context:(id)a5 options:(id)a6 replyBlock:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v16 = [v15 requestQueueWithOptions:v13];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000156E4;
  v20[3] = &unk_1000A6C98;
  v23 = v14;
  v24 = a3;
  v25 = a4;
  v20[4] = self;
  v21 = v13;
  v22 = v12;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  dispatch_async(v16, v20);
}

- (void)removeFamilyMemberWithDSID:(id)a3 options:(id)a4 replyBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [v11 requestQueueWithOptions:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000159E0;
  block[3] = &unk_1000A6A20;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, block);
}

- (void)removeFamilyWithReplyBlock:(id)a3
{
  v4 = a3;
  v5 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v6 = [v5 requestQueueWithOptions:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015C18;
  v8[3] = &unk_1000A66B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)fetchFamilyMemberPhotoWithDSID:(id)a3 hashedDSID:(id)a4 size:(int64_t)a5 localFallback:(BOOL)a6 options:(id)a7 replyBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v19 = [v18 requestQueueWithOptions:v16];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015EB4;
  block[3] = &unk_1000A6D60;
  block[4] = self;
  v25 = v14;
  v30 = a6;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = a5;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  dispatch_async(v19, block);
}

- (void)registerPushToken:(id)a3 options:(id)a4 replyBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [v11 requestQueueWithOptions:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016388;
  block[3] = &unk_1000A6A20;
  block[4] = self;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, block);
}

- (void)clearFamilyCircleCacheWithReplyBlock:(id)a3
{
  v4 = a3;
  v5 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v6 = [v5 requestQueueWithOptions:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016550;
  v8[3] = &unk_1000A66B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)clearPhotoCacheWithReplyBlock:(id)a3
{
  v4 = a3;
  v5 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v6 = [v5 requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016818;
  block[3] = &unk_1000A6D88;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);
}

- (void)didReceiveFamilyEventPushNotificationWithPayload:(id)a3 options:(id)a4 replyBlock:(id)a5
{
  v6 = a5;
  v7 = [(FamilyCircleServiceDelegate *)self _networkService];
  v8 = [(FamilyCircleServiceDelegate *)self familyRefreshActivityScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100016A88;
  v10[3] = &unk_1000A6C70;
  v11 = v6;
  v9 = v6;
  [FAFamilyCircleDaemonChangeHandler handleDidReceivePushEventWithNetworkService:v7 familyRefreshActivityScheduler:v8 completion:v10];
}

- (void)updateFamilyMemberFlagWithDSID:(id)a3 ephemeralAuthResults:(id)a4 flag:(id)a5 enabled:(BOOL)a6 replyBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v17 = [v16 requestQueueWithOptions:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100016BE4;
  v22[3] = &unk_1000A6DD8;
  v23 = v13;
  v24 = self;
  v25 = v12;
  v26 = v14;
  v28 = a6;
  v27 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v12;
  v21 = v13;
  dispatch_async(v17, v22);
}

- (void)updateFamilyMemberFlagsWithDSID:(id)a3 flags:(id)a4 replyBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [v11 requestQueueWithOptions:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100016FA0;
  v16[3] = &unk_1000A6AC8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);
}

- (void)launchICloudFamilySettingsWithOptions:(id)a3
{
  v3 = a3;
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=FAMILY"];
  [v5 openSensitiveURL:v4 withOptions:v3];
}

- (void)launchOutOfProcessFamilyWithOptions:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
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
  v13 = v5;
  v9 = v7;
  v10 = v5;
  [(FARemotePresenter *)v9 presentRemoteUserInterfaceWithOptions:v6 completion:v11];
}

- (void)fetchEligibilityForPropertyName:(id)a3 bundleID:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000173F0;
  v10[3] = &unk_1000A6E28;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v14;
  [(FamilyCircleServiceDelegate *)v11 fetchFamilyCircleWithCachePolicy:0 signedInAccountShouldBeApprover:0 context:0 options:0 replyBlock:v10];
}

- (void)fetchFollowupsWithAltDSID:(id)a3 options:(id)a4 replyBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v10 = [v9 requestQueueWithOptions:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000175BC;
  v12[3] = &unk_1000A66B8;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(v10, v12);
}

- (void)didAddAccount:(id)a3 replyBlock:(id)a4
{
  if (a3 && a4)
  {
    [FAActivityManager handleAccountAddition:"handleAccountAddition:completion:" completion:?];
  }

  v6 = objc_alloc_init(FAURLConfiguration);
  [v6 fetchAAURLConfigurationWithCompletion:&stru_1000A6E68];
  v5 = [(FamilyCircleServiceDelegate *)self marqueeUpdateHandler];
  [v5 updateMarqueeCache];
}

- (void)didDeleteAccount:(id)a3 replyBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    [(FAActivityManager *)self->_activityManager handleAccountDeletion:v6 completion:v7];
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

  v18 = [(FamilyCircleServiceDelegate *)self marqueeUpdateHandler];
  [v18 updateMarqueeCache];
}

- (id)_grandSlamAccountForAccountStore:(id)a3
{
  v4 = a3;
  v5 = [(FamilyCircleServiceDelegate *)self _primaryAccount];
  v6 = [v4 aa_grandSlamAccountForiCloudAccount:v5];

  return v6;
}

- (id)_grandSlamSignerWithAccountStore:(id)a3
{
  v4 = a3;
  v5 = [AAGrandSlamSigner alloc];
  v6 = [(FamilyCircleServiceDelegate *)self _grandSlamAccountForAccountStore:v4];
  v7 = [v5 initWithAccountStore:v4 grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];

  return v7;
}

- (id)_familyGrandSlamSignerWithAccountStore:(id)a3
{
  v4 = a3;
  v5 = [AAGrandSlamSigner alloc];
  v6 = [(FamilyCircleServiceDelegate *)self _grandSlamAccountForAccountStore:v4];
  v7 = [v5 initWithAccountStore:v4 grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDFamilySharing];

  [v7 setHeaderFieldKey:AAFamilyGrandSlamTokenHeaderKey];

  return v7;
}

- (void)runHeartbeatWithOptions:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v9 = [v8 requestQueueWithOptions:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017B90;
  v11[3] = &unk_1000A66B8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(v9, v11);
}

- (void)fetchSettingsPresetsForMemberWithAltDSID:(id)a3 fromCache:(BOOL)a4 storeFront:(id)a5 version:(id)a6 options:(id)a7 replyBlock:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v20 = [v19 requestQueueWithOptions:v17];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F88;
  block[3] = &unk_1000A6E90;
  block[4] = self;
  v27 = v17;
  v32 = a4;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v18;
  v21 = v18;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  v25 = v17;
  dispatch_async(v20, block);
}

- (void)fetchSettingsPresetsForAge:(id)a3 fromCache:(BOOL)a4 storeFront:(id)a5 version:(id)a6 options:(id)a7 replyBlock:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a7;
  v19 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v20 = [v19 requestQueueWithOptions:v18];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018230;
  block[3] = &unk_1000A6EF8;
  v30 = a4;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(v20, block);
}

- (void)updateFamilyInviteStatusWith:(int64_t)a3 inviteCode:(id)a4 options:(id)a5 responseFormat:(int64_t)a6 additionalRequestParameters:(id)a7 replyBlock:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a5;
  v18 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v19 = [v18 requestQueueWithOptions:v17];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100018428;
  v23[3] = &unk_1000A6F20;
  v23[4] = self;
  v24 = v14;
  v27 = a3;
  v28 = a6;
  v25 = v15;
  v26 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_async(v19, v23);
}

- (void)cancelInvitationWith:(id)a3 familyID:(id)a4 options:(id)a5 replyBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v13 = [v12 requestQueueWithOptions:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001868C;
  v17[3] = &unk_1000A6AC8;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, v17);
}

- (void)cacheObjectSettings:(id)a3 dsid:(id)a4 options:(id)a5 replyBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [v14 requestQueueWithOptions:v13];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000188A4;
  block[3] = &unk_1000A6A20;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v15, block);
}

- (void)resendChildTransferRequest:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ACAccountStore defaultStore];
  v9 = [FAResendChildTransferRequestOperation alloc];
  v10 = [(FamilyCircleServiceDelegate *)self _networkService];
  v11 = [(FamilyCircleServiceDelegate *)self _grandSlamSignerWithAccountStore:v8];
  v12 = [(FamilyCircleServiceDelegate *)self _familyGrandSlamSignerWithAccountStore:v8];
  v13 = [(FAResendChildTransferRequestOperation *)v9 initWithNetworkService:v10 grandSlamSigner:v11 familyGrandSlamSigner:v12 email:v7 isResend:1];

  v14 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [v14 requestQueueWithOptions:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018B5C;
  v18[3] = &unk_1000A66B8;
  v19 = v13;
  v20 = v6;
  v16 = v6;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)cancelChildTransferRequest:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ACAccountStore defaultStore];
  v9 = [FAResendChildTransferRequestOperation alloc];
  v10 = [(FamilyCircleServiceDelegate *)self _networkService];
  v11 = [(FamilyCircleServiceDelegate *)self _grandSlamSignerWithAccountStore:v8];
  v12 = [(FamilyCircleServiceDelegate *)self _familyGrandSlamSignerWithAccountStore:v8];
  v13 = [(FAResendChildTransferRequestOperation *)v9 initWithNetworkService:v10 grandSlamSigner:v11 familyGrandSlamSigner:v12 email:v7 isResend:1];

  v14 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [v14 requestQueueWithOptions:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018E18;
  v18[3] = &unk_1000A66B8;
  v19 = v13;
  v20 = v6;
  v16 = v6;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)fetchParentalControlBitsForAltDSID:(id)a3 replyBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(FAParentalControlsOperation);
  v9 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v10 = [v9 requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019060;
  block[3] = &unk_1000A6A20;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)setCommLimitsCollaborationSwitchForAltDSID:(id)a3 enableCollaboration:(BOOL)a4 replyBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(FAParentalControlsOperation);
  v11 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [v11 requestQueueWithOptions:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000192B8;
  v16[3] = &unk_1000A6F98;
  v17 = v10;
  v18 = v8;
  v20 = a4;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)setCommLimitsMailAppSwitchForAltDSID:(id)a3 enableMailApp:(BOOL)a4 replyBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(FAParentalControlsOperation);
  v11 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [v11 requestQueueWithOptions:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000195A0;
  v16[3] = &unk_1000A6F98;
  v17 = v10;
  v18 = v8;
  v20 = a4;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)familyChecklistRankingConfigWithCachePolicy:(unint64_t)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v8 = [v7 requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019840;
  block[3] = &unk_1000A6FC0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)buildInvite:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ACAccountStore defaultStore];
  v9 = [FABuildInviteOperation alloc];
  v10 = [(FamilyCircleServiceDelegate *)self _networkService];
  v11 = [(FamilyCircleServiceDelegate *)self _grandSlamSignerWithAccountStore:v8];
  v12 = [(FamilyCircleServiceDelegate *)self _familyGrandSlamSignerWithAccountStore:v8];
  v13 = [(FABuildInviteOperation *)v9 initWithNetworkService:v10 grandSlamSigner:v11 familyGrandSlamSigner:v12 inviteRecipients:v7];

  v14 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [v14 requestQueueWithOptions:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100019B2C;
  v18[3] = &unk_1000A66B8;
  v19 = v13;
  v20 = v6;
  v16 = v6;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)enableSettingsForMemberDSID:(id)a3 options:(id)a4 replyBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v12 = [v11 requestQueueWithOptions:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019D60;
  block[3] = &unk_1000A6A20;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, block);
}

- (void)enableSettingsForMemberDSID:(id)a3 screentimeModelCache:(id)a4 options:(id)a5 replyBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v15 = [v14 requestQueueWithOptions:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001A0A4;
  v19[3] = &unk_1000A6AC8;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v15, v19);
}

- (id)_turnOnScreentimeForDSID:(id)a3
{
  v3 = a3;
  v4 = [AAFPromise alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A264;
  v8[3] = &unk_1000A6198;
  v9 = v3;
  v5 = v3;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

- (id)_applyScreenTimeModel:(id)a3 dsid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [AAFPromise alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001A700;
  v12[3] = &unk_1000A6120;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 initWithBlock:v12];

  return v10;
}

- (void)setRestrictionsForProtoAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting proto account restrictions through ST settings.", buf, 2u);
  }

  v6 = [(FamilyCircleServiceDelegate *)self queueProvider];
  v7 = [v6 requestQueueWithOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AADC;
  block[3] = &unk_1000A6D88;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, block);
}

@end