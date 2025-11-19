@interface MBRestoreAppsPlugin
- (id)endedBackupWithEngine:(id)a3 error:(id)a4;
- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (id)startingBackupWithEngine:(id)a3;
- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4;
@end

@implementation MBRestoreAppsPlugin

- (id)startingBackupWithEngine:(id)a3
{
  v3 = a3;
  if (MBIsInternalInstall())
  {
    v4 = +[MBBehaviorOptions sharedOptions];
    v5 = [v4 domainsToBackUpRegex];

    if (v5)
    {
      v6 = 0;
      goto LABEL_68;
    }
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:@"/var/root/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist"];

  if (!v8)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v9 = +[NSFileManager defaultManager];
  v97 = 0;
  v10 = [v9 removeItemAtPath:@"/var/root/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist" error:&v97];
  v11 = v97;

  v12 = MBGetDefaultLog();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted demoted apps plist written to the old and outdated path", buf, 2u);
LABEL_11:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v103 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't delete demoted apps plist written to the old and outdated path - %@", buf, 0xCu);
    v79 = v11;
    goto LABEL_11;
  }

LABEL_13:
  v14 = objc_alloc_init(MBIgnoredAccountsTracker);
  v15 = +[NSMutableArray array];
  v16 = +[NSMutableArray array];
  v17 = [v3 persona];
  v18 = [v17 personaIdentifier];

  v19 = [v3 persona];
  v20 = [v19 demotedAppsPlistPath];

  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___MBHasServiceAccount])
  {
    v21 = [v3 serviceAccount];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 isPrimaryAccount];
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v103 = v18;
    v104 = 1024;
    *v105 = v23;
    *&v105[4] = 2112;
    *&v105[6] = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fetching demoted apps for persona %{public}@ (%d) (%@)", buf, 0x1Cu);
    v80 = v23;
    v81 = v20;
    v79 = v18;
    _MBLog();
  }

  if (!v20)
  {
    __assert_rtn("[MBRestoreAppsPlugin startingBackupWithEngine:]", "MBRestoreAppsPlugin.m", 65, "demotedAppsPlistPath");
  }

  if (v18)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23;
  }

  if ((v25 & 1) == 0)
  {
    __assert_rtn("[MBRestoreAppsPlugin startingBackupWithEngine:]", "MBRestoreAppsPlugin.m", 66, "isPrimaryAccount || personaIdentifier");
  }

  v26 = objc_autoreleasePoolPush();
  v27 = +[LSApplicationWorkspace defaultWorkspace];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_100044CA4;
  v91[3] = &unk_1003BBFC8;
  v96 = v23;
  v28 = v18;
  v92 = v28;
  v29 = v14;
  v93 = v29;
  v30 = v15;
  v94 = v30;
  v31 = v16;
  v95 = v31;
  [v27 enumerateBundlesOfType:0 block:v91];

  objc_autoreleasePoolPop(v26);
  v32 = +[NSMutableDictionary dictionary];
  v86 = v32;
  if (![v31 count])
  {
    if ([v30 count])
    {
      goto LABEL_30;
    }

    v85 = v30;
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "No demoted apps found on device. Skipping", buf, 2u);
      _MBLog();
    }

    v49 = +[NSFileManager defaultManager];
    v50 = [v49 fileExistsAtPath:v20];

    if (!v50)
    {
LABEL_54:
      v56 = copyfile_state_alloc();
      v57 = copyfile([@"/var/installd/Library/MobileInstallation/BackedUpState/SystemAppInstallState.plist" fileSystemRepresentation], objc_msgSend(@"/var/installd/Library/MobileInstallation/BackedUpState/BackupSystemAppInstallState.plist", "fileSystemRepresentation"), v56, 0xEu);
      if (v57)
      {
        v58 = v57;
        v59 = MBGetDefaultLog();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v103) = v58;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to copy system app plist: %{errno}d", buf, 8u);
          v79 = v58;
          v80 = *__error();
          _MBLog();
        }
      }

      copyfile_state_free(v56);
      if ([v3 isDeviceTransferEngine])
      {
        v84 = v28;
        v60 = v11;
        v61 = +[NSFileManager defaultManager];
        v98[0] = NSFileOwnerAccountName;
        v98[1] = NSFileGroupOwnerAccountName;
        v99[0] = @"mobile";
        v99[1] = @"mobile";
        v62 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
        v87 = 0;
        v63 = [v61 createDirectoryAtPath:@"/var/mobile/Media/iTunesRestore" withIntermediateDirectories:1 attributes:v62 error:&v87];
        v64 = v87;

        if ((v63 & 1) == 0)
        {
          v68 = MBGetDefaultLog();
          v47 = v86;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = [@"/var/mobile/Media/iTunesRestore" fileSystemRepresentation];
            *buf = 136315394;
            v103 = v69;
            v104 = 2112;
            *v105 = v64;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to create directory at %s: %@", buf, 0x16u);
            [@"/var/mobile/Media/iTunesRestore" fileSystemRepresentation];
            _MBLog();
          }

          v6 = v64;
          v11 = v60;
          v28 = v84;
          v30 = v85;
          goto LABEL_67;
        }

        v65 = +[NSURL fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:](NSURL, "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", [@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" fileSystemRepresentation], 0, 0);
        v66 = MBWriteRestoreAppsPlist(v65);

        v30 = v85;
        if (v66)
        {
          v6 = v66;

          v11 = v60;
          v28 = v84;
          goto LABEL_42;
        }

        v71 = [@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" fileSystemRepresentation];
        v72 = MBMobileUID();
        v73 = MBMobileUID();
        v11 = v60;
        v28 = v84;
        if (lchown(v71, v72, v73))
        {
          v67 = [MBError posixErrorWithPath:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" format:@"lchown failed"];
        }

        else
        {
          v74 = [v3 domainManager];
          v75 = [v74 domainForName:@"MediaDomain"];

          v76 = objc_opt_new();
          [v76 addObject:@"Media/iTunesRestore/RestoreApplications.plist"];
          v77 = [v75 relativePathsToBackupAndRestore];

          if (v77)
          {
            v78 = [v75 relativePathsToBackupAndRestore];
            [v76 unionSet:v78];
          }

          [v75 setRelativePathsToBackupAndRestore:{v76, v79, v80}];

          v67 = 0;
          v28 = v84;
        }
      }

      else
      {
        v67 = 0;
      }

      v30 = v85;
      v47 = v86;
      v6 = v67;
      goto LABEL_67;
    }

    v51 = v28;
    v52 = +[NSFileManager defaultManager];
    v88 = v11;
    v53 = [v52 removeItemAtPath:v20 error:&v88];
    v54 = v88;

    v55 = MBGetDefaultLog();
    v38 = v55;
    if (v53)
    {
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Removed demoted apps plist made from a previous backup because there are no more demoted apps in the ongoing one", buf, 2u);
LABEL_51:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v103 = v54;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Couldn't delete demoted apps plist written to the new path during a previous backup - %@", buf, 0xCu);
      v79 = v54;
      goto LABEL_51;
    }

    v11 = v54;
    v28 = v51;
LABEL_53:

    goto LABEL_54;
  }

  [v32 setObject:v31 forKeyedSubscript:@"IntentionalDowngrades"];
  if ([v30 count])
  {
LABEL_30:
    [v32 setObject:v30 forKeyedSubscript:{@"AutomaticDowngrades", v79, v80, v81}];
  }

  v33 = v11;
  v90 = 0;
  v34 = [NSPropertyListSerialization dataWithPropertyList:v32 format:200 options:0 error:&v90, v79];
  v35 = v90;
  v36 = v35;
  if (v34)
  {
    v85 = v30;
    v89 = v35;
    v37 = [v34 writeToFile:v20 options:268435457 error:&v89];
    v38 = v89;

    if (v37)
    {
      v82 = v29;
      v83 = v28;
      v39 = MBMobileUID();
      v100[0] = NSFileOwnerAccountID;
      v40 = [NSNumber numberWithUnsignedInt:v39];
      v101[0] = v40;
      v100[1] = NSFileGroupOwnerAccountID;
      v41 = [NSNumber numberWithUnsignedInt:v39];
      v101[1] = v41;
      v100[2] = NSFilePosixPermissions;
      v42 = [NSNumber numberWithUnsignedShort:384];
      v101[2] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:3];

      v44 = +[NSFileManager defaultManager];
      [v44 setAttributes:v43 ofItemAtPath:v20 error:0];

      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v103 = v20;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Wrote out demoted apps plist to:%@", buf, 0xCu);
        v79 = v20;
        _MBLog();
      }

      v11 = v33;
      v29 = v82;
      v28 = v83;
      goto LABEL_53;
    }

    v46 = MBGetDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v103 = v20;
      v104 = 2112;
      *v105 = v38;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to write demoted app plists at %@: %@", buf, 0x16u);
      _MBLog();
    }

    v36 = v38;
    v30 = v85;
  }

  else
  {
    v46 = MBGetDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v103 = v36;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to serialize demoted apps:%@", buf, 0xCu);
      _MBLog();
    }
  }

  v6 = 0;
  v11 = v33;
LABEL_42:
  v47 = v86;
LABEL_67:

LABEL_68:

  return v6;
}

- (id)endedBackupWithEngine:(id)a3 error:(id)a4
{
  if ([a3 isDeviceTransferEngine])
  {
    v4 = +[NSFileManager defaultManager];
    v9 = 0;
    v5 = [v4 removeItemAtPath:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = @"/var/mobile/Media/iTunesRestore";
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove file at: %@ - %@", buf, 0x16u);
        _MBLog();
      }
    }
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v4 = a4;
  if ([v4 restoresPrimaryAccount] && objc_msgSend(v4, "isDeviceTransferEngine"))
  {
    v5 = [v4 domainManager];
    v6 = [v5 domainForName:@"MediaDomain"];

    v7 = objc_opt_new();
    [v7 addObject:@"Media/iTunesRestore/RestoreApplications.plist"];
    v8 = [v6 relativePathsToBackupAndRestore];

    if (v8)
    {
      v9 = [v6 relativePathsToBackupAndRestore];
      [v7 unionSet:v9];
    }

    [v6 setRelativePathsToBackupAndRestore:v7];
  }

  return 0;
}

- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v4 = a4;
  if ([v4 restoresPrimaryAccount])
  {
    v5 = [v4 persona];
    v6 = [v5 userIncompleteRestoreDirectory];

    v7 = [NSString stringWithFormat:@"%@%@", v6, @"/var/mobile/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist"];
    if (!MBIsInternalInstall())
    {
      goto LABEL_11;
    }

    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:v7];

    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = +[NSFileManager defaultManager];
    v16 = 0;
    v11 = [v10 copyItemAtPath:v7 toPath:@"/var/mobile/Library/Logs/MobileBackup/DemotedAppsCopy.plist" error:&v16];
    v12 = v16;

    v13 = MBGetDefaultLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v14)
      {
        *buf = 138412290;
        v18 = @"/var/mobile/Library/Logs/MobileBackup/DemotedAppsCopy.plist";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Demoted app plist copied successfully to: %@", buf, 0xCu);
LABEL_9:
        _MBLog();
      }
    }

    else if (v14)
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Unable to copy demoted app plist: %@", buf, 0xCu);
      goto LABEL_9;
    }

LABEL_11:
  }

  return 0;
}

@end