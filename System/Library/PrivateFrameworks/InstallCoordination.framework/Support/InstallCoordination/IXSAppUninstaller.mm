@interface IXSAppUninstaller
+ (id)sharedUninstaller;
- (BOOL)_screenTimeManagementEnabled;
- (BOOL)_webContentFilterEnabled;
- (id)_acquireTerminationAssertionForIdentity:(id)identity withError:(id *)error;
- (id)_dextIDsForBundleID:(id)d;
- (unint64_t)_contentRestrictionIsEnabledForBundleID:(id)d;
- (void)_displayAuthenticationErrorForApp:(id)app;
- (void)_finalDeletionPromptWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags removability:(unint64_t)removability completion:(id)completion;
- (void)_performUninstallOfAppWithIdentity:(id)identity clientName:(id)name withFlags:(unint64_t)flags record:(id)record completion:(id)completion;
- (void)_postUninstallAlertsWithIdentity:(id)identity flags:(unint64_t)flags record:(id)record;
- (void)_promptForDeletionWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion removability:(unint64_t)removability;
- (void)_promptForGatingDefaultAppDeletionWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags removability:(unint64_t)removability completion:(id)completion;
- (void)_promptForMoveOrDeleteAppRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion removability:(unint64_t)removability;
- (void)_promptForUnlockOfAppRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion removability:(unint64_t)removability;
- (void)_promptToOverrideManagedSettingsOfAppWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion;
- (void)_promptViewHealthKitDataWithIdentity:(id)identity record:(id)record;
- (void)_uninstallAppWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags removability:(unint64_t)removability completion:(id)completion;
- (void)uninstallAppWithIdentity:(id)identity clientName:(id)name options:(unint64_t)options completion:(id)completion;
- (void)uninstallParallelPlaceholderForIdentity:(id)identity reason:(id)reason;
@end

@implementation IXSAppUninstaller

+ (id)sharedUninstaller
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018820;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121CD0 != -1)
  {
    dispatch_once(&qword_100121CD0, block);
  }

  v2 = qword_100121CC8;

  return v2;
}

- (void)uninstallParallelPlaceholderForIdentity:(id)identity reason:(id)reason
{
  identityCopy = identity;
  v17 = kMIUninstallParallelPlaceholderKey;
  v18 = &__kCFBooleanTrue;
  reasonCopy = reason;
  v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v8 = sub_100013E64(identityCopy, v7, reasonCopy);

  v9 = 0;
  if ((v8 & 1) == 0)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[IXSAppUninstaller uninstallParallelPlaceholderForIdentity:reason:]";
      v13 = 2112;
      v14 = identityCopy;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to uninstall parallel placeholder %@: %@", buf, 0x20u);
    }
  }
}

- (void)_promptViewHealthKitDataWithIdentity:(id)identity record:(id)record
{
  identityCopy = identity;
  recordCopy = record;
  v7 = [IXSHealthKitDataUninstallAlert alloc];
  bundleID = [identityCopy bundleID];
  v9 = [(IXSHealthKitDataUninstallAlert *)v7 initWithAppRecord:recordCopy bundleIdentifier:bundleID];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100018B60;
    v11[3] = &unk_100101550;
    v12 = v9;
    v13 = identityCopy;
    [v12 displayAlertWithCompletion:v11];

    v10 = v12;
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[IXSAppUninstaller _promptViewHealthKitDataWithIdentity:record:]";
      v16 = 2112;
      v17 = identityCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to create HealthKit data uninstall alert for app with identity %@", buf, 0x16u);
    }
  }
}

- (void)_postUninstallAlertsWithIdentity:(id)identity flags:(unint64_t)flags record:(id)record
{
  flagsCopy = flags;
  identityCopy = identity;
  recordCopy = record;
  if ((flagsCopy & 8) != 0)
  {
    bundleID = [identityCopy bundleID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100018E18;
    v11[3] = &unk_100101578;
    v11[4] = self;
    v12 = identityCopy;
    v13 = recordCopy;
    [IXSHealthKitDataUninstallAlert healthKitDataPresentForAppWithBundleID:bundleID completion:v11];
  }
}

- (id)_dextIDsForBundleID:(id)d
{
  dCopy = d;
  v4 = objc_opt_new();
  v35 = 0;
  v27 = dCopy;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v35];
  v6 = v35;
  if (v5)
  {
    v26 = v4;
    [v5 driverExtensionPaths];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v34 = 0u;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = *v32;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        v11 = v6;
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v30 = 0;
        v13 = [NSURL fileURLWithPath:v12 isDirectory:1];
        v14 = +[IXFileManager defaultManager];
        v29 = v6;
        v15 = [v14 itemExistsAtURL:v13 isDirectory:&v30 error:&v29];
        v6 = v29;

        if ((v15 & 1) == 0)
        {
          v18 = sub_1000031B0(off_100121958);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          *buf = 136315906;
          v37 = "[IXSAppUninstaller _dextIDsForBundleID:]";
          v38 = 2112;
          v39 = v27;
          v40 = 2112;
          v41 = v12;
          v42 = 2112;
          v43 = v6;
          v19 = v18;
          v20 = "%s: Failed to lookup DriverKit bundle for %@ requested to be uninstalled %@ : %@";
          v21 = 42;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
          goto LABEL_23;
        }

        if ((v30 & 1) == 0)
        {
          v18 = sub_1000031B0(off_100121958);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          *buf = 136315650;
          v37 = "[IXSAppUninstaller _dextIDsForBundleID:]";
          v38 = 2112;
          v39 = v27;
          v40 = 2112;
          v41 = v12;
          v19 = v18;
          v20 = "%s: DriverKit path associated with the app requested to be uninstalled is not a directory %@ : %@";
          v21 = 32;
          goto LABEL_18;
        }

        Unique = _CFBundleCreateUnique();
        if (!Unique)
        {
          v18 = sub_1000031B0(off_100121958);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          *buf = 136315394;
          v37 = "[IXSAppUninstaller _dextIDsForBundleID:]";
          v38 = 2112;
          v39 = v12;
          v19 = v18;
          v20 = "%s: Failed to create CFBundle from %@";
          v21 = 22;
          goto LABEL_18;
        }

        v17 = Unique;
        v18 = CFBundleGetIdentifier(Unique);
        if (v18)
        {
          [v26 addObject:v18];
        }

        else
        {
          v22 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v37 = "[IXSAppUninstaller _dextIDsForBundleID:]";
            v38 = 2112;
            v39 = v12;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Failed to get bundle ID from bundle %@", buf, 0x16u);
          }
        }

        CFRelease(v17);
LABEL_23:
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (!v8)
      {
LABEL_25:
        v4 = v26;
        v23 = [v26 copy];

        goto LABEL_29;
      }
    }
  }

  v24 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v37 = "[IXSAppUninstaller _dextIDsForBundleID:]";
    v38 = 2112;
    v39 = v27;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Failed to query LSApplicationRecord for %@ : %@", buf, 0x20u);
  }

  v23 = [v4 copy];
LABEL_29:

  return v23;
}

- (id)_acquireTerminationAssertionForIdentity:(id)identity withError:(id *)error
{
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  v8 = [NSMutableSet setWithObject:bundleID];
  miAppIdentity = [identityCopy miAppIdentity];
  v37 = 0;
  v10 = MobileInstallationLinkedBundleIDsForIdentity();
  v11 = 0;

  if (!v10)
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100099C54();
    }

    v21 = sub_1000405FC("[IXSAppUninstaller _acquireTerminationAssertionForIdentity:withError:]", 295, @"IXErrorDomain", 1uLL, v11, 0, @"Failed to query linked children for app with identity: %@", v25, identityCopy);
    v18 = 0;
    v20 = 0;
LABEL_21:

    v11 = v21;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  errorCopy = error;
  v30 = bundleID;
  [v8 unionSet:v10];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v8 copy];
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(IXSAppUninstaller *)self _dextIDsForBundleID:*(*(&v33 + 1) + 8 * i)];
        [v8 unionSet:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v14);
  }

  v18 = [v8 copy];
  if (v18)
  {
    v19 = [NSString stringWithFormat:@"IX terminating bundleIDs for uninstallation: %@", v8];
    v32 = v11;
    v20 = [[IXTerminationAssertion alloc] initForBundleIDs:v18 description:v19 terminationResistance:50 error:&v32];
    v21 = v32;

    if (v20)
    {
      v31 = v21;
      v22 = [v20 acquireAssertion:&v31];
      v23 = v31;

      if ((v22 & 1) == 0)
      {
        [v20 invalidate];

        v20 = 0;
      }

      v11 = v19;
      v21 = v23;
    }

    else
    {
      v11 = v19;
    }

    error = errorCopy;
    bundleID = v30;
    goto LABEL_21;
  }

  v20 = 0;
  error = errorCopy;
  bundleID = v30;
  if (!errorCopy)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!v20)
  {
    v26 = v11;
    *error = v11;
  }

LABEL_24:
  v27 = v20;

  return v20;
}

- (void)_performUninstallOfAppWithIdentity:(id)identity clientName:(id)name withFlags:(unint64_t)flags record:(id)record completion:(id)completion
{
  identityCopy = identity;
  nameCopy = name;
  recordCopy = record;
  completionCopy = completion;
  v16 = +[IXSCoordinatorManager sharedInstance];
  [identityCopy bundleID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100019780;
  v23[3] = &unk_1001015C8;
  v24 = v16;
  v25 = identityCopy;
  v27 = v26 = nameCopy;
  v28 = recordCopy;
  selfCopy = self;
  v30 = completionCopy;
  flagsCopy = flags;
  v17 = completionCopy;
  v18 = recordCopy;
  v19 = v27;
  v20 = nameCopy;
  v21 = identityCopy;
  v22 = v16;
  [v22 performCreationBlockingOperation:v23];
}

- (void)_promptForMoveOrDeleteAppRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion removability:(unint64_t)removability
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  v18 = [IXSMoveOrDeleteAlert alloc];
  bundleID = [identityCopy bundleID];
  v20 = [(IXSMoveOrDeleteAlert *)v18 initWithAppRecord:recordCopy bundleIdentifier:bundleID removability:removability deletionIsRestricted:(flags >> 10) & 1];

  if (v20)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001A2CC;
    v24[3] = &unk_1001015F0;
    v30 = completionCopy;
    v25 = v20;
    v26 = identityCopy;
    selfCopy = self;
    v28 = recordCopy;
    v29 = nameCopy;
    flagsCopy = flags;
    removabilityCopy = removability;
    [(IXSUninstallAlert *)v25 displayAlertWithCompletion:v24];

    v21 = v30;
  }

  else
  {
    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100099F98();
    }

    v21 = sub_1000405FC("[IXSAppUninstaller _promptForMoveOrDeleteAppRecord:identity:clientName:flags:completion:removability:]", 412, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create move or delete alert for app with identity %@", v23, identityCopy);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v21);
    }
  }
}

- (void)_promptForUnlockOfAppRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion removability:(unint64_t)removability
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  if (recordCopy)
  {
    sub_100032CFC();
    v18 = v27 = removability;
    v19 = [v18 localizedStringForKey:@"AUTHENTICATE_TO_DELETE_APP_TITLE" value:&stru_100105BA0 table:@"IXUninstallAlert"];
    [recordCopy localizedName];
    v21 = v20 = identityCopy;
    v22 = [NSString localizedStringWithFormat:v19, v21];

    identityCopy = v20;
    v23 = +[APGuard sharedGuard];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001A684;
    v28[3] = &unk_100101618;
    v28[4] = self;
    v29 = recordCopy;
    v30 = v20;
    v31 = nameCopy;
    flagsCopy = flags;
    v32 = completionCopy;
    v34 = v27;
    [v23 authenticateUnconditionallyWithReason:v22 completion:v28];
  }

  else
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10009A018();
    }

    v18 = sub_1000405FC("[IXSAppUninstaller _promptForUnlockOfAppRecord:identity:clientName:flags:completion:removability:]", 435, @"IXErrorDomain", 1uLL, 0, 0, @"No record specified with unlock prompt", v25, v26);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v18);
    }
  }
}

- (BOOL)_screenTimeManagementEnabled
{
  if (qword_100121CE0 != -1)
  {
    sub_10009A09C();
  }

  if (qword_100121CD8)
  {
    v2 = objc_alloc_init(qword_100121CD8);
    if ([v2 isRestrictionsPasscodeSet]&& ([v2 shouldRequestMoreTime]& 1) != 0)
    {

      return 1;
    }
  }

  else
  {
    v2 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10009A0B0();
    }
  }

  return 0;
}

- (BOOL)_webContentFilterEnabled
{
  if (qword_100121CF0 != -1)
  {
    sub_10009A224();
  }

  if (qword_100121CE8)
  {
    sharedWebFilterSettings = [qword_100121CE8 sharedWebFilterSettings];
    isWebFilterEnabled = [sharedWebFilterSettings isWebFilterEnabled];

    if (isWebFilterEnabled)
    {
      return 1;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009A238();
    }
  }

  return 0;
}

- (unint64_t)_contentRestrictionIsEnabledForBundleID:(id)d
{
  dCopy = d;
  v13 = 0;
  v5 = sub_10003AF28(dCopy, 22, &v13);
  v6 = v13;
  v7 = v6;
  if (!v5 || !v6 || (([v6 objectForKeyedSubscript:@"TEST_MODE_CONTENT_RESTRICTION_MANAGEMENT_TYPE"], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v9 = v8, (objc_opt_isKindOfClass() & 1) == 0) ? (v10 = 0) : (v10 = v9), v9, v9, !v10))
  {
    if ([dCopy isEqualToString:@"com.apple.mobilesafari"])
    {
      if ([(IXSAppUninstaller *)self _screenTimeManagementEnabled])
      {
        unsignedIntegerValue = 1;
        goto LABEL_14;
      }

      if ([(IXSAppUninstaller *)self _webContentFilterEnabled])
      {
        unsignedIntegerValue = 2;
        goto LABEL_14;
      }
    }

    unsignedIntegerValue = 0;
    goto LABEL_14;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];

LABEL_14:
  return unsignedIntegerValue;
}

- (void)_finalDeletionPromptWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags removability:(unint64_t)removability completion:(id)completion
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  bundleID = [identityCopy bundleID];
  v19 = [(IXSAppUninstaller *)self _contentRestrictionIsEnabledForBundleID:bundleID];
  if (v19)
  {
    v20 = [[IXSContentRestrictedAppDeleteAlert alloc] initWithAppRecord:recordCopy removability:removability appType:v19];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001AE98;
    v40[3] = &unk_100101680;
    v43 = completionCopy;
    v41 = v20;
    v42 = identityCopy;
    v21 = v20;
    [(IXSContentRestrictedAppDeleteAlert *)v21 displayAlertWithCompletion:v40];
  }

  else
  {
    v22 = +[IXSRemoteDeletionPromptManager sharedInstance];
    v21 = v22;
    v39 = 0;
    if (removability == 1 && -[IXSContentRestrictedAppDeleteAlert isValidBundleIDForRemoteAlert:withAppType:numAppsInstalled:](v22, "isValidBundleIDForRemoteAlert:withAppType:numAppsInstalled:", bundleID, &v39, 0) && (v39 != 3 || (+[IXGlobalConfiguration sharedInstance](IXGlobalConfiguration, "sharedInstance"), v23 = objc_claimAutoreleasedReturnValue(), v30 = [v23 isiPad], v23, (v30 & 1) == 0)))
    {
      if ((flags & 0x80) != 0)
      {
        [(IXSAppUninstaller *)self _promptToOverrideManagedSettingsOfAppWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy];
      }

      else
      {
        [(IXSAppUninstaller *)self _promptForRelatedDataAndUninstallAppWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy];
      }
    }

    else
    {
      v24 = (flags >> 7) & 1;
      v25 = [[IXSAppUninstallAlert alloc] initWithAppRecord:recordCopy bundleIdentifier:bundleID removability:removability isManagedByManagedSettings:v24 deletionIsRestricted:(flags >> 10) & 1];
      v26 = v25;
      if (v25)
      {
        if ((flags & 0x100) != 0)
        {
          [(IXSUninstallAlert *)v25 setNeedsDemoteOptionButton:1];
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10001AFE0;
        v31[3] = &unk_1001016A8;
        v38 = v24;
        v31[4] = self;
        v32 = recordCopy;
        v33 = identityCopy;
        v34 = nameCopy;
        flagsCopy = flags;
        v36 = completionCopy;
        v35 = v26;
        [(IXSUninstallAlert *)v35 displayAlertWithCompletion:v31];
      }

      else
      {
        v27 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10009A3AC();
        }

        v29 = sub_1000405FC("[IXSAppUninstaller _finalDeletionPromptWithRecord:identity:clientName:flags:removability:completion:]", 588, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create app uninstall alert for app with bundle ID %@", v28, bundleID);
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, v29);
        }
      }
    }
  }
}

- (void)_promptForGatingDefaultAppDeletionWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags removability:(unint64_t)removability completion:(id)completion
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  if (removability == 1)
  {
    v18 = +[IXSDefaultAppDeletionManager sharedInstance];
    v52 = 0;
    bundleIdentifier = [recordCopy bundleIdentifier];
    v51 = 0;
    v50 = 0;
    v20 = [v18 getAppRecordNeedsDefaultAppDeletionAlert:&v51 + 1 forRecord:recordCopy defaultAppType:&v52 gateDeletionOfLastApp:&v51 error:&v50];
    v21 = v50;
    v22 = v21;
    if (v20)
    {
      if (HIBYTE(v51) == 1)
      {
        v49 = 0;
        v48 = v21;
        v31 = bundleIdentifier;
        v23 = [v18 getOtherAppsAreInstalled:&v49 forDefaultAppType:v52 exceptBundleID:bundleIdentifier error:&v48];
        v24 = v48;

        if (v23)
        {
          if (v49 == 1)
          {
            v25 = [IXSDefaultAppSelectAlert alloc];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10001B55C;
            v43[3] = &unk_1001016D0;
            v44 = [(IXSDefaultAppSelectAlert *)v25 initWithAppRecord:recordCopy removability:1 defaultAppType:v52];
            v45 = v31;
            v47 = completionCopy;
            v46 = identityCopy;
            v26 = v44;
            [(IXSDefaultAppSelectAlert *)v26 displayAlertWithCompletion:v43];

            v27 = v44;
          }

          else if (v51)
          {
            v28 = [IXSDefaultAppDownloadAlert alloc];
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_10001B810;
            v32[3] = &unk_100101720;
            v33 = [(IXSDefaultAppDownloadAlert *)v28 initWithAppRecord:recordCopy removability:1 defaultAppType:v52];
            v35 = completionCopy;
            v34 = identityCopy;
            v26 = v33;
            [(IXSDefaultAppSelectAlert *)v26 displayAlertWithCompletion:v32];

            v27 = v33;
          }

          else
          {
            v29 = [IXSDefaultAppDeleteAlert alloc];
            v30 = [(IXSDefaultAppDeleteAlert *)v29 initWithAppRecord:recordCopy removability:1 defaultAppType:v52];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10001B6B0;
            v36[3] = &unk_1001016F8;
            v36[4] = self;
            v37 = recordCopy;
            v38 = identityCopy;
            v39 = nameCopy;
            flagsCopy = flags;
            v40 = v30;
            v41 = completionCopy;
            v26 = v30;
            [(IXSDefaultAppSelectAlert *)v26 displayAlertWithCompletion:v36];

            v27 = v37;
          }
        }

        else if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, v24);
        }

        bundleIdentifier = v31;
        goto LABEL_19;
      }

      [(IXSAppUninstaller *)self _finalDeletionPromptWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags removability:1 completion:completionCopy];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v21);
    }

    v24 = v22;
LABEL_19:

    goto LABEL_20;
  }

  [(IXSAppUninstaller *)self _finalDeletionPromptWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags removability:removability completion:completionCopy];
LABEL_20:
}

- (void)_promptForDeletionWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion removability:(unint64_t)removability
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  v18 = +[LSApplicationWorkspace defaultWorkspace];
  v19 = [v18 applicationIsInstalled:@"com.apple.AppDeletionUIHost"];

  if (v19)
  {
    v20 = +[IXSRemoteDeletionPromptManager sharedInstance];
    bundleIdentifier = [recordCopy bundleIdentifier];
    v22 = [v20 isValidBundleIDForRemoteAlert:bundleIdentifier withAppType:0 numAppsInstalled:0];

    if (removability == 1 && (v22 & 1) != 0)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10001BC30;
      v24[3] = &unk_100101748;
      v24[4] = self;
      v25 = recordCopy;
      v26 = identityCopy;
      v27 = nameCopy;
      flagsCopy = flags;
      v30 = 1;
      v28 = completionCopy;
      [v20 displayDeletionAlertForRecord:v25 showArchiveOption:(flags >> 5) & 1 completion:v24];
    }

    else
    {
      [(IXSAppUninstaller *)self _promptForGatingDefaultAppDeletionWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags removability:removability completion:completionCopy];
    }
  }

  else
  {
    v23 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10009A4A8(recordCopy, v23);
    }

    [(IXSAppUninstaller *)self _promptForGatingDefaultAppDeletionWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags removability:removability completion:completionCopy];
  }
}

- (void)_displayAuthenticationErrorForApp:(id)app
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001BDD0;
  v5[3] = &unk_100100ED8;
  appCopy = app;
  selfCopy = self;
  v4 = appCopy;
  sub_100071134(&_dispatch_main_q, v5);
}

- (void)_promptToOverrideManagedSettingsOfAppWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags completion:(id)completion
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  if (objc_opt_class())
  {
    bundleID = [identityCopy bundleID];
    teamIdentifier = [recordCopy teamIdentifier];
    if (teamIdentifier)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10001C2A8;
      v22[3] = &unk_100101770;
      v23 = bundleID;
      v28 = completionCopy;
      selfCopy = self;
      v25 = recordCopy;
      v26 = identityCopy;
      v27 = nameCopy;
      flagsCopy = flags;
      [MOEffectiveApplicationSettings askToOverrideUnremovabilityOfApplication:v23 teamIdentifier:teamIdentifier completionHandler:v22];
    }

    else
    {
      v20 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "[IXSAppUninstaller _promptToOverrideManagedSettingsOfAppWithRecord:identity:clientName:flags:completion:]";
        v32 = 2112;
        v33 = bundleID;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Unable to retrieve team identifier for bundle ID %@", buf, 0x16u);
      }

      [(IXSAppUninstaller *)self _promptForRelatedDataAndUninstallAppWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy];
    }
  }

  else
  {
    v18 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10009A5D8();
    }

    bundleID = sub_1000405FC("[IXSAppUninstaller _promptToOverrideManagedSettingsOfAppWithRecord:identity:clientName:flags:completion:]", 815, @"IXErrorDomain", 1uLL, 0, 0, @"Unable to load ManagedSettingsObjC framework", v19, v21);
    (*(completionCopy + 2))(completionCopy, 0, bundleID);
  }
}

- (void)_uninstallAppWithRecord:(id)record identity:(id)identity clientName:(id)name flags:(unint64_t)flags removability:(unint64_t)removability completion:(id)completion
{
  recordCopy = record;
  identityCopy = identity;
  nameCopy = name;
  completionCopy = completion;
  if ((flags & 4) != 0)
  {
    v18 = +[IXSAppInstallObserverManager sharedInstance];
    [v18 mayUninstallAppWithIdentity:identityCopy];
  }

  if ((flags & 3) == 2)
  {
    [(IXSAppUninstaller *)self _promptForRelatedDataAndUninstallAppWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy];
LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  if ((flags & 3) != 0)
  {
    if ((flags & 0x20) != 0)
    {
      if ((flags & 0x200) == 0)
      {
        [(IXSAppUninstaller *)self _promptForMoveOrDeleteAppRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy removability:removability];
        goto LABEL_23;
      }
    }

    else if ((flags & 0x200) == 0)
    {
      [(IXSAppUninstaller *)self _promptForDeletionWithRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy removability:removability];
      goto LABEL_23;
    }

    [(IXSAppUninstaller *)self _promptForUnlockOfAppRecord:recordCopy identity:identityCopy clientName:nameCopy flags:flags completion:completionCopy removability:removability];
    goto LABEL_23;
  }

  if ((flags & 0x200) != 0)
  {
    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10009A7DC();
    }

    sub_1000405FC("[IXSAppUninstaller _uninstallAppWithRecord:identity:clientName:flags:removability:completion:]", 836, @"IXErrorDomain", 0x16uLL, 0, 0, @"App with identity %@ needs to be unlocked before it can be uninstalled", v22, identityCopy);
    goto LABEL_17;
  }

  if ((flags & 4) != 0)
  {
    [(IXSAppUninstaller *)self _performUninstallOfAppWithIdentity:identityCopy clientName:nameCopy withFlags:flags record:recordCopy completion:completionCopy];
    goto LABEL_23;
  }

  v19 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10009A85C();
  }

  sub_1000405FC("[IXSAppUninstaller _uninstallAppWithRecord:identity:clientName:flags:removability:completion:]", 843, @"IXErrorDomain", 0x16uLL, 0, 0, @"App with identity %@ cannot be uninstalled", v20, identityCopy);
  v23 = LABEL_17:;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v23);
  }

LABEL_24:
}

- (void)uninstallAppWithIdentity:(id)identity clientName:(id)name options:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  v9 = options >> 5;
  v10 = options >> 2;
  identityCopy = identity;
  completionCopy = completion;
  nameCopy = name;
  bundleID = [identityCopy bundleID];
  v13 = optionsCopy & 3 | (16 * (v10 & 7)) | ((v9 & 1) << 8);
  if ((optionsCopy & 0x100) == 0)
  {
    bundleID2 = [identityCopy bundleID];
    v15 = [APApplication applicationWithBundleIdentifier:bundleID2];
    isLocked = [v15 isLocked];

    if (isLocked)
    {
      v13 |= 0x200uLL;
    }
  }

  if (sub_10003B2E0(bundleID, 20))
  {
    if ((optionsCopy & 0x80) == 0)
    {
      v13 |= 0x400uLL;
    }

    goto LABEL_12;
  }

  v17 = +[MCProfileConnection sharedConnection];
  v18 = [v17 effectiveBoolValueForSetting:MCFeatureAppRemovalAllowed];

  v19 = v13 | 0x400;
  if ((optionsCopy & 0x80) != 0)
  {
    v19 = v13;
  }

  if (v18 == 2)
  {
    v13 = v19;
LABEL_12:
    v20 = 1;
    goto LABEL_14;
  }

  v20 = 0;
LABEL_14:
  v52 = 0;
  v21 = [[LSApplicationRecord alloc] initForInstallMachineryWithBundleIdentifier:bundleID error:&v52];
  v22 = v52;
  if (v21)
  {
    isDeletable = [v21 isDeletable];
    bundleContainerURL = [v21 bundleContainerURL];

    v26 = (optionsCopy & 0x80) == 0 || bundleContainerURL == 0;
    if ((v20 | isDeletable ^ 1) == 1 && v26)
    {
      v27 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v54 = "[IXSAppUninstaller uninstallAppWithIdentity:clientName:options:completion:]";
        v55 = 2112;
        if (isDeletable)
        {
          v28 = 89;
        }

        else
        {
          v28 = 78;
        }

        *buf = 136316418;
        v56 = identityCopy;
        if (v20)
        {
          v29 = 89;
        }

        else
        {
          v29 = 78;
        }

        *v58 = v28;
        if ((optionsCopy & 0x80) != 0)
        {
          v30 = 89;
        }

        else
        {
          v30 = 78;
        }

        v57 = 1024;
        if (bundleContainerURL)
        {
          v31 = 89;
        }

        else
        {
          v31 = 78;
        }

        *&v58[4] = 1024;
        *&v58[6] = v29;
        v59 = 1024;
        v60 = v30;
        v61 = 1024;
        v62 = v31;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s: %@ cannot be uninstalled: deletableAccordingToLS:%c deletionIsRestricted:%c ignoreRestrictions:%c hasBundleContainer:%c", buf, 0x2Eu);
      }

      removability = 0;
    }

    else
    {
      v34 = +[IXSAppRemovabilityManager sharedInstance];
      v35 = [v34 removabilityMetadataForAppWithIdentity:identityCopy];

      removability = [v35 removability];
      if ([v35 removability] == 1)
      {
        v13 |= 4uLL;
      }

      else if ((optionsCopy & 0x40) != 0)
      {
        v36 = +[IXSAppRemovabilityManager sharedInstance];
        v51 = v22;
        v37 = [v36 clearRemovabilityStateForIdentity:identityCopy error:&v51];
        v38 = v51;

        if ((v37 & 1) == 0)
        {
          v39 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v54 = "[IXSAppUninstaller uninstallAppWithIdentity:clientName:options:completion:]";
            v55 = 2112;
            v56 = identityCopy;
            v57 = 2112;
            *v58 = v38;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s: Failed to clear removability state for %@ : %@", buf, 0x20u);
          }

          v38 = 0;
        }

        v13 |= 4uLL;
        v22 = v38;
      }

      else if ([v35 client] == 2)
      {
        v13 |= 0x84uLL;
      }

      else
      {
        v40 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v54 = "[IXSAppUninstaller uninstallAppWithIdentity:clientName:options:completion:]";
          v55 = 2112;
          v56 = identityCopy;
          v57 = 2112;
          *v58 = v35;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s: %@ cannot be uninstalled because removability does not allow it: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v33 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v54 = "[IXSAppUninstaller uninstallAppWithIdentity:clientName:options:completion:]";
      v55 = 2112;
      v56 = bundleID;
      v57 = 2112;
      *v58 = v22;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: Failed to create LSApplicationRecord for bundle ID %@: %@", buf, 0x20u);
    }

    v22 = 0;
    v13 = v13 & 0x7F8 | 4;
    removability = 1;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10001CCF4;
  v46[3] = &unk_100101798;
  v49 = removability;
  v50 = v13;
  v47 = identityCopy;
  v48 = completionCopy;
  v41 = completionCopy;
  v42 = identityCopy;
  [(IXSAppUninstaller *)self _uninstallAppWithRecord:v21 identity:v42 clientName:nameCopy flags:v13 removability:removability completion:v46];
}

@end