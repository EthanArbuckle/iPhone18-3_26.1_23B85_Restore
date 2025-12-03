@interface IXSDefaultAppDeletionManager
+ (id)sharedInstance;
- (BOOL)_shouldGateDeletionForAppType:(unint64_t)type;
- (BOOL)getAppRecordNeedsDefaultAppDeletionAlert:(BOOL *)alert forRecord:(id)record defaultAppType:(unint64_t *)type gateDeletionOfLastApp:(BOOL *)app error:(id *)error;
- (BOOL)getOtherAppsAreInstalled:(BOOL *)installed forDefaultAppType:(unint64_t)type exceptBundleID:(id)d error:(id *)error;
- (id)defaultAppMetadataForAppIdentity:(id)identity error:(id *)error;
- (id)defaultAppMetadataListWithError:(id *)error;
@end

@implementation IXSDefaultAppDeletionManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B61C;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121D98 != -1)
  {
    dispatch_once(&qword_100121D98, block);
  }

  v2 = qword_100121D90;

  return v2;
}

- (BOOL)getOtherAppsAreInstalled:(BOOL *)installed forDefaultAppType:(unint64_t)type exceptBundleID:(id)d error:(id *)error
{
  v33 = 0;
  v9 = sub_10003AF28(d, 18, &v33);
  v10 = v33;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [v10 objectForKey:@"TEST_MODE_RESTRICT_DEFAULT_APP_DELETION_OTHER_APPS_AVAILABLE_KEY"];
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      v18 = 0;
      bOOLValue = 0;
LABEL_18:
      v20 = 1;
      goto LABEL_19;
    }

    bOOLValue = [v14 BOOLValue];
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (type > 8)
  {
LABEL_27:
    v25 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10009E6C0();
    }

    sub_1000405FC("[IXSDefaultAppDeletionManager getOtherAppsAreInstalled:forDefaultAppType:exceptBundleID:error:]", 180, @"IXErrorDomain", 1uLL, 0, 0, @"Found unknown default app type", v26, v31);
    goto LABEL_30;
  }

  if (((1 << type) & 0x1EA) != 0)
  {
    v15 = sub_10003B9C4(type);
    if (v15)
    {
      v14 = [LSApplicationRecord enumeratorForViableDefaultAppsForCategory:v15 options:128];
      allObjects = [v14 allObjects];
LABEL_16:
      v19 = allObjects;
      bOOLValue = [allObjects count] > 1;

      goto LABEL_17;
    }

    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10009E628(type, v21);
    }

    sub_1000405FC("[IXSDefaultAppDeletionManager getOtherAppsAreInstalled:forDefaultAppType:exceptBundleID:error:]", 129, @"IXErrorDomain", 1uLL, 0, 0, @"Found invalid LS category for default app type %lu", v22, type);
    v18 = LABEL_30:;
    LOBYTE(v20) = 0;
    goto LABEL_31;
  }

  if (type != 2)
  {
    if (type == 4)
    {
      v14 = [SESNFCAppSettingsContext contextWithBundleId:0 onChange:&stru_100102498];
      allObjects = [v14 defaultAppCandidates];
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  v23 = +[LSApplicationWorkspace defaultWorkspace];
  v32 = 0;
  v24 = [v23 getPreferredAppMarketplacesWithError:&v32];
  v14 = v32;

  v20 = v24 != 0;
  if (v24)
  {
    v18 = 0;
    bOOLValue = [v24 count] > 1;
  }

  else
  {
    v29 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10009E5B0();
    }

    v18 = sub_1000405FC("[IXSDefaultAppDeletionManager getOtherAppsAreInstalled:forDefaultAppType:exceptBundleID:error:]", 151, @"IXErrorDomain", 1uLL, v14, 0, @"Failed to get list of preferred app marketplaces", v30, v31);
    bOOLValue = 0;
  }

LABEL_19:
  if (installed && v20)
  {
    *installed = bOOLValue;
    LOBYTE(v20) = 1;
    goto LABEL_34;
  }

LABEL_31:
  if (error && !v20)
  {
    v27 = v18;
    *error = v18;
  }

LABEL_34:

  return v20;
}

- (BOOL)_shouldGateDeletionForAppType:(unint64_t)type
{
  if (type - 1 >= 8)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10009E73C(v4);
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 7u >> (type - 1);
  }

  return v3 & 1;
}

- (BOOL)getAppRecordNeedsDefaultAppDeletionAlert:(BOOL *)alert forRecord:(id)record defaultAppType:(unint64_t *)type gateDeletionOfLastApp:(BOOL *)app error:(id *)error
{
  recordCopy = record;
  v56 = 0;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v11 = +[LSApplicationWorkspace defaultWorkspace];
  if ((sub_10003B2E0(bundleIdentifier, 21) & 1) == 0)
  {
    v47 = recordCopy;
    v55 = 0;
    v20 = sub_10003AF28(bundleIdentifier, 18, &v55);
    v21 = v55;
    v22 = v21;
    if (v20)
    {
      v23 = [v21 objectForKey:@"TEST_MODE_RESTRICT_DEFAULT_APP_DELETION_DEFAULT_APP_TYPE_KEY"];
      objc_opt_class();
      v24 = v23;
      defaultAppCandidates = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;

      if (defaultAppCandidates)
      {
        v48 = v22;
        v12 = v11;
        longLongValue = [defaultAppCandidates longLongValue];
        v19 = [(IXSDefaultAppDeletionManager *)self _shouldGateDeletionForAppType:longLongValue];
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v18 = 1;
LABEL_49:

        goto LABEL_50;
      }
    }

    v54 = 0;
    v16 = [v11 getPreferredAppMarketplacesWithError:&v54];
    v15 = v54;
    if (v16)
    {
      if ([v16 count])
      {
        v26 = [v16 objectAtIndexedSubscript:0];
        v27 = [bundleIdentifier isEqualToString:v26];

        if (v27)
        {
          v48 = v22;
          v12 = v11;
          v13 = 0;
          v14 = 0;
          v19 = 1;
          longLongValue = 2;
          v18 = 1;
LABEL_50:
          recordCopy = v47;
          goto LABEL_51;
        }
      }

      errorCopy2 = error;
      v14 = [SESNFCAppSettingsContext contextWithBundleId:0 onChange:&stru_1001024B8];
      getDefaultNFCApplication = [v14 getDefaultNFCApplication];
      v13 = getDefaultNFCApplication;
      if (getDefaultNFCApplication)
      {
        bundleId = [getDefaultNFCApplication bundleId];
        v30 = [bundleId isEqualToString:bundleIdentifier];

        if (v30)
        {
          v48 = v22;
          v12 = v11;
          defaultAppCandidates = [v14 defaultAppCandidates];
          [defaultAppCandidates count];
          v19 = 0;
          v18 = 1;
          longLongValue = 4;
          goto LABEL_49;
        }
      }

      v53 = v15;
      recordCopy = v47;
      v34 = [v11 getDefaultApplicationCategories:&v56 withCurrentDefaultApplication:v47 error:&v53];
      v44 = v53;

      if (v34)
      {
        v35 = LSDefaultAppCategoryForMask();
        longLongValue = v35;
        v48 = v22;
        if (v35 <= 2)
        {
          if (!v35)
          {
            v12 = v11;
            v18 = 0;
            v19 = 1;
            v15 = v44;
            goto LABEL_51;
          }

          v36 = v35;
          if (v35 == 1)
          {
            goto LABEL_43;
          }

          if (v35 == 2)
          {
            v36 = 5;
LABEL_43:
            if ([(IXSDefaultAppDeletionManager *)self _shouldGateDeletionForAppType:v36])
            {
              v12 = v11;
              v19 = 1;
              longLongValue = v36;
              v15 = v44;
              v18 = 1;
              goto LABEL_51;
            }

            v46 = v36;
            defaultAppCandidates = [LSApplicationRecord enumeratorForViableDefaultAppsForCategory:longLongValue options:128];
            allObjects = [defaultAppCandidates allObjects];
            v12 = v11;
            if ([allObjects count] == 1)
            {
              v18 = [v11 canChangeDefaultAppForCategory:longLongValue];

              v19 = 0;
            }

            else
            {

              v19 = 0;
              v18 = 1;
            }

            v15 = v44;
            longLongValue = v46;
            goto LABEL_49;
          }
        }

        else
        {
          if (v35 <= 4)
          {
            v36 = v35;
            if (v35 != 3)
            {
              v36 = 6;
            }

            goto LABEL_43;
          }

          if (v35 == 5)
          {
            v36 = 7;
            goto LABEL_43;
          }

          if (v35 == 6)
          {
            v36 = 8;
            goto LABEL_43;
          }
        }

        v12 = v11;
        defaultAppCandidates = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(defaultAppCandidates, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v58 = "[IXSDefaultAppDeletionManager getAppRecordNeedsDefaultAppDeletionAlert:forRecord:defaultAppType:gateDeletionOfLastApp:error:]";
          v59 = 2112;
          v60 = bundleIdentifier;
          _os_log_impl(&_mh_execute_header, defaultAppCandidates, OS_LOG_TYPE_DEFAULT, "%s: Found unknown app category for bundleID %@; assuming default app alerts aren't required and allowing deletion", buf, 0x16u);
        }

        longLongValue = 0;
        v18 = 0;
        v19 = 1;
        v15 = v44;
        goto LABEL_49;
      }

      v37 = sub_1000031B0(off_100121958);
      v15 = v44;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10009E7C0();
      }

      v52 = bundleIdentifier;
      v33 = sub_1000405FC("[IXSDefaultAppDeletionManager getAppRecordNeedsDefaultAppDeletionAlert:forRecord:defaultAppType:gateDeletionOfLastApp:error:]", 298, @"IXErrorDomain", 1uLL, v44, 0, @"Failed to find default app categories applicable to bundleID %@", v38, bundleIdentifier);
    }

    else
    {
      errorCopy2 = error;
      v31 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10009E850();
      }

      v52 = bundleIdentifier;

      v33 = sub_1000405FC("[IXSDefaultAppDeletionManager getAppRecordNeedsDefaultAppDeletionAlert:forRecord:defaultAppType:gateDeletionOfLastApp:error:]", 261, @"IXErrorDomain", 1uLL, v15, 0, @"Failed to get list of preferred app marketplaces", v32, v43);
      v14 = 0;
      v13 = 0;
      recordCopy = v47;
    }

    if (errorCopy2)
    {
      v39 = v33;
      v40 = 0;
      *errorCopy2 = v33;
    }

    else
    {
      v40 = 0;
    }

    bundleIdentifier = v52;
    goto LABEL_58;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v48 = 0;
  v16 = 0;
  longLongValue = 0;
  v18 = 0;
  v19 = 1;
LABEL_51:
  if (type)
  {
    *type = longLongValue;
  }

  if (alert)
  {
    *alert = v18;
  }

  v33 = 0;
  if (app)
  {
    *app = v19;
  }

  v40 = 1;
  v11 = v12;
  v22 = v48;
LABEL_58:

  return v40;
}

- (id)defaultAppMetadataForAppIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v26 = 0;
  v25 = 0;
  bundleID = [identityCopy bundleID];
  v24 = 0;
  v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleID allowPlaceholder:0 error:&v24];
  v9 = v24;
  v10 = v9;
  if (!v8)
  {
    goto LABEL_12;
  }

  v23 = v9;
  v11 = [(IXSDefaultAppDeletionManager *)self getAppRecordNeedsDefaultAppDeletionAlert:&v25 + 1 forRecord:v8 defaultAppType:&v26 gateDeletionOfLastApp:&v25 error:&v23];
  v12 = v23;

  if (!v11)
  {
    v17 = 0;
    v10 = v12;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (HIBYTE(v25) != 1)
  {
    v16 = 1;
    v10 = v12;
    goto LABEL_17;
  }

  v22 = 0;
  v21 = v12;
  v13 = [(IXSDefaultAppDeletionManager *)self getOtherAppsAreInstalled:&v22 forDefaultAppType:v26 exceptBundleID:bundleID error:&v21];
  v10 = v21;

  if (!v13)
  {
LABEL_12:
    v17 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v14 = 2;
  if (v22)
  {
    v14 = 3;
  }

  v15 = 4;
  if (v22)
  {
    v15 = 5;
  }

  if (v25)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

LABEL_17:
  v18 = [IXDefaultAppMetadata alloc];
  v17 = [(IXDefaultAppMetadata *)v18 initWithAppIdentity:identityCopy appType:v26 offloadAnswer:v16];
  if (!error)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (!v17)
  {
    v19 = v10;
    *error = v10;
  }

LABEL_20:

  return v17;
}

- (id)defaultAppMetadataListWithError:(id *)error
{
  v5 = objc_opt_new();
  v55 = 0;
  v54 = 0;
  v6 = sub_10003AF28(@"TEST_MODE_RESTRICT_DEFAULT_APP_DELETION_CANNOT_OFFLOAD_APPS_IDENTIFIER_KEY", 18, &v54);
  v7 = v54;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v7 objectForKeyedSubscript:@"TEST_MODE_RESTRICT_DEFAULT_APP_DELETION_CANNOT_OFFLOAD_APPS_KEY"];
    objc_opt_class();
    v11 = v10;
    if (objc_opt_isKindOfClass())
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  v50 = v8;
  errorCopy = error;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  while (1)
  {
    if (v9)
    {
      v15 = [NSNumber numberWithUnsignedInteger:v14];
      bundleId = [v9 objectForKeyedSubscript:v15];

      goto LABEL_35;
    }

    if (v14 > 8)
    {
LABEL_23:
      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_bundleIDForDefaultAppType";
        v58 = 2048;
        v59 = v14;
        v60 = 2112;
        v61 = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: Unexpectedly got unknown default app type %lu : %@", buf, 0x20u);
      }

      v20 = sub_1000405FC("_bundleIDForDefaultAppType", 455, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpectedly got unknown default app type %lu", v26, v14);
LABEL_32:
      v31 = v20;
      bundleId = 0;
      v29 = 1;
      v30 = v20;
      goto LABEL_33;
    }

    if (((1 << v14) & 0x1EA) != 0)
    {
      v17 = sub_10003B9C4(v14);
      v18 = +[LSApplicationWorkspace defaultWorkspace];
      *buf = 0;
      v19 = [v18 defaultApplicationForCategory:v17 error:buf];
      v20 = *buf;

      if (v19)
      {
        bundleIdentifier = [v19 bundleIdentifier];
LABEL_14:
        bundleId = bundleIdentifier;
        goto LABEL_30;
      }

LABEL_22:
      bundleId = 0;
      goto LABEL_30;
    }

    if (v14 == 2)
    {
      v24 = +[LSApplicationWorkspace defaultWorkspace];
      v56 = 0;
      v19 = [v24 getPreferredAppMarketplacesWithError:&v56];
      v20 = v56;

      if (!v19)
      {
        goto LABEL_22;
      }

      if ([v19 count])
      {
        bundleIdentifier = [v19 objectAtIndexedSubscript:0];
        goto LABEL_14;
      }

      v43 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "_bundleIDForDefaultAppType";
        v58 = 2112;
        v59 = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s: Unexpectedly got empty list of preferred app marketplaces : %@", buf, 0x16u);
      }

      v45 = sub_1000405FC("_bundleIDForDefaultAppType", 434, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpectedly got empty list of preferred app marketplaces", v44, v49);

      bundleId = 0;
      v20 = v45;
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_23;
      }

      v19 = [SESNFCAppSettingsContext contextWithBundleId:0 onChange:&stru_1001024D8];
      getDefaultNFCApplication = [v19 getDefaultNFCApplication];
      v23 = getDefaultNFCApplication;
      if (getDefaultNFCApplication)
      {
        bundleId = [getDefaultNFCApplication bundleId];
        v20 = 0;
      }

      else
      {
        v27 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "_bundleIDForDefaultAppType";
          v58 = 2112;
          v59 = 0;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: Unexpectedly got nil for default NFC app : %@", buf, 0x16u);
        }

        v20 = sub_1000405FC("_bundleIDForDefaultAppType", 445, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpectedly got nil for default NFC app", v28, v49);
        bundleId = 0;
      }
    }

LABEL_30:

    if (!bundleId)
    {
      goto LABEL_32;
    }

    v29 = 0;
    v30 = v13;
LABEL_33:

    v32 = v30;
    if (v29)
    {
      v12 = 0;
      goto LABEL_56;
    }

    v13 = v32;
LABEL_35:
    v12 = bundleId;
    v33 = v13;
    v53 = v13;
    v34 = [(IXSDefaultAppDeletionManager *)self getOtherAppsAreInstalled:&v55 forDefaultAppType:v14 exceptBundleID:v12 error:&v53];
    v13 = v53;

    if (!v34)
    {
      v46 = 0;
      goto LABEL_53;
    }

    v35 = [(IXSDefaultAppDeletionManager *)self _shouldGateDeletionForAppType:v14];
    v36 = 2;
    if (v55)
    {
      v36 = 3;
    }

    v37 = 4;
    if (v55)
    {
      v37 = 5;
    }

    v38 = v35 ? v36 : v37;
    v39 = [IXApplicationIdentity alloc];
    if (!v9)
    {
      break;
    }

    v40 = [(IXApplicationIdentity *)v39 initWithBundleIdentifier:v12 personaUniqueString:@"PersonalPersonaPlaceholderString"];
LABEL_47:
    v42 = [[IXDefaultAppMetadata alloc] initWithAppIdentity:v40 appType:v14 offloadAnswer:v38];
    [v5 addObject:v42];

    if (++v14 == 9)
    {
      v46 = [v5 copy];
LABEL_53:
      v32 = v13;
      goto LABEL_57;
    }
  }

  v40 = [(IXApplicationIdentity *)v39 initWithBundleIdentifier:v12];
  v52 = v13;
  v41 = [(IXApplicationIdentity *)v40 resolvePersonaWithError:&v52];
  v32 = v52;

  if (v41)
  {
    v13 = v32;
    goto LABEL_47;
  }

LABEL_56:
  v46 = 0;
LABEL_57:
  if (errorCopy && !v46)
  {
    v47 = v32;
    *errorCopy = v32;
  }

  return v46;
}

@end