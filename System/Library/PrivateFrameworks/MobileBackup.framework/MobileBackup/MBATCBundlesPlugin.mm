@interface MBATCBundlesPlugin
- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)a3 fileInfo:(id)a4;
- (BOOL)shouldRestoreContentWithPolicy:(id)a3 fileInfo:(id)a4;
- (id)endingBackupWithEngine:(id)a3;
- (id)startingBackupWithEngine:(id)a3;
- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (void)_populateAccountsAndAssetsForEngine:(id)a3 accountsTracker:(id)a4;
- (void)_populateAccountsForEngine:(id)a3 dataClasses:(id)a4 accountsTracker:(id)a5;
- (void)_populateBuddyStashForEngine:(id)a3;
- (void)_populatePathsForEngine:(id)a3 domain:(id)a4 dataclass:(id)a5 allBackupPaths:(id)a6;
- (void)_updatePathsForCameraRollDomainWithEngine:(id)a3;
@end

@implementation MBATCBundlesPlugin

- (void)_populatePathsForEngine:(id)a3 domain:(id)a4 dataclass:(id)a5 allBackupPaths:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[ATClientController sharedInstance];
  v14 = [v13 clientForDataclass:v11];
  v15 = [v9 domainManager];
  v16 = [v15 domainForName:v10];

  v17 = objc_alloc_init(NSMutableSet);
  v18 = objc_alloc_init(NSMutableSet);
  if (objc_opt_respondsToSelector())
  {
    context = objc_autoreleasePoolPush();
    v60 = v17;
    if ([v9 isDeviceTransferEngine])
    {
      v19 = 3;
    }

    else if ([v9 isDriveEngine])
    {
      v19 = 2;
    }

    else
    {
      if (([v9 isServiceEngine] & 1) == 0)
      {
        __assert_rtn("[MBATCBundlesPlugin _populatePathsForEngine:domain:dataclass:allBackupPaths:]", "MBATCBundlesPlugin.m", 64, "restoreType != ATRestoreTypeNone");
      }

      v19 = 1;
    }

    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1001F8868;
    v73[3] = &unk_1003C1700;
    v74 = v14;
    v79 = v19;
    v75 = v16;
    v76 = v12;
    v77 = v17;
    v78 = v18;
    v46 = [v74 enumeratePathsForBackupType:v19 usingBlock:v73];

    v45 = v74;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_37;
    }

    v60 = v17;
    v62 = v18;
    v55 = v13;
    v56 = v11;
    v57 = v10;
    v58 = v9;
    context = objc_autoreleasePoolPush();
    v71 = 0;
    v72 = 0;
    [v14 pathsToBackup:&v72 pathsNotToBackup:&v71];
    v20 = v72;
    v21 = v71;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 count];
      v24 = [v21 count];
      *buf = 138412802;
      v83 = v14;
      v84 = 2048;
      v85 = v23;
      v86 = 2048;
      v87 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathsToBackup.count:%lu, pathsNotToBackup.count:%lu", buf, 0x20u);
      v52 = [v20 count];
      v53 = [v21 count];
      v51 = v14;
      _MBLog();
    }

    v54 = v21;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v25 = v20;
    v26 = [v25 countByEnumeratingWithState:&v67 objects:v81 count:16];
    v27 = v12;
    obj = v25;
    if (v26)
    {
      v28 = v26;
      v29 = *v68;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v68 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v67 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v14;
            v84 = 2112;
            v85 = v31;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathToBackup:%@", buf, 0x16u);
            v51 = v14;
            v52 = v31;
            _MBLog();
          }

          v34 = [v16 standardizedRelativePathFor:v31];
          if ([v27 containsObject:v34])
          {
            v35 = MBGetDefaultLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v83 = v14;
              v84 = 2112;
              v85 = v31;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping duplicate path: %@", buf, 0x16u);
              v51 = v14;
              v52 = v31;
              _MBLog();
            }
          }

          else
          {
            [v27 addObject:v34];
            [v60 addObject:v34];
          }

          objc_autoreleasePoolPop(v32);
        }

        v25 = obj;
        v28 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v28);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = v54;
    v37 = [v36 countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v64;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v64 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v63 + 1) + 8 * j);
          v42 = objc_autoreleasePoolPush();
          v43 = MBGetDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v14;
            v84 = 2112;
            v85 = v41;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathNotToBackup:%@", buf, 0x16u);
            v51 = v14;
            v52 = v41;
            _MBLog();
          }

          v44 = [v16 standardizedRelativePathFor:v41];
          [v62 addObject:v44];

          objc_autoreleasePoolPop(v42);
        }

        v38 = [v36 countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v38);
    }

    v10 = v57;
    v9 = v58;
    v12 = v27;
    v13 = v55;
    v11 = v56;
    v18 = v62;
    v45 = obj;
  }

  objc_autoreleasePoolPop(context);
  v17 = v60;
LABEL_37:
  if ([v17 count])
  {
    v47 = [v16 relativePathsToBackupAndRestore];

    if (v47)
    {
      v48 = [v16 relativePathsToBackupAndRestore];
      [v17 unionSet:v48];
    }

    [v16 setRelativePathsToBackupAndRestore:v17];
  }

  if ([v18 count])
  {
    v49 = [v16 relativePathsNotToBackup];

    if (v49)
    {
      v50 = [v16 relativePathsNotToBackup];
      [v18 unionSet:v50];
    }

    [v16 setRelativePathsNotToBackup:v18];
  }
}

- (void)_populateAccountsForEngine:(id)a3 dataClasses:(id)a4 accountsTracker:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    __assert_rtn("[MBATCBundlesPlugin _populateAccountsForEngine:dataClasses:accountsTracker:]", "MBATCBundlesPlugin.m", 140, "accountsTracker");
  }

  v10 = v9;
  if ([v7 isDeviceTransferEngine])
  {
    [v7 preflightProperties];
  }

  else
  {
    [v7 properties];
  }
  v60 = ;
  v52 = v7;
  v55 = +[ATClientController sharedInstance];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v8;
  v56 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v56)
  {
    v54 = *v71;
    do
    {
      v11 = 0;
      do
      {
        if (*v71 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v70 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v61 = v12;
        v14 = [v55 clientForDataclass:v12];
        v58 = v13;
        v59 = v11;
        v57 = v14;
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 accountsForAssets];
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v77 = v14;
            v78 = 2112;
            v79 = v61;
            v80 = 2112;
            v81 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, -accountsForAssets returned: %@", buf, 0x20u);
            v50 = v61;
            v51 = v15;
            v46 = v14;
            _MBLog();
          }

LABEL_17:

          goto LABEL_18;
        }

        if (v14)
        {
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v77 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= %@ doesn't implement -accountsForAssets", buf, 0xCu);
            v46 = v14;
            _MBLog();
          }

          v15 = 0;
          goto LABEL_17;
        }

        v15 = 0;
LABEL_18:
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v67;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v67 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v66 + 1) + 8 * i);
              v23 = [v22 appleID];
              if (!v23)
              {
                v24 = MBGetDefaultLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil appleID for %@", buf, 0xCu);
                  v47 = v22;
                  _MBLog();
                }
              }

              v25 = [v22 DSID];
              if (!v25)
              {
                v26 = MBGetDefaultLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil DSID for %@", buf, 0xCu);
                  v48 = v22;
                  _MBLog();
                }
              }

              v27 = [v22 altDSID];
              if (!v27)
              {
                v28 = MBGetDefaultLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil altDSID for %@", buf, 0xCu);
                  v49 = v22;
                  _MBLog();
                }
              }

              if ([v10 addAccountWithDSID:{v25, v49}])
              {
                v29 = [v25 stringValue];
                [v60 addAppleID:v23 DSID:v29 altDSID:v27 dataClass:v61];
              }

              else
              {
                v29 = MBGetDefaultLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v77 = v23;
                  v78 = 2112;
                  v79 = v25;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "=atc-bundles= Skipping account: %@/%@", buf, 0x16u);
                  v46 = v23;
                  v50 = v25;
                  _MBLog();
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v66 objects:v75 count:16];
          }

          while (v19);
        }

        v30 = [v57 appleIDsForAssets];
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v77 = v57;
          v78 = 2112;
          v79 = v61;
          v80 = 2112;
          v81 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, -appleIDsForAssets returned: %@", buf, 0x20u);
          v50 = v61;
          v51 = v30;
          v46 = v57;
          _MBLog();
        }

        v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v30, "count")}];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v33 = v30;
        v34 = [v33 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v63;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v63 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v62 + 1) + 8 * j);
              if (([v10 isIgnoredAppleID:{v38, v46}] & 1) == 0)
              {
                [v32 addObject:v38];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v35);
        }

        if ([v32 count])
        {
          v39 = [v32 count];
          if (v39 != [v33 count])
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v77 = v57;
              v78 = 2112;
              v79 = v61;
              v80 = 2112;
              v81 = v33;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, Filtered appleIDs: %@", buf, 0x20u);
              v50 = v61;
              v51 = v33;
              v46 = v57;
              _MBLog();
            }
          }

          [v60 addAppleIDsFromSet:v32 dataClass:{v61, v46}];
        }

        objc_autoreleasePoolPop(v58);
        v11 = v59 + 1;
      }

      while ((v59 + 1) != v56);
      v41 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
      v56 = v41;
    }

    while (v41);
  }

  v42 = +[SSAccountStore defaultStore];
  v43 = [v42 activeAccount];

  if (v43)
  {
    v44 = [v43 accountName];
    if (([v10 isIgnoredAppleID:v44] & 1) == 0)
    {
      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found active store account: %@", buf, 0xCu);
        _MBLog();
      }

      [v60 setActiveAppleID:v44];
    }
  }
}

- (void)_populateAccountsAndAssetsForEngine:(id)a3 accountsTracker:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    __assert_rtn("[MBATCBundlesPlugin _populateAccountsAndAssetsForEngine:accountsTracker:]", "MBATCBundlesPlugin.m", 209, "accountsTracker");
  }

  v7 = v6;
  v8 = [v5 isDeviceTransferEngine];
  v9 = v8;
  if (v8)
  {
    [v5 preflightProperties];
  }

  else
  {
    [v5 properties];
  }
  v10 = ;
  v11 = +[ACAccountStore defaultStore];
  if (!v11)
  {
    __assert_rtn("[MBATCBundlesPlugin _populateAccountsAndAssetsForEngine:accountsTracker:]", "MBATCBundlesPlugin.m", 220, "acAccountStore");
  }

  v12 = v11;
  v13 = +[SSAccountStore defaultStore];
  v14 = objc_alloc_init(NSMutableSet);
  v15 = +[LSApplicationWorkspace defaultWorkspace];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001F96D8;
  v22[3] = &unk_1003C1728;
  v16 = v14;
  v23 = v16;
  v24 = v7;
  v25 = v13;
  v26 = v10;
  v28 = v9;
  v27 = v12;
  v17 = v12;
  v18 = v10;
  v19 = v13;
  v20 = v7;
  [v15 enumerateBundlesOfType:0 block:v22];

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found accounts: %@", buf, 0xCu);
    _MBLog();
  }
}

- (void)_populateBuddyStashForEngine:(id)a3
{
  v3 = [a3 properties];
  v4 = BYDataStashCreate();
  v5 = v4;
  if (v4)
  {
    if ([v4 length] > 0x8000)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v9 = [v5 length];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "=atc-bundles= buddyStash exceeds 32k (%ld)", buf, 0xCu);
        v7 = [v5 length];
        _MBLog();
      }
    }

    [v3 setBuddyStashData:{v5, v7}];
  }
}

- (id)startingBackupWithEngine:(id)a3
{
  v4 = a3;
  if (![v4 backsUpPrimaryAccount])
  {
    goto LABEL_39;
  }

  if (MBIsInternalInstall())
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    v6 = [v5 domainsToBackUpRegex];

    if (v6)
    {
      goto LABEL_39;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = +[ATClientController sharedInstance];
  v8 = [v7 allClients];

  v9 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 prepareForBackup];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v10);
  }

  if ([v4 backupPolicy] == 1)
  {
    if (![v4 isCloudKitEngine])
    {
      __assert_rtn("[MBATCBundlesPlugin startingBackupWithEngine:]", "MBATCBundlesPlugin.m", 307, "!isMegaBackupPolicy || engine.isCloudKitEngine");
    }

    [v4 isDeviceTransferEngine];
    goto LABEL_18;
  }

  if ([v4 isDeviceTransferEngine])
  {
LABEL_18:
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = [&off_1003E2468 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(&off_1003E2468);
          }

          v19 = *(*(&v41 + 1) + 8 * j);
          v20 = [v4 domainManager];
          v21 = [v20 domainForName:v19];

          if (!v21)
          {
            __assert_rtn("[MBATCBundlesPlugin startingBackupWithEngine:]", "MBATCBundlesPlugin.m", 313, "domain");
          }

          v22 = v4;
          v23 = [v21 standardizedRelativePathFor:@"Media/iTunes_Control/iTunes"];
          v24 = [v21 relativePathsNotToBackupToDrive];
          v25 = [v24 containsObject:v23];

          if (v25)
          {
            v26 = [v21 relativePathsNotToBackupToDrive];
            v27 = [v26 mutableCopy];

            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v50 = v19;
              v51 = 2114;
              v52 = v23;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              v38 = v19;
              v40 = v23;
              _MBLog();
            }

            [v27 removeObject:v23];
            [v21 setRelativePathsNotToBackupToDrive:v27];
          }

          v29 = [v21 relativePathsNotToBackupToDrive];
          v30 = [v29 containsObject:&stru_1003C3430];

          if (v30)
          {
            v31 = [v21 relativePathsNotToBackupToDrive];
            v32 = [v31 mutableCopy];

            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v50 = v19;
              v51 = 2114;
              v52 = &stru_1003C3430;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              v37 = v19;
              v39 = &stru_1003C3430;
              _MBLog();
            }

            [v32 removeObject:&stru_1003C3430];
            [v21 setRelativePathsNotToBackupToDrive:v32];
          }

          v4 = v22;
        }

        v16 = [&off_1003E2468 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v16);
    }
  }

  if ([v4 isDeviceTransferEngine])
  {
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"BooksDomain" dataclass:@"Book" allBackupPaths:0];
    v34 = objc_alloc_init(NSMutableSet);
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"TonesDomain" dataclass:@"Ringtone" allBackupPaths:v34];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"MediaDomain" dataclass:@"Media" allBackupPaths:v34];
    [(MBATCBundlesPlugin *)self _updatePathsForCameraRollDomainWithEngine:v4];
    v35 = objc_alloc_init(MBIgnoredAccountsTracker);
    [(MBATCBundlesPlugin *)self _populateAccountsForEngine:v4 dataClasses:&off_1003E2480 accountsTracker:v35];
    [(MBATCBundlesPlugin *)self _populateAccountsAndAssetsForEngine:v4 accountsTracker:v35];

LABEL_38:
    goto LABEL_39;
  }

  if ([v4 isCloudKitEngine])
  {
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"CameraRollDomain" dataclass:@"Photo"];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"BooksDomain" dataclass:@"Book"];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"TonesDomain" dataclass:@"Ringtone"];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:v4 domain:@"MediaDomain" dataclass:@"Media"];
    v34 = objc_alloc_init(MBIgnoredAccountsTracker);
    [(MBATCBundlesPlugin *)self _populateAccountsForEngine:v4 dataClasses:&off_1003E2498 accountsTracker:v34];
    [(MBATCBundlesPlugin *)self _populateAccountsAndAssetsForEngine:v4 accountsTracker:v34];
    [(MBATCBundlesPlugin *)self _populateBuddyStashForEngine:v4];
    goto LABEL_38;
  }

LABEL_39:

  return 0;
}

- (id)endingBackupWithEngine:(id)a3
{
  if ([a3 backsUpPrimaryAccount])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = +[ATClientController sharedInstance];
    v4 = [v3 allClients];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 backupEnded];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return 0;
}

- (BOOL)shouldRestoreContentWithPolicy:(id)a3 fileInfo:(id)a4
{
  v5 = a4;
  if ([a3 isRestoringPrimaryAccount])
  {
    v6 = +[ATClientController sharedInstance];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 allClients];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v20 = v6;
      v10 = *v22;
      v11 = &selRef_setServiceDelegate_;
      while (2)
      {
        v12 = 0;
        v13 = v11;
        v14 = v11[276];
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v21 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v16 = +[MBCKManager sharedInstance];
            v17 = [v15 shouldRestoreFile:v5 backupManager:v16];

            if (!v17)
            {
              v18 = 0;
              goto LABEL_14;
            }
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v11 = v13;
        if (v9)
        {
          continue;
        }

        break;
      }

      v18 = 1;
LABEL_14:
      v6 = v20;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)a3 fileInfo:(id)a4
{
  v5 = a4;
  if (![a3 isRestoringPrimaryAccount])
  {
    v19 = 0;
    goto LABEL_29;
  }

  v6 = +[ATClientController sharedInstance];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 allClients];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v8)
  {
    v19 = 0;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = *v34;
  v11 = &selRef_setServiceDelegate_;
  v12 = &selRef_setServiceDelegate_;
  v32 = v6;
  while (2)
  {
    v13 = 0;
    v14 = v11;
    v15 = v11[245];
    v16 = v12;
    v17 = v12[244];
    do
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v18 = *(*(&v33 + 1) + 8 * v13);
      if (objc_opt_respondsToSelector())
      {
        v20 = [v5 path];
        v21 = +[MBCKManager sharedInstance];
        v22 = [v18 shouldBackgroundRestorePath:v20 backupManager:v21];

        v23 = MBGetDefaultLog();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if (v22)
        {
          v6 = v32;
          if (v24)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }

        v6 = v32;
        if (v24)
        {
LABEL_24:
          v29 = [v5 path];
          *buf = 138412546;
          v38 = v18;
          v39 = 2112;
          v40 = v29;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "=atc-bundles= %@ requesting FG restore: %@", buf, 0x16u);

          v19 = 0;
          goto LABEL_25;
        }

LABEL_26:
        v19 = 0;
        goto LABEL_27;
      }

      if (objc_opt_respondsToSelector())
      {
        v25 = +[MBCKManager sharedInstance];
        v26 = [v18 shouldBackgroundRestoreFile:v5 backupManager:v25];

        v23 = MBGetDefaultLog();
        v27 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if (v26)
        {
          v6 = v32;
          if (v27)
          {
LABEL_19:
            v28 = [v5 path];
            *buf = 138412546;
            v38 = v18;
            v39 = 2112;
            v40 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "=atc-bundles= %@ requesting BG restore: %@", buf, 0x16u);

            v19 = 1;
LABEL_25:
            v31 = [v5 path];
            _MBLog();

            goto LABEL_27;
          }

LABEL_22:
          v19 = 1;
LABEL_27:

          goto LABEL_28;
        }

        v6 = v32;
        if (v27)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      v13 = v13 + 1;
    }

    while (v9 != v13);
    v9 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
    v19 = 0;
    v6 = v32;
    v11 = v14;
    v12 = v16;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

LABEL_29:
  return v19;
}

- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 restoresPrimaryAccount])
  {
    goto LABEL_33;
  }

  v38 = [v7 domainManager];
  v35 = v7;
  v36 = v6;
  if ([v7 backupPolicy] == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBATCBundlesPlugin startingRestoreWithPolicy:engine:]", "MBATCBundlesPlugin.m", 439, "[engine isKindOfClass:MBCKRestoreEngine.class]");
    }

    [v7 isDeviceTransferEngine];
    goto LABEL_6;
  }

  if ([v7 isDeviceTransferEngine])
  {
LABEL_6:
    if (!v38)
    {
      __assert_rtn("[MBATCBundlesPlugin startingRestoreWithPolicy:engine:]", "MBATCBundlesPlugin.m", 443, "domainManager");
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [&off_1003E24B0 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v37 = *v40;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v40 != v37)
          {
            objc_enumerationMutation(&off_1003E24B0);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [v38 domainForName:{v11, v31, v33}];
          if (!v12)
          {
            __assert_rtn("[MBATCBundlesPlugin startingRestoreWithPolicy:engine:]", "MBATCBundlesPlugin.m", 447, "domain");
          }

          v13 = v12;
          v14 = [v12 relativePathsToBackupAndRestore];

          if (v14)
          {
            v15 = [v13 relativePathsToBackupAndRestore];
            v16 = [v15 mutableCopy];
          }

          else
          {
            v16 = objc_opt_new();
          }

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v44 = v13;
            v45 = 2114;
            v46 = @"Media";
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
            v32 = v13;
            v34 = @"Media";
            _MBLog();
          }

          [v16 addObject:@"Media"];
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v44 = v13;
            v45 = 2114;
            v46 = @"Media/iTunes_Control/iTunes";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
            v32 = v13;
            v34 = @"Media/iTunes_Control/iTunes";
            _MBLog();
          }

          [v16 addObject:@"Media/iTunes_Control/iTunes"];
          [v13 setRelativePathsToBackupAndRestore:v16];
          v19 = [v13 standardizedRelativePathFor:@"Media/iTunes_Control/iTunes"];
          v20 = [v13 relativePathsNotToBackupToDrive];
          v21 = [v20 containsObject:v19];

          if (v21)
          {
            v22 = [v13 relativePathsNotToBackupToDrive];
            v23 = [v22 mutableCopy];

            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v44 = v11;
              v45 = 2114;
              v46 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              v32 = v11;
              v34 = v19;
              _MBLog();
            }

            [v23 removeObject:v19];
            [v13 setRelativePathsNotToBackupToDrive:v23];
          }

          v25 = [v13 relativePathsNotToBackupToDrive];
          v26 = [v25 containsObject:&stru_1003C3430];

          if (v26)
          {
            v27 = [v13 relativePathsNotToBackupToDrive];
            v28 = [v27 mutableCopy];

            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v44 = v11;
              v45 = 2114;
              v46 = &stru_1003C3430;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              v31 = v11;
              v33 = &stru_1003C3430;
              _MBLog();
            }

            [v28 removeObject:&stru_1003C3430];
            [v13 setRelativePathsNotToBackupToDrive:v28];
          }
        }

        v9 = [&off_1003E24B0 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v9);
    }
  }

  v7 = v35;
  if ([v35 isDeviceTransferEngine])
  {
    [(MBATCBundlesPlugin *)self _updatePathsForCameraRollDomainWithEngine:v35];
  }

  v6 = v36;
LABEL_33:

  return 0;
}

- (void)_updatePathsForCameraRollDomainWithEngine:(id)a3
{
  v3 = a3;
  v4 = [v3 domainManager];
  v5 = [v4 domainForName:@"CameraRollDomain"];

  if (!v5)
  {
    __assert_rtn("[MBATCBundlesPlugin _updatePathsForCameraRollDomainWithEngine:]", "MBATCBundlesPlugin.m", 495, "domain");
  }

  v6 = [v5 standardizedRelativePathFor:@"Media/PhotoData/Sync"];
  v7 = [v5 relativePathsToRemoveOnRestore];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = [v5 relativePathsToRemoveOnRestore];
    v10 = [v9 mutableCopy];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = @"CameraRollDomain";
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsToRemoveOnRestore", buf, 0x16u);
      v28 = @"CameraRollDomain";
      v31 = v6;
      _MBLog();
    }

    [v10 removeObject:v6];
    [v5 setRelativePathsToRemoveOnRestore:v10];
  }

  v12 = [v5 relativePathsNotToBackup];
  v13 = [v12 containsObject:v6];

  if (v13)
  {
    v14 = [v5 relativePathsNotToBackup];
    v15 = [v14 mutableCopy];

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = @"CameraRollDomain";
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
      v29 = @"CameraRollDomain";
      v32 = v6;
      _MBLog();
    }

    [v15 removeObject:v6];
    [v5 setRelativePathsNotToBackup:v15];
  }

  v17 = [v5 standardizedRelativePathFor:{@"Media/PhotoData/Metadata/PhotoData/Sync", v29, v32}];
  v18 = [v5 relativePathsToRemoveOnRestore];
  v19 = [v18 containsObject:v17];

  if (v19)
  {
    v20 = [v5 relativePathsToRemoveOnRestore];
    v21 = [v20 mutableCopy];

    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = @"CameraRollDomain";
      v36 = 2114;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsToRemoveOnRestore", buf, 0x16u);
      v30 = @"CameraRollDomain";
      v33 = v17;
      _MBLog();
    }

    [v21 removeObject:v17];
    [v5 setRelativePathsToRemoveOnRestore:v21];
  }

  v23 = [v5 relativePathsNotToBackup];
  v24 = [v23 containsObject:v17];

  if (v24)
  {
    v25 = [v5 relativePathsNotToBackup];
    v26 = [v25 mutableCopy];

    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = @"CameraRollDomain";
      v36 = 2114;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
      _MBLog();
    }

    [v26 removeObject:v17];
    [v5 setRelativePathsNotToBackup:v26];
  }
}

@end