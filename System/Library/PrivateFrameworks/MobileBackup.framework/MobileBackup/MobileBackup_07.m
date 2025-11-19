void sub_1001C399C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001C38E0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C50E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToData:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_1001C7B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedIntValue];
  if ([v5 length])
  {
    do
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 unsignedIntValue] | v6);
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];

      v11 = [v5 stringByDeletingLastPathComponent];

      v5 = v11;
    }

    while ([v11 length]);
  }

  else
  {
    v11 = v5;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:&stru_1003C3430];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 unsignedIntValue] | v6);
  [*(a1 + 32) setObject:v10 forKeyedSubscript:&stru_1003C3430];
}

void sub_1001C8DD0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C8E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001C8EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error collecting FSEvents: %@", buf, 0xCu);
      _MBLog();
    }

    atomic_fetch_add((*(*(a1 + 40) + 8) + 24), 1uLL);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t IsDatalessFault(int a1)
{
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    return (HIBYTE(v5.st_flags) >> 6) & 1;
  }

  v1 = MBGetDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    *buf = 67109120;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "fstat failed: %{errno}d", buf, 8u);
    v4 = *__error();
    _MBLog();
  }

  return 0;
}

uint64_t IsDatalessFaultWithPath(void *a1)
{
  v1 = a1;
  memset(&v7, 0, sizeof(v7));
  if (lstat([v1 fileSystemRepresentation], &v7))
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 138412546;
      v9 = v1;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v6 = *__error();
      _MBLog();
    }

    v4 = 0;
  }

  else
  {
    v4 = (HIBYTE(v7.st_flags) >> 6) & 1;
  }

  return v4;
}

void sub_1001CD440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CD4A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001CD4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![v3 isRegularFile])
  {
    goto LABEL_22;
  }

  v5 = 1;
  if ([*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:1])
  {
    v6 = *(a1 + 32);
    v7 = v6[25];
    v8 = [v6 debugContext];
    v9 = *(*(a1 + 40) + 8);
    obj = *(v9 + 40);
    v10 = [v7 restoreBehaviorForFile:v3 debugContext:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);

    if (v10 == 1)
    {
      v5 = 0;
      LOBYTE(a1) = 1;
      goto LABEL_23;
    }

    if (v10 == -1)
    {
      v5 = 0;
      LOBYTE(a1) = 0;
      goto LABEL_23;
    }

    v11 = *(*(a1 + 32) + 144);
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [*(*(a1 + 32) + 136) fetchFileWithID:v13 error:0];
      if (!v14)
      {
        v30 = +[NSAssertionHandler currentHandler];
        [v30 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"MBDriveRestoreEngine.m" lineNumber:704 description:{@"Restored file not found: %@", v13}];
      }

      v15 = [v14 lastModified];
      if (v15 == [v3 lastModified])
      {
        v16 = [v14 domain];
        v17 = [v16 volumeMountPoint];
        v18 = [v3 domain];
        v19 = [v18 volumeMountPoint];
        v20 = [v17 isEqualToString:v19];

        if (v20)
        {
          v21 = 1;
          goto LABEL_18;
        }

LABEL_15:
        if ((*(*(*(a1 + 48) + 8) + 24) - 31) >= 0xFFFFFFFFFFFFFFE0)
        {
          v24 = *(*(*(a1 + 56) + 8) + 24);
          if (!(([v3 size] + v24) >> 26))
          {
            goto LABEL_20;
          }
        }

        v21 = 0;
LABEL_18:
        v25 = *(*(a1 + 32) + 104);
        v26 = [MBDriveOperation operationToDownloadFilesWithCount:*(*(*(a1 + 48) + 8) + 24) size:*(*(*(a1 + 56) + 8) + 24)];
        [v25 addOperation:v26];

        *(*(*(a1 + 48) + 8) + 24) = 0;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        ++*(*(*(a1 + 64) + 8) + 24);
        if (v21)
        {
          v27 = (*(*(a1 + 80) + 8) + 24);
          v28 = 1;
LABEL_21:
          *v27 += v28;

LABEL_22:
          v5 = 1;
          goto LABEL_23;
        }

LABEL_20:
        ++*(*(*(a1 + 48) + 8) + 24);
        ++*(*(*(a1 + 72) + 8) + 24);
        ++*(*(a1 + 32) + 160);
        *(*(*(a1 + 56) + 8) + 24) += [v3 size];
        v28 = [v3 size];
        v27 = (*(a1 + 32) + 168);
        goto LABEL_21;
      }
    }

    else
    {
      v14 = [v3 fileID];
      v22 = *(*(a1 + 32) + 144);
      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
      [v22 setObject:v14 forKeyedSubscript:v23];
    }

    goto LABEL_15;
  }

LABEL_23:
  objc_autoreleasePoolPop(v4);

  return (v5 | a1) & 1;
}

void sub_1001CEA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CEB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:0])
  {
LABEL_74:
    v9 = 1;
    goto LABEL_82;
  }

  v5 = *(a1 + 32);
  v6 = v5[25];
  v7 = [v5 debugContext];
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v6 restoreBehaviorForFile:v3 debugContext:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9 != 1)
  {
    if (v9 == -1)
    {
LABEL_81:
      v9 = 0;
      goto LABEL_82;
    }

    v10 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v3];
    v11 = *(*(a1 + 32) + 200);
    v12 = [v3 domain];
    v13 = [v3 relativePath];
    v14 = [v11 validateRestoreDomain:v12 relativePath:v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (v14)
    {
LABEL_80:

      goto LABEL_81;
    }

    v17 = [v3 relativePath];
    v18 = [v17 length];

    if (!v18)
    {
      v19 = [v10 stringByDeletingLastPathComponent];
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v108 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Creating directory: %@", buf, 0xCu);
        v92 = v19;
        _MBLog();
      }

      v21 = +[NSFileManager defaultManager];
      v105 = 0;
      v22 = [v21 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v105];
      v23 = v105;

      if ((v22 & 1) == 0)
      {
        v42 = [MBError errorWithCode:102 error:v23 path:v19 format:@"Error creating directory"];
        v43 = *(*(a1 + 40) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = v42;
LABEL_79:

        goto LABEL_80;
      }
    }

    if ([v3 isDirectory])
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v3 description];
        v26 = [v3 fileID];
        *buf = 138412546;
        v108 = v25;
        v109 = 2112;
        v110 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Restoring directory: %@ (%@)", buf, 0x16u);

        v27 = [v3 description];
        v94 = [v3 fileID];
        _MBLog();
      }

      v28 = [MBRestorableOperation restore:v3 directoryAtPath:v10 settingDataProtection:1 settingOwnershipAndFlags:1];
      goto LABEL_14;
    }

    if (![v3 isRegularFile])
    {
      if (![v3 isSymbolicLink])
      {
        v28 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, @"Invalid file type: 0%o", [v3 type]);
LABEL_14:
        v29 = *(*(a1 + 40) + 8);
        v19 = *(v29 + 40);
        *(v29 + 40) = v28;
        goto LABEL_70;
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v3 description];
        v37 = [v3 fileID];
        *buf = 138412546;
        v108 = v36;
        v109 = 2112;
        v110 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Restoring symbolic link: %@ (%@)", buf, 0x16u);

        v38 = [v3 description];
        v95 = [v3 fileID];
        _MBLog();
      }

      v19 = [v3 target];
      v39 = [MBRestorableOperation restore:v3 symbolicLinkAtPath:v10 withTarget:v19 settingOwnershipAndFlags:1];
      v40 = *(*(a1 + 40) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

LABEL_70:
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v81 = [v3 domain];
        v82 = [v81 isAppDomain];

        if (v82)
        {
          v83 = *(*(a1 + 32) + 152);
          v84 = [v3 domain];
          v85 = [v84 containerID];
          [v83 addObject:v85];
        }

        goto LABEL_74;
      }

      goto LABEL_80;
    }

    v30 = *(*(a1 + 32) + 144);
    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
    v23 = [v30 objectForKeyedSubscript:v31];

    if (!v23 || ([v3 fileID], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v23, "isEqualToFileID:", v32), v32, (v33 & 1) != 0))
    {
      v19 = 0;
LABEL_19:
      v34 = 0;
      goto LABEL_42;
    }

    v45 = *(*(a1 + 32) + 136);
    v46 = *(*(a1 + 40) + 8);
    v104 = *(v46 + 40);
    v101 = v23;
    v19 = [v45 fetchFileWithID:v23 error:&v104];
    objc_storeStrong((v46 + 40), v104);
    if (!v19)
    {
      v91 = +[NSAssertionHandler currentHandler];
      [v91 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"MBDriveRestoreEngine.m" lineNumber:904 description:{@"Restored file not found: %@", v23}];
    }

    v47 = [v19 domain];
    v48 = [v47 volumeMountPoint];
    v49 = [v3 domain];
    v50 = [v49 volumeMountPoint];
    v98 = [v48 isEqualToString:v50];

    if ((v98 & 1) == 0)
    {
      v51 = MBGetDefaultLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Not hard linking files with same inode number because they are on different volumes", buf, 2u);
        _MBLog();
      }

      v19 = 0;
    }

    v52 = [v19 lastModified];
    if (v52 != [v3 lastModified])
    {
      v53 = MBGetDefaultLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Not hard linking files with same inode number because modification times differ", buf, 2u);
        _MBLog();
      }

      v19 = 0;
    }

    v54 = [v19 domain];
    v55 = [v54 name];
    if ([v55 isEqualToString:@"HomeKitDomain"])
    {

      v23 = v101;
    }

    else
    {
      v56 = [v3 domain];
      v57 = [v56 name];
      v99 = [v57 isEqualToString:@"HomeKitDomain"];

      v23 = v101;
      if (!v99)
      {
        goto LABEL_19;
      }
    }

    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Not hard linking known duplicate file in HomeKitDomain", buf, 2u);
      _MBLog();
    }

    v19 = 0;
    v34 = 1;
LABEL_42:
    if ([*(a1 + 32) encrypted])
    {
      v59 = [v3 encryptionKey];

      if (!v59)
      {
        v44 = [v3 fileID];
        v86 = [MBError errorWithCode:205 format:@"Encryption key missing: %@ (%@)", v3, v44];
        v87 = *(*(a1 + 40) + 8);
        v71 = *(v87 + 40);
        *(v87 + 40) = v86;
LABEL_78:

        goto LABEL_79;
      }
    }

    if (!v19 && [*(*(*(a1 + 48) + 8) + 40) count] - 31 >= 0xFFFFFFFFFFFFFFE0)
    {
      v60 = *(*(*(a1 + 56) + 8) + 24);
      if (!(([v3 size] + v60) >> 26))
      {
        goto LABEL_60;
      }
    }

    v61 = [*(a1 + 32) _restoreRegularFiles:*(*(*(a1 + 48) + 8) + 40) size:*(*(*(a1 + 56) + 8) + 24)];
    v62 = *(*(a1 + 40) + 8);
    v63 = *(v62 + 40);
    *(v62 + 40) = v61;

    [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *(*(*(a1 + 64) + 8) + 24) += [*(*(*(a1 + 48) + 8) + 40) count];
    ++*(*(*(a1 + 72) + 8) + 24);
    if (!v19)
    {
LABEL_60:
      if ((v34 & 1) == 0)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
        *(*(*(a1 + 56) + 8) + 24) += [v3 size];
      }

      goto LABEL_69;
    }

    v102 = v23;
    v44 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v19];
    v64 = [v44 fileSystemRepresentation];
    if (!v64)
    {
      __assert_rtn("[MBDriveRestoreEngine _restoreContent]_block_invoke", "MBDriveRestoreEngine.m", 940, "hardLinkPathFSR");
    }

    v65 = v64;
    v66 = [v10 fileSystemRepresentation];
    if (!v66)
    {
      __assert_rtn("[MBDriveRestoreEngine _restoreContent]_block_invoke", "MBDriveRestoreEngine.m", 942, "pathFSR");
    }

    v67 = v66;
    v68 = MBGetDefaultLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = [v3 fileID];
      *buf = 136315650;
      v108 = v65;
      v109 = 2080;
      v110 = v67;
      v111 = 2112;
      v112 = v69;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Restoring hard link from %s to %s (%@)", buf, 0x20u);

      [v3 fileID];
      v97 = v93 = v67;
      _MBLog();
    }

    if (!link(v65, v67))
    {
LABEL_68:
      ++*(*(*(a1 + 80) + 8) + 24);

      v23 = v102;
LABEL_69:

      goto LABEL_70;
    }

    if ([*(a1 + 32) isDeviceTransferEngine] && _os_feature_enabled_impl())
    {
      if (*__error() != 17 || ([v44 isEqualToString:v10] & 1) != 0)
      {
        goto LABEL_68;
      }

      v70 = +[NSFileManager defaultManager];
      v103 = 0;
      v100 = [v70 removeItemAtPath:v10 error:&v103];
      v71 = v103;

      if (v100)
      {
        if (link(v65, v67))
        {
          v72 = [MBError posixErrorWithPath:v10 format:@"hard link error: %@", v44];
          v73 = *(*(a1 + 40) + 8);
          v74 = *(v73 + 40);
          *(v73 + 40) = v72;

LABEL_77:
          v23 = v102;
          goto LABEL_78;
        }

        goto LABEL_67;
      }

      v80 = MBGetDefaultLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v108 = v10;
        v109 = 2112;
        v110 = v71;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Failed to remove existing hard link at %@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else
    {
      if (*__error() != 17 || (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v65), v75 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v67), v76 = objc_claimAutoreleasedReturnValue(), v77 = [v75 isEqualToString:v76], v76, v75, !v77))
      {
        v88 = [MBError posixErrorWithPath:v10 format:@"link error to %@", v44, v93, v97];
        v89 = *(*(a1 + 40) + 8);
        v71 = *(v89 + 40);
        *(v89 + 40) = v88;
        goto LABEL_77;
      }

      v71 = MBGetDefaultLog();
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      v78 = [v3 domain];
      v79 = [v78 name];
      *buf = 138412546;
      v108 = v44;
      v109 = 2112;
      v110 = v79;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Ignoring spurious hard link at %@ for %@", buf, 0x16u);

      v80 = [v3 domain];
      v96 = [v80 name];
      _MBLog();
    }

LABEL_67:
    goto LABEL_68;
  }

LABEL_82:
  objc_autoreleasePoolPop(v4);

  return v9;
}

void sub_1001D1AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D1B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[25];
  v6 = [v4 debugContext];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v5 restoreBehaviorForFile:v3 debugContext:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (v8 != 1)
  {
    if (v8 == -1)
    {
      v8 = 0;
    }

    else if ([v3 isDirectory])
    {
      v8 = 1;
      if ([*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:1])
      {
        v9 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v3];
        v10 = *(*(a1 + 40) + 8);
        v12 = *(v10 + 40);
        v8 = [MBRestorableOperation restore:v3 attributesToDestination:v9 error:&v12];
        objc_storeStrong((v10 + 40), v12);
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

void sub_1001D2C6C(id a1, id a2, unint64_t a3)
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v7 = a3;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_operations[%lld] = %@", buf, 0x16u);
    _MBLog();
  }
}

uint64_t sub_1001D33D8(uint64_t a1)
{
  qword_100421A00 = [[MBBackupScheduler alloc] _initWithServiceManager:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_1001D3920(uint64_t a1)
{
  v5 = 0;
  v2 = [*(a1 + 32) _fetchAccountsAndIsEnabled:&v5 + 1 isBackupOnCellularEnabled:&v5];
  [*(a1 + 32) setAccounts:v2];

  [*(a1 + 32) _setIsEnabled:HIBYTE(v5)];
  [*(a1 + 32) _setIsBackupOnCellularEnabled:v5];
  v3 = +[MBFollowUpManager sharedManager];
  v4 = [*(a1 + 32) accounts];
  [v3 clearPendingFollowUpsNotBelongingToAccounts:v4 excluding:&off_1003E23A8];
}

id sub_1001D39CC(uint64_t a1)
{
  [*(a1 + 32) _checkinXPCActivities];
  [*(a1 + 32) _installMonitors];
  v2 = *(a1 + 32);

  return [v2 _registerAlarmHandler];
}

void sub_1001D3E54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 152));
  _Unwind_Resume(a1);
}

void sub_1001D3ED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = MKBGetDeviceLockState();
  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (v1)
    {
      goto LABEL_6;
    }

    v2 = 0;
  }

  [WeakRetained _setIsLocked:v2];
LABEL_6:
}

void sub_1001D3F34(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = os_transaction_create();
  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state)
  {
    v6 = state;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v14 = a2;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=scheduler= notify_get_state(%d) failed, status:%lu", buf, 0x12u);
      v10 = a2;
      v11 = v6;
      _MBLog();
    }

    v8 = 0;
    state64 = 0;
  }

  else
  {
    v8 = state64 != 0;
  }

  [WeakRetained _setIsLocked:{v8, v10, v11}];
  v9 = objc_opt_self();
}

void sub_1001D407C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = IOPSDrawingUnlimitedPower();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v5 = "com.apple.system.powersources.source";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "=scheduler= Scheduler Received %{public}s: %d", buf, 0x12u);
    _MBLog();
  }

  [WeakRetained _setIsOnPower:v2];
}

void sub_1001D4174(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _setIsAutoBackupOnCellularAllowed:(a2 >> 1) & 1];
    WeakRetained = v4;
  }
}

void sub_1001D41C8(uint64_t a1, int a2, unint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v6 = (a3 >> 16) & 1;
      v7 = (a3 >> 8) & 1;
      v8 = WeakRetained;
      [WeakRetained _setIsOnExpensiveCellular:v7 & v6];
      [v8 _setIsOnCellular:v7];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      v8 = WeakRetained;
      [WeakRetained _setIsOnWiFi:(a3 >> 8) & 1];
    }

    WeakRetained = v8;
  }

LABEL_7:
}

id sub_1001D433C(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) accountIdentifier];
    v4 = *(a1 + 40);
    *buf = 138543618;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=scheduler= Received notification for account %{public}@: %@", buf, 0x16u);

    v7 = [*(a1 + 32) accountIdentifier];
    v8 = *(a1 + 40);
    _MBLog();
  }

  v5 = *(a1 + 40);
  if (v5 && ![MBError isError:v5 withCode:0])
  {
    return [*(a1 + 48) _managerDidFailBackupWithAccount:*(a1 + 32) error:*(a1 + 40)];
  }

  else
  {
    return [*(a1 + 48) _managerDidFinishBackupWithAccount:{*(a1 + 32), v7, v8}];
  }
}

void sub_1001D7158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D7178(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) backupOptions];
  v4 = [*(a1 + 40) reason];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = 0;
  LOBYTE(v2) = [v2 startBackupWithOptions:v3 reason:v4 xpcActivity:v5 account:v6 connection:0 error:&v8];
  v7 = v8;
  *(*(*(a1 + 64) + 8) + 24) = v2;
}

void sub_1001D7C98(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v38[0] = kCFUserNotificationAlertHeaderKey;
    v38[1] = kCFUserNotificationAlertMessageKey;
    v39[0] = @"iCloud Backup hit too many consecutive failures";
    v39[1] = @"Your device has not been backed up in the last 4 days";
    v38[2] = kCFUserNotificationDefaultButtonTitleKey;
    v38[3] = kCFUserNotificationAlternateButtonTitleKey;
    v39[2] = @"Open with Tap-to-Radar";
    v39[3] = @"Ignore";
    v3 = v39;
    v4 = v38;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v40[0] = kCFUserNotificationAlertHeaderKey;
    v40[1] = kCFUserNotificationAlertMessageKey;
    v41[0] = @"Internal Only: iCloud contains a backup for this device from a newer OS version";
    v41[1] = @"In order to continue backing up, the existing backup for this device needs to be deleted from iCloud. A replacement backup will be automatically scheduled.";
    v40[2] = kCFUserNotificationDefaultButtonTitleKey;
    v40[3] = kCFUserNotificationAlternateButtonTitleKey;
    v41[2] = @"Delete Device Backup";
    v41[3] = @"Ignore";
    v3 = v41;
    v4 = v40;
LABEL_5:
    v5 = [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v5);
  [*(a1 + 32) setInternalNotificationRef:v6];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=scheduler= =ttr= Posted internal notification %p", buf, 0xCu);
    v30 = v6;
    _MBLog();
  }

  responseFlags = 0;
  CFUserNotificationReceiveResponse(v6, 0.0, &responseFlags);
  v8 = responseFlags & 3;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v35 = v8;
    v36 = 2048;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=scheduler= =ttr= Received response (%lu) from internal notification %p", buf, 0x16u);
    v30 = v8;
    v31 = v6;
    _MBLog();
  }

  if (!v8)
  {
    v10 = *(a1 + 56);
    if (v10 == 1)
    {
      v19 = MBBuildVersion();
      v15 = [NSString stringWithFormat:@"%@: iCloud Backup hit too many consecutive failures", v19];

      v20 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v16 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v20];

      v21 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v18 = [@"Serious Bug" stringByAddingPercentEncodingWithAllowedCharacters:v21];

      v22 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v23 = [@"MobileBackup" stringByAddingPercentEncodingWithAllowedCharacters:v22];

      v24 = *(a1 + 32);
      v25 = [*(a1 + 48) errors];
      v26 = [v24 _descriptionForTTR:v25 account:*(a1 + 40)];

      v27 = [NSString stringWithFormat:@"tap-to-radar://new?Title=%@&Classification=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&Description=%@", v16, v18, @"1584597", v23, @"iCloud", v26];
      v28 = [NSURL URLWithString:v27];

      v29 = +[LSApplicationWorkspace defaultWorkspace];
      [v29 openURL:v28 withOptions:0];

      goto LABEL_18;
    }

    if (v10 == 2)
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = MBDeviceUUID();
      v13 = *(a1 + 40);
      v32 = 0;
      v14 = [v11 deleteBackupUDID:v12 disableIfCurrentDevice:0 account:v13 connection:0 error:&v32];
      v15 = v32;

      if (v14)
      {
LABEL_20:

        goto LABEL_21;
      }

      v16 = MBGetDefaultLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      v17 = [v15 localizedDescription];
      *buf = 138412290;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=scheduler= =ttr= Error deleting backup: %@", buf, 0xCu);

      v18 = [v15 localizedDescription];
      v30 = v18;
      _MBLog();
LABEL_18:

      goto LABEL_19;
    }
  }

LABEL_21:
  [*(a1 + 32) setInternalNotificationRef:{0, v30, v31}];
  [*(a1 + 32) _releaseWorkAssertion];
}

double sub_1001D8C1C(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 persona];
  v10 = [v9 copyPreferencesValueForKey:v8 class:objc_opt_class()];

  if (v10)
  {
    [v10 doubleValue];
    a3 = v11;
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2048;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=scheduler= Period: %@ -> %f (prefs)", buf, 0x16u);
      _MBLog();
    }
  }

  else
  {
    v13 = +[MBRemoteConfiguration sharedInstance];
    v12 = [v13 valueForKey:v8 account:v7];

    if (v12)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        [v12 doubleValue];
        *buf = 138412546;
        v22 = v8;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=scheduler= Period: %@ -> %f (remote)", buf, 0x16u);
        [v12 doubleValue];
        _MBLog();
      }

      [v12 doubleValue];
      a3 = v16;
    }

    else
    {
      v17 = MBIsInternalInstall();
      v18 = MBGetDefaultLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (v19)
        {
          *buf = 138412546;
          v22 = v8;
          v23 = 2048;
          v24 = a3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=scheduler= Period: %@ -> %f (internal)", buf, 0x16u);
          _MBLog();
        }

        v12 = 0;
      }

      else
      {
        if (v19)
        {
          *buf = 138412546;
          v22 = v8;
          v23 = 2048;
          v24 = a4;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=scheduler= Period: %@ -> %f (external)", buf, 0x16u);
          _MBLog();
        }

        v12 = 0;
        a3 = a4;
      }
    }
  }

  return a3;
}

void sub_1001D8FC8(uint64_t a1)
{
  if ([*(a1 + 32) isEnabledForBackup])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    [v2 _onQueue_warnUserOfLateBackupWithAccount:v3];
  }

  else
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=scheduler= The iCloud account is not enabled for backup", v5, 2u);
      _MBLog();
    }
  }
}

id sub_1001DA0A0(uint64_t a1)
{
  v2 = [*(a1 + 32) conditions];
  v3 = v2;
  v4 = HIDWORD(v2);
  v14 = 0;
  v5 = [*(a1 + 32) _fetchAccountsAndIsEnabled:&v14 + 1 isBackupOnCellularEnabled:&v14];
  [*(a1 + 32) setAccounts:v5];

  [*(a1 + 32) setAccountsToBackup:0];
  v6 = (v3 & 1) != HIBYTE(v14);
  if ((v3 & 1) != HIBYTE(v14))
  {
    [*(a1 + 32) _setIsEnabled:?];
  }

  if ((v4 & 1) != v14)
  {
    [*(a1 + 32) _setIsBackupOnCellularEnabled:?];
    v6 = 1;
  }

  if ((v14 & 0x100) == 0)
  {
    [*(a1 + 32) _cancelAlarm];
  }

  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6 && (v8 = *(a1 + 32), *(v8 + 100) == 1) && *(v8 + 101) == 1 && *(v8 + 102) == 1 && *(v8 + 103) == 1 && *(v8 + 104) == 1 && *(v8 + 105) == 1 && *(v8 + 106) == 1 && (*(v8 + 107) & 1) != 0)
  {
    v9 = *(v8 + 92);
    objc_sync_exit(v7);

    v7 = objc_opt_new();
    v10 = [NSNumber numberWithBool:HIBYTE(v14)];
    [v7 setEnabled:v10];

    v11 = [NSNumber numberWithBool:v14];
    [v7 setBackupOnCellularEnabled:v11];

    [*(a1 + 32) _notifyStateChanged:v7 conditions:v9];
  }

  else
  {
    objc_sync_exit(v7);
  }

  v12 = *(a1 + 40);
  return objc_opt_self();
}

id sub_1001DA3C0(uint64_t a1)
{
  [*(a1 + 32) setDateOfLastPasscodeChange:*(a1 + 40)];
  [MBPersona setPersonalPreferencesValue:*(a1 + 40) forKey:@"DateOfLastPasscodeChange"];
  [*(a1 + 32) _scheduleNextBackup];
  v2 = *(a1 + 48);
  return objc_opt_self();
}

id sub_1001DA740(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling the condition loss timer", buf, 2u);
    _MBLog();
  }

  dispatch_source_cancel(*(a1 + 32));
  result = [*(a1 + 40) conditions];
  if ((~result & 0x1010100) != 0 || (result & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=scheduler= %llds have passed and the device is still not back on condition - canceling ongoing or scheduled backups", buf, 0xCu);
      v6 = *(a1 + 56);
      _MBLog();
    }

    return [*(a1 + 40) _cancelBackupWithActivityType:2 changes:*(a1 + 48)];
  }

  return result;
}

void sub_1001DC89C(uint64_t a1)
{
  v2 = [*(a1 + 32) firstConditionsGroup];
  v19 = v2;
  if (v2)
  {
    dispatch_group_leave(v2);
    [*(a1 + 32) setFirstConditionsGroup:0];
    [*(a1 + 40) setInitial:&__kCFBooleanTrue];
    v3 = [*(a1 + 40) enabled];

    if (!v3)
    {
      v4 = [NSNumber numberWithBool:*(a1 + 48)];
      [*(a1 + 40) setEnabled:v4];
    }

    v5 = [*(a1 + 40) locked];

    if (!v5)
    {
      v6 = [NSNumber numberWithBool:*(a1 + 49)];
      [*(a1 + 40) setLocked:v6];
    }

    v7 = [*(a1 + 40) onPower];

    if (!v7)
    {
      v8 = [NSNumber numberWithBool:*(a1 + 50)];
      [*(a1 + 40) setOnPower:v8];
    }

    v9 = [*(a1 + 40) onWiFi];

    if (!v9)
    {
      v10 = [NSNumber numberWithBool:*(a1 + 51)];
      [*(a1 + 40) setOnWiFi:v10];
    }

    v11 = [*(a1 + 40) backupOnCellularEnabled];

    if (!v11)
    {
      v12 = [NSNumber numberWithBool:*(a1 + 52)];
      [*(a1 + 40) setBackupOnCellularEnabled:v12];
    }

    v13 = [*(a1 + 40) onCellular];

    if (!v13)
    {
      v14 = [NSNumber numberWithBool:*(a1 + 53)];
      [*(a1 + 40) setOnCellular:v14];
    }

    v15 = [*(a1 + 40) onExpensiveCellular];

    if (!v15)
    {
      v16 = [NSNumber numberWithBool:*(a1 + 54)];
      [*(a1 + 40) setOnExpensiveCellular:v16];
    }

    v17 = [*(a1 + 40) autoBackupOnCellularAllowed];

    if (!v17)
    {
      v18 = [NSNumber numberWithBool:*(a1 + 55)];
      [*(a1 + 40) setAutoBackupOnCellularAllowed:v18];
    }
  }

  [*(a1 + 32) _stateDidChange:*(a1 + 40) conditions:*(a1 + 48)];
}

void sub_1001DCF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DCF5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DCF74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [MBError isCKNotFoundError:v9];
    v11 = MBGetDefaultLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) recordID];
        *buf = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=scheduler= Failed to fetch the device record:%@ (dateOfLastBackup): %@", buf, 0x16u);

        v17 = [*(a1 + 32) recordID];
        _MBLog();
      }

      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 32) recordID];
        *buf = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the device record:%@ (dateOfLastBackup): %@", buf, 0x16u);

        v18 = [*(a1 + 32) recordID];
        _MBLog();
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    }
  }

  else
  {
    [*(a1 + 32) refreshWithRecord:v8];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001E0440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=scheduler= Alarm fired: %{public}@", buf, 0xCu);
    v7 = v3;
    _MBLog();
  }

  [*(a1 + 32) _cancelAlarm];
  if (([*(a1 + 32) _startBackupRequestForActivity:2] & 1) == 0)
  {
    [*(a1 + 32) _scheduleNextBackup];
  }

  [*(a1 + 32) _handleAlarm];
  v6 = objc_opt_self();
}

void sub_1001E0974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E09A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001E0A4C;
    v5[3] = &unk_1003BC060;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

void *sub_1001E0A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[32])
  {
    return [result _cancelInitiatedBackupWithChanges:0 isDeferred:1];
  }

  return result;
}

id sub_1001E0D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) activityCoordinator];
  [v2 finishBackupActivity:*(a1 + 48)];

  v3 = *(a1 + 40);
  return objc_opt_self();
}

id sub_1001E0D88(uint64_t a1)
{
  if (([*(a1 + 32) _startBackupRequestForActivity:*(a1 + 48)] & 1) == 0)
  {
    v2 = [*(a1 + 32) activityCoordinator];
    [v2 finishBackupActivity:*(a1 + 48)];

    [*(a1 + 32) _scheduleNextBackup];
  }

  v3 = *(a1 + 40);
  return objc_opt_self();
}

void sub_1001E0E34(id a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = +[MBServiceAccount allServiceAccounts];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = +[MBRemoteConfiguration sharedInstance];
        v8 = [v7 valueForKey:@"DASIsDisabled" account:v6];

        if (v8 && [v8 BOOLValue])
        {
          v10 = MBGetDefaultLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v18 = @"DASIsDisabled";
            *&v18[8] = 2112;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=scheduler= %{public}@ -> %@ (remote)", buf, 0x16u);
            _MBLog();
          }

          v9 = 1;
          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  v11 = _os_feature_enabled_impl();
  byte_1004201C8 = (v9 ^ 1) & v11;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v18 = byte_1004201C8;
    *&v18[4] = 1024;
    *&v18[6] = v9;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = v11 & 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=scheduler= BackupOnWiFiWithDAS:%d serverDisabled:%d ff:%d", buf, 0x14u);
    _MBLog();
  }
}

void sub_1001E1330(uint64_t a1)
{
  if (lockdown_connect())
  {
    v2 = lockdown_set_value();
    v3 = MBGetDefaultLog();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v7) = v2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not set lockdown key for encryption: %d", buf, 8u);
LABEL_10:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v7 = @"WillEncrypt";
      v8 = 2112;
      v9 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ key successfully set to %@", buf, 0x16u);
      goto LABEL_10;
    }

    lockdown_disconnect();
    return;
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not connect to lockdown!", buf, 2u);
    _MBLog();
  }
}

void makeLockdownEncryptionInfoConsistentWithKeychain()
{
  v0 = MBGetDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Setting lockdown key to be consistent with the keychain", buf, 2u);
    _MBLog();
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v2 = Mutable;
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v2, kSecAttrService, @"BackupAgent");
  CFDictionaryAddValue(v2, kSecAttrAccount, @"BackupPassword");
  CFDictionaryAddValue(v2, kSecReturnData, kCFBooleanTrue);
  *buf = 0;
  v3 = SecItemCopyMatching(v2, buf);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = *buf == 0;
  }

  if (v4)
  {
    v5 = MBGetDefaultLog();
    v6 = v5;
    if (v3 == -25300)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Couldn't find an encrypted backup password in the keychain.", v13, 2u);
LABEL_15:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v13 = 67109120;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not copy encrypted backup password from keychain: %d", v13, 8u);
      goto LABEL_15;
    }

    v9 = 0;
    goto LABEL_17;
  }

  BytePtr = CFDataGetBytePtr(*buf);
  Length = CFDataGetLength(*buf);
  v9 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 1u);
LABEL_17:
  if (*buf)
  {
    CFRelease(*buf);
    *buf = 0;
  }

  CFRelease(v2);
LABEL_20:
  v10 = MBGetDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "setting lockdown encryption info since a password exists in the keychain", buf, 2u);
      _MBLog();
    }

    sub_1001E1330(kCFBooleanTrue);
    CFRelease(v9);
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "clearing lockdown encryption info since a password doesn't exist in the keychain", buf, 2u);
      _MBLog();
    }

    sub_1001E1330(kCFBooleanFalse);
  }
}

void sub_1001E326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose((v63 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1001E32F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (*(v4 + 8) == 1)
  {
    v6 = *(v4 + 48);
    v30 = 0;
    v7 = [v3 restorePlanForAccount:v5 snapshotUUID:v6 error:&v30];
    v8 = v30;
    if (v7)
    {
      if ([v7 isPopulated])
      {
        v28 = 0;
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v9 = [v7 fetchPendingRestoreSize:&v29 remainingFileCount:&v28 totalFileCount:&v27 error:&v26];
        v10 = v26;
        if (v9)
        {
          v11 = v28;
          *(*(*(a1 + 64) + 8) + 24) = v29;
          *(*(*(a1 + 72) + 8) + 24) = v11;
          *(*(*(a1 + 80) + 8) + 24) = v27;
        }

        else
        {
          v21 = MBGetDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v10;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=bg-estimate= Failed to fetch the pending restore size from plan: %@", buf, 0xCu);
            _MBLog();
          }

          v22 = *(a1 + 56);
          objc_sync_enter(v22);
          [*(a1 + 56) addObject:v10];
          objc_sync_exit(v22);
        }

        goto LABEL_21;
      }

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = *(a1 + 48);
        *buf = 138412290;
        v32 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "=bg-estimate= Failed to obtain a populated restore plan for %@", buf, 0xCu);
        v23 = *(a1 + 48);
        _MBLog();
      }

      v10 = *(a1 + 56);
      objc_sync_enter(v10);
      v19 = *(a1 + 56);
      v20 = [MBError errorWithCode:1 format:@"No populated restore plan"];
      [v19 addObject:v20];
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=bg-estimate= Failed to open plan for sizing: %@", buf, 0xCu);
        _MBLog();
      }

      v10 = *(a1 + 56);
      objc_sync_enter(v10);
      [*(a1 + 56) addObject:v8];
    }

LABEL_20:
    objc_sync_exit(v10);
    goto LABEL_21;
  }

  v25 = 0;
  v7 = [v3 openCacheWithAccount:v5 accessType:2 cached:0 error:&v25];
  v8 = v25;
  if (!v7)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=bg-estimate= Failed to open the cache: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = *(a1 + 56);
    objc_sync_enter(v10);
    [*(a1 + 56) addObject:v8];
    goto LABEL_20;
  }

  v24 = 0;
  v12 = [v7 sizeOfPendingRestore:&v24];
  v10 = v24;
  *(*(*(a1 + 64) + 8) + 24) = v12;
  [v7 close];
  if (v10)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=bg-estimate= Failed to fetch the pending restore size from cache: %@", buf, 0xCu);
      _MBLog();
    }

    v14 = *(a1 + 56);
    objc_sync_enter(v14);
    [*(a1 + 56) addObject:v10];
    objc_sync_exit(v14);
  }

LABEL_21:

  objc_autoreleasePoolPop(v2);
}

void sub_1001E37A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=bg-estimate= Failed to fetch the download size from appstore: %@", buf, 0xCu);
      _MBLog();
    }

    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    [*(a1 + 32) addObject:v5];
    objc_sync_exit(v7);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001E38DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) airTrafficDidFinishRestore];
  v29 = a1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = [ATSession sessionsWithSessionTypeIdentifier:ATSessionTypeRestore];
    if ([v3 count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v4 = v3;
      v27 = [v4 countByEnumeratingWithState:&v35 objects:v46 count:16];
      if (v27)
      {
        v24 = v2;
        v25 = *v36;
        v26 = v4;
        do
        {
          v5 = 0;
          do
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(v4);
            }

            v28 = v5;
            v6 = [*(*(&v35 + 1) + 8 * v5) sessionTasks];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            obj = v6;
            v7 = [v6 countByEnumeratingWithState:&v31 objects:v45 count:16];
            if (v7)
            {
              v8 = v7;
              v9 = *v32;
              do
              {
                for (i = 0; i != v8; i = i + 1)
                {
                  if (*v32 != v9)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v11 = *(*(&v31 + 1) + 8 * i);
                  v12 = [v11 dataClass];
                  v13 = [v12 isEqualToString:@"Book"];

                  if (v13)
                  {
                    v14 = [v11 totalBytesToTransfer];
                    v15 = [v14 unsignedIntValue];
                    v16 = v15;

                    v17 = [v11 totalBytesTransferred];
                    v18 = [v17 unsignedIntValue];

                    if (v18 <= v15)
                    {
                      *(*(*(v29 + 56) + 8) + 24) += v15 - v18;
                    }

                    else
                    {
                      v19 = MBGetDefaultLog();
                      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                      {
                        v20 = [v11 localizedDescription];
                        *buf = 138412802;
                        v40 = v20;
                        v41 = 2048;
                        v42 = v18;
                        v43 = 2048;
                        v44 = v16;
                        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=bg-estimate= Inconsistent AirTraffic byte transfer size: %@ completed: %llu > total: %llu", buf, 0x20u);

                        [v11 localizedDescription];
                        v22 = v18;
                        v21 = v23 = v16;
                        _MBLog();
                      }
                    }
                  }
                }

                v8 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
              }

              while (v8);
            }

            v5 = v28 + 1;
            v4 = v26;
          }

          while ((v28 + 1) != v27);
          v27 = [v26 countByEnumeratingWithState:&v35 objects:v46 count:16];
        }

        while (v27);
        v2 = v24;
      }
    }

    else
    {
      atomic_store(1u, (*(*(v29 + 48) + 8) + 24));
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=bg-estimate= Cannot fetch background restore size, ATC is not yet ready", buf, 2u);
        _MBLog();
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001E4A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E4AA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001E4AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) upgradeBlock];
  v16 = 0;
  v6 = (v5)[2](v5, v3, &v16);
  v7 = v16;
  v8 = v16;

  if (v6)
  {
    v9 = [v3 setUserVersion:*(a1 + 52)];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 52);
      *buf = 67109634;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=pqldb= Can't migrate from version %d to %d: %@", buf, 0x18u);
      v15 = *(a1 + 52);
      v14 = *(a1 + 48);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_1001E4D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E4D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = (*(v5 + 16))();
  objc_storeStrong((v6 + 40), obj);
  objc_autoreleasePoolPop(v4);

  return v7;
}

BOOL MBShouldSendInvalidChecksumForDomain(void *a1)
{
  v1 = a1;
  if (MBIsInternalInstall())
  {
    v2 = +[MBBehaviorOptions sharedOptions];
    v3 = [v2 domainsToSendInvalidChecksumRegex];

    if (v3)
    {
      v9 = 0;
      v4 = [[NSRegularExpression alloc] initWithPattern:v3 options:0 error:&v9];
      v5 = v9;
      if (v5)
      {
        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=upload domain= Failed to compile regex: %@", buf, 0xCu);
          _MBLog();
        }

        v7 = 0;
      }

      else
      {
        v7 = [v4 numberOfMatchesInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}] != 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t MBUploadDomainRecordsForBackup(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v10)
  {
    __assert_rtn("MBUploadDomainRecordsForBackup", "MBUploadDomainRecords.m", 311, "pendingSnapshotDB");
  }

  if (!v11)
  {
    __assert_rtn("MBUploadDomainRecordsForBackup", "MBUploadDomainRecords.m", 312, "hmacKey");
  }

  if (!v13)
  {
    __assert_rtn("MBUploadDomainRecordsForBackup", "MBUploadDomainRecords.m", 313, "operationTracker");
  }

  v15 = v14;
  v87 = objc_autoreleasePoolPush();
  v121 = 0;
  v16 = v10;
  v97 = v11;
  v98 = v12;
  v99 = v13;
  v100 = v15;
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_1001E64C8;
  v122[3] = &unk_1003BC518;
  v94 = objc_opt_new();
  v123 = v94;
  v102 = v16;
  if (![v16 enumerateDomainsRequiringFileListUpload:&v121 block:v122])
  {
    v60 = 0;
    goto LABEL_68;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v94 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=upload domain= Uploading records for %lu domains", &buf, 0xCu);
    v74 = [v94 count];
    _MBLog();
  }

  v19 = [v16 snapshotDirectoryRoot];
  v85 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v19 identifiedBy:@"compressed_file_lists" error:&v121];

  v20 = v85;
  if (!v85)
  {
    v60 = 0;
    goto LABEL_67;
  }

  v21 = [v85 path];
  v84 = v94;
  v111 = v21;
  v22 = v16;
  v108 = v97;
  v109 = v98;
  v83 = v99;
  v110 = v100;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v23 = [v22 snapshotDirectoryRoot];
  v24 = [v22 commitID];
  v25 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v23 commitID:v24 readonly:1 error:&v121];
  v81 = v23;
  v82 = v24;
  v107 = v22;
  if (!v25)
  {
    v60 = 0;
    goto LABEL_66;
  }

  v106 = v25;
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = sub_1001E64EC;
  v141 = sub_1001E64FC;
  v142 = 0;
  v105 = [[MBCKBatchSave alloc] initWithOperationTracker:v83];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = v84;
  v26 = [obj countByEnumeratingWithState:&v133 objects:v166 count:16];
  if (!v26)
  {
    goto LABEL_54;
  }

  v104 = *v134;
  while (2)
  {
    v103 = v26;
    for (i = 0; i != v103; i = i + 1)
    {
      if (*v134 != v104)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v133 + 1) + 8 * i);
      if (atomic_load(v152 + 3))
      {
        v61 = MBGetDefaultLog();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=upload domain= Aborting upload of domain records because of upload failure", &buf, 2u);
          _MBLog();
        }

        goto LABEL_54;
      }

      context = objc_autoreleasePoolPush();
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v125 = sub_1001E6504;
      v126 = &unk_1003C1420;
      v129 = &v151;
      v130 = &v137;
      v131 = &v147;
      v132 = &v143;
      v127 = v110;
      v128 = v28;
      v30 = v28;
      v114 = v105;
      v119 = v111;
      v116 = v106;
      v31 = v107;
      v117 = v108;
      v115 = v109;
      v118 = v124;
      v120 = [v31 snapshotDirectoryRoot];
      v32 = [v31 commitID];
      v165 = 0;
      v164 = 0;
      v33 = MBCompressFileListDB(v120, v32, v30, v119, 2, &v165, &v164);
      v34 = v164;
      if (!v33)
      {
        v125(v118, v34, 0, 0);
        goto LABEL_46;
      }

      v112 = [MBDomainRecord baseRecordIDForDomain:v30 commitID:v32 hmacKey:v117];
      v163 = 0;
      v162 = 0;
      v161 = v34;
      v35 = [v116 countAssetRecordsToCommitForDomain:v30 addedOrModifiedCount:&v163 deletedCount:&v162 error:&v161];
      v36 = v161;

      if (v35)
      {
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
        v157 = v36;
        v37 = v120;
        v38 = v32;
        v39 = v30;
        v95 = v38;
        v96 = v115;
        v101 = v39;
        v40 = [MBFileListDB openOrCreateDatabaseIn:v37 commitID:v38 domainName:v39 error:&v157];
        v41 = v40;
        if (!v40)
        {
          v90 = 0;
          v43 = 0;
LABEL_35:

          v46 = v157;
          if (v43)
          {
            v47 = +[MBBehaviorOptions sharedOptions];
            v86 = [v47 manifestPageSize];

            v48 = v163;
            v49 = v162;
            v50 = MBGetDefaultLog();
            v89 = fmax(ceil((v48 + v49) / v86), 1.0);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v51 = v163;
              v52 = v162;
              v53 = MBFileListStatsToString(&v158);
              *v188 = 138413570;
              *&v188[4] = v101;
              *&v188[12] = 2048;
              *&v188[14] = v89;
              *&v188[22] = 2048;
              v189 = v51;
              v190 = 2048;
              v191 = v52;
              v192 = 2048;
              v193 = v90;
              v194 = 2112;
              v195 = v53;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "=upload domain= Going to upload domain %@ (pages %llu, addedOrModified %llu, deleted %llu, checksum [0x%llx], stats [%@])", v188, 0x3Eu);

              v54 = v163;
              v55 = v162;
              MBFileListStatsToString(&v158);
              v80 = v79 = v90;
              v77 = v54;
              v78 = v55;
              v74 = v101;
              v76 = v89;
              _MBLog();
            }

            *v188 = 0;
            *&v188[8] = v188;
            *&v188[16] = 0x2020000000;
            v189 = 0;
            v156[0] = 0;
            v156[1] = v156;
            v156[2] = 0x2020000000;
            v156[3] = 0;
            v155 = v46;
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v168 = sub_1001E6640;
            v169 = &unk_1003C1470;
            v170 = v96;
            v179 = v188;
            v56 = v101;
            v171 = v56;
            v172 = v95;
            v173 = v117;
            v181 = v158;
            v182 = v159;
            v183 = v160;
            v174 = v33;
            v187 = 2;
            v175 = v114;
            v176 = v112;
            v57 = v118;
            v178 = v57;
            v180 = v156;
            v184 = v89;
            v177 = v31;
            v185 = v90;
            v186 = v165;
            v58 = [v116 enumerateAssetRecordPagesToCommitForDomain:v56 pageSize:v86 error:&v155 block:&buf];
            v59 = v155;

            if (v58)
            {
              if (*(*&v188[8] + 24) != v89)
              {
                __assert_rtn("_uploadFileListAndPagedDomainRecords", "MBUploadDomainRecords.m", 205, "pageIndex == pagesToUpload");
              }
            }

            else
            {
              v125(v57, v59, 0, 0);
            }

            _Block_object_dispose(v156, 8);
            _Block_object_dispose(v188, 8);
            v46 = v59;
          }

          else
          {
            v125(v118, v46, 0, 0);
          }

          v36 = v46;
          goto LABEL_45;
        }

        v42 = [v40 countAssetsWithNilSignature:&v157];
        if (v42)
        {
          if (v42 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [MBError errorWithCode:205 format:@"Found %llu assets with a nil signature", v42];
            v90 = 0;
            v157 = v43 = 0;
LABEL_34:
            [v41 close:{0, v74, v76, v77, v78, v79, v80}];
            goto LABEL_35;
          }
        }

        else if ([v41 fetchFileListStats:&v158 error:&v157])
        {
          v156[0] = 0;
          v44 = [MBAssetRecord assetRecordIDPrefixFromAssetIDPrefix:v96];
          v43 = [v41 computeAssetRecordIDChecksumWithPrefix:v44 checksum:v156 error:&v157];
          if (v43)
          {
            if (MBShouldSendInvalidChecksumForDomain(v101))
            {
              v88 = v44;
              v91 = v156[0];
              v156[0] = 3735928559;
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *v188 = 134218498;
                *&v188[4] = v156[0];
                *&v188[12] = 2048;
                *&v188[14] = v91;
                *&v188[22] = 2112;
                v189 = v101;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=upload domain= Sending bad checksum 0x%llx instead of 0x%llx for domain %@", v188, 0x20u);
                v77 = v101;
                v74 = v156[0];
                v76 = v91;
                _MBLog();
              }

              v44 = v88;
            }

            v90 = v156[0];
          }

          else
          {
            v90 = 0;
          }

          goto LABEL_34;
        }

        v90 = 0;
        v43 = 0;
        goto LABEL_34;
      }

      v125(v118, v36, 0, 0);
LABEL_45:

      v34 = v36;
LABEL_46:

      objc_autoreleasePoolPop(context);
    }

    v26 = [obj countByEnumeratingWithState:&v133 objects:v166 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v60 = [(MBCKBatchSave *)v105 finishWithError:&v121];
  v156[0] = 0;
  if ([v106 close:v156])
  {
    if (v60)
    {
      v62 = atomic_load(v152 + 3);
      v63 = v138[5];
      if (v62)
      {
        if (!v63)
        {
          __assert_rtn("_uploadDomainRecords", "MBUploadDomainRecords.m", 266, "saveFailure");
        }

LABEL_62:
        v64 = MBGetDefaultLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v138[5];
          *v188 = 138412290;
          *&v188[4] = v65;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=upload domain= Failed to save domain records: %@", v188, 0xCu);
          v75 = v138[5];
          _MBLog();
        }

        v60 = 0;
        v121 = v138[5];
      }

      else
      {
        if (v63)
        {
          goto LABEL_62;
        }

        v69 = atomic_load(v144 + 3);
        [v110 setUploadedFileListSize:v69];
        v70 = MBGetDefaultLog();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = atomic_load(v148 + 3);
            v73 = [v84 count];
            *v188 = 134218240;
            *&v188[4] = v72;
            *&v188[12] = 2048;
            *&v188[14] = v73;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "=upload domain= Successfully uploaded %lu pages for %lu domains", v188, 0x16u);
          }

          atomic_load(v148 + 3);
          [v84 count];
          _MBLog();
        }

        v60 = 1;
      }
    }
  }

  else
  {
    v60 = 0;
  }

  _Block_object_dispose(&v137, 8);

  v25 = v106;
LABEL_66:

  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);

  [v85 dispose];
  v20 = v85;
LABEL_67:

LABEL_68:
  v66 = v121;
  objc_autoreleasePoolPop(v87);
  if (a6)
  {
    v67 = v66;
    *a6 = v66;
  }

  return v60;
}

void sub_1001E63A4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

void sub_1001E6490(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1001E649CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E64EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001E6504(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=upload domain= Failed to upload records for domain: %@", buf, 0xCu);
      _MBLog();
    }

    atomic_fetch_add((*(*(a1 + 48) + 8) + 24), 1uLL);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  else
  {
    atomic_fetch_add((*(*(a1 + 64) + 8) + 24), a3);
    atomic_fetch_add((*(*(a1 + 72) + 8) + 24), a4);
    [*(a1 + 32) trackUploadedDomain:*(a1 + 40)];
  }
}

uint64_t sub_1001E6640(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = sub_1001E6818(v5, a2);
  v8 = sub_1001E6818(*(a1 + 32), v6);

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  if (*(*(*(a1 + 104) + 8) + 24))
  {
    [MBDomainRecord domainRecordPageForDomain:v9 commitID:v10 addedOrModifiedAssets:v7 deletedAssets:v8 hmacKey:v11 pageIndex:?];
  }

  else
  {
    LOBYTE(v18) = *(a1 + 184);
    [MBDomainRecord domainRecordForDomain:v9 commitID:v10 addedOrModifiedAssets:v7 deletedAssets:v8 hmacKey:v11 fileListStats:a1 + 120 fileListPath:*(a1 + 64) fileListEncodingType:v18];
  }
  v12 = ;
  v13 = *(a1 + 72);
  v14 = [v12 asCKRecord];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001E69E8;
  v19[3] = &unk_1003C1448;
  v20 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v24 = v15;
  v25 = v16;
  v26 = *(a1 + 160);
  v21 = *(a1 + 64);
  v22 = *(a1 + 88);
  v23 = *(a1 + 40);
  v27 = *(a1 + 168);
  [v13 saveRecord:v14 delegate:0 completion:v19];

  ++*(*(*(a1 + 104) + 8) + 24);
  return 1;
}

id sub_1001E6818(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MBAssetRecord recordIDFromAssetIDPrefix:v3 recordIDSuffix:*(*(&v16 + 1) + 8 * i)];
          v12 = [[CKReference alloc] initWithRecordID:v11 action:0];
          if (!v12)
          {
            __assert_rtn("_assetRefsFromAssetRecordIDs", "MBUploadDomainRecords.m", 102, "ref");
          }

          v13 = v12;
          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v4 = v15;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1001E69E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 recordID];
  v8 = [v7 recordName];
  if (([v8 hasPrefix:*(a1 + 32)] & 1) == 0)
  {
    __assert_rtn("_uploadFileListAndPagedDomainRecords_block_invoke_2", "MBUploadDomainRecords.m", 176, "[record.recordID.recordName hasPrefix:baseRecordID]");
  }

  if (v6)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    v9 = [MBDomainRecord domainRecordFromCKRecord:v5];
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v36 = [v9 recordID];
      v11 = [v36 recordName];
      v12 = [v9 domainName];
      v13 = *(*(*(a1 + 72) + 8) + 24);
      v32 = v13;
      v34 = *(a1 + 80);
      v14 = [v9 addedOrModifiedAssets];
      v15 = [v14 count];
      v16 = [v9 deletedAssets];
      *buf = 138413570;
      v40 = v11;
      v41 = 2112;
      v42 = v12;
      v43 = 2048;
      v44 = v32;
      v45 = 2048;
      v46 = v34;
      v47 = 2048;
      v48 = v15;
      v49 = 2048;
      v50 = [v16 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=upload domain= Uploaded domain record %@ for domain %@ - %llu/%llu (addedRefs %llu, deletedRefs %llu)", buf, 0x3Eu);

      v35 = [v9 recordID];
      v33 = [v35 recordName];
      v17 = [v9 domainName];
      v37 = v10;
      v18 = *(a1 + 80);
      v19 = *(*(*(a1 + 72) + 8) + 24);
      v20 = [v9 addedOrModifiedAssets];
      [v20 count];
      v21 = [v9 deletedAssets];
      [v21 count];
      v10 = v37;
      _MBLog();
    }

    if (*(*(*(a1 + 72) + 8) + 24) >= *(a1 + 80))
    {
      unlink([*(a1 + 40) fileSystemRepresentation]);
      v22 = *(a1 + 48);
      v23 = *(a1 + 56);
      v24 = *(a1 + 32);
      v25 = *(*(*(a1 + 72) + 8) + 24);
      v26 = *(a1 + 88);
      v38 = 0;
      v27 = [v22 markDomainAsUploaded:v23 baseRecordID:v24 pageCount:v25 checksum:v26 error:&v38];
      v30 = v38;
      v31 = *(a1 + 64);
      if (v27)
      {
        (*(v31 + 16))(v31, 0, *(*(*(a1 + 72) + 8) + 24), *(a1 + 96), v28, v29);
      }

      else
      {
        (*(v31 + 16))(v31, v30, 0, 0, v28, v29);
      }
    }
  }
}

void sub_1001E7484(id a1)
{
  v1 = +[MBBehaviorOptions sharedOptions];
  v2 = [v1 maxBatchDeleteConcurrentModifyRecordsOperationsWithDefaultValue:6];

  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
  }

  qword_100421A10 = dispatch_semaphore_create(v4);

  _objc_release_x1();
}

void sub_1001E8B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E8B68(id *a1, void *a2, void *a3, void *a4)
{
  v34 = a2;
  v35 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    __assert_rtn("[MBCKBatchDelete _sendBatchDeleteOperationForDeleteInfos:]_block_invoke", "MBCKBatchDelete.m", 280, "strongOp");
  }

  v8 = MBGetDefaultLog();
  v9 = v8;
  if (v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v10 = [WeakRetained operationID];
    v11 = a1[4];
    *buf = 138543874;
    v46 = v10;
    v47 = 2114;
    v48 = v11;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Operation %{public}@/%{public}@ failed: %@", buf, 0x20u);

    v12 = [WeakRetained operationID];
    v32 = a1[4];
    v33 = v7;
    v31 = v12;
    _MBLog();
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v13 = [WeakRetained operationID];
    v14 = a1[4];
    *buf = 138543618;
    v46 = v13;
    v47 = 2114;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Operation %{public}@/%{public}@ completed", buf, 0x16u);

    v12 = [WeakRetained operationID];
    v31 = v12;
    v32 = a1[4];
    _MBLog();
  }

LABEL_8:
  v37 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a1[5], "count")}];
  v38 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a1[5], "count")}];
  obj = a1[4];
  objc_sync_enter(obj);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = a1[5];
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v41;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        if ([v20 state] != 2)
        {
          __assert_rtn("[MBCKBatchDelete _sendBatchDeleteOperationForDeleteInfos:]_block_invoke", "MBCKBatchDelete.m", 295, "deleteInfo.state == MBCKDeleteInfoStateDeleting");
        }

        [a1[4] _handleCompletionForDeleteInfo:v20 operation:WeakRetained error:v7];
        if ([v20 state] == 3)
        {
          v21 = [v20 error];
          v22 = [v20 recordID];
          [v38 addObject:v22];

          [v37 addObject:v20];
          if (v21)
          {
            if (v7)
            {
              v23 = v7;
            }

            else
            {
              v23 = v21;
            }

            v24 = v23;

            v17 = v24;
          }
        }

        else if ([v20 state] == 1)
        {
          [v20 setState:0];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v16);

    if (v17)
    {
      [a1[4] setDeleteError:v17];
    }
  }

  else
  {

    v17 = 0;
  }

  v25 = [a1[4] deleteInfosByRecordID];
  [v25 removeObjectsForKeys:v38];

  v26 = [a1[4] deleteInfos];
  [v26 removeObjectsInArray:v37];

  objc_sync_exit(obj);
  v28 = a1[4];
  v27 = a1 + 4;
  atomic_fetch_add_explicit(v28 + 2, 0xFFFFFFFF, memory_order_relaxed);
  v29 = [*v27 deleteSemaphore];
  dispatch_semaphore_signal(v29);

  v30 = [*v27 deleteGroup];
  dispatch_group_leave(v30);
}

id sub_1001E904C(uint64_t a1)
{
  atomic_fetch_add_explicit((*(a1 + 32) + 8), 1u, memory_order_relaxed);
  [*(a1 + 40) addDatabaseOperation:*(a1 + 48) policy:*(a1 + 56)];
  result = [*(a1 + 32) canceled];
  if (result)
  {
    result = [*(a1 + 48) isCancelled];
    if ((result & 1) == 0)
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 48) operationID];
        *buf = 138543362;
        v7 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling operation %{public}@", buf, 0xCu);

        v5 = [*(a1 + 48) operationID];
        _MBLog();
      }

      return [*(a1 + 48) cancel];
    }
  }

  return result;
}

void sub_1001E9544(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _sendBatchDeleteOperationForDeleteInfos:*(a1 + 40)];
  v3 = [*(a1 + 32) deleteGroup];
  dispatch_group_leave(v3);

  objc_autoreleasePoolPop(v2);
}

int64_t sub_1001E9A44(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 recordID];
  v6 = [v5 zoneID];

  v7 = [v4 recordID];

  v8 = [v7 zoneID];

  v9 = [v6 compareToRecordZoneID:v8];
  return v9;
}

void sub_1001E9BC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _finishBatchedDeletesWithCompletion:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void MBDiagnoseFile(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (atomic_fetch_add_explicit(&dword_100421A20, 1u, memory_order_relaxed) <= 1)
  {
    sub_1001EB708(v5);
    if (MBIsInternalInstall())
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v9 = a3;
        v10 = 1024;
        v11 = a2;
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=diag= %{public}s failed with %d at %{public}@", buf, 0x1Cu);
        _MBLog();
      }
    }
  }
}

void sub_1001EB708(void *a1)
{
  v1 = a1;
  v2 = geteuid();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138543618;
      *&buf.f_iosize = v1;
      WORD2(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 6) = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= Dumping diagnostics for %{public}@ (%d)", &buf, 0x12u);
    }

    f_iosize = v2;
    _MBLog();
  }

  v5 = [v1 fileSystemRepresentation];
  v6 = [v1 lastPathComponent];
  v7 = [v6 fileSystemRepresentation];

  v8 = [v1 stringByDeletingLastPathComponent];
  v9 = [v8 fileSystemRepresentation];

  if (v1)
  {
    if (!v5)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= nil path FSR", &buf, 2u);
        goto LABEL_218;
      }

      goto LABEL_219;
    }

    if (!v7)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= nil name FSR", &buf, 2u);
        goto LABEL_218;
      }

      goto LABEL_219;
    }

    if (v9)
    {
      if (access(v5, 4))
      {
        v10 = *__error();
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK) failed: %{errno}d", &buf, 8u);
          }

          _MBLog();
        }

        if (access(v5, 0))
        {
          v13 = *__error();
          v14 = MBGetDefaultLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v14 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK) failed: %{errno}d", &buf, 8u);
          }
        }

        else
        {
          v14 = MBGetDefaultLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v14 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK): %d", &buf, 8u);
          }
        }
      }

      else
      {
        v14 = MBGetDefaultLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v14 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK): %d", &buf, 8u);
        }
      }

      _MBLog();
LABEL_33:

      memset(&v267, 0, sizeof(v267));
      if (stat(v5, &v267))
      {
        v16 = *__error();
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=diag= stat failed: %{errno}d", &buf, 8u);
          }

          _MBLog();
        }

        st_ino = 0;
      }

      else
      {
        st_ino = v267.st_ino;
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67113472;
            buf.f_iosize = v267.st_dev;
            LOWORD(buf.f_blocks) = 2048;
            *(&buf.f_blocks + 2) = v267.st_ino;
            WORD1(buf.f_bfree) = 1024;
            HIDWORD(buf.f_bfree) = v267.st_mode;
            LOWORD(buf.f_bavail) = 1024;
            *(&buf.f_bavail + 2) = v267.st_nlink;
            HIWORD(buf.f_bavail) = 1024;
            LODWORD(buf.f_files) = v267.st_uid;
            WORD2(buf.f_files) = 1024;
            *(&buf.f_files + 6) = v267.st_gid;
            WORD1(buf.f_ffree) = 1024;
            HIDWORD(buf.f_ffree) = v267.st_rdev;
            LOWORD(buf.f_fsid.val[0]) = 2048;
            *(&buf.f_fsid + 2) = v267.st_atimespec.tv_sec;
            HIWORD(buf.f_owner) = 2048;
            *&buf.f_type = v267.st_atimespec.tv_nsec;
            LOWORD(buf.f_fssubtype) = 2048;
            *(&buf.f_fssubtype + 2) = v267.st_mtimespec.tv_sec;
            *&buf.f_fstypename[6] = 2048;
            *&buf.f_fstypename[8] = v267.st_mtimespec.tv_nsec;
            *buf.f_mntonname = 2048;
            *&buf.f_mntonname[2] = v267.st_ctimespec.tv_sec;
            *&buf.f_mntonname[10] = 2048;
            *&buf.f_mntonname[12] = v267.st_ctimespec.tv_nsec;
            *&buf.f_mntonname[20] = 2048;
            *&buf.f_mntonname[22] = v267.st_size;
            *&buf.f_mntonname[30] = 2048;
            *&buf.f_mntonname[32] = v267.st_blocks << 9;
            *&buf.f_mntonname[40] = 1024;
            *&buf.f_mntonname[42] = v267.st_blksize;
            *&buf.f_mntonname[46] = 1024;
            *&buf.f_mntonname[48] = v267.st_flags;
            *&buf.f_mntonname[52] = 1024;
            *&buf.f_mntonname[54] = v267.st_gen;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=diag= stat: dev %d, ino %llu, mode 0%o, nlink %u, uid %u, gid %u, rdev %d, atime %lu.%ld, mtime %lu.%ld, ctime %lu.%ld, lgsize %lld, physize %lld, blksize %d, flags %u, gen %u", &buf, 0x92u);
          }

          st_flags = v267.st_flags;
          st_gen = v267.st_gen;
          v229 = v267.st_blocks << 9;
          st_blksize = v267.st_blksize;
          st_size = v267.st_size;
          st_ctimespec = v267.st_ctimespec;
          st_mtimespec = v267.st_mtimespec;
          st_atimespec = v267.st_atimespec;
          *(&v223 + 1) = v267.st_gid;
          st_rdev = v267.st_rdev;
          *(&v221 + 1) = v267.st_nlink;
          *&v223 = v267.st_uid;
          f_iosize = v267.st_ino;
          *&v221 = v267.st_mode;
          _MBLog();
        }
      }

      v265 = xmmword_1002BA170;
      v266 = 0x1800000403;
      memset(v264, 0, sizeof(v264));
      v262 = 0u;
      v263 = 0u;
      v261 = 0u;
      v260 = 0u;
      v245 = v5;
      if (getattrlist(v5, &v265, &v260, 0x64uLL, 0x29u))
      {
        v19 = *__error();
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist failed: %{errno}d", &buf, 8u);
          }

          _MBLog();
        }
      }

      else
      {
        if (!st_ino)
        {
          if ((BYTE7(v260) & 2) != 0)
          {
            st_ino = *(&v263 + 4);
          }

          else
          {
            st_ino = 0;
          }
        }

        if (HIDWORD(v261) != 1)
        {
          v21 = MBGetDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = st_ino;
            v23 = v21;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.f_bsize) = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=diag= warning: not a regular file, link info and sizes will be garbage", &buf, 2u);
            }

            _MBLog();
            st_ino = v22;
          }
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_iosize = v260;
            *(&buf.f_blocks + 2) = (DWORD1(v260) >> 1) & 1;
            LODWORD(buf.f_bfree) = DWORD2(v261);
            *(&buf.f_bfree + 6) = (DWORD1(v260) >> 3) & 1;
            HIDWORD(buf.f_bavail) = HIDWORD(v261);
            *(&buf.f_files + 2) = (DWORD1(v260) >> 25) & 1;
            buf.f_ffree = *(&v263 + 4);
            *(buf.f_fsid.val + 2) = (DWORD1(v260) >> 15) & 1;
            buf.f_owner = v262;
            *(&buf.f_type + 2) = HIWORD(DWORD1(v260)) & 1;
            buf.f_fssubtype = DWORD1(v262);
            *&buf.f_fstypename[2] = (DWORD1(v260) >> 17) & 1;
            *&buf.f_fstypename[8] = DWORD2(v262);
            *&buf.f_fstypename[14] = (DWORD1(v260) >> 18) & 1;
            *&buf.f_mntonname[4] = HIDWORD(v262);
            *&buf.f_mntonname[10] = (DWORD1(v260) >> 19) & 1;
            *&buf.f_mntonname[16] = v263;
            *&buf.f_mntonname[22] = (DWORD1(v260) >> 30) & 1;
            *&buf.f_mntonname[28] = HIDWORD(v263);
            *&buf.f_mntonname[34] = v261 & 1;
            *&buf.f_mntonname[40] = v264[0];
            *&buf.f_mntonname[46] = (v261 >> 1) & 1;
            *&buf.f_mntonname[52] = *&v264[1];
            *&buf.f_mntonname[62] = (v261 >> 10) & 1;
            *&buf.f_mntonname[68] = *&v264[3];
            *&buf.f_mntonname[78] = (DWORD1(v261) >> 3) & 1;
            *&buf.f_mntonname[84] = *&v264[5];
            LOWORD(buf.f_blocks) = 1024;
            HIWORD(buf.f_blocks) = 1024;
            WORD2(buf.f_bfree) = 1024;
            WORD1(buf.f_bavail) = 1024;
            LOWORD(buf.f_files) = 1024;
            LOWORD(buf.f_fsid.val[0]) = 1024;
            HIWORD(buf.f_fsid.val[1]) = 1024;
            LOWORD(buf.f_type) = 1024;
            HIWORD(buf.f_flags) = 1024;
            *buf.f_fstypename = 1024;
            *&buf.f_fstypename[6] = 1024;
            *&buf.f_fstypename[12] = 1024;
            *&buf.f_mntonname[2] = 1024;
            *&buf.f_mntonname[8] = 1024;
            *&buf.f_mntonname[14] = 1024;
            *&buf.f_mntonname[20] = 1024;
            *&buf.f_mntonname[26] = 1024;
            *&buf.f_mntonname[32] = 1024;
            *&buf.f_mntonname[38] = 1024;
            *&buf.f_mntonname[44] = 1024;
            *&buf.f_mntonname[60] = 1024;
            *&buf.f_mntonname[76] = 1024;
            *&buf.f_mntonname[92] = 1024;
            *&buf.f_mntonname[94] = (DWORD1(v261) >> 4) & 1;
            HIWORD(buf.f_files) = 2048;
            *&buf.f_mntonname[50] = 2048;
            *&buf.f_mntonname[66] = 2048;
            *&buf.f_mntonname[82] = 2048;
            *&buf.f_mntonname[98] = 2048;
            *&buf.f_mntonname[100] = *&v264[7];
            buf.f_bsize = 67116288;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist: len %u, dev (%d)%d, type (%d)%u, fileId (%d)%llu, uid (%d)%u, gid (%d)%u, access (%d)0%o, flags (%d)0x%x, gencount (%d)%u, protclass (%d)%u, nlink (%d)%u, lgsize (%d)%lld, physize (%d)%lld, realsize (%d)%lld, linkid (%d)%llu", &buf, 0xC4u);
          }

          v242 = (DWORD1(v261) >> 4) & 1;
          v243 = *&v264[7];
          v240 = (DWORD1(v261) >> 3) & 1;
          v241 = *&v264[5];
          v238 = (v261 >> 10) & 1;
          v239 = *&v264[3];
          v236 = (v261 >> 1) & 1;
          v237 = *&v264[1];
          v234 = v261 & 1;
          v235 = v264[0];
          st_gen = (DWORD1(v260) >> 30) & 1;
          v233 = HIDWORD(v263);
          st_blksize = (DWORD1(v260) >> 19) & 1;
          st_flags = v263;
          st_size = (DWORD1(v260) >> 18) & 1;
          v229 = HIDWORD(v262);
          st_ctimespec.tv_sec = (DWORD1(v260) >> 17) & 1;
          st_ctimespec.tv_nsec = DWORD2(v262);
          st_mtimespec.tv_sec = HIWORD(DWORD1(v260)) & 1;
          st_mtimespec.tv_nsec = DWORD1(v262);
          st_atimespec.tv_sec = (DWORD1(v260) >> 15) & 1;
          st_atimespec.tv_nsec = v262;
          *(&v223 + 1) = (DWORD1(v260) >> 25) & 1;
          st_rdev = *(&v263 + 4);
          *(&v221 + 1) = (DWORD1(v260) >> 3) & 1;
          *&v223 = HIDWORD(v261);
          f_iosize = (DWORD1(v260) >> 1) & 1;
          *&v221 = DWORD2(v261);
          _MBLog();
        }
      }

      f_fsid = 0;
      v24 = open(v9, 256);
      if (v24 == -1)
      {
        v28 = *__error();
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 136446466;
            *&buf.f_iosize = v9;
            WORD2(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 6) = v28;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=diag= open failed at %{public}s: %{errno}d", &buf, 0x12u);
          }

          f_iosize = v28;
          _MBLog();
        }

        if (!st_ino)
        {
          goto LABEL_126;
        }

        goto LABEL_105;
      }

      v25 = v24;
      *v246 = st_ino;
      bzero(&buf, 0x878uLL);
      if (fstatfs(v25, &buf))
      {
        v26 = *__error();
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v27;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 136446466;
            *(&v274.d_ino + 4) = v9;
            WORD2(v274.d_seekoff) = 1024;
            *(&v274.d_seekoff + 6) = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs failed at %{public}s: %{errno}d", &v274, 0x12u);
          }

          f_iosize = v26;
LABEL_78:
          _MBLog();
        }
      }

      else
      {
        f_fsid = buf.f_fsid;
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v27;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 67112448;
            HIDWORD(v274.d_ino) = buf.f_bsize;
            LOWORD(v274.d_seekoff) = 1024;
            *(&v274.d_seekoff + 2) = buf.f_iosize;
            HIWORD(v274.d_seekoff) = 2048;
            *&v274.d_reclen = buf.f_blocks;
            *&v274.d_name[3] = 2048;
            *&v274.d_name[5] = buf.f_bfree;
            *&v274.d_name[13] = 2048;
            *&v274.d_name[15] = buf.f_bavail;
            *&v274.d_name[23] = 2048;
            *&v274.d_name[25] = buf.f_files;
            *&v274.d_name[33] = 2048;
            *&v274.d_name[35] = buf.f_ffree;
            *&v274.d_name[43] = 1024;
            *&v274.d_name[45] = buf.f_fsid.val[0];
            *&v274.d_name[49] = 1024;
            *&v274.d_name[51] = buf.f_fsid.val[1];
            *&v274.d_name[55] = 1024;
            *&v274.d_name[57] = buf.f_owner;
            *&v274.d_name[61] = 1024;
            *&v274.d_name[63] = buf.f_type;
            *&v274.d_name[67] = 1024;
            *&v274.d_name[69] = buf.f_flags;
            *&v274.d_name[73] = 1024;
            *&v274.d_name[75] = buf.f_fssubtype;
            *&v274.d_name[79] = 1024;
            *&v274.d_name[81] = buf.f_flags_ext;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs: bsize %u, iosize %d, blocks %llu, bfree %llu, bavail %llu, files %llu, ffree %llu, fsid {%d, %d}, owner %d, type %d, flags 0x%x, fssubtype %d, flags_ext 0x%x", &v274, 0x6Au);
          }

          st_ctimespec.tv_nsec = buf.f_fssubtype;
          st_size = buf.f_flags_ext;
          st_mtimespec.tv_nsec = buf.f_type;
          st_ctimespec.tv_sec = buf.f_flags;
          st_atimespec.tv_nsec = buf.f_fsid.val[1];
          st_mtimespec.tv_sec = buf.f_owner;
          st_rdev = buf.f_ffree;
          st_atimespec.tv_sec = buf.f_fsid.val[0];
          v221 = *&buf.f_blocks;
          v223 = *&buf.f_bavail;
          f_iosize = buf.f_iosize;
          goto LABEL_78;
        }
      }

      v31 = fdopendir(v25);
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        while (1)
        {
          bzero(&v274, 0x418uLL);
          v258 = 0;
          v34 = readdir_r(v32, &v274, &v258);
          if (v34)
          {
            break;
          }

          if (!v258)
          {
            goto LABEL_100;
          }

          if (*v274.d_name != 46 && *v274.d_name ^ 0x2E2E | v274.d_name[2] && !strcmp(v274.d_name, v7))
          {
            d_ino = *v246;
            if (!*v246)
            {
              d_ino = v274.d_ino;
            }

            v185 = MBGetDefaultLog();
            if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
            {
              v186 = v185;
              if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v268) = 67110144;
                DWORD1(v268) = v33;
                WORD4(v268) = 1024;
                *(&v268 + 10) = v274.d_type;
                HIWORD(v268) = 2048;
                v269 = v274.d_ino;
                v270 = 1024;
                d_namlen = v274.d_namlen;
                v272 = 1024;
                d_reclen = v274.d_reclen;
                _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r found file entry (%u), type %d, ino %llu, namelen %d, reclen %d", &v268, 0x24u);
              }

              *(&v221 + 1) = v274.d_namlen;
              *&v223 = v274.d_reclen;
              f_iosize = v274.d_type;
              *&v221 = v274.d_ino;
              _MBLog();
            }

            closedir(v32);
            st_ino = d_ino;
            if (d_ino)
            {
              goto LABEL_105;
            }

LABEL_126:
            v268 = 0uLL;
            if (fsctl(v5, 0x40104A0EuLL, &v268, 0))
            {
              v55 = *__error();
              v56 = MBGetDefaultLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v56;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v55;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO) failed: %{errno}d", &buf, 8u);
                }

                goto LABEL_135;
              }
            }

            else
            {
              v56 = MBGetDefaultLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v56;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 134218240;
                  *&buf.f_iosize = v268;
                  WORD2(buf.f_blocks) = 2048;
                  *(&buf.f_blocks + 6) = *(&v268 + 1);
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO): flags 0x%llx, private_id %llu", &buf, 0x16u);
                }

                f_iosize = *(&v268 + 1);
LABEL_135:
                _MBLog();
              }
            }

            v247 = open_dprotected_np(v5, 0, 0, 1, 0);
            if (v247 == -1)
            {
              v59 = *__error();
              v60 = MBGetDefaultLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                buf.f_bsize = 67109120;
                buf.f_iosize = v59;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=diag= Failed to open the file raw encrypted: %{errno}d", &buf, 8u);
                _MBLog();
              }
            }

            else
            {
              v257 = 0;
              if (fsctl(v5, 0x40084A25uLL, &v257, 8u))
              {
                v57 = *__error();
                v58 = MBGetDefaultLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = v58;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v57;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS) failed: %{errno}d", &buf, 8u);
                  }

                  goto LABEL_148;
                }
              }

              else
              {
                v58 = MBGetDefaultLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = v58;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v257;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS): flags 0x%llx", &buf, 0xCu);
                  }

LABEL_148:

                  _MBLog();
                }
              }

              v255 = 0u;
              v256 = 0u;
              v254 = 0u;
              if (fsctl(v5, 0x40304A6DuLL, &v254, 0))
              {
                v61 = *__error();
                v62 = MBGetDefaultLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = v62;
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v61;
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO) failed: %{errno}d", &buf, 8u);
                  }

                  goto LABEL_158;
                }
              }

              else
              {
                v62 = MBGetDefaultLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = v62;
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134219264;
                    *&buf.f_iosize = v254;
                    WORD2(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 6) = *(&v254 + 1);
                    HIWORD(buf.f_bfree) = 2048;
                    buf.f_bavail = v255;
                    LOWORD(buf.f_files) = 2048;
                    *(&buf.f_files + 2) = *(&v255 + 1);
                    WORD1(buf.f_ffree) = 2048;
                    *(&buf.f_ffree + 4) = v256;
                    LOWORD(buf.f_fsid.val[1]) = 2048;
                    *(&buf.f_fsid + 6) = *(&v256 + 1);
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO): file flags: 0x%llx related flags: 0x%llx, file acctime: %llu\n gen count: %llu sync root id: %llu size: %llu", &buf, 0x3Eu);
                  }

                  v223 = v256;
                  f_iosize = *(&v254 + 1);
                  v221 = v255;
LABEL_158:
                  _MBLog();
                }
              }

              v63 = MBGetDefaultLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.f_bsize) = 0;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=diag= Dumping extent information", &buf, 2u);
                }

                _MBLog();
              }

              v244 = v1;

              v65 = 0;
              v66 = 0;
              while (1)
              {
                LODWORD(v274.d_ino) = 0;
                *(&v274.d_ino + 4) = 0x7FFFFFFFFFFFFFFFLL;
                *(&v274.d_seekoff + 4) = v65;
                if (fcntl(v247, 65, &v274, f_iosize, v221, v223, st_rdev, st_atimespec, st_mtimespec, st_ctimespec, st_size, v229, st_blksize, st_flags, st_gen, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243))
                {
                  break;
                }

                v67 = *(&v274.d_ino + 4);
                v68 = MBGetDefaultLog();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v68;
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134218496;
                    *&buf.f_iosize = v65;
                    WORD2(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 6) = v67;
                    HIWORD(buf.f_bfree) = 2048;
                    buf.f_bavail = *(&v274.d_seekoff + 4);
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=diag= 0x%llx:+%lld @ 0x%llx", &buf, 0x20u);
                  }

                  f_iosize = v67;
                  *&v221 = *(&v274.d_seekoff + 4);
                  _MBLog();
                }

                if (v67 < 1 || (v67 ^ 0x7FFFFFFFFFFFFFFFLL) < v65)
                {
                  goto LABEL_179;
                }

                v65 += v67;
                if (++v66 == 10000)
                {
                  v66 = 10000;
                  goto LABEL_179;
                }
              }

              v70 = *__error();
              if (v70 != 34)
              {
                v71 = MBGetDefaultLog();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = v71;
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134218240;
                    *&buf.f_iosize = v65;
                    WORD2(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 6) = v70;
                    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "=diag= log2phys failed at 0x%llx: %{errno}d", &buf, 0x12u);
                  }

                  _MBLog();
                }
              }

LABEL_179:
              v73 = MBGetDefaultLog();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = v73;
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v66;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "=diag= Found %u extents", &buf, 8u);
                }

                _MBLog();
              }

              v75 = malloc_type_malloc(0x4000uLL, 0x3F4D6170uLL);
              if (!v75)
              {
                __assert_rtn("_diagnoseFile", "MBDiagnostics.m", 363, "finfo");
              }

              v76 = v75;
              v77 = MBGetDefaultLog();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = v77;
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.f_bsize) = 0;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "=diag= Dumping crypto file info", &buf, 2u);
                }

                _MBLog();
              }

              v248 = 1;
              v250 = 0;
              v249 = 0;
              v251 = 0;
              v252 = 0x4000;
              v253 = v76;
              if (ffsctl(v247, 0x80284A7FuLL, &v248, 0))
              {
                v79 = *__error();
                v80 = MBGetDefaultLog();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = v80;
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v79;
                    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=diag= Failed to get the crypto file infos: %{errno}d", &buf, 8u);
                  }

                  goto LABEL_205;
                }

                goto LABEL_206;
              }

              v81 = MBGetDefaultLog();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = v81;
                if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                {
                  v83 = *v76;
                  buf.f_bsize = 134217984;
                  *&buf.f_iosize = v83;
                  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "=diag= private_id: %llu", &buf, 0xCu);
                }

                v187 = *v76;
                _MBLog();
              }

              v84 = MBGetDefaultLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                v85 = v84;
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = *(v76 + 1);
                  v87 = v76[4] & 1;
                  buf.f_bsize = 134218240;
                  *&buf.f_iosize = v86;
                  WORD2(buf.f_blocks) = 1024;
                  *(&buf.f_blocks + 6) = v87;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "=diag= prot_class: %llu (explicit? %d)", &buf, 0x12u);
                }

                v188 = *(v76 + 1);
                v215 = v76[4] & 1;
                _MBLog();
              }

              if ((*(v76 + 2) & 0x8000000000000000) != 0)
              {
                v92 = MBGetDefaultLog();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  v93 = v92;
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    v94 = v76[85];
                    v95 = *(v76 + 3);
                    buf.f_bsize = 67109376;
                    buf.f_iosize = v94;
                    LOWORD(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 2) = v95;
                    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=diag= Found %u crypto ids for filesize %lld", &buf, 0x12u);
                  }

                  v189 = v76[85];
                  v216 = *(v76 + 3);
                  _MBLog();
                }

                v96 = MBGetDefaultLog();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  v97 = v96;
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                  {
                    v98 = *(v76 + 3);
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v98;
                    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "=diag=   size:         %llu", &buf, 0xCu);
                  }

                  v190 = *(v76 + 3);
                  _MBLog();
                }

                v99 = MBGetDefaultLog();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  v100 = v99;
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    v101 = *(v76 + 4);
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v101;
                    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "=diag=   alloced_size: %llu", &buf, 0xCu);
                  }

                  v191 = *(v76 + 4);
                  _MBLog();
                }

                v102 = MBGetDefaultLog();
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  v103 = v102;
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                  {
                    v104 = *(v76 + 5);
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v104;
                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "=diag=   default_crid: %llu", &buf, 0xCu);
                  }

                  v192 = *(v76 + 5);
                  _MBLog();
                }

                v105 = MBGetDefaultLog();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  v106 = v105;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                  {
                    v107 = (*(v76 + 24) >> 14) & 1;
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v107;
                    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "=diag=     exists?  %u", &buf, 8u);
                  }

                  v193 = (*(v76 + 24) >> 14) & 1;
                  _MBLog();
                }

                v108 = MBGetDefaultLog();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  v109 = v108;
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                  {
                    v110 = *(v76 + 25);
                    v111 = *(v76 + 24) >> 15;
                    buf.f_bsize = 67109376;
                    buf.f_iosize = v110;
                    LOWORD(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 2) = v111;
                    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "=diag=     payload: %u (trunc? %d)", &buf, 0xEu);
                  }

                  v194 = *(v76 + 25);
                  v217 = *(v76 + 24) >> 15;
                  _MBLog();
                }

                v112 = MBGetDefaultLog();
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  v113 = v112;
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                  {
                    v114 = v76[13];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v114;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "=diag=     refcnt:  %u", &buf, 8u);
                  }

                  v195 = v76[13];
                  _MBLog();
                }

                v115 = MBGetDefaultLog();
                if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                {
                  v116 = v115;
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                  {
                    v117 = *(v76 + 28);
                    v118 = *(v76 + 29);
                    buf.f_bsize = 67109376;
                    buf.f_iosize = v117;
                    LOWORD(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 2) = v118;
                    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "=diag=     version: %u.%u", &buf, 0xEu);
                  }

                  v196 = *(v76 + 28);
                  v218 = *(v76 + 29);
                  _MBLog();
                }

                v119 = MBGetDefaultLog();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                {
                  v120 = v119;
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                  {
                    v121 = v76[15];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v121;
                    _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "=diag=     flags:   %#x", &buf, 8u);
                  }

                  v197 = v76[15];
                  _MBLog();
                }

                v122 = MBGetDefaultLog();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  v123 = v122;
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    v124 = v76[16];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v124;
                    _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "=diag=     class:   %#x", &buf, 8u);
                  }

                  v198 = v76[16];
                  _MBLog();
                }

                v125 = MBGetDefaultLog();
                if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                {
                  v126 = v125;
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                  {
                    v127 = sub_1001EF130(v76[17]);
                    buf.f_bsize = 138412290;
                    *&buf.f_iosize = v127;
                    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "=diag=     os:      %@", &buf, 0xCu);
                  }

                  v199 = sub_1001EF130(v76[17]);
                  _MBLog();
                }

                v128 = MBGetDefaultLog();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                {
                  v129 = v128;
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                  {
                    v130 = *(v76 + 36);
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v130;
                    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "=diag=     rev:     %u", &buf, 8u);
                  }

                  v200 = *(v76 + 36);
                  _MBLog();
                }

                v131 = MBGetDefaultLog();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = v131;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    v133 = *(v76 + 37);
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v133;
                    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "=diag=     len:     %u", &buf, 8u);
                  }

                  v201 = *(v76 + 37);
                  _MBLog();
                }

                v134 = MBGetDefaultLog();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                {
                  v135 = v134;
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                  {
                    v136 = v76[83];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v136;
                    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "=diag=   refcnt:       %u", &buf, 8u);
                  }

                  v202 = v76[83];
                  _MBLog();
                }

                v137 = MBGetDefaultLog();
                if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                {
                  v138 = v137;
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v139 = v76[85];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v139;
                    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "=diag=   num extents:  %u", &buf, 8u);
                  }

                  v203 = v76[85];
                  _MBLog();
                }

                if (v76[85])
                {
                  v140 = 0;
                  v141 = v76 + 197;
                  do
                  {
                    v142 = MBGetDefaultLog();
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                    {
                      v143 = v142;
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                      {
                        v144 = *(v141 - 25);
                        v145 = *(v141 - 21);
                        v146 = *(v141 - 17);
                        buf.f_bsize = 134218496;
                        *&buf.f_iosize = v144;
                        WORD2(buf.f_blocks) = 2048;
                        *(&buf.f_blocks + 6) = v145;
                        HIWORD(buf.f_bfree) = 2048;
                        buf.f_bavail = v146;
                        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "=diag=       0x%llx:+%lld (crid %llu)", &buf, 0x20u);
                      }

                      v222 = *(v141 - 17);
                      v204 = *(v141 - 25);
                      _MBLog();
                    }

                    v147 = MBGetDefaultLog();
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                    {
                      v148 = v147;
                      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                      {
                        v149 = (*(v141 - 13) >> 14) & 1;
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v149;
                        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "=diag=       exists?  %u", &buf, 8u);
                      }

                      v205 = (*(v141 - 13) >> 14) & 1;
                      _MBLog();
                    }

                    v150 = MBGetDefaultLog();
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                    {
                      v151 = v150;
                      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                      {
                        v152 = *(v141 - 12);
                        v153 = *(v141 - 13) >> 15;
                        buf.f_bsize = 67109376;
                        buf.f_iosize = v152;
                        LOWORD(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 2) = v153;
                        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "=diag=       payload: %u (trunc? %d)", &buf, 0xEu);
                      }

                      v206 = *(v141 - 12);
                      v219 = *(v141 - 13) >> 15;
                      _MBLog();
                    }

                    v154 = MBGetDefaultLog();
                    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                    {
                      v155 = v154;
                      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                      {
                        v156 = *(v141 - 11);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v156;
                        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "=diag=       refcnt:  %u", &buf, 8u);
                      }

                      v207 = *(v141 - 11);
                      _MBLog();
                    }

                    v157 = MBGetDefaultLog();
                    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                    {
                      v158 = v157;
                      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                      {
                        v159 = *(v141 - 9);
                        v160 = *(v141 - 8);
                        buf.f_bsize = 67109376;
                        buf.f_iosize = v159;
                        LOWORD(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 2) = v160;
                        _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "=diag=       version: %u.%u", &buf, 0xEu);
                      }

                      v208 = *(v141 - 9);
                      v220 = *(v141 - 8);
                      _MBLog();
                    }

                    v161 = MBGetDefaultLog();
                    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                    {
                      v162 = v161;
                      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                      {
                        v163 = *(v141 - 7);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v163;
                        _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "=diag=       flags:   %#x", &buf, 8u);
                      }

                      v209 = *(v141 - 7);
                      _MBLog();
                    }

                    v164 = MBGetDefaultLog();
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                    {
                      v165 = v164;
                      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                      {
                        v166 = *(v141 - 5);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v166;
                        _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "=diag=       class:   %#x", &buf, 8u);
                      }

                      v210 = *(v141 - 5);
                      _MBLog();
                    }

                    v167 = MBGetDefaultLog();
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                    {
                      v168 = v167;
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                      {
                        v169 = *(v141 - 3);
                        v170 = (v169 << 8) >> 24;
                        if (v170 > 0x7F)
                        {
                          v171 = __maskrune((v169 << 8) >> 24, 0x100uLL);
                        }

                        else
                        {
                          v171 = _DefaultRuneLocale.__runetype[v170] & 0x100;
                        }

                        if (v171)
                        {
                          v172 = @"%u%c%u";
                        }

                        else
                        {
                          v172 = @"%u-%c-%u";
                        }

                        v173 = [NSString stringWithFormat:v172, HIBYTE(v169), ((v169 << 8) >> 24), v169];
                        buf.f_bsize = 138412290;
                        *&buf.f_iosize = v173;
                        _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "=diag=       os:      %@", &buf, 0xCu);
                      }

                      v174 = *(v141 - 3);
                      v175 = (v174 << 8) >> 24;
                      if (v175 > 0x7F)
                      {
                        v176 = __maskrune((v174 << 8) >> 24, 0x100uLL);
                      }

                      else
                      {
                        v176 = _DefaultRuneLocale.__runetype[v175] & 0x100;
                      }

                      if (v176)
                      {
                        v177 = @"%u%c%u";
                      }

                      else
                      {
                        v177 = @"%u-%c-%u";
                      }

                      v211 = [NSString stringWithFormat:v177, HIBYTE(v174), ((v174 << 8) >> 24), v174];
                      _MBLog();
                    }

                    v178 = MBGetDefaultLog();
                    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                    {
                      v179 = v178;
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                      {
                        v180 = *(v141 - 1);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v180;
                        _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "=diag=       rev:     %u", &buf, 8u);
                      }

                      v212 = *(v141 - 1);
                      _MBLog();
                    }

                    v181 = MBGetDefaultLog();
                    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                    {
                      v182 = v181;
                      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                      {
                        v183 = *v141;
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v183;
                        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "=diag=       len:     %u", &buf, 8u);
                      }

                      v213 = *v141;
                      _MBLog();
                    }

                    ++v140;
                    v141 += 156;
                  }

                  while (v140 < v76[85]);
                }
              }

              else
              {
                v80 = MBGetDefaultLog();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = v80;
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 136315138;
                    *&buf.f_iosize = v245;
                    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=diag= %s does not have associated crypto dstreams", &buf, 0xCu);
                  }

LABEL_205:

                  _MBLog();
                }

LABEL_206:
              }

              free(v76);
              sub_1001EF1D4(v245);
              v1 = v244;
              if (getxattr(v245, "com.apple.ResourceFork", 0, 0, 0, 0) != -1)
              {
                v88 = MBGetDefaultLog();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = v88;
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 136315138;
                    *&buf.f_iosize = v245;
                    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "=diag= %s is a compressed file", &buf, 0xCu);
                  }

                  _MBLog();
                }

                v90 = [v244 stringByAppendingPathComponent:@"/..namedfork/rsrc"];
                sub_1001EF1D4([v90 fileSystemRepresentation]);
              }

              close(v247);
            }

            v15 = MBGetDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v91 = v15;
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                buf.f_bsize = 138543362;
                *&buf.f_iosize = v1;
                _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=diag= Finished dumping diagnostics for %{public}@", &buf, 0xCu);
              }

LABEL_218:
              _MBLog();
            }

            goto LABEL_219;
          }

          if (++v33 == 500000)
          {
            v33 = 500000;
            goto LABEL_100;
          }
        }

        v38 = v34;
        v39 = *__error();
        v40 = MBGetDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v268) = 67109376;
            DWORD1(v268) = v38;
            WORD4(v268) = 1024;
            *(&v268 + 10) = v39;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r failed: %d (%{errno}d)", &v268, 0xEu);
          }

          f_iosize = v39;
          _MBLog();
        }

LABEL_100:
        closedir(v32);
        v42 = MBGetDefaultLog();
        st_ino = *v246;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 67109120;
            HIDWORD(v274.d_ino) = v33;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=diag= Failed to find the file using readdir_r (%u)", &v274, 8u);
          }

          _MBLog();
        }

        if (!*v246)
        {
          goto LABEL_126;
        }

        goto LABEL_105;
      }

      v35 = *__error();
      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v274.d_ino) = 136446466;
          *(&v274.d_ino + 4) = v9;
          WORD2(v274.d_seekoff) = 1024;
          *(&v274.d_seekoff + 6) = v35;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=diag= fdopendir failed at %{public}s: %{errno}d", &v274, 0x12u);
        }

        f_iosize = v35;
        _MBLog();
      }

      close(v25);
      st_ino = *v246;
      if (!*v246)
      {
        goto LABEL_126;
      }

LABEL_105:
      if (!f_fsid.val[0])
      {
        goto LABEL_126;
      }

      *&v268 = st_ino;
      v44 = openbyid_np();
      if (v44 == -1)
      {
        v51 = *__error();
        v52 = MBGetDefaultLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v52;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109888;
            buf.f_iosize = f_fsid.val[0];
            LOWORD(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 2) = f_fsid.val[1];
            HIWORD(buf.f_blocks) = 2048;
            buf.f_bfree = st_ino;
            LOWORD(buf.f_bavail) = 1024;
            *(&buf.f_bavail + 2) = v51;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) failed: %{errno}d", &buf, 0x1Eu);
          }

          *&v221 = st_ino;
          *(&v221 + 1) = v51;
          f_iosize = f_fsid.val[1];
          _MBLog();
        }

        goto LABEL_126;
      }

      v45 = v44;
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109632;
          buf.f_iosize = f_fsid.val[0];
          LOWORD(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 2) = f_fsid.val[1];
          HIWORD(buf.f_blocks) = 2048;
          buf.f_bfree = st_ino;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) succeeded", &buf, 0x18u);
        }

        f_iosize = f_fsid.val[1];
        *&v221 = st_ino;
        _MBLog();
      }

      v48 = pread(v45, &buf, 0x10uLL, 0);
      if (v48 == -1)
      {
        v54 = *__error();
        v50 = MBGetDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v50;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 67109120;
            HIDWORD(v274.d_ino) = v54;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=diag= pread failed: %d", &v274, 8u);
          }

          goto LABEL_124;
        }
      }

      else
      {
        v49 = v48;
        v50 = MBGetDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v50;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 134217984;
            *(&v274.d_ino + 4) = v49;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=diag= pread returned %ld bytes", &v274, 0xCu);
          }

LABEL_124:

          _MBLog();
        }
      }

      close(v45);
      goto LABEL_126;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= nil dir path FSR", &buf, 2u);
      goto LABEL_218;
    }

LABEL_219:
  }
}

void MBDiagnoseUnavailableFile(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a1;
  if (!atomic_fetch_add_explicit(&dword_100421A24, 1u, memory_order_relaxed))
  {
    v10 = a3;
    v11 = a2;
    sub_1001EB708(v9);
    v12 = MBLivePathFromSnapshotPath(v9, v11, v10);

    if (v12 && ([v9 isEqualToString:v12] & 1) == 0)
    {
      sub_1001EB708(v12);
    }

    if (MBIsInternalInstall())
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v15 = a5;
        v16 = 1024;
        v17 = a4;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "=diag= %{public}s failed with %d at %{public}@", buf, 0x1Cu);
        _MBLog();
      }
    }
  }
}

uint64_t MBDumpLsofOutputToLogDir()
{
  if (MBIsInternalInstall())
  {
    v0 = getpid();
    v45 = v0;
    v1 = +[NSProcessInfo processInfo];
    v2 = [v1 processName];

    v3 = [NSString stringWithFormat:@"%d", v0];
    v4 = +[NSDate now];
    v5 = [v4 iso8601String];
    v6 = [NSString stringWithFormat:@"lsof-%@-%@.log", v2, v5];

    v7 = MBGetLogDir();
    v8 = [v7 stringByAppendingPathComponent:v6];

    v44 = 0;
    if (posix_spawn_file_actions_init(&v44))
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=diag= posix_spawn_file_actions_init() failed: %{errno}d", buf, 8u);
        v34 = *__error();
        _MBLog();
      }

LABEL_11:
      v11 = 0;
LABEL_12:

      return v11 & 1;
    }

    v43 = 0;
    if (posix_spawnattr_init(&v43))
    {
      posix_spawn_file_actions_destroy(&v44);
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *__error();
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=diag= posix_spawn_file_actions_init() failed: %{errno}d", buf, 8u);
        v35 = *__error();
        _MBLog();
      }

      goto LABEL_11;
    }

    v15 = v8;
    if (posix_spawn_file_actions_addopen(&v44, 1, [v8 fileSystemRepresentation], 513, 0x1EDu))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *__error();
          *buf = 67109120;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=diag= posix_spawn_file_actions_addopen() failed: %{errno}d", buf, 8u);
        }

        v36 = *__error();
        _MBLog();
      }

LABEL_25:

      v11 = 0;
LABEL_26:
      posix_spawn_file_actions_destroy(&v44);
      posix_spawnattr_destroy(&v43);
      goto LABEL_12;
    }

    if (posix_spawnattr_setflags(&v43, 0x4000))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = v16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *__error();
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=diag= posix_spawnattr_setflags() failed: %{errno}d", buf, 8u);
        }

        v37 = *__error();
        _MBLog();
      }

      goto LABEL_25;
    }

    v52 = 0;
    v53 = 0;
    *buf = "lsof";
    v51 = "-p";
    v21 = v3;
    v52 = [v3 UTF8String];
    v53 = 0;
    if (posix_spawn(&v45, "/usr/sbin/lsof", &v44, 0, buf, 0))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = v16;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *__error();
          *v46 = 67109120;
          LODWORD(v47) = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=diag= posix_spawn() failed: %{errno}d", v46, 8u);
        }

        v38 = *__error();
        _MBLog();
      }

      goto LABEL_25;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 136315394;
      v47 = v51;
      v48 = 2080;
      v49 = v52;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=diag= Spawned /usr/sbin/lsof %s %s", v46, 0x16u);
      v33 = v51;
      v40 = v52;
      _MBLog();
    }

    v42 = 0;
    if (waitpid(v45, &v42, 0) == -1)
    {
      if ((v42 & 0x7F) != 0)
      {
        if ((v42 & 0x7F) == 0x7F)
        {
          if (v42 >> 8 == 19)
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v25 = v25;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = *__error();
                *v46 = 67109120;
                LODWORD(v47) = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=diag= waitpid() failed: %{errno}d", v46, 8u);
              }

              v39 = *__error();
              _MBLog();
            }

            goto LABEL_57;
          }

          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=diag= lsof stopped", v46, 2u);
            _MBLog();
          }
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v46 = 67109120;
            LODWORD(v47) = v42 & 0x7F;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=diag= lsof was terminated by signal %d", v46, 8u);
            v33 = (v42 & 0x7F);
            _MBLog();
          }
        }
      }

      else
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=diag= lsof exited", v46, 2u);
          _MBLog();
        }
      }
    }

    v28 = [NSFileManager defaultManager:v33];
    v41 = 0;
    v29 = [v28 mb_markAsPurgeableItemAtPath:v8 error:&v41];
    v25 = v41;

    if (v29)
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 138412290;
        v47 = v8;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=diag= Dumped lsof output to %@", v46, 0xCu);
        _MBLog();
      }

      v11 = 1;
      goto LABEL_58;
    }

    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 138412290;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=diag= Failed to mark item as purgeable at %@", v46, 0xCu);
      _MBLog();
    }

    v32 = v8;
    unlink([v8 fileSystemRepresentation]);
LABEL_57:
    v11 = 0;
LABEL_58:

    goto LABEL_26;
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1001EF080(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001EEBD0);
  }

  _Unwind_Resume(exception_object);
}

id sub_1001EF130(unsigned int a1)
{
  v2 = ((a1 << 8) >> 24);
  if (v2 > 0x7F)
  {
    v3 = __maskrune((a1 << 8) >> 24, 0x100uLL);
  }

  else
  {
    v3 = _DefaultRuneLocale.__runetype[v2] & 0x100;
  }

  if (v3)
  {
    v4 = @"%u%c%u";
  }

  else
  {
    v4 = @"%u-%c-%u";
  }

  v5 = [NSString stringWithFormat:v4, HIBYTE(a1), v2, a1];

  return v5;
}

void sub_1001EF1D4(const char *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xD59A0561uLL);
  if (!v2)
  {
    __assert_rtn("_getNumberOfFileExtents", "MBDiagnostics.m", 32, "ds_buffer");
  }

  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v31 = 0u;
  v30 = 0u;
  v24 = xmmword_1002BA150;
  v25 = 0;
  v26 = v2;
  v28 = 0;
  v29 = 0;
  v27 = 16;
  if (fsctl(a1, 0xC0584A1EuLL, &v24, 0))
  {
    free(v3);
    v4 = MBGetDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return;
    }

    v5 = *__error();
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d", buf, 8u);
    v18 = *__error();
LABEL_5:
    _MBLog();
    goto LABEL_6;
  }

  if (!v29)
  {
    free(v3);
    v4 = MBGetDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) returned zero buffer entries", buf, 2u);
    goto LABEL_5;
  }

  v6 = malloc_type_malloc(0x4E200uLL, 0x100004071F2C783uLL);
  if (v6)
  {
    v7 = v6;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v3;
      v10 = v3[1];
      *buf = 134218240;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=diag= Dstream id %llu, dstream size %llu bytes", buf, 0x16u);
      v19 = *v3;
      v22 = v3[1];
      _MBLog();
    }

    for (i = 0; ; i = *(v12 - 7) + *(v12 - 8))
    {
      bzero(v7, 0x4E200uLL);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *buf = xmmword_1002BA160;
      *&buf[16] = 10;
      v35 = v7;
      v36 = 320000;
      v37 = i;
      v38 = *v3;
      v39 = 0;
      if (fsctl(a1, 0xC0584A1EuLL, buf, 0))
      {
        v16 = MBGetDefaultLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        v17 = *__error();
        *v32 = 67109376;
        *v33 = v17;
        *&v33[4] = 2048;
        *&v33[6] = i;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d, cannot get extents at offset %lld", v32, 0x12u);
        v21 = *__error();
        goto LABEL_23;
      }

      if (!v39)
      {
        break;
      }

      v12 = &v7[64 * v39];
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v12 - 8);
        v15 = *(v12 - 7);
        *v32 = 134218240;
        *v33 = v14;
        *&v33[8] = 2048;
        *&v33[10] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=diag= Extent offset %lld and length %lld", v32, 0x16u);
        v20 = *(v12 - 8);
        v23 = *(v12 - 7);
        _MBLog();
      }
    }

    v16 = MBGetDefaultLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v32 = 134217984;
    *v33 = i;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) for FUSION_DEBUG_STATS_PURE_FEXTS_ONLY returned zero buffer entries at offset %lld", v32, 0xCu);
LABEL_23:
    _MBLog();
LABEL_24:

    free(v7);
  }

  free(v3);
}

id sub_1001F1CB0(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_1001F1E28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 creationDate];
  v5 = v4;
  if (v4 && [v4 compare:*(a1 + 32)] == -1)
  {
    v7 = [v3 name];
    v6 = [v7 hasPrefix:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MBSnapshotNameWithCurrentDate(void *a1)
{
  v1 = a1;
  v2 = +[NSDate now];
  v3 = objc_alloc_init(NSDateFormatter);
  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyy-MM-dd.HH:mm:ss"];
  v5 = +[NSTimeZone localTimeZone];
  [v3 setTimeZone:v5];

  v6 = [NSString alloc];
  v7 = [v3 stringFromDate:v2];
  v8 = [v6 initWithFormat:@"%@-%@", v1, v7];

  return v8;
}

id MBSnapshotPathFromLivePath(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    __assert_rtn("MBSnapshotPathFromLivePath", "MBFileSystemManager.m", 771, "!snapshotPath || volumeMountPoint");
  }

  if (![v6 length])
  {
    v5 = v5;
    v11 = v5;
    goto LABEL_34;
  }

  if (![v5 length])
  {
    v9 = v8;

    v5 = v9;
  }

  v10 = @"/private/var";
  if ([v8 isEqualToString:@"/private/var"])
  {
    if ([v5 hasPrefix:@"/var/"])
    {
      v10 = @"/var";
    }

    else if (![v5 hasPrefix:@"/private/var/"])
    {
      v10 = 0;
    }
  }

  else
  {
    if ([v5 hasPrefix:@"/private/var/"])
    {
      v12 = [v5 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v5 = v12;
    }

    if ([v5 hasPrefix:@"/var/"])
    {
      if ([v8 hasPrefix:@"/private/var/"])
      {
        v13 = [v8 substringFromIndex:{objc_msgSend(@"/private", "length")}];
      }

      else
      {
        v13 = v8;
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = [v5 length];
  v15 = [(__CFString *)v10 length];
  v16 = v15;
  if (!v10 || v14 != v15)
  {
    if (!v10)
    {
LABEL_32:
      v17 = v5;
      goto LABEL_33;
    }

LABEL_26:
    if ([v5 hasPrefix:v10] && v14 != v16 && objc_msgSend(v5, "characterAtIndex:", v16) == 47)
    {
      if ([v5 rangeOfString:v10] || !v18)
      {
        __assert_rtn("MBSnapshotPathFromLivePath", "MBFileSystemManager.m", 810, "r.location == 0 && 0 < r.length");
      }

      v17 = [v5 stringByReplacingCharactersInRange:0 withString:{v18, v6}];
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![v5 hasPrefix:v10])
  {
    goto LABEL_26;
  }

  v17 = v6;
LABEL_33:
  v11 = v17;

LABEL_34:

  return v11;
}

id MBLivePathFromSnapshotPath(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v8 hasPrefix:v9])
  {
    goto LABEL_4;
  }

  v11 = [v9 length];
  if (v11 > [v8 length])
  {
    goto LABEL_4;
  }

  if ([v8 rangeOfString:v9])
  {
    __assert_rtn("replaceSnapshotMountPointPrefix", "MBFileSystemManager.m", 831, "range.location == 0");
  }

  v16 = v15;
  if (v15 == [v8 length])
  {
    v12 = v10;
  }

  else
  {
    if ([v8 characterAtIndex:v16] != 47)
    {
LABEL_4:
      v12 = v8;
      goto LABEL_5;
    }

    v12 = [v8 stringByReplacingCharactersInRange:0 withString:{v16, v10}];
  }

LABEL_5:
  v13 = v12;

  return v13;
}

void sub_1001F4570(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  Name = class_getName(v2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create(Name, v4);
  v6 = qword_100421A30;
  qword_100421A30 = v5;
}

void sub_1001F5D78(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:v4];
}

void sub_1001F6178(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.saveAccount", attr);
  v3 = qword_100421A40;
  qword_100421A40 = v2;
}

void sub_1001F61FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == [*(a1 + 32) isEnabledForDataclass:*(a1 + 40)])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      *buf = 138543874;
      v19 = v4;
      v20 = 2114;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No need to save the %{public}@ state for account %{public}@: %d", buf, 0x1Cu);
      v11 = *(a1 + 48);
      v12 = *(a1 + 64);
      v10 = *(a1 + 40);
      _MBLog();
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v7);
  }

  else
  {
    [*(a1 + 32) setEnabled:*(a1 + 64) forDataclass:*(a1 + 40)];
    v8 = +[ACAccountStore defaultStore];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001F63D8;
    v13[3] = &unk_1003C1600;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = *(a1 + 64);
    v16 = *(a1 + 56);
    [v8 saveAccount:v9 withCompletionHandler:v13];
  }
}

void sub_1001F63D8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 1024;
      LODWORD(v24) = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved the %{public}@ state for account %{public}@: %d", buf, 0x1Cu);
      v16 = *(a1 + 40);
      v18 = *(a1 + 56);
      v14 = *(a1 + 32);
      _MBLog();
    }

    v7 = v5;
    v5 = 0;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save %{public}@ state for account %{public}@: %@", buf, 0x20u);
    v17 = *(a1 + 40);
    v15 = *(a1 + 32);
    _MBLog();
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v13);
}

void sub_1001F6994(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  if (v4)
  {
    v5 = +[ACAccountStore defaultStore];
    [v5 renewCredentialsForAccount:v4 completion:&stru_1003C1648];
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to retrieve account, cannot renew credentials", v6, 2u);
      _MBLog();
    }
  }
}

void sub_1001F6A88(id a1, int64_t a2, NSError *a3)
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MBServiceAccount _stringForAccountCredentialRenewResult:a2];
    *buf = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Account credentials %@ (%d)", buf, 0x12u);

    v6 = [MBServiceAccount _stringForAccountCredentialRenewResult:a2];
    _MBLog();
  }
}

void sub_1001F6DEC(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating account", buf, 2u);
      _MBLog();
    }

    v7 = +[ACAccountStore defaultStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001F6FEC;
    v10[3] = &unk_1003BFB18;
    v10[4] = *(a1 + 32);
    v11 = v4;
    v12 = *(a1 + 40);
    [v7 aa_updatePropertiesForAppleAccount:v11 completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No primary account found to update", buf, 2u);
      _MBLog();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [MBError errorWithCode:1 format:@"No primary account found to update"];
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_1001F6FEC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updated account", buf, 2u);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [MBError descriptionForError:v5];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error updating account: %@", buf, 0xCu);

    v10 = [MBError descriptionForError:v5];
    _MBLog();
  }

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:*(a1 + 40)];
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void sub_1001F72A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F72CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F72E4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001F746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F7484(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v9 = [v2 accountWithIdentifier:v3];

  if (v9)
  {
    v4 = [v9 username];
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v4 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_1001F764C(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [*(a1 + 32) accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Re-authenticating account", buf, 2u);
      _MBLog();
    }

    [v4 aa_setPassword:&stru_1003C3430];
    [v4 aa_setPassword:*(a1 + 40)];
    v7 = +[ACAccountStore defaultStore];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001F7854;
    v10[3] = &unk_1003C1698;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v7 verifyCredentialsForAccount:v4 withHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No primary account found to update", buf, 2u);
      _MBLog();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [MBError errorWithCode:1 format:@"No primary account found to update"];
      (*(v8 + 16))(v8, v9);
    }
  }
}

void sub_1001F7854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Authenticated account", buf, 2u);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MBError descriptionForError:v6];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error authenticating account: %@", buf, 0xCu);

    v14 = [MBError descriptionForError:v6];
    _MBLog();
  }

  v10 = +[ACAccountStore defaultStore];
  v11 = [*(a1 + 32) accountIdentifier];
  v12 = [v10 accountWithIdentifier:v11];

  [*(a1 + 32) _reloadAccountPropertiesFromACAccount:v12];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v6);
  }
}

void sub_1001F7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1001F7BA0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001F801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001F8064(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001F8868(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    __assert_rtn("[MBATCBundlesPlugin _populatePathsForEngine:domain:dataclass:allBackupPaths:]_block_invoke", "MBATCBundlesPlugin.m", 68, "path");
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v9)
    {
      v13 = *(a1 + 32);
      *buf = 138412802;
      v23 = v13;
      v24 = 2048;
      v25 = a3;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: attrs:0x%lx, pathNotToBackup:%@", buf, 0x20u);
      v20 = a3;
      v21 = v5;
      v17 = *(a1 + 32);
      _MBLog();
    }

    v11 = [*(a1 + 40) standardizedRelativePathFor:v5];
    v14 = *(a1 + 64);
    goto LABEL_12;
  }

  if (v9)
  {
    v10 = *(a1 + 32);
    *buf = 138412802;
    v23 = v10;
    v24 = 2048;
    v25 = a3;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: attrs:0x%lx, pathToBackup:%@", buf, 0x20u);
    v20 = a3;
    v21 = v5;
    v17 = *(a1 + 32);
    _MBLog();
  }

  if ((a3 & 2) != 0 && (*(a1 + 72) - 3) >= 0xFFFFFFFE)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping redownloadable path: %@", buf, 0x16u);
      v18 = *(a1 + 32);
      _MBLog();
    }

    goto LABEL_13;
  }

  v11 = [*(a1 + 40) standardizedRelativePathFor:{v5, v17, v20, v21}];
  if (![*(a1 + 48) containsObject:v11])
  {
    [*(a1 + 48) addObject:v11];
    v14 = *(a1 + 56);
LABEL_12:
    [v14 addObject:{v11, v17, v20, v21}];
    goto LABEL_13;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138412546;
    v23 = v16;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping duplicate path: %@", buf, 0x16u);
    v19 = *(a1 + 32);
    _MBLog();
  }

LABEL_13:
  objc_autoreleasePoolPop(v7);
}

void sub_1001F96D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = [v5 purchaserDSID];
  v7 = v6;
  if (v6 && ([v6 isEqualToNumber:&off_1003E0FF0] & 1) == 0 && (objc_msgSend(*(a1 + 32), "containsObject:", v7) & 1) == 0)
  {
    if ([*(a1 + 40) addAccountWithDSID:v7])
    {
      v8 = [*(a1 + 48) accountWithUniqueIdentifier:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 accountName];
        v11 = [v9 uniqueIdentifier];
        v12 = [v11 stringValue];

        v13 = [v9 altDSID];
        [*(a1 + 56) addAppleID:v10 DSID:v12 altDSID:v13 dataClass:0];
        if ((*(a1 + 72) & 1) == 0)
        {
          v14 = *(a1 + 56);
          v15 = [v5 localizedNameForContext:0];
          [v14 addAssetDescriptionForAppleID:v10 assetDescription:v15];
        }

        [*(a1 + 32) addObject:v7];
      }

      else
      {
        v18 = *(a1 + 64);
        v19 = [v7 stringValue];
        v10 = [v18 aa_appleAccountWithPersonID:v19];

        if (!v10)
        {
LABEL_17:

          goto LABEL_18;
        }

        v12 = [v10 username];
        v13 = [v10 aa_personID];
        v20 = [v10 aa_altDSID];
        [*(a1 + 56) addAppleID:v12 DSID:v13 altDSID:v20 dataClass:0];
        if ((*(a1 + 72) & 1) == 0)
        {
          v23 = *(a1 + 56);
          v21 = [v5 localizedNameForContext:0];
          [v23 addAssetDescriptionForAppleID:v12 assetDescription:v21];
        }

        [*(a1 + 32) addObject:v7];
      }

      goto LABEL_17;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v5 applicationIdentifier];
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= Skipping %@ for account %@", buf, 0x16u);

      v22 = [v5 applicationIdentifier];
      _MBLog();
    }
  }

LABEL_18:

  objc_autoreleasePoolPop(v4);
}

uint64_t MBCanRestoreSystemFilesBetweenProductClasses(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v5 = [MBPersona personalPersonaWithError:0];
  v6 = [v5 getBooleanValueForKey:@"AlwaysRestoreSystemFiles" keyExists:&v12];
  if (v12)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = [v3 isEqualToString:@"iPad"];
    v9 = [v4 isEqualToString:@"iPad"];
    v10 = v8 & v9 | (v8 | v9) ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t BackupStatusMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(BackupStatusKeyAndValue);
    [a1 addKeysAndValues:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !BackupStatusKeyAndValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001FC7B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FCAE4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001FC9F4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FD23C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(*(a1 + 32) + 16) isEqualToString:@"PlaceholderDomain"])
  {
    v9[0] = @"CREATE TABLE IF NOT EXISTS CumulativeDomainList (domainID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE, domainHMAC TEXT NOT NULL, isSystemApp INTEGER NOT NULL);";
    v9[1] = @"CREATE INDEX CumulativeDomainListDomainHMACIdx ON CumulativeDomainList(domainHMAC)";
    v9[2] = @"CREATE TABLE IF NOT EXISTS DomainDependencies(parentDomainID INTEGER NOT NULL, childDomainID INTEGER NOT NULL, PRIMARY KEY (parentDomainID, childDomainID));";
    v6 = [NSArray arrayWithObjects:v9 count:3];
    v7 = [v5 executeStatements:v6 error:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_1001FD320(id a1, PQLConnection *a2, PQLStatement *a3, NSError *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SQLite statement %@ failed with error: %@", buf, 0x16u);
    _MBLog();
  }
}

void sub_1001FD6DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001FD608);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FDE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FDE30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1001FDE48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [objc_opt_class() _fileMetadataForPath:*(a1 + 40) fetchXattrs:*(a1 + 56) db:v6 error:a3];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void sub_1001FDFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FE000(uint64_t a1, void *a2)
{
  v3 = [a2 uuidAtIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t sub_1001FE798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) _markAllFilesAsDeleted:?])
  {
    v5 = *(a1 + 32);
    v25 = 0;
    v6 = [v5 _fetchVolumeUUID:&v25 error:a3];
    v7 = v25;
    if (!v6)
    {
      goto LABEL_22;
    }

    if (![*(a1 + 40) compare:v7])
    {
LABEL_21:
      v14 = 1;
      goto LABEL_23;
    }

    if (v7)
    {
      v24 = 0;
      if (![*(a1 + 32) canReuseAssetsAcrossVolumeTransition:&v24 + 1 isResuming:&v24 error:a3])
      {
        goto LABEL_22;
      }

      if ((v24 & 0x100) != 0)
      {
        v8 = v24;
        v9 = MBGetDefaultLog();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8 == 1)
        {
          if (v10)
          {
            v11 = *(a1 + 40);
            v12 = [*(a1 + 32) domainName];
            *buf = 138412802;
            v27 = v7;
            v28 = 2112;
            v29 = v11;
            v30 = 2112;
            v31 = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resuming volumeUUID transition from %@ to %@ for %@", buf, 0x20u);

            v13 = *(a1 + 40);
            [*(a1 + 32) domainName];
            v23 = v22 = v13;
            v21 = v7;
            _MBLog();
          }

LABEL_20:
          [*(a1 + 32) setVolumeUUIDToUpdateAfterTranscription:{*(a1 + 40), v21, v22, v23}];
          goto LABEL_21;
        }

        if (v10)
        {
          v17 = *(a1 + 40);
          v18 = [*(a1 + 32) domainName];
          *buf = 138412802;
          v27 = v7;
          v28 = 2112;
          v29 = v17;
          v30 = 2112;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "VolumeUUID transition detected %@ != %@ for %@", buf, 0x20u);

          v19 = *(a1 + 40);
          [*(a1 + 32) domainName];
          v23 = v22 = v19;
          v21 = v7;
          _MBLog();
        }

        if ([*(a1 + 32) _adjustInodesForVolumeTransition:a3])
        {
          goto LABEL_20;
        }

LABEL_22:
        v14 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [*(a1 + 32) domainName];
        *buf = 138412290;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Detected initial transcription for %@", buf, 0xCu);

        v21 = [*(a1 + 32) domainName];
        _MBLog();
      }
    }

    if ([*(a1 + 32) _truncateDeletedFiles:{a3, v21}])
    {
      v14 = [*(a1 + 32) _setVolumeUUID:*(a1 + 40) error:a3];
LABEL_23:

      return v14;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_1001FECFC(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  [*(a1 + 32) getNode:&v33];
  v4 = *(&v35 + 1);
  v5 = *(&v34 + 1);
  v29 = v34;
  v30 = v36;
  v6 = v35;
  v7 = WORD2(v37);
  v8 = BYTE6(v37);
  v9 = DWORD1(v33);
  v10 = DWORD2(v33);
  v11 = HIDWORD(v33);
  v12 = [*(a1 + 32) xattrs];
  LODWORD(v10) = [v31 executeWithError:a3 sql:{@"INSERT OR REPLACE INTO FileMetadata(inode, size, birth, modified, statusChanged, userID, groupID, mode, flags, protectionClass, xattrs, relativePath) VALUES (%llu, %llu, %lu, %lu, %lu, %d, %d, %d, %d, %d, %@, %@);", v30, v4, v29, v5, v6, v9, v10, v7, v11, v8, v12, *(a1 + 40)}];

  if (v10)
  {
    v13 = WORD2(v37) & 0xF000;
    if (v13 != 0x4000)
    {
      if (v13 == 40960)
      {
        v19 = v36;
        v15 = [*(a1 + 32) linkTarget];
        v18 = [v31 executeWithError:a3 sql:{@"INSERT OR REPLACE INTO SymlinkTargets(inode, targetPath) VALUES (%llu, %@);", v19, v15}];
LABEL_20:

        goto LABEL_21;
      }

      if (v13 != 0x8000)
      {
        __assert_rtn("[MBFileListDB setFileMetadata:forPath:error:]_block_invoke", "MBFileListDB.m", 634, "0");
      }

      v14 = [*(a1 + 32) assetMetadata];
      if (!v14)
      {
        __assert_rtn("[MBFileListDB setFileMetadata:forPath:error:]_block_invoke", "MBFileListDB.m", 603, "assetMetadata");
      }

      v15 = v14;
      if (!*(&v35 + 1))
      {
        if ([v14 assetType] != 4)
        {
          __assert_rtn("[MBFileListDB setFileMetadata:forPath:error:]_block_invoke", "MBFileListDB.m", 605, "assetMetadata.assetType == MBAssetTypeEmptyRegularFile");
        }

        goto LABEL_19;
      }

      v16 = [v14 assetSignature];
      if (!v16 || ([v15 recordIDSuffix], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        [v15 assetSignature];
        if (objc_claimAutoreleasedReturnValue() || ([v15 recordIDSuffix], objc_claimAutoreleasedReturnValue()))
        {
          __assert_rtn("[MBFileListDB setFileMetadata:forPath:error:]_block_invoke", "MBFileListDB.m", 607, "(assetMetadata.assetSignature != nil && assetMetadata.recordIDSuffix != nil) || (assetMetadata.assetSignature == nil && assetMetadata.recordIDSuffix == nil)");
        }

        if (!v16)
        {
          goto LABEL_14;
        }

        v17 = 0;
      }

LABEL_14:
LABEL_19:
      v20 = v36;
      v21 = DWORD2(v36);
      v22 = [v15 recordIDSuffix];
      v23 = [v15 compressionMethod];
      v24 = [v15 assetType];
      v25 = [v15 assetSize];
      v26 = [v15 assetSignature];
      v27 = [v15 encryptionKey];
      v18 = [v31 executeWithError:a3 sql:{@"INSERT OR REPLACE INTO Assets(inode, genCount, recordIDSuffix, compressionMethod, assetType, assetSize, assetSignature, encryptionKey) VALUES (%llu, %u, %@, %u, %llu, %llu, %@, %@);", v20, v21, v22, v23, v24, v25, v26, v27}];

      goto LABEL_20;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:

  return v18;
}

uint64_t sub_1001FF13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) _truncateDeletedFiles:?])
  {
    v5 = [*(a1 + 32) volumeUUIDToUpdateAfterTranscription];
    if (v5)
    {
      if (![*(a1 + 32) _setVolumeUUID:v5 error:a3])
      {
        v6 = 0;
        goto LABEL_8;
      }

      [*(a1 + 32) setVolumeUUIDToUpdateAfterTranscription:0];
    }

    v6 = 1;
LABEL_8:

    return v6;
  }

  return 0;
}

uint64_t sub_1001FF28C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 unsignedLongLongAtIndex:0];
  v4 = [v3 stringAtIndex:1];

  v5 = (*(*(a1 + 32) + 16))();
  return v5;
}

uint64_t sub_1001FF3F4(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = [a2 fileWithDomain:*(a1 + 32) fromIndex:&v6];
  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

uint64_t sub_1001FF558(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 stringAtIndex:0];
  v6 = a1[4];
  v7 = [objc_opt_class() _fileMetadataForPath:v5 fetchXattrs:1 db:a1[5] error:a3];
  v8 = (*(a1[6] + 16))();

  return v8;
}

uint64_t sub_1001FF6C4(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

void sub_1001FF840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FF85C(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  v4 = [NSString stringWithFormat:@"%@:%@", *(a1 + 32), v3];
  *(*(*(a1 + 40) + 8) + 24) ^= MBSimpleChecksumForString();

  return 1;
}

id sub_1001FF97C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 fetch:{@"SELECT (mode & %d), COUNT(*) FROM FileMetadata GROUP BY (mode & %d)", 61440, 61440}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FFABC;
  v11[3] = &unk_1003C1878;
  v11[4] = *(a1 + 32);
  if ([v6 enumerateWithError:a3 block:v11])
  {
    v7 = [v5 fetch:{@"SELECT assetType, COUNT(*) FROM Assets GROUP BY assetType"}];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001FFBE8;
    v10[3] = &unk_1003C1878;
    v10[4] = *(a1 + 32);
    v8 = [v7 enumerateWithError:a3 block:v10];
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1001FFABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedShortAtIndex:0];
  v5 = [v3 unsignedLongLongAtIndex:1];

  switch(v4)
  {
    case 0x4000u:
      *(*(a1 + 32) + 24) = v5;
      break;
    case 0xA000u:
      *(*(a1 + 32) + 32) = v5;
      break;
    case 0x8000u:
      *(*(a1 + 32) + 8) = v5;
      break;
    default:
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Unexpected mode fmt 0%o", buf, 8u);
        _MBLog();
      }

      break;
  }

  return 1;
}

uint64_t sub_1001FFBE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedLongLongAtIndex:0];
  v5 = [v3 unsignedLongLongAtIndex:1];

  v6 = *(a1 + 32);
  if (v4 == 4)
  {
    v6[2] = v5;
  }

  else
  {
    *v6 += v5;
  }

  return 1;
}

void sub_1001FFF0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id sub_10020016C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a3)
  {
    __assert_rtn("[MBPlaceholderFileListDB updateDomainListWithServerDomainHMACs:domainsInCurrentSnapshot:systemAppsInCurrentSnapshot:modifiedDomainDependencies:hmacKey:error:]_block_invoke", "MBFileListDB.m", 836, "transactionError");
  }

  v6 = v5;
  if (![v5 executeWithError:a3 sql:@"CREATE TEMPORARY TABLE TempDomainHMACList (domainHMAC PRIMARY KEY)"])
  {
    goto LABEL_45;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v67;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![v6 executeWithError:a3 sql:{@"INSERT OR REPLACE INTO TempDomainHMACList (domainHMAC) VALUES (%@)", *(*(&v66 + 1) + 8 * i)}])
        {
LABEL_48:
          v37 = 0;
          goto LABEL_49;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v9);
  }

  if (![v6 executeWithError:a3 sql:@"DELETE FROM CumulativeDomainList WHERE domainHMAC NOT IN(SELECT domainHMAC FROM TempDomainHMACList)"] || !objc_msgSend(v6, "executeWithError:sql:", a3, @"DROP TABLE IF EXISTS TempDomainHMACList") || !objc_msgSend(v6, "executeWithError:sql:", a3, @"DELETE FROM DomainDependencies WHERE parentDomainID NOT IN( SELECT domainID FROM CumulativeDomainList) OR childDomainID NOT IN( SELECT domainID FROM CumulativeDomainList)"))
  {
LABEL_45:
    v37 = 0;
    goto LABEL_50;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = *(a1 + 40);
  v12 = [v7 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v62 + 1) + 8 * j);
        v17 = MBDomainHMACForDomainName(v16, *(a1 + 48));
        LODWORD(v16) = [v6 executeWithError:a3 sql:{@"INSERT OR IGNORE INTO CumulativeDomainList (domain, domainHMAC, isSystemApp) VALUES (%@, %@, %d)", v16, v17, objc_msgSend(*(a1 + 56), "containsObject:", v16)}];

        if (!v16)
        {
          goto LABEL_48;
        }
      }

      v13 = [v7 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v13);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = *(a1 + 64);
  v19 = [v18 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (!v19)
  {
    v21 = 0;
    goto LABEL_52;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v59;
  while (2)
  {
    v23 = 0;
    do
    {
      if (*v59 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v45 = v23;
      v24 = *(*(&v58 + 1) + 8 * v23);
      v25 = objc_opt_class();
      v56 = v21;
      v57 = 0;
      v26 = [v6 fetchObjectOfClass:v25 outObject:&v57 error:&v56 sql:{@"SELECT domainID FROM CumulativeDomainList WHERE domain= %@", v24}];
      v48 = v57;
      v7 = v56;

      if (!v26)
      {
LABEL_53:

LABEL_47:
        goto LABEL_48;
      }

      if (!v48)
      {
        *a3 = [MBError errorWithCode:4 format:@"domainID not found for %@", v24];
        goto LABEL_47;
      }

      if (![v6 executeWithError:a3 sql:{@"DELETE FROM DomainDependencies WHERE parentDomainID = %@", v24}])
      {
        goto LABEL_53;
      }

      v27 = [*(a1 + 64) objectForKeyedSubscript:v24];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v27;
      v28 = [obj countByEnumeratingWithState:&v52 objects:v70 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v53;
        v21 = v7;
        v46 = v18;
        v43 = v20;
        v44 = v22;
        while (2)
        {
          v31 = 0;
          v32 = v21;
          do
          {
            if (*v53 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v52 + 1) + 8 * v31);
            v34 = objc_opt_class();
            v50 = v32;
            v51 = 0;
            v35 = [v6 fetchObjectOfClass:v34 outObject:&v51 error:&v50 sql:{@"SELECT domainID FROM CumulativeDomainList WHERE domain= %@", v33}];
            v36 = v51;
            v21 = v50;

            if (!v35 || v36 && ![v6 executeWithError:a3 sql:{@"INSERT OR IGNORE INTO DomainDependencies (parentDomainID, childDomainID) VALUES (%llu, %llu)", objc_msgSend(v48, "unsignedLongLongValue"), objc_msgSend(v36, "unsignedLongLongValue")}])
            {

              v7 = v21;
              v18 = v46;
              goto LABEL_47;
            }

            v31 = v31 + 1;
            v32 = v21;
          }

          while (v29 != v31);
          v29 = [obj countByEnumeratingWithState:&v52 objects:v70 count:16];
          v18 = v46;
          v20 = v43;
          v22 = v44;
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v21 = v7;
      }

      v23 = v45 + 1;
    }

    while ((v45 + 1) != v20);
    v20 = [v18 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_52:

  v39 = +[NSDate now];
  [v39 timeIntervalSince1970];
  v41 = v40;

  v49 = v41;
  v42 = [NSData dataWithBytes:&v49 length:8];
  v37 = [*(a1 + 72) _setPropertyValue:v42 forKey:@"domainListUpdateDate" error:a3];

  v7 = v21;
LABEL_49:

LABEL_50:
  return v37;
}

uint64_t sub_10020080C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];
  [v3 BOOLAtIndex:2];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

uint64_t sub_100200988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

uint64_t sub_100200AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 lastPathComponent];
  v7 = [v6 pathExtension];
  v8 = [v7 isEqualToString:@"ipa"];

  if (v8)
  {
    v9 = [v6 stringByDeletingPathExtension];
    v10 = [MBDomain nameWithAppID:v9];
    [v5 size];
    v11 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_100201DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 48));
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100201E00(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 64) + 8) + 24);
  v4 = [v3 recordID];
  v5 = [v4 recordName];
  v6 = [MBCKFile fileIDFromRecordName:v5];

  v7 = *(a1 + 32);
  v53 = 0;
  v8 = [v7 fetchFileFromFileID:v6 error:&v53];
  v9 = v53;
  v10 = v9;
  if (v8)
  {
    v50 = v9;
    v11 = [*(a1 + 40) domainManager];
    v12 = [v8 domainName];
    v13 = [v11 domainForName:v12];

    [v8 setupWithDomain:v13];
    [v8 refreshWithRecord:v3];
    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) ckOperationTracker];
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) device];
    v52 = 0;
    LOBYTE(v14) = [v8 stashAssetsToTemporaryDirectoryWithAccount:v14 operationTracker:v15 cache:v16 device:v17 error:&v52];
    v18 = v52;

    if ((v14 & 1) == 0)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v8;
        v56 = 2112;
        v57 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Prefetch: Failed to stash downloaded asset for %@: %@", buf, 0x16u);
        _MBLog();
      }

      goto LABEL_34;
    }

    v19 = [v8 size];
    v20 = [v8 resourcesSize];
    v21 = [v8 stashedAssetPath];
    if (!v21)
    {
      v28 = [v8 stashedResourcePath];

      if (!v28)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (![v8 stashedAssetIsDecrypted]|| ![v8 hasContentEncodingMethod])
    {
LABEL_32:
      v41 = [*(a1 + 32) updateFile:{v8, v43, v44, v45}];
LABEL_33:
      v42 = [*(a1 + 56) progressModel];
      [v42 finishedTransferringItem:v8 size:&v19[v20]];

LABEL_34:
      v10 = v50;
      goto LABEL_35;
    }

    v48 = v20;
    v22 = [v8 decodedAssetPath];
    v47 = v19;
    if (v22)
    {
      v23 = v22;
      v24 = +[NSFileManager defaultManager];
      v25 = [v24 fileExistsAtPath:v23];

      if (v25)
      {
        v19 = v47;
LABEL_31:

        v20 = v48;
        goto LABEL_32;
      }

      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v23;
        v56 = 2112;
        v57 = v8;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Prefetch: Missing decoded asset at %@ for %@", buf, 0x16u);
        v43 = v23;
        v44 = v8;
        _MBLog();
      }

      v19 = v47;
    }

    v30 = [*(a1 + 48) persona];
    v31 = [v8 domain];
    v49 = [v30 restorePrefetchDirectoryForDomain:v31];

    v51 = v18;
    LOBYTE(v30) = [v8 decodeWithFileAtPath:v21 destinationDirectory:v49 error:&v51];
    v32 = v51;

    v33 = [v8 decodedAssetPath];
    v46 = v32;
    if (v30)
    {
      if (!v33)
      {
        __assert_rtn("[MBCKRestoreFilePrefetchEngine _prefetchBatch]_block_invoke", "MBCKRestoreFilePrefetchEngine.m", 198, "restorable.decodedAssetPath");
      }

      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v8 decodedAssetPath];
        *buf = 138412802;
        v55 = v21;
        v56 = 2112;
        v57 = v35;
        v58 = 2112;
        v59 = v8;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Prefetch: Decoded asset from %@ to %@ for %@", buf, 0x20u);

        v44 = [v8 decodedAssetPath];
        v45 = v8;
        v43 = v21;
        _MBLog();
      }

      [v8 setStashedAssetPath:0];
      [v8 setStashedAssetIsDecrypted:0];
      v36 = *(a1 + 32);
      v37 = [v8 decodedAssetPath];
      v38 = [v8 signature];
      v39 = [v36 updateDecodedAssetPath:v37 forSignature:v38 volumeType:{-[NSObject volumeType](v8, "volumeType")}];

      if (v39)
      {
        v40 = MBGetDefaultLog();
        v19 = v47;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Prefetch: Failed to update decoded asset path: %@", buf, 0xCu);
          v43 = v39;
          _MBLog();
        }
      }

      else
      {
        v19 = v47;
      }
    }

    else
    {
      if (v33)
      {
        __assert_rtn("[MBCKRestoreFilePrefetchEngine _prefetchBatch]_block_invoke", "MBCKRestoreFilePrefetchEngine.m", 195, "!restorable.decodedAssetPath");
      }

      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v55 = v21;
        v56 = 2112;
        v57 = v8;
        v58 = 2112;
        v59 = v32;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Prefetch: Failed to decode the asset at %@ for %@: %@", buf, 0x20u);
        v44 = v8;
        v45 = v32;
        v43 = v21;
        _MBLog();
      }
    }

    v23 = 0;
    v18 = v46;
    goto LABEL_31;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v26 = [v3 recordID];
    v27 = [v26 recordName];
    *buf = 138412546;
    v55 = v27;
    v56 = 2112;
    v57 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Prefetch: Failed to find a file to restore for record %@: %@", buf, 0x16u);

    v18 = [v3 recordID];
    v21 = [v18 recordName];
    _MBLog();
LABEL_35:
  }
}

void sub_10020253C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained operationID];

  if (v4)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 56);
  if (*(*(*(a1 + 40) + 8) + 24) == v8)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = [MBError errorWithCode:1 format:@"Batch file operation:%@ fetched incorrect number of file records (%lu of %lu)", v6, *(*(*(a1 + 40) + 8) + 24), v8];
  if (MBIsInternalInstall() && !dword_100421A50 && !atomic_fetch_add_explicit(&dword_100421A50, 1u, memory_order_relaxed))
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = *(*(*(a1 + 40) + 8) + 24);
      v11 = *(a1 + 56);
      *buf = 138412802;
      v20 = v6;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Operation %@ fetched an incorrect number of file records (%lu of %lu)", buf, 0x20u);
      v15 = *(*(*(a1 + 40) + 8) + 24);
      v17 = *(a1 + 56);
      _MBLog();
    }
  }

  if (v4)
  {
LABEL_2:
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v20 = v6;
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Prefetch: Batch file operation %{public}@ for domain %@ failed with error: %@", buf, 0x20u);
      _MBLog();
    }
  }

LABEL_14:
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(*(*(a1 + 40) + 8) + 24);
    v14 = *(a1 + 56);
    *buf = 138543874;
    v20 = v6;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Prefetch: Completed operation:%{public}@, records:%lu/%lu", buf, 0x20u);
    v16 = *(*(*(a1 + 40) + 8) + 24);
    v18 = *(a1 + 56);
    _MBLog();
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 56));
  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1002032B0(id a1)
{
  qword_100421A58 = [[MBCKCodeLongLivedOperator alloc] initWithService:@"BackupStatusService" function:@"sendStatus" responseType:objc_opt_class() callback:&stru_1003C1998];

  _objc_release_x1();
}

void sub_100203328(id a1, BackupStatusResponse *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to report status: %@", buf, 0xCu);
      _MBLog();
    }
  }
}

void sub_1002033F0(uint64_t a1)
{
  v2 = +[MBDaemon sharedDaemon];
  [v2 releaseWorkAssertion:*(a1 + 32)];
}

id sub_100204448(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];

  v6 = [v5 objectForKeyedSubscript:v3];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 isEqualToString:@"nil"] & 1) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100204FB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  **(a1 + 88) = a2;
  v20[0] = @"AccountType";
  if ((v4 - 1) > 2)
  {
    v5 = @"Unspecified";
  }

  else
  {
    v5 = *(&off_1003C19E0 + v4 - 1);
  }

  v21[0] = v5;
  v20[1] = @"SnapshotAccountType";
  v6 = *(a1 + 104) - 1;
  if (v6 > 2)
  {
    v7 = @"Unspecified";
  }

  else
  {
    v7 = *(&off_1003C19E0 + v6);
  }

  v8 = *(a1 + 32);
  v21[1] = v7;
  v21[2] = v8;
  v20[2] = @"SnapshotFormat";
  v20[3] = @"SnapshotFormatEnum";
  v9 = [NSNumber numberWithLongLong:*(a1 + 112)];
  v21[3] = v9;
  v20[4] = @"SnapshotID";
  v10 = [*(a1 + 40) snapshotID];
  v21[4] = v10;
  v20[5] = @"SnapshotCommitID";
  v11 = [*(a1 + 40) commitID];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"nil";
  }

  v21[5] = v13;
  v20[6] = @"LocalLegacyPreference";
  v20[7] = @"RemoteFileListPreference";
  v17 = vdupq_n_s64(@"nil");
  v22 = vbslq_s8(vceqzq_s64(*(a1 + 48)), v17, *(a1 + 48));
  v20[8] = @"RestoredFromFileList";
  v14 = [NSNumber numberWithBool:a2];
  v23 = v14;
  v20[9] = @"RequiredRestoreSnapshotFormat";
  v20[10] = @"LastForegroundRestoreFailureDate";
  v24 = vbslq_s8(vceqzq_s64(*(a1 + 64)), v17, *(a1 + 64));
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:11];

  [*(a1 + 80) setPreferencesValue:v15 forKey:@"RestoreCloudFormatInfo"];
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=snapshot-policy= Cloud restore format info: %@", buf, 0xCu);
    _MBLog();
  }
}

uint64_t sub_1002054D0(uint64_t a1)
{
  result = lockdown_connect();
  *(*(a1 + 32) + 8) = result;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) != 0;
  return result;
}

uint64_t sub_10020558C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 8);
  if (result)
  {
    result = lockdown_disconnect();
    v2 = *(a1 + 32);
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1002056B8(void *a1)
{
  result = *(a1[4] + 8);
  if (result)
  {
    v3 = a1[5];
    v4 = a1[6];
    result = lockdown_copy_value();
    *(*(a1[7] + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_1002057B4(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    result = lockdown_save_value();
    if (result)
    {
      v6 = result;
      v7 = MBGetDefaultLog();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save object to lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
        v11 = *(a1 + 48);
        v10 = *(a1 + 40);
        result = _MBLog();
      }

      if (*(a1 + 72))
      {
        result = [MBError errorWithCode:1 format:@"Failed to save object to lockdown"];
        **(a1 + 72) = result;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1002059A4(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"com.apple.mobile.backup"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.mobile.ldbackup") & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"com.apple.purplebuddy"))
  {
    v2 = *(a1 + 32);
    if ([(__CFString *)v2 isEqualToString:@"com.apple.mobile.backup"])
    {
      v2 = @"com.apple.mobile.ldbackup";
    }

    v3 = kMBMobileUserName;
    CFPreferencesSetValue(*(a1 + 40), 0, v2, kMBMobileUserName, kCFPreferencesAnyHost);
    result = CFPreferencesSynchronize(v2, v3, kCFPreferencesAnyHost);
    if (!result)
    {
      v5 = MBGetDefaultLog();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = *(a1 + 40);
        *buf = 138412546;
        v17 = v2;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %@ domain (%@)", buf, 0x16u);
        v14 = *(a1 + 40);
        return _MBLog();
      }
    }
  }

  else
  {
    result = *(*(a1 + 48) + 8);
    if (result)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      result = lockdown_remove_value();
      if (result)
      {
        v9 = result;
        v10 = MBGetDefaultLog();
        result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          *buf = 138412802;
          v17 = v11;
          v18 = 2112;
          v19 = v12;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove object from lockdown with domain '%@', key '%@': %d", buf, 0x1Cu);
          v15 = *(a1 + 40);
          v13 = *(a1 + 32);
          result = _MBLog();
        }

        if (*(a1 + 64))
        {
          result = [MBError errorWithCode:1 format:@"Failed to remove object from lockdown"];
          **(a1 + 64) = result;
        }

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  return result;
}

char *MBBackupXPCActivityNameWithType(int a1)
{
  if ((a1 - 1) >= 3)
  {
    __assert_rtn("MBBackupXPCActivityNameWithType", "MBXPCActivityCoordinator.m", 46, "0 && Unexpected");
  }

  return off_1003C1B58[a1 - 1];
}

void sub_1002063AC(uint64_t a1)
{
  v2 = MBBackupXPCActivityNameWithType(*(a1 + 48));
  v3 = [*(a1 + 32) _activityForActivityType:*(a1 + 48)];
  v4 = [v3 runnableXPCActivity];

  if (v4)
  {
    state = xpc_activity_get_state(v4);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = v2;
      v14 = 2080;
      v15 = sub_1002065FC(state);
      v16 = 2048;
      v17 = state;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=XPCActivity= Not re-registering XPC activity %{public}s, current state:%s(%ld)", buf, 0x20u);
      _MBLog();
    }
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=XPCActivity= Registering XPC activity %{public}s", buf, 0xCu);
      _MBLog();
    }

    objc_initWeak(buf, *(a1 + 32));
    v8 = *(a1 + 40);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100206620;
    handler[3] = &unk_1003C1A98;
    objc_copyWeak(&v10, buf);
    v11 = *(a1 + 48);
    xpc_activity_register(v2, v8, handler);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void sub_1002065D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const char *sub_1002065FC(unint64_t a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_1003C1B70[a1];
  }
}

void sub_100206620(uint64_t a1, void *a2)
{
  activity = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleXPCActivity:activity type:*(a1 + 40)];
  }

  else
  {
    xpc_activity_set_state(activity, 5);
  }

  objc_autoreleasePoolPop(v3);
}

id sub_100206728(uint64_t a1)
{
  [*(a1 + 32) _finishXPCActivityForBackupActivity:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _cancelDeferralTimerForActivity:v3];
}

void sub_100206978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002069AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002069C4(uint64_t a1, void *a2)
{
  activity = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    xpc_activity_set_state(activity, 5);
    goto LABEL_6;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  [WeakRetained _handleXPCActivity:activity type:*(a1 + 56)];
  dispatch_assert_queue_not_V2(*(WeakRetained + 2));
  if (!xpc_activity_get_state(activity) && ([*(WeakRetained + 4) containsIndex:*(a1 + 56)] & 1) == 0)
  {
    [*(WeakRetained + 4) addIndex:*(a1 + 56)];
LABEL_6:
    dispatch_semaphore_signal(*(a1 + 32));
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100206C68(uint64_t a1)
{
  v5 = [*(a1 + 32) _activityForActivityType:*(a1 + 48)];
  v2 = [v5 runnableXPCActivity];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100206E90(uint64_t a1)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  v2 = [*(a1 + 32) _activityForActivityType:*(a1 + 64)];
  v3 = [v2 runnableXPCActivity];

  if (v3)
  {
    if (xpc_activity_should_defer(v3))
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 56);
        *buf = 136446466;
        v9 = v5;
        v10 = 2114;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=XPCActivity= The XPC activity %{public}s needs to be deferred: %{public}@", buf, 0x16u);
        v7 = *(a1 + 56);
        _MBLog();
      }

      [*(a1 + 32) _cancelDeferralTimerForActivity:*(a1 + 64)];
      (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
    }
  }

  else
  {
    [*(a1 + 32) _cancelDeferralTimerForActivity:*(a1 + 64)];
  }
}

void sub_100206FE0(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 136446466;
    v8 = v3;
    v9 = 2048;
    v10 = 2;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=XPCActivity= Starting the XPC activity timer for %{public}s, interval:%lld", buf, 0x16u);
    v6 = *(a1 + 48);
    _MBLog();
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _activityForActivityType:*(a1 + 56)];
  [v5 setDeferralTimer:v4];

  dispatch_resume(*(a1 + 40));
}

void sub_1002072C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _activityForActivityType:*(a1 + 56)];
  v3 = [v2 runnableXPCActivity];

  if (v3)
  {
    v4 = MBBackupXPCActivityNameWithType(*(a1 + 56));
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      *buf = 136446722;
      v10 = v4;
      v11 = 2080;
      v12 = sub_1002065FC(v6);
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=XPCActivity= Delegate already notified for %{public}s, current state:%s(%ld)", buf, 0x20u);
      sub_1002065FC(*(a1 + 48));
      _MBLog();
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) _activityForActivityType:*(a1 + 56)];
    [v8 setRunnableXPCActivity:v7];

    v5 = [*(a1 + 32) delegate];
    [v5 backupActivityIsRunnable:*(a1 + 56)];
  }
}

void sub_100208664(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1002085C4);
  }

  JUMPOUT(0x100208650);
}

id sub_1002086F0(void *a1, uint64_t a2)
{
  v2 = [a1 stringByAppendingPathComponent:a2];
  v3 = [v2 stringByAppendingPathComponent:@"missed_encryption_keys.db"];

  return v3;
}

uint64_t sub_100208C14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  [v3 unsignedLongLongAtIndex:1];

  v5 = (*(*(a1 + 32) + 16))();
  return v5;
}

BOOL MBStashMissedEncryptionKeysDB(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_1002086F0(v5, v6);
  v8 = +[NSFileManager defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    v9 = sub_100208FAC(v5);
    v10 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v7 identifiedBy:@"stashed-encryption-keys" error:a3];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 makeTemporaryFilePath];
      if ([MBSQLiteFileHandle copySQLiteFileAtPath:v7 toPath:v12 error:a3])
      {
        v13 = [v9 stringByDeletingLastPathComponent];
        v14 = [MBFileOperation createDirectories:4294967294 destinationBasePath:@"/" destinationRpath:v13 permissions:493 error:a3]&& [MBFileOperation rename:4294967294 sourceRpath:v12 destinationBasePath:@"/" destinationBaseFD:4294967294 destinationRpath:v9 flags:0 error:a3];
      }

      else
      {
        v14 = 0;
      }

      [v11 dispose];
      if (v14)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v7;
          v19 = 2112;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=stashed-keys= Stashed db from %@ -> %@", buf, 0x16u);
          _MBLog();
        }

        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    v14 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=stashed-keys= No db found at %@", buf, 0xCu);
      _MBLog();
    }
  }

  return v14;
}

id sub_100208FAC(void *a1)
{
  v1 = [a1 stringByAppendingPathComponent:@"stashed_encryption_keys"];
  v2 = [v1 stringByAppendingPathComponent:@"stashed_encryption_keys.db"];

  return v2;
}

BOOL MBMoveStashedEncryptionKeysDBIntoPendingSnapshot(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSFileManager defaultManager];
  v8 = sub_100208FAC(v5);
  if ([v7 fileExistsAtPath:v8])
  {
    v9 = sub_1002086F0(v5, v6);
    v10 = [MBFileOperation rename:4294967294 sourceRpath:v8 destinationBasePath:@"/" destinationBaseFD:4294967294 destinationRpath:v9 flags:0 error:a3];
    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=stashed-keys= Moved db from %@ -> %@", buf, 0x16u);
        _MBLog();
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_1002095F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100209638(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100209650(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100209904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100209B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100209D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFString *MBRestorableStateToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unspecified";
  }

  else
  {
    return *(&off_1003C1BC8 + a1 - 1);
  }
}

const __CFString *MBRestoreAssetStateToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return *(&off_1003C1BF8 + a1 - 1);
  }
}

void _MBCreateDiagnosticReport(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MBIsInternalInstall())
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    v6 = [v5 useABC];

    if (v6)
    {
      if (!v3)
      {
        __assert_rtn("_MBCreateDiagnosticReport", "MBDiagnosticReporterSupport.m", 26, "description");
      }

      if (qword_100421A80 != -1)
      {
        dispatch_once(&qword_100421A80, &stru_1003C1C10);
      }

      v7 = +[NSProcessInfo processInfo];
      v8 = [v7 processName];

      v9 = [qword_100421A78 signatureWithDomain:@"MobileBackup" type:kSymptomDiagnosticTypeFunctional subType:@"AssertionFailed" detectedProcess:v8 triggerThresholdValues:0];
      [v9 setObject:v3 forKeyedSubscript:kSymptomDiagnosticSignatureSubTypeContext];
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315650;
        Name = class_getName(v11);
        v19 = 2112;
        v20 = v3;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Taking an %s snapshot, description:%@, payload:%@", buf, 0x20u);
        v12 = objc_opt_class();
        class_getName(v12);
        _MBLog();
      }

      if (([qword_100421A78 snapshotWithSignature:v9 duration:0 event:v4 payload:&stru_1003C1C50 reply:5.0] & 1) == 0)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_opt_class();
          v15 = class_getName(v14);
          *buf = 136315394;
          Name = v15;
          v19 = 2112;
          v20 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to send a %s snapshot,description:%@", buf, 0x16u);
          v16 = objc_opt_class();
          class_getName(v16);
          _MBLog();
        }
      }
    }
  }
}

void sub_10020BAA4(id a1)
{
  qword_100421A78 = objc_opt_new();

  _objc_release_x1();
}

void sub_10020BAE0(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 136315394;
    Name = class_getName(v4);
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received a response from %s: %@", buf, 0x16u);
    v5 = objc_opt_class();
    class_getName(v5);
    _MBLog();
  }
}

void sub_10020DEC0(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("MBMegaBackupEligibilityManager queue", attr);
  v3 = qword_100421A88;
  qword_100421A88 = v2;
}

void sub_10020E194(uint64_t a1)
{
  v2 = [*(a1 + 32) _account];
  v3 = +[MBManagedPolicy sharedPolicy];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 checkIfCloudBackupIsAllowed:0];

    if (v5)
    {
      if ([v2 aa_isManagedAppleID])
      {
        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: Unsupported Managed Apple ID.", &buf, 2u);
          _MBLog();
        }

        v7 = *(a1 + 40);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10020E908;
        block[3] = &unk_1003BCB38;
        v41 = *(a1 + 64);
        dispatch_async(v7, block);
      }

      else if ([*(a1 + 32) _isHSA2AvailableForAuthenticationContext:v2])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v48 = 0x2020000000;
        v49 = 1;
        v15 = [*(a1 + 32) _usedCapacityForVolume:@"/private/var"];
        v16 = [*(a1 + 32) _usedCapacityForVolume:@"/private/var/mobile"];
        v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 unsignedLongLongValue] + objc_msgSend(v16, "unsignedLongLongValue"));
        v18 = objc_alloc_init(_ICQMegaBackupManager);
        v19 = *(a1 + 48);
        v20 = [*(a1 + 32) _entryMethodForEntryPoint:*(a1 + 72)];
        v21 = *(a1 + 40);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10020E9A8;
        v34[3] = &unk_1003C1CC8;
        v22 = *(a1 + 56);
        v35 = *(a1 + 64);
        p_buf = &buf;
        [v18 requestMegaBackupForAccount:v2 deviceBackupUUID:v19 deviceTotalUsedSpaceInBytes:v17 entryMethod:v20 deepLinkURL:v22 queue:v21 completion:v34];

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v2 aa_altDSID];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: User needs HSA2 account: %@", &buf, 0xCu);

          v33 = [v2 aa_altDSID];
          _MBLog();
        }

        v50 = @"MBMegaBackupEligibilityErrorUserInfoAltDSIDKey";
        v25 = [v2 aa_altDSID];
        v26 = v25;
        v27 = &stru_1003C3430;
        if (v25)
        {
          v27 = v25;
        }

        v51 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1, v33];

        v29 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:5 userInfo:v28];
        v30 = *(a1 + 40);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10020E988;
        v37[3] = &unk_1003BE9A8;
        v31 = *(a1 + 64);
        v38 = v29;
        v39 = v31;
        v32 = v29;
        dispatch_async(v30, v37);
      }
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: Cloud Backup is restricted.", &buf, 2u);
        _MBLog();
      }

      v14 = *(a1 + 40);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10020E888;
      v42[3] = &unk_1003BCB38;
      v43 = *(a1 + 64);
      dispatch_async(v14, v42);
    }
  }

  else
  {
    v8 = [v3 checkIfCloudAccountModificationIsAllowed:0];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v10 = &__kCFBooleanFalse;
      }

      else
      {
        v10 = &__kCFBooleanTrue;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility couldn't get primary Apple Account: %{public}@", &buf, 0xCu);
      _MBLog();
    }

    v11 = v8 ^ 1;
    v12 = *(a1 + 40);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10020E7F8;
    v44[3] = &unk_1003C1CA0;
    v46 = v11;
    v45 = *(a1 + 64);
    dispatch_async(v12, v44);
  }
}

void sub_10020E7F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = ~*(a1 + 40);
  v4 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:v2 userInfo:0];
  (*(v1 + 16))(v1, v3 & 1, 0, 21, v4);
}

void sub_10020E888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:4 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 21, v2);
}

void sub_10020E908(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 21, v2);
}

void sub_10020E9A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a2;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: _ICQMegaBackupManager response: %ld, error: %@", buf, 0x16u);
    _MBLog();
  }

  if (v7)
  {
    [v7 integerValue];
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v11 = 0;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_15;
      }

      v11 = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v11;
    goto LABEL_15;
  }

  if (!a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    goto LABEL_16;
  }

  if (a2 != 1)
  {
LABEL_15:
    v12 = *(*(*(a1 + 40) + 8) + 24);
    (*(*(a1 + 32) + 16))(*(a1 + 32), 2);
    goto LABEL_16;
  }

  v10 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:6 userInfo:0];
  (*(*(a1 + 32) + 16))(*(a1 + 32), 1);

LABEL_16:
}

void sub_10020FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10020FEBC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBPrefetchPath", v3);
  v2 = qword_100421A98;
  qword_100421A98 = v1;
}

uint64_t sub_10020FF20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10020FF38(uint64_t a1)
{
  v2 = mkpath_np(*(a1 + 56), 0x1C0u);
  if (v2 == 17)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *__error();
      *buf = 138412546;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "mkdir failed at %@: %{errno}d", buf, 0x12u);
      v12 = *(a1 + 32);
      v13 = *__error();
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Created the directory at %@", buf, 0xCu);
      v11 = *(a1 + 32);
LABEL_7:
      _MBLog();
    }
  }

LABEL_9:
  v7 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v7 stringByAppendingPathComponent:?];
  }

  else
  {
    MBCreateTemporaryFilePathIn(v7);
  }
  v8 = ;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_100211C48(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100211BD4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MBProtectionClassSupportedValue(uint64_t result, char a2, void *a3)
{
  v3 = (result - 1) < 4 || result == 7;
  if (!v3 && (result || (a2 & 1) != 0))
  {
    if (a3)
    {
      *a3 = [MBError errorWithCode:241 format:@"unsupported protection class (%d)", result];
    }

    LOBYTE(result) = -1;
  }

  return result;
}

void sub_100213660(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "-restoreUserURL failed: %@", buf, 0xCu);
      _MBLog();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10021390C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a2;
    v11 = MBGetLogDateFormatter();
    v12 = +[NSDate date];
    v13 = [v11 stringFromDate:v12];

    v14 = [[NSString alloc] initWithFormat:v10 arguments:&a9];
    os_unfair_lock_lock((a1 + 8));
    if (!*(a1 + 24))
    {
      v15 = fopen([*(a1 + 16) fileSystemRepresentation], "a");
      if (!v15)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [a1 path];
          v18 = *__error();
          *buf = 138412546;
          v22 = v17;
          v23 = 1024;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "MBRestoreOperationLogger failed to open %@: %{errno}d", buf, 0x12u);

          v19 = [a1 path];
          v20 = *__error();
          _MBLog();
        }

        goto LABEL_6;
      }

      *(a1 + 24) = v15;
    }

    fputs([v13 UTF8String], *(a1 + 24));
    fputs(" ", *(a1 + 24));
    fputs([v14 fileSystemRepresentation], *(a1 + 24));
    fputs("\n", *(a1 + 24));
LABEL_6:
    os_unfair_lock_unlock((a1 + 8));
  }
}

const __CFString *MBStringForFileCompressionMethod(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"default";
  }

  else
  {
    return *(&off_1003C1D80 + a1);
  }
}

void sub_100216C1C(id a1)
{
  qword_100421AC0 = MBLocalizedStringFromTable();

  _objc_release_x1();
}

void sub_100216D84(id a1)
{
  v1 = +[MBBehaviorOptions sharedOptions];
  if (!v1)
  {
    __assert_rtn("[MBCKOperationPolicy init]_block_invoke", "MBCKOperationTracker.m", 55, "sharedOptions");
  }

  v5 = v1;
  v2 = [v1 maxBatchCount];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  qword_100421AD0 = v3;
  qword_100421AD8 = [v5 maxBatchSize];
  qword_100421AE0 = [v5 maxBatchFetchAssetSize];
  qword_100421AE8 = [v5 maxBatchSaveAssetSize];
  v4 = [v5 recordSaveAttempts];
  qword_100421AF0 = v4 & ~(v4 >> 63);
}

void sub_100218528(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100218920(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) eventName];
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "=ck-op= Submitted CKEventMetric: %@", buf, 0xCu);

    v4 = [*(a1 + 32) eventName];
    _MBLog();
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100219B2C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

uint64_t sub_100219BB0(uint64_t a1, void *a2, double a3)
{
  a2;
  if (a3 > 0.0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(a3);
  }

  return _objc_release_x1();
}

void sub_100219C34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v7, v8);
  }
}

uint64_t sub_100219CD4(uint64_t a1, void *a2, double a3)
{
  a2;
  if (a3 > 0.0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(a3);
  }

  return _objc_release_x1();
}

uint64_t sub_100219D58(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100219D80(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return _objc_release_x1();
}

void sub_100219DF0(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  v42 = [*(*(a1 + 32) + 8) count];
  objc_sync_exit(v4);

  v5 = [*(a1 + 40) metrics];
  v44 = [v5 cloudKitMetrics];

  v6 = [*(a1 + 40) metrics];
  v7 = [v6 MMCSMetrics];

  v8 = [*(a1 + 40) group];
  v43 = [v8 operationGroupID];

  v9 = [*(a1 + 40) error];
  v10 = MBGetDefaultLog();
  v11 = v10;
  v12 = Current - v3;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      v23 = objc_opt_class();
      v24 = [*(a1 + 40) operationID];
      *buf = 138545410;
      v46 = v23;
      v47 = 2114;
      v48 = v24;
      v49 = 2114;
      v50 = v43;
      v51 = 2048;
      v52 = v12;
      v53 = 2048;
      v54 = v42;
      v55 = 2048;
      v56 = [v44 bytesUploaded];
      v57 = 2048;
      v58 = [v7 bytesUploaded];
      v59 = 2048;
      v60 = [v44 bytesDownloaded];
      v61 = 2048;
      v62 = [v7 bytesDownloaded];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-op= %{public}@ completed, id:%{public}@, gid:%{public}@, t:%.3fs, o:%lu, bu:%lu/%lu, bd:%lu/%lu", buf, 0x5Cu);

      v25 = *(a1 + 40);
      v26 = objc_opt_class();
      v27 = [*(a1 + 40) operationID];
      v28 = [v44 bytesUploaded];
      v29 = [v7 bytesUploaded];
      v38 = [v44 bytesDownloaded];
      v39 = [v7 bytesDownloaded];
      v36 = v28;
      v37 = v29;
      v35 = v42;
      v34 = v12;
      v32 = v27;
      v33 = v43;
      v31 = v26;
      _MBLog();
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = objc_opt_class();
    v15 = [*(a1 + 40) operationID];
    *buf = 138545666;
    v46 = v14;
    v47 = 2114;
    v48 = v15;
    v49 = 2114;
    v50 = v43;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = v42;
    v55 = 2048;
    v56 = [v44 bytesUploaded];
    v57 = 2048;
    v58 = [v7 bytesUploaded];
    v59 = 2048;
    v60 = [v44 bytesDownloaded];
    v61 = 2048;
    v62 = [v7 bytesDownloaded];
    v63 = 2114;
    v64 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ck-op= %{public}@ failed, id:%{public}@, gid:%{public}@, t:%.3fs, o:%lu, bu:%lu/%lu, bd:%lu/%lu : %{public}@", buf, 0x66u);

    v16 = *(a1 + 40);
    v17 = objc_opt_class();
    v18 = [*(a1 + 40) operationID];
    v19 = [v44 bytesUploaded];
    v20 = [v7 bytesUploaded];
    v21 = [v44 bytesDownloaded];
    v39 = [v7 bytesDownloaded];
    v40 = v9;
    v37 = v20;
    v38 = v21;
    v35 = v42;
    v36 = v19;
    v34 = v12;
    v32 = v18;
    v33 = v43;
    v31 = v17;
    _MBLog();
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
LABEL_9:
    [*(a1 + 32) _replenishRetryTokens];
  }

  [*(a1 + 32) _associateMetricsWithOperation:{*(a1 + 40), v31, v32, v33, *&v34, v35, v36, v37, v38, v39}];
  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))();
  }

  dispatch_group_leave(*(*(a1 + 32) + 88));

  objc_autoreleasePoolPop(context);
}

void sub_10021A900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021A928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10021A940(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 96) removeObject:*(a1 + 40)];
  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 48));
}

void sub_10021A9E4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, *(*(a1[6] + 8) + 40));
  }

  dispatch_group_leave(*(a1[4] + 88));

  objc_autoreleasePoolPop(v2);
}

void sub_10021AE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_10021AEC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    __assert_rtn("[MBCKOperationTracker fetchRecordWithID:completion:]_block_invoke", "MBCKOperationTracker.m", 587, "strongOp");
  }

  v8 = WeakRetained;
  dispatch_semaphore_signal(*(a1 + 32));
  if (v6)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v9 = [MBError errorWithCode:202 format:@"Cancelled fetching record"];
    }

    else
    {
      v9 = v6;
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 operationID];
        *buf = 138543618;
        v20 = v11;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-op= Fetch operation %{public}@ completed with error: %@", buf, 0x16u);

        v18 = [v8 operationID];
        _MBLog();
      }

      if ([MBError isCKPartialFailureError:v9])
      {
        v12 = [v9 userInfo];
        v13 = [v12 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
        v14 = [v13 objectForKeyedSubscript:*(a1 + 40)];

        v9 = v14;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = [v5 objectForKeyedSubscript:v16];
    (*(v15 + 16))(v15, v16, v17, v9);
  }
}

void sub_10021B2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10021B2D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  v7 = 40;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v7 = 48;
    v8 = v12;
  }

  v9 = *(*(a1 + v7) + 8);
  v10 = v8;
  v11 = *(v9 + 40);
  *(v9 + 40) = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10021B670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021B698(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 104) removeObject:*(a1 + 40)];
  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 48));
}

void sub_10021B73C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, *(*(a1[6] + 8) + 40));
  }

  dispatch_group_leave(*(a1[4] + 88));

  objc_autoreleasePoolPop(v2);
}

void sub_10021B8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021B910(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10021BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021BD78(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 48));
}

void sub_10021BE1C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, *(*(a1[6] + 8) + 40));
  }

  dispatch_group_leave(*(a1[4] + 88));

  objc_autoreleasePoolPop(v2);
}

void sub_10021D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021D1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Passcode policy evalutation succeeded: %@", buf, 0xCu);
LABEL_11:
      _MBLog();
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [v6 domain];
  if (![v9 isEqualToString:LAErrorDomain])
  {

LABEL_9:
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Passcode policy evaluation failed: %@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = [v7 code];

  if (v10 != -5)
  {
    goto LABEL_9;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Skipping passcode policy evaluation because there is no passcode set on device: %@", buf, 0xCu);
    goto LABEL_11;
  }

LABEL_12:

  dispatch_semaphore_signal(*(a1 + 32));
}