@interface RestorePostProcess
- (BOOL)_configurePlaceholderIPA:(id)a3 personaIdentifier:(id)a4 isDataSeparated:(BOOL)a5 installType:(unint64_t)a6;
- (BOOL)performMigration;
- (BOOL)performMigrationWithConfig:(id)a3 error:(id *)a4;
- (RestorePostProcess)init;
- (float)estimatedDuration;
- (float)migrationProgress;
- (id)_installCoordinatorForPlaceholder:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 personaIdentifier:(id)a6 isDataSeparated:(BOOL)a7 error:(id *)a8;
- (id)_placeholderAtPath:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 error:(id *)a6;
- (unint64_t)_installTypeForBundleID:(id)a3 demotedAppsPlist:(id)a4;
- (void)_installedPlaceholderWithBundleID:(id)a3 error:(id)a4;
- (void)_registerPlaceholdersForBackgroundRestore:(id)a3 personaIdentifier:(id)a4 isDataSeparated:(BOOL)a5 demotedAppsPlist:(id)a6;
- (void)_registerSafeHarborsAtPath:(id)a3;
- (void)_resetTetheredSyncAnchors;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4;
@end

@implementation RestorePostProcess

- (RestorePostProcess)init
{
  v3.receiver = self;
  v3.super_class = RestorePostProcess;
  result = [(RestorePostProcess *)&v3 init];
  if (result)
  {
    result->_placeholderInstallationLock._os_unfair_lock_opaque = 0;
    result->_progress = 0.0;
  }

  return result;
}

- (void)_resetTetheredSyncAnchors
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting tethered sync anchors", buf, 2u);
    _MBLog();
  }

  v3 = 0;
  v4 = "com.apple.Contacts";
  do
  {
    v5 = CFStringCreateWithCString(0, v4, 0x600u);
    v6 = MBGetDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting sync anchors for data source %@", buf, 0xCu);
        _MBLog();
      }

      if (CreateDataSourceForDataClassName())
      {
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v11 = v5;
          v12 = 2112;
          v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't create a data source for %@: %@", buf, 0x16u);
LABEL_20:
          _MBLog();
        }
      }

      else
      {
        if (DataSourceClearSyncAnchors())
        {
          v9 = MBGetDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v11 = v5;
            v12 = 2112;
            v13 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't reset sync anchors for data source %@: %@", buf, 0x16u);
            _MBLog();
          }
        }

        if (!DataSourceDeleteDataSource())
        {
          goto LABEL_22;
        }

        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v11 = v5;
          v12 = 2112;
          v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't delete data source for %@: %@", buf, 0x16u);
          goto LABEL_20;
        }
      }

LABEL_22:
      CFRelease(v5);
      goto LABEL_23;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't make CFString data class name for %s to clear sync anchors after restore", buf, 0xCu);
      _MBLog();
    }

LABEL_23:
    v4 = off_1003BE358[++v3];
  }

  while (v3 != 4);
}

- (void)_registerPlaceholdersForBackgroundRestore:(id)a3 personaIdentifier:(id)a4 isDataSeparated:(BOOL)a5 demotedAppsPlist:(id)a6
{
  v46 = a3;
  v44 = a4;
  v45 = a6;
  v39 = +[NSDate now];
  v40 = +[NSFileManager defaultManager];
  [(RestorePostProcess *)self setCurrentPlaceholderRestoreDirectory:v46];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v45 path];
    *buf = 138543618;
    *&buf[4] = v46;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reading the app placeholders at %{public}@, demotedAppsPlist:%{public}@", buf, 0x16u);

    [v45 path];
    v34 = *&v46;
    v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    _MBLog();
  }

  v60 = 0;
  v41 = [v40 contentsOfDirectoryAtPath:v46 error:&v60];
  v38 = v60;
  if (v41)
  {
    v37 = COERCE_DOUBLE([v41 count]);
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v44;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Installing %lu app placeholders for persona %@", buf, 0x16u);
      v34 = v37;
      v35 = *&v44;
      _MBLog();
    }

    v11 = objc_opt_new();
    [(RestorePostProcess *)self setAppInstallCoordinators:v11];

    v12 = dispatch_group_create();
    [(RestorePostProcess *)self setPlaceholderInstallationGroup:v12];

    v13 = dispatch_semaphore_create(2);
    v14 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v69 = 0;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v41;
    v15 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v15)
    {
      v16 = *v57;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v56 + 1) + 8 * i);
          dispatch_group_enter(v14);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v19 = [(RestorePostProcess *)self _installTypeForBundleID:v18 demotedAppsPlist:v45];
          v20 = [v46 stringByAppendingPathComponent:v18];
          v21 = dispatch_get_global_queue(25, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000DFF30;
          block[3] = &unk_1003BE388;
          block[4] = self;
          v49 = v20;
          v22 = v44;
          v55 = a5;
          v50 = v22;
          v53 = buf;
          v54 = v19;
          v51 = v13;
          v52 = v14;
          v23 = v20;
          dispatch_async(v21, block);
        }

        v15 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v15);
    }

    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v24 = atomic_load((*&buf[8] + 24));
    v25 = MBGetDefaultLog();
    v26 = v24;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v61 = 134218498;
      v62 = v24;
      v63 = 2048;
      v64 = v37;
      v65 = 2112;
      v66 = v44;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Done configuring %lu/%lu placeholders for %@. Waiting for them to get installed", v61, 0x20u);
      v35 = v37;
      v36 = v44;
      *&v34 = v24;
      _MBLog();
    }

    v27 = [(RestorePostProcess *)self placeholderInstallationGroup];
    v28 = dispatch_time(0, ((5 * v26) * 1000000000.0));
    v29 = dispatch_group_wait(v27, v28) == 0;

    if (!v29)
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Placeholder installations timed out. Proceeding anyway", v61, 2u);
        _MBLog();
      }
    }

    [v39 timeIntervalSinceNow];
    v32 = v31;
    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v61 = 138412546;
      v62 = v44;
      v63 = 2048;
      v64 = -v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Finished installing app placeholders for persona %@ in %.3fs", v61, 0x16u);
      _MBLog();
    }

    [(RestorePostProcess *)self setAppInstallCoordinators:0];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "-contentsOfDirectoryAtPath: failed at %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (unint64_t)_installTypeForBundleID:(id)a3 demotedAppsPlist:(id)a4
{
  v6 = a3;
  v7 = a4;
  bundleInstallTypeDictionary = self->_bundleInstallTypeDictionary;
  if (bundleInstallTypeDictionary)
  {
    goto LABEL_38;
  }

  v9 = [v7 path];
  v57 = 0;
  v10 = [NSData dataWithContentsOfFile:v9 options:0 error:&v57];
  v11 = v57;
  v12 = MBGetDefaultLog();
  v13 = v12;
  if (!v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v61 = v9;
      v62 = 2114;
      v63 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to load the demoted apps plist at %{public}@: %{public}@", buf, 0x16u);
      v39 = v9;
      v40 = v11;
      _MBLog();
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 length];
    *buf = 138543618;
    v61 = v9;
    v62 = 2048;
    v63 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found demoted apps plist at %{public}@ (%lu bytes)", buf, 0x16u);
    v39 = v9;
    v40 = [v10 length];
    _MBLog();
  }

  v56 = 0;
  v15 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v56];
  v16 = v56;

  if (!v15)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v61 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to deserialize the demoted apps plist data: %{public}@", buf, 0xCu);
      v39 = v16;
      _MBLog();
    }

    v11 = v16;
LABEL_12:

    v15 = 0;
    v41 = v11;
    goto LABEL_13;
  }

  v41 = v16;
LABEL_13:
  v42 = v10;
  v43 = v7;
  v44 = v6;
  v17 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v45 = v15;
  v18 = [v15 objectForKeyedSubscript:@"IntentionalDowngrades"];
  v19 = [v18 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v47 = 0;
    v21 = *v53;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v61 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Found intentionally downgraded app %{public}@", buf, 0xCu);
          v39 = v23;
          _MBLog();
        }

        [(NSDictionary *)v17 setObject:&off_1003E0DB0 forKeyedSubscript:v23];
      }

      v47 = &v47[v20];
      v20 = [v18 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v20);
  }

  else
  {
    v47 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = [v45 objectForKeyedSubscript:@"AutomaticDowngrades"];
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v49;
    do
    {
      v46 = v28;
      for (j = 0; j != v27; ++j)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v48 + 1) + 8 * j);
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v61 = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Found automatically downgraded app %{public}@", buf, 0xCu);
          v39 = v31;
          _MBLog();
        }

        [(NSDictionary *)v17 setObject:&off_1003E0DC8 forKeyedSubscript:v31];
      }

      v28 = &v46[v27];
      v27 = [v25 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v33 = self->_bundleInstallTypeDictionary;
  self->_bundleInstallTypeDictionary = v17;

  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v61 = v47;
    v62 = 2048;
    v63 = v28;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found %lu intentionally demoted apps and %lu automatically demoted apps to restore", buf, 0x16u);
    v39 = v47;
    v40 = v28;
    _MBLog();
  }

  bundleInstallTypeDictionary = self->_bundleInstallTypeDictionary;
  v7 = v43;
  v6 = v44;
LABEL_38:
  v35 = [(NSDictionary *)bundleInstallTypeDictionary objectForKeyedSubscript:v6, v39, v40];
  v36 = v35;
  if (v35)
  {
    v37 = [v35 unsignedIntValue];
  }

  else
  {
    v37 = 2;
  }

  return v37;
}

- (BOOL)_configurePlaceholderIPA:(id)a3 personaIdentifier:(id)a4 isDataSeparated:(BOOL)a5 installType:(unint64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = +[NSFileManager defaultManager];
  v13 = [v10 lastPathComponent];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v71 = v10;
    v72 = 2048;
    v73 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Installing app placeholder at %@, installType:%lu", buf, 0x16u);
    v49 = v10;
    v50 = a6;
    _MBLog();
  }

  [v10 stringByAppendingPathComponent:@"Payload"];
  v60 = v69[1] = 0;
  v15 = [v12 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v16 = 0;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if ([v16 code] != 516 || (objc_msgSend(v17, "domain"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", NSCocoaErrorDomain), v42, (v43 & 1) == 0))
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v71 = v60;
        v72 = 2114;
        v73 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to create payload directory at %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }

      goto LABEL_42;
    }
  }

  v56 = self;

  v69[0] = 0;
  v18 = [v12 contentsOfDirectoryAtPath:v10 error:v69];
  v19 = v69[0];
  v20 = v19;
  if (!v18)
  {
    v17 = v19;
    v44 = MBGetDefaultLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v71 = v10;
      v72 = 2114;
      v73 = v17;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to enumerate the files inside the placeholder app at %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    v18 = 0;
    goto LABEL_42;
  }

  if (![v18 count])
  {
    v17 = v20;
    v45 = MBGetDefaultLog();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
LABEL_41:

LABEL_42:
      v41 = 0;
      goto LABEL_43;
    }

    *buf = 138543362;
    v71 = v10;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Couldn't find any files inside the placeholder app at %{public}@", buf, 0xCu);
LABEL_40:
    _MBLog();
    goto LABEL_41;
  }

  v52 = v7;
  v53 = a6;
  v54 = v13;
  v55 = v11;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v18 = v18;
  v61 = [v18 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (!v61)
  {
    goto LABEL_24;
  }

  v21 = *v66;
  v58 = v10;
  v59 = v18;
  v57 = *v66;
  do
  {
    v22 = 0;
    v23 = v20;
    do
    {
      if (*v66 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v65 + 1) + 8 * v22);
      v25 = [v24 lowercaseString];
      v26 = [v25 hasSuffix:@".app"];

      if (!v26)
      {
        v20 = v23;
        goto LABEL_22;
      }

      v27 = [v10 stringByAppendingPathComponent:v24];
      v28 = [v60 stringByAppendingPathComponent:v24];
      v29 = [v27 stringByAppendingPathComponent:@"Info.plist"];
      v30 = [v12 contentsAtPath:v29];
      if (v30)
      {
        v31 = [NSPropertyListSerialization propertyListWithData:v30 options:1 format:0 error:0];
        [v31 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsRestore"];
        [v31 writeToFile:v29 atomically:1];
      }

      v64 = v23;
      v32 = v12;
      v33 = [v12 moveItemAtPath:v27 toPath:v28 error:&v64];
      v34 = v64;

      v35 = MBGetDefaultLog();
      v36 = v35;
      if (v33)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v71 = v27;
          v72 = 2114;
          v73 = v28;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Moved %{public}@ to %{public}@", buf, 0x16u);
          v49 = v27;
          v50 = v28;
LABEL_20:
          _MBLog();
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v71 = v27;
        v72 = 2114;
        v73 = v28;
        v74 = 2114;
        v75 = v34;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ to %{public}@: %{public}@", buf, 0x20u);
        v50 = v28;
        v51 = v34;
        v49 = v27;
        goto LABEL_20;
      }

      v20 = v34;
      v23 = v34;
      v10 = v58;
      v18 = v59;
      v12 = v32;
      v21 = v57;
LABEL_22:
      v22 = v22 + 1;
    }

    while (v61 != v22);
    v61 = [v18 countByEnumeratingWithState:&v65 objects:v76 count:16];
  }

  while (v61);
LABEL_24:

  v13 = v54;
  [AITransactionLog logStep:1 byParty:6 phase:1 success:1 forBundleID:v54 description:@"Starting placeholder install"];
  v63 = v20;
  v11 = v55;
  v37 = [(RestorePostProcess *)v56 _createInstallCoordinatorForPlaceholderAtPath:v10 bundleID:v54 personaIdentifier:v55 isDataSeparated:v52 installType:v53 error:&v63];
  v38 = v63;
  v39 = v20;
  v40 = v38;

  if ((v37 & 1) == 0)
  {
    v46 = MBGetDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v71 = v54;
      v72 = 2112;
      v73 = v10;
      v74 = 2112;
      v75 = v40;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to install the placeholder for %@ at %@: %@", buf, 0x20u);
      _MBLog();
    }

    [AITransactionLog logStep:1 byParty:6 phase:2 success:0 forBundleID:v54 description:@"Placeholder install failed"];
    v62 = v40;
    v47 = [v12 removeItemAtPath:v10 error:&v62];
    v17 = v62;

    if (v47)
    {
      goto LABEL_42;
    }

    v45 = MBGetDefaultLog();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412802;
    v71 = v54;
    v72 = 2112;
    v73 = v10;
    v74 = 2112;
    v75 = v17;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to remove the placeholder for %@ at %@: %@", buf, 0x20u);
    goto LABEL_40;
  }

  v41 = 1;
  [AITransactionLog logStep:1 byParty:6 phase:2 success:1 forBundleID:v54 description:@"Placeholder install succeeded"];
  v17 = v40;
LABEL_43:

  return v41;
}

- (id)_placeholderAtPath:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 stringByAppendingPathComponent:a4];
  v11 = [v10 stringByAppendingPathExtension:@"ipa"];

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  v14 = MBGetDefaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IX: Restoring IPA-based app placeholder %@", buf, 0xCu);
      _MBLog();
    }

    v16 = [NSURL fileURLWithPath:v11];
    v17 = [IXPlaceholder placeholderFromSerializedPlaceholder:v16 client:2 installType:a5 error:a6];
  }

  else
  {
    if (v15)
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IX: Restoring pre-expanded app placeholder %@", buf, 0xCu);
      _MBLog();
    }

    v16 = [NSURL fileURLWithPath:v9];
    v17 = [IXPlaceholder placeholderForInstallable:v16 client:2 installType:a5 metadata:0 error:a6];
  }

  v18 = v17;

  return v18;
}

- (id)_installCoordinatorForPlaceholder:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 personaIdentifier:(id)a6 isDataSeparated:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (!a8)
  {
    __assert_rtn("[RestorePostProcess _installCoordinatorForPlaceholder:bundleID:installType:personaIdentifier:isDataSeparated:error:]", "RestorePostProcess.m", 322, "error");
  }

  v16 = v15;
  v17 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v14 personaUniqueString:v15];
  if (a5 - 7 > 1)
  {
    if (a5 == 2)
    {
      v38 = 0;
      v18 = [IXRestoringAppInstallCoordinator coordinatorForAppWithIdentity:v17 withClientID:2 createIfNotExisting:1 created:&v38 error:a8];
      if (v18)
      {
        v19 = [v13 metadataWithError:a8];
        if (!v19)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = *a8;
            *buf = 138412802;
            v40 = v14;
            v41 = 2112;
            v42 = v13;
            v43 = 2112;
            v44 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "IX: No placeholder metadata for %@:%@: %@", buf, 0x20u);
            v34 = v13;
            v36 = *a8;
            v33 = v14;
            _MBLog();
          }
        }

        if (v9)
        {
          v22 = 23;
        }

        else
        {
          v22 = 1;
        }

        v23 = [v19 distributorInfo];
        v24 = [v23 distributorIsThirdParty];

        if (v24)
        {
          v25 = 28;
        }

        else
        {
          v25 = v22;
        }

        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = IXStringForClientID();
          *buf = 138412802;
          v40 = v14;
          v41 = 2112;
          v42 = v16;
          v43 = 2112;
          v44 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "IX: Setting app asset DRI for %@(persona %@) as %@", buf, 0x20u);

          v37 = IXStringForClientID();
          _MBLog();
        }

        if (([v18 setAppAssetPromiseResponsibleClient:v25 error:a8] & 1) == 0)
        {
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *a8;
            *buf = 138412546;
            v40 = v14;
            v41 = 2112;
            v42 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "IX: Failed to set app asset DRI for  %@: %@", buf, 0x16u);
            v35 = *a8;
            _MBLog();
          }
        }

        v30 = v18;
      }
    }

    else
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v40 = a5;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "IX: Did not create InstallCoordinator for unknown install type (%lu)", buf, 0xCu);
        _MBLog();
      }

      v18 = 0;
    }
  }

  else
  {
    buf[0] = 0;
    v18 = [IXRestoringDemotedAppInstallCoordinator coordinatorForAppWithIdentity:v17 withClientID:2 createIfNotExisting:1 created:buf error:a8];
  }

  return v18;
}

- (void)_installedPlaceholderWithBundleID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[RestorePostProcess _installedPlaceholderWithBundleID:error:]", "RestorePostProcess.m", 424, "bundleID");
  }

  v8 = v7;
  os_unfair_lock_lock(&self->_placeholderInstallationLock);
  v9 = [(RestorePostProcess *)self appInstallCoordinators];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [(RestorePostProcess *)self placeholderInstallationGroup];
    dispatch_group_leave(v11);

    v12 = [(RestorePostProcess *)self appInstallCoordinators];
    [v12 removeObjectForKey:v6];

    self->_progress = self->_progress + 1.0;
    v13 = [(RestorePostProcess *)self appInstallCoordinators];
    v14 = [v13 count];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IX: %@ not found in list of app coordinators", buf, 0xCu);
      _MBLog();
    }

    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_placeholderInstallationLock);
  v16 = MBGetDefaultLog();
  v17 = v16;
  if (v8)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v6;
      v20 = 2048;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "IX: Failed to install placeholder for %@ (%lu): %@", buf, 0x20u);
LABEL_12:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v6;
    v20 = 2048;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "IX: Installed placeholder for %@ (%lu)", buf, 0x16u);
    goto LABEL_12;
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4
{
  if (a3)
  {
    v5 = [a3 identity];
    v6 = [v5 bundleID];

    if (v6)
    {
      [(RestorePostProcess *)self _installedPlaceholderWithBundleID:v6 error:0];
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "IX: -coordinatorDidInstallPlaceholder: called with nil bundleID", v8, 2u);
        _MBLog();
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IX: -coordinatorDidInstallPlaceholder: called with nil coordinator", buf, 2u);
      _MBLog();
    }
  }
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v7 = a4;
  v8 = [a3 bundleID];
  v9 = v8;
  if (!a3)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = IXStringForClientID();
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IX: -coordinator:canceledWithReason:client: called with nil coordinator (%@)", buf, 0xCu);

      v12 = IXStringForClientID();
LABEL_8:
      _MBLog();
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v8)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = IXStringForClientID();
      *buf = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IX: -coordinator:canceledWithReason:client: called with nil bundleID (%@)", buf, 0xCu);

      v12 = IXStringForClientID();
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(RestorePostProcess *)self _installedPlaceholderWithBundleID:v8 error:v7];
LABEL_10:
}

- (void)_registerSafeHarborsAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v31 = v3;
  v30 = [[MBMobileInstallation alloc] initWithSafeHarborDir:v3];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registering safe harbors", buf, 2u);
    _MBLog();
  }

  v37 = 0;
  v6 = [v4 contentsOfDirectoryAtPath:v3 error:&v37];
  v7 = v37;
  if (v6)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = v6;
      v28 = v4;
      v11 = *v34;
      obj = v8;
      do
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v31 stringByAppendingPathComponent:{*(*(&v33 + 1) + 8 * v12), v23, v25, v26}];
          v15 = [MBApp safeHarborWithPath:v14];
          if (!v15)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v39 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error loading safe harbor at %@", buf, 0xCu);
              v24 = v14;
              _MBLog();
            }
          }

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v15 bundleID];
            *buf = 138412546;
            v39 = v18;
            v40 = 2112;
            v41 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Registering safe harbor for %@ at %@", buf, 0x16u);

            v24 = [v15 bundleID];
            v25 = v14;
            _MBLog();
          }

          LODWORD(v17) = [v15 containerType];
          if ([v15 containerType])
          {
            v17 = v17;
          }

          else
          {
            v17 = 1;
          }

          v19 = [v15 bundleID];
          v32 = v13;
          v20 = [(MBMobileInstallation *)v30 registerSafeHarborWithIdentifier:v19 path:v14 type:v17 error:&v32];
          v7 = v32;

          if ((v20 & 1) == 0)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v15 bundleID];
              *buf = 138412802;
              v39 = v22;
              v40 = 2112;
              v41 = v14;
              v42 = 2112;
              v43 = v7;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Couldn't install safe harbor for %@ at %@ (already registered?): %@", buf, 0x20u);

              [v15 bundleID];
              v25 = v14;
              v23 = v26 = v7;
              _MBLog();
            }
          }

          v12 = v12 + 1;
          v13 = v7;
        }

        while (v10 != v12);
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v10);
      v6 = v27;
      v4 = v28;
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v3;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Couldn't find any safe harbors at %@: %@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (BOOL)performMigrationWithConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RestorePostProcess *)self context];
  [v7 objectForKeyedSubscript:@"Reason"];
  v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v9 = [(RestorePostProcess *)self didRestoreFromBackup];
  v10 = [(RestorePostProcess *)self didRestoreFromCloudBackup];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (v10)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *buf = 138413314;
    v40 = v8;
    v41 = 2112;
    v42 = v6;
    v43 = 2080;
    v44 = v12;
    v45 = 2080;
    v46 = v13;
    v47 = 2048;
    v48 = [(RestorePostProcess *)self userDataDisposition];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating, reason:%@, %@, didRestoreFromBackup:%s, didRestoreFromCloudBackup:%s, userDataDisposition:0x%lx", buf, 0x34u);
    v36 = v13;
    v37 = [(RestorePostProcess *)self userDataDisposition];
    v34 = v6;
    v35 = v12;
    v33 = v8;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = +[MBCKManager sharedInstance];
  makeLockdownEncryptionInfoConsistentWithKeychain();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NewCarrierNotification", 0, 0, 0);
  if ((v10 & 1) != 0 || [v6 isDataSeparated])
  {
    v18 = [v6 placeholderRestoreDirectory];
    v19 = [v6 personaID];
    v20 = [v6 isDataSeparated];
    v21 = [v6 demotedAppsPlist];
    [(RestorePostProcess *)self _registerPlaceholdersForBackgroundRestore:v18 personaIdentifier:v19 isDataSeparated:v20 demotedAppsPlist:v21];
  }

  _MBLogFlushDeprecated();
  if ([v6 shouldRegisterSafeHarbors])
  {
    v22 = [v6 safeHarborDirectory];
    [(RestorePostProcess *)self _registerSafeHarborsAtPath:v22];

    _MBLogFlushDeprecated();
  }

  _MBLogFlushDeprecated();
  if ((-[RestorePostProcess shouldPreserveSettingsAfterRestore](self, "shouldPreserveSettingsAfterRestore") & 1) == 0 && [v6 shouldResetTetheredSyncAnchors])
  {
    [(RestorePostProcess *)self _resetTetheredSyncAnchors];
  }

  if (![v6 shouldPrepareForBackgroundRestore])
  {
    goto LABEL_21;
  }

  v23 = [v6 account];
  if (!v23)
  {
    __assert_rtn("[RestorePostProcess performMigrationWithConfig:error:]", "RestorePostProcess.m", 557, "config.account");
  }

  v24 = [v6 account];
  v38 = 0;
  v25 = [v16 prepareForBackgroundRestoreWithAccount:v24 error:&v38];
  v26 = COERCE_DOUBLE(v38);

  if (v25)
  {

LABEL_21:
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v40 = v28 - v15;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Migrated in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog();
    }

    self->_progress = self->_progress + 1.0;
    v29 = 1;
    goto LABEL_29;
  }

  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = v26;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to prepare for background restore in-process: %@", buf, 0xCu);
    _MBLog();
  }

  if (a4)
  {
    v31 = *&v26;
    *a4 = v26;
  }

  v29 = 0;
LABEL_29:

  return v29;
}

- (BOOL)performMigration
{
  v3 = objc_autoreleasePoolPush();
  MBLogEnableFileLogging();
  if (([(RestorePostProcess *)self didUpgrade]& 1) == 0)
  {
    v5 = [(RestorePostProcess *)self didRestoreFromBackup];
    v6 = [(RestorePostProcess *)self didRestoreFromCloudBackup];
    if ((v5 & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping migration, didRestoreFromBackup:%d", buf, 8u);
        _MBLog();
      }

      v4 = 1;
      goto LABEL_37;
    }

    v7 = v6;
    v8 = [(RestorePostProcess *)self restoredBackupDeviceName];
    [MBLockdown setDeviceName:v8];

    v9 = [(RestorePostProcess *)self userDataDisposition]& 0x20;
    if (v9 | [(RestorePostProcess *)self userDataDisposition]& 0x40)
    {
      v10 = objc_opt_new();
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Restoring previous settings enabled for mega backup", buf, 2u);
        _MBLog();
      }

      v30 = 0;
      v12 = [v10 restorePreviousSettingsEnabledForMegaBackup:&v30];
      v13 = v30;
      if ((v12 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to restore previous settings enabled for mega backup: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }

    if (v7)
    {
      v15 = objc_alloc_init(MBManager);
      v16 = [v15 personalPersonaIdentifier];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "personalPersonaIdentifier: %{public}@", buf, 0xCu);
        _MBLog();
      }

      if (!v16)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch the personal persona identifier", buf, 2u);
          _MBLog();
        }

        v4 = 0;
        goto LABEL_36;
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    v29 = 0;
    v18 = [[_TtC7backupd14MigratorConfig alloc] initWithPersonaID:v15 didRestoreFromBackup:1 didRestoreFromCloudBackup:v7 error:&v29];
    v19 = v29;
    v20 = v19;
    if (v18)
    {
      v28 = v19;
      v4 = [(RestorePostProcess *)self performMigrationWithConfig:v18 error:&v28];
      v21 = v28;

      if (!v4)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to perform migration with error: %{public}@", buf, 0xCu);
          _MBLog();
        }
      }

      _MBLogFlushDeprecated();
      v20 = v21;
    }

    else if (-[NSObject code](v19, "code") == 22 && (-[NSObject domain](v20, "domain"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 isEqual:NSPOSIXErrorDomain], v23, v24))
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Skipping migration for non-restore: %@", buf, 0xCu);
        _MBLog();
      }

      v4 = 1;
    }

    else
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to create MigratorConfig for backup restore: %{public}@", buf, 0xCu);
        _MBLog();
      }

      v4 = 0;
    }

LABEL_36:
LABEL_37:

    goto LABEL_38;
  }

  v4 = 1;
LABEL_38:
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (float)estimatedDuration
{
  if (self->_estimatedDuration == 0.0)
  {
    if ([(RestorePostProcess *)self didRestoreFromBackup])
    {
      v3 = [(RestorePostProcess *)self currentPlaceholderRestoreDirectory];

      if (v3)
      {
        v4 = +[NSFileManager defaultManager];
        v5 = [(RestorePostProcess *)self currentPlaceholderRestoreDirectory];
        v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

        self->_estimatedDuration = [v6 count] + 1.0;
      }
    }
  }

  return self->_estimatedDuration;
}

- (float)migrationProgress
{
  progress = self->_progress;
  [(RestorePostProcess *)self estimatedDuration];
  return progress / v3;
}

@end