id MBGetDefaultLog()
{
  if (MBGetDefaultLog_onceToken != -1)
  {
    MBGetDefaultLog_cold_1();
  }

  v1 = MBGetDefaultLog_log;

  return v1;
}

void __MBCreateLogDirectory_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (MBCreateLogDirectory_previousLogHook)
  {
    (*(MBCreateLogDirectory_previousLogHook + 16))();
  }

  v5 = *(a3 + 136);
  if (v5)
  {
    if (!strcmp(v5, "MBSwift"))
    {
      v6 = os_log_copy_message_string();
      if (v6)
      {
        v7 = v6;
        if (a2 <= 1)
        {
          if (!a2)
          {
            v8 = @"Df";
            goto LABEL_19;
          }

          if (a2 == 1)
          {
            v8 = @"I ";
            goto LABEL_19;
          }
        }

        else
        {
          switch(a2)
          {
            case 2:
              v8 = @"Db";
              goto LABEL_19;
            case 16:
              v8 = @"E ";
              goto LABEL_19;
            case 17:
              v8 = @"F ";
LABEL_19:
              v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
              _MBLogHelper(v8, v9);

              free(v7);
              return;
          }
        }

        v8 = @"???";
        goto LABEL_19;
      }
    }
  }
}

void _MBLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (sFileLoggingEnabled == 1)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = MBStripLogFormatString(v12);
    v15 = [v13 initWithFormat:v14 arguments:&a9];

    _MBLogHelper(v10, v15);
    objc_autoreleasePoolPop(v11);
  }
}

id MBStripLogFormatString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v1 characterAtIndex:v5];
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        v9 = (v8 - 64);
        if (v9 <= 0x3B)
        {
          if (((1 << (v8 - 64)) & 0x129C2FA010000E3) == 0)
          {
            if (v9 != 16)
            {
              if (v9 == 59)
              {
                if (v7 < v5)
                {
                  v10 = v3;
                  v11 = [v1 substringWithRange:{v7, v5 - v7}];
                  [v10 appendString:v11];
                }

                v4 = 2;
                v7 = v5;
                goto LABEL_20;
              }

              goto LABEL_26;
            }

LABEL_23:
            if (v6 < v5)
            {
              v13 = v3;
              v14 = [v1 substringWithRange:{v6, v5 - v6}];
              [v13 appendString:v14];
            }

            [v3 appendString:@"p"];
            v6 = v5 + 1;
          }

LABEL_19:
          v4 = 0;
          v7 = v6;
          goto LABEL_20;
        }

LABEL_26:
        if (v8 != 37)
        {
          v4 = 3;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v4 = v8 == 37;
LABEL_20:
      if (v2 == ++v5)
      {
        goto LABEL_29;
      }
    }

    if (v4 == 2)
    {
      if (v8 == 125)
      {
        v6 = v5 + 1;
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_20;
    }

    v12 = (v8 - 64);
    if (v12 > 0x38)
    {
      goto LABEL_26;
    }

    if (((1 << (v8 - 64)) & 0x129C2FA010000E3) != 0)
    {
      goto LABEL_19;
    }

    if (v12 == 16)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v7 = 0;
LABEL_29:
  v15 = v2 > v7;
  v16 = v2 - v7;
  if (v15)
  {
    v17 = v3;
    v18 = [v1 substringWithRange:{v7, v16}];
    [v17 appendString:v18];
  }

  return v3;
}

void _MBLogHelper(void *a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_MBLogHelper_onceToken != -1)
  {
    _MBLogHelper_cold_1();
  }

  v5 = MBGetLogDateFormatter();
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:v6];

  v77 = 0;
  if (pthread_threadid_np(0, &v77))
  {
    v8 = 0;
    v77 = 0;
  }

  else
  {
    v8 = v77;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %d.%llx %@: %@\n", v7, _MBLogHelper_pid, v8, v3, v4];
  v10 = [v9 UTF8String];
  v11 = strlen(v10);
  pthread_mutex_lock(&sLogLock);
  if (sLog)
  {
    if (MBMaxLogSize_onceToken != -1)
    {
      _MBLogHelper_cold_2();
    }

    if (MBMaxLogSize_sMaxLogSize > sLoggedSize)
    {
      goto LABEL_79;
    }

    if (sLog)
    {
      fclose(sLog);
    }
  }

  if (MBCreateLogDirectory_onceToken != -1)
  {
    _MBLogHelper_cold_3();
  }

  if (MBCreateLogDirectory_sCanCreateLogDirectory == 1)
  {
    v12 = MBGetLogDir();
    v13 = [v12 fileSystemRepresentation];
    if (mkdir(v13, 0x1C0u) && *__error() != 17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _MBLogHelper_cold_4();
      }
    }

    else if (!geteuid())
    {
      memset(&v85, 0, sizeof(v85));
      if (lstat(v13, &v85))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _MBLogHelper_cold_5();
        }
      }

      else
      {
        v57 = MBMobileUID();
        if (v85.st_uid == v57 && v85.st_gid == v57 || !lchown(v13, v57, v57))
        {
          if ((~v85.st_mode & 0x1C0) != 0 && lchmod(v13, 0x1C0u) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            _MBLogHelper_cold_7();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _MBLogHelper_cold_6();
        }
      }
    }
  }

  if (MBCanCreateLogs_onceToken != -1)
  {
    _MBLogHelper_cold_8();
  }

  if ((MBCanCreateLogs_sCanCreateLogs & 1) == 0)
  {
    sLog = 0;
    goto LABEL_81;
  }

  v14 = MBGetLogDir();
  v68 = MBLogBasename();
  v15 = [v14 stringByAppendingPathComponent:?];
  sLoggedSize = 0;
  memset(&v85, 0, sizeof(v85));
  v70 = v14;
  if (!lstat([v15 fileSystemRepresentation], &v85))
  {
    if (MBMaxLogSize_onceToken != -1)
    {
      _MBLogHelper_cold_2();
    }

    v71 = MBMaxLogSize_sMaxLogSize;
    if (MBMaxLogCount_onceToken != -1)
    {
      _MBLogHelper_cold_10();
    }

    v75 = MBMaxLogCount_sMaxLogCount;
    v72 = time(0);
    st_size = v85.st_size;
    if (v71 < v85.st_size || (sLoggedSize = v85.st_size, v72 > v85.st_birthtimespec.tv_sec) && v72 - v85.st_birthtimespec.tv_sec >= 86401)
    {
      v16 = [MEMORY[0x1E696AC08] defaultManager];
      if (MBCanRotateLogs_onceToken != -1)
      {
        _MBLogHelper_cold_11();
      }

      if (MBCanRotateLogs_sCanRotateLogs)
      {
        v61 = v15;
        v62 = v11;
        v63 = v10;
        v64 = v9;
        v65 = v7;
        v66 = v4;
        v67 = v3;
        v73 = v16;
        v17 = [v16 contentsOfDirectoryAtPath:v14 error:0];
        v18 = MEMORY[0x1E696AE18];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __MBOpenLogFile_block_invoke;
        v83[3] = &unk_1E8684588;
        v19 = v68;
        v84 = v19;
        v59 = [v18 predicateWithBlock:v83];
        v60 = v17;
        v58 = [v17 filteredArrayUsingPredicate:?];
        v20 = [v58 sortedArrayUsingComparator:&__block_literal_global_21];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v21 = v20;
        v22 = [v20 countByEnumeratingWithState:&v79 objects:v86 count:16];
        v23 = v71;
        if (!v22)
        {
          goto LABEL_65;
        }

        v24 = v22;
        v25 = *v80;
        v69 = *MEMORY[0x1E696A250];
        while (1)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v80 != v25)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v79 + 1) + 8 * i);
            v28 = [v27 stringByDeletingPathExtension];
            v29 = [v28 isEqualToString:v19];

            if ((v29 & 1) == 0)
            {
              if (([v27 isEqualToString:v19] & 1) == 0)
              {
                continue;
              }

              v31 = 0;
LABEL_48:
              v32 = [v14 stringByAppendingPathComponent:v27];
              v33 = v32;
              if (v75 <= v31)
              {
                if (!lstat([v32 fileSystemRepresentation], &v85) && v72 > v85.st_mtimespec.tv_sec && v72 - v85.st_mtimespec.tv_sec >= 864001)
                {
                  goto LABEL_59;
                }
              }

              else if (v23 < st_size)
              {
                if (v75 > (v31 + 1))
                {
                  v34 = [MEMORY[0x1E696AD98] numberWithInt:?];
                  [v34 description];
                  v36 = v35 = v14;
                  v37 = [v19 stringByAppendingPathExtension:v36];
                  v38 = [v35 stringByAppendingPathComponent:v37];

                  v23 = v71;
                  v78 = 0;
                  LOBYTE(v34) = [v73 moveItemAtPath:v33 toPath:v38 error:&v78];
                  v39 = v78;
                  v40 = v39;
                  if ((v34 & 1) == 0)
                  {
                    v41 = [v39 domain];
                    if ([v41 isEqualToString:v69])
                    {
                      v42 = [v40 code];

                      v43 = v42 == 513;
                      v23 = v71;
                      if (v43)
                      {
                        [v73 removeItemAtPath:v33 error:0];
                      }
                    }

                    else
                    {
                    }
                  }

                  v14 = v70;
                  goto LABEL_62;
                }

LABEL_59:
                [v73 removeItemAtPath:v33 error:0];
              }

LABEL_62:

              continue;
            }

            v30 = [v27 pathExtension];
            v31 = [v30 intValue];

            if ((v31 & 0x80000000) == 0)
            {
              goto LABEL_48;
            }
          }

          v24 = [v21 countByEnumeratingWithState:&v79 objects:v86 count:16];
          if (!v24)
          {
LABEL_65:

            v4 = v66;
            v3 = v67;
            v9 = v64;
            v7 = v65;
            v11 = v62;
            v10 = v63;
            v15 = v61;
            v16 = v73;
            goto LABEL_68;
          }
        }
      }

      [v16 removeItemAtPath:v15 error:0];
LABEL_68:
    }
  }

  v44 = v9;
  v45 = v7;
  v46 = v4;
  v47 = v3;
  v48 = v11;
  v49 = v10;
  v50 = v15;
  v51 = fopen([v15 fileSystemRepresentation], "a");
  if (v51)
  {
    v76 = MBMobileUID();
    v52 = fileno(v51);
    if (!fstat(v52, &v85))
    {
      st_uid = v85.st_uid;
      if (v85.st_uid != v76 && st_uid == geteuid())
      {
        fchown(v52, v76, 0xFFFFFFFF);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    _MBLogHelper_cold_12();
  }

  sLog = v51;
  v3 = v47;
  v4 = v46;
  v7 = v45;
  v9 = v44;
  if (v51)
  {
    v10 = v49;
    v11 = v48;
    if (ftello(v51))
    {
      fputs("\n", sLog);
      ++sLoggedSize;
    }

LABEL_79:
    if (sLog)
    {
      sLoggedSize += v11;
      fputs(v10, sLog);
      v54 = sFlushTimer;
      v55 = dispatch_time(0, 3000000000);
      dispatch_source_set_timer(v54, v55, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

LABEL_81:
  pthread_mutex_unlock(&sLogLock);

  v56 = *MEMORY[0x1E69E9840];
}

id MBGetLogDateFormatter()
{
  if (MBGetLogDateFormatter_onceToken != -1)
  {
    MBGetLogDateFormatter_cold_1();
  }

  v1 = MBGetLogDateFormatter_formatter;

  return v1;
}

void _MBLogFlushDeprecated()
{
  if (sFileLoggingEnabled == 1)
  {
    pthread_mutex_lock(&sLogLock);
    if (sLog)
    {
      fflush(sLog);
    }

    pthread_mutex_unlock(&sLogLock);
  }
}

void sub_1DEB60970(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DEB60F50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DEB612B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CryptoBufferAllocate(size_t size)
{
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0xF84A7741uLL))
  {
    bzero(memptr, size);
  }

  return memptr;
}

void *CryptoBufferDuplicate(const void *a1, size_t size)
{
  result = CryptoBufferAllocate(size);
  if (result)
  {

    return memcpy(result, a1, size);
  }

  return result;
}

uint64_t CryptoAcceleratorConnect()
{
  v33 = *MEMORY[0x1E69E9840];
  connect = 0;
  v0 = IOServiceMatching("IOAESAccelerator");
  if (!v0)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_ERROR, "IOServiceMatching failed", buf, 2u);
      _MBLog(@"E ", "IOServiceMatching failed", v11, v12, v13, v14, v15, v16, v29);
    }

    goto LABEL_9;
  }

  v1 = v0;
  CFRetain(v0);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v1);
  if (!MatchingService)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_ERROR, "IOServiceGetMatchingService failed", buf, 2u);
      _MBLog(@"E ", "IOServiceGetMatchingService failed", v4, v5, v6, v7, v8, v9, v29);
    }

    CFRelease(v1);
LABEL_9:
    result = 0;
    goto LABEL_15;
  }

  v18 = MatchingService;
  v19 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  if (v19)
  {
    v20 = v19;
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = v20;
      _os_log_impl(&dword_1DEB5D000, v21, OS_LOG_TYPE_ERROR, "IOServiceOpen failed, status:0x%x", buf, 8u);
      _MBLog(@"E ", "IOServiceOpen failed, status:0x%x", v22, v23, v24, v25, v26, v27, v20);
    }
  }

  CFRelease(v1);
  IOObjectRelease(v18);
  result = connect;
LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CryptoAcceleratorEncrypt(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  outputStructCnt = 88;
  outputStruct[0] = a2;
  outputStruct[1] = a3;
  v8 = a4;
  v10 = 0x8000000000;
  v13 = 2107;
  result = IOConnectCallStructMethod(a1, 1u, outputStruct, 0x58uLL, outputStruct, &outputStructCnt);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MBPathHasVolumePrefix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if ([v4 length] >= 2)
  {
    v5 = [v4 stringByAppendingString:@"/"];
  }

  if ([v3 hasPrefix:@"/var/"] && objc_msgSend(v4, "hasPrefix:", @"/private"))
  {
    v6 = [v4 substringFromIndex:8];

    v5 = v6;
  }

  v7 = [v3 hasPrefix:v5];

  return v7;
}

uint64_t MBVolumeTypeFromMountPoint(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"/private/var/mobile"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"/private/var"])
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"/private/var/PersonaVolumes"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MBVolumeTypeFromPath(void *a1)
{
  v1 = a1;
  if (MBPathHasVolumePrefix(v1, @"/private/var/mobile"))
  {
    HasVolumePrefix = 2;
  }

  else if (MBPathHasVolumePrefix(v1, @"/private/var/PersonaVolumes"))
  {
    HasVolumePrefix = 3;
  }

  else
  {
    HasVolumePrefix = MBPathHasVolumePrefix(v1, @"/private/var");
  }

  return HasVolumePrefix;
}

void *MBStringWithArray(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v2 length] != 1)
      {
        [v2 appendString:{@", "}];
      }

      [v2 appendString:MBStringWithObject(v5)];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [v2 appendString:@"]"];
  return v2;
}

id MBStringWithObject(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MBStringWithArray(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [a1 bytes];
      v4 = 2 * [a1 length];

      return MBStringWithNibbles(v3, v4);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return MBStringWithDictionary(a1);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return MBStringWithSet(a1);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a1];
          }

          else
          {

            return [a1 description];
          }
        }
      }
    }
  }
}

void *MBStringWithLimitedArray(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([a1 count] > a2)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [v4 addObjectsFromArray:{objc_msgSend(v3, "subarrayWithRange:", 0, a2)}];
    [v4 addObject:@"..."];
    v3 = v4;
  }

  return MBStringWithArray(v3);
}

uint64_t MBStringWithSizeInBytes(unint64_t a1)
{
  if (a1 <= 0x3FF)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld B", a1];
  }

  if (!(a1 >> 20))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f KB", vcvtd_n_f64_u64(a1, 0xAuLL)];
  }

  v2 = a1;
  if (a1 >> 30)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f GB", v2 * 9.31322575e-10];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f MB", v2 * 0.000000953674316];
  }
}

id MBStringWithNibbles(unsigned __int8 *a1, unint64_t a2)
{
  v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  if (a2)
  {
    v5 = v4 + 2;
    v6 = 1;
    do
    {
      v8 = *a1++;
      v7 = v8;
      *(v5 - 1) = _MBNibbleToChar[v8 >> 4];
      if (v6 < a2)
      {
        *v5 = _MBNibbleToChar[v7 & 0xF];
      }

      v9 = v6 + 1;
      v6 += 2;
      v5 += 2;
    }

    while (v9 < a2);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v4 length:a2 freeWhenDone:1];

  return v10;
}

uint64_t MBBytesWithString(void *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  if ([a1 length] == 2 * a3)
  {
    if (!v3)
    {
      return 1;
    }

    for (i = 1; ; i += 2)
    {
      v7 = [a1 characterAtIndex:i - 1];
      if ((v7 - 48) >= 0xA && (v7 - 97) > 5)
      {
        break;
      }

      v9 = v7;
      v10 = [a1 characterAtIndex:i];
      if ((v10 - 48) >= 0xA && (v10 - 97) > 5)
      {
        break;
      }

      v11 = _MBCharToNibble[v10];
      v12 = v11 | (16 * _MBCharToNibble[v9]);
      *a2++ = v11 | (16 * LOBYTE(_MBCharToNibble[v9]));
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MBDataWithString(void *a1)
{
  if ([a1 length])
  {
    return 0;
  }

  v2 = [a1 length] >> 1;
  v3 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (!MBBytesWithString(a1, v3, v2))
  {
    if (v3)
    {
      free(v3);
    }

    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];

  return [v4 dataWithBytesNoCopy:v3 length:v2 freeWhenDone:1];
}

id MBStringWithData(void *a1)
{
  v2 = [a1 bytes];
  v3 = 2 * [a1 length];

  return MBStringWithNibbles(v2, v3);
}

uint64_t MBStringWithDate(uint64_t result)
{
  if (result)
  {
    return [MEMORY[0x1E696AB78] localizedStringFromDate:result dateStyle:1 timeStyle:2];
  }

  return result;
}

void *MBStringWithDictionary(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if ([v2 length] != 1)
        {
          [v2 appendString:{@", "}];
        }

        [v2 appendFormat:@"%@: %@", v7, MBStringWithObject(objc_msgSend(a1, "objectForKeyedSubscript:", v7))];
        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [v2 appendString:@"}"];
  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void *MBStringWithSet(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v2 length] != 1)
      {
        [v2 appendString:{@", "}];
      }

      [v2 appendString:MBStringWithObject(v5)];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [v2 appendString:@"}"];
  return v2;
}

uint64_t MBHTTPDateFormatter()
{
  if (MBHTTPDateFormatter_pred != -1)
  {
    MBHTTPDateFormatter_cold_1();
  }

  return MBHTTPDateFormatter_formatter;
}

uint64_t __MBHTTPDateFormatter_block_invoke()
{
  MBHTTPDateFormatter_formatter = objc_alloc_init(MEMORY[0x1E696AB78]);
  v0 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  [MBHTTPDateFormatter_formatter setLocale:v0];
  v1 = MBHTTPDateFormatter_formatter;

  return [v1 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss z"];
}

uint64_t MBIsTransientErrorCode(uint64_t a1)
{
  result = 1;
  if (a1 > 299)
  {
    if ((a1 - 300) > 0xA || ((1 << (a1 - 44)) & 0x535) == 0)
    {
      v3 = a1 - 556;
LABEL_10:
      if (v3 >= 2)
      {
        return 0;
      }
    }
  }

  else if (((a1 - 202) > 0x12 || ((1 << (a1 + 54)) & 0x78041) == 0) && (a1 > 0x14 || ((1 << a1) & 0x1A0000) == 0))
  {
    v3 = a1 - 105;
    goto LABEL_10;
  }

  return result;
}

uint64_t __MBGetDefaultLog_block_invoke()
{
  MBGetDefaultLog_log = os_log_create("com.apple.mobilebackup", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id MBGetMBSwiftLog()
{
  if (MBGetMBSwiftLog_onceToken != -1)
  {
    MBGetMBSwiftLog_cold_1();
  }

  v1 = MBGetMBSwiftLog_log;

  return v1;
}

uint64_t __MBGetMBSwiftLog_block_invoke()
{
  MBGetMBSwiftLog_log = os_log_create("com.apple.mobilebackup", "MBSwift");

  return MEMORY[0x1EEE66BB8]();
}

id MBGetSQLLog()
{
  if (MBGetSQLLog_onceToken != -1)
  {
    MBGetSQLLog_cold_1();
  }

  v1 = MBGetSQLLog_log;

  return v1;
}

uint64_t __MBGetSQLLog_block_invoke()
{
  MBGetSQLLog_log = os_log_create("com.apple.mobilebackup", "SQL");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __MBGetLogDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = MBGetLogDateFormatter_formatter;
  MBGetLogDateFormatter_formatter = v0;

  [MBGetLogDateFormatter_formatter setFormatterBehavior:1040];
  v2 = MBGetLogDateFormatter_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

__CFString *MBLogStringForNSQualityOfService(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"default";
    }

    if (a1 == 9)
    {
      return @"bg";
    }

    return @"???";
  }

  result = @"ui";
  if (a1 != 33 && a1 != 25)
  {
    if (a1 == 17)
    {
      return @"utility";
    }

    return @"???";
  }

  return result;
}

__CFString *MBGetLogDir()
{
  if (MBIsInternalInstall())
  {
    return @"/var/mobile/Library/Logs/MobileBackup";
  }

  else
  {
    return @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/MobileBackup";
  }
}

id MBBackgroundRestoreSignpostHandle()
{
  if (MBBackgroundRestoreSignpostHandle_onceToken != -1)
  {
    MBBackgroundRestoreSignpostHandle_cold_1();
  }

  v1 = MBBackgroundRestoreSignpostHandle_log;

  return v1;
}

uint64_t __MBBackgroundRestoreSignpostHandle_block_invoke()
{
  MBBackgroundRestoreSignpostHandle_log = os_log_create("com.apple.ConditionInducer.HighSeverity", "BackgroundRestoreCondition");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t MBSupportedProtocolVersions()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = [MEMORY[0x1E696AD98] numberWithDouble:2.1];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id MBDefaultOptions()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"Options", @"com.apple.MobileBackup", @"mobile", *MEMORY[0x1E695E898]);
  if (!v0)
  {
LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return MEMORY[0x1E695E0F8];
  }

  v1 = v0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = @"com.apple.MobileBackup";
      v14 = 2112;
      v15 = @"Options";
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "Preference %@ %@ not a dictionary", buf, 0x16u);
      _MBLog(@"Df", "Preference %@ %@ not a dictionary", v5, v6, v7, v8, v9, v10, @"com.apple.MobileBackup");
    }

    CFRelease(v1);
    goto LABEL_9;
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t _MBGetCachedGestaltValue(uint64_t a1)
{
  if (_MBGetCachedGestaltValues_pred != -1)
  {
    _MBGetCachedGestaltValue_cold_1();
  }

  v2 = _MBCachedGestaltValues;

  return [v2 objectForKeyedSubscript:a1];
}

uint64_t MBDeviceUDID_Legacy_client()
{
  if (MBDeviceUDID_Legacy_client_onceToken != -1)
  {
    MBDeviceUDID_Legacy_client_cold_1();
  }

  return MBDeviceUDID_Legacy_client_sDeviceUDID;
}

uint64_t MBDeviceUUID()
{
  if (MBDeviceUUID_pred != -1)
  {
    MBDeviceUUID_cold_1();
  }

  return _MBCachedBackupDeviceID;
}

uint64_t __MBDeviceUUID_block_invoke()
{
  v0 = CryptoAcceleratorConnect();
  if (!v0)
  {
    v9 = [MBException alloc];
    v10 = @"Unable to connect to CryptoAcceleratorEncrypt";
    goto LABEL_13;
  }

  v1 = v0;
  v2 = CryptoBufferDuplicate("MobileBackup-ID!MobileBackup-ID!", 0x20uLL);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = CryptoBufferAllocate(0x20uLL);
  if (!v4)
  {
    v9 = [MBException alloc];
    v12 = 0;
LABEL_12:
    v10 = @"Unable to encrypt Backup device identifier: %u";
LABEL_13:
    objc_exception_throw([(MBException *)v9 initWithCode:1 format:v10, v12]);
  }

  v5 = v4;
  v6 = CryptoAcceleratorEncrypt(v1, v3, v4, 32);
  if (v6)
  {
    v11 = v6;
    v9 = [MBException alloc];
    v12 = v11;
    goto LABEL_12;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:v5 length:20];
  _MBCachedBackupDeviceID = MBStringWithData(v7);

  free(v5);
  free(v3);
LABEL_6:

  return CryptoAcceleratorDisconnect(v1);
}

uint64_t MBBuildIsSeed()
{
  v0 = CFPreferencesCopyValue(@"IsSeedBuild", @"com.apple.MobileBackup", @"mobile", *MEMORY[0x1E695E898]);
  if (v0)
  {

    return [v0 BOOLValue];
  }

  else
  {
    v2 = _MBGetCachedGestaltValue(@"ReleaseType");
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isEqualToString:@"Beta"];
      v5 = v4 | [v3 isEqualToString:@"Carrier"];
    }

    else
    {
      v5 = 0;
    }

    return v5 & 1;
  }
}

uint64_t MBHomeButtonType()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = MGGetSInt32Answer();

  return [v0 numberWithInteger:v1];
}

uint64_t MBMobileUID()
{
  result = _MBMobileUID;
  if (_MBMobileUID < 0)
  {
    v1 = getpwnam([@"mobile" UTF8String]);
    if (!v1)
    {
      v2 = [MBException alloc];
      v3 = __error();
      v4 = strerror(*v3);
      v5 = [(MBException *)v2 initWithCode:1 format:@"getpwnam(%@) failed: %s (%d)", @"mobile", v4, *__error()];
      objc_exception_throw(v5);
    }

    result = v1->pw_uid;
    _MBMobileUID = result;
  }

  return result;
}

uint64_t MBMobileFileAttributes()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E696A358];
  v3[0] = [MEMORY[0x1E696AD98] numberWithInteger:MBMobileUID()];
  v2[1] = *MEMORY[0x1E696A320];
  v3[1] = [MEMORY[0x1E696AD98] numberWithInteger:MBMobileUID()];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id MBLocale()
{
  v0 = *MEMORY[0x1E695E890];
  v1 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(*MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  v2 = CFPreferencesCopyValue(@"AppleLocale", v0, @"mobile", v1);
  v3 = MEMORY[0x1E695DF58];
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v2];

    return v4;
  }

  else
  {

    return [v3 currentLocale];
  }
}

CFPropertyListRef MBLocalizations()
{
  v0 = *MEMORY[0x1E695E890];
  v1 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(*MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  result = CFPreferencesCopyValue(@"AppleLanguages", v0, @"mobile", v1);
  if (!result)
  {
    return &unk_1F59DC7C0;
  }

  return result;
}

void MBLogDeviceProperties()
{
  v26 = *MEMORY[0x1E69E9840];
  if (MBDeviceUUID_pred != -1)
  {
    MBDeviceUUID_cold_1();
  }

  v0 = _MBCachedBackupDeviceID;
  v1 = _MBGetCachedGestaltValue(@"UniqueDeviceID");
  v2 = MBGetGestaltValueForKey();
  v3 = _MBGetCachedGestaltValue(@"ProductType");
  v4 = _MBGetCachedGestaltValue(@"BuildVersion");
  v5 = _MBGetCachedGestaltValue(@"ProductVersion");
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    v15 = v1;
    v16 = 2112;
    v17 = v0;
    v18 = 2112;
    v19 = v2;
    v20 = 2114;
    v21 = v3;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "DeviceUDID=%{public}@, DeviceUUID=%@, DeviceName=%@, ProductType=%{public}@, ProductVersion=%{public}@, BuildVersion=%{public}@", buf, 0x3Eu);
    _MBLog(@"Df", "DeviceUDID=%{public}@, DeviceUUID=%@, DeviceName=%@, ProductType=%{public}@, ProductVersion=%{public}@, BuildVersion=%{public}@", v7, v8, v9, v10, v11, v12, v1);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DEB6CF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MBCKStringForBackupState(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E86844F0[a1 - 1];
  }
}

__CFString *MBRandomUUID()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);

  return v1;
}

uint64_t MBRandomDataWithLength(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x100004077774924uLL);
  v3 = open("/dev/random", 0);
  if (v3 < 0)
  {
    v14 = [MBException alloc];
    v15 = __error();
    v16 = strerror(*v15);
    v13 = [(MBException *)v14 initWithCode:1 format:@"Error opening /dev/random: %s (%d)", v16, *__error()];
    goto LABEL_13;
  }

  v4 = v3;
  if (a1)
  {
    v5 = 0;
    while (1)
    {
      v6 = read(v4, &v2[v5], a1 - v5);
      if (v6 < 1)
      {
        break;
      }

      v5 += v6;
      if (v5 >= a1)
      {
        goto LABEL_6;
      }
    }

    v9 = v6;
    v10 = [MBException alloc];
    if (v9)
    {
      v12 = __error();
      v17 = strerror(*v12);
      v18 = *__error();
      v11 = @"Error reading /dev/random: %s (%d)";
    }

    else
    {
      v11 = @"EOF from /dev/random";
    }

    v13 = [(MBException *)v10 initWithCode:1 format:v11, v17, v18];
LABEL_13:
    objc_exception_throw(v13);
  }

LABEL_6:
  close(v4);
  v7 = MEMORY[0x1E695DEF0];

  return [v7 dataWithBytesNoCopy:v2 length:a1 freeWhenDone:1];
}

uint64_t MBUniqueIntegerFilenameWithDirectory(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v1 && (v2 = v1, v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
  {
    v4 = v3;
    v5 = *v12;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 integerValue] >= v6)
        {
          v6 = [v8 integerValue] + 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  result = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{v6), "description"}];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MBStandardizePath(void *a1)
{
  v1 = a1;
  if ([a1 hasPrefix:@"~/"])
  {
    v1 = [@"/var/mobile" stringByAppendingPathComponent:{objc_msgSend(v1, "substringFromIndex:", 2)}];
  }

  return [v1 stringByStandardizingPath];
}

BOOL MBIsRestoreCompatible(void *a1, void *a2, uint64_t a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    MBIsRestoreCompatible_cold_3();
  }

  if (!a2)
  {
    MBIsRestoreCompatible_cold_2();
  }

  v8 = MBDeviceClass();
  if (([v8 isEqualToString:a4] & 1) == 0 && ((objc_msgSend(v8, "isEqualToString:", @"RealityDevice") & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"RealityDevice")))
  {
    v14 = MBGetDefaultLog();
    v13 = 0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = a4;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_1DEB5D000, v14, OS_LOG_TYPE_DEFAULT, "Incoming backup device class %@ is not compatible with current device class %@", buf, 0x16u);
      _MBLog(@"Df", "Incoming backup device class %@ is not compatible with current device class %@", v15, v16, v17, v18, v19, v20, a4);
      v13 = 0;
    }

    goto LABEL_24;
  }

  v9 = [a1 componentsSeparatedByString:@"."];
  v10 = [a2 componentsSeparatedByString:@"."];
  if (!a3)
  {
    goto LABEL_17;
  }

  v11 = v10;
  if ([a2 compare:a3 options:64] == -1)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v41 = a3;
      _os_log_impl(&dword_1DEB5D000, v21, OS_LOG_TYPE_ERROR, "Invalid required product version: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "Invalid required product version: %{public}@", v22, v23, v24, v25, v26, v27, a3);
    }

    goto LABEL_17;
  }

  if ([v9 count] < 2 || objc_msgSend(v11, "count") < 2)
  {
LABEL_17:
    v28 = a1;
    v29 = a2;
LABEL_18:
    v13 = [v28 compare:v29 options:64] < 2;
    goto LABEL_19;
  }

  v12 = [objc_msgSend(objc_msgSend(v9 subarrayWithRange:{0, 2), "componentsJoinedByString:", @".", "compare:options:", objc_msgSend(objc_msgSend(v11, "subarrayWithRange:", 0, 2), "componentsJoinedByString:", @".", 64}];
  if (v12 != -1)
  {
    if (v12 == 1)
    {
      v13 = 1;
      goto LABEL_19;
    }

    if (v12)
    {
      MBIsRestoreCompatible_cold_1();
    }

    v28 = a1;
    v29 = a3;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_19:
  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v41 = a1;
    if (v13)
    {
      v31 = "YES";
    }

    else
    {
      v31 = "NO";
    }

    v42 = 2114;
    v43 = a2;
    v44 = 2114;
    v45 = a3;
    v46 = 2082;
    v47 = v31;
    _os_log_impl(&dword_1DEB5D000, v30, OS_LOG_TYPE_DEFAULT, "Checked restore compatibility - productVersion:%{public}@, incomingProductVersion:%{public}@, incomingRequiredProductVersion:%{public}@, result:%{public}s", buf, 0x2Au);
    _MBLog(@"Df", "Checked restore compatibility - productVersion:%{public}@, incomingProductVersion:%{public}@, incomingRequiredProductVersion:%{public}@, result:%{public}s", v32, v33, v34, v35, v36, v37, a1);
  }

LABEL_24:
  v38 = *MEMORY[0x1E69E9840];
  return v13;
}

void *MBGetGestaltValueForKey()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswerWithError();
  v1 = v0;
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MBSQLiteJournalSuffixes()
{
  if (MBSQLiteJournalSuffixes_pred != -1)
  {
    MBSQLiteJournalSuffixes_cold_1();
  }

  return MBSQLiteJournalSuffixes_set;
}

uint64_t __MBSQLiteJournalSuffixes_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"-journal", @"-wal", @"-shm", 0}];
  MBSQLiteJournalSuffixes_set = result;
  return result;
}

uint64_t MBSQLitePathExtensions()
{
  if (MBSQLitePathExtensions_pred != -1)
  {
    MBSQLitePathExtensions_cold_1();
  }

  return MBSQLitePathExtensions_set;
}

uint64_t __MBSQLitePathExtensions_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"db", @"sqlite", @"sqlite3", @"sqlitedb", 0}];
  MBSQLitePathExtensions_set = result;
  return result;
}

intptr_t MBSemaphoreWaitForever(NSObject *a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *MEMORY[0x1E695D918];
    do
    {
      v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
      [objc_msgSend(MEMORY[0x1E695DFD0] "currentRunLoop")];
      result = dispatch_semaphore_wait(a1, 0);
    }

    while (result);
  }

  else
  {

    return dispatch_semaphore_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

intptr_t MBGroupWaitForever(NSObject *a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *MEMORY[0x1E695D918];
    do
    {
      v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
      [objc_msgSend(MEMORY[0x1E695DFD0] "currentRunLoop")];
      result = dispatch_group_wait(a1, 0);
    }

    while (result);
  }

  else
  {

    return dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void MBRunLoopPerformBlockAndWait(void *a1, uint64_t a2)
{
  v4 = dispatch_semaphore_create(0);
  v5 = [a1 getCFRunLoop];
  v6 = *MEMORY[0x1E695D918];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MBRunLoopPerformBlockAndWait_block_invoke;
  v7[3] = &unk_1E8684560;
  v7[4] = v4;
  v7[5] = a2;
  CFRunLoopPerformBlock(v5, v6, v7);
  CFRunLoopWakeUp([a1 getCFRunLoop]);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v4);
}

intptr_t __MBRunLoopPerformBlockAndWait_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t MBFreeDiskSpaceForVolume(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, 512);
  if (statfs([a1 fileSystemRepresentation], &v7))
  {
    v3 = [MBException alloc];
    v4 = __error();
    v5 = strerror(*v4);
    v6 = [(MBException *)v3 initWithCode:100 format:@"statfs error: %s (%d)", v5, *__error()];
    objc_exception_throw(v6);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v7.f_bavail * v7.f_bsize;
}

uint64_t MBUsedDiskSpaceForVolume(void *a1)
{
  memset(v7, 0, 12);
  v6[2] = 0;
  v6[0] = 5;
  v6[1] = 2155872256;
  if (getattrlist([a1 fileSystemRepresentation], v6, v7, 0xCuLL, 0))
  {
    v2 = [MBException alloc];
    v3 = __error();
    v4 = strerror(*v3);
    v5 = [(MBException *)v2 initWithCode:100 format:@"getattrlist error: %s (%d)", v4, *__error()];
    objc_exception_throw(v5);
  }

  return *(v7 + 4);
}

uint64_t MBPeakProcessMemoryUsage()
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buffer = 0u;
  v23 = 0u;
  v0 = getpid();
  if (proc_pid_rusage(v0, 4, buffer))
  {
    v1 = MBGetDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = *__error();
      *buf = 67109120;
      LODWORD(v21) = v2;
      _os_log_impl(&dword_1DEB5D000, v1, OS_LOG_TYPE_ERROR, "Failed to fetch rusage info: %{errno}d", buf, 8u);
      v3 = __error();
      _MBLog(@"E ", "Failed to fetch rusage info: %{errno}d", v4, v5, v6, v7, v8, v9, *v3);
    }

    v10 = 0;
  }

  else
  {
    v10 = *(&v39 + 1);
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v21 = v10;
      _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_INFO, "=peak-memory= %llu bytes", buf, 0xCu);
      _MBLog(@"I ", "=peak-memory= %llu bytes", v12, v13, v14, v15, v16, v17, v10);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t MBLogEnableFileLogging()
{
  result = MBIsInternalInstall();
  sFileLoggingEnabled = result;
  return result;
}

uint64_t MBLogStashLogs()
{
  v36 = *MEMORY[0x1E69E9840];
  result = MBIsInternalInstall();
  if (result)
  {
    pthread_mutex_lock(&sLogLock);
    context = objc_autoreleasePoolPush();
    if (sLog)
    {
      fclose(sLog);
      sLog = 0;
    }

    v1 = MBGetLogDir();
    v2 = MBLogBasename();
    v28 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v28 contentsOfDirectoryAtPath:v1 error:0];
    v4 = MEMORY[0x1E696AE18];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __MBLogStashLogs_block_invoke;
    v33[3] = &unk_1E8684588;
    v5 = v2;
    v34 = v5;
    v23 = [v4 predicateWithBlock:v33];
    v24 = v3;
    v22 = [v3 filteredArrayUsingPredicate:?];
    v6 = [v22 sortedArrayUsingComparator:&__block_literal_global_3];
    if (MBMaxLogCount_onceToken != -1)
    {
      _MBLogHelper_cold_10();
    }

    v27 = MBMaxLogCount_sMaxLogCount;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v11 stringByDeletingPathExtension];
          v13 = [v12 isEqualToString:v5];

          if ((v13 & 1) == 0)
          {
            if (([v11 isEqualToString:v5] & 1) == 0)
            {
              continue;
            }

            v15 = 0;
LABEL_16:
            v16 = [v1 stringByAppendingPathComponent:v11];
            v17 = [MEMORY[0x1E696AD98] numberWithInt:(v15 + v27)];
            v18 = [v17 description];
            v19 = [v5 stringByAppendingPathExtension:v18];
            v20 = [v1 stringByAppendingPathComponent:v19];

            [v28 moveItemAtPath:v16 toPath:v20 error:0];
            continue;
          }

          v14 = [v11 pathExtension];
          v15 = [v14 intValue];

          if ((v15 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(context);
    result = pthread_mutex_unlock(&sLogLock);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

id MBLogBasename()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  if (!v1 || !strcmp([v1 UTF8String], "backupd"))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"MobileBackup", @"log", v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@.%@", @"MobileBackup", v1, @"log"];
  }
  v2 = ;

  return v2;
}

uint64_t __MBLogStashLogs_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v4 stringByDeletingPathExtension];
  v8 = [v6 compare:v7];

  if (v8)
  {
    v9 = [v5 compare:v4];
  }

  else
  {
    v10 = [v5 pathExtension];

    v11 = [v10 intValue];
    v12 = [v4 pathExtension];
    v13 = [v12 intValue];

    if (v11 >= v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (v13 < v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = v14;
    }
  }

  return v9;
}

void __MBMaxLogSize_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getenv("MBMaxLogSize");
  if (v0)
  {
    v1 = strtol(v0, 0, 10);
    if ((v1 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      v2 = 10485760;
    }

    else
    {
      v2 = v1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(&dword_1DEB5D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MBMaxLogSize=%ld", &v4, 0xCu);
    }
  }

  else
  {
    v2 = 10485760;
  }

  MBMaxLogSize_sMaxLogSize = v2;
  v3 = *MEMORY[0x1E69E9840];
}

void __MBCreateLogDirectory_block_invoke()
{
  v0 = MBGetLogDir();
  v5 = [v0 stringByDeletingLastPathComponent];

  getpid();
  v1 = *MEMORY[0x1E69E9BD0];
  v2 = v5;
  [v5 fileSystemRepresentation];
  MBCreateLogDirectory_sCanCreateLogDirectory = sandbox_check() == 0;
  v3 = os_log_set_hook();
  v4 = MBCreateLogDirectory_previousLogHook;
  MBCreateLogDirectory_previousLogHook = v3;
}

void __MBCanCreateLogs_block_invoke()
{
  v2 = MBGetLogDir();
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  v1 = v2;
  [v2 fileSystemRepresentation];
  MBCanCreateLogs_sCanCreateLogs = sandbox_check() == 0;
}

void __MBCanRotateLogs_block_invoke()
{
  v0 = MBGetLogDir();
  if (v0)
  {
    v7 = v0;
    getpid();
    v1 = *MEMORY[0x1E69E9BD0];
    v2 = v7;
    v6 = [v7 fileSystemRepresentation];
    if (sandbox_check())
    {
      v3 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v4 processName];

      v3 = ([v5 isEqualToString:@"healthd"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"imagent");
    }

    MBCanRotateLogs_sCanRotateLogs = v3;
    v0 = v7;
  }
}

void __MBMaxLogCount_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getenv("MBMaxLogCount");
  v1 = 10;
  if (v0)
  {
    v2 = strtol(v0, 0, 10);
    if ((v2 - 1) < 0x7FFFFFFFFFFFFFFELL)
    {
      v1 = v2;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_impl(&dword_1DEB5D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MBMaxLogCount=%ld", &v4, 0xCu);
    }
  }

  MBMaxLogCount_sMaxLogCount = v1;
  v3 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_1DEB7252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1DEB73EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DEB74674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v9 + 2928));
  objc_exception_rethrow();
}

void sub_1DEB74F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB7797C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  if (a2)
  {
    os_activity_scope_leave(&a9);
    objc_begin_catch(exception_object);
    dispatch_semaphore_signal(*(v9 + 2960));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DEB796FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1DEB7D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DEB7DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB7E0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB7E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MBStringForSnapshotType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unspecified";
  }

  else
  {
    return off_1E86847C8[a1];
  }
}

__CFString *MBStringForSnapshotFormat(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return off_1E86847F0[a1 + 1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  return [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *MBStringForSnapshotFormat(MBSnapshotFormat)") description:{@"MBCommon.m", 73, @"Unknown snapshot format reason %llu", a1}];
}

uint64_t MBSnapshotFormatForString(void *a1)
{
  if ([a1 isEqualToString:@"ManifestsFiles"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"ManifestsFilesAndDomains"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"ManifestsFilesAndDomainsAssets"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"DomainsAssets"])
  {
    return 3;
  }

  return -1;
}

uint64_t MBSnapshotFormatContainsManifests(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatContainsManifests(MBSnapshotFormat)") description:{@"MBCommon.m", 104, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0xFu >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t MBSnapshotFormatContainsFileLists(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatContainsFileLists(MBSnapshotFormat)") description:{@"MBCommon.m", 121, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0x1Cu >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t MBSnapshotFormatContainsAssets(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatContainsAssets(MBSnapshotFormat)") description:{@"MBCommon.m", 138, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0x18u >> (a1 + 1);
  }

  return v1 & 1;
}

uint64_t MBSnapshotFormatSupportedForBackup(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL MBSnapshotFormatSupportedForBackup(MBSnapshotFormat)") description:{@"MBCommon.m", 155, @"Unknown snapshot format %llu", a1}];
  }

  else
  {
    v1 = 0x12u >> (a1 + 1);
  }

  return v1 & 1;
}

__CFString *MBStringForBackupReason(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E8684818[a1];
  }
}

uint64_t MBGetBackupDir()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *MBGetBackupDir(void)") description:{@"MBCommon.m", 201, @"Backup directory not defined on the device"}];
  return 0;
}

id MBSetBackupDir(void *a1)
{
  result = a1;
  _MBBackupDir = result;
  return result;
}

uint64_t MBAcquireRestoreLock(int a1)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v2 = [@"/var/mobile/Library/Caches/Backup/RestoreFromBackupLock" fileSystemRepresentation];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_INFO, "Acquiring the MBS restore lock", buf, 2u);
    _MBLog(@"I ", "Acquiring the MBS restore lock", v4, v5, v6, v7, v8, v9, v46);
  }

  if (_MBRestoreLockFD != -1)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_INFO, "The MBS restore lock is already held by this process", buf, 2u);
      _MBLog(@"I ", "The MBS restore lock is already held by this process", v11, v12, v13, v14, v15, v16, v46);
    }

    goto LABEL_19;
  }

  v17 = [@"/var/mobile/Library/Caches/Backup/RestoreFromBackupLock" stringByDeletingLastPathComponent];
  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = *MEMORY[0x1E696A328];
  v50[0] = *MEMORY[0x1E696A360];
  v50[1] = v19;
  v51[0] = @"mobile";
  v51[1] = @"mobile";
  [v18 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", v51, v50, 2), 0}];
  v47 = 420;
  v20 = open(v2, 514);
  _MBRestoreLockFD = v20;
  if (v20 < 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D920];
    v23 = __error();
    v47 = strerror(*v23);
    v48 = *__error();
    [v21 raise:v22 format:@"Error opening incomplete MBS restore directory lock file: %s (%d)"];
    v20 = _MBRestoreLockFD;
  }

  if (a1)
  {
    v24 = 6;
  }

  else
  {
    v24 = 2;
  }

  if (flock(v20, v24))
  {
    if (*__error() != 35)
    {
      v40 = MEMORY[0x1E695DF30];
      v41 = *MEMORY[0x1E695D920];
      v42 = __error();
      v43 = strerror(*v42);
      [v40 raise:v41 format:{@"Error locking incomplete MBS restore directory lock file: %s (%d)", v43, *__error()}];
LABEL_19:
      v32 = 0;
      goto LABEL_20;
    }

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v25, OS_LOG_TYPE_INFO, "The MBS restore lock is already held by another process", buf, 2u);
      _MBLog(@"I ", "The MBS restore lock is already held by another process", v26, v27, v28, v29, v30, v31, v47);
    }

    close(_MBRestoreLockFD);
    v32 = 0;
    _MBRestoreLockFD = -1;
  }

  else
  {
    v33 = MBGetDefaultLog();
    v32 = 1;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v33, OS_LOG_TYPE_INFO, "Acquired the MBS restore lock", buf, 2u);
      _MBLog(@"I ", "Acquired the MBS restore lock", v34, v35, v36, v37, v38, v39, v47);
    }
  }

LABEL_20:
  v44 = *MEMORY[0x1E69E9840];
  return v32;
}

void MBReleaseRestoreLock()
{
  v0 = _MBRestoreLockFD;
  v1 = MBGetDefaultLog();
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_INFO);
  if (v0 < 0)
  {
    if (v2)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1DEB5D000, v1, OS_LOG_TYPE_INFO, "The MBS restore lock is not held by this process", &v15, 2u);
      _MBLog(@"I ", "The MBS restore lock is not held by this process", v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    if (v2)
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v1, OS_LOG_TYPE_INFO, "Releasing the MBS restore lock", buf, 2u);
      _MBLog(@"I ", "Releasing the MBS restore lock", v3, v4, v5, v6, v7, v8, v15);
    }

    close(_MBRestoreLockFD);
    _MBRestoreLockFD = -1;
  }
}

id MBBackupMetadataFilenames()
{
  result = _MBBackupMetadataFilenames;
  if (!_MBBackupMetadataFilenames)
  {
    result = [MEMORY[0x1E695DFD8] setWithObjects:{@"Status.plist", @"Manifest.plist", @"Manifest.mbdb", @"Manifest.mbdx", @"Info.plist", @"Snapshot", @"Manifest.db", 0}];
    _MBBackupMetadataFilenames = result;
  }

  return result;
}

void MBGetFileIDBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 20)
  {
    MBGetFileIDBytes_cold_1();
  }

  v8 = objc_alloc_init(MBDigestSHA1);
  [(MBDigest *)v8 updateWithString:a1];
  [(MBDigest *)v8 updateWithString:@"-"];
  [(MBDigest *)v8 updateWithString:a2];
  [(MBDigestSHA1 *)v8 finalWithBytes:a3 length:a4];
}

uint64_t MBIsValidRelativePathIgnoreTilde(void *a1, int a2)
{
  if (!a1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Null path"];
  }

  v4 = [a1 length];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = [a1 characterAtIndex:0];
  result = 0;
  if (v6 == 126)
  {
    v8 = a2;
  }

  else
  {
    v8 = 1;
  }

  if (v6 != 47 && v8)
  {
    if (v5 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      do
      {
        if ([a1 characterAtIndex:v10] == 47)
        {
          result = _MBIsValidRelativePathComponent(a1, v9, v10);
          if (!result)
          {
            return result;
          }

          v9 = ++v10;
        }

        else
        {
          ++v10;
        }
      }

      while (v10 != v5);
    }

    return _MBIsValidRelativePathComponent(a1, v9, v5);
  }

  return result;
}

BOOL _MBIsValidRelativePathComponent(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 - a2;
  if (a3 == a2)
  {
    return 0;
  }

  v11 = v4;
  v12 = v3;
  if (v7 == 2)
  {
    if ([a1 characterAtIndex:a3 - 2] != 46)
    {
      return 1;
    }
  }

  else if (v7 != 1)
  {
    return 1;
  }

  return [a1 characterAtIndex:{a3 - 1, v11, v12, v5, v6}] != 46;
}

id MBLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 mainBundle];
  if (MBIsInternalInstall())
  {
    v7 = [v6 bundlePath];
    if ([v7 isEqualToString:@"/usr/local/bin"])
    {
      v8 = [MEMORY[0x1E696AE30] processInfo];
      v9 = [v8 processName];
      v10 = [v9 isEqualToString:@"backupctl"];

      if (v10)
      {
LABEL_8:
        [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileBackup.framework"];
        v6 = v11 = v6;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v11 = [v6 bundlePath];
  if ([v11 isEqualToString:@"/usr/libexec"])
  {
    v12 = [MEMORY[0x1E696AE30] processInfo];
    v13 = [v12 processName];
    v14 = [v13 isEqualToString:@"BackupAgent2"];

    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  v15 = MBLocalizations();
  v16 = MEMORY[0x1E696AAE8];
  v17 = [v6 localizations];
  v18 = [v16 preferredLocalizationsFromArray:v17 forPreferences:v15];

  if ([v18 count])
  {
    v19 = [v18 firstObject];
  }

  else
  {
    v19 = @"en";
  }

  [v6 _cfBundle];
  v20 = CFBundleCopyLocalizedStringForLocalization();

  return v20;
}

id MBLocalizedStringWithSubstitutionsFromTable(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1;
  v20 = &a9;
  v12 = a3;
  v13 = MBLocalizedStringFromTable(v11, a2);
  if (!v13)
  {
    MBLocalizedStringWithSubstitutionsFromTable_cold_1();
  }

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  v19 = 0;
  v16 = [v14 initWithValidatedFormat:v13 validFormatSpecifiers:v12 locale:v15 arguments:v20 error:&v19];

  v17 = v19;
  if (!v16)
  {
    MBLocalizedStringWithSubstitutionsFromTable_cold_2();
  }

  return v16;
}

id MBLocalizedStringWithFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v17 = &a9;
  v11 = a2;
  v12 = MBLocalizedStringFromTable(v10, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithFormat_cold_1();
  }

  v16 = 0;
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:v12 validFormatSpecifiers:v11 locale:0 arguments:v17 error:&v16];

  v14 = v16;
  if (!v13)
  {
    MBLocalizedStringWithFormat_cold_2();
  }

  return v13;
}

id MBLocalizedStringWithSubstitutions(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v19 = &a9;
  v11 = a2;
  v12 = MBLocalizedStringFromTable(v10, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithSubstitutions_cold_1();
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E695DF58] currentLocale];
  v18 = 0;
  v15 = [v13 initWithValidatedFormat:v12 validFormatSpecifiers:v11 locale:v14 arguments:v19 error:&v18];

  v16 = v18;
  if (!v15)
  {
    MBLocalizedStringWithSubstitutions_cold_2();
  }

  return v15;
}

id MBLocalizedStringWithGreenTeaSuffix(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = &a9;
  v10 = a2;
  v11 = [a1 mb_stringByAppendingGreenteaSuffix];
  v12 = MBLocalizedStringFromTable(v11, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithGreenTeaSuffix_cold_1();
  }

  v16 = 0;
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithValidatedFormat:v12 validFormatSpecifiers:v10 locale:0 arguments:v17 error:&v16];

  v14 = v16;
  if (!v13)
  {
    MBLocalizedStringWithGreenTeaSuffix_cold_2();
  }

  return v13;
}

id MBLocalizedStringWithGreenTeaSuffixAndSubstitutions(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = &a9;
  v10 = a2;
  v11 = [a1 mb_stringByAppendingGreenteaSuffix];
  v12 = MBLocalizedStringFromTable(v11, @"MobileBackup");
  if (!v12)
  {
    MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_1();
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E695DF58] currentLocale];
  v18 = 0;
  v15 = [v13 initWithValidatedFormat:v12 validFormatSpecifiers:v10 locale:v14 arguments:v19 error:&v18];

  v16 = v18;
  if (!v15)
  {
    MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_2();
  }

  return v15;
}

uint64_t MBSimpleChecksumForString(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = &v1[v2];
  do
  {
    v5 = v4 - v1;
    if ((v4 - v1) < 4)
    {
      switch(v5)
      {
        case 1:
          v6 = *v1 << 24;
          v7 = 1;
          break;
        case 2:
          v6 = (v1[1] << 16) | (*v1 << 24);
          v7 = 2;
          break;
        case 3:
          v6 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8);
          v7 = 3;
          break;
        default:
          MBSimpleChecksumForString_cold_1();
      }
    }

    else
    {
      v6 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8) | v1[3];
      v7 = 4;
    }

    v1 += v7;
    v3 += v6;
  }

  while (v1 < v4);
  return v3;
}

id MBStringWithXPCObject()
{
  v0 = MEMORY[0x1E12C5C60]();
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
  free(v0);

  return v1;
}

void sub_1DEB89A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DEB8A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DEB8A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEB8AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MBIsInternalInstall()
{
  if (MBIsInternalInstall_onceToken != -1)
  {
    MBIsInternalInstall_cold_1();
  }

  return MBIsInternalInstall_sMBIsInternalInstall;
}

void __MBIsInternalInstall_block_invoke()
{
  v0 = MGCopyAnswer();
  MBIsInternalInstall_sMBIsInternalInstall = [v0 BOOLValue];
  if (v0)
  {

    CFRelease(v0);
  }
}

Class MBWeakLinkClass(void *a1, uint64_t a2)
{
  if (!_MBDLHandleForLibrary(a2))
  {
    MBWeakLinkClass_cold_1(a2, a1);
  }

  v4 = [a1 UTF8String];

  return objc_getClass(v4);
}

uint64_t _MBDLHandleForLibrary(uint64_t a1)
{
  if (_MBDLHandleForLibrary_onceToken != -1)
  {
    _MBDLHandleForLibrary_cold_1();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___MBDLHandleForLibrary_block_invoke_2;
  v4[3] = &unk_1E8684978;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(_MBDLHandleForLibrary_queue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *MBWeakLinkSymbol(void *a1, uint64_t a2)
{
  v3 = _MBDLHandleForLibrary(a2);
  v4 = [a1 UTF8String];

  return dlsym(v3, v4);
}

__CFString *MBStringForBackupPolicy(uint64_t a1)
{
  if (a1)
  {
    return @"mega";
  }

  else
  {
    return @"default";
  }
}

void _MBLogHelper_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v1, "mkdir failed at %s: %{errno}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _MBLogHelper_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v1, "lstat failed at %s: %{errno}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _MBLogHelper_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v1, "lchown failed at %s: %{errno}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _MBLogHelper_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v1, "lchmod failed at %s: %{errno}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _MBLogHelper_cold_12()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_1DEB5D000, MEMORY[0x1E69E9C10], v1, "Failed to open MobileBackup log file at %@: %{errno}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t MBGetFileIDBytes_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MBGetFileIDBytes(NSString *, NSString *, void *, NSUInteger)"}];

  return [v0 handleFailureInFunction:v1 file:@"MBCommon.m" lineNumber:343 description:@"Invalid buffer size"];
}

void MBLocalizedStringWithSubstitutionsFromTable_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutionsFromTable(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithSubstitutionsFromTable_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutionsFromTable(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithFormat_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithFormat(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithFormat_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithFormat(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithSubstitutions_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithSubstitutions_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffix_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffix(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffix_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffix(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffixAndSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_1_1() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void MBLocalizedStringWithGreenTeaSuffixAndSubstitutions_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull MBLocalizedStringWithGreenTeaSuffixAndSubstitutions(NSString *__strong _Nonnull, NSString *__strong _Nonnull, ...)"}];
  [OUTLINED_FUNCTION_0_2() handleFailureInFunction:? file:? lineNumber:? description:?];
}