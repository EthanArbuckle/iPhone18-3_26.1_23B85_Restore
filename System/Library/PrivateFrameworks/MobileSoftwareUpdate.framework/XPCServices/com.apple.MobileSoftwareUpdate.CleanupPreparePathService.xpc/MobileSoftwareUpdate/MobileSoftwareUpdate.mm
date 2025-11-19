CFTypeRef copy_nvram_variable_with_system_nvram_check(const __CFString *a1)
{
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    v7 = @"Could not get master port\n";
  }

  else
  {
    v9 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v9)
    {
      v10 = v9;
      CFProperty = IORegistryEntryCreateCFProperty(v9, a1, kCFAllocatorDefault, 0);
      IOObjectRelease(v10);
      return CFProperty;
    }

    v7 = @"Could not get options entry from the device tree\n";
  }

  logfunction("", 1, v7, v2, v3, v4, v5, v6, v12);
  return 0;
}

BOOL set_nvram_object_with_system_nvram_check(const __CFString *a1, _BOOL8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = @"Can't insert nil key into registry\n";
LABEL_10:
    logfunction("", 1, v18, a4, a5, a6, a7, a8, v20);
    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    logfunction("", 1, @"Can't insert nil object into registry\n", a4, a5, a6, a7, a8, v20);
    return v8;
  }

  v10 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
  if (!v10)
  {
    v18 = @"Failed to locate IODeviceTree options in IO registry\n";
    goto LABEL_10;
  }

  v11 = v10;
  v12 = IORegistryEntrySetCFProperty(v10, a1, v8);
  v8 = v12 == 0;
  if (v12)
  {
    logfunction("", 1, @"Failed to set key %@ in IO registry: %d\n", v13, v14, v15, v16, v17, a1);
  }

  IOObjectRelease(v11);
  return v8;
}

uint64_t msu_delete_nvram_variable_if_exists(const __CFString *a1, _BYTE *a2)
{
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
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *buffer = 0u;
  v15 = 0u;
  v4 = msu_nvram_exists(a1);
  CFStringGetCString(a1, buffer, 511, 0x8000100u);
  if (!v4)
  {
    v12 = @"%s: NVRAM %s not found..Nothing to do\n\n";
    goto LABEL_5;
  }

  v10 = set_nvram_object_with_system_nvram_check(@"IONVRAM-DELETE-PROPERTY", a1, 0, v5, v6, v7, v8, v9);
  v11 = 0;
  if (v10)
  {
    v12 = @"%s: Deleted value %s\n\n";
LABEL_5:
    v11 = 1;
    logfunction("", 1, v12, v5, v6, v7, v8, v9, "msu_delete_nvram_variable_if_exists");
  }

  *a2 = v4;
  return v11;
}

BOOL msu_nvram_exists(const __CFString *a1)
{
  v1 = copy_nvram_variable_with_system_nvram_check(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

BOOL set_nvram_variable(char *cStr, _BOOL8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cStr)
  {
    v23 = @"Can't set null key name into NVRAM\n";
LABEL_11:
    logfunction("", 1, v23, a4, a5, a6, a7, a8, v25);
    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    logfunction("", 1, @"Can't set NULL value into NVRAM\n", a4, a5, a6, a7, a8, v25);
    return v8;
  }

  v9 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v9)
  {
    v23 = @"Failed to allocate string for key\n";
    goto LABEL_11;
  }

  v10 = v9;
  v11 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
  if (!v11)
  {
    logfunction("", 1, @"Failed to allocate string for value\n", v12, v13, v14, v15, v16, v25);
    CFRelease(v10);
    return 0;
  }

  v17 = v11;
  v8 = set_nvram_object_with_system_nvram_check(v10, v11, 0, v12, v13, v14, v15, v16);
  if (!v8)
  {
    logfunction("", 1, @"Failed to set value into NVRAM\n", v18, v19, v20, v21, v22, v25);
  }

  CFRelease(v10);
  CFRelease(v17);
  return v8;
}

BOOL msu_sync_nvram(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = @"IONVRAM-FORCESYNCNOW-PROPERTY";
  }

  else
  {
    v8 = @"IONVRAM-SYNCNOW-PROPERTY";
  }

  return set_nvram_object_with_system_nvram_check(v8, v8, 0, a4, a5, a6, a7, a8);
}

int *logfunctionv(const char *a1, int a2, const __CFString *a3, va_list a4)
{
  v8 = *__error();
  memcpy(__dst, "Error creating CFString", sizeof(__dst));
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = "";
  }

  if (logfunctionv_onceToken != -1)
  {
    logfunctionv_cold_1();
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, a3, a4);
  v11 = pthread_self();
  v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%08llx %s: %@", v11, v9, v10);
  CFRelease(v10);
  if (v12)
  {
    v13 = __dst;
    if (CFStringGetCString(v12, __dst, 1024, 0x8000100u))
    {
      v14 = 0;
    }

    else
    {
      Length = CFStringGetLength(v12);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6FEB6E8AuLL);
      CFStringGetCString(v12, v13, MaximumSizeForEncoding + 1, 0x8000100u);
      v14 = v13;
    }

    v15 = strlen(v13);
    CFRelease(v12);
  }

  else
  {
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  v18 = logfunctionv_logObject;
  if (logfunctionv_logObject || (v18 = os_log_create("com.apple.MobileSoftwareUpdate", "Info"), (logfunctionv_logObject = v18) != 0))
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    }
  }

  if (console_fd != -1)
  {
    write(console_fd, v13, v15);
  }

  if (a2)
  {
    openRestoreLogFile(0);
    writeToRestoreLogFile(v13, v15);
  }

  fprintf(__stderrp, "%s: %s", v9, v13);
  free(v14);
  result = __error();
  *result = v8;
  return result;
}

void __logfunctionv_block_invoke(id a1)
{
  if (getenv("__OSINSTALL_ENVIRONMENT"))
  {
    console_fd = open("/dev/console", 131082);
  }
}

uint64_t msuSharedLogger()
{
  if (msuSharedLogger_pred != -1)
  {
    msuSharedLogger_cold_1();
  }

  return msuSharedLogger___instance;
}

uint64_t openRestoreLogFileWithPath(const char *a1, int a2)
{
  v2 = _restoreLogFD;
  if (_restoreLogFD < 0)
  {
    if (!a2 && _restoreLogFD == -2)
    {
      return 0xFFFFFFFFLL;
    }

    _restoreLogFD = -2;
    if (mkparentdir(a1, 0x1EDu))
    {
      __error();
      v4 = __error();
      strerror(*v4);
      v5 = @"Could not create path %s: %s\n";
    }

    else
    {
      v7 = open_dprotected_np(a1, 536871434, 4, 0, 420);
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      if (*__error() == 13 || *__error() == 1)
      {
        if (unlink(a1) == -1 && *__error() != 2)
        {
          v9 = __error();
          strerror(*v9);
          v5 = @"Failed to unlink '%s': %s\n";
          goto LABEL_6;
        }

        v7 = open_dprotected_np(a1, 536871434, 4, 0, 420);
        if ((v7 & 0x80000000) == 0)
        {
LABEL_10:
          v2 = v7;
          atomic_store(0, &_restoreLogGrowth);
          _restoreLogFD = v7;
          _rotateRestoreLogFD(v7);
          return v2;
        }
      }

      __error();
      v8 = __error();
      strerror(*v8);
      v5 = @"Could not open '%s': %s\n";
    }

LABEL_6:
    logfunction("", 0, v5);
    return 0xFFFFFFFFLL;
  }

  return v2;
}

int *_rotateRestoreLogFD(int a1)
{
  memset(&v9, 0, sizeof(v9));
  if (fstat(a1, &v9))
  {
    return __error();
  }

  flock(a1, 2);
  if (v9.st_size > 3145728)
  {
    v3 = malloc_type_malloc(0x100000uLL, 0xE6EB862FuLL);
    if ((((v9.st_size >= 0x100000uLL) + (v9.st_size >> 63) + 1) & 1) != (v9.st_size - 0x100000) >> 63)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9.st_size - 0x100000;
    }

    v5 = pread(a1, v3, 0x100000uLL, v4);
    if (v5 >= 1 && (v6 = v5, (v7 = memchr(v3, 10, v5)) != 0))
    {
      v8 = v3 - (v7 + 1) + v6;
      pwrite(a1, v7 + 1, v8, 0);
    }

    else
    {
      v8 = 0;
    }

    ftruncate(a1, v8);
    free(v3);
  }

  return flock(a1, 8);
}

uint64_t closeRestoreLogFile()
{
  result = _restoreLogFD;
  if ((_restoreLogFD & 0x80000000) == 0)
  {
    result = close(_restoreLogFD);
  }

  atomic_store(0, &_restoreLogGrowth);
  _restoreLogFD = -2;
  return result;
}

uint64_t checkForRestoreLogFD(int a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v69, 0, sizeof(v69));
  logfunction("", 0, @"entering %s\n", a4, a5, a6, a7, a8, "checkForRestoreLogFD");
  if (fstat(a1, &v69) != -1)
  {
    logfunction("", 0, @"found restore log (size = %llu)\n", v10, v11, v12, v13, v14, v69.st_size);
    if (v69.st_size < 3145728)
    {
      v42 = malloc_type_malloc(v69.st_size + 1, 0xFDAB33EBuLL);
      if (v42)
      {
        v26 = v42;
        v43 = read(a1, v42, v69.st_size);
        if ((v43 & 0x8000000000000000) == 0)
        {
          v44 = v43;
LABEL_21:
          result = 0;
          v26[v44] = 0;
          *a2 = v26;
          return result;
        }

        v47 = __error();
        v67 = strerror(*v47);
        logfunction("", 0, @"unable to read from restore log file: %s\n", v48, v49, v50, v51, v52, v67);
        goto LABEL_28;
      }
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      *__str = 0u;
      v71 = 0u;
      logfunction("", 0, @"restore log is suspiciously large - truncating\n", v15, v16, v17, v18, v19, v65);
      v20 = malloc_type_malloc(0x300000uLL, 0xE206B481uLL);
      if (v20)
      {
        v26 = v20;
        v27 = read(a1, v20, 0x180000uLL);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v28 = v27;
          if (lseek(a1, v27 - 3145727, 2) < 0)
          {
            v46 = @"unable to seek in restore log file: %s\n";
            goto LABEL_27;
          }

          v29 = &v26[v28];
          v30 = read(a1, &v26[v28], 3145727 - v28);
          if (v30 != -1)
          {
            v31 = v30;
            v32 = &v26[v28];
            do
            {
              if (v28 >= 1)
              {
                v26[v28 - 1] = 0;
                v33 = strrchr(v26, 10);
                if (v33)
                {
                  v34 = v33 + 1;
                }

                else
                {
                  v34 = v26;
                }

                *v34 = 0;
                v28 = v34 - v26;
              }

              if (v31 < 1)
              {
                break;
              }

              v35 = memchr(v29, 10, v31);
              if (!v35)
              {
                v31 = 0;
                break;
              }

              v29 = v35 + 1;
              v31 = &v32[v31] - (v35 + 1);
              v32 = v35 + 1;
            }

            while (v35 + 1 - &v26[v28] < 160);
            snprintf(__str, 0xA0uLL, "--------------------\n------ Truncated %lld bytes ------\n--------------------\n", v69.st_size - (v28 + v31));
            v59 = &v26[v28];
            v60 = v77;
            *(v59 + 6) = v76;
            *(v59 + 7) = v60;
            v61 = v79;
            *(v59 + 8) = v78;
            *(v59 + 9) = v61;
            v62 = v73;
            *(v59 + 2) = v72;
            *(v59 + 3) = v62;
            v63 = v75;
            *(v59 + 4) = v74;
            *(v59 + 5) = v63;
            v64 = v71;
            *v59 = *__str;
            *(v59 + 1) = v64;
            v44 = strlen(__str) + v28;
            if (v31)
            {
              if (v29 > &v26[v44])
              {
                memmove(&v26[v44], v29, v31);
                v44 += v31;
              }
            }

            goto LABEL_21;
          }
        }

        v46 = @"unable to read from restore log file: %s\n";
LABEL_27:
        v53 = __error();
        v68 = strerror(*v53);
        logfunction("", 0, v46, v54, v55, v56, v57, v58, v68);
LABEL_28:
        free(v26);
        return 0xFFFFFFFFLL;
      }
    }

    logfunction("", 0, @"unable to allocate memory to read restore log\n", v21, v22, v23, v24, v25, v65);
    return 0xFFFFFFFFLL;
  }

  v36 = __error();
  v66 = strerror(*v36);
  logfunction("", 1, @"fstat on restore log failed: %s\n", v37, v38, v39, v40, v41, v66);
  return 0xFFFFFFFFLL;
}

size_t writeToRestoreLogFile(void *__buf, size_t __nbyte)
{
  v2 = __nbyte;
  v3 = _restoreLogFD;
  if ((_restoreLogFD & 0x80000000) == 0)
  {
    v4 = write(_restoreLogFD, __buf, __nbyte);
    v2 = v4;
    if (v4 >= 1)
    {
      v5 = atomic_fetch_add_explicit(&_restoreLogGrowth, v4, memory_order_relaxed) + v4;
      if (v5 > 0x10000)
      {
        atomic_fetch_add_explicit(&_restoreLogGrowth, -v5, memory_order_relaxed);
        _rotateRestoreLogFD(v3);
      }
    }
  }

  return v2;
}

uint64_t submitRestoreLogFileToLogDir(__CFError *a1, uint64_t a2, const char *a3, const char *a4, const __CFString *a5)
{
  v122 = 0;
  bzero(v136, 0x400uLL);
  v10 = os_transaction_create();
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = "/private/var/MobileSoftwareUpdate/restore.log";
  }

  v12 = open(v11, 2);
  v19 = v12;
  if (v12 == -1)
  {
    v42 = __error();
    strerror(*v42);
    logfunction("", 1, @"unable to open restore log (%s): %s (%d)\n", v43, v44, v45, v46, v47, v11);
    v26 = 0;
LABEL_16:
    v33 = 0;
    goto LABEL_40;
  }

  v20 = checkForRestoreLogFD(v12, &v122, v13, v14, v15, v16, v17, v18);
  v26 = v122;
  if (v20 || !v122)
  {
    logfunction("", 1, @"unable to read from restore log file\n", v21, v22, v23, v24, v25, v112);
    goto LABEL_16;
  }

  _rotateRestoreLogFD(v19);
  v27 = MGCopyAnswer();
  v33 = v27;
  if (!v27)
  {
    v48 = @"failed to query device serial number\n";
LABEL_39:
    logfunction("", 1, v48, v28, v29, v30, v31, v32, v112);
LABEL_40:
    free(v26);
    v50 = 0;
    v51 = 0;
    v52 = 0xFFFFFFFFLL;
    if (!v33)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (CFStringGetLength(v27) < 1)
  {
    v49 = @"device has no serial number for scrubbing\n";
LABEL_20:
    logfunction("", 1, v49, v34, v35, v36, v37, v38, v112);
    goto LABEL_21;
  }

  *buffer = 0u;
  v138 = 0u;
  if (CFStringGetCString(v33, buffer, 32, 0x8000100u) != 1)
  {
    v49 = @"unable to get c string for device serial number\n";
    goto LABEL_20;
  }

  v39 = strcasestr(v26, buffer);
  if (v39)
  {
    v40 = v39;
    do
    {
      v41 = strlen(buffer);
      memset(v40, 88, v41);
      v40 = strcasestr(v40, buffer);
    }

    while (v40);
  }

LABEL_21:
  if (_AMRRegexSubstitution(v26, "'[^\n]*' has been added", "'<<File name>>' has been added ") || _AMRRegexSubstitution(v26, "verify_callback: '[^\n]*' did not verify and is not on the exception list.", "verify_callback: '<<File name>>' did not verify and is not on the exception list.") || _AMRRegexSubstitution(v26, "'[^\n]*' is on the exception list", "'<<File name>>' is on the exception list") || _AMRRegexSubstitution(v26, "[:-][0-9a-fA-F]{8}", "XXXX") || _AMRRegexSubstitution(v26, "[:-] [0-9a-fA-F]{8}", "XXXX") || _AMRRegexSubstitution(v26, "[:-] [a-zA-Z0-9]{18}[[:>:]]", "XXXX") || _AMRRegexSubstitution(v26, "[:-][a-zA-Z0-9]{8}[:-][a-zA-Z0-9]{16}", "XXXX") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{40}", "<<<<<<<<<<<<<<<<<<UDID>>>>>>>>>>>>>>>>>>") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{20}", "<<<<<<<<ICCID>>>>>>>") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{19}", "<<<<<<<ICCID>>>>>>>") || _AMRRegexSubstitution(v26, "[0-9]{15}", "<<<<<IMEI>>>>>>") || _AMRRegexSubstitution(v26, "ecid=0x[0-9a-fA-F]*,", "ecid=0xXXXXXXXXXXX") || _AMRRegexSubstitution(v26, "ApECID[^\n]*value = [+-][0-9<>IMEI]*", "ApECID} = X {X") || _AMRRegexSubstitution(v26, "[0-9a-fA-F]{14}", "<<<<<MEID>>>>>") || _AMRRegexSubstitution(v26, "ChipSerialNo[^\n]*bytes = 0x[0-9a-fA-F]*}", "ChipSerialNo ") || _AMRRegexSubstitution(v26, "snum=0x[0-9a-fA-F]*,", "snum=0xXXXXXXXX") || _AMRRegexSubstitution(v26, "BbSNUM[^\n]*", "BbSNUM} = 0xXXXXXXXX }"))
  {
    v48 = @"failed to scrub log\n";
    goto LABEL_39;
  }

  err = a1;
  theDict = strlen(v26);
  if (theDict)
  {
    v54 = v26;
    do
    {
      v55 = *v54;
      if (v55 < 0)
      {
        if (!__maskrune(*v54, 0x40000uLL))
        {
          v56 = __maskrune(v55, 0x4000uLL);
LABEL_57:
          if (!v56)
          {
            *v54 = 46;
          }
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v55] & 0x40000) == 0)
      {
        v56 = _DefaultRuneLocale.__runetype[v55] & 0x4000;
        goto LABEL_57;
      }

      ++v54;
      theDict = (theDict - 1);
    }

    while (theDict);
  }

  theDicta = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDicta)
  {
    v48 = @"failed to create crashReporterDictionary\n";
    goto LABEL_39;
  }

  if (err)
  {
    v57 = CFErrorCopyUserInfo(err);
    if (v57)
    {
      v58 = v57;
      Value = CFDictionaryGetValue(v57, @"target_update");
      Code = CFErrorGetCode(err);
      CFRelease(v58);
    }

    else
    {
      Code = CFErrorGetCode(err);
      Value = 0;
    }
  }

  else
  {
    Value = 0;
    Code = -1;
  }

  if (Value)
  {
    v60 = Value;
  }

  else
  {
    v60 = @"Unknown";
  }

  erra = v60;
  v61 = MGCopyAnswer();
  if (v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = @"Unknown";
  }

  CFDictionarySetValue(theDicta, @"itunes_version", v62);
  CFDictionarySetValue(theDicta, @"restore_payload_version", erra);
  CFDictionarySetValue(theDicta, @"restore_type", @"OTAUpdate");
  CFDictionarySetValue(theDicta, @"name", @"iPhoneRestore");
  v114 = v62;
  CFDictionarySetValue(theDicta, @"os_version", v62);
  CFDictionarySetValue(theDicta, @"bug_type", @"183");
  errb = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%ld");
  if (!errb)
  {
    logfunction("", 1, @"failed to create CFString from %ld\n", v63, v64, v65, v66, v67, Code);
LABEL_94:
    v76 = 0;
LABEL_95:
    v83 = 0;
LABEL_100:
    v98 = 0;
    goto LABEL_101;
  }

  CFDictionarySetValue(theDicta, @"restore_error", errb);
  if (!a4)
  {
    Default = CFAllocatorGetDefault();
    v83 = CFURLCreateWithFileSystemPath(Default, @"/private/var/mobile/Library/Logs/CrashReporter", kCFURLPOSIXPathStyle, 0);
    goto LABEL_84;
  }

  v68 = CFStringCreateWithCString(0, a4, 0x8000100u);
  if (!v68)
  {
    logfunction("", 1, @"failed to create dataPartitionMountPointStr\n", v69, v70, v71, v72, v73, Code);
    goto LABEL_94;
  }

  v74 = v68;
  v75 = CFAllocatorGetDefault();
  v76 = CFURLCreateWithFileSystemPath(v75, v74, kCFURLPOSIXPathStyle, 0);
  CFRelease(v74);
  if (!v76)
  {
    logfunction("", 1, @"failed to create mountPointURL\n", v77, v78, v79, v80, v81, Code);
    goto LABEL_95;
  }

  if (a5)
  {
    v82 = a5;
  }

  else
  {
    v82 = @"/mobile/Library/Logs/CrashReporter";
  }

  v83 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v76, v82, 1u);
  CFRelease(v76);
  if (!v83)
  {
    v89 = @"mountPointURL CFURLCreateCopyAppendingPathComponent failed\n";
LABEL_99:
    logfunction("", 1, v89, v84, v85, v86, v87, v88, Code);
    v76 = 0;
    goto LABEL_100;
  }

LABEL_84:
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  *v123 = 0u;
  v124 = 0u;
  if (a2 <= 0)
  {
    a2 = time(0);
  }

  v121 = a2;
  v91 = localtime(&v121);
  if (!v91)
  {
    v89 = @"localtime failed\n";
    goto LABEL_99;
  }

  if (!strftime(v123, 0xC8uLL, "%F-%H-%M-%S", v91))
  {
    v89 = @"strftime failed\n";
    goto LABEL_99;
  }

  v92 = CFAllocatorGetDefault();
  v113 = v123;
  v98 = CFStringCreateWithFormat(v92, 0, @"OTAUpdate-%s.ips");
  if (!v98)
  {
    logfunction("", 1, @"failed to create crashReporterFileName\n", v93, v94, v95, v96, v97, v123);
    v76 = 0;
    goto LABEL_101;
  }

  v99 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v83, v98, 0);
  v76 = v99;
  if (!v99)
  {
    v110 = @"failed to create log file name\n";
LABEL_112:
    logfunction("", 1, v110, v100, v101, v102, v103, v104, v113);
LABEL_101:
    free(v26);
    CFRelease(theDicta);
    v52 = 0xFFFFFFFFLL;
    if (!v76)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (!CFURLGetFileSystemRepresentation(v99, 1u, v136, 1024))
  {
    LOBYTE(v113) = v76;
    v110 = @"Could not get file path from %@\n";
    goto LABEL_112;
  }

  logfunction("", 1, @"Trying to write crashreporter log file %s\n", v100, v101, v102, v103, v104, v136);
  if (_storeIpsWithMode(theDicta, v26, v136))
  {
    logfunction("", 1, @"failed to create %s\n", v105, v106, v107, v108, v109, v136);
    goto LABEL_101;
  }

  v111 = ftruncate(v19, 0);
  if (a4 || v111)
  {
    unlink(v11);
  }

  free(v26);
  CFRelease(theDicta);
  v52 = 0;
LABEL_102:
  CFRelease(v76);
LABEL_103:
  if (v83)
  {
    CFRelease(v83);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  v51 = v114;
  v50 = errb;
  if (v33)
  {
LABEL_41:
    CFRelease(v33);
  }

LABEL_42:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  os_release(v10);
  if (v19 != -1 && close(v19) == -1)
  {
    submitRestoreLogFileToLogDir_cold_1();
  }

  return v52;
}

uint64_t _storeIpsWithMode(const __CFDictionary *a1, const char *a2, const char *a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  v7 = open(a3, 1537);
  if (v7 != -1)
  {
    v13 = v7;
    CFStringAppend(Mutable, @"{");
    CFDictionaryApplyFunction(a1, append_item_to_string, Mutable);
    CFStringTrim(Mutable, @",");
    CFStringAppend(Mutable, @"}\n");
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, Mutable, 0x8000100u, 0x3Fu);
    v20 = ExternalRepresentation;
    if (ExternalRepresentation)
    {
      Length = CFDataGetLength(ExternalRepresentation);
      BytePtr = CFDataGetBytePtr(v20);
      if (write(v13, BytePtr, Length) == Length)
      {
        CFRelease(v20);
        v23 = strlen(a2);
        if (write(v13, a2, v23) == v23)
        {
          v29 = getpwnam("mobile");
          if (v29)
          {
            if (!chown(a3, v29->pw_uid, v29->pw_gid))
            {
              v20 = 0;
              v36 = 0;
LABEL_18:
              close(v13);
              if (!Mutable)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            v30 = __error();
            strerror(*v30);
            logfunction("", 1, @"unable to chown file '%s': %s\n\n", v31, v32, v33, v34, v35, a3);
            goto LABEL_16;
          }

          v38 = @"unable to look up mobile user uid/gid. Defaulting to 501/501\n\n";
        }

        else
        {
          v38 = @"write payload\n";
        }

        logfunction("", 1, v38, v24, v25, v26, v27, v28, 164);
LABEL_16:
        v20 = 0;
        goto LABEL_17;
      }

      v37 = @"write hdr\n";
    }

    else
    {
      v37 = @"CFStringCreateExternalRepresentation\n";
    }

    logfunction("", 1, v37, v15, v16, v17, v18, v19, 164);
LABEL_17:
    v36 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  logfunction("", 1, @"open\n", v8, v9, v10, v11, v12, 164);
  v20 = 0;
  v36 = 0xFFFFFFFFLL;
  if (Mutable)
  {
LABEL_19:
    CFRelease(Mutable);
  }

LABEL_20:
  if (v20)
  {
    CFRelease(v20);
  }

  return v36;
}

int *fixCrashReporterDir(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"%s - starting\n", a4, a5, a6, a7, a8, "fixCrashReporterDir");
  memset(&v50, 0, sizeof(v50));
  if (lstat("/private/var/mobile/Library/Logs/CrashReporter", &v50))
  {
    if (*__error() != 2)
    {
      return logfunction("", 1, @"%s failed to stat %s\n", v13, v14, v15, v16, v17, "fixCrashReporterDir");
    }

    logfunction("", 1, @"%s could not find %s, continue\n", v13, v14, v15, v16, v17, "fixCrashReporterDir");
  }

  else if ((v50.st_mode & 0xF000) == 0xA000)
  {
    return logfunction("", 1, @"%s - already fixed\n", v8, v9, v10, v11, v12, "fixCrashReporterDir");
  }

  if (!lstat("/private/var/mobile/Library/Logs/CrashReporterTmp", &v50))
  {
    if ((v50.st_mode & 0xF000) == 0xA000)
    {
      logfunction("", 1, @"%s - tmp dir exist as link, unlink\n", v19, v20, v21, v22, v23, "fixCrashReporterDir");
      unlink("/private/var/mobile/Library/Logs/CrashReporterTmp");
    }

    else
    {
      logfunction("", 1, @"%s - tmp dir exist, remove\n", v19, v20, v21, v22, v23, "fixCrashReporterDir");
      removefile("/private/var/mobile/Library/Logs/CrashReporterTmp", 0, 1u);
    }
  }

  logfunction("", 1, @"%s create directory %s\n", v19, v20, v21, v22, v23, "fixCrashReporterDir");
  v24 = mkpath_np("/private/var/MobileSoftwareUpdate//mobile/Library/Logs", 0x1C0u);
  if (v24 && v24 != 17)
  {
    return logfunction("", 1, @"%s unable to create directory %s: %d\n", v25, v26, v27, v28, v29, "fixCrashReporterDir");
  }

  logfunction("", 1, @"%s symlink %s to %s\n", v25, v26, v27, v28, v29, "fixCrashReporterDir");
  if (symlink("/private/var/MobileSoftwareUpdate//mobile/Library/Logs/CrashReporter", "/private/var/mobile/Library/Logs/CrashReporterTmp"))
  {
    return logfunction("", 1, @"%s failed to symlink %s to %s\n", v30, v31, v32, v33, v34, "fixCrashReporterDir");
  }

  logfunction("", 1, @"%s swap %s with %s\n", v30, v31, v32, v33, v34, "fixCrashReporterDir");
  if (renamex_np("/private/var/mobile/Library/Logs/CrashReporterTmp", "/private/var/mobile/Library/Logs/CrashReporter", 2u))
  {
    logfunction("", 1, @"%s swap %s with %s failed with result:%d\n", v35, v36, v37, v38, v39, "fixCrashReporterDir");
    return unlink("/private/var/mobile/Library/Logs/CrashReporterTmp");
  }

  else
  {
    logfunction("", 1, @"%s copy from %s to %s\n", v35, v36, v37, v38, v39, "fixCrashReporterDir");
    if (copyfile("/private/var/mobile/Library/Logs/CrashReporterTmp", "/private/var/MobileSoftwareUpdate//mobile/Library/Logs/", 0, 0xC800Fu))
    {
      return logfunction("", 1, @"%s failed to copy from %s to %s\n", v40, v41, v42, v43, v44, "fixCrashReporterDir");
    }

    else
    {
      logfunction("", 1, @"%s removing %s\n", v40, v41, v42, v43, v44, "fixCrashReporterDir");
      if (removefile("/private/var/mobile/Library/Logs/CrashReporterTmp", 0, 1u))
      {
        return logfunction("", 1, @"%s failed to remove %s\n", v45, v46, v47, v48, v49, "fixCrashReporterDir");
      }

      else
      {
        return logfunction("", 1, @"%s is done\n", v45, v46, v47, v48, v49, "fixCrashReporterDir");
      }
    }
  }
}

uint64_t _AMRRegexSubstitution(const char *a1, const char *a2, const char *a3)
{
  v4 = a2;
  memset(&v24, 0, sizeof(v24));
  if (regcomp(&v24, a2, 1))
  {
    logfunction("", 1, @"unable to compile regex '%s': %d\n", v6, v7, v8, v9, v10, v4);
    return 0xFFFFFFFFLL;
  }

  else
  {
    __pmatch.rm_so = 0;
    for (__pmatch.rm_eo = 0; ; a1 += __pmatch.rm_eo)
    {
      v12 = regexec(&v24, a1, 1uLL, &__pmatch, 0);
      if (v12)
      {
        break;
      }

      v18 = __pmatch.rm_eo - __pmatch.rm_so;
      v19 = strlen(a3);
      v20 = LODWORD(__pmatch.rm_eo) - LODWORD(__pmatch.rm_so) - v19;
      if (v19 < __pmatch.rm_eo - __pmatch.rm_so)
      {
        v18 = v19;
      }

      memcpy(&a1[__pmatch.rm_so], a3, v18);
      if (v20 >= 1)
      {
        v21 = v20 & 0x7FFFFFFF;
        memset(&a1[__pmatch.rm_so + v18], 62, v21);
        a1 += v21;
      }
    }

    if (v12 == 1)
    {
      v11 = 0;
    }

    else
    {
      logfunction("", 1, @"regex matching failed for '%s': %d\n", v13, v14, v15, v16, v17, v4);
      v11 = 0xFFFFFFFFLL;
    }

    regfree(&v24);
  }

  return v11;
}

uint64_t MSUDemotionCleanup(CFErrorRef *a1)
{
  v44 = 0;
  v2 = [NSData dataWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/DemotionRecord.plist" options:0 error:&v44];
  if (v2)
  {
    v6 = [NSPropertyListSerialization propertyListWithData:v2 options:2 format:0 error:&v44];
    if (!v6)
    {
      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 23, v44, 0, @"failed to deserialize demotion record", v3, v4, v5, v34);
      if (!a1)
      {
        goto LABEL_13;
      }

LABEL_12:
      *a1 = error_internal_cf;
      return 1;
    }
  }

  else
  {
    if ([v44 code] != 260)
    {
      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 23, v44, 0, @"failed to read demotion record", v8, v9, v10, v34);
      if (!a1)
      {
LABEL_13:
        CFRelease(error_internal_cf);
        return 1;
      }

      goto LABEL_12;
    }

    v6 = +[NSMutableDictionary dictionary];
    if (!v6)
    {
      return 1;
    }
  }

  if (![v6 count])
  {
    return 1;
  }

  if (([objc_msgSend(v6 objectForKeyedSubscript:{@"iTunesStoreAutoUpdatesEnabled", "BOOLValue"}] & 1) != 0 || ((CFPreferencesSetValue(@"AutoUpdatesEnabled", 0, @"com.apple.itunesstored", @"mobile", kCFPreferencesAnyHost), CFPreferencesSynchronize(@"com.apple.itunesstored", @"mobile", kCFPreferencesAnyHost), (v11 = getpwnam("mobile")) == 0) ? (pw_gid = 501, pw_uid = 501) : (pw_uid = v11->pw_uid, pw_gid = v11->pw_gid), !chown("/private/var/mobile/Library/Preferences/com.apple.itunesstored.plist", pw_uid, pw_gid)))
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    object = dispatch_queue_create("com.apple.MobileSoftwareUpdate.ApplicationRestore", 0);
    v21 = dispatch_group_create();
    v36 = objc_alloc_init(SSSoftwareLibrary);
    v35 = a1;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = [v6 allKeys];
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v23)
    {
      v24 = *v41;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v40 + 1) + 8 * i);
          v27 = [v6 objectForKeyedSubscript:v26];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v27 isEqualToArray:&off_100058840])
          {
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = __MSUDemotionCleanup_block_invoke;
            v39[3] = &unk_10004CF08;
            v39[4] = object;
            v39[5] = v26;
            v39[6] = v21;
            v39[7] = &v44;
            [v36 restoreDemotedApplicationWithBundleIdentifier:v26 options:0 completionBlock:v39];
            dispatch_group_enter(v21);
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v23);
    }

    dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v21);
    dispatch_release(object);
    v28 = v45[3];
    if (v28)
    {
      if (v35)
      {
        v14 = 0;
        *v35 = v28;
LABEL_40:
        _Block_object_dispose(&v44, 8);
        return v14;
      }
    }

    else
    {
      v38 = 0;
      if (-[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", @"/private/var/MobileSoftwareUpdate/DemotionRecord.plist", &v38) || [v38 code] == 4)
      {
        v14 = 1;
        goto LABEL_40;
      }

      v32 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 23, v38, 0, @"failed to remove demotion record", v29, v30, v31, v34);
      if (v35)
      {
        v14 = 0;
        *v35 = v32;
        goto LABEL_40;
      }

      CFRelease(v32);
    }

    v14 = 0;
    goto LABEL_40;
  }

  v15 = __error();
  v16 = strerror(*v15);
  v20 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 23, 0, 0, @"failed to chown(2) itunesstored prefs file: %s", v17, v18, v19, v16);
  if (a1)
  {
    v14 = 0;
    *a1 = v20;
  }

  else
  {
    CFRelease(v20);
    return 0;
  }

  return v14;
}

void __MSUDemotionCleanup_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __MSUDemotionCleanup_block_invoke_2;
    block[3] = &unk_10004CEE0;
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    block[4] = a3;
    block[5] = v6;
    block[6] = v4;
    dispatch_sync(v5, block);
  }

  dispatch_group_leave(*(a1 + 48));
}

CFErrorRef __MSUDemotionCleanup_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  result = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 23, *(a1 + 32), 0, @"failed to enqueue restore of application '%@': %@", a6, a7, a8, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t msu_get_os_env()
{
  if (msu_get_os_env_onceToken != -1)
  {
    msu_get_os_env_cold_1();
  }

  return msu_get_os_env_os_env;
}

void __msu_get_os_env_block_invoke(id a1)
{
  count = 0;
  if (sysctlbyname("hw.osenvironment", 0, &count, 0, 0) == -1)
  {
    v29 = __error();
    strerror(*v29);
    logfunction("", 1, @"Unable to determine size of %s variable(%s)\n", v30, v31, v32, v33, v34, "hw.osenvironment");
  }

  else
  {
    v1 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
    if (v1)
    {
      v7 = v1;
      if (sysctlbyname("hw.osenvironment", v1, &count, 0, 0) == -1)
      {
        v35 = __error();
        strerror(*v35);
        logfunction("", 1, @"Failed to read %s sysctl: %s\n", v36, v37, v38, v39, v40, "hw.osenvironment");
      }

      else
      {
        logfunction("", 1, @"%s = '%s'\n", v8, v9, v10, v11, v12, "hw.osenvironment");
        if (*v7)
        {
          if (!strcmp(v7, "device-recovery"))
          {
            logfunction("", 1, @"Detected DRE environment (%s=%s)\n", v18, v19, v20, v21, v22, "hw.osenvironment");
            v28 = 16;
          }

          else if (!strcmp(v7, "recovery"))
          {
            logfunction("", 1, @"Detected NeRD environment (%s=%s)\n", v23, v24, v25, v26, v27, "hw.osenvironment");
            v28 = 8;
          }

          else
          {
            logfunction("", 1, @"Unknown environment '%s'\n", v23, v24, v25, v26, v27, v7);
            v28 = 2;
          }
        }

        else
        {
          logfunction("", 1, @"Detected BootedOS environment (%s=<empty>)\n", v13, v14, v15, v16, v17, "hw.osenvironment");
          v28 = 4;
        }

        msu_get_os_env_os_env = v28;
      }

      free(v7);
    }

    else
    {
      logfunction("", 1, @"Failed to allocate buffer for %s sysctl\n", v2, v3, v4, v5, v6, "hw.osenvironment");
    }
  }
}

BOOL is_baseband_device()
{
  v0 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v2 != 0;
}

void msu_partition_logger(uint64_t a1, va_list a2)
{
  if (a1)
  {
    v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s\n", a1);
    logfunctionv("", 1, v3, a2);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

CFPropertyListRef load_plist_with_mutability_option(CFURLRef fileURL, CFOptionFlags a2)
{
  if (!fileURL)
  {
    return 0;
  }

  v3 = CFReadStreamCreateWithFile(kCFAllocatorDefault, fileURL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFReadStreamOpen(v3))
  {
    v5 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v4, 0, a2, 0, 0);
  }

  else
  {
    v5 = 0;
  }

  CFReadStreamClose(v4);
  CFRelease(v4);
  return v5;
}

CFPropertyListRef load_dict(char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 0);
  if (v3)
  {
    v4 = v3;
    plist_with_mutability_option = load_plist_with_mutability_option(v3, 0);
    CFRelease(v4);
  }

  else
  {
    plist_with_mutability_option = 0;
  }

  CFRelease(v2);
  return plist_with_mutability_option;
}

uint64_t size_directory(char *a1)
{
  v6[0] = a1;
  v6[1] = 0;
  v1 = fts_open(v6, 21, 0);
  if (!v1)
  {
    err(1, "fts_open(%s)");
  }

  v2 = v1;
  v3 = fts_read(v1);
  for (i = 0; v3; v3 = fts_read(v2))
  {
    if (v3->fts_info == 8)
    {
      i += v3->fts_statp->st_blocks << 9;
    }
  }

  if (fts_close(v2))
  {
    err(1, "fts_close(%s)");
  }

  return i;
}

uint64_t msu_execute_command_with_callback(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  ramrod_execute_config_alloc();
  v7 = v6;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __msu_execute_command_with_callback_block_invoke;
  v16[3] = &__block_descriptor_48_e13_v24__0r_v8Q16l;
  v16[4] = a2;
  v16[5] = a3;
  ramrod_execute_config_set_output_block(v6, v16);
  v14 = ramrod_execute_command_with_config(a1, v7, v8, v9, v10, v11, v12, v13);
  ramrod_execute_config_free(v7);
  return v14;
}

uint64_t mkparentdir(uint64_t a1, mode_t a2)
{
  bzero(&v8, 0x400uLL);
  if (a1)
  {
    __strlcpy_chk();
    if (v8 == 47)
    {
      v4 = v9;
    }

    else
    {
      v4 = &v8;
    }

    do
    {
      if (!*v4)
      {
        break;
      }

      v5 = strchr(v4, 47);
      v4 = v5;
      if (v5 > &v8)
      {
        memset(&v7, 0, sizeof(v7));
        *v5 = 0;
        if (lstat(&v8, &v7) == -1 && mkdir(&v8, a2) == -1 && *__error() != 17)
        {
          return 0xFFFFFFFFLL;
        }

        *v4++ = 47;
      }
    }

    while (v4);
    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

CFErrorRef _vcreate_error_internal_with_userinfo_cf(const __CFString *a1, CFIndex a2, const void *a3, const void *a4, const __CFDictionary *a5, const __CFString *a6, va_list a7)
{
  v14 = *__error();
  if (a5)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a5);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v16 = MutableCopy;
  if (MutableCopy)
  {
    v17 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a6, a7);
    if (v17)
    {
      v23 = v17;
      logfunction("", 1, @"%@ error %ld - %@\n", v18, v19, v20, v21, v22, a1);
      CFDictionaryAddValue(v16, kCFErrorLocalizedDescriptionKey, v23);
      CFRelease(v23);
    }

    if (a3)
    {
      CFDictionaryAddValue(v16, kCFErrorUnderlyingErrorKey, a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v16, @"target_update", a4);
    }

    v24 = CFErrorCreate(kCFAllocatorDefault, a1, a2, v16);
    CFRelease(v16);
  }

  else
  {
    v24 = 0;
  }

  *__error() = v14;
  return v24;
}

CFDictionaryRef cferror_to_dictionary_embedded(__CFError *a1, int a2)
{
  valuePtr = CFErrorGetCode(a1);
  Domain = CFErrorGetDomain(a1);
  v5 = CFErrorCopyUserInfo(a1);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (!v6)
  {
    logfunction("", 1, @"could not create cfnumber\n", v7, v8, v9, v10, v11, v29);
    v22 = 0;
    if (!v5)
    {
      return v22;
    }

    goto LABEL_24;
  }

  v12 = v6;
  *keys = *off_10004CF68;
  v35 = *&off_10004CF78;
  values[0] = v6;
  values[1] = Domain;
  v32 = v5;
  v33 = 0;
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, kCFErrorUnderlyingErrorKey);
    v14 = Value;
    if (Value)
    {
      v15 = CFGetTypeID(Value);
      if (v15 != CFErrorGetTypeID() || (v16 = cferror_to_dictionary_embedded(v14, 0)) == 0)
      {
        v14 = 0;
        if (a2)
        {
          goto LABEL_10;
        }

LABEL_17:
        v21 = 3;
        goto LABEL_19;
      }

      v17 = v16;
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      v14 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, kCFErrorUnderlyingErrorKey, v17);
        v32 = v14;
      }

      CFRelease(v17);
    }

    if (a2)
    {
LABEL_10:
      v19 = (&v35 + 8);
      v20 = &v33;
      v21 = 4;
LABEL_15:
      *v19 = @"_MSU_Embedded_Error";
      *v20 = kCFBooleanTrue;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (a2)
  {
    v19 = &v35;
    v20 = &v32;
    v21 = 3;
    goto LABEL_15;
  }

  v21 = 2;
LABEL_19:
  v22 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v22)
  {
    logfunction("", 1, @"could not create cfdictionary\n", v23, v24, v25, v26, v27, v29);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v12);
  if (v5)
  {
LABEL_24:
    CFRelease(v5);
  }

  return v22;
}

const __CFString *copy_dictionary_to_cferror(const void *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    v21 = @"marshalled cferror is not a dictionary.\n";
LABEL_17:
    logfunction("", 1, v21, v3, v4, v5, v6, v7, v23);
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Code");
  if (!Value)
  {
    v21 = @"marshalled cferror is incomplete. missing code.\n";
    goto LABEL_17;
  }

  if (!CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
  {
    v21 = @"code not convert cfnumber code to cfindex\n";
    goto LABEL_17;
  }

  v14 = CFDictionaryGetValue(a1, @"Domain");
  if (!v14)
  {
    logfunction("", 1, @"marshalled cferror is incomplete. missing domain.\n", v9, v10, v11, v12, v13, v23);
    return v14;
  }

  v15 = CFDictionaryGetValue(a1, @"UserInfo");
  if (!v15)
  {
    v21 = @"marshalled cferror is incomplete. missing UserInfo.\n";
    goto LABEL_17;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v15);
  if (!MutableCopy)
  {
    v21 = @"code not create mutable copy of userInfo\n";
    goto LABEL_17;
  }

  v17 = MutableCopy;
  v18 = CFDictionaryGetValue(MutableCopy, kCFErrorUnderlyingErrorKey);
  v19 = copy_dictionary_to_cferror(v18);
  if (v19)
  {
    v20 = v19;
    CFDictionarySetValue(v17, kCFErrorUnderlyingErrorKey, v19);
    CFRelease(v20);
  }

  v14 = CFErrorCreate(kCFAllocatorDefault, v14, valuePtr, v17);
  CFRelease(v17);
  return v14;
}

BOOL write_SMC_key(char a1)
{
  v2 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v9 = MatchingService;
  if (&_SMCOpenConnection)
  {
    if (MatchingService)
    {
      if (SMCOpenConnection())
      {
        SMCMakeUInt32Key();
        if (SMCGetKeyInfo())
        {
          logfunction("", 1, @"Couldn't retrieve SMC Key %s. Got SMC error: %d\n\n", v15, v16, v17, v18, v19, a1);
          v20 = 0;
        }

        else
        {
          v21 = SMCWriteKeyWithKnownSize();
          v20 = v21 == 0;
          if (v21)
          {
            logfunction("", 1, @"Writing SMC key %s as value %s failed with error %d\n\n", v22, v23, v24, v25, v26, a1);
          }

          v27 = SMCReadKeyAsNumeric();
          if (v27)
          {
            logfunction("", 1, @"SMCReadKeyAsNumeric() returned %d\n", v28, v29, v30, v31, v32, v27);
          }

          else
          {
            logfunction("", 1, @"Read (0x%jX) for key %s\n\n", v28, v29, v30, v31, v32, 0);
          }
        }

        IOObjectRelease(v9);
        SMCCloseConnection();
        return v20;
      }

      logfunction("", 1, @"Failed to open SMC connection. Bailing.\n\n", v10, v11, v12, v13, v14, v34);
      IOObjectRelease(v9);
    }

    else
    {
      logfunction("", 1, @"Couldn't find matching SMC service. Bailing.\n\n", v4, v5, v6, v7, v8, v34);
    }

    return 0;
  }

  v20 = 1;
  logfunction("", 1, @"No SMC dylib. Bailing with success.\n", v4, v5, v6, v7, v8, v34);
  if (v9)
  {
    IOObjectRelease(v9);
  }

  return v20;
}

void cleanup_boot_environment(char *a1)
{
  v30 = "mobile";
  v32[0] = a1;
  v32[1] = 0;
  bzero(__str, 0x401uLL);
  v2 = fts_open(v32, 85, 0);
  if (v2)
  {
    v3 = v2;
    v4 = fts_read(v2);
    if (v4)
    {
      v5 = v4;
      do
      {
        if (v5->fts_info != 8)
        {
          goto LABEL_17;
        }

        v6 = strncmp(".patchd-dirty-", v5->fts_name, 0xEuLL);
        if (v6)
        {
          if (strncmp(".patchd-saved-", v5->fts_name, 0xEuLL))
          {
            goto LABEL_17;
          }
        }

        snprintf(__str, 0x400uLL, "%s/patchd-%s.log", a1, &v5[1].fts_cycle + 6);
        if (!access(__str, 0))
        {
          if (!v6)
          {
            goto LABEL_17;
          }

          if (unlink(__str))
          {
            v19 = *__error();
            v20 = __error();
            strerror(*v20);
            LOBYTE(fts_path) = v19;
LABEL_14:
            v21 = @"Error %d (%s) deleting %s\n";
LABEL_16:
            logfunction("", 1, v21, v7, v8, v9, v10, v11, fts_path);
            goto LABEL_17;
          }

          logfunction("", 1, @"Deleted %s\n", v14, v15, v16, v17, v18, __str);
        }

        if (!unlink(v5->fts_path))
        {
          fts_path = v5->fts_path;
          v21 = @"Deleted %s\n";
          goto LABEL_16;
        }

        if (*__error() != 2)
        {
          v12 = *__error();
          v13 = __error();
          strerror(*v13);
          v29 = v5->fts_path;
          LOBYTE(fts_path) = v12;
          goto LABEL_14;
        }

LABEL_17:
        v5 = fts_read(v3);
      }

      while (v5);
    }

    fts_close(v3);
  }

  else
  {
    v22 = __error();
    strerror(*v22);
    logfunction("", 1, @"Could not fts_open(3) path %s: %s\n", v23, v24, v25, v26, v27, a1);
  }

  _cleanup_boot_environment_with_list(a1, &off_10004CF88, 20);
  if ((booted_from_recoveryos() & 1) == 0)
  {
    _cleanup_boot_environment_with_list(a1, &v30, 1);
  }
}

void _cleanup_boot_environment_with_list(const char *a1, const char **a2, uint64_t a3)
{
  bzero(__str, 0x401uLL);
  for (; a3; --a3)
  {
    snprintf(__str, 0x400uLL, "%s/%s", a1, *a2);
    if (removefile(__str, 0, 1u))
    {
      if (*__error() != 2)
      {
        v11 = *__error();
        v12 = __error();
        strerror(*v12);
        logfunction("", 1, @"Error %d (%s) deleting %s\n", v13, v14, v15, v16, v17, v11);
      }
    }

    else
    {
      logfunction("", 1, @"Deleted %s\n", v6, v7, v8, v9, v10, __str);
    }

    ++a2;
  }
}

uint64_t mount_preboot_volume(int a1, _BYTE *a2)
{
  memset(v18, 0, sizeof(v18));
  bzero(v17, 0x400uLL);
  if (!ramrod_get_preboot_partition_device_node(v18, 0x20uLL))
  {
    logfunction("", 1, @"unable to find preboot volume\n\n", v4, v5, v6, v7, v8, v17[0]);
    return 6;
  }

  if (!ramrod_get_mount_path(v18, v17, 0x400uLL))
  {
    if (a2)
    {
      v15 = 0;
      *a2 = 0;
      return v15;
    }

    return 0;
  }

  __strlcpy_chk();
  ramrod_create_directory(v17, 0x1EDu, 0, 0);
  v9 = ramrod_mount_filesystem_no_fsck_opt_err(v18, v17, a1, 0);
  if (!v9)
  {
    if (a2)
    {
      v15 = 0;
      *a2 = 1;
      return v15;
    }

    return 0;
  }

  v15 = v9;
  logfunction("", 1, @"unable to mount preboot volume\n\n", v10, v11, v12, v13, v14, v17[0]);
  return v15;
}

uint64_t unmount_preboot_volume()
{
  memset(v9, 0, sizeof(v9));
  bzero(v8, 0x400uLL);
  if (!ramrod_get_preboot_partition_device_node(v9, 0x20uLL))
  {
    v5 = 6;
    v6 = @"unable to find preboot volume\n\n";
    goto LABEL_7;
  }

  if (!ramrod_get_mount_path(v9, v8, 0x400uLL))
  {
    v5 = ramrod_unmount_filesystem(v8);
    if (!v5)
    {
      return v5;
    }

    v6 = @"unable to unmount preboot volume\n\n";
LABEL_7:
    logfunction("", 1, v6, v0, v1, v2, v3, v4, v8[0]);
    return v5;
  }

  return 0;
}

void sub_1000054C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void perform_block_with_ct_server_connection(uint64_t a1)
{
  if (is_baseband_device() && !booted_from_recoveryos() && &__CTServerConnectionCreate)
  {
    v2 = _CTServerConnectionCreate();
    (*(a1 + 16))(a1, v2, 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = *(a1 + 16);

    v3(a1, 0, 0);
  }
}

uint64_t release_baseband_ticket_lock(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __release_baseband_ticket_lock_block_invoke;
  v3[3] = &unk_10004D0D8;
  v3[4] = &v4;
  v3[5] = a1;
  perform_block_with_ct_server_connection(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000061E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __release_baseband_ticket_lock_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 || !a3)
  {
    if (!a2 || (v10 = _CTServerConnectionUnlockPostponementTicket()) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return;
    }

    v9 = @"Failed to release postponement ticket lock: %ld.%ld";
    v13 = v10;
  }

  else
  {
    v9 = @"Failed to create CT server connection";
  }

  error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v9, a6, a7, a8, v13);
  v12 = *(a1 + 40);
  if (v12)
  {
    *v12 = error_internal_cf;
  }

  else
  {

    CFRelease(error_internal_cf);
  }
}

int *clear_apply_state()
{
  v0 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist"];
  if (v0)
  {
    v8 = v0;
    _clear_apply_state(v0);
    v0 = [(NSMutableDictionary *)v8 writeToFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist" atomically:1];
  }

  if (msu_running_in_limited_environment(v0, v1, v2, v3, v4, v5, v6, v7))
  {
    return logfunction("", 1, @"%s: Running in recoveryOS..skipping cleanup of BootedOSState plist file\n", v9, v10, v11, v12, v13, "clear_apply_state");
  }

  if (!msu_should_save_env_info_for_recovery())
  {
    return logfunction("", 1, @"%s: Not attempting to cleanup recoveryOS info since save_env_info is not set\n", v15, v16, v17, v18, v19, "clear_apply_state");
  }

  return saveCurrentBootedOSStateForRecoveryModes(0);
}

id _clear_apply_state(void *a1)
{
  [a1 removeObjectForKey:@"TargetOS"];
  [a1 removeObjectForKey:@"TargetBootManifestHash"];
  [a1 removeObjectForKey:@"SourceRestoreVerion"];
  [a1 removeObjectForKey:@"TargetRestoreVerion"];
  [a1 removeObjectForKey:@"TargetVolumeUUID"];

  return [a1 removeObjectForKey:@"TargetVolumeGroupUUID"];
}

void clear_firmware_specific_data()
{
  v0 = objc_opt_new();
  v1 = [v0 enumeratorAtPath:@"/private/var/MobileSoftwareUpdate//preserved_firmware/"];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [@"/private/var/MobileSoftwareUpdate//preserved_firmware/" stringByAppendingPathComponent:v7];
        NSLog(@"[clear_firmware_specific_data] Removing %@ because we're in a state where we don't need to preserve it.", v7);
        [v0 removeItemAtPath:v8 error:0];
      }

      v4 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(v2);
}

void record_firmware_failures(void *a1)
{
  v2 = objc_opt_new();
  v3 = [v2 enumeratorAtPath:@"/private/var/MobileSoftwareUpdate//preserved_firmware/"];
  v4 = objc_opt_new();
  v5 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        NSLog(@"[record_firmware_failures] Found %@ updater data blob during a boot after fail-forward.", v10);
        [v4 addObject:v10];
      }

      v7 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v5);
  if (v4 && [v4 count])
  {
    [a1 setObject:v4 forKeyedSubscript:@"PreservedFirmware"];
  }
}

BOOL is_first_boot_cleanup_done()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", @"/var/run/FirstBootCleanupHandled"];
  logfunction("", 1, @"%s: is first boot cleanup done: %@\n", v2, v3, v4, v5, v6, "is_first_boot_cleanup_done");
  objc_autoreleasePoolPop(v0);
  return v1;
}

void msu_process_dictionary_values_for_xpc_serialization(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v5 = msu_process_cf_object_for_xpc_serialization(a2);
  if (v5)
  {
    v6 = v5;
    if (a3 && !*a3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *a3 = Mutable;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    CFRelease(v6);
  }
}

CFDictionaryRef msu_process_cf_object_for_xpc_serialization(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID())
  {
    context = 0;
    CFDictionaryApplyFunction(a1, msu_process_dictionary_values_for_xpc_serialization, &context);
    if (context)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
      CFDictionaryApplyFunction(context, msu_merge_dictionary_values, MutableCopy);
      CFRelease(context);
      return MutableCopy;
    }

    return 0;
  }

  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      MutableCopy = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        v8 = msu_process_cf_object_for_xpc_serialization(ValueAtIndex);
        if (v8)
        {
          v9 = v8;
          if (!MutableCopy)
          {
            MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, a1);
          }

          CFArraySetValueAtIndex(MutableCopy, v6, v9);
          CFRelease(v9);
        }

        ++v6;
      }

      while (v5 != v6);
      return MutableCopy;
    }

    return 0;
  }

  if (v2 != CFErrorGetTypeID())
  {
    return 0;
  }

  return cferror_to_dictionary_embedded(a1, 1);
}

void msu_serialize_cf_object_into_xpc_dict(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    logfunction("", 1, @"%s: API misuse - object is NULL\n", a4, a5, a6, a7, a8, "msu_serialize_cf_object_into_xpc_dict");
    return;
  }

  v10 = msu_process_cf_object_for_xpc_serialization(a3);
  if (!v10)
  {
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_9:
    logfunction("", 1, @"could not create object for key %s:%@\n", v13, v14, v15, v16, v17, a2);
    return;
  }

  v11 = v10;
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  CFRelease(v11);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  xpc_dictionary_set_value(a1, a2, v12);

  xpc_release(v12);
}

void msu_process_dictionary_values_from_xpc_deserialization(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v5 = msu_process_cf_object_from_xpc_deserialization(a2);
  if (v5)
  {
    v6 = v5;
    if (a3 && !*a3)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *a3 = Mutable;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    CFRelease(v6);
  }
}

const __CFString *msu_process_cf_object_from_xpc_deserialization(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    if (v2 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        MutableCopy = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
          v9 = msu_process_cf_object_from_xpc_deserialization(ValueAtIndex);
          if (v9)
          {
            v10 = v9;
            if (!MutableCopy)
            {
              MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, a1);
            }

            CFArraySetValueAtIndex(MutableCopy, v6, v10);
            CFRelease(v10);
          }

          ++v6;
        }

        while (v5 != v6);
        return MutableCopy;
      }
    }

    return 0;
  }

  if (!CFDictionaryContainsKey(a1, @"_MSU_Embedded_Error"))
  {
    context = 0;
    CFDictionaryApplyFunction(a1, msu_process_dictionary_values_from_xpc_deserialization, &context);
    if (context)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
      CFDictionaryApplyFunction(context, msu_merge_dictionary_values, MutableCopy);
      CFRelease(context);
      return MutableCopy;
    }

    return 0;
  }

  return copy_dictionary_to_cferror(a1);
}

const __CFString *msu_deserialize_cf_object_from_xpc_dict(void *a1, const char *a2)
{
  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = msu_process_cf_object_from_xpc_deserialization(v2);
  if (v3)
  {
    v4 = v3;
    CFRelease(v2);
    return v4;
  }

  return v2;
}

void handle_message(_xpc_connection_s *a1, xpc_object_t xdict, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  string = xpc_dictionary_get_string(xdict, "Command");
  if (string)
  {
    v19 = string;
    v23 = msu_deserialize_cf_object_from_xpc_dict(xdict, "CommandParameters");
    if (a4)
    {
      v24 = 0;
      v25 = (a3 + 16);
      while (1)
      {
        v26 = strlen(*(v25 - 2));
        if (!strncmp(v19, *(v25 - 2), v26))
        {
          break;
        }

        ++v24;
        v25 += 3;
        if (a4 == v24)
        {
          goto LABEL_14;
        }
      }

      if ((msu_client_is_entitled(a1, *v25) & 1) == 0)
      {
        error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Client does not have entitlement %s", v27, v28, v29, *v25);
        goto LABEL_16;
      }

      v30 = os_transaction_create();
      (*(v25 - 1))(a1, xdict, v23);
      os_release(v30);
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (v24 != a4)
    {
LABEL_18:
      if (v23)
      {

        CFRelease(v23);
      }

      return;
    }

LABEL_14:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Unknown command '%s'", v20, v21, v22, v19);
LABEL_16:
    v32 = error_internal_cf;
    msu_send_error(a1, 0, error_internal_cf, 0);
    if (v32)
    {
      CFRelease(v32);
    }

    goto LABEL_18;
  }

  logfunction("", 1, @"No command in request\n", v14, v15, v16, v17, v18, a9);
}

uint64_t msu_client_is_entitled(_xpc_connection_s *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v4 = xpc_connection_copy_entitlement_value();
  if (v4)
  {
    v5 = v4;
    if (xpc_get_type(v4) == &_xpc_type_BOOL)
    {
      if (xpc_BOOL_get_value(v5))
      {
        v12 = 1;
LABEL_17:
        xpc_release(v5);
        return v12;
      }

      v11 = @"Value for entitlement '%s' is false\n";
    }

    else
    {
      v11 = @"Entitlement '%s' is not a BOOLean\n";
    }

    logfunction("", 1, v11, v6, v7, v8, v9, v10, v2);
    v12 = 0;
    goto LABEL_17;
  }

  pid = xpc_connection_get_pid(a1);
  bzero(buffer, 0x400uLL);
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  memset(&audittoken, 0, sizeof(audittoken));
  xpc_connection_get_audit_token();
  if (proc_pidpath_audittoken(&audittoken, buffer, 0x400u) < 1)
  {
    v21 = proc_pidinfo(pid, 13, 0, &v24, 64);
    v20 = v25;
    if (!v21)
    {
      v20 = "<unknown>";
    }
  }

  else
  {
    v14 = strrchr(buffer, 47);
    if (v14)
    {
      LOBYTE(v20) = v14 + 1;
    }

    else
    {
      v20 = buffer;
    }
  }

  logfunction("", 1, @"Client %s[%d] does not have the '%s' entitlement\n", v15, v16, v17, v18, v19, v20);
  return 0;
}

void msu_send_error(_xpc_connection_s *a1, xpc_object_t original, __CFError *a3, int a4)
{
  if (original)
  {
    reply = xpc_dictionary_create_reply(original);
  }

  else
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v8 = reply;
  if (reply)
  {
    xpc_dictionary_set_string(reply, "IPCStatus", "Error");
    if (a3)
    {
      v9 = cferror_to_dictionary(a3);
      if (v9)
      {
        v15 = v9;
        msu_serialize_cf_object_into_xpc_dict(v8, "ErrorInfo", v9, v10, v11, v12, v13, v14);
        CFRelease(v15);
      }
    }

    xpc_connection_send_message(a1, v8);
    xpc_release(v8);
    if (a4)
    {

      submitRestoreLogFile(a3, 0, 0, 0);
    }
  }
}

void msu_send_status_with_reply(_xpc_connection_s *a1, xpc_object_t original, void *a3, uint64_t a4)
{
  if (original)
  {
    reply = xpc_dictionary_create_reply(original);
  }

  else
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v8 = reply;
  if (reply)
  {
    xpc_dictionary_set_string(reply, "IPCStatus", "Complete");
    if (a3)
    {
      msu_serialize_cf_object_into_xpc_dict(v8, "Results", a3, v9, v10, v11, v12, v13);
    }

    if (a4)
    {
      (*(a4 + 16))(a4, v8);
    }

    xpc_connection_send_message(a1, v8);

    xpc_release(v8);
  }
}

CFPropertyListRef _MSUPreferencesCopyValueForDomain(const __CFString *a1, const __CFString *a2)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (v4)
  {
    return v4;
  }

  if (_getManagedPreferencesDict_managedPreferencesOnce != -1)
  {
    _MSUPreferencesCopyValueForDomain_cold_1();
  }

  if (_getManagedPreferencesDict__managedPreferencesCache)
  {
    Value = CFDictionaryGetValue(_getManagedPreferencesDict__managedPreferencesCache, a1);
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      return v4;
    }
  }

  return CFPreferencesCopyValue(a1, a2, @"mobile", kCFPreferencesAnyHost);
}

uint64_t _MSUPreferencesGetAppBooleanValue(const __CFString *a1, _BYTE *a2)
{
  v3 = _MSUPreferencesCopyValueForDomain(a1, @"com.apple.MobileSoftwareUpdate");
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID();
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v6)
  {
    Value = CFBooleanGetValue(v4);
    if (!v4)
    {
      return Value;
    }

    goto LABEL_8;
  }

  Value = 0;
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

  return Value;
}

uint64_t _MSUPreferencesGetAppBooleanValueWithDefaultValue(const __CFString *a1, unsigned int a2)
{
  v4 = 0;
  LODWORD(result) = _MSUPreferencesGetAppBooleanValue(a1, &v4);
  if (v4)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

void ___getManagedPreferencesDict_block_invoke(id a1)
{
  v1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@.plist", @"/Library/Managed Preferences/mobile", @"com.apple.MobileSoftwareUpdate");
  if (v1)
  {
    v2 = v1;
    _getManagedPreferencesDict__managedPreferencesCache = [[NSDictionary alloc] initWithContentsOfFile:v1];

    CFRelease(v2);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v191 = 0;
  logfunction("", 1, @"CleanupPreparePath main() started\n", v3, v4, v5, v6, v7, v177);
  set_partition_logging_function(msu_partition_logger);
  set_partition_execution_function(msu_execute_command_with_callback);
  set_partition_execution_logging_function(msu_partition_execution_logger);
  is_recovery = os_variant_is_recovery();
  if (is_recovery)
  {
    fixCrashReporterDir(is_recovery, v9, v10, v11, v12, v13, v14, v15);
  }

  if ((openRestoreLogFile(1) & 0x80000000) != 0)
  {
    logfunction("", 1, @"Could not open log file\n", v16, v17, v18, v19, v20, v178);
  }

  if (atexit(closeRestoreLogFile))
  {
    v21 = __error();
    v22 = strerror(*v21);
    logfunction("", 1, @"Could not register aexit: %s\n", v23, v24, v25, v26, v27, v22);
  }

  v28 = ramrod_log_set_handler(_ramrod_log_handler);
  partition_probe_media(v28, v29, v30, v31, v32, v33, v34, v35);
  ramrod_probe_unique_media(0, v36, v37, v38, v39, v40, v41, v42);
  logfunction("", 1, @"Enabling vnode rapid aging\n", v43, v44, v45, v46, v47, v178);
  *v200 = 0x4400000001;
  v190 = 1;
  if (sysctl(v200, 2u, 0, 0, &v190, 0))
  {
    v53 = @"Failed to enable vnode rapid aging\n";
  }

  else
  {
    v53 = @"Successfully enabled rapid vnode aging\n\n";
  }

  logfunction("", 1, v53, v48, v49, v50, v51, v52, v179);
  process_update_result_state(&v191 + 1, &v191);
  if (os_variant_has_internal_content())
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FakeUpdateAttemptedOnReboot", @"com.apple.MobileSoftwareUpdate", 0);
    v60 = CFPreferencesGetAppBooleanValue(@"FakeOSVersionChangedOnReboot", @"com.apple.MobileSoftwareUpdate", 0);
    if (AppBooleanValue && (v191 & 0x100) == 0)
    {
      logfunction("", 1, @"Forcing update attempted to true due to override\n", v54, v55, v56, v57, v58, v180);
      HIBYTE(v191) = 1;
    }

    if (v60 && (v191 & 1) == 0)
    {
      logfunction("", 1, @"Forcing OSVersion changed to true due to override\n", v54, v55, v56, v57, v58, v180);
      LOBYTE(v191) = 1;
    }
  }

  if (HIBYTE(v191) != 1)
  {
LABEL_83:
    if (v191 == 1)
    {
      logfunction("", 1, @"OSVersion changed. Notifying clients\n", v54, v55, v56, v57, v58, v180);
      notify_post("com.apple.MobileSoftwareUpdate.OSVersionChanged");
      v161 = _CFCopySupplementalVersionDictionary();
      if (v161)
      {
        v162 = v161;
        CFDictionaryGetValue(v161, _kCFSystemVersionProductVersionExtraKey);
        logfunction("", 1, @"%s: %i\n", v163, v164, v165, v166, v167, "splat_installed");
        CFRelease(v162);
      }
    }

    conditionally_boot_efi_based_on_nvram();
    xpc_main(CleanupPreparePathService_event_handler);
  }

  if (is_first_boot_cleanup_done())
  {
LABEL_75:
    v155 = copy_nvram_variable(@"usbcfw.version");
    if (!v155)
    {
      goto LABEL_83;
    }

    v156 = v155;
    if (CFDataGetLength(v155) < 1)
    {
      goto LABEL_82;
    }

    v157 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v156, 0x8000100u);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v159 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v159, @"IOClass", @"AppleUSBCController");
    CFDictionarySetValue(Mutable, @"IOPropertyMatch", v159);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, Mutable);
    if (MatchingService)
    {
      v168 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Firmware Version", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v170 = CFProperty;
        if (CFStringGetLength(CFProperty) >= 1 && CFStringCompare(v170, v157, 0x40uLL))
        {
          logfunction("", 1, @"USBC FW version in IORegistry (%@) != USBC FW version in nvram (%@)\n", v171, v172, v173, v174, v175, v170);
        }

        CFRelease(v170);
      }

      IOObjectRelease(v168);
      if (!v159)
      {
LABEL_79:
        if (!v157)
        {
LABEL_81:
          delete_nvram_variable(@"usbcfw.version");
LABEL_82:
          CFRelease(v156);
          goto LABEL_83;
        }

LABEL_80:
        CFRelease(v157);
        goto LABEL_81;
      }
    }

    else if (!v159)
    {
      goto LABEL_79;
    }

    CFRelease(v159);
    if (!v157)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  CFPreferencesAppSynchronize(@"com.apple.MobileAsset");
  CFPreferencesAppSynchronize(@"com.apple.MobileSoftwareUpdate");
  v61 = CFPreferencesGetAppBooleanValue(@"PreserveDefaultsOnUpdate", @"com.apple.MobileAsset", 0);
  v62 = v61;
  v70 = msu_running_in_limited_environment(v61, v63, v64, v65, v66, v67, v68, v69);
  v76 = @"First boot after update: Clearing out old preference overrides\n";
  if (v62)
  {
    v76 = @"First boot after update: Not clearing MobileAsset preference overrides due to default\n";
    v77 = 1;
  }

  else
  {
    v77 = v70;
  }

  v189 = v77;
  if (v70)
  {
    v78 = @"First boot after update: Not clearing MobileAsset preference overrides since running in recovery OS\n";
  }

  else
  {
    v78 = v76;
  }

  logfunction("", 1, v78, v71, v72, v73, v74, v75, v180);
  v79 = objc_alloc_init(NSMutableArray);
  v202[0] = @"MobileAssetServerURL-com.apple.MobileAsset.SoftwareUpdate";
  v202[1] = @"default-MobileAssetServerURL-com.apple.MobileAsset.SoftwareUpdate";
  v202[2] = @"MobileAssetServerURL-com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
  v202[3] = @"default-MobileAssetServerURL-com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
  v202[4] = @"MobileAssetServerURL-com.apple.MobileAsset.SoftwareUpdateDocumentation";
  v202[5] = @"default-MobileAssetServerURL-com.apple.MobileAsset.SoftwareUpdateDocumentation";
  v202[6] = @"MobileAssetServerURL-com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain";
  v202[7] = @"default-MobileAssetServerURL-com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain";
  v202[8] = @"EnableLiveAssetServerV2";
  v202[9] = @"MobileAssetAssetAudienceGeneric";
  v202[10] = @"PallasUrlOverride";
  v202[11] = @"PallasUrlOverrideV2";
  [v79 addObjectsFromArray:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v202, 12)}];
  v80 = +[NSMutableArray array];
  v81 = CFPreferencesCopyKeyList(@"com.apple.MobileAsset", @"mobile", kCFPreferencesAnyHost);
  if (v81)
  {
    v82 = v81;
  }

  else
  {
    v82 = &__NSArray0__struct;
  }

  [v80 addObjectsFromArray:v82];
  v83 = CFPreferencesCopyKeyList(@"com.apple.MobileAsset", @"root", kCFPreferencesAnyHost);
  if (v83)
  {
    v84 = v83;
  }

  else
  {
    v84 = &__NSArray0__struct;
  }

  [v80 addObjectsFromArray:v84];
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v85 = [v80 countByEnumeratingWithState:&v192 objects:v201 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v193;
    do
    {
      for (i = 0; i != v86; i = i + 1)
      {
        if (*v193 != v87)
        {
          objc_enumerationMutation(v80);
        }

        v89 = *(*(&v192 + 1) + 8 * i);
        if (([v89 hasPrefix:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-", @"EnableLiveAssetServerV2"}] & 1) != 0 || (objc_msgSend(v89, "hasPrefix:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-", @"MobileAssetAssetAudience")) & 1) != 0 || (objc_msgSend(v89, "hasPrefix:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-", @"MobileAssetAssetAudienceGeneric")) & 1) != 0 || (objc_msgSend(v89, "hasPrefix:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-", @"PallasUrlOverride")) & 1) != 0 || objc_msgSend(v89, "hasPrefix:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-", @"PallasUrlOverrideV2")))
        {
          [v79 addObject:v89];
        }

        if ([v89 hasPrefix:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-", @"MobileAssetServerURL"}])
        {
          [v79 addObject:v89];
        }
      }

      v86 = [v80 countByEnumeratingWithState:&v192 objects:v201 count:16];
    }

    while (v86);
  }

  if (objc_opt_class())
  {
    v96 = kCFPreferencesAnyHost;
    if (objc_opt_respondsToSelector())
    {
      if (+[SDBetaManager _isEnrolledInBetaProgram])
      {
        logfunction("", 1, @"Device is enrolled in a seeding program via +[SDBetaManager _isEnrolledInBetaProgram]; not resetting MobileAssetAssetAudience\n", v90, v91, v92, v93, v94, v181);
LABEL_54:
        if (v189)
        {
          logfunction("", 1, @"First boot after update: Not clearing out MobileAsset preferences\n", v97, v98, v99, v100, v101, v182);
        }

        else
        {
          logfunction("", 1, @"First boot after update: Attempting to clear out MobileAsset preferences\n", v97, v98, v99, v100, v101, v182);
          logfunction("", 1, @"Clearing out MobileAsset preference overrides: %@\n", v107, v108, v109, v110, v111, v79);
          if (v79)
          {
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v112 = [v79 countByEnumeratingWithState:&v196 objects:v203 count:16];
            if (v112)
            {
              v113 = v112;
              v114 = *v197;
              do
              {
                for (j = 0; j != v113; j = j + 1)
                {
                  if (*v197 != v114)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v116 = *(*(&v196 + 1) + 8 * j);
                  CFPreferencesSetValue(v116, 0, @"com.apple.MobileAsset", @"mobile", v96);
                  CFPreferencesSetValue(v116, 0, @"com.apple.MobileAsset", @"root", v96);
                }

                v113 = [v79 countByEnumeratingWithState:&v196 objects:v203 count:16];
              }

              while (v113);
            }
          }
        }

        logfunction("", 1, @"Clearing out MobileSoftwareUpdate preference overrides\n", v102, v103, v104, v105, v106, v183);
        CFPreferencesSetValue(@"DisableSnapshotUpdate", 0, @"com.apple.MobileSoftwareUpdate", @"mobile", v96);
        CFPreferencesSetValue(@"DisableSnapshotUpdate", 0, @"com.apple.MobileSoftwareUpdate", @"root", v96);
        CFPreferencesAppSynchronize(@"com.apple.MobileAsset");
        CFPreferencesAppSynchronize(@"com.apple.MobileSoftwareUpdate");
        logfunction("", 1, @"First boot after update: Finished clearing preference overrides\n", v117, v118, v119, v120, v121, v184);
        logfunction("", 1, @"First boot after update: Deleting V1 asset path\n", v122, v123, v124, v125, v126, v185);
        logfunction("", 1, @"in deleteV1AssetPath\n", v127, v128, v129, v130, v131, v186);
        v203[0] = 0;
        v132 = +[NSFileManager defaultManager];
        if ([(NSFileManager *)v132 fileExistsAtPath:@"/var/MobileAsset/Assets/com_apple_MobileAsset_MobileSoftwareUpdate_UpdateBrain"]&& [(NSFileManager *)v132 removeItemAtPath:@"/var/MobileAsset/Assets/com_apple_MobileAsset_MobileSoftwareUpdate_UpdateBrain" error:v203])
        {
          logfunction("", 1, @"V1 assets folder successfully deleted\n", v133, v134, v135, v136, v137, v187);
        }

        logfunction("", 1, @"First boot after update: Done deleting V1 asset path\n", v133, v134, v135, v136, v137, v187);
        if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          logfunction("", 1, @"Located Pre-SoftwareUpdate Asset Staging state plist at path: %s\n", v138, v139, v140, v141, v142, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist");
          v203[0] = 0;
          if ([+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
          {
            logfunction("", 1, @"Successfully removed Pre-SoftwareUpdate Asset Staging state plist at path: %s\n", v143, v144, v145, v146, v147, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist");
          }

          else
          {
            logfunction("", 1, @"Failed to remove Pre-SoftwareUpdate Asset Staging state plist at path: %s, with error: %@\n", v143, v144, v145, v146, v147, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist");
          }
        }

        MSUCleanupPreboot();
        MSUCleanupDataVolume();
        v203[0] = 0;
        v148 = [@"SqueakyClean" writeToFile:@"/var/run/FirstBootCleanupHandled" atomically:1 encoding:4 error:v203];
        if ((v148 & (v203[0] == 0)) != 0)
        {
          v154 = @"Successfully wrote firstBootCleanupDone cookie to /var/run\n";
        }

        else
        {
          v154 = @"Failed to write firstBootCleanupDone cookie to /var/run\n";
        }

        logfunction("", 1, v154, v149, v150, v151, v152, v153, v188);
        goto LABEL_75;
      }

      v95 = @"Device is not enrolled in a seeding program via +[SDBetaManager _isEnrolledInBetaProgram]\n";
    }

    else
    {
      v95 = @"Device does not have the seeding framework installed via check +[SDBetaManager _isEnrolledInBetaProgram]\n";
    }
  }

  else
  {
    v95 = @"Device does not have the seeding framework installed via check +[SDBetaManager _isEnrolledInBetaProgram]\n";
    v96 = kCFPreferencesAnyHost;
  }

  logfunction("", 1, v95, v90, v91, v92, v93, v94, v181);
  [v79 addObject:@"MobileAssetAssetAudience"];
  goto LABEL_54;
}

void CleanupPreparePathService_event_handler(_xpc_connection_s *a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __CleanupPreparePathService_event_handler_block_invoke;
  handler[3] = &unk_10004D158;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  if (cleanup_service_queue_onceToken != -1)
  {
    CleanupPreparePathService_event_handler_cold_1();
  }

  xpc_connection_set_target_queue(a1, cleanup_service_queue_service_queue);
  xpc_connection_resume(a1);
}

void conditionally_boot_efi_based_on_nvram()
{
  v0 = copy_nvram_variable(@"auto-boot-x86-once");
  if (v0)
  {
    v1 = v0;
    if (write_SMC_key("AUPO"))
    {
      delete_nvram_variable(@"auto-boot-x86-once");
    }

    else
    {
      logfunction("", 1, @"Failed to write AUPO to 1. Higher level OS will not boot.\n", v2, v3, v4, v5, v6, v7);
    }

    CFRelease(v1);
  }
}

void handle_MSUCleanupPreparePath(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"ShouldPurge");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    LODWORD(v7) = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
  }

  v9 = CFDictionaryGetValue(theDict, @"ShouldPurgeStagedAssets");
  v12 = v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFBooleanGetTypeID()) && CFBooleanGetValue(v10) != 0;
  v13 = CFDictionaryGetValue(theDict, @"ShouldDisableAssetStaging");
  v16 = v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFBooleanGetTypeID()) && CFBooleanGetValue(v14) != 0;
  v17 = CFDictionaryGetValue(theDict, @"ShouldResetAPFSReserve");
  v25 = !v17 || (v23 = v17, v24 = CFGetTypeID(v17), v24 != CFBooleanGetTypeID()) || CFBooleanGetValue(v23) != 0;
  if (v12)
  {
    logfunction("", 1, @"CleanupPreparePathService: Purging Pre-Software Update Staged Assets\n", v18, v19, v20, v21, v22, v38);
    +[MSUAssetStager purgeStagedAssetsAsync];
  }

  if (v16)
  {
    logfunction("", 1, @"CleanupPreparePathService: Disabling Pre-Software Update Asset Staging\n", v18, v19, v20, v21, v22, v38);
    v31 = MGCopyAnswer();
    if (!v31)
    {
      logfunction("", 1, @"Failed to get buildVersion\n", v26, v27, v28, v29, v30, v39);
    }

    v37 = MGCopyAnswer();
    if (!v37)
    {
      logfunction("", 1, @"Failed to get productVersion\n", v32, v33, v34, v35, v36, v39);
    }

    [MSUAssetStager disableStagingForReason:@"Disabling by request of Cleanup Prepare Path Service" buildVersion:v31 osVersion:v37];
    if (v31)
    {
    }

    if (v37)
    {
    }
  }

  if (MSUCleanupPreparePath_server(v7, v25, &cf, v18, v19, v20, v21, v22))
  {
    msu_send_status(a1, a2, 0);
  }

  else
  {
    msu_send_error(a1, a2, cf, 1);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void handle_MSUCleanupNVRAM(_xpc_connection_s *a1, void *a2)
{
  cf = 0;
  if (os_variant_has_internal_content())
  {
    v4 = copy_nvram_variable(@"ota-uuid");
    if (v4)
    {
      v5 = v4;
      *v7 = off_10004D220;
      execute_command(v7, handle_MSUCleanupLogger);
      CFRelease(v5);
    }
  }

  if (UMEventCleanupAllNVRAM(1, &cf))
  {
    msu_send_status(a1, a2, 0);
  }

  else
  {
    msu_send_error(a1, a2, cf, 1);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void handle_MSUCleanupRecoveryOSSavedState(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"Attempting to cleanup saved RecoveryOS state.\n", a4, a5, a6, a7, a8, v63);
  v10 = +[NSFileManager defaultManager];
  v66 = 0;
  v11 = [[NSString alloc] initWithFormat:@"%s/%s/%@"];
  if ([(NSFileManager *)v10 fileExistsAtPath:v11])
  {
    logfunction("", 1, @"Deleting RecoveryOS status file\n", v12, v13, v14, v15, v16, "/private/var/MobileSoftwareUpdate/");
    [(NSFileManager *)v10 removeItemAtPath:v11 error:&v66];
    if (v66)
    {
      logfunction("", 1, @"Unable to delete RecoveryOS status file: %@\n", v17, v18, v19, v20, v21, v66);
    }
  }

  else
  {
    logfunction("", 1, @"RecoveryOS status file not present(not an error)\n", v12, v13, v14, v15, v16, "/private/var/MobileSoftwareUpdate/");
  }

  v66 = 0;
  v22 = [[NSString alloc] initWithFormat:@"%s/%s/%s"];
  if ([(NSFileManager *)v10 fileExistsAtPath:v22])
  {
    logfunction("", 1, @"Deleting RecoveryOS connectivity data\n", v23, v24, v25, v26, v27, "/private/var/MobileSoftwareUpdate/");
    [(NSFileManager *)v10 removeItemAtPath:v22 error:&v66];
    if (v66)
    {
      logfunction("", 1, @"Unable to delete RecoveryOS connectivity data file: %@\n", v28, v29, v30, v31, v32, v66);
    }
  }

  else
  {
    logfunction("", 1, @"RecoveryOS connectivity data file not present\n", v23, v24, v25, v26, v27, "/private/var/MobileSoftwareUpdate/");
  }

  v38 = logfunction("", 1, @"Clearing out RecoveryOS logarchives\n", v33, v34, v35, v36, v37, v64);
  clear_recoveryos_logarchive_files(v38, v39, v40, v41, v42, v43, v44, v45);
  if (MGGetBoolAnswer() && (AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NerdLogarchivePreservationTime", @"com.apple.MobileSoftwareUpdate.CleanupPreparePathService", 0)) != 0)
  {
    v52 = AppIntegerValue;
    [[NSNumber numberWithLong:?]];
    logfunction("", 1, @"Overriding RecoveryOS logarchive preservation timeout to %f seconds\n", v53, v54, v55, v56, v57, v58);
    [[NSNumber numberWithLong:?]];
    v60 = (v59 * 1000000000.0);
  }

  else
  {
    logfunction("", 1, @"Using default RecoveryOS logarchive preservation timeout\n", v46, v47, v48, v49, v50, v65);
    v60 = 1209600000000000;
  }

  v61 = dispatch_time(0, v60);
  global_queue = dispatch_get_global_queue(17, 0);
  dispatch_after(v61, global_queue, &__block_literal_global_5);
  msu_send_status(a1, a2, 0);
}

void handle_MSUCleanupLogs(_xpc_connection_s *a1, void *a2, CFDictionaryRef theDict)
{
  valuePtr = 0x7FFFFFFFFFFFFFFFLL;
  cf = 0;
  v15 = 0;
  Value = CFDictionaryGetValue(theDict, @"LogsRetention");
  if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
    v13 = valuePtr;
  }

  else
  {
    logfunction("", 1, @"no valid retention\n", v6, v7, v8, v9, v10, v14);
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (MSUCleanupLogs_server(v13, &v15, &cf))
  {
    msu_send_status(a1, a2, v15);
  }

  else
  {
    msu_send_error(a1, a2, cf, 1);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

int *handle_reboot_to_nerd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  logfunction("", 1, @"Rebooting into nerd\n", a4, a5, a6, a7, a8, vars0);
  if (+[NeRDSPI setNVRAMForRebootToNerd])
  {
    logfunction("", 1, @"Rebooting now\n", v9, v10, v11, v12, v13, vars0a);
    if (reboot3())
    {
      v14 = @"Failed to reboot into nerd\n";
    }

    else
    {
      v14 = @"Initiated reboot into nerd\n";
    }
  }

  else
  {
    v14 = @"Failed to set the needed NVRAM to reboot to NeRD\n";
  }

  return logfunction("", 1, v14, v9, v10, v11, v12, v13, a9);
}

void handle_MSUSaveBootedOSState(_xpc_connection_s *a1, void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"[MSUSaveBootedOSState]: Handling request to save BootedOSState\n", a4, a5, a6, a7, a8, v26);
  Value = CFDictionaryGetValue(a3, @"AdditionalBootedOSData");
  if (Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    logfunction("", 1, @"[MSUSaveBootedOSState]: Additional info to be saved: %@\n", v11, v12, v13, v14, v15, Value);
  }

  else
  {
    logfunction("", 1, @"[MSUSaveBootedOSState]: Saving only default BootedOSState info\n", v11, v12, v13, v14, v15, v27);
  }

  if (saveBootedOSState(Value))
  {
    logfunction("", 1, @"[MSUSaveBootedOSState]: Successfully saved BootedOSState\n", v17, v18, v19, v20, v21, v28);

    msu_send_status(a1, a2, 0);
  }

  else
  {
    logfunction("", 1, @"[MSUSaveBootedOSState]: Failed to save BootedOSState\n", v17, v18, v19, v20, v21, v28);
    error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, 5, 0, 0, @"Failed to save BootedOSState to update volume", v22, v23, v24, v29);
    msu_send_error(a1, a2, error_internal_cf, 0);
    if (error_internal_cf)
    {

      CFRelease(error_internal_cf);
    }
  }
}

void handle_MSUSaveAccessibilityDomains(_xpc_connection_s *a1, void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"[MSUSaveAccessibilityDomains]: Handling request to save Accessibility domains\n", a4, a5, a6, a7, a8, v26);
  Value = CFDictionaryGetValue(a3, @"AdditionalBootedOSData");
  if (Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    logfunction("", 1, @"[MSUSaveAccessibilityDomains]: Additional info to be saved: %@\n", v11, v12, v13, v14, v15, Value);
  }

  else
  {
    logfunction("", 1, @"[MSUSaveAccessibilityDomains]: Saving only default accessibility domains info\n", v11, v12, v13, v14, v15, v27);
  }

  if (saveAccessibilityDomainsForDRE(Value))
  {
    logfunction("", 1, @"[MSUSaveAccessibilityDomains]: Successfully saved accessibility domains\n", v17, v18, v19, v20, v21, v28);

    msu_send_status(a1, a2, 0);
  }

  else
  {
    logfunction("", 1, @"[MSUSaveAccessibilityDomains]: Failed to save accessibility domains\n", v17, v18, v19, v20, v21, v28);
    error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, 5, 0, 0, @"Failed to save accessibility domains to update volume", v22, v23, v24, v29);
    msu_send_error(a1, a2, error_internal_cf, 0);
    if (error_internal_cf)
    {

      CFRelease(error_internal_cf);
    }
  }
}

void __clear_recoveryos_saved_files_block_invoke(id a1)
{
  v6 = logfunction("", 1, @"Timer fired for clearing RecoveryOS logarchive files\n", v1, v2, v3, v4, v5, vars0);

  clear_recoveryos_logarchive_files(v6, v7, v8, v9, v10, v11, v12, v13);
}

void clear_recoveryos_logarchive_files(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction("", 1, @"Deleting RecoveryOS logarchive files\n", a4, a5, a6, a7, a8, v30);
  v8 = [[NSString alloc] initWithFormat:@"%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD"];
  v9 = +[NSFileManager defaultManager];
  obj = [(NSFileManager *)v9 enumeratorAtPath:v8];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NerdLogarchivePreservationTime", @"com.apple.MobileSoftwareUpdate.CleanupPreparePathService", 0);
  if (AppIntegerValue)
  {
    [[NSNumber numberWithLong:?]];
    v12 = v11;
  }

  else
  {
    v12 = 1209600.0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [(NSDirectoryEnumerator *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if (([v17 hasSuffix:@".logarchive"] & 1) != 0 || objc_msgSend(v17, "hasSuffix:", @".logarchive.zip"))
        {
          v18 = [v8 stringByAppendingPathComponent:v17];
          [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", [(NSDictionary *)[(NSFileManager *)v9 attributesOfItemAtPath:v18 error:0] objectForKey:NSFileCreationDate]];
          if (v24 >= v12)
          {
            logfunction("", 1, @"Deleting %@\n", v19, v20, v21, v22, v23, v17);
            v32 = 0;
            [(NSFileManager *)v9 removeItemAtPath:v18 error:&v32];
            if (v32)
            {
              logfunction("", 1, @"Failed to delete %@ : %@\n", v25, v26, v27, v28, v29, v17);
            }
          }

          else
          {
            logfunction("", 1, @"Skipping %@ since it is newer than the timeout\n", v19, v20, v21, v22, v23, v17);
          }
        }
      }

      v14 = [(NSDirectoryEnumerator *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }
}

void __cleanup_service_queue_block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);
  cleanup_service_queue_service_queue = dispatch_queue_create("com.apple.MobileSoftwareUpdate.CleanupPreparePathService.queue", v2);
}

uint64_t get_snapshot_preparation_size(void *a1, char **a2, CFErrorRef *a3)
{
  v6 = +[MSULogAnnotatedSum sum];
  v7 = [a1 objectForKey:@"InstallationSize-Snapshot"];
  if (v7)
  {
    v13 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(NSNumberFormatter);
      [v14 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
      v13 = [v14 numberFromString:v13];
      v15 = @"update_attributes[InstallationSize-Snapshot] (string)";
LABEL_10:
      v46 = [v13 longLongValue];
      [v6 add:v46 annotation:v15];
      updated = cryptex_size_requirement_for_update_type(0, a1);
      v34 = &v46[updated];
      [v6 add:updated annotation:@"cryptex_size_requirement_for_update_type(msu_update_type_snapshot)"];
      v35 = 1;
      logfunction("", 1, @"snapshot preparation size (mastered) : %lld (%lld MB)\n", v48, v49, v50, v51, v52, v34);
      logfunction("", 1, @"\n%s():%@\n", v53, v54, v55, v56, v57, "get_snapshot_preparation_size");
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = @"update_attributes[InstallationSize-Snapshot] (number)";
      goto LABEL_10;
    }

    logfunction("", 1, @"InstallationSize-Snapshot has invalid type in update attributes\n", v41, v42, v43, v44, v45, v63);
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Invalid update attributes: invalid type InstallationSize-Snapshot", v59, v60, v61, v67);
    if (a3)
    {
      v34 = 0;
      v35 = 0;
      *a3 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
      v34 = 0;
      v35 = 0;
    }
  }

  else
  {
    logfunction("", 1, @"InstallationSize-Snapshot not present in update attributes\n", v8, v9, v10, v11, v12, v63);
    v16 = [a1 objectForKey:@"ActualMinimumSystemPartition"];
    if (!v16)
    {
      logfunction("", 1, @"ActualMinimumSystemPartition not present in update attributes\n", v17, v18, v19, v20, v21, v64);
      v16 = [a1 objectForKey:@"MinimumSystemPartition"];
      if (!v16)
      {
        logfunction("", 1, @"MinimumSystemPartition not present in update attributes. Using the default.\n", v22, v23, v24, v25, v26, v65);
        logfunction("", 1, @"*** Warning *** This is not a normal path *** Users shouldn't get here *** Engineers can\n", v27, v28, v29, v30, v31, v66);
        v16 = [NSNumber numberWithInt:2500];
      }
    }

    v32 = calculate_snapshot_overhead([(NSNumber *)v16 longLongValue]<< 20);
    v33 = cryptex_size_requirement_for_update_type(0, a1);
    v34 = (v33 + v32);
    v35 = 1;
    logfunction("", 1, @"snapshot preparation size (worst case) : %lld (%lld MB)\n", v36, v37, v38, v39, v40, v33 + v32);
  }

LABEL_11:
  if (a2)
  {
    *a2 = v34;
  }

  return v35;
}

uint64_t cryptex_size_requirement_for_update_type(int a1, void *a2)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31[1] = 3221225472;
  v31[0] = _NSConcreteStackBlock;
  v32 = __cryptex_size_requirement_for_update_type_block_invoke;
  v33 = &unk_10004D298;
  v34 = +[MSULogAnnotatedSum sum];
  v35 = &v37;
  v36 = a1;
  if (a2)
  {
    v9 = [a2 objectForKeyedSubscript:@"CryptexSizeInfo"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = [a2 objectForKeyedSubscript:@"ComboAsset"];
      if (!v10)
      {
        goto LABEL_31;
      }

      v11 = MGCopyAnswer();
      v44 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v12)
      {
        goto LABEL_31;
      }

      v13 = *v42;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v16 = [v15 objectForKeyedSubscript:@"PrerequisiteBuild"];
        if (v16)
        {
          if ([v16 isEqualToString:v11])
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_31;
        }
      }

      v9 = [v15 objectForKeyedSubscript:@"CryptexSizeInfo"];
      if (!v9)
      {
        goto LABEL_31;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v17 = [[NSArray alloc] initWithObjects:{@"cryptex-system-arm64e", @"cryptex-app", 0}];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v18 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v18)
        {
          v19 = *v42;
          v20 = -1;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v42 != v19)
              {
                objc_enumerationMutation(v9);
              }

              v22 = *(*(&v41 + 1) + 8 * i);
              objc_opt_class();
              ++v20;
              if (objc_opt_isKindOfClass())
              {
                v23 = [v22 objectForKey:@"CryptexTag"];
                if (v23)
                {
                  if ([v17 containsObject:v23])
                  {
                    v32(v31, v20, v23, v22);
                  }
                }
              }
            }

            v18 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v18);
        }
      }
    }
  }

LABEL_31:
  logfunction("", 1, @"cryptex size requirement: %lld (%lld MB)\n", v4, v5, v6, v7, v8, v38[3]);
  logfunction("", 1, @"\n%s(%s):%@\n", v24, v25, v26, v27, v28, "cryptex_size_requirement_for_update_type");
  v29 = v38[3];
  _Block_object_dispose(&v37, 8);
  return v29;
}

void sub_10000ABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t booted_from_recoveryos()
{
  if (booted_from_recoveryos_onceToken != -1)
  {
    booted_from_recoveryos_cold_1();
  }

  return booted_from_recoveryos_booted_from_recoveryos;
}

uint64_t get_apfs_preallocate_min_is_allowed(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"SUDisableAPFSGetPreallocateMin"];
  if (!v1)
  {
    v9 = @"Use of APFSIOC_GET_PREALLOCATE_MIN_SPACE is not expressly disallowed by asset attributes\n";
LABEL_8:
    v8 = 1;
    logfunction("", 1, v9, v2, v3, v4, v5, v6, v11);
    return v8;
  }

  v7 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = @"SUDisableAPFSGetPreallocateMin";
    v9 = @"%@ property has an unexpected type\n";
    goto LABEL_8;
  }

  if (![v7 BOOLValue])
  {
    v9 = @"Use of APFSIOC_GET_PREALLOCATE_MIN_SPACE is expressly allowed by asset attributes\n";
    goto LABEL_8;
  }

  logfunction("", 1, @"Use of APFSIOC_GET_PREALLOCATE_MIN_SPACE is disabled by asset attributes\n", v2, v3, v4, v5, v6, v11);
  return 0;
}

unint64_t get_apfs_preallocate_min(unint64_t a1)
{
  v2 = "/private/var/MobileSoftwareUpdate/.reserved";
  v3 = open("/private/var/MobileSoftwareUpdate/.reserved", 1538, 438);
  if (v3 == -1)
  {
    if (*__error() != 1 && *__error() != 13 || (v2 = "/tmp/.reserved", v4 = open("/tmp/.reserved", 1538, 438), v4 == -1))
    {
      v13 = __error();
      strerror(*v13);
      logfunction("", 1, @"open(%s) failed: (%s)\n", v14, v15, v16, v17, v18, v2);
      return a1;
    }
  }

  else
  {
    v4 = v3;
  }

  v19[0] = 0;
  v19[1] = a1;
  v20 = 0;
  if (ffsctl(v4, 0xC0184A68uLL, v19, 0) == -1)
  {
    v5 = __error();
    v6 = strerror(*v5);
    logfunction("", 1, @"ffsctl() failed: (%s)\n", v7, v8, v9, v10, v11, v6);
  }

  else if (v20 > a1)
  {
    a1 = v20;
  }

  close(v4);
  unlink(v2);
  return a1;
}

uint64_t get_snapshot_apply_and_reserve_sizes(void *a1, void *a2, void *a3, void *a4)
{
  [+[MSULogAnnotatedSum sum](MSULogAnnotatedSum "sum")];
  APFSShouldSealSystemVolume();
  get_apfs_preallocate_min_is_allowed(a1);
  logfunction("", 1, @"snapshot application size : %lld (%lld MB)\n", v8, v9, v10, v11, v12, 0);
  logfunction("", 1, @"\n%s():%@\n", v13, v14, v15, v16, v17, "get_snapshot_apply_and_reserve_sizes");
  if (a2)
  {
    *a2 = 419430400;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

void __booted_from_recoveryos_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (&_os_variant_is_recovery && os_variant_is_recovery())
  {
    booted_from_recoveryos_booted_from_recoveryos = 1;
  }

  objc_autoreleasePoolPop(v1);
}

uint64_t saveCurrentBootedOSStateForRecoveryModes(void *a1)
{
  v6 = saveBootedOSState(a1);
  v7 = "Failed to save the booted OS state";
  if (v6)
  {
    v7 = "Successfully saved the booted OS state";
  }

  logfunction("", 1, @"%s\n", v1, v2, v3, v4, v5, v7);
  return v6;
}

uint64_t saveBootedOSState(void *a1)
{
  v187 = 0;
  v2 = MGGetBoolAnswer();
  v8 = MGCopyAnswer();
  if (!v8)
  {
    logfunction("", 1, @"Failed to get currentOSVersion\n", v3, v4, v5, v6, v7, v171);
  }

  v181 = MGCopyAnswer();
  if (!v181)
  {
    logfunction("", 1, @"Failed to get currentProductVersion\n", v9, v10, v11, v12, v13, v171);
  }

  v19 = MGCopyAnswer();
  if (v19)
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    logfunction("", 1, @"currentOSType indicated as nil. Overriding it to be %@\n", v14, v15, v16, v17, v18, @"BootedOSReleaseTypeUnknown");
    v19 = [[NSString alloc] initWithString:@"BootedOSReleaseTypeUnknown"];
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v20 = [a1 objectForKeyedSubscript:@"BootedOSLanguage"];
  if (v20)
  {
    v26 = v20;
    logfunction("", 1, @"Language code passed in from options: (%@)\n", v21, v22, v23, v24, v25, v20);
    goto LABEL_14;
  }

LABEL_11:
  v32 = [[NSDictionary alloc] initWithContentsOfFile:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s/%s"}];
  v33 = [v32 objectForKeyedSubscript:@"BootedOSLanguage"];
  if (v33)
  {
    v26 = v33;
    logfunction("", 1, @"Language code was not passed in. Using previously stashed code : %@\n", v34, v35, v36, v37, v38, v33);
  }

  else
  {

    logfunction("", 1, @"Language code was not passed in and no previously stashed language found. Using default\n", v39, v40, v41, v42, v43, "/private/var/MobileSoftwareUpdate/");
    v26 = @"en";
  }

LABEL_14:
  logfunction("", 1, @"Stashing languageCode %@ to BootedOSState file\n", v27, v28, v29, v30, v31, v26);
  if (v2 && (v44 = CFPreferencesCopyValue(@"SUDisableRedRingUI", @"com.apple.nerd", @"root", kCFPreferencesAnyHost)) != 0)
  {
    v45 = v44;
    v46 = CFGetTypeID(v44);
    if (v46 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v45);
      v178 = Value != 0;
      v53 = "FALSE(No effect)";
      if (Value)
      {
        v53 = "TRUE";
      }

      logfunction("", 1, @"RedRingUIForceDisable is %s\n", v48, v49, v50, v51, v52, v53);
    }

    else
    {
      v178 = 0;
    }

    CFRelease(v45);
  }

  else
  {
    v178 = 0;
  }

  v54 = CFPreferencesCopyAppValue(@"EnableLiveAssetServerV2", @"com.apple.MobileAsset");
  if (!v54)
  {
    v176 = 1;
    logfunction("", 1, @"Pallas is enabled\n", v55, v56, v57, v58, v59, v172);
    goto LABEL_41;
  }

  v60 = v54;
  v61 = CFGetTypeID(v54);
  v62 = v60;
  if (v61 != CFStringGetTypeID())
  {
    v63 = CFGetTypeID(v60);
    if (v63 == CFNumberGetTypeID())
    {
      v62 = [(__CFString *)v60 stringValue];
      if (!v62)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v69 = CFGetTypeID(v60);
      if (v69 != CFBooleanGetTypeID())
      {
LABEL_39:
        v176 = 1;
        v70 = @"Pallas is enabled\n";
        goto LABEL_40;
      }

      if (CFBooleanGetValue(v60))
      {
        v62 = @"YES";
      }

      else
      {
        v62 = @"NO";
      }
    }
  }

  if (([(__CFString *)v62 isEqual:@"off"]& 1) == 0 && ([(__CFString *)v62 isEqual:@"false"]& 1) == 0 && ([(__CFString *)v62 isEqual:@"NO"]& 1) == 0 && ([(__CFString *)v62 isEqual:&__kCFBooleanFalse]& 1) == 0 && ([(__CFString *)v62 isEqual:@"0"]& 1) == 0)
  {
    goto LABEL_39;
  }

  v176 = 0;
  v70 = @"Pallas is disabled via default\n";
LABEL_40:
  logfunction("", 1, v70, v64, v65, v66, v67, v68, v172);
  CFRelease(v60);
LABEL_41:
  v184 = MAGetPallasAudience();
  if (!v184)
  {
    logfunction("", 1, @"Failed to get asset audience for the SoftwareUpdate asset\n", v71, v72, v73, v74, v75, v173);
  }

  v185 = MAGetPallasAudience();
  if (!v185)
  {
    logfunction("", 1, @"Failed to get asset audience for the DeviceRecoveryBrain asset\n", v76, v77, v78, v79, v80, v173);
  }

  v81 = CFPreferencesCopyAppValue(@"MobileAssetTokenFile", @"com.apple.MobileAsset");
  v82 = v81;
  if (v81)
  {
    v83 = CFGetTypeID(v81);
    if (v83 == CFStringGetTypeID())
    {
      if (![objc_msgSend(v82 "pathComponents")])
      {
        v183 = [[NSString alloc] initWithFormat:@"/var/MobileSoftwareUpdate/%@", v82];
        goto LABEL_50;
      }

      logfunction("", 1, @"Invalid value set for TokenFile default\n", v84, v85, v86, v87, v88, v173);
    }
  }

  v183 = 0;
LABEL_50:
  v89 = CFPreferencesCopyAppValue(@"MobileAssetTokenOverride", @"com.apple.MobileAsset");
  cf = v89;
  if (v89)
  {
    v90 = v89;
    v91 = CFGetTypeID(v89);
    if (v91 == CFStringGetTypeID())
    {
      v97 = v183;
      if (!v183)
      {
        v97 = [[NSString alloc] initWithString:@"/var/MobileSoftwareUpdate/MobileAsset/token.tok"];
      }

      logfunction("", 1, @"Using %@ for token path\n", v92, v93, v94, v95, v96, v97);
      v186 = 0;
      v183 = v97;
      if ([v90 writeToFile:v97 atomically:1 encoding:4 error:&v186])
      {
        logfunction("", 1, @"Successfully wrote token to file %@\n", v98, v99, v100, v101, v102, v97);
      }

      else
      {
        logfunction("", 1, @"Failed to write token to file %@ : %@\n", v98, v99, v100, v101, v102, v97);
      }
    }
  }

  v103 = ASServerURLForAssetType();
  LOBYTE(v109) = v187;
  if (v187 || (v110 = v103) == 0)
  {
    if (!v187)
    {
      v109 = @"Unknown error";
    }

    logfunction("", 1, @"Failed to get update asset URL: %@\n", v104, v105, v106, v107, v108, v109);
    v110 = 0;
    v187 = 0;
  }

  v182 = a1;
  v111 = ASServerURLForAssetType();
  LOBYTE(v117) = v187;
  if (v187 || (v118 = v111) == 0)
  {
    if (!v187)
    {
      v117 = @"Unknown error";
    }

    logfunction("", 1, @"Failed to get Brain asset URL: %@\n", v112, v113, v114, v115, v116, v117);
    v118 = 0;
    v187 = 0;
  }

  v119 = ASServerURLForAssetType();
  LOBYTE(v125) = v187;
  if (v187 || (v126 = v119) == 0)
  {
    if (!v187)
    {
      v125 = @"Unknown error";
    }

    logfunction("", 1, @"Failed to get Documentation asset URL: %@\n", v120, v121, v122, v123, v124, v125);
    v126 = 0;
    v187 = 0;
  }

  v177 = v82;
  v180 = v19;
  v127 = ASServerURLForAssetType();
  LOBYTE(v133) = v187;
  if (v187 || (v134 = v127) == 0)
  {
    if (!v187)
    {
      v133 = @"Unknown error";
    }

    logfunction("", 1, @"Failed to get Watch Documentation asset URL: %@\n", v128, v129, v130, v131, v132, v133);
    v134 = 0;
    v187 = 0;
  }

  v179 = v26;
  v135 = ASServerURLForAssetType();
  LOBYTE(v141) = v187;
  if (v187 || (v142 = v135) == 0)
  {
    if (!v187)
    {
      v141 = @"Unknown error";
    }

    logfunction("", 1, @"Unable to determine DeviceRecoveryBrain asset URL: %@\n", v136, v137, v138, v139, v140, v141);
    v142 = 0;
    v187 = 0;
  }

  [v110 absoluteString];
  [v118 absoluteString];
  [v126 absoluteString];
  [v134 absoluteString];
  [v142 absoluteString];
  logfunction("", 1, @"SU configuration:\n Asset Audience : %@\n SU Asset URL: %@\n Brain URL: %@\n Documentation URL: %@\n WatchDocumentation URL: %@\n DeviceRecoveryBrain Asset Audience: %@\n DeviceRecoveryBrain URL: %@\n", v143, v144, v145, v146, v147, v184);
  v148 = CFPreferencesCopyAppValue(@"RetainOriginalBootedOSState", @"com.apple.MobileSoftwareUpdate");
  v149 = v148;
  if (v148 && (v150 = CFGetTypeID(v148), v150 == CFBooleanGetTypeID()) && CFBooleanGetValue(v149) && (logfunction("", 1, @"default set for retaining original bootedOSState plist, will not remove unchanged properties\n", v151, v152, v153, v154, v155, v174), v174 = "/private/var/MobileSoftwareUpdate/", (v156 = [[NSDictionary alloc] initWithContentsOfFile:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s/%s"}]) != 0))
  {
    v157 = v156;
    v158 = [[NSMutableDictionary alloc] initWithDictionary:v156];
  }

  else
  {
    v158 = objc_alloc_init(NSMutableDictionary);
    v157 = 0;
  }

  if (v178)
  {
    [(NSMutableDictionary *)v158 setValue:@"YES" forKey:@"RedRingDisabled"];
  }

  if (v8)
  {
    [(NSMutableDictionary *)v158 setValue:v8 forKey:@"BootedOSVersion"];
  }

  if (v180)
  {
    [(NSMutableDictionary *)v158 setValue:v180 forKey:@"BootedOSType"];
  }

  [(NSMutableDictionary *)v158 setValue:v179 forKey:@"BootedOSLanguage"];
  if (v110)
  {
    -[NSMutableDictionary setValue:forKey:](v158, "setValue:forKey:", [v110 absoluteString], @"BootedOSSUAssetURL");
  }

  if (v126)
  {
    -[NSMutableDictionary setValue:forKey:](v158, "setValue:forKey:", [v126 absoluteString], @"BootedOSDocumentationURL");
  }

  if (v134)
  {
    -[NSMutableDictionary setValue:forKey:](v158, "setValue:forKey:", [v134 absoluteString], @"BootedOSWatchDocumentationURL");
  }

  if (v118)
  {
    -[NSMutableDictionary setValue:forKey:](v158, "setValue:forKey:", [v118 absoluteString], @"BootedOSBrainURL");
  }

  if (v184)
  {
    [(NSMutableDictionary *)v158 setValue:v184 forKey:@"BootedOSAssetAudience"];
  }

  if (v181)
  {
    [(NSMutableDictionary *)v158 setValue:v181 forKey:@"BootedOSProductVersion"];
  }

  if ((v176 & 1) == 0)
  {
    logfunction("", 1, @"Updating BootedOSState to indicate pallas is disabled\n", v159, v160, v161, v162, v163, v174);
    [(NSMutableDictionary *)v158 setValue:@"YES" forKey:@"BootedOSHasPallasDisabled"];
  }

  if (v183)
  {
    logfunction("", 1, @"Updating BootedOSState with token path\n", v159, v160, v161, v162, v163, v174);
    [(NSMutableDictionary *)v158 setValue:v183 forKey:@"BootedOSDawTokenPath"];
  }

  if (v185)
  {
    [(NSMutableDictionary *)v158 setValue:v185 forKey:@"BootedOSDREBrainAssetAudience"];
  }

  if (v142)
  {
    -[NSMutableDictionary setValue:forKey:](v158, "setValue:forKey:", [v142 absoluteString], @"BooteOSDREBrainAssetURL");
  }

  if (v182)
  {
    [(NSMutableDictionary *)v158 addEntriesFromDictionary:v182];
  }

  v164 = ramrod_write_os_info_for_nerd("/private/var/MobileSoftwareUpdate/", v158, 0);
  if (v164 && (saveAccessibilityDomainsForDRE(v182) & 1) == 0)
  {
    logfunction("", 1, @"Failed to save accessibility domains, but continuing with booted OS state save\n", v165, v166, v167, v168, v169, v174);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  return v164;
}

uint64_t saveAccessibilityDomainsForDRE(uint64_t a1)
{
  os_env = msu_get_os_env();
  if (os_env == 2 || os_env == 4)
  {
    v50 = a1;
    v51 = objc_opt_new();
    v52 = +[NSMutableDictionary dictionary];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v54 = [&off_1000588A0 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v54)
    {
      v53 = *v57;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(&off_1000588A0);
          }

          v9 = *(*(&v56 + 1) + 8 * i);
          v10 = +[NSMutableDictionary dictionary];
          v11 = CFPreferencesCopyKeyList(v9, @"mobile", kCFPreferencesAnyHost);
          if (v11)
          {
            v12 = v11;
            v55 = i;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v60 objects:v65 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v61;
              do
              {
                for (j = 0; j != v14; j = j + 1)
                {
                  if (*v61 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v60 + 1) + 8 * j);
                  v18 = CFPreferencesCopyValue(v17, v9, @"mobile", kCFPreferencesAnyHost);
                  if (v18)
                  {
                    v19 = v18;
                    [v10 setObject:v18 forKeyedSubscript:v17];
                    CFRelease(v19);
                  }
                }

                v14 = [(__CFArray *)v12 countByEnumeratingWithState:&v60 objects:v65 count:16];
              }

              while (v14);
            }

            CFRelease(v12);
            i = v55;
          }

          v20 = [v10 copy];
          v26 = v20;
          if (v20 && [v20 count])
          {
            [v52 setObject:v26 forKeyedSubscript:v9];
            v49 = [v26 count];
            logfunction("", 1, @"Exported %lu preferences for domain: %@\n", v27, v28, v29, v30, v31, v49);
          }

          else
          {
            logfunction("", 1, @"No preferences found for domain: %@\n", v21, v22, v23, v24, v25, v9);
          }
        }

        v54 = [&off_1000588A0 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v54);
    }

    v32 = [v52 copy];
    v38 = v32;
    if (v32 && [v32 count])
    {
      v39 = v51;
      [(NSMutableDictionary *)v51 setObject:v38 forKeyedSubscript:@"AccessibilityDomains"];
    }

    else
    {
      logfunction("", 1, @"No accessibility domains to export\n", v33, v34, v35, v36, v37, v48);
      v39 = v51;
    }

    if (v50)
    {
      [(NSMutableDictionary *)v39 addEntriesFromDictionary:?];
    }

    v40 = ramrod_stash_info_to_file("/private/var/MobileSoftwareUpdate/", "Controller/NeRD", "AccessibilityDomains.plist", v39, 0);
    if (v40)
    {
      v41 = [v38 count];
      logfunction("", 1, @"Successfully exported %lu accessibility domains to DRE\n", v42, v43, v44, v45, v46, v41);
    }
  }

  else
  {
    logfunction("", 1, @"Not saving accessibility domains - not supported on this target or already in recovery\n", v3, v4, v5, v6, v7, v48);
    return 0;
  }

  return v40;
}

uint64_t msu_running_in_limited_environment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (&_os_variant_uses_ephemeral_storage)
  {
    v8 = os_variant_uses_ephemeral_storage();
    if (v8)
    {
      v9 = @"MSU running in limited env\n";
    }

    else
    {
      v9 = @"MSU running in normal env\n";
    }
  }

  else
  {
    v8 = 1;
    v9 = @"MSU running in normal env(default)\n";
  }

  logfunction("", 1, v9, a4, a5, a6, a7, a8, v11);
  return v8;
}

BOOL mount_source_preboot(uint64_t a1, NSString **a2, void *a3, _BYTE *a4, CFErrorRef *a5)
{
  v30 = 0;
  if (mount_preboot_volume(0, &v30))
  {
    logfunction("", 1, @"Failed to mount preboot\n", v9, v10, v11, v12, v13, v27);
    v17 = @"Failed to mount preboot";
    v18 = 62;
LABEL_5:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", v18, 0, 0, v17, v14, v15, v16, v28);
    if (!a5)
    {
      CFRelease(error_internal_cf);
      return 0;
    }

    v20 = 0;
    goto LABEL_7;
  }

  memset(v32, 0, sizeof(v32));
  bzero(v31, 0x400uLL);
  ramrod_get_preboot_partition_device_node(v32, 0x20uLL);
  if (ramrod_get_mount_path(v32, v31, 0x400uLL))
  {
    v17 = @"Failed to get preboot mountpoint from dev node (%s)";
    v28 = v32;
    v18 = 68;
    goto LABEL_5;
  }

  v29 = 0;
  v22 = ramrod_change_filesystem_permissions_opt_err(v32, v31, 0, &v29);
  v20 = v22 == 0;
  if (v22)
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 69, v29, 0, @"Failed to upgrade preboot mountpoint to read/write", v23, v24, v25, v27);
    if (!a5)
    {
      CFRelease(error_internal_cf);
      return v20;
    }

LABEL_7:
    *a5 = error_internal_cf;
    return v20;
  }

  v26 = [NSString stringWithUTF8String:v31];
  if (a2)
  {
    *a2 = v26;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = v30;
  }

  return v20;
}

id __cryptex_size_requirement_for_update_type_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [NSString stringWithFormat:@"update_attributes[%@][%lu(%@)]", @"CryptexSizeInfo", a2, a3];
  v7 = [a4 objectForKeyedSubscript:@"CryptexSize"];
  v8 = [v7 unsignedLongLongValue];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) += (v8 << 20) / 5uLL + (v8 << 20);
    [*(a1 + 32) add:v6 annotationFormat:@"CryptexSize"];
  }

  v9 = [a4 objectForKeyedSubscript:@"ReversePatchSize"];
  v10 = [v9 unsignedLongLongValue];
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) += v10 << 20;
    [*(a1 + 32) add:v10 << 20 annotationFormat:@"%@[%@]", v6, @"ReversePatchSize"];
  }

  v11 = [a4 objectForKeyedSubscript:@"CryptexSizeDelta"];
  result = [v11 unsignedLongLongValue];
  if (v11)
  {
    if (*(a1 + 48) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) += result << 20;
      return [*(a1 + 32) add:v6 annotationFormat:@"CryptexSizeDelta"];
    }
  }

  return result;
}

void MSUCleanupPreboot()
{
  v50 = 0;
  v51 = 0;
  v49 = 0;
  if (!mount_source_preboot(1, &v51, &v50, &v49, 0))
  {
    return;
  }

  v0 = +[NSMutableDictionary dictionary];
  [v0 setObject:v51 forKeyedSubscript:@"PrebootMountpoint"];
  v7 = v50;
  if (v50)
  {
    [v0 setObject:v50 forKeyedSubscript:@"VolumeGroupUUID"];
  }

  ramrod_splat_cleanup(v0, v1, v7, v2, v3, v4, v5, v6);
  if (v49 == 1)
  {
    unmount_source_preboot();
  }

  v8 = +[NSFileManager defaultManager];
  v9 = MGCopyAnswer();
  if (!v9)
  {
    v26 = @"Unable to query boot manifest hash\n";
LABEL_13:
    logfunction("", 1, v26, v10, v11, v12, v13, v14, v45);
    return;
  }

  v15 = v9;
  v16 = CFGetTypeID(v9);
  if (v16 != CFDataGetTypeID())
  {
    v26 = @"Boot manifest hash is not CFData\n";
    goto LABEL_13;
  }

  v17 = [NSMutableString stringWithCapacity:2 * CFDataGetLength(v15)];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = __MSUCleanupPreboot_block_invoke;
  v48[3] = &unk_10004D2C0;
  v48[4] = v17;
  [(__CFData *)v15 enumerateByteRangesUsingBlock:v48];
  v18 = [@"/private/preboot" stringByAppendingPathComponent:v17];
  v19 = [(NSFileManager *)v8 attributesOfItemAtPath:v18 error:0];
  if (v19)
  {
    if ([(NSDictionary *)v19 fileType]== NSFileTypeSymbolicLink)
    {
      v25 = [(NSFileManager *)v8 destinationOfSymbolicLinkAtPath:v18 error:0];
      if (v25)
      {
        logfunction("", 1, @"Current manifest hash is a link to %@\n", v27, v28, v29, v30, v31, v25);
      }
    }

    else
    {
      v25 = 0;
    }

    v32 = [(NSFileManager *)v8 contentsOfDirectoryAtPath:@"/private/preboot" error:0];
    bzero(&v52, 0x878uLL);
    if (statfs([@"/private/preboot" fileSystemRepresentation], &v52))
    {
      v33 = *__error();
      v34 = __error();
      strerror(*v34);
      logfunction("", 1, @"Error %d (%s) statfs-ing %@\n", v35, v36, v37, v38, v39, v33);
    }

    else if ((v52.f_flags & 0x4001) == 1)
    {
      cf = 0;
      if (ramrod_change_filesystem_permissions_opt_err(v52.f_mntfromname, v52.f_mntonname, 0, &cf))
      {
        logfunction("", 1, @"Failed to upgrade preboot mount to read/write with error:%@\n", v40, v41, v42, v43, v44, cf);
      }

      else
      {
        logfunction("", 1, @"Successfully upgraded preboot mount to read/write\n", v40, v41, v42, v43, v44, v45);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = __MSUCleanupPreboot_block_invoke_2;
    v46[3] = &unk_10004D2E8;
    v46[4] = @"/private/preboot";
    v46[5] = v8;
    v46[6] = v17;
    v46[7] = v25;
    [(NSArray *)v32 enumerateObjectsUsingBlock:v46];
  }

  else
  {
    logfunction("", 1, @"No preboot path found, skipping cleanup\n", v20, v21, v22, v23, v24, v45);
  }

  CFRelease(v15);
}

id *__MSUCleanupPreboot_block_invoke(id *result, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  v6 = a4;
  if (a4)
  {
    v7 = result;
    v8 = (a2 + a3);
    do
    {
      v9 = *v8++;
      result = [v7[4] appendFormat:@"%02X", v9];
      --v6;
    }

    while (v6);
  }

  *a5 = 0;
  return result;
}

int *__MSUCleanupPreboot_block_invoke_2(id *a1, void *a2)
{
  v4 = [a1[4] stringByAppendingPathComponent:a2];
  v5 = [a1[5] attributesOfItemAtPath:v4 error:0];
  if (v5 && [v5 fileType] == NSFileTypeSymbolicLink && (v14 = objc_msgSend(a1[5], "destinationOfSymbolicLinkAtPath:error:", v4, 0)) != 0 && objc_msgSend(v14, "isEqualToString:", a1[6]))
  {
    v20 = a1[6];
    logfunction("", 1, @"Manifest hash %@ is linked to %@\n", v15, v16, v17, v18, v19, a2);
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  result = [a1[6] isEqualToString:a2];
  if ((result & 1) == 0)
  {
    result = [v6 isEqualToString:a2];
    if ((result & 1) == 0)
    {
      result = [a1[7] isEqualToString:a2];
      if ((result & 1) == 0)
      {
        result = [@"active" isEqualToString:a2];
        if ((result & 1) == 0)
        {
          result = [@"cryptex1" isEqualToString:a2];
          if ((result & 1) == 0)
          {
            result = [@"downlevel" isEqualToString:a2];
            if ((result & 1) == 0)
            {
              result = [@"Cryptexes" isEqualToString:a2];
              if ((result & 1) == 0)
              {
                result = [@"supplemental" isEqualToString:a2];
                if ((result & 1) == 0)
                {
                  result = [@".DarwinDepot" isEqualToString:a2];
                  if ((result & 1) == 0)
                  {
                    result = [@".roots-installed" isEqualToString:a2];
                    if ((result & 1) == 0)
                    {
                      if ([a1[5] removeItemAtPath:objc_msgSend(a1[4] error:{"stringByAppendingPathComponent:", a2), 0}])
                      {
                        v13 = @"Removed preboot path %@\n";
                      }

                      else
                      {
                        v13 = @"Failed to remove preboot path %@\n";
                      }

                      return logfunction("", 1, v13, v8, v9, v10, v11, v12, a2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MSUCleanupPreparePath_server(int a1, int a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = DeleteUpgradeBootCommand();
    buffer[0] = 0;
    msu_delete_nvram_variable_if_exists(@"update-volume", buffer);
    v11 = buffer[0] | v10;
    msu_delete_nvram_variable_if_exists(@"target-uuid", buffer);
    if (v11 | buffer[0])
    {
      msu_sync_nvram(1, v12, v13, v14, v15, v16, v17, v18);
    }

    logfunction("", 1, @"Purging any suspended/pended update...\n", v14, v15, v16, v17, v18, v241);
    unlink("/private/var/MobileSoftwareUpdate/Update.plist");
    unlink("/private/var/MobileSoftwareUpdate/Preflight.plist");
    unlink("/private/var/MobileSoftwareUpdate/brain_path.plist");
    clear_apply_state();
    MSUCleanupPreboot();
  }

  if (a2)
  {
    [+[MSUFreeSpaceManager sharedInstance](MSUFreeSpaceManager resetAPFSFreeBlocksThreshold:"resetAPFSFreeBlocksThreshold:", 0];
  }

  else
  {
    logfunction("", 1, @"Not resetting APFS free blocks threshold\n", a4, a5, a6, a7, a8, v241);
  }

  bzero(buffer, 0x400uLL);
  v19 = 1;
  logfunction("", 1, @"Cleaning up unused prepared updates\n", v20, v21, v22, v23, v24, v241);
  init_update_partition_with_reserve_and_reformat(0, "/private/var/MobileSoftwareUpdate/", 0, v25, v26, v27, v28, v29);
  dict = load_dict("/private/var/MobileSoftwareUpdate/Update.plist");
  v31 = load_dict("/private/var/MobileSoftwareUpdate/Preflight.plist");
  v32 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

  if (!dict || (v33 = -[__CFDictionary objectForKeyedSubscript:](v31, "objectForKeyedSubscript:", @"update-asset-attributes"), v34 = [dict objectForKeyedSubscript:@"update-asset-attributes"], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v35 = objc_msgSend(v33, "objectForKeyedSubscript:", @"UpdateUUID"), v36 = objc_msgSend(v34, "objectForKeyedSubscript:", @"UpdateUUID"), !v35) || !v36 || !objc_msgSend(v35, "isEqual:", v36))
  {
    Value = CFDictionaryGetValue(v32, @"suspended-update-path");
    if (!Value || (v43 = Value, v44 = CFGetTypeID(Value), v44 != CFStringGetTypeID()))
    {
      v19 = 0;
      goto LABEL_22;
    }

    memset(&v257, 0, sizeof(v257));
    CFStringGetCString(v43, buffer, 1024, 0x8000100u);
    v45 = realpath_DARWIN_EXTSN(buffer, 0);
    if (v45)
    {
      v46 = v45;
      if (stat(v45, &v257))
      {
        free(v46);
LABEL_118:
        v46 = 0;
        v52 = 0;
        goto LABEL_119;
      }

      v52 = 1;
      logfunction("", 1, @"Preflighted update at %s\n", v47, v48, v49, v50, v51, v46);
    }

    else
    {
      if (*__error() == 2)
      {
        logfunction("", 1, @"Preflighted update at %s has already been cleaned up\n", v65, v66, v67, v68, v69, buffer);
        goto LABEL_118;
      }

      v150 = *__error();
      v151 = __error();
      strerror(*v151);
      error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, v150, 0, 0, @"Could not realpath(3) path %s: %s", v152, v153, v154, buffer);
      if (!a3)
      {
        CFRelease(error_internal_cf);
        goto LABEL_118;
      }

      v46 = 0;
      v52 = 0;
      *a3 = error_internal_cf;
    }

LABEL_119:
    v19 = 0;
    goto LABEL_23;
  }

  logfunction("", 1, @"Ignoring preflighted update, it appears to be the same as the suspended/pending update\n", v37, v38, v39, v40, v41, v242);
  CFRelease(v32);
  v32 = 0;
LABEL_22:
  v46 = 0;
  v52 = 0;
LABEL_23:
  v53 = 0;
  v54 = 0;
  if (!v46 && dict)
  {
    v55 = CFDictionaryGetValue(dict, @"update-path");
    if ((!v55 || (v56 = v55, v57 = CFGetTypeID(v55), v57 != CFStringGetTypeID())) && (v56 = CFDictionaryGetValue(dict, @"suspended-update-path")) == 0 || (v58 = CFGetTypeID(v56), v58 != CFStringGetTypeID()))
    {
      v54 = 0;
      v53 = 0;
      v46 = 0;
      goto LABEL_40;
    }

    memset(&v257, 0, sizeof(v257));
    CFStringGetCString(v56, buffer, 1024, 0x8000100u);
    v59 = realpath_DARWIN_EXTSN(buffer, 0);
    v46 = v59;
    if (v59)
    {
      if (!stat(v59, &v257))
      {
        if (CFDictionaryContainsKey(dict, @"suspended-update-path"))
        {
          v54 = 1;
          logfunction("", 1, @"Suspended update at %s\n", v60, v61, v62, v63, v64, v46);
          v53 = 0;
          goto LABEL_40;
        }

        v53 = copy_nvram_variable(@"boot-command");
        logfunction("", 1, @"boot-command: '%@'\n", v168, v169, v170, v171, v172, v53);
        if (v53)
        {
          v173 = CFGetTypeID(v53);
          if (v173 == CFStringGetTypeID() && CFStringCompare(v53, @"upgrade", 0) == kCFCompareEqualTo)
          {
            v54 = 1;
            logfunction("", 1, @"Pending update at %s\n", v174, v175, v176, v177, v178, v46);
            goto LABEL_45;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (*__error() != 2)
      {
        v156 = *__error();
        v157 = __error();
        strerror(*v157);
        v161 = _create_error_internal_cf(kCFErrorDomainPOSIX, v156, 0, 0, @"Could not realpath(3) path %s: %s", v158, v159, v160, buffer);
        if (a3)
        {
          *a3 = v161;
        }

        else
        {
          CFRelease(v161);
        }

        v107 = 0;
        if (v19)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      logfunction("", 1, @"Update at %s has already been cleaned up\n", v70, v71, v72, v73, v74, buffer);
    }

    v53 = 0;
LABEL_39:
    v54 = 0;
  }

LABEL_40:
  if ((release_baseband_ticket_lock(a3) & 1) == 0)
  {
    if (a3)
    {
      v80 = *a3;
    }

    else
    {
      LOBYTE(v80) = 0;
    }

    logfunction("", 1, @"Warning: releasing baseband ticket lock failed: %@\n", v75, v76, v77, v78, v79, v80);
  }

LABEL_45:
  v81 = realpath_DARWIN_EXTSN("/private/var/MobileSoftwareUpdate/", 0);
  v82 = v81;
  if (v81)
  {
    v258[0] = v81;
    v258[1] = 0;
    v83 = fts_open(v258, 21, 0);
    if (v83)
    {
      v84 = v83;
      v247 = v82;
      v248 = v53;
      v249 = a3;
      v85 = fts_read(v83);
      v86 = v52 | v54;
      v245 = v32;
      v246 = dict;
      v244 = v19;
      if (v85)
      {
        v87 = v85;
        do
        {
          if (v87->fts_info == 1 && v87->fts_level >= 1)
          {
            if (!strncmp(v87->fts_name, "softwareupdate", 0xEuLL))
            {
              fts_path = v87->fts_path;
              if (!v86 || strcmp(v87->fts_path, v46))
              {
                logfunction("", 1, @"Removing update at %s\n", v88, v89, v90, v91, v92, fts_path);
                if (removefile(v87->fts_path, 0, 1u))
                {
                  v94 = *__error();
                  v95 = v87->fts_path;
                  v96 = __error();
                  strerror(*v96);
                  v100 = _create_error_internal_cf(kCFErrorDomainPOSIX, v94, 0, 0, @"Could not removefile(3) path %s: %s", v97, v98, v99, v95);
                  if (v249)
                  {
                    *v249 = v100;
                  }

                  else
                  {
                    CFRelease(v100);
                  }
                }
              }
            }

            fts_set(v84, v87, 4);
          }

          v87 = fts_read(v84);
        }

        while (v87);
        fts_close(v84);
        dict = v246;
        if (v86)
        {
LABEL_63:
          v107 = 1;
          v82 = v247;
          v53 = v248;
          if (!v46)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }
      }

      else
      {
        fts_close(v84);
        if (v86)
        {
          goto LABEL_63;
        }
      }

      v114 = DeleteUpgradeBootCommand();
      v251 = 0;
      msu_delete_nvram_variable_if_exists(@"target-uuid", &v251);
      if (v251 | v114)
      {
        msu_sync_nvram(1, v115, v116, v117, v118, v119, v120, v121);
      }

      v127 = v249;
      if (!unlink("/private/var/MobileSoftwareUpdate/Update.plist"))
      {
        logfunction("", 1, @"Deleted Preflight.plist because no preflighted update was found\n", v122, v123, v124, v125, v126, v242);
      }

      if (!unlink("/private/var/MobileSoftwareUpdate/Preflight.plist"))
      {
        logfunction("", 1, @"Deleted Update.plist because no suspended (or pending) update was found\n", v130, v131, v132, v133, v134, v242);
      }

      v82 = v247;
      v53 = v248;
      if (!mount_update_partition_if_exists("/private/var/MobileSoftwareUpdate/", v128, v129, v130, v131, v132, v133, v134))
      {
        v258[0] = "/private/var/MobileSoftwareUpdate/";
        v135 = fts_open(v258, 21, 0);
        if (v135)
        {
          v136 = v135;
          v137 = fts_read(v135);
          if (v137)
          {
            v138 = v137;
            do
            {
              fts_info = v138->fts_info;
              if (fts_info != 8)
              {
                if (fts_info == 1 && v138->fts_level >= 1)
                {
                  fts_set(v136, v138, 4);
                }

                goto LABEL_96;
              }

              if (!strncmp("patchd-", v138->fts_name, 7uLL))
              {
                __endptr[0] = 0;
                v140 = strtoull(&v138->fts_name[7], __endptr, 10);
                v141 = __endptr[0];
                if (__endptr[0])
                {
                  v142 = v140;
                  if (!strcmp(__endptr[0], ".log"))
                  {
                    bzero(&v257, 0x400uLL);
                    snprintf(&v257, 0x400uLL, "%s%.*s", ".patchd-saved-", v141 - (v138 + 111), &v138->fts_name[7]);
                    v143 = access(&v257, 0);
                    v149 = v138->fts_path;
                    if (!v143)
                    {
                      logfunction("", 1, @"Not saving log file %s\n", v144, v145, v146, v147, v148, v138->fts_path);
LABEL_104:
                      unlink(v138->fts_path);
                      goto LABEL_96;
                    }

                    logfunction("", 1, @"Saving log file %s\n", v144, v145, v146, v147, v148, v138->fts_path);
                    if (!submitRestoreLogFile(0, v142, v138->fts_path, 0))
                    {
                      goto LABEL_104;
                    }
                  }
                }
              }

LABEL_96:
              v138 = fts_read(v136);
            }

            while (v138);
          }

          fts_close(v136);
          v53 = v248;
          v127 = v249;
          v82 = v247;
        }

        else
        {
          v162 = *__error();
          v163 = __error();
          strerror(*v163);
          v167 = _create_error_internal_cf(kCFErrorDomainPOSIX, v162, 0, 0, @"Could not fts_open(3) path %s: %s", v164, v165, v166, "/private/var/MobileSoftwareUpdate/");
          if (v249)
          {
            *v249 = v167;
          }

          else
          {
            CFRelease(v167);
          }
        }
      }

      v243 = v46;
      v179 = [@"/private/var/MobileSoftwareUpdate/" stringByAppendingPathComponent:@"/mobile/Library/Logs/CrashReporter"];
      v180 = [@"/private/var" stringByAppendingPathComponent:@"/mobile/Library/Logs/CrashReporter"];
      v181 = +[NSFileManager defaultManager];
      if (os_variant_is_recovery())
      {
        logfunction("", 1, @"%s: Not preserving crash reporter logs on recoveryOS\n", v182, v183, v184, v185, v186, "_migrate_ramdisk_logs");
      }

      else if ([(NSFileManager *)v181 fileExistsAtPath:v179])
      {
        v256 = 0;
        v192 = [(NSFileManager *)v181 contentsOfDirectoryAtPath:v179 error:&v256];
        obj = v192;
        if (!v192 || v256)
        {
          [objc_msgSend(v256 "description")];
          logfunction("", 1, @"%s: Failed to get list of crash logs: %s\n", v210, v211, v212, v213, v214, "_migrate_ramdisk_logs");
        }

        else
        {
          v254 = 0u;
          v255 = 0u;
          *__endptr = 0u;
          v253 = 0u;
          v193 = [(NSArray *)v192 countByEnumeratingWithState:__endptr objects:&v257 count:16];
          if (v193)
          {
            v194 = v193;
            v195 = *v253;
            do
            {
              for (i = 0; i != v194; i = i + 1)
              {
                if (*v253 != v195)
                {
                  objc_enumerationMutation(obj);
                }

                v197 = *&__endptr[1][8 * i];
                v198 = [v179 stringByAppendingPathComponent:v197];
                v199 = [v180 stringByAppendingPathComponent:v197];
                if ([(NSFileManager *)v181 fileExistsAtPath:v199])
                {
                  [(NSFileManager *)v181 removeItemAtPath:v199 error:&v256];
                  if (v256)
                  {
                    [objc_msgSend(v256 "description")];
                    logfunction("", 1, @"%s: Failed to remove old log before overwriting: %s\n", v200, v201, v202, v203, v204, "_migrate_ramdisk_logs");
                    v256 = 0;
                  }
                }

                [(NSFileManager *)v181 moveItemAtPath:v198 toPath:v199 error:&v256];
                if (v256)
                {
                  [v198 fileSystemRepresentation];
                  [objc_msgSend(v256 "description")];
                  logfunction("", 1, @"%s: Failed to move CrashReporter log %s: %s\n", v205, v206, v207, v208, v209, "_migrate_ramdisk_logs");
                  v256 = 0;
                }
              }

              v194 = [(NSArray *)obj countByEnumeratingWithState:__endptr objects:&v257 count:16];
            }

            while (v194);
          }
        }

        v53 = v248;
        v127 = v249;
        v82 = v247;
      }

      else
      {
        logfunction("", 1, @"%s: No ramdisk created CrashReporter dir found\n", v187, v188, v189, v190, v191, "_migrate_ramdisk_logs");
      }

      cleanup_boot_environment("/private/var/MobileSoftwareUpdate/");
      v32 = v245;
      dict = v246;
      v19 = v244;
      v46 = v243;
      if (removefile("/private/var/mobile/MobileSoftwareUpdate/UpdateDownloads", 0, 1u) && *__error() != 2)
      {
        v215 = *__error();
        v216 = __error();
        strerror(*v216);
        v220 = _create_error_internal_cf(kCFErrorDomainPOSIX, v215, 0, 0, @"Could not removefile(3) downloaded updates at %s: %s", v217, v218, v219, "/private/var/mobile/MobileSoftwareUpdate/UpdateDownloads");
        if (!v127)
        {
          CFRelease(v220);
          if (MSUDemotionCleanup(0))
          {
            goto LABEL_155;
          }

          goto LABEL_153;
        }

        *v127 = v220;
      }

      if (MSUDemotionCleanup(v127))
      {
        goto LABEL_155;
      }

      if (v127)
      {
        v226 = *v127;
LABEL_154:
        logfunction("", 1, @"Warning: app demotion cleanup failed: %@\n", v221, v222, v223, v224, v225, v226);
LABEL_155:
        v227 = copy_rooted_snapshot_name();
        if (v227)
        {
          v234 = v227;
          if (!mount_apfs_system_readwrite_with_revert("/private/var/MobileSoftwareUpdate/mnt1", v227, v228, v229, v230, v231, v232, v233))
          {
            v235 = copy_root_snapshot_name_from_dt();
            *&v257.st_dev = _NSConcreteStackBlock;
            v257.st_ino = 3221225472;
            *&v257.st_uid = __MSUCleanupPreparePath_block_invoke;
            *&v257.st_rdev = &__block_descriptor_40_e12_B20__0i8r_12l;
            v257.st_atimespec.tv_sec = v235;
            enumerate_apfs_snapshots("/private/var/MobileSoftwareUpdate/mnt1", &v257);
            if (v235)
            {
              free(v235);
            }

            if (unmount("/private/var/MobileSoftwareUpdate/mnt1", 0))
            {
              v236 = __error();
              v240 = _create_error_internal_cf(kCFErrorDomainPOSIX, *v236, 0, 0, @"Could not unmount live system volume", v237, v238, v239, v242);
              if (v127)
              {
                *v127 = v240;
              }

              else
              {
                CFRelease(v240);
              }
            }
          }

          free(v234);
        }

        v107 = 1;
        if (v243)
        {
          goto LABEL_70;
        }

        goto LABEL_71;
      }

LABEL_153:
      LOBYTE(v226) = 0;
      goto LABEL_154;
    }

    v108 = *__error();
    v109 = __error();
    strerror(*v109);
    v106 = _create_error_internal_cf(kCFErrorDomainPOSIX, v108, 0, 0, @"Could not fts_open(3) path %s: %s", v110, v111, v112, v82);
  }

  else
  {
    v101 = *__error();
    v102 = __error();
    strerror(*v102);
    v106 = _create_error_internal_cf(kCFErrorDomainPOSIX, v101, 0, 0, @"Could not realpath(3) path %s: %s", v103, v104, v105, "/private/var/MobileSoftwareUpdate/");
  }

  if (!a3)
  {
    CFRelease(v106);
    v107 = 0;
    if (!v46)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v107 = 0;
  *a3 = v106;
  if (v46)
  {
LABEL_70:
    free(v46);
  }

LABEL_71:
  if (v82)
  {
    free(v82);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if ((v19 & 1) == 0)
  {
LABEL_76:
    CFRelease(v32);
  }

LABEL_77:
  if (dict)
  {
    CFRelease(dict);
  }

  return v107;
}

uint64_t MSUCleanupLogs_server(time_t a1, CFNumberRef *a2, CFErrorRef *a3)
{
  if (a1 < 0)
  {
    strerror(22);
    error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, 22, 0, 0, @"retention value is negative: %lld (%s)", v39, v40, v41, a1);
  }

  else
  {
    v61[0] = "/private/var/MobileSoftwareUpdate/";
    v61[1] = 0;
    v6 = fts_open(v61, 21, 0);
    if (v6)
    {
      v7 = v6;
      v8 = time(0);
      v9 = fts_read(v7);
      if (!v9)
      {
        v43 = 1;
        goto LABEL_40;
      }

      v10 = v9;
      v58 = v8;
      v11 = 0;
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        fts_info = v10->fts_info;
        if (fts_info == 8)
        {
          if (!strncmp("patchd-", v10->fts_name, 7uLL) || !strncmp("install-", v10->fts_name, 8uLL))
          {
            fts_namelen = v10->fts_namelen;
            if (fts_namelen >= 4 && !strcmp(&v10->fts_name[fts_namelen - 4], ".log"))
            {
              fts_path = v10->fts_path;
              if (v58 - v10->fts_statp->st_birthtimespec.tv_sec <= a1)
              {
                logfunction("", 1, @"keep %s, age:%lld, retention:%lld\n", v14, v15, v16, v17, v18, fts_path);
                tv_sec = v59;
                if (v10->fts_statp->st_birthtimespec.tv_sec < v59)
                {
                  tv_sec = v10->fts_statp->st_birthtimespec.tv_sec;
                }

                v59 = tv_sec;
              }

              else if (unlink(fts_path))
              {
                v25 = v10->fts_path;
                v26 = __error();
                strerror(*v26);
                logfunction("", 1, @"failed to unlink %s: %s\n", v27, v28, v29, v30, v31, v25);
                if (!v11)
                {
                  v32 = *__error();
                  v33 = v10->fts_path;
                  v34 = __error();
                  strerror(*v34);
                  v11 = _create_error_internal_cf(kCFErrorDomainPOSIX, v32, 0, 0, @"Could not unlink path %s: %s", v35, v36, v37, v33);
                }
              }

              else
              {
                logfunction("", 1, @"removed %s, age:%lld, retention:%lld\n", v20, v21, v22, v23, v24, v10->fts_path);
              }
            }
          }
        }

        else if (fts_info == 1 && v10->fts_level >= 1)
        {
          fts_set(v7, v10, 4);
        }

        v10 = fts_read(v7);
      }

      while (v10);
      if (v11)
      {
        if (a3)
        {
          v43 = 0;
          *a3 = v11;
LABEL_40:
          fts_close(v7);
          return v43;
        }

        v56 = v11;
      }

      else
      {
        v43 = 1;
        if (!a2)
        {
          goto LABEL_40;
        }

        if (v59 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_40;
        }

        valuePtr = v58 - v59;
        v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        *a2 = v49;
        if (v49)
        {
          goto LABEL_40;
        }

        v50 = *__error();
        v51 = __error();
        v52 = strerror(*v51);
        v56 = _create_error_internal_cf(kCFErrorDomainPOSIX, v50, 0, 0, @"failed to create CFNumber: %s", v53, v54, v55, v52);
        if (a3)
        {
          *a3 = v56;
LABEL_39:
          v43 = 0;
          goto LABEL_40;
        }
      }

      CFRelease(v56);
      goto LABEL_39;
    }

    v44 = *__error();
    v45 = __error();
    strerror(*v45);
    error_internal_cf = _create_error_internal_cf(kCFErrorDomainPOSIX, v44, 0, 0, @"Could not fts_open(3) path %s: %s", v46, v47, v48, "/private/var/MobileSoftwareUpdate/");
  }

  if (a3)
  {
    v43 = 0;
    *a3 = error_internal_cf;
  }

  else
  {
    CFRelease(error_internal_cf);
    return 0;
  }

  return v43;
}

uint64_t DeleteUpgradeBootCommand()
{
  v0 = copy_nvram_variable(@"boot-command");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFStringGetTypeID() && CFStringCompare(v1, @"upgrade", 0) == kCFCompareEqualTo)
  {
    delete_nvram_variable(@"boot-command");
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

uint64_t __MSUCleanupPreparePath_block_invoke(uint64_t a1, int a2, char *__s1)
{
  if (!strncmp(__s1, "com.apple.os.update-", 0x14uLL))
  {
    v6 = *(a1 + 32);
    if (v6 && !strcmp(__s1, v6))
    {
      logfunction("", 1, @"Skipping snapshot %s\n", v7, v8, v9, v10, v11, __s1);
    }

    else if (fs_snapshot_delete(a2, __s1, 0))
    {
      v17 = __error();
      strerror(*v17);
      logfunction("", 1, @"Unable to delete snapshot %s: %s\n", v18, v19, v20, v21, v22, __s1);
    }

    else
    {
      logfunction("", 1, @"Successfully deleted snapshot %s\n", v12, v13, v14, v15, v16, __s1);
    }
  }

  return 1;
}

uint64_t lzvn_decode_buffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3 <= a3 + a4 - 8)
    {
      __asm { BR              X17 }
    }

    __asm { BTI             j }

    return 0;
  }

  else
  {
    __asm { BTI             j }

    return 0;
  }
}

int32x4_t **lz4_encode_2gb(int32x4_t **result, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = vdupq_n_s32(0xFFFFFFFF);
  v8 = *result;
  v9 = *a3;
  v10 = (*result)[-8].i64 + a2;
  if (v10 < *result)
  {
    goto LABEL_92;
  }

  v11 = &v9[a5 - 128];
  if (v11 >= v9)
  {
    do
    {
      v12 = v9;
      v13 = &v9[-a4];
      while (1)
      {
        v14 = *v12;
        v15 = (a6 + 8 * ((-1640531535 * *v12) >> 20));
        v16 = *v15;
        v17 = v15[1];
        *v15 = v13;
        v15[1] = v14;
        v18 = v14 >> 8;
        v19 = (a6 + 8 * ((-1640531535 * (v14 >> 8)) >> 20));
        v20 = *v19;
        v21 = v19[1];
        *v19 = v13 + 1;
        v19[1] = v14 >> 8;
        if (v14 == v17)
        {
          v22 = (v13 - v16);
          if (v22 < 0x10000 && v22 != 0)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v24 = v13 + 1;
        v25 = v14 >> 16;
        v26 = (a6 + 8 * ((-1640531535 * v25) >> 20));
        v27 = *v26;
        v28 = v26[1];
        *v26 = v24 + 1;
        v26[1] = v25;
        if (v18 == v21)
        {
          v22 = (v24 - v20);
          if (v22 < 0x10000 && v24 != v20)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v30 = v24 + 1;
        v31 = v25 >> 8;
        v32 = (a6 + 8 * ((-1640531535 * (v25 >> 8)) >> 20));
        v33 = *v32;
        v34 = v32[1];
        *v32 = v30 + 1;
        v32[1] = v25 >> 8;
        if (v25 == v28)
        {
          v22 = (v30 - v27);
          if (v22 < 0x10000 && v30 != v27)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v36 = v30 + 1;
        v37 = v25 >> 16;
        v38 = (a6 + 8 * ((-1640531535 * v37) >> 20));
        v39 = *v38;
        v40 = v38[1];
        *v38 = v36 + 1;
        v38[1] = v37;
        if (v31 == v34)
        {
          v22 = (v36 - v33);
          if (v22 < 0x10000 && v36 != v33)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v42 = v36 + 1;
        if (v37 == v40)
        {
          v22 = (v42 - v39);
          if (v22 < 0x10000 && v42 != v39)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v13 = v42 + 1;
        if (v12 >= v11)
        {
          goto LABEL_74;
        }
      }

      v44 = v12 + 4;
      v45 = (v12 - v22 + 4);
      while (1)
      {
        v47 = *v44;
        v44 += 8;
        v46 = v47;
        v49 = *v45++;
        v48 = v49;
        if (v46 != v49)
        {
          break;
        }

        if (v44 >= v11)
        {
          goto LABEL_38;
        }
      }

      v44 = &v44[(__clz(__rbit64(v46 ^ v48)) >> 3) - 8];
LABEL_38:
      v50 = v12 - v22;
      while (1)
      {
        v51 = v12 <= v9 || v50 <= a4;
        if (v51)
        {
          break;
        }

        v53 = *(v12 - 1);
        v12 = (v12 - 1);
        v52 = v53;
        v54 = *--v50;
        if (v52 != v54)
        {
          v12 = (v12 + 1);
          break;
        }
      }

      v55 = v44 - v12 - 4;
      v56 = v12 - v9;
      v57 = v12 - v9 + 3;
      v58 = v10 - v8 - v57;
      if (v10 - v8 < v57)
      {
        goto LABEL_92;
      }

      v59 = (v55 & 0xF) + 16 * v56;
      v60 = &v8->i8[1];
      if (v56 >= 0xF)
      {
        v59 |= 0xF0u;
        v61 = v56 - 15;
        v62 = v58-- != 0;
        if (!v62)
        {
          goto LABEL_92;
        }

        if (v61 >= 0xFF)
        {
          v63 = v61 / 0xFFuLL;
          v62 = v58 >= v63;
          v58 -= v63;
          if (!v62)
          {
            goto LABEL_92;
          }

          LOBYTE(v61) = v61 + v63;
          do
          {
            *v60++ = v7;
            v51 = v63 > 0x10;
            v63 -= 16;
          }

          while (v51);
          v60 = (v60 + v63);
        }

        v60->i8[0] = v61;
        v60 = (v60 + 1);
      }

      do
      {
        v64 = *v9;
        v9 += 16;
        *v60++ = v64;
        v51 = v56 <= 16;
        v56 -= 16;
      }

      while (!v51);
      v65 = (v60->i16 + v56);
      *v65 = v22;
      v66 = (v65 + 1);
      if (v55 >= 0xF)
      {
        v59 |= 0xFu;
        v67 = v44 - v12 - 19;
        v62 = v58 != 0;
        v68 = v58 - 1;
        if (!v62)
        {
          goto LABEL_92;
        }

        if (v67 >= 0xFF)
        {
          v69 = v67 / 0xFFuLL;
          if (v68 < v69)
          {
            goto LABEL_92;
          }

          LOBYTE(v67) = v67 + v69;
          do
          {
            *v66++ = v7;
            v51 = v69 > 0x10;
            v69 -= 16;
          }

          while (v51);
          v66 = (v66 + v69);
        }

        v66->i8[0] = v67;
        v66 = (v66 + 1);
      }

      v8->i8[0] = v59;
      v8 = v66;
      v9 = v44;
    }

    while (v44 < v11 && v66 < v10);
  }

LABEL_74:
  if (a7)
  {
    goto LABEL_92;
  }

  v71 = (v11 + 128);
  v72 = v71 - v9;
  if (v71 == v9)
  {
    goto LABEL_92;
  }

  v73 = v10 + 128 - v8 - 1;
  v51 = v73 <= v72;
  v74 = v73 - v72;
  if (v51)
  {
    goto LABEL_92;
  }

  if (v72 < 15)
  {
    v8->i8[0] = 16 * v72;
    v8 = (v8 + 1);
    do
    {
LABEL_91:
      v81 = *v9++;
      v8->i8[0] = v81;
      v8 = (v8 + 1);
    }

    while (v9 < v71);
    goto LABEL_92;
  }

  v75 = v74 - 1;
  if (v75 >= 0)
  {
    v8->i8[0] = -16;
    v76 = &v8->i8[1];
    v77 = v72 - 15;
    if ((v72 - 15) >= 0xFF)
    {
      v78 = v77 / 0xFFuLL;
      if (v75 - v78 < 0)
      {
        v8 = (v76 - 1);
        goto LABEL_92;
      }

      LOBYTE(v77) = v77 + v78;
      do
      {
        *v76++ = v7;
        v51 = v78 <= 16;
        v78 -= 16;
      }

      while (!v51);
      v76 = (v76 + v78);
    }

    v76->i8[0] = v77;
    v8 = &v76->i8[1];
    v79 = v72 >> 4;
    if (!(v72 >> 4))
    {
      goto LABEL_91;
    }

    do
    {
      v80 = *v9;
      v9 += 16;
      *v8++ = v80;
      v51 = v79-- <= 1;
    }

    while (!v51);
    if (v9 < v71)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  *result = v8;
  *a3 = v9;
  return result;
}

uint64_t lz4_decode_asm(int8x16_t **a1, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a1;
  while (1)
  {
    v7 = v6;
    v8 = v5;
    if (v5 >= a5 || v6 >= a3)
    {
      break;
    }

    v10 = *v5;
    v9 = v5 + 1;
    v11 = v10 >> 4;
    v12 = (v10 & 0xF) + 4;
    if (v11 > 0xE)
    {
      while (v9 < a5)
      {
        v13 = *v9;
        v9 = (v9 + 1);
        v11 += v13;
        if (v13 != 255)
        {
          v14 = v9;
          v15 = v6;
          v16 = (v9 + v11);
          v17 = (v6 + v11);
          if (v16 < a5 && v17 < a3)
          {
            v19 = *v14;
            v20 = v14[1];
            v18 = v14 + 2;
            *v15 = v19;
            v15[1] = v20;
            v21 = v15 + 2;
            do
            {
              v22 = *v18;
              v23 = v18[1];
              v18 += 2;
              *v21 = v22;
              v21[1] = v23;
              v21 += 2;
            }

            while (v17 > v21);
            goto LABEL_13;
          }

          goto LABEL_36;
        }
      }

      break;
    }

    *v6 = *v9;
    v16 = (v9 + v11);
    v17 = (v6 + v11);
LABEL_13:
    if (v16 >= a5)
    {
      break;
    }

    v25 = *v16;
    v5 = (v16 + 1);
    v24 = v25;
    if (!v25 || (v26 = (v17 - v24), v17 - v24 < a2))
    {
      v47 = -1;
      goto LABEL_37;
    }

    v27 = v17;
    v6 = (v17 + v12);
    if (v12 == 19)
    {
      while (v5 < a5)
      {
        v28 = *v5++;
        v6 = (v6 + v28);
        if (v28 != 255)
        {
          if (v6 >= a3)
          {
            goto LABEL_36;
          }

          goto LABEL_24;
        }
      }

      break;
    }

    if (v12 > 0x10)
    {
LABEL_24:
      if (v24 > 0x1F)
      {
        v36 = *v26;
        v35 = v26 + 1;
        *v27 = v36;
        v37 = v27 + 1;
        do
        {
          v38 = *v35;
          v39 = v35[1];
          v35 += 2;
          *v37 = v38;
          v37[1] = v39;
          v37 += 2;
        }

        while (v6 > v37);
      }

      else if (v24 > 0xF)
      {
        v41 = *v26;
        v40 = v26 + 1;
        *v27 = v41;
        v42 = v27 + 1;
        do
        {
          v44 = *v40;
          v43 = v40 + 1;
          *v42 = v44;
          v45 = v42 + 1;
          v46 = *v43;
          v40 = v43 + 1;
          *v45 = v46;
          v42 = v45 + 1;
        }

        while (v6 > v42);
      }

      else
      {
        v29 = &qword_10000E980[4 * v24];
        v30 = vqtbl1q_s8(*v26, *v29);
        v31 = vqtbl1q_s8(*v26, v29[1]);
        v32 = *(qword_10000EB80 + v24);
        *v27 = v30;
        v27[1] = v31;
        v33 = (v27 + v32);
        do
        {
          *v33 = v30;
          v33[1] = v31;
          v34 = (v33 + v32);
          *v34 = v30;
          v34[1] = v31;
          v33 = (v34 + v32);
        }

        while (v6 > v33);
      }
    }

    else if (v24 <= 0xF)
    {
      *v27 = vqtbl1q_s8(*v26, *&qword_10000E980[4 * v24]);
    }

    else
    {
      *v27 = *v26;
    }
  }

LABEL_36:
  v47 = 0;
LABEL_37:
  *a4 = v8;
  *a1 = v7;
  return v47;
}

uint64_t lzfse_decode_lmd(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*a1 + *(a1 + 120));
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 92);
  v8 = *(a1 + 96);
  v9 = *(a1 + 124);
  v10 = *(a1 + 126);
  v11 = *(a1 + 128);
  v12 = *(a1 + 40) - v1 - 32;
  v13 = *(a1 + 80);
  if (v6 | v7)
  {
    goto LABEL_7;
  }

  if (*(a1 + 72))
  {
    while (1)
    {
      v2 = (v2 - ((63 - v4) >> 3));
      if (v2 < *(a1 + 8))
      {
        return -3;
      }

      v3 = *v2;
      v14 = (a1 + 136 + 8 * v9);
      v15 = *v14;
      v16 = v4 + ((63 - v4) & 0xFFFFFFFFFFFFFFF8) - v15;
      v17 = *v2 >> v16;
      v18 = v17 & ~(-1 << v15);
      LOBYTE(v15) = v14[1];
      v9 = (v18 >> v15) + *(v14 + 1);
      v6 = (v17 & ~(-1 << v15)) + *(v14 + 1);
      v19 = (a1 + 648 + 8 * v10);
      v20 = *v19;
      v21 = v16 - v20;
      v22 = *v2 >> v21;
      v23 = v22 & ~(-1 << v20);
      LOBYTE(v20) = v19[1];
      v10 = (v23 >> v20) + *(v19 + 1);
      v7 = (v22 & ~(-1 << v20)) + *(v19 + 1);
      v24 = (a1 + 1160 + 8 * v11);
      v25 = *v24;
      v4 = v21 - v25;
      v26 = *v2 >> v4;
      v27 = v26 & ~(-1 << v25);
      LOBYTE(v25) = v24[1];
      v11 = (v27 >> v25) + *(v24 + 1);
      v28 = (v26 & ~(-1 << v25)) + *(v24 + 1);
      if (v28)
      {
        v8 = v28;
      }

      --v5;
LABEL_7:
      if (v8 > v1 + v6 - *(a1 + 32) || a1 + *(a1 + 7304) + 7308 < &v13[v6])
      {
        return -3;
      }

      v29 = v12 < (v6 + v7);
      v12 -= v6 + v7;
      if (v29)
      {
        v40 = v12 + v6 + v7 + 32;
        if (v6)
        {
          do
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              goto LABEL_30;
            }

            v42 = *v13++;
            *v1 = v42;
            v1 = (v1 + 1);
          }

          while (--v6);
        }

        if (v7)
        {
          v43 = v1 - v8;
          while (1)
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              break;
            }

            v44 = *v43++;
            *v1 = v44;
            v1 = (v1 + 1);
            if (!--v7)
            {
              goto LABEL_28;
            }
          }

LABEL_30:
          *(a1 + 24) = v1;
          *(a1 + 120) = v2 - *a1;
          *(a1 + 104) = v3;
          *(a1 + 112) = v4;
          *(a1 + 72) = v5;
          *(a1 + 88) = v6;
          *(a1 + 92) = v7;
          *(a1 + 96) = v8;
          *(a1 + 124) = v9;
          *(a1 + 126) = v10;
          *(a1 + 128) = v11;
          *(a1 + 80) = v13;
          return -2;
        }

LABEL_28:
        v12 = v40 - 32;
        if (!v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        do
        {
          v30 = *v13;
          v31 = *(v13 + 1);
          v13 += 16;
          *v1 = v30;
          v1[1] = v31;
          v1 += 2;
          v29 = v6 > 0x10;
          v6 -= 16;
        }

        while (v29);
        v32 = (v1 + v6);
        v13 += v6;
        v33 = (v32 - v8);
        if (v8 < 0x10)
        {
          v36 = (&unk_100042180 + 32 * v8);
          v37 = byte_100042380[v8];
          v38 = vqtbl1q_s8(*v33, *v36);
          v39 = vqtbl1q_s8(*v33, v36[1]);
          do
          {
            *v32 = v38;
            v32[1] = v39;
            v32 = (v32 + v37);
            v29 = v7 > v37;
            v7 -= v37;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          do
          {
            v34 = v33->i64[0];
            v35 = v33->i64[1];
            ++v33;
            v32->i64[0] = v34;
            v32->i64[1] = v35;
            ++v32;
            v29 = v7 > 0x10;
            v7 -= 16;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  else
  {
LABEL_29:
    *(a1 + 24) = v1;
    return 0;
  }
}

uint64_t lzfse_decode_literals(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unint64_t a6, double a7)
{
  v7 = LOWORD(a7);
  v8 = WORD1(a7);
  v9 = WORD2(a7);
  v10 = HIWORD(a7);
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a5;
  while (1)
  {
    v15 = *(a2 + 4 * v7);
    v16 = *(a2 + 4 * v8);
    v17 = *(a2 + 4 * v9);
    v18 = *(a2 + 4 * v10);
    *a1++ = (v16 & 0xFF00) + ((v15 & 0xFF00) >> 8) + (((v18 & 0xFF00) + ((v17 & 0xFF00) >> 8)) << 16);
    v19 = (63 - v13) & 0xFFFFFFF8;
    if (((63 - v13) & 0xFFFFFFF8) != 0)
    {
      break;
    }

LABEL_5:
    v20 = v13 - v15;
    v21 = v20 - v16;
    v22 = v12 >> (v13 - v15);
    v23 = v12 & qword_10000EF60[v20];
    v24 = v21 - v17;
    v7 = v22 + HIWORD(v15);
    v25 = v23 >> (v20 - v16);
    v26 = v23 & qword_10000EF60[v21];
    v13 = v24 - v18;
    v8 = v25 + HIWORD(v16);
    v27 = v26 >> (v21 - v17);
    v28 = v26 & qword_10000EF60[v24];
    v9 = v27 + HIWORD(v17);
    v29 = v28 >> (v24 - v18);
    v12 = v28 & qword_10000EF60[v13];
    v10 = v29 + HIWORD(v18);
    v30 = a3 <= 4;
    a3 -= 4;
    if (v30)
    {
      *a4 = v12;
      *(a4 + 8) = v13;
      *a5 = v14;
      return 0;
    }
  }

  v14 = (v14 - (v19 >> 3));
  if (v14 >= a6)
  {
    v13 += v19;
    v12 = (v12 << v19) | *v14 & qword_10000EF60[v19];
    goto LABEL_5;
  }

  return -3;
}

uint64_t adler32_vec(uint64_t a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + (a2 << 32);
  if (a4 >= 5552)
  {
    v5 = a4 - 5552;
    do
    {
      v6 = *a3;
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, vec_table[2]), *a3, *&vec_table[2]);
      v6.i16[0] = vaddlvq_u8(*a3);
      v7.i32[0] = vaddlvq_u16(v7);
      ++a3;
      v8 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v6.i8, *v7.i8));
      v9 = 173;
      do
      {
        v10 = *a3;
        v11 = a3[1];
        v12 = vshld_n_s64(v8, 0x25uLL);
        v13 = (v8 + *&v12);
        v10.i16[0] = vaddlvq_u8(*a3);
        v12.i16[0] = vaddlvq_u8(v11);
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, vec_table[0]), *a3, *vec_table), *v11.i8, vec_table[2]), v11, *&vec_table[2]);
        v14.i32[0] = vaddlvq_u16(v14);
        a3 += 2;
        v8 = vadd_s32(v13, vzip1_s32(*&vaddl_u16(*v10.i8, v12), *v14.i8));
        v15 = __OFSUB__(v9--, 1);
      }

      while (!((v9 < 0) ^ v15 | (v9 == 0)));
      v16 = vshrq_n_u64(vmull_lane_u32(v8, 0x800780710000FFF1, 1), 0x2FuLL);
      v16.i32[1] = v16.i32[2];
      v4 = vmls_lane_s32(v8, *v16.i8, 0x800780710000FFF1, 0);
      v15 = __OFSUB__(v5, 5552);
      v5 -= 5552;
    }

    while (v5 < 0 == v15);
    a4 = v5 + 5552;
  }

  v15 = __OFSUB__(a4, 32);
  for (i = a4 - 32; i < 0 == v15; i -= 32)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = vshld_n_s64(v4, 0x25uLL);
    v21 = (v4 + *&v20);
    v18.i16[0] = vaddlvq_u8(*a3);
    v20.i16[0] = vaddlvq_u8(v19);
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, vec_table[0]), *a3, *vec_table), *v19.i8, vec_table[2]), v19, *&vec_table[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, vec_table[2]), *a3, *&vec_table[2]);
    v23.i16[0] = vaddlvq_u8(*a3);
    v24.i32[0] = vaddlvq_u16(v24);
    ++a3;
    v4 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v23.i8, *v24.i8));
  }

  for (j = i & 0xF; j; v4 += v26 + vshld_n_s64(v4 + v26, 0x20uLL))
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    --j;
  }

  v27 = vshrq_n_u64(vmull_lane_u32(v4, 0x800780710000FFF1, 1), 0x2FuLL);
  v27.i32[1] = v27.i32[2];
  v28 = vmls_lane_s32(v4, *v27.i8, 0x800780710000FFF1, 0);
  return (v28.i32[0] + (v28.i32[1] << 16));
}

uint64_t UMEventCleanupNVRAMInternal(uint64_t a1, unint64_t a2, _BYTE *a3, CFTypeRef *a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v10 = 1;
    do
    {
      v21 = 0;
      v16 = msu_delete_nvram_variable_if_exists(*(a1 + 8 * v6), &v21);
      if (v16 & 1) == 0 && (v10)
      {
        logfunction("", 1, @"clearing NVRAM variable failed\n", v11, v12, v13, v14, v15, v18);
        v7 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainMach, 5, 0);
        v10 = 0;
      }

      if (v16)
      {
        v8 |= v21;
      }

      v6 = v9++;
    }

    while (v6 < a2);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v10 = 1;
  }

  if (a3)
  {
    *a3 = v8 & 1;
  }

  if (v7)
  {
    if (a4)
    {
      *a4 = CFRetain(v7);
    }

    CFRelease(v7);
  }

  return v10 & 1;
}

uint64_t UMEventCleanupAllNVRAM(int a1, void *a2)
{
  v23 = 0;
  cf = 0;
  v4 = UMEventCleanupNVRAMInternal(off_10004D360, 0x1EuLL, &v23, &cf);
  v21 = 0;
  v20 = 0;
  v10 = [+[UMEventCheckpoint sharedInstance](UMEventCheckpoint cleanupCheckpointsNvramReturnDirty:"cleanupCheckpointsNvramReturnDirty:error:" error:&v21, &v20];
  if (a1 && ((v23 & 1) != 0 || v21 == 1))
  {
    logfunction("", 1, @"Force syncing NVRAM because values were cleaned up\n", v5, v6, v7, v8, v9, v20);
    msu_sync_nvram(1, v11, v12, v13, v14, v15, v16, v17);
  }

  if (a2)
  {
    if (cf)
    {
      v18 = CFRetain(cf);
    }

    else
    {
      if (!v20)
      {
        return v4 & v10;
      }

      v18 = v20;
    }

    *a2 = v18;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
  }

  return v4 & v10;
}

id _longFromNVRAMVar(id a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1 = [[NSString alloc] initWithData:a1 encoding:4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (!a1)
  {
    return 0;
  }

  return [a1 longLongValue];
}

void _log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = [[NSString alloc] initWithFormat:a2 arguments:&a9];
  logfunction("", 1, @"%@\n", v10, v11, v12, v13, v14, v9);
}

void __copy_helper_block_e8_32o40o(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 3);
}

void __destroy_helper_block_e8_32o40o(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void __copy_helper_block_e8_32o40o48o56o64o72o80b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  _Block_object_assign((a1 + 48), *(a2 + 48), 3);
  _Block_object_assign((a1 + 56), *(a2 + 56), 3);
  _Block_object_assign((a1 + 64), *(a2 + 64), 3);
  _Block_object_assign((a1 + 72), *(a2 + 72), 3);
  v4 = *(a2 + 80);

  _Block_object_assign((a1 + 80), v4, 7);
}

void __destroy_helper_block_e8_32o40o48o56o64o72o80b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 80), 7);
  _Block_object_dispose(*(a1 + 72), 3);
  _Block_object_dispose(*(a1 + 64), 3);
  _Block_object_dispose(*(a1 + 56), 3);
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void __copy_helper_block_e8_32o40o48o56o64b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  _Block_object_assign((a1 + 48), *(a2 + 48), 3);
  _Block_object_assign((a1 + 56), *(a2 + 56), 3);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 7);
}

void __destroy_helper_block_e8_32o40o48o56o64b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 7);
  _Block_object_dispose(*(a1 + 56), 3);
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void __copy_helper_block_e8_32o40o48o(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 3);
}

void __destroy_helper_block_e8_32o40o48o(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1)
{
  if (a1)
  {
    v1 = _AMRestorePartitionOpenFileWithURL(a1, 0);
    if (v1)
    {
      v2 = v1;
      v3 = malloc(0x8000uLL);
      if (v3)
      {
        if (read(v2, v3, 0x8000uLL))
        {
          Img4DecodeParseLengthFromBuffer();
          AMSupportLogInternal();
        }

        AMSupportLogInternal();
      }

      else
      {
        AMRestorePartitionFWCopyTagData_cold_9();
      }

      if (v2 >= 1)
      {
        close(v2);
      }
    }

    else
    {
      AMSupportLogInternal();
    }
  }

  else
  {
    AMRestorePartitionFWCopyTagData_cold_10();
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t _AMRestorePartitionOpenFileWithURL(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal();
    AMSupportLogInternal();
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    _AMRestorePartitionOpenFileWithURL_cold_2();
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    _AMRestorePartitionOpenFileWithURL_cold_1();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t _partition_log(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_loggingPtr)
  {
    return _loggingPtr(result, &a9);
  }

  return result;
}

uint64_t create_update_partition_folder_hierarchy(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    _partition_log("%s: Creating folder hierarchy for update partition", a2, a3, a4, a5, a6, a7, a8, "create_update_partition_folder_hierarchy");
    for (i = 0; i != 9; i += 3)
    {
      *__str = *&(&UPDATE_DIR_LIST)[i];
      v52 = (&UPDATE_DIR_LIST)[i + 2];
      create_folder_at_mount_point_for_dir_list_entry(__str, a1);
    }

    _partition_log("Creating hardware folder hierarchy\n", v10, v11, v12, v13, v14, v15, v16, v46);
    bzero(__str, 0x400uLL);
    _partition_log("Creating root folder", v17, v18, v19, v20, v21, v22, v23, v47);
    v49 = HARDWARE_DIR_LIST;
    v50 = off_10005FA08[0];
    if (create_folder_at_mount_point_for_dir_list_entry(&v49, a1))
    {
      _partition_log("Successfully created root Hardware folder. Proceeding to create the rest of the folder hierarchy", v24, v25, v26, v27, v28, v29, v30, v48);
      snprintf(__str, 0x3FFuLL, "%s/%s", a1, HARDWARE_DIR_LIST);
      v49 = *&off_10005FA10;
      v50 = off_10005FA20;
      if (create_folder_at_mount_point_for_dir_list_entry(&v49, __str))
      {
        _partition_log("Successfully created %s under %s with permissions 0%o for user %s", v31, v32, v33, v34, v35, v36, v37, off_10005FA10);
      }

      else
      {
        _partition_log("Failed to create %s under %s with permissions 0%o for user %s", v31, v32, v33, v34, v35, v36, v37, off_10005FA10);
      }
    }

    else
    {
      _partition_log("Failed to create root hardware folder %s under %s", v24, v25, v26, v27, v28, v29, v30, HARDWARE_DIR_LIST);
    }

    _partition_log("%s: Done creating folder hierarchy for update partition", v38, v39, v40, v41, v42, v43, v44, "create_update_partition_folder_hierarchy");
    return 0;
  }

  else
  {
    _partition_log("%s: Invalid mount point passed", a2, a3, a4, a5, a6, a7, a8, "create_update_partition_folder_hierarchy");
    return 1;
  }
}

uint64_t create_folder_at_mount_point_for_dir_list_entry(uint64_t *a1, const char *a2)
{
  v55 = 0;
  asprintf(&v55, "%s/%s", a2, *a1);
  if (v55)
  {
    if (mkdir(v55, *(a1 + 4)) && *__error() != 17)
    {
      v20 = v55;
      v50 = *__error();
      _partition_log("failed to mkdir %s with errno=%d", v21, v22, v23, v24, v25, v26, v27, v20);
    }

    else
    {
      if (chmod(v55, *(a1 + 4)))
      {
        v11 = v55;
        v48 = *(a1 + 4);
        v52 = *__error();
        _partition_log("Failed to chmod %s 0%o with errno=%d", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      *__error() = 0;
      v28 = getpwnam(a1[2]);
      if (v28)
      {
        v29 = v28;
        if (!chown(v55, v29->pw_uid, v29->pw_gid))
        {
LABEL_14:
          free(v55);
          return v19;
        }

        v30 = v55;
        pw_uid = v29->pw_uid;
        pw_gid = v29->pw_gid;
        v54 = *__error();
        _partition_log("failed to chown %s %d:%d with errno=%d", v32, v33, v34, v35, v36, v37, v38, v30);
      }

      else
      {
        v39 = a1[2];
        v51 = *__error();
        _partition_log("failed to getpwnam for %s with errno=%d", v40, v41, v42, v43, v44, v45, v46, v39);
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

  v49 = *a1;
  _partition_log("failed to allocate path string for %s/%s", v4, v5, v6, v7, v8, v9, v10, a2);
  return 0;
}

uint64_t init_update_partition_with_reserve_and_reformat(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = a1;
  if (a3)
  {
    a1 = _unmount_filesystem(a2);
  }

  if (!partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v18 = "media probe failed probe the media";
    goto LABEL_35;
  }

  if (update_device_node_path)
  {
    if (!v8)
    {
      _partition_log("not deleting existing update filesystem", v11, v12, v13, v14, v15, v16, v17, v82);
      goto LABEL_14;
    }

    if (delete_apfs_partition(5u, 0, v12, v13, v14, v15, v16, v17))
    {
      v18 = "failed to delete update filesystem";
LABEL_35:
      _partition_log(v18, v11, v12, v13, v14, v15, v16, v17, v82);
      return 1;
    }

    _partition_log("delete update filesystem succeeded", v11, v12, v13, v14, v15, v16, v17, v82);
  }

  v19 = format_partition(&apfs_container_device_node_path, "Update", 0, 0, 0);
  if (v19)
  {
    v18 = "formatting update partition failed";
    goto LABEL_35;
  }

  if (!partition_probe_media(v19, v11, v12, v13, v14, v15, v16, v17))
  {
    v18 = "media probe failed to find update partition";
    goto LABEL_35;
  }

LABEL_14:
  bzero(&v86, 0x878uLL);
  if (statfs(a2, &v86))
  {
    _partition_log("statfs-ing %s failed - creating new mount point", v20, v21, v22, v23, v24, v25, v26, a2);
    mkdir(a2, 0x1C0u);
  }

  v27 = realpath_DARWIN_EXTSN(a2, 0);
  if (!v27)
  {
    v67 = __error();
    strerror(*v67);
    _partition_log("Could not realpath(3) path %s: %s", v68, v69, v70, v71, v72, v73, v74, a2);
    return 1;
  }

  v28 = v27;
  v29 = strcmp(v86.f_mntonname, v27);
  free(v28);
  if (v29 && _mount_filesystem(&update_device_node_path, a2))
  {
    v18 = "mounting update partition filesystem failed";
    goto LABEL_35;
  }

  if (create_update_partition_folder_hierarchy(a2, v11, v12, v13, v14, v15, v16, v17))
  {
    _partition_log("Failed to create folder hierarchy on update volume", v30, v31, v32, v33, v34, v35, v36, v82);
  }

  bzero(v85, 0x400uLL);
  __strlcat_chk();
  __strlcat_chk();
  if (v10)
  {
    _partition_log("creating %lld MB reserve file at %s", v37, v38, v39, v40, v41, v42, v43, v10 >> 20);
    result = create_allocated_empty_file(v10, v85);
    if (result == 28)
    {
      v84 = 3;
      if (fsctl(a2, 0x80044101uLL, &v84, 0))
      {
        v52 = __error();
        strerror(*v52);
        _partition_log("first preallocation attempt failed, and full sync of volume %s failed: %s", v53, v54, v55, v56, v57, v58, v59, a2);
      }

      else
      {
        _partition_log("first preallocation attempt failed, but full sync of volume %s was successful", v45, v46, v47, v48, v49, v50, v51, a2);
      }

      _partition_log("re-trying reserve file creation", v60, v61, v62, v63, v64, v65, v66, v83);
      result = create_allocated_empty_file(v10, v85);
    }

    if (result)
    {
      v82 = v10;
      v18 = "reserving %llu bytes failed with errno=%d";
      goto LABEL_35;
    }
  }

  else
  {
    if (!unlink(v85))
    {
      _partition_log("existing reserved file deleted", v75, v76, v77, v78, v79, v80, v81, v82);
    }

    return 0;
  }

  return result;
}

uint64_t _unmount_filesystem(const char *a1)
{
  bzero(&v50, 0x878uLL);
  if (statfs(a1, &v50))
  {
    v2 = __error();
    strerror(*v2);
    _partition_log("statfs %s failed: %s", v3, v4, v5, v6, v7, v8, v9, a1);
    return 1;
  }

  v11 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v11)
  {
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    _partition_log("realpath %s failed: %d %s", v14, v15, v16, v17, v18, v19, v20, a1);
  }

  if (!strcmp(v50.f_mntonname, v11))
  {
    v28 = unmount(v11, 0x80000);
    if (v28)
    {
      v10 = v28;
      if (*__error() != 1)
      {
        goto LABEL_18;
      }

      *&v47 = "/sbin/umount";
      *(&v47 + 1) = "-f";
      v48 = v11;
      v49 = 0;
      if (!_executeCommandPtr)
      {
        v10 = 0xFFFFFFFFLL;
LABEL_18:
        v38 = *__error();
        v39 = __error();
        strerror(*v39);
        _partition_log("error unmounting '%s': %d %s", v40, v41, v42, v43, v44, v45, v46, a1);
        v47 = off_10004D700;
        if (_executeCommandPtr)
        {
          (_executeCommandPtr)(&v47, _partition_execution_log, 0);
        }

        goto LABEL_14;
      }

      v36 = (_executeCommandPtr)(&v47, _partition_execution_log, 0);
      if (v36)
      {
        v10 = v36;
        goto LABEL_18;
      }
    }

    _partition_log("file system at %s successfully unmounted", v29, v30, v31, v32, v33, v34, v35, a1);
    goto LABEL_13;
  }

  _partition_log("no file system mounted at %s", v21, v22, v23, v24, v25, v26, v27, a1);
LABEL_13:
  v10 = 0;
LABEL_14:
  if (v11)
  {
    free(v11);
  }

  return v10;
}

uint64_t partition_probe_media(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 0;
  v10 = &selRef_isProxy;
  v11 = &selRef_isProxy;
  do
  {
    iterator = 0;
    cf = 0;
    storage_device_node_path = 0;
    *(v10 + 3688) = 0;
    *(v11 + 3848) = 0;
    data_device_node_path = 0;
    user_device_node_path = 0;
    baseband_data_partition_device_node_path = 0;
    update_device_node_path = 0;
    scratch_device_node_path = 0;
    xart_device_node_path = 0;
    apfs_recovery_os_container_device_node_path = 0;
    recovery_os_volume_device_node_path = 0;
    preboot_partition_device_node_path = 0;
    iboot_system_container_device_node_path = 0;
    if (!_partition_wait_for_device(&storage_device_node_path, a2, a3, a4, a5, a6, a7, a8))
    {
      _partition_log("Unable to find storage device node for service named: %s", v12, v13, v14, v15, v16, v17, v18, "EmbeddedDeviceTypeRoot");
      v37 = 0;
      v28 = 0;
      goto LABEL_7;
    }

    _partition_log("entering %s.", v12, v13, v14, v15, v16, v17, v18, "_partition_probe_media_should_retry");
    v19 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_10005FFCD);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v19);
    v28 = MatchingService;
    if (!MatchingService)
    {
      _partition_log("unable to find service for %s", v21, v22, v23, v24, v25, v26, v27, byte_10005FFCD);
      v38 = 0;
LABEL_9:
      v37 = 1;
      goto LABEL_100;
    }

    IOServiceWaitQuiet(MatchingService, 0);
    v29 = IORegistryEntryCreateIterator(v28, "IOService", 1u, &iterator);
    if (v29)
    {
      _partition_log("unable to create child iterator: 0c%.8x", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = 0;
LABEL_7:
      v38 = 0;
      goto LABEL_100;
    }

    v38 = IOIteratorNext(iterator);
    if (!v38)
    {
      goto LABEL_9;
    }

    v118 = 0;
    v39 = 0;
    while (!IOObjectConformsTo(v38, "IOMedia"))
    {
LABEL_76:
      IOObjectRelease(v38);
LABEL_77:
      v38 = IOIteratorNext(iterator);
      v37 = 1;
      if (!v38)
      {
        goto LABEL_99;
      }
    }

    memset(name, 0, sizeof(name));
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    IORegistryEntryGetName(v38, name);
    CFProperties = IORegistryEntryCreateCFProperties(v38, &cf, kCFAllocatorDefault, 0);
    if (CFProperties)
    {
      _partition_log("unable to get properies for media registry entry: 0x%.8x", v41, v42, v43, v44, v45, v46, v47, CFProperties);
      goto LABEL_98;
    }

    if (v39 || (Value = CFDictionaryGetValue(cf, @"BSD Name")) != 0 && CFEqual(Value, @"disk0s1s1"))
    {
      v48 = 0;
      v39 = 1;
    }

    else
    {
      v39 = 0;
      v48 = 1;
    }

    v50 = CFDictionaryGetValue(cf, @"Content Hint");
    if (v50)
    {
      v58 = v50;
      if (CFEqual(v50, @"7C3457EF-0000-11AA-AA11-00306543ECAC") || CFEqual(v58, @"52637672-7900-11AA-AA11-00306543ECAC") || CFEqual(v58, @"69646961-6700-11AA-AA11-00306543ECAC") || CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        v83 = CFDictionaryGetValue(cf, @"BSD Name");
        if (!v83)
        {
          v116 = "APFS Container object with no bsd name";
          goto LABEL_117;
        }

        *buffer = 0u;
        v122 = 0u;
        CFStringGetCString(v83, buffer, 32, 0x8000100u);
        v11 = &selRef_isProxy;
        if (CFEqual(v58, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
        {
          v91 = &apfs_recovery_os_container_device_node_path;
          if (!strstr(name, "RecoveryOSContainer"))
          {
            if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
            {
              v91 = &apfs_container_device_node_path;
            }

            else
            {
              v91 = &iboot_system_container_device_node_path;
            }
          }

          snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
          _partition_log("APFS Container '%s' %s\n", v92, v93, v94, v95, v96, v97, v98, name);
          goto LABEL_88;
        }

        v99 = CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC");
        v91 = v118;
        if (v99 == 1)
        {
          if (v118 && *v118)
          {
            _partition_log("Found synthesized APFS container. Using %s instead of %s\n", v100, v101, v102, v103, v104, v105, v106, buffer);
            snprintf(v118, 0x20uLL, "%s%s", "/dev/", buffer);
            goto LABEL_90;
          }

          _partition_log("found synthesized container without original device node\n", v100, v101, v102, v103, v104, v105, v106, v117);
        }

        if (v118)
        {
LABEL_88:
          v118 = v91;
          if (!*v91)
          {
            snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
            _partition_log("APFS Container '%s' %s\n", v108, v109, v110, v111, v112, v113, v114, name);
          }

          goto LABEL_91;
        }

LABEL_90:
        v118 = 0;
LABEL_91:
        IOObjectRelease(v38);
        CFRelease(cf);
        cf = 0;
        goto LABEL_77;
      }
    }

    v59 = *name == 1953724755 && *&name[3] == 7169396;
    if (v59 || strstr(name, "OS"))
    {
      v39 = 1;
      v60 = "found system volume not at disk0s1s1: %s\n";
      v61 = &system_device_node_path;
      if (v48)
      {
        goto LABEL_32;
      }
    }

    else if (*name ^ 0x61746144 | name[4])
    {
      if (*name ^ 0x72657355 | name[4])
      {
        if (*name == 0x646E616265736142 && *&name[6] == 0x6174614420646ELL)
        {
          v61 = &baseband_data_partition_device_node_path;
        }

        else if (*name == 1633972309 && *&name[3] == 6648929)
        {
          v61 = &update_device_node_path;
        }

        else
        {
          if (system_device_node_path)
          {
            v82 = 0;
          }

          else
          {
            v82 = v39;
          }

          if (v82)
          {
            v60 = "looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n";
LABEL_32:
            _partition_log(v60, v51, v52, v53, v54, v55, v56, v57, name);
            v61 = &system_device_node_path;
          }

          else if (*name == 0x68637461726353)
          {
            v61 = &scratch_device_node_path;
          }

          else if (*name ^ 0x54524178 | name[4])
          {
            if (*name ^ 0x797265766F636552 | name[8])
            {
              if (*name != 0x746F6F62657250)
              {
                _partition_log("unexpected partition '%s' - skipping", v51, v52, v53, v54, v55, v56, v57, name);
                v61 = 0;
                v62 = 1;
                goto LABEL_35;
              }

              v61 = &preboot_partition_device_node_path;
            }

            else
            {
              v61 = &recovery_os_volume_device_node_path;
            }
          }

          else
          {
            v61 = &xart_device_node_path;
          }
        }
      }

      else
      {
        v61 = &user_device_node_path;
      }
    }

    else
    {
      v61 = &data_device_node_path;
    }

    if (*v61)
    {
      _partition_log("encountered second '%s' partition; original was '%s'", v51, v52, v53, v54, v55, v56, v57, name);
      goto LABEL_97;
    }

    v62 = 0;
LABEL_35:
    while (1)
    {
      v63 = CFDictionaryGetValue(cf, @"Leaf");
      if (v63)
      {
        if (CFBooleanGetValue(v63) == 1)
        {
          break;
        }
      }

      IOObjectRelease(v38);
      CFRelease(cf);
      cf = 0;
      v64 = IOIteratorNext(iterator);
      if (!v64)
      {
LABEL_96:
        _partition_log("ran out of registry entries without finding a leaf media object", v65, v66, v67, v68, v69, v70, v71, v117);
        v38 = 0;
        goto LABEL_97;
      }

      v38 = v64;
      while (!IOObjectConformsTo(v38, "IOMedia"))
      {
        IOObjectRelease(v38);
        v38 = IOIteratorNext(iterator);
        if (!v38)
        {
          goto LABEL_96;
        }
      }

      v72 = IORegistryEntryCreateCFProperties(v38, &cf, kCFAllocatorDefault, 0);
      if (v72)
      {
        _partition_log("unable to get properies for media registry entry: 0x%.8x", v73, v74, v75, v76, v77, v78, v79, v72);
        goto LABEL_97;
      }
    }

    if (v62)
    {
LABEL_75:
      v11 = &selRef_isProxy;
      goto LABEL_76;
    }

    v107 = CFDictionaryGetValue(cf, @"BSD Name");
    if (v107)
    {
      *buffer = 0u;
      v122 = 0u;
      CFStringGetCString(v107, buffer, 32, 0x8000100u);
      snprintf(v61, 0x20uLL, "%s%s", "/dev/", buffer);
      goto LABEL_75;
    }

    v116 = "leaf media object with no bsd name";
LABEL_117:
    _partition_log(v116, v84, v85, v86, v87, v88, v89, v90, v117);
LABEL_97:
    v11 = &selRef_isProxy;
LABEL_98:
    v37 = 0;
LABEL_99:
    v10 = &selRef_isProxy;
LABEL_100:
    if (iterator && !IOIteratorIsValid(iterator))
    {
      v9 = 1;
      v37 = 0;
    }

    if (v38)
    {
      IOObjectRelease(v38);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    if (v28)
    {
      IOObjectRelease(v28);
    }

    if (v37)
    {
      return 1;
    }

    result = 0;
    if (!v9)
    {
      break;
    }

    ++v8;
  }

  while (v8 != 3);
  return result;
}

uint64_t delete_apfs_partition(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "delete_apfs_partition");
  if (!partition_probe_media(v10, v11, v12, v13, v14, v15, v16, v17))
  {
    _partition_log("%s : partition_probe_media() failed for partition at index %u, mountpoint %s\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  if (a2)
  {
    _unmount_filesystem(a2);
  }

  if (a1 >= 8)
  {
    _partition_log("%s : Deleting partition at slice %d is not allowed as path is NULL\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  v25 = off_10004D710[a1];
  if (*v25)
  {
    v26 = off_10004D710[a1];
    if (APFSVolumeDelete())
    {
      _partition_log("%s : failed to delete partition at slice %d\n", v27, v28, v29, v30, v31, v32, v33, "delete_apfs_partition");
      return 1;
    }

    v35 = _partition_log("%s : delete partition succeeded at slice %d %s\n", v27, v28, v29, v30, v31, v32, v33, "delete_apfs_partition");
    if (!partition_probe_media(v35, v36, v37, v38, v39, v40, v41, v42))
    {
      _partition_log("%s : partition_probe_media() failed for checking for partition at slice %d\n", v43, v44, v45, v46, v47, v48, v49, "delete_apfs_partition");
      return 1;
    }

    if (*v25)
    {
      _partition_log("%s : partition_probe_media() found partition at slice %d after it was deleted\n", v43, v44, v45, v46, v47, v48, v49, "delete_apfs_partition");
      return 1;
    }

    return 0;
  }

  else
  {
    _partition_log("%s : partition at slice %d does not exist, ignoring this delete call\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 2;
  }
}

uint64_t format_partition(const char *a1, char *__s1, uint64_t a3, uint64_t a4, int a5)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  *__str = 0;
  v32 = "/sbin/newfs_apfs";
  if (!strcmp(__s1, "System"))
  {
    v16 = 115;
  }

  else if (!strcmp(__s1, "Data"))
  {
    v16 = 100;
  }

  else if (!strcmp(__s1, "User"))
  {
    v16 = 117;
  }

  else if (!strcmp(__s1, "Preboot"))
  {
    v16 = 98;
  }

  else if (!strcmp(__s1, "Baseband Data"))
  {
    v16 = 97;
  }

  else if (!strcmp(__s1, "Logs"))
  {
    v16 = 105;
  }

  else if (!strcmp(__s1, "xART"))
  {
    v16 = 120;
  }

  else if (!strcmp(__s1, "Scratch"))
  {
    v16 = 110;
  }

  else if (!strcmp(__s1, "Hardware"))
  {
    v16 = 104;
  }

  else if (!strcmp(__s1, "Update"))
  {
    v16 = 112;
  }

  else
  {
    if (strcmp(__s1, "Recovery"))
    {
      v15 = 1;
      goto LABEL_25;
    }

    v16 = 114;
  }

  *&v33 = "-o";
  snprintf(__str, 8uLL, "role=%c", v16);
  *(&v33 + 1) = __str;
  v15 = 3;
LABEL_25:
  (&v32)[v15] = "-A";
  (&v32)[v15 + 1] = "-v";
  v17 = v15 + 3;
  (&v32)[v15 + 2] = __s1;
  if (a5 == 1)
  {
    (&v32)[v17] = "-P";
    v17 = v15 | 4;
  }

  (&v32)[v17] = a1;
  (&v32)[v17 + 1] = 0;
  v18 = "/sbin/newfs_apfs";
  v19 = 1;
  do
  {
    _partition_log("%s ", v8, v9, v10, v11, v12, v13, v14, v18);
    v18 = (&v32)[v19++];
  }

  while (v18);
  _partition_log("\n", v8, v9, v10, v11, v12, v13, v14, v30);
  if (!_executeCommandPtr)
  {
    v27 = 0xFFFFFFFFLL;
    v28 = "/sbin/newfs_apfs";
    goto LABEL_33;
  }

  v27 = _executeCommandPtr(&v32, _partition_execution_log, 0);
  if (v27)
  {
    v28 = v32;
LABEL_33:
    _partition_log("%s returned %d", v20, v21, v22, v23, v24, v25, v26, v28);
  }

  return v27;
}

uint64_t _mount_filesystem(uint64_t a1, char *a2)
{
  v12[0] = "/sbin/mount";
  v12[1] = "-t";
  v12[2] = "apfs";
  v12[3] = "-o";
  v12[4] = "nobrowse";
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = 0;
  mkdir(a2, 0x1C0u);
  if (_executeCommandPtr)
  {
    v10 = _executeCommandPtr(v12, _partition_execution_log, 0);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  _partition_log("mounting %s at %s failed: %d", v3, v4, v5, v6, v7, v8, v9, a1);
  return v10;
}

uint64_t create_allocated_empty_file(uint64_t a1, char *a2)
{
  v47 = 0;
  unlink(a2);
  v4 = open(a2, 2562, 384);
  if (v4 == -1)
  {
    v44 = *__error();
    _partition_log("Could not open %s with error %d", v21, v22, v23, v24, v25, v26, v27, a2);
    return v44;
  }

  else
  {
    v5 = v4;
    v46[0] = 0x30000000CLL;
    v46[1] = 0;
    v46[2] = a1;
    if (fcntl(v4, 42, v46) == -1)
    {
      v20 = *__error();
      _partition_log("preallocation of %llu bytes failed: %d", v28, v29, v30, v31, v32, v33, v34, a1);
    }

    else if (v47 >= a1)
    {
      if (ftruncate(v5, a1) == -1)
      {
        v45 = *__error();
        _partition_log("failed to write to %s file to establish the size (%d).", v35, v36, v37, v38, v39, v40, v41, a2);
        v20 = v45;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      _partition_log("failed to allocate all %llu bytes for %s. only allocatedf %llu bytes", v6, v7, v8, v9, v10, v11, v12, a1);
      if (unlink(a2) == -1)
      {
        v43 = *__error();
        _partition_log("failed to unlink %s: %d", v13, v14, v15, v16, v17, v18, v19, a2);
      }

      v20 = 28;
    }

    close(v5);
  }

  return v20;
}

uint64_t mount_update_partition_if_exists(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_update_partition_if_exists");
  if (!partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    _partition_log("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  if (!update_device_node_path)
  {
    _partition_log("%s : no device node found for update partition\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  v63 = 0;
  v24 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v24)
  {
    v62 = *__error();
    _partition_log("Failed to realpath(%s). errno=%d", v37, v38, v39, v40, v41, v42, v43, a1);
    return 0xFFFFFFFFLL;
  }

  v25 = v24;
  v26 = getmntinfo_r_np(&v63, 2);
  if (v26 < 1)
  {
    _partition_log("Failed to get mount info for all mounted file systems", v27, v28, v29, v30, v31, v32, v33, v61);
    v44 = *__error();
  }

  else
  {
    v34 = v63;
    v35 = v26;
    v36 = 1112;
    while (strcmp(v34 + v36, &update_device_node_path))
    {
      v36 += 2168;
      if (!--v35)
      {
        goto LABEL_16;
      }
    }

    if (!strcmp(v34 + v36 - 1024, v25))
    {
      _partition_log("Update partition is already mounted\n", v45, v46, v47, v48, v49, v50, v51, v61);
      v44 = 0;
      goto LABEL_19;
    }

    _partition_log("unmounting %s at %s", v45, v46, v47, v48, v49, v50, v51, v34 + v36);
    _unmount_filesystem(v63 + v36 - 1024);
LABEL_16:
    v44 = _mount_filesystem(&update_device_node_path, v25);
    v59 = "Failed to mount";
    if (!v44)
    {
      v59 = "Successfully mounted";
    }

    _partition_log("%s update partition at %s", v52, v53, v54, v55, v56, v57, v58, v59);
  }

LABEL_19:
  if (v63)
  {
    free(v63);
  }

  free(v25);
  return v44;
}

uint64_t enumerate_apfs_snapshots(const char *a1, uint64_t a2)
{
  v3 = open(a1, 0x100000);
  if ((v3 & 0x80000000) != 0)
  {
    v18 = *__error();
    _partition_log("%s : Unable to open %s: %d", v19, v20, v21, v22, v23, v24, v25, "enumerate_apfs_snapshots");
  }

  else
  {
    v4 = v3;
    v27.reserved = 0;
    *&v27.volattr = 0;
    *&v27.fileattr = 0;
    bzero(v28, 0x400uLL);
    v27.bitmapcount = 5;
    v27.commonattr = -1610612735;
    v5 = fs_snapshot_list(v4, &v27, v28, 0x400uLL, 0);
    if (v5 < 0)
    {
      _partition_log("%s : fs_snapshot_list failed with error %d", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      v18 = 1;
    }

    else
    {
      if (v5)
      {
        v13 = v5 + 1;
        v14 = v28;
        while (1)
        {
          v15 = (v14 + 6);
          v16 = v14[1];
          if ((v16 & 0x20000000) != 0)
          {
            v18 = *v15;
            _partition_log("%s : Error in reading attributes for directory entry %d", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
            goto LABEL_16;
          }

          v17 = *v14;
          if ((v16 & 1) != 0 && ((*(a2 + 16))(a2, v4, v15 + *v15) & 1) == 0)
          {
            break;
          }

          v14 = (v14 + v17);
          if (--v13 <= 1)
          {
            goto LABEL_15;
          }
        }

        _partition_log("%s : caller cancelled on snapshot %s", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      }

      else
      {
        _partition_log("%s : No snapshots to enumerate on %s", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      }

LABEL_15:
      v18 = 0;
    }

LABEL_16:
    close(v4);
  }

  return v18;
}

BOOL is_mountpoint_apfs(const char *a1)
{
  bzero(&v11, 0x878uLL);
  partition_probe_media(v2, v3, v4, v5, v6, v7, v8, v9);
  return a1 && !statfs(a1, &v11) && (*v11.f_fstypename ^ 0x73667061 | v11.f_fstypename[4]) == 0;
}

uint64_t _partition_wait_for_device(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _partition_log("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "_partition_wait_for_device");
  if (!a1)
  {
    v41 = "path argument is NULL";
    goto LABEL_16;
  }

  v16 = CFStringCreateWithCString(kCFAllocatorDefault, "EmbeddedDeviceTypeRoot", 0x8000100u);
  if (!v16)
  {
LABEL_15:
    v41 = "failed to allocate device lookup dict";
LABEL_16:
    _partition_log(v41, v9, v10, v11, v12, v13, v14, v15, v111);
    return 0;
  }

  v17 = v16;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v19 = v17;
LABEL_14:
    CFRelease(v19);
    goto LABEL_15;
  }

  v19 = Mutable;
  CFDictionaryAddValue(Mutable, v17, kCFBooleanTrue);
  v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v20)
  {
    CFRelease(v17);
    goto LABEL_14;
  }

  v21 = v20;
  CFDictionaryAddValue(v20, @"IOPropertyMatch", v19);
  CFRelease(v17);
  CFRelease(v19);
  v22 = 0;
  while (1)
  {
    CFRetain(v21);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v21);
    if (MatchingService)
    {
      break;
    }

    if (30 - v22 >= 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 30 - v22;
    }

    v25 = CFCopyDescription(v21);
    CStringPtr = CFStringGetCStringPtr(v25, 0);
    _partition_log("waiting for matching IOKit service: %s\n", v27, v28, v29, v30, v31, v32, v33, CStringPtr);
    sleep(v24);
    v22 += v24;
    CFRelease(v25);
    if (v22 >= 0x1E)
    {
      CFRelease(v21);
      _partition_log("failed to lookup IO service for %s", v34, v35, v36, v37, v38, v39, v40, "EmbeddedDeviceTypeRoot");
      return 0;
    }
  }

  v44 = MatchingService;
  CFRelease(v21);
  IOObjectRetain(v44);
  v45 = v44;
  do
  {
    iterator = 0;
    if (IORegistryEntryGetChildIterator(v45, "IOService", &iterator))
    {
      v100 = "Could not create child iterator";
      goto LABEL_45;
    }

    v53 = IOIteratorNext(iterator);
    v54 = 0;
    if (!v53)
    {
      v55 = iterator;
LABEL_44:
      IOObjectRelease(v55);
      v111 = v54;
      v100 = "Found %d child nodes (expected 1)";
LABEL_45:
      _partition_log(v100, v46, v47, v48, v49, v50, v51, v52, v111);
      v42 = 0;
      v55 = v45;
      goto LABEL_52;
    }

    v55 = 0;
    do
    {
      if (v55)
      {
        IOObjectRelease(v53);
      }

      else
      {
        v55 = v53;
      }

      v53 = IOIteratorNext(iterator);
      v54 = (v54 + 1);
    }

    while (v53);
    IOObjectRelease(iterator);
    if (v54 != 1)
    {
      goto LABEL_44;
    }

    IOObjectRelease(v45);
    v45 = v55;
  }

  while (!IOObjectConformsTo(v55, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(v55, @"Whole", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    _partition_log("Did not find Whole property on IOMedia class", v57, v58, v59, v60, v61, v62, v63, v111);
    goto LABEL_51;
  }

  v64 = CFProperty;
  v65 = CFGetTypeID(CFProperty);
  if (v65 != CFBooleanGetTypeID())
  {
    v101 = "Expected Whole to be BOOLean";
LABEL_50:
    _partition_log(v101, v66, v67, v68, v69, v70, v71, v72, v111);
    CFRelease(v64);
LABEL_51:
    v42 = 0;
    goto LABEL_52;
  }

  if (!CFBooleanGetValue(v64))
  {
    v101 = "Expected Whole=true";
    goto LABEL_50;
  }

  CFRelease(v64);
  v73 = IORegistryEntryCreateCFProperty(v55, @"BSD Name", kCFAllocatorDefault, 0);
  if (!v73)
  {
    _partition_log("no BSD device name for service %s", v74, v75, v76, v77, v78, v79, v80, "EmbeddedDeviceTypeRoot");
    goto LABEL_51;
  }

  v81 = v73;
  v82 = CFGetTypeID(v73);
  if (v82 == CFStringGetTypeID())
  {
    strcpy(a1, "/dev/");
    v90 = strlen(a1);
    if (CFStringGetCString(v81, &a1[v90], 32 - v90, 0x8000100u))
    {
      _partition_log("Using device path %s for %s\n", v91, v92, v93, v94, v95, v96, v97, a1);
      v98 = -10;
      while (1)
      {
        if (!access(a1, 0))
        {
          v42 = 1;
          goto LABEL_61;
        }

        if (*__error() != 2)
        {
          break;
        }

        sleep(3u);
        if (__CFADD__(v98++, 1))
        {
          goto LABEL_58;
        }
      }

      v103 = __error();
      strerror(*v103);
      _partition_log("stat error while waiting for device '%s': %s\n", v104, v105, v106, v107, v108, v109, v110, a1);
LABEL_58:
      v111 = "EmbeddedDeviceTypeRoot";
      v102 = "timeout waiting for %s";
    }

    else
    {
      v102 = "failed to create C string from BSD name";
    }

    _partition_log(v102, v91, v92, v93, v94, v95, v96, v97, v111);
  }

  else
  {
    _partition_log("returnbed BSD device name for service %s is wrong type", v83, v84, v85, v86, v87, v88, v89, "EmbeddedDeviceTypeRoot");
  }

  v42 = 0;
LABEL_61:
  CFRelease(v81);
LABEL_52:
  IOObjectRelease(v55);
  IOObjectRelease(v44);
  return v42;
}

uint64_t mount_apfs_system_readwrite_with_revert(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!system_device_node_path)
  {
    _partition_log("system volume device node not found", v10, v11, v12, v13, v14, v15, v16, v102);
    return 2;
  }

  v103 = 0;
  v17 = getmntinfo_r_np(&v103, 2);
  if (v17 < 1)
  {
    _partition_log("Failed to get mount info for all mounted file systems", v18, v19, v20, v21, v22, v23, v24, v102);
    return *__error();
  }

  v25 = v103;
  v26 = v17;
  v27 = 1112;
  while (strcmp(v25 + v27, &system_device_node_path))
  {
    v27 += 2168;
    if (!--v26)
    {
      goto LABEL_10;
    }
  }

  _partition_log("unmounting %s at %s", v28, v29, v30, v31, v32, v33, v34, v25 + v27);
  _unmount_filesystem(v103 + v27 - 1024);
  v25 = v103;
LABEL_10:
  free(v25);
  v36 = _mount_filesystem(&system_device_node_path, a1);
  if (v36)
  {
    v35 = v36;
    _partition_log("system volume device node %s could not be mounted read/write at %s", v37, v38, v39, v40, v41, v42, v43, &system_device_node_path);
    return v35;
  }

  if (!is_mountpoint_apfs(a1))
  {
    _partition_log("media is not apfs managed: unsupported operation", v45, v46, v47, v48, v49, v50, v51, v102);
    return 45;
  }

  if (!a2)
  {
LABEL_29:
    _partition_log("mounting system volume read/write at %s succeeded.", v45, v46, v47, v48, v49, v50, v51, a1);
    return 0;
  }

  v52 = open(a1, 0x100000);
  v53 = v52;
  if (v52 < 0)
  {
    v35 = *__error();
    _partition_log("%s : Unable to open %s: %d", v69, v70, v71, v72, v73, v74, v75, "mount_apfs_system_readwrite_with_revert");
    if (v53 == -1)
    {
      return v35;
    }

    goto LABEL_23;
  }

  if (fs_snapshot_revert(v52, a2, 0))
  {
    v61 = __error();
    v35 = *v61;
    strerror(*v61);
    _partition_log("revert snapshot operation failed: %d %s", v62, v63, v64, v65, v66, v67, v68, v35);
    goto LABEL_23;
  }

  _partition_log("reverting system volume to snapshot %s succeeded. remounting...", v54, v55, v56, v57, v58, v59, v60, a2);
  if (!close(v53))
  {
    v93 = _unmount_filesystem(a1);
    if (v93)
    {
      v35 = v93;
      _partition_log("system volume device node %s could not be unmounted from %s", v94, v95, v96, v97, v98, v99, v100, &system_device_node_path);
      return v35;
    }

    v101 = _mount_filesystem(&system_device_node_path, a1);
    if (v101)
    {
      v35 = v101;
      _partition_log("system volume device node %s could not be re-mounted read/write at %s", v45, v46, v47, v48, v49, v50, v51, &system_device_node_path);
      return v35;
    }

    goto LABEL_29;
  }

  v76 = __error();
  v35 = *v76;
  strerror(*v76);
  _partition_log("%s: Unable to close directory: %d %s\n", v77, v78, v79, v80, v81, v82, v83, "mount_apfs_system_readwrite_with_revert");
LABEL_23:
  if (close(v53))
  {
    v84 = *__error();
    v85 = __error();
    strerror(*v85);
    _partition_log("%s: Unable to close directory: %d %s\n", v86, v87, v88, v89, v90, v91, v92, "mount_apfs_system_readwrite_with_revert");
  }

  return v35;
}

char *copy_rooted_snapshot_name()
{
  v17 = 0;
  if (!is_mountpoint_apfs("/"))
  {
    v7 = "media is not apfs managed: unsupported operation";
    goto LABEL_5;
  }

  bzero(&v20, 0x878uLL);
  if (statfs("/", &v20))
  {
    v7 = "statfs of root failed";
LABEL_5:
    _partition_log(v7, v0, v1, v2, v3, v4, v5, v6, v16);
    return 0;
  }

  v9 = strlen(v20.f_mntfromname);
  v10 = strlen(&system_device_node_path);
  if (v9 <= v10 + 1 || (v11 = v9 + ~v10, v20.f_mntfromname[v11] != 64) || strcmp(&v20.f_mntfromname[v9 - v10], &system_device_node_path) || (asprintf(&v17, "%.*s", v11, v20.f_mntfromname), (result = v17) == 0))
  {
    if (strnstr(v20.f_mntfromname, "/dev/", 5uLL) == v20.f_mntfromname)
    {
      f_mntfromname = &v20.f_mntfromname[5];
    }

    else
    {
      f_mntfromname = v20.f_mntfromname;
    }

    v13 = IOBSDNameMatching(kIOMasterPortDefault, 0, f_mntfromname);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
    v15 = MatchingService;
    if (MatchingService)
    {
      if (IOObjectConformsTo(MatchingService, "AppleAPFSSnapshot"))
      {
        memset(v19, 0, sizeof(v19));
        memset(v18, 0, sizeof(v18));
        if (!fsctl("/", 0xC1204A43uLL, v18, 0))
        {
          if (LOBYTE(v19[0]))
          {
            v17 = strdup(v19);
          }
        }
      }
    }

    IOObjectRelease(v15);
    return v17;
  }

  return result;
}

char *copy_root_snapshot_name_from_dt()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    _partition_log("uanble to find chosen node", v1, v2, v3, v4, v5, v6, v7, v30);
    return 0;
  }

  v8 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"root-snapshot-name", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    _partition_log("unable to look up root-snapshot-name on chosen node", v10, v11, v12, v13, v14, v15, v16, v30);
    IOObjectRelease(v8);
    return 0;
  }

  v17 = CFProperty;
  v18 = CFGetTypeID(CFProperty);
  if (v18 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v28 = strndup(BytePtr, Length);
  }

  else
  {
    _partition_log("device tree root-snapshot-name type mismatch", v19, v20, v21, v22, v23, v24, v25, v30);
    v28 = 0;
  }

  IOObjectRelease(v8);
  CFRelease(v17);
  return v28;
}

uint64_t get_main_container_space_info(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _partition_log("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "get_main_container_space_info");
  if (apfs_container_device_node_path)
  {
    SpaceInfo = APFSContainerGetSpaceInfo();
    if (SpaceInfo)
    {
      _partition_log("APFSContainerGetSpaceInfo failed with result:%d", v21, v22, v23, v24, v25, v26, v27, SpaceInfo);
    }
  }

  else
  {
    _partition_log("No container device found, can't retrieve space info", v13, v14, v15, v16, v17, v18, v19, v52);
  }

  if (system_device_node_path)
  {
    v28 = APFSVolumeGetSpaceInfo();
    if (v28)
    {
      _partition_log("APFSVolumeGetSpaceInfo for system volume failed with result:%d", v29, v30, v31, v32, v33, v34, v35, v28);
    }
  }

  else
  {
    _partition_log("No system device found, can't retrieve space info", v21, v22, v23, v24, v25, v26, v27, v52);
  }

  if (data_device_node_path)
  {
    v36 = APFSVolumeGetSpaceInfo();
    if (v36)
    {
      _partition_log("APFSVolumeGetSpaceInfo for data volume failed with result:%d", v37, v38, v39, v40, v41, v42, v43, v36);
    }
  }

  else
  {
    _partition_log("No data device found, can't retrieve space info", v29, v30, v31, v32, v33, v34, v35, v52);
  }

  if (!preboot_partition_device_node_path)
  {
    result = _partition_log("No preboot device found, can't retrieve space info", v37, v38, v39, v40, v41, v42, v43, v52);
LABEL_17:
    if (!a1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  result = APFSVolumeGetSpaceInfo();
  if (result)
  {
    result = _partition_log("APFSVolumeGetSpaceInfo for preboot volume failed with result:%d", v45, v46, v47, v48, v49, v50, v51, result);
    goto LABEL_17;
  }

  if (a1)
  {
LABEL_18:
    *a1 = 0;
  }

LABEL_19:
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

uint64_t _partition_execution_log()
{
  if (_executionLoggingPtr)
  {
    return _executionLoggingPtr();
  }

  return result;
}

uint64_t __os_cleanup_iorelease(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t _ioreg_property_is_nonzero(char *a1, const __CFString *a2)
{
  v4 = _ioreg_copy_property(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &_ioreg_property_is_nonzero_kZeroBytes, Length)))
    {
      v9 = 0;
      v10 = "NO";
    }

    else
    {
      v9 = 1;
      v10 = "YES";
    }

    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, v10, v5);
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, "NO", 0);
    return 0;
  }

  return v9;
}

BOOL _ioreg_property_exists(const __CFString *a1)
{
  v2 = _ioreg_copy_property("IODeviceTree:/defaults", a1);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  ramrod_log_msg_cf(@"Boot Firmware Updater: property_exists(%s, %@) = %s\n", "IODeviceTree:/defaults", a1, v4);
  return v3 != 0;
}

CFTypeRef _ioreg_copy_property(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t MSUBootFirmwareFindNamespace(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  IOServiceWaitQuiet(a1, 0);
  v11[0] = @"IOParentMatch";
  v4 = IORegistryEntryIDMatching(entryID);
  v11[1] = @"IOPropertyMatch";
  v12[0] = v4;
  v9 = a2;
  v10 = [NSNumber numberWithBool:1];
  v12[1] = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  return IOServiceGetMatchingService(kIOMasterPortDefault, v6);
}

void OUTLINED_FUNCTION_0_0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return __os_log_send_and_compose_impl(a1, v6, v5, 80, a5, v7, 16);
}

void OUTLINED_FUNCTION_2(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t __os_cleanup_iorelease_0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1_0(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_ioclose(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      __os_cleanup_ioclose_cold_1(&v2, v3);
    }
  }

  return result;
}

double OUTLINED_FUNCTION_2_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (_loggingPtr_0)
  {
    v12 = [v10 UTF8String];
    _loggingPtr_0("%s: %s\n", a2, v12);
  }

  else
  {
    NSLog(@"%s: %@", a2, v10);
  }
}

NSError *MSUBootFirmwareError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (a2)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = NSUnderlyingErrorKey;
    v20 = v11;
    v21 = a2;
    v12 = &v20;
    v13 = &v18;
    v14 = 2;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  return [NSError errorWithDomain:@"MSUFirmwareUpdaterErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, &a9, v16, v17, v18, v19, v20, v21]];
}

BOOL _is_firmware_info_entry(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

uint64_t __os_cleanup_iorelease_1(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1_1(&v2, v3);
    }
  }

  return result;
}

void __copy_helper_block_e8_32o40b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void __destroy_helper_block_e8_32o40b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", v9, v10, v11, v12, v13, v14, v15, CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

uint64_t wait_for_io_service_matching_resource_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOResources");
  if (!v4)
  {
    ramrod_log_msg("unable to create matching dictionary for resource '%s'\n", v5, v6, v7, v8, v9, v10, v11, a1);
    return 0;
  }

  v12 = v4;
  v13 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
  if (!v13)
  {
    ramrod_log_msg("unable to convert resource name to CFString\n", v14, v15, v16, v17, v18, v19, v20, v23);
    return 0;
  }

  v21 = v13;
  CFDictionarySetValue(v12, @"IOResourceMatch", v13);
  CFRelease(v21);

  return wait_for_io_service_matching_dict(v12, a2);
}

__CFDictionary *create_embedded_storage_service_query_dict(char *cStr)
{
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionaryAddValue(Mutable, v2, kCFBooleanTrue);
    v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = v5;
    if (v5)
    {
      CFDictionaryAddValue(v5, @"IOPropertyMatch", v4);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
    v4 = v2;
  }

  CFRelease(v4);
  return v6;
}

BOOL ramrod_check_NVRAM_access()
{
  v0 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0);
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t ramrod_remove_log_fd_no_locking(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &log_fds;
  if (v2)
  {
    v3 = &log_fds_fileonly;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&log_fds_mutex);
  if (a1 && __PAIR128__(log_fds, log_fds_fileonly) != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (log_fds)
    {
      CFSetApplyFunction(log_fds, ramrod_log_to_fd_set_applier, &context);
    }

    ramrod_log_msg_to_all_fds_bytes_to_sync += a2;
    if (ramrod_log_msg_to_all_fds_bytes_to_sync)
    {
      LOBYTE(theArray[1]) = 1;
      ramrod_log_msg_to_all_fds_bytes_to_sync = 0;
    }

    if (log_fds_fileonly)
    {
      CFSetApplyFunction(log_fds_fileonly, ramrod_log_to_fd_set_applier, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            ramrod_remove_log_fd_no_locking(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&log_fds_mutex);
  return 0;
}

void ramrod_log_to_fd_set_applier(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (!v1)
  {
    ramrod_log_msg("(Failed to format log message)\n", v2, v3, v4, v5, v6, v7, v8, v30);
    return;
  }

  v9 = v1;
  CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
  if (CStringPtr)
  {
    v30 = CStringPtr;
    v18 = "%s";
  }

  else
  {
    Length = CFStringGetLength(v9);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v21 = malloc(MaximumSizeForEncoding + 1);
    if (v21)
    {
      v22 = v21;
      if (CFStringGetCString(v9, v21, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        ramrod_log_msg("%s", v23, v24, v25, v26, v27, v28, v29, v22);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n", v23, v24, v25, v26, v27, v28, v29, v30);
      }

      free(v22);
      goto LABEL_12;
    }

    v18 = "(Failed to alloc and convert log message)\n";
  }

  ramrod_log_msg(v18, v11, v12, v13, v14, v15, v16, v17, v30);
LABEL_12:
  CFRelease(v9);
}

void do_ramrod_log_msg(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&log_mutex);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (_log_handler)
      {
        _log_handler(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((_log_buffermsgs & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = log_buffer;
    if (!log_buffer)
    {
      v5 = malloc(0x100000uLL);
      log_buffer = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&log_mutex);
        goto LABEL_24;
      }

      log_buffer_head = v5;
      log_buffer_tail = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = log_buffer_tail;
      v9 = log_buffer_head;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        log_buffer_tail = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          log_buffer_head = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

CFStringRef checkpoint_nvram_encode_string(uint64_t a1, const char **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = strlen(*a2);
  if (v3 > 0x100)
  {
    return CFStringCreateWithFormat(0, 0, @"~%s", &v2[v3 - 255]);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%s", v2);
  }
}

CFStringRef checkpoint_nvram_encode_id_string(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(*(a2 + 1));
  v5 = *a2;
  if (v4 > 0xF2)
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:~%s}", *a2, v3 + v4 - 241);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:%s}", *a2, v3);
  }
}

CFStringRef checkpoint_nvram_encode_long(uint64_t a1, void *a2)
{
  if (a2)
  {
    return CFStringCreateWithFormat(0, 0, @"%ld", *a2);
  }

  else
  {
    return 0;
  }
}

CFStringRef checkpoint_nvram_encode_by_boot(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v16 = 0;
    asprintf(&v16, "{");
    v8 = v16;
    if (v16)
    {
      v9 = 0;
      v15 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = *(&v2->isa + v9);
        if (v12)
        {
          v8 = checkpoint_append_and_free_key_v(v8, checkpoint_boot_type_name[v9], v12, &v15);
          v16 = v8;
        }

        v10 = 0;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      v16 = checkpoint_append_and_free(v8, "}", v12, v3, v4, v5, v6, v7, v14);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v16);
      if (v16)
      {
        free(v16);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v15 = 0;
    asprintf(&v15, "{");
    v8 = v15;
    if (v15)
    {
      v14 = 0;
      p_info = &v2->info;
      v10 = 8;
      do
      {
        v11 = *p_info;
        if (*p_info)
        {
          v8 = checkpoint_append_and_free_id_v(v8, *(p_info - 2), v11, &v14);
          v15 = v8;
        }

        p_info += 2;
        --v10;
      }

      while (v10);
      v15 = checkpoint_append_and_free(v8, "}", v11, v3, v4, v5, v6, v7, v13);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v15);
      if (v15)
      {
        free(v15);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

int *checkpoint_nvram_encode_by_id_int(uint64_t a1, int *a2)
{
  v2 = a2;
  if (a2)
  {
    v14 = 0;
    asprintf(&v14, "{");
    if (v14)
    {
      v13 = 0;
      v9 = 8;
      do
      {
        if (*v2)
        {
          v12 = 0;
          asprintf(&v12, "%d", v2[1]);
          v3 = v12;
          if (v12)
          {
            v14 = checkpoint_append_and_free_id_v(v14, *v2, v12, &v13);
            if (v12)
            {
              free(v12);
            }
          }
        }

        v2 += 2;
        --v9;
      }

      while (v9);
      v14 = checkpoint_append_and_free(v14, "}", v3, v4, v5, v6, v7, v8, v11);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v14);
      if (v14)
      {
        free(v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id_try(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v19 = 0;
    asprintf(&v19, "{");
    if (v19)
    {
      v9 = 0;
      v18 = 0;
      p_info = &v2->info;
      do
      {
        v11 = v2 + 18 * v9;
        if (*v11)
        {
          v22 = 0;
          asprintf(&v22, "{");
          if (v22)
          {
            v12 = 0;
            v21 = 0;
            do
            {
              v13 = p_info[v12];
              if (v13)
              {
                v20 = 0;
                asprintf(&v20, "%s", v13);
                v3 = v20;
                if (v20)
                {
                  v22 = checkpoint_append_and_free_try_v(v22, v12, v20, &v21);
                  if (v20)
                  {
                    free(v20);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v14 = checkpoint_append_and_free(v22, "}", v3, v4, v5, v6, v7, v8, v17);
            if (v14)
            {
              v15 = v14;
              v19 = checkpoint_append_and_free_id_v(v19, *v11, v14, &v18);
              free(v15);
            }
          }
        }

        ++v9;
        p_info += 9;
      }

      while (v9 != 8);
      v19 = checkpoint_append_and_free(v19, "}", v3, v4, v5, v6, v7, v8, v17);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v19);
      if (v19)
      {
        free(v19);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef checkpoint_nvram_encode_by_id_try_int(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v18 = 0;
    asprintf(&v18, "{");
    if (v18)
    {
      v9 = 0;
      v17 = 0;
      v10 = v2;
      do
      {
        v11 = v2 + 11 * v9;
        if (*v11)
        {
          v21 = 0;
          asprintf(&v21, "{");
          if (v21)
          {
            v12 = 0;
            v20 = 0;
            do
            {
              if (*(&v10[1].isa + v12 + 4))
              {
                v19 = 0;
                asprintf(&v19, "%d", *(&v10->isa + v12 + 1));
                v3 = v19;
                if (v19)
                {
                  v21 = checkpoint_append_and_free_try_v(v21, v12, v19, &v20);
                  if (v19)
                  {
                    free(v19);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v13 = checkpoint_append_and_free(v21, "}", v3, v4, v5, v6, v7, v8, v16);
            if (v13)
            {
              v14 = v13;
              v18 = checkpoint_append_and_free_id_v(v18, *v11, v13, &v17);
              free(v14);
            }
          }
        }

        ++v9;
        v10 = (v10 + 44);
      }

      while (v9 != 8);
      v18 = checkpoint_append_and_free(v18, "}", v3, v4, v5, v6, v7, v8, v16);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v18);
      if (v18)
      {
        free(v18);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t checkpoint_nvram_is_available(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = *(a1 + 688);
  if (!v10)
  {
    goto LABEL_155;
  }

  if (v10 == 1)
  {
    v11 = 1;
    goto LABEL_20;
  }

  v11 = 0;
  if (a2)
  {
    if (v10 == 2)
    {
LABEL_155:
      if (ramrod_check_NVRAM_access())
      {
        if (*(a1 + 2296))
        {
          if (!*(a1 + 2297))
          {
LABEL_24:
            v17 = *(a1 + 688);
            if (*(a1 + 693))
            {
LABEL_148:
              v11 = 1;
              *(a1 + 688) = 1;
              if (!v8)
              {
                if (v17)
                {
                  checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
                }
              }

              goto LABEL_20;
            }

            v18 = *a1 == 1 && v17 == 2;
            v19 = 696;
            if (v18)
            {
              v19 = 1088;
            }

            v20 = (a1 + v19);
            if (*(a1 + v19 + 4))
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", v12, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_handle_first_available");
            }

            else
            {
              checkpoint_nvram_collect(a1, v20, a3, a4, a5, a6, a7, a8);
            }

            if (*a1 == 1)
            {
              v28 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v28 == 2)
                {
                  v38 = &checkpoint_nvram_ota_monitor_aware_awoken;
                }

                else
                {
                  v38 = &checkpoint_nvram_restore_monitor_aware_awoken;
                }
              }

              else
              {
                if (v28 == 2)
                {
                  v30 = checkpoint_nvram_check_collection(a1, v20, checkpoint_nvram_ota_monitor_aware_init, v23, v24, v25, v26, v27);
                  checkpoint_nvram_delete_var_if_matches(a1, v20);
                  goto LABEL_53;
                }

                v38 = &checkpoint_nvram_restore_monitor_aware_init;
              }

              v30 = checkpoint_nvram_check_collection(a1, v20, v38, v23, v24, v25, v26, v27);
LABEL_53:
              if (!v20[6])
              {
                goto LABEL_111;
              }

              outcome_type = checkpoint_get_outcome_type(a1, v20, v32, v33, v34, v35, v36, v37);
              if (outcome_type < 0x22)
              {
                v50 = &checkpoint_outcome_attributes[3 * outcome_type];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v43, v44, v45, v46, v47, v48, v49, "checkpoint_get_outcome_attributes");
                v50 = checkpoint_outcome_attributes;
              }

              v51 = v20[6];
              bzero(v82, 0x400uLL);
              if (*v50 == 2)
              {
                v52 = *(v50 + 8);
                if (*(v50 + 8))
                {
                  *(a1 + 106) = 1;
                }

                if (*(v50 + 7))
                {
                  v30 = 0;
                  *(a1 + 102) = 1;
                }

                if (!*(v50 + 5))
                {
                  if (!*(v50 + 4) || !*(v50 + 6))
                  {
                    goto LABEL_111;
                  }

                  if (v52)
                  {
                    *(a1 + 101) = 1;
                    goto LABEL_111;
                  }

                  if (!v20[8])
                  {
                    goto LABEL_111;
                  }

LABEL_97:
                  v67 = v20[7];
                  *(a1 + 101) = 1;
                  if (!v67 || CFStringCompare(v67, @"true", 0))
                  {
                    goto LABEL_99;
                  }

                  *(a1 + 100) = 1;
                  if (*(v50 + 5))
                  {
                    *(a1 + 104) = 257;
                  }

                  else
                  {
                    *(a1 + 103) = 1;
                  }

LABEL_111:
                  if (v30 && !*(a1 + 106) && !*(a1 + 100) && !*(a1 + 104))
                  {
                    checkpoint_nvram_store_anomaly(a1, v31, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                  }

                  goto LABEL_116;
                }

                if (v52)
                {
                  *(a1 + 101) = 1;
                  *(a1 + 104) = 257;
                  goto LABEL_111;
                }

                if (v20[8])
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (!*(v50 + 5))
                {
                  goto LABEL_111;
                }

                if (!v20[8])
                {
                  checkpoint_get_nvram_value_string(v51, v82);
                  checkpoint_nvram_store_anomaly(a1, v69, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v53 = v20[7];
                if (!v53 || CFStringCompare(v53, @"true", 0))
                {
LABEL_99:
                  checkpoint_get_nvram_value_string(v51, v82);
                  checkpoint_nvram_store_anomaly(a1, v68, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v17 == 2)
                    {
                      v71 = 0;
                      v72 = (a1 + 1520);
                      v73 = &dword_10004D7D0;
                      do
                      {
                        v75 = *v73;
                        v73 += 8;
                        v74 = v75;
                        if (v71 != v75)
                        {
                          v76 = a1 + 1512 + 16 * v74;
                          *(v76 + 4) = *(v72 - 4);
                          *(v72 - 4) = 0;
                          v77 = *v72;
                          *v72 = *(v76 + 8);
                          *(v76 + 8) = v77;
                        }

                        ++v71;
                        v72 += 2;
                      }

                      while (v71 != 48);
                    }
                  }

                  else if (*a1 != 1 && *(a1 + 88) == 2)
                  {
                    ramrod_log_msg("%s\n", v31, v32, v33, v34, v35, v36, v37, "void clear_stale_ota_nvram(void)");
                    checkpoint_nvram_delete_var_raw(@"boot-breadcrumbs");
                    checkpoint_nvram_delete_var_raw(@"OTA-pre-conversion");
                    checkpoint_nvram_delete_var_raw(@"OTA-post-conversion");
                    checkpoint_nvram_delete_var_raw(@"ota-conv-panic-indicator");
                    checkpoint_nvram_delete_var_raw(@"OTA-fsck-metrics");
                    checkpoint_nvram_delete_var_raw(@"OTA-sealvolume-metrics");
                    checkpoint_nvram_delete_var_raw(@"OTA-migrator-metrics");
                    for (i = 0; i != 28; ++i)
                    {
                      v79 = &checkpoint_nvram_map[4 * dword_100042CEC[i]];
                      checkpoint_nvram_delete_var_raw(v79[1]);
                      checkpoint_nvram_delete_var_raw(*v79);
                    }
                  }

                  if (*(a1 + 96))
                  {
                    if (*(a1 + 101))
                    {
                      if (*(a1 + 104))
                      {
                        if (*(a1 + 106))
                        {
                          v80 = 9;
                        }

                        else if (*(a1 + 105))
                        {
                          v80 = 12;
                        }

                        else if (*(a1 + 100))
                        {
                          v80 = 10;
                        }

                        else
                        {
                          v80 = 11;
                        }
                      }

                      else if (*(a1 + 103))
                      {
                        v80 = 10;
                      }

                      else
                      {
                        v80 = 3;
                      }
                    }

                    else if (*(a1 + 102))
                    {
                      if (*(a1 + 104))
                      {
                        v80 = 7;
                      }

                      else
                      {
                        v80 = 6;
                      }
                    }

                    else
                    {
                      v80 = 2;
                    }

                    checkpoint_outcome_progress(a1, v80, v32, v33, v34, v35, v36, v37);
                  }

                  else
                  {
                    checkpoint_outcome_init(a1, 1, v32, v33, v34, v35, v36, v37);
                  }

                  *(a1 + 693) = 1;
                  goto LABEL_148;
                }
              }

              *(a1 + 104) = 1;
              goto LABEL_111;
            }

            v29 = v20[7];
            if (v29 && CFStringCompare(v29, @"true", 0) == kCFCompareEqualTo)
            {
              *(a1 + 100) = 1;
            }

            else
            {
              ramrod_log_msg("AP nonce will not be touched\n", v21, v22, v23, v24, v25, v26, v27, v81);
            }

            v39 = *(a1 + 88);
            if (*(a1 + 96))
            {
              if (v39 == 2)
              {
                v40 = checkpoint_nvram_check_collection(a1, v20, checkpoint_nvram_ota_engine_aware_step, v23, v24, v25, v26, v27);
                checkpoint_nvram_delete_var_if_matches(a1, v20);
                goto LABEL_71;
              }

              v41 = &checkpoint_nvram_restore_engine_aware_step;
            }

            else if (v39 == 2)
            {
              v41 = &checkpoint_nvram_ota_engine_aware_init;
            }

            else
            {
              v41 = &checkpoint_nvram_restore_engine_aware_init;
            }

            v40 = checkpoint_nvram_check_collection(a1, v20, v41, v23, v24, v25, v26, v27);
LABEL_71:
            if (!v20[6])
            {
              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (v20[8])
                {
                  checkpoint_nvram_delete_var(a1, 7, 0, 0, v34, v35, v36, v37);
                }

                v63 = v20[3];
                if (v63 && CFStringCompare(v63, @"recover", 0))
                {
                  checkpoint_nvram_delete_var(a1, 2, 1, 0, v34, v35, v36, v37);
                }

                if (v20[4])
                {
                  checkpoint_nvram_delete_var(a1, 3, 1, 0, v34, v35, v36, v37);
                }
              }

              goto LABEL_103;
            }

            v54 = checkpoint_get_outcome_type(a1, v20, v32, v33, v34, v35, v36, v37);
            if (v54 < 0x22)
            {
              v62 = &checkpoint_outcome_attributes[3 * v54];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v55, v56, v57, v58, v59, v60, v61, "checkpoint_get_outcome_attributes");
              v62 = checkpoint_outcome_attributes;
            }

            v64 = v20[6];
            bzero(v82, 0x400uLL);
            if (*v62 != 1)
            {
              if (*(v62 + 6))
              {
                if (v20[8])
                {
                  checkpoint_reboot_retry_chassis_aware(a1, v64, v32, v33, v34, v35, v36, v37, v81);
                }

                else
                {
                  checkpoint_get_nvram_value_string(v64, v82);
                  checkpoint_nvram_store_anomaly(a1, v70, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v82);
                }
              }

              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              goto LABEL_103;
            }

            v65 = v20[8];
            if (*(v62 + 5))
            {
              if (!v65)
              {
                checkpoint_get_nvram_value_string(v64, v82);
                checkpoint_nvram_store_anomaly(a1, v66, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v82);
LABEL_103:
                if (v40 && !*(a1 + 104))
                {
                  checkpoint_nvram_store_anomaly(a1, v31, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v65)
            {
              goto LABEL_103;
            }

            checkpoint_reboot_retry_chassis_aware(a1, v64, v32, v33, v34, v35, v36, v37, v81);
            goto LABEL_103;
          }
        }

        else
        {
          checkpoint_nvram_collect_var(a1, 1u, 0x2Fu, (a1 + 1080));
          if (!*(a1 + 1080))
          {
            *(a1 + 2296) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            checkpoint_nvram_delete_var(a1, 47, 0, 0, a5, a6, a7, a8);
          }

          *(a1 + 2297) = 1;
          *(a1 + 692) = 0;
          v13 = (a1 + 1016);
          v14 = -4;
          do
          {
            checkpoint_nvram_collect_var(a1, 1u, v14 + 43, v13++);
          }

          while (!__CFADD__(v14++, 1));
          *(a1 + 2296) = 1;
        }
      }

      *(a1 + 688) = 2;
      if (!v8)
      {
        checkpoint_history_add(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v11 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    checkpoint_outcome_init(a1, v11, a3, a4, a5, a6, a7, a8);
  }

  return v11;
}