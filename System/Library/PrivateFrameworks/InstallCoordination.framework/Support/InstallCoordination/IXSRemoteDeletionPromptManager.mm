@interface IXSRemoteDeletionPromptManager
+ (id)sharedInstance;
- (BOOL)iCloudIsEnabledForMessages;
- (BOOL)isValidBundleIDForRemoteAlert:(id)a3 withAppType:(unint64_t *)a4 numAppsInstalled:(unint64_t *)a5;
- (IXSRemoteDeletionPromptManager)init;
- (unint64_t)sharedMediaInMessagesCount;
- (void)dismissRemoteAlert;
@end

@implementation IXSRemoteDeletionPromptManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071328;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121E40 != -1)
  {
    dispatch_once(&qword_100121E40, block);
  }

  v2 = qword_100121E38;

  return v2;
}

- (IXSRemoteDeletionPromptManager)init
{
  v6.receiver = self;
  v6.super_class = IXSRemoteDeletionPromptManager;
  v2 = [(IXSRemoteDeletionPromptManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v3;
}

- (void)dismissRemoteAlert
{
  v2 = [(IXSRemoteDeletionPromptManager *)self connection];
  v3 = v2;
  if (v2)
  {
    [v2 dismissAlert];
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3A1C();
    }
  }
}

- (BOOL)iCloudIsEnabledForMessages
{
  if (qword_100121E48)
  {
    v2 = [qword_100121E48 sharedInstance];
    v3 = [v2 isEnabled];

    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v7 = 136315394;
      v8 = "[IXSRemoteDeletionPromptManager iCloudIsEnabledForMessages]";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: IMCloudKitHooks returned %c for iCloud state", &v7, 0x12u);
    }
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3A9C();
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unint64_t)sharedMediaInMessagesCount
{
  if (qword_100121E58)
  {
    v2 = qword_100121E50 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3B1C();
    }

    v6 = 0;
  }

  else
  {
    v3 = [qword_100121E58 sharedPhotoLibrary];
    v4 = [v3 librarySpecificFetchOptions];
    [v4 setIncludeGuestAssets:1];
    v5 = [qword_100121E50 fetchGuestAssetsWithOptions:v4];
    v6 = [v5 count];
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[IXSRemoteDeletionPromptManager sharedMediaInMessagesCount]";
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: PHPhotoLibrary and PHAsset returned %lu for shared media count", &v10, 0x16u);
    }
  }

  return v6;
}

- (BOOL)isValidBundleIDForRemoteAlert:(id)a3 withAppType:(unint64_t *)a4 numAppsInstalled:(unint64_t *)a5
{
  v7 = a3;
  v33 = 0;
  v8 = sub_10003AF28(v7, 17, &v33);
  v9 = v33;
  v10 = v9;
  if (v8 && v9 && (([v9 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_APP_TYPE_KEY"], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v12 = v11, (objc_opt_isKindOfClass() & 1) == 0) ? (v13 = 0) : (v13 = v12), v12, v12, v13))
  {
    v14 = [v13 unsignedIntegerValue];
    if (v14 == 4)
    {

      goto LABEL_15;
    }
  }

  else
  {
    v13 = [&off_10010DF58 objectForKey:v7];
    v14 = [v13 unsignedIntegerValue];
  }

  v15 = v14;

  if (v15)
  {
    if (v15 == 2)
    {
      v18 = sub_100071B4C(v7);
    }

    else
    {
      if (v15 == 3)
      {
        v16 = +[IXGlobalConfiguration sharedInstance];
        v17 = [v16 isiPad] ^ 1;

        v18 = 0;
        v15 = 3;
        if (!a4)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v18 = 0;
    }

    LOBYTE(v17) = 1;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_15:
  v19 = v7;
  v33 = 0;
  v20 = sub_10003AF28(v19, 17, &v33);
  v21 = v33;
  v22 = v21;
  v23 = 0;
  if (!v20 || !v21 || (([v21 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_APP_TYPE_KEY"], v24 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v25 = v24, (objc_opt_isKindOfClass() & 1) == 0) ? (v23 = 0) : (v23 = v25), (v25, v25, !v23) || objc_msgSend(v23, "unsignedIntegerValue") != 4))
  {
    v27 = +[LSApplicationWorkspace defaultWorkspace];
    v32 = 0;
    v28 = [v27 getPreferredAppMarketplacesWithError:&v32];
    v29 = v32;

    if (v28)
    {
      v30 = [v28 containsObject:v19];

      if (v30)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v31 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3B9C();
      }
    }

    LOBYTE(v17) = 0;
    v15 = 0;
    v18 = 0;
    if (a4)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_32:
  v18 = sub_100071B4C(v19);
  if (v18)
  {
    LOBYTE(v17) = 1;
    v15 = 4;
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_22:
    *a4 = v15;
    goto LABEL_23;
  }

  LOBYTE(v17) = 0;
  v15 = 0;
  if (a4)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (a5)
  {
    *a5 = v18;
  }

  return v17;
}

@end