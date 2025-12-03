@interface MADUserSafetySettings
+ (BOOL)_isTaskEntitled:(__SecTask *)entitled checkAnalysis:(BOOL)analysis;
+ (BOOL)isTaskEntitled:(__SecTask *)entitled;
+ (BOOL)isTaskEntitledForPolicySubscription:(__SecTask *)subscription;
+ (id)_bundleIDForTask:(__SecTask *)task;
+ (id)_servicesForTask:(__SecTask *)task;
+ (id)_valuesForEntitlement:(__CFString *)entitlement expectedElementClass:(Class)class task:(__SecTask *)task;
+ (id)isEnabledForBundleID:(id)d policy:(id)policy;
+ (id)sharedSettings;
+ (int64_t)policyTypeForTask:(__SecTask *)task scanningPolicy:(id)policy;
+ (unint64_t)policyForTask:(__SecTask *)task;
- (MADUserSafetySettings)init;
@end

@implementation MADUserSafetySettings

- (MADUserSafetySettings)init
{
  v20.receiver = self;
  v20.super_class = MADUserSafetySettings;
  v2 = [(MADUserSafetySettings *)&v20 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [NSSet setWithObject:MOSettingsGroupNameUserSafety];
    v4 = [MOEffectiveSettingsStore publisherForGroups:v3];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100112D78;
    v17 = &unk_100282BF0;
    objc_copyWeak(&v18, &location);
    v5 = [v4 sinkWithRecieveInput:&v14];
    subscription = v2->_subscription;
    v2->_subscription = v5;

    v7 = objc_alloc_init(MOEffectiveSettingsStore);
    userSafety = [v7 userSafety];
    scanningPolicy = [userSafety scanningPolicy];
    scanningPolicy = v2->_scanningPolicy;
    v2->_scanningPolicy = scanningPolicy;

    if (MediaAnalysisLogLevel() >= 5)
    {
      v11 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = v2->_scanningPolicy;
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[UserSafety] Initialized scanning policy (%@)", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedSettings
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&stru_100286848];

  return v5;
}

+ (id)_valuesForEntitlement:(__CFString *)entitlement expectedElementClass:(Class)class task:(__SecTask *)task
{
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(task, entitlement, &error);
  v7 = v6;
  if (error)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v8 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412546;
        entitlementCopy3 = entitlement;
        v31 = 2112;
        v32 = error;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[UserSafety] Failed to query %@ entitlement (%@)", buf, 0x16u);
      }
    }

    goto LABEL_26;
  }

  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = [NSSet setWithObject:v7];
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v7;
      v9 = +[NSMutableSet set];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        v12 = *v24;
        v13 = VCPLogToOSLogType[4];
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              [v9 addObject:v15];
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v13))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              *buf = 138412546;
              entitlementCopy3 = entitlement;
              v31 = 2112;
              v32 = v17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[UserSafety] Entitlement %@ has unexpected element type %@", buf, 0x16u);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }

      goto LABEL_25;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v18 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v22 = v7;
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138412546;
        entitlementCopy3 = entitlement;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[UserSafety] Entitlement %@ has unexpected type %@", buf, 0x16u);

        v9 = 0;
LABEL_25:
        v7 = v22;
        goto LABEL_27;
      }
    }
  }

LABEL_26:
  v9 = 0;
LABEL_27:

  sub_100002CBC(&error);

  return v9;
}

+ (id)_servicesForTask:(__SecTask *)task
{
  v4 = objc_opt_class();
  v5 = [v4 _valuesForEntitlement:@"com.apple.sensitivecontentanalysis.service" expectedElementClass:objc_opt_class() task:task];
  if (!v5)
  {
    v7 = objc_opt_class();
    v5 = [v7 _valuesForEntitlement:@"com.apple.usersafety.service" expectedElementClass:objc_opt_class() task:task];
    if (v5)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v8 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[UserSafety] Client using deprecated com.apple.usersafety.service entitlement", v9, 2u);
        }
      }
    }
  }

  return v5;
}

+ (id)_bundleIDForTask:(__SecTask *)task
{
  error = 0;
  v3 = SecTaskCopySigningIdentifier(task, &error);
  v4 = v3;
  if (error)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412290;
        v10 = error;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[UserSafety] Failed to query client bundleID (%@)", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  sub_100002CBC(&error);

  return v6;
}

+ (BOOL)_isTaskEntitled:(__SecTask *)entitled checkAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [&off_1002962F0 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = *v27;
    type = VCPLogToOSLogType[4];
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(&off_1002962F0);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = [v10 _valuesForEntitlement:v9 expectedElementClass:objc_opt_class() task:entitled];
        if (v11)
        {
          if ([v9 isEqualToString:@"com.apple.developer.usersafety.client"] && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v31 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[UserSafety] Client using deprecated %@ entitlement", buf, 0xCu);
          }

          if (!analysisCopy || [v11 containsObject:@"analysis"])
          {

            v13 = [objc_opt_class() _servicesForTask:entitled];
            if (!v13)
            {
              v14 = [objc_opt_class() _bundleIDForTask:entitled];
              v15 = [[MOApplication alloc] initWithBundleIdentifier:v14];
              v16 = [[MOLocalSettingsStore alloc] initWithName:@"UserSafety" sharedContainer:@"com.apple.UserSafety"];
              userSafety = [v16 userSafety];
              allowedClients = [userSafety allowedClients];
              v19 = [allowedClients containsObject:v15];

              if ((v19 & 1) == 0)
              {
                userSafety2 = [v16 userSafety];
                allowedClients2 = [userSafety2 allowedClients];
                v22 = [NSMutableSet setWithSet:allowedClients2];

                [v22 addObject:v15];
                v23 = [v22 copy];
                userSafety3 = [v16 userSafety];
                [userSafety3 setAllowedClients:v23];
              }
            }

            return 1;
          }
        }
      }

      v6 = [&off_1002962F0 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

+ (BOOL)isTaskEntitled:(__SecTask *)entitled
{
  v4 = objc_opt_class();

  return [v4 _isTaskEntitled:entitled checkAnalysis:1];
}

+ (BOOL)isTaskEntitledForPolicySubscription:(__SecTask *)subscription
{
  v4 = objc_opt_class();

  return [v4 _isTaskEntitled:subscription checkAnalysis:0];
}

+ (unint64_t)policyForTask:(__SecTask *)task
{
  sharedSettings = [objc_opt_class() sharedSettings];
  scanningPolicy = [sharedSettings scanningPolicy];

  if ([scanningPolicy policy] != 1)
  {
    if ([scanningPolicy policy] == 2)
    {
      bOOLValue2 = 2;
      goto LABEL_22;
    }

LABEL_18:
    bOOLValue2 = 0;
    goto LABEL_22;
  }

  v6 = [objc_opt_class() _bundleIDForTask:task];
  v7 = [objc_opt_class() isEnabledForBundleID:v6 policy:scanningPolicy];
  v8 = v7;
  if (!v7)
  {
    v10 = [objc_opt_class() _servicesForTask:task];
    v11 = v10;
    if (v10)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            services = [scanningPolicy services];
            LOBYTE(v16) = [services containsObject:v16];

            if (v16)
            {

              goto LABEL_21;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    v18 = [[MOApplication alloc] initWithBundleIdentifier:v6];
    allApplications = [scanningPolicy allApplications];
    v20 = [allApplications objectForKeyedSubscript:v18];

    if (v20)
    {
      bOOLValue = [v20 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

LABEL_21:
    bOOLValue2 = 1;
    goto LABEL_22;
  }

  bOOLValue2 = [v7 BOOLValue];

LABEL_22:
  return bOOLValue2;
}

+ (int64_t)policyTypeForTask:(__SecTask *)task scanningPolicy:(id)policy
{
  policyCopy = policy;
  if ([policyCopy policy] == 1)
  {
    v6 = [objc_opt_class() _bundleIDForTask:task];
    v7 = [objc_opt_class() isEnabledForBundleID:v6 policy:policyCopy];
    v8 = v7;
    if (v7)
    {
      bOOLValue = [v7 BOOLValue];

      goto LABEL_26;
    }

    v12 = [objc_opt_class() _servicesForTask:task];
    v13 = v12;
    if (v12)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = *v28;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            services = [policyCopy services];
            LOBYTE(v18) = [services containsObject:v18];

            if (v18)
            {

              goto LABEL_25;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

    v20 = [[MOApplication alloc] initWithBundleIdentifier:v6];
    allApplications = [policyCopy allApplications];
    v22 = [allApplications objectForKeyedSubscript:v20];

    if (v22)
    {
      bOOLValue2 = [v22 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

LABEL_25:
    bOOLValue = 1;
    goto LABEL_26;
  }

  if ([policyCopy policy] != 2)
  {
LABEL_19:
    bOOLValue = 0;
    goto LABEL_26;
  }

  interventionType = [policyCopy interventionType];
  v11 = [interventionType isEqualToString:MOUserSafetyInterventionTypeChild];

  if (v11)
  {
    bOOLValue = 6;
  }

  else
  {
    interventionType2 = [policyCopy interventionType];
    v25 = [interventionType2 isEqualToString:MOUserSafetyInterventionTypeTeen];

    if (v25)
    {
      bOOLValue = 10;
    }

    else
    {
      bOOLValue = 2;
    }
  }

LABEL_26:

  return bOOLValue;
}

+ (id)isEnabledForBundleID:(id)d policy:(id)policy
{
  dCopy = d;
  policyCopy = policy;
  v7 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allApplications = [policyCopy allApplications];
  allKeys = [allApplications allKeys];

  v10 = [allKeys countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        bundleIdentifier = [v13 bundleIdentifier];
        v15 = bundleIdentifier == 0;

        if (!v15)
        {
          allApplications2 = [policyCopy allApplications];
          v17 = [allApplications2 objectForKeyedSubscript:v13];
          bundleIdentifier2 = [v13 bundleIdentifier];
          [v7 setObject:v17 forKeyedSubscript:bundleIdentifier2];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v19 = qword_1002B83F8;
  v32 = qword_1002B83F8;
  if (!qword_1002B83F8)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10011442C;
    v28[3] = &unk_100283450;
    v28[4] = &v29;
    sub_10011442C(v28);
    v19 = v30[3];
  }

  v20 = v19;
  _Block_object_dispose(&v29, 8);
  allServices = [policyCopy allServices];
  v22 = [v19 isSensitiveContentWarningEnabledForBundleID:dCopy allServices:allServices allApplications:v7];

  return v22;
}

@end