@interface MADUserSafetySettings
+ (BOOL)_isTaskEntitled:(__SecTask *)a3 checkAnalysis:(BOOL)a4;
+ (BOOL)isTaskEntitled:(__SecTask *)a3;
+ (BOOL)isTaskEntitledForPolicySubscription:(__SecTask *)a3;
+ (id)_bundleIDForTask:(__SecTask *)a3;
+ (id)_servicesForTask:(__SecTask *)a3;
+ (id)_valuesForEntitlement:(__CFString *)a3 expectedElementClass:(Class)a4 task:(__SecTask *)a5;
+ (id)isEnabledForBundleID:(id)a3 policy:(id)a4;
+ (id)sharedSettings;
+ (int64_t)policyTypeForTask:(__SecTask *)a3 scanningPolicy:(id)a4;
+ (unint64_t)policyForTask:(__SecTask *)a3;
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
    v8 = [v7 userSafety];
    v9 = [v8 scanningPolicy];
    scanningPolicy = v2->_scanningPolicy;
    v2->_scanningPolicy = v9;

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

+ (id)_valuesForEntitlement:(__CFString *)a3 expectedElementClass:(Class)a4 task:(__SecTask *)a5
{
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(a5, a3, &error);
  v7 = v6;
  if (error)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v8 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412546;
        v30 = a3;
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
              v30 = a3;
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
        v30 = a3;
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

+ (id)_servicesForTask:(__SecTask *)a3
{
  v4 = objc_opt_class();
  v5 = [v4 _valuesForEntitlement:@"com.apple.sensitivecontentanalysis.service" expectedElementClass:objc_opt_class() task:a3];
  if (!v5)
  {
    v7 = objc_opt_class();
    v5 = [v7 _valuesForEntitlement:@"com.apple.usersafety.service" expectedElementClass:objc_opt_class() task:a3];
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

+ (id)_bundleIDForTask:(__SecTask *)a3
{
  error = 0;
  v3 = SecTaskCopySigningIdentifier(a3, &error);
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

+ (BOOL)_isTaskEntitled:(__SecTask *)a3 checkAnalysis:(BOOL)a4
{
  v4 = a4;
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
        v11 = [v10 _valuesForEntitlement:v9 expectedElementClass:objc_opt_class() task:a3];
        if (v11)
        {
          if ([v9 isEqualToString:@"com.apple.developer.usersafety.client"] && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v31 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[UserSafety] Client using deprecated %@ entitlement", buf, 0xCu);
          }

          if (!v4 || [v11 containsObject:@"analysis"])
          {

            v13 = [objc_opt_class() _servicesForTask:a3];
            if (!v13)
            {
              v14 = [objc_opt_class() _bundleIDForTask:a3];
              v15 = [[MOApplication alloc] initWithBundleIdentifier:v14];
              v16 = [[MOLocalSettingsStore alloc] initWithName:@"UserSafety" sharedContainer:@"com.apple.UserSafety"];
              v17 = [v16 userSafety];
              v18 = [v17 allowedClients];
              v19 = [v18 containsObject:v15];

              if ((v19 & 1) == 0)
              {
                v20 = [v16 userSafety];
                v21 = [v20 allowedClients];
                v22 = [NSMutableSet setWithSet:v21];

                [v22 addObject:v15];
                v23 = [v22 copy];
                v24 = [v16 userSafety];
                [v24 setAllowedClients:v23];
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

+ (BOOL)isTaskEntitled:(__SecTask *)a3
{
  v4 = objc_opt_class();

  return [v4 _isTaskEntitled:a3 checkAnalysis:1];
}

+ (BOOL)isTaskEntitledForPolicySubscription:(__SecTask *)a3
{
  v4 = objc_opt_class();

  return [v4 _isTaskEntitled:a3 checkAnalysis:0];
}

+ (unint64_t)policyForTask:(__SecTask *)a3
{
  v4 = [objc_opt_class() sharedSettings];
  v5 = [v4 scanningPolicy];

  if ([v5 policy] != 1)
  {
    if ([v5 policy] == 2)
    {
      v9 = 2;
      goto LABEL_22;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_22;
  }

  v6 = [objc_opt_class() _bundleIDForTask:a3];
  v7 = [objc_opt_class() isEnabledForBundleID:v6 policy:v5];
  v8 = v7;
  if (!v7)
  {
    v10 = [objc_opt_class() _servicesForTask:a3];
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
            v17 = [v5 services];
            LOBYTE(v16) = [v17 containsObject:v16];

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
    v19 = [v5 allApplications];
    v20 = [v19 objectForKeyedSubscript:v18];

    if (v20)
    {
      v21 = [v20 BOOLValue];

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

LABEL_21:
    v9 = 1;
    goto LABEL_22;
  }

  v9 = [v7 BOOLValue];

LABEL_22:
  return v9;
}

+ (int64_t)policyTypeForTask:(__SecTask *)a3 scanningPolicy:(id)a4
{
  v5 = a4;
  if ([v5 policy] == 1)
  {
    v6 = [objc_opt_class() _bundleIDForTask:a3];
    v7 = [objc_opt_class() isEnabledForBundleID:v6 policy:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 BOOLValue];

      goto LABEL_26;
    }

    v12 = [objc_opt_class() _servicesForTask:a3];
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
            v19 = [v5 services];
            LOBYTE(v18) = [v19 containsObject:v18];

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
    v21 = [v5 allApplications];
    v22 = [v21 objectForKeyedSubscript:v20];

    if (v22)
    {
      v23 = [v22 BOOLValue];

      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

LABEL_25:
    v9 = 1;
    goto LABEL_26;
  }

  if ([v5 policy] != 2)
  {
LABEL_19:
    v9 = 0;
    goto LABEL_26;
  }

  v10 = [v5 interventionType];
  v11 = [v10 isEqualToString:MOUserSafetyInterventionTypeChild];

  if (v11)
  {
    v9 = 6;
  }

  else
  {
    v24 = [v5 interventionType];
    v25 = [v24 isEqualToString:MOUserSafetyInterventionTypeTeen];

    if (v25)
    {
      v9 = 10;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_26:

  return v9;
}

+ (id)isEnabledForBundleID:(id)a3 policy:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 allApplications];
  v9 = [v8 allKeys];

  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 bundleIdentifier];
        v15 = v14 == 0;

        if (!v15)
        {
          v16 = [v6 allApplications];
          v17 = [v16 objectForKeyedSubscript:v13];
          v18 = [v13 bundleIdentifier];
          [v7 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
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
  v21 = [v6 allServices];
  v22 = [v19 isSensitiveContentWarningEnabledForBundleID:v5 allServices:v21 allApplications:v7];

  return v22;
}

@end