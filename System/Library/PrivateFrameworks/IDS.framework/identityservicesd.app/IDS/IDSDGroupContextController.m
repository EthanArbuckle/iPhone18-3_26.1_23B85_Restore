@interface IDSDGroupContextController
+ (id)sharedInstance;
- (IDSDGroupContextController)init;
- (void)_messagesGroupContextWithCompletion:(id)a3;
- (void)centerUpdatedRegistrationIdentities:(id)a3;
- (void)dealloc;
- (void)deleteAllCachedValuesForGroupWithID:(id)a3 WithCompletion:(id)a4;
- (void)deleteAllKnownGroupsWithCompletion:(id)a3;
- (void)fetchAllKnownGroups:(id)a3;
- (void)fetchGroupWithID:(id)a3 completion:(id)a4;
- (void)groupContextForProtectionSpace:(int64_t)a3 withCompletion:(id)a4;
- (void)groupFromPublicDataRepresentation:(id)a3 completion:(id)a4;
- (void)latestCachedGroupWithStableID:(id)a3 completion:(id)a4;
- (void)participantsForCypher:(id)a3 completion:(id)a4;
- (void)publicDataRepresentationForGroup:(id)a3 completion:(id)a4;
- (void)qGroupContextWithDeviceIdentity:(id)a3 completion:(id)a4;
- (void)qSetupSeal;
- (void)upsertGroupWithInfo:(id)a3 previousGroup:(id)a4 completion:(id)a5;
- (void)validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5;
@end

@implementation IDSDGroupContextController

+ (id)sharedInstance
{
  if (qword_100CBF2A8 != -1)
  {
    sub_10092C538();
  }

  v3 = qword_100CBF2B0;

  return v3;
}

- (IDSDGroupContextController)init
{
  v7.receiver = self;
  v7.super_class = IDSDGroupContextController;
  v2 = [(IDSDGroupContextController *)&v7 init];
  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Group context controller starting up", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v4 = [(IDSDGroupContextController *)v2 registrationCenter];
    [v4 addListener:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(IDSDGroupContextController *)self registrationCenter];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSDGroupContextController;
  [(IDSDGroupContextController *)&v4 dealloc];
}

- (void)groupContextForProtectionSpace:(int64_t)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [(IDSDGroupContextController *)self seal];

  if (!v6)
  {
    [(IDSDGroupContextController *)self qSetupSeal];
  }

  v7 = [(IDSDGroupContextController *)self seal];
  v8 = [v7 promise];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005D6DC8;
  v10[3] = &unk_100BD9940;
  v11 = v5;
  v9 = v5;
  [v8 registerResultBlock:v10];
}

- (void)upsertGroupWithInfo:(id)a3 previousGroup:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Incoming Daemon UpsertGroup", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005D7134;
  v15[3] = &unk_100BE1498;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v15];
}

- (void)fetchGroupWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming Daemon FetchGroup {groupID: %{public}@}", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005D78C0;
  v11[3] = &unk_100BE14C0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v11];
}

- (void)publicDataRepresentationForGroup:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D7B60;
  v8[3] = &unk_100BE14C0;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)groupFromPublicDataRepresentation:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D7E00;
  v8[3] = &unk_100BE14C0;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)participantsForCypher:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D808C;
  v8[3] = &unk_100BE14C0;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005D833C;
  v11[3] = &unk_100BE1498;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v11];
}

- (void)latestCachedGroupWithStableID:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D85CC;
  v8[3] = &unk_100BE14C0;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(IDSDGroupContextController *)self _messagesGroupContextWithCompletion:v8];
}

- (void)fetchAllKnownGroups:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D8720;
  v5[3] = &unk_100BE1560;
  v6 = a3;
  v4 = v6;
  [(IDSDGroupContextController *)self _messagesGroupContextWithCompletion:v5];
}

- (void)deleteAllKnownGroupsWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D8900;
  v5[3] = &unk_100BE1560;
  v6 = a3;
  v4 = v6;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v5];
}

- (void)deleteAllCachedValuesForGroupWithID:(id)a3 WithCompletion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D8A7C;
  v8[3] = &unk_100BE14C0;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)centerUpdatedRegistrationIdentities:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notified of update to registration identities; invalidating daemon cache", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSDGroupContextController *)self setSeal:0];
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:&stru_100BE15A0];
}

- (void)_messagesGroupContextWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D8E08;
  v5[3] = &unk_100BE1560;
  v6 = a3;
  v4 = v6;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v5];
}

- (void)qSetupSeal
{
  v3 = [CUTPromiseSeal alloc];
  v4 = im_primary_queue();
  v5 = [v3 initWithQueue:v4];

  [(IDSDGroupContextController *)self setSeal:v5];
}

- (void)qGroupContextWithDeviceIdentity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = [(IDSDGroupContextController *)self messagesGroupContext];

  if (v6)
  {
    v7 = [(IDSDGroupContextController *)self seal];
    [v7 fulfillWithValue:self->_messagesGroupContext];
  }

  else
  {
    v8 = [ENAccountIdentity alloc];
    v9 = [v5 accountIdentity];
    v7 = [v8 initWithAccountKey:v9 deviceKey:v5];

    v10 = [ENGroupContext alloc];
    v11 = +[IDSDGroupContextDataSource sharedInstance];
    v12 = im_primary_queue();
    v13 = [v10 initWithAccountIdentity:v7 dataSource:v11 queue:v12];

    if (+[IMUserDefaults isEngramEnabled])
    {
      v14 = NSHomeDirectory();
      v15 = [NSArray arrayWithObjects:v14, @"/Library/IdentityServices/", 0];
      v16 = [NSString pathWithComponents:v15];
      v17 = [NSURL fileURLWithPath:v16];

      v18 = [ENGroupContextCoreDataCache alloc];
      v19 = im_primary_queue();
      v20 = [v18 initOnDiskCacheWithContainerURL:v17 Queue:v19];

      v21 = [[IDSGroupSendAheadObserver alloc] initWithProtectionSpace:0];
      [v13 appendMiddleware:v20];
      [v13 appendMiddleware:v21];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1005D91B8;
      v23[3] = &unk_100BDA900;
      v23[4] = self;
      v24 = v13;
      [v20 loadWithCompletion:v23];
    }

    else
    {
      v17 = [(IDSDGroupContextController *)self seal];
      v22 = ENGroupContextErrorDomain;
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Engram is disabled";
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [NSError errorWithDomain:v22 code:-1000 userInfo:v20];
      [v17 failWithError:v21];
    }
  }
}

@end