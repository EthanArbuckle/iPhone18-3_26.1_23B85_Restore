id LocationLogEncryptionKeyStoreDirPathForTime(time_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (qword_281537268 != -1)
  {
    dispatch_once(&qword_281537268, &unk_2868342F0);
  }

  v1 = localtime(&v5);
  snprintf(__str, 0x20uLL, "%04d_%03d", v1->tm_year, v1->tm_yday);
  v2 = [qword_281537248 stringByAppendingFormat:@"/%s", __str];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void LocationLogEncryptionClearObsoleteKeys()
{
  v36 = *MEMORY[0x277D85DE8];
  if (qword_281537268 != -1)
  {
    dispatch_once(&qword_281537268, &unk_2868342F0);
  }

  v31 = 0;
  time(&v31);
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v30 = 0;
  v1 = [v0 contentsOfDirectoryAtPath:qword_281537248 error:&v30];
  v2 = v30;

  if (v2)
  {
    v3 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_ERROR))
    {
      v34.tm_sec = 138543618;
      *&v34.tm_min = qword_281537248;
      LOWORD(v34.tm_mday) = 2114;
      *(&v34.tm_mday + 2) = v2;
      _os_log_error_impl(&dword_256170000, v3, OS_LOG_TYPE_ERROR, "Can't open keyStorePath %{public}@: %{public}@", &v34, 0x16u);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v1;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        if ([v7 length] < 4)
        {
          v8 = 0;
        }

        else
        {
          v8 = ([v7 length] - 3);
        }

        v9 = [v7 substringFromIndex:v8];
        v10 = [v7 substringToIndex:4];
        v11 = [v9 intValue];
        v12 = [v10 intValue];
        if (!v11 && ([v10 isEqualToString:@"000"] & 1) == 0)
        {
          v19 = qword_281537250;
          if (!os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          v34.tm_sec = 138543362;
          *&v34.tm_min = v7;
          v15 = &v34;
          v16 = v19;
          v17 = "Can't determine the year day from the directory name: %{public}@";
          goto LABEL_25;
        }

        if (!v12)
        {
          v18 = qword_281537250;
          if (!os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          v34.tm_sec = 138543362;
          *&v34.tm_min = v7;
          v15 = &v34;
          v16 = v18;
          v17 = "Can't determine the year from the directory name: %{public}@";
          goto LABEL_25;
        }

        memset(&v34, 0, sizeof(v34));
        v34.tm_year = v12;
        v34.tm_mday = v11 + 1;
        v13 = mktime(&v34);
        if (v31 - v13 < 7776001)
        {
          goto LABEL_30;
        }

        if (v13 == -1)
        {
          v14 = qword_281537250;
          if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 138543362;
            v33 = v7;
            v15 = &v32;
            v16 = v14;
            v17 = "mktime() returned error for %{public}@";
LABEL_25:
            _os_log_impl(&dword_256170000, v16, OS_LOG_TYPE_DEFAULT, v17, v15, 0xCu);
          }
        }

LABEL_26:

        v20 = [qword_281537248 stringByAppendingFormat:@"/%@", v7];
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v25 = 0;
        [v21 removeItemAtPath:v20 error:&v25];
        v2 = v25;

        if (v2)
        {
          v22 = qword_281537250;
          if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
          {
            v34.tm_sec = 138543618;
            *&v34.tm_min = v20;
            LOWORD(v34.tm_mday) = 2114;
            *(&v34.tm_mday + 2) = v2;
            _os_log_impl(&dword_256170000, v22, OS_LOG_TYPE_DEFAULT, "Can't remove obsolete or unrecognized key file: %{public}@ (%{public}@)", &v34, 0x16u);
          }
        }

LABEL_30:
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v4);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void LocationLogEncryptionSetDisabled(unsigned __int8 a1)
{
  if (qword_281537268 != -1)
  {
    dispatch_once(&qword_281537268, &unk_2868342F0);
  }

  atomic_store(a1, &unk_281537242);
}

uint64_t LocationLogEncryptionDataSize(uint64_t a1)
{
  if (qword_281537268 != -1)
  {
    dispatch_once(&qword_281537268, &unk_2868342F0);
  }

  if (qword_281537270 != -1)
  {
    dispatch_once(&qword_281537270, &unk_286834310);
  }

  if (byte_281537243 != 1)
  {
    return 8;
  }

  v2 = (a1 + 4) % qword_281537260;
  if (v2)
  {
    return qword_281537260 + a1 + 12 - v2;
  }

  else
  {
    return a1 + 12;
  }
}

_DWORD *LocationLogEncryptionEncryptData(const void *a1, size_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (qword_281537268 != -1)
  {
    dispatch_once(&qword_281537268, &unk_2868342F0);
  }

  if (!qword_281537260)
  {
    v27 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_256170000, v27, OS_LOG_TYPE_DEFAULT, "Encryption Not initialized.", v30, 2u);
    }

LABEL_38:
    abort_report_np();
    __break(1u);
  }

  off_281D6AF50();
  v4 = off_281D6AF38();
  v5 = *v4;
  v7 = (v6 + (v5 << 10));
  LODWORD(v6) = v5 + 1;
  v8 = (v5 + 1) & 7;
  LODWORD(v6) = -v6;
  v9 = v6 < 0;
  v10 = v6 & 7;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = -v10;
  }

  *v4 = v11;
  bzero(v7, 0x400uLL);
  if (qword_281537270 != -1)
  {
    dispatch_once(&qword_281537270, &unk_286834310);
  }

  if ((byte_281537243 & 1) == 0)
  {
    v12 = atomic_load(&unk_281537242);
    if ((v12 & 1) == 0)
    {
      *v7 = xmmword_256173318;
      goto LABEL_29;
    }
  }

  v13 = atomic_load(&qword_281537278);
  *v7 = v13;
  v14 = LocationLogEncryptionDataSize(a2) - 8;
  v15 = qword_281537260;
  if (v14 / qword_281537260 >= 0x3F8uLL / qword_281537260)
  {
    v28 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 134218496;
      *&v30[4] = v14;
      v31 = 2048;
      v32 = 1016;
      v33 = 2048;
      v34 = v15;
      _os_log_impl(&dword_256170000, v28, OS_LOG_TYPE_DEFAULT, "Oversized data: { encryptionSize: %lu, availableSize: %lu, blockSize: %lu }", v30, 0x20u);
    }

    goto LABEL_38;
  }

  v7[2] = 1668050021;
  memcpy(v7 + 3, a1, a2);
  v16 = atomic_load(&unk_281537242);
  if (v16)
  {
    goto LABEL_29;
  }

  if (qword_281537270 != -1)
  {
    dispatch_once(&qword_281537270, &unk_286834310);
  }

  if ((byte_281537243 & 1) == 0)
  {
    v29 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_256170000, v29, OS_LOG_TYPE_DEFAULT, "LocationLogEncryptionLoadOrCreateKey() must be called only on internal installs", v30, 2u);
    }

    goto LABEL_38;
  }

  sub_256172AA4();
  *v30 = 0;
  time(v30);
  v17 = *v30;
  v18 = atomic_load(&qword_281537278);
  if (v17 >= (v18 + 14400))
  {
    do
    {
      v19 = 0;
      atomic_compare_exchange_strong(&unk_281537240, &v19, 1u);
      if (v19)
      {
        sched_yield();
      }

      else
      {
        sub_2561720D8();
        atomic_store(0, &unk_281537240);
      }

      time(v30);
      v20 = *v30;
      v21 = atomic_load(&qword_281537278);
    }

    while (v20 >= (v21 + 14400));
  }

  v22 = atomic_load(&dword_281537244);
  if (*(&off_281537230 + v22))
  {
    ccaes_ecb_encrypt_mode();
    ccaes_ecb_encrypt_mode();
    ccecb_block_size();
    if (ccecb_one_shot_explicit())
    {
      v23 = qword_281537250;
      if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&dword_256170000, v23, OS_LOG_TYPE_ERROR, "Encryption error", v30, 2u);
      }
    }
  }

  else
  {
    v24 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_FAULT))
    {
      *v30 = 0;
      _os_log_fault_impl(&dword_256170000, v24, OS_LOG_TYPE_FAULT, "invalid key data! key is nil", v30, 2u);
    }

    v7 = 0;
  }

LABEL_29:
  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_256171E2C()
{
  v1 = os_log_create("LocationLogEncryption", "LocationLogEncryption");
  v2 = qword_281537250;
  qword_281537250 = v1;

  v3 = qword_281537248;
  if (qword_281537248 || (v0 = &unk_281537240, atomic_compare_exchange_strong(&unk_281537240, &v3, 1u), v3) || (v4 = atomic_load(&qword_281537278)) != 0)
  {
    v12 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16.tm_sec) = 0;
      _os_log_impl(&dword_256170000, v12, OS_LOG_TYPE_DEFAULT, "LocationLogEncryptionInit() must be called only once", &v16, 2u);
    }

    goto LABEL_23;
  }

  ccaes_ecb_encrypt_mode();
  qword_281537260 = ccecb_block_size();
  v5 = qword_281537248;
  qword_281537248 = @"/var/mobile/Library/Logs/location_log_keys";

  if (qword_281537270 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (byte_281537243 == 1)
    {
      sub_2561720D8();
      atexit(sub_2561727C4);
      goto LABEL_20;
    }

    v6 = atomic_load(&dword_281537244);
    v7 = (v6 + 1) & 1;
    if (v6 < -1)
    {
      v7 = -v7;
    }

    v8 = *(&off_281537230 + v6);
    *(&off_281537230 + v7) = &unk_281537280;
    v9 = v6;
    atomic_compare_exchange_strong(&dword_281537244, &v9, v7);
    if (v9 == v6)
    {
      break;
    }

    v13 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16.tm_sec) = 0;
      _os_log_impl(&dword_256170000, v13, OS_LOG_TYPE_DEFAULT, "toggleKeyIndex must always be called by a single thread.", &v16, 2u);
    }

LABEL_23:
    abort_report_np();
LABEL_24:
    dispatch_once(&qword_281537270, &unk_286834310);
  }

  if (v8 && v8 != &unk_281537280)
  {
    munmap(v8, 0x10uLL);
  }

  v15 = 0;
  localtime_r(&v15, &v16);
  v14 = v16;
  if (v16.tm_hour <= 0)
  {
    v10 = -(-v16.tm_hour & 3);
  }

  else
  {
    v10 = v16.tm_hour & 3;
  }

  if (v10)
  {
    v14.tm_hour = v16.tm_hour - v10;
  }

  *&v14.tm_sec = 0;
  atomic_store(mktime(&v14), &qword_281537278);
  v11 = qword_281537250;
  if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14.tm_sec) = 0;
    _os_log_debug_impl(&dword_256170000, v11, OS_LOG_TYPE_DEBUG, "Location log encryption is disabled on customer builds, locations will be redacted", &v14, 2u);
  }

LABEL_20:
  atomic_store(0, v0);
}

void sub_2561720D8()
{
  v47 = *MEMORY[0x277D85DE8];
  if (qword_281537270 != -1)
  {
    dispatch_once(&qword_281537270, &unk_286834310);
  }

  if ((byte_281537243 & 1) == 0)
  {
    v36 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44.tm_sec) = 0;
      _os_log_impl(&dword_256170000, v36, OS_LOG_TYPE_DEFAULT, "LocationLogEncryptionLoadOrCreateKey() must be called only on internal installs", &v44, 2u);
    }

    abort_report_np();
LABEL_47:
    __break(1u);
  }

  v40 = 0;
  time(&v40);
  v0 = localtime(&v40);
  snprintf(__str, 0x20uLL, "%04d_%03d", v0->tm_year, v0->tm_yday);
  v1 = [qword_281537248 stringByAppendingFormat:@"/%s", __str];
  localtime_r(&v40, &v44);
  if (v44.tm_hour <= 0)
  {
    v2 = -(-v44.tm_hour & 3);
  }

  else
  {
    v2 = v44.tm_hour & 3;
  }

  snprintf(v45, 0x20uLL, "logkey_%04d_%03d_%02d", v44.tm_year, v44.tm_yday, v44.tm_hour - v2);
  v3 = [v1 stringByAppendingFormat:@"/%s", v45];
  v4 = *MEMORY[0x277CCA1B8];
  v5 = *MEMORY[0x277CCA180];
  v42[0] = *MEMORY[0x277CCA1B0];
  v42[1] = v5;
  v43[0] = v4;
  v43[1] = &unk_2868344F0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  [v7 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v6 error:&v39];
  v8 = v39;

  if (v8)
  {
    v9 = qword_281537250;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v29 = v1;
      v30 = [v1 UTF8String];
      v31 = [v8 localizedDescription];
      v32 = v31;
      v33 = [v31 UTF8String];
      v44.tm_sec = 136315394;
      *&v44.tm_min = v30;
      LOWORD(v44.tm_mday) = 2080;
      *(&v44.tm_mday + 2) = v33;
      _os_log_error_impl(&dword_256170000, v9, OS_LOG_TYPE_ERROR, "Can't create the new encryption key dir '%s': %s", &v44, 0x16u);
    }
  }

  for (i = 0; i != 16; ++i)
  {
    *(&unk_281537240 + i + 64) = arc4random_uniform(0x100u);
  }

  v38 = 0;
  v11 = v3;
  v12 = sub_2561727C8([v3 UTF8String], &v38);
  v13 = v12;
  if (v38 == 1)
  {
    v14 = write(v12, &unk_281537280, 0x10uLL);
    v15 = qword_281537250;
    v16 = v15;
    if (v14 == 16)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = v3;
        v18 = [v3 UTF8String];
        v44.tm_sec = 136446210;
        *&v44.tm_min = v18;
        _os_log_debug_impl(&dword_256170000, v16, OS_LOG_TYPE_DEBUG, "Key created successfully: %{public}s", &v44, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v34 = v3;
      v35 = [v3 UTF8String];
      v44.tm_sec = 136446210;
      *&v44.tm_min = v35;
      _os_log_error_impl(&dword_256170000, v16, OS_LOG_TYPE_ERROR, "Can't persist the new log encryption key '%{public}s'", &v44, 0xCu);
    }
  }

  v19 = sub_256172978(v13);
  if (!v19)
  {
    v20 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v44.tm_sec) = 0;
      _os_log_debug_impl(&dword_256170000, v20, OS_LOG_TYPE_DEBUG, "Can't map the encryption key, marking it as pending", &v44, 2u);
    }

    objc_storeStrong(&qword_281537258, v3);
    atomic_store(1u, &unk_281537241);
    v19 = &unk_281537280;
  }

  v21 = atomic_load(&dword_281537244);
  v22 = (v21 + 1) & 1;
  v23 = *(&off_281537230 + v21);
  if (v21 < -1)
  {
    v22 = -v22;
  }

  *(&off_281537230 + v22) = v19;
  v24 = v21;
  atomic_compare_exchange_strong(&dword_281537244, &v24, v22);
  if (v24 != v21)
  {
    v37 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44.tm_sec) = 0;
      _os_log_impl(&dword_256170000, v37, OS_LOG_TYPE_DEFAULT, "toggleKeyIndex must always be called by a single thread.", &v44, 2u);
    }

    abort_report_np();
    goto LABEL_47;
  }

  if (v23 && v23 != &unk_281537280)
  {
    munmap(v23, 0x10uLL);
  }

  localtime_r(&v40, &v44);
  v41 = v44;
  if (v44.tm_hour <= 0)
  {
    v25 = -(-v44.tm_hour & 3);
  }

  else
  {
    v25 = v44.tm_hour & 3;
  }

  if (v25)
  {
    v41.tm_hour = v44.tm_hour - v25;
  }

  *&v41.tm_sec = 0;
  atomic_store(mktime(&v41), &qword_281537278);
  v26 = qword_281537250;
  if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEBUG))
  {
    if (v38)
    {
      v28 = "created";
    }

    else
    {
      v28 = "loaded";
    }

    v41.tm_sec = 136446466;
    *&v41.tm_min = v28;
    LOWORD(v41.tm_mday) = 2082;
    *(&v41.tm_mday + 2) = v45;
    _os_log_debug_impl(&dword_256170000, v26, OS_LOG_TYPE_DEBUG, "Log encryption key %{public}s: '%{public}s'", &v41, 0x16u);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2561727C8(char *a1, _BYTE *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v4 = open(a1, 0);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v5 = open(a1, 2562, 438);
  if ((v5 & 0x80000000) != 0)
  {
    if (*__error() == 17)
    {
      v4 = open(a1, 0);
      if ((v4 & 0x80000000) == 0)
      {
LABEL_4:
        v5 = v4;
        goto LABEL_5;
      }

      v8 = qword_281537250;
      if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = a1;
        _os_log_error_impl(&dword_256170000, v8, OS_LOG_TYPE_ERROR, "Can't load encryption key '%{public}s'", buf, 0xCu);
      }

      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = qword_281537250;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 136446466;
        v13 = a1;
        v14 = 2080;
        v15 = v11;
        _os_log_error_impl(&dword_256170000, v9, OS_LOG_TYPE_ERROR, "Can't create the new log encryption key file '%{public}s': %s", buf, 0x16u);
      }
    }
  }

  else if (a2)
  {
    *a2 = 1;
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void *sub_256172978(int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1 < 0)
  {
    goto LABEL_15;
  }

  v2 = 0;
  do
  {
    if (fstat(a1, &v8))
    {
      sched_yield();
    }

    st_size = v8.st_size;
  }

  while (v8.st_size <= 15 && v2++ < 5);
  if (v8.st_size <= 15)
  {
    v5 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = st_size;
      v11 = 1024;
      v12 = 16;
      _os_log_fault_impl(&dword_256170000, v5, OS_LOG_TYPE_FAULT, "invalid key data! key data is smaller than expected: %lld of %d bytes", buf, 0x12u);
    }

    goto LABEL_15;
  }

  result = mmap(0, 0x10uLL, 1, 1, a1, 0);
  if (result == -1)
  {
    printf("mmap error for input");
LABEL_15:
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256172AA4()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = 1;
  atomic_compare_exchange_strong(&unk_281537241, &v0, 0);
  if (v0 == 1)
  {
    v1 = qword_281537250;
    if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_256170000, v1, OS_LOG_TYPE_DEBUG, "Persisting pending Key", buf, 2u);
    }

    v18 = 0;
    v2 = sub_2561727C8([qword_281537258 UTF8String], &v18);
    v3 = v2;
    if (v2 < 0)
    {
      atomic_store(1u, &unk_281537241);
    }

    else
    {
      if (v18)
      {
        write(v2, &unk_281537280, 0x10uLL);
      }

      else
      {
        v4 = 1;
        do
        {
          v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%d", objc_msgSend(qword_281537258, "UTF8String"), v4];
          v6 = v5;
          if ((open([v5 UTF8String], 2562, 432) & 0x80000000) == 0)
          {
            write(v3, &unk_281537280, 0x10uLL);

            goto LABEL_17;
          }

          if (*__error() != 17)
          {
            break;
          }

          v7 = v4 >= 0xA;
          v4 = (v4 + 1);
        }

        while (!v7);
        v8 = qword_281537250;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v16 = [qword_281537258 UTF8String];
          *buf = 136446210;
          v20 = v16;
          _os_log_error_impl(&dword_256170000, v8, OS_LOG_TYPE_ERROR, "Can't persist temporary encryption key '%{public}s'", buf, 0xCu);
        }
      }

LABEL_17:
      v9 = 1;
      atomic_compare_exchange_strong(&unk_281537240, &v9, v9);
      if (v9 == 1)
      {
        v10 = sub_256172978(v3);
        if (v10)
        {
          v11 = atomic_load(&dword_281537244);
          v12 = (v11 + 1) & 1;
          v13 = *(&off_281537230 + v11);
          if (v11 < -1)
          {
            v12 = -v12;
          }

          *(&off_281537230 + v12) = v10;
          v14 = v11;
          atomic_compare_exchange_strong(&dword_281537244, &v14, v12);
          if (v14 != v11)
          {
            v17 = qword_281537250;
            if (os_log_type_enabled(qword_281537250, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_256170000, v17, OS_LOG_TYPE_DEFAULT, "toggleKeyIndex must always be called by a single thread.", buf, 2u);
            }

            abort_report_np();
            __break(1u);
          }

          if (v13 && v13 != &unk_281537280)
          {
            munmap(v13, 0x10uLL);
          }
        }

        else
        {
          atomic_store(1u, &unk_281537241);
        }

        atomic_store(0, &unk_281537240);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_256172DC0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_281537243 = 1;
    }

    CFRelease(v1);
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}