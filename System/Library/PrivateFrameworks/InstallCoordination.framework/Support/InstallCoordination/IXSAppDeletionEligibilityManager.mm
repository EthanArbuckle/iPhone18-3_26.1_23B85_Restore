@interface IXSAppDeletionEligibilityManager
+ (id)sharedInstance;
- (IXSAppDeletionEligibilityManager)init;
- (id)_domainToAppIdentitySetMap;
- (id)_test_domainToEligibilityAnswerMap;
- (unint64_t)_eligibilityAnswerForDomain:(unint64_t)domain;
- (void)_onQueue_enumerateSystemAppPlaceholdersAndSetAppRemovability:(id)removability;
- (void)_onQueue_processEligibilityDomainChange;
- (void)_onQueue_setAppRemovabilityForSystemAppPlaceholder:(id)placeholder;
- (void)_onQueue_setRemovabilityForAppWithIdentity:(id)identity usingEligibilityAnswer:(unint64_t)answer;
- (void)_onQueue_updateRemovabilityForAppIdentities:(id)identities usingEligibilityAnswer:(unint64_t)answer;
- (void)_test_modifyDomainToEligibilityAnswerMap:(id)map;
- (void)eligibilityDidChange;
- (void)reconcileAppRemovabilityForSystemAppPlaceholders;
@end

@implementation IXSAppDeletionEligibilityManager

- (IXSAppDeletionEligibilityManager)init
{
  v9.receiver = self;
  v9.super_class = IXSAppDeletionEligibilityManager;
  v2 = [(IXSAppDeletionEligibilityManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordination.AppDeletionEligibilityManager.internal", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_opt_new();
    domainToEligibilityAnswerMap = v2->_domainToEligibilityAnswerMap;
    v2->_domainToEligibilityAnswerMap = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC4C;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121C68 != -1)
  {
    dispatch_once(&qword_100121C68, block);
  }

  v2 = qword_100121C60;

  return v2;
}

- (void)_onQueue_setRemovabilityForAppWithIdentity:(id)identity usingEligibilityAnswer:(unint64_t)answer
{
  identityCopy = identity;
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (answer == 4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = IXStringForAppRemovability(v8);
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[IXSAppDeletionEligibilityManager _onQueue_setRemovabilityForAppWithIdentity:usingEligibilityAnswer:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = identityCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Setting IXAppRemovability to %@ for %@", buf, 0x20u);
  }

  v11 = +[IXSAppRemovabilityManager sharedInstance];
  v15 = 0;
  v12 = [v11 setRemovability:v8 forAppWithIdentity:identityCopy byClient:4 error:&v15];
  v13 = v15;

  if ((v12 & 1) == 0)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[IXSAppDeletionEligibilityManager _onQueue_setRemovabilityForAppWithIdentity:usingEligibilityAnswer:]";
      v18 = 2112;
      v19 = identityCopy;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Unable to set IXAppRemovability for %@ to %@: %@", buf, 0x2Au);
    }
  }
}

- (void)_onQueue_updateRemovabilityForAppIdentities:(id)identities usingEligibilityAnswer:(unint64_t)answer
{
  identitiesCopy = identities;
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AF1C;
  v8[3] = &unk_100101218;
  v8[4] = self;
  v8[5] = answer;
  [identitiesCopy enumerateObjectsUsingBlock:v8];
}

- (unint64_t)_eligibilityAnswerForDomain:(unint64_t)domain
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v5 = domain_answer;
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000983A0(v5, domain, v6);
    }
  }

  return 0;
}

- (id)_domainToAppIdentitySetMap
{
  v3 = objc_opt_new();
  _systemAppPlaceholderEnumerator = [(IXSAppDeletionEligibilityManager *)self _systemAppPlaceholderEnumerator];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [_systemAppPlaceholderEnumerator countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 136315650;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(_systemAppPlaceholderEnumerator);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        eligibilityDeletionDomain = [v10 eligibilityDeletionDomain];
        if (eligibilityDeletionDomain)
        {
          bundleIdentifier = [v10 bundleIdentifier];
          v13 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:bundleIdentifier];
          v19 = 0;
          v14 = [(IXApplicationIdentity *)v13 resolvePersonaWithError:&v19];
          v15 = v19;
          if (v14)
          {
            v16 = [v3 objectForKeyedSubscript:eligibilityDeletionDomain];
            if (!v16)
            {
              v16 = objc_opt_new();
            }

            [v16 addObject:v13];
            [v3 setObject:v16 forKeyedSubscript:eligibilityDeletionDomain];
          }

          else
          {
            v16 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v25 = "[IXSAppDeletionEligibilityManager _domainToAppIdentitySetMap]";
              v26 = 2112;
              v27 = bundleIdentifier;
              v28 = 2112;
              v29 = v15;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Failed to resolve persona for %@ : %@. Skipping without setting conditional removability", buf, 0x20u);
            }
          }
        }
      }

      v7 = [_systemAppPlaceholderEnumerator countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_onQueue_processEligibilityDomainChange
{
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _domainToAppIdentitySetMap = [(IXSAppDeletionEligibilityManager *)self _domainToAppIdentitySetMap];
  domainToEligibilityAnswerMap = [(IXSAppDeletionEligibilityManager *)self domainToEligibilityAnswerMap];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B42C;
  v9[3] = &unk_100101240;
  v9[4] = self;
  v11 = &v12;
  v6 = _domainToAppIdentitySetMap;
  v10 = v6;
  [domainToEligibilityAnswerMap enumerateKeysAndObjectsUsingBlock:v9];

  if (*(v13 + 24) == 1)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      domainToEligibilityAnswerMap2 = [(IXSAppDeletionEligibilityManager *)self domainToEligibilityAnswerMap];
      *buf = 136315394;
      v17 = "[IXSAppDeletionEligibilityManager _onQueue_processEligibilityDomainChange]";
      v18 = 2112;
      v19 = domainToEligibilityAnswerMap2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Processed eligibility change : %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v12, 8);
}

- (void)eligibilityDidChange
{
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B5DC;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_onQueue_setAppRemovabilityForSystemAppPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  bundleIdentifier = [placeholderCopy bundleIdentifier];
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:bundleIdentifier];
  v17 = 0;
  v8 = [(IXApplicationIdentity *)v7 resolvePersonaWithError:&v17];
  v9 = v17;
  if (v8)
  {
    eligibilityDeletionDomain = [placeholderCopy eligibilityDeletionDomain];
    v11 = eligibilityDeletionDomain;
    if (eligibilityDeletionDomain)
    {
      v12 = -[IXSAppDeletionEligibilityManager _eligibilityAnswerForDomain:](self, "_eligibilityAnswerForDomain:", [eligibilityDeletionDomain longLongValue]);
      if (v12)
      {
        v13 = v12;
        v14 = [NSNumber numberWithLongLong:v12];
        domainToEligibilityAnswerMap = [(IXSAppDeletionEligibilityManager *)self domainToEligibilityAnswerMap];
        [domainToEligibilityAnswerMap setObject:v14 forKeyedSubscript:v11];

        [(IXSAppDeletionEligibilityManager *)self _onQueue_setRemovabilityForAppWithIdentity:v7 usingEligibilityAnswer:v13];
      }
    }
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100098450(bundleIdentifier, v9, v16);
    }

    v11 = 0;
  }
}

- (void)_onQueue_enumerateSystemAppPlaceholdersAndSetAppRemovability:(id)removability
{
  removabilityCopy = removability;
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = removabilityCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(IXSAppDeletionEligibilityManager *)self _onQueue_setAppRemovabilityForSystemAppPlaceholder:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)reconcileAppRemovabilityForSystemAppPlaceholders
{
  _systemAppPlaceholderEnumerator = [(IXSAppDeletionEligibilityManager *)self _systemAppPlaceholderEnumerator];
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B940;
  v6[3] = &unk_100100ED8;
  v6[4] = self;
  v7 = _systemAppPlaceholderEnumerator;
  v5 = _systemAppPlaceholderEnumerator;
  dispatch_sync(internalQueue, v6);
}

- (id)_test_domainToEligibilityAnswerMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000BA68;
  v11 = sub_10000BA78;
  v12 = 0;
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BA80;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_test_modifyDomainToEligibilityAnswerMap:(id)map
{
  mapCopy = map;
  internalQueue = [(IXSAppDeletionEligibilityManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BBA0;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_sync(internalQueue, v7);
}

@end