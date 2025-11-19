@interface IXSDefaultAppDeletionManager
+ (id)sharedInstance;
- (BOOL)_shouldGateDeletionForAppType:(unint64_t)a3;
- (BOOL)getAppRecordNeedsDefaultAppDeletionAlert:(BOOL *)a3 forRecord:(id)a4 defaultAppType:(unint64_t *)a5 gateDeletionOfLastApp:(BOOL *)a6 error:(id *)a7;
- (BOOL)getOtherAppsAreInstalled:(BOOL *)a3 forDefaultAppType:(unint64_t)a4 exceptBundleID:(id)a5 error:(id *)a6;
- (id)defaultAppMetadataForAppIdentity:(id)a3 error:(id *)a4;
- (id)defaultAppMetadataListWithError:(id *)a3;
@end

@implementation IXSDefaultAppDeletionManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B61C;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121D98 != -1)
  {
    dispatch_once(&qword_100121D98, block);
  }

  v2 = qword_100121D90;

  return v2;
}

- (BOOL)getOtherAppsAreInstalled:(BOOL *)a3 forDefaultAppType:(unint64_t)a4 exceptBundleID:(id)a5 error:(id *)a6
{
  v33 = 0;
  v9 = sub_10003AF28(a5, 18, &v33);
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
      v17 = 0;
LABEL_18:
      v20 = 1;
      goto LABEL_19;
    }

    v17 = [v14 BOOLValue];
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (a4 > 8)
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

  if (((1 << a4) & 0x1EA) != 0)
  {
    v15 = sub_10003B9C4(a4);
    if (v15)
    {
      v14 = [LSApplicationRecord enumeratorForViableDefaultAppsForCategory:v15 options:128];
      v16 = [v14 allObjects];
LABEL_16:
      v19 = v16;
      v17 = [v16 count] > 1;

      goto LABEL_17;
    }

    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10009E628(a4, v21);
    }

    sub_1000405FC("[IXSDefaultAppDeletionManager getOtherAppsAreInstalled:forDefaultAppType:exceptBundleID:error:]", 129, @"IXErrorDomain", 1uLL, 0, 0, @"Found invalid LS category for default app type %lu", v22, a4);
    v18 = LABEL_30:;
    LOBYTE(v20) = 0;
    goto LABEL_31;
  }

  if (a4 != 2)
  {
    if (a4 == 4)
    {
      v14 = [SESNFCAppSettingsContext contextWithBundleId:0 onChange:&stru_100102498];
      v16 = [v14 defaultAppCandidates];
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
    v17 = [v24 count] > 1;
  }

  else
  {
    v29 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10009E5B0();
    }

    v18 = sub_1000405FC("[IXSDefaultAppDeletionManager getOtherAppsAreInstalled:forDefaultAppType:exceptBundleID:error:]", 151, @"IXErrorDomain", 1uLL, v14, 0, @"Failed to get list of preferred app marketplaces", v30, v31);
    v17 = 0;
  }

LABEL_19:
  if (a3 && v20)
  {
    *a3 = v17;
    LOBYTE(v20) = 1;
    goto LABEL_34;
  }

LABEL_31:
  if (a6 && !v20)
  {
    v27 = v18;
    *a6 = v18;
  }

LABEL_34:

  return v20;
}

- (BOOL)_shouldGateDeletionForAppType:(unint64_t)a3
{
  if (a3 - 1 >= 8)
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
    v3 = 7u >> (a3 - 1);
  }

  return v3 & 1;
}

- (BOOL)getAppRecordNeedsDefaultAppDeletionAlert:(BOOL *)a3 forRecord:(id)a4 defaultAppType:(unint64_t *)a5 gateDeletionOfLastApp:(BOOL *)a6 error:(id *)a7
{
  v9 = a4;
  v56 = 0;
  v10 = [v9 bundleIdentifier];
  v11 = +[LSApplicationWorkspace defaultWorkspace];
  if ((sub_10003B2E0(v10, 21) & 1) == 0)
  {
    v47 = v9;
    v55 = 0;
    v20 = sub_10003AF28(v10, 18, &v55);
    v21 = v55;
    v22 = v21;
    if (v20)
    {
      v23 = [v21 objectForKey:@"TEST_MODE_RESTRICT_DEFAULT_APP_DELETION_DEFAULT_APP_TYPE_KEY"];
      objc_opt_class();
      v24 = v23;
      v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;

      if (v25)
      {
        v48 = v22;
        v12 = v11;
        v17 = [v25 longLongValue];
        v19 = [(IXSDefaultAppDeletionManager *)self _shouldGateDeletionForAppType:v17];
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
        v27 = [v10 isEqualToString:v26];

        if (v27)
        {
          v48 = v22;
          v12 = v11;
          v13 = 0;
          v14 = 0;
          v19 = 1;
          v17 = 2;
          v18 = 1;
LABEL_50:
          v9 = v47;
          goto LABEL_51;
        }
      }

      v45 = a7;
      v14 = [SESNFCAppSettingsContext contextWithBundleId:0 onChange:&stru_1001024B8];
      v28 = [v14 getDefaultNFCApplication];
      v13 = v28;
      if (v28)
      {
        v29 = [v28 bundleId];
        v30 = [v29 isEqualToString:v10];

        if (v30)
        {
          v48 = v22;
          v12 = v11;
          v25 = [v14 defaultAppCandidates];
          [v25 count];
          v19 = 0;
          v18 = 1;
          v17 = 4;
          goto LABEL_49;
        }
      }

      v53 = v15;
      v9 = v47;
      v34 = [v11 getDefaultApplicationCategories:&v56 withCurrentDefaultApplication:v47 error:&v53];
      v44 = v53;

      if (v34)
      {
        v35 = LSDefaultAppCategoryForMask();
        v17 = v35;
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
              v17 = v36;
              v15 = v44;
              v18 = 1;
              goto LABEL_51;
            }

            v46 = v36;
            v25 = [LSApplicationRecord enumeratorForViableDefaultAppsForCategory:v17 options:128];
            v41 = [v25 allObjects];
            v12 = v11;
            if ([v41 count] == 1)
            {
              v18 = [v11 canChangeDefaultAppForCategory:v17];

              v19 = 0;
            }

            else
            {

              v19 = 0;
              v18 = 1;
            }

            v15 = v44;
            v17 = v46;
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
        v25 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v58 = "[IXSDefaultAppDeletionManager getAppRecordNeedsDefaultAppDeletionAlert:forRecord:defaultAppType:gateDeletionOfLastApp:error:]";
          v59 = 2112;
          v60 = v10;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: Found unknown app category for bundleID %@; assuming default app alerts aren't required and allowing deletion", buf, 0x16u);
        }

        v17 = 0;
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

      v52 = v10;
      v33 = sub_1000405FC("[IXSDefaultAppDeletionManager getAppRecordNeedsDefaultAppDeletionAlert:forRecord:defaultAppType:gateDeletionOfLastApp:error:]", 298, @"IXErrorDomain", 1uLL, v44, 0, @"Failed to find default app categories applicable to bundleID %@", v38, v10);
    }

    else
    {
      v45 = a7;
      v31 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10009E850();
      }

      v52 = v10;

      v33 = sub_1000405FC("[IXSDefaultAppDeletionManager getAppRecordNeedsDefaultAppDeletionAlert:forRecord:defaultAppType:gateDeletionOfLastApp:error:]", 261, @"IXErrorDomain", 1uLL, v15, 0, @"Failed to get list of preferred app marketplaces", v32, v43);
      v14 = 0;
      v13 = 0;
      v9 = v47;
    }

    if (v45)
    {
      v39 = v33;
      v40 = 0;
      *v45 = v33;
    }

    else
    {
      v40 = 0;
    }

    v10 = v52;
    goto LABEL_58;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v48 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
LABEL_51:
  if (a5)
  {
    *a5 = v17;
  }

  if (a3)
  {
    *a3 = v18;
  }

  v33 = 0;
  if (a6)
  {
    *a6 = v19;
  }

  v40 = 1;
  v11 = v12;
  v22 = v48;
LABEL_58:

  return v40;
}

- (id)defaultAppMetadataForAppIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v25 = 0;
  v7 = [v6 bundleID];
  v24 = 0;
  v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v24];
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
    if (!a4)
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
  v13 = [(IXSDefaultAppDeletionManager *)self getOtherAppsAreInstalled:&v22 forDefaultAppType:v26 exceptBundleID:v7 error:&v21];
  v10 = v21;

  if (!v13)
  {
LABEL_12:
    v17 = 0;
    if (!a4)
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
  v17 = [(IXDefaultAppMetadata *)v18 initWithAppIdentity:v6 appType:v26 offloadAnswer:v16];
  if (!a4)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (!v17)
  {
    v19 = v10;
    *a4 = v10;
  }

LABEL_20:

  return v17;
}

- (id)defaultAppMetadataListWithError:(id *)a3
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
  v51 = a3;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  while (1)
  {
    if (v9)
    {
      v15 = [NSNumber numberWithUnsignedInteger:v14];
      v16 = [v9 objectForKeyedSubscript:v15];

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
      v16 = 0;
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
        v21 = [v19 bundleIdentifier];
LABEL_14:
        v16 = v21;
        goto LABEL_30;
      }

LABEL_22:
      v16 = 0;
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
        v21 = [v19 objectAtIndexedSubscript:0];
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

      v16 = 0;
      v20 = v45;
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_23;
      }

      v19 = [SESNFCAppSettingsContext contextWithBundleId:0 onChange:&stru_1001024D8];
      v22 = [v19 getDefaultNFCApplication];
      v23 = v22;
      if (v22)
      {
        v16 = [v22 bundleId];
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
        v16 = 0;
      }
    }

LABEL_30:

    if (!v16)
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
    v12 = v16;
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
  if (v51 && !v46)
  {
    v47 = v32;
    *v51 = v32;
  }

  return v46;
}

@end