void CCPipeMonitor::resumeAllTapsFromQuiesced(CCPipeMonitor *this)
{
  v31 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (!Count)
  {
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "resumeAllTapsFromQuiesced:no tap found", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v17;
      v30 = v17;
      v27 = v17;
      v28 = v17;
      v25 = v17;
      v26 = v17;
      *buf = v17;
      v24 = v17;
      memset(&v22, 0, sizeof(v22));
      v21 = 0xAAAAAAAAAAAAAAAALL;
      time(&v21);
      localtime_r(&v21, &v22);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v22);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "resumeAllTapsFromQuiesced:no tap found");
    }

    goto LABEL_29;
  }

  v3 = Count;
  v4 = 8 * Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v5)
  {
    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v14 = v13;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v14 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "resumeAllTapsFromQuiesced:Failed to malloc memory for keyArray", buf, 2u);
LABEL_27:
    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v18;
      v30 = v18;
      v27 = v18;
      v28 = v18;
      v25 = v18;
      v26 = v18;
      *buf = v18;
      v24 = v18;
      memset(&v22, 0, sizeof(v22));
      v21 = 0xAAAAAAAAAAAAAAAALL;
      time(&v21);
      localtime_r(&v21, &v22);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v22);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "resumeAllTapsFromQuiesced:Failed to malloc memory for keyArray");
    }

LABEL_29:
    pthread_mutex_unlock((this + 208));
LABEL_34:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v4, 0x80040B8603338uLL);
  if (!v7)
  {
    v15 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = v15;
LABEL_38:
        _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "resumeAllTapsFromQuiesced:Failed to malloc memory for valueArray", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = MEMORY[0x277D86220];
      goto LABEL_38;
    }

    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v19;
      v30 = v19;
      v27 = v19;
      v28 = v19;
      v25 = v19;
      v26 = v19;
      *buf = v19;
      v24 = v19;
      memset(&v22, 0, sizeof(v22));
      v21 = 0xAAAAAAAAAAAAAAAALL;
      time(&v21);
      localtime_r(&v21, &v22);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v22);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "resumeAllTapsFromQuiesced:Failed to malloc memory for valueArray");
    }

    pthread_mutex_unlock((this + 208));
    free(v6);
    goto LABEL_34;
  }

  v8 = v7;
  CFDictionaryGetKeysAndValues(*(this + 15), v6, v7);
  if (v3 >= 1)
  {
    v9 = v8;
    do
    {
      if (*v9)
      {
        (*(**v9 + 120))(*v9);
      }

      ++v9;
      --v3;
    }

    while (v3);
  }

  pthread_mutex_unlock((this + 208));
  free(v6);
  v10 = *MEMORY[0x277D85DE8];

  free(v8);
}

uint64_t CCSubmitLogToCrashTracer(const char *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a1 || !funcAddr(a1))
  {
    v10 = 0;
    goto LABEL_26;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v4 = CFUUIDCreateString(v2, v3);
  v5 = v4;
  CFRelease(v3);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a1];
  v30 = v6;
  v7 = __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer;
  if (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer || (v8 = funcAddr(v6), v7 = v8, (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer = v8) != 0))
  {
    v8 = v7(@"InverseDeviceID", 0);
    v29 = v8;
    v9 = __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer;
    if (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = 0;
  }

  v11 = funcAddr(v8);
  __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer = v11;
  if (v11)
  {
    v9 = v11;
LABEL_11:
    v11 = v9(@"ProductType", 0);
    v12 = v11;
    v13 = __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer;
    if (__MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  v14 = funcAddr(v11);
  __MGCopyAnswer(__CFString const*,__CFDictionary const*)::_dl_mgcopyanswer = v14;
  if (!v14)
  {
    v15 = 0;
    goto LABEL_17;
  }

  v13 = v14;
LABEL_16:
  v15 = v13(@"UniqueDeviceID", 0);
LABEL_17:
  v16 = objc_opt_new();
  v17 = [v16 descriptionWithCalendarFormat:@"%Y-%m-%d %H:%M:%S.%F %z"];
  v18 = MEMORY[0x277CCACA8];
  v19 = _CFCopySystemVersionDictionary();
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
  v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBEC78]];
  v22 = [v19 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
  v23 = @"???";
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = @"???";
  }

  if (v20)
  {
    v25 = v20;
  }

  else
  {
    v25 = @"???";
  }

  if (v22)
  {
    v23 = v22;
  }

  v26 = [v18 stringWithFormat:@"\nIncident Identifier:     %@\nCrashReporter Key:       %@\nHardware Model:          %@\nProcess:                 WiFi Firmware\nPath:                    NA\nIdentifier:              WiFi Firmware Trap\nVersion:                 NA\nCode Type:               ARM-32\nRole                     NA\nParent Process:          NA\nCoalition:               NA\n\n\nDate/Time:               %@\nLauch Time:              NA\nOS Version:              %@\nBaseband Version:        NA\nUDID:                    %@\nReport Version:          NA\n", v4, v29, v12, v17, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@ (%@)", v24, v25, v23), v15];
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@\n", v26, v30];
  v10 = OSAWriteLogForSubmission();

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

void *funcAddr(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = __loadMobileGestalt(void)::image;
  if (__loadMobileGestalt(void)::image)
  {
    goto LABEL_9;
  }

  v2 = getenv("DYLD_IMAGE_SUFFIX");
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v3;
  *v7.st_qspare = v3;
  v7.st_birthtimespec = v3;
  *&v7.st_size = v3;
  v7.st_mtimespec = v3;
  v7.st_ctimespec = v3;
  *&v7.st_uid = v3;
  v7.st_atimespec = v3;
  *&v7.st_dev = v3;
  memset(&v6[32], 170, 0x3E0uLL);
  if (!v2)
  {
    v4 = "/usr/lib/libMobileGestalt.dylib";
LABEL_8:
    result = dlopen(v4, 6);
    __loadMobileGestalt(void)::image = result;
    if (!result)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dlsym(result, "MGCopyAnswer");
    goto LABEL_10;
  }

  strcpy(v6, "/usr/lib/libMobileGestalt.dylib");
  if (strlcat(v6, v2, 0x400uLL) < 0x400)
  {
    if (stat(v6, &v7) < 0)
    {
      result = __loadMobileGestalt(void)::image;
      if (!__loadMobileGestalt(void)::image)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v6;
    goto LABEL_8;
  }

  result = 0;
LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___Z24CCSubmitLogToCrashTracerPKci_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) UTF8String];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:{objc_msgSend(*(a1 + 40), "length") + *(a1 + 48)}];

  return [a2 writeData:v5];
}

uint64_t CCSubmitBinaryToCrashTracer(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    result = OSAWriteLogForSubmission();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___Z27CCSubmitBinaryToCrashTracerPKci_block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 32) length:*(a1 + 40)];

  return [a2 writeData:v3];
}

uint64_t isSeedAndiOS()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = atomic_load(gBootArgsParsed);
  if ((v0 & 1) == 0)
  {
    v3[0] = 256;
    if (!sysctlbyname("kern.bootargs", gBootArgs, v3, 0, 0))
    {
      byte_27EE11C50 = 0;
      atomic_store(1u, gBootArgsParsed);
      if (strnstr(gBootArgs, "cc.log.seed", 0x100uLL))
      {
        isSeedAndiOS::bootArgSet = 1;
      }
    }
  }

  result = isSeedAndiOS::bootArgSet;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mkdirRecursive(const __CFString *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v3)
  {
    v10 = 0;
    goto LABEL_31;
  }

  v4 = v3;
  v5 = CFStringGetLength(a1);
  CFStringGetCString(a1, v4, v5 + 1, 0);
  v6 = strdup(v4);
  v7 = v6;
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v36.st_blksize = v8;
  *v36.st_qspare = v8;
  v36.st_birthtimespec = v8;
  *&v36.st_size = v8;
  v36.st_mtimespec = v8;
  v36.st_ctimespec = v8;
  *&v36.st_uid = v8;
  v36.st_atimespec = v8;
  *&v36.st_dev = v8;
  if (*v6 == 47)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v6;
  }

  while (*v9 != 47)
  {
    if (!*v9)
    {
      v10 = 1;
      goto LABEL_30;
    }

LABEL_15:
    ++v9;
  }

  *v9 = 0;
  if (stat(v7, &v36))
  {
    if (mkdir(v7, 0x1EDu) && (stat(v7, &v36) || (v36.st_mode & 0xF000) != 0x4000))
    {
      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          v12 = *__error();
          *buf = 136315394;
          *&buf[4] = v7;
          *&buf[12] = 1024;
          *&buf[14] = v12;
          v13 = v11;
          goto LABEL_33;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v25 = *__error();
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 1024;
        *&buf[14] = v25;
        v13 = MEMORY[0x277D86220];
LABEL_33:
        _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCFile::mkdirRecursive Unable to mkdir on '%s', errno %d\n", buf, 0x12u);
      }

      if (glog_fd)
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34 = v17;
        v35 = v17;
        v32 = v17;
        v33 = v17;
        v30 = v17;
        v31 = v17;
        *buf = v17;
        *&buf[16] = v17;
        memset(&v28, 0, sizeof(v28));
        v27 = 0xAAAAAAAAAAAAAAAALL;
        time(&v27);
        localtime_r(&v27, &v28);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
        dprintf(glog_fd, "%s ", buf);
        v18 = glog_fd;
        v19 = *__error();
        dprintf(v18, "CCFile::mkdirRecursive Unable to mkdir on '%s', errno %d\n");
      }

      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if ((v36.st_mode & 0xF000) == 0x4000)
  {
LABEL_14:
    *v9 = 47;
    goto LABEL_15;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      *buf = 136315650;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      *&buf[22] = 1024;
      *&buf[24] = v15;
      v16 = v14;
      goto LABEL_35;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v26 = *__error();
    *buf = 136315650;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 1024;
    *&buf[24] = v26;
    v16 = MEMORY[0x277D86220];
LABEL_35:
    _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "CCFile::mkdirRecursive Unable to create path '%s' as '%s' is not a directory errno %d\n", buf, 0x1Cu);
  }

  if (glog_fd)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34 = v20;
    v35 = v20;
    v32 = v20;
    v33 = v20;
    v30 = v20;
    v31 = v20;
    *buf = v20;
    *&buf[16] = v20;
    memset(&v28, 0, sizeof(v28));
    v27 = 0xAAAAAAAAAAAAAAAALL;
    time(&v27);
    localtime_r(&v27, &v28);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
    dprintf(glog_fd, "%s ", buf);
    v21 = glog_fd;
    v22 = *__error();
    dprintf(v21, "CCFile::mkdirRecursive Unable to create path '%s' as '%s' is not a directory errno %d\n");
  }

LABEL_29:
  v10 = 0;
  *v9 = 47;
LABEL_30:
  free(v7);
  free(v4);
LABEL_31:
  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t shouldReduceLogRetention()
{
  v20 = *MEMORY[0x277D85DE8];
  if (shouldReduceLogRetention::parseChipsetInfo == 1)
  {
    LOBYTE(v0) = shouldReduceLogRetention::reduceRetention;
    goto LABEL_18;
  }

  v1 = IOServiceNameMatching("wlan");
  v2 = MEMORY[0x277CD2898];
  if (v1 && (MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1)) != 0 || (v4 = IOServiceNameMatching("marconi-wifi")) != 0 && (MatchingService = IOServiceGetMatchingService(*v2, v4)) != 0)
  {
    IOObjectRelease(MatchingService);
    v0 = 0;
  }

  else
  {
    v0 = 1;
  }

  v5 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v0;
      v6 = v5;
LABEL_14:
      _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "can reduce logging: %d\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v0;
    v6 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  if (glog_fd)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v7;
    v19 = v7;
    v16 = v7;
    v17 = v7;
    v14 = v7;
    v15 = v7;
    *buf = v7;
    v13 = v7;
    memset(&v11, 0, sizeof(v11));
    v10 = 0xAAAAAAAAAAAAAAAALL;
    time(&v10);
    localtime_r(&v10, &v11);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "can reduce logging: %d\n", v0);
  }

  shouldReduceLogRetention::parseChipsetInfo = 1;
  shouldReduceLogRetention::reduceRetention = v0;
LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return v0 & 1;
}

uint64_t getMaxPreservedCaptures()
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (shouldReduceLogRetention())
  {
    v0 = 15;
  }

  else
  {
    v0 = 50;
  }

  v13[0] = v0;
  v1 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v2 = CFStringCreateWithCString(0, "max_preserved_captures", 0);
  v3 = CFPreferencesCopyAppValue(v2, v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = CFGetTypeID(v3);
  if (v5 == CFStringGetTypeID())
  {
    Length = CFStringGetLength(v4);
    v7 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v8 = CFStringGetLength(v4);
    CFStringGetCString(v4, v7, v8 + 1, 0);
    v9 = strtoll(v7, 0, 10);
    v13[0] = v9;
    if (v9)
    {
      goto LABEL_10;
    }

    if (*__error() == 22 || *__error() == 34)
    {
      v13[0] = v0;
      v9 = v0;
LABEL_10:
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v9 = 0;
    if (v7)
    {
LABEL_11:
      free(v7);
    }
  }

  else
  {
    v10 = CFGetTypeID(v4);
    if (v10 != CFNumberGetTypeID())
    {
      goto LABEL_19;
    }

    if (!CFNumberGetValue(v4, kCFNumberSInt64Type, v13))
    {
      goto LABEL_18;
    }

    v9 = v13[0];
  }

LABEL_15:
  if (v9 < 0)
  {
LABEL_18:
    v13[0] = v0;
    goto LABEL_19;
  }

  if (!v9)
  {
    v13[0] = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_19:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  result = v13[0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

CFComparisonResult sortByDirectoryName(CFComparisonResult result, uint64_t a2)
{
  if (result >= 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = result - 1;
    do
    {
      while (1)
      {
        v7 = (v4 + 1);
        result = CFStringCompare(*(a2 + 8 * v3), *(a2 + 8 * v7), 0);
        if (result != kCFCompareGreaterThan)
        {
          break;
        }

        v8 = *(a2 + 8 * v3);
        *(a2 + 8 * v3) = *(a2 + 8 * v7);
        *(a2 + 8 * v7) = v8;
        if (v6 <= v7)
        {
          v3 = 0;
        }

        else
        {
          v3 = (v4 + 1);
        }

        if (v6 > v7)
        {
          ++v4;
        }

        else
        {
          v4 = 0;
        }

        v5 = v6 > v7;
      }

      v9 = (v6 > v7) | v5;
      if (v6 <= v7)
      {
        v3 = 0;
      }

      else
      {
        v3 = (v4 + 1);
      }

      if (v6 <= v7)
      {
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      v5 &= v6 > v7;
    }

    while ((v9 & 1) != 0);
  }

  return result;
}

void deleteDirectory(const __CFString *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Length = CFStringGetLength(a1);
      v4 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      if (v4)
      {
        v5 = v4;
        v6 = CFStringGetLength(a1);
        if (CFStringGetCString(a1, v5, v6 + 1, 0))
        {
          v7 = opendir(v5);
          if (v7)
          {
            v8 = v7;
            v9 = *MEMORY[0x277CBECE8];
            while (1)
            {
              v10 = readdir(v8);
              if (!v10)
              {
                break;
              }

              v11 = v10;
              d_name = v10->d_name;
              if (v10->d_name[0] != 46 || v10->d_name[1] && (v10->d_name[1] != 46 || v10->d_name[2]))
              {
                MutableCopy = CFStringCreateMutableCopy(v9, 512, a1);
                CFStringAppendCString(MutableCopy, "/", 0);
                CFStringAppendCString(MutableCopy, d_name, 0);
                if (v11->d_type == 4)
                {
                  deleteDirectory(MutableCopy);
                }

                else
                {
                  v14 = CFStringGetLength(MutableCopy);
                  v15 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
                  if (v15)
                  {
                    v16 = v15;
                    v17 = CFStringGetLength(MutableCopy);
                    if (CFStringGetCString(MutableCopy, v16, v17 + 1, 0) == 1)
                    {
                      unlink(v16);
                    }

                    free(v16);
                  }
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }
              }
            }

            closedir(v8);
            rmdir(v5);
LABEL_21:
            free(v5);
            goto LABEL_22;
          }

          v27 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            v28 = __error();
            v29 = strerror(*v28);
            *buf = 136315650;
            *&buf[4] = "deleteDirectory";
            *&buf[12] = 1024;
            *&buf[14] = 265;
            *&buf[18] = 2080;
            *&buf[20] = v29;
            v30 = v27;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            v38 = __error();
            v39 = strerror(*v38);
            *buf = 136315650;
            *&buf[4] = "deleteDirectory";
            *&buf[12] = 1024;
            *&buf[14] = 265;
            *&buf[18] = 2080;
            *&buf[20] = v39;
            v30 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "%s:%06u: opendir failure - %s\n", buf, 0x1Cu);
LABEL_52:
          if (glog_fd)
          {
            *&v35 = 0xAAAAAAAAAAAAAAAALL;
            *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v47 = v35;
            v48 = v35;
            v45 = v35;
            v46 = v35;
            v43 = v35;
            v44 = v35;
            *buf = v35;
            *&buf[16] = v35;
            memset(&v41, 0, sizeof(v41));
            v40 = 0xAAAAAAAAAAAAAAAALL;
            time(&v40);
            localtime_r(&v40, &v41);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
            dprintf(glog_fd, "%s ", buf);
            v36 = glog_fd;
            v37 = __error();
            strerror(*v37);
            dprintf(v36, "%s:%06u: opendir failure - %s\n");
          }

          goto LABEL_21;
        }

        v25 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 136315394;
          *&buf[4] = "deleteDirectory";
          *&buf[12] = 1024;
          *&buf[14] = 261;
          v26 = v25;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 136315394;
          *&buf[4] = "deleteDirectory";
          *&buf[12] = 1024;
          *&buf[14] = 261;
          v26 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v26, OS_LOG_TYPE_ERROR, "%s:%06u: CFStringGetCString failure\n", buf, 0x12u);
LABEL_49:
        if (glog_fd)
        {
          *&v34 = 0xAAAAAAAAAAAAAAAALL;
          *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v47 = v34;
          v48 = v34;
          v45 = v34;
          v46 = v34;
          v43 = v34;
          v44 = v34;
          *buf = v34;
          *&buf[16] = v34;
          memset(&v41, 0, sizeof(v41));
          v40 = 0xAAAAAAAAAAAAAAAALL;
          time(&v40);
          localtime_r(&v40, &v41);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s:%06u: CFStringGetCString failure\n");
        }

        goto LABEL_21;
      }

      v23 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *buf = 136315394;
        *&buf[4] = "deleteDirectory";
        *&buf[12] = 1024;
        *&buf[14] = 258;
        v24 = v23;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *buf = 136315394;
        *&buf[4] = "deleteDirectory";
        *&buf[12] = 1024;
        *&buf[14] = 258;
        v24 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "%s:%06u: Allocation failure\n", buf, 0x12u);
LABEL_45:
      if (glog_fd)
      {
        *&v33 = 0xAAAAAAAAAAAAAAAALL;
        *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v47 = v33;
        v48 = v33;
        v45 = v33;
        v46 = v33;
        v43 = v33;
        v44 = v33;
        *buf = v33;
        *&buf[16] = v33;
        memset(&v41, 0, sizeof(v41));
        v40 = 0xAAAAAAAAAAAAAAAALL;
        time(&v40);
        localtime_r(&v40, &v41);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%06u: Allocation failure\n");
      }

      goto LABEL_22;
    }

    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "deleteDirectory";
      *&buf[12] = 1024;
      *&buf[14] = 255;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "deleteDirectory";
      *&buf[12] = 1024;
      *&buf[14] = 255;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "%s:%06u: Invalid type\n", buf, 0x12u);
LABEL_42:
    if (glog_fd)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v32;
      v48 = v32;
      v45 = v32;
      v46 = v32;
      v43 = v32;
      v44 = v32;
      *buf = v32;
      *&buf[16] = v32;
      memset(&v41, 0, sizeof(v41));
      v40 = 0xAAAAAAAAAAAAAAAALL;
      time(&v40);
      localtime_r(&v40, &v41);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u: Invalid type\n");
    }

    goto LABEL_22;
  }

  v19 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315394;
    *&buf[4] = "deleteDirectory";
    *&buf[12] = 1024;
    *&buf[14] = 254;
    v20 = v19;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    *buf = 136315394;
    *&buf[4] = "deleteDirectory";
    *&buf[12] = 1024;
    *&buf[14] = 254;
    v20 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "%s:%06u: Invalid argument\n", buf, 0x12u);
LABEL_39:
  if (glog_fd)
  {
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47 = v31;
    v48 = v31;
    v45 = v31;
    v46 = v31;
    v43 = v31;
    v44 = v31;
    *buf = v31;
    *&buf[16] = v31;
    memset(&v41, 0, sizeof(v41));
    v40 = 0xAAAAAAAAAAAAAAAALL;
    time(&v40);
    localtime_r(&v40, &v41);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s:%06u: Invalid argument\n");
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t compressFile(const char *a1, const char *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 310;
      v7 = v6;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 310;
      v7 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v7, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d dirPath is invalid\n", &buf, 0x12u);
LABEL_37:
    if (glog_fd)
    {
      v33.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v33.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v33;
      *&buf.st_blksize = v33;
      buf.st_ctimespec = v33;
      buf.st_birthtimespec = v33;
      buf.st_atimespec = v33;
      buf.st_mtimespec = v33;
      *&buf.st_dev = v33;
      *&buf.st_uid = v33;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d dirPath is invalid\n");
    }

    goto LABEL_68;
  }

  v3 = coreCaptureOsLog;
  if (!a2)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 315;
      v8 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 315;
      v8 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d fileName is invalid\n", &buf, 0x12u);
LABEL_43:
    if (glog_fd)
    {
      v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v36;
      *&buf.st_blksize = v36;
      buf.st_ctimespec = v36;
      buf.st_birthtimespec = v36;
      buf.st_atimespec = v36;
      buf.st_mtimespec = v36;
      *&buf.st_dev = v36;
      *&buf.st_uid = v36;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d fileName is invalid\n");
    }

    goto LABEL_68;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    buf.st_dev = 136315906;
    *&buf.st_mode = "compressFile";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 319;
    HIWORD(buf.st_uid) = 2080;
    *&buf.st_gid = a1;
    *(&buf.st_rdev + 2) = 2080;
    *(&buf.st_rdev + 6) = a2;
    v5 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    buf.st_dev = 136315906;
    *&buf.st_mode = "compressFile";
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = 319;
    HIWORD(buf.st_uid) = 2080;
    *&buf.st_gid = a1;
    *(&buf.st_rdev + 2) = 2080;
    *(&buf.st_rdev + 6) = a2;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d Trying to compress file %s%s\n", &buf, 0x26u);
LABEL_15:
  if (glog_fd)
  {
    v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&buf.st_size = v9;
    *&buf.st_blksize = v9;
    buf.st_ctimespec = v9;
    buf.st_birthtimespec = v9;
    buf.st_atimespec = v9;
    buf.st_mtimespec = v9;
    *&buf.st_dev = v9;
    *&buf.st_uid = v9;
    memset(v73, 0, 56);
    *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v72.tm_sec);
    localtime_r(&v72.tm_sec, v73);
    strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
    dprintf(glog_fd, "%s ", &buf);
    dprintf(glog_fd, "CCDaemon::%s:%d Trying to compress file %s%s\n", "compressFile", 319, a1, a2);
  }

  v10 = strlen(a2);
  if (v10 >= 4 && !strcmp(&a2[v10 - 3], ".gz"))
  {
    v39 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 325;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = a2;
      v40 = v39;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 325;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = a2;
      v40 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v40, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d fileName %s is already compressed...\n", &buf, 0x1Cu);
LABEL_66:
    if (glog_fd)
    {
      v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v47.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v47;
      *&buf.st_blksize = v47;
      buf.st_ctimespec = v47;
      buf.st_birthtimespec = v47;
      buf.st_atimespec = v47;
      buf.st_mtimespec = v47;
      *&buf.st_dev = v47;
      *&buf.st_uid = v47;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d fileName %s is already compressed...\n");
    }

    goto LABEL_68;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 512);
  if (!Mutable)
  {
    v34 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 331;
      v35 = v34;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 331;
      v35 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v35, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to create filePathRef\n", &buf, 0x12u);
LABEL_55:
    if (glog_fd)
    {
      v43.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v43.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v43;
      *&buf.st_blksize = v43;
      buf.st_ctimespec = v43;
      buf.st_birthtimespec = v43;
      buf.st_atimespec = v43;
      buf.st_mtimespec = v43;
      *&buf.st_dev = v43;
      *&buf.st_uid = v43;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to create filePathRef\n");
    }

LABEL_68:
    v48 = 0;
    goto LABEL_69;
  }

  v12 = Mutable;
  CFStringAppendCString(Mutable, a1, 0);
  CFStringAppendCString(v12, a2, 0);
  Length = CFStringGetLength(v12);
  v14 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v14)
  {
    v37 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 340;
      v38 = v37;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 340;
      v38 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to allocate source buffer\n", &buf, 0x12u);
LABEL_61:
    if (glog_fd)
    {
      v46.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v46.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v46;
      *&buf.st_blksize = v46;
      buf.st_ctimespec = v46;
      buf.st_birthtimespec = v46;
      buf.st_atimespec = v46;
      buf.st_mtimespec = v46;
      *&buf.st_dev = v46;
      *&buf.st_uid = v46;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to allocate source buffer\n", "compressFile", 340);
    }

    goto LABEL_74;
  }

  v15 = v14;
  v16 = CFStringGetLength(v12);
  CFStringGetCString(v12, v15, v16 + 1, 0);
  CFStringAppendCString(v12, ".gz", 0);
  v17 = CFStringGetLength(v12);
  v18 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
  if (!v18)
  {
    v41 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 136315394;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 350;
        v42 = v41;
LABEL_132:
        _os_log_error_impl(&dword_2452A3000, v42, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to allocate destination buffer\n", &buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 350;
      v42 = MEMORY[0x277D86220];
      goto LABEL_132;
    }

    if (glog_fd)
    {
      v51.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v51.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v51;
      *&buf.st_blksize = v51;
      buf.st_ctimespec = v51;
      buf.st_birthtimespec = v51;
      buf.st_atimespec = v51;
      buf.st_mtimespec = v51;
      *&buf.st_dev = v51;
      *&buf.st_uid = v51;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to allocate destination buffer\n", "compressFile", 350);
    }

    free(v15);
LABEL_74:
    v48 = 0;
    goto LABEL_130;
  }

  v19 = v18;
  v20 = CFStringGetLength(v12);
  CFStringGetCString(v12, v19, v20 + 1, 0);
  if ((ifSeedCreateClassCProtectedFile(v19) & 1) == 0)
  {
    v44 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 136315394;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 357;
        v45 = v44;
LABEL_134:
        _os_log_error_impl(&dword_2452A3000, v45, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to create class with protection flag\n", &buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 357;
      v45 = MEMORY[0x277D86220];
      goto LABEL_134;
    }

    if (glog_fd)
    {
      v54.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v54.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v54;
      *&buf.st_blksize = v54;
      buf.st_ctimespec = v54;
      buf.st_birthtimespec = v54;
      buf.st_atimespec = v54;
      buf.st_mtimespec = v54;
      *&buf.st_dev = v54;
      *&buf.st_uid = v54;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d unable to create class with protection flag\n", "compressFile", 357);
    }

    v48 = 0;
    goto LABEL_129;
  }

  v21 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  v22 = fopen(v15, "rb");
  if (!v22)
  {
    v52 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 364;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v15;
      v53 = v52;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 364;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v15;
      v53 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d failed to open source buffer %s\n", &buf, 0x1Cu);
LABEL_88:
    if (glog_fd)
    {
      v57.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v57.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v57;
      *&buf.st_blksize = v57;
      buf.st_ctimespec = v57;
      buf.st_birthtimespec = v57;
      buf.st_atimespec = v57;
      buf.st_mtimespec = v57;
      *&buf.st_dev = v57;
      *&buf.st_uid = v57;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d failed to open source buffer %s\n", "compressFile", 364, v15);
    }

    goto LABEL_99;
  }

  v23 = v22;
  v70 = v19;
  v24 = gzopen(v19, "wb");
  if (!v24)
  {
    v55 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        buf.st_dev = 136315650;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 370;
        HIWORD(buf.st_uid) = 2080;
        *&buf.st_gid = v15;
        v56 = v55;
LABEL_138:
        _os_log_error_impl(&dword_2452A3000, v56, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d failed to open dest buffer %s\n", &buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315650;
      *&buf.st_mode = "compressFile";
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = 370;
      HIWORD(buf.st_uid) = 2080;
      *&buf.st_gid = v15;
      v56 = MEMORY[0x277D86220];
      goto LABEL_138;
    }

    if (glog_fd)
    {
      v60.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v60.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_size = v60;
      *&buf.st_blksize = v60;
      buf.st_ctimespec = v60;
      buf.st_birthtimespec = v60;
      buf.st_atimespec = v60;
      buf.st_mtimespec = v60;
      *&buf.st_dev = v60;
      *&buf.st_uid = v60;
      memset(v73, 0, 56);
      *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v72.tm_sec);
      localtime_r(&v72.tm_sec, v73);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCDaemon::%s:%d failed to open dest buffer %s\n", "compressFile", 370, v15);
    }

    fclose(v23);
LABEL_99:
    v48 = 0;
    goto LABEL_127;
  }

  v25 = v24;
  v69 = v15;
  do
  {
    v26 = 1;
    v27 = fread(v21, 1uLL, 0x4000uLL, v23);
    v28 = v27;
    if (!(v27 >> 14))
    {
      if (!ferror(v23))
      {
        v26 = feof(v23) == 0;
        goto LABEL_29;
      }

      v58 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        v15 = v69;
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        buf.st_dev = 136315650;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 380;
        HIWORD(buf.st_uid) = 2080;
        *&buf.st_gid = v69;
        v59 = v58;
      }

      else
      {
        v15 = v69;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        buf.st_dev = 136315650;
        *&buf.st_mode = "compressFile";
        WORD2(buf.st_ino) = 1024;
        *(&buf.st_ino + 6) = 380;
        HIWORD(buf.st_uid) = 2080;
        *&buf.st_gid = v69;
        v59 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v59, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d Error reading from source buffer %s\n", &buf, 0x1Cu);
LABEL_114:
      if (glog_fd)
      {
        v66.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v66.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&buf.st_size = v66;
        *&buf.st_blksize = v66;
        buf.st_ctimespec = v66;
        buf.st_birthtimespec = v66;
        buf.st_atimespec = v66;
        buf.st_mtimespec = v66;
        *&buf.st_dev = v66;
        *&buf.st_uid = v66;
        memset(v73, 0, 56);
        *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v72.tm_sec);
        localtime_r(&v72.tm_sec, v73);
        strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
        dprintf(glog_fd, "%s ", &buf);
        dprintf(glog_fd, "CCDaemon::%s:%d Error reading from source buffer %s\n", "compressFile", 380, v15);
      }

      goto LABEL_120;
    }

LABEL_29:
    if (!gzwrite(v25, v21, v28))
    {
      errnum[0] = 0;
      v29 = gzerror(v25, errnum);
      if (errnum[0])
      {
        v61 = v29;
        v62 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 136315906;
            *&buf.st_mode = "compressFile";
            WORD2(buf.st_ino) = 1024;
            *(&buf.st_ino + 6) = 392;
            HIWORD(buf.st_uid) = 2080;
            *&buf.st_gid = v70;
            *(&buf.st_rdev + 2) = 2080;
            *(&buf.st_rdev + 6) = v61;
            v63 = v62;
            goto LABEL_144;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 136315906;
          *&buf.st_mode = "compressFile";
          WORD2(buf.st_ino) = 1024;
          *(&buf.st_ino + 6) = 392;
          HIWORD(buf.st_uid) = 2080;
          *&buf.st_gid = v70;
          *(&buf.st_rdev + 2) = 2080;
          *(&buf.st_rdev + 6) = v61;
          v63 = MEMORY[0x277D86220];
LABEL_144:
          _os_log_error_impl(&dword_2452A3000, v63, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d Error writing to destination buffer %s: %s\n", &buf, 0x26u);
        }

        if (glog_fd)
        {
          v67.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v67.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&buf.st_size = v67;
          *&buf.st_blksize = v67;
          buf.st_ctimespec = v67;
          buf.st_birthtimespec = v67;
          buf.st_atimespec = v67;
          buf.st_mtimespec = v67;
          *&buf.st_dev = v67;
          *&buf.st_uid = v67;
          memset(v73, 0, 56);
          *&v72.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v72.tm_sec);
          localtime_r(&v72.tm_sec, v73);
          strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v73);
          dprintf(glog_fd, "%s ", &buf);
          dprintf(glog_fd, "CCDaemon::%s:%d Error writing to destination buffer %s: %s\n", "compressFile", 392, v70, v61);
        }

        v15 = v69;
LABEL_120:
        fclose(v23);
        gzclose(v25);
        v48 = 0;
        v19 = v70;
        goto LABEL_127;
      }
    }
  }

  while (v26);
  fclose(v23);
  gzclose(v25);
  memset(&buf, 0, sizeof(buf));
  v19 = v70;
  v30 = stat(v70, &buf);
  v31 = coreCaptureOsLog;
  if (!v30)
  {
    if (coreCaptureOsLog)
    {
      v15 = v69;
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *v73 = 136315906;
      *&v73[4] = "compressFile";
      *&v73[12] = 1024;
      *&v73[14] = 420;
      *&v73[18] = 2080;
      *&v73[20] = a2;
      *&v73[28] = 2048;
      *&v73[30] = buf.st_size;
      v64 = v31;
    }

    else
    {
      v15 = v69;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *v73 = 136315906;
      *&v73[4] = "compressFile";
      *&v73[12] = 1024;
      *&v73[14] = 420;
      *&v73[18] = 2080;
      *&v73[20] = a2;
      *&v73[28] = 2048;
      *&v73[30] = buf.st_size;
      v64 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v64, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d Compressed file with name %s and resulting length %lld bytes\n", v73, 0x26u);
LABEL_124:
    if (glog_fd)
    {
      *&v68 = 0xAAAAAAAAAAAAAAAALL;
      *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v76 = v68;
      v77 = v68;
      v74 = v68;
      v75 = v68;
      *&v73[32] = v68;
      *&v73[48] = v68;
      *v73 = v68;
      *&v73[16] = v68;
      memset(&v72, 0, sizeof(v72));
      *errnum = 0xAAAAAAAAAAAAAAAALL;
      time(errnum);
      localtime_r(errnum, &v72);
      strftime(v73, 0x80uLL, "%b %d %H:%M:%S", &v72);
      dprintf(glog_fd, "%s ", v73);
      dprintf(glog_fd, "CCDaemon::%s:%d Compressed file with name %s and resulting length %lld bytes\n");
    }

    goto LABEL_126;
  }

  if (coreCaptureOsLog)
  {
    v15 = v69;
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315394;
      *&v73[4] = "compressFile";
      *&v73[12] = 1024;
      *&v73[14] = 422;
      v32 = v31;
      goto LABEL_140;
    }
  }

  else
  {
    v15 = v69;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v73 = 136315394;
      *&v73[4] = "compressFile";
      *&v73[12] = 1024;
      *&v73[14] = 422;
      v32 = MEMORY[0x277D86220];
LABEL_140:
      _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d unable to stat dest path\n", v73, 0x12u);
    }
  }

  if (glog_fd)
  {
    *&v65 = 0xAAAAAAAAAAAAAAAALL;
    *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v76 = v65;
    v77 = v65;
    v74 = v65;
    v75 = v65;
    *&v73[32] = v65;
    *&v73[48] = v65;
    *v73 = v65;
    *&v73[16] = v65;
    memset(&v72, 0, sizeof(v72));
    *errnum = 0xAAAAAAAAAAAAAAAALL;
    time(errnum);
    localtime_r(errnum, &v72);
    strftime(v73, 0x80uLL, "%b %d %H:%M:%S", &v72);
    dprintf(glog_fd, "%s ", v73);
    dprintf(glog_fd, "CCDaemon::%s:%d unable to stat dest path\n");
  }

LABEL_126:
  v48 = 1;
LABEL_127:
  if (v21)
  {
    free(v21);
  }

LABEL_129:
  free(v15);
  free(v19);
LABEL_130:
  CFRelease(v12);
LABEL_69:
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

uint64_t ifSeedCreateClassCProtectedFile(const std::__fs::filesystem::path *a1)
{
  v2 = isSeedAndiOS();
  if (!v2)
  {
    return 1;
  }

  v5 = deviceUnlockedSinceBoot(v2, v3);
  result = 0;
  if (a1 && v5)
  {
    remove(a1, v4);
    v7 = open_dprotected_np(a1, 1538, 3, 0, 420);
    if (v7 < 1)
    {
      return 0;
    }

    close(v7);
    return 1;
  }

  return result;
}

uint64_t deviceUnlockedSinceBoot(uint64_t a1, std::error_code *a2)
{
  if (deviceUnlockedSinceBoot::deviceUnlockedOnce)
  {
    return 1;
  }

  remove("/tmp/cc.locktest", a2);
  v3 = open_dprotected_np("/tmp/cc.locktest", 1538, 3, 0, 420);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  if (write(v3, "/tmp/cc.locktest", 0x11uLL) == 17)
  {
    deviceUnlockedSinceBoot::deviceUnlockedOnce = 1;
  }

  close(v4);
  remove("/tmp/cc.locktest", v5);
  return deviceUnlockedSinceBoot::deviceUnlockedOnce;
}

void cleanupLogFile(const char *a1, const char *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v4 = strlen(a1);
      if (strlen(a2) + v4 >= 0x200)
      {
        v5 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *__str = 136315394;
          *&__str[4] = "cleanupLogFile";
          *&__str[12] = 1024;
          *&__str[14] = 447;
          v6 = v5;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *__str = 136315394;
          *&__str[4] = "cleanupLogFile";
          *&__str[12] = 1024;
          *&__str[14] = 447;
          v6 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v6, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d filePath may get truncated. Returning...", __str, 0x12u);
LABEL_23:
        if (glog_fd)
        {
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v30 = v15;
          v31 = v15;
          v28 = v15;
          v29 = v15;
          v26 = v15;
          v27 = v15;
          *__str = v15;
          *&__str[16] = v15;
          memset(v20, 0, 56);
          *&v19.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v19.tm_sec);
          localtime_r(&v19.tm_sec, v20);
          strftime(__str, 0x80uLL, "%b %d %H:%M:%S", v20);
          dprintf(glog_fd, "%s ", __str);
          dprintf(glog_fd, "CCDaemon::%s:%d filePath may get truncated. Returning...");
        }

        goto LABEL_32;
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
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
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x200uLL, "%s%s", a1, a2);
      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315650;
          *&v20[4] = "cleanupLogFile";
          *&v20[12] = 1024;
          *&v20[14] = 455;
          *&v20[18] = 2080;
          *&v20[20] = __str;
          v12 = v11;
LABEL_28:
          _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s:%d Deleting compressed file %s", v20, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315650;
        *&v20[4] = "cleanupLogFile";
        *&v20[12] = 1024;
        *&v20[14] = 455;
        *&v20[18] = 2080;
        *&v20[20] = __str;
        v12 = MEMORY[0x277D86220];
        goto LABEL_28;
      }

      if (glog_fd)
      {
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v23 = v16;
        v24 = v16;
        v21 = v16;
        v22 = v16;
        *&v20[32] = v16;
        *&v20[48] = v16;
        *v20 = v16;
        *&v20[16] = v16;
        memset(&v19, 0, sizeof(v19));
        v18 = 0xAAAAAAAAAAAAAAAALL;
        time(&v18);
        localtime_r(&v18, &v19);
        strftime(v20, 0x80uLL, "%b %d %H:%M:%S", &v19);
        dprintf(glog_fd, "%s ", v20);
        dprintf(glog_fd, "CCDaemon::%s:%d Deleting compressed file %s", "cleanupLogFile", 455, __str);
      }

      unlink(__str);
      goto LABEL_32;
    }

    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *__str = 136315394;
      *&__str[4] = "cleanupLogFile";
      *&__str[12] = 1024;
      *&__str[14] = 442;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *__str = 136315394;
      *&__str[4] = "cleanupLogFile";
      *&__str[12] = 1024;
      *&__str[14] = 442;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d fileName is invalid", __str, 0x12u);
LABEL_20:
    if (glog_fd)
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v14;
      v31 = v14;
      v28 = v14;
      v29 = v14;
      v26 = v14;
      v27 = v14;
      *__str = v14;
      *&__str[16] = v14;
      memset(v20, 0, 56);
      *&v19.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v19.tm_sec);
      localtime_r(&v19.tm_sec, v20);
      strftime(__str, 0x80uLL, "%b %d %H:%M:%S", v20);
      dprintf(glog_fd, "%s ", __str);
      dprintf(glog_fd, "CCDaemon::%s:%d fileName is invalid");
    }

    goto LABEL_32;
  }

  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *__str = 136315394;
    *&__str[4] = "cleanupLogFile";
    *&__str[12] = 1024;
    *&__str[14] = 437;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *__str = 136315394;
    *&__str[4] = "cleanupLogFile";
    *&__str[12] = 1024;
    *&__str[14] = 437;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCDaemon::%s:%d dirPath is invalid", __str, 0x12u);
LABEL_17:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30 = v13;
    v31 = v13;
    v28 = v13;
    v29 = v13;
    v26 = v13;
    v27 = v13;
    *__str = v13;
    *&__str[16] = v13;
    memset(v20, 0, 56);
    *&v19.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v19.tm_sec);
    localtime_r(&v19.tm_sec, v20);
    strftime(__str, 0x80uLL, "%b %d %H:%M:%S", v20);
    dprintf(glog_fd, "%s ", __str);
    dprintf(glog_fd, "CCDaemon::%s:%d dirPath is invalid");
  }

LABEL_32:
  v17 = *MEMORY[0x277D85DE8];
}

void freeCCCommonResources()
{
  if (gReleaseType)
  {
    CFRelease(gReleaseType);
    gReleaseType = 0;
  }
}

void cleanCaptureDirectory(const __CFString *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v4 = CFStringGetLength(a1);
  CFStringGetCString(a1, v3, v4 + 1, 0);
  v5 = opendir(v3);
  if (v3)
  {
    free(v3);
  }

  v6 = 0;
  if (v5)
  {
    while (1)
    {
      v7 = readdir(v5);
      if (!v7)
      {
        break;
      }

      if (v7->d_name[0] != 46)
      {
        ++v6;
      }
    }

    closedir(v5);
  }

  MaxPreservedCaptures = getMaxPreservedCaptures();
  if (!v6)
  {
    goto LABEL_48;
  }

  v9 = v6 - MaxPreservedCaptures;
  if (v6 < MaxPreservedCaptures)
  {
    goto LABEL_48;
  }

  v10 = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
  v11 = CFStringGetLength(a1);
  v12 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
  v13 = CFStringGetLength(a1);
  CFStringGetCString(a1, v12, v13 + 1, 0);
  v14 = opendir(v12);
  if (v12)
  {
    free(v12);
  }

  v15 = 0;
  if (v14)
  {
    v16 = v6 > 0;
    v17 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v18 = readdir(v14);
      if (v18 == 0 || !v16)
      {
        break;
      }

      v19 = v18;
      if (v18->d_name[0] != 46)
      {
        MutableCopy = CFStringCreateMutableCopy(v17, 512, a1);
        CFStringAppendCString(MutableCopy, "/", 0);
        CFStringAppendCString(MutableCopy, v19->d_name, 0);
        v10[v15++] = MutableCopy;
        v16 = v15 < v6;
      }
    }

    closedir(v14);
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    v22 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v22, OS_LOG_TYPE_DEFAULT, "numberOfDirArrayEntries: %lld, readIndex %lld\n", buf, 0x16u);
LABEL_25:
  if (glog_fd)
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38 = v23;
    v39 = v23;
    v36 = v23;
    v37 = v23;
    v34 = v23;
    v35 = v23;
    *buf = v23;
    *&buf[16] = v23;
    memset(&v32, 0, sizeof(v32));
    v31 = 0xAAAAAAAAAAAAAAAALL;
    time(&v31);
    localtime_r(&v31, &v32);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "numberOfDirArrayEntries: %lld, readIndex %lld\n", v6, v15);
  }

  if (v6 != v15)
  {
    v24 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      v25 = v24;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 134218240;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      v25 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v25, OS_LOG_TYPE_DEFAULT, "Incorrect number [numberOfDirArrayEntries: %lld, readIndex %lld] of directory entries. Skip sorting.\n", buf, 0x16u);
LABEL_35:
    if (glog_fd)
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v38 = v26;
      v39 = v26;
      v36 = v26;
      v37 = v26;
      v34 = v26;
      v35 = v26;
      *buf = v26;
      *&buf[16] = v26;
      memset(&v32, 0, sizeof(v32));
      v31 = 0xAAAAAAAAAAAAAAAALL;
      time(&v31);
      localtime_r(&v31, &v32);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Incorrect number [numberOfDirArrayEntries: %lld, readIndex %lld] of directory entries. Skip sorting.\n", v6, v15);
    }

    goto LABEL_37;
  }

  sortByDirectoryName(v6, v10);
LABEL_37:
  if (v9 >= 1)
  {
    v27 = v10;
    do
    {
      v28 = *v27++;
      deleteDirectory(v28);
      --v9;
    }

    while (v9);
  }

  if (v15)
  {
    v29 = v10;
    do
    {
      if (*v29)
      {
        CFRelease(*v29);
      }

      *v29++ = 0;
      --v15;
    }

    while (v15);
    goto LABEL_47;
  }

  if (v10)
  {
LABEL_47:
    free(v10);
  }

LABEL_48:
  v30 = *MEMORY[0x277D85DE8];
}

void pruneDirectoryOnOSUpgrade()
{
  v51 = *MEMORY[0x277D85DE8];
  memset(__s1, 0, sizeof(__s1));
  memset(buffer, 0, sizeof(buffer));
  v0 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v1 = CFStringCreateWithCString(0, "prune_dir_os_upgrade_ctl", 0);
  v2 = CFPreferencesCopyAppValue(v1, v0);
  v3 = v2;
  if (v2)
  {
    v4 = CFStringCompare(v2, @"disable", 0) != kCFCompareEqualTo;
    if (!v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 1;
  if (v0)
  {
LABEL_3:
    CFRelease(v0);
  }

LABEL_4:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (!v4)
  {
    v12 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v13 = v12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade: activity disabled\n", buf, 2u);
LABEL_25:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v16;
      v48 = v16;
      v45 = v16;
      v46 = v16;
      v44 = v16;
      *&buf[16] = v16;
      v43 = v16;
      *buf = v16;
      memset(&v41, 0, sizeof(v41));
      SaveLocation = 0xAAAAAAAAAAAAAAAALL;
      time(&SaveLocation);
      localtime_r(&SaveLocation, &v41);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity disabled\n");
    }

    goto LABEL_69;
  }

  if (!getOsVersion(__s1))
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "pruneDirectoryOnOSUpgrade: activity enabled; failed to get osversion\n", buf, 2u);
LABEL_39:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v19;
      v48 = v19;
      v45 = v19;
      v46 = v19;
      v44 = v19;
      *&buf[16] = v19;
      v43 = v19;
      *buf = v19;
      memset(&v41, 0, sizeof(v41));
      SaveLocation = 0xAAAAAAAAAAAAAAAALL;
      time(&SaveLocation);
      localtime_r(&SaveLocation, &v41);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity enabled; failed to get osversion\n");
    }

    goto LABEL_69;
  }

  v5 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v6 = CFStringCreateWithCString(0, "prune_dir_os_upgrade_snapshot", 0);
  v7 = CFPreferencesCopyAppValue(v6, v5);
  v8 = v7;
  if (!v7 || (v9 = CFGetTypeID(v7), v9 != CFStringGetTypeID()))
  {
    v11 = 0;
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Length = CFStringGetLength(v8);
  v11 = CFStringGetCString(v8, buffer, Length + 1, 0) != 0;
  if (v5)
  {
LABEL_28:
    CFRelease(v5);
  }

LABEL_29:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (!v11 || strcmp(__s1, buffer) >= 1)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = buffer;
        *&buf[12] = 2080;
        *&buf[14] = __s1;
        v18 = v17;
LABEL_43:
        _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade: activity enabled; upgraded from %s to %s\n", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = buffer;
      *&buf[12] = 2080;
      *&buf[14] = __s1;
      v18 = MEMORY[0x277D86220];
      goto LABEL_43;
    }

    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v20;
      v48 = v20;
      v45 = v20;
      v46 = v20;
      v44 = v20;
      *&buf[16] = v20;
      v43 = v20;
      *buf = v20;
      memset(&v41, 0, sizeof(v41));
      SaveLocation = 0xAAAAAAAAAAAAAAAALL;
      time(&SaveLocation);
      localtime_r(&SaveLocation, &v41);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity enabled; upgraded from %s to %s\n", buffer, __s1);
    }

    SaveLocation = getSaveLocation(0);
    if ((CCDaemon::fIsCCDaemon & 1) != 0 || (v21 = CCDaemon::fSaveDir) == 0)
    {
      if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
      {
        v21 = "/Library/Logs/CrashReporter/CoreCapture";
      }

      else
      {
        v21 = "/Library/Logs/CoreCapture";
      }
    }

    v38 = v21;
    v22 = *MEMORY[0x277CBECE8];
    p_SaveLocation = &SaveLocation;
    v24 = 1;
    while (1)
    {
      v25 = v24;
      Mutable = CFStringCreateMutable(v22, 512);
      v27 = *p_SaveLocation;
      CFStringAppendCString(Mutable, *p_SaveLocation, 0);
      v28 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v27;
          v29 = v28;
LABEL_57:
          _os_log_impl(&dword_2452A3000, v29, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade %s\n", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v27;
        v29 = MEMORY[0x277D86220];
        goto LABEL_57;
      }

      if (glog_fd)
      {
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v47 = v30;
        v48 = v30;
        v45 = v30;
        v46 = v30;
        v44 = v30;
        *&buf[16] = v30;
        v43 = v30;
        *buf = v30;
        memset(&v41, 0, sizeof(v41));
        v39 = 0xAAAAAAAAAAAAAAAALL;
        time(&v39);
        localtime_r(&v39, &v41);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "pruneDirectoryOnOSUpgrade %s\n", v27);
      }

      deleteDirectory(Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v24 = 0;
      p_SaveLocation = &v38;
      if ((v25 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  v35 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = buffer;
      *&buf[12] = 2080;
      *&buf[14] = __s1;
      v36 = v35;
LABEL_75:
      _os_log_impl(&dword_2452A3000, v36, OS_LOG_TYPE_DEFAULT, "pruneDirectoryOnOSUpgrade: activity enabled; snapshot %s, osversion %s\n", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = buffer;
    *&buf[12] = 2080;
    *&buf[14] = __s1;
    v36 = MEMORY[0x277D86220];
    goto LABEL_75;
  }

  if (glog_fd)
  {
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47 = v37;
    v48 = v37;
    v45 = v37;
    v46 = v37;
    v44 = v37;
    *&buf[16] = v37;
    v43 = v37;
    *buf = v37;
    memset(&v41, 0, sizeof(v41));
    SaveLocation = 0xAAAAAAAAAAAAAAAALL;
    time(&SaveLocation);
    localtime_r(&SaveLocation, &v41);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "pruneDirectoryOnOSUpgrade: activity enabled; snapshot %s, osversion %s\n", buffer, __s1);
  }

LABEL_63:
  v31 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v32 = CFStringCreateWithCString(0, "prune_dir_os_upgrade_snapshot", 0);
  v33 = CFStringCreateWithCString(0, __s1, 0);
  CFPreferencesSetAppValue(v32, v33, v31);
  CFPreferencesAppSynchronize(v31);
  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

LABEL_69:
  v34 = *MEMORY[0x277D85DE8];
}

BOOL getOsVersion(char *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  *v25 = 0x4100000001;
  v16 = 32;
  v1 = sysctl(v25, 2u, a1, &v16, 0, 0);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v3 = __error();
    v4 = strerror(*v3);
    *buf = 136315138;
    *&buf[4] = v4;
    v5 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v12 = __error();
    v13 = strerror(*v12);
    *buf = 136315138;
    *&buf[4] = v13;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "getOsVersion %s\n", buf, 0xCu);
LABEL_6:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v6;
    v24 = v6;
    v21 = v6;
    v22 = v6;
    v19 = v6;
    v20 = v6;
    *buf = v6;
    v18 = v6;
    memset(&v15, 0, sizeof(v15));
    v14 = 0xAAAAAAAAAAAAAAAALL;
    time(&v14);
    localtime_r(&v14, &v15);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
    dprintf(glog_fd, "%s ", buf);
    v7 = glog_fd;
    v8 = __error();
    v9 = strerror(*v8);
    dprintf(v7, "getOsVersion %s\n", v9);
  }

LABEL_8:
  result = v1 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

const char *getSaveLocation(uint64_t a1)
{
  if ((CCDaemon::fIsCCDaemon & 1) != 0 || (result = CCDaemon::fSaveDir) == 0)
  {
    if (!isSeedAndiOS())
    {
      return "/Library/Logs/CrashReporter/CoreCapture";
    }

    if (isCarrierRelease::onceToken != -1)
    {
      dispatch_once(&isCarrierRelease::onceToken, &__block_literal_global_1265);
    }

    if (isCarrierRelease::gIsCarrierRelease == 1 && isClientValid(a1) && (v3 = isMegaWiFiProfileInstalled(), v4 = isBTLoggingProfileInstalled(), a1) && (((v5 = v4, !strncmp(a1, "WiFi", 4uLL)) ? (v6 = v3) : (v6 = 0), (v6 & 1) != 0 || *a1 == 66 && (*(a1 + 1) == 84 ? (v7 = v5) : (v7 = 0), (v7 & 1) != 0)) || (v8 = strncmp(a1, "MultiFunctionManager", 0x14uLL), (v3 | v5) == 1) && !v8))
    {
      return "/Library/Logs/CrashReporter/CoreCapture";
    }

    else
    {
      return "/Library/Logs/CoreCapture";
    }
  }

  return result;
}

const char *isClientValid(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "WiFi", 4uLL) || *v1 == 66 && v1[1] == 84)
    {
      return 1;
    }

    else
    {
      return (strncmp(v1, "MultiFunctionManager", 0x14uLL) == 0);
    }
  }

  return result;
}

uint64_t isMegaWiFiProfileInstalled()
{
  v11 = *MEMORY[0x277D85DE8];
  result = objc_opt_class();
  if (result)
  {
    v1 = [objc_msgSend(MEMORY[0x277D26298] "sharedConnection")];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v1);
          }

          if ([*(*(&v7 + 1) + 8 * i) containsString:@"wifi.megawifi"])
          {
            result = 1;
            goto LABEL_12;
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
        result = 0;
        if (v2)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t isBTLoggingProfileInstalled()
{
  v11 = *MEMORY[0x277D85DE8];
  result = objc_opt_class();
  if (result)
  {
    v1 = [objc_msgSend(MEMORY[0x277D26298] "sharedConnection")];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v1);
          }

          if ([*(*(&v7 + 1) + 8 * i) containsString:@"bluetooth.logging"])
          {
            result = 1;
            goto LABEL_12;
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
        result = 0;
        if (v2)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __isCarrierRelease_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID() && CFStringCompare(v1, @"Carrier", 0) == kCFCompareEqualTo)
    {
      isCarrierRelease::gIsCarrierRelease = 1;
    }

    CFRelease(v1);
  }
}

const char *getPossibleSaveLocation()
{
  if ((CCDaemon::fIsCCDaemon & 1) != 0 || (result = CCDaemon::fSaveDir) == 0)
  {
    if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
    {
      return "/Library/Logs/CrashReporter/CoreCapture";
    }

    else
    {
      return "/Library/Logs/CoreCapture";
    }
  }

  return result;
}

void lowPriorityActivities()
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = time(0);
  if (isSeedAndiOS())
  {
    v1 = 1;
  }

  else
  {
    v1 = 7;
  }

  v2 = CFStringCreateWithCString(0, "com.apple.corecaptured", 0x8000100u);
  v3 = CFStringCreateWithCString(0, "prune_dir_days", 0);
  v4 = CFPreferencesCopyAppValue(v3, v2);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(v5);
      v8 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      v9 = CFStringGetLength(v5);
      CFStringGetCString(v5, v8, v9 + 1, 0);
      v10 = strtol(v8, 0, 10);
      if (v8)
      {
        free(v8);
      }

      if (*__error() != 22)
      {
        goto LABEL_16;
      }

      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v12 = v11;
LABEL_40:
          _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "pruneDirectoryNDaysRead strtol EINVAL\n", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = MEMORY[0x277D86220];
        goto LABEL_40;
      }

      if (glog_fd)
      {
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v28 = v13;
        v29 = v13;
        v26 = v13;
        v27 = v13;
        v24 = v13;
        v25 = v13;
        *buf = v13;
        v23 = v13;
        memset(&v21, 0, sizeof(v21));
        v20 = 0xAAAAAAAAAAAAAAAALL;
        time(&v20);
        localtime_r(&v20, &v21);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "pruneDirectoryNDaysRead strtol EINVAL\n");
      }

      v10 = 7;
LABEL_16:
      v1 = v10 & ~(v10 >> 63);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    *&buf[4] = v1;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    *&buf[4] = v1;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "pruneDirectoryNDaysRead cap %ld\n", buf, 0xCu);
LABEL_29:
  if (glog_fd)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v16;
    v29 = v16;
    v26 = v16;
    v27 = v16;
    v24 = v16;
    v25 = v16;
    *buf = v16;
    v23 = v16;
    memset(&v21, 0, sizeof(v21));
    v20 = 0xAAAAAAAAAAAAAAAALL;
    time(&v20);
    localtime_r(&v20, &v21);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "pruneDirectoryNDaysRead cap %ld\n", v1);
  }

  if (v1)
  {
    SaveLocation = getSaveLocation(0);
    pruneDirectoryNDaysDo(SaveLocation, 1, v0, v1);
    if ((CCDaemon::fIsCCDaemon & 1) != 0 || (v18 = CCDaemon::fSaveDir) == 0)
    {
      if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
      {
        v18 = "/Library/Logs/CrashReporter/CoreCapture";
      }

      else
      {
        v18 = "/Library/Logs/CoreCapture";
      }
    }

    pruneDirectoryNDaysDo(v18, 1, v0, v1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void writeMetadataFiles(const __CFString *a1, const char *a2, time_t a3, uint64_t a4)
{
  v117 = *MEMORY[0x277D85DE8];
  v8 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  if (!v8)
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      LOWORD(v106.st_dev) = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      LOWORD(v106.st_dev) = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCFile::writeMetadataFiles failed malloc\n", &v106, 2u);
LABEL_60:
    if (glog_fd)
    {
      v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v47.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v106.st_size = v47;
      *&v106.st_blksize = v47;
      v106.st_ctimespec = v47;
      v106.st_birthtimespec = v47;
      v106.st_atimespec = v47;
      v106.st_mtimespec = v47;
      *&v106.st_dev = v47;
      *&v106.st_uid = v47;
      memset(v101, 0, 56);
      *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&valuePtr.tm_sec);
      localtime_r(&valuePtr.tm_sec, v101);
      strftime(&v106, 0x80uLL, "%b %d %H:%M:%S", v101);
      dprintf(glog_fd, "%s ", &v106);
      dprintf(glog_fd, "CCFile::writeMetadataFiles failed malloc\n");
    }

    goto LABEL_139;
  }

  v9 = v8;
  memset(&v98, 0, sizeof(v98));
  v97 = a3;
  localtime_r(&v97, &v98);
  if (!CFStringGetLength(a1))
  {
    SaveLocation = getSaveLocation(0);
    goto LABEL_9;
  }

  Length = CFStringGetLength(a1);
  v11 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v12 = CFStringGetLength(a1);
  CFStringGetCString(a1, v11, v12 + 1, 0);
  SaveLocation = getSaveLocation(v11);
  if (!v11)
  {
LABEL_9:
    snprintf(v9, 0x200uLL, "%s/[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s/%s", SaveLocation, v98.tm_year + 1900, v98.tm_mon + 1, v98.tm_mday, v98.tm_hour, v98.tm_min, v98.tm_sec, a4, a2, "Metadata");
    goto LABEL_10;
  }

  snprintf(v9, 0x200uLL, "%s/%s/[%04d-%02d-%02d_%02d,%02d,%02d.%06llu]=%s/%s", SaveLocation, v11, v98.tm_year + 1900, v98.tm_mon + 1, v98.tm_mday, v98.tm_hour, v98.tm_min, v98.tm_sec, a4, a2, "Metadata");
  free(v11);
LABEL_10:
  v16 = strdup(v9);
  v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v106.st_blksize = v17;
  *v106.st_qspare = v17;
  v106.st_birthtimespec = v17;
  *&v106.st_size = v17;
  v106.st_mtimespec = v17;
  v106.st_ctimespec = v17;
  *&v106.st_uid = v17;
  v106.st_atimespec = v17;
  *&v106.st_dev = v17;
  for (i = *v16 == 47; v16[i] != 47; ++i)
  {
    if (!v16[i])
    {
      free(v16);
      if (mkdir(v9, 0x1EDu))
      {
        goto LABEL_138;
      }

      *&valuePtr.tm_sec = a3;
      *&valuePtr.tm_hour = a4;
      v19 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = CFNumberCreate(v19, kCFNumberSInt64Type, &valuePtr);
      CFDictionarySetValue(Mutable, @"Time secs", v21);
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = CFNumberCreate(v19, kCFNumberSInt64Type, &valuePtr.tm_hour);
      CFDictionarySetValue(Mutable, @"Time usecs", v22);
      if (v22)
      {
        CFRelease(v22);
      }

      memset(&v106, 0, 80);
      memset(v101, 0, 56);
      v23 = localtime_r(&valuePtr.tm_sec, v101);
      v24 = asctime(v23);
      if (v24)
      {
        v25 = v24;
        v26 = strchr(v24, 10);
        if (v26)
        {
          *v26 = 0;
        }

        strlcpy(&v106, v25, 0x50uLL);
      }

      v27 = CFStringCreateWithCString(0, &v106, 0);
      CFDictionarySetValue(Mutable, @"Time localtime", v27);
      if (v27)
      {
        CFRelease(v27);
      }

      v28 = CFStringCreateWithCString(0, "/System/Library/Extensions/corecapture.kext/Contents/version.plist", 0);
      v29 = CFURLCreateWithFileSystemPath(v19, v28, kCFURLPOSIXPathStyle, 0);
      v30 = CFReadStreamCreateWithFile(v19, v29);
      if (v30)
      {
        v31 = v30;
        v32 = CFReadStreamOpen(v30) ? CFPropertyListCreateWithStream(v19, v31, 0, 2uLL, 0, 0) : 0;
        CFReadStreamClose(v31);
        CFRelease(v31);
        if (v32)
        {
          Value = CFDictionaryGetValue(v32, @"SourceVersion");
          if (Value)
          {
            v34 = Value;
            v35 = CFGetTypeID(Value);
            if (v35 == CFStringGetTypeID())
            {
              CFDictionarySetValue(Mutable, @"SourceVersion", v34);
            }
          }

          CFRelease(v32);
        }
      }

      if (v29)
      {
        CFRelease(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v36 = CFUUIDCreate(0);
      v37 = CFUUIDCreateString(0, v36);
      CFDictionarySetValue(Mutable, @"UUID", v37);
      if (v37)
      {
        CFRelease(v37);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      v38 = CFStringCreateWithCString(0, v9, 0);
      MutableCopy = CFStringCreateMutableCopy(v19, 512, v38);
      CFStringAppendCString(MutableCopy, "/", 0);
      CFStringAppendCString(MutableCopy, "capture.plist", 0);
      writeMetadataFile(Mutable, MutableCopy);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v116 = 0xAAAAAAAAAAAAAAAALL;
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v115[0] = v40;
      v115[1] = v40;
      *&valuePtr.tm_sec = 0x200000006;
      *&v114[0] = 40;
      if (!sysctl(&valuePtr.tm_sec, 2u, v115, v114, 0, 0))
      {
LABEL_69:
        *&v53 = 0xAAAAAAAAAAAAAAAALL;
        *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v114[0] = v53;
        v114[1] = v53;
        getOsVersion(v114);
        v54 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v54)
        {
          v55 = v54;
          v56 = CFStringCreateWithCString(v19, v115, 0);
          if (v56)
          {
            v57 = v56;
            CFDictionarySetValue(v55, @"hw.model", v56);
            CFRelease(v57);
            v58 = CFStringCreateWithCString(v19, v114, 0);
            if (v58)
            {
              v59 = v58;
              CFDictionarySetValue(v55, @"osversion", v58);
              CFRelease(v59);
              v60 = CCProfileMonitor::fProfileLoaded;
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v107 = 0u;
              memset(&v106, 0, sizeof(v106));
              if (CCProfileMonitor::fProfileLoaded)
              {
                if (CCProfileMonitor::fProfileLoaded)
                {
                  v61 = strlen(&v106);
                  strncat(&v106, "BT ", 255 - v61);
                }

                if ((v60 & 2) != 0)
                {
                  v62 = strlen(&v106);
                  strncat(&v106, "WiFi ", 255 - v62);
                }

                v63 = strlen(&v106);
                if (v63)
                {
                  *(&v106 + v63 - 1) = 0;
                }
              }

              else
              {
                v71 = strlen(&v106);
                strncat(&v106, "None", 255 - v71);
              }

              v72 = CFStringCreateWithCString(v19, &v106, 0);
              if (v72)
              {
                v73 = v72;
                CFDictionarySetValue(v55, @"ProfileLoaded", v72);
                CFRelease(v73);
              }

              if (getReleaseType(void)::onceToken != -1)
              {
                dispatch_once(&getReleaseType(void)::onceToken, &__block_literal_global_133);
              }

              if (gReleaseType)
              {
                v74 = gReleaseType;
              }

              else
              {
                v74 = @"User";
              }

              CFDictionarySetValue(v55, @"BuildVariant", v74);
              v75 = atomic_load(gBootArgsParsed);
              if ((v75 & 1) == 0)
              {
                *v101 = 256;
                if (!sysctlbyname("kern.bootargs", gBootArgs, v101, 0, 0))
                {
                  byte_27EE11C50 = 0;
                }
              }

              v76 = CFStringCreateWithCString(v19, gBootArgs, 0);
              if (v76)
              {
                v77 = v76;
                CFDictionarySetValue(v55, @"BootArgs", v76);
                CFRelease(v77);
              }

              if (getDeviceFusing(void)::onceToken != -1)
              {
                dispatch_once(&getDeviceFusing(void)::onceToken, &__block_literal_global_138);
              }

              if (gDeviceFusing)
              {
                v78 = gDeviceFusing;
              }

              else
              {
                v78 = @"Unknown";
              }

              CFDictionarySetValue(v55, @"DeviceFusing", v78);
              v79 = CFStringCreateWithCString(v19, v9, 0);
              if (v79)
              {
                v80 = v79;
                v81 = CFStringCreateMutableCopy(v19, 512, v79);
                if (v81)
                {
                  v82 = v81;
                  CFStringAppendCString(v81, "/", 0);
                  CFStringAppendCString(v82, "system.plist", 0);
                  writeMetadataFile(v55, v82);
                  CFRelease(v55);
                  CFRelease(v80);
                  v80 = v82;
LABEL_136:
                  v91 = v80;
                  goto LABEL_137;
                }

                v88 = coreCaptureOsLog;
                if (coreCaptureOsLog)
                {
                  if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                  {
                    *v101 = 136315394;
                    *&v101[4] = "writeMetadataSystemPlist";
                    *&v101[12] = 1024;
                    *&v101[14] = 1043;
                    v89 = v88;
LABEL_153:
                    _os_log_error_impl(&dword_2452A3000, v89, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", v101, 0x12u);
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *v101 = 136315394;
                  *&v101[4] = "writeMetadataSystemPlist";
                  *&v101[12] = 1024;
                  *&v101[14] = 1043;
                  v89 = MEMORY[0x277D86220];
                  goto LABEL_153;
                }

                if (glog_fd)
                {
                  *&v93 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v104 = v93;
                  v105 = v93;
                  v102 = v93;
                  v103 = v93;
                  *&v101[32] = v93;
                  *&v101[48] = v93;
                  *v101 = v93;
                  *&v101[16] = v93;
                  memset(&valuePtr, 0, sizeof(valuePtr));
                  v99 = 0xAAAAAAAAAAAAAAAALL;
                  time(&v99);
                  localtime_r(&v99, &valuePtr);
                  strftime(v101, 0x80uLL, "%b %d %H:%M:%S", &valuePtr);
                  dprintf(glog_fd, "%s ", v101);
                  dprintf(glog_fd, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", 1043);
                }

                CFRelease(v55);
                goto LABEL_136;
              }

              v83 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *v101 = 136315394;
                  *&v101[4] = "writeMetadataSystemPlist";
                  *&v101[12] = 1024;
                  *&v101[14] = 1036;
                  v84 = v83;
LABEL_151:
                  _os_log_error_impl(&dword_2452A3000, v84, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", v101, 0x12u);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *v101 = 136315394;
                *&v101[4] = "writeMetadataSystemPlist";
                *&v101[12] = 1024;
                *&v101[14] = 1036;
                v84 = MEMORY[0x277D86220];
                goto LABEL_151;
              }

              if (glog_fd)
              {
                *&v92 = 0xAAAAAAAAAAAAAAAALL;
                *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v104 = v92;
                v105 = v92;
                v102 = v92;
                v103 = v92;
                *&v101[32] = v92;
                *&v101[48] = v92;
                *v101 = v92;
                *&v101[16] = v92;
                memset(&valuePtr, 0, sizeof(valuePtr));
                v99 = 0xAAAAAAAAAAAAAAAALL;
                time(&v99);
                localtime_r(&v99, &valuePtr);
                strftime(v101, 0x80uLL, "%b %d %H:%M:%S", &valuePtr);
                dprintf(glog_fd, "%s ", v101);
                dprintf(glog_fd, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", 1036);
              }

              v80 = v55;
              goto LABEL_136;
            }

            v68 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_122;
              }

              v106.st_dev = 136315394;
              *&v106.st_mode = "writeMetadataSystemPlist";
              WORD2(v106.st_ino) = 1024;
              *(&v106.st_ino + 6) = 979;
              v69 = v68;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_122;
              }

              v106.st_dev = 136315394;
              *&v106.st_mode = "writeMetadataSystemPlist";
              WORD2(v106.st_ino) = 1024;
              *(&v106.st_ino + 6) = 979;
              v69 = MEMORY[0x277D86220];
            }

            _os_log_error_impl(&dword_2452A3000, v69, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", &v106, 0x12u);
LABEL_122:
            if (glog_fd)
            {
              v90.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              v90.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
              *&v106.st_size = v90;
              *&v106.st_blksize = v90;
              v106.st_ctimespec = v90;
              v106.st_birthtimespec = v90;
              v106.st_atimespec = v90;
              v106.st_mtimespec = v90;
              *&v106.st_dev = v90;
              *&v106.st_uid = v90;
              memset(v101, 0, 56);
              *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
              time(&valuePtr.tm_sec);
              localtime_r(&valuePtr.tm_sec, v101);
              strftime(&v106, 0x80uLL, "%b %d %H:%M:%S", v101);
              dprintf(glog_fd, "%s ", &v106);
              v86 = glog_fd;
              v87 = 979;
              goto LABEL_124;
            }

            goto LABEL_125;
          }

          v66 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_116;
            }

            v106.st_dev = 136315394;
            *&v106.st_mode = "writeMetadataSystemPlist";
            WORD2(v106.st_ino) = 1024;
            *(&v106.st_ino + 6) = 969;
            v67 = v66;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_116;
            }

            v106.st_dev = 136315394;
            *&v106.st_mode = "writeMetadataSystemPlist";
            WORD2(v106.st_ino) = 1024;
            *(&v106.st_ino + 6) = 969;
            v67 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v67, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", &v106, 0x12u);
LABEL_116:
          if (glog_fd)
          {
            v85.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            v85.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            *&v106.st_size = v85;
            *&v106.st_blksize = v85;
            v106.st_ctimespec = v85;
            v106.st_birthtimespec = v85;
            v106.st_atimespec = v85;
            v106.st_mtimespec = v85;
            *&v106.st_dev = v85;
            *&v106.st_uid = v85;
            memset(v101, 0, 56);
            *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
            time(&valuePtr.tm_sec);
            localtime_r(&valuePtr.tm_sec, v101);
            strftime(&v106, 0x80uLL, "%b %d %H:%M:%S", v101);
            dprintf(glog_fd, "%s ", &v106);
            v86 = glog_fd;
            v87 = 969;
LABEL_124:
            dprintf(v86, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", v87);
          }

LABEL_125:
          v91 = v55;
LABEL_137:
          CFRelease(v91);
          goto LABEL_138;
        }

        v64 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_89;
          }

          v106.st_dev = 136315394;
          *&v106.st_mode = "writeMetadataSystemPlist";
          WORD2(v106.st_ino) = 1024;
          *(&v106.st_ino + 6) = 963;
          v65 = v64;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_89;
          }

          v106.st_dev = 136315394;
          *&v106.st_mode = "writeMetadataSystemPlist";
          WORD2(v106.st_ino) = 1024;
          *(&v106.st_ino + 6) = 963;
          v65 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v65, OS_LOG_TYPE_ERROR, "%s:%06u failed to allocate memory\n", &v106, 0x12u);
LABEL_89:
        if (glog_fd)
        {
          v70.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v70.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v106.st_size = v70;
          *&v106.st_blksize = v70;
          v106.st_ctimespec = v70;
          v106.st_birthtimespec = v70;
          v106.st_atimespec = v70;
          v106.st_mtimespec = v70;
          *&v106.st_dev = v70;
          *&v106.st_uid = v70;
          memset(v101, 0, 56);
          *&valuePtr.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&valuePtr.tm_sec);
          localtime_r(&valuePtr.tm_sec, v101);
          strftime(&v106, 0x80uLL, "%b %d %H:%M:%S", v101);
          dprintf(glog_fd, "%s ", &v106);
          dprintf(glog_fd, "%s:%06u failed to allocate memory\n", "writeMetadataSystemPlist", 963);
        }

        goto LABEL_138;
      }

      v41 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        v42 = __error();
        v43 = strerror(*v42);
        v106.st_dev = 136315138;
        *&v106.st_mode = v43;
        v44 = v41;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        v95 = __error();
        v96 = strerror(*v95);
        v106.st_dev = 136315138;
        *&v106.st_mode = v96;
        v44 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v44, OS_LOG_TYPE_ERROR, "getHwModel %s\n", &v106, 0xCu);
LABEL_67:
      if (glog_fd)
      {
        v49.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v49.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v106.st_size = v49;
        *&v106.st_blksize = v49;
        v106.st_ctimespec = v49;
        v106.st_birthtimespec = v49;
        v106.st_atimespec = v49;
        v106.st_mtimespec = v49;
        *&v106.st_dev = v49;
        *&v106.st_uid = v49;
        memset(v101, 0, 56);
        v99 = 0xAAAAAAAAAAAAAAAALL;
        time(&v99);
        localtime_r(&v99, v101);
        strftime(&v106, 0x80uLL, "%b %d %H:%M:%S", v101);
        dprintf(glog_fd, "%s ", &v106);
        v50 = glog_fd;
        v51 = __error();
        v52 = strerror(*v51);
        dprintf(v50, "getHwModel %s\n", v52);
      }

      goto LABEL_69;
    }

LABEL_18:
    ;
  }

  v16[i] = 0;
  if (stat(v16, &v106))
  {
    mkdir(v16, 0x1EDu);
LABEL_17:
    v16[i] = 47;
    goto LABEL_18;
  }

  if ((v106.st_mode & 0xF000) == 0x4000)
  {
    goto LABEL_17;
  }

  v45 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *v101 = 136315394;
      *&v101[4] = v9;
      *&v101[12] = 2080;
      *&v101[14] = v16;
      v46 = v45;
      goto LABEL_141;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v101 = 136315394;
    *&v101[4] = v9;
    *&v101[12] = 2080;
    *&v101[14] = v16;
    v46 = MEMORY[0x277D86220];
LABEL_141:
    _os_log_error_impl(&dword_2452A3000, v46, OS_LOG_TYPE_ERROR, "CCFile::mkpath fails to create path '%s' as '%s' is not a directory\n", v101, 0x16u);
  }

  if (glog_fd)
  {
    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v104 = v48;
    v105 = v48;
    v102 = v48;
    v103 = v48;
    *&v101[32] = v48;
    *&v101[48] = v48;
    *v101 = v48;
    *&v101[16] = v48;
    memset(&valuePtr, 0, sizeof(valuePtr));
    *&v115[0] = 0xAAAAAAAAAAAAAAAALL;
    time(v115);
    localtime_r(v115, &valuePtr);
    strftime(v101, 0x80uLL, "%b %d %H:%M:%S", &valuePtr);
    dprintf(glog_fd, "%s ", v101);
    dprintf(glog_fd, "CCFile::mkpath fails to create path '%s' as '%s' is not a directory\n", v9, v16);
  }

  free(v16);
LABEL_138:
  free(v9);
LABEL_139:
  v94 = *MEMORY[0x277D85DE8];
}

void writeMetadataFile(const __CFDictionary *a1, CFStringRef theString)
{
  if (ifSeedCreateClassCProtectedFileAtCFStringPath(theString))
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], theString, kCFURLPOSIXPathStyle, 0);
    v6 = CFWriteStreamCreateWithFile(v4, v5);
    v7 = v6;
    if (v6 && CFWriteStreamOpen(v6))
    {
      CFPropertyListWrite(a1, v7, kCFPropertyListXMLFormat_v1_0, 0, 0);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v7)
    {
      CFWriteStreamClose(v7);

      CFRelease(v7);
    }
  }
}

void ___ZL15getDeviceFusingv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      v3 = CFEqual(v1, *MEMORY[0x277CBED28]);
      v4 = @"Prod";
      if (!v3)
      {
        v4 = @"Dev";
      }

      gDeviceFusing = v4;
    }

    CFRelease(v1);
  }
}

void ___ZL14getReleaseTypev_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      gReleaseType = v1;
    }

    else
    {

      CFRelease(v1);
    }
  }
}

const __CFString *ifSeedCreateClassCProtectedFileAtCFStringPath(CFStringRef theString)
{
  ClassCProtectedFile = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v4 = CFStringGetLength(ClassCProtectedFile);
    if (!CFStringGetCString(ClassCProtectedFile, v3, v4 + 1, 0))
    {
      ClassCProtectedFile = 0;
      if (!v3)
      {
        return ClassCProtectedFile;
      }

      goto LABEL_4;
    }

    ClassCProtectedFile = ifSeedCreateClassCProtectedFile(v3);
    if (v3)
    {
LABEL_4:
      free(v3);
    }
  }

  return ClassCProtectedFile;
}

uint64_t validCFObjectReference(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    v7 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 136315138;
      *&buf[4] = a1;
      v8 = v7;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 136315138;
      *&buf[4] = a1;
      v8 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "%s NULL value.\n", buf, 0xCu);
LABEL_11:
    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v11;
      v23 = v11;
      v20 = v11;
      v21 = v11;
      v18 = v11;
      v19 = v11;
      *buf = v11;
      *&buf[16] = v11;
      memset(&v16, 0, sizeof(v16));
      v15 = 0xAAAAAAAAAAAAAAAALL;
      time(&v15);
      localtime_r(&v15, &v16);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v16);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s NULL value.\n");
    }

    goto LABEL_16;
  }

  if (CFGetTypeID(cf) != a3)
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *&buf[24] = CFGetTypeID(cf);
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *&buf[24] = CFGetTypeID(cf);
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "%s Unexpected CF object type ID. Expected (%lu), have (%lu) \n", buf, 0x20u);
LABEL_14:
    if (glog_fd)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v12;
      v23 = v12;
      v20 = v12;
      v21 = v12;
      v18 = v12;
      v19 = v12;
      *buf = v12;
      *&buf[16] = v12;
      memset(&v16, 0, sizeof(v16));
      v15 = 0xAAAAAAAAAAAAAAAALL;
      time(&v15);
      localtime_r(&v15, &v16);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v16);
      dprintf(glog_fd, "%s ", buf);
      v13 = glog_fd;
      CFGetTypeID(cf);
      dprintf(v13, "%s Unexpected CF object type ID. Expected (%lu), have (%lu) \n");
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  result = 1;
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void addSystemInformationToDict(__CFDictionary *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v10 = -1431655766;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v14 = v6;
    v15 = v6;
    *v12 = v6;
    v13 = v6;
    v11[1] = 0xAAAAAAAAAAAAAAAALL;
    add_ull_to_dict("mach-absolute-time", a2, Mutable);
    v11[0] = 0x1700000006;
    v9 = 4;
    if (!sysctl(v11, 2u, &v10, &v9, 0, 0))
    {
      add_ull_to_dict("tick-frequency", v10, v5);
    }

    v11[0] = 0x4100000001;
    v9 = 32;
    if (!sysctl(v11, 2u, v14, &v9, 0, 0))
    {
      HIBYTE(v15) = 0;
      add_cstr_to_dict("os-version", v14, v5);
    }

    v11[0] = 0x200000006;
    v9 = 32;
    if (!sysctl(v11, 2u, v12, &v9, 0, 0))
    {
      HIBYTE(v13) = 0;
      add_cstr_to_dict("hw-model", v12, v5);
    }

    v7 = atomic_load(gBootArgsParsed);
    if ((v7 & 1) == 0)
    {
      v9 = 256;
      if (!sysctlbyname("kern.bootargs", gBootArgs, &v9, 0, 0))
      {
        byte_27EE11C50 = 0;
      }
    }

    add_cstr_to_dict("boot-args", gBootArgs, v5);
    add_cftype_to_dict("DeviceInfo", v5, a1);
    CFRelease(v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void add_ull_to_dict(const char *a1, uint64_t a2, __CFDictionary *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongLongType, v8);
  if (v5)
  {
    v6 = v5;
    add_cftype_to_dict(a1, v5, a3);
    CFRelease(v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void add_cstr_to_dict(const char *a1, char *a2, __CFDictionary *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0);
  if (v5)
  {
    v6 = v5;
    add_cftype_to_dict(a1, v5, a3);

    CFRelease(v6);
  }
}

void add_cftype_to_dict(const char *cStr, const void *a2, __CFDictionary *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a3, v5, a2);

    CFRelease(v6);
  }
}

uint64_t isCarrierRelease()
{
  if (isCarrierRelease::onceToken != -1)
  {
    dispatch_once(&isCarrierRelease::onceToken, &__block_literal_global_1265);
  }

  return isCarrierRelease::gIsCarrierRelease;
}

uint64_t copyCFStringRefToXPCDictionary(const __CFString *a1, void *a2, const char *a3)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if ((MaximumSizeForEncoding & 0x8000000000000000) == 0)
  {
    v8 = MaximumSizeForEncoding;
    v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      if (CFStringGetCString(a1, v9, v8 + 1, 0x8000100u))
      {
        xpc_dictionary_set_string(a2, a3, v10);
      }

      free(v10);
    }
  }

  return 0;
}

uint64_t CCIOReporterFormatter::initWithRegistryEntry(CCIOReporterFormatter *this, io_object_t object)
{
  *(this + 8) = object;
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

CFIndex CCIOReporterFormatter::writeLog(CCIOReporterFormatter *a1, uint64_t a2, const UInt8 *a3, size_t a4, const void *a5, size_t a6)
{
  v96 = *MEMORY[0x277D85DE8];
  if (!a2 || (v6 = a3) == 0)
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buffer = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buffer = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog Unexpected log data \n", buffer, 2u);
LABEL_11:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v16;
      v87 = v16;
      v84 = v16;
      v85 = v16;
      v82 = v16;
      v83 = v16;
      *buffer = v16;
      *&buffer[16] = v16;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog Unexpected log data \n");
    }

    goto LABEL_40;
  }

  v9 = a4;
  if (a4)
  {
    goto LABEL_16;
  }

  v12 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v13 = v12;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v13 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Inconsistent data (1) length=%lu\n", buffer, 0xCu);
LABEL_14:
  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v86 = v17;
    v87 = v17;
    v84 = v17;
    v85 = v17;
    v82 = v17;
    v83 = v17;
    *buffer = v17;
    *&buffer[16] = v17;
    memset(v76, 0, 56);
    *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v73.tm_sec);
    localtime_r(&v73.tm_sec, v76);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Inconsistent data (1) length=%lu\n", 0);
  }

LABEL_16:
  if (!a5 || a6)
  {
    goto LABEL_24;
  }

  v18 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v19 = v18;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buffer = 134217984;
    *&buffer[4] = 0;
    v19 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Inconsistent data (2) lengthContinue=%lu\n", buffer, 0xCu);
LABEL_22:
  if (glog_fd)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v86 = v20;
    v87 = v20;
    v84 = v20;
    v85 = v20;
    v82 = v20;
    v83 = v20;
    *buffer = v20;
    *&buffer[16] = v20;
    memset(v76, 0, 56);
    *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v73.tm_sec);
    localtime_r(&v73.tm_sec, v76);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Inconsistent data (2) lengthContinue=%lu\n", 0);
  }

LABEL_24:
  v21 = *(a2 + 24);
  v22 = a6 + v9;
  if (a6 + v9 == v21)
  {
    goto LABEL_31;
  }

  v23 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buffer = 67109632;
    *&buffer[4] = v21;
    *&buffer[8] = 2048;
    *&buffer[10] = v9;
    *&buffer[18] = 2048;
    *&buffer[20] = a6;
    v24 = v23;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buffer = 67109632;
    *&buffer[4] = v21;
    *&buffer[8] = 2048;
    *&buffer[10] = v9;
    *&buffer[18] = 2048;
    *&buffer[20] = a6;
    v24 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Inconsistent data (3) payloadLength=%d, length=%lu, lengthContinue=%lu\n", buffer, 0x1Cu);
LABEL_29:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v86 = v25;
    v87 = v25;
    v84 = v25;
    v85 = v25;
    v82 = v25;
    v83 = v25;
    *buffer = v25;
    *&buffer[16] = v25;
    memset(v76, 0, 56);
    *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v73.tm_sec);
    localtime_r(&v73.tm_sec, v76);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Inconsistent data (3) payloadLength=%d, length=%lu, lengthContinue=%lu\n", *(a2 + 24), v9, a6);
  }

LABEL_31:
  if (v22 <= 3)
  {
    v26 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      v27 = 0x27EE11000;
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buffer = 134217984;
      *&buffer[4] = v22;
      v28 = v26;
    }

    else
    {
      v27 = 0x27EE11000uLL;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buffer = 134217984;
      *&buffer[4] = v22;
      v28 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v28, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Insufficient length=%lu to hold IOReporterHeader_t\n", buffer, 0xCu);
LABEL_38:
    if (*(v27 + 2856))
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v30;
      v87 = v30;
      v84 = v30;
      v85 = v30;
      v82 = v30;
      v83 = v30;
      *buffer = v30;
      *&buffer[16] = v30;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(*(v27 + 2856), "%s ", buffer);
      dprintf(*(v27 + 2856), "CCIOReporterFormatter::writeLog  Insufficient length=%lu to hold IOReporterHeader_t\n");
    }

LABEL_40:
    v31 = 0;
    goto LABEL_41;
  }

  if (a5)
  {
    v29 = malloc_type_malloc(a6 + v9, 0x100004077774924uLL);
    memcpy(v29, v6, v9);
    memcpy(&v29[v9], a5, a6);
    v9 += a6;
    v6 = v29;
  }

  else
  {
    v29 = 0;
  }

  v34 = *MEMORY[0x277CBECE8];
  v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, v6);
  valuePtr = *(a2 + 35);
  v36 = CFNumberCreate(v34, kCFNumberSInt32Type, &valuePtr);
  v37 = CFDataCreateWithBytesNoCopy(0, v6 + 4, v9 - 4, *MEMORY[0x277CBED00]);
  v38 = v37;
  err = 0;
  if (!v37 || !CFDataGetLength(v37))
  {
    v51 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buffer = 0;
      v52 = v51;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buffer = 0;
      v52 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v52, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Can't copy rawData\n", buffer, 2u);
LABEL_63:
    if (glog_fd)
    {
      *&v55 = 0xAAAAAAAAAAAAAAAALL;
      *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v55;
      v87 = v55;
      v84 = v55;
      v85 = v55;
      v82 = v55;
      v83 = v55;
      *buffer = v55;
      *&buffer[16] = v55;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Can't copy rawData\n");
    }

    goto LABEL_68;
  }

  ChannelsForStreamAndSubscription = CCIOReporterFormatter::getChannelsForStreamAndSubscription(a1, v36, v35);
  if (!ChannelsForStreamAndSubscription || !CFDictionaryGetCount(ChannelsForStreamAndSubscription))
  {
    v53 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buffer = 0;
      v54 = v53;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buffer = 0;
      v54 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v54, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog  Didn't find channels\n", buffer, 2u);
LABEL_66:
    if (glog_fd)
    {
      *&v56 = 0xAAAAAAAAAAAAAAAALL;
      *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v56;
      v87 = v56;
      v84 = v56;
      v85 = v56;
      v82 = v56;
      v83 = v56;
      *buffer = v56;
      *&buffer[16] = v56;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog  Didn't find channels\n");
    }

LABEL_68:
    v44 = 0;
    v50 = 0;
    v46 = 0;
    v41 = 0;
LABEL_69:
    v31 = 0;
    goto LABEL_70;
  }

  SamplesRaw = IOReportCreateSamplesRaw();
  v41 = SamplesRaw;
  if (!SamplesRaw)
  {
    v43 = err;
    goto LABEL_87;
  }

  Count = CFDictionaryGetCount(SamplesRaw);
  v43 = err;
  if (!Count || err)
  {
LABEL_87:
    v92 = xmmword_2452E9D60;
    v93 = unk_2452E9D70;
    v94 = xmmword_2452E9D80;
    v95 = unk_2452E9D90;
    v88 = xmmword_2452E9D20;
    v89 = unk_2452E9D30;
    v90 = xmmword_2452E9D40;
    v91 = unk_2452E9D50;
    v84 = xmmword_2452E9CE0;
    v85 = unk_2452E9CF0;
    v86 = xmmword_2452E9D00;
    v87 = unk_2452E9D10;
    *buffer = *"<unknown>";
    *&buffer[16] = *&algn_2452E9CAA[6];
    v82 = xmmword_2452E9CC0;
    v83 = unk_2452E9CD0;
    if (v43)
    {
      v57 = CFErrorCopyFailureReason(v43);
      if (v57)
      {
        v58 = v57;
        CFStringGetCString(v57, buffer, 256, 0x8000100u);
        CFRelease(v58);
      }

      CFRelease(err);
    }

    v59 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *v76 = 0;
        v60 = v59;
LABEL_134:
        _os_log_error_impl(&dword_2452A3000, v60, OS_LOG_TYPE_ERROR, "IOReportCreateSamplesRaw() returned 0 sized dictionary", v76, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v76 = 0;
      v60 = MEMORY[0x277D86220];
      goto LABEL_134;
    }

    if (glog_fd)
    {
      *&v61 = 0xAAAAAAAAAAAAAAAALL;
      *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v79 = v61;
      v80 = v61;
      v77 = v61;
      v78 = v61;
      *&v76[48] = v61;
      *&v76[16] = v61;
      *&v76[32] = v61;
      *v76 = v61;
      memset(&v73, 0, sizeof(v73));
      v72 = 0xAAAAAAAAAAAAAAAALL;
      time(&v72);
      localtime_r(&v72, &v73);
      strftime(v76, 0x80uLL, "%b %d %H:%M:%S", &v73);
      dprintf(glog_fd, "%s ", v76);
      dprintf(glog_fd, "IOReportCreateSamplesRaw() returned 0 sized dictionary");
    }

    v44 = 0;
    v46 = 0;
    v31 = 0;
    v50 = v41;
    v41 = 0;
    goto LABEL_70;
  }

  addSystemInformationToDict(v41, *(a2 + 28) & 0xFFFFFFFFFFFFFFLL);
  v44 = CCIOReporterFormatter::writeTimeString(a1, a2);
  if (v44)
  {
    CFDictionarySetValue(v41, @"Time", v44);
  }

  Data = CFPropertyListCreateData(0, v41, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v46 = Data;
  if (!Data)
  {
    v62 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buffer = 0;
      v63 = v62;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buffer = 0;
      v63 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v63, OS_LOG_TYPE_ERROR, "CFPropertyListCreateData() failed", buffer, 2u);
LABEL_117:
    if (glog_fd)
    {
      *&v66 = 0xAAAAAAAAAAAAAAAALL;
      *(&v66 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v66;
      v87 = v66;
      v84 = v66;
      v85 = v66;
      v82 = v66;
      v83 = v66;
      *buffer = v66;
      *&buffer[16] = v66;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CFPropertyListCreateData() failed");
    }

LABEL_119:
    v67 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0;
        v68 = v67;
LABEL_136:
        _os_log_error_impl(&dword_2452A3000, v68, OS_LOG_TYPE_ERROR, "CFDataGetBytePtr() failed", buffer, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buffer = 0;
      v68 = MEMORY[0x277D86220];
      goto LABEL_136;
    }

    if (glog_fd)
    {
      *&v69 = 0xAAAAAAAAAAAAAAAALL;
      *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v69;
      v87 = v69;
      v84 = v69;
      v85 = v69;
      v82 = v69;
      v83 = v69;
      *buffer = v69;
      *&buffer[16] = v69;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CFDataGetBytePtr() failed");
    }

    v50 = 0;
    goto LABEL_69;
  }

  if (!CFDataGetBytePtr(Data))
  {
    goto LABEL_119;
  }

  Length = CFDataGetLength(v46);
  BytePtr = CFDataGetBytePtr(v46);
  v31 = Length - 173;
  ++*(a1 + 46);
  v49 = (*(*a1 + 112))(a1, BytePtr + 164, v31);
  if (v49 != v31)
  {
    v71 = v49;
    v64 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buffer = 134218240;
        *&buffer[4] = v31;
        *&buffer[12] = 2048;
        *&buffer[14] = v71;
        v65 = v64;
LABEL_140:
        _os_log_error_impl(&dword_2452A3000, v65, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", buffer, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buffer = 134218240;
      *&buffer[4] = v31;
      *&buffer[12] = 2048;
      *&buffer[14] = v71;
      v65 = MEMORY[0x277D86220];
      goto LABEL_140;
    }

    if (glog_fd)
    {
      *&v70 = 0xAAAAAAAAAAAAAAAALL;
      *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v86 = v70;
      v87 = v70;
      v84 = v70;
      v85 = v70;
      v82 = v70;
      v83 = v70;
      *buffer = v70;
      *&buffer[16] = v70;
      memset(v76, 0, 56);
      *&v73.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v73.tm_sec);
      localtime_r(&v73.tm_sec, v76);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", buffer);
      dprintf(glog_fd, "CCIOReporterFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", v31, v71);
    }

    v50 = 0;
    v31 = v71;
    goto LABEL_70;
  }

  v50 = 0;
LABEL_70:
  if (v29)
  {
    free(v29);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

LABEL_41:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

const __CFArray *CCIOReporterFormatter::getChannelsForStreamAndSubscription(CCIOReporterFormatter *this, const __CFNumber *a2, const __CFNumber *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  result = *(this + 6);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      if (i >= CFArrayGetCount(result))
      {
        goto LABEL_38;
      }

      result = CFArrayGetValueAtIndex(*(this + 6), i);
      if (!result)
      {
        goto LABEL_39;
      }

      v7 = result;
      v8 = CFGetTypeID(result);
      if (v8 != CFDictionaryGetTypeID())
      {
LABEL_38:
        result = 0;
        goto LABEL_39;
      }

      Value = CFDictionaryGetValue(v7, @"Id");
      if (!Value)
      {
        break;
      }

      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 != CFNumberGetTypeID())
      {
        v18 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "Id";
            v19 = v18;
            goto LABEL_26;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "Id";
          v19 = MEMORY[0x277D86220];
LABEL_26:
          _os_log_impl(&dword_2452A3000, v19, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  key %s has wrong type in dictionary\n", buf, 0xCu);
        }

        if (glog_fd)
        {
          *&v21 = 0xAAAAAAAAAAAAAAAALL;
          *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v35 = v21;
          v36 = v21;
          v33 = v21;
          v34 = v21;
          v31 = v21;
          v32 = v21;
          *buf = v21;
          v30 = v21;
          memset(&v28, 0, sizeof(v28));
          v27 = 0xAAAAAAAAAAAAAAAALL;
          time(&v27);
          localtime_r(&v27, &v28);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  key %s has wrong type in dictionary\n");
        }

        goto LABEL_29;
      }

      if (CFNumberCompare(v10, a2, 0) == kCFCompareEqualTo)
      {
        v12 = CFDictionaryGetValue(v7, @"CCIOReportStream");
        if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), TypeID = CFArrayGetTypeID(), v14 != TypeID))
        {
          v22 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "CCIOReportStream";
              v23 = v22;
              goto LABEL_35;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "CCIOReportStream";
            v23 = MEMORY[0x277D86220];
LABEL_35:
            _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  Couldnt find %s\n", buf, 0xCu);
          }

          if (glog_fd)
          {
            *&v24 = 0xAAAAAAAAAAAAAAAALL;
            *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v35 = v24;
            v36 = v24;
            v33 = v24;
            v34 = v24;
            v31 = v24;
            v32 = v24;
            *buf = v24;
            v30 = v24;
            memset(&v28, 0, sizeof(v28));
            v27 = 0xAAAAAAAAAAAAAAAALL;
            time(&v27);
            localtime_r(&v27, &v28);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  Couldnt find %s\n", "CCIOReportStream");
          }

          goto LABEL_38;
        }

        result = CCIOReporterFormatter::getChannelsForSubscription(TypeID, v13, a3);
        if (result)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      result = *(this + 6);
    }

    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      *&buf[4] = "Id";
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      *&buf[4] = "Id";
      v17 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  no key %s in dictionary\n", buf, 0xCu);
LABEL_22:
    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v20;
      v36 = v20;
      v33 = v20;
      v34 = v20;
      v31 = v20;
      v32 = v20;
      *buf = v20;
      v30 = v20;
      memset(&v28, 0, sizeof(v28));
      v27 = 0xAAAAAAAAAAAAAAAALL;
      time(&v27);
      localtime_r(&v27, &v28);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForStreamAndSubscription  no key %s in dictionary\n");
    }

    goto LABEL_29;
  }

LABEL_39:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef CCIOReporterFormatter::writeTimeString(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  memset(v9, 170, 20);
  memset(&v6, 0, sizeof(v6));
  localtime_r(&v7, &v6);
  strftime(v9, 0x14uLL, "%b %d %H:%M:%S", &v6);
  memset(v8, 170, sizeof(v8));
  strftime(v8, 0x10uLL, "%z", &v6);
  if (snprintf((a1 + 56), 0x80uLL, "%s.%06llu %s", v9, *(a2 + 16), v8))
  {
    result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 56), 0x8000100u);
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

const void *CCIOReporterFormatter::getChannelsForSubscription(CCIOReporterFormatter *this, CFArrayRef theArray, const __CFNumber *a3)
{
  v5 = 0;
  v38 = *MEMORY[0x277D85DE8];
  while (1)
  {
    if (v5 >= CFArrayGetCount(theArray))
    {
      goto LABEL_29;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (!ValueAtIndex || (v7 = ValueAtIndex, v8 = CFGetTypeID(ValueAtIndex), v8 != CFDictionaryGetTypeID()))
    {
      v12 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 134217984;
        *&buf[4] = v5;
        v13 = v12;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 134217984;
        *&buf[4] = v5;
        v13 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in array at i %ld\n", buf, 0xCu);
LABEL_21:
      if (glog_fd)
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v36 = v21;
        v37 = v21;
        v34 = v21;
        v35 = v21;
        v32 = v21;
        v33 = v21;
        *buf = v21;
        *&buf[16] = v21;
        memset(&v30, 0, sizeof(v30));
        v29 = 0xAAAAAAAAAAAAAAAALL;
        time(&v29);
        localtime_r(&v29, &v30);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v30);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in array at i %ld\n");
      }

      goto LABEL_29;
    }

    Value = CFDictionaryGetValue(v7, @"CCIOReportInterestSubscriptionIDx");
    if (!Value)
    {
      break;
    }

    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 != CFNumberGetTypeID())
    {
      break;
    }

    if (CFNumberCompare(v10, a3, 0) == kCFCompareEqualTo)
    {
      v16 = CFDictionaryGetValue(v7, @"CCIOReportInterests");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 == CFDictionaryGetTypeID())
        {
          goto LABEL_36;
        }
      }

      v19 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 134218242;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "CCIOReportInterests";
        v20 = v19;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 134218242;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "CCIOReportInterests";
        v20 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in dict at i %ld for %s\n", buf, 0x16u);
LABEL_27:
      if (glog_fd)
      {
        *&v23 = 0xAAAAAAAAAAAAAAAALL;
        *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v36 = v23;
        v37 = v23;
        v34 = v23;
        v35 = v23;
        v32 = v23;
        v33 = v23;
        *buf = v23;
        *&buf[16] = v23;
        memset(&v30, 0, sizeof(v30));
        v29 = 0xAAAAAAAAAAAAAAAALL;
        time(&v29);
        localtime_r(&v29, &v30);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v30);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didnt find or wrong type in dict at i %ld for %s\n");
      }

      goto LABEL_29;
    }

    ++v5;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "CCIOReportInterestSubscriptionIDx";
      v15 = v14;
      goto LABEL_42;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "CCIOReportInterestSubscriptionIDx";
    v15 = MEMORY[0x277D86220];
LABEL_42:
    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didnt find %s\n", buf, 0xCu);
  }

  if (glog_fd)
  {
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v22;
    v37 = v22;
    v34 = v22;
    v35 = v22;
    v32 = v22;
    v33 = v22;
    *buf = v22;
    *&buf[16] = v22;
    memset(&v30, 0, sizeof(v30));
    v29 = 0xAAAAAAAAAAAAAAAALL;
    time(&v29);
    localtime_r(&v29, &v30);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v30);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didnt find %s\n");
  }

LABEL_29:
  v24 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = v24;
      goto LABEL_38;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v25 = MEMORY[0x277D86220];
LABEL_38:
    _os_log_error_impl(&dword_2452A3000, v25, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::getChannelsForSubscription  didn't find matching subscription\n", buf, 2u);
  }

  if (glog_fd)
  {
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v26;
    v37 = v26;
    v34 = v26;
    v35 = v26;
    v32 = v26;
    v33 = v26;
    *buf = v26;
    *&buf[16] = v26;
    memset(&v30, 0, sizeof(v30));
    v29 = 0xAAAAAAAAAAAAAAAALL;
    time(&v29);
    localtime_r(&v29, &v30);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v30);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCIOReporterFormatter::getChannelsForSubscription  didn't find matching subscription\n");
  }

  v17 = 0;
LABEL_36:
  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t CCIOReporterFormatter::writeFileHeader(CCIOReporterFormatter *this)
{
  CCIOReporterFormatter::refreshSubscriptionsFromStreamRegistry(this);
  *(this + 46) = 0;
  v2 = *(*this + 112);

  return v2(this, "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n<array>\n", 172);
}

uint64_t CCIOReporterFormatter::refreshSubscriptionsFromStreamRegistry(CCIOReporterFormatter *this)
{
  v42 = *MEMORY[0x277D85DE8];
  iterator = 0;
  v2 = *(this + 8);
  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v4 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v4 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "%s::%s clearing out any previous subscriptions\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v5;
    v41 = v5;
    v38 = v5;
    v39 = v5;
    v36 = v5;
    v37 = v5;
    *buf = v5;
    *&buf[16] = v5;
    memset(&v33, 0, sizeof(v33));
    v32 = 0xAAAAAAAAAAAAAAAALL;
    time(&v32);
    localtime_r(&v32, &v33);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s clearing out any previous subscriptions\n", "CCIOReporterFormatter", "refreshSubscriptionsFromStreamRegistry");
  }

  v6 = *(this + 6);
  if (v6)
  {
    CFRelease(v6);
    *(this + 6) = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {
    CFRelease(v7);
    *(this + 5) = 0;
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  *(this + 5) = Mutable;
  if (!Mutable)
  {
    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v14 = v13;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v14 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "%s::%s channelStreamArray not valid\n", buf, 0x16u);
LABEL_43:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v40 = v25;
      v41 = v25;
      v38 = v25;
      v39 = v25;
      v36 = v25;
      v37 = v25;
      *buf = v25;
      *&buf[16] = v25;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      v26 = 3758097085;
      dprintf(glog_fd, "%s::%s channelStreamArray not valid\n");
      goto LABEL_56;
    }

LABEL_55:
    v26 = 3758097085;
    goto LABEL_56;
  }

  if (!MEMORY[0x245D67870](v2, "IOService", &iterator))
  {
    v15 = IOIteratorNext(iterator);
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v16;
    v41 = v16;
    v38 = v16;
    v39 = v16;
    v36 = v16;
    v37 = v16;
    *buf = v16;
    *&buf[16] = v16;
    if (v15)
    {
      v17 = v15;
      do
      {
        v18 = IOIteratorNext(iterator);
        MEMORY[0x245D67880](v17, buf);
        if (*buf != 0x6F7065524F494343 || *&buf[8] != 0x53676F4C72657472 || *&buf[14] != 0x6D616572745367)
        {
          break;
        }

        CCIOReporterFormatter::addRegistryChildToChannelDictionary(this, v17);
        v17 = v18;
      }

      while (v18);
    }
  }

  if (CFArrayGetCount(*(this + 5)))
  {
    v10 = CFArrayCreateMutable(v8, 1, MEMORY[0x277CBF128]);
    *(this + 6) = v10;
    if (v10)
    {
      if (!CCIOReporterFormatter::shapeIOReportLibraryFriendlyDictionary(this))
      {
        v26 = 0;
        goto LABEL_56;
      }

      v11 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 136315394;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
        v12 = v11;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 136315394;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
        v12 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "%s::%s shapeIOReportLibraryFriendlyDictionary failed\n", buf, 0x16u);
LABEL_50:
      v26 = 3758097084;
      if (glog_fd)
      {
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v28;
        v41 = v28;
        v38 = v28;
        v39 = v28;
        v36 = v28;
        v37 = v28;
        *buf = v28;
        *&buf[16] = v28;
        memset(&v33, 0, sizeof(v33));
        v32 = 0xAAAAAAAAAAAAAAAALL;
        time(&v32);
        localtime_r(&v32, &v33);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s shapeIOReportLibraryFriendlyDictionary failed\n");
      }

      goto LABEL_56;
    }

    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "%s::%s rawStreamAndSubscriptionArray not valid\n", buf, 0x16u);
LABEL_53:
    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v40 = v29;
      v41 = v29;
      v38 = v29;
      v39 = v29;
      v36 = v29;
      v37 = v29;
      *buf = v29;
      *&buf[16] = v29;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      v26 = 3758097085;
      dprintf(glog_fd, "%s::%s rawStreamAndSubscriptionArray not valid\n");
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v22 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "refreshSubscriptionsFromStreamRegistry";
    v22 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "%s::%s channelStreamArray empty\n", buf, 0x16u);
LABEL_47:
  v26 = 3758097084;
  if (glog_fd)
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v27;
    v41 = v27;
    v38 = v27;
    v39 = v27;
    v36 = v27;
    v37 = v27;
    *buf = v27;
    *&buf[16] = v27;
    memset(&v33, 0, sizeof(v33));
    v32 = 0xAAAAAAAAAAAAAAAALL;
    time(&v32);
    localtime_r(&v32, &v33);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s channelStreamArray empty\n");
  }

LABEL_56:
  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t CCIOReporterFormatter::addRegistryChildToChannelDictionary(CFMutableArrayRef *this, uint64_t entry)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"CCIOReportRkey", *MEMORY[0x277CBECE8], 0);
  v6 = IORegistryEntryCreateCFProperty(entry, @"Id", v4, 0);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[6] = v7;
  v44[7] = v7;
  v44[4] = v7;
  v44[5] = v7;
  v44[2] = v7;
  v44[3] = v7;
  v44[0] = v7;
  v44[1] = v7;
  if (CFProperty)
  {
    Value = CFDictionaryGetValue(CFProperty, @"CCIOReportStream");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      TypeID = CFArrayGetTypeID();
      v12 = coreCaptureOsLog;
      if (v10 == TypeID)
      {
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "addRegistryChildToChannelDictionary";
          *&buf[22] = 2048;
          *&buf[24] = CFArrayGetCount(v9);
          v13 = v12;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "addRegistryChildToChannelDictionary";
          *&buf[22] = 2048;
          *&buf[24] = CFArrayGetCount(v9);
          v13 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "%s::%s streams %ld\n", buf, 0x20u);
LABEL_29:
        if (glog_fd)
        {
          *&v22 = 0xAAAAAAAAAAAAAAAALL;
          *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v42 = v22;
          v43 = v22;
          v40 = v22;
          v41 = v22;
          v38 = v22;
          v39 = v22;
          *buf = v22;
          *&buf[16] = v22;
          memset(&v36, 0, sizeof(v36));
          v35 = 0xAAAAAAAAAAAAAAAALL;
          time(&v35);
          localtime_r(&v35, &v36);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
          dprintf(glog_fd, "%s ", buf);
          v23 = glog_fd;
          Count = CFArrayGetCount(v9);
          dprintf(v23, "%s::%s streams %ld\n", "CCIOReporterFormatter", "addRegistryChildToChannelDictionary", Count);
        }

        Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v26 = Mutable;
          CFDictionarySetValue(Mutable, @"Id", v6);
          CFDictionarySetValue(v26, @"CCIOReportStream", v9);
          CFArrayAppendValue(this[5], v26);
          if (v6)
          {
            CFRelease(v6);
          }

          v20 = 1;
          v6 = CFProperty;
          CFProperty = v26;
          goto LABEL_45;
        }

        v28 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 0;
          v29 = v28;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 0;
          v29 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  Cant create channelStreamDictionary\n", buf, 2u);
LABEL_42:
        if (glog_fd)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v42 = v30;
          v43 = v30;
          v40 = v30;
          v41 = v30;
          v38 = v30;
          v39 = v30;
          *buf = v30;
          *&buf[16] = v30;
          memset(&v36, 0, sizeof(v36));
          v35 = 0xAAAAAAAAAAAAAAAALL;
          time(&v35);
          localtime_r(&v35, &v36);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  Cant create channelStreamDictionary\n", v34);
        }

        goto LABEL_44;
      }

      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v18 = v12;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v18 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  not array\n", buf, 2u);
LABEL_36:
      if (glog_fd)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v42 = v27;
        v43 = v27;
        v40 = v27;
        v41 = v27;
        v38 = v27;
        v39 = v27;
        *buf = v27;
        *&buf[16] = v27;
        memset(&v36, 0, sizeof(v36));
        v35 = 0xAAAAAAAAAAAAAAAALL;
        time(&v35);
        localtime_r(&v35, &v36);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  not array\n", v33);
      }

      goto LABEL_44;
    }

    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      *&buf[4] = "CCIOReportStream";
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      *&buf[4] = "CCIOReportStream";
      v17 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  dictionary doesn't contain %s\n", buf, 0xCu);
LABEL_24:
    if (glog_fd)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v21;
      v43 = v21;
      v40 = v21;
      v41 = v21;
      v38 = v21;
      v39 = v21;
      *buf = v21;
      *&buf[16] = v21;
      memset(&v36, 0, sizeof(v36));
      v35 = 0xAAAAAAAAAAAAAAAALL;
      time(&v35);
      localtime_r(&v35, &v36);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  dictionary doesn't contain %s\n");
    }

LABEL_44:
    v20 = 0;
    if (!v6)
    {
LABEL_46:
      CFRelease(CFProperty);
      goto LABEL_47;
    }

LABEL_45:
    CFRelease(v6);
    goto LABEL_46;
  }

  MEMORY[0x245D67880](entry, v44);
  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReportRkey";
    *&buf[12] = 2080;
    *&buf[14] = v44;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315394;
    *&buf[4] = "CCIOReportRkey";
    *&buf[12] = 2080;
    *&buf[14] = v44;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  no %s found in %s\n", buf, 0x16u);
LABEL_19:
  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v19;
    v43 = v19;
    v40 = v19;
    v41 = v19;
    v38 = v19;
    v39 = v19;
    *buf = v19;
    *&buf[16] = v19;
    memset(&v36, 0, sizeof(v36));
    v35 = 0xAAAAAAAAAAAAAAAALL;
    time(&v35);
    localtime_r(&v35, &v36);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v36);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCIOReporterFormatter::addRegistryChildToChannelDictionary  no %s found in %s\n", "CCIOReportRkey", v44);
  }

  v20 = 0;
  CFProperty = v6;
  if (v6)
  {
    goto LABEL_46;
  }

LABEL_47:
  v31 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t CCIOReporterFormatter::shapeIOReportLibraryFriendlyDictionary(CFArrayRef *this)
{
  v2 = 0;
  v72 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  v4 = @"Id";
  while (2)
  {
    if (v2 >= CFArrayGetCount(this[5]))
    {
      goto LABEL_74;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(this[5], v2);
    if (!ValueAtIndex || (v6 = ValueAtIndex, v7 = CFGetTypeID(ValueAtIndex), v7 != CFDictionaryGetTypeID()))
    {
      v42 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
        *&buf[22] = 2048;
        *&buf[24] = v2;
        v43 = v42;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
        *&buf[22] = 2048;
        *&buf[24] = v2;
        v43 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v43, OS_LOG_TYPE_ERROR, "%s::%s channelStreamArray at i %ld not valid\n", buf, 0x20u);
LABEL_72:
      if (glog_fd)
      {
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v70 = v54;
        v71 = v54;
        v68 = v54;
        v69 = v54;
        v66 = v54;
        v67 = v54;
        *buf = v54;
        *&buf[16] = v54;
        memset(&v64, 0, sizeof(v64));
        v63 = 0xAAAAAAAAAAAAAAAALL;
        time(&v63);
        localtime_r(&v63, &v64);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s channelStreamArray at i %ld not valid\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary", v2);
      }

      goto LABEL_74;
    }

    v8 = v4;
    Value = CFDictionaryGetValue(v6, v4);
    if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFNumberGetTypeID()))
    {
LABEL_74:
      v39 = 0;
      goto LABEL_75;
    }

    v12 = CFDictionaryGetValue(v6, @"CCIOReportStream");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFArrayGetTypeID())
      {
        theArray = CFArrayCreateMutable(v3, 1, MEMORY[0x277CBF128]);
        if (theArray)
        {
          for (i = 0; i < CFArrayGetCount(v13); ++i)
          {
            v16 = CFArrayGetValueAtIndex(v13, i);
            if (!v16 || (v17 = v16, v18 = CFGetTypeID(v16), v18 != CFDictionaryGetTypeID()))
            {
              v29 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  *&buf[22] = 2048;
                  *&buf[24] = i;
                  v30 = v29;
                  goto LABEL_85;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                *&buf[22] = 2048;
                *&buf[24] = i;
                v30 = MEMORY[0x277D86220];
LABEL_85:
                _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "%s::%s didn't find or wrong type in array at i %ld\n", buf, 0x20u);
              }

              v39 = 3758097136;
              if (glog_fd)
              {
                *&v40 = 0xAAAAAAAAAAAAAAAALL;
                *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v70 = v40;
                v71 = v40;
                v68 = v40;
                v69 = v40;
                v66 = v40;
                v67 = v40;
                *buf = v40;
                *&buf[16] = v40;
                memset(&v64, 0, sizeof(v64));
                v63 = 0xAAAAAAAAAAAAAAAALL;
                time(&v63);
                localtime_r(&v63, &v64);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s didn't find or wrong type in array at i %ld\n");
              }

LABEL_61:
              CFRelease(theArray);
              v49 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  v50 = v49;
                  goto LABEL_80;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                v50 = MEMORY[0x277D86220];
LABEL_80:
                _os_log_error_impl(&dword_2452A3000, v50, OS_LOG_TYPE_ERROR, "%s::%s failed to store description\n", buf, 0x16u);
              }

              if (glog_fd)
              {
                *&v51 = 0xAAAAAAAAAAAAAAAALL;
                *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v70 = v51;
                v71 = v51;
                v68 = v51;
                v69 = v51;
                v66 = v51;
                v67 = v51;
                *buf = v51;
                *&buf[16] = v51;
                memset(&v64, 0, sizeof(v64));
                v63 = 0xAAAAAAAAAAAAAAAALL;
                time(&v63);
                localtime_r(&v63, &v64);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s failed to store description\n");
              }

              goto LABEL_75;
            }

            v19 = CFDictionaryGetValue(v17, @"CCIOReportInterestSubscriptionIDx");
            if (!v19 || (v20 = v19, v21 = CFGetTypeID(v19), v21 != CFNumberGetTypeID()))
            {
              v31 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  *&buf[22] = 2080;
                  *&buf[24] = "CCIOReportInterestSubscriptionIDx";
                  LOWORD(v66) = 2048;
                  *(&v66 + 2) = i;
                  v32 = v31;
                  goto LABEL_87;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                *&buf[22] = 2080;
                *&buf[24] = "CCIOReportInterestSubscriptionIDx";
                LOWORD(v66) = 2048;
                *(&v66 + 2) = i;
                v32 = MEMORY[0x277D86220];
LABEL_87:
                _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s::%s didn't find %s or wrong type in array at i %ld\n", buf, 0x2Au);
              }

              v39 = 3758097136;
              if (glog_fd)
              {
                *&v41 = 0xAAAAAAAAAAAAAAAALL;
                *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v70 = v41;
                v71 = v41;
                v68 = v41;
                v69 = v41;
                v66 = v41;
                v67 = v41;
                *buf = v41;
                *&buf[16] = v41;
                memset(&v64, 0, sizeof(v64));
                v63 = 0xAAAAAAAAAAAAAAAALL;
                time(&v63);
                localtime_r(&v63, &v64);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s didn't find %s or wrong type in array at i %ld\n");
              }

              goto LABEL_61;
            }

            Aggregate = IOReportCreateAggregate();
            if (!Aggregate)
            {
              v33 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "shapeIOReportLibraryFriendlyDictionary";
                  *&buf[12] = 1024;
                  *&buf[14] = 331;
                  v34 = v33;
                  goto LABEL_92;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "shapeIOReportLibraryFriendlyDictionary";
                *&buf[12] = 1024;
                *&buf[14] = 331;
                v34 = MEMORY[0x277D86220];
LABEL_92:
                _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "%s@%d: bail - !legend\n", buf, 0x12u);
              }

              v39 = 3758097086;
              if (glog_fd)
              {
                *&v46 = 0xAAAAAAAAAAAAAAAALL;
                *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v70 = v46;
                v71 = v46;
                v68 = v46;
                v69 = v46;
                v66 = v46;
                v67 = v46;
                *buf = v46;
                *&buf[16] = v46;
                memset(&v64, 0, sizeof(v64));
                v63 = 0xAAAAAAAAAAAAAAAALL;
                time(&v63);
                localtime_r(&v63, &v64);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s@%d: bail - !legend\n");
              }

              goto LABEL_61;
            }

            v23 = Aggregate;
            if (CCIOReporterFormatter::storeChannelDescriptionFromStreamAndSubscription(this, Aggregate, v10, v20))
            {
              v35 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  v36 = v35;
                  goto LABEL_94;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                v36 = MEMORY[0x277D86220];
LABEL_94:
                _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s::%s Failed to create IOReporter library friendly channel list\n", buf, 0x16u);
              }

              if (glog_fd)
              {
                *&v47 = 0xAAAAAAAAAAAAAAAALL;
                *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v70 = v47;
                v71 = v47;
                v68 = v47;
                v69 = v47;
                v66 = v47;
                v67 = v47;
                *buf = v47;
                *&buf[16] = v47;
                memset(&v64, 0, sizeof(v64));
                v63 = 0xAAAAAAAAAAAAAAAALL;
                time(&v63);
                localtime_r(&v63, &v64);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s Failed to create IOReporter library friendly channel list\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary");
              }

              CFRelease(v23);
              v39 = 3758097084;
              goto LABEL_61;
            }

            Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
              v37 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                  v38 = v37;
                  goto LABEL_96;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
                v38 = MEMORY[0x277D86220];
LABEL_96:
                _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "%s::%s Can't create subscriptionLegendDictionary\n", buf, 0x16u);
              }

              if (glog_fd)
              {
                *&v48 = 0xAAAAAAAAAAAAAAAALL;
                *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v70 = v48;
                v71 = v48;
                v68 = v48;
                v69 = v48;
                v66 = v48;
                v67 = v48;
                *buf = v48;
                *&buf[16] = v48;
                memset(&v64, 0, sizeof(v64));
                v63 = 0xAAAAAAAAAAAAAAAALL;
                time(&v63);
                localtime_r(&v63, &v64);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s::%s Can't create subscriptionLegendDictionary\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary");
              }

              CFRelease(v23);
              v39 = 3758097085;
              goto LABEL_61;
            }

            v25 = Mutable;
            CFDictionarySetValue(Mutable, @"CCIOReportInterestSubscriptionIDx", v20);
            CFDictionarySetValue(v25, @"CCIOReportInterests", v23);
            CFRelease(v23);
            CFArrayAppendValue(theArray, v25);
            CFRelease(v25);
          }

          v26 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v26)
          {
            v27 = v26;
            v28 = v10;
            v4 = v8;
            CFDictionarySetValue(v26, v8, v28);
            CFDictionarySetValue(v27, @"CCIOReportStream", theArray);
            CFRelease(theArray);
            CFArrayAppendValue(this[6], v27);
            CFRelease(v27);
            v2 = i + 1;
            continue;
          }

          v59 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "CCIOReporterFormatter";
              *&buf[12] = 2080;
              *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
              v60 = v59;
LABEL_108:
              _os_log_error_impl(&dword_2452A3000, v60, OS_LOG_TYPE_ERROR, "%s::%s Can't create channelStreamDictionary\n", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "CCIOReporterFormatter";
            *&buf[12] = 2080;
            *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
            v60 = MEMORY[0x277D86220];
            goto LABEL_108;
          }

          if (glog_fd)
          {
            *&v61 = 0xAAAAAAAAAAAAAAAALL;
            *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v70 = v61;
            v71 = v61;
            v68 = v61;
            v69 = v61;
            v66 = v61;
            v67 = v61;
            *buf = v61;
            *&buf[16] = v61;
            memset(&v64, 0, sizeof(v64));
            v63 = 0xAAAAAAAAAAAAAAAALL;
            time(&v63);
            localtime_r(&v63, &v64);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "%s::%s Can't create channelStreamDictionary\n", "CCIOReporterFormatter", "shapeIOReportLibraryFriendlyDictionary");
          }

          CFRelease(theArray);
          v39 = 3758097085;
          goto LABEL_75;
        }

        v52 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

          *buf = 136315394;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
          v53 = v52;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_82;
          }

          *buf = 136315394;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
          v53 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "%s::%s !subscriptionLegendDictionaryArray\n", buf, 0x16u);
LABEL_82:
        v39 = 3758097084;
        if (glog_fd)
        {
          *&v58 = 0xAAAAAAAAAAAAAAAALL;
          *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v70 = v58;
          v71 = v58;
          v68 = v58;
          v69 = v58;
          v66 = v58;
          v67 = v58;
          *buf = v58;
          *&buf[16] = v58;
          memset(&v64, 0, sizeof(v64));
          v63 = 0xAAAAAAAAAAAAAAAALL;
          time(&v63);
          localtime_r(&v63, &v64);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s::%s !subscriptionLegendDictionaryArray\n");
        }

        goto LABEL_75;
      }
    }

    break;
  }

  v44 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    *buf = 136315650;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
    *&buf[22] = 2080;
    *&buf[24] = "CCIOReportStream";
    v45 = v44;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    *buf = 136315650;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "shapeIOReportLibraryFriendlyDictionary";
    *&buf[22] = 2080;
    *&buf[24] = "CCIOReportStream";
    v45 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v45, OS_LOG_TYPE_ERROR, "%s::%s didn't find %s\n", buf, 0x20u);
LABEL_77:
  v39 = 3758097136;
  if (glog_fd)
  {
    *&v57 = 0xAAAAAAAAAAAAAAAALL;
    *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v70 = v57;
    v71 = v57;
    v68 = v57;
    v69 = v57;
    v66 = v57;
    v67 = v57;
    *buf = v57;
    *&buf[16] = v57;
    memset(&v64, 0, sizeof(v64));
    v63 = 0xAAAAAAAAAAAAAAAALL;
    time(&v63);
    localtime_r(&v63, &v64);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v64);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s didn't find %s\n");
  }

LABEL_75:
  v55 = *MEMORY[0x277D85DE8];
  return v39;
}

uint64_t CCIOReporterFormatter::storeChannelDescriptionFromStreamAndSubscription(CFArrayRef *this, __CFDictionary *a2, const __CFNumber *a3, const __CFNumber *a4)
{
  v5 = 0;
  v6 = 0;
  v36 = *MEMORY[0x277D85DE8];
  while (v5 < CFArrayGetCount(this[5]))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this[5], v5);
    if (!ValueAtIndex)
    {
      break;
    }

    v8 = ValueAtIndex;
    v9 = CFGetTypeID(ValueAtIndex);
    if (v9 != CFDictionaryGetTypeID())
    {
      break;
    }

    Value = CFDictionaryGetValue(v8, @"Id");
    if (!Value)
    {
      v15 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
          *&buf[22] = 2080;
          *&buf[24] = "Id";
          v16 = v15;
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
        *&buf[22] = 2080;
        *&buf[24] = "Id";
        v16 = MEMORY[0x277D86220];
LABEL_19:
        _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "%s::%s no key %s in dictionary\n", buf, 0x20u);
      }

      if (glog_fd)
      {
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34 = v19;
        v35 = v19;
        v32 = v19;
        v33 = v19;
        v30 = v19;
        v31 = v19;
        *buf = v19;
        *&buf[16] = v19;
        memset(&v28, 0, sizeof(v28));
        v27 = 0xAAAAAAAAAAAAAAAALL;
        time(&v27);
        localtime_r(&v27, &v28);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s no key %s in dictionary\n");
      }

      goto LABEL_34;
    }

    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 != CFNumberGetTypeID())
    {
      v17 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
          *&buf[22] = 2080;
          *&buf[24] = "Id";
          v18 = v17;
          goto LABEL_26;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
        *&buf[22] = 2080;
        *&buf[24] = "Id";
        v18 = MEMORY[0x277D86220];
LABEL_26:
        _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "%s::%s key %s has wrong type in dictionary\n", buf, 0x20u);
      }

      if (glog_fd)
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34 = v20;
        v35 = v20;
        v32 = v20;
        v33 = v20;
        v30 = v20;
        v31 = v20;
        *buf = v20;
        *&buf[16] = v20;
        memset(&v28, 0, sizeof(v28));
        v27 = 0xAAAAAAAAAAAAAAAALL;
        time(&v27);
        localtime_r(&v27, &v28);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s key %s has wrong type in dictionary\n");
      }

      goto LABEL_34;
    }

    if (CFNumberCompare(v11, a3, 0))
    {
      v13 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
          v14 = v13;
          goto LABEL_31;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "CCIOReporterFormatter";
        *&buf[12] = 2080;
        *&buf[14] = "storeChannelDescriptionFromStreamAndSubscription";
        v14 = MEMORY[0x277D86220];
LABEL_31:
        _os_log_impl(&dword_2452A3000, v14, OS_LOG_TYPE_DEFAULT, "%s::%s not a matching Stream id\n", buf, 0x16u);
      }

      if (glog_fd)
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34 = v21;
        v35 = v21;
        v32 = v21;
        v33 = v21;
        v30 = v21;
        v31 = v21;
        *buf = v21;
        *&buf[16] = v21;
        memset(&v28, 0, sizeof(v28));
        v27 = 0xAAAAAAAAAAAAAAAALL;
        time(&v27);
        localtime_r(&v27, &v28);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v28);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s::%s not a matching Stream id\n");
      }

      goto LABEL_34;
    }

    v6 = CCIOReporterFormatter::storeChannelDescriptionFromSubscription(0, a2, v8, a4);
    if (!v6)
    {
      break;
    }

LABEL_34:
    ++v5;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t CCIOReporterFormatter::storeChannelDescriptionFromSubscription(CCIOReporterFormatter *this, __CFDictionary *a2, CFDictionaryRef theDict, const __CFNumber *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(theDict, @"CCIOReportStream");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFArrayGetTypeID()))
  {
    v35 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136315650;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      *&buf[22] = 2080;
      *&buf[24] = "CCIOReportStream";
      v36 = v35;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136315650;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      *&buf[22] = 2080;
      *&buf[24] = "CCIOReportStream";
      v36 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s::%s didn't find %s\n", buf, 0x20u);
LABEL_40:
    if (glog_fd)
    {
      *&v37 = 0xAAAAAAAAAAAAAAAALL;
      *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = v37;
      v61 = v37;
      v58 = v37;
      v59 = v37;
      v56 = v37;
      v57 = v37;
      *buf = v37;
      *&buf[16] = v37;
      memset(&v54, 0, sizeof(v54));
      v53 = 0xAAAAAAAAAAAAAAAALL;
      time(&v53);
      localtime_r(&v53, &v54);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s::%s didn't find %s\n");
    }

    goto LABEL_56;
  }

  v9 = 0;
  v10 = 3758097136;
  while (1)
  {
    if (v9 >= CFArrayGetCount(v7))
    {
      v39 = 0x27EE11000;
      if (v10 == -536870160)
      {
        goto LABEL_50;
      }

      goto LABEL_57;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
    if (!ValueAtIndex)
    {
      break;
    }

    v12 = ValueAtIndex;
    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 != CFDictionaryGetTypeID())
    {
      break;
    }

    v14 = CFDictionaryGetValue(v12, @"CCIOReportInterestSubscriptionIDx");
    if (v14)
    {
      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 == CFNumberGetTypeID() && CFNumberCompare(v15, a4, 0) == kCFCompareEqualTo)
      {
        v17 = CFDictionaryGetValue(v12, @"CCIOReportInterests");
        if (v17)
        {
          v18 = v17;
          v19 = CFGetTypeID(v17);
          if (v19 == CFArrayGetTypeID())
          {
            if (CFArrayGetCount(v18))
            {
              v20 = 0;
              while (1)
              {
                if (CFArrayGetCount(v18) <= v20)
                {
                  goto LABEL_31;
                }

                v21 = CFArrayGetValueAtIndex(v18, v20);
                if (!v21)
                {
                  break;
                }

                v22 = v21;
                v23 = CFGetTypeID(v21);
                TypeID = CFDictionaryGetTypeID();
                if (v23 != TypeID)
                {
                  break;
                }

                v25 = CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup(TypeID, a2, v22);
                v10 = 0;
                ++v20;
                if (v25)
                {
                  v26 = v25;
                  v27 = coreCaptureOsLog;
                  if (coreCaptureOsLog)
                  {
                    v28 = 0x27EE11000;
                    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "CCIOReporterFormatter";
                      *&buf[12] = 2080;
                      *&buf[14] = "storeChannelDescriptionFromSubscription";
                      v29 = v27;
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v28 = 0x27EE11000uLL;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "CCIOReporterFormatter";
                      *&buf[12] = 2080;
                      *&buf[14] = "storeChannelDescriptionFromSubscription";
                      v29 = MEMORY[0x277D86220];
LABEL_35:
                      _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "%s::%s failed to store Channel Description\n", buf, 0x16u);
                    }
                  }

                  if (*(v28 + 2856))
                  {
                    *&v34 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v60 = v34;
                    v61 = v34;
                    v58 = v34;
                    v59 = v34;
                    v56 = v34;
                    v57 = v34;
                    *buf = v34;
                    *&buf[16] = v34;
                    memset(&v54, 0, sizeof(v54));
                    v53 = 0xAAAAAAAAAAAAAAAALL;
                    time(&v53);
                    localtime_r(&v53, &v54);
                    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
                    dprintf(*(v28 + 2856), "%s ", buf);
                    dprintf(*(v28 + 2856), "%s::%s failed to store Channel Description\n");
                  }

LABEL_30:
                  v10 = v26;
                  goto LABEL_31;
                }
              }

              v30 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                v31 = 0x27EE11000;
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "storeChannelDescriptionFromSubscription";
                  v32 = v30;
                  goto LABEL_33;
                }
              }

              else
              {
                v31 = 0x27EE11000uLL;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "CCIOReporterFormatter";
                  *&buf[12] = 2080;
                  *&buf[14] = "storeChannelDescriptionFromSubscription";
                  v32 = MEMORY[0x277D86220];
LABEL_33:
                  _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s::%s didn't find or not a dict in array\n", buf, 0x16u);
                }
              }

              v10 = 3758097136;
              if (!*(v31 + 2856))
              {
                goto LABEL_31;
              }

              *&v33 = 0xAAAAAAAAAAAAAAAALL;
              *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v60 = v33;
              v61 = v33;
              v58 = v33;
              v59 = v33;
              v56 = v33;
              v57 = v33;
              *buf = v33;
              *&buf[16] = v33;
              memset(&v54, 0, sizeof(v54));
              v53 = 0xAAAAAAAAAAAAAAAALL;
              time(&v53);
              localtime_r(&v53, &v54);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
              dprintf(glog_fd, "%s ", buf);
              v26 = 3758097136;
              dprintf(glog_fd, "%s::%s didn't find or not a dict in array\n");
              goto LABEL_30;
            }

            v49 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              v39 = 0x27EE11000;
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "storeChannelDescriptionFromSubscription";
                v50 = v49;
                goto LABEL_79;
              }
            }

            else
            {
              v39 = 0x27EE11000uLL;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CCIOReporterFormatter";
                *&buf[12] = 2080;
                *&buf[14] = "storeChannelDescriptionFromSubscription";
                v50 = MEMORY[0x277D86220];
LABEL_79:
                _os_log_error_impl(&dword_2452A3000, v50, OS_LOG_TYPE_ERROR, "%s::%s empty array\n", buf, 0x16u);
              }
            }

            if (*(v39 + 2856))
            {
              *&v52 = 0xAAAAAAAAAAAAAAAALL;
              *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v60 = v52;
              v61 = v52;
              v58 = v52;
              v59 = v52;
              v56 = v52;
              v57 = v52;
              *buf = v52;
              *&buf[16] = v52;
              memset(&v54, 0, sizeof(v54));
              v53 = 0xAAAAAAAAAAAAAAAALL;
              time(&v53);
              localtime_r(&v53, &v54);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
              dprintf(*(v39 + 2856), "%s ", buf);
              dprintf(*(v39 + 2856), "%s::%s empty array\n");
            }

            goto LABEL_50;
          }
        }

        v47 = coreCaptureOsLog;
        v39 = 0x27EE11000uLL;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "CCIOReporterFormatter";
            *&buf[12] = 2080;
            *&buf[14] = "storeChannelDescriptionFromSubscription";
            *&buf[22] = 2048;
            *&buf[24] = v9;
            LOWORD(v56) = 2080;
            *(&v56 + 2) = "CCIOReportInterests";
            v48 = v47;
            goto LABEL_77;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "CCIOReporterFormatter";
          *&buf[12] = 2080;
          *&buf[14] = "storeChannelDescriptionFromSubscription";
          *&buf[22] = 2048;
          *&buf[24] = v9;
          LOWORD(v56) = 2080;
          *(&v56 + 2) = "CCIOReportInterests";
          v48 = MEMORY[0x277D86220];
LABEL_77:
          _os_log_error_impl(&dword_2452A3000, v48, OS_LOG_TYPE_ERROR, "%s::%s  didn't find or wrong type in dict at i %ld for %s\n", buf, 0x2Au);
        }

        if (glog_fd)
        {
          *&v51 = 0xAAAAAAAAAAAAAAAALL;
          *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v60 = v51;
          v61 = v51;
          v58 = v51;
          v59 = v51;
          v56 = v51;
          v57 = v51;
          *buf = v51;
          *&buf[16] = v51;
          memset(&v54, 0, sizeof(v54));
          v53 = 0xAAAAAAAAAAAAAAAALL;
          time(&v53);
          localtime_r(&v53, &v54);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s::%s  didn't find or wrong type in dict at i %ld for %s\n");
        }

        goto LABEL_50;
      }
    }

LABEL_31:
    ++v9;
  }

  v38 = coreCaptureOsLog;
  v39 = 0x27EE11000uLL;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      *&buf[22] = 2048;
      *&buf[24] = v9;
      v40 = v38;
      goto LABEL_72;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "storeChannelDescriptionFromSubscription";
    *&buf[22] = 2048;
    *&buf[24] = v9;
    v40 = MEMORY[0x277D86220];
LABEL_72:
    _os_log_error_impl(&dword_2452A3000, v40, OS_LOG_TYPE_ERROR, "%s::%s didn't find or wrong type in array at i %ld\n", buf, 0x20u);
  }

  if (glog_fd)
  {
    *&v41 = 0xAAAAAAAAAAAAAAAALL;
    *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60 = v41;
    v61 = v41;
    v58 = v41;
    v59 = v41;
    v56 = v41;
    v57 = v41;
    *buf = v41;
    *&buf[16] = v41;
    memset(&v54, 0, sizeof(v54));
    v53 = 0xAAAAAAAAAAAAAAAALL;
    time(&v53);
    localtime_r(&v53, &v54);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s::%s didn't find or wrong type in array at i %ld\n");
  }

LABEL_50:
  v42 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CCIOReporterFormatter";
      *&buf[12] = 2080;
      *&buf[14] = "storeChannelDescriptionFromSubscription";
      v43 = v42;
      goto LABEL_70;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CCIOReporterFormatter";
    *&buf[12] = 2080;
    *&buf[14] = "storeChannelDescriptionFromSubscription";
    v43 = MEMORY[0x277D86220];
LABEL_70:
    _os_log_error_impl(&dword_2452A3000, v43, OS_LOG_TYPE_ERROR, "%s::%s didn't find matching subscription\n", buf, 0x16u);
  }

  if (*(v39 + 2856))
  {
    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60 = v44;
    v61 = v44;
    v58 = v44;
    v59 = v44;
    v56 = v44;
    v57 = v44;
    *buf = v44;
    *&buf[16] = v44;
    memset(&v54, 0, sizeof(v54));
    v53 = 0xAAAAAAAAAAAAAAAALL;
    time(&v53);
    localtime_r(&v53, &v54);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v54);
    dprintf(*(v39 + 2856), "%s ", buf);
    dprintf(*(v39 + 2856), "%s::%s didn't find matching subscription\n");
  }

LABEL_56:
  v10 = 3758097136;
LABEL_57:
  v45 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup(CCIOReporterFormatter *this, __CFDictionary *a2, CFDictionaryRef theDict)
{
  v130 = *MEMORY[0x277D85DE8];
  v121 = 0;
  valuePtr = 0;
  v4 = 3758097136;
  v120 = 0;
  Value = CFDictionaryGetValue(theDict, @"IOReportGroupName");
  if (!Value)
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportGroupName";
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportGroupName";
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_11:
    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v13;
      v129 = v13;
      v126 = v13;
      v127 = v13;
      v125 = v13;
      *&cStr[16] = v13;
      v124 = v13;
      *cStr = v13;
      memset(&v119, 0, sizeof(v119));
      v118 = 0xAAAAAAAAAAAAAAAALL;
      time(&v118);
      localtime_r(&v118, &v119);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_16;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 == CFStringGetTypeID())
  {
    v8 = 0;
    goto LABEL_17;
  }

  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *cStr = 136315906;
    *&cStr[4] = "IOReportGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = CFStringGetTypeID();
    LOWORD(v124) = 2048;
    *(&v124 + 2) = CFGetTypeID(v6);
    v12 = v11;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *cStr = 136315906;
    *&cStr[4] = "IOReportGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = CFStringGetTypeID();
    LOWORD(v124) = 2048;
    *(&v124 + 2) = CFGetTypeID(v6);
    v12 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_14:
  if (glog_fd)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v128 = v14;
    v129 = v14;
    v126 = v14;
    v127 = v14;
    v125 = v14;
    *&cStr[16] = v14;
    v124 = v14;
    *cStr = v14;
    memset(&v119, 0, sizeof(v119));
    v118 = 0xAAAAAAAAAAAAAAAALL;
    time(&v118);
    localtime_r(&v118, &v119);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
    dprintf(glog_fd, "%s ", cStr);
    v15 = glog_fd;
    CFStringGetTypeID();
    CFGetTypeID(v6);
    dprintf(v15, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
  }

LABEL_16:
  v6 = 0;
  v8 = 3758097136;
LABEL_17:
  v16 = CFDictionaryGetValue(theDict, @"IOReportSubGroupName");
  if (!v16)
  {
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportSubGroupName";
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportSubGroupName";
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_26:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v25;
      v129 = v25;
      v126 = v25;
      v127 = v25;
      v125 = v25;
      *&cStr[16] = v25;
      v124 = v25;
      *cStr = v25;
      memset(&v119, 0, sizeof(v119));
      v118 = 0xAAAAAAAAAAAAAAAALL;
      time(&v118);
      localtime_r(&v118, &v119);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_31;
  }

  v17 = v16;
  v18 = CFGetTypeID(v16);
  if (v18 == CFStringGetTypeID())
  {
    goto LABEL_32;
  }

  v19 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    TypeID = CFStringGetTypeID();
    v21 = CFGetTypeID(v17);
    *cStr = 136315906;
    *&cStr[4] = "IOReportSubGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = TypeID;
    LOWORD(v124) = 2048;
    *(&v124 + 2) = v21;
    v22 = v19;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v106 = CFStringGetTypeID();
    v107 = CFGetTypeID(v17);
    *cStr = 136315906;
    *&cStr[4] = "IOReportSubGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v106;
    LOWORD(v124) = 2048;
    *(&v124 + 2) = v107;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_29:
  if (glog_fd)
  {
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v128 = v26;
    v129 = v26;
    v126 = v26;
    v127 = v26;
    v125 = v26;
    *&cStr[16] = v26;
    v124 = v26;
    *cStr = v26;
    memset(&v119, 0, sizeof(v119));
    v118 = 0xAAAAAAAAAAAAAAAALL;
    time(&v118);
    localtime_r(&v118, &v119);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
    dprintf(glog_fd, "%s ", cStr);
    v27 = glog_fd;
    CFStringGetTypeID();
    CFGetTypeID(v17);
    dprintf(v27, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
  }

LABEL_31:
  v17 = 0;
  v8 = 3758097136;
LABEL_32:
  v28 = CFDictionaryGetValue(theDict, @"DriverID");
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v29, kCFNumberLongLongType, &valuePtr);
      if (valuePtr)
      {
        goto LABEL_54;
      }

      v31 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *cStr = 0;
          v32 = v31;
LABEL_156:
          _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey invalid value \n", cStr, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *cStr = 0;
        v32 = MEMORY[0x277D86220];
        goto LABEL_156;
      }

      if (glog_fd)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v128 = v42;
        v129 = v42;
        v126 = v42;
        v127 = v42;
        v125 = v42;
        *&cStr[16] = v42;
        v124 = v42;
        *cStr = v42;
        memset(&v119, 0, sizeof(v119));
        v118 = 0xAAAAAAAAAAAAAAAALL;
        time(&v118);
        localtime_r(&v118, &v119);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
        dprintf(glog_fd, "%s ", cStr);
        dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey invalid value \n");
      }

      v8 = 3758096385;
      goto LABEL_54;
    }

    v35 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v36 = CFNumberGetTypeID();
      v37 = CFGetTypeID(v29);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v36;
      *&cStr[22] = 2048;
      *&cStr[24] = v37;
      v38 = v35;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v108 = CFNumberGetTypeID();
      v109 = CFGetTypeID(v29);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v108;
      *&cStr[22] = 2048;
      *&cStr[24] = v109;
      v38 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x20u);
LABEL_48:
    v8 = 3758097136;
    if (glog_fd)
    {
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v40;
      v129 = v40;
      v126 = v40;
      v127 = v40;
      v125 = v40;
      *&cStr[16] = v40;
      v124 = v40;
      *cStr = v40;
      memset(&v119, 0, sizeof(v119));
      v118 = 0xAAAAAAAAAAAAAAAALL;
      time(&v118);
      localtime_r(&v118, &v119);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
      dprintf(glog_fd, "%s ", cStr);
      v41 = glog_fd;
      CFNumberGetTypeID();
      CFGetTypeID(v29);
      dprintf(v41, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

    goto LABEL_54;
  }

  v33 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *cStr = 0;
    v34 = v33;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *cStr = 0;
    v34 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected \n", cStr, 2u);
LABEL_45:
  v8 = 3758097136;
  if (glog_fd)
  {
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v128 = v39;
    v129 = v39;
    v126 = v39;
    v127 = v39;
    v125 = v39;
    *&cStr[16] = v39;
    v124 = v39;
    *cStr = v39;
    memset(&v119, 0, sizeof(v119));
    v118 = 0xAAAAAAAAAAAAAAAALL;
    time(&v118);
    localtime_r(&v118, &v119);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
    dprintf(glog_fd, "%s ", cStr);
    dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected \n");
  }

LABEL_54:
  v43 = CFDictionaryGetValue(theDict, @"DriverName");
  if (!v43)
  {
    v46 = IORegistryEntryIDMatching(valuePtr);
    if (v46)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v46);
      if (MatchingService)
      {
        *&v48 = 0xAAAAAAAAAAAAAAAALL;
        *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v128 = v48;
        v129 = v48;
        v126 = v48;
        v127 = v48;
        v125 = v48;
        *&cStr[16] = v48;
        v124 = v48;
        *cStr = v48;
        MEMORY[0x245D67880](MatchingService, cStr);
        v44 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
        goto LABEL_73;
      }
    }

    v53 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *cStr = 0;
      v54 = v53;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *cStr = 0;
      v54 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v54, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected, couldn't resolve device \n", cStr, 2u);
LABEL_70:
    if (glog_fd)
    {
      *&v57 = 0xAAAAAAAAAAAAAAAALL;
      *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v57;
      v129 = v57;
      v126 = v57;
      v127 = v57;
      v125 = v57;
      *&cStr[16] = v57;
      v124 = v57;
      *cStr = v57;
      memset(&v119, 0, sizeof(v119));
      v118 = 0xAAAAAAAAAAAAAAAALL;
      time(&v118);
      localtime_r(&v118, &v119);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected, couldn't resolve device \n");
    }

    goto LABEL_72;
  }

  v44 = v43;
  v45 = CFGetTypeID(v43);
  if (v45 != CFStringGetTypeID())
  {
    v49 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v50 = CFStringGetTypeID();
      v51 = CFGetTypeID(v44);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v50;
      *&cStr[22] = 2048;
      *&cStr[24] = v51;
      v52 = v49;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v110 = CFStringGetTypeID();
      v111 = CFGetTypeID(v44);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v110;
      *&cStr[22] = 2048;
      *&cStr[24] = v111;
      v52 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v52, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x20u);
LABEL_67:
    if (glog_fd)
    {
      *&v55 = 0xAAAAAAAAAAAAAAAALL;
      *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v55;
      v129 = v55;
      v126 = v55;
      v127 = v55;
      v125 = v55;
      *&cStr[16] = v55;
      v124 = v55;
      *cStr = v55;
      memset(&v119, 0, sizeof(v119));
      v118 = 0xAAAAAAAAAAAAAAAALL;
      time(&v118);
      localtime_r(&v118, &v119);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
      dprintf(glog_fd, "%s ", cStr);
      v56 = glog_fd;
      CFStringGetTypeID();
      CFGetTypeID(v44);
      dprintf(v56, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

LABEL_72:
    v44 = 0;
    v8 = 3758097136;
    goto LABEL_73;
  }

  CFRetain(v44);
LABEL_73:
  v58 = CFDictionaryGetValue(theDict, @"IOReportChannelInfo");
  v59 = v58;
  if (!v58)
  {
    goto LABEL_81;
  }

  v60 = CFGetTypeID(v58);
  if (v60 == CFDictionaryGetTypeID())
  {
    goto LABEL_81;
  }

  v61 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v62 = CFDictionaryGetTypeID();
    v63 = CFGetTypeID(v59);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannelInfo";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v62;
    LOWORD(v124) = 2048;
    *(&v124 + 2) = v63;
    v64 = v61;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v112 = CFDictionaryGetTypeID();
    v113 = CFGetTypeID(v59);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannelInfo";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v112;
    LOWORD(v124) = 2048;
    *(&v124 + 2) = v113;
    v64 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v64, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_79:
  if (glog_fd)
  {
    *&v65 = 0xAAAAAAAAAAAAAAAALL;
    *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v128 = v65;
    v129 = v65;
    v126 = v65;
    v127 = v65;
    v125 = v65;
    *&cStr[16] = v65;
    v124 = v65;
    *cStr = v65;
    memset(&v119, 0, sizeof(v119));
    v118 = 0xAAAAAAAAAAAAAAAALL;
    time(&v118);
    localtime_r(&v118, &v119);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
    dprintf(glog_fd, "%s ", cStr);
    v66 = glog_fd;
    v67 = CFDictionaryGetTypeID();
    v68 = CFGetTypeID(v59);
    dprintf(v66, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", "IOReportChannelInfo", " NOT", v67, v68);
  }

LABEL_81:
  v69 = CFDictionaryGetValue(theDict, @"IOReportChannels");
  if (v69)
  {
    v70 = v69;
    v71 = CFGetTypeID(v69);
    if (v71 == CFArrayGetTypeID())
    {
      v72 = 0;
      v116 = v44;
      while (1)
      {
        if (CFArrayGetCount(v70) <= v72)
        {
          v4 = v8;
          goto LABEL_121;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v70, v72);
        if (!ValueAtIndex || (v74 = ValueAtIndex, v75 = CFGetTypeID(ValueAtIndex), v75 != CFArrayGetTypeID()) || CFArrayGetCount(v74) < 2)
        {
          v4 = 3758097136;
          goto LABEL_121;
        }

        v76 = v17;
        v77 = v6;
        v78 = CFArrayGetValueAtIndex(v74, 0);
        if (v78)
        {
          v79 = v78;
          v80 = CFGetTypeID(v78);
          if (v80 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v79, kCFNumberSInt64Type, &v121);
          }
        }

        v81 = CFArrayGetValueAtIndex(v74, 1);
        if (v81)
        {
          v82 = v81;
          v83 = CFGetTypeID(v81);
          if (v83 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v82, kCFNumberSInt64Type, &v120);
          }
        }

        v84 = CFArrayGetValueAtIndex(v74, 2);
        if (v84)
        {
          v85 = v84;
          v86 = CFGetTypeID(v84);
          v87 = v86 == CFStringGetTypeID() ? v85 : 0;
        }

        else
        {
          v87 = 0;
        }

        v88 = v121;
        v89 = valuePtr;
        v90 = v120;
        if (!a2 || v8 || !valuePtr || !v116 || !v121 || !v120 || !v87)
        {
          break;
        }

        v44 = v116;
        v6 = v77;
        v17 = v76;
        v91 = IOReportAddChannelDescription();
        if (v91)
        {
          v4 = v91;
          goto LABEL_122;
        }

        v8 = 0;
        v120 = 0;
        v121 = 0;
        ++v72;
      }

      v103 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        v4 = 3758097136;
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *cStr = 67110400;
        *&cStr[4] = a2 != 0;
        *&cStr[8] = 1024;
        *&cStr[10] = v89 != 0;
        *&cStr[14] = 1024;
        *&cStr[16] = v116 != 0;
        *&cStr[20] = 1024;
        *&cStr[22] = v88 != 0;
        *&cStr[26] = 1024;
        *&cStr[28] = v90 != 0;
        LOWORD(v124) = 1024;
        *(&v124 + 2) = v87 != 0;
        v104 = v103;
      }

      else
      {
        v4 = 3758097136;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *cStr = 67110400;
        *&cStr[4] = a2 != 0;
        *&cStr[8] = 1024;
        *&cStr[10] = v89 != 0;
        *&cStr[14] = 1024;
        *&cStr[16] = v116 != 0;
        *&cStr[20] = 1024;
        *&cStr[22] = v88 != 0;
        *&cStr[26] = 1024;
        *&cStr[28] = v90 != 0;
        LOWORD(v124) = 1024;
        *(&v124 + 2) = v87 != 0;
        v104 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v104, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup failed to find required objects legend %d && providerID %d && providerName %d && channelID %d && channelType %d && channelName %d\n", cStr, 0x26u);
LABEL_130:
      if (glog_fd)
      {
        *&v105 = 0xAAAAAAAAAAAAAAAALL;
        *(&v105 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v128 = v105;
        v129 = v105;
        v44 = v116;
        v126 = v105;
        v127 = v105;
        v125 = v105;
        *&cStr[16] = v105;
        v124 = v105;
        *cStr = v105;
        memset(&v119, 0, sizeof(v119));
        v118 = 0xAAAAAAAAAAAAAAAALL;
        time(&v118);
        localtime_r(&v118, &v119);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
        dprintf(glog_fd, "%s ", cStr);
        dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup failed to find required objects legend %d && providerID %d && providerName %d && channelID %d && channelType %d && channelName %d\n");
      }

      else
      {
        v44 = v116;
      }

      goto LABEL_121;
    }

    v94 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v95 = CFArrayGetTypeID();
      v96 = CFGetTypeID(v70);
      *cStr = 136315906;
      *&cStr[4] = "IOReportChannels";
      *&cStr[12] = 2080;
      *&cStr[14] = " NOT";
      *&cStr[22] = 2048;
      *&cStr[24] = v95;
      LOWORD(v124) = 2048;
      *(&v124 + 2) = v96;
      v97 = v94;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v114 = CFArrayGetTypeID();
      v115 = CFGetTypeID(v70);
      *cStr = 136315906;
      *&cStr[4] = "IOReportChannels";
      *&cStr[12] = 2080;
      *&cStr[14] = " NOT";
      *&cStr[22] = 2048;
      *&cStr[24] = v114;
      LOWORD(v124) = 2048;
      *(&v124 + 2) = v115;
      v97 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v97, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_119:
    if (glog_fd)
    {
      *&v99 = 0xAAAAAAAAAAAAAAAALL;
      *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v128 = v99;
      v129 = v99;
      v126 = v99;
      v127 = v99;
      v125 = v99;
      *&cStr[16] = v99;
      v124 = v99;
      *cStr = v99;
      memset(&v119, 0, sizeof(v119));
      v118 = 0xAAAAAAAAAAAAAAAALL;
      time(&v118);
      localtime_r(&v118, &v119);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
      dprintf(glog_fd, "%s ", cStr);
      v100 = glog_fd;
      CFArrayGetTypeID();
      CFGetTypeID(v70);
      dprintf(v100, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

    goto LABEL_121;
  }

  v92 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *cStr = 136315138;
    *&cStr[4] = "IOReportChannels";
    v93 = v92;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    *cStr = 136315138;
    *&cStr[4] = "IOReportChannels";
    v93 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v93, OS_LOG_TYPE_ERROR, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_116:
  if (glog_fd)
  {
    *&v98 = 0xAAAAAAAAAAAAAAAALL;
    *(&v98 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v128 = v98;
    v129 = v98;
    v126 = v98;
    v127 = v98;
    v125 = v98;
    *&cStr[16] = v98;
    v124 = v98;
    *cStr = v98;
    memset(&v119, 0, sizeof(v119));
    v118 = 0xAAAAAAAAAAAAAAAALL;
    time(&v118);
    localtime_r(&v118, &v119);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v119);
    dprintf(glog_fd, "%s ", cStr);
    dprintf(glog_fd, "CCIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
  }

LABEL_121:
  if (v44)
  {
LABEL_122:
    CFRelease(v44);
  }

  v101 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t CCIOReporterFormatter::ccfree(CCIOReporterFormatter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
    *(this + 5) = 0;
  }

  return CCFormatter::ccfree(this);
}

BOOL CCProfileMonitor::initWithConfigure(CCProfileMonitor *this, CCConfigure *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = pthread_mutex_init((this + 16), 0);
  if (v4)
  {
    v5 = v4;
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v5;
        v7 = v6;
LABEL_14:
        _os_log_error_impl(&dword_2452A3000, v7, OS_LOG_TYPE_ERROR, "CCProfileMonitor::initWithConfigure ERROR INIT MUTEX: %d\n", buf, 8u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      v7 = MEMORY[0x277D86220];
      goto LABEL_14;
    }

    if (glog_fd)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v10;
      v23 = v10;
      v20 = v10;
      v21 = v10;
      v18 = v10;
      v19 = v10;
      *buf = v10;
      v17 = v10;
      memset(&v15, 0, sizeof(v15));
      v14 = 0xAAAAAAAAAAAAAAAALL;
      time(&v14);
      localtime_r(&v14, &v15);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::initWithConfigure ERROR INIT MUTEX: %d\n", v5);
    }

    v8 = 0;
    goto LABEL_12;
  }

  *(this + 11) = a2;
  (*(*a2 + 40))(a2);
  CCProfileMonitor::setStreamEventHandler(this);
  v8 = CCProfileMonitor::initializeProfilePort(this);
  if (!v8)
  {
    CCProfileMonitor::freeResources(this);
  }

  v9 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN16CCProfileMonitor17initWithConfigureEP11CCConfigure_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void CCProfileMonitor::setStreamEventHandler(CCProfileMonitor *this)
{
  v25 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = coreCaptureOsLog;
  if (DarwinNotifyCenter)
  {
    v4 = DarwinNotifyCenter;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler \n", buf, 2u);
LABEL_11:
    if (glog_fd)
    {
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23 = v7;
      v24 = v7;
      v21 = v7;
      v22 = v7;
      v19 = v7;
      v20 = v7;
      *buf = v7;
      v18 = v7;
      memset(&v16, 0, sizeof(v16));
      v15 = 0xAAAAAAAAAAAAAAAALL;
      time(&v15);
      localtime_r(&v15, &v16);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v16);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler \n");
    }

    CFNotificationCenterAddObserver(v4, this, 0, @"CCDaemonProfile Changed", @"CCDaemonProfile Changed", CFNotificationSuspensionBehaviorDeliverImmediately);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___ZN16CCProfileMonitor21setStreamEventHandlerEv_block_invoke;
    handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
    handler[4] = this;
    global_queue = dispatch_get_global_queue(0, 0);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", global_queue, handler);
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler Registered for notification callback.\n", buf, 2u);
LABEL_19:
    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23 = v11;
      v24 = v11;
      v21 = v11;
      v22 = v11;
      v19 = v11;
      v20 = v11;
      *buf = v11;
      v18 = v11;
      memset(&v16, 0, sizeof(v16));
      v15 = 0xAAAAAAAAAAAAAAAALL;
      time(&v15);
      localtime_r(&v15, &v16);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v16);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler Registered for notification callback.\n");
    }

    goto LABEL_24;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v6 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v6 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v6, OS_LOG_TYPE_ERROR, "CCProfileMonitor::setStreamEventHandler Unable to get notification center for configuration reader.", buf, 2u);
LABEL_22:
  if (glog_fd)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v12;
    v24 = v12;
    v21 = v12;
    v22 = v12;
    v19 = v12;
    v20 = v12;
    *buf = v12;
    v18 = v12;
    memset(&v16, 0, sizeof(v16));
    v15 = 0xAAAAAAAAAAAAAAAALL;
    time(&v15);
    localtime_r(&v15, &v16);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v16);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler Unable to get notification center for configuration reader.");
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
}

BOOL CCProfileMonitor::initializeProfilePort(CCProfileMonitor *this)
{
  v5[5] = *MEMORY[0x277D85DE8];
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN16CCProfileMonitor21initializeProfilePortEv_block_invoke;
  v5[3] = &__block_descriptor_40_e8_v12__0i8l;
  v5[4] = this;
  result = notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", this + 20, global_queue, v5) == 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void CCProfileMonitor::freeResources(CCProfileMonitor *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::freeResources Entered\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v4;
    v22 = v4;
    v19 = v4;
    v20 = v4;
    v17 = v4;
    v18 = v4;
    *buf = v4;
    v16 = v4;
    memset(&v14, 0, sizeof(v14));
    v13 = 0xAAAAAAAAAAAAAAAALL;
    time(&v13);
    localtime_r(&v13, &v14);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::freeResources Entered\n");
  }

  if (!pthread_mutex_lock((this + 16)))
  {
    CCProfileMonitor::fProfileLoaded = 0;
    v5 = *(this + 20);
    if (v5)
    {
      notify_cancel(v5);
      *(this + 20) = 0;
    }

    v6 = *(this + 11);
    if (v6)
    {
      (*(*v6 + 48))(v6);
      *(this + 11) = 0;
    }

    v7 = *(this + 14);
    if (v7)
    {
      CFRelease(v7);
      *(this + 14) = 0;
    }

    pthread_mutex_unlock((this + 16));
    pthread_mutex_destroy((this + 16));
    v8 = *(this + 15);
    if (v8)
    {
      CFRelease(v8);
      *(this + 15) = 0;
    }

    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::freeResources done\n", buf, 2u);
LABEL_24:
    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v11;
      v22 = v11;
      v19 = v11;
      v20 = v11;
      v17 = v11;
      v18 = v11;
      *buf = v11;
      v16 = v11;
      memset(&v14, 0, sizeof(v14));
      v13 = 0xAAAAAAAAAAAAAAAALL;
      time(&v13);
      localtime_r(&v13, &v14);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::freeResources done\n");
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void ___ZN16CCProfileMonitor17initWithConfigureEP11CCConfigure_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor 10 seconds since CCProfileMonitor initted, calling profileCallback(1) to check for installed profiles\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v4;
    v15 = v4;
    v12 = v4;
    v13 = v4;
    v10 = v4;
    v11 = v4;
    *buf = v4;
    v9 = v4;
    memset(&v7, 0, sizeof(v7));
    v6 = 0xAAAAAAAAAAAAAAAALL;
    time(&v6);
    localtime_r(&v6, &v7);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v7);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor 10 seconds since CCProfileMonitor initted, calling profileCallback(1) to check for installed profiles\n");
  }

  CCProfileMonitor::profileCallback(v1, 2);
  v5 = *MEMORY[0x277D85DE8];
}

void CCProfileMonitor::profileCallback(CCProfileMonitor *this, int a2)
{
  v94 = *MEMORY[0x277D85DE8];
  cf = 0;
  resourceData = 0;
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v5 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      goto LABEL_7;
    }

    explicit = atomic_load_explicit((CCDaemon::getInstance(v5) + 304), memory_order_acquire);
    v7 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = explicit & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v87) = v7;
    v8 = v4;
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      goto LABEL_7;
    }

    v9 = atomic_load_explicit((CCDaemon::getInstance(v5) + 304), memory_order_acquire);
    v10 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = v9 & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v87) = v10;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback starting states -> isShutdownPending %d fProfileLoaded %d fProfileRemoveApplied %d\n", buf, 0x14u);
LABEL_7:
  if (glog_fd)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v92 = v11;
    v93 = v11;
    v90 = v11;
    v91 = v11;
    v89 = v11;
    v87 = v11;
    v88 = v11;
    *buf = v11;
    memset(&v83, 0, sizeof(v83));
    v82 = 0xAAAAAAAAAAAAAAAALL;
    time(&v82);
    localtime_r(&v82, &v83);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
    v12 = dprintf(glog_fd, "%s ", buf);
    v13 = glog_fd;
    v14 = atomic_load_explicit((CCDaemon::getInstance(v12) + 304), memory_order_acquire) & 1;
    v5 = dprintf(v13, "CCProfileMonitor::profileCallback starting states -> isShutdownPending %d fProfileLoaded %d fProfileRemoveApplied %d\n", v14, CCProfileMonitor::fProfileLoaded, *(this + 105));
  }

  if (atomic_load_explicit((CCDaemon::getInstance(v5) + 304), memory_order_acquire))
  {
    v15 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v16 = v15;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v16 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "CCProfileMonitor::profileCallback during shutdown (1)\n", buf, 2u);
LABEL_18:
    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v92 = v20;
      v93 = v20;
      v90 = v20;
      v91 = v20;
      v89 = v20;
      v87 = v20;
      v88 = v20;
      *buf = v20;
      memset(&v83, 0, sizeof(v83));
      v82 = 0xAAAAAAAAAAAAAAAALL;
      time(&v82);
      localtime_r(&v82, &v83);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback during shutdown (1)\n");
    }

    goto LABEL_55;
  }

  *(this + 104) = 1;
  v17 = pthread_mutex_lock((this + 16));
  if (v17)
  {
    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v19 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "CCProfileMonitor::profileCallback failed to get fMutex, exiting\n", buf, 2u);
LABEL_25:
    if (glog_fd)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v92 = v23;
      v93 = v23;
      v90 = v23;
      v91 = v23;
      v89 = v23;
      v87 = v23;
      v88 = v23;
      *buf = v23;
      memset(&v83, 0, sizeof(v83));
      v82 = 0xAAAAAAAAAAAAAAAALL;
      time(&v82);
      localtime_r(&v82, &v83);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback failed to get fMutex, exiting\n");
    }

LABEL_36:
    v32 = 0;
    v33 = 0;
    v28 = 0;
    goto LABEL_37;
  }

  if (atomic_load_explicit((CCDaemon::getInstance(v17) + 304), memory_order_acquire))
  {
    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCProfileMonitor::profileCallback during shutdown (2)\n", buf, 2u);
LABEL_34:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v92 = v31;
      v93 = v31;
      v90 = v31;
      v91 = v31;
      v89 = v31;
      v87 = v31;
      v88 = v31;
      *buf = v31;
      memset(&v83, 0, sizeof(v83));
      v82 = 0xAAAAAAAAAAAAAAAALL;
      time(&v82);
      localtime_r(&v82, &v83);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback during shutdown (2)\n");
    }

    goto LABEL_36;
  }

  v24 = *MEMORY[0x277CBECE8];
  v25 = CFURLCreateWithString(*MEMORY[0x277CBECE8], @"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.plist", 0);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    if (CFURLCreateDataAndPropertiesFromResource(v24, v25, &resourceData, 0, 0, 0) && resourceData)
    {
      v29 = CFPropertyListCreateWithData(v24, resourceData, 0, 0, 0);
      v28 = v29;
      if (v29 && CFPropertyListIsValid(v29, kCFPropertyListXMLFormat_v1_0))
      {
        v30 = CFGetTypeID(v28);
        v27 = 2 * (v30 == CFDictionaryGetTypeID());
      }

      else
      {
        v27 = 0;
      }
    }

    CFRelease(v26);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v46 = CFURLCreateWithString(v24, @"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.bt.plist", 0);
  if (v46)
  {
    v47 = v46;
    if (CFURLCreateDataAndPropertiesFromResource(v24, v46, &cf, 0, 0, 0))
    {
      v48 = cf == 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = !v48;
    CFRelease(v47);
  }

  else
  {
    v49 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v49 && (v50 = CFURLCreateWithFileSystemPath(v24, @"/private/var/tmp/com.apple.corecaptured/com.apple.bluetooth.logging.plist", kCFURLPOSIXPathStyle, 0)) != 0)
  {
    v81 = v50;
    v33 = 0;
    if (CFURLCreateDataAndPropertiesFromResource(v24, v50, &cf, 0, 0, 0))
    {
      if (cf)
      {
        v51 = CFPropertyListCreateWithData(v24, cf, 0, 0, 0);
        v33 = v51;
        if (v51)
        {
          if (CFPropertyListIsValid(v51, kCFPropertyListXMLFormat_v1_0))
          {
            v52 = CFGetTypeID(v33);
            if (v52 == CFDictionaryGetTypeID())
            {
              ++v27;
            }
          }
        }
      }
    }
  }

  else
  {
    v33 = 0;
    v81 = 0;
  }

  v53 = coreCaptureOsLog;
  if (CCProfileMonitor::fProfileLoaded != v27)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 67109376;
      *&buf[4] = resourceData != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v55 = v53;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      *buf = 67109376;
      *&buf[4] = resourceData != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v55 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v55, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback read WiFi profile plist valid: %d mask: %d\n", buf, 0xEu);
LABEL_96:
    if (glog_fd)
    {
      *&v57 = 0xAAAAAAAAAAAAAAAALL;
      *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v92 = v57;
      v93 = v57;
      v90 = v57;
      v91 = v57;
      v89 = v57;
      v87 = v57;
      v88 = v57;
      *buf = v57;
      memset(&v83, 0, sizeof(v83));
      v82 = 0xAAAAAAAAAAAAAAAALL;
      time(&v82);
      localtime_r(&v82, &v83);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback read WiFi profile plist valid: %d mask: %d\n", resourceData != 0, v27);
    }

    v58 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      *buf = 67109376;
      *&buf[4] = cf != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v59 = v58;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      *buf = 67109376;
      *&buf[4] = cf != 0;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v59 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v59, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback read BT profile plist valid: %d mask: %d\n", buf, 0xEu);
LABEL_104:
    if (glog_fd)
    {
      *&v60 = 0xAAAAAAAAAAAAAAAALL;
      *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v92 = v60;
      v93 = v60;
      v90 = v60;
      v91 = v60;
      v89 = v60;
      v87 = v60;
      v88 = v60;
      *buf = v60;
      memset(&v83, 0, sizeof(v83));
      v82 = 0xAAAAAAAAAAAAAAAALL;
      time(&v82);
      localtime_r(&v82, &v83);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback read BT profile plist valid: %d mask: %d\n", cf != 0, v27);
    }

    v61 = coreCaptureOsLog;
    if (v27)
    {
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v62 = v61;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v62 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v62, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback Entered token:%d\n", buf, 8u);
LABEL_118:
      if (glog_fd)
      {
        *&v64 = 0xAAAAAAAAAAAAAAAALL;
        *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v92 = v64;
        v93 = v64;
        v90 = v64;
        v91 = v64;
        v89 = v64;
        v87 = v64;
        v88 = v64;
        *buf = v64;
        memset(&v83, 0, sizeof(v83));
        v82 = 0xAAAAAAAAAAAAAAAALL;
        time(&v82);
        localtime_r(&v82, &v83);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCProfileMonitor::profileCallback Entered token:%d\n", a2);
      }

      v32 = CCProfileMonitor::mergeProfilePlist(this, v28, v33);
      Count = CFDictionaryGetCount(v32);
      *(this + 12) = Count;
      v66 = coreCaptureOsLog;
      if (Count)
      {
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_132;
          }

          *buf = 67109376;
          *&buf[4] = CCProfileMonitor::fProfileLoaded;
          *&buf[8] = 1024;
          *&buf[10] = v27;
          v67 = v66;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_132;
          }

          *buf = 67109376;
          *&buf[4] = CCProfileMonitor::fProfileLoaded;
          *&buf[8] = 1024;
          *&buf[10] = v27;
          v67 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v67, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback changed. previous state: %d, current state: %d\n", buf, 0xEu);
LABEL_132:
        if (glog_fd)
        {
          *&v70 = 0xAAAAAAAAAAAAAAAALL;
          *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v92 = v70;
          v93 = v70;
          v90 = v70;
          v91 = v70;
          v89 = v70;
          v87 = v70;
          v88 = v70;
          *buf = v70;
          memset(&v83, 0, sizeof(v83));
          v82 = 0xAAAAAAAAAAAAAAAALL;
          time(&v82);
          localtime_r(&v82, &v83);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCProfileMonitor::profileCallback changed. previous state: %d, current state: %d\n", CCProfileMonitor::fProfileLoaded, v27);
        }

        CCProfileMonitor::profileRemoved(this);
        if (CCProfileMonitor::getOwnersFromProfile(this, v32))
        {
          *(this + 12) = CFDictionaryGetCount(v32);
          v71 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v72 = v71;
LABEL_149:
              _os_log_impl(&dword_2452A3000, v72, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback Loaded \n", buf, 2u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v72 = MEMORY[0x277D86220];
            goto LABEL_149;
          }

          if (glog_fd)
          {
            *&v76 = 0xAAAAAAAAAAAAAAAALL;
            *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v92 = v76;
            v93 = v76;
            v90 = v76;
            v91 = v76;
            v89 = v76;
            v87 = v76;
            v88 = v76;
            *buf = v76;
            memset(&v83, 0, sizeof(v83));
            v82 = 0xAAAAAAAAAAAAAAAALL;
            time(&v82);
            localtime_r(&v82, &v83);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCProfileMonitor::profileCallback Loaded \n");
          }

          CCPipeMonitor::profileLoaded(*(*(this + 11) + 16));
          *(this + 14) = CFDictionaryCreateCopy(v24, v32);
          CCProfileMonitor::applyConfiguration(this, 0, 0);
          CCProfileMonitor::fProfileLoaded = v27;
          *(this + 105) = 0;
          CFPreferencesFlushCaches();
          goto LABEL_165;
        }

        v73 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_163;
          }

          *buf = 0;
          v74 = v73;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_163;
          }

          *buf = 0;
          v74 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v74, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback getting owners from profile failed", buf, 2u);
LABEL_163:
        if (glog_fd)
        {
          *&v79 = 0xAAAAAAAAAAAAAAAALL;
          *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v92 = v79;
          v93 = v79;
          v90 = v79;
          v91 = v79;
          v89 = v79;
          v87 = v79;
          v88 = v79;
          *buf = v79;
          memset(&v83, 0, sizeof(v83));
          v82 = 0xAAAAAAAAAAAAAAAALL;
          time(&v82);
          localtime_r(&v82, &v83);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCProfileMonitor::profileCallback getting owners from profile failed");
        }

        goto LABEL_165;
      }

      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_156;
        }

        v68 = *(this + 105);
        *buf = 67109376;
        *&buf[4] = CCProfileMonitor::fProfileLoaded;
        *&buf[8] = 1024;
        *&buf[10] = v68;
        v69 = v66;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_156;
        }

        v77 = *(this + 105);
        *buf = 67109376;
        *&buf[4] = CCProfileMonitor::fProfileLoaded;
        *&buf[8] = 1024;
        *&buf[10] = v77;
        v69 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v69, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback empty dictionary. fProfileLoaded %d fProfileRemoveApplied %d\n", buf, 0xEu);
LABEL_156:
      if (glog_fd)
      {
        *&v78 = 0xAAAAAAAAAAAAAAAALL;
        *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v92 = v78;
        v93 = v78;
        v90 = v78;
        v91 = v78;
        v89 = v78;
        v87 = v78;
        v88 = v78;
        *buf = v78;
        memset(&v83, 0, sizeof(v83));
        v82 = 0xAAAAAAAAAAAAAAAALL;
        time(&v82);
        localtime_r(&v82, &v83);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCProfileMonitor::profileCallback empty dictionary. fProfileLoaded %d fProfileRemoveApplied %d\n", CCProfileMonitor::fProfileLoaded, *(this + 105));
      }

LABEL_158:
      if ((*(this + 105) & 1) == 0)
      {
        CCProfileMonitor::profileRemoved(this);
      }

      goto LABEL_165;
    }

    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = CCProfileMonitor::fProfileLoaded;
        *&buf[8] = 1024;
        *&buf[10] = 0;
        v63 = v61;
LABEL_143:
        _os_log_impl(&dword_2452A3000, v63, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback no profile installed. previous state: %d, current state: %d\n", buf, 0xEu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = CCProfileMonitor::fProfileLoaded;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      v63 = MEMORY[0x277D86220];
      goto LABEL_143;
    }

    if (glog_fd)
    {
      *&v75 = 0xAAAAAAAAAAAAAAAALL;
      *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v92 = v75;
      v93 = v75;
      v90 = v75;
      v91 = v75;
      v89 = v75;
      v87 = v75;
      v88 = v75;
      *buf = v75;
      memset(&v83, 0, sizeof(v83));
      v82 = 0xAAAAAAAAAAAAAAAALL;
      time(&v82);
      localtime_r(&v82, &v83);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::profileCallback no profile installed. previous state: %d, current state: %d\n", CCProfileMonitor::fProfileLoaded, 0);
    }

    v32 = 0;
    goto LABEL_158;
  }

  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v27;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      v54 = v53;
LABEL_89:
      _os_log_impl(&dword_2452A3000, v54, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback unchanged mask. previous state: %d, current state: %d\n", buf, 0xEu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v27;
    *&buf[8] = 1024;
    *&buf[10] = v27;
    v54 = MEMORY[0x277D86220];
    goto LABEL_89;
  }

  if (glog_fd)
  {
    *&v56 = 0xAAAAAAAAAAAAAAAALL;
    *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v92 = v56;
    v93 = v56;
    v90 = v56;
    v91 = v56;
    v89 = v56;
    v87 = v56;
    v88 = v56;
    *buf = v56;
    memset(&v83, 0, sizeof(v83));
    v82 = 0xAAAAAAAAAAAAAAAALL;
    time(&v82);
    localtime_r(&v82, &v83);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::profileCallback unchanged mask. previous state: %d, current state: %d\n", CCProfileMonitor::fProfileLoaded, v27);
  }

  v32 = 0;
LABEL_165:
  if (v81)
  {
    CFRelease(v81);
  }

LABEL_37:
  if (resourceData)
  {
    CFRelease(resourceData);
    resourceData = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  pthread_mutex_unlock((this + 16));
  *(this + 104) = 0;
  v34 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v35 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (!v35)
    {
      goto LABEL_53;
    }

    v36 = atomic_load_explicit((CCDaemon::getInstance(v35) + 304), memory_order_acquire);
    v37 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = v36 & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v87) = v37;
    v38 = v34;
  }

  else
  {
    v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!v39)
    {
      goto LABEL_53;
    }

    v40 = atomic_load_explicit((CCDaemon::getInstance(v39) + 304), memory_order_acquire);
    v41 = *(this + 105);
    *buf = 67109632;
    *&buf[4] = v40 & 1;
    *&buf[8] = 1024;
    *&buf[10] = CCProfileMonitor::fProfileLoaded;
    *&buf[14] = 1024;
    LODWORD(v87) = v41;
    v38 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v38, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileCallback exiting states CCDaemon::getInstance().isShutdownPending() %d fProfileLoaded %d fProfileRemoveApplied %d\n", buf, 0x14u);
LABEL_53:
  if (glog_fd)
  {
    *&v42 = 0xAAAAAAAAAAAAAAAALL;
    *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v92 = v42;
    v93 = v42;
    v90 = v42;
    v91 = v42;
    v89 = v42;
    v87 = v42;
    v88 = v42;
    *buf = v42;
    memset(&v83, 0, sizeof(v83));
    v82 = 0xAAAAAAAAAAAAAAAALL;
    time(&v82);
    localtime_r(&v82, &v83);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v83);
    v43 = dprintf(glog_fd, "%s ", buf);
    v44 = glog_fd;
    atomic_load_explicit((CCDaemon::getInstance(v43) + 304), memory_order_acquire);
    v80 = *(this + 105);
    dprintf(v44, "CCProfileMonitor::profileCallback exiting states CCDaemon::getInstance().isShutdownPending() %d fProfileLoaded %d fProfileRemoveApplied %d\n");
  }

LABEL_55:
  v45 = *MEMORY[0x277D85DE8];
}