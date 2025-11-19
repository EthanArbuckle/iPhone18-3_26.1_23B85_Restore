const __CFDictionary *CCProfileMonitor::mergeProfilePlist(CCProfileMonitor *this, unint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
LABEL_2:
    v3 = 0;
LABEL_3:
    v4 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v3 = a2;
  if (a2)
  {
    if (a3)
    {
      v8 = CFGetTypeID(a2);
      if (v8 != CFDictionaryGetTypeID())
      {
        goto LABEL_3;
      }

      v9 = CFGetTypeID(a3);
      if (v9 != CFDictionaryGetTypeID())
      {
        goto LABEL_3;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v3);
      if (MutableCopy)
      {
        v3 = MutableCopy;
        Count = CFDictionaryGetCount(a3);
        v12 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        if (v12)
        {
          v13 = v12;
          v14 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
          if (v14)
          {
            v15 = v14;
            CFDictionaryGetKeysAndValues(a3, v13, v14);
            if (Count >= 1)
            {
              v16 = v13;
              v17 = v15;
              do
              {
                Value = CFDictionaryGetValue(v3, *v16);
                if (Value)
                {
                  v19 = CCProfileMonitor::mergeProfilePlist(this, *v17, Value);
                  v20 = *v16;
                }

                else
                {
                  v20 = *v16;
                  v19 = *v17;
                }

                CFDictionarySetValue(v3, v20, v19);
                ++v17;
                ++v16;
                --Count;
              }

              while (Count);
            }

            free(v13);
            free(v15);
            goto LABEL_3;
          }

          v28 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "mergeProfilePlist";
              *&buf[12] = 1024;
              *&buf[14] = 183;
              v29 = v28;
LABEL_48:
              _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "mergeProfilePlist";
            *&buf[12] = 1024;
            *&buf[14] = 183;
            v29 = MEMORY[0x277D86220];
            goto LABEL_48;
          }

          if (glog_fd)
          {
            *&v32 = 0xAAAAAAAAAAAAAAAALL;
            *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v40 = v32;
            v41 = v32;
            v38 = v32;
            v39 = v32;
            v36 = v32;
            v37 = v32;
            *buf = v32;
            *&buf[16] = v32;
            memset(&v34, 0, sizeof(v34));
            v33 = 0xAAAAAAAAAAAAAAAALL;
            time(&v33);
            localtime_r(&v33, &v34);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "%s:%06u memory alloc failed\n", "mergeProfilePlist", 183);
          }

          CFRelease(v3);
          free(v13);
          goto LABEL_2;
        }

        v26 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "mergeProfilePlist";
            *&buf[12] = 1024;
            *&buf[14] = 176;
            v27 = v26;
LABEL_46:
            _os_log_error_impl(&dword_2452A3000, v27, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "mergeProfilePlist";
          *&buf[12] = 1024;
          *&buf[14] = 176;
          v27 = MEMORY[0x277D86220];
          goto LABEL_46;
        }

        if (glog_fd)
        {
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v40 = v31;
          v41 = v31;
          v38 = v31;
          v39 = v31;
          v36 = v31;
          v37 = v31;
          *buf = v31;
          *&buf[16] = v31;
          memset(&v34, 0, sizeof(v34));
          v33 = 0xAAAAAAAAAAAAAAAALL;
          time(&v33);
          localtime_r(&v33, &v34);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s:%06u memory alloc failed\n", "mergeProfilePlist", 176);
        }

        CFRelease(v3);
        goto LABEL_2;
      }

      v24 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 136315394;
        *&buf[4] = "mergeProfilePlist";
        *&buf[12] = 1024;
        *&buf[14] = 166;
        v25 = v24;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 136315394;
        *&buf[4] = "mergeProfilePlist";
        *&buf[12] = 1024;
        *&buf[14] = 166;
        v25 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v25, OS_LOG_TYPE_ERROR, "%s:%06u unable to allocate dictionary\n", buf, 0x12u);
LABEL_33:
      if (glog_fd)
      {
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v30;
        v41 = v30;
        v38 = v30;
        v39 = v30;
        v36 = v30;
        v37 = v30;
        *buf = v30;
        *&buf[16] = v30;
        memset(&v34, 0, sizeof(v34));
        v33 = 0xAAAAAAAAAAAAAAAALL;
        time(&v33);
        localtime_r(&v33, &v34);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v34);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%06u unable to allocate dictionary\n", "mergeProfilePlist", 166);
      }

      goto LABEL_2;
    }

    v23 = *MEMORY[0x277D85DE8];
    v22 = a2;
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
    v22 = a3;
  }

  return CFRetain(v22);
}

void CCProfileMonitor::profileRemoved(CCProfileMonitor *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = CCProfileMonitor::fProfileLoaded;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = CCProfileMonitor::fProfileLoaded;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileRemoved Entered %d\n", buf, 8u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v4;
    v20 = v4;
    v17 = v4;
    v18 = v4;
    v15 = v4;
    v16 = v4;
    *buf = v4;
    v14 = v4;
    memset(&v12, 0, sizeof(v12));
    v11 = 0xAAAAAAAAAAAAAAAALL;
    time(&v11);
    localtime_r(&v11, &v12);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v12);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::profileRemoved Entered %d\n", CCProfileMonitor::fProfileLoaded);
  }

  CCPipeMonitor::profileRemoved(*(*(this + 11) + 16));
  CCProfileMonitor::fProfileLoaded = 0;
  *(this + 105) = 1;
  *(this + 12) = 0;
  v5 = *(this + 14);
  if (v5)
  {
    CFRelease(v5);
    *(this + 14) = 0;
  }

  v6 = *(this + 15);
  if (v6)
  {
    CFRelease(v6);
    *(this + 15) = 0;
  }

  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = CCProfileMonitor::fProfileLoaded;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = CCProfileMonitor::fProfileLoaded;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::profileRemoved Exited :%d\n", buf, 8u);
LABEL_19:
  if (glog_fd)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v9;
    v20 = v9;
    v17 = v9;
    v18 = v9;
    v15 = v9;
    v16 = v9;
    *buf = v9;
    v14 = v9;
    memset(&v12, 0, sizeof(v12));
    v11 = 0xAAAAAAAAAAAAAAAALL;
    time(&v11);
    localtime_r(&v11, &v12);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v12);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::profileRemoved Exited :%d\n", CCProfileMonitor::fProfileLoaded);
  }

  v10 = *MEMORY[0x277D85DE8];
}

CFIndex CCProfileMonitor::getOwnersFromProfile(CCProfileMonitor *this, CFTypeRef cf)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 658;
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 658;
      v17 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "%s:%06u invalid configuration\n", buf, 0x12u);
LABEL_18:
    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v20;
      v40 = v20;
      v37 = v20;
      v38 = v20;
      v35 = v20;
      v36 = v20;
      *buf = v20;
      *&buf[16] = v20;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u invalid configuration\n");
    }

    goto LABEL_23;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 663;
      v19 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 663;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "%s:%06u Configuration type is not dictionary\n", buf, 0x12u);
LABEL_21:
    if (glog_fd)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v21;
      v40 = v21;
      v37 = v21;
      v38 = v21;
      v35 = v21;
      v36 = v21;
      *buf = v21;
      *&buf[16] = v21;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u Configuration type is not dictionary\n");
    }

    goto LABEL_23;
  }

  result = CFDictionaryGetCount(cf);
  if (!result)
  {
    goto LABEL_24;
  }

  v6 = result;
  v7 = 8 * result;
  v8 = malloc_type_malloc(8 * result, 0x80040B8603338uLL);
  if (!v8)
  {
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
LABEL_35:
    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v29;
      v40 = v29;
      v37 = v29;
      v38 = v29;
      v35 = v29;
      v36 = v29;
      *buf = v29;
      *&buf[16] = v29;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u memory alloc failed\n");
    }

    goto LABEL_23;
  }

  v9 = v8;
  v10 = malloc_type_malloc(v7, 0x80040B8603338uLL);
  if (!v10)
  {
    v25 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "getOwnersFromProfile";
        *&buf[12] = 1024;
        *&buf[14] = 683;
        v26 = v25;
LABEL_51:
        _os_log_error_impl(&dword_2452A3000, v26, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 683;
      v26 = MEMORY[0x277D86220];
      goto LABEL_51;
    }

    if (glog_fd)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v30;
      v40 = v30;
      v37 = v30;
      v38 = v30;
      v35 = v30;
      v36 = v30;
      *buf = v30;
      *&buf[16] = v30;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u memory alloc failed\n", "getOwnersFromProfile", 683);
    }

    free(v9);
    goto LABEL_23;
  }

  v11 = v10;
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  *(this + 15) = Mutable;
  if (!Mutable)
  {
    v27 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 690;
      v28 = v27;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromProfile";
      *&buf[12] = 1024;
      *&buf[14] = 690;
      v28 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v28, OS_LOG_TYPE_ERROR, "%s:%06u unable to create set\n", buf, 0x12u);
LABEL_42:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v31;
      v40 = v31;
      v37 = v31;
      v38 = v31;
      v35 = v31;
      v36 = v31;
      *buf = v31;
      *&buf[16] = v31;
      memset(&v33, 0, sizeof(v33));
      v32 = 0xAAAAAAAAAAAAAAAALL;
      time(&v32);
      localtime_r(&v32, &v33);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v33);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u unable to create set\n");
    }

LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  CFDictionaryGetKeysAndValues(cf, v9, v11);
  if (v6 >= 1)
  {
    v14 = v11;
    do
    {
      v15 = *v14++;
      CCProfileMonitor::getOwnersFromCCConfig(v13, v15, *(this + 15));
      --v6;
    }

    while (v6);
  }

  free(v9);
  free(v11);
  result = *(this + 15);
LABEL_24:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void CCProfileMonitor::applyConfiguration(CFDictionaryRef *this, const __CFString *a2, const __CFString *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit((CCDaemon::getInstance(this) + 304), memory_order_acquire))
  {
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v7 = v6;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v7 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v7, OS_LOG_TYPE_ERROR, "CCProfileMonitor::applyConfiguration  shutdown pending, dropping request and exiting\n", buf, 2u);
LABEL_17:
    if (glog_fd)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v15;
      v30 = v15;
      v27 = v15;
      v28 = v15;
      *&buf[32] = v15;
      v26 = v15;
      *buf = v15;
      *&buf[16] = v15;
      memset(&v24, 0, sizeof(v24));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      time(&v23);
      localtime_r(&v23, &v24);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::applyConfiguration  shutdown pending, dropping request and exiting\n");
    }

LABEL_31:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!this[14])
  {
    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v17 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "CCProfileMonitor::applyConfiguration profile is already removed", buf, 2u);
LABEL_26:
    if (glog_fd)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v20;
      v30 = v20;
      v27 = v20;
      v28 = v20;
      *&buf[32] = v20;
      v26 = v20;
      *buf = v20;
      *&buf[16] = v20;
      memset(&v24, 0, sizeof(v24));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      time(&v23);
      localtime_r(&v23, &v24);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::applyConfiguration profile is already removed");
    }

    goto LABEL_31;
  }

  v8 = this[12];
  if (!v8)
  {
    v18 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v19 = v18;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v19 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "CCProfileMonitor::applyConfiguration profile is already removed or not installed", buf, 2u);
LABEL_29:
    if (glog_fd)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v21;
      v30 = v21;
      v27 = v21;
      v28 = v21;
      *&buf[32] = v21;
      v26 = v21;
      *buf = v21;
      *&buf[16] = v21;
      memset(&v24, 0, sizeof(v24));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      time(&v23);
      localtime_r(&v23, &v24);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::applyConfiguration profile is already removed or not installed");
    }

    goto LABEL_31;
  }

  v9 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
  v10 = malloc_type_malloc(8 * this[12], 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(this[14], v9, v10);
  if (this[12] >= 1)
  {
    v11 = 0;
    do
    {
      v12 = this[11];
      v13 = v10[v11];
      *&v28 = 0xAAAAAAAAAAAAAA01;
      memset(&buf[8], 0, 32);
      *buf = v12;
      *&buf[40] = a2;
      v26 = a3;
      v27 = 0uLL;
      CCConfigure::applyConfiguration(v12, v13, buf);
      ++v11;
    }

    while (this[12] > v11);
  }

  if (v9)
  {
    free(v9);
  }

  if (!v10)
  {
    goto LABEL_31;
  }

  v14 = *MEMORY[0x277D85DE8];

  free(v10);
}

void CCProfileMonitor::getOwnersFromCCConfig(CCProfileMonitor *this, CFTypeRef cf, __CFSet *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromCCConfig";
      *&buf[12] = 1024;
      *&buf[14] = 602;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromCCConfig";
      *&buf[12] = 1024;
      *&buf[14] = 602;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "%s:%06u invalid configuration\n", buf, 0x12u);
LABEL_13:
    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v48 = v13;
      v49 = v13;
      v46 = v13;
      v47 = v13;
      v44 = v13;
      v45 = v13;
      *buf = v13;
      *&buf[16] = v13;
      memset(&v42, 0, sizeof(v42));
      v41 = 0xAAAAAAAAAAAAAAAALL;
      time(&v41);
      localtime_r(&v41, &v42);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u invalid configuration\n");
    }

    goto LABEL_58;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDictionaryGetTypeID())
  {
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromCCConfig";
      *&buf[12] = 1024;
      *&buf[14] = 607;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromCCConfig";
      *&buf[12] = 1024;
      *&buf[14] = 607;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "%s:%06u Configuration type is not dictionary\n", buf, 0x12u);
LABEL_42:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v48 = v31;
      v49 = v31;
      v46 = v31;
      v47 = v31;
      v44 = v31;
      v45 = v31;
      *buf = v31;
      *&buf[16] = v31;
      memset(&v42, 0, sizeof(v42));
      v41 = 0xAAAAAAAAAAAAAAAALL;
      time(&v41);
      localtime_r(&v41, &v42);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u Configuration type is not dictionary\n");
    }

    goto LABEL_58;
  }

  Count = CFDictionaryGetCount(cf);
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315650;
    *&buf[4] = "getOwnersFromCCConfig";
    *&buf[12] = 1024;
    *&buf[14] = 612;
    *&buf[18] = 2048;
    *&buf[20] = Count;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315650;
    *&buf[4] = "getOwnersFromCCConfig";
    *&buf[12] = 1024;
    *&buf[14] = 612;
    *&buf[18] = 2048;
    *&buf[20] = Count;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "%s:%06u keycount : %ld\n", buf, 0x1Cu);
LABEL_18:
  if (glog_fd)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48 = v14;
    v49 = v14;
    v46 = v14;
    v47 = v14;
    v44 = v14;
    v45 = v14;
    *buf = v14;
    *&buf[16] = v14;
    memset(&v42, 0, sizeof(v42));
    v41 = 0xAAAAAAAAAAAAAAAALL;
    time(&v41);
    localtime_r(&v41, &v42);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s:%06u keycount : %ld\n", "getOwnersFromCCConfig", 612, Count);
  }

  if (Count)
  {
    v15 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v15)
    {
      v16 = v15;
      v17 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v17)
      {
        v39 = v17;
        v40 = v16;
        CFDictionaryGetKeysAndValues(cf, v16, v17);
        if (Count >= 1)
        {
          v18 = v39;
          while (1)
          {
            v19 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                CStringPtr = CFStringGetCStringPtr(*v16, 0);
                *buf = 136315138;
                *&buf[4] = CStringPtr;
                v21 = v19;
LABEL_30:
                _os_log_impl(&dword_2452A3000, v21, OS_LOG_TYPE_DEFAULT, "CCConfigure::configure key is %s\n", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v22 = CFStringGetCStringPtr(*v16, 0);
              *buf = 136315138;
              *&buf[4] = v22;
              v21 = MEMORY[0x277D86220];
              goto LABEL_30;
            }

            if (glog_fd)
            {
              *&v23 = 0xAAAAAAAAAAAAAAAALL;
              *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v48 = v23;
              v49 = v23;
              v46 = v23;
              v47 = v23;
              v44 = v23;
              v45 = v23;
              *buf = v23;
              *&buf[16] = v23;
              memset(&v42, 0, sizeof(v42));
              v41 = 0xAAAAAAAAAAAAAAAALL;
              time(&v41);
              localtime_r(&v41, &v42);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
              dprintf(glog_fd, "%s ", buf);
              v24 = glog_fd;
              v25 = CFStringGetCStringPtr(*v16, 0);
              dprintf(v24, "CCConfigure::configure key is %s\n", v25);
            }

            v26 = *v16;
            TypeID = CFStringGetTypeID();
            if (validCFObjectReference("CCProfileMonitor::getOwnersFromCCConfig", v26, TypeID))
            {
              v28 = *v18;
              v29 = CFDictionaryGetTypeID();
              if (validCFObjectReference("CCProfileMonitor::getOwnersFromCCConfig", v28, v29))
              {
                if (CFStringCompare(*v16, @"CCConfigurePipe", 0) == kCFCompareEqualTo)
                {
                  CCProfileMonitor::getOwnersFromPipesAndStreams(0, *v18, a3);
                }

                if (CFStringCompare(*v16, @"CCConfigureStream", 0) == kCFCompareEqualTo)
                {
                  CCProfileMonitor::getOwnersFromPipesAndStreams(0, *v18, a3);
                }

                ++v18;
                ++v16;
                if (--Count)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        free(v40);
        v30 = v39;
        goto LABEL_57;
      }

      v34 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "getOwnersFromCCConfig";
          *&buf[12] = 1024;
          *&buf[14] = 626;
          v35 = v34;
LABEL_66:
          _os_log_error_impl(&dword_2452A3000, v35, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "getOwnersFromCCConfig";
        *&buf[12] = 1024;
        *&buf[14] = 626;
        v35 = MEMORY[0x277D86220];
        goto LABEL_66;
      }

      if (glog_fd)
      {
        *&v37 = 0xAAAAAAAAAAAAAAAALL;
        *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v48 = v37;
        v49 = v37;
        v46 = v37;
        v47 = v37;
        v44 = v37;
        v45 = v37;
        *buf = v37;
        *&buf[16] = v37;
        memset(&v42, 0, sizeof(v42));
        v41 = 0xAAAAAAAAAAAAAAAALL;
        time(&v41);
        localtime_r(&v41, &v42);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%06u memory alloc failed\n", "getOwnersFromCCConfig", 626);
      }

      v30 = v16;
LABEL_57:
      free(v30);
      goto LABEL_58;
    }

    v32 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromCCConfig";
      *&buf[12] = 1024;
      *&buf[14] = 620;
      v33 = v32;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromCCConfig";
      *&buf[12] = 1024;
      *&buf[14] = 620;
      v33 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v33, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
LABEL_51:
    if (glog_fd)
    {
      *&v36 = 0xAAAAAAAAAAAAAAAALL;
      *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v48 = v36;
      v49 = v36;
      v46 = v36;
      v47 = v36;
      v44 = v36;
      v45 = v36;
      *buf = v36;
      *&buf[16] = v36;
      memset(&v42, 0, sizeof(v42));
      v41 = 0xAAAAAAAAAAAAAAAALL;
      time(&v41);
      localtime_r(&v41, &v42);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u memory alloc failed\n");
    }
  }

LABEL_58:
  v38 = *MEMORY[0x277D85DE8];
}

void CCProfileMonitor::getOwnersFromPipesAndStreams(CCProfileMonitor *this, CFTypeRef cf, __CFSet *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromPipesAndStreams";
      *&buf[12] = 1024;
      *&buf[14] = 548;
      v10 = v9;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromPipesAndStreams";
      *&buf[12] = 1024;
      *&buf[14] = 548;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "%s:%06u invalid configuration\n", buf, 0x12u);
LABEL_13:
    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v13;
      v47 = v13;
      v44 = v13;
      v45 = v13;
      v42 = v13;
      v43 = v13;
      *buf = v13;
      *&buf[16] = v13;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u invalid configuration\n");
    }

    goto LABEL_52;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDictionaryGetTypeID())
  {
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromPipesAndStreams";
      *&buf[12] = 1024;
      *&buf[14] = 553;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromPipesAndStreams";
      *&buf[12] = 1024;
      *&buf[14] = 553;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "%s:%06u Configuration type is not dictionary\n", buf, 0x12u);
LABEL_36:
    if (glog_fd)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v30;
      v47 = v30;
      v44 = v30;
      v45 = v30;
      v42 = v30;
      v43 = v30;
      *buf = v30;
      *&buf[16] = v30;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u Configuration type is not dictionary\n");
    }

    goto LABEL_52;
  }

  Count = CFDictionaryGetCount(cf);
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315650;
    *&buf[4] = "getOwnersFromPipesAndStreams";
    *&buf[12] = 1024;
    *&buf[14] = 558;
    *&buf[18] = 2048;
    *&buf[20] = Count;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315650;
    *&buf[4] = "getOwnersFromPipesAndStreams";
    *&buf[12] = 1024;
    *&buf[14] = 558;
    *&buf[18] = 2048;
    *&buf[20] = Count;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "%s:%06u keycount : %ld\n", buf, 0x1Cu);
LABEL_18:
  if (glog_fd)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46 = v14;
    v47 = v14;
    v44 = v14;
    v45 = v14;
    v42 = v14;
    v43 = v14;
    *buf = v14;
    *&buf[16] = v14;
    memset(&v40, 0, sizeof(v40));
    v39 = 0xAAAAAAAAAAAAAAAALL;
    time(&v39);
    localtime_r(&v39, &v40);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s:%06u keycount : %ld\n", "getOwnersFromPipesAndStreams", 558, Count);
  }

  if (Count)
  {
    v15 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v15)
    {
      v16 = v15;
      v17 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v17)
      {
        v18 = v17;
        v38 = v16;
        CFDictionaryGetKeysAndValues(cf, v16, v17);
        if (Count >= 1)
        {
          while (1)
          {
            v19 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                CStringPtr = CFStringGetCStringPtr(*v16, 0);
                *buf = 136315138;
                *&buf[4] = CStringPtr;
                v21 = v19;
LABEL_29:
                _os_log_impl(&dword_2452A3000, v21, OS_LOG_TYPE_DEFAULT, "CCConfigure::configure key is %s\n", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v22 = CFStringGetCStringPtr(*v16, 0);
              *buf = 136315138;
              *&buf[4] = v22;
              v21 = MEMORY[0x277D86220];
              goto LABEL_29;
            }

            if (glog_fd)
            {
              *&v23 = 0xAAAAAAAAAAAAAAAALL;
              *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v46 = v23;
              v47 = v23;
              v44 = v23;
              v45 = v23;
              v42 = v23;
              v43 = v23;
              *buf = v23;
              *&buf[16] = v23;
              memset(&v40, 0, sizeof(v40));
              v39 = 0xAAAAAAAAAAAAAAAALL;
              time(&v39);
              localtime_r(&v39, &v40);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
              dprintf(glog_fd, "%s ", buf);
              v24 = glog_fd;
              v25 = CFStringGetCStringPtr(*v16, 0);
              dprintf(v24, "CCConfigure::configure key is %s\n", v25);
            }

            v26 = *v16;
            TypeID = CFStringGetTypeID();
            if (validCFObjectReference("CCProfileMonitor::getOwnersFromPipesAndStreams", v26, TypeID))
            {
              v28 = *v16++;
              CFSetAddValue(a3, v28);
              if (--Count)
              {
                continue;
              }
            }

            break;
          }
        }

        free(v38);
        v29 = v18;
        goto LABEL_51;
      }

      v33 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "getOwnersFromPipesAndStreams";
          *&buf[12] = 1024;
          *&buf[14] = 572;
          v34 = v33;
LABEL_60:
          _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "getOwnersFromPipesAndStreams";
        *&buf[12] = 1024;
        *&buf[14] = 572;
        v34 = MEMORY[0x277D86220];
        goto LABEL_60;
      }

      if (glog_fd)
      {
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v46 = v36;
        v47 = v36;
        v44 = v36;
        v45 = v36;
        v42 = v36;
        v43 = v36;
        *buf = v36;
        *&buf[16] = v36;
        memset(&v40, 0, sizeof(v40));
        v39 = 0xAAAAAAAAAAAAAAAALL;
        time(&v39);
        localtime_r(&v39, &v40);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%06u memory alloc failed\n", "getOwnersFromPipesAndStreams", 572);
      }

      v29 = v16;
LABEL_51:
      free(v29);
      goto LABEL_52;
    }

    v31 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromPipesAndStreams";
      *&buf[12] = 1024;
      *&buf[14] = 566;
      v32 = v31;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      *buf = 136315394;
      *&buf[4] = "getOwnersFromPipesAndStreams";
      *&buf[12] = 1024;
      *&buf[14] = 566;
      v32 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s:%06u memory alloc failed\n", buf, 0x12u);
LABEL_45:
    if (glog_fd)
    {
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v35;
      v47 = v35;
      v44 = v35;
      v45 = v35;
      v42 = v35;
      v43 = v35;
      *buf = v35;
      *&buf[16] = v35;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u memory alloc failed\n");
    }
  }

LABEL_52:
  v37 = *MEMORY[0x277D85DE8];
}

void ___ZN16CCProfileMonitor21initializeProfilePortEv_block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor got com.apple.ManagedConfiguration.profileListChanged update, calling profileCallback(%d)\n", buf, 8u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *buf = v6;
    v11 = v6;
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor got com.apple.ManagedConfiguration.profileListChanged update, calling profileCallback(%d)\n", a2);
  }

  CFPreferencesFlushCaches();
  CCProfileMonitor::profileCallback(v3, a2);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ZN16CCProfileMonitor21setStreamEventHandlerEv_block_invoke(CCDaemon *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4);
  explicit = atomic_load_explicit((CCDaemon::getInstance(a1) + 304), memory_order_acquire);
  v5 = coreCaptureOsLog;
  if (explicit)
  {
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v6 = v5;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v6 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v6, OS_LOG_TYPE_ERROR, "CCProfileMonitor::setStreamEventHandler CCDaemon::getInstance().isShutdownPending() == true, dropping event and exiting\n", buf, 2u);
LABEL_9:
    if (glog_fd)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v8;
      v34 = v8;
      v31 = v8;
      v32 = v8;
      v29 = v8;
      v30 = v8;
      *buf = v8;
      v28 = v8;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler CCDaemon::getInstance().isShutdownPending() == true, dropping event and exiting\n");
    }

    goto LABEL_20;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = v5;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler Woken up by notifyd.\n", buf, 2u);
LABEL_14:
  if (glog_fd)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v9;
    v34 = v9;
    v31 = v9;
    v32 = v9;
    v29 = v9;
    v30 = v9;
    *buf = v9;
    v28 = v9;
    memset(&v26, 0, sizeof(v26));
    v25 = 0xAAAAAAAAAAAAAAAALL;
    time(&v25);
    localtime_r(&v25, &v26);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler Woken up by notifyd.\n");
  }

  v10 = MEMORY[0x245D683E0](a2);
  if (v10 != MEMORY[0x277D86480])
  {
    if (v10 != MEMORY[0x277D86468])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_2452A3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CCProfileMonitor::setStreamEventHandler eventType unhandled:%@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    value = xpc_dictionary_get_value(a2, *MEMORY[0x277D86430]);
    if (!value)
    {
      goto LABEL_20;
    }

    v13 = value;
    if (MEMORY[0x245D683E0]() != MEMORY[0x277D864C0])
    {
      goto LABEL_20;
    }

    string_ptr = xpc_string_get_string_ptr(v13);
    if (!string_ptr)
    {
      goto LABEL_20;
    }

    v15 = string_ptr;
    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      v17 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler event received:%s\n", buf, 0xCu);
LABEL_32:
    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v18;
      v34 = v18;
      v31 = v18;
      v32 = v18;
      v29 = v18;
      v30 = v18;
      *buf = v18;
      v28 = v18;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler event received:%s\n", v15);
    }

    if (strcmp(v15, "com.apple.ManagedConfiguration.profileListChanged"))
    {
      if (strcmp(v15, "com.apple.MCX._managementStatusChangedForDomains"))
      {
        goto LABEL_20;
      }

      v19 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = v19;
LABEL_49:
          _os_log_impl(&dword_2452A3000, v20, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler calling profileCallback(1)\n", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = MEMORY[0x277D86220];
        goto LABEL_49;
      }

      if (glog_fd)
      {
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v33 = v24;
        v34 = v24;
        v31 = v24;
        v32 = v24;
        v29 = v24;
        v30 = v24;
        *buf = v24;
        v28 = v24;
        memset(&v26, 0, sizeof(v26));
        v25 = 0xAAAAAAAAAAAAAAAALL;
        time(&v25);
        localtime_r(&v25, &v26);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler calling profileCallback(1)\n");
      }

      CCProfileMonitor::profileCallback(v3, 2);
      goto LABEL_20;
    }

    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 0;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 0;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v22, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::setStreamEventHandler event received matching kXPCManagedPrefsName, no action from this handler\n", buf, 2u);
LABEL_45:
    if (glog_fd)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v23;
      v34 = v23;
      v31 = v23;
      v32 = v23;
      v29 = v23;
      v30 = v23;
      *buf = v23;
      v28 = v23;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCProfileMonitor::setStreamEventHandler event received matching kXPCManagedPrefsName, no action from this handler\n");
    }
  }

LABEL_20:
  v11 = *MEMORY[0x277D85DE8];
}

void CCProfileMonitor::ccfree(CCProfileMonitor *this)
{
  CCProfileMonitor::freeResources(this);
  if (this)
  {
    v2 = *(*this + 8);

    v2(this);
  }
}

void CCProfileMonitor::CCProfileMonitor(CCProfileMonitor *this)
{
  *(this + 2) = 1;
  *this = &unk_28583BF40;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
}

{
  *(this + 2) = 1;
  *this = &unk_28583BF40;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
}

void CCProfileMonitor::sendProfileChangeNotification(CCProfileMonitor *this, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::sendProfileChangeNotification profile change notification received\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    *buf = v6;
    v11 = v6;
    memset(&v9, 0, sizeof(v9));
    v8 = 0xAAAAAAAAAAAAAAAALL;
    time(&v8);
    localtime_r(&v8, &v9);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v9);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCProfileMonitor::sendProfileChangeNotification profile change notification received\n");
  }

  CCProfileMonitor::profileCallback(this, a2);
  v7 = *MEMORY[0x277D85DE8];
}

void CCProfileMonitor::applyProfile(CCProfileMonitor *this, const __CFString *a2, const __CFString *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = coreCaptureOsLog;
  if (CCProfileMonitor::fProfileLoaded)
  {
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = CFStringGetCStringPtr(a2, 0);
        *&buf[12] = 2080;
        *&buf[14] = CFStringGetCStringPtr(a3, 0);
        v7 = v5;
LABEL_10:
        _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCProfileMonitor::applyProfile owner:%s, pipe:%s\n", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = CFStringGetCStringPtr(a2, 0);
      *&buf[12] = 2080;
      *&buf[14] = CFStringGetCStringPtr(a3, 0);
      v7 = MEMORY[0x277D86220];
      goto LABEL_10;
    }

    if (glog_fd)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      v21 = v9;
      v22 = v9;
      *buf = v9;
      *&buf[16] = v9;
      memset(&v19, 0, sizeof(v19));
      v18 = 0xAAAAAAAAAAAAAAAALL;
      time(&v18);
      localtime_r(&v18, &v19);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
      dprintf(glog_fd, "%s ", buf);
      v10 = glog_fd;
      CStringPtr = CFStringGetCStringPtr(a2, 0);
      v12 = CFStringGetCStringPtr(a3, 0);
      dprintf(v10, "CCProfileMonitor::applyProfile owner:%s, pipe:%s\n", CStringPtr, v12);
    }

    if (!pthread_mutex_lock((this + 16)))
    {
      CCProfileMonitor::applyConfiguration(this, a2, a3);
      pthread_mutex_unlock((this + 16));
    }

    goto LABEL_18;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    *&buf[4] = CFStringGetCStringPtr(a2, 0);
    *&buf[12] = 2080;
    *&buf[14] = CFStringGetCStringPtr(a3, 0);
    v8 = v5;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    *&buf[4] = CFStringGetCStringPtr(a2, 0);
    *&buf[12] = 2080;
    *&buf[14] = CFStringGetCStringPtr(a3, 0);
    v8 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCProfileMonitor::applyProfile fProfileLoaded is not set, not applying owner:%s, pipe:%s\n", buf, 0x16u);
LABEL_16:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v13;
    v26 = v13;
    v23 = v13;
    v24 = v13;
    v21 = v13;
    v22 = v13;
    *buf = v13;
    *&buf[16] = v13;
    memset(&v19, 0, sizeof(v19));
    v18 = 0xAAAAAAAAAAAAAAAALL;
    time(&v18);
    localtime_r(&v18, &v19);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
    dprintf(glog_fd, "%s ", buf);
    v14 = glog_fd;
    v15 = CFStringGetCStringPtr(a2, 0);
    v16 = CFStringGetCStringPtr(a3, 0);
    dprintf(v14, "CCProfileMonitor::applyProfile fProfileLoaded is not set, not applying owner:%s, pipe:%s\n", v15, v16);
  }

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
}

BOOL CCProfileMonitor::isProfileInstalledForOwner(CCProfileMonitor *this, const __CFString *a2)
{
  result = 0;
  if (a2)
  {
    v4 = *(this + 15);
    if (v4)
    {
      return CFSetContainsValue(v4, a2) != 0;
    }
  }

  return result;
}

uint64_t CCRawFormatter::initWithRegistryEntry(CCRawFormatter *this, io_object_t object)
{
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

uint64_t CCRawFormatter::writeLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v9 = 0;
    if (!a5)
    {
      return v9;
    }

    goto LABEL_3;
  }

  v9 = (*(*a1 + 112))(a1, a3, a4);
  if (a5)
  {
LABEL_3:
    v9 += (*(*a1 + 112))(a1, a5, a6);
  }

  return v9;
}

uint64_t CCServiceMonitor::initWithDictionaryAndQueue(CCServiceMonitor *this, CFTypeRef cf, NSObject *a3)
{
  *(this + 20) = 0;
  v5 = (this + 80);
  *(this + 11) = 0;
  v6 = (this + 88);
  *(this + 12) = 0;
  v7 = (this + 96);
  *(this + 104) = 0;
  *(this + 14) = cf;
  *(this + 12) = 0;
  CFRetain(cf);
  v8 = (v5 - 16);
  std::recursive_mutex::lock(v5 - 1);
  if (MEMORY[0x245D677E0](0, v5))
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    a3 = MEMORY[0x277D85CD0];
  }

  v9 = IONotificationPortCreate(*v5);
  *v6 = v9;
  if (!v9 || (IONotificationPortSetDispatchQueue(v9, a3), CFRetain(*(this + 14)), IOServiceAddMatchingNotification(*(this + 11), "IOServicePublish", *(this + 14), CCServiceMonitor::servicePublishCallback, this, v7)) || (CFRetain(*(this + 14)), IOServiceAddMatchingNotification(*(this + 11), "IOServiceTerminate", *(this + 14), CCServiceMonitor::serviceTerminateCallback, this, v5 + 5)))
  {
LABEL_9:
    CCServiceMonitor::freeresources(this);
    v10 = 0;
  }

  else
  {
    v10 = 1;
    *(this + 104) = 1;
  }

  std::recursive_mutex::unlock(v8);
  return v10;
}

void CCServiceMonitor::freeresources(CCServiceMonitor *this)
{
  std::recursive_mutex::lock((this + 16));
  v2 = *(this + 24);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 24) = 0;
  }

  v3 = *(this + 25);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 25) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(this + 11) = 0;
  }

  v5 = *(this + 20);
  if (v5)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v5);
    *(this + 20) = 0;
  }

  v6 = *(this + 14);
  if (v6)
  {
    CFRelease(v6);
    *(this + 14) = 0;
  }

  std::recursive_mutex::unlock((this + 16));
}

void CCServiceMonitor::serviceTerminateCallback(CCServiceMonitor *this, io_iterator_t a2)
{
  if (this)
  {
    CCServiceMonitor::servicesTerminated(this, a2);
  }
}

void CCServiceMonitor::servicesTerminated(CCServiceMonitor *this, io_iterator_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((this + 16));
  if (*(this + 25))
  {
    *(this + 12) = 1;
    if (atomic_load_explicit((CCDaemon::getInstance(v4) + 304), memory_order_acquire))
    {
LABEL_3:
      *(this + 12) = 0;
      goto LABEL_4;
    }

    while (1)
    {
      v6 = IOIteratorNext(a2);
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 136315650;
        *&buf[4] = "servicesTerminated";
        *&buf[12] = 1024;
        *&buf[14] = 212;
        *&buf[18] = 1024;
        *&buf[20] = v6;
        v8 = v7;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 136315650;
        *&buf[4] = "servicesTerminated";
        *&buf[12] = 1024;
        *&buf[14] = 212;
        *&buf[18] = 1024;
        *&buf[20] = v6;
        v8 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d registry entry:%u", buf, 0x18u);
LABEL_12:
      if (glog_fd)
      {
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v17 = v9;
        v18 = v9;
        v15 = v9;
        v16 = v9;
        v13 = v9;
        v14 = v9;
        *buf = v9;
        *&buf[16] = v9;
        memset(&v11, 0, sizeof(v11));
        v10 = 0xAAAAAAAAAAAAAAAALL;
        time(&v10);
        localtime_r(&v10, &v11);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%d registry entry:%u", "servicesTerminated", 212, v6);
      }

      (*(*this + 64))(this, v6);
      IOObjectRelease(v6);
    }
  }

LABEL_4:
  std::recursive_mutex::unlock((this + 16));
  v5 = *MEMORY[0x277D85DE8];
}

void CCServiceMonitor::servicePublishCallback(CCServiceMonitor *this, io_iterator_t a2)
{
  if (this)
  {
    CCServiceMonitor::servicesPublished(this, a2);
  }
}

void CCServiceMonitor::servicesPublished(CCServiceMonitor *this, io_iterator_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((this + 16));
  if (*(this + 24))
  {
    *(this + 12) = 1;
    if ((atomic_load_explicit((CCDaemon::getInstance(v4) + 304), memory_order_acquire) & 1) == 0)
    {
      usleep(0x186A0u);
      while (1)
      {
        v7 = IOIteratorNext(a2);
        v8 = v7;
        if (!v7)
        {
          break;
        }

        Instance = CCDaemon::getInstance(v7);
        if ((atomic_load_explicit(Instance + 304, memory_order_acquire) & 1) == 0)
        {
          CCDaemon::getInstance(Instance);
          if (atomic_load_explicit(CCDaemon::initialized, memory_order_acquire))
          {
            (*(*this + 56))(this, v8);
          }
        }

        IOObjectRelease(v8);
      }

      goto LABEL_17;
    }

    v5 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v6 = v5;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v6 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCServiceMonitor::servicesPublished ignoring processing servicePublished due to isShutdownPending", buf, 2u);
LABEL_15:
    if (glog_fd)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v20 = v10;
      v21 = v10;
      v18 = v10;
      v19 = v10;
      v16 = v10;
      v17 = v10;
      *buf = v10;
      v15 = v10;
      memset(&v13, 0, sizeof(v13));
      v12 = 0xAAAAAAAAAAAAAAAALL;
      time(&v12);
      localtime_r(&v12, &v13);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCServiceMonitor::servicesPublished ignoring processing servicePublished due to isShutdownPending");
    }

LABEL_17:
    *(this + 12) = 0;
  }

  std::recursive_mutex::unlock((this + 16));
  v11 = *MEMORY[0x277D85DE8];
}

void CCServiceMonitor::servicesStopListening(CCServiceMonitor *this)
{
  std::recursive_mutex::lock((this + 16));
  v2 = *(this + 24);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 24) = 0;
  }

  v3 = *(this + 25);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 25) = 0;
  }

  std::recursive_mutex::unlock((this + 16));
}

void CCServiceMonitor::ccfree(CCServiceMonitor *this)
{
  v6[5] = *MEMORY[0x277D85DE8];
  CCServiceMonitor::freeresources(this);
  Instance = CCDaemon::getInstance(v2);
  if (*(Instance + 320))
  {
    v4 = *(Instance + 320);
  }

  else
  {
    v4 = MEMORY[0x277D85CD0];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZN16CCServiceMonitor6ccfreeEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_1799;
  v6[4] = this;
  dispatch_async(v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN16CCServiceMonitor6ccfreeEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CCServiceMonitor::CCServiceMonitor(CCServiceMonitor *this)
{
  *(this + 2) = 1;
  *this = &unk_28583C048;
  MEMORY[0x245D67A30](this + 16);
}

void CCServiceMonitor::scanServices(CCServiceMonitor *this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!*(this + 20))
  {
LABEL_26:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(this + 104) != 1)
  {
    existing = 0;
    v4 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v5 = CFGetRetainCount(*(this + 14));
      *buf = 134217984;
      *&buf[4] = v5;
      v6 = v4;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v7 = CFGetRetainCount(*(this + 14));
      *buf = 134217984;
      *&buf[4] = v7;
      v6 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCServiceMonitor::scanServices fMatching Dictionary Retain count(1) is %ld\n", buf, 0xCu);
LABEL_12:
    if (glog_fd)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28 = v8;
      v29 = v8;
      v26 = v8;
      v27 = v8;
      v24 = v8;
      v25 = v8;
      *buf = v8;
      v23 = v8;
      memset(&v20, 0, sizeof(v20));
      v19 = 0xAAAAAAAAAAAAAAAALL;
      time(&v19);
      localtime_r(&v19, &v20);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
      dprintf(glog_fd, "%s ", buf);
      v9 = glog_fd;
      v10 = CFGetRetainCount(*(this + 14));
      dprintf(v9, "CCServiceMonitor::scanServices fMatching Dictionary Retain count(1) is %ld\n", v10);
    }

    if (IOServiceGetMatchingServices(*(this + 20), *(this + 14), &existing))
    {
      goto LABEL_24;
    }

    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = CFGetRetainCount(*(this + 14));
        *buf = 134217984;
        *&buf[4] = v12;
        v13 = v11;
LABEL_20:
        _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "CCServiceMonitor::scanServices fMatching Dictionary Retain count(2) is %ld\n", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = CFGetRetainCount(*(this + 14));
      *buf = 134217984;
      *&buf[4] = v14;
      v13 = MEMORY[0x277D86220];
      goto LABEL_20;
    }

    if (glog_fd)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28 = v15;
      v29 = v15;
      v26 = v15;
      v27 = v15;
      v24 = v15;
      v25 = v15;
      *buf = v15;
      v23 = v15;
      memset(&v20, 0, sizeof(v20));
      v19 = 0xAAAAAAAAAAAAAAAALL;
      time(&v19);
      localtime_r(&v19, &v20);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
      dprintf(glog_fd, "%s ", buf);
      v16 = glog_fd;
      v17 = CFGetRetainCount(*(this + 14));
      dprintf(v16, "CCServiceMonitor::scanServices fMatching Dictionary Retain count(2) is %ld\n", v17);
    }

    CCServiceMonitor::servicesPublished(this, existing);
LABEL_24:
    if (existing)
    {
      IOObjectRelease(existing);
    }

    goto LABEL_26;
  }

  *(this + 104) = 0;
  CCServiceMonitor::servicesPublished(this, *(this + 24));
  v2 = *(this + 25);
  v3 = *MEMORY[0x277D85DE8];

  CCServiceMonitor::servicesTerminated(this, v2);
}

uint64_t CCTap::initWithRegistryEntry(CCTap *this, io_object_t object)
{
  v18 = *MEMORY[0x277D85DE8];
  *(this + 5) = 0;
  IOObjectRetain(object);
  *(this + 4) = object;
  v4 = *MEMORY[0x277CBECE8];
  *(this + 5) = IORegistryEntryCreateCFProperty(object, @"Owner", *MEMORY[0x277CBECE8], 0);
  *(this + 6) = IORegistryEntryCreateCFProperty(object, @"Name", v4, 0);
  *(this + 11) = IORegistryEntryCreateCFProperty(object, @"DirectoryName", v4, 0);
  *(this + 13) = 0;
  *(this + 14) = 0;
  v16 = 0u;
  v17 = 0u;
  *buffer = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v5 = *(this + 6);
  if (v5 && CFStringGetCString(v5, buffer, 64, 0) && (v6 = *(this + 5)) != 0 && CFStringGetCString(v6, v10, 64, 0))
  {
    snprintf(this + 120, 0x40uLL, "%s:%s", v10, buffer);
  }

  else
  {
    strcpy(this + 120, "com.apple.corecaptured.CCTap");
  }

  pthread_setname_np(this + 120);
  (*(*this + 144))(this);
  *(this + 5) = 1;
  v7 = *(this + 8);
  if (v7)
  {
    pthread_mutex_lock((v7 + 16));
    *(this + 56) = 0;
    pthread_mutex_unlock((*(this + 8) + 16));
  }

  else
  {
    *(this + 56) = 0;
  }

  *(this + 48) = 0;
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t CCTap::setQuiesced(uint64_t this)
{
  if (*(this + 96) == 1)
  {
    *(this + 96) = 256;
  }

  return this;
}

uint64_t CCTap::resumeFromQuiesced(uint64_t this)
{
  if ((*(this + 97) & 1) != 0 || *(this + 96) == 1)
  {
    *(this + 97) = 0;
    this = *(this + 64);
    if (this)
    {
      return (*(*this + 80))();
    }
  }

  return this;
}

uint64_t CCTap::prepareQuiescing(CCTap *this)
{
  *(this + 96) = 1;
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t CCTap::ccfree(CCTap *this)
{
  result = CCTap::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCTap::freeResources(CCTap *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v3 = *(this + 4);
    *buf = 136315650;
    *&buf[4] = "freeResources";
    *&buf[12] = 1024;
    *&buf[14] = 151;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    v4 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v5 = *(this + 4);
    *buf = 136315650;
    *&buf[4] = "freeResources";
    *&buf[12] = 1024;
    *&buf[14] = 151;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    v4 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "CCTap::%s:%d entry:%u", buf, 0x18u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v6;
    v25 = v6;
    v22 = v6;
    v23 = v6;
    v20 = v6;
    v21 = v6;
    *buf = v6;
    *&buf[16] = v6;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCTap::%s:%d entry:%u", "freeResources", 151, *(this + 4));
  }

  v7 = *(this + 8);
  if (v7)
  {
    pthread_mutex_lock((v7 + 16));
    *(this + 56) = 1;
    pthread_mutex_unlock((*(this + 8) + 16));
    v8 = *(this + 8);
    if (v8)
    {
      v9 = (*(*v8 + 104))(v8);
      dispatch_sync(v9, &__block_literal_global_1858);
      (*(**(this + 8) + 48))(*(this + 8));
      *(this + 8) = 0;
    }
  }

  else
  {
    *(this + 56) = 1;
  }

  v10 = *(this + 10);
  if (v10)
  {
    (*(*v10 + 48))(v10);
    *(this + 10) = 0;
  }

  v11 = *(this + 4);
  if (v11)
  {
    v11[30] = 3;
    (*(*v11 + 88))(v11);
    (*(**(this + 4) + 48))(*(this + 4));
    *(this + 4) = 0;
  }

  CCTap::freeDirPathArray(this);
  v12 = *(this + 5);
  if (v12)
  {
    CFRelease(v12);
    *(this + 5) = 0;
  }

  v13 = *(this + 6);
  if (v13)
  {
    CFRelease(v13);
    *(this + 6) = 0;
  }

  v14 = *(this + 11);
  if (v14)
  {
    CFRelease(v14);
    *(this + 11) = 0;
  }

  result = *(this + 4);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 4) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void CCTap::freeDirPathArray(CCTap *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    v3 = *(this + 14);
    if (v3 < 1)
    {
      goto LABEL_9;
    }

    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(this + 13);
      v7 = *(v6 + 8 * v4);
      if (v7)
      {
        CFRelease(v7);
        v3 = *(this + 14);
        *(*(this + 13) + 8 * v4) = 0;
        v6 = *(this + 13);
      }

      *(v6 + 8 * v4) = 0;
      v4 = v5;
    }

    while (v3 > v5++);
    v2 = *(this + 13);
    if (v2)
    {
LABEL_9:
      free(v2);
      *(this + 13) = 0;
    }

    *(this + 14) = 0;
  }
}

uint64_t CCTap::withRegistryEntry(CCTap *this)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(this, @"PipeType", *MEMORY[0x277CBECE8], 0);
  valuePtr = -86;
  v4 = IORegistryEntryCreateCFProperty(this, @"Owner", v2, 0);
  v5 = IORegistryEntryCreateCFProperty(this, @"Name", v2, 0);
  CFNumberGetValue(CFProperty, kCFNumberSInt8Type, &valuePtr);
  if (v5)
  {
    if (v4)
    {
      if (CFProperty)
      {
        v6 = valuePtr;
        v7 = coreCaptureOsLog;
        if (valuePtr < 2)
        {
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            if (v6 == 1)
            {
              v8 = "CCDataTap";
            }

            else
            {
              v8 = "CCLogTap";
            }

            CStringPtr = CFStringGetCStringPtr(v4, 0);
            v10 = CFStringGetCStringPtr(v5, 0);
            *buf = 136316418;
            *&buf[4] = "withRegistryEntry";
            *&buf[12] = 1024;
            *&buf[14] = 63;
            *&buf[18] = 2080;
            *&buf[20] = v8;
            *&buf[28] = 1024;
            *&buf[30] = this;
            *&buf[34] = 2080;
            *&buf[36] = CStringPtr;
            *&buf[44] = 2080;
            *&buf[46] = v10;
            v11 = v7;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            if (v6 == 1)
            {
              v12 = "CCDataTap";
            }

            else
            {
              v12 = "CCLogTap";
            }

            v13 = CFStringGetCStringPtr(v4, 0);
            v14 = CFStringGetCStringPtr(v5, 0);
            *buf = 136316418;
            *&buf[4] = "withRegistryEntry";
            *&buf[12] = 1024;
            *&buf[14] = 63;
            *&buf[18] = 2080;
            *&buf[20] = v12;
            *&buf[28] = 1024;
            *&buf[30] = this;
            *&buf[34] = 2080;
            *&buf[36] = v13;
            *&buf[44] = 2080;
            *&buf[46] = v14;
            v11 = MEMORY[0x277D86220];
          }

          _os_log_impl(&dword_2452A3000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d %s::withRegistryEntry entry:%u Owner:%s Name:%s", buf, 0x36u);
LABEL_17:
          if (glog_fd)
          {
            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v43 = v15;
            v44 = v15;
            v41 = v15;
            v42 = v15;
            *&buf[32] = v15;
            *&buf[48] = v15;
            *buf = v15;
            *&buf[16] = v15;
            memset(&v38, 0, sizeof(v38));
            v37 = 0xAAAAAAAAAAAAAAAALL;
            time(&v37);
            localtime_r(&v37, &v38);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
            dprintf(glog_fd, "%s ", buf);
            v16 = glog_fd;
            if (valuePtr == 1)
            {
              v17 = "CCDataTap";
            }

            else
            {
              v17 = "CCLogTap";
            }

            v18 = CFStringGetCStringPtr(v4, 0);
            v19 = CFStringGetCStringPtr(v5, 0);
            dprintf(v16, "%s:%d %s::withRegistryEntry entry:%u Owner:%s Name:%s", "withRegistryEntry", 63, v17, this, v18, v19);
          }

          if (!valuePtr)
          {
            CCLogTap::withRegistryEntry(this);
          }

          if (valuePtr == 1)
          {
            CCDataTap::withRegistryEntry(this);
          }

          v20 = valuePtr;
          v21 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }

            *buf = 67109120;
            *&buf[4] = v20;
            v22 = v21;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }

            *buf = 67109120;
            *&buf[4] = v20;
            v22 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCPipe::withOwnerNameCapacity Unsupported pipe type(%d)\n", buf, 8u);
LABEL_30:
          if (glog_fd)
          {
            *&v23 = 0xAAAAAAAAAAAAAAAALL;
            *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v43 = v23;
            v44 = v23;
            v41 = v23;
            v42 = v23;
            *&buf[32] = v23;
            *&buf[48] = v23;
            *buf = v23;
            *&buf[16] = v23;
            memset(&v38, 0, sizeof(v38));
            v37 = 0xAAAAAAAAAAAAAAAALL;
            time(&v37);
            localtime_r(&v37, &v38);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCPipe::withOwnerNameCapacity Unsupported pipe type(%d)\n");
          }

LABEL_32:
          CFRelease(v4);
LABEL_33:
          CFRelease(v5);
          goto LABEL_34;
        }

        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 136315906;
          *&buf[4] = "withRegistryEntry";
          *&buf[12] = 1024;
          *&buf[14] = 60;
          *&buf[18] = 1024;
          *&buf[20] = this;
          *&buf[24] = 1024;
          *&buf[26] = v6;
          v32 = v7;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 136315906;
          *&buf[4] = "withRegistryEntry";
          *&buf[12] = 1024;
          *&buf[14] = 60;
          *&buf[18] = 1024;
          *&buf[20] = this;
          *&buf[24] = 1024;
          *&buf[26] = v6;
          v32 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s:%d CCPipe::withOwnerNameCapacity Registry entry:%u Unsupported pipe type(%d)\n", buf, 0x1Eu);
LABEL_64:
        if (glog_fd)
        {
          *&v36 = 0xAAAAAAAAAAAAAAAALL;
          *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v43 = v36;
          v44 = v36;
          v41 = v36;
          v42 = v36;
          *&buf[32] = v36;
          *&buf[48] = v36;
          *buf = v36;
          *&buf[16] = v36;
          memset(&v38, 0, sizeof(v38));
          v37 = 0xAAAAAAAAAAAAAAAALL;
          time(&v37);
          localtime_r(&v37, &v38);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s:%d CCPipe::withOwnerNameCapacity Registry entry:%u Unsupported pipe type(%d)\n");
        }

        goto LABEL_32;
      }

      v30 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_61;
        }

        *buf = 136315650;
        *&buf[4] = "withRegistryEntry";
        *&buf[12] = 1024;
        *&buf[14] = 56;
        *&buf[18] = 1024;
        *&buf[20] = this;
        v31 = v30;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_61;
        }

        *buf = 136315650;
        *&buf[4] = "withRegistryEntry";
        *&buf[12] = 1024;
        *&buf[14] = 56;
        *&buf[18] = 1024;
        *&buf[20] = this;
        v31 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "%s:%d CCTap::withRegistryEntry Registry entry:%u not found\n", buf, 0x18u);
LABEL_61:
      if (glog_fd)
      {
        *&v35 = 0xAAAAAAAAAAAAAAAALL;
        *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v43 = v35;
        v44 = v35;
        v41 = v35;
        v42 = v35;
        *&buf[32] = v35;
        *&buf[48] = v35;
        *buf = v35;
        *&buf[16] = v35;
        memset(&v38, 0, sizeof(v38));
        v37 = 0xAAAAAAAAAAAAAAAALL;
        time(&v37);
        localtime_r(&v37, &v38);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "%s:%d CCTap::withRegistryEntry Registry entry:%u not found\n");
      }

      goto LABEL_32;
    }

    v28 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 136315650;
      *&buf[4] = "withRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      *&buf[18] = 1024;
      *&buf[20] = this;
      v29 = v28;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 136315650;
      *&buf[4] = "withRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      *&buf[18] = 1024;
      *&buf[20] = this;
      v29 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "%s:%d CCTap::withRegistryEntry Registry entry:%u not found\n", buf, 0x18u);
LABEL_57:
    if (glog_fd)
    {
      *&v34 = 0xAAAAAAAAAAAAAAAALL;
      *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v34;
      v44 = v34;
      v41 = v34;
      v42 = v34;
      *&buf[32] = v34;
      *&buf[48] = v34;
      *buf = v34;
      *&buf[16] = v34;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%d CCTap::withRegistryEntry Registry entry:%u not found\n", "withRegistryEntry", 55, this);
    }

    goto LABEL_33;
  }

  v26 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136315650;
    *&buf[4] = "withRegistryEntry";
    *&buf[12] = 1024;
    *&buf[14] = 54;
    *&buf[18] = 1024;
    *&buf[20] = this;
    v27 = v26;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136315650;
    *&buf[4] = "withRegistryEntry";
    *&buf[12] = 1024;
    *&buf[14] = 54;
    *&buf[18] = 1024;
    *&buf[20] = this;
    v27 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v27, OS_LOG_TYPE_ERROR, "%s:%d CCTap::withRegistryEntry Registry entry:%u not found\n", buf, 0x18u);
LABEL_52:
  if (glog_fd)
  {
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v33;
    v44 = v33;
    v41 = v33;
    v42 = v33;
    *&buf[32] = v33;
    *&buf[48] = v33;
    *buf = v33;
    *&buf[16] = v33;
    memset(&v38, 0, sizeof(v38));
    v37 = 0xAAAAAAAAAAAAAAAALL;
    time(&v37);
    localtime_r(&v37, &v38);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s:%d CCTap::withRegistryEntry Registry entry:%u not found\n", "withRegistryEntry", 54, this);
  }

  v5 = v4;
  if (v4)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  v24 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CCTap::runDrainThread(CCTap *this, void *a2)
{
  pthread_setname_np(this + 120);
  (*(*this + 144))(this);
  return 0;
}

uint64_t CCTap::setIOReportDumpQueue(uint64_t result, uint64_t a2)
{
  *(result + 80) = a2;
  if (a2)
  {
    return (*(*a2 + 40))(a2);
  }

  return result;
}

uint64_t CCTap::findWithOwnerAndPipe(CFStringRef *this, const __CFString *a2, const __CFString *a3)
{
  if (CFStringCompare(this[5], a2, 0))
  {
    v6 = CFStringCompare(@"*", a2, 0) == kCFCompareEqualTo;
  }

  else
  {
    v6 = 1;
  }

  if (CFStringCompare(this[6], a3, 0))
  {
    v7 = CFStringCompare(@"*", a3, 0) == kCFCompareEqualTo;
  }

  else
  {
    v7 = 1;
  }

  return v6 & v7;
}

const void *NSJSONSerializationCreateDataWithJSONObject(const void *a1, int a2, void *a3)
{
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a1 options:a2 | 1u error:0];
  CFRetain(v3);
  return v3;
}

uint64_t CCTextFormatter::initWithRegistryEntry(CCTextFormatter *this, io_registry_entry_t entry)
{
  *(this + 22) = IORegistryEntryCreateCFProperty(entry, @"LogIdentifier", *MEMORY[0x277CBECE8], 0);
  *(this + 20) = 0;
  *(this + 42) = 0;
  IOObjectRetain(entry);
  *(this + 3) = entry;
  return 1;
}

uint64_t CCTextFormatter::writeLog(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = CCTextFormatter::writeLogHeader(a1, a2);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 112))(a1, a3, a4) + v11;
  if (a5)
  {
    v12 += (*(*a1 + 112))(a1, a5, a6);
    if (!a6)
    {
      return v12;
    }

    v13 = a5 + a6;
  }

  else
  {
    if (!a4)
    {
      return v12;
    }

    v13 = a3 + a4;
  }

  if (*(v13 - 1) != 10)
  {
    v12 += (*(*a1 + 112))(a1, "\n", 1);
  }

  return v12;
}

uint64_t CCTextFormatter::writeLogHeader(char *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = *(a2 + 8);
  memset(v32, 170, 20);
  memset(&v13, 0, sizeof(v13));
  localtime_r(&v14, &v13);
  strftime(v32, 0x14uLL, "%b %d %H:%M:%S", &v13);
  memset(v31, 170, sizeof(v31));
  strftime(v31, 0x10uLL, "%z", &v13);
  v4 = *(a2 + 28);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *buffer = 0u;
  v16 = 0u;
  CCTextFormatter::getLogIdentifier(a1, HIBYTE(v4), buffer);
  if ((v4 & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = (0x5344494E57434145uLL >> (8 * *(a2 + 27))) & 0x5F;
    v12 = *(a2 + 6);
    v6 = snprintf(a1 + 32, 0x80uLL, "%s.%06llu %s %06llu.%06llu %s<%c>[%u] ", v32, *(a2 + 16), v31);
  }

  else
  {
    v7 = (0x5344494E57434145uLL >> (8 * *(a2 + 27))) & 0x5F;
    v11 = *(a2 + 6);
    v6 = snprintf(a1 + 32, 0x80uLL, "%s.%06llu %s %s<%c>[%u] ", v32);
  }

  v8 = v6;
  (*(*a1 + 112))(a1, a1 + 32, v6);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t CCTextFormatter::getLogIdentifier(CCTextFormatter *this, int a2, char *buffer)
{
  v6 = *(this + 20);
  if ((v6 || (CCTextFormatter::buildLogIdentTable(this), (v6 = *(this + 20)) != 0)) && (v7 = *(this + 42), v7))
  {
    v8 = (v6 + 8);
    while (1)
    {
      if (*v8 == a2)
      {
        v9 = *(v8 - 1);
        if (v9)
        {
          break;
        }
      }

      v8 += 16;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = *(this + 22);
  }

  return CFStringGetCString(v9, buffer, 256, 0);
}

unint64_t CCTextFormatter::getLogLevelShortName(uint64_t a1, unsigned int a2)
{
  v2 = 0x5344494E57434145uLL >> (8 * a2);
  if (a2 >= 8)
  {
    LOBYTE(v2) = 45;
  }

  return v2 & 0x7F;
}

BOOL CCTextFormatter::buildLogIdentTable(CFStringRef *this)
{
  v65 = *MEMORY[0x277D85DE8];
  iterator = -1431655766;
  CCTextFormatter::freeStreamTable(this);
  MEMORY[0x245D67870](*(this + 3), "IOService", &iterator);
  v2 = iterator;
  v3 = MEMORY[0x277CBECE8];
  v4 = 0;
  if (iterator)
  {
    v5 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v6 = IOIteratorNext(v2);
      if (!v6)
      {
        break;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v6, @"Name", v5, 0);
      if (CFProperty)
      {
        ++v4;
        CFRelease(CFProperty);
      }

      v2 = iterator;
      if (!iterator)
      {
        goto LABEL_10;
      }
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }
  }

LABEL_10:
  v8 = (v4 + 1);
  *(this + 42) = v8;
  v9 = malloc_type_calloc(v8, 0x10uLL, 0x1060040E5A1EACFuLL);
  v10 = v9;
  this[20] = v9;
  if (!v9)
  {
    v12 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      LOWORD(buffer) = 0;
      v13 = v12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      LOWORD(buffer) = 0;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCTextFormatter::buildLogIdentTable -- alloc failed\n", &buffer, 2u);
LABEL_20:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v55 = v16;
      v56 = v16;
      v53 = v16;
      v54 = v16;
      v51 = v16;
      v52 = v16;
      buffer = v16;
      v50 = v16;
      memset(v44, 0, 56);
      *&v42.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v42.tm_sec);
      localtime_r(&v42.tm_sec, v44);
      strftime(&buffer, 0x80uLL, "%b %d %H:%M:%S", v44);
      dprintf(glog_fd, "%s ", &buffer);
      dprintf(glog_fd, "CCTextFormatter::buildLogIdentTable -- alloc failed\n");
    }

    goto LABEL_47;
  }

  LOBYTE(v9->info) = 0;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63 = v11;
  v64 = v11;
  v61 = v11;
  v62 = v11;
  v59 = v11;
  v60 = v11;
  v57 = v11;
  v58 = v11;
  v55 = v11;
  v56 = v11;
  v53 = v11;
  v54 = v11;
  v51 = v11;
  v52 = v11;
  buffer = v11;
  v50 = v11;
  if (CFStringGetCString(this[22], &buffer, 256, 0))
  {
    this[20]->isa = CFStringCreateWithCString(*v3, &buffer, 0);
    goto LABEL_25;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v44 = 0;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v44 = 0;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCTextFormatter::buildLogIdentTable -- alloc failed\n", v44, 2u);
LABEL_23:
  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47 = v17;
    v48 = v17;
    v45 = v17;
    v46 = v17;
    *&v44[32] = v17;
    *&v44[48] = v17;
    *v44 = v17;
    *&v44[16] = v17;
    memset(&v42, 0, sizeof(v42));
    v41 = 0xAAAAAAAAAAAAAAAALL;
    time(&v41);
    localtime_r(&v41, &v42);
    strftime(v44, 0x80uLL, "%b %d %H:%M:%S", &v42);
    dprintf(glog_fd, "%s ", v44);
    dprintf(glog_fd, "CCTextFormatter::buildLogIdentTable -- alloc failed\n");
  }

LABEL_25:
  MEMORY[0x245D67870](*(this + 3), "IOService", &iterator);
  v18 = iterator;
  if (iterator)
  {
    v19 = 1;
    v20 = *v3;
    v21 = @"LogIdentifier";
    v22 = 0x27EE11000uLL;
    while (1)
    {
      if (v19 >= *(this + 42))
      {
LABEL_46:
        IOObjectRelease(v18);
        goto LABEL_47;
      }

      v23 = IOIteratorNext(v18);
      if (!v23)
      {
        v18 = iterator;
        if (!iterator)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v24 = v23;
      v25 = IORegistryEntryCreateCFProperty(v23, @"Id", v20, 0);
      valuePtr = 0;
      if (v25)
      {
        break;
      }

LABEL_41:
      v18 = iterator;
      if (!iterator)
      {
        goto LABEL_47;
      }
    }

    v26 = v25;
    CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
    v27 = this[20] + 16 * v19;
    *(v27 + 8) = valuePtr;
    *v27 = 0;
    v28 = IORegistryEntryCreateCFProperty(v24, v21, v20, 0);
    if (!v28)
    {
LABEL_40:
      CFRelease(v26);
      ++v19;
      goto LABEL_41;
    }

    v29 = v28;
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v30;
    v64 = v30;
    v61 = v30;
    v62 = v30;
    v59 = v30;
    v60 = v30;
    v57 = v30;
    v58 = v30;
    v55 = v30;
    v56 = v30;
    v53 = v30;
    v54 = v30;
    v51 = v30;
    v52 = v30;
    buffer = v30;
    v50 = v30;
    if (CFStringGetCString(v28, &buffer, 256, 0))
    {
      *(&this[20]->isa + 2 * v19) = CFStringCreateWithCString(v20, &buffer, 0);
LABEL_39:
      CFRelease(v29);
      goto LABEL_40;
    }

    v31 = v10;
    v32 = v21;
    v33 = v22;
    v34 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *v44 = 0;
      v35 = v34;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *v44 = 0;
      v35 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v35, OS_LOG_TYPE_ERROR, "CCTextFormatter::buildLogIdentTable -- alloc failed\n", v44, 2u);
LABEL_37:
    v22 = v33;
    v36 = *(v33 + 2856);
    v21 = v32;
    v10 = v31;
    if (v36)
    {
      *&v37 = 0xAAAAAAAAAAAAAAAALL;
      *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v37;
      v48 = v37;
      v45 = v37;
      v46 = v37;
      *&v44[32] = v37;
      *&v44[48] = v37;
      *v44 = v37;
      *&v44[16] = v37;
      memset(&v42, 0, sizeof(v42));
      v41 = 0xAAAAAAAAAAAAAAAALL;
      time(&v41);
      localtime_r(&v41, &v42);
      strftime(v44, 0x80uLL, "%b %d %H:%M:%S", &v42);
      dprintf(*(v22 + 2856), "%s ", v44);
      dprintf(*(v22 + 2856), "CCTextFormatter::buildLogIdentTable -- alloc failed\n");
    }

    goto LABEL_39;
  }

LABEL_47:
  result = v10 != 0;
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void CCTextFormatter::freeStreamTable(CCTextFormatter *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *(this + 42);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[v4])
        {
          CFRelease(*&v2[v4]);
          v2 = *(this + 20);
          *&v2[v4] = 0;
          v3 = *(this + 42);
        }

        *&v2[v4] = 0;
        v4 += 16;
      }
    }

    free(v2);
    *(this + 20) = 0;
  }
}

uint64_t CCTextFormatter::ccfree(CCTextFormatter *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    CFRelease(v2);
    *(this + 22) = 0;
  }

  CCTextFormatter::freeStreamTable(this);

  return CCFormatter::ccfree(this);
}

uint64_t CCIOReportDumpQueue::ccfree(CCIOReportDumpQueue *this)
{
  CCIOReportDumpQueue::stopProcessorThread(this);
  while (1)
  {
    v2 = CCIOReportDumpQueue::dequeue(this);
    if (!v2)
    {
      break;
    }

    v3 = v2;
    IOObjectRelease(*(v2 + 512));
    MEMORY[0x245D67A60](v3, 0x1020C404FABDE88);
  }

  pthread_cond_destroy((this + 104));
  result = pthread_mutex_destroy((this + 40));
  if (this)
  {
    v5 = *(*this + 8);

    return v5(this);
  }

  return result;
}

uint64_t CCIOReportDumpQueue::stopProcessorThread(CCIOReportDumpQueue *this)
{
  pthread_mutex_lock((this + 40));
  *(this + 12) = 1;
  pthread_cond_signal((this + 104));
  pthread_mutex_unlock((this + 40));
  dispatch_block_cancel(*(this + 19));
  v2 = *(this + 4);

  return pthread_join(v2, 0);
}

uint64_t CCIOReportDumpQueue::dequeue(CCIOReportDumpQueue *this)
{
  pthread_mutex_lock((this + 40));
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 520);
    *(this + 2) = v3;
    if (v3)
    {
      v4 = (v3 + 528);
    }

    else
    {
      v4 = (this + 24);
    }

    *v4 = 0;
  }

  pthread_mutex_unlock((this + 40));
  return v2;
}

void CCIOReportDumpQueue::CCIOReportDumpQueue(CCIOReportDumpQueue *this)
{
  *(this + 2) = 1;
  *this = &unk_28583C248;
}

{
  *(this + 2) = 1;
  *this = &unk_28583C248;
}

uint64_t CCIOReportDumpQueue::initInstanceWithQueue(CCIOReportDumpQueue *this, dispatch_queue_s *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = pthread_mutex_init((this + 40), 0);
  if (v4)
  {
    v5 = v4;
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *block = 67109120;
      *&block[4] = v5;
      v7 = v6;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *block = 67109120;
      *&block[4] = v5;
      v7 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v7, OS_LOG_TYPE_ERROR, "ERROR INIT MUTEX: %d\n", block, 8u);
LABEL_10:
    v12 = 3758097084;
    if (glog_fd)
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v13;
      v26 = v13;
      v23 = v13;
      v24 = v13;
      v21 = v13;
      v22 = v13;
      *block = v13;
      v20 = v13;
      memset(&v18, 0, sizeof(v18));
      v17 = 0xAAAAAAAAAAAAAAAALL;
      time(&v17);
      localtime_r(&v17, &v18);
      strftime(block, 0x80uLL, "%b %d %H:%M:%S", &v18);
      dprintf(glog_fd, "%s ", block);
      dprintf(glog_fd, "ERROR INIT MUTEX: %d\n");
    }

    goto LABEL_16;
  }

  v8 = pthread_cond_init((this + 104), 0);
  if (!v8)
  {
    *(this + 20) = a2;
    *block = MEMORY[0x277D85DD0];
    *&block[8] = 0x40000000;
    *&v20 = ___ZN19CCIOReportDumpQueue19cancelableBlockFuncEv_block_invoke;
    *(&v20 + 1) = &__block_descriptor_tmp_1953;
    *&v21 = this;
    *(this + 19) = dispatch_block_create(0, block);
    *(this + 12) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    pthread_mutex_lock((this + 40));
    *(this + 13) = 0;
    pthread_mutex_unlock((this + 40));
    pthread_create(this + 4, 0, CCIOReportDumpQueue::processorThread, this);
    v12 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *block = 67109120;
    *&block[4] = v9;
    v11 = v10;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *block = 67109120;
    *&block[4] = v9;
    v11 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v11, OS_LOG_TYPE_ERROR, "ERROR INIT COND: %d\n", block, 8u);
LABEL_14:
  v12 = 3758097084;
  if (glog_fd)
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v14;
    v26 = v14;
    v23 = v14;
    v24 = v14;
    v21 = v14;
    v22 = v14;
    *block = v14;
    v20 = v14;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(block, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", block);
    dprintf(glog_fd, "ERROR INIT COND: %d\n");
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

void ___ZN19CCIOReportDumpQueue19cancelableBlockFuncEv_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (dispatch_block_testcancel(v1[19]))
  {
    v2 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "cancelableBlockFunc_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 164;
        v3 = v2;
LABEL_13:
        _os_log_error_impl(&dword_2452A3000, v3, OS_LOG_TYPE_ERROR, "%s@%d: fCancelableBlock bailing out\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "cancelableBlockFunc_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      v3 = MEMORY[0x277D86220];
      goto LABEL_13;
    }

    if (glog_fd)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14 = v5;
      v15 = v5;
      v12 = v5;
      v13 = v5;
      v10 = v5;
      v11 = v5;
      *buf = v5;
      *&buf[16] = v5;
      memset(&v8, 0, sizeof(v8));
      v7 = 0xAAAAAAAAAAAAAAAALL;
      time(&v7);
      localtime_r(&v7, &v8);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v8);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s@%d: fCancelableBlock bailing out\n", "cancelableBlockFunc_block_invoke", 164);
    }

    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *MEMORY[0x277D85DE8];

  CCIOReportDumpQueue::signalToSave(v1);
}

void CCIOReportDumpQueue::_processorThread(CCIOReportDumpQueue *this)
{
  v61 = *MEMORY[0x277D85DE8];
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v3)
  {
    goto LABEL_95;
  }

  v4 = v3;
  queue = *(this + 20);
  v5 = *MEMORY[0x277CBECE8];
  while (1)
  {
    pthread_mutex_lock((this + 40));
    if (*(this + 12))
    {
      goto LABEL_105;
    }

    if ((*(this + 13) & 1) == 0 && !*(this + 2))
    {
      if (pthread_cond_wait((this + 104), (this + 40)))
      {
        pthread_mutex_unlock((this + 40));
        goto LABEL_95;
      }

      if (*(this + 12))
      {
LABEL_105:
        pthread_mutex_unlock((this + 40));
        v46 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "_processorThread";
            *&buf[12] = 1024;
            *&buf[14] = 202;
            v47 = v46;
LABEL_110:
            _os_log_error_impl(&dword_2452A3000, v47, OS_LOG_TYPE_ERROR, "%s@%d: fExitNextIteration bailing out\n", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "_processorThread";
          *&buf[12] = 1024;
          *&buf[14] = 202;
          v47 = MEMORY[0x277D86220];
          goto LABEL_110;
        }

        if (glog_fd)
        {
          *&v48 = 0xAAAAAAAAAAAAAAAALL;
          *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v59 = v48;
          v60 = v48;
          v57 = v48;
          v58 = v48;
          v55 = v48;
          v56 = v48;
          *buf = v48;
          *&buf[16] = v48;
          memset(&v53, 0, sizeof(v53));
          v52 = 0xAAAAAAAAAAAAAAAALL;
          time(&v52);
          localtime_r(&v52, &v53);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s@%d: fExitNextIteration bailing out\n", "_processorThread", 202);
        }

        goto LABEL_95;
      }
    }

    pthread_mutex_unlock((this + 40));
    while (1)
    {
      v6 = CCIOReportDumpQueue::dequeue(this);
      if (!v6)
      {
        break;
      }

      SaveLocation = getSaveLocation(0);
      v8 = CFStringCreateMutable(v5, 512);
      v9 = v8;
      if (!v8)
      {
        goto LABEL_95;
      }

      CFStringAppendCString(v8, SaveLocation, 0);
      CFStringAppendFormat(v9, 0, @"/%s/%s/", v6, "Data");
      parent = 0;
      MutableCopy = CFStringCreateMutableCopy(v5, 0, v9);
      v11 = MutableCopy;
      if (!MutableCopy)
      {
        v28 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "_processorThread";
            *&buf[12] = 1024;
            *&buf[14] = 224;
            v29 = v28;
LABEL_55:
            _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "%s@%d: bail - !hash\n", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "_processorThread";
          *&buf[12] = 1024;
          *&buf[14] = 224;
          v29 = MEMORY[0x277D86220];
          goto LABEL_55;
        }

        if (glog_fd)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v59 = v30;
          v60 = v30;
          v57 = v30;
          v58 = v30;
          v55 = v30;
          v56 = v30;
          *buf = v30;
          *&buf[16] = v30;
          memset(&v53, 0, sizeof(v53));
          v52 = 0xAAAAAAAAAAAAAAAALL;
          time(&v52);
          localtime_r(&v52, &v53);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s@%d: bail - !hash\n", "_processorThread", 224);
        }

        CFRelease(v9);
        goto LABEL_95;
      }

      CFStringAppendFormat(MutableCopy, 0, @"0x%016x", *(v6 + 512));
      if (CFSetContainsValue(Mutable, v11))
      {
        v12 = *(v6 + 512);
        if (v12)
        {
          IOObjectRelease(v12);
        }

        MEMORY[0x245D67A60](v6, 0x1020C404FABDE88);
        CFRelease(v11);
        CFRelease(v9);
      }

      else
      {
        CFSetAddValue(Mutable, v11);
        CFRelease(v11);
        if (!IORegistryEntryGetParentEntry(*(v6 + 512), "IOService", &parent))
        {
          operator new();
        }

        if (CFDictionaryGetValue(v4, v9))
        {
LABEL_21:
          v15 = *(v6 + 512);
          v16 = IOReportCopyChannelsForDriver();
          if (v16)
          {
            if (IOReportGetChannelCount() && IOReportMergeChannels())
            {
              v43 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "_processorThread";
                  *&buf[12] = 1024;
                  *&buf[14] = 287;
                  v44 = v43;
LABEL_101:
                  _os_log_error_impl(&dword_2452A3000, v44, OS_LOG_TYPE_ERROR, "%s@%d: Problem merging channels\n", buf, 0x12u);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "_processorThread";
                *&buf[12] = 1024;
                *&buf[14] = 287;
                v44 = MEMORY[0x277D86220];
                goto LABEL_101;
              }

              if (glog_fd)
              {
                *&v45 = 0xAAAAAAAAAAAAAAAALL;
                *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v59 = v45;
                v60 = v45;
                v57 = v45;
                v58 = v45;
                v55 = v45;
                v56 = v45;
                *buf = v45;
                *&buf[16] = v45;
                memset(&v53, 0, sizeof(v53));
                v52 = 0xAAAAAAAAAAAAAAAALL;
                time(&v52);
                localtime_r(&v52, &v53);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "%s@%d: Problem merging channels\n", "_processorThread", 287);
              }

              CFRelease(v16);
              CFRelease(v9);
              goto LABEL_95;
            }

            CFRelease(v16);
          }

          CFRelease(v9);
          v17 = *(v6 + 512);
          if (v17)
          {
            IOObjectRelease(v17);
          }

          MEMORY[0x245D67A60](v6, 0x1020C404FABDE88);
        }

        else
        {
          Aggregate = IOReportCreateAggregate();
          if (Aggregate)
          {
            v14 = dispatch_time(0, 1000000000);
            dispatch_after(v14, queue, *(this + 19));
            CFDictionarySetValue(v4, v9, Aggregate);
            CFRelease(Aggregate);
            goto LABEL_21;
          }

          v18 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_32;
            }

            *buf = 0;
            v19 = v18;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_32;
            }

            *buf = 0;
            v19 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "Unable to create IOReport Aggregate\n", buf, 2u);
LABEL_32:
          if (glog_fd)
          {
            *&v20 = 0xAAAAAAAAAAAAAAAALL;
            *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v59 = v20;
            v60 = v20;
            v57 = v20;
            v58 = v20;
            v55 = v20;
            v56 = v20;
            *buf = v20;
            *&buf[16] = v20;
            memset(&v53, 0, sizeof(v53));
            v52 = 0xAAAAAAAAAAAAAAAALL;
            time(&v52);
            localtime_r(&v52, &v53);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "Unable to create IOReport Aggregate\n");
          }

          CFRelease(v9);
        }
      }
    }

    pthread_mutex_lock((this + 40));
    if (*(this + 13) == 1)
    {
      *(this + 13) = 0;
      Count = CFDictionaryGetCount(v4);
      keys = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      if (!keys)
      {
        goto LABEL_95;
      }

      CFDictionaryGetKeysAndValues(v4, keys, 0);
      if (Count)
      {
        v22 = keys;
        while (1)
        {
          v23 = *v22;
          if (!*v22)
          {
            break;
          }

          Value = CFDictionaryGetValue(v4, *v22);
          if (!Value)
          {
            v35 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "_processorThread";
                *&buf[12] = 1024;
                *&buf[14] = 324;
                v36 = v35;
LABEL_85:
                _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s@%d: bail - !allChannels\n", buf, 0x12u);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "_processorThread";
              *&buf[12] = 1024;
              *&buf[14] = 324;
              v36 = MEMORY[0x277D86220];
              goto LABEL_85;
            }

            if (glog_fd)
            {
              *&v41 = 0xAAAAAAAAAAAAAAAALL;
              *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v59 = v41;
              v60 = v41;
              v57 = v41;
              v58 = v41;
              v55 = v41;
              v56 = v41;
              *buf = v41;
              *&buf[16] = v41;
              memset(&v53, 0, sizeof(v53));
              v52 = 0xAAAAAAAAAAAAAAAALL;
              time(&v52);
              localtime_r(&v52, &v53);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "%s@%d: bail - !allChannels\n", "_processorThread", 324);
            }

            goto LABEL_94;
          }

          if ((mkdirRecursive(v23) & 1) == 0)
          {
            v31 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "_processorThread";
                *&buf[12] = 1024;
                *&buf[14] = 332;
                v32 = v31;
LABEL_73:
                _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "%s@%d: bail - !mkdirRecursive\n", buf, 0x12u);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "_processorThread";
              *&buf[12] = 1024;
              *&buf[14] = 332;
              v32 = MEMORY[0x277D86220];
              goto LABEL_73;
            }

            if (glog_fd)
            {
              *&v39 = 0xAAAAAAAAAAAAAAAALL;
              *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v59 = v39;
              v60 = v39;
              v57 = v39;
              v58 = v39;
              v55 = v39;
              v56 = v39;
              *buf = v39;
              *&buf[16] = v39;
              memset(&v53, 0, sizeof(v53));
              v52 = 0xAAAAAAAAAAAAAAAALL;
              time(&v52);
              localtime_r(&v52, &v53);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "%s@%d: bail - !mkdirRecursive\n", "_processorThread", 332);
            }

            goto LABEL_94;
          }

          v25 = CFStringCreateMutableCopy(v5, 0, v23);
          v26 = v25;
          if (!v25)
          {
            v37 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "_processorThread";
                *&buf[12] = 1024;
                *&buf[14] = 341;
                v38 = v37;
LABEL_91:
                _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "%s@%d: bail - !filePath\n", buf, 0x12u);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "_processorThread";
              *&buf[12] = 1024;
              *&buf[14] = 341;
              v38 = MEMORY[0x277D86220];
              goto LABEL_91;
            }

            if (glog_fd)
            {
              *&v42 = 0xAAAAAAAAAAAAAAAALL;
              *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v59 = v42;
              v60 = v42;
              v57 = v42;
              v58 = v42;
              v55 = v42;
              v56 = v42;
              *buf = v42;
              *&buf[16] = v42;
              memset(&v53, 0, sizeof(v53));
              v52 = 0xAAAAAAAAAAAAAAAALL;
              time(&v52);
              localtime_r(&v52, &v53);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "%s@%d: bail - !filePath\n", "_processorThread", 341);
            }

LABEL_94:
            pthread_mutex_unlock((this + 40));
            free(keys);
LABEL_95:
            pthread_exit(0);
          }

          CFStringAppendFormat(v25, 0, @"/IOReporters.%s", "xml");
          CCIOReportDumpQueue::doSaveChannels(v27, v26, Value);
          CFRelease(v26);
          CFDictionaryRemoveValue(v4, v23);
          ++v22;
          if (!--Count)
          {
            goto LABEL_46;
          }
        }

        v33 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "_processorThread";
            *&buf[12] = 1024;
            *&buf[14] = 316;
            v34 = v33;
LABEL_79:
            _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "%s@%d: bail - !saveDir\n", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "_processorThread";
          *&buf[12] = 1024;
          *&buf[14] = 316;
          v34 = MEMORY[0x277D86220];
          goto LABEL_79;
        }

        if (glog_fd)
        {
          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v59 = v40;
          v60 = v40;
          v57 = v40;
          v58 = v40;
          v55 = v40;
          v56 = v40;
          *buf = v40;
          *&buf[16] = v40;
          memset(&v53, 0, sizeof(v53));
          v52 = 0xAAAAAAAAAAAAAAAALL;
          time(&v52);
          localtime_r(&v52, &v53);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v53);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "%s@%d: bail - !saveDir\n", "_processorThread", 316);
        }

        goto LABEL_94;
      }

LABEL_46:
      free(keys);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    }

    pthread_mutex_unlock((this + 40));
  }
}

uint64_t CCIOReportDumpQueue::enqueue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 40));
  v5 = *(a1 + 12);
  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      *(a2 + 520) = 0;
      v6 = *(a1 + 24);
      *(v6 + 520) = a2;
      *(a1 + 24) = a2;
    }

    else
    {
      *(a1 + 16) = a2;
      *(a1 + 24) = a2;
      *(a2 + 520) = 0;
    }

    *(a2 + 528) = v6;
    pthread_cond_signal((a1 + 104));
  }

  v2 = v5 ^ 1u;
  pthread_mutex_unlock((a1 + 40));
  return v2;
}

void CCIOReportDumpQueue::doSaveChannels(CCIOReportDumpQueue *this, const __CFString *a2, __CFDictionary *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  cf = 0;
  err = 0;
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    *&buf[4] = "doSaveChannels";
    *&buf[12] = 1024;
    *&buf[14] = 381;
    *&buf[18] = 2080;
    *&buf[20] = CFStringGetCStringPtr(a2, 0);
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    *&buf[4] = "doSaveChannels";
    *&buf[12] = 1024;
    *&buf[14] = 381;
    *&buf[18] = 2080;
    *&buf[20] = CFStringGetCStringPtr(a2, 0);
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "%s@%d: Will write to: %s\n", buf, 0x1Cu);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v54 = v6;
    v55 = v6;
    v52 = v6;
    v53 = v6;
    v50 = v6;
    v51 = v6;
    *buf = v6;
    *&buf[16] = v6;
    memset(v44, 0, 56);
    *&v41.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v41.tm_sec);
    localtime_r(&v41.tm_sec, v44);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v44);
    dprintf(glog_fd, "%s ", buf);
    v7 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    dprintf(v7, "%s@%d: Will write to: %s\n", "doSaveChannels", 381, CStringPtr);
  }

  if (!IOReportGetChannelCount())
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 0;
      v18 = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 0;
      v18 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "No channels found\n", buf, 2u);
LABEL_37:
    if (glog_fd)
    {
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v54 = v27;
      v55 = v27;
      v52 = v27;
      v53 = v27;
      v50 = v27;
      v51 = v27;
      *buf = v27;
      *&buf[16] = v27;
      memset(v44, 0, 56);
      *&v41.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v41.tm_sec);
      localtime_r(&v41.tm_sec, v44);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v44);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "No channels found\n");
    }

    goto LABEL_42;
  }

  Subscription = IOReportCreateSubscription();
  if (!Subscription)
  {
    v60 = xmmword_2452E9D60;
    v61 = unk_2452E9D70;
    v62 = xmmword_2452E9D80;
    v63 = unk_2452E9D90;
    v56 = xmmword_2452E9D20;
    v57 = unk_2452E9D30;
    v58 = xmmword_2452E9D40;
    v59 = unk_2452E9D50;
    v52 = xmmword_2452E9CE0;
    v53 = unk_2452E9CF0;
    v54 = xmmword_2452E9D00;
    v55 = unk_2452E9D10;
    *buf = *"<unknown>";
    *&buf[16] = *&algn_2452E9CAA[6];
    v50 = xmmword_2452E9CC0;
    v51 = unk_2452E9CD0;
    if (err)
    {
      v19 = CFErrorCopyFailureReason(err);
      if (v19)
      {
        v20 = v19;
        CFStringGetCString(v19, buf, 256, 0x8000100u);
        CFRelease(v20);
      }

      CFRelease(err);
    }

    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *v44 = 136315650;
      *&v44[4] = "doSaveChannels";
      *&v44[12] = 1024;
      *&v44[14] = 400;
      *&v44[18] = 2080;
      *&v44[20] = buf;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *v44 = 136315650;
      *&v44[4] = "doSaveChannels";
      *&v44[12] = 1024;
      *&v44[14] = 400;
      *&v44[18] = 2080;
      *&v44[20] = buf;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "%s@%d: Unable to create subscribtion: %s\n", v44, 0x1Cu);
LABEL_40:
    if (glog_fd)
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v28;
      v48 = v28;
      v45 = v28;
      v46 = v28;
      *&v44[48] = v28;
      *&v44[16] = v28;
      *&v44[32] = v28;
      *v44 = v28;
      memset(&v41, 0, sizeof(v41));
      v40 = 0xAAAAAAAAAAAAAAAALL;
      time(&v40);
      localtime_r(&v40, &v41);
      strftime(v44, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", v44);
      dprintf(glog_fd, "%s@%d: Unable to create subscribtion: %s\n");
    }

LABEL_42:
    v10 = 0;
    goto LABEL_67;
  }

  v10 = Subscription;
  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v12 = Samples;
    v13 = mach_absolute_time();
    addSystemInformationToDict(v12, v13);
    if (!ifSeedCreateClassCProtectedFileAtCFStringPath(a2))
    {
LABEL_66:
      CFRelease(v12);
      goto LABEL_67;
    }

    v14 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], a2, kCFURLPOSIXPathStyle, 0);
    if (v14)
    {
LABEL_49:
      Data = CFPropertyListCreateData(0, v12, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (Data)
      {
        v32 = Data;
        LODWORD(v40) = -1431655766;
        if (CFURLWriteDataAndPropertiesToResource(v14, Data, 0, &v40))
        {
LABEL_63:
          CFRelease(v32);
LABEL_64:
          if (v14)
          {
            CFRelease(v14);
          }

          goto LABEL_66;
        }

        v33 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_61;
          }

          *buf = 0;
          v34 = v33;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_61;
          }

          *buf = 0;
          v34 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "Error creating plist...\n", buf, 2u);
LABEL_61:
        if (glog_fd)
        {
          *&v38 = 0xAAAAAAAAAAAAAAAALL;
          *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v54 = v38;
          v55 = v38;
          v52 = v38;
          v53 = v38;
          v50 = v38;
          v51 = v38;
          *buf = v38;
          *&buf[16] = v38;
          memset(v44, 0, 56);
          *&v41.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v41.tm_sec);
          localtime_r(&v41.tm_sec, v44);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v44);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "Error creating plist...\n");
        }

        goto LABEL_63;
      }

      v35 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v36 = v35;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v36 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "ERROR: cannot build the XML data\n", buf, 2u);
LABEL_58:
      if (glog_fd)
      {
        *&v37 = 0xAAAAAAAAAAAAAAAALL;
        *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v54 = v37;
        v55 = v37;
        v52 = v37;
        v53 = v37;
        v50 = v37;
        v51 = v37;
        *buf = v37;
        *&buf[16] = v37;
        memset(v44, 0, 56);
        *&v41.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v41.tm_sec);
        localtime_r(&v41.tm_sec, v44);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v44);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "ERROR: cannot build the XML data\n");
      }

      goto LABEL_64;
    }

    v15 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v16 = v15;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v16 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "ERROR: FileURL not created\n", buf, 2u);
LABEL_47:
    if (glog_fd)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v54 = v30;
      v55 = v30;
      v52 = v30;
      v53 = v30;
      v50 = v30;
      v51 = v30;
      *buf = v30;
      *&buf[16] = v30;
      memset(v44, 0, 56);
      *&v41.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v41.tm_sec);
      localtime_r(&v41.tm_sec, v44);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", v44);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "ERROR: FileURL not created\n");
    }

    goto LABEL_49;
  }

  v60 = xmmword_2452E9D60;
  v61 = unk_2452E9D70;
  v62 = xmmword_2452E9D80;
  v63 = unk_2452E9D90;
  v56 = xmmword_2452E9D20;
  v57 = unk_2452E9D30;
  v58 = xmmword_2452E9D40;
  v59 = unk_2452E9D50;
  v52 = xmmword_2452E9CE0;
  v53 = unk_2452E9CF0;
  v54 = xmmword_2452E9D00;
  v55 = unk_2452E9D10;
  *buf = *"<unknown>";
  *&buf[16] = *&algn_2452E9CAA[6];
  v50 = xmmword_2452E9CC0;
  v51 = unk_2452E9CD0;
  if (err)
  {
    v23 = CFErrorCopyFailureReason(err);
    if (v23)
    {
      v24 = v23;
      CFStringGetCString(v23, buf, 256, 0x8000100u);
      CFRelease(v24);
    }

    CFRelease(err);
  }

  v25 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *v44 = 136315650;
    *&v44[4] = "doSaveChannels";
    *&v44[12] = 1024;
    *&v44[14] = 416;
    *&v44[18] = 2080;
    *&v44[20] = buf;
    v26 = v25;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *v44 = 136315650;
    *&v44[4] = "doSaveChannels";
    *&v44[12] = 1024;
    *&v44[14] = 416;
    *&v44[18] = 2080;
    *&v44[20] = buf;
    v26 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v26, OS_LOG_TYPE_ERROR, "%s@%d: Unable to create samples: %s\n", v44, 0x1Cu);
LABEL_44:
  if (glog_fd)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47 = v29;
    v48 = v29;
    v45 = v29;
    v46 = v29;
    *&v44[48] = v29;
    *&v44[16] = v29;
    *&v44[32] = v29;
    *v44 = v29;
    memset(&v41, 0, sizeof(v41));
    v40 = 0xAAAAAAAAAAAAAAAALL;
    time(&v40);
    localtime_r(&v40, &v41);
    strftime(v44, 0x80uLL, "%b %d %H:%M:%S", &v41);
    dprintf(glog_fd, "%s ", v44);
    dprintf(glog_fd, "%s@%d: Unable to create samples: %s\n", "doSaveChannels", 416, buf);
  }

LABEL_67:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t CCIOReportDumpQueue::signalToSave(CCIOReportDumpQueue *this)
{
  pthread_mutex_lock((this + 40));
  *(this + 13) = 1;
  pthread_cond_signal((this + 104));

  return pthread_mutex_unlock((this + 40));
}

dispatch_block_t CCIOReportDumpQueue::cancelableBlockFunc(CCIOReportDumpQueue *this)
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN19CCIOReportDumpQueue19cancelableBlockFuncEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_1953;
  v4[4] = this;
  result = dispatch_block_create(0, v4);
  *(this + 19) = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCPcapngFormatter::initWithRegistryEntry(CCPcapngFormatter *this, io_object_t object)
{
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

uint64_t CCPcapngFormatter::writeCommentEntry(uint64_t a1, _OWORD *a2, const void *a3, size_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = -a4 & 3;
  v9 = malloc_type_malloc(a4 + v8 + 12, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = -1364283730;
    *(v9 + 2) = 1;
    *(v9 + 3) = a4;
    memcpy(v9 + 8, a3, a4);
    v11 = a4 + 8;
    bzero(&v10[v11], v8);
    *&v10[(v11 + v8)] = 0;
    *&v10[(v11 + v8 + 2)] = 0;
    *&v15[12] = *(a2 + 12);
    *v15 = *a2;
    v16 = 0x4000400000000;
    *&v15[24] = v11 + v8 + 4;
    v15[26] = 0;
    v12 = (*(*a1 + 72))(a1, v15, v10, *&v15[24], 0, 0);
    free(v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t CCPcapngFormatter::writeLog(CCPcapngFormatter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    if (a4)
    {
      goto LABEL_17;
    }

    v12 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      *&buf[4] = 0;
      v13 = v12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      *&buf[4] = 0;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLog  Inconsistent data (1) length=%lu\n", buf, 0xCu);
LABEL_15:
    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v18;
      v45 = v18;
      v42 = v18;
      v43 = v18;
      v40 = v18;
      v41 = v18;
      *buf = v18;
      *&buf[16] = v18;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLog  Inconsistent data (1) length=%lu\n", 0);
    }

LABEL_17:
    if (!a5 || a6)
    {
      goto LABEL_25;
    }

    v19 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 134217984;
      *&buf[4] = 0;
      v20 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 134217984;
      *&buf[4] = 0;
      v20 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLog  Inconsistent data (2) lengthContinue=%lu\n", buf, 0xCu);
LABEL_23:
    if (glog_fd)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v21;
      v45 = v21;
      v42 = v21;
      v43 = v21;
      v40 = v21;
      v41 = v21;
      *buf = v21;
      *&buf[16] = v21;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLog  Inconsistent data (2) lengthContinue=%lu\n", 0);
    }

LABEL_25:
    v22 = *(a2 + 24);
    if (a6 + a4 == v22)
    {
      goto LABEL_32;
    }

    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 67109632;
      *&buf[4] = v22;
      *&buf[8] = 2048;
      *&buf[10] = a4;
      *&buf[18] = 2048;
      *&buf[20] = a6;
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 67109632;
      *&buf[4] = v22;
      *&buf[8] = 2048;
      *&buf[10] = a4;
      *&buf[18] = 2048;
      *&buf[20] = a6;
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLog  Inconsistent data (3) payloadLength=%d, length=%lu, lengthContinue=%lu\n", buf, 0x1Cu);
LABEL_30:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v25;
      v45 = v25;
      v42 = v25;
      v43 = v25;
      v40 = v25;
      v41 = v25;
      *buf = v25;
      *&buf[16] = v25;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLog  Inconsistent data (3) payloadLength=%d, length=%lu, lengthContinue=%lu\n", *(a2 + 24), a4, a6);
    }

LABEL_32:
    v26 = CCPcapngFormatter::writeLogHeader(this, a2);
    v27 = (*(*this + 112))(this, a3, a4);
    if (v27 == a4)
    {
      goto LABEL_39;
    }

    v28 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      v29 = v28;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      v29 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLog Failed to write(1) Length=%lu, tempLength=%lu\n", buf, 0x16u);
LABEL_37:
    if (glog_fd)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v30;
      v45 = v30;
      v42 = v30;
      v43 = v30;
      v40 = v30;
      v41 = v30;
      *buf = v30;
      *&buf[16] = v30;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLog Failed to write(1) Length=%lu, tempLength=%lu\n", a4, v27);
    }

LABEL_39:
    v31 = v27 + v26;
    if (!a5)
    {
LABEL_48:
      result = CCPcapngFormatter::writeLogFooter(this, a2) + v31;
      goto LABEL_49;
    }

    v32 = (*(*this + 112))(this, a5, a6);
    if (v32 == a6)
    {
LABEL_47:
      v31 += v32;
      goto LABEL_48;
    }

    v33 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      *buf = 134218240;
      *&buf[4] = a6;
      *&buf[12] = 2048;
      *&buf[14] = v32;
      v34 = v33;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      *buf = 134218240;
      *&buf[4] = a6;
      *&buf[12] = 2048;
      *&buf[14] = v32;
      v34 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v34, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLog Failed to write(2) Length=%lu, tempLength=%lu\n", buf, 0x16u);
LABEL_45:
    if (glog_fd)
    {
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v35;
      v45 = v35;
      v42 = v35;
      v43 = v35;
      v40 = v35;
      v41 = v35;
      *buf = v35;
      *&buf[16] = v35;
      memset(&v38, 0, sizeof(v38));
      v37 = 0xAAAAAAAAAAAAAAAALL;
      time(&v37);
      localtime_r(&v37, &v38);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLog Failed to write(2) Length=%lu, tempLength=%lu\n", a6, v32);
    }

    goto LABEL_47;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = v14;
LABEL_51:
      _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLog Unexpected log data \n", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v15 = MEMORY[0x277D86220];
    goto LABEL_51;
  }

  if (glog_fd)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v16;
    v45 = v16;
    v42 = v16;
    v43 = v16;
    v40 = v16;
    v41 = v16;
    *buf = v16;
    *&buf[16] = v16;
    memset(&v38, 0, sizeof(v38));
    v37 = 0xAAAAAAAAAAAAAAAALL;
    time(&v37);
    localtime_r(&v37, &v38);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v38);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPcapngFormatter::writeLog Unexpected log data \n");
  }

  result = 0;
LABEL_49:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCPcapngFormatter::writeLogHeader(CCPcapngFormatter *this, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v37 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v38 = v37;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v38 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLogHeader logMetaData is NULL\n", buf, 2u);
LABEL_48:
    if (glog_fd)
    {
      *&v41 = 0xAAAAAAAAAAAAAAAALL;
      *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v56 = v41;
      v57 = v41;
      v54 = v41;
      v55 = v41;
      v52 = v41;
      v53 = v41;
      *buf = v41;
      *&buf[16] = v41;
      memset(&v44, 0, sizeof(v44));
      v45 = 0xAAAAAAAAAAAAAAAALL;
      time(&v45);
      localtime_r(&v45, &v44);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v44);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLogHeader logMetaData is NULL\n");
    }

    goto LABEL_53;
  }

  if (!*(this + 6))
  {
    v39 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      *&buf[4] = "writeLogHeader";
      *&buf[12] = 1024;
      *&buf[14] = 264;
      v40 = v39;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      *&buf[4] = "writeLogHeader";
      *&buf[12] = 1024;
      *&buf[14] = 264;
      v40 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v40, OS_LOG_TYPE_ERROR, "Invalid argument @'%s':%06u", buf, 0x12u);
LABEL_51:
    if (glog_fd)
    {
      *&v42 = 0xAAAAAAAAAAAAAAAALL;
      *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v56 = v42;
      v57 = v42;
      v54 = v42;
      v55 = v42;
      v52 = v42;
      v53 = v42;
      *buf = v42;
      *&buf[16] = v42;
      memset(&v44, 0, sizeof(v44));
      v45 = 0xAAAAAAAAAAAAAAAALL;
      time(&v45);
      localtime_r(&v45, &v44);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v44);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Invalid argument @'%s':%06u");
    }

LABEL_53:
    v20 = 0;
    goto LABEL_35;
  }

  v4 = *(a2 + 28);
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 8);
    if (v6)
    {
      v7 = 0;
      while (*(v5 + 4 * v7) != v4)
      {
        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_8:
  if (!CCPcapngFormatter::searchStreamIdInRegistry(this, v4))
  {
    LODWORD(v7) = 0;
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v8 = (*(*this + 64))(this);
  v9 = (*(*this + 56))(this) + v8;
  v10 = *(this + 7);
  if (v10 && (v11 = *(this + 8), v11))
  {
    v7 = 0;
    while (*(v10 + 4 * v7) != *(a2 + 28))
    {
      if (v11 == ++v7)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    LODWORD(v7) = 0;
  }

LABEL_17:
  v12 = *(a2 + 24) + *(a2 + 26) + 32;
  v13 = *(a2 + 32);
  v14 = *(*(this + 6) + 8 * v7);
  if (v14)
  {
    v12 += CFDataGetLength(v14);
    v13 += CFDataGetLength(*(*(this + 6) + 8 * v7));
  }

  LODWORD(v45) = 6;
  HIDWORD(v45) = v12;
  v15 = *(a2 + 16) + 1000000 * *(a2 + 8);
  v46 = v7;
  v47 = HIDWORD(v15);
  v48 = v15;
  v49 = v13;
  v50 = *(a2 + 34);
  v16 = (*(*this + 112))(this, &v45, 28);
  if (v16 != 28)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 134217984;
      *&buf[4] = v16;
      v18 = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 134217984;
      *&buf[4] = v16;
      v18 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLogHeader Failed to write. %ld\n", buf, 0xCu);
LABEL_24:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v56 = v19;
      v57 = v19;
      v54 = v19;
      v55 = v19;
      v52 = v19;
      v53 = v19;
      *buf = v19;
      *&buf[16] = v19;
      memset(&v44, 0, sizeof(v44));
      v43 = 0xAAAAAAAAAAAAAAAALL;
      time(&v43);
      localtime_r(&v43, &v44);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v44);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLogHeader Failed to write. %ld\n", v16);
    }
  }

  v20 = v16 + v9;
  v21 = *(*(this + 6) + 8 * v7);
  if (v21)
  {
    Length = CFDataGetLength(v21);
    BytePtr = CFDataGetBytePtr(*(*(this + 6) + 8 * v7));
    v24 = (*(*this + 112))(this, BytePtr, Length);
    if (v24 == Length)
    {
LABEL_34:
      v20 += v24;
      goto LABEL_35;
    }

    v25 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v26 = __error();
      v27 = strerror(*v26);
      *buf = 134218242;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v27;
      v28 = v25;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v35 = __error();
      v36 = strerror(*v35);
      *buf = 134218242;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      v28 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v28, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLogHeader fStreamHeaderArray failed to write length %ld. %s\n", buf, 0x16u);
LABEL_32:
    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v56 = v29;
      v57 = v29;
      v54 = v29;
      v55 = v29;
      v52 = v29;
      v53 = v29;
      *buf = v29;
      *&buf[16] = v29;
      memset(&v44, 0, sizeof(v44));
      v43 = 0xAAAAAAAAAAAAAAAALL;
      time(&v43);
      localtime_r(&v43, &v44);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v44);
      dprintf(glog_fd, "%s ", buf);
      v30 = glog_fd;
      v31 = __error();
      v32 = strerror(*v31);
      dprintf(v30, "CCPcapngFormatter::writeLogHeader fStreamHeaderArray failed to write length %ld. %s\n", v24, v32);
    }

    goto LABEL_34;
  }

LABEL_35:
  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t CCPcapngFormatter::writeLogFooter(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeLogFooter logMetaData is NULL\n", buf, 2u);
LABEL_21:
    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v18;
      v28 = v18;
      v25 = v18;
      v26 = v18;
      v23 = v18;
      v24 = v18;
      *buf = v18;
      *&buf[16] = v18;
      memset(&v21, 0, sizeof(v21));
      v20 = 0xAAAAAAAAAAAAAAAALL;
      time(&v20);
      localtime_r(&v20, &v21);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPcapngFormatter::writeLogFooter logMetaData is NULL\n");
    }

    goto LABEL_26;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    v16 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315394;
      *&buf[4] = "writeLogFooter";
      *&buf[12] = 1024;
      *&buf[14] = 352;
      v17 = v16;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315394;
      *&buf[4] = "writeLogFooter";
      *&buf[12] = 1024;
      *&buf[14] = 352;
      v17 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v17, OS_LOG_TYPE_ERROR, "Invalid argument @'%s':%06u", buf, 0x12u);
LABEL_24:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v19;
      v28 = v19;
      v25 = v19;
      v26 = v19;
      v23 = v19;
      v24 = v19;
      *buf = v19;
      *&buf[16] = v19;
      memset(&v21, 0, sizeof(v21));
      v20 = 0xAAAAAAAAAAAAAAAALL;
      time(&v20);
      localtime_r(&v20, &v21);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Invalid argument @'%s':%06u");
    }

LABEL_26:
    result = 0;
    goto LABEL_13;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = 0;
      while (*(v5 + 4 * v7) != *(a2 + 28))
      {
        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      v5 = v7;
    }

    else
    {
LABEL_8:
      v5 = 0;
    }
  }

  *buf = 0;
  v8 = *(a2 + 26);
  v9 = *(a2 + 24) + v8 + 32;
  v21.tm_sec = v9;
  v10 = *(v3 + 8 * v5);
  if (v10)
  {
    v21.tm_sec = v9 + CFDataGetLength(v10);
    v8 = *(a2 + 26);
  }

  v11 = (*(*a1 + 112))(a1, buf, v8);
  result = (*(*a1 + 112))(a1, &v21, 4) + v11;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CCPcapngFormatter::searchStreamIdInRegistry(CCPcapngFormatter *this, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  iterator = -1431655766;
  MEMORY[0x245D67870](*(this + 3), "IOService", &iterator);
  v3 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v4 = IOIteratorNext(iterator);
    v5 = v4;
    if (!v4)
    {
      break;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v4, @"Id", v3, 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v10 = -1431655766;
      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &v10);
      if (v10 == a2)
      {
        CFRelease(v7);
        break;
      }

      CFRelease(v7);
    }
  }

  IOObjectRelease(iterator);
  result = v5 != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCPcapngFormatter::writeFileHeader(io_registry_entry_t *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = (*(*this + 112))(this, &kSectionHeaderBlock, 28);
  CCPcapngFormatter::buildStreamToInterfaceTable(this);
  v3 = *MEMORY[0x277CBECE8];
  theString = IORegistryEntryCreateCFProperty(this[3], @"Owner", *MEMORY[0x277CBECE8], 0);
  Length = CFStringGetLength(theString);
  CFProperty = IORegistryEntryCreateCFProperty(this[3], @"Name", v3, 0);
  v5 = CFStringGetLength(CFProperty);
  if (!this[8])
  {
    goto LABEL_20;
  }

  v6 = 0;
  v31 = (Length + 3) & 0xFFFFFFFC;
  v32 = v5;
  v33 = Length;
  v30 = ((v5 + 3) & 0xFFFFFFFC) + 4;
  v29 = Length + v30 + 31;
  while (1)
  {
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v39 = -1431655766;
    v40 = 0;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    *&v51[256] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v51[224] = v7;
    *&v51[240] = v7;
    *&v51[192] = v7;
    *&v51[208] = v7;
    *&v51[160] = v7;
    *&v51[176] = v7;
    *&v51[128] = v7;
    *&v51[144] = v7;
    *&v51[96] = v7;
    *&v51[112] = v7;
    *&v51[64] = v7;
    *&v51[80] = v7;
    *&v51[32] = v7;
    *&v51[48] = v7;
    *v51 = v7;
    *&v51[16] = v7;
    v8 = *(this + 5);
    if (!v8)
    {
      break;
    }

    v9 = *(v8 + 8 * v6);
    if (!v9)
    {
      break;
    }

    if (!*(this + 8))
    {
      v23 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v6;
          v24 = v23;
          goto LABEL_28;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v6;
        v24 = MEMORY[0x277D86220];
LABEL_28:
        _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeFileHeader Uninitialized fDLTArray, i: %d\n", buf, 8u);
      }

      if (glog_fd)
      {
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v49 = v26;
        v50 = v26;
        v47 = v26;
        v48 = v26;
        v45 = v26;
        v46 = v26;
        *buf = v26;
        v44 = v26;
        memset(&v37, 0, sizeof(v37));
        v36 = 0xAAAAAAAAAAAAAAAALL;
        time(&v36);
        localtime_r(&v36, &v37);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v37);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCPcapngFormatter::writeFileHeader Uninitialized fDLTArray, i: %d\n");
      }

      goto LABEL_20;
    }

    v10 = CFStringGetLength(v9);
    v11 = v10;
    v12 = ((v10 + 3) & 0xFFFFFFFC) + 4;
    LODWORD(v41) = 1;
    HIDWORD(v41) = ((v29 + v12) & 0xFFFFFFFC) + 8;
    LODWORD(v42) = *(*(this + 8) + 2 * v6);
    HIDWORD(v42) = 0x80000;
    v13 = (*(*this + 112))(this, &v41, 16) + v2;
    v38 = 0x600010009;
    v14 = (*(*this + 112))(this, &v38, 8);
    *v51 = 2;
    *&v51[2] = v33;
    memset(&v51[4], 0, 256);
    CFStringGetCString(theString, &v51[4], 256, 0);
    v15 = (*(*this + 112))(this, v51, v31 + 4);
    *v51 = 3;
    v16 = v13 + v14 + v15;
    *&v51[2] = v32;
    memset(&v51[4], 0, 256);
    CFStringGetCString(CFProperty, &v51[4], 256, 0);
    v17 = (*(*this + 112))(this, v51, v30);
    *v51 = 12;
    v18 = v16 + v17;
    *&v51[2] = v11;
    memset(&v51[4], 0, 256);
    CFStringGetCString(*(*(this + 5) + 8 * v6), &v51[4], 256, 0);
    v19 = (*(*this + 112))(this, v51, v12);
    v20 = v18 + (*(*this + 112))(this, &v40, 4);
    v39 = ((v29 + v12) & 0xFFFFFFFC) + 8;
    v2 = v20 + (*(*this + 112))(this, &v39, 4) + v19;
    if (++v6 >= this[8])
    {
      goto LABEL_20;
    }
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    *&buf[4] = v6;
    v22 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    *&buf[4] = v6;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::writeFileHeader Uninitialized fStreamNameArray, i: %d\n", buf, 8u);
LABEL_15:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49 = v25;
    v50 = v25;
    v47 = v25;
    v48 = v25;
    v45 = v25;
    v46 = v25;
    *buf = v25;
    v44 = v25;
    memset(&v37, 0, sizeof(v37));
    v36 = 0xAAAAAAAAAAAAAAAALL;
    time(&v36);
    localtime_r(&v36, &v37);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v37);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPcapngFormatter::writeFileHeader Uninitialized fStreamNameArray, i: %d\n");
  }

LABEL_20:
  if (theString)
  {
    CFRelease(theString);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t CCPcapngFormatter::buildStreamToInterfaceTable(CCPcapngFormatter *this)
{
  v1 = this;
  v97 = *MEMORY[0x277D85DE8];
  CCPcapngFormatter::freeInterfaceTables(this);
  iterator = -1431655766;
  MEMORY[0x245D67870](*(v1 + 3), "IOService", &iterator);
  v2 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(*(v1 + 3), @"Name", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  v4 = 0;
  v70 = v1;
  while (1)
  {
    v5 = IOIteratorNext(iterator);
    if (!v5)
    {
      break;
    }

    v6 = IORegistryEntryCreateCFProperty(v5, @"Name", v2, 0);
    if (v6)
    {
      v7 = v6;
      v8 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        CStringPtr = CFStringGetCStringPtr(v7, 0);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = CStringPtr;
        v10 = v8;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v11 = CFStringGetCStringPtr(v7, 0);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v11;
        v10 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "Stream Name is %s\n", &buf, 0xCu);
LABEL_12:
      if (glog_fd)
      {
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v87 = v12;
        v88 = v12;
        v85 = v12;
        v86 = v12;
        v83 = v12;
        v84 = v12;
        buf = v12;
        v82 = v12;
        memset(v76, 0, 56);
        *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v74.tm_sec);
        localtime_r(&v74.tm_sec, v76);
        strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
        dprintf(glog_fd, "%s ", &buf);
        v13 = glog_fd;
        v14 = CFStringGetCStringPtr(v7, 0);
        dprintf(v13, "Stream Name is %s\n", v14);
      }

      ++v4;
      CFRelease(v7);
      v1 = v70;
    }
  }

  *(v1 + 8) = v4 + 1;
  v15 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v4;
      v16 = v15;
      goto LABEL_20;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v4;
    v16 = MEMORY[0x277D86220];
LABEL_20:
    _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCPcapngFormatter::buildStreamToInterfaceTable numberofStreams : %d\n", &buf, 8u);
  }

  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v87 = v17;
    v88 = v17;
    v85 = v17;
    v86 = v17;
    v83 = v17;
    v84 = v17;
    buf = v17;
    v82 = v17;
    memset(v76, 0, 56);
    *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v74.tm_sec);
    localtime_r(&v74.tm_sec, v76);
    strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
    dprintf(glog_fd, "%s ", &buf);
    dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable numberofStreams : %d\n", *(v1 + 8) - 1);
  }

  v18 = malloc_type_calloc(*(v1 + 8), 8uLL, 0x2004093837F09uLL);
  *(v1 + 5) = v18;
  if (!v18)
  {
    v54 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

      LOWORD(buf) = 0;
      v55 = v54;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

      LOWORD(buf) = 0;
      v55 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v55, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate stream name memory\n", &buf, 2u);
LABEL_101:
    if (glog_fd)
    {
      *&v62 = 0xAAAAAAAAAAAAAAAALL;
      *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v87 = v62;
      v88 = v62;
      v85 = v62;
      v86 = v62;
      v83 = v62;
      v84 = v62;
      buf = v62;
      v82 = v62;
      memset(v76, 0, 56);
      *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v74.tm_sec);
      localtime_r(&v74.tm_sec, v76);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate stream name memory\n");
    }

    goto LABEL_112;
  }

  v19 = malloc_type_calloc(*(v1 + 8), 4uLL, 0x100004052888210uLL);
  *(v1 + 7) = v19;
  if (!v19)
  {
    v56 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      LOWORD(buf) = 0;
      v57 = v56;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_104;
      }

      LOWORD(buf) = 0;
      v57 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v57, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate Interface ID memory\n", &buf, 2u);
LABEL_104:
    if (glog_fd)
    {
      *&v63 = 0xAAAAAAAAAAAAAAAALL;
      *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v87 = v63;
      v88 = v63;
      v85 = v63;
      v86 = v63;
      v83 = v63;
      v84 = v63;
      buf = v63;
      v82 = v63;
      memset(v76, 0, 56);
      *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v74.tm_sec);
      localtime_r(&v74.tm_sec, v76);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate Interface ID memory\n");
    }

    goto LABEL_112;
  }

  v20 = malloc_type_calloc(*(v1 + 8), 8uLL, 0x6004044C4A2DFuLL);
  *(v1 + 6) = v20;
  if (!v20)
  {
    v58 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      LOWORD(buf) = 0;
      v59 = v58;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      LOWORD(buf) = 0;
      v59 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v59, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate stream header memory\n", &buf, 2u);
LABEL_107:
    if (glog_fd)
    {
      *&v64 = 0xAAAAAAAAAAAAAAAALL;
      *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v87 = v64;
      v88 = v64;
      v85 = v64;
      v86 = v64;
      v83 = v64;
      v84 = v64;
      buf = v64;
      v82 = v64;
      memset(v76, 0, 56);
      *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v74.tm_sec);
      localtime_r(&v74.tm_sec, v76);
      strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
      dprintf(glog_fd, "%s ", &buf);
      dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate stream header memory\n");
    }

    goto LABEL_112;
  }

  v21 = malloc_type_calloc(*(v1 + 8), 2uLL, 0x1000040BDFB0063uLL);
  *(v1 + 8) = v21;
  if (v21)
  {
    **(v1 + 7) = 0;
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v95 = v22;
    v96 = v22;
    v93 = v22;
    v94 = v22;
    v91 = v22;
    v92 = v22;
    v89 = v22;
    v90 = v22;
    v87 = v22;
    v88 = v22;
    v85 = v22;
    v86 = v22;
    v83 = v22;
    v84 = v22;
    buf = v22;
    v82 = v22;
    if (CFStringGetCString(@"unknown", &buf, 256, 0))
    {
      **(v1 + 5) = CFStringCreateWithCString(v2, &buf, 0);
      goto LABEL_35;
    }

    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *v76 = 0;
        v24 = v23;
        goto LABEL_87;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v76 = 0;
      v24 = MEMORY[0x277D86220];
LABEL_87:
      _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate log identifier memory\n", v76, 2u);
    }

    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v79 = v25;
      v80 = v25;
      v77 = v25;
      v78 = v25;
      *&v76[32] = v25;
      *&v76[48] = v25;
      *v76 = v25;
      *&v76[16] = v25;
      memset(&v74, 0, sizeof(v74));
      v73 = 0xAAAAAAAAAAAAAAAALL;
      time(&v73);
      localtime_r(&v73, &v74);
      strftime(v76, 0x80uLL, "%b %d %H:%M:%S", &v74);
      dprintf(glog_fd, "%s ", v76);
      dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate log identifier memory\n");
    }

LABEL_35:
    **(v1 + 6) = 0;
    IOObjectRelease(iterator);
    MEMORY[0x245D67870](*(v1 + 3), "IOService", &iterator);
    v71 = 1;
    while (2)
    {
      while (2)
      {
        v26 = IOIteratorNext(iterator);
        if (!v26)
        {
          IOObjectRelease(iterator);
          result = 1;
          goto LABEL_85;
        }

        v27 = v26;
        v28 = IORegistryEntryCreateCFProperty(v26, @"Name", v2, 0);
        if (!v28)
        {
          v29 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              v30 = v29;
              goto LABEL_47;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            v30 = MEMORY[0x277D86220];
LABEL_47:
            _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable MISSING STREAM NAME\n", &buf, 2u);
          }

          if (glog_fd)
          {
            *&v31 = 0xAAAAAAAAAAAAAAAALL;
            *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v87 = v31;
            v88 = v31;
            v85 = v31;
            v86 = v31;
            v83 = v31;
            v84 = v31;
            buf = v31;
            v82 = v31;
            memset(v76, 0, 56);
            *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
            time(&v74.tm_sec);
            localtime_r(&v74.tm_sec, v76);
            strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
            dprintf(glog_fd, "%s ", &buf);
            dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable MISSING STREAM NAME\n");
          }

          continue;
        }

        break;
      }

      v32 = v28;
      v33 = IORegistryEntryCreateCFProperty(v27, @"Id", v2, 0);
      v34 = v33;
      valuePtr = 0;
      if (v33)
      {
        CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_54;
      }

      v35 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          v36 = v35;
          goto LABEL_79;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        v36 = MEMORY[0x277D86220];
LABEL_79:
        _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "CCPcapngFormatter:: failed to get stream id\n", &buf, 2u);
      }

      v1 = v70;
      if (glog_fd)
      {
        *&v37 = 0xAAAAAAAAAAAAAAAALL;
        *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v87 = v37;
        v88 = v37;
        v85 = v37;
        v86 = v37;
        v83 = v37;
        v84 = v37;
        buf = v37;
        v82 = v37;
        memset(v76, 0, 56);
        *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v74.tm_sec);
        localtime_r(&v74.tm_sec, v76);
        strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
        dprintf(glog_fd, "%s ", &buf);
        dprintf(glog_fd, "CCPcapngFormatter:: failed to get stream id\n");
      }

LABEL_54:
      v38 = v71;
      if (v71 < *(v1 + 8))
      {
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v95 = v39;
        v96 = v39;
        v93 = v39;
        v94 = v39;
        v91 = v39;
        v92 = v39;
        v89 = v39;
        v90 = v39;
        v87 = v39;
        v88 = v39;
        v85 = v39;
        v86 = v39;
        v83 = v39;
        v84 = v39;
        buf = v39;
        v82 = v39;
        if (CFStringGetCString(v32, &buf, 256, 0))
        {
          v40 = CFStringCreateWithCString(v2, &buf, 0);
          v41 = v71;
          *(*(v1 + 5) + 8 * v71) = v40;
          goto LABEL_63;
        }

        v42 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *v76 = 0;
            v43 = v42;
            goto LABEL_83;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v76 = 0;
          v43 = MEMORY[0x277D86220];
LABEL_83:
          _os_log_error_impl(&dword_2452A3000, v43, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate log identifier memory\n", v76, 2u);
        }

        v1 = v70;
        v41 = v71;
        if (glog_fd)
        {
          *&v44 = 0xAAAAAAAAAAAAAAAALL;
          *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v79 = v44;
          v80 = v44;
          v77 = v44;
          v78 = v44;
          *&v76[32] = v44;
          *&v76[48] = v44;
          *v76 = v44;
          *&v76[16] = v44;
          memset(&v74, 0, sizeof(v74));
          v73 = 0xAAAAAAAAAAAAAAAALL;
          time(&v73);
          localtime_r(&v73, &v74);
          strftime(v76, 0x80uLL, "%b %d %H:%M:%S", &v74);
          dprintf(glog_fd, "%s ", v76);
          dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate log identifier memory\n");
          v41 = v71;
        }

LABEL_63:
        *(*(v1 + 7) + 4 * v41) = valuePtr;
        v45 = IORegistryEntryCreateCFProperty(v27, @"StreamHeader", v2, 0);
        v46 = v45;
        v69 = v34;
        if (v45 && (CFDataGetLength(v45) & 7) != 0)
        {
          v47 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              *v76 = 0;
              v48 = v47;
              goto LABEL_81;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *v76 = 0;
            v48 = MEMORY[0x277D86220];
LABEL_81:
            _os_log_error_impl(&dword_2452A3000, v48, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable: stream specific header not aligned to 64 bits. Dropping.", v76, 2u);
          }

          if (glog_fd)
          {
            *&v49 = 0xAAAAAAAAAAAAAAAALL;
            *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v79 = v49;
            v80 = v49;
            v77 = v49;
            v78 = v49;
            *&v76[32] = v49;
            *&v76[48] = v49;
            *v76 = v49;
            *&v76[16] = v49;
            memset(&v74, 0, sizeof(v74));
            v73 = 0xAAAAAAAAAAAAAAAALL;
            time(&v73);
            localtime_r(&v73, &v74);
            strftime(v76, 0x80uLL, "%b %d %H:%M:%S", &v74);
            dprintf(glog_fd, "%s ", v76);
            dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable: stream specific header not aligned to 64 bits. Dropping.");
          }

          CFRelease(v46);
          v46 = 0;
        }

        *(*(v70 + 6) + 8 * v71) = v46;
        v1 = v70;
        v50 = IORegistryEntryCreateCFProperty(v27, @"MiscInfo", v2, 0);
        if (v50)
        {
          v51 = v50;
          CFNumberGetValue(v50, kCFNumberSInt32Type, v76);
          *(*(v70 + 8) + 2 * v71) = *v76;
          CFRelease(v51);
        }

        v38 = v71 + 1;
        v34 = v69;
      }

      v71 = v38;
      if (v34)
      {
        CFRelease(v34);
      }

      CFRelease(v32);
      continue;
    }
  }

  v60 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      v61 = v60;
      goto LABEL_127;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    v61 = MEMORY[0x277D86220];
LABEL_127:
    _os_log_error_impl(&dword_2452A3000, v61, OS_LOG_TYPE_ERROR, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate dlt memory\n", &buf, 2u);
  }

  if (glog_fd)
  {
    *&v65 = 0xAAAAAAAAAAAAAAAALL;
    *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v87 = v65;
    v88 = v65;
    v85 = v65;
    v86 = v65;
    v83 = v65;
    v84 = v65;
    buf = v65;
    v82 = v65;
    memset(v76, 0, 56);
    *&v74.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v74.tm_sec);
    localtime_r(&v74.tm_sec, v76);
    strftime(&buf, 0x80uLL, "%b %d %H:%M:%S", v76);
    dprintf(glog_fd, "%s ", &buf);
    dprintf(glog_fd, "CCPcapngFormatter::buildStreamToInterfaceTable Failed to allocate dlt memory\n");
  }

LABEL_112:
  v66 = *(v1 + 5);
  if (v66)
  {
    free(v66);
    *(v1 + 5) = 0;
  }

  v67 = *(v1 + 7);
  if (v67)
  {
    free(v67);
    *(v1 + 7) = 0;
  }

  v68 = *(v1 + 6);
  if (v68)
  {
    free(v68);
    *(v1 + 6) = 0;
  }

  result = *(v1 + 8);
  if (result)
  {
    free(result);
    result = 0;
    *(v1 + 8) = 0;
  }

LABEL_85:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

void CCPcapngFormatter::freeInterfaceTables(CCPcapngFormatter *this)
{
  CCPcapngFormatter::freeStreamNameArray(this);
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
    *(this + 7) = 0;
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 8);
    if (!v4)
    {
      goto LABEL_10;
    }

    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 6) + 8 * i);
      if (v6)
      {
        CFRelease(v6);
        *(*(this + 6) + 8 * i) = 0;
        v4 = *(this + 8);
      }
    }

    v3 = *(this + 6);
    if (v3)
    {
LABEL_10:
      free(v3);
      *(this + 6) = 0;
    }
  }

  v7 = *(this + 8);
  if (v7)
  {
    free(v7);
    *(this + 8) = 0;
  }
}

void CCPcapngFormatter::freeStreamNameArray(CCPcapngFormatter *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 8);
    if (!v3)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v3; *(v5 + 8 * i++) = 0)
    {
      v5 = *(this + 5);
      v6 = *(v5 + 8 * i);
      if (v6)
      {
        CFRelease(v6);
        *(*(this + 5) + 8 * i) = 0;
        v5 = *(this + 5);
        v3 = *(this + 8);
      }
    }

    v2 = *(this + 5);
    if (v2)
    {
LABEL_8:
      free(v2);
      *(this + 5) = 0;
    }
  }
}

uint64_t CCPcapngFormatter::ccfree(CCPcapngFormatter *this)
{
  CCPcapngFormatter::freeInterfaceTables(this);

  return CCFormatter::ccfree(this);
}

uint64_t CCPcapngFormatter::streamId2InterfaceId(CCPcapngFormatter *this, int a2, unsigned int *a3)
{
  *a3 = 0;
  v3 = *(this + 7);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  while (*(v3 + 4 * v5) != a2)
  {
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  *a3 = v5;
  return 1;
}

uint64_t CCXPCService::initWithConfigureAndPipeMonitor(CCXPCService *this, CCConfigure *a2, CCPipeMonitor *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *(this + 2) = a2;
  (*(*a2 + 40))(a2);
  *(this + 3) = a3;
  (*(*a3 + 40))(a3);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  v5 = pthread_mutex_init((this + 56), 0);
  if (!v5)
  {
    CCXPCService::startXPCService(this);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = v6;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    *&buf[4] = v6;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCXPCService::initWithConfigureAndPipeMonitor ERROR INIT MUTEX: %d\n", buf, 8u);
LABEL_7:
  if (glog_fd)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v9;
    v21 = v9;
    v18 = v9;
    v19 = v9;
    v16 = v9;
    v17 = v9;
    *buf = v9;
    v15 = v9;
    memset(&v13, 0, sizeof(v13));
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    localtime_r(&v12, &v13);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCXPCService::initWithConfigureAndPipeMonitor ERROR INIT MUTEX: %d\n", v6);
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t CCXPCService::startXPCService(CCXPCService *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = dispatch_queue_create("com.apple.corecaptured", 0);
  *(this + 5) = v2;
  mach_service = xpc_connection_create_mach_service("com.apple.corecaptured", v2, 1uLL);
  *(this + 4) = mach_service;
  if (mach_service)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___ZN12CCXPCService15startXPCServiceEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_30;
    handler[4] = this;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(*(this + 4));
    goto LABEL_11;
  }

  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCXPCService::startXPCService() Failed to start XPC service \n", buf, 2u);
LABEL_9:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v6;
    v19 = v6;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    *buf = v6;
    v13 = v6;
    memset(&v10, 0, sizeof(v10));
    v9 = 0xAAAAAAAAAAAAAAAALL;
    time(&v9);
    localtime_r(&v9, &v10);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v10);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCXPCService::startXPCService() Failed to start XPC service \n");
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void CCXPCService::handleConnectionEvent(dispatch_queue_t *this, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit((CCDaemon::getInstance(this) + 304), memory_order_acquire))
  {
    v4 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = v4;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v5 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "CCXPCService::handleConnectionEvent CCDaemon::getInstance().isShutdownPending() true, dropping xpc event and exiting\n", buf, 2u);
LABEL_11:
    if (glog_fd)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v31 = v10;
      v32 = v10;
      v29 = v10;
      v30 = v10;
      v27 = v10;
      v28 = v10;
      v26 = v10;
      *buf = v10;
      memset(&v24, 0, sizeof(v24));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      time(&v23);
      localtime_r(&v23, &v24);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCXPCService::handleConnectionEvent CCDaemon::getInstance().isShutdownPending() true, dropping xpc event and exiting\n", v21);
    }

    goto LABEL_35;
  }

  v6 = MEMORY[0x245D683E0](a2);
  if (v6 != MEMORY[0x277D86450])
  {
    v7 = v6;
    if (v6 != MEMORY[0x277D86480])
    {
      v8 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        *&buf[4] = _StringForXPCType(v7);
        v9 = v8;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        *buf = 136315138;
        *&buf[4] = _StringForXPCType(v7);
        v9 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "Unexpected event type %s\n", buf, 0xCu);
LABEL_22:
      if (glog_fd)
      {
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31 = v16;
        v32 = v16;
        v29 = v16;
        v30 = v16;
        v27 = v16;
        v28 = v16;
        v26 = v16;
        *buf = v16;
        memset(&v24, 0, sizeof(v24));
        v23 = 0xAAAAAAAAAAAAAAAALL;
        time(&v23);
        localtime_r(&v23, &v24);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
        dprintf(glog_fd, "%s ", buf);
        v17 = glog_fd;
        _StringForXPCType(v7);
        dprintf(v17, "Unexpected event type %s\n");
      }

      goto LABEL_35;
    }

    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 136315138;
      *&buf[4] = string;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 136315138;
      *&buf[4] = string;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "Got an XPC error: %s\n", buf, 0xCu);
LABEL_33:
    if (glog_fd)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v31 = v19;
      v32 = v19;
      v29 = v19;
      v30 = v19;
      v27 = v19;
      v28 = v19;
      v26 = v19;
      *buf = v19;
      memset(&v24, 0, sizeof(v24));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      time(&v23);
      localtime_r(&v23, &v24);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Got an XPC error: %s\n");
    }

    goto LABEL_35;
  }

  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = v11;
LABEL_26:
      _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "Received a connection event\n", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v12 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  if (glog_fd)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31 = v18;
    v32 = v18;
    v29 = v18;
    v30 = v18;
    v27 = v18;
    v28 = v18;
    v26 = v18;
    *buf = v18;
    memset(&v24, 0, sizeof(v24));
    v23 = 0xAAAAAAAAAAAAAAAALL;
    time(&v23);
    localtime_r(&v23, &v24);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "Received a connection event\n");
  }

  xpc_retain(a2);
  xpc_connection_set_target_queue(a2, this[5]);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN12CCXPCService21handleConnectionEventEPv_block_invoke;
  handler[3] = &__block_descriptor_tmp_26_2139;
  handler[4] = this;
  handler[5] = a2;
  xpc_connection_set_event_handler(a2, handler);
  xpc_connection_resume(a2);
LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
}

const char *_StringForXPCType(const _xpc_type_s *a1)
{
  if (a1 == MEMORY[0x277D86450])
  {
    return "XPC_TYPE_CONNECTION";
  }

  if (a1 == MEMORY[0x277D864B0])
  {
    return "XPC_TYPE_NULL";
  }

  if (a1 == MEMORY[0x277D86448])
  {
    return "XPC_TYPE_BOOL";
  }

  if (a1 == MEMORY[0x277D86498])
  {
    return "XPC_TYPE_INT64";
  }

  if (a1 == MEMORY[0x277D864C8])
  {
    return "XPC_TYPE_UINT64";
  }

  if (a1 == MEMORY[0x277D86470])
  {
    return "XPC_TYPE_DOUBLE";
  }

  if (a1 == MEMORY[0x277D86460])
  {
    return "XPC_TYPE_DATE";
  }

  if (a1 == MEMORY[0x277D86458])
  {
    return "XPC_TYPE_DATA";
  }

  if (a1 == MEMORY[0x277D864C0])
  {
    return "XPC_TYPE_STRING";
  }

  if (a1 == MEMORY[0x277D864D0])
  {
    return "XPC_TYPE_UUID";
  }

  if (a1 == MEMORY[0x277D86488])
  {
    return "XPC_TYPE_FD";
  }

  if (a1 == MEMORY[0x277D864B8])
  {
    return "XPC_TYPE_SHMEM";
  }

  if (a1 == MEMORY[0x277D86440])
  {
    return "XPC_TYPE_ARRAY";
  }

  if (a1 == MEMORY[0x277D86468])
  {
    return "XPC_TYPE_DICTIONARY";
  }

  if (a1 == MEMORY[0x277D86480])
  {
    return "XPC_TYPE_ERROR";
  }

  return "Unknown type";
}

void CCXPCService::handleIncomingMessage(CCXPCService *this, _xpc_connection_s *a2, void *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = coreCaptureOsLog;
  v7 = MEMORY[0x277D86480];
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109632;
    *&buf[4] = MEMORY[0x245D683E0](a3) == MEMORY[0x277D86450];
    *&buf[8] = 1024;
    *&buf[10] = MEMORY[0x245D683E0](a3) == v7;
    *&buf[14] = 1024;
    *&buf[16] = MEMORY[0x245D683E0](a3) == MEMORY[0x277D86468];
    v8 = v6;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 67109632;
    *&buf[4] = MEMORY[0x245D683E0](a3) == MEMORY[0x277D86450];
    *&buf[8] = 1024;
    *&buf[10] = MEMORY[0x245D683E0](a3) == v7;
    *&buf[14] = 1024;
    *&buf[16] = MEMORY[0x245D683E0](a3) == MEMORY[0x277D86468];
    v8 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCXPCService::handleIncomingMessage: incoming, incomingConnection, XPC_TYPE_CONNECTION, %d, XPC_TYPE_ERROR, %d, XPC_TYPE_DICTIONARY, %d\n", buf, 0x14u);
LABEL_7:
  if (glog_fd)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v97 = v9;
    v98 = v9;
    *&buf[64] = v9;
    v96 = v9;
    *&buf[32] = v9;
    *&buf[48] = v9;
    *buf = v9;
    *&buf[16] = v9;
    memset(&v93, 0, sizeof(v93));
    *&v99 = 0xAAAAAAAAAAAAAAAALL;
    time(&v99);
    localtime_r(&v99, &v93);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
    dprintf(glog_fd, "%s ", buf);
    v10 = glog_fd;
    v11 = MEMORY[0x245D683E0](a3) == MEMORY[0x277D86450];
    v12 = MEMORY[0x245D683E0](a3) == v7;
    v13 = MEMORY[0x245D683E0](a3);
    dprintf(v10, "CCXPCService::handleIncomingMessage: incoming, incomingConnection, XPC_TYPE_CONNECTION, %d, XPC_TYPE_ERROR, %d, XPC_TYPE_DICTIONARY, %d\n", v11, v12, v13 == MEMORY[0x277D86468]);
  }

  if (MEMORY[0x245D683E0](a3) == v7)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = v17;
LABEL_34:
        _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "CCXPCService::handleIncomingMessage release, incomingConnection\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    if (glog_fd)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v97 = v32;
      v98 = v32;
      *&buf[64] = v32;
      v96 = v32;
      *&buf[32] = v32;
      *&buf[48] = v32;
      *buf = v32;
      *&buf[16] = v32;
      memset(&v93, 0, sizeof(v93));
      *&v99 = 0xAAAAAAAAAAAAAAAALL;
      time(&v99);
      localtime_r(&v99, &v93);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCXPCService::handleIncomingMessage release, incomingConnection\n");
    }

    v33 = &__block_literal_global_2168;
    goto LABEL_54;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99 = v14;
  v100 = v14;
  xpc_connection_get_audit_token();
  error = 0;
  v15 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 67109376;
    *&buf[4] = v99;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v100);
    v16 = v15;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 67109376;
    *&buf[4] = v99;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v100);
    v16 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "Token is [0]: 0x%x... [7]:%x \n", buf, 0xEu);
LABEL_17:
  if (glog_fd)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v97 = v19;
    v98 = v19;
    *&buf[64] = v19;
    v96 = v19;
    *&buf[32] = v19;
    *&buf[48] = v19;
    *buf = v19;
    *&buf[16] = v19;
    memset(&v93, 0, sizeof(v93));
    v92 = 0xAAAAAAAAAAAAAAAALL;
    time(&v92);
    localtime_r(&v92, &v93);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "Token is [0]: 0x%x... [7]:%x \n", v99, HIDWORD(v100));
  }

  v20 = *MEMORY[0x277CBECE8];
  *buf = v99;
  *&buf[16] = v100;
  v21 = SecTaskCreateWithAuditToken(v20, buf);
  if (!v21)
  {
    v28 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v29 = v28;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v29 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "Entitlement query did not succeed \n", buf, 2u);
LABEL_39:
    if (glog_fd)
    {
      *&v34 = 0xAAAAAAAAAAAAAAAALL;
      *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v97 = v34;
      v98 = v34;
      *&buf[64] = v34;
      v96 = v34;
      *&buf[32] = v34;
      *&buf[48] = v34;
      *buf = v34;
      *&buf[16] = v34;
      memset(&v93, 0, sizeof(v93));
      v92 = 0xAAAAAAAAAAAAAAAALL;
      time(&v92);
      localtime_r(&v92, &v93);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Entitlement query did not succeed \n");
    }

    goto LABEL_53;
  }

  v22 = v21;
  v23 = SecTaskCopyValueForEntitlement(v21, @"com.apple.corecapture.manager-access", &error);
  if (!v23)
  {
    v30 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v31 = v30;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v31 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "Entitlement is NULL \n", buf, 2u);
LABEL_42:
    if (glog_fd)
    {
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v97 = v35;
      v98 = v35;
      *&buf[64] = v35;
      v96 = v35;
      *&buf[32] = v35;
      *&buf[48] = v35;
      *buf = v35;
      *&buf[16] = v35;
      memset(&v93, 0, sizeof(v93));
      v92 = 0xAAAAAAAAAAAAAAAALL;
      time(&v92);
      localtime_r(&v92, &v93);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Entitlement is NULL \n");
    }

LABEL_44:
    v36 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v37 = v36;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v37 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v37, OS_LOG_TYPE_ERROR, "Entitlement couldnt be found \n", buf, 2u);
LABEL_48:
    if (glog_fd)
    {
      *&v38 = 0xAAAAAAAAAAAAAAAALL;
      *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v97 = v38;
      v98 = v38;
      *&buf[64] = v38;
      v96 = v38;
      *&buf[32] = v38;
      *&buf[48] = v38;
      *buf = v38;
      *&buf[16] = v38;
      memset(&v93, 0, sizeof(v93));
      v92 = 0xAAAAAAAAAAAAAAAALL;
      time(&v92);
      localtime_r(&v92, &v93);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Entitlement couldnt be found \n");
    }

    if (!v23)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(v23))
  {
    goto LABEL_44;
  }

  v25 = CFEqual(v23, *MEMORY[0x277CBED28]);
  v26 = coreCaptureOsLog;
  if (v25)
  {
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = v26;
LABEL_61:
        _os_log_impl(&dword_2452A3000, v27, OS_LOG_TYPE_DEFAULT, "Entitlement exists, and check is successful\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v27 = MEMORY[0x277D86220];
      goto LABEL_61;
    }

    if (!glog_fd)
    {
      CFRelease(v23);
      CFRelease(v22);
      v43 = 0x27EE11000;
      goto LABEL_69;
    }

    *&v41 = 0xAAAAAAAAAAAAAAAALL;
    *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v97 = v41;
    v98 = v41;
    *&buf[64] = v41;
    v96 = v41;
    *&buf[32] = v41;
    *&buf[48] = v41;
    *buf = v41;
    *&buf[16] = v41;
    memset(&v93, 0, sizeof(v93));
    v92 = 0xAAAAAAAAAAAAAAAALL;
    time(&v92);
    localtime_r(&v92, &v93);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "Entitlement exists, and check is successful\n");
    goto LABEL_68;
  }

  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 0;
    v40 = v26;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 0;
    v40 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v40, OS_LOG_TYPE_ERROR, "Entitlement exists, but check failed. \n", buf, 2u);
LABEL_66:
  if (glog_fd)
  {
    *&v44 = 0xAAAAAAAAAAAAAAAALL;
    *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v97 = v44;
    v98 = v44;
    *&buf[64] = v44;
    v96 = v44;
    *&buf[32] = v44;
    *&buf[48] = v44;
    *buf = v44;
    *&buf[16] = v44;
    memset(&v93, 0, sizeof(v93));
    v92 = 0xAAAAAAAAAAAAAAAALL;
    time(&v92);
    localtime_r(&v92, &v93);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "Entitlement exists, but check failed. \n");
LABEL_68:
    CFRelease(v23);
    CFRelease(v22);
    v43 = 0x27EE11000uLL;
    if (v25)
    {
LABEL_69:
      if (atomic_load_explicit((CCDaemon::getInstance(v42) + 304), memory_order_acquire))
      {
        v45 = *(v43 + 2848);
        if (v45)
        {
          if (!os_log_type_enabled(*(v43 + 2848), OS_LOG_TYPE_ERROR))
          {
            goto LABEL_81;
          }

          *buf = 0;
          v46 = v45;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_81;
          }

          *buf = 0;
          v46 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v46, OS_LOG_TYPE_ERROR, "CCXPCService::handleIncomingMessage CCDaemon::getInstance().isShutdownPending() true, dropping message and exiting\n", buf, 2u);
LABEL_81:
        if (glog_fd)
        {
          *&v52 = 0xAAAAAAAAAAAAAAAALL;
          *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v97 = v52;
          v98 = v52;
          *&buf[64] = v52;
          v96 = v52;
          *&buf[32] = v52;
          *&buf[48] = v52;
          *buf = v52;
          *&buf[16] = v52;
          memset(&v93, 0, sizeof(v93));
          *&v99 = 0xAAAAAAAAAAAAAAAALL;
          time(&v99);
          localtime_r(&v99, &v93);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCXPCService::handleIncomingMessage CCDaemon::getInstance().isShutdownPending() true, dropping message and exiting\n");
        }

        goto LABEL_83;
      }

      *(this + 48) = 1;
      if (pthread_mutex_lock((this + 56)))
      {
        goto LABEL_83;
      }

      if (MEMORY[0x245D683E0](a3) != MEMORY[0x277D86468] || (remote_connection = xpc_dictionary_get_remote_connection(a3)) == 0)
      {
LABEL_92:
        *(this + 48) = 0;
        pthread_mutex_unlock((this + 56));
        goto LABEL_55;
      }

      connection = remote_connection;
      string = xpc_dictionary_get_string(a3, "CCConfig");
      v49 = *(v43 + 2848);
      if (string)
      {
        v50 = string;
        if (v49)
        {
          if (os_log_type_enabled(*(v43 + 2848), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v50;
            v51 = v49;
LABEL_110:
            _os_log_impl(&dword_2452A3000, v51, OS_LOG_TYPE_DEFAULT, "CCConfig is %s\n", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v50;
          v51 = MEMORY[0x277D86220];
          goto LABEL_110;
        }

        if (glog_fd)
        {
          *&v58 = 0xAAAAAAAAAAAAAAAALL;
          *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v97 = v58;
          v98 = v58;
          *&buf[64] = v58;
          v96 = v58;
          *&buf[32] = v58;
          *&buf[48] = v58;
          *buf = v58;
          *&buf[16] = v58;
          memset(&v93, 0, sizeof(v93));
          *&v99 = 0xAAAAAAAAAAAAAAAALL;
          time(&v99);
          localtime_r(&v99, &v93);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCConfig is %s\n", v50);
        }

        v59 = strncmp(v50, "ProfileLoaded", 0xEuLL);
        if (v59)
        {
          v59 = strncmp(v50, "ProfileRemoved", 0xFuLL);
          if (v59)
          {
            v60 = strlen(v50);
            v61 = CFDataCreate(v20, v50, v60);
            *&v99 = 100;
            v62 = CFPropertyListCreateWithData(v20, v61, 0, &v99, 0);
            v87 = v61;
            theDict = v62;
            if (!v62 || (v63 = v62, !CFPropertyListIsValid(v62, kCFPropertyListXMLFormat_v1_0)) || (v64 = CFGetTypeID(v63), v64 != CFDictionaryGetTypeID()))
            {
              v53 = 0;
              Count = 0;
LABEL_152:
              v56 = v87;
              v55 = theDict;
LABEL_84:
              xpc_connection_set_event_handler(a2, &__block_literal_global_23);
              xpc_connection_cancel(a2);
              xpc_release(a2);
              if (!Count)
              {
LABEL_86:
                if (v53)
                {
                  free(v53);
                }

                if (v56)
                {
                  CFRelease(v56);
                }

                if (v55)
                {
                  CFRelease(v55);
                }

                goto LABEL_92;
              }

LABEL_85:
              free(Count);
              goto LABEL_86;
            }

            Count = CFDictionaryGetCount(v63);
            v65 = *(v43 + 2848);
            if (v65)
            {
              if (os_log_type_enabled(*(v43 + 2848), OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = Count;
                v66 = v65;
LABEL_127:
                _os_log_impl(&dword_2452A3000, v66, OS_LOG_TYPE_DEFAULT, "CCXPCService::handleIncomingMessage keycount : %ld\n", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = Count;
              v66 = MEMORY[0x277D86220];
              goto LABEL_127;
            }

            if (glog_fd)
            {
              *&v69 = 0xAAAAAAAAAAAAAAAALL;
              *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v97 = v69;
              v98 = v69;
              *&buf[64] = v69;
              v96 = v69;
              *&buf[32] = v69;
              *&buf[48] = v69;
              *buf = v69;
              *&buf[16] = v69;
              memset(&v93, 0, sizeof(v93));
              error = 0xAAAAAAAAAAAAAAAALL;
              time(&error);
              localtime_r(&error, &v93);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "CCXPCService::handleIncomingMessage keycount : %ld\n", Count);
            }

            if (!Count)
            {
              v53 = 0;
LABEL_147:
              v56 = v87;
              v55 = theDict;
              if (!Count)
              {
                goto LABEL_86;
              }

              goto LABEL_85;
            }

            v90 = Count;
            v70 = 8 * Count;
            Count = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
            v53 = malloc_type_malloc(v70, 0x80040B8603338uLL);
            CFDictionaryGetKeysAndValues(theDict, Count, v53);
            v71 = 0;
            while (1)
            {
              v72 = *(Count + 8 * v71);
              v73 = CFStringGetTypeID();
              if (!validCFObjectReference("CCXPCService::handleIncomingMessage", v72, v73))
              {
                goto LABEL_152;
              }

              v74 = *(v53 + v71);
              v75 = CFDictionaryGetTypeID();
              if (!validCFObjectReference("CCXPCService::handleIncomingMessage", v74, v75))
              {
                goto LABEL_152;
              }

              Length = CFStringGetLength(*(Count + 8 * v71));
              v77 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
              v91 = v71;
              v78 = *(Count + 8 * v71);
              v79 = CFStringGetLength(v78);
              CFStringGetCString(v78, v77, v79 + 1, 0);
              v80 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = v77;
                  v81 = v80;
LABEL_139:
                  _os_log_impl(&dword_2452A3000, v81, OS_LOG_TYPE_DEFAULT, "CCXPCService::handleIncomingMessage Key is %s\n", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = v77;
                v81 = MEMORY[0x277D86220];
                goto LABEL_139;
              }

              v82 = 0uLL;
              if (glog_fd)
              {
                *&v83 = 0xAAAAAAAAAAAAAAAALL;
                *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v97 = v83;
                v98 = v83;
                *&buf[64] = v83;
                v96 = v83;
                *&buf[32] = v83;
                *&buf[48] = v83;
                *buf = v83;
                *&buf[16] = v83;
                error = 0xAAAAAAAAAAAAAAAALL;
                memset(&v93, 0, sizeof(v93));
                time(&error);
                localtime_r(&error, &v93);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "CCXPCService::handleIncomingMessage Key is %s\n", v77);
                v82 = 0uLL;
              }

              v84 = *(this + 2);
              v85 = *(v53 + v91);
              *&v96 = 0xAAAAAAAAAAAAAA01;
              *buf = v84;
              *&buf[8] = v82;
              *&buf[24] = v82;
              *&buf[40] = v82;
              *&buf[56] = v82;
              *&buf[72] = 0;
              CCConfigure::applyConfiguration(v84, v85, buf);
              if (v77)
              {
                free(v77);
              }

              v71 = v91 + 1;
              if (v90 == v91 + 1)
              {
                reply = xpc_dictionary_create_reply(a3);
                xpc_dictionary_set_string(reply, "rc", "rc.ok");
                xpc_connection_send_message(connection, reply);
                xpc_release(reply);
                goto LABEL_147;
              }
            }
          }
        }

        Instance = CCDaemon::getInstance(v59);
        CCDaemon::sendProfileChangeNotification(Instance, 1);
LABEL_83:
        v53 = 0;
        Count = 0;
        v55 = 0;
        v56 = 0;
        goto LABEL_84;
      }

      if (v49)
      {
        if (!os_log_type_enabled(*(v43 + 2848), OS_LOG_TYPE_ERROR))
        {
          goto LABEL_123;
        }

        *buf = 136315138;
        *&buf[4] = "CCConfig";
        v57 = v49;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_123;
        }

        *buf = 136315138;
        *&buf[4] = "CCConfig";
        v57 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v57, OS_LOG_TYPE_ERROR, "CCXPCService::handleIncomingMessage No %s is received\n", buf, 0xCu);
LABEL_123:
      if (glog_fd)
      {
        *&v68 = 0xAAAAAAAAAAAAAAAALL;
        *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v97 = v68;
        v98 = v68;
        *&buf[64] = v68;
        v96 = v68;
        *&buf[32] = v68;
        *&buf[48] = v68;
        *buf = v68;
        *&buf[16] = v68;
        memset(&v93, 0, sizeof(v93));
        *&v99 = 0xAAAAAAAAAAAAAAAALL;
        time(&v99);
        localtime_r(&v99, &v93);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v93);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCXPCService::handleIncomingMessage No %s is received\n");
      }

      goto LABEL_83;
    }

    goto LABEL_53;
  }

LABEL_51:
  CFRelease(v23);
LABEL_52:
  CFRelease(v22);
LABEL_53:
  v33 = &__block_literal_global_8;
LABEL_54:
  xpc_connection_set_event_handler(a2, v33);
  xpc_connection_cancel(a2);
  xpc_release(a2);
LABEL_55:
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t CCXPCService::ccfree(CCXPCService *this)
{
  result = CCXPCService::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCXPCService::freeResources(CCXPCService *this)
{
  result = pthread_mutex_lock((this + 56));
  if (!result)
  {
    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 48))(v3);
      *(this + 2) = 0;
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 48))(v4);
      *(this + 3) = 0;
    }

    v5 = *(this + 4);
    if (v5)
    {
      xpc_connection_cancel(v5);
      xpc_release(*(this + 4));
    }

    *(this + 4) = 0;
    v6 = *(this + 5);
    if (v6)
    {
      dispatch_release(v6);
    }

    *(this + 5) = 0;
    pthread_mutex_unlock((this + 56));

    return pthread_mutex_destroy((this + 56));
  }

  return result;
}

void CCXPCService::CCXPCService(CCXPCService *this)
{
  *(this + 2) = 1;
  *this = &unk_28583C360;
}

{
  *(this + 2) = 1;
  *this = &unk_28583C360;
}

ssize_t CCLogFile::doWrite(CCLogFile *this, void *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (!__nbyte)
  {
    return v3;
  }

  v6 = *(this + 162);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(this + 164);
  if (v7 + __nbyte >= *(this + 163))
  {
    CCLogFile::closeMMAP(this);
    *(this + 1288) = 1;
LABEL_6:
    v3 = write(*(this + 9), __buf, v3);
    goto LABEL_7;
  }

  memcpy((v6 + v7), __buf, __nbyte);
  *(this + 164) += v3;
LABEL_7:
  v8 = *(this + 24);
  if (v3 >= 1)
  {
    v8 += v3;
    *(this + 24) = v8;
  }

  if (v8 > *(this + 32))
  {
    *(this + 1288) = 1;
  }

  if (*(this + 18) == 0.0)
  {
    *(this + 18) = CFAbsoluteTimeGetCurrent();
  }

  *(this + 19) = CFAbsoluteTimeGetCurrent();
  return v3;
}

off_t CCLogFile::closeMMAP(CCLogFile *this)
{
  msync(*(this + 162), *(this + 163), 16);
  munmap(*(this + 162), *(this + 163));
  ftruncate(*(this + 9), *(this + 164));
  result = lseek(*(this + 9), 0, 2);
  *(this + 162) = 0;
  *(this + 164) = 0;
  *(this + 163) = 0;
  return result;
}

CCLogFile *CCLogFile::fileWillClose(CCLogFile *this)
{
  if (*(this + 162))
  {
    return CCLogFile::closeMMAP(this);
  }

  return this;
}

void CCLogFile::fileDidOpen(CCLogFile *this, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 <= 0x5000000 && (*(this + 41) & 1) == 0)
  {
    v4 = a2 + 2048;
    ftruncate(*(this + 9), a2 + 2048);
    v5 = mmap(0, v4, 2, 1, *(this + 9), 0);
    *(this + 162) = v5;
    if (v5 != -1)
    {
LABEL_15:
      *(this + 164) = 0;
      *(this + 163) = v4;
      goto LABEL_16;
    }

    *(this + 162) = 0;
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      *&buf[4] = "fileDidOpen";
      *&buf[12] = 1024;
      *&buf[14] = 50;
      v7 = v6;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      *&buf[4] = "fileDidOpen";
      *&buf[12] = 1024;
      *&buf[14] = 50;
      v7 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d: mmap failed\n", buf, 0x12u);
LABEL_13:
    if (glog_fd)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v8;
      v18 = v8;
      v15 = v8;
      v16 = v8;
      v13 = v8;
      v14 = v8;
      *buf = v8;
      *&buf[16] = v8;
      memset(&v11, 0, sizeof(v11));
      v10 = 0xAAAAAAAAAAAAAAAALL;
      time(&v10);
      localtime_r(&v10, &v11);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%d: mmap failed\n", "fileDidOpen", 50);
    }

    goto LABEL_15;
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
}

void CCLogFile::cleanupCapturedFiles(CCLogFile *this)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(this + 31) == 1)
  {
    Length = CFStringGetLength(*(*(this + 22) + 8 * *(this + 46)));
    v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v4 = *(*(this + 22) + 8 * *(this + 46));
    v5 = CFStringGetLength(v4);
    CFStringGetCString(v4, v3, v5 + 1, 0);
    v6 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(this + 31);
        *buf = 67109378;
        *&buf[4] = v7;
        *&buf[8] = 2080;
        *&buf[10] = v3;
        v8 = v6;
LABEL_26:
        _os_log_impl(&dword_2452A3000, v8, OS_LOG_TYPE_DEFAULT, "CCLogFile::cleanupCapturedFiles log type is %d, current file is %s\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(this + 31);
      *buf = 67109378;
      *&buf[4] = v23;
      *&buf[8] = 2080;
      *&buf[10] = v3;
      v8 = MEMORY[0x277D86220];
      goto LABEL_26;
    }

    if (glog_fd)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v24;
      v34 = v24;
      v31 = v24;
      v32 = v24;
      v29 = v24;
      v30 = v24;
      *buf = v24;
      *&buf[16] = v24;
      memset(&v27, 0, sizeof(v27));
      v26 = 0xAAAAAAAAAAAAAAAALL;
      time(&v26);
      localtime_r(&v26, &v27);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::cleanupCapturedFiles log type is %d, current file is %s\n", *(this + 31), v3);
    }

    if (v3)
    {
      free(v3);
    }

    goto LABEL_31;
  }

  pthread_mutex_lock((this + 200));
  v9 = *(this + 33);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (v10 != *(this + 46))
      {
        v11 = *(this + 22);
        if (v11)
        {
          v12 = *(v11 + 8 * v10);
          if (v12)
          {
            break;
          }
        }
      }

LABEL_19:
      if (++v10 >= v9)
      {
        goto LABEL_20;
      }
    }

    v13 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      v14 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0);
        *buf = 67109378;
        *&buf[4] = v10;
        *&buf[8] = 2080;
        *&buf[10] = CStringPtr;
        v16 = v13;
LABEL_15:
        _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCLogFile::cleanupCapturedFiles() deleting file[%u]: %s\n", buf, 0x12u);
      }
    }

    else
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v17 = CFStringGetCStringPtr(v12, 0);
        *buf = 67109378;
        *&buf[4] = v10;
        *&buf[8] = 2080;
        *&buf[10] = v17;
        v16 = MEMORY[0x277D86220];
        goto LABEL_15;
      }
    }

    if (glog_fd)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v18;
      v34 = v18;
      v31 = v18;
      v32 = v18;
      v29 = v18;
      v30 = v18;
      *buf = v18;
      *&buf[16] = v18;
      memset(&v27, 0, sizeof(v27));
      v26 = 0xAAAAAAAAAAAAAAAALL;
      time(&v26);
      localtime_r(&v26, &v27);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
      dprintf(glog_fd, "%s ", buf);
      v19 = glog_fd;
      v20 = CFStringGetCStringPtr(*(*(this + 22) + 8 * v10), 0);
      v14 = dprintf(v19, "CCLogFile::cleanupCapturedFiles() deleting file[%u]: %s\n", v10, v20);
    }

    CCLogFile::deleteFile(v14, *(*(this + 22) + 8 * v10));
    *(*(this + 22) + 8 * v10) = 0;
    v9 = *(this + 33);
    goto LABEL_19;
  }

LABEL_20:
  v21 = *(this + 46);
  if (v21)
  {
    v22 = *(this + 22);
    if (v22)
    {
      *v22 = v22[v21];
      *(*(this + 22) + 8 * v21) = 0;
      *(this + 46) = 0;
    }
  }

  pthread_mutex_unlock((this + 200));
LABEL_31:
  v25 = *MEMORY[0x277D85DE8];
}

void CCLogFile::deleteFile(CCLogFile *this, __CFString *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_13;
  }

  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = CFStringGetCStringPtr(a2, 0);
      v4 = v3;
LABEL_7:
      _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "CCLogFile::deleteFile name: %s\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = CFStringGetCStringPtr(a2, 0);
    v4 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  if (glog_fd)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v5;
    v21 = v5;
    v18 = v5;
    v19 = v5;
    v16 = v5;
    v17 = v5;
    *buf = v5;
    v15 = v5;
    memset(&v13, 0, sizeof(v13));
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    localtime_r(&v12, &v13);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
    dprintf(glog_fd, "%s ", buf);
    v6 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    dprintf(v6, "CCLogFile::deleteFile name: %s\n", CStringPtr);
  }

  Length = CFStringGetLength(a2);
  v9 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v10 = CFStringGetLength(a2);
  CFStringGetCString(a2, v9, v10 + 1, 0);
  unlink(v9);
  if (v9)
  {
    free(v9);
  }

  CFRelease(a2);
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t CCLogFile::initWithRegistryEntry(CCLogFile *this, CCFormatter *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogFile::initWithRegistryEntry \n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72 = v6;
    v73 = v6;
    v70 = v6;
    v71 = v6;
    v69 = v6;
    *&buf[16] = v6;
    v68 = v6;
    *buf = v6;
    memset(&v65, 0, sizeof(v65));
    v66.__sig = 0xAAAAAAAAAAAAAAAALL;
    time(&v66.__sig);
    localtime_r(&v66.__sig, &v65);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogFile::initWithRegistryEntry \n");
  }

  v66.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v66.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v18 = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v18 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCLogFile::initWithRegistryEntry: Invalid arguments\n", buf, 2u);
LABEL_54:
    if (glog_fd)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v31;
      v73 = v31;
      v70 = v31;
      v71 = v31;
      v69 = v31;
      *&buf[16] = v31;
      v68 = v31;
      *buf = v31;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::initWithRegistryEntry: Invalid arguments\n");
    }

    goto LABEL_132;
  }

  if (pthread_mutexattr_init(&v66))
  {
    v19 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 0;
      v20 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 0;
      v20 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "CCLogFile::initWithRegistryEntry: pthread_mutexattr_init failed\n", buf, 2u);
LABEL_57:
    if (glog_fd)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v32;
      v73 = v32;
      v70 = v32;
      v71 = v32;
      v69 = v32;
      *&buf[16] = v32;
      v68 = v32;
      *buf = v32;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::initWithRegistryEntry: pthread_mutexattr_init failed\n");
    }

    goto LABEL_132;
  }

  if (pthread_mutexattr_settype(&v66, 2))
  {
    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v22 = v21;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v22 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCLogFile::initWithRegistryEntry: pthread_mutexattr_settype failed\n", buf, 2u);
LABEL_60:
    if (glog_fd)
    {
      *&v33 = 0xAAAAAAAAAAAAAAAALL;
      *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v33;
      v73 = v33;
      v70 = v33;
      v71 = v33;
      v69 = v33;
      *&buf[16] = v33;
      v68 = v33;
      *buf = v33;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::initWithRegistryEntry: pthread_mutexattr_settype failed\n");
    }

    goto LABEL_132;
  }

  if (pthread_mutex_init((this + 200), &v66))
  {
    v23 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buf = 0;
      v24 = v23;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buf = 0;
      v24 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v24, OS_LOG_TYPE_ERROR, "CCLogFile::initWithRegistryEntry: pthread_mutex_init failed\n", buf, 2u);
LABEL_63:
    if (glog_fd)
    {
      *&v34 = 0xAAAAAAAAAAAAAAAALL;
      *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v34;
      v73 = v34;
      v70 = v34;
      v71 = v34;
      v69 = v34;
      *&buf[16] = v34;
      v68 = v34;
      *buf = v34;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::initWithRegistryEntry: pthread_mutex_init failed\n");
    }

    goto LABEL_132;
  }

  pthread_mutexattr_destroy(&v66);
  if ((CCFile::initWithRegistryEntry(this, a2) & 1) == 0)
  {
    pthread_mutex_destroy((this + 200));
LABEL_132:
    result = 0;
    goto LABEL_30;
  }

  v7 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(a2, @"LogType", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    v25 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 314;
      *&buf[18] = 2080;
      *&buf[20] = "LogType";
      v26 = v25;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 314;
      *&buf[18] = 2080;
      *&buf[20] = "LogType";
      v26 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v26, OS_LOG_TYPE_ERROR, "%s:%06u: Failed reading '%s' from registry\n", buf, 0x1Cu);
LABEL_66:
    if (glog_fd)
    {
      goto LABEL_124;
    }

    goto LABEL_131;
  }

  v9 = CFProperty;
  if (!CFNumberGetValue(CFProperty, kCFNumberSInt32Type, this + 124))
  {
    v27 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 316;
      v28 = v27;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 316;
      v28 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v28, OS_LOG_TYPE_ERROR, "%s:%06u: Failed getting number\n", buf, 0x12u);
LABEL_69:
    if (glog_fd)
    {
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v35;
      v73 = v35;
      v70 = v35;
      v71 = v35;
      v69 = v35;
      *&buf[16] = v35;
      v68 = v35;
      *buf = v35;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      v36 = glog_fd;
      v37 = 316;
LABEL_129:
      dprintf(v36, "%s:%06u: Failed getting number\n", "initWithRegistryEntry", v37);
      goto LABEL_130;
    }

    goto LABEL_130;
  }

  CFRelease(v9);
  if (*(this + 31))
  {
    *(this + 32) = -1;
    v10 = 2;
    goto LABEL_28;
  }

  v11 = IORegistryEntryCreateCFProperty(a2, @"NumberOfFiles", v7, 0);
  if (!v11)
  {
    v38 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_102;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 321;
      *&buf[18] = 2080;
      *&buf[20] = "NumberOfFiles";
      v39 = v38;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_102;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 321;
      *&buf[18] = 2080;
      *&buf[20] = "NumberOfFiles";
      v39 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v39, OS_LOG_TYPE_ERROR, "%s:%06u: Failed reading '%s' from registry\n", buf, 0x1Cu);
LABEL_102:
    if (glog_fd)
    {
      goto LABEL_124;
    }

    goto LABEL_131;
  }

  v9 = v11;
  if (!CFNumberGetValue(v11, kCFNumberSInt32Type, this + 132))
  {
    v40 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "initWithRegistryEntry";
        *&buf[12] = 1024;
        *&buf[14] = 324;
        v41 = v40;
LABEL_150:
        _os_log_error_impl(&dword_2452A3000, v41, OS_LOG_TYPE_ERROR, "%s:%06u: Failed getting number\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 324;
      v41 = MEMORY[0x277D86220];
      goto LABEL_150;
    }

    if (!glog_fd)
    {
      goto LABEL_130;
    }

    *&v57 = 0xAAAAAAAAAAAAAAAALL;
    *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72 = v57;
    v73 = v57;
    v70 = v57;
    v71 = v57;
    v69 = v57;
    *&buf[16] = v57;
    v68 = v57;
    *buf = v57;
    memset(&v65, 0, sizeof(v65));
    v64 = 0xAAAAAAAAAAAAAAAALL;
    time(&v64);
    localtime_r(&v64, &v65);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
    dprintf(glog_fd, "%s ", buf);
    v37 = 324;
LABEL_128:
    v36 = glog_fd;
    goto LABEL_129;
  }

  CFRelease(v9);
  if (!*(this + 33))
  {
    v42 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_108;
      }

      *buf = 0;
      v43 = v42;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_108;
      }

      *buf = 0;
      v43 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v43, OS_LOG_TYPE_ERROR, "CCLogFile::initWithRegistryEntry Number of files can not be 0.\n", buf, 2u);
LABEL_108:
    if (glog_fd)
    {
      *&v58 = 0xAAAAAAAAAAAAAAAALL;
      *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v58;
      v73 = v58;
      v70 = v58;
      v71 = v58;
      v69 = v58;
      *&buf[16] = v58;
      v68 = v58;
      *buf = v58;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::initWithRegistryEntry Number of files can not be 0.\n");
    }

    goto LABEL_131;
  }

  v12 = IORegistryEntryCreateCFProperty(a2, @"FileSize", v7, 0);
  if (!v12)
  {
    v44 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 329;
      *&buf[18] = 2080;
      *&buf[20] = "FileSize";
      v45 = v44;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 329;
      *&buf[18] = 2080;
      *&buf[20] = "FileSize";
      v45 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v45, OS_LOG_TYPE_ERROR, "%s:%06u: Failed reading '%s' from registry\n", buf, 0x1Cu);
LABEL_111:
    if (glog_fd)
    {
      goto LABEL_124;
    }

    goto LABEL_131;
  }

  v9 = v12;
  if (!CFNumberGetValue(v12, kCFNumberSInt32Type, this + 128))
  {
    v47 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "initWithRegistryEntry";
        *&buf[12] = 1024;
        *&buf[14] = 331;
        v48 = v47;
LABEL_156:
        _os_log_error_impl(&dword_2452A3000, v48, OS_LOG_TYPE_ERROR, "%s:%06u: Failed getting number\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 331;
      v48 = MEMORY[0x277D86220];
      goto LABEL_156;
    }

    if (!glog_fd)
    {
      goto LABEL_130;
    }

    *&v59 = 0xAAAAAAAAAAAAAAAALL;
    *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72 = v59;
    v73 = v59;
    v70 = v59;
    v71 = v59;
    v69 = v59;
    *&buf[16] = v59;
    v68 = v59;
    *buf = v59;
    memset(&v65, 0, sizeof(v65));
    v64 = 0xAAAAAAAAAAAAAAAALL;
    time(&v64);
    localtime_r(&v64, &v65);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
    dprintf(glog_fd, "%s ", buf);
    v37 = 331;
    goto LABEL_128;
  }

  CFRelease(v9);
  v13 = IORegistryEntryCreateCFProperty(a2, @"FileOptions", v7, 0);
  if (!v13)
  {
    v49 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 335;
      *&buf[18] = 2080;
      *&buf[20] = "FileOptions";
      v50 = v49;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 335;
      *&buf[18] = 2080;
      *&buf[20] = "FileOptions";
      v50 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v50, OS_LOG_TYPE_ERROR, "%s:%06u: Failed reading '%s' from registry\n", buf, 0x1Cu);
LABEL_117:
    if (glog_fd)
    {
      goto LABEL_124;
    }

    goto LABEL_131;
  }

  v9 = v13;
  if (!CFNumberGetValue(v13, kCFNumberSInt32Type, this + 164))
  {
    v51 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "initWithRegistryEntry";
        *&buf[12] = 1024;
        *&buf[14] = 337;
        v52 = v51;
LABEL_160:
        _os_log_error_impl(&dword_2452A3000, v52, OS_LOG_TYPE_ERROR, "%s:%06u: Failed getting number\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 337;
      v52 = MEMORY[0x277D86220];
      goto LABEL_160;
    }

    if (!glog_fd)
    {
      goto LABEL_130;
    }

    *&v60 = 0xAAAAAAAAAAAAAAAALL;
    *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72 = v60;
    v73 = v60;
    v70 = v60;
    v71 = v60;
    v69 = v60;
    *&buf[16] = v60;
    v68 = v60;
    *buf = v60;
    memset(&v65, 0, sizeof(v65));
    v64 = 0xAAAAAAAAAAAAAAAALL;
    time(&v64);
    localtime_r(&v64, &v65);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
    dprintf(glog_fd, "%s ", buf);
    v37 = 337;
    goto LABEL_128;
  }

  CFRelease(v9);
  v14 = IORegistryEntryCreateCFProperty(a2, @"PipeSize", v7, 0);
  if (!v14)
  {
    v53 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 341;
      *&buf[18] = 2080;
      *&buf[20] = "FileSize";
      v54 = v53;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }

      *buf = 136315650;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 341;
      *&buf[18] = 2080;
      *&buf[20] = "FileSize";
      v54 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v54, OS_LOG_TYPE_ERROR, "%s:%06u: Failed reading '%s' from registry\n", buf, 0x1Cu);
LABEL_123:
    if (glog_fd)
    {
LABEL_124:
      *&v61 = 0xAAAAAAAAAAAAAAAALL;
      *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v61;
      v73 = v61;
      v70 = v61;
      v71 = v61;
      v69 = v61;
      *&buf[16] = v61;
      v68 = v61;
      *buf = v61;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u: Failed reading '%s' from registry\n");
    }

LABEL_131:
    CCLogFile::freeResources(this);
    goto LABEL_132;
  }

  v9 = v14;
  if (!CFNumberGetValue(v14, kCFNumberSInt32Type, this + 136))
  {
    v55 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_126;
      }

      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      v56 = v55;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_126;
      }

      *buf = 136315394;
      *&buf[4] = "initWithRegistryEntry";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      v56 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v56, OS_LOG_TYPE_ERROR, "%s:%06u: Failed getting number\n", buf, 0x12u);
LABEL_126:
    if (glog_fd)
    {
      *&v62 = 0xAAAAAAAAAAAAAAAALL;
      *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v62;
      v73 = v62;
      v70 = v62;
      v71 = v62;
      v69 = v62;
      *&buf[16] = v62;
      v68 = v62;
      *buf = v62;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      v37 = 343;
      goto LABEL_128;
    }

LABEL_130:
    CFRelease(v9);
    goto LABEL_131;
  }

  CFRelease(v9);
  v10 = *(this + 33) + 1;
LABEL_28:
  *(this + 33) = v10;
  *(this + 24) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 30) = 0;
  *(this + 9) = -1;
  if ((CCLogFile::buildFileTables(this) & 1) == 0)
  {
    v29 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v30 = v29;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v30 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "CCLogFile::initWithRegistryEntry buildFileTables\n", buf, 2u);
LABEL_84:
    if (glog_fd)
    {
      *&v46 = 0xAAAAAAAAAAAAAAAALL;
      *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72 = v46;
      v73 = v46;
      v70 = v46;
      v71 = v46;
      v69 = v46;
      *&buf[16] = v46;
      v68 = v46;
      *buf = v46;
      memset(&v65, 0, sizeof(v65));
      v64 = 0xAAAAAAAAAAAAAAAALL;
      time(&v64);
      localtime_r(&v64, &v65);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v65);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::initWithRegistryEntry buildFileTables\n", v63);
    }

    goto LABEL_131;
  }

  result = 1;
LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}