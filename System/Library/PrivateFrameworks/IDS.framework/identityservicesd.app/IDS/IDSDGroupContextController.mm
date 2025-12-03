@interface IDSDGroupContextController
+ (id)sharedInstance;
- (IDSDGroupContextController)init;
- (void)_messagesGroupContextWithCompletion:(id)completion;
- (void)centerUpdatedRegistrationIdentities:(id)identities;
- (void)dealloc;
- (void)deleteAllCachedValuesForGroupWithID:(id)d WithCompletion:(id)completion;
- (void)deleteAllKnownGroupsWithCompletion:(id)completion;
- (void)fetchAllKnownGroups:(id)groups;
- (void)fetchGroupWithID:(id)d completion:(id)completion;
- (void)groupContextForProtectionSpace:(int64_t)space withCompletion:(id)completion;
- (void)groupFromPublicDataRepresentation:(id)representation completion:(id)completion;
- (void)latestCachedGroupWithStableID:(id)d completion:(id)completion;
- (void)participantsForCypher:(id)cypher completion:(id)completion;
- (void)publicDataRepresentationForGroup:(id)group completion:(id)completion;
- (void)qGroupContextWithDeviceIdentity:(id)identity completion:(id)completion;
- (void)qSetupSeal;
- (void)upsertGroupWithInfo:(id)info previousGroup:(id)group completion:(id)completion;
- (void)validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion;
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

    registrationCenter = [(IDSDGroupContextController *)v2 registrationCenter];
    [registrationCenter addListener:v2];
  }

  return v2;
}

- (void)dealloc
{
  registrationCenter = [(IDSDGroupContextController *)self registrationCenter];
  [registrationCenter removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSDGroupContextController;
  [(IDSDGroupContextController *)&v4 dealloc];
}

- (void)groupContextForProtectionSpace:(int64_t)space withCompletion:(id)completion
{
  completionCopy = completion;
  seal = [(IDSDGroupContextController *)self seal];

  if (!seal)
  {
    [(IDSDGroupContextController *)self qSetupSeal];
  }

  seal2 = [(IDSDGroupContextController *)self seal];
  promise = [seal2 promise];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005D6DC8;
  v10[3] = &unk_100BD9940;
  v11 = completionCopy;
  v9 = completionCopy;
  [promise registerResultBlock:v10];
}

- (void)upsertGroupWithInfo:(id)info previousGroup:(id)group completion:(id)completion
{
  infoCopy = info;
  groupCopy = group;
  completionCopy = completion;
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
  v16 = groupCopy;
  v17 = infoCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = infoCopy;
  v14 = groupCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v15];
}

- (void)fetchGroupWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = dCopy;
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
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v11];
}

- (void)publicDataRepresentationForGroup:(id)group completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D7B60;
  v8[3] = &unk_100BE14C0;
  groupCopy = group;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = groupCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)groupFromPublicDataRepresentation:(id)representation completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D7E00;
  v8[3] = &unk_100BE14C0;
  representationCopy = representation;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = representationCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)participantsForCypher:(id)cypher completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D808C;
  v8[3] = &unk_100BE14C0;
  cypherCopy = cypher;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = cypherCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005D833C;
  v11[3] = &unk_100BE1498;
  groupCopy = group;
  ofGroupCopy = ofGroup;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = ofGroupCopy;
  v10 = groupCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v11];
}

- (void)latestCachedGroupWithStableID:(id)d completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D85CC;
  v8[3] = &unk_100BE14C0;
  dCopy = d;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
  [(IDSDGroupContextController *)self _messagesGroupContextWithCompletion:v8];
}

- (void)fetchAllKnownGroups:(id)groups
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D8720;
  v5[3] = &unk_100BE1560;
  groupsCopy = groups;
  v4 = groupsCopy;
  [(IDSDGroupContextController *)self _messagesGroupContextWithCompletion:v5];
}

- (void)deleteAllKnownGroupsWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D8900;
  v5[3] = &unk_100BE1560;
  completionCopy = completion;
  v4 = completionCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v5];
}

- (void)deleteAllCachedValuesForGroupWithID:(id)d WithCompletion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005D8A7C;
  v8[3] = &unk_100BE14C0;
  dCopy = d;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = dCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v8];
}

- (void)centerUpdatedRegistrationIdentities:(id)identities
{
  identitiesCopy = identities;
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

- (void)_messagesGroupContextWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D8E08;
  v5[3] = &unk_100BE1560;
  completionCopy = completion;
  v4 = completionCopy;
  [(IDSDGroupContextController *)self groupContextForProtectionSpace:0 withCompletion:v5];
}

- (void)qSetupSeal
{
  v3 = [CUTPromiseSeal alloc];
  v4 = im_primary_queue();
  v5 = [v3 initWithQueue:v4];

  [(IDSDGroupContextController *)self setSeal:v5];
}

- (void)qGroupContextWithDeviceIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  messagesGroupContext = [(IDSDGroupContextController *)self messagesGroupContext];

  if (messagesGroupContext)
  {
    seal = [(IDSDGroupContextController *)self seal];
    [seal fulfillWithValue:self->_messagesGroupContext];
  }

  else
  {
    v8 = [ENAccountIdentity alloc];
    accountIdentity = [identityCopy accountIdentity];
    seal = [v8 initWithAccountKey:accountIdentity deviceKey:identityCopy];

    v10 = [ENGroupContext alloc];
    v11 = +[IDSDGroupContextDataSource sharedInstance];
    v12 = im_primary_queue();
    v13 = [v10 initWithAccountIdentity:seal dataSource:v11 queue:v12];

    if (+[IMUserDefaults isEngramEnabled])
    {
      v14 = NSHomeDirectory();
      v15 = [NSArray arrayWithObjects:v14, @"/Library/IdentityServices/", 0];
      v16 = [NSString pathWithComponents:v15];
      seal2 = [NSURL fileURLWithPath:v16];

      v18 = [ENGroupContextCoreDataCache alloc];
      v19 = im_primary_queue();
      v20 = [v18 initOnDiskCacheWithContainerURL:seal2 Queue:v19];

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
      seal2 = [(IDSDGroupContextController *)self seal];
      v22 = ENGroupContextErrorDomain;
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Engram is disabled";
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [NSError errorWithDomain:v22 code:-1000 userInfo:v20];
      [seal2 failWithError:v21];
    }
  }
}

@end