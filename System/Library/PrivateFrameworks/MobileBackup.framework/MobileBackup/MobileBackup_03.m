void sub_100063EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100063EFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100063F14(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 encryptionKey];
  v7 = a1[9];
  v8 = [*(a1[6] + 16) hardwareModel];
  v9 = *(a1[8] + 8);
  obj = *(v9 + 40);
  LOBYTE(v3) = [v5 decryptFileWithPath:v3 encryptionKey:v6 size:v7 hardwareModel:v8 error:&obj];

  objc_storeStrong((v9 + 40), obj);
  *(*(a1[7] + 8) + 24) = v3;
}

void sub_100064E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_100064E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    dispatch_group_leave(*(a1 + 32));
    goto LABEL_10;
  }

  v4 = atomic_load(WeakRetained + 8);
  v5 = MBGetDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cache-delete= Request already cancelled", buf, 2u);
      _MBLog();
    }

    goto LABEL_6;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cache-delete= Requesting purge: %@", buf, 0xCu);
    v9 = *(a1 + 40);
    _MBLog();
  }

  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 32);
  v3[2] = CacheDeletePurgeSpaceWithInfo();

LABEL_10:
}

void sub_100065024(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:@"CACHE_DELETE_AMOUNT"];
  *(*(*(a1 + 40) + 8) + 24) = [v4 unsignedLongLongValue];

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

uint64_t MBEnumerateDirectoryNodes(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v40[0] = word_10041F730;
  v40[1] = 0;
  v41 = dword_10041F734 | 0x20000001;
  v42 = 0;
  v43 = unk_10041F73C;
  v44 = dword_10041F744;
  v7 = [v5 mutableBytes];
  v33 = v5;
  v8 = [v5 length];
  v37 = +[NSFileManager defaultManager];
  v34 = v6;
  v32 = a1;
  v9 = getattrlistbulk(a1, v40, v7, v8, 0x29uLL);
  if (v9 >= 1)
  {
    v36 = &v8[v7];
    v35 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (v10 >= v8)
        {
          __assert_rtn("MBEnumerateDirectoryNodes", "MBNode.m", 138, "byteOffset < attrBufSize");
        }

        v11 = v7 + v10;
        if (*(v7 + v10 + 24))
        {
          v27 = v34;
          v28 = @"getattrlistbulk() enumeration error";
          goto LABEL_32;
        }

        v12 = *v11;
        v13 = objc_autoreleasePoolPush();
        v14 = v37;
        v15 = &v11[*(v11 + 7) + 28];
        v16 = *(v11 + 8);
        if (v15 + v16 > v36)
        {
          __assert_rtn("_checkedNameFromRef", "MBNode.m", 94, "nameOffset + nameLen <= bufferEnd");
        }

        v17 = (v16 - 1);
        if (*(v15 + v17))
        {
          __assert_rtn("_checkedNameFromRef", "MBNode.m", 95, "nameOffset[nameLen - 1] == '\\0'");
        }

        v18 = v14;
        v19 = v7;
        v20 = [v14 stringWithFileSystemRepresentation:&v11[*(v11 + 7) + 28] length:v17];
        if (!v20)
        {
          v23 = [NSData dataWithBytes:v15 length:v17];
          v24 = MBGetDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unexpected mbNode name: %@", buf, 0xCu);
            _MBLog();
          }

          if (MBIsInternalInstall())
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = v23;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Unexpected mbNode name: %@", buf, 0xCu);
              goto LABEL_17;
            }

            goto LABEL_18;
          }

          if (!dword_100421608 && !atomic_fetch_add_explicit(&dword_100421608, 1u, memory_order_relaxed))
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Unexpected mbNode name", buf, 2u);
LABEL_17:
              _MBLog();
            }

LABEL_18:
          }

          v21 = 0;
LABEL_22:

          objc_autoreleasePoolPop(v13);
          goto LABEL_23;
        }

        v21 = v20;

        v39 = 0;
        memset(v38, 0, sizeof(v38));
        v48 = *(v11 + 84);
        v49 = *(v11 + 100);
        v50 = *(v11 + 116);
        v51 = *(v11 + 132);
        *buf = *(v11 + 36);
        v46 = *(v11 + 52);
        v47 = *(v11 + 68);
        if ((sub_10006593C(buf, v38, v21, 0) & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = (*(v34 + 2))(v34, v21, v38, 0);

        objc_autoreleasePoolPop(v13);
        if ((v22 & 1) == 0)
        {
          v30 = 0;
          goto LABEL_33;
        }

LABEL_23:
        v10 += v12;
        --v9;
        v7 = v19;
        v8 = v35;
      }

      while (v9);
      v26 = getattrlistbulk(v32, v40, v7, v35, 0x29uLL);
      v9 = v26;
    }

    while (v26 > 0);
  }

  if (v9 < 0)
  {
    v28 = @"getattrlistbulk() error";
    v27 = v34;
LABEL_32:
    v29 = [MBError errorWithErrno:*__error() format:v28];
    (v27)[2](v27, 0, 0, v29);

    v30 = 0;
  }

  else
  {
    v30 = 1;
LABEL_33:
    v27 = v34;
  }

  return v30;
}

uint64_t sub_10006593C(unsigned int *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (!a2)
  {
    __assert_rtn("_mbNodeFromAttrs", "MBNode.m", 220, "mbNode");
  }

  v8 = v7;
  v9 = *a1;
  v10 = a1[15];
  if (*a1 == 1)
  {
    v11 = 0x8000;
  }

  else if (v9 == 2)
  {
    v11 = 0x4000;
  }

  else
  {
    if (v9 != 5)
    {
      if (a4)
      {
        [MBError errorWithCode:242 path:v7 format:@"Not a directory, symlink, or regular file (%d)", *a1];
        *a4 = v19 = 0;
        goto LABEL_24;
      }

LABEL_13:
      v19 = 0;
      goto LABEL_24;
    }

    v11 = -24576;
  }

  v12 = MBProtectionClassSupportedValue(a1[20], v9 == 1, a4);
  if (v12 == 255)
  {
    goto LABEL_13;
  }

  v13 = a1[21];
  if (v9 == 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 24;
  }

  else
  {
    v15 = v13 > 1;
    v16 = *(a1 + 12);
    if (v9 == 1)
    {
      v14 = *(a1 + 11);
      v17 = a1[17];
    }

    else
    {
      v14 = 0;
      v17 = 0;
    }

    v13 = 1;
    v18 = 26;
  }

  v20 = *&a1[v18];
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v21 = *(a1 + 1);
  v22 = *(a1 + 5);
  v23 = *(a1 + 9);
  v24 = *(a1 + 9);
  if (v9 == 1 && (v20 & 0x40) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 13);
  *a2 = v13;
  *(a2 + 4) = v26;
  *(a2 + 12) = 0;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v14;
  *(a2 + 48) = v24;
  *(a2 + 56) = v17;
  *(a2 + 60) = v16;
  *(a2 + 68) = v11 | v10 & 0xFFF;
  *(a2 + 70) = v12;
  *(a2 + 71) = (v15 & 0xFB | (4 * ((v20 & 2) != 0)) | v25) ^ 4;
  v27 = a1[16];
  *(a2 + 12) = v27;
  if ((v27 & 0x40000000) != 0)
  {
    *(a2 + 40) = 0;
  }

  v19 = 1;
LABEL_24:

  return v19;
}

uint64_t MBNodeForPath(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (!v5)
  {
    __assert_rtn("MBNodeForPath", "MBNode.m", 177, "path");
  }

  if (!a2)
  {
    __assert_rtn("MBNodeForPath", "MBNode.m", 178, "mbNode");
  }

  v6 = v5;
  memset(v10, 0, 136);
  if (getattrlist([v5 fileSystemRepresentation], &word_10041F730, v10, 0x88uLL, 0x29u))
  {
    if (a3)
    {
      [MBError errorWithErrno:*__error() path:v6 format:@"getattrlist() error"];
      *a3 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v9[4] = *(&v10[5] + 8);
    v9[5] = *(&v10[6] + 8);
    v9[6] = *(&v10[7] + 8);
    v9[0] = *(&v10[1] + 8);
    v9[1] = *(&v10[2] + 8);
    v9[2] = *(&v10[3] + 8);
    v9[3] = *(&v10[4] + 8);
    v7 = sub_10006593C(v9, a2, v6, a3);
  }

  return v7;
}

uint64_t MBNodeForRelativePathAt(int a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  if (a1 < 0)
  {
    __assert_rtn("MBNodeForRelativePathAt", "MBNode.m", 203, "fd >= 0");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("MBNodeForRelativePathAt", "MBNode.m", 204, "relativePath");
  }

  if (!a3)
  {
    __assert_rtn("MBNodeForRelativePathAt", "MBNode.m", 205, "mbNode");
  }

  if ([(__CFString *)v7 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @".";
  }

  memset(v13, 0, 136);
  if (getattrlistat(a1, [(__CFString *)v9 fileSystemRepresentation], &word_10041F730, v13, 0x88uLL, 0x29uLL))
  {
    if (a4)
    {
      [MBError errorWithErrno:*__error() path:v8 format:@"getattrlistat() error"];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v12[4] = *(&v13[5] + 8);
    v12[5] = *(&v13[6] + 8);
    v12[6] = *(&v13[7] + 8);
    v12[0] = *(&v13[1] + 8);
    v12[1] = *(&v13[2] + 8);
    v12[2] = *(&v13[3] + 8);
    v12[3] = *(&v13[4] + 8);
    v10 = sub_10006593C(v12, a3, v8, a4);
  }

  return v10;
}

const __CFString *MBNodeTypeString(__int16 a1)
{
  v1 = @"regular file";
  v2 = a1 & 0xF000;
  v3 = @"(unknown)";
  if (v2 == 0x4000)
  {
    v3 = @"directory";
  }

  if (v2 != 0x8000)
  {
    v1 = v3;
  }

  if (v2 == 40960)
  {
    return @"symbolic link";
  }

  else
  {
    return v1;
  }
}

BOOL MBBackwardsCompatibleMBNodeFromStat(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  v4 = v3 & 0xF000;
  if (v4 == 0x4000 || v4 == 0x8000 || v4 == 40960)
  {
    if (v4 == 0x8000)
    {
      v5 = *(a1 + 96);
      if (*(a1 + 6) <= 1u)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      if (v4 == 0x4000)
      {
        v5 = 0;
        v7 = *(a1 + 6);
        v6 = 4;
        goto LABEL_14;
      }

      v5 = 0;
      v6 = 4;
    }

    v7 = 1;
LABEL_14:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v9 = *(a1 + 80);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    *a2 = v7;
    *(a2 + 4) = v13;
    *(a2 + 12) = 0;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v5;
    *(a2 + 48) = v12;
    *(a2 + 56) = 0;
    *(a2 + 60) = 0;
    *(a2 + 68) = v3;
    *(a2 + 70) = 0;
    *(a2 + 71) = v6;
    v14 = *(a1 + 116);
    *(a2 + 12) = v14;
    if ((v14 & 0x40000000) != 0)
    {
      *(a2 + 40) = 0;
    }

    return v4 == 0x8000 || v4 == 40960 || v4 == 0x4000;
  }

  if (a3)
  {
    *a3 = [MBError posixErrorWithFormat:@"Not a directory, symlink, or regular file (%d)", v3];
  }

  return v4 == 0x8000 || v4 == 40960 || v4 == 0x4000;
}

void sub_100066A04(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([a1[4] isInvalid])
  {
    v8 = [MBError errorWithCode:1 format:@"Invalidated"];
    v9 = a1[5];
    objc_sync_enter(v9);
    [a1[5] setObject:v8 forKeyedSubscript:v5];
    objc_sync_exit(v9);
  }

  else
  {
    v10 = [a1[6] objectForKeyedSubscript:v5];
    v11 = a1[4];
    v21 = 0;
    v12 = [v11 _resolveRelativePath:v5 error:&v21];
    v8 = v21;
    if (v12)
    {
      v13 = copyfile_state_alloc();
      v14 = v12;
      v15 = [v12 fileSystemRepresentation];
      v16 = v10;
      v17 = copyfile(v15, [v10 fileSystemRepresentation], v13, 0x12C0000u);
      if (v17)
      {
        v20 = *__error();
        v18 = [MBError posixErrorWithPath:v12 format:@"copyfile failed"];

        [a1[5] setObject:v18 forKeyedSubscript:v5];
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v23 = v12;
          v24 = 2112;
          v25 = v10;
          v26 = 1024;
          v27 = v17;
          v28 = 1024;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "copyfile(%@, %@) failed (%d): %{errno}d", buf, 0x22u);
          _MBLog();
        }
      }

      else
      {
        v18 = v8;
      }

      copyfile_state_free(v13);
      v8 = v18;
    }

    else
    {
      [a1[5] setObject:v8 forKeyedSubscript:v5];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100067BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) keybagUUIDString];
      *buf = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=keybag= Failed to save keybag record for %@ to server: %@", buf, 0x16u);

      v6 = [*(a1 + 32) keybagUUIDString];
      _MBLog();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10006809C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000680F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100068108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MBCKKeyBag alloc] initWithRecord:v3 device:*(a1 + 32)];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10006817C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v7 = [WeakRetained operationID];

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v12 = v9;
      v13 = 2114;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=keybag= Keybag %@ fetch operation %{public}@ failed with error: %@", buf, 0x20u);
      v10 = *(a1 + 32);
      _MBLog();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10006947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000694A4(uint64_t a1)
{
  v2 = dispatch_semaphore_create(20);
  v3 = qword_100421610;
  qword_100421610 = v2;

  Name = class_getName(*(a1 + 32));
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(Name, v5);
  v7 = qword_100421618;
  qword_100421618 = v6;

  qword_100421620 = [[NSMutableArray alloc] initWithCapacity:20];

  return _objc_release_x1();
}

void sub_100069550(uint64_t a1)
{
  if ([qword_100421620 count] >= 0x15)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]_block_invoke_2", "MBCKKeyBag.m", 371, "sUnlockedKeybags.count <= sMaxUnlockedKeybagCount");
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = qword_100421620;
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v36;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      v5 += v4;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v35 + 1) + 8 * v7);
        if (v9 == *(a1 + 32) || [*(*(&v35 + 1) + 8 * v7) isEqual:?])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
          goto LABEL_14;
        }

        ++v8;
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v35 objects:v44 count:16];
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_14:

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (v8)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]_block_invoke_2", "MBCKKeyBag.m", 384, "index != NSNotFound");
      }

      [qword_100421620 removeObjectAtIndex:v8];
      [qword_100421620 insertObject:*(*(*(a1 + 40) + 8) + 40) atIndex:0];
    }

    goto LABEL_33;
  }

  if ([qword_100421620 count] == 20)
  {
    v10 = [qword_100421620 count];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [qword_100421620 reverseObjectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12;
    v14 = *v32;
LABEL_21:
    v15 = 0;
    v16 = (v10 - v13);
    while (1)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v31 + 1) + 8 * v15);
      if (!v17[10])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
        v10 = v16;
        if (!v13)
        {
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    v18 = v17;

    if (v10 + 0x8000000000000000 == v15)
    {
LABEL_28:
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]_block_invoke_2", "MBCKKeyBag.m", 410, "index != NSNotFound");
    }

    [qword_100421620 removeObjectAtIndex:&v10[~v15]];
    [v18 lock];
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v30 = 0;
  v21 = [v19 unlockWithAccountType:v20 error:&v30];
  v22 = v30;
  if (v21)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
    [qword_100421620 insertObject:*(*(*(a1 + 40) + 8) + 40) atIndex:0];

LABEL_33:
    v23 = *(*(*(a1 + 40) + 8) + 40);
    v24 = *(v23 + 80);
    if (v24 < 0)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]_block_invoke", "MBCKKeyBag.m", 427, "0 <= unlockedKeybag->_dc");
    }

    *(v23 + 80) = v24 + 1;
    if ([qword_100421620 count] >= 0x15)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]_block_invoke", "MBCKKeyBag.m", 430, "sUnlockedKeybags.count <= sMaxUnlockedKeybagCount");
    }

    return;
  }

  v25 = MBGetDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = [*(a1 + 32) keybagUUIDString];
    *buf = 138412546;
    v40 = v26;
    v41 = 2112;
    v42 = v22;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=keybag= Failed to unlock keybag %@: %@", buf, 0x16u);

    v29 = [*(a1 + 32) keybagUUIDString];
    _MBLog();
  }

  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v22;
}

uint64_t sub_1000699CC(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  --*(v1 + 80);
  if ((*(*(*(*(result + 32) + 8) + 40) + 80) & 0x8000000000000000) != 0)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]_block_invoke_2", "MBCKKeyBag.m", 444, "0 <= unlockedKeybag->_dc");
  }

  return result;
}

void sub_10006B864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006B918(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Passcode policy evaluation succeeded: %@", buf, 0xCu);
LABEL_10:
      _MBLog();
    }
  }

  else if ([objc_msgSend(a3 "domain")] && objc_msgSend(a3, "code") == -5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Skipping passcode policy evaluation: %@", buf, 0xCu);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Passcode policy evaluation failed: %@", buf, 0xCu);
      goto LABEL_10;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

id sub_10006D188(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.0 maxProgress:0.01];

  v5 = *(a1 + 32);

  return [v5 setUpWithError:a2];
}

id sub_10006D1F0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.02 maxProgress:0.03];

  v5 = *(a1 + 32);

  return [v5 refreshCacheWithError:a2];
}

id sub_10006D25C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.03 maxProgress:0.05];

  v5 = *(a1 + 32);

  return [v5 synchronizeFileListsWithError:a2];
}

id sub_10006D2C8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.05 maxProgress:0.05];

  v5 = *(a1 + 32);

  return [v5 createVolumeSnapshots:a2];
}

id sub_10006D330(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.05 maxProgress:0.25];

  v5 = *(a1 + 32);

  return [v5 findChangesWithError:a2];
}

id sub_10006D398(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.25 maxProgress:0.25];

  v5 = *(a1 + 32);

  return [v5 reserveQuotaWithError:a2];
}

id sub_10006D3FC(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.25 maxProgress:0.9];

  v5 = *(a1 + 32);

  return [v5 prepareToUploadChangesWithError:a2];
}

id sub_10006D47C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.9 maxProgress:0.95];

  v5 = *(a1 + 32);

  return [v5 uploadDomainRecords:a2];
}

id sub_10006D4E8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.95 maxProgress:1.0];

  v5 = *(a1 + 32);

  return [v5 commitSnapshotWithError:a2];
}

id sub_1000713D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 0;
  return [v1 handleCancelation:&v3];
}

int64_t sub_100071400(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_1000714E4(v4);
  if (v6 == sub_1000714E4(v5))
  {
    v7 = [v4 name];
    v8 = [v5 name];
    v9 = [v7 compare:v8];
  }

  else
  {
    v10 = sub_1000714E4(v4);
    if (v10 >= sub_1000714E4(v5))
    {
      v11 = sub_1000714E4(v4);
      v9 = v11 != sub_1000714E4(v5);
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

uint64_t sub_1000714E4(void *a1)
{
  v1 = a1;
  if ([v1 isAppDomain])
  {
    if ([v1 isLegacyPerAppPlaceholderDomain])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100071CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100071CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a2;
    v7 = [NSNumber numberWithUnsignedLongLong:a4];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  *(*(*(a1 + 40) + 8) + 24) += a4;
}

uint64_t sub_100071D64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSNumber numberWithLongLong:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];

  *(*(*(a1 + 40) + 8) + 24) += a3;
  return 1;
}

void sub_100072A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100072AFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resuming previously uploaded domain: %@", buf, 0xCu);
    _MBLog();
  }

  v5 = [*(*(a1 + 32) + 312) resumeInProgressManifest:v3];
  return 1;
}

uint64_t sub_100072BF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) isSystemDomainName:v5];
  v8 = [*(a1 + 32) isSystemDomainName:v6];
  if (v7)
  {
    v9 = v7 & v8 ^ 1;
  }

  else
  {
    v9 = -1;
  }

  if ((v7 & 1) == 0 && (v8 & 1) == 0)
  {
    v9 = [v5 compare:v6];
  }

  return v9;
}

void sub_100072C7C(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v8 = [*(a1 + 32) progressModel];
  [v8 willTransferItemsWithSize:a4 count:a3 + a2];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a4;
  *(*(*(a1 + 56) + 8) + 24) = a3;
}

void sub_100074220(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Unwind_Resume(a1);
}

void sub_100074398(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138543874;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to delete pending files for manifest %{public}@ (%@): %@", buf, 0x20u);
      v10 = *(a1 + 40);
      v9 = *(a1 + 32);
      _MBLog();
    }

    v7 = [*(a1 + 48) cache];
    v8 = [v7 deleteCloudFilesPendingDeleteForManifestID:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_1000744B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000744D0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  [*(a1 + 32) resumeWatchdogIfNeeded];
  v13 = *(*(a1 + 56) + 8);
  v15 = *(v13 + 40);
  v14 = (v13 + 40);
  if (!v15)
  {
    v16 = *(a1 + 32);
    obj = 0;
    v17 = [v16 handleCancelation:&obj];
    objc_storeStrong(v14, obj);
    if ((v17 & 1) == 0)
    {
      v20 = *(*(a1 + 32) + 40);
      v21 = [v20 containsDomainName:v11];
      if (a5 == 3 && (v21 & 1) == 0)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v96 = v11;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Creating uninstalled domain (%@)", buf, 0xCu);
          v75 = v11;
          _MBLog();
        }

        v23 = [MBDomain uninstalledDomainWithName:v11];
        [v20 addDomain:v23];
      }

      v24 = [*(a1 + 32) mountedSnapshotTracker];
      v25 = [v20 domainForName:v11];
      if (!v25)
      {
        __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]_block_invoke", "MBCKBackupEngine.m", 1467, "domain");
      }

      v26 = v25;
      v84 = v20;
      v27 = objc_alloc_init(MBCKFileChange);
      [(MBCKFileChange *)v27 setDomain:v26];
      [(MBCKFileChange *)v27 setRelativePath:v12];
      [(MBCKFileChange *)v27 setChangeType:a5];
      [(MBCKFileChange *)v27 setShouldCopy:a6];
      v82 = v26;
      v83 = v24;
      v85 = v12;
      if (a5 == 3)
      {
        v80 = [*(*(a1 + 32) + 312) resumeInProgressManifest:v11];
        v28 = [(MBCKFileChange *)v80 manifestID];
        v29 = *(a1 + 40);
        v92 = 0;
        v30 = [v29 committedManifestContainsDomain:v11 relativePath:v12 pendingManifestID:v28 error:&v92];
        v31 = v92;
        if (v31)
        {
          v32 = v31;
          goto LABEL_14;
        }

        if ((v30 & 1) == 0)
        {
          v54 = MBGetDefaultLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v96 = v27;
            v97 = 2112;
            v98 = v28;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "=cloud-backup= Not uploading deletion marker for uncommitted file %@ pendingManifest %@", buf, 0x16u);
            _MBLog();
          }

          v55 = [*(a1 + 32) cache];
          v32 = [v55 removeUncommittedFileWithDomain:v11 relativePath:v12 pendingManifestID:v28];

          if (!v32)
          {
            v18 = 1;
            v33 = v80;
            goto LABEL_15;
          }

LABEL_14:
          v33 = v80;
          v34 = *(*(a1 + 56) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = v32;
          v36 = v32;

          v18 = 0;
LABEL_15:

          v37 = v83;
          v38 = v84;
LABEL_71:

          goto LABEL_4;
        }
      }

      else
      {
        v39 = [v26 rootPath];
        v40 = [v26 volumeMountPoint];
        v41 = [v24 snapshotMountPointForVolumeMountPoint:v40];
        v42 = v26;
        v43 = v41;
        if ([v42 shouldBackupRelativePathFromLiveFileSystem:v12])
        {

          v43 = 0;
        }

        v44 = MBSnapshotPathFromLivePath(v39, v43, v40);
        [(MBCKFileChange *)v27 setSnapshotPath:v43];
        v45 = [v44 stringByAppendingPathComponent:v12];
        [(MBCKFileChange *)v27 setAbsolutePath:v45];
      }

      v91 = 0;
      v46 = *(a1 + 32);
      v47 = *(v46 + 312);
      v48 = *(a1 + 48);
      v90 = 0;
      v49 = [v47 addFileChange:v27 batchSave:v48 engine:v46 skipped:&v91 error:&v90];
      v33 = v90;
      if (v49)
      {
        v50 = v91;
        v38 = v84;
        v12 = v85;
        if (v91)
        {
          goto LABEL_55;
        }

        if (a5 == 3)
        {
          a4 = 1;
          v51 = 72;
          v52 = 64;
        }

        else
        {
          ++*(*(*(a1 + 80) + 8) + 24);
          *(*(*(a1 + 88) + 8) + 24) += a4;
          v51 = 104;
          v52 = 96;
        }

        ++*(*(*(a1 + v52) + 8) + 24);
        *(*(*(a1 + v51) + 8) + 24) += a4;
        if (__ROR8__(0xD288CE703AFB7E91 * (*(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 80) + 8) + 24)), 4) > 0x68DB8BAC710CBuLL)
        {
          v50 = 0;
          goto LABEL_55;
        }

        v56 = MBGetDefaultLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = *(*(*(a1 + 80) + 8) + 24);
          v58 = *(*(*(a1 + 88) + 8) + 24);
          v59 = *(*(*(a1 + 64) + 8) + 24);
          *buf = 134218754;
          v96 = v57;
          v97 = 2048;
          v98 = v58;
          v99 = 2048;
          v100 = v59;
          v101 = 2114;
          v102 = v11;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Queued %llu files (%llu) and %llu deletes for %{public}@", buf, 0x2Au);
          v78 = *(*(*(a1 + 64) + 8) + 24);
          v79 = v11;
          v76 = *(*(*(a1 + 80) + 8) + 24);
          v77 = *(*(*(a1 + 88) + 8) + 24);
          _MBLog();
        }

LABEL_54:

        v50 = v91;
LABEL_55:
        v18 = 1;
        if (v50)
        {
          goto LABEL_70;
        }

        v63 = *(*(*(a1 + 72) + 8) + 24) + *(*(*(a1 + 96) + 8) + 24);
        if (!v63 || v63 % 0x64)
        {
          goto LABEL_70;
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v64 = [*(*(a1 + 32) + 312) manifestsByDomainName];
        v53 = [v64 allValues];

        v65 = [v53 countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v65)
        {
          v66 = v65;
          v81 = v33;
          v67 = v38;
          v68 = *v87;
          while (2)
          {
            for (i = 0; i != v66; i = i + 1)
            {
              if (*v87 != v68)
              {
                objc_enumerationMutation(v53);
              }

              v70 = [*(*(&v86 + 1) + 8 * i) fileUploadError];
              if (v70)
              {
                v71 = *(*(a1 + 56) + 8);
                v72 = *(v71 + 40);
                *(v71 + 40) = v70;

                v18 = 0;
                goto LABEL_68;
              }
            }

            v66 = [v53 countByEnumeratingWithState:&v86 objects:v94 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }

LABEL_68:
          v38 = v67;
          v33 = v81;
        }

LABEL_69:

LABEL_70:
        v37 = v83;
        goto LABEL_71;
      }

      v12 = v85;
      if ([MBError isError:v33 withCode:4])
      {
        v53 = MBGetDefaultLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v96 = v27;
          v97 = 2112;
          v98 = v33;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "=cloud-backup= Deleted since scan: %@ %@", buf, 0x16u);
LABEL_31:
          _MBLog();
        }
      }

      else
      {
        if (![MBError isError:v33 withCode:209])
        {
          if ([MBError isError:v33 withCode:215])
          {
            v53 = MBGetDefaultLog();
            v38 = v84;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v96 = v27;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Encryption key: %@", buf, 0xCu);
              _MBLog();
            }

            v18 = 1;
            goto LABEL_69;
          }

          if ([MBError isError:v33 withCode:13])
          {
            v56 = MBGetDefaultLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v96 = v27;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "=cloud-backup= SQLite file is locked: %@", buf, 0xCu);
              v76 = v27;
              _MBLog();
            }

            v38 = v84;
          }

          else
          {
            v60 = [MBError isError:v33 withCode:16];
            v61 = MBGetDefaultLog();
            v56 = v61;
            if (!v60)
            {
              v38 = v84;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v96 = v27;
                v97 = 2112;
                v98 = v33;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to add %@: %@", buf, 0x16u);
                _MBLog();
              }

              v73 = *(*(a1 + 56) + 8);
              v74 = v33;
              v18 = 0;
              v53 = *(v73 + 40);
              *(v73 + 40) = v74;
              goto LABEL_69;
            }

            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = [MBError descriptionForError:v33 paths:0];
              *buf = 138412546;
              v96 = v62;
              v97 = 2112;
              v98 = v27;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=cloud-backup= %@: %@", buf, 0x16u);

              v76 = [MBError descriptionForError:v33 paths:0];
              v77 = v27;
              _MBLog();
            }

            v38 = v84;
          }

          goto LABEL_54;
        }

        v53 = MBGetDefaultLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v96 = v27;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Missing encryption key for %@", buf, 0xCu);
          goto LABEL_31;
        }
      }

      v18 = 1;
      v38 = v84;
      goto LABEL_69;
    }
  }

  v18 = 0;
LABEL_4:

  return v18;
}

void sub_100074FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 80) + 8) + 24);
      v7 = *(*(*(a1 + 88) + 8) + 24);
      v8 = *(*(*(a1 + 96) + 8) + 24);
      v9 = [*(a1 + 32) count];
      *buf = 134219010;
      v56 = v6;
      v57 = 2048;
      v58 = v7;
      v59 = 2048;
      v60 = v8;
      v61 = 2048;
      v62 = v9;
      v63 = 2112;
      v64 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=cloud-backup= Finished uploading %llu files (%llu) and %llu deletes for %lu domains: %@", buf, 0x34u);
      v10 = *(*(*(a1 + 80) + 8) + 24);
      v11 = *(*(*(a1 + 88) + 8) + 24);
      v12 = *(*(*(a1 + 96) + 8) + 24);
      v46 = [*(a1 + 32) count];
      v47 = v3;
      v43 = v11;
      v44 = v12;
      v42 = v10;
      _MBLog();
    }

    if ([MBError isCKPartialFailureError:v3])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v13 = [v3 userInfo];
      v14 = [v13 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v15 = [v14 allValues];

      v16 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (!v16)
      {
LABEL_28:

        goto LABEL_29;
      }

      v17 = v16;
      v18 = 0;
      v19 = 0;
      v20 = *v51;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          if ([MBError isCKError:v22 withCode:25, v42, v43, v44, v46, v47])
          {
            if (v18 & v19)
            {
              v18 = 1;
              v19 = 1;
            }

            else
            {
              v19 = ![MBError isAssetTooLargeError:v22];
              v18 = 1;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v17);

      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (![MBError isCKError:v3 withCode:25])
      {
LABEL_29:
        *(*(*(a1 + 104) + 8) + 24) = 0;
        v37 = [*(a1 + 40) retryStrategy];
        v38 = [v37 canRetryAfterError:v3];

        if (v38)
        {
          v39 = *(a1 + 112);
        }

        else
        {
          v39 = *(a1 + 120);
        }

        v40 = *(v39 + 8);
        v41 = v3;
        v5 = *(v40 + 40);
        *(v40 + 40) = v41;
        goto LABEL_33;
      }

      v19 = ![MBError isAssetTooLargeError:v3];
    }

    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v56 = v3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=cloud-backup= Resetting pending snapshot ID to clear quota after error: %{public}@", buf, 0xCu);
      v42 = v3;
      _MBLog();
    }

    v30 = [*(a1 + 40) device];
    [v30 clearPendingSnapshotFieldsAndRebuildFileChanges:1];

    v31 = [*(a1 + 40) device];
    v32 = *(a1 + 48);
    v49 = 0;
    LODWORD(v30) = [v31 saveWithOperationTracker:v32 error:&v49];
    v33 = v49;
    if ((v30 & v19) == 1)
    {
      v34 = *(a1 + 56);
      v35 = *(a1 + 64);
      v48 = v33;
      v36 = [v34 resetCacheWithAccount:v35 error:&v48];
      v15 = v48;

      if (v36)
      {
        MBExit(1);
      }
    }

    else
    {

      v15 = v33;
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(*(a1 + 80) + 8) + 24);
    v24 = *(*(*(a1 + 88) + 8) + 24);
    v25 = *(*(*(a1 + 96) + 8) + 24);
    v26 = [*(a1 + 32) count];
    *buf = 134218752;
    v56 = v23;
    v57 = 2048;
    v58 = v24;
    v59 = 2048;
    v60 = v25;
    v61 = 2048;
    v62 = v26;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished uploading %llu files (%llu) and %llu deletes for %lu domains", buf, 0x2Au);
    v27 = *(*(*(a1 + 80) + 8) + 24);
    v28 = *(*(*(a1 + 88) + 8) + 24);
    v45 = *(*(*(a1 + 96) + 8) + 24);
    [*(a1 + 32) count];
    _MBLog();
  }

LABEL_33:

  dispatch_semaphore_signal(*(a1 + 72));
}

void sub_10007899C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v8 = [NSString stringWithFormat:@"%s.wifiQuality", class_getName(v2)];
  v3 = v8;
  v4 = [v8 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);
  v7 = qword_100421640;
  qword_100421640 = v6;
}

void sub_100078A48(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiQuality];
  v3 = [v2 count];

  if (v3 >= 0x1E)
  {
    [*(*(a1 + 32) + 144) removeObjectAtIndex:0];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v4[18];
  v7 = [v4 _serializedWiFiQualityMeasurementFromInterface:v5];
  [v6 addObject:v7];
}

void sub_100078AE0(uint64_t a1)
{
  [*(*(a1 + 32) + 144) insertObject:*(a1 + 40) atIndex:0];
  v2 = *(a1 + 32);
  v3 = v2[18];
  v4 = [v2 _serializedWiFiQualityMeasurementFromInterface:*(a1 + 48)];
  [v3 addObject:v4];

  [*(a1 + 48) invalidate];
  v5 = [*(a1 + 32) wifiQualityGroup];
  dispatch_group_leave(v5);
}

void sub_100079AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MDM request to install restored apps failed: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100079CAC(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 8));
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v73 = 0;
  v4 = [objc_opt_class() regularRestoreCoordinatorsAndReturnError:&v73];
  v5 = v73;
  if (!v4)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v78 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IX: error enumerateCoordinatorsUsingBlock: %@", buf, 0xCu);
      v52 = v5;
      _MBLog();
    }
  }

  v56 = v5;
  v54 = v2;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v70;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v70 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v69 + 1) + 8 * i);
        v12 = [v11 identity];
        if (!v12)
        {
          v13 = MBGetDefaultLog();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          v78 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "IX: InstallCoordinator %@ had no bundle ID", buf, 0xCu);
          v52 = v11;
          goto LABEL_17;
        }

        if ([*(a1 + 32) shouldObserveCoordinatorWithIdentity:v12])
        {
          v13 = [v12 bundleID];
          [v54 setObject:v11 forKeyedSubscript:v13];
          goto LABEL_18;
        }

        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v78 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "IX: InstallCoordinator %@ had a bundle ID associated with a different persona", buf, 0xCu);
          v52 = v11;
LABEL_17:
          _MBLog();
        }

LABEL_18:
      }

      v8 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v8);
  }

  v14 = MBGetDefaultLog();
  v15 = v54;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v54 count];
    *buf = 134217984;
    v78 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IX: Done registering install coordination observers for regular apps (%lu)", buf, 0xCu);
    v52 = [v54 count];
    _MBLog();
  }

  v55 = objc_alloc_init(NSMutableArray);
  v17 = *(a1 + 32);
  v68 = v56;
  v18 = [objc_opt_class() demotedRestoreCoordinatorsAndReturnError:&v68];
  v19 = v68;

  if (!v18)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v78 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "IX: error (demoted) enumerateCoordinatorsUsingBlock: %@", buf, 0xCu);
      v52 = v19;
      _MBLog();
    }
  }

  v53 = v19;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v58 = v18;
  v21 = [v58 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v65;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v65 != v23)
        {
          objc_enumerationMutation(v58);
        }

        v25 = *(*(&v64 + 1) + 8 * j);
        v26 = [v25 identity];
        if (!v26)
        {
          v27 = MBGetDefaultLog();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *buf = 138412290;
          v78 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "IX: Demoted InstallCoordinator %@ had no bundle ID", buf, 0xCu);
          v52 = v25;
LABEL_40:
          _MBLog();
          goto LABEL_41;
        }

        if (![*(a1 + 32) shouldObserveCoordinatorWithIdentity:v26])
        {
          v27 = MBGetDefaultLog();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_41;
          }

          *buf = 138412290;
          v78 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "IX: InstallCoordinator %@ had a demoted bundle ID associated with a different persona", buf, 0xCu);
          v52 = v25;
          goto LABEL_40;
        }

        v27 = [v26 bundleID];
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v78 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "IX: Tracking demoted app %@", buf, 0xCu);
          v52 = v27;
          _MBLog();
        }

        [v54 setObject:v25 forKeyedSubscript:v27];
        [v55 addObject:v27];
LABEL_41:
      }

      v22 = [v58 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v22);
  }

  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v58 count];
    *buf = 134217984;
    v78 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "IX: Done registering install coordination observers for demoted apps (%lu)", buf, 0xCu);
    [v58 count];
    _MBLog();
  }

  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v54 count];
    *buf = 134217984;
    v78 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "IX: Tracking %lu install coordinators", buf, 0xCu);
    [v54 count];
    _MBLog();
  }

  v33 = [v54 count];
  v34 = *(a1 + 32);
  if (v33)
  {
    objc_storeStrong(v34 + 3, v54);
    v35 = [*(a1 + 32) account];
    v36 = [v35 persona];
    v37 = [v36 isDataSeparatedPersona];

    if (v37)
    {
      [*(a1 + 32) _requestMDMAppInstallation];
    }

    v38 = objc_alloc_init(ASDCompleteCoordinatorsRequest);
    [v38 startWithCompletionHandler:&stru_1003BCA98];
    v39 = [v55 count];
    v40 = MBGetDefaultLog();
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v55 count];
        *buf = 134217984;
        v78 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "IX: Kicking off data restores for %lu demoted apps", buf, 0xCu);
        [v55 count];
        _MBLog();
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v41 = v55;
      v43 = [v41 countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v61;
        do
        {
          for (k = 0; k != v44; k = k + 1)
          {
            if (*v61 != v45)
            {
              objc_enumerationMutation(v41);
            }

            v47 = *(*(&v60 + 1) + 8 * k);
            v48 = MBGetDefaultLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v78 = v47;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "IX: Queueing up data restore for demoted app %@", buf, 0xCu);
              _MBLog();
            }

            v49 = *(a1 + 32);
            v50 = *(v49 + 32);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10007A7F0;
            block[3] = &unk_1003BC060;
            block[4] = v49;
            block[5] = v47;
            dispatch_async(v50, block);
          }

          v44 = [v41 countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v44);
        v51 = v53;
        v15 = v54;
        goto LABEL_67;
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "IX: No demoted apps found in backup", buf, 2u);
      _MBLog();
    }

    v51 = v53;
LABEL_67:

    atomic_store(0, (*(a1 + 32) + 8));
    goto LABEL_68;
  }

  [v34 _finishAppDataRestore];
  v51 = v53;
LABEL_68:
}

void sub_10007A6D4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "IX: Done configuring install coordinators", buf, 2u);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IX: Done configuring install coordinators but couldn't signal appstored: %@", buf, 0xCu);
    goto LABEL_6;
  }
}

void sub_10007A7F0(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 _restoreApplicationWithBundleID:v3 failed:0 context:v3 error:&v12];
  v5 = v12;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "IX: Set up restore of user data for demoted app with bundleID %@", buf, 0xCu);
      v10 = *(a1 + 40);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "IX: Could not set up restore of user data for demoted app with bundleID %@ error %@", buf, 0x16u);
      v11 = *(a1 + 40);
      _MBLog();
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

void sub_10007AAA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) account];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 accountIdentifier];
    v6 = [v3 persona];
    v7 = [v6 personaIdentifier];
    v8 = *(a1 + 40);
    *buf = 138543874;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished restoring all apps for account %{public}@(%{public}@ cancelled:%d", buf, 0x1Cu);

    v9 = [v3 accountIdentifier];
    v10 = [v3 persona];
    v12 = [v10 personaIdentifier];
    v13 = *(a1 + 40);
    _MBLog();
  }

  v11 = [*(a1 + 32) delegate];
  [v11 didFinishAppRestoresWithAccount:v3 cancelled:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10007AE04(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 _restoreApplicationWithBundleID:v3 failed:0 context:v3 error:&v12];
  v5 = v12;
  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "IX: Set up restore of user data for %@ because the app asset started downloading", buf, 0xCu);
      v10 = *(a1 + 40);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "IX: Could not set up restore of user data for %@ when the app asset started downloading error %@", buf, 0x16u);
      v11 = *(a1 + 40);
      _MBLog();
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

void sub_10007B2E8(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "IX: Coordinator was canceled but hasn't been promised app data yet. Starting to restore it", buf, 2u);
    _MBLog();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = 0;
  v5 = [v3 _restoreApplicationWithBundleID:v4 failed:0 context:v4 error:&v13];
  v6 = v13;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Set up restore of user data for %@ because the coordinator was canceled", buf, 0xCu);
      v11 = *(a1 + 40);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "IX: Could not set up restore of user data for %@ when the coordinator was canceled. error %@ ", buf, 0x16u);
      v12 = *(a1 + 40);
      _MBLog();
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

void sub_10007C0AC(uint64_t a1)
{
  if (![*(*(a1 + 32) + 24) count])
  {
    v18 = *(a1 + 32);

    [v18 _finishAppDataRestore];
    return;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [*(*(a1 + 32) + 24) allKeys];
  v2 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = 0;
  v21 = *v23;
  v20 = IXErrorDomain;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      v6 = v4;
      if (*v23 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v8 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v7];
      v9 = [v8 userDataPromiseWithError:0];
      v26 = 0;
      v4 = [v8 userDataRestoreShouldBegin:&v26];

      if (v4)
      {
        v10 = [v4 domain];
        if ([v10 isEqualToString:v20])
        {
          v11 = [v4 code] == 6;
        }

        else
        {
          v11 = 0;
        }

        if (v9)
        {
LABEL_14:
          v13 = [v9 isComplete];
          v12 = v26 | ~v13;
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
        if (v9)
        {
          goto LABEL_14;
        }
      }

      v12 = v26;
LABEL_15:
      if ((v12 | v11))
      {
        v14 = [*(a1 + 32) delegate];
        [v9 percentComplete];
        v15 = [v14 isEngineInProgressForBundleID:v7 percentComplete:?];

        if ((v15 & 1) == 0)
        {
          v16 = 48;
          if (v11)
          {
            v16 = 40;
            v17 = v8;
          }

          else
          {
            v17 = v7;
          }

          [*(a1 + v16) addObject:v17];
        }
      }
    }

    v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  }

  while (v3);

LABEL_24:
}

void sub_10007C338(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) stopTrackingCoordinator:*(*(&v7 + 1) + 8 * v6) withSuccess:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10007C430(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Coordinator for %@ needs to be restarted because it hit a soft failure after backupd promised it data. Queuing restore", buf, 0xCu);
          _MBLog();
        }

        v9 = *(a1 + 40);
        v10 = *(v9 + 32);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007C60C;
        block[3] = &unk_1003BC060;
        block[4] = v9;
        block[5] = v7;
        dispatch_async(v10, block);
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
}

void sub_10007C60C(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 _restoreApplicationWithBundleID:v3 failed:0 context:v3 error:&v16];
  v5 = v16;
  if (!v4)
  {
    v8 = [MBError isError:v5 withCode:3];
    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "IX: Restore already in progress for %@", buf, 0xCu);
        v14 = *(a1 + 40);
LABEL_10:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IX: Could not restart restore of user data for %@: %@", buf, 0x16u);
      v15 = *(a1 + 40);
      goto LABEL_10;
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
    goto LABEL_12;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "IX: Restarted restore of user data for %@", buf, 0xCu);
    v13 = *(a1 + 40);
    _MBLog();
  }

LABEL_12:
}

void sub_10007C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C990(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007C9A8(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = a1[4];

    [v5 _setUpDataPromiseForCoordinator:?];
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IX: Can't restore data for %@ because it doesn't have an InstallCoordinator", buf, 0xCu);
      v8 = a1[5];
      _MBLog();
    }
  }
}

void sub_10007CD84(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  obj = [*(*(a1 + 32) + 24) allKeys];
  v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v6];
        [*(a1 + 32) stopTrackingCoordinator:v7 withSuccess:0];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10007CF20;
        v9[3] = &unk_1003BC010;
        v9[4] = v6;
        [IXAppInstallCoordinator uninstallAppWithBundleID:v6 requestUserConfirmation:0 completion:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void sub_10007CF20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "IX: Couldn't uninstall app %@: %@", buf, 0x16u);
      v8 = *(a1 + 32);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IX: Uninstalled app %@ after restore cancellation", buf, 0xCu);
    v9 = *(a1 + 32);
    goto LABEL_6;
  }
}

void sub_10007D3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10007D404(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 72);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 32) account];
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  LOBYTE(v3) = [v2 restoreApplicationWithBundleID:v5 failed:v3 qos:&off_1003E0D20 context:v4 account:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void sub_10007FDD0(uint64_t a1, double a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007FE68;
  v4[3] = &unk_1003BCB60;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

void sub_1000801D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_100081398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose((v67 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100081454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008146C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  v11 = [v9 count];
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v7 recordID];
    v14 = [v7 domainName];
    *buf = 134218754;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Fetched %lu file refs and %lu placeholder refs for manifest %{public}@(%{public}@)", buf, 0x2Au);

    v15 = [v7 recordID];
    v21 = [v7 domainName];
    _MBLog();
  }

  v16 = *(a1 + 32);
  objc_sync_enter(v16);
  *(*(*(a1 + 48) + 8) + 24) += v10;
  *(*(*(a1 + 56) + 8) + 24) += v11;
  objc_sync_exit(v16);

  if (v10)
  {
    v17 = *(a1 + 40);
    v18 = *(*(a1 + 64) + 8);
    obj = *(v18 + 40);
    [v17 addFileReferences:v8 forManifest:v7 error:&obj];
    objc_storeStrong((v18 + 40), obj);
  }

  if (v11)
  {
    v19 = *(a1 + 40);
    v20 = *(*(a1 + 64) + 8);
    v22 = *(v20 + 40);
    [v19 addPlaceholderReferences:v9 forManifest:v7 error:&v22];
    objc_storeStrong((v20 + 40), v22);
  }
}

void sub_1000816AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) watchdog];
  [v4 resume];

  v22 = 0;
  v5 = [v3 saveToCacheWithError:&v22];
  v6 = v22;
  v7 = v22;
  if ((v5 & 1) == 0)
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v9 = *(*(a1 + 48) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, v6);
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v3 recordID];
          *buf = 138543618;
          v24 = v14;
          v25 = 2114;
          v26 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to save manifest record %{public}@ to cache: %{public}@", buf, 0x16u);
        }

        v20 = [v3 recordID];
        _MBLog();
      }
    }

    objc_sync_exit(v8);
  }

  v15 = *(a1 + 32);
  objc_sync_enter(v15);
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 24) + 1;
  *(v16 + 24) = v17;
  objc_sync_exit(v15);

  if (__ROR8__(0x8F5C28F5C28F5C29 * v17, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      *buf = 134218242;
      v24 = v17;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetched %lu manifest records for snapshot %{public}@", buf, 0x16u);
      v21 = *(a1 + 40);
      _MBLog();
    }
  }
}

void sub_10008194C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch all manifests for snapshot %{public}@: %{public}@", buf, 0x16u);
      v12 = *(a1 + 32);
      _MBLog();
    }
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 56) + 8) + 24);
    v9 = *(*(*(a1 + 64) + 8) + 24);
    v10 = *(*(*(a1 + 72) + 8) + 24);
    v11 = *(a1 + 32);
    *buf = 134218754;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched a total of %lu manifest records, %lu placeholder refs, %lu file refs for snapshot %{public}@", buf, 0x2Au);
    v15 = *(*(*(a1 + 72) + 8) + 24);
    v16 = *(a1 + 32);
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = *(*(*(a1 + 64) + 8) + 24);
    _MBLog();
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100081B28(void *a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = *(*(a1[7] + 8) + 24);
    *buf = 138544130;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ query for snapshot %{public}@ updated the cursor (%lu): %{public}@", buf, 0x2Au);
    v11 = *(*(a1[7] + 8) + 24);
    v9 = a1[4];
    v10 = a1[5];
    _MBLog();
  }
}

void sub_100081C54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MBIsInternalInstall() && *(*(*(a1 + 80) + 8) + 24) >= *(a1 + 104))
  {
    v39 = MBGetDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 32);
      v41 = *(a1 + 40);
      v42 = *(a1 + 104);
      *buf = 138543874;
      v54 = v40;
      v55 = 2114;
      v56 = v41;
      v57 = 2048;
      v58 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Force cancelling %{public}@ query for snapshot %{public}@ after fetching %llu records", buf, 0x20u);
      v50 = *(a1 + 104);
      v47 = *(a1 + 32);
      _MBLog();
    }

    v43 = *(a1 + 48);
    v44 = *(a1 + 32);
    v14 = [MBError errorWithCode:202 format:@"Backup canceled (simulated for %@ after fetching %llu records)", v44, *(a1 + 104)];
    [v43 cancelWithError:v14];
  }

  else
  {
    v4 = *(a1 + 56);
    v52 = 0;
    v5 = [v4 domainNameForFileRecord:v3 error:&v52];
    v6 = v52;
    if (v5)
    {
      v7 = [MBCKFile fileWithRecord:v3 cache:*(a1 + 64) snapshot:*(a1 + 72) domainName:v5];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v7 recordIDString];
        v10 = [v7 domainName];
        *buf = 138412546;
        v54 = v9;
        v55 = 2112;
        v56 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Fetched %@ (%@)", buf, 0x16u);

        v11 = [v7 recordIDString];
        [v7 domainName];
        v48 = v45 = v11;
        _MBLog();
      }

      v51 = v6;
      v12 = [v7 saveToCacheWithError:&v51];
      v13 = v51;
      v14 = v51;

      if ((v12 & 1) == 0)
      {
        v15 = *(*(a1 + 88) + 8);
        v17 = *(v15 + 40);
        v16 = (v15 + 40);
        if (!v17)
        {
          objc_storeStrong(v16, v13);
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v3 recordID];
            v20 = [v19 recordName];
            *buf = 138543618;
            v54 = v20;
            v55 = 2114;
            v56 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to save file record %{public}@ to cache: %{public}@", buf, 0x16u);

            v21 = [v3 recordID];
            v45 = [v21 recordName];
            v48 = v14;
            _MBLog();
          }
        }
      }

      v22 = [v3 pluginFields];

      if (v22)
      {
        v23 = [v3 pluginFields];
        v24 = [v23 objectForKeyedSubscript:@"progress"];
        [v24 doubleValue];
        v26 = v25;

        v27 = v26 / 100.0;
        v28 = [*(a1 + 48) progressModel];
        [v28 updatingProgress:0 previousProgress:v27 size:*(*(*(a1 + 96) + 8) + 24)];

        *(*(*(a1 + 96) + 8) + 24) = v27;
      }

      v29 = [*(a1 + 48) watchdog];
      [v29 resume];

      v30 = *(*(a1 + 80) + 8);
      v31 = *(v30 + 24) + 1;
      *(v30 + 24) = v31;
      if (__ROR8__(0x1CAC083126E978D5 * v31, 3) <= 0x4189374BC6A7EFuLL)
      {
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 40);
          *buf = 134218242;
          v54 = v31;
          v55 = 2114;
          v56 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Fetched %lu file records for snapshot %{public}@", buf, 0x16u);
          v49 = *(a1 + 40);
          _MBLog();
        }
      }
    }

    else
    {
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v35 = [v3 recordID];
        v36 = [v35 recordName];
        *buf = 138543618;
        v54 = v36;
        v55 = 2112;
        v56 = v6;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Failed to retrieve domain name for file ID: %{public}@ %@", buf, 0x16u);

        v37 = [v3 recordID];
        v46 = [v37 recordName];
        _MBLog();
      }

      v38 = *(*(a1 + 88) + 8);
      v14 = v6;
      v7 = *(v38 + 40);
      *(v38 + 40) = v14;
    }
  }
}

void sub_100082220(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ query for snapshot %{public}@ failed: %@", buf, 0x20u);
      v27 = *(a1 + 40);
      v23 = *(a1 + 32);
      _MBLog();
    }

    v11 = *(*(a1 + 64) + 8);
    v12 = v6;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    if (v8)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 138544130;
      v33 = v14;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      v37 = v16;
      v38 = 2114;
      v39 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ query for snapshot %{public}@ updated the query cursor (%lu): %{public}@", buf, 0x2Au);
      v31 = *(*(*(a1 + 72) + 8) + 24);
      v24 = *(a1 + 32);
      v28 = *(a1 + 40);
      _MBLog();
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543618;
      v33 = v17;
      v34 = 2114;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ query for snapshot %{public}@ completed", buf, 0x16u);
      v25 = *(a1 + 32);
      v29 = *(a1 + 40);
      _MBLog();
    }
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*(*(a1 + 72) + 8) + 24);
    v21 = *(a1 + 40);
    *buf = 134218242;
    v33 = v20;
    v34 = 2114;
    v35 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Fetched a total of %lu file records for snapshot %{public}@", buf, 0x16u);
    v26 = *(*(*(a1 + 72) + 8) + 24);
    v30 = *(a1 + 40);
    _MBLog();
  }

  v22 = [*(a1 + 48) progressModel];
  [v22 updatingProgress:0 previousProgress:1.0 size:*(*(*(a1 + 80) + 8) + 24)];

  dispatch_group_leave(*(a1 + 56));
}

void sub_100082EB8(uint64_t a1)
{
  v1 = [*(a1 + 32) watchdog];
  [v1 resume];
}

void sub_100082EFC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_100084B54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134218242;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found cached snapshot (%lu): %{public}@", buf, 0x16u);
    [*(a1 + 32) count];
    _MBLog();
  }

  v6 = *(a1 + 32);
  v7 = [v3 snapshotID];
  [v6 addObject:v7];

  [*(a1 + 40) setCachedSnapshotCount:{objc_msgSend(*(a1 + 40), "cachedSnapshotCount") + 1}];
  return 1;
}

uint64_t sub_100084C80(id *a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  v5 = [a1[4] removeAllFileChanges];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = a1[5];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [a1[4] addPendingSnapshot:v11];
        v13 = [a1[4] commitSnapshot:v11];
        v14 = a1[4];
        v15 = [v11 snapshotID];
        v16 = [v14 addSnapshotIntoFileChanges:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v17 = [a1[4] removeDeletedFileChanges];
  if ([a1[6] isBackupEngine])
  {
    v18 = [a1[7] pendingSnapshotRecordID];

    if (v18)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [a1[7] pendingSnapshotRecordID];
        *buf = 138543362;
        v36 = *&v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding pending snapshot %{public}@ into FileChanges table", buf, 0xCu);

        v30 = [a1[7] pendingSnapshotRecordID];
        _MBLog();
      }

      v21 = a1[4];
      v22 = [a1[7] pendingSnapshotRecordID];
      v23 = [v21 addSnapshotIntoFileChanges:v22];
    }
  }

  v24 = [a1[4] removeAllOrphanedItems];
  +[NSDate timeIntervalSinceReferenceDate];
  v26 = v25 - v4;
  v27 = MBGetDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FileChanges table recreated in %0.3fs", buf, 0xCu);
    _MBLog();
  }

  v28 = [NSNumber numberWithDouble:v26];
  [*(a1[6] + 27) setObject:v28 forKeyedSubscript:@"CacheFileChangesRebuildTime"];

  return 1;
}

id MBDomainHMACForDomainName(uint64_t a1, uint64_t a2)
{
  v2 = [MBDigestSHA1 sha1HmacForString:a1 key:a2];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

uint64_t sub_100087C04(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = a2;
  v4 = [v3 snapshotID];
  [v2 setValue:v3 forKey:v4];

  return 1;
}

void sub_100088240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    if (!v29)
    {
      JUMPOUT(0x1000881A8);
    }

    JUMPOUT(0x100088198);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000882C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000882DC(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 addPendingSnapshot:*(a1 + 40)];

  v4 = [*(a1 + 32) cache];
  v5 = [v4 commitSnapshot:*(a1 + 40)];

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [*(a1 + 32) cache];
  v8 = *(a1 + 48);
  v215[0] = _NSConcreteStackBlock;
  v215[1] = 3221225472;
  v215[2] = sub_100089A34;
  v215[3] = &unk_1003BC700;
  v9 = v6;
  v216 = v9;
  v10 = [v7 enumerateManifestsForSnapshot:v8 foundManifest:v215];
  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v18 = [NSMutableSet alloc];
    v19 = [v9 allKeys];
    v13 = [v18 initWithArray:v19];

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = [*(a1 + 32) cache];
    v22 = *(a1 + 56);
    v213[0] = _NSConcreteStackBlock;
    v213[1] = 3221225472;
    v213[2] = sub_100089A8C;
    v213[3] = &unk_1003BC700;
    v16 = v20;
    v214 = v16;
    v23 = [v21 enumerateManifestsForSnapshot:v22 foundManifest:v213];
    v24 = *(*(a1 + 80) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v30 = [NSMutableSet alloc];
      v180 = v16;
      v31 = [v16 allKeys];
      v32 = [v30 initWithArray:v31];

      v178 = v13;
      v33 = [[NSMutableSet alloc] initWithSet:v13];
      v179 = v32;
      [v33 minusSet:v32];
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v29 = v33;
      v34 = [v29 countByEnumeratingWithState:&v209 objects:v227 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v210;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v210 != v36)
            {
              objc_enumerationMutation(v29);
            }

            v38 = *(*(&v209 + 1) + 8 * i);
            v39 = [*(a1 + 32) cache];
            v40 = [v39 moveManifest:v38 toSnapshot:*(a1 + 64)];
            v41 = *(*(a1 + 80) + 8);
            v42 = *(v41 + 40);
            *(v41 + 40) = v40;

            if (*(*(*(a1 + 80) + 8) + 40))
            {
              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v94 = *(a1 + 64);
                v95 = *(*(*(a1 + 80) + 8) + 40);
                *buf = 138412802;
                v222 = v38;
                v223 = 2112;
                v224 = v94;
                v225 = 2112;
                v226 = v95;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Unable to move manifest: %@ to snapshot: %@: %@", buf, 0x20u);
                v162 = *(a1 + 64);
                v169 = *(*(*(a1 + 80) + 8) + 40);
                _MBLog();
              }

              v17 = 0;
              v44 = v29;
              goto LABEL_48;
            }
          }

          v35 = [v29 countByEnumeratingWithState:&v209 objects:v227 count:16];
        }

        while (v35);
      }

      v43 = [[NSMutableSet alloc] initWithSet:v179];
      [v43 minusSet:v178];
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v205 objects:v220 count:16];
      if (!v45)
      {
LABEL_24:

        v13 = v178;
        v54 = [[NSMutableSet alloc] initWithSet:v178];
        v26 = v179;
        [v54 intersectSet:v179];
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v55 = v54;
        v16 = v180;
        v184 = v44;
        v185 = v29;
        obj = [v55 countByEnumeratingWithState:&v201 objects:v219 count:16];
        if (!obj)
        {
          goto LABEL_38;
        }

        v181 = *v202;
        v174 = v55;
        while (1)
        {
          v56 = 0;
          do
          {
            if (*v202 != v181)
            {
              objc_enumerationMutation(v55);
            }

            v57 = *(*(&v201 + 1) + 8 * v56);
            v58 = [[NSString alloc] initWithFormat:@"%@:%@", *(a1 + 64), v57];
            v59 = v9;
            v60 = [v9 valueForKey:v57];
            v61 = [v16 valueForKey:v57];
            v62 = MBGetDefaultLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v222 = v58;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Merging into %@", buf, 0xCu);
              v155 = v58;
              _MBLog();
            }

            WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
            v64 = [WeakRetained isBackupEngine];

            if (v64)
            {
              v65 = objc_loadWeakRetained((*(a1 + 32) + 96));
              [v65 resumeWatchdogIfNeeded];
            }

            v66 = [*(a1 + 32) cache];
            v67 = [v60 manifestID];
            v68 = [v61 manifestID];
            v69 = [v66 mergeManifest:v67 withNewerManifest:v68 outputManifest:v58 mergeDeletions:*(a1 + 88)];
            v70 = *(*(a1 + 80) + 8);
            v71 = *(v70 + 40);
            *(v70 + 40) = v69;

            if (*(*(*(a1 + 80) + 8) + 40))
            {
              v100 = MBGetDefaultLog();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                v101 = [v60 manifestID];
                v102 = [v61 manifestID];
                v103 = *(*(*(a1 + 80) + 8) + 40);
                *buf = 138412802;
                v222 = v101;
                v223 = 2112;
                v224 = v102;
                v225 = 2112;
                v226 = v103;
                _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Unable to merge manifest: %@ %@ %@", buf, 0x20u);

                v104 = [v60 manifestID];
                v164 = [v61 manifestID];
                v171 = *(*(*(a1 + 80) + 8) + 40);
                _MBLog();

                goto LABEL_62;
              }

LABEL_63:
              v13 = v178;
LABEL_64:
              v44 = v184;

              v55 = v174;
              v17 = 0;
              v9 = v59;
LABEL_49:
              v26 = v179;
              v16 = v180;
              goto LABEL_50;
            }

            v72 = [*(a1 + 32) cache];
            v73 = [v72 removeManifestAndFiles:v60];
            v74 = *(*(a1 + 80) + 8);
            v75 = *(v74 + 40);
            *(v74 + 40) = v73;

            if (*(*(*(a1 + 80) + 8) + 40))
            {
              v100 = MBGetDefaultLog();
              if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_63;
              }

              v105 = [v60 manifestID];
              v106 = *(*(*(a1 + 80) + 8) + 40);
              *buf = 138412546;
              v222 = v105;
              v223 = 2112;
              v224 = v106;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Unable to remove old manifestA: %@ %@", buf, 0x16u);

              v104 = [v60 manifestID];
              v165 = *(*(*(a1 + 80) + 8) + 40);
LABEL_61:
              _MBLog();
LABEL_62:
              v13 = v178;

              goto LABEL_64;
            }

            v76 = [*(a1 + 32) cache];
            v77 = [v76 removeManifestAndFiles:v61];
            v78 = *(*(a1 + 80) + 8);
            v79 = *(v78 + 40);
            *(v78 + 40) = v77;

            if (*(*(*(a1 + 80) + 8) + 40))
            {
              v100 = MBGetDefaultLog();
              if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_63;
              }

              v107 = [v61 manifestID];
              v108 = *(*(*(a1 + 80) + 8) + 40);
              *buf = 138412546;
              v222 = v107;
              v223 = 2112;
              v224 = v108;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Unable to remove old manifestB: %@ %@", buf, 0x16u);

              v104 = [v61 manifestID];
              v166 = *(*(*(a1 + 80) + 8) + 40);
              goto LABEL_61;
            }

            v80 = *(a1 + 40);
            v81 = [v61 domainName];
            v82 = [*(a1 + 32) cache];
            v83 = [MBCKManifest manifestWithSnapshot:v80 domainName:v81 count:0 cache:v82];

            v29 = v185;
            v84 = [*(a1 + 32) cache];
            v85 = [v84 addManifest:v83 toPendingSnapshot:*(a1 + 40)];

            v56 = v56 + 1;
            v55 = v174;
            v9 = v59;
            v16 = v180;
          }

          while (obj != v56);
          v13 = v178;
          v26 = v179;
          obj = [v174 countByEnumeratingWithState:&v201 objects:v219 count:16];
          if (!obj)
          {
LABEL_38:

            v86 = [*(a1 + 32) cache];
            v87 = [v86 removeSnapshot:*(a1 + 48)];
            v88 = *(*(a1 + 80) + 8);
            v89 = *(v88 + 40);
            *(v88 + 40) = v87;

            if (*(*(*(a1 + 80) + 8) + 40))
            {
              v90 = MBGetDefaultLog();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v91 = [*(a1 + 48) snapshotID];
                v92 = *(*(*(a1 + 80) + 8) + 40);
                *buf = 138412546;
                v222 = v91;
                v223 = 2112;
                v224 = v92;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "Unable to remove old snapshotA: %@ %@", buf, 0x16u);

                v93 = [*(a1 + 48) snapshotID];
                v161 = *(*(*(a1 + 80) + 8) + 40);
                goto LABEL_68;
              }

              goto LABEL_69;
            }

            v109 = [*(a1 + 32) cache];
            v110 = [v109 removeSnapshot:*(a1 + 56)];

            if (*(*(*(a1 + 80) + 8) + 40))
            {
              v90 = MBGetDefaultLog();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v111 = [*(a1 + 56) snapshotID];
                v112 = *(*(*(a1 + 80) + 8) + 40);
                *buf = 138412546;
                v222 = v111;
                v223 = 2112;
                v224 = v112;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "Unable to remove old snapshotB: %@ %@", buf, 0x16u);

                v93 = [*(a1 + 56) snapshotID];
                v167 = *(*(*(a1 + 80) + 8) + 40);
LABEL_68:
                _MBLog();
              }

LABEL_69:

              v17 = 0;
              v44 = v184;
              goto LABEL_50;
            }

            v113 = *(a1 + 72);
            v44 = v184;
            if (!v113)
            {
              goto LABEL_117;
            }

            v175 = v55;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            obja = [v113 manifestsByDomainName];
            v114 = [obja countByEnumeratingWithState:&v197 objects:v218 count:16];
            v172 = v9;
            if (!v114)
            {

              goto LABEL_92;
            }

            v115 = v114;
            v182 = *v198;
            v173 = 1;
            while (2)
            {
              v116 = 0;
LABEL_74:
              if (*v198 != v182)
              {
                objc_enumerationMutation(obja);
              }

              v117 = *(*(&v197 + 1) + 8 * v116);
              v118 = [*(a1 + 72) manifestsByDomainName];
              v119 = [v118 objectForKeyedSubscript:v117];

              v120 = [*(a1 + 72) manifestIDs];
              v121 = [v119 baseRecordIDString];
              v122 = [v120 indexOfObject:v121];

              v123 = [*(a1 + 32) cache];
              v124 = [v119 manifestID];
              v125 = *(*(a1 + 80) + 8);
              v196 = *(v125 + 40);
              v126 = [v123 checksumForManifest:v124 error:&v196];
              objc_storeStrong((v125 + 40), v196);

              if (v122 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v127 = MBGetDefaultLog();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  v128 = [*(a1 + 72) manifestIDs];
                  v129 = [v119 recordIDString];
                  *buf = 138412802;
                  v222 = v117;
                  v223 = 2114;
                  v224 = v128;
                  v225 = 2114;
                  v226 = v129;
                  _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Manifest: %@ %{public}@ %{public}@ - unable to find index to verify cache", buf, 0x20u);

                  v130 = [*(a1 + 72) manifestIDs];
                  [v119 recordIDString];
                  v168 = v158 = v130;
                  v154 = v117;
                  _MBLog();

                  v44 = v184;
                  v29 = v185;
                  goto LABEL_83;
                }

                v44 = v184;
                v29 = v185;
LABEL_86:
              }

              else
              {
                v131 = [*(a1 + 72) manifestChecksums];
                v132 = [v131 objectAtIndexedSubscript:v122];
                v133 = [v132 longLongValue];

                v44 = v184;
                v29 = v185;
                if (*(*(*(a1 + 80) + 8) + 40) || v133 != v126)
                {
                  v127 = MBGetDefaultLog();
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                  {
                    v134 = [v119 manifestID];
                    *buf = 138412546;
                    v222 = v117;
                    v223 = 2112;
                    v224 = v134;
                    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Manifest: %@ (%@) maybe corrupted in the cache.", buf, 0x16u);

                    v130 = [v119 manifestID];
                    v154 = v117;
                    v158 = v130;
                    _MBLog();
                    v173 = 0;
LABEL_83:
                  }

                  else
                  {
                    v173 = 0;
                  }

                  goto LABEL_86;
                }
              }

              if (v115 == ++v116)
              {
                v115 = [obja countByEnumeratingWithState:&v197 objects:v218 count:16];
                if (!v115)
                {

                  v9 = v172;
                  v13 = v178;
                  v26 = v179;
                  v55 = v175;
                  if ((v173 & 1) == 0)
                  {
                    goto LABEL_114;
                  }

LABEL_92:
                  v194 = 0u;
                  v195 = 0u;
                  v192 = 0u;
                  v193 = 0u;
                  v183 = [*(a1 + 72) manifestsByDomainName];
                  v135 = [v183 countByEnumeratingWithState:&v192 objects:v217 count:16];
                  if (v135)
                  {
                    v136 = v135;
                    v137 = *v193;
                    v138 = 1;
                    do
                    {
                      for (j = 0; j != v136; j = j + 1)
                      {
                        if (*v193 != v137)
                        {
                          objc_enumerationMutation(v183);
                        }

                        v140 = *(*(&v192 + 1) + 8 * j);
                        v141 = [*(a1 + 72) manifestsByDomainName];
                        v142 = [v141 objectForKeyedSubscript:v140];

                        v143 = dispatch_semaphore_create(0);
                        v189[0] = _NSConcreteStackBlock;
                        v189[1] = 3221225472;
                        v189[2] = sub_100089AE4;
                        v189[3] = &unk_1003BC160;
                        v191 = *(a1 + 80);
                        v144 = v143;
                        v190 = v144;
                        [v142 saveToCacheWithCompletion:v189];
                        dispatch_semaphore_wait(v144, 0xFFFFFFFFFFFFFFFFLL);
                        if (*(*(*(a1 + 80) + 8) + 40))
                        {
                          v145 = MBGetDefaultLog();
                          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                          {
                            v146 = [v142 manifestID];
                            v147 = *(*(*(a1 + 80) + 8) + 40);
                            *buf = 138412802;
                            v222 = v140;
                            v223 = 2112;
                            v224 = v146;
                            v225 = 2112;
                            v226 = v147;
                            _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "Manifest: %@ (%@) unable to save to the cache: %@", buf, 0x20u);

                            v158 = [v142 manifestID];
                            v168 = *(*(*(a1 + 80) + 8) + 40);
                            v156 = v140;
                            _MBLog();
                          }

                          v138 = 0;
                        }
                      }

                      v136 = [v183 countByEnumeratingWithState:&v192 objects:v217 count:16];
                    }

                    while (v136);
                  }

                  else
                  {
                    v138 = 1;
                  }

                  v148 = dispatch_semaphore_create(0);
                  v186[0] = _NSConcreteStackBlock;
                  v186[1] = 3221225472;
                  v186[2] = sub_100089B44;
                  v186[3] = &unk_1003BC160;
                  v149 = *(a1 + 72);
                  v188 = *(a1 + 80);
                  v150 = v148;
                  v187 = v150;
                  [v149 saveToCacheWithCompletion:v186];
                  dispatch_semaphore_wait(v150, 0xFFFFFFFFFFFFFFFFLL);
                  v13 = v178;
                  v44 = v184;
                  if (*(*(*(a1 + 80) + 8) + 40))
                  {
                    v151 = MBGetDefaultLog();
                    v9 = v172;
                    v26 = v179;
                    v29 = v185;
                    v55 = v175;
                    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                    {
                      v152 = *(*(*(a1 + 80) + 8) + 40);
                      *buf = 138412290;
                      v222 = v152;
                      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "Could not save cache: %@", buf, 0xCu);
                      v157 = *(*(*(a1 + 80) + 8) + 40);
                      _MBLog();
                    }

LABEL_114:
                    v153 = MBGetDefaultLog();
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "Journal replay merge action did not succeed.", buf, 2u);
                      _MBLog();
                    }

                    v16 = v180;
LABEL_119:

                    [*(a1 + 72) forgetManifests];
                    v17 = 1;
LABEL_50:

LABEL_51:
                    goto LABEL_52;
                  }

                  v9 = v172;
                  v26 = v179;
                  v29 = v185;
                  v55 = v175;
                  if ((v138 & 1) == 0)
                  {
                    goto LABEL_114;
                  }

                  v16 = v180;
                  if (*(a1 + 72))
                  {
                    v153 = MBGetDefaultLog();
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "Journal replay merge action succeeded.", buf, 2u);
                      _MBLog();
                    }

                    v9 = v172;
                    v13 = v178;
                    v26 = v179;
                    v16 = v180;
                    v44 = v184;
                    v29 = v185;
                    v55 = v175;
                    goto LABEL_119;
                  }

LABEL_117:
                  v153 = MBGetDefaultLog();
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "Journal replay merge action succeeded (intermediate action).", buf, 2u);
                    _MBLog();
                  }

                  goto LABEL_119;
                }

                continue;
              }

              goto LABEL_74;
            }
          }
        }
      }

      v46 = v45;
      v47 = *v206;
LABEL_18:
      v48 = 0;
      while (1)
      {
        if (*v206 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v205 + 1) + 8 * v48);
        v50 = [*(a1 + 32) cache];
        v51 = [v50 moveManifest:v49 toSnapshot:*(a1 + 64)];
        v52 = *(*(a1 + 80) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;

        if (*(*(*(a1 + 80) + 8) + 40))
        {
          break;
        }

        if (v46 == ++v48)
        {
          v46 = [v44 countByEnumeratingWithState:&v205 objects:v220 count:16];
          if (!v46)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }
      }

      v96 = MBGetDefaultLog();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = *(a1 + 64);
        v98 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412802;
        v222 = v49;
        v223 = 2112;
        v224 = v97;
        v225 = 2112;
        v226 = v98;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Unable to move manifest: %@ to snapshot: %@: %@", buf, 0x20u);
        v163 = *(a1 + 64);
        v170 = *(*(*(a1 + 80) + 8) + 40);
        _MBLog();
      }

      v17 = 0;
      v55 = v44;
LABEL_48:
      v13 = v178;
      goto LABEL_49;
    }

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 56) snapshotID];
      v28 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      v222 = v27;
      v223 = 2112;
      v224 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unable to enumerate manifests for snapshot %@: %@", buf, 0x16u);

      v29 = [*(a1 + 56) snapshotID];
      v160 = *(*(*(a1 + 80) + 8) + 40);
      _MBLog();
      v17 = 0;
      goto LABEL_51;
    }

    v17 = 0;
LABEL_52:

    goto LABEL_53;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [*(a1 + 48) snapshotID];
    v15 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412546;
    v222 = v14;
    v223 = 2112;
    v224 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to enumerate manifests for snapshot %@: %@", buf, 0x16u);

    v16 = [*(a1 + 48) snapshotID];
    v159 = *(*(*(a1 + 80) + 8) + 40);
    _MBLog();
    v17 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v17 = 0;
LABEL_54:

  return v17;
}

uint64_t sub_100089A34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 domainHmac];
  [v2 setObject:v3 forKeyedSubscript:v4];

  return 1;
}

uint64_t sub_100089A8C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 domainHmac];
  [v2 setObject:v3 forKeyedSubscript:v4];

  return 1;
}

void sub_100089AE4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100089B44(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100089F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100089F58(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) cache];
  v4 = [v3 addPendingSnapshot:*(a1 + 40)];

  v5 = [*v2 cache];
  v6 = [v5 commitSnapshot:*(a1 + 40)];

  v113 = [[NSSet alloc] initWithArray:*(a1 + 48)];
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [*v2 cache];
  v9 = *(a1 + 56);
  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_10008AED4;
  v136[3] = &unk_1003BC700;
  v111 = v7;
  v137 = v111;
  v10 = [v8 enumerateManifestsForSnapshot:v9 foundManifest:v136];
  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 56) snapshotID];
      v15 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't enumerate manifest for snapshot %@: %@", buf, 0x16u);

      v98 = [*(a1 + 56) snapshotID];
      v103 = *(*(*(a1 + 80) + 8) + 40);
      _MBLog();
    }

    goto LABEL_28;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v16 = v111;
  v17 = [v16 countByEnumeratingWithState:&v132 objects:v150 count:16];
  if (v17)
  {
    v18 = *v133;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v133 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v132 + 1) + 8 * i);
        v21 = [v16 objectForKeyedSubscript:v20];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
        v23 = [WeakRetained isBackupEngine];

        if (v23)
        {
          v24 = objc_loadWeakRetained((*(a1 + 32) + 96));
          [v24 resumeWatchdogIfNeeded];
        }

        v25 = [v113 containsObject:v20];
        v26 = [*(a1 + 32) cache];
        v27 = v26;
        if (v25)
        {
          v28 = [v26 removeManifestAndFiles:v21];
          v29 = *(*(a1 + 80) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          if (*(*(*(a1 + 80) + 8) + 40))
          {
            v42 = MBGetDefaultLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v44 = [v21 manifestID];
              v45 = *(*(*(a1 + 80) + 8) + 40);
              *buf = 138412546;
              *&buf[4] = v44;
              *&buf[12] = 2112;
              *&buf[14] = v45;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Unable to remove old manifest: %@ %@", buf, 0x16u);

              v46 = [v21 manifestID];
              v105 = *(*(*(a1 + 80) + 8) + 40);
              _MBLog();
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v31 = [v21 manifestID];
          v32 = [v27 moveManifest:v31 toSnapshot:*(a1 + 64)];
          v33 = *(*(a1 + 80) + 8);
          v34 = *(v33 + 40);
          *(v33 + 40) = v32;

          if (*(*(*(a1 + 80) + 8) + 40))
          {
            v42 = MBGetDefaultLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v47 = [v21 manifestID];
              v49 = *(a1 + 64);
              v48 = (a1 + 64);
              v50 = *(*(v48[2] + 8) + 40);
              *buf = 138412802;
              *&buf[4] = v47;
              *&buf[12] = 2112;
              *&buf[14] = v49;
              *&buf[22] = 2112;
              v146 = v50;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Unable to move manifest: %@ to snapshot: %@: %@", buf, 0x20u);

              v46 = [v21 manifestID];
              v106 = *v48;
              v110 = *(*(v48[2] + 8) + 40);
              _MBLog();
LABEL_26:
            }

LABEL_27:

            goto LABEL_28;
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v132 objects:v150 count:16];
    }

    while (v17);
  }

  v35 = [*(a1 + 32) cache];
  v36 = [v35 removeSnapshot:*(a1 + 56)];
  v37 = *(*(a1 + 80) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v39 = MBGetDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [*(a1 + 56) snapshotID];
      v41 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unable to remove old snapshot: %@ %@", buf, 0x16u);

      v99 = [*(a1 + 56) snapshotID];
      v104 = *(*(*(a1 + 80) + 8) + 40);
      _MBLog();
    }

    goto LABEL_28;
  }

  v53 = *(a1 + 72);
  if (!v53)
  {
    goto LABEL_77;
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = [v53 manifestsByDomainName];
  v54 = [obj countByEnumeratingWithState:&v128 objects:v149 count:16];
  if (!v54)
  {

    goto LABEL_51;
  }

  v115 = *v129;
  v112 = 1;
  do
  {
    for (j = 0; j != v54; j = j + 1)
    {
      if (*v129 != v115)
      {
        objc_enumerationMutation(obj);
      }

      v56 = *(*(&v128 + 1) + 8 * j);
      v57 = [*(a1 + 72) manifestsByDomainName];
      v58 = [v57 objectForKeyedSubscript:v56];

      v59 = [*(a1 + 72) manifestIDs];
      v60 = [v58 baseRecordIDString];
      v61 = [v59 indexOfObject:v60];

      v62 = [*(a1 + 32) cache];
      v63 = [v58 manifestID];
      v64 = *(*(a1 + 80) + 8);
      v127 = *(v64 + 40);
      v65 = [v62 checksumForManifest:v63 error:&v127];
      objc_storeStrong((v64 + 40), v127);

      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = [*(a1 + 72) manifestIDs];
          v68 = [v58 recordIDString];
          *buf = 138412802;
          *&buf[4] = v56;
          *&buf[12] = 2114;
          *&buf[14] = v67;
          *&buf[22] = 2114;
          v146 = v68;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Manifest: %@ %{public}@ %{public}@ - unable to find index to verify cache", buf, 0x20u);

          v69 = [*(a1 + 72) manifestIDs];
          [v58 recordIDString];
          v109 = v102 = v69;
          v97 = v56;
          _MBLog();

          goto LABEL_43;
        }

        goto LABEL_45;
      }

      v70 = [*(a1 + 72) manifestChecksums];
      v71 = [v70 objectAtIndexedSubscript:v61];
      v72 = [v71 longLongValue];

      if (*(*(*(a1 + 80) + 8) + 40) || v72 != v65)
      {
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v73 = [v58 manifestID];
          v74 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412802;
          *&buf[4] = v56;
          *&buf[12] = 2112;
          *&buf[14] = v73;
          *&buf[22] = 2112;
          v146 = v74;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Manifest: %@ (%@) maybe corrupted in the cache, error:%@", buf, 0x20u);

          v69 = [v58 manifestID];
          v102 = v69;
          v109 = *(*(*(a1 + 80) + 8) + 40);
          v97 = v56;
          _MBLog();
          v112 = 0;
LABEL_43:
        }

        else
        {
          v112 = 0;
        }

LABEL_45:
      }
    }

    v54 = [obj countByEnumeratingWithState:&v128 objects:v149 count:16];
  }

  while (v54);

  if ((v112 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_51:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v146 = sub_1000882C4;
  v147 = sub_1000882D4;
  v148 = 0;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v75 = [*(a1 + 72) manifestsByDomainName];
  v76 = [v75 countByEnumeratingWithState:&v123 objects:v144 count:16];
  if (v76)
  {
    v77 = *v124;
    v78 = 1;
    v116 = v75;
    do
    {
      for (k = 0; k != v76; k = k + 1)
      {
        if (*v124 != v77)
        {
          objc_enumerationMutation(v116);
        }

        v80 = *(*(&v123 + 1) + 8 * k);
        v81 = [*(a1 + 72) manifestsByDomainName];
        v82 = [v81 objectForKeyedSubscript:v80];

        v83 = dispatch_semaphore_create(0);
        v120[0] = _NSConcreteStackBlock;
        v120[1] = 3221225472;
        v120[2] = sub_10008AF2C;
        v120[3] = &unk_1003BC160;
        v122 = buf;
        v84 = v83;
        v121 = v84;
        [v82 saveToCacheWithCompletion:v120];
        dispatch_semaphore_wait(v84, 0xFFFFFFFFFFFFFFFFLL);
        if (*(*&buf[8] + 40))
        {
          v85 = MBGetDefaultLog();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v86 = v85;
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              v87 = [v82 manifestID];
              v88 = *(*&buf[8] + 40);
              *v138 = 138412802;
              v139 = v80;
              v140 = 2112;
              v141 = v87;
              v142 = 2112;
              v143 = v88;
              _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Manifest: %@ (%@) unable to save to the cache: %@", v138, 0x20u);
            }

            v107 = [v82 manifestID];
            v109 = *(*&buf[8] + 40);
            v100 = v80;
            _MBLog();
          }

          objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*&buf[8] + 40));
          v78 = 0;
        }
      }

      v75 = v116;
      v76 = [v116 countByEnumeratingWithState:&v123 objects:v144 count:16];
    }

    while (v76);
  }

  else
  {
    v78 = 1;
  }

  v89 = dispatch_semaphore_create(0);
  v90 = *(a1 + 72);
  v117[0] = _NSConcreteStackBlock;
  v117[1] = 3221225472;
  v117[2] = sub_10008AF8C;
  v117[3] = &unk_1003BC160;
  v119 = buf;
  v91 = v89;
  v118 = v91;
  [v90 saveToCacheWithCompletion:v117];
  dispatch_semaphore_wait(v91, 0xFFFFFFFFFFFFFFFFLL);
  if (!*(*&buf[8] + 40))
  {

    _Block_object_dispose(buf, 8);
    if ((v78 & 1) == 0)
    {
      goto LABEL_74;
    }

    if (*(a1 + 72))
    {
      v95 = MBGetDefaultLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Journal replay removeDomain action succeeded.", buf, 2u);
LABEL_79:
        _MBLog();
        goto LABEL_80;
      }

      goto LABEL_80;
    }

LABEL_77:
    v95 = MBGetDefaultLog();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Journal replay removeDomain action succeeded (intermediate action).", buf, 2u);
      goto LABEL_79;
    }

LABEL_80:

    [*(a1 + 72) forgetManifests];
    v51 = 1;
    goto LABEL_29;
  }

  v92 = MBGetDefaultLog();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    v93 = *(a1 + 64);
    v94 = *(*&buf[8] + 40);
    *v138 = 138412546;
    v139 = v93;
    v140 = 2112;
    v141 = v94;
    _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "Snapshot: %@ unable to save to the cache: %@", v138, 0x16u);
    v101 = *(a1 + 64);
    v108 = *(*&buf[8] + 40);
    _MBLog();
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*&buf[8] + 40));
  _Block_object_dispose(buf, 8);

LABEL_74:
  v96 = MBGetDefaultLog();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Journal replay removeDomain action did not succeed.", buf, 2u);
    _MBLog();
  }

LABEL_28:
  v51 = 0;
LABEL_29:

  return v51;
}

uint64_t sub_10008AED4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 domainHmac];
  [v2 setObject:v3 forKeyedSubscript:v4];

  return 1;
}

void sub_10008AF2C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008AF8C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL sub_10008E27C(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  if (v12)
  {
    if (![v12 isEqualToString:v9])
    {
      v20 = 1;
      goto LABEL_27;
    }

    v11 = *(a1 + 32);
  }

  if (a4)
  {
    [*(v11 + 16) addObject:v9];
    v11 = *(a1 + 32);
  }

  v13 = [*(v11 + 8) objectForKeyedSubscript:v10];
  v14 = v13;
  v15 = *(a1 + 32);
  if (*(v15 + 8))
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v20 = 1;
  }

  else
  {
    v17 = *(v15 + 40);
    v27 = 0;
    v18 = [v17 sizeOfScannedDomain:v9 error:&v27];
    v19 = v27;
    v20 = v19 == 0;
    if (v19)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = v9;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching local size of domain: %@: %@", buf, 0x16u);
        _MBLog();
      }

      if (a5)
      {
        v22 = v19;
        *a5 = v19;
      }
    }

    else
    {
      if (*(*(a1 + 32) + 8))
      {
        v23 = [v14 quota];
      }

      else
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v29 = v9;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "=quota-calculation= Using local size estimate for domain %@ because domainQuota wasn't present on the snapshotRecord", buf, 0xCu);
          _MBLog();
        }

        v23 = v18;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134218754;
        v29 = v23;
        v30 = 2048;
        v31 = v18;
        v32 = 2112;
        v33 = v9;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=quota-calculation= Fetched server quota of %llu bytes and scanned size of %llu bytes for domain %@ with hmac  %@", buf, 0x2Au);
        _MBLog();
      }

      [*(a1 + 32) _addCloudSize:v23 localSize:v18 forDomain:v9];
    }
  }

LABEL_27:
  return v20;
}

uint64_t sub_10008E5DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [*(a1 + 32) _addCloudSize:a4 localSize:0 forDomain:v6];
  if (!*(*(a1 + 32) + 56) || [v6 isEqualToString:?])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) _sizeOfDomain:v6];
      *buf = 134218498;
      v12 = a4;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=quota-calculation= Fetched placeholder size of %llu for %@ (total: %@)", buf, 0x20u);

      v10 = [*(a1 + 32) _sizeOfDomain:v6];
      _MBLog();
    }
  }

  return 1;
}

uint64_t sub_10008EC54(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HealthDomain"])
  {
    v2 = MBDeviceClass();
    if ([v2 isEqualToString:@"iPad"])
    {
    }

    else
    {
      v3 = [v2 isEqualToString:@"RealityDevice"];

      if (!v3)
      {
LABEL_9:
        v7 = 0;
        goto LABEL_10;
      }
    }
  }

  v4 = MBGetHealthRelatedDomains();
  v5 = [v4 containsObject:v1];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=quota-calculation= Skipping health-related domain %@", buf, 0xCu);
    _MBLog();
  }

  v7 = 1;
LABEL_10:

  return v7;
}

uint64_t sub_10008F140(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _sizeOfDomain:v6];
  v8 = v7;
  if (v7)
  {
    [*(a1 + 32) _addCloudSize:objc_msgSend(v7 localSize:"cloudSize") forDomain:{objc_msgSend(v7, "localSize"), v5}];
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) _sizeOfDomain:v5];
      *buf = 138413058;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=quota-calculation= Fetched child domain %@ of %@ with size %@ (total: %@)", buf, 0x2Au);

      v12 = [*(a1 + 32) _sizeOfDomain:v5];
      _MBLog();
    }
  }

  return 1;
}

void sub_10008F384(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ((sub_10008EC54(v7) & 1) == 0)
  {
    v6 = [[MBDomainInfo alloc] initWithDomainName:v7 systemApp:objc_msgSend(*(*(a1 + 32) + 16) remoteSize:"containsObject:" localSize:v7) enabled:objc_msgSend(v5 restricted:{"cloudSize"), objc_msgSend(v5, "localSize"), objc_msgSend(*(*(a1 + 32) + 80), "containsObject:", v7) ^ 1, objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v7)}];
    [*(a1 + 40) addObject:v6];
  }
}

int64_t sub_10008F490(id a1, MBDomainInfo *a2, MBDomainInfo *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MBDomainInfo *)v5 size];
  if (v6 >= [(MBDomainInfo *)v4 size])
  {
    v8 = [(MBDomainInfo *)v5 size];
    v7 = v8 != [(MBDomainInfo *)v4 size];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t sub_100090D78(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((sub_10008EC54(v3) & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

int64_t sub_100090DBC(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 size];
  if (v6 >= [v4 size])
  {
    v8 = [v5 size];
    v7 = v8 != [v4 size];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

id MBCalculateQuotaForDomainsInCurrentDevice(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    __assert_rtn("MBCalculateQuotaForDomainsInCurrentDevice", "MBCalculateQuota.m", 579, "serviceAccount");
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=quota-calculation= Calculating quota for domains in current device", buf, 2u);
    _MBLog();
  }

  v9 = +[MBCKManager sharedInstance];
  v10 = +[MBCKOperationPolicy expensiveCellularPolicy];
  [v10 setFetchAssets:0];
  v11 = [v9 databaseManager];
  v12 = [MBCKOperationTracker operationTrackerWithAccount:v5 databaseManager:v11 policy:v10 error:a3];

  if (!v12)
  {
    v25 = 0;
    goto LABEL_23;
  }

  v13 = [v7 processName];
  v14 = [v10 operationGroupWithName:@"calculateQuotaForDomainsInCurrentDevice" processName:v13];
  [v12 setCkOperationGroup:v14];

  v15 = MBDeviceUUID();
  v34 = 0;
  v16 = [MBCKAccount fetchDeviceRecordAndSnapshots:v15 account:v5 manager:v9 tracker:v12 error:&v34];
  v17 = v34;

  if (!v16)
  {
    if (([MBError isError:v17 withCode:204]& 1) == 0)
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to fetch device record: %@", buf, 0xCu);
        _MBLog();
      }

      if (a3)
      {
        v32 = v17;
        v25 = 0;
        *a3 = v17;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_22;
    }

    v17 = 0;
    goto LABEL_14;
  }

  v18 = a3;
  v33 = v17;
  v19 = v7;
  v20 = v16;
  v21 = [v16 snapshots];
  v22 = [v21 lastObject];
  v23 = [v22 snapshotFormat];

  if (v23 != 3)
  {
    v7 = v19;
    v17 = v33;
    v16 = v20;
    a3 = v18;
LABEL_14:
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=quota-calculation= Calculating quota for all manifest sizer", buf, 2u);
      _MBLog();
    }

    v25 = [_ManifestSizer sizeDomainsWithManager:v9 account:v5 error:a3];
    goto LABEL_17;
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=quota-calculation= Calculating quota using domain sizer", buf, 2u);
    _MBLog();
  }

  v16 = v20;
  v25 = [_DomainSizer sizeDomainsWithManager:v9 operationTracker:v12 account:v5 device:v20 error:v18];
  v7 = v19;
  v17 = v33;
LABEL_17:
  v27 = MBGetDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v25 count];
    *buf = 134217984;
    v36 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Fetched %lu domain infos", buf, 0xCu);
    [v25 count];
    _MBLog();
  }

  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "=quota-calculation= Domain infos: %@", buf, 0xCu);
    _MBLog();
  }

LABEL_22:
LABEL_23:

  return v25;
}

id MBCalculateQuotaForDomain(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    __assert_rtn("MBCalculateQuotaForDomain", "MBCalculateQuota.m", 618, "serviceAccount");
  }

  v10 = v9;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=quota-calculation= Calculating quota for domain %@", buf, 0xCu);
    _MBLog();
  }

  v12 = +[MBCKManager sharedInstance];
  v13 = +[MBCKOperationPolicy expensiveCellularPolicy];
  [v13 setFetchAssets:0];
  v14 = [v12 databaseManager];
  v15 = [MBCKOperationTracker operationTrackerWithAccount:v8 databaseManager:v14 policy:v13 error:a4];

  if (!v15)
  {
    v26 = 0;
    goto LABEL_20;
  }

  v16 = [v10 processName];
  v17 = [v13 operationGroupWithName:@"calculateQuotaForDomain" processName:v16];
  [v15 setCkOperationGroup:v17];

  v18 = MBDeviceUUID();
  v33 = 0;
  v19 = [MBCKAccount fetchDeviceRecordAndSnapshots:v18 account:v8 manager:v12 tracker:v15 error:&v33];
  v20 = v33;

  if (!v19)
  {
    if (([MBError isError:v20 withCode:204]& 1) == 0)
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v20;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to fetch device record: %@", buf, 0xCu);
        _MBLog();
      }

      if (a4)
      {
        v30 = v20;
        v26 = 0;
        *a4 = v20;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_19;
    }

    v20 = 0;
    goto LABEL_14;
  }

  v31 = v20;
  v32 = v10;
  v21 = [v19 snapshots];
  v22 = [v21 lastObject];
  v23 = [v22 snapshotFormat];

  if (v23 != 3)
  {
    v20 = v31;
    v10 = v32;
LABEL_14:
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v7;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=quota-calculation= Calculating quota for domain %@ using manifest sizer", buf, 0xCu);
      _MBLog();
    }

    v26 = [_ManifestSizer sizeDomainWithName:v7 manager:v12 account:v8 error:a4];
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v7;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Fetched domain info for %@: %@", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_18;
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=quota-calculation= Calculating quota for domain %@ using domain sizer", buf, 0xCu);
    _MBLog();
  }

  v25 = [_DomainSizer sizeDomain:v7 manager:v12 operationTracker:v15 account:v8 device:v19 error:a4];
  v26 = [v25 firstObject];
  v20 = v31;
  v10 = v32;
LABEL_18:

LABEL_19:
LABEL_20:

  return v26;
}

void sub_100092028(id a1)
{
  qword_100421670 = objc_alloc_init(MBCKManager);

  _objc_release_x1();
}

void sub_100092300(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.backupd.account.notifications", v2);

  v4 = objc_opt_new();
  [v4 setMaxConcurrentOperationCount:1];
  [v4 setQualityOfService:17];
  [v4 setUnderlyingQueue:v3];
  objc_initWeak(&location, *(a1 + 32));
  v5 = +[NSNotificationCenter defaultCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000924D4;
  v12[3] = &unk_1003BCF78;
  v13 = *(a1 + 32);
  objc_copyWeak(&v14, &location);
  v6 = [v5 addObserverForName:@"MBAccountAvailableNotification" object:0 queue:v4 usingBlock:v12];
  v7 = *(a1 + 32);
  v8 = *(v7 + 240);
  *(v7 + 240) = v6;

  [*(a1 + 32) _migrateMobileBackupDatabaseFromRootToMobile];
  [*(a1 + 32) _loadRestoreState];
  v9 = +[MBThermalPressureMonitor sharedThermalPressureMonitor];
  v10 = *(a1 + 32);
  v11 = *(v10 + 264);
  *(v10 + 264) = v9;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_1000924AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000924D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 160);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100092594;
  v6[3] = &unk_1003BCF50;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(v4, v6);
  objc_destroyWeak(&v8);
}

void sub_100092594(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);

    v5 = [*(a1 + 32) name];
    _MBLog();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAccountAvailable];
}

uint64_t sub_100093324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10009333C(uint64_t a1)
{
  v2 = [*(a1 + 32) loadRestoreStateWithAccount:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000948A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Delayed restore timer fired", v6, 2u);
    _MBLog();
  }

  v4 = +[MBXPCServer sharedInstance];
  v5 = [v4 scheduler];

  [v5 warnUserOfDelayedRestoreWithAccount:*(a1 + 32)];
  objc_autoreleasePoolPop(v2);
}

void sub_100094D44(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Background Restore TTR timer fired", v5, 2u);
    _MBLog();
  }

  v4 = +[MBTapToRadar sharedInstance];
  [*(a1 + 32) timeIntervalSinceNow];
  [v4 reportBackgroundRestoreTimeout:*(a1 + 40) persona:?];

  objc_autoreleasePoolPop(v2);
}

void sub_100096BAC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100096BF8(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] == 1)
  {
    v2 = [*(a1 + 32) engines];
    v3 = [v2 lastObject];
    [v3 cancel];

    v4 = [*(a1 + 32) serviceGroup];
    v5 = dispatch_time(0, 60000000000);
    v6 = dispatch_group_wait(v4, v5);

    if (v6)
    {
      v7 = [MBError errorWithCode:15 format:@"Timed out while canceling scan"];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_100096CE0(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceState];
  v3 = MBGetDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) serviceState];
      *buf = 67109120;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Can't set up the backup while busy (%d)", buf, 8u);
      [*(a1 + 32) serviceState];
      _MBLog();
    }

    v6 = [MBError errorWithCode:14 format:@"Manager not in idle state"];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up backup", buf, 2u);
      _MBLog();
    }

    [*(a1 + 32) setServiceState:2];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_100097288(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) manager:*(a1 + 40) didSetBackupEnabled:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

id sub_1000975C4(uint64_t a1)
{
  result = [*(a1 + 32) serviceState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000975F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _syncBackupEnabledWithAccount:*(a1 + 40) connection:*(a1 + 48)];
  v3 = +[MBDaemon sharedDaemon];
  [v3 releaseWorkAssertion:*(a1 + 64)];

  v4 = *(a1 + 56);
  v5 = objc_opt_self();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100097B44(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyBackupStateInfoForInitialMegaBackup:*(a1 + 56) account:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100098118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 40) & 1) == 0 && [v5 backupPolicy] == 1)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing snapshot (MegaBackup): %{public}@", buf, 0xCu);
LABEL_9:
      _MBLog();
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v8 = *(a1 + 32);
  if (v8 != [v5 accountType])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 134218498;
      v14 = v10;
      v15 = 2048;
      v16 = [v5 accountType];
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing snapshot (account type: %ld/%ld): %{public}@", buf, 0x20u);
      v11 = *(a1 + 32);
      [v5 accountType];
      goto LABEL_9;
    }

LABEL_10:

    v9 = 0;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

void sub_100098B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v71 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100098B9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v52 = 0;
  v4 = [MBCKAccount fetchAccountWithOperationTracker:v3 cache:0 error:&v52];
  v5 = v52;
  v6 = v52;
  v7 = v6;
  if (v4)
  {
    v8 = *(a1 + 32);
    v51 = v6;
    v9 = [v4 fetchDevicesWithOperationTracker:v8 error:&v51];
    v10 = v51;
    v11 = v51;

    if (v9)
    {
      v12 = [v4 devicesByUUID];
      v13 = [[NSMutableArray alloc] initWithCapacity:{3 * objc_msgSend(v12, "count")}];
      v14 = [v12 allValues];
      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = *(*(*(a1 + 72) + 8) + 40);
      v17 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v17)
      {
        v18 = v17;
        v37 = *v48;
        v33 = v11;
        v34 = v2;
        v32 = v12;
        v35 = v13;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v48 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v47 + 1) + 8 * i);
            v21 = [v20 snapshotRefs];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v43 objects:v53 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v44;
              do
              {
                for (j = 0; j != v24; j = j + 1)
                {
                  if (*v44 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [*(*(&v43 + 1) + 8 * j) recordID];
                  [*(a1 + 40) objectForKey:v27];
                  if (objc_claimAutoreleasedReturnValue())
                  {
                    __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]_block_invoke", "MBCKManager.m", 1080, "![devicesBySnapshotRecordID objectForKey:recordID]");
                  }

                  [*(a1 + 40) setObject:v20 forKey:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v43 objects:v53 count:16];
              }

              while (v24);
            }

            if ([v22 count])
            {
              [v35 addObjectsFromArray:v22];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
          v11 = v33;
          v2 = v34;
          v12 = v32;
          v13 = v35;
        }

        while (v18);
      }

      if ([v13 count])
      {
        dispatch_group_enter(*(a1 + 48));
        v28 = *(a1 + 32);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100098FAC;
        v38[3] = &unk_1003BD088;
        v29 = *(a1 + 56);
        v30 = *(a1 + 80);
        v40 = *(a1 + 64);
        v41 = v30;
        v31 = *(a1 + 48);
        v42 = v29;
        v39 = v31;
        [MBCKDevice fetchSnapshotsWithRefs:v13 operationTracker:v28 completion:v38];
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
    }
  }

  else
  {
    if ([MBError isError:v6 withCode:204])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
    }

    v11 = v7;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100098FAC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100099054(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24) == 1)
  {
    v59 = v2;
    *(v3 + 24) = 0;
    v60 = objc_opt_new();
    v4 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = [v5 countByEnumeratingWithState:&v69 objects:v76 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v70;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v70 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v69 + 1) + 8 * i);
          v11 = objc_opt_new();
          [v4 setObject:v11 forKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v7);
    }

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v63 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v63)
    {
      v62 = *v66;
      do
      {
        for (j = 0; j != v63; j = j + 1)
        {
          if (*v66 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * j);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 recordID];
          if (!v17)
          {
            __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]_block_invoke_3", "MBCKManager.m", 1118, "recordID");
          }

          v18 = v17;
          v19 = [*(a1 + 32) objectForKey:v17];
          if (!v19)
          {
            __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]_block_invoke_3", "MBCKManager.m", 1120, "device");
          }

          v20 = v19;
          v21 = v4;
          v22 = a1;
          [v15 setDevice:v19];
          v23 = [[CKReference alloc] initWithRecordID:v18 action:0];
          v24 = [v20 snapshotRefs];
          v25 = [v24 indexOfObject:v23];

          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]_block_invoke_3", "MBCKManager.m", 1124, "index != NSNotFound");
          }

          context = v16;
          v26 = [v20 snapshotCommitDates];
          v27 = [v26 count];

          if (v25 < v27)
          {
            v28 = [v20 snapshotCommitDates];
            v29 = [v28 objectAtIndexedSubscript:v25];
            [v15 setCreated:v29];
          }

          v30 = [v21 objectForKey:{v20, v58}];
          if (!v30)
          {
            __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]_block_invoke_3", "MBCKManager.m", 1129, "snapshots");
          }

          v31 = v30;
          [v30 addObject:v15];
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = v15;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Found snapshot: %@", buf, 0xCu);
            v58 = v15;
            _MBLog();
          }

          objc_autoreleasePoolPop(context);
          a1 = v22;
          v4 = v21;
        }

        v63 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v63);
    }

    v33 = [v4 keyEnumerator];
    v34 = [v33 nextObject];
    if (v34)
    {
      v35 = v34;
      do
      {
        v36 = [v4 objectForKey:{v35, v58}];
        v37 = *(a1 + 40);
        v38 = [objc_opt_class() _removeIncompatibleSnapshotsWithAccountType:*(a1 + 88) device:v35 snapshots:v36];

        v39 = [v35 deviceUUID];
        if (!v39)
        {
          __assert_rtn("[MBCKManager _getBackupListWithOperationTracker:shouldFilter:error:]_block_invoke", "MBCKManager.m", 1142, "backupUUID");
        }

        v40 = v39;
        v41 = MBDeviceUUID();
        v42 = [v40 isEqualToString:v41];

        if (v42)
        {
          v43 = MBDeviceUDID_Legacy();

          v40 = v43;
        }

        v44 = [v60 objectForKey:v40];
        v45 = [MBBackup backupByMergingMBSBackup:v44 device:v35 snapshots:v38 filterSnapshots:*(a1 + 96)];
        [v60 setObject:v45 forKey:v40];

        v46 = [v33 nextObject];

        v35 = v46;
      }

      while (v46);
    }

    v47 = [v60 dictionaryRepresentation];
    v48 = *(*(a1 + 72) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;

    v50 = [*(*(*(a1 + 72) + 8) + 40) allValues];
    v51 = [v50 mutableCopy];

    v52 = [v51 indexOfObjectPassingTest:&stru_1003BD0F0];
    if (v52 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v53 = v52;
      v54 = [v51 objectAtIndexedSubscript:v52];
      [v51 removeObjectAtIndex:v53];
      [v51 insertObject:v54 atIndex:0];
    }

    v55 = *(*(a1 + 80) + 8);
    v56 = *(v55 + 40);
    *(v55 + 40) = v51;
    v57 = v51;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = v59;
  }

  objc_autoreleasePoolPop(v2);
}

BOOL sub_1000996A4(id a1, MBBackup *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(MBBackup *)a2 backupUDID];
  v6 = MBDeviceUUID();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_10009B04C(id a1, CKRecord *a2)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "InheritBackup record fetched block. Nothing to do here", v3, 2u);
    _MBLog();
  }
}

void sub_10009B0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Hitting InheritBackup endpoint resulted in error %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10009B328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B340(uint64_t a1)
{
  v2 = [*(a1 + 32) nextBackupSize];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10009B4AC(uint64_t a1)
{
  v2 = [*(a1 + 32) nextBackupSize];
  if (v2)
  {
    [*(a1 + 40) setState:2];
    [*(a1 + 40) setSize:{objc_msgSend(v2, "unsignedLongLongValue")}];
  }

  else
  {
    [*(a1 + 40) setState:{objc_msgSend(*(a1 + 32), "serviceState") == 1}];
  }
}

void sub_10009B738(id a1)
{
  v1 = MBGetDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Backup engine timed out - exiting", buf, 2u);
    _MBLog();
  }

  if (MBIsInternalInstall())
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Backup engine timed out", v3, 2u);
      _MBLog();
    }
  }

  if (dword_100421664 != -1 && atomic_fetch_add_explicit(&dword_100421664, 1u, memory_order_relaxed) != -1)
  {
    _MBCreateDiagnosticReport(@"Backup engine timed out", 0);
  }

  sleep(0x1Eu);
  MBExit(1);
}

void sub_10009C15C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10009C1BC(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009C294;
    v5[3] = &unk_1003BC010;
    v6 = *(a1 + 56);
    [v2 _cancelBackupAndScanEnginesWithAccount:v3 timeout:60 completion:v5];
  }

  else
  {
    v4 = *(a1 + 56);

    dispatch_group_leave(v4);
  }
}

void sub_10009C294(uint64_t a1, void *a2)
{
  if (a2)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Timed out while canceling scan engine"]);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_10009C2F4(uint64_t a1)
{
  if ([*(a1 + 32) serviceState])
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) serviceState];
      *buf = 67109120;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring backup request while busy (%d)", buf, 8u);
      [*(a1 + 32) serviceState];
      _MBLog();
    }

    v4 = [MBError errorWithCode:14 format:@"Manager not in idle state"];
    v5 = *(*(a1 + 88) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 96) + 8) + 24) = 0;
  }

  else
  {
    [*(*(a1 + 40) + 184) allPersonaStates];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v18 + 1) + 8 * v11) serviceState] == 3)
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring backup request because a concurrent backup is already in progress", buf, 2u);
              _MBLog();
            }

            v15 = [MBError errorWithCode:14 format:@"Backup already in progress"];
            v16 = *(*(a1 + 88) + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = v15;

            v13 = 0;
            v12 = v7;
            goto LABEL_17;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 32) setServiceState:3];
    v12 = [*(a1 + 40) _backupEngineWithReason:*(a1 + 104) settingsContext:*(a1 + 48) account:*(a1 + 56)];
    [v12 setCkOperationGroup:*(a1 + 64)];
    [v12 setCkOperationPolicy:*(a1 + 72)];
    [v12 setCkOperationTracker:*(a1 + 80)];
    [*(a1 + 40) _startBackupWithEngine:v12 account:*(a1 + 56)];
    v13 = 1;
LABEL_17:
    *(*(*(a1 + 96) + 8) + 24) = v13;
  }
}

void sub_10009CC4C(uint64_t a1, unsigned int a2, void *a3, double a4)
{
  v7 = a3;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (a2 > 4)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = *(&off_1003BDB50 + a2);
    }

    *buf = 138412290;
    *v73 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Engine callback (%@)", buf, 0xCu);
    if (a2 > 4)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = *(&off_1003BDB50 + a2);
    }

    v61 = v10;
    _MBLog();
  }

  v11 = [*(a1 + 32) watchdog];
  v12 = [*(a1 + 32) backupStateDescription];
  v13 = [*(a1 + 40) delegate];
  v14 = a4;
  *&v15 = v14;
  [*(a1 + 48) setProgress:v15];
  v16 = 0;
  v17 = 0;
  v18 = -1;
  v65 = v7;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_49;
      }

      if ([*(a1 + 48) state] == 2)
      {
        [*(a1 + 72) progressAtLastUpdate];
        if (v20 != a4)
        {
          [v11 resume];
        }
      }

      else
      {
        [*(a1 + 48) setState:2];
        [v11 resume];
        [*(a1 + 72) reset];
      }

      v48 = *(a1 + 72);
      v49 = 0.25;
      if (a4 >= 0.25)
      {
        *&v49 = a4;
        if (![v48 shouldUpdateWithProgress:v49])
        {
          v17 = 0;
LABEL_17:
          v16 = 0;
          goto LABEL_49;
        }

        v18 = [*(a1 + 72) minutesRemaining];
        [*(a1 + 48) setEstimatedTimeRemaining:v18];
        v60 = *(a1 + 40);
        v51 = [*(a1 + 80) bytesRemaining];
        v32 = *(a1 + 48);
        v33 = *(a1 + 64);
        v34 = *(a1 + 97);
        v31 = v60;
        *&v35 = a4;
        v50 = v18;
        goto LABEL_47;
      }

      [v48 reset];
      v31 = *(a1 + 40);
      v32 = *(a1 + 48);
      v33 = *(a1 + 64);
      v34 = *(a1 + 97);
      *&v35 = a4;
    }

    else
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 56);
        *buf = 138543362;
        *v73 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Started backup, reason:%{public}@", buf, 0xCu);
        v61 = *(a1 + 56);
        _MBLog();
      }

      [v11 resume];
      if (*(a1 + 96) == 1)
      {
        v63 = v13;
        [*(a1 + 40) _updateMegaBackupStatus:0 account:*(a1 + 64)];
        [*(a1 + 40) submitMegaLifeCycleTelemetriesWithAccount:*(a1 + 64)];
        v23 = [*(a1 + 64) persona];
        v24 = [v23 copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];
        v25 = [v23 copyPreferencesValueForKey:@"InitialMegaBackupStartDateDelta" class:objc_opt_class()];
        v26 = v25;
        if (v24 && !v25)
        {
          +[NSDate now];
          v28 = v27 = v12;
          [v28 timeIntervalSinceDate:v24];
          v30 = [NSNumber numberWithInt:v29];
          [v23 setPreferencesValue:v30 forKey:@"InitialMegaBackupStartDateDelta"];

          v12 = v27;
        }

        [*(a1 + 40) submitMegaLifeCycleTelemetriesWithAccount:{*(a1 + 64), v61}];

        v13 = v63;
      }

      v31 = *(a1 + 40);
      v32 = *(a1 + 48);
      v33 = *(a1 + 64);
      v34 = *(a1 + 97);
      v18 = -1;
      v35 = 0.0;
    }

    v50 = -1;
    v51 = -1;
LABEL_47:
    [v31 _didUpdateBackupProgress:v50 estimatedTimeRemaining:v51 bytesRemaining:v12 engineState:v32 stateInfo:v33 account:v34 shouldUpdatePrebuddyFollowUp:{v35, v61}];
    v17 = 0;
    goto LABEL_48;
  }

  switch(a2)
  {
    case 2u:
      [v11 resume];
      [*(a1 + 48) setState:4];
      LODWORD(v36) = 1.0;
      [*(a1 + 48) setProgress:v36];
      [*(a1 + 48) setEstimatedTimeRemaining:0];
      v37 = [MBError errorWithCode:0 format:@"Backup succeeded"];
      v17 = MBSanitizeErrorWithDateAndBuild(v37);
      [*(a1 + 48) setError:v17];

      [*(a1 + 48) setBackupAttemptCount:0];
      v18 = [*(a1 + 72) minutesRemaining];
      [*(a1 + 48) setEstimatedTimeRemaining:v18];
      LODWORD(v38) = 1.0;
      [*(a1 + 40) _didUpdateBackupProgress:v18 estimatedTimeRemaining:0 bytesRemaining:v12 engineState:*(a1 + 48) stateInfo:*(a1 + 64) account:*(a1 + 97) shouldUpdatePrebuddyFollowUp:v38];
      if (*(a1 + 96) != 1)
      {
LABEL_40:
        [v13 managerDidFinishBackup:{*(a1 + 40), v61}];
LABEL_48:
        v16 = 1;
        break;
      }

      [*(a1 + 40) _updateMegaBackupStatus:1 account:*(a1 + 64)];
      [*(a1 + 40) _setIsInitialMegaBackupCompleted:1];
      v39 = *(a1 + 40);
      [objc_opt_class() saveBackupStateInfo:*(a1 + 48) forInitialMegaBackup:1 account:*(a1 + 64)];
      v40 = [*(a1 + 40) prebuddyFollowUpTimer];
      if (!v40)
      {
        if (*(a1 + 97) != 1)
        {
          goto LABEL_36;
        }

        v40 = [*(a1 + 40) prebuddyFollowUpTimerForAccount:*(a1 + 64)];
        [*(a1 + 40) setPrebuddyFollowUpTimer:v40];
      }

LABEL_36:
      v62 = v12;
      v64 = v13;
      v41 = [*(a1 + 64) persona];
      v42 = [v41 copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];
      v43 = [v41 copyPreferencesValueForKey:@"InitialMegaBackupFinishedDateDelta" class:objc_opt_class()];
      v44 = v43;
      if (v42 && !v43)
      {
        v45 = +[NSDate now];
        [v45 timeIntervalSinceDate:v42];
        v47 = [NSNumber numberWithInt:v46];
        [v41 setPreferencesValue:v47 forKey:@"InitialMegaBackupFinishedDateDelta"];
      }

      [*(a1 + 40) submitMegaLifeCycleTelemetriesWithAccount:*(a1 + 64)];

      v12 = v62;
      v13 = v64;
      goto LABEL_40;
    case 4u:
      [v11 resume];
      [*(a1 + 48) setState:6];
      v17 = MBSanitizeErrorWithDateAndBuild(v7);
      [*(a1 + 48) setError:v17];
      if (*(a1 + 97) == 1)
      {
        v19 = [*(a1 + 40) prebuddyFollowUpController];
        [v19 updateFollowupWithBackupProgress:*(a1 + 48) account:*(a1 + 64)];
      }

      [v13 manager:*(a1 + 40) didFailBackupWithError:{v7, v61}];
      if ([MBError isError:v7 withCode:204])
      {
        [*(a1 + 40) _syncBackupEnabledWithAccount:*(a1 + 64) connection:0];
      }

      [*(a1 + 48) setBackupAttemptCount:{objc_msgSend(*(a1 + 48), "backupAttemptCount") + 1}];
      goto LABEL_17;
    case 3u:
      __assert_rtn("[MBCKManager _startBackupWithEngine:account:]_block_invoke", "MBCKManager.m", 1790, "0 && Unexpected state");
  }

LABEL_49:
  v52 = *(*(a1 + 40) + 160);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D61C;
  block[3] = &unk_1003BCFC8;
  v69 = *(a1 + 88);
  v70 = *(a1 + 48);
  v71 = *(a1 + 96);
  dispatch_async(v52, block);
  if (a2 - 2 <= 2)
  {
    if (v18 == -1)
    {
      v18 = [*(a1 + 72) minutesRemaining];
    }

    [v11 suspend];
    v53 = *(a1 + 40);
    [objc_opt_class() saveBackupStateInfo:*(a1 + 48) forInitialMegaBackup:0 account:*(a1 + 64)];
    if (*(a1 + 96) == 1)
    {
      v54 = *(a1 + 40);
      [objc_opt_class() saveBackupStateInfo:*(a1 + 48) forInitialMegaBackup:1 account:*(a1 + 64)];
    }

    [MBBackupScheduler postBackupCompletionNotificationWithAccount:*(a1 + 64) completionError:v17];
    v55 = *(*(a1 + 40) + 160);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10009D670;
    v66[3] = &unk_1003BC0B0;
    v67 = *(a1 + 88);
    dispatch_async(v55, v66);

    v16 = 1;
  }

  v56 = +[MBNotificationCenter sharedNotificationCenter];
  [v56 postNotification:kMBManagerBackupStateChangedNotification ifStateChanged:{objc_msgSend(*(a1 + 48), "state")}];

  if (v16)
  {
    if (v18 == -1)
    {
      v59 = MBGetDefaultLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v73 = a2;
        *&v73[4] = 2048;
        *&v73[6] = a4;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "p:%d|%0.2f|?|?", buf, 0x12u);
        goto LABEL_61;
      }
    }

    else
    {
      [*(a1 + 72) secondsRemaining];
      v58 = v57;
      v59 = MBGetDefaultLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        *v73 = a2;
        *&v73[4] = 2048;
        *&v73[6] = a4;
        v74 = 2048;
        v75 = v58;
        v76 = 2048;
        v77 = v18;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "p:%d|%0.2f|%.0fs|%lum", buf, 0x26u);
LABEL_61:
        _MBLog();
      }
    }
  }
}

id sub_10009D61C(uint64_t a1)
{
  result = [*(a1 + 32) setBackup:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setInitialMegaBackup:v4];
  }

  return result;
}

id sub_10009D670(uint64_t a1)
{
  [*(a1 + 32) setNextBackupSize:0];
  [*(a1 + 32) unboostManualBackup];
  v2 = *(a1 + 32);

  return [v2 setServiceState:0];
}

void sub_10009DF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009DF5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ fired. Updating prebuddy followup", buf, 0xCu);
      _MBLog();
    }

    [WeakRetained updatePrebuddyFollowUp:*(a1 + 32)];
  }
}

void sub_10009E874(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10009E8D8(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 160));
  v4 = *(a1 + 40);
  if (!v4)
  {
    __assert_rtn("[MBCKManager deleteBackupUDID:disableIfCurrentDevice:account:connection:error:]_block_invoke", "MBCKManager.m", 2029, "device");
  }

  if (v3)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Timed out while canceling engines"]);
  }

  v5 = [v4 pendingSnapshotQuotaReserved];
  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138543362;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Clearing pending snapshot for %{public}@", buf, 0xCu);
      v33 = *(a1 + 48);
      _MBLog();
    }

    [*(a1 + 40) clearPendingSnapshotFieldsAndRebuildFileChanges:1];
  }

  if (*(a1 + 112) == 1 && [*(a1 + 40) hasBackupEnabledState] && objc_msgSend(*(a1 + 40), "backupEnabled"))
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138543362;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Turning off backupEnabled in the device record for %{public}@", buf, 0xCu);
      v33 = *(a1 + 48);
      _MBLog();
    }
  }

  else if (!v5)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(*(a1 + 96) + 8);
  obj = *(v12 + 40);
  v13 = [v10 saveWithOperationTracker:v11 error:{&obj, v33}];
  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      v16 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138543618;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to save the device record for %{public}@: %@", buf, 0x16u);
      v33 = *(a1 + 48);
      v35 = *(*(*(a1 + 96) + 8) + 40);
      _MBLog();
    }

    v17 = *(*(a1 + 96) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;
  }

LABEL_18:
  if (*(a1 + 112) == 1)
  {
    [*(a1 + 32) setBackupEnabled:0 account:*(a1 + 64) connection:*(a1 + 72)];
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 64);
  v21 = *(*(a1 + 96) + 8);
  v38 = *(v21 + 40);
  v22 = [v19 resetCacheWithAccount:v20 error:{&v38, v33, v35}];
  objc_storeStrong((v21 + 40), v38);
  if ((v22 & 1) == 0)
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138412290;
      v41 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to reset the cache: %@", buf, 0xCu);
      v34 = *(*(*(a1 + 96) + 8) + 40);
LABEL_27:
      _MBLog();
    }

LABEL_28:

    goto LABEL_29;
  }

  v23 = *(a1 + 80);
  v25 = *(a1 + 48);
  v24 = *(a1 + 56);
  v26 = *(*(a1 + 96) + 8);
  v37 = *(v26 + 40);
  v27 = [v23 deleteDeviceWithOperationTracker:v24 deviceUUID:v25 error:&v37];
  objc_storeStrong((v26 + 40), v37);
  if ((v27 & 1) == 0)
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 48);
      v31 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to delete the device record for %{public}@: %@", buf, 0x16u);
      v32 = *(a1 + 48);
      v36 = *(*(*(a1 + 96) + 8) + 40);
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  [*(a1 + 32) clearPrebuddyWithAccount:*(a1 + 64) accountSignOut:0];
  *(*(*(a1 + 104) + 8) + 24) = 1;
LABEL_29:
  dispatch_group_leave(*(a1 + 88));
}

void sub_10009ED60(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v2 deleteDeviceWithOperationTracker:v3 deviceUUID:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    *(*(a1[8] + 8) + 24) = 1;
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[6];
      v9 = *(*(a1[7] + 8) + 40);
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to delete the device record for %{public}@: %@", buf, 0x16u);
      v10 = a1[6];
      v11 = *(*(a1[7] + 8) + 40);
      _MBLog();
    }
  }
}

void sub_10009F0E8(id a1, NSString *a2, MBCKSnapshotToDomainRecordReference *a3, BOOL a4)
{
  v4 = a2;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Synchronizing %@", buf, 0xCu);
    _MBLog();
  }
}

void sub_10009F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009F784(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) finishedAppRestores];
  v5 = [*(a1 + 32) backgroundRestoreProgressMonitor];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

id sub_10009FCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) accountIdentifier];
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cellular access changed for account %@ - retrying pending downloads if necessary", buf, 0xCu);

    v9 = [*(a1 + 32) accountIdentifier];
    _MBLog();
  }

  return [*(a1 + 40) _retryAppDataDownloadsWithConnectivity:a2 account:{a3, *(a1 + 32)}];
}

void sub_1000A0480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000A04C0(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreSession];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) lockManager];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v11 = [*(a1 + 32) restoreQosByContext];
  v8 = [v11 objectForKey:*(a1 + 40)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000A09E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1000A0A34(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreSession];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) lockManager];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v11 = [*(a1 + 32) restoreQosByContext];
  v8 = [v11 objectForKey:*(a1 + 40)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_1000A1078(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000A1708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1758(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) lockManager];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_1000A1D48(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] != 5)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) serviceState];
      v10 = [*(a1 + 40) restoreMode];
      *buf = 67109378;
      *v44 = v9;
      *&v44[4] = 2114;
      *&v44[6] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring background restore request while not in restore session (%d): %{public}@", buf, 0x12u);

      v11 = [*(a1 + 32) serviceState];
      [*(a1 + 40) restoreMode];
      v37 = v35 = v11;
      _MBLog();
    }

    v6 = @"Manager not in restore session";
    v7 = 204;
    goto LABEL_9;
  }

  v2 = [*(a1 + 32) enginesByContext];
  v3 = [v2 objectForKey:*(a1 + 48)];

  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      *buf = 138412290;
      *v44 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring multiple concurrent request made from client %@", buf, 0xCu);
      v35 = *(a1 + 48);
      _MBLog();
    }

    v6 = @"Restore request exists for client";
    v7 = 3;
LABEL_9:
    v12 = [MBError errorWithCode:v7 format:v6, v35, v37];
    v13 = *(*(a1 + 80) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
    goto LABEL_10;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = [*(a1 + 32) engines];
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = [*(a1 + 40) restoreMode];
        v21 = [v19 context];
        v22 = [v21 restoreMode];
        v23 = [v20 isEqual:v22];

        if (v23)
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [*(a1 + 40) restoreMode];
            *buf = 138412290;
            *v44 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate background restore request: %@", buf, 0xCu);

            v36 = [*(a1 + 40) restoreMode];
            _MBLog();
          }

          v31 = [*(a1 + 40) restoreMode];
          v32 = [MBError errorWithCode:3 format:@"Manager already background restoring %@", v31];
          v33 = *(*(a1 + 80) + 8);
          v34 = *(v33 + 40);
          *(v33 + 40) = v32;

          goto LABEL_10;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v24 = *(a1 + 56);
  v25 = *(a1 + 40);
  v26 = [v24 debugContext];
  v14 = [v24 _restoreEngineWithRestoreType:2 settingsContext:v25 debugContext:v26 excludedAppBundleIDs:0];

  [v14 setCkOperationGroup:*(a1 + 64)];
  [v14 setCkOperationPolicy:*(a1 + 72)];
  [v14 setCkOperationTracker:0];
  v27 = [*(a1 + 32) restoreLogger];
  [v14 setRestoreLogger:v27];

  [*(a1 + 56) _startRestoreWithEngine:v14 delegateContext:*(a1 + 48)];
  v28 = [*(a1 + 56) serviceDelegate];
  [v28 manager:*(a1 + 56) didUpdateBackgroundRestoreWithContext:0];

  *(*(*(a1 + 88) + 8) + 24) = 1;
LABEL_10:
}

void sub_1000A2A34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1000A2A60(uint64_t a1)
{
  if ([*(a1 + 32) serviceState])
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) serviceState];
      *buf = 67109120;
      LODWORD(v49) = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring restore request while busy (%d)", buf, 8u);
      [*(a1 + 32) serviceState];
      _MBLog();
    }

    v4 = [MBError errorWithCode:14 format:@"Manager not in idle state"];
    v5 = *(*(a1 + 128) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = [MBCKLockManager alloc];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [*(a1 + 56) databaseManager];
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = [v11 thermalPressureMonitor];
    v6 = [(MBCKLockManager *)v7 initWithAccount:v8 restoreType:1 backupUDID:v9 databaseManager:v10 delegate:v11 operationGroup:v12 thermalPressureMonitor:v13 snapshotUUID:*(a1 + 72)];

    [*(a1 + 32) setLockManager:v6];
    v14 = [*(a1 + 56) _ckSettingsContextForRestoreWithDeviceUUID:*(a1 + 48) account:*(a1 + 40) delegateContext:0];
    [v14 setLockManager:v6];
    [v14 setSnapshotID:*(a1 + 144)];
    [v14 setSnapshotUUID:*(a1 + 72)];
    [v14 setRestoreMode:*(a1 + 80)];
    if (MBIsInternalInstall())
    {
      v15 = +[MBBehaviorOptions sharedOptions];
      v16 = [v15 useRestoreOperationLog];

      if (v16)
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Using restore operation log for foreground restore", buf, 2u);
          _MBLog();
        }

        v18 = [MBRestoreOperationLogger alloc];
        v19 = [*(a1 + 88) restoreOperationLogPath];
        v20 = [(MBRestoreOperationLogger *)v18 initWithPath:v19];
        [*(a1 + 32) setRestoreLogger:v20];
      }
    }

    v21 = os_transaction_create();
    [*(a1 + 32) setRestoreTransaction:v21];

    [*(a1 + 32) setServiceState:4];
    v22 = *(a1 + 56);
    v23 = *(a1 + 40);
    v24 = *(a1 + 72);
    v47 = 0;
    v25 = [v22 setupRestorePlanForAccount:v23 snapshotUUID:v24 error:&v47];
    v26 = v47;
    v27 = v26;
    if (v25)
    {
      v28 = [*(a1 + 32) restore];
      [v28 setState:1];
      [v28 setIsBackground:0];
      [v28 setProgress:0.0];
      [v28 setEstimatedTimeRemaining:-1];
      [v28 setError:0];
      v29 = [MBServiceRestoreSession alloc];
      v30 = [*(a1 + 88) personaIdentifier];
      v31 = [(MBServiceRestoreSession *)v29 initWithPersonaIdentifier:v30];

      [(MBServiceRestoreSession *)v31 setBackupUDID:*(a1 + 48)];
      [(MBServiceRestoreSession *)v31 setSnapshotID:*(a1 + 144)];
      [(MBServiceRestoreSession *)v31 setSnapshotUUID:*(a1 + 72)];
      [(MBServiceRestoreSession *)v31 setTelemetryID:*(*(a1 + 56) + 216)];
      [*(a1 + 32) setRestoreSession:v31];
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [*(a1 + 40) accountIdentifier];
        v34 = [*(a1 + 88) personaIdentifier];
        v35 = [(MBServiceRestoreSession *)v31 propertyList];
        *buf = 138544130;
        v49 = v33;
        v50 = 2114;
        v51 = v34;
        v52 = 2048;
        v53 = v31;
        v54 = 2114;
        v55 = v35;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Created new restore session for account %{public}@(%{public}@): (%p) %{public}@", buf, 0x2Au);

        v36 = [*(a1 + 40) accountIdentifier];
        v37 = [*(a1 + 88) personaIdentifier];
        v46 = [(MBServiceRestoreSession *)v31 propertyList];
        _MBLog();
      }

      v38 = +[MBRemoteConfiguration sharedInstance];
      [v38 resetCachedConfigurationForAccount:*(a1 + 40)];

      [(MBCKLockManager *)v6 startRenewingLock];
      v39 = *(a1 + 56);
      v40 = [v39 debugContext];
      v41 = [*(a1 + 96) excludedAppBundleIDs];
      v42 = [v39 _restoreEngineWithRestoreType:1 settingsContext:v14 debugContext:v40 excludedAppBundleIDs:v41];

      [v42 setCkOperationGroup:*(a1 + 64)];
      [v42 setCkOperationPolicy:*(a1 + 104)];
      [v42 setCkOperationTracker:*(a1 + 112)];
      v43 = [*(a1 + 32) restoreLogger];
      [v42 setRestoreLogger:v43];

      [*(a1 + 56) _startRestoreWithEngine:v42 delegateContext:*(a1 + 120)];
      *(*(*(a1 + 136) + 8) + 24) = 1;
    }

    else
    {
      v44 = *(*(a1 + 128) + 8);
      v45 = v26;
      v28 = *(v44 + 40);
      *(v44 + 40) = v45;
    }
  }
}

void sub_1000A363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1000A3670(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.backupd.fetchDeviceForRestore", v3);
  v2 = qword_100421680;
  qword_100421680 = v1;
}

void sub_1000A36D4(uint64_t a1)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v2 = *(*(a1 + 32) + 160);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3E74;
  block[3] = &unk_1003BD340;
  v66 = *(a1 + 72);
  v65 = *(a1 + 40);
  v67 = &v68;
  dispatch_sync(v2, block);
  v3 = *(a1 + 72);
  if ((*(a1 + 88) & 1) != 0 || (v4 = *(*(v3 + 8) + 40)) == 0)
  {
LABEL_9:
    v10 = *(v3 + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      v73 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Fetching device for restore %@", buf, 0xCu);
      v53 = *(a1 + 48);
      _MBLog();
    }

    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(*(a1 + 80) + 8);
    obj = *(v16 + 40);
    v7 = [MBCKAccount fetchAccountWithOperationTracker:v14 cache:v15 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    v17 = *(*(a1 + 80) + 8);
    v20 = *(v17 + 40);
    v19 = (v17 + 40);
    v18 = v20;
    if (v7)
    {
      v21 = *(a1 + 56);
      v62 = v18;
      v22 = [v7 fetchDevicesWithOperationTracker:v21 error:&v62];
      objc_storeStrong(v19, v62);
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = [v7 deviceForUUID:*(a1 + 48)];
      v24 = *(*(a1 + 72) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v26 = *(*(*(a1 + 72) + 8) + 40);
      if (v26)
      {
        v27 = *(a1 + 56);
        v28 = *(*(a1 + 80) + 8);
        v61 = *(v28 + 40);
        v29 = [v26 fetchSnapshotsWithOperationTracker:v27 error:&v61];
        objc_storeStrong((v28 + 40), v61);
        if (v29)
        {
          if (v69[3])
          {
            goto LABEL_17;
          }

          v30 = [*(*(*(a1 + 72) + 8) + 40) keybagManager];
          v31 = *(a1 + 56);
          v32 = *(*(a1 + 80) + 8);
          v60 = *(v32 + 40);
          v33 = [v30 fetchKeybagsWithOperationTracker:v31 error:&v60];
          objc_storeStrong((v32 + 40), v60);

          if (v33)
          {
LABEL_17:
            v34 = [*(a1 + 32) debugContext];
            [v34 setFlag:@"DidFetchDeviceDuringRestore"];

            v35 = MBGetDefaultLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = v35;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [*(*(*(a1 + 72) + 8) + 40) deviceUUID];
                v38 = [*(*(*(a1 + 72) + 8) + 40) keybagManager];
                v39 = [v38 keybagsByUUIDString];
                v40 = [v39 count];
                *buf = 138543618;
                v73 = v37;
                v74 = 2048;
                v75 = v40;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Fetched device for restore: %{public}@ keybagCount: %lu", buf, 0x16u);
              }

              v41 = [*(*(*(a1 + 72) + 8) + 40) deviceUUID];
              v42 = [*(*(*(a1 + 72) + 8) + 40) keybagManager];
              v43 = [v42 keybagsByUUIDString];
              [v43 count];
              _MBLog();
            }

            v44 = *(*(a1 + 32) + 160);
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_1000A3EF8;
            v57[3] = &unk_1003BC088;
            v45 = *(a1 + 40);
            v46 = *(a1 + 72);
            v58 = v45;
            v59 = v46;
            dispatch_sync(v44, v57);
            v9 = v58;
          }

          else
          {
            v9 = MBGetDefaultLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v52 = *(*(*(a1 + 80) + 8) + 40);
              *buf = 138412290;
              v73 = v52;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to fetch keybags: %@", buf, 0xCu);
              v56 = *(*(*(a1 + 80) + 8) + 40);
              _MBLog();
            }
          }
        }

        else
        {
          v9 = MBGetDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v51 = *(a1 + 48);
            *buf = 138543362;
            v73 = v51;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to prefetch snapshots for for %{public}@", buf, 0xCu);
            v55 = *(a1 + 48);
            _MBLog();
          }
        }

        goto LABEL_29;
      }

      v48 = MBGetDefaultLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = *(a1 + 48);
        *buf = 138543362;
        v73 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "No device record found for %{public}@", buf, 0xCu);
        v54 = *(a1 + 48);
        _MBLog();
      }

      v47 = [MBError errorWithCode:204 format:@"No backups found"];
    }

    else
    {
      if (![MBError isCKNotFoundError:v18])
      {
        v7 = 0;
        goto LABEL_30;
      }

      v47 = [MBError errorWithCode:210 format:@"No account found"];
      v7 = 0;
    }

    v50 = *(*(a1 + 80) + 8);
    v9 = *(v50 + 40);
    *(v50 + 40) = v47;
LABEL_29:

    goto LABEL_30;
  }

  v5 = [v4 deviceUUID];
  v6 = [v5 isEqualToString:*(a1 + 48)];

  if ((v6 & 1) == 0)
  {
    v3 = *(a1 + 72);
    goto LABEL_9;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v7 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(*(*(a1 + 72) + 8) + 40) deviceUUID];
      *buf = 138543362;
      v73 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found cached restore device: %{public}@", buf, 0xCu);
    }

    v9 = [*(*(*(a1 + 72) + 8) + 40) deviceUUID];
    _MBLog();
    goto LABEL_29;
  }

LABEL_30:

  _Block_object_dispose(&v68, 8);
}

void sub_1000A3E74(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceForRestore];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) restoreKeyBagsByID];
  *(*(*(a1 + 48) + 8) + 24) = [v5 count] != 0;
}

id sub_1000A4500(uint64_t a1)
{
  [*(a1 + 32) setServiceState:0];
  v2 = [*(a1 + 32) lockManager];
  [v2 stopRenewingLock];

  v3 = *(a1 + 32);

  return [v3 clearRestoreSession];
}

void sub_1000A4558(uint64_t a1, unsigned int a2, void *a3, double a4)
{
  v7 = a3;
  dispatch_assert_queue_not_V2(*(*(a1 + 32) + 160));
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (a2 > 4)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = *(&off_1003BDB50 + a2);
    }

    *buf = 138412290;
    *v83 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Engine callback (%@)", buf, 0xCu);
    if (a2 > 4)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = *(&off_1003BDB50 + a2);
    }

    v48 = v10;
    _MBLog();
  }

  if (*(a1 + 104) == 1)
  {
    v11 = *(*(a1 + 32) + 160);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A4F2C;
    block[3] = &unk_1003BDAE8;
    v80 = *(a1 + 40);
    v81 = a4;
    dispatch_sync(v11, block);
  }

  v12 = [*(a1 + 32) serviceDelegate];
  v14 = 0;
  v15 = -1;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v16 = *(a1 + 104);
        if (v16 == 1)
        {
          v29 = *(*(a1 + 32) + 160);
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_1000A4FCC;
          v65[3] = &unk_1003BC0B0;
          v18 = &v66;
          v66 = *(a1 + 40);
          dispatch_sync(v29, v65);
LABEL_58:

          if (*(a1 + 104))
          {
            goto LABEL_59;
          }

          v15 = -1;
          goto LABEL_63;
        }
      }

      else
      {
        if (a2 != 4)
        {
          goto LABEL_65;
        }

        v16 = *(a1 + 104);
        if (v16 == 1)
        {
          v17 = *(*(a1 + 32) + 160);
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_1000A4FD8;
          v61[3] = &unk_1003BC2E0;
          v18 = &v62;
          v62 = *(a1 + 40);
          v63 = v7;
          v64 = *(a1 + 72);
          dispatch_sync(v17, v61);

          v19 = v63;
LABEL_57:

          goto LABEL_58;
        }
      }

LABEL_35:
      if (v16)
      {
LABEL_59:
        v15 = [*(a1 + 64) minutesRemaining];
        if (a2 == 4 && (*(a1 + 104) & 1) != 0)
        {
          v39 = *(a1 + 32);
          [objc_opt_class() saveRestoreStateInfo:*(a1 + 40) account:*(a1 + 80)];
        }
      }

LABEL_63:
      v40 = *(*(a1 + 32) + 160);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1000A503C;
      v50[3] = &unk_1003BD428;
      v59 = a2;
      v41 = *(a1 + 48);
      v42 = *(a1 + 32);
      v51 = v41;
      v52 = v42;
      v58 = v15;
      v53 = *(a1 + 64);
      v54 = *(a1 + 56);
      v55 = *(a1 + 80);
      v56 = v7;
      v57 = *(a1 + 88);
      v60 = *(a1 + 104);
      dispatch_async(v40, v50);

      goto LABEL_64;
    }

    v16 = *(a1 + 104);
    if (v16 != 1)
    {
      goto LABEL_35;
    }

    if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 snapshotAfterForegroundRestore], v23, !v24))
    {
LABEL_56:
      v36 = *(*(a1 + 32) + 160);
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_1000A4F50;
      v67[3] = &unk_1003BD400;
      v72 = *(a1 + 105);
      v18 = &v68;
      v68 = *(a1 + 40);
      v37 = *(a1 + 72);
      v38 = *(a1 + 32);
      v69 = v37;
      v70 = v38;
      v71 = *(a1 + 80);
      dispatch_sync(v36, v67);

      v19 = v69;
      goto LABEL_57;
    }

    v73 = 0;
    v25 = [MBFileSystemManager createSnapshotForVolume:@"/private/var" name:@"snapshotAfterForegroundRestore" error:&v73 cancelationHandler:0];
    v26 = v73;
    v27 = MBGetDefaultLog();
    v28 = v27;
    if (v25)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Created snapshotAfterForegroundRestore", buf, 2u);
LABEL_54:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v83 = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to create snapshot after foreground restore: %@", buf, 0xCu);
      v49 = v26;
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_65;
    }

    if (*(a1 + 104) == 1)
    {
      v20 = *(*(a1 + 32) + 160);
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_1000A4F3C;
      v77[3] = &unk_1003BC0B0;
      v78 = *(a1 + 40);
      dispatch_sync(v20, v77);
    }

    if (*(*(*(a1 + 96) + 8) + 24) != 1)
    {
      [*(a1 + 64) reset];
    }

    v21 = a4;
    *&v13 = v21;
    if ([*(a1 + 64) shouldUpdateWithProgress:v13])
    {
      if (!*(a1 + 48) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = [*(a1 + 64) minutesRemaining];
        *&v22 = a4;
        [v12 manager:*(a1 + 32) didUpdateProgress:v15 estimatedTimeRemaining:*(a1 + 48) context:v22];
        v14 = 1;
        goto LABEL_48;
      }

      v33 = [*(a1 + 56) installCoordinator];

      if (v33)
      {
        v34 = [*(a1 + 56) installCoordinator];
        [v34 updateProgress:a4];
      }
    }

    v14 = 0;
    v15 = -1;
LABEL_48:
    if (*(a1 + 104) == 1)
    {
      if (v15 == -1)
      {
        v15 = [*(a1 + 64) minutesRemaining];
      }

      v35 = *(*(a1 + 32) + 160);
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_1000A4F48;
      v74[3] = &unk_1003BDAE8;
      v75 = *(a1 + 40);
      v76 = v15;
      dispatch_sync(v35, v74);
    }

    goto LABEL_65;
  }

  if (!*(a1 + 48))
  {
    v30 = 0;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = *(a1 + 48);
LABEL_41:
    *&v13 = a4;
    v15 = -1;
    [v12 manager:*(a1 + 32) didUpdateProgress:-1 estimatedTimeRemaining:v30 context:v13];
LABEL_64:
    v14 = 1;
    goto LABEL_65;
  }

  v31 = [*(a1 + 56) installCoordinator];

  if (v31)
  {
    v32 = [*(a1 + 56) installCoordinator];
    [v32 updateProgress:0.0];
  }

  v14 = 0;
  v15 = -1;
LABEL_65:
  *(*(*(a1 + 96) + 8) + 24) = a2;
  v43 = *(a1 + 104);
  if (*(a1 + 106) == 1)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_76;
    }

    v44 = +[MBNotificationCenter sharedNotificationCenter];
    [v44 postNotification:kMBManagerRestoreStateChangedNotification ifStateChanged:{objc_msgSend(*(a1 + 40), "state")}];

    v43 = *(a1 + 104);
  }

  if ((v14 & v43) == 1)
  {
    if (v15 == -1)
    {
      v47 = MBGetDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v83 = a2;
        *&v83[4] = 2048;
        *&v83[6] = a4;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "p:%d|%0.2f|?|?", buf, 0x12u);
        goto LABEL_74;
      }
    }

    else
    {
      [*(a1 + 64) secondsRemaining];
      v46 = v45;
      v47 = MBGetDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        *v83 = a2;
        *&v83[4] = 2048;
        *&v83[6] = a4;
        v84 = 2048;
        v85 = v46;
        v86 = 2048;
        v87 = v15;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "p:%d|%0.2f|%.0fs|%lum", buf, 0x26u);
LABEL_74:
        _MBLog();
      }
    }
  }

LABEL_76:
}

id sub_1000A4F2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(a1 + 32) setProgress:v1];
}

id *sub_1000A4F50(id *result)
{
  if (*(result + 64) == 1)
  {
    v1 = result;
    [result[4] setState:4];
    LODWORD(v2) = 1.0;
    [v1[4] setProgress:v2];
    [v1[4] setEstimatedTimeRemaining:0];
    [v1[5] setServiceState:0];
    [v1[5] setRestore:0];
    return [v1[6] loadRestoreStateWithAccount:v1[7]];
  }

  return result;
}

id sub_1000A4FD8(uint64_t a1)
{
  [*(a1 + 32) setState:6];
  v2 = MBSanitizeError(*(a1 + 40));
  [*(a1 + 32) setError:v2];

  v3 = *(a1 + 48);

  return [v3 setServiceState:0];
}

void sub_1000A503C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    if (!*(a1 + 32) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = [*(a1 + 40) serviceDelegate];
      v25 = [*(a1 + 56) restoreMode];
      v26 = [v25 isBackgroundFiles];

      if (v26)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v27 = [*(a1 + 56) restoreMode];
        v28 = [v27 paths];

        v29 = [v28 countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v67;
          do
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v67 != v31)
              {
                objc_enumerationMutation(v28);
              }

              [v24 manager:*(a1 + 40) didFailRestoreForPath:*(*(&v66 + 1) + 8 * i) withContext:*(a1 + 32) error:*(a1 + 72)];
            }

            v30 = [v28 countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v30);
        }
      }

      [v24 manager:*(a1 + 40) didFailRestoreWithContext:*(a1 + 32) error:*(a1 + 72)];
    }

    v33 = [*(a1 + 56) restoreMode];
    v34 = [v33 isBackgroundApp];

    if (v34)
    {
      v35 = +[_TtC7backupd20AppRestoreDispatcher shared];
      v36 = [v35 appRestorerForAccount:*(a1 + 64) stateQueue:*(*(a1 + 40) + 160) delegate:*(a1 + 40) error:0];

      if (!v36)
      {
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = *(a1 + 64);
          *buf = 138412290;
          v75 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to find the app restore manager for %@", buf, 0xCu);
          v60 = *(a1 + 64);
          _MBLog();
        }
      }

      v39 = [*(a1 + 80) cache];
      v40 = [*(a1 + 56) restoreMode];
      v41 = [v40 bundleID];
      v42 = [v39 clearAgentForDomainRestoresWithAgentDomain:v41];

      v43 = [*(a1 + 56) installCoordinator];

      if (v43)
      {
        v44 = [MBError isRetryableRestoreError:*(a1 + 72)];
        v45 = MBGetDefaultLog();
        v46 = v45;
        if (v44)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v47 = [*(a1 + 56) restoreMode];
            v48 = [v47 bundleID];
            v49 = *(a1 + 72);
            *buf = 138412546;
            v75 = v48;
            v76 = 2112;
            v77 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "IX: Not canceling data promise for %@ because restore needs to be retried after transient error - %@", buf, 0x16u);

            v50 = [*(a1 + 56) restoreMode];
            v61 = [v50 bundleID];
            v63 = *(a1 + 72);
            _MBLog();
          }

          v51 = [*(a1 + 56) installCoordinator];
          [v51 updateProgress:0.0];

          [v36 openRestoreSlot];
        }

        else
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v52 = [*(a1 + 56) restoreMode];
            v53 = [v52 bundleID];
            v54 = *(a1 + 72);
            *buf = 138412546;
            v75 = v53;
            v76 = 2112;
            v77 = v54;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "IX: Cancelling the data promise because restore failed for bundleID %@ with a non retryable error - %@", buf, 0x16u);

            v55 = [*(a1 + 56) restoreMode];
            v62 = [v55 bundleID];
            v64 = *(a1 + 72);
            _MBLog();
          }

          v56 = [*(a1 + 56) installCoordinator];
          [v36 stopTrackingCoordinator:v56 withSuccess:0];
        }
      }
    }

    if (*(a1 + 100) == 1)
    {
      v57 = MBGetDefaultLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Restore failed. Clearing all restore data", buf, 2u);
        _MBLog();
      }

      v58 = *(a1 + 40);
      v59 = *(a1 + 64);
      v65 = 0;
      [v58 resetCacheWithAccount:v59 error:&v65];
      v22 = v65;
      if (!v22)
      {
        goto LABEL_58;
      }

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v75 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to remove all restore data: %@", buf, 0xCu);
        _MBLog();
      }

LABEL_57:

LABEL_58:
    }
  }

  else if (v2 == 2)
  {
    if (!*(a1 + 32) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = [*(a1 + 40) serviceDelegate];
      v5 = *(a1 + 88);
      if (v5 == -1)
      {
        v5 = [*(a1 + 48) minutesRemaining];
      }

      LODWORD(v4) = 1.0;
      [v3 manager:*(a1 + 40) didUpdateProgress:v5 estimatedTimeRemaining:*(a1 + 32) context:v4];
      v6 = [*(a1 + 56) restoreMode];
      v7 = [v6 isBackgroundFiles];

      if (v7)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v8 = [*(a1 + 56) restoreMode];
        v9 = [v8 paths];

        v10 = [v9 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v71;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v71 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v3 manager:*(a1 + 40) didFinishRestoreForPath:*(*(&v70 + 1) + 8 * j) withContext:*(a1 + 32)];
            }

            v11 = [v9 countByEnumeratingWithState:&v70 objects:v79 count:16];
          }

          while (v11);
        }
      }

      [v3 manager:*(a1 + 40) didFinishRestoreWithContext:*(a1 + 32)];
    }

    v14 = [*(a1 + 56) restoreMode];
    v15 = [v14 isBackgroundApp];

    if (v15)
    {
      v16 = [*(a1 + 56) installCoordinator];

      if (v16)
      {
        v17 = +[_TtC7backupd20AppRestoreDispatcher shared];
        v18 = [v17 appRestorerForAccount:*(a1 + 64) stateQueue:*(*(a1 + 40) + 160) delegate:*(a1 + 40) error:0];

        if (!v18)
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = *(a1 + 64);
            *buf = 138412290;
            v75 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to find the app restore manager for %@", buf, 0xCu);
            v60 = *(a1 + 64);
            _MBLog();
          }
        }

        v21 = [*(a1 + 56) installCoordinator];
        [v18 stopTrackingCoordinator:v21 withSuccess:1];
      }

      v22 = [*(a1 + 56) restoreMode];
      v23 = [v22 bundleID];
      [AITransactionLog logStep:2 byParty:6 phase:2 success:1 forBundleID:v23 description:@"App data restore completed"];
      goto LABEL_57;
    }
  }
}

void sub_1000A5990(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] == 5)
  {
    [*(a1 + 32) unboostBackgroundRestore];
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 setUnboostBackgroundRestoreHandler:v3];
  }

  else
  {
    v4 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Not running a background restore (%d)", [*(a1 + 32) serviceState]);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000A5B64(uint64_t a1)
{
  if ([*(a1 + 32) manualBackupInProgress])
  {
    [*(a1 + 32) unboostManualBackup];
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 setUnboostManualBackupHandler:v3];
  }

  else
  {
    v4 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Not running manual backup (%d)", [*(a1 + 32) serviceState]);
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1000A610C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 backupUUID];
  v8 = [v6 backupUUID];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v13 = [v5 backupUUID];
    v14 = [v13 isEqualToString:*(a1 + 32)];

    if (v14)
    {
      v12 = -1;
      goto LABEL_7;
    }

    v15 = [v6 backupUUID];
    v16 = [v15 isEqualToString:*(a1 + 32)];

    if (v16)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  v10 = [v6 date];
  v11 = [v5 date];
  v12 = [v10 compare:v11];

LABEL_7:
  return v12;
}

uint64_t sub_1000A65B0(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000A65FC(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceState];
  if (v2 == 5)
  {
    v3 = [*(a1 + 32) finishedAppRestores];
    v4 = [*(a1 + 40) airTrafficDidFinishRestore];
    if ((*(a1 + 64) & 1) == 0)
    {
      v5 = v4;
      if ([*(a1 + 32) serviceState] == 5)
      {
        if ([*(a1 + 48) isPrimaryAccount])
        {
          if ((v3 & v5 & 1) == 0)
          {
            v6 = MBGetDefaultLog();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              if (v5)
              {
                v7 = @"done";
              }

              else
              {
                v7 = @"ongoing";
              }

              if (v3)
              {
                v8 = @"done";
              }

              else
              {
                v8 = @"ongoing";
              }

              *buf = 138412546;
              v84 = v7;
              v85 = 2112;
              v86 = v8;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring finish restore request while either app data restore or air traffic restore is incomplete. ATC: %@, IX: %@", buf, 0x16u);
LABEL_19:
              _MBLog();
              goto LABEL_78;
            }

            goto LABEL_78;
          }
        }

        else if ((v3 & 1) == 0)
        {
          v6 = MBGetDefaultLog();
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_78;
          }

          *buf = 138412290;
          v84 = @"ongoing";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring finish restore request while app data restore is incomplete. IX: %@", buf, 0xCu);
          goto LABEL_19;
        }
      }
    }

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v12 = @"Cancelling";
      }

      else
      {
        v12 = @"Finishing";
      }

      *buf = 138412290;
      v84 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ restore and releasing lock", buf, 0xCu);
      if (*(a1 + 64))
      {
        v13 = @"Cancelling";
      }

      else
      {
        v13 = @"Finishing";
      }

      v68 = v13;
      _MBLog();
    }

    v6 = [*(a1 + 56) placeholderRestoreDirectory];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v84 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing placeholderRestoreDirectory: %@", buf, 0xCu);
      v68 = v6;
      _MBLog();
    }

    v15 = +[NSFileManager defaultManager];
    v82 = 0;
    v16 = [v15 removeItemAtPath:v6 error:&v82];
    v17 = v82;

    if ((v16 & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to remove placeholderRestoreDirectory: %@", buf, 0xCu);
        v68 = v17;
        _MBLog();
      }
    }

    if (*(a1 + 64) == 1)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v19 = [*(a1 + 32) engines];
      v20 = [v19 countByEnumeratingWithState:&v78 objects:v91 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v79;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v79 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v78 + 1) + 8 * i) cancel];
          }

          v21 = [v19 countByEnumeratingWithState:&v78 objects:v91 count:16];
        }

        while (v21);
      }

      if (*(a1 + 64))
      {
        goto LABEL_61;
      }
    }

    v77 = 0;
    v24 = [*(a1 + 56) getBooleanValueForKey:@"UseInheritBackupEndpoint" keyExists:{&v77, v68}];
    if (v77)
    {
      v25 = v24;
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (v25)
        {
          v27 = "YES";
        }

        else
        {
          v27 = "NO";
        }

        *buf = 138412546;
        v84 = @"UseInheritBackupEndpoint";
        v85 = 2080;
        v86 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@=%s", buf, 0x16u);
        v68 = @"UseInheritBackupEndpoint";
        v71 = v27;
        _MBLog();
      }

      if (v77)
      {
        if (!v25)
        {
LABEL_61:
          v39 = *(a1 + 56);
          v75 = 0;
          v40 = [_TtC7backupd14MBRestoreDepot disposeAllDepotsForPersona:v39 error:&v75, v68, v71];
          v41 = v75;
          if ((v40 & 1) == 0)
          {
            v42 = MBGetDefaultLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v84 = v41;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to dispose all depots: %@", buf, 0xCu);
              v69 = v41;
              _MBLog();
            }
          }

          [*(a1 + 32) setServiceState:{6, v69}];
          v43 = +[MBTapToRadar sharedInstance];
          v44 = [*(a1 + 32) restorePlan];
          [v43 reportBackgroundRestoreErrorsIn:v44 persona:*(a1 + 56)];

          v45 = [*(a1 + 32) restore];
          [v45 setState:3];
          [v45 setIsBackground:1];
          v46 = *(a1 + 40);
          [objc_opt_class() saveRestoreStateInfo:v45 account:*(a1 + 48)];
          v47 = +[MBNotificationCenter sharedNotificationCenter];
          [v47 postNotification:kMBManagerRestoreStateChangedNotification ifStateChanged:{objc_msgSend(v45, "state")}];

          v48 = [*(a1 + 32) restoreSession];
          [v48 setFinishing:1];

          v49 = *(a1 + 64);
          v50 = [*(a1 + 32) restoreSession];
          [v50 setCancelled:v49];

          v51 = [*(a1 + 32) backgroundRestoreProgressMonitor];
          [v51 cancel];

          [*(a1 + 32) setBackgroundRestoreProgressMonitor:0];
          v52 = [*(a1 + 32) restoreLogger];
          [v52 close];

          [*(a1 + 32) setRestoreLogger:0];
          v53 = [v45 date];
          if (v53)
          {
            v54 = +[NSDate date];
            v55 = [v45 date];
            [v54 timeIntervalSinceDate:v55];
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          v58 = MBGetDefaultLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v84 = v57;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Total duration of iCloud background restore: %0.3fs", buf, 0xCu);
            v70 = v57;
            _MBLog();
          }

          v59 = [*(a1 + 32) restoreSession];
          v60 = v59;
          if (*(a1 + 65) == 1)
          {
            v61 = [v59 propertyList];
            v62 = MBGetDefaultLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [*(a1 + 48) accountIdentifier];
              v64 = [*(a1 + 56) personaIdentifier];
              *buf = 138413058;
              v84 = v63;
              v85 = 2114;
              v86 = v64;
              v87 = 2048;
              v88 = v60;
              v89 = 2114;
              v90 = v61;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Saving restore session for account %@(%{public}@): (%p) %{public}@", buf, 0x2Au);

              v65 = [*(a1 + 48) accountIdentifier];
              [*(a1 + 56) personaIdentifier];
              v73 = v60;
              v74 = v61;
              v72 = v70 = v65;
              _MBLog();
            }

            [*(a1 + 56) setPreferencesValue:v61 forKey:@"RestoreSession"];
          }

          else
          {
            [v59 saveAtPath:@"/var/mobile/Library/Preferences/com.apple.MobileBackup.plist"];
          }

          v66 = [*(a1 + 32) lockManager];
          [v66 releaseLockSync];

          if (*(a1 + 64) == 1)
          {
            v67 = [*(a1 + 40) delegate];
            [v67 managerDidCancelRestore:*(a1 + 40)];
          }

          goto LABEL_78;
        }
      }
    }

    v28 = [*(*(a1 + 40) + 184) objectForKeyedSubscript:{*(a1 + 48), v68, v71}];
    v29 = [v28 restoreSession];

    v30 = [v29 snapshotUUID];
    v31 = [v29 backupUDID];
    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = v30;
      v85 = 2112;
      v86 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Trying to inherit backup snapshot %@ from device %@", buf, 0x16u);
      v68 = v30;
      v71 = v31;
      _MBLog();
    }

    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v76 = 0;
    v35 = [v33 inheritSnapshotWithAccount:v34 fromSnapshot:v30 fromDevice:v31 error:&v76];
    v36 = v76;
    v37 = MBGetDefaultLog();
    v38 = v37;
    if (v35)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "InheritBackup succeeded", buf, 2u);
LABEL_59:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v84 = v36;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "InheritBackup failed: %@", buf, 0xCu);
      v68 = v36;
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  v9 = v2;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64))
    {
      v10 = @"cancel";
    }

    else
    {
      v10 = @"finish";
    }

    *buf = 138543618;
    v84 = v10;
    v85 = 1024;
    LODWORD(v86) = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@ restore request while not in background restore (%d) ", buf, 0x12u);
    *(a1 + 64);
    goto LABEL_19;
  }

LABEL_78:
}

void sub_1000A73EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) finishAirTrafficRestoreWithAccount:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = objc_opt_self();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000A8160(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 addObject:a4];
  [*(a1 + 40) addObject:v7];

  return 1;
}

void sub_1000A8610(void *a1)
{
  if (a1[4])
  {
    v3 = a1[5];
    v2 = a1[6];
    v25 = 0;
    v4 = [v2 domainForPath:v3 relativePath:&v25];
    v5 = v25;
    if (v4)
    {
      v6 = a1[7];
      v7 = a1[5];
      v24 = 0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000A8980;
      v22[3] = &unk_1003BC6D8;
      v23 = v4;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000A8988;
      v21[3] = &unk_1003BD518;
      v21[4] = a1[9];
      [v6 atcRestorableForAbsolutePath:v7 error:&v24 domainProvider:v22 restorableAccessor:v21];
      v8 = v24;
      if (v8)
      {
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=atc= Failed to get restore plan restorable: %@", buf, 0xCu);
          v17 = v8;
          _MBLog();
        }
      }

      v10 = a1[8];
      v11 = a1[5];
      v20 = v8;
      v12 = [v10 fetchRestorableFileForPath:v11 error:{&v20, v17}];
      v13 = v20;

      if (v12)
      {
        *(*(a1[9] + 8) + 24) = 1;
      }

      else if (v13)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=atc= Failed to get legacy cache restorable: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = a1[5];
        *buf = 138412290;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=atc= Failed to get domain for %@", buf, 0xCu);
        v19 = a1[5];
        _MBLog();
      }
    }
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[5];
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=atc= No active restore session for request for whether file exists: %@", buf, 0xCu);
      v18 = a1[5];
      _MBLog();
    }
  }
}

void sub_1000A8B88(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      *buf = 138412290;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No active restore session for request for whether app data exists for %@", buf, 0xCu);
      v28 = *(a1 + 40);
      _MBLog();
    }

    goto LABEL_27;
  }

  v2 = [MBDomain nameWithAppID:*(a1 + 40)];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [*(a1 + 48) dependentDomainsForApp:v2 error:0];
  v5 = [v4 mutableCopy];
  if (!v5)
  {
    v5 = [[NSMutableSet alloc] initWithCapacity:1];
  }

  [v5 addObject:v3];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 138412546;
    v40 = v7;
    v41 = 2112;
    v42 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finding pending restore size for app %@: %@", buf, 0x16u);
    v25 = *(a1 + 40);
    _MBLog();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  v31 = v4;
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      v11 = 0;
      v12 = v3;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v35 + 1) + 8 * v11);

        v13 = *(a1 + 48);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000A9018;
        v33[3] = &unk_1003BD568;
        v34 = *(a1 + 56);
        v14 = [v13 fetchRestoreSizeForDomain:v3 callback:v33];
        if (v14)
        {
          v15 = MBGetDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 40);
            *buf = 138412546;
            v40 = v16;
            v41 = 2112;
            v42 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get pending restore size for app %@: %@", buf, 0x16u);
            v26 = *(a1 + 40);
            _MBLog();
          }
        }

        v11 = v11 + 1;
        v12 = v3;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v9);
  }

  v17 = *(*(*(a1 + 56) + 8) + 24);
  v18 = MBGetDefaultLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17 == 1)
  {
    v20 = v31;
    if (v19)
    {
      v21 = *(*(*(a1 + 64) + 8) + 24);
      v22 = *(a1 + 40);
      *buf = 134218498;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restore data exists of size %{bytes}llu for app with bundle ID %@ (%@)", buf, 0x20u);
      v30 = *(a1 + 40);
      v27 = *(*(*(a1 + 64) + 8) + 24);
LABEL_25:
      _MBLog();
    }
  }

  else
  {
    v20 = v31;
    if (v19)
    {
      v24 = *(a1 + 40);
      *buf = 138412546;
      v40 = v24;
      v41 = 2112;
      v42 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restore data does not exist for app with bundle ID %@ (%@)", buf, 0x16u);
      v29 = *(a1 + 40);
      goto LABEL_25;
    }
  }

LABEL_27:
}

uint64_t sub_1000A9018(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) |= a3 != 0;
  *(*(*(result + 40) + 8) + 24) += a2;
  return result;
}

uint64_t sub_1000A9614(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1[4])
  {
    goto LABEL_4;
  }

  v5 = [v3 relativePath];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [v4 relativePath];
  v8 = [v7 hasPrefix:a1[4]];

  if ((v8 & 1) == 0)
  {
    ++*(*(a1[7] + 8) + 24);
    v12 = a1[5];
    v9 = +[NSNull null];
    v10 = v12;
  }

  else
  {
LABEL_4:
    [v4 setupWithDomain:a1[6]];
    v9 = [MBFileInfo fileInfoWithRestorable:v4];
    v10 = a1[5];
  }

  [v10 addObject:v9];

  return 1;
}

void sub_1000AB25C(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] == 5)
  {
    v2 = +[_TtC7backupd20AppRestoreDispatcher shared];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(v4 + 160);
    v14 = 0;
    v6 = [v2 appRestorerForAccount:v3 stateQueue:v5 delegate:v4 error:&v14];
    v7 = v14;
    v8 = v14;

    if (v6)
    {
      [*(a1 + 32) setFinishedAppRestores:0];
      [v6 startObservingInstallCoordinators];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        *buf = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to find the app restore manager for %@: %@", buf, 0x16u);
        v13 = *(a1 + 40);
        _MBLog();
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) serviceState];
      *buf = 67109120;
      LODWORD(v16) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not currently in bg restore (%d)", buf, 8u);
      [*(a1 + 32) serviceState];
      _MBLog();
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_1000AB7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000AB7D4(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceState];
  v3 = MBGetDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) serviceState];
      *buf = 67109120;
      LODWORD(v37) = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not scanning while busy (%d)", buf, 8u);
      v28 = [*(a1 + 32) serviceState];
      _MBLog();
    }

    if ([*(a1 + 32) serviceState] == 1)
    {
      v6 = @"Scan already running";
      v7 = 3;
    }

    else
    {
      v6 = @"Manager not in idle state";
      v7 = 14;
    }

    v25 = [MBError errorWithCode:v7 format:v6, v28];
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  else
  {
    if (v4)
    {
      v8 = [*(a1 + 40) accountIdentifier];
      v9 = [*(a1 + 40) persona];
      v10 = [v9 personaIdentifier];
      *buf = 138543618;
      v37 = v8;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting scanning for account %{public}@(%{public}@)", buf, 0x16u);

      v11 = [*(a1 + 40) accountIdentifier];
      v12 = [*(a1 + 40) persona];
      v29 = [v12 personaIdentifier];
      _MBLog();
    }

    v13 = os_transaction_create();
    [*(a1 + 32) setServiceState:1];
    [*(a1 + 32) setNextBackupSize:0];
    v14 = [[MBCKSizingEngine alloc] initWithSettingsContext:*(a1 + 48) serviceManager:*(a1 + 56)];
    [(MBCKEngine *)v14 cache];
    if (objc_claimAutoreleasedReturnValue())
    {
      __assert_rtn("[MBCKManager _startScanWithSettingsContext:error:]_block_invoke", "MBCKManager.m", 3834, "!engine.cache");
    }

    v15 = MBAllCKPlugins();
    v16 = [(MBCKEngine *)v14 context];
    [v16 setPlugins:v15];

    v17 = [*(a1 + 32) engines];
    v18 = [v17 arrayByAddingObject:v14];
    [*(a1 + 32) setEngines:v18];

    v19 = +[MBDaemon sharedDaemon];
    [v19 holdWorkAssertion:*(a1 + 80)];

    v20 = [*(a1 + 32) serviceGroup];
    v21 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ABBBC;
    block[3] = &unk_1003BD018;
    v22 = *(a1 + 56);
    v31 = v14;
    v32 = v22;
    v33 = *(a1 + 32);
    v34 = v13;
    v35 = *(a1 + 80);
    v23 = v13;
    v24 = v14;
    dispatch_group_async(v20, v21, block);

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_1000ABBBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v15 = 0;
  v4 = [v3 runWithError:&v15];
  v5 = v15;
  v6 = *(*(a1 + 40) + 160);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ABCF8;
  block[3] = &unk_1003BD5E0;
  v14 = v4;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  dispatch_sync(v6, block);
  v7 = +[MBDaemon sharedDaemon];
  [v7 releaseWorkAssertion:*(a1 + 64)];

  v8 = *(a1 + 56);
  v9 = objc_opt_self();

  objc_autoreleasePoolPop(v2);
}

id sub_1000ABCF8(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) modifiedBytes]);
    [*(a1 + 32) setNextBackupSize:v2];
  }

  [*(a1 + 32) setServiceState:0];
  v3 = [*(a1 + 32) engines];
  v8 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [v3 arrayByExcludingObjectsInArray:v4];
  [*(a1 + 32) setEngines:v5];

  v6 = *(a1 + 48);
  return objc_opt_self();
}