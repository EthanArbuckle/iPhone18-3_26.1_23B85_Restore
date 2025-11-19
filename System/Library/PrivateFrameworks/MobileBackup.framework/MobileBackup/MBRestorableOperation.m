@interface MBRestorableOperation
+ (BOOL)restore:(id)a3 attributesToDestination:(id)a4 error:(id *)a5;
+ (id)move:(id)a3 fromSource:(id)a4 destination:(id)a5 destinationSize:(unint64_t)a6 conflictResolution:(int64_t)a7 error:(id *)a8;
+ (id)restore:(id)a3 directoryAtPath:(id)a4 settingDataProtection:(BOOL)a5 settingOwnershipAndFlags:(BOOL)a6;
+ (id)restore:(id)a3 regularFileAtPath:(id)a4 settingAttributes:(BOOL)a5;
+ (id)restore:(id)a3 symbolicLinkAtPath:(id)a4 withTarget:(id)a5 settingOwnershipAndFlags:(BOOL)a6;
@end

@implementation MBRestorableOperation

+ (BOOL)restore:(id)a3 attributesToDestination:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0u;
  [v9 getNode:&v35];
  v11 = [v9 domain];
  if (!v11)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:84 description:@"Null domain"];
  }

  if ([v11 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v35 path:v10])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v41 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog();
    }
  }

  v13 = WORD2(v39);
  v14 = HIDWORD(v35);
  if ((WORD2(v39) & 0xF000) == 0xA000)
  {
    v15 = 0;
  }

  else
  {
    v15 = BYTE12(v35) & 0x80;
  }

  v16 = v15 | WORD6(v35) & 0x8040;
  if (v16)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v41 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=restorable= Restoring BSD flags: 0x%x", buf, 8u);
      _MBLog();
    }

    if (lchflags([v10 fileSystemRepresentation], v16))
    {
      v18 = *__error();
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v41 = v16;
        *&v41[4] = 2112;
        *&v41[6] = v10;
        v42 = 1024;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
        _MBLog();
      }

      if (a5)
      {
        [MBError posixErrorWithCode:102 path:v10 format:@"lchflags error"];
        *a5 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_22;
    }

    v14 = HIDWORD(v35);
  }

  v21 = v13 & 0xFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v22 = [v9 extendedAttributes];
    v23 = [v22 objectForKeyedSubscript:@"com.apple.decmpfs"];

    sub_1000F0A08(v10, v23, 0);
  }

  v24 = WORD2(v39);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v30 = v36;
  v31 = v37;
  v27[2] = sub_1000F0C6C;
  v27[3] = &unk_1003BE6C8;
  v32 = v38;
  v33 = v39;
  v29 = v35;
  v34 = v21;
  v28 = v10;
  v20 = [v28 mb_openatWithMode:v24 error:a5 setupDir:v27 itemAccessor:0];

LABEL_22:
  return v20;
}

+ (id)move:(id)a3 fromSource:(id)a4 destination:(id)a5 destinationSize:(unint64_t)a6 conflictResolution:(int64_t)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    goto LABEL_52;
  }

  if (!a7)
  {
    __assert_rtn("+[MBRestorableOperation move:fromSource:destination:destinationSize:conflictResolution:error:]", "MBRestorable.m", 158, "operation != MBFileRestoreOperationUnspecified");
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  memset(v48, 0, sizeof(v48));
  [v13 getNode:v48];
  if (*(&v49 + 1) == a6)
  {
    v16 = +[MBDigest sha256];
    v17 = [v16 digestForFileAtPath:v15 error:0];

    v18 = +[MBDigest sha256];
    v19 = [v18 digestForFileAtPath:v14 error:0];

    if (v17 && v19 && [v17 isEqualToData:v19])
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", buf, 0xCu);
        _MBLog();
      }

      v21 = v15;
      goto LABEL_51;
    }
  }

  v44 = a8;
  v45 = v13;
  v19 = [v15 pathExtension];
  v46 = +[NSFileManager defaultManager];
  v17 = 0;
  v22 = 2;
  v23 = 2147483645;
  while (1)
  {
    if ([v19 length])
    {
      v24 = [v15 stringByDeletingPathExtension];
      v25 = [NSString stringWithFormat:@"%@ %d", v24, v22];
      v26 = [v25 stringByAppendingPathExtension:v19];

      v17 = v26;
    }

    else
    {
      [NSString stringWithFormat:@"%@ %d", v15, v22];
      v17 = v24 = v17;
    }

    if (a7 != 3)
    {
      break;
    }

    v47 = 0;
    v33 = [v46 moveItemAtPath:v14 toPath:v17 error:&v47];
    v32 = v47;
    if (v33)
    {
      goto LABEL_36;
    }

    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v53 = v14;
      v54 = 2112;
      v55 = v17;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=restorable= Failed to move from %@ to %@: %@", buf, 0x20u);
      v42 = v17;
      v43 = v32;
      v41 = v14;
      _MBLog();
    }

    v35 = [v32 domain];
    if (![v35 isEqualToString:NSCocoaErrorDomain])
    {

LABEL_36:
      LODWORD(v27) = 0;
      goto LABEL_37;
    }

    v36 = [v32 code];

    if (v36 == 516)
    {
      LODWORD(v27) = 17;
    }

    else
    {
      LODWORD(v27) = 0;
    }

LABEL_37:
    if (!v32)
    {
      goto LABEL_41;
    }

    if (v27 != 17)
    {
      if (v44)
      {
        v38 = v32;
        *v44 = v32;
      }

      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v53 = v14;
        v54 = 2112;
        v55 = v15;
        v56 = 2048;
        v57 = a7;
        v58 = 2112;
        v59 = v32;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "=restorable= Failed to resolve On My iPhone file conflict from %@ to %@(%ld): %@", buf, 0x2Au);
        _MBLog();
      }

LABEL_49:
      v21 = 0;
      goto LABEL_50;
    }

    v22 = (v22 + 1);
    if (!--v23)
    {
      goto LABEL_49;
    }
  }

  if (a7 == 2)
  {
    if (!link([v14 fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation")))
    {
      goto LABEL_41;
    }

    v27 = *__error();
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v53 = v14;
      v54 = 2112;
      v55 = v17;
      v56 = 1024;
      LODWORD(v57) = v27;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=restorable= Failed to hardlink from %@ to %@: %{errno}d", buf, 0x1Cu);
      v42 = v17;
      v43 = v27;
      v41 = v14;
      _MBLog();
    }

    v29 = v27;
    v30 = @"Failed to hardlink file";
    goto LABEL_27;
  }

  if (a7 == 1 && clonefile([v14 fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation"), 0))
  {
    v27 = *__error();
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v53 = v14;
      v54 = 2112;
      v55 = v17;
      v56 = 1024;
      LODWORD(v57) = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=restorable= Failed to clone from %@ to %@: %{errno}d", buf, 0x1Cu);
      v42 = v17;
      v43 = v27;
      v41 = v14;
      _MBLog();
    }

    v29 = v27;
    v30 = @"Failed to clone file";
LABEL_27:
    v32 = [MBError errorWithErrno:v29 format:v30, v41, v42, v43];
    goto LABEL_37;
  }

LABEL_41:
  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v53 = v14;
    v54 = 2112;
    v55 = v17;
    v56 = 2048;
    v57 = a7;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", buf, 0x20u);
    _MBLog();
  }

  v21 = v17;
LABEL_50:
  v13 = v45;

LABEL_51:
LABEL_52:

  return v21;
}

+ (id)restore:(id)a3 symbolicLinkAtPath:(id)a4 withTarget:(id)a5 settingOwnershipAndFlags:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  [v11 getNode:&v44];
  if (!v12)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:334 description:@"Null path"];
  }

  if ((WORD2(v48) & 0xF000) == 0xA000)
  {
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:335 description:@"Not a symbolic link"];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:336 description:@"Target not set for symbolic link"];

LABEL_5:
  v14 = [v11 domain];
  if (!v14)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:339 description:@"Null domain"];
  }

  v15 = [v14 rootPath];
  v16 = [v12 isEqualToString:v15];

  if (v16)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v14 name];
      *buf = 138412546;
      v50 = v12;
      v51 = 2112;
      v52 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=restorable= Cannot restore domain root %@ for %@ as symlink", buf, 0x16u);

      v29 = [v14 name];
      _MBLog();
    }

    v19 = [MBError errorWithCode:205 path:v12 format:@"Cannot restore domain root as symlink"];
  }

  else
  {
    if ([v14 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v44 path:v12])
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog();
      }
    }

    v43 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000F2524;
    v40[3] = &unk_1003BE6F0;
    v41 = v12;
    v42 = v13;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v30[2] = sub_1000F2844;
    v30[3] = &unk_1003BE718;
    v39 = a6;
    v38 = v48;
    v34 = v44;
    v31 = v41;
    v32 = v11;
    v33 = 0;
    v21 = [v31 mb_openatWithMode:40960 error:&v43 setupDir:v40 itemAccessor:v30];
    v22 = v43;
    v23 = v22;
    v19 = 0;
    if ((v21 & 1) == 0)
    {
      v19 = v22;
    }
  }

  return v19;
}

+ (id)restore:(id)a3 directoryAtPath:(id)a4 settingDataProtection:(BOOL)a5 settingOwnershipAndFlags:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  if (!v12)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:430 description:@"Null path"];
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  [v11 getNode:&v44];
  if ((WORD2(v48) & 0xF000) != 0x4000)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:434 description:@"Not a directory"];
  }

  v13 = [v11 domain];
  if (!v13)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:437 description:@"Null domain"];
  }

  if ([v13 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v44 path:v12])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog();
    }
  }

  v43 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36[2] = sub_1000F30F0;
  v36[3] = &unk_1003BE740;
  v42 = v48;
  v38 = v44;
  v37 = v12;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v25[2] = sub_1000F3550;
  v25[3] = &unk_1003BE768;
  v33 = v48;
  v29 = v44;
  v34 = a6;
  v15 = v37;
  v26 = v15;
  v16 = v11;
  v35 = a5;
  v27 = v16;
  v28 = a1;
  v17 = [v15 mb_openatWithMode:0x4000 error:&v43 setupDir:v36 itemAccessor:v25];
  v18 = v43;
  v19 = v18;
  v20 = 0;
  if ((v17 & 1) == 0)
  {
    v20 = v18;
  }

  return v20;
}

+ (id)restore:(id)a3 regularFileAtPath:(id)a4 settingAttributes:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v40 = +[NSAssertionHandler currentHandler];
    [v40 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:575 description:@"Null path"];
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  [v9 getNode:&v51];
  if ((WORD2(v55) & 0xF000) != 0x8000)
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:579 description:@"Not a regular file"];
  }

  v11 = [v10 fileSystemRepresentation];
  if (v5)
  {
    v12 = [v9 domain];
    if (!v12)
    {
      v42 = +[NSAssertionHandler currentHandler];
      [v42 handleFailureInMethod:a2 object:a1 file:@"MBRestorable.m" lineNumber:585 description:@"Null domain"];
    }

    if ([v12 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v51 path:v10])
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        v43 = v10;
        _MBLog();
      }
    }

    v14 = DWORD1(v51);
    v15 = DWORD2(v51);
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = v14;
      *&buf[8] = 1024;
      *&buf[10] = v15;
      *&buf[14] = 2112;
      *&buf[16] = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file ownership: %d:%d at %@", buf, 0x18u);
      v45 = v15;
      v47 = v10;
      v43 = v14;
      _MBLog();
    }

    if (lchown(v11, v14, v15))
    {
      v17 = [MBError posixErrorWithCode:102 path:v10 format:@"lchown error"];
      goto LABEL_58;
    }
  }

  v18 = [v9 extendedAttributes];
  if (!v18)
  {
    v21 = 0;
    v12 = 0;
    goto LABEL_28;
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v18 count];
    *buf = 134218242;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file extended attributes (%ld) at %@", buf, 0x16u);
    v44 = [v18 count];
    v46 = v10;
    _MBLog();
  }

  if ((HIBYTE(v51) & 0x40) != 0)
  {
    v21 = [v18 objectForKeyedSubscript:@"com.apple.decmpfs"];
    if (v21)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
        _MBLog();
      }

      v23 = [v18 mutableCopy];
      [v23 removeObjectForKey:@"com.apple.decmpfs"];

      v18 = v23;
    }
  }

  else
  {
    v21 = 0;
  }

  v50 = 0;
  v24 = [MBExtendedAttributes setAttributes:v18 forPathFSR:v11 error:&v50, v44, v46];
  v12 = v50;
  if (v24)
  {
LABEL_28:
    if (v5)
    {
      v25 = HIDWORD(v51);
      if ((WORD2(v55) & 0xF000) == 0xA000)
      {
        v26 = 0;
      }

      else
      {
        v26 = BYTE12(v51) & 0x80;
      }

      v27 = (v26 | WORD6(v51) & 0x8040u);
      if (v27)
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = v27;
          *&buf[8] = 2112;
          *&buf[10] = v10;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file BSD flags: 0x%x at %@", buf, 0x12u);
          v44 = v27;
          v46 = v10;
          _MBLog();
        }

        if (lchflags(v11, v27))
        {
          v29 = *__error();
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *&buf[4] = v27;
            *&buf[8] = 2112;
            *&buf[10] = v10;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
            v46 = v10;
            v48 = v29;
            v44 = v27;
            _MBLog();
          }

          v31 = @"lchflags error";
          goto LABEL_52;
        }

        v25 = HIDWORD(v51);
      }

      if ((v25 & 0x40000000) != 0)
      {
        v49 = v12;
        v33 = sub_1000F0A08(v10, v21, &v49);
        v34 = v49;

        if (!v33)
        {
          v32 = v34;
LABEL_55:
          v12 = v32;
          goto LABEL_56;
        }

        v12 = v34;
      }

      v35 = (WORD2(v55) & 0xFFF);
      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = v35;
        *&buf[8] = 2112;
        *&buf[10] = v10;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file permissions: 0%3o at %@", buf, 0x12u);
        v44 = v35;
        v46 = v10;
        _MBLog();
      }

      if (lchmod(v11, v35))
      {
        v31 = @"lchmod error";
LABEL_52:
        v32 = [MBError posixErrorWithCode:102 path:v10 format:v31, v44, v46, v48];
        goto LABEL_56;
      }

      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [NSDate dateWithTimeIntervalSince1970:*(&v52 + 1)];
        *buf = 138412546;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) at %@", buf, 0x16u);

        v44 = [NSDate dateWithTimeIntervalSince1970:*(&v52 + 1)];
        v46 = v10;
        _MBLog();
      }

      *buf = time(0);
      *&buf[8] = 0;
      *&buf[16] = *(&v52 + 1);
      v57 = 0;
      if (lutimes(v11, buf))
      {
        v31 = @"lutimes error";
        goto LABEL_52;
      }
    }

    v17 = [a1 _setProtectionClass:BYTE6(v55) withPath:{v10, v44, v46}];

    if (!v17)
    {
      v12 = 0;
      goto LABEL_57;
    }

    v32 = v17;
    goto LABEL_55;
  }

  v32 = [MBError errorWithCode:102 error:v12 format:@"setxattr error"];
LABEL_56:
  v17 = v32;
LABEL_57:

LABEL_58:

  return v17;
}

@end