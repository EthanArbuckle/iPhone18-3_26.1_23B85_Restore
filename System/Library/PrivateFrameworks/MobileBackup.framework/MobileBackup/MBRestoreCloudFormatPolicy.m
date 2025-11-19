@interface MBRestoreCloudFormatPolicy
+ (BOOL)isRestoringFromFileLists:(BOOL *)a3 persona:(id)a4 error:(id *)a5;
+ (BOOL)shouldRestoreSnapshot:(id)a3 account:(id)a4 persona:(id)a5 useFileLists:(BOOL *)a6 error:(id *)a7;
+ (id)_lastFailedForegroundRestoreAttemptDate:(id)a3;
+ (int64_t)snapshotFormatForCurrentRestore:(id)a3;
+ (void)promptTTRIfFileListForegroundRestoreFailed:(id)a3;
+ (void)recordFileListForegroundRestoreFailure:(id)a3 persona:(id)a4;
@end

@implementation MBRestoreCloudFormatPolicy

+ (void)recordFileListForegroundRestoreFailure:(id)a3 persona:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    v7 = &__NSDictionary0__struct;
  }

  v9 = [v7 mutableCopy];

  v10 = +[NSDate now];
  [v9 setObject:v10 forKeyedSubscript:@"LastForegroundRestoreFailureDate"];

  v11 = [MBError dictionaryRepresentationForError:v6 withMultiErrors:1];

  [v9 setObject:v11 forKeyedSubscript:@"LastForegroundRestoreFailure"];
  [v5 setPreferencesValue:v9 forKey:@"RestoreCloudFormatInfo"];

  if (MBIsInternalInstall())
  {
    v19 = 0;
    __argv[0] = "backupctl";
    __argv[1] = "diagnose";
    __argv[2] = "--skipsample";
    __argv[3] = "--skipsysdiag";
    __argv[4] = "-f";
    __argv[5] = [@"/var/mobile/Library/Caches/Backup/foreground_failure_diagnose/restore_failure" fileSystemRepresentation];
    __argv[6] = 0;
    v12 = posix_spawn(&v19, "/usr/local/bin/backupctl", 0, 0, __argv, 0);
    if (v12)
    {
      v13 = v12;
      v14 = MBGetDefaultLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      *buf = 138412546;
      v21 = @"Failed to run diagnose for foreground restore failure";
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=snapshot-policy= %@: unable to spawn the process backupctl diagnose, errno=%d", buf, 0x12u);
    }

    else
    {
      v18 = 0;
      v15 = waitpid(v19, &v18, 0);
      if (v15)
      {
        if (v15 == -1)
        {
          v14 = MBGetDefaultLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_8;
          }

          *buf = 138412290;
          v21 = @"Failed to run diagnose for foreground restore failure";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=snapshot-policy= %@: waitpid error", buf, 0xCu);
        }

        else
        {
          if ((v18 & 0x7F) == 0x7F)
          {
            goto LABEL_9;
          }

          if ((v18 & 0x7F) != 0)
          {
            v14 = MBGetDefaultLog();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_8;
            }

            *buf = 138412546;
            v21 = @"Failed to run diagnose for foreground restore failure";
            v22 = 1024;
            v23 = v18 & 0x7F;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=snapshot-policy= %@: 'backupctl diagnose' was terminated by signal %d", buf, 0x12u);
          }

          else
          {
            v16 = BYTE1(v18);
            v17 = MBGetDefaultLog();
            v14 = v17;
            if (v16)
            {
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_8;
              }

              *buf = 138412546;
              v21 = @"Failed to run diagnose for foreground restore failure";
              v22 = 1024;
              v23 = v16;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=snapshot-policy= %@: 'backupctl diagnose' exited with status %d", buf, 0x12u);
            }

            else
            {
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_8;
              }

              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Successfully collected diagnose for foreground restore failure", buf, 2u);
            }
          }
        }
      }

      else
      {
        v14 = MBGetDefaultLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        *buf = 138412290;
        v21 = @"Failed to run diagnose for foreground restore failure";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=snapshot-policy= %@: no child processes to wait for", buf, 0xCu);
      }
    }

    _MBLog();
    goto LABEL_8;
  }

LABEL_9:
}

+ (void)promptTTRIfFileListForegroundRestoreFailed:(id)a3
{
  v13 = a3;
  v3 = [v13 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];
  v4 = v3;
  if (!v3)
  {
    v3 = &__NSDictionary0__struct;
  }

  v5 = [v3 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"LastForegroundRestoreFailureDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"LastTTRPromptDateForFailedForegroundRestore"];

    if (!v9)
    {
      [v5 setObject:v8 forKeyedSubscript:@"LastTTRPromptDateForFailedForegroundRestore"];
      [v13 setPreferencesValue:v5 forKey:@"RestoreCloudFormatInfo"];
      v10 = [v5 objectForKeyedSubscript:@"LastForegroundRestoreFailure"];
      v11 = [MBError errorWithDictionaryRepresentation:v10 withMultiErrors:1];
      v12 = +[MBTapToRadar sharedInstance];
      [v12 reportForegroundRestoreFailure:v11 persona:v13];
    }
  }
}

+ (int64_t)snapshotFormatForCurrentRestore:(id)a3
{
  v3 = a3;
  v4 = [v3 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"SnapshotFormatEnum"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 intValue];
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = @"SnapshotFormat";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=snapshot-policy= Failed to determine if restoring from file lists - invalid value %@ for key %@", buf, 0x16u);
        _MBLog();
      }

      v6 = -1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isRestoringFromFileLists:(BOOL *)a3 persona:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (!a3)
  {
    __assert_rtn("+[MBRestoreCloudFormatPolicy isRestoringFromFileLists:persona:error:]", "MBRestoreCloudFormatPolicy.m", 141, "outIsRestoringFromFileLists");
  }

  v8 = v7;
  v9 = [v7 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"RestoredFromFileList"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *a3 = [v11 BOOLValue];
      v12 = 1;
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = @"RestoredFromFileList";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=snapshot-policy= Failed to determine if restoring from file lists - invalid value %@ for key %@", buf, 0x16u);
        _MBLog();
      }

      if (a5)
      {
        [MBError errorWithCode:205 format:@"Failed to determine if restoring from file lists - invalid value %@", v11];
        *a5 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=snapshot-policy= Could not find cloudFormatInfo", buf, 2u);
      _MBLog();
    }

    if (a5)
    {
      [MBError errorWithCode:4 format:@"Could not find cloudFormatInfo"];
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (BOOL)shouldRestoreSnapshot:(id)a3 account:(id)a4 persona:(id)a5 useFileLists:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    __assert_rtn("+[MBRestoreCloudFormatPolicy shouldRestoreSnapshot:account:persona:useFileLists:error:]", "MBRestoreCloudFormatPolicy.m", 168, "snapshot");
  }

  if (!v13)
  {
    __assert_rtn("+[MBRestoreCloudFormatPolicy shouldRestoreSnapshot:account:persona:useFileLists:error:]", "MBRestoreCloudFormatPolicy.m", 169, "account");
  }

  v15 = v14;
  if (!v14)
  {
    __assert_rtn("+[MBRestoreCloudFormatPolicy shouldRestoreSnapshot:account:persona:useFileLists:error:]", "MBRestoreCloudFormatPolicy.m", 170, "persona");
  }

  if (!a6)
  {
    __assert_rtn("+[MBRestoreCloudFormatPolicy shouldRestoreSnapshot:account:persona:useFileLists:error:]", "MBRestoreCloudFormatPolicy.m", 171, "useFileLists");
  }

  if (!a7)
  {
    __assert_rtn("+[MBRestoreCloudFormatPolicy shouldRestoreSnapshot:account:persona:useFileLists:error:]", "MBRestoreCloudFormatPolicy.m", 172, "error");
  }

  v51 = a7;
  v54 = [v14 accountType];
  v16 = [v12 snapshotFormat];
  v17 = [v12 accountType];
  v18 = MBStringForSnapshotFormat();
  v19 = +[MBBehaviorOptions sharedOptions];
  v52 = [v19 shouldRestoreFromLegacySnapshotFormat];

  v20 = +[MBRemoteConfiguration sharedInstance];
  v56 = v13;
  v21 = [v20 shouldRestoreUsingFileListsForAccount:v13];

  v22 = +[MBBehaviorOptions sharedOptions];
  v23 = [v22 requiredRestoreSnapshotFormatString];

  v24 = MBSnapshotFormatForString();
  v25 = [a1 _lastFailedForegroundRestoreAttemptDate:v15];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100204FB0;
  v57[3] = &unk_1003C19C0;
  v65 = a6;
  v66 = v54;
  v67 = v17;
  v26 = v18;
  v58 = v26;
  v68 = v16;
  v27 = v12;
  v59 = v27;
  v28 = v52;
  v60 = v28;
  v29 = v21;
  v61 = v29;
  v30 = v23;
  v62 = v30;
  v31 = v25;
  v63 = v31;
  v55 = v15;
  v64 = v55;
  v32 = objc_retainBlock(v57);
  v33 = v32;
  v34 = v24 == -1 || v24 == v16;
  v35 = v34;
  v53 = v35;
  if (!v34)
  {
    *v51 = [MBError errorWithCode:1 format:@"Existing snapshot format: '%@' does not match the BehaviorOption RequiredRestoreSnapshotFormat: '%@'", v26, v30];
    v33[2](v33, 0);
    v38 = MBGetDefaultLog();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    v37 = v26;
    if (v39)
    {
      *buf = 138412546;
      v70 = v26;
      v71 = 2112;
      v72 = v30;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Existing snapshot format: '%@' does not match the BehaviorOption RequiredRestoreSnapshotFormat: '%@'", buf, 0x16u);
      _MBLog();
    }

    v36 = v27;
    goto LABEL_28;
  }

  if (v16 == 3)
  {
    (v32[2])(v32, 1);
    v38 = MBGetDefaultLog();
    v36 = v27;
    v37 = v26;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Target snapshot format only contains file lists", buf, 2u);
LABEL_27:
      _MBLog();
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v37 = v26;
  if ((MBSnapshotFormatContainsAssets() & 1) == 0)
  {
    v33[2](v33, 0);
    v38 = MBGetDefaultLog();
    v36 = v27;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v70 = v27;
      v71 = 2112;
      v72 = v26;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Target snapshot %@ format (%@) does not contain assets, falling back to Legacy", buf, 0x16u);
      goto LABEL_27;
    }

LABEL_28:
    v40 = v28;
    v43 = v55;
    v44 = v29;
    goto LABEL_29;
  }

  v36 = v27;
  v40 = v28;
  if (!v28)
  {
    v44 = v29;
    if (v31)
    {
      [v31 timeIntervalSinceNow];
      if (v46 > -1209600.0)
      {
        v33[2](v33, 0);
        v49 = MBGetLogDateFormatter();
        v38 = [v49 stringFromDate:v31];

        v50 = MBGetDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v38;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Falling back to legacy restore, since last failure (%@) was within two weeks", buf, 0xCu);
          _MBLog();
        }

        v37 = v26;
        v43 = v55;
        goto LABEL_29;
      }
    }

    if (v29)
    {
      v47 = [v29 BOOLValue];
      v48 = v33[2];
      v43 = v55;
      if (v47)
      {
        v48(v33, 1);
        v38 = MBGetDefaultLog();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Server enabled Lightrail restore", buf, 2u);
      }

      else
      {
        v48(v33, 0);
        v38 = MBGetDefaultLog();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Server disabled Lightrail restore", buf, 2u);
      }
    }

    else
    {
      v33[2](v33, 0);
      v38 = MBGetDefaultLog();
      v43 = v55;
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Default ignoring Lightrail data in snapshot", buf, 2u);
    }

LABEL_45:
    _MBLog();
    goto LABEL_29;
  }

  v41 = [v28 BOOLValue];
  v42 = v33[2];
  v43 = v55;
  v44 = v29;
  if (!v41)
  {
    v42(v33, 1);
    v38 = MBGetDefaultLog();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Local preference enabled Lightrail restore", buf, 2u);
    goto LABEL_45;
  }

  v42(v33, 0);
  v38 = MBGetDefaultLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Local preference disabled Lightrail restore", buf, 2u);
    goto LABEL_45;
  }

LABEL_29:

  return v53;
}

+ (id)_lastFailedForegroundRestoreAttemptDate:(id)a3
{
  v3 = a3;
  v4 = [v3 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];

  v5 = [v4 objectForKeyedSubscript:@"LastForegroundRestoreFailureDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end