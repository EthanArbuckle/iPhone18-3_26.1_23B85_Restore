@interface ASDaemonPolicyManager
- (ASAccount)account;
- (ASDaemonPolicyManager)initWithAccount:(id)a3;
- (int)_preflightEDUModeMCFeatures:(id)a3;
- (void)_populateCurrentPolicyWithError:(id)a3;
- (void)_tearDownPreflighter;
- (void)dealloc;
- (void)preflighter:(id)a3 error:(id)a4;
- (void)preflighter:(id)a3 needsComplianceWithMCFeatures:(id)a4 perAccountPolicies:(id)a5;
- (void)preflighter:(id)a3 successWithMCFeatures:(id)a4 perAccountPolicies:(id)a5 policyKey:(id)a6;
- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)a3;
- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)a3;
- (void)requestPolicyUpdate;
- (void)setDelegate:(id)a3;
@end

@implementation ASDaemonPolicyManager

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ASDaemonPolicyManager *)self delegate];

  v6.receiver = self;
  v6.super_class = ASDaemonPolicyManager;
  [(ASDaemonPolicyManager *)&v6 setDelegate:v4];

  if (v4)
  {
    if (!v5)
    {
      [(ASDaemonPolicyManager *)self _populateCurrentPolicyWithError:0];
    }
  }
}

- (ASDaemonPolicyManager)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDaemonPolicyManager;
  v5 = [(ASDaemonPolicyManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASDaemonPolicyManager *)v5 setAccount:v4];
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
    v6 = [(ASDaemonPolicyManager *)self account];
    v7 = [(ASDaemonPolicyManager *)self currentPolicyKey];
    v8 = [v5 initWithAccount:v6 policyKey:v7];
    preflighter = self->_preflighter;
    self->_preflighter = v8;

    [(ASPolicyPreflighter *)self->_preflighter setDelegate:self];
    [(ASPolicyPreflighter *)self->_preflighter startPreflight];
  }
}

- (void)_populateCurrentPolicyWithError:(id)a3
{
  if (a3)
  {
    v17[0] = ASPolicyKey;
    v5 = a3;
    v6 = [(ASDaemonPolicyManager *)self currentPolicyKey];
    v17[1] = ASPolicyErrorKey;
    v18[0] = v6;
    v18[1] = v5;
    v7 = v18;
    v8 = v17;
    v9 = 2;
  }

  else
  {
    v19 = ASPolicyKey;
    v10 = 0;
    v6 = [(ASDaemonPolicyManager *)self currentPolicyKey];
    v20 = v6;
    v7 = &v20;
    v8 = &v19;
    v9 = 1;
  }

  v11 = [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:v9];

  v12 = +[NSNotificationCenter defaultCenter];

  v13 = ASPolicyKeyChangedNotification;
  v14 = [(ASDaemonPolicyManager *)self delegate];
  v15 = [v14 accountID];
  [v12 postNotificationName:v13 object:v15 userInfo:v11];

  v16 = [(ASDaemonPolicyManager *)self delegate];
  [v16 policyManagerUpdatedPolicy:self];
}

- (int)_preflightEDUModeMCFeatures:(id)a3
{
  v3 = a3;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&dword_0, v4, v5, "EDU Mode : PreFlighting MCRestrictions %@", buf, 0xCu);
  }

  v28 = [MCRestrictionManager restrictedBoolForFeature:MCFeaturePasscodeRequired withRestrictionsDictionary:v3];
  v27 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureAlphanumericPasscodeRequired withRestrictionsDictionary:v3];
  v6 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureMinimumPasscodeLength withRestrictionsDictionary:v3];
  v7 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureMaximumFailedPasscodeAttempts withRestrictionsDictionary:v3];
  v8 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureSimplePasscodeAllowed withRestrictionsDictionary:v3];
  v9 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureMaximumPasscodeAgeDays withRestrictionsDictionary:v3];
  v10 = [MCRestrictionManager restrictedBoolForFeature:MCFeaturePasscodeHistoryCount withRestrictionsDictionary:v3];
  v11 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureCameraAllowed withRestrictionsDictionary:v3];
  v12 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureBlockLevelEncryptionRequired withRestrictionsDictionary:v3];
  v13 = [MCRestrictionManager restrictedBoolForFeature:MCFeaturePasscodeMinimumComplexChars withRestrictionsDictionary:v3];
  v14 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureSafariAllowed withRestrictionsDictionary:v3];
  v25 = v28 == 1 || v27 == 1 || v6 == 1 || v7 == 1 || v8 == 1 || v9 == 1 || v10 == 1 || v11 == 2 || v12 == 1 || v13 == 1 || v14 == 2;

  return v25;
}

- (void)preflighter:(id)a3 needsComplianceWithMCFeatures:(id)a4 perAccountPolicies:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  dispatch_async(v13, v17);
}

- (void)preflighter:(id)a3 successWithMCFeatures:(id)a4 perAccountPolicies:(id)a5 policyKey:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [ASPerAccountPolicyData alloc];
  v11 = [(ASDaemonPolicyManager *)self account];
  v12 = [v11 persistentUUID];
  v13 = [v10 initWithAccountPersistentUUID:v12];

  [v13 setPolicyKey:v8 policyValues:v9];
  [(ASDaemonPolicyManager *)self _tearDownPreflighter];
  [(ASDaemonPolicyManager *)self _populateCurrentPolicyWithError:0];
}

- (void)preflighterRemoteWipeRequestResponseAcknowledged:(id)a3
{
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 isEphemeralMultiUser];

  if (v5)
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

- (void)preflighterAccountOnlyRemoteWipeRequestResponseAcknowledged:(id)a3
{
  v6 = sharedDAAccountStore();
  v4 = [(ASDaemonPolicyManager *)self account];
  v5 = [v4 backingAccountInfo];
  [v6 removeAccount:v5 withCompletionHandler:&stru_6D2A0];
}

- (void)preflighter:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v6, v7))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "preflighter got error %@", &v9, 0xCu);
  }

  [(ASDaemonPolicyManager *)self _tearDownPreflighter];
  v8 = [(ASDaemonPolicyManager *)self delegate];
  [v8 policyManagerFailedToUpdatePolicy:self];

  [(ASDaemonPolicyManager *)self _populateCurrentPolicyWithError:v5];
}

- (ASAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end