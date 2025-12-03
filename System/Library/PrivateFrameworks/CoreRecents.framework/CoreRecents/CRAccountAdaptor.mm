@interface CRAccountAdaptor
- (BOOL)isSyncingDisabledForAccountWithAddress:(id)address;
- (CRAccountAdaptor)initWithDelegate:(id)delegate;
- (CRAccountAdaptor)initWithUserDefaults:(id)defaults accountStore:(id)store delegate:(id)delegate;
- (id)_analyzeMailAccounts;
- (id)_primaryiCloudAccountPersonID;
- (id)senderEmailAddresses;
- (void)_delegateAccountChanges;
- (void)_resetCachedAccountInfo;
- (void)_runWithAnalyzerLock:(id)lock;
- (void)dealloc;
@end

@implementation CRAccountAdaptor

- (id)senderEmailAddresses
{
  v3 = +[NSMutableSet set];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002284;
  v5[3] = &unk_10002CA38;
  v5[4] = v3;
  v5[5] = self;
  [(CRAccountAdaptor *)self _runWithAnalyzerLock:v5];
  return v3;
}

- (CRAccountAdaptor)initWithDelegate:(id)delegate
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = +[ACAccountStore defaultStore];

  return [(CRAccountAdaptor *)self initWithUserDefaults:v5 accountStore:v6 delegate:delegate];
}

- (CRAccountAdaptor)initWithUserDefaults:(id)defaults accountStore:(id)store delegate:(id)delegate
{
  v19.receiver = self;
  v19.super_class = CRAccountAdaptor;
  v8 = [(CRAccountAdaptor *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_userDefaults = defaults;
    v9->_accountStore = store;
    v9->_delegate = delegate;
    v9->_iCloudAccountPersonID = [(NSString *)[(NSUserDefaults *)v9->_userDefaults stringForKey:@"LastiCloudAccountPersonID"] copy];
    v9->_iCloudAccountWasLoggedIn = [(NSUserDefaults *)v9->_userDefaults BOOLForKey:@"LastiCloudAccountWasLoggedIn"];
    objc_initWeak(&location, v9);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000163A0;
    v16[3] = &unk_10002D4D0;
    objc_copyWeak(&v17, &location);
    v9->_mailAccountListener = [CRAccountListener mailAccountListenerWithHandler:v16];
    accountStore = v9->_accountStore;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000163CC;
    v14[3] = &unk_10002D4D0;
    objc_copyWeak(&v15, &location);
    v9->_appleAccountListener = [CRAccountListener appleAccountListenerForStore:accountStore withHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000163F8;
    v12[3] = &unk_10002D4D0;
    objc_copyWeak(&v13, &location);
    dispatch_async(&_dispatch_main_q, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  [(CNCancelable *)self->_mailAccountListener cancel];

  [(CNCancelable *)self->_appleAccountListener cancel];
  v3.receiver = self;
  v3.super_class = CRAccountAdaptor;
  [(CRAccountAdaptor *)&v3 dealloc];
}

- (BOOL)isSyncingDisabledForAccountWithAddress:(id)address
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016568;
  v5[3] = &unk_10002D4F8;
  v5[5] = address;
  v5[6] = &v6;
  v5[4] = self;
  [(CRAccountAdaptor *)self _runWithAnalyzerLock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_runWithAnalyzerLock:(id)lock
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_analyzer)
  {
    self->_analyzer = [(CRAccountAdaptor *)self _analyzeMailAccounts];
  }

  (*(lock + 2))(lock);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_analyzeMailAccounts
{
  v3 = objc_alloc_init(CRMailAccountAnalyzer);
  v4 = [[CRMailAccountIterator alloc] initWithAccountStore:self->_accountStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000166D8;
  v6[3] = &unk_10002D520;
  v6[4] = v3;
  [(CRMailAccountIterator *)v4 enumerateEmailAddresses:v6];
  return v3;
}

- (void)_resetCachedAccountInfo
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100016754;
  v2[3] = &unk_10002CAB0;
  v2[4] = self;
  [(CRAccountAdaptor *)self _runWithAnalyzerLock:v2];
}

- (id)_primaryiCloudAccountPersonID
{
  result = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  if (result)
  {

    return [result aa_personID];
  }

  return result;
}

- (void)_delegateAccountChanges
{
  _primaryiCloudAccountPersonID = [(CRAccountAdaptor *)self _primaryiCloudAccountPersonID];
  v4 = +[CRLogging log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    iCloudAccountPersonID = self->_iCloudAccountPersonID;
    v13 = 136315650;
    v14 = "[CRAccountAdaptor _delegateAccountChanges]";
    v15 = 2114;
    v16 = iCloudAccountPersonID;
    v17 = 2114;
    v18 = _primaryiCloudAccountPersonID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s old:%{public}@ current:%{public}@", &v13, 0x20u);
  }

  v6 = [_primaryiCloudAccountPersonID isEqualToString:self->_iCloudAccountPersonID];
  v7 = v6;
  iCloudAccountWasLoggedIn = self->_iCloudAccountWasLoggedIn;
  v9 = !iCloudAccountWasLoggedIn;
  if (_primaryiCloudAccountPersonID)
  {
    v10 = 1;
  }

  else
  {
    v10 = !iCloudAccountWasLoggedIn;
  }

  if (v10 == 1)
  {
    if (!_primaryiCloudAccountPersonID)
    {
      iCloudAccountWasLoggedIn = 1;
    }

    if (iCloudAccountWasLoggedIn || v6 != 1)
    {
      if ((iCloudAccountWasLoggedIn | v6))
      {
        if ((v9 || _primaryiCloudAccountPersonID == 0) | v6 & 1)
        {
          return;
        }

        v11 = 3;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  [(CRAccountAdaptorDelegate *)[(CRAccountAdaptor *)self delegate] accountAdaptor:self observediCloudAccountTransition:v11];
  self->_iCloudAccountWasLoggedIn = _primaryiCloudAccountPersonID != 0;
  [(NSUserDefaults *)self->_userDefaults setBool:_primaryiCloudAccountPersonID != 0 forKey:@"LastiCloudAccountWasLoggedIn"];
  if (!(v7 & 1 | ((v10 & 1) == 0)))
  {

    v12 = [_primaryiCloudAccountPersonID copy];
    self->_iCloudAccountPersonID = v12;
    [(NSUserDefaults *)self->_userDefaults setObject:v12 forKey:@"LastiCloudAccountPersonID"];
  }

  [(NSUserDefaults *)self->_userDefaults synchronize];
}

@end