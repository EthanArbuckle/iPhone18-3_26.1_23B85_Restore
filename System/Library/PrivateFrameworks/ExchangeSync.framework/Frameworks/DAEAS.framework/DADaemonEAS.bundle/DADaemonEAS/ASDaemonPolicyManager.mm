@interface ASDaemonPolicyManager
- (ASAccount)account;
- (ASDaemonPolicyManager)initWithAccount:(id)account;
- (int)_preflightEDUModeMCFeatures:(id)features;
- (void)_populateCurrentPolicyWithError:(id)error;
- (void)_tearDownPreflighter;
- (void)dealloc;
- (void)preflighter:(id)preflighter error:(id)error;
- (void)preflighter:(id)preflighter needsComplianceWithMCFeatures:(id)features perAccountPolicies:(id)policies;
- (void)preflighter:(id)preflighter successWithMCFeatures:(id)features perAccountPolicies:(id)policies policyKey:(id)key;
- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)acknowledged;
- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)acknowledged;
- (void)requestPolicyUpdate;
- (void)setDelegate:(id)delegate;
@end

@implementation ASDaemonPolicyManager

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ASDaemonPolicyManager *)self delegate];

  v6.receiver = self;
  v6.super_class = ASDaemonPolicyManager;
  [(ASDaemonPolicyManager *)&v6 setDelegate:delegateCopy];

  if (delegateCopy)
  {
    if (!delegate)
    {
      [(ASDaemonPolicyManager *)self _populateCurrentPolicyWithError:0];
    }
  }
}

- (ASDaemonPolicyManager)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = ASDaemonPolicyManager;
  v5 = [(ASDaemonPolicyManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASDaemonPolicyManager *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (void)_tearDownPreflighter
{
  [(ASPolicyPreflighter *)self->_preflighter cancelPendingPreflightRequest];
  [(ASPolicyPreflighter *)self->_preflighter invalidate];
  [(ASPolicyPreflighter *)self->_preflighter setDelegate:0];
  preflighter = self->_preflighter;
  self->_preflighter = 0;
}

- (void)dealloc
{
  [(ASDaemonPolicyManager *)self _tearDownPreflighter];
  v3.receiver = self;
  v3.super_class = ASDaemonPolicyManager;
  [(ASDaemonPolicyManager *)&v3 dealloc];
}

- (void)requestPolicyUpdate
{
  if (!self->_preflighter)
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v3, v4))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v3, v4, "Getting a new server policy", v10, 2u);
    }

    v5 = [ASPolicyPreflighter alloc];
    account = [(ASDaemonPolicyManager *)self account];
    currentPolicyKey = [(ASDaemonPolicyManager *)self currentPolicyKey];
    v8 = [v5 initWithAccount:account policyKey:currentPolicyKey];
    preflighter = self->_preflighter;
    self->_preflighter = v8;

    [(ASPolicyPreflighter *)self->_preflighter setDelegate:self];
    [(ASPolicyPreflighter *)self->_preflighter startPreflight];
  }
}

- (void)_populateCurrentPolicyWithError:(id)error
{
  if (error)
  {
    v17[0] = ASPolicyKey;
    errorCopy = error;
    currentPolicyKey = [(ASDaemonPolicyManager *)self currentPolicyKey];
    v17[1] = ASPolicyErrorKey;
    v18[0] = currentPolicyKey;
    v18[1] = errorCopy;
    v7 = v18;
    v8 = v17;
    v9 = 2;
  }

  else
  {
    v19 = ASPolicyKey;
    v10 = 0;
    currentPolicyKey = [(ASDaemonPolicyManager *)self currentPolicyKey];
    v20 = currentPolicyKey;
    v7 = &v20;
    v8 = &v19;
    v9 = 1;
  }

  v11 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:v9];

  v12 = +[NSNotificationCenter defaultCenter];

  v13 = ASPolicyKeyChangedNotification;
  delegate = [(ASDaemonPolicyManager *)self delegate];
  accountID = [delegate accountID];
  [v12 postNotificationName:v13 object:accountID userInfo:v11];

  delegate2 = [(ASDaemonPolicyManager *)self delegate];
  [delegate2 policyManagerUpdatedPolicy:self];
}

- (int)_preflightEDUModeMCFeatures:(id)features
{
  featuresCopy = features;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v30 = featuresCopy;
    _os_log_impl(&dword_0, v4, v5, "EDU Mode : PreFlighting MCRestrictions %@", buf, 0xCu);
  }

  v28 = [MCRestrictionManager restrictedBoolForFeature:MCFeaturePasscodeRequired withRestrictionsDictionary:featuresCopy];
  v27 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureAlphanumericPasscodeRequired withRestrictionsDictionary:featuresCopy];
  v6 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureMinimumPasscodeLength withRestrictionsDictionary:featuresCopy];
  v7 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureMaximumFailedPasscodeAttempts withRestrictionsDictionary:featuresCopy];
  v8 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureSimplePasscodeAllowed withRestrictionsDictionary:featuresCopy];
  v9 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureMaximumPasscodeAgeDays withRestrictionsDictionary:featuresCopy];
  v10 = [MCRestrictionManager restrictedBoolForFeature:MCFeaturePasscodeHistoryCount withRestrictionsDictionary:featuresCopy];
  v11 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureCameraAllowed withRestrictionsDictionary:featuresCopy];
  v12 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureBlockLevelEncryptionRequired withRestrictionsDictionary:featuresCopy];
  v13 = [MCRestrictionManager restrictedBoolForFeature:MCFeaturePasscodeMinimumComplexChars withRestrictionsDictionary:featuresCopy];
  v14 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureSafariAllowed withRestrictionsDictionary:featuresCopy];
  v25 = v28 == 1 || v27 == 1 || v6 == 1 || v7 == 1 || v8 == 1 || v9 == 1 || v10 == 1 || v11 == 2 || v12 == 1 || v13 == 1 || v14 == 2;

  return v25;
}

- (void)preflighter:(id)preflighter needsComplianceWithMCFeatures:(id)features perAccountPolicies:(id)policies
{
  preflighterCopy = preflighter;
  featuresCopy = features;
  policiesCopy = policies;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, v12, "Asking MC to comply with new policy", buf, 2u);
  }

  v13 = dispatch_get_global_queue(0, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2C53C;
  v17[3] = &unk_6D1A0;
  v17[4] = self;
  v18 = featuresCopy;
  v19 = preflighterCopy;
  v20 = policiesCopy;
  v14 = policiesCopy;
  v15 = preflighterCopy;
  v16 = featuresCopy;
  dispatch_async(v13, v17);
}

- (void)preflighter:(id)preflighter successWithMCFeatures:(id)features perAccountPolicies:(id)policies policyKey:(id)key
{
  keyCopy = key;
  policiesCopy = policies;
  v10 = [ASPerAccountPolicyData alloc];
  account = [(ASDaemonPolicyManager *)self account];
  persistentUUID = [account persistentUUID];
  v13 = [v10 initWithAccountPersistentUUID:persistentUUID];

  [v13 setPolicyKey:keyCopy policyValues:policiesCopy];
  [(ASDaemonPolicyManager *)self _tearDownPreflighter];
  [(ASDaemonPolicyManager *)self _populateCurrentPolicyWithError:0];
}

- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)acknowledged
{
  v4 = +[MCProfileConnection sharedConnection];
  isEphemeralMultiUser = [v4 isEphemeralMultiUser];

  if (isEphemeralMultiUser)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, v7, "EDU Mode: Remote Wipe requested but we are not going to enforce it.", buf, 2u);
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v8, v9, "You asked for it, we're remote wiping now.  You probably will never ever see this log message", v14, 2u);
    }

    if (+[DABehaviorOptions isAppleInternalInstall])
    {
      v10 = DALoggingwithCategory();
      if (os_log_type_enabled(v10, v9))
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v10, v9, "Not only that, but we're gonna brick you, too!", v13, 2u);
      }

      v11 = 5;
    }

    else
    {
      v11 = 4;
    }

    v6 = [[DDRResetRequest alloc] initWithMode:v11 options:0 reason:@"Exchange server requested device wipe."];
    v12 = +[DDRResetService sharedInstance];
    [v12 resetWithRequest:v6 completion:0];

    [(ASDaemonPolicyManager *)self _tearDownPreflighter];
  }
}

- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)acknowledged
{
  v6 = sharedDAAccountStore();
  account = [(ASDaemonPolicyManager *)self account];
  backingAccountInfo = [account backingAccountInfo];
  [v6 removeAccount:backingAccountInfo withCompletionHandler:&stru_6D2A0];
}

- (void)preflighter:(id)preflighter error:(id)error
{
  errorCopy = error;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v6, v7))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&dword_0, v6, v7, "preflighter got error %@", &v9, 0xCu);
  }

  [(ASDaemonPolicyManager *)self _tearDownPreflighter];
  delegate = [(ASDaemonPolicyManager *)self delegate];
  [delegate policyManagerFailedToUpdatePolicy:self];

  [(ASDaemonPolicyManager *)self _populateCurrentPolicyWithError:errorCopy];
}

- (ASAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end