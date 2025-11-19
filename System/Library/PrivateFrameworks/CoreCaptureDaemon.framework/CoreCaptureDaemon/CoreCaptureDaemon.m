uint64_t CCPipeMonitor::isActive(CCPipeMonitor *this, double a2)
{
  v36 = *MEMORY[0x277D85DE8];
  CCPipeMonitor::cleanCaptureDirectories(this);
  if ((*(this + 12) & 1) == 0)
  {
    pthread_mutex_lock((this + 208));
    Count = CFDictionaryGetCount(*(this + 15));
    if (Count)
    {
      v5 = Count;
      v6 = 8 * Count;
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v7)
      {
        v8 = v7;
        v9 = malloc_type_malloc(v6, 0x80040B8603338uLL);
        if (v9)
        {
          v10 = v9;
          CFDictionaryGetKeysAndValues(*(this + 15), v8, v9);
          if (v5 >= 1)
          {
            for (i = 0; i < v5; ++i)
            {
              v12 = v10[i];
              if (v12)
              {
                v13 = (*(*v12 + 64))(v12, a2);
                if (v13)
                {
                  break;
                }
              }

              else
              {
                v13 = 0;
              }
            }

            pthread_mutex_unlock((this + 208));
            free(v8);
            free(v10);
            if (v13)
            {
              goto LABEL_13;
            }

LABEL_16:
            lowPriorityActivities();
            result = 0;
            goto LABEL_17;
          }

          pthread_mutex_unlock((this + 208));
          free(v8);
          v15 = v10;
LABEL_15:
          free(v15);
          goto LABEL_16;
        }

        v21 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v22 = v21;
LABEL_43:
            _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "isActive:Failed to malloc memory for valueArray", buf, 2u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v22 = MEMORY[0x277D86220];
          goto LABEL_43;
        }

        if (glog_fd)
        {
          *&v25 = 0xAAAAAAAAAAAAAAAALL;
          *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v34 = v25;
          v35 = v25;
          v32 = v25;
          v33 = v25;
          v30 = v25;
          v31 = v25;
          *buf = v25;
          v29 = v25;
          memset(&v27, 0, sizeof(v27));
          v26 = 0xAAAAAAAAAAAAAAAALL;
          time(&v26);
          localtime_r(&v26, &v27);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "isActive:Failed to malloc memory for valueArray");
        }

        pthread_mutex_unlock((this + 208));
        v15 = v8;
        goto LABEL_15;
      }

      v19 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 0;
        v20 = v19;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 0;
        v20 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "isActive:Failed to malloc memory for keyArray", buf, 2u);
LABEL_33:
      if (glog_fd)
      {
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v34 = v24;
        v35 = v24;
        v32 = v24;
        v33 = v24;
        v30 = v24;
        v31 = v24;
        *buf = v24;
        v29 = v24;
        memset(&v27, 0, sizeof(v27));
        v26 = 0xAAAAAAAAAAAAAAAALL;
        time(&v26);
        localtime_r(&v26, &v27);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "isActive:Failed to malloc memory for keyArray");
      }

LABEL_35:
      pthread_mutex_unlock((this + 208));
      goto LABEL_16;
    }

    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v18 = v17;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 0;
      v18 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::isActive:no tap found", buf, 2u);
LABEL_30:
    if (glog_fd)
    {
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v34 = v23;
      v35 = v23;
      v32 = v23;
      v33 = v23;
      v30 = v23;
      v31 = v23;
      *buf = v23;
      v29 = v23;
      memset(&v27, 0, sizeof(v27));
      v26 = 0xAAAAAAAAAAAAAAAALL;
      time(&v26);
      localtime_r(&v26, &v27);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v27);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCPipeMonitor::isActive:no tap found");
    }

    goto LABEL_35;
  }

LABEL_13:
  result = 1;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void CCDaemon::activityCheck(CCDaemon *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(this + 304, memory_order_acquire))
  {
    v1 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      *&buf[4] = "activityCheck";
      v2 = v1;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      *&buf[4] = "activityCheck";
      v2 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v2, OS_LOG_TYPE_ERROR, "CCDaemon::%s CCDaemon::getInstance().isShutdownPending() == true, skipping activityCheck()", buf, 0xCu);
LABEL_12:
    if (glog_fd)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v6;
      v18 = v6;
      v15 = v6;
      v16 = v6;
      v13 = v6;
      v14 = v6;
      *buf = v6;
      v12 = v6;
      memset(&v10, 0, sizeof(v10));
      v9 = 0xAAAAAAAAAAAAAAAALL;
      time(&v9);
      localtime_r(&v9, &v10);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v10);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDaemon::%s CCDaemon::getInstance().isShutdownPending() == true, skipping activityCheck()", "activityCheck");
    }

    goto LABEL_14;
  }

  if (*(*(this + 3) + 104) & 1) != 0 || (*(*(this + 5) + 48) & 1) != 0 || (CCPipeMonitor::isActive(*(this + 2), 60.0))
  {
    goto LABEL_14;
  }

  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v4 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 136315138;
      *&buf[4] = "activityCheck";
      v5 = v3;
LABEL_17:
      _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDaemon::%s monitor NOT active, shutdown", buf, 0xCu);
    }
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 136315138;
      *&buf[4] = "activityCheck";
      v5 = MEMORY[0x277D86220];
      goto LABEL_17;
    }
  }

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
    v12 = v8;
    memset(&v10, 0, sizeof(v10));
    v9 = 0xAAAAAAAAAAAAAAAALL;
    time(&v9);
    localtime_r(&v9, &v10);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v10);
    dprintf(glog_fd, "%s ", buf);
    v4 = dprintf(glog_fd, "CCDaemon::%s monitor NOT active, shutdown", "activityCheck");
  }

  CCDaemon::shutdown(v4);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
}

void CCPipeMonitor::cleanCaptureDirectories(CCPipeMonitor *this)
{
  v35 = *MEMORY[0x277D85DE8];
  if (pthread_mutex_lock((this + 144)))
  {
    v2 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v3 = v2;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v3 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "fMutexCleanDirectories not acquired, bail out\n", buf, 2u);
LABEL_21:
    if (glog_fd)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v15;
      v34 = v15;
      v31 = v15;
      v32 = v15;
      v29 = v15;
      v30 = v15;
      *buf = v15;
      v28 = v15;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "fMutexCleanDirectories not acquired, bail out\n");
    }

    goto LABEL_35;
  }

  pthread_mutex_lock((this + 208));
  Count = CFDictionaryGetCount(*(this + 15));
  if (Count)
  {
    v5 = Count;
    v6 = 8 * Count;
    v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v7)
    {
      v8 = v7;
      v9 = malloc_type_malloc(v6, 0x80040B8603338uLL);
      if (v9)
      {
        v10 = v9;
        CFDictionaryGetKeysAndValues(*(this + 15), v8, v9);
        for (i = 0; i != v5; ++i)
        {
          v12 = v10[i];
          if (v12)
          {
            (*(*v12 + 96))(v12);
          }
        }

        pthread_mutex_unlock((this + 208));
        free(v8);
        v13 = v10;
LABEL_13:
        free(v13);
LABEL_14:
        if (!pthread_mutex_unlock((this + 144)))
        {
          goto LABEL_35;
        }

        v14 = coreCaptureOsLog;
        if (!coreCaptureOsLog)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v16 = MEMORY[0x277D86220];
          goto LABEL_32;
        }

        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        *buf = 0;
        goto LABEL_27;
      }

      v21 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v22 = v21;
LABEL_53:
          _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "cleanCaptureDirectories:Failed to malloc memory for valueArray", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v22 = MEMORY[0x277D86220];
        goto LABEL_53;
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
        dprintf(glog_fd, "cleanCaptureDirectories:Failed to malloc memory for valueArray");
      }

      pthread_mutex_unlock((this + 208));
      v13 = v8;
      goto LABEL_13;
    }

    v19 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = v19;
LABEL_51:
        _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "cleanCaptureDirectories:Failed to malloc memory for keyArray", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = MEMORY[0x277D86220];
      goto LABEL_51;
    }

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
      dprintf(glog_fd, "cleanCaptureDirectories:Failed to malloc memory for keyArray");
    }

    pthread_mutex_unlock((this + 208));
    goto LABEL_14;
  }

  pthread_mutex_unlock((this + 208));
  if (!pthread_mutex_unlock((this + 144)))
  {
    goto LABEL_35;
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
LABEL_27:
    v16 = v14;
    goto LABEL_32;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_33;
  }

  *buf = 0;
  v16 = MEMORY[0x277D86220];
LABEL_32:
  _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCPipeMonitor::cleanCaptureDirectories - fails to unlock\n", buf, 2u);
LABEL_33:
  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v17;
    v34 = v17;
    v31 = v17;
    v32 = v17;
    v29 = v17;
    v30 = v17;
    *buf = v17;
    v28 = v17;
    memset(&v26, 0, sizeof(v26));
    v25 = 0xAAAAAAAAAAAAAAAALL;
    time(&v25);
    localtime_r(&v25, &v26);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCPipeMonitor::cleanCaptureDirectories - fails to unlock\n");
  }

LABEL_35:
  v18 = *MEMORY[0x277D85DE8];
}

void CCTap::cleanCaptureDirectories(CFStringRef *this)
{
  SaveLocation = getSaveLocation(0);
  if ((CCDaemon::fIsCCDaemon & 1) != 0 || (v2 = CCDaemon::fSaveDir) == 0)
  {
    if ((isSeedAndiOS() & (CCProfileMonitor::fProfileLoaded == 0)) != 0)
    {
      v2 = "/Library/Logs/CrashReporter/CoreCapture";
    }

    else
    {
      v2 = "/Library/Logs/CoreCapture";
    }
  }

  v8 = v2;
  if (this[11])
  {
    v3 = *MEMORY[0x277CBECE8];
    p_SaveLocation = &SaveLocation;
    v5 = 1;
    do
    {
      v6 = v5;
      Mutable = CFStringCreateMutable(v3, 512);
      CFStringAppendCString(Mutable, *p_SaveLocation, 0);
      if (CFStringGetLength(this[11]))
      {
        CFStringAppendCString(Mutable, "/", 0);
        CFStringAppend(Mutable, this[11]);
      }

      cleanCaptureDirectory(Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v5 = 0;
      p_SaveLocation = &v8;
    }

    while ((v6 & 1) != 0);
  }
}

uint64_t CCDaemon::runShutdownThread(CCDaemon *this, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.corecaptured.shutdown");
  v2 = MEMORY[0x277D86220];
  while (1)
  {
    v3 = xpc_transaction_try_exit_clean();
    v4 = coreCaptureOsLog;
    if (v3)
    {
      break;
    }

    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 0;
      v5 = v4;
    }

    else
    {
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 0;
      v5 = v2;
    }

    _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "CCDaemon::runShutdownThread Cannot xpc_transaction_try_exit_clean, still outstanding transactions, will call xpc_transaction_try_exit_clean again later", buf, 2u);
LABEL_7:
    if (glog_fd)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19 = v6;
      v20 = v6;
      v17 = v6;
      v18 = v6;
      v15 = v6;
      v16 = v6;
      *buf = v6;
      v14 = v6;
      memset(&v12, 0, sizeof(v12));
      v11 = 0xAAAAAAAAAAAAAAAALL;
      time(&v11);
      localtime_r(&v11, &v12);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v12);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDaemon::runShutdownThread Cannot xpc_transaction_try_exit_clean, still outstanding transactions, will call xpc_transaction_try_exit_clean again later");
    }

    sleep(1u);
  }

  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = v4;
      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = MEMORY[0x277D86220];
LABEL_17:
    _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCDaemon::runShutdownThread Exiting via xpc_transaction_try_exit_clean", buf, 2u);
  }

  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v8;
    v20 = v8;
    v17 = v8;
    v18 = v8;
    v15 = v8;
    v16 = v8;
    *buf = v8;
    v14 = v8;
    memset(&v12, 0, sizeof(v12));
    v11 = 0xAAAAAAAAAAAAAAAALL;
    time(&v11);
    localtime_r(&v11, &v12);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v12);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDaemon::runShutdownThread Exiting via xpc_transaction_try_exit_clean");
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CCLogTap::isActive(CCLogTap *this, CFAbsoluteTime a2)
{
  v35 = *MEMORY[0x277D85DE8];
  CFProperty = IORegistryEntryCreateCFProperty(*(this + 4), @"LogPolicy", *MEMORY[0x277CBECE8], 0);
  valuePtr = -1431655766;
  CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (valuePtr == 1)
  {
    v5 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v6 = *(this + 4);
      *buf = 67109376;
      *&buf[4] = 1;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      v7 = v5;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = *(this + 4);
      *buf = 67109376;
      *&buf[4] = 1;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      v7 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCLogTap::isActive policy is %d entry:%u\n", buf, 0xEu);
LABEL_18:
    if (glog_fd)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v15;
      v34 = v15;
      v31 = v15;
      v32 = v15;
      v29 = v15;
      v30 = v15;
      *buf = v15;
      *&buf[16] = v15;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      v24 = *(this + 4);
      dprintf(glog_fd, "CCLogTap::isActive policy is %d entry:%u\n");
    }

LABEL_31:
    result = 1;
    goto LABEL_32;
  }

  if (*(this + 349) == 1)
  {
    v8 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v9 = *(this + 4);
      *buf = 67109120;
      *&buf[4] = v9;
      v10 = v8;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v17 = *(this + 4);
      *buf = 67109120;
      *&buf[4] = v17;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCLogTap::isActive tap is fBusy Active 2 entry:%u\n", buf, 8u);
LABEL_24:
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
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      v19 = *(this + 4);
      dprintf(glog_fd, "CCLogTap::isActive tap is fBusy Active 2 entry:%u\n");
    }

    goto LABEL_31;
  }

  if (CFAbsoluteTimeGetCurrent() - *(this + 44) < a2)
  {
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v12 = *(this + 4);
      *buf = 67109376;
      *&buf[4] = v12;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      v13 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v20 = *(this + 4);
      *buf = 67109376;
      *&buf[4] = v20;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "CCLogTap::isActive idle < duration  3 entry:%u duration:%f\n", buf, 0x12u);
LABEL_29:
    if (glog_fd)
    {
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v21;
      v34 = v21;
      v31 = v21;
      v32 = v21;
      v29 = v21;
      v30 = v21;
      *buf = v21;
      *&buf[16] = v21;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      v22 = *(this + 4);
      dprintf(glog_fd, "CCLogTap::isActive idle < duration  3 entry:%u duration:%f\n");
    }

    goto LABEL_31;
  }

  result = 0;
LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCDataTap::isActive(CCDataTap *this, CFAbsoluteTime a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(this + 184) == 1)
  {
    v3 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v4 = *(this + 4);
      *buf = 67109120;
      *&buf[4] = v4;
      v5 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = *(this + 4);
      *buf = 67109120;
      *&buf[4] = v11;
      v5 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDataTap::isActive tap is fBusy Active 2 entry:%u\n", buf, 8u);
LABEL_13:
    if (glog_fd)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v12;
      v26 = v12;
      v23 = v12;
      v24 = v12;
      v21 = v12;
      v22 = v12;
      *buf = v12;
      *&buf[16] = v12;
      memset(&v19, 0, sizeof(v19));
      v18 = 0xAAAAAAAAAAAAAAAALL;
      time(&v18);
      localtime_r(&v18, &v19);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
      dprintf(glog_fd, "%s ", buf);
      v13 = *(this + 4);
      dprintf(glog_fd, "CCDataTap::isActive tap is fBusy Active 2 entry:%u\n");
    }

LABEL_20:
    result = 1;
    goto LABEL_21;
  }

  if (CFAbsoluteTimeGetCurrent() - *(this + 24) < a2)
  {
    v7 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v8 = *(this + 4);
      *buf = 67109376;
      *&buf[4] = v8;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      v9 = v7;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = *(this + 4);
      *buf = 67109376;
      *&buf[4] = v14;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      v9 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "CCDataTap::isActive idle < duration  3 entry:%u duration:%f\n", buf, 0x12u);
LABEL_18:
    if (glog_fd)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v15;
      v26 = v15;
      v23 = v15;
      v24 = v15;
      v21 = v15;
      v22 = v15;
      *buf = v15;
      *&buf[16] = v15;
      memset(&v19, 0, sizeof(v19));
      v18 = 0xAAAAAAAAAAAAAAAALL;
      time(&v18);
      localtime_r(&v18, &v19);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v19);
      dprintf(glog_fd, "%s ", buf);
      v16 = *(this + 4);
      dprintf(glog_fd, "CCDataTap::isActive idle < duration  3 entry:%u duration:%f\n");
    }

    goto LABEL_20;
  }

  result = 0;
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

DIR *pruneDirectoryNDaysDo(const char *a1, uint64_t a2, time_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  result = opendir(a1);
  if (result)
  {
    v9 = result;
    v10.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v10.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v71.st_blksize = v10;
    *v71.st_qspare = v10;
    v71.st_birthtimespec = v10;
    *&v71.st_size = v10;
    v71.st_mtimespec = v10;
    v71.st_ctimespec = v10;
    *&v71.st_uid = v10;
    v71.st_atimespec = v10;
    *&v71.st_dev = v10;
    alloc = *MEMORY[0x277CBECE8];
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v11 = readdir(v9);
            if (!v11)
            {
              result = closedir(v9);
              goto LABEL_32;
            }

            if (v11->d_type == 4)
            {
              *&v12 = 0xAAAAAAAAAAAAAAAALL;
              *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v69 = v12;
              v70 = v12;
              v67 = v12;
              v68 = v12;
              v65 = v12;
              v66 = v12;
              v63 = v12;
              v64 = v12;
              v61 = v12;
              v62 = v12;
              v59 = v12;
              v60 = v12;
              v57 = v12;
              v58 = v12;
              v55 = v12;
              v56 = v12;
              v53 = v12;
              v54 = v12;
              v51 = v12;
              v52 = v12;
              v49 = v12;
              v50 = v12;
              v47 = v12;
              v48 = v12;
              v45 = v12;
              v46 = v12;
              v43 = v12;
              v44 = v12;
              v41 = v12;
              v42 = v12;
              *__str = v12;
              v40 = v12;
              if (v11->d_name[0] != 46 || v11->d_name[1] && (v11->d_name[1] != 46 || v11->d_name[2]))
              {
                break;
              }
            }
          }

          __str[snprintf(__str, 0x200uLL, "%s/%s", a1, v11->d_name)] = 0;
          if (!lstat(__str, &v71))
          {
            break;
          }

          v13 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              v14 = __error();
              v15 = strerror(*v14);
              *buf = 136315394;
              *&buf[4] = __str;
              *&buf[12] = 2080;
              *&buf[14] = v15;
              v16 = v13;
LABEL_30:
              _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "pruneDirectoryNDaysDo lstat failed on %s:\n%s\n", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v26 = __error();
            v27 = strerror(*v26);
            *buf = 136315394;
            *&buf[4] = __str;
            *&buf[12] = 2080;
            *&buf[14] = v27;
            v16 = MEMORY[0x277D86220];
            goto LABEL_30;
          }

          if (glog_fd)
          {
            *&v17 = 0xAAAAAAAAAAAAAAAALL;
            *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v37 = v17;
            v38 = v17;
            v35 = v17;
            v36 = v17;
            v33 = v17;
            v34 = v17;
            *buf = v17;
            *&buf[16] = v17;
            memset(&v31, 0, sizeof(v31));
            v30 = 0xAAAAAAAAAAAAAAAALL;
            time(&v30);
            localtime_r(&v30, &v31);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v31);
            dprintf(glog_fd, "%s ", buf);
            v18 = glog_fd;
            v19 = __error();
            v20 = strerror(*v19);
            dprintf(v18, "pruneDirectoryNDaysDo lstat failed on %s:\n%s\n", __str, v20);
          }
        }

        if (difftime(a3, v71.st_mtimespec.tv_sec) >= (86400 * a4))
        {
          break;
        }

        if (a2 <= 3)
        {
          pruneDirectoryNDaysDo(__str, a2 + 1, a3, a4);
        }
      }

      v21 = a2;
      Mutable = CFStringCreateMutable(alloc, 512);
      CFStringAppendCString(Mutable, __str, 0);
      v23 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        *&buf[4] = __str;
        v24 = v23;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        *&buf[4] = __str;
        v24 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v24, OS_LOG_TYPE_DEFAULT, "pruneDirectoryNDaysDo %s\n", buf, 0xCu);
LABEL_25:
      if (glog_fd)
      {
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v37 = v25;
        v38 = v25;
        v35 = v25;
        v36 = v25;
        v33 = v25;
        v34 = v25;
        *buf = v25;
        *&buf[16] = v25;
        memset(&v31, 0, sizeof(v31));
        v30 = 0xAAAAAAAAAAAAAAAALL;
        time(&v30);
        localtime_r(&v30, &v31);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v31);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "pruneDirectoryNDaysDo %s\n", __str);
      }

      deleteDirectory(Mutable);
      a2 = v21;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

LABEL_32:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void CCDaemon::shutdown(CCDaemon *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v2 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (!v2)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!v2)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCDaemon::shutdown is fired\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v4;
    v21 = v4;
    v18 = v4;
    v19 = v4;
    v16 = v4;
    v17 = v4;
    *buf = v4;
    v15 = v4;
    memset(&v13, 0, sizeof(v13));
    v12 = 0xAAAAAAAAAAAAAAAALL;
    time(&v12);
    localtime_r(&v12, &v13);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v13);
    dprintf(glog_fd, "%s ", buf);
    v2 = dprintf(glog_fd, "CCDaemon::shutdown is fired\n");
  }

  Instance = CCDaemon::getInstance(v2);
  v6 = 0;
  atomic_compare_exchange_strong(Instance + 304, &v6, 1u);
  if (!v6)
  {
    v7 = CCDaemon::getInstance(Instance);
    CCDaemon::disablePowerNotification(v7);
    if (osTransaction)
    {
      os_release(osTransaction);
      osTransaction = 0;
    }

    *buf = 0xAAAAAAAAAAAAAAAALL;
    pthread_create(buf, 0, CCDaemon::runShutdownThread, 0);
    goto LABEL_19;
  }

  v8 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v9 = v8;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v9 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v9, OS_LOG_TYPE_ERROR, "CoreCaptureStop setShutdownAlreadyTrue, exiting without doing anything", buf, 2u);
LABEL_17:
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
    dprintf(glog_fd, "CoreCaptureStop setShutdownAlreadyTrue, exiting without doing anything");
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t CCDaemon::getInstance(CCDaemon *this)
{
  v4 = *MEMORY[0x277D85DE8];
  if (CCDaemon::fIsCCDaemon == 1)
  {
    if (CCDaemon::onceToken != -1)
    {
      dispatch_once(&CCDaemon::onceToken, &__block_literal_global);
    }
  }

  else if ((atomic_load_explicit(CCDaemon::initialized, memory_order_acquire) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2452A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CCDaemon::getInstance isInitialized false", v3, 2u);
  }

  result = CCDaemon::instance;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void CCDaemon::disablePowerNotification(CCDaemon *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = (this + 212);
  if (!*(this + 53))
  {
    goto LABEL_11;
  }

  IONotificationPortSetDispatchQueue(*(this + 27), 0);
  IODeregisterForSystemPower(this + 56);
  IOServiceClose(*(this + 53));
  IONotificationPortDestroy(*(this + 27));
  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = v3;
LABEL_7:
      _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "CCDaemon power notification disabled\n", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  if (glog_fd)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v5;
    v16 = v5;
    v13 = v5;
    v14 = v5;
    v11 = v5;
    v12 = v5;
    *buf = v5;
    v10 = v5;
    memset(&v8, 0, sizeof(v8));
    v7 = 0xAAAAAAAAAAAAAAAALL;
    time(&v7);
    localtime_r(&v7, &v8);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v8);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDaemon power notification disabled\n");
  }

  gPMConnectRootPort = 0;
  *v1 = 0;
  v1[1] = 0;
LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t CCConfigure::initWithPipeMonitor(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  (*(*a2 + 40))(a2);
  return 1;
}

uint64_t CCConfigure::ccfree(CCConfigure *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    *(this + 2) = 0;
  }

  v3 = *(*this + 8);

  return v3(this);
}

void CCConfigure::CCConfigure(CCConfigure *this)
{
  *(this + 2) = 1;
  *this = &unk_28583B450;
}

{
  *(this + 2) = 1;
  *this = &unk_28583B450;
}

BOOL CCConfigure::configure(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAA01;
  v7 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    v13 = *a5;
  }

  else
  {
    v13 = 0uLL;
  }

  result = CCConfigure::applyConfiguration(a1, a2, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CCConfigure::applyConfiguration(uint64_t a1, CFTypeRef cf, char *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v6 != TypeID)
  {
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 0;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *buf = 0;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "CCConfigure::applyConfiguration Configuration type is not dictionary\n", buf, 2u);
LABEL_53:
    if (glog_fd)
    {
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v49 = v35;
      v50 = v35;
      v47 = v35;
      v48 = v35;
      v45 = v35;
      v46 = v35;
      *buf = v35;
      v44 = v35;
      memset(&v42, 0, sizeof(v42));
      v41 = 0xAAAAAAAAAAAAAAAALL;
      time(&v41);
      localtime_r(&v41, &v42);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCConfigure::applyConfiguration Configuration type is not dictionary\n");
    }

    goto LABEL_59;
  }

  Count = CFDictionaryGetCount(cf);
  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 134217984;
    *&buf[4] = Count;
    v10 = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 134217984;
    *&buf[4] = Count;
    v10 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCConfigure::configure keycount : %ld\n", buf, 0xCu);
LABEL_11:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v49 = v13;
    v50 = v13;
    v47 = v13;
    v48 = v13;
    v45 = v13;
    v46 = v13;
    *buf = v13;
    v44 = v13;
    memset(&v42, 0, sizeof(v42));
    v41 = 0xAAAAAAAAAAAAAAAALL;
    time(&v41);
    localtime_r(&v41, &v42);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::configure keycount : %ld\n", Count);
  }

  if (Count)
  {
    v40 = v6;
    v14 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v15 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(cf, v14, v15);
    v38 = v14;
    v39 = v15;
    if (Count >= 1)
    {
      while (1)
      {
        *a3 = a1;
        *(a3 + 8) = 0u;
        *(a3 + 24) = 0u;
        a3[80] = 1;
        v16 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          CStringPtr = CFStringGetCStringPtr(*v14, 0);
          *buf = 136315138;
          *&buf[4] = CStringPtr;
          v18 = v16;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          v19 = CFStringGetCStringPtr(*v14, 0);
          *buf = 136315138;
          *&buf[4] = v19;
          v18 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v18, OS_LOG_TYPE_DEFAULT, "CCConfigure::configure key is %s\n", buf, 0xCu);
LABEL_21:
        if (glog_fd)
        {
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v49 = v20;
          v50 = v20;
          v47 = v20;
          v48 = v20;
          v45 = v20;
          v46 = v20;
          *buf = v20;
          v44 = v20;
          memset(&v42, 0, sizeof(v42));
          v41 = 0xAAAAAAAAAAAAAAAALL;
          time(&v41);
          localtime_r(&v41, &v42);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
          dprintf(glog_fd, "%s ", buf);
          v21 = glog_fd;
          v22 = CFStringGetCStringPtr(*v14, 0);
          dprintf(v21, "CCConfigure::configure key is %s\n", v22);
        }

        v23 = *v14;
        v24 = CFStringGetTypeID();
        if (!validCFObjectReference("CCConfigure::applyConfiguration", v23, v24))
        {
          goto LABEL_56;
        }

        v25 = *v15;
        v26 = CFDictionaryGetTypeID();
        if (!validCFObjectReference("CCConfigure::applyConfiguration", v25, v26))
        {
          goto LABEL_56;
        }

        if (CFStringCompare(*v14, @"CCConfigureStream", 0) == kCFCompareEqualTo)
        {
          CFDictionaryApplyFunction(*v15, CCConfigure::streamOwnerCFDictionaryApplier, a3);
        }

        if (CFStringCompare(*v14, @"CCConfigurePipe", 0) == kCFCompareEqualTo)
        {
          CFDictionaryApplyFunction(*v15, CCConfigure::pipeOwnerCFDictionaryApplier, a3);
        }

        if (CFStringCompare(*v14, @"CCCaptureDirectory", 0) == kCFCompareEqualTo)
        {
          CFDictionaryApplyFunction(*v15, CCConfigure::captureDictionaryCFDictionaryApplier, a3);
        }

        if (CFStringCompare(*v14, @"CCStart", 0) == kCFCompareEqualTo)
        {
          v27 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v28 = v27;
              goto LABEL_37;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v28 = MEMORY[0x277D86220];
LABEL_37:
            _os_log_impl(&dword_2452A3000, v28, OS_LOG_TYPE_DEFAULT, "CCConfigure::applyConfiguration CCSTART key \n", buf, 2u);
          }

          if (glog_fd)
          {
            *&v29 = 0xAAAAAAAAAAAAAAAALL;
            *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v49 = v29;
            v50 = v29;
            v47 = v29;
            v48 = v29;
            v45 = v29;
            v46 = v29;
            *buf = v29;
            v44 = v29;
            memset(&v42, 0, sizeof(v42));
            v41 = 0xAAAAAAAAAAAAAAAALL;
            time(&v41);
            localtime_r(&v41, &v42);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCConfigure::applyConfiguration CCSTART key \n");
          }
        }

        if (CFStringCompare(*v14, @"CCStop", 0) == kCFCompareEqualTo)
        {
          v30 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            v31 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
            if (v31)
            {
              *buf = 0;
              v32 = v30;
              goto LABEL_46;
            }
          }

          else
          {
            v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v31)
            {
              *buf = 0;
              v32 = MEMORY[0x277D86220];
LABEL_46:
              _os_log_impl(&dword_2452A3000, v32, OS_LOG_TYPE_DEFAULT, "CCConfigure::applyConfiguration CCSTOP key  \n", buf, 2u);
            }
          }

          if (glog_fd)
          {
            *&v33 = 0xAAAAAAAAAAAAAAAALL;
            *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v49 = v33;
            v50 = v33;
            v47 = v33;
            v48 = v33;
            v45 = v33;
            v46 = v33;
            *buf = v33;
            v44 = v33;
            memset(&v42, 0, sizeof(v42));
            v41 = 0xAAAAAAAAAAAAAAAALL;
            time(&v41);
            localtime_r(&v41, &v42);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v42);
            dprintf(glog_fd, "%s ", buf);
            v31 = dprintf(glog_fd, "CCConfigure::applyConfiguration CCSTOP key  \n");
          }

          Instance = CCDaemon::getInstance(v31);
          CCDaemon::shutdown(Instance);
        }

        ++v15;
        ++v14;
        if (!--Count)
        {
          goto LABEL_56;
        }
      }
    }

    if (v14)
    {
LABEL_56:
      free(v38);
    }

    v6 = v40;
    if (v39)
    {
      free(v39);
    }
  }

LABEL_59:
  result = v6 == TypeID;
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2452A6CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = (*(*v9 + 16))(v9);
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = v10;
      _os_log_impl(&dword_2452A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CCDaemon::getInstance failed with exception: %s", &a9, 0xCu);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void CCConfigure::captureDictionaryCFDictionaryApplier(const __CFString *this, const void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!validCFObjectReference("CCConfigure::captureDictionaryCFDictionaryApplier", this, TypeID))
  {
    goto LABEL_12;
  }

  v8 = CFDictionaryGetTypeID();
  if (!validCFObjectReference("CCConfigure::captureDictionaryCFDictionaryApplier", a2, v8))
  {
    goto LABEL_12;
  }

  a3[1] = this;
  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = CFStringGetCStringPtr(this, 0);
      v10 = v9;
LABEL_8:
      _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCConfigure::captureDictionaryCFDictionaryApplier dirName: %s\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = CFStringGetCStringPtr(this, 0);
    v10 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

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
    v12 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(this, 0);
    dprintf(v12, "CCConfigure::captureDictionaryCFDictionaryApplier dirName: %s\n", CStringPtr);
  }

  a3[2] = @"*";
  a3[3] = @"*";
  CFDictionaryApplyFunction(a2, CCConfigure::captureDirectoryCFDictionaryApplier, a3);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t CCConfigure::captureDirectoryCFDictionaryApplier(const __CFString *this, const __CFString *a2, CFStringRef *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(a3[2], 0);
    *buf = 136315138;
    *&buf[4] = CStringPtr;
    v9 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = CFStringGetCStringPtr(a3[2], 0);
    *buf = 136315138;
    *&buf[4] = v10;
    v9 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "CCConfigure::captureDirectoryCFDictionaryApplier Owner: %s\n", buf, 0xCu);
LABEL_7:
  if (glog_fd)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v11;
    v51 = v11;
    v48 = v11;
    v49 = v11;
    v46 = v11;
    v47 = v11;
    *buf = v11;
    v45 = v11;
    memset(&v43, 0, sizeof(v43));
    v42 = 0xAAAAAAAAAAAAAAAALL;
    time(&v42);
    localtime_r(&v42, &v43);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v43);
    dprintf(glog_fd, "%s ", buf);
    v12 = glog_fd;
    v13 = CFStringGetCStringPtr(a3[2], 0);
    dprintf(v12, "CCConfigure::captureDirectoryCFDictionaryApplier Owner: %s\n", v13);
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = CFStringGetCStringPtr(a3[3], 0);
    *buf = 136315138;
    *&buf[4] = v15;
    v16 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v17 = CFStringGetCStringPtr(a3[3], 0);
    *buf = 136315138;
    *&buf[4] = v17;
    v16 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCConfigure::captureDirectoryCFDictionaryApplier Pipe: %s\n", buf, 0xCu);
LABEL_15:
  if (glog_fd)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v18;
    v51 = v18;
    v48 = v18;
    v49 = v18;
    v46 = v18;
    v47 = v18;
    *buf = v18;
    v45 = v18;
    memset(&v43, 0, sizeof(v43));
    v42 = 0xAAAAAAAAAAAAAAAALL;
    time(&v42);
    localtime_r(&v42, &v43);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v43);
    dprintf(glog_fd, "%s ", buf);
    v19 = glog_fd;
    v20 = CFStringGetCStringPtr(a3[3], 0);
    dprintf(v19, "CCConfigure::captureDirectoryCFDictionaryApplier Pipe: %s\n", v20);
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v22 = CFStringGetCStringPtr(a3[1], 0);
    *buf = 136315138;
    *&buf[4] = v22;
    v23 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v24 = CFStringGetCStringPtr(a3[1], 0);
    *buf = 136315138;
    *&buf[4] = v24;
    v23 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "CCConfigure::captureDirectoryCFDictionaryApplier dirName: %s\n", buf, 0xCu);
LABEL_23:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v25;
    v51 = v25;
    v48 = v25;
    v49 = v25;
    v46 = v25;
    v47 = v25;
    *buf = v25;
    v45 = v25;
    memset(&v43, 0, sizeof(v43));
    v42 = 0xAAAAAAAAAAAAAAAALL;
    time(&v42);
    localtime_r(&v42, &v43);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v43);
    dprintf(glog_fd, "%s ", buf);
    v26 = glog_fd;
    v27 = CFStringGetCStringPtr(a3[1], 0);
    dprintf(v26, "CCConfigure::captureDirectoryCFDictionaryApplier dirName: %s\n", v27);
  }

  v28 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v29 = CFStringGetCStringPtr(this, 0);
    *buf = 136315138;
    *&buf[4] = v29;
    v30 = v28;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v31 = CFStringGetCStringPtr(this, 0);
    *buf = 136315138;
    *&buf[4] = v31;
    v30 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v30, OS_LOG_TYPE_DEFAULT, "CCConfigure::captureDirectoryCFDictionaryApplier Key: %s\n", buf, 0xCu);
LABEL_31:
  if (glog_fd)
  {
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v32;
    v51 = v32;
    v48 = v32;
    v49 = v32;
    v46 = v32;
    v47 = v32;
    *buf = v32;
    v45 = v32;
    memset(&v43, 0, sizeof(v43));
    v42 = 0xAAAAAAAAAAAAAAAALL;
    time(&v42);
    localtime_r(&v42, &v43);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v43);
    dprintf(glog_fd, "%s ", buf);
    v33 = glog_fd;
    v34 = CFStringGetCStringPtr(this, 0);
    dprintf(v33, "CCConfigure::captureDirectoryCFDictionaryApplier Key: %s\n", v34);
  }

  TypeID = CFStringGetTypeID();
  result = validCFObjectReference("CCConfigure::captureDirectoryCFDictionaryApplier", this, TypeID);
  if (result)
  {
    result = CFStringCompare(this, @"CaptureReason", 0);
    if (!result)
    {
      v37 = CFStringGetTypeID();
      result = validCFObjectReference("CCConfigure::captureDirectoryCFDictionaryApplier", a2, v37);
      if (result)
      {
        v38 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v39 = v38;
LABEL_41:
            _os_log_impl(&dword_2452A3000, v39, OS_LOG_TYPE_DEFAULT, "CCConfigure::captureDirectoryCFDictionaryApplier capture\n", buf, 2u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v39 = MEMORY[0x277D86220];
          goto LABEL_41;
        }

        if (glog_fd)
        {
          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v50 = v40;
          v51 = v40;
          v48 = v40;
          v49 = v40;
          v46 = v40;
          v47 = v40;
          *buf = v40;
          v45 = v40;
          memset(&v43, 0, sizeof(v43));
          v42 = 0xAAAAAAAAAAAAAAAALL;
          time(&v42);
          localtime_r(&v42, &v43);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v43);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCConfigure::captureDirectoryCFDictionaryApplier capture\n");
        }

        result = CCConfigure::captureDirectory(*a3, a3, a2);
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCConfigure::captureDirectory(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!validCFObjectReference("CCConfigure::captureDirectory", a3, TypeID))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
  v25.length = CFStringGetLength(MutableCopy);
  v25.location = 0;
  CFStringFindAndReplace(MutableCopy, @"/", @"_", v25, 0);
  if (!CFStringGetLength(MutableCopy))
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = v9;
LABEL_17:
        _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCConfigure::capture capture reason can not be NULL\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = MEMORY[0x277D86220];
      goto LABEL_17;
    }

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
      v17 = v11;
      memset(&v15, 0, sizeof(v15));
      v14 = 0xAAAAAAAAAAAAAAAALL;
      time(&v14);
      localtime_r(&v14, &v15);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCConfigure::capture capture reason can not be NULL\n");
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_14;
  }

  *(&v17 + 1) = 0xAAAAAAAAAAAAAA00;
  *buf = MutableCopy;
  *&v15.tm_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v15.tm_hour = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v15, 0);
  *&buf[8] = *&v15.tm_sec;
  *&v17 = v15.tm_hour;
  CCPipeMonitor::forEachTapWithDirectory(*(a1 + 16), *(a2 + 8), _captureTapCallback, buf);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v8 = BYTE8(v17);
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

uint64_t _captureTapCallback(uint64_t result, char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = result;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buffer[7] = v4;
  v20 = v4;
  buffer[5] = v4;
  buffer[6] = v4;
  buffer[3] = v4;
  buffer[4] = v4;
  buffer[1] = v4;
  buffer[2] = v4;
  buffer[0] = v4;
  a2[24] = 1;
  CFStringGetCString(*a2, buffer, 128, 0);
  v20 = *(a2 + 8);
  v5 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = buffer;
      v6 = v5;
LABEL_7:
      _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCConfigure::capture Reason: %s\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = buffer;
    v6 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  if (glog_fd)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v7;
    v18 = v7;
    v15 = v7;
    v16 = v7;
    v13 = v7;
    v14 = v7;
    *buf = v7;
    v12 = v7;
    memset(&v10, 0, sizeof(v10));
    v9 = 0xAAAAAAAAAAAAAAAALL;
    time(&v9);
    localtime_r(&v9, &v10);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v10);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::capture Reason: %s\n", buffer);
  }

  result = (*(*v3 + 88))(v3, buffer);
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void CCConfigure::pipeOwnerCFDictionaryApplier(const __CFString *this, const void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!validCFObjectReference("CCConfigure::pipeOwnerCFDictionaryApplier", this, TypeID))
  {
    goto LABEL_12;
  }

  v8 = CFDictionaryGetTypeID();
  if (!validCFObjectReference("CCConfigure::pipeOwnerCFDictionaryApplier", a2, v8))
  {
    goto LABEL_12;
  }

  a3[2] = this;
  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = CFStringGetCStringPtr(this, 0);
      v10 = v9;
LABEL_8:
      _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeOwnerCFDictionaryApplier Owner: %s\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = CFStringGetCStringPtr(this, 0);
    v10 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

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
    v12 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(this, 0);
    dprintf(v12, "CCConfigure::pipeOwnerCFDictionaryApplier Owner: %s\n", CStringPtr);
  }

  CFDictionaryApplyFunction(a2, CCConfigure::pipePipeCFDictionaryApplier, a3);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

void CCConfigure::pipePipeCFDictionaryApplier(const __CFString *this, const void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!validCFObjectReference("CCConfigure::pipePipeCFDictionaryApplier", this, TypeID))
  {
    goto LABEL_12;
  }

  v8 = CFDictionaryGetTypeID();
  if (!validCFObjectReference("CCConfigure::pipePipeCFDictionaryApplier", a2, v8))
  {
    goto LABEL_12;
  }

  a3[3] = this;
  a3[1] = @"*";
  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = CFStringGetCStringPtr(this, 0);
      v10 = v9;
LABEL_8:
      _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipePipeCFDictionaryApplier Pipe: %s\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = CFStringGetCStringPtr(this, 0);
    v10 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

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
    v12 = glog_fd;
    CStringPtr = CFStringGetCStringPtr(this, 0);
    dprintf(v12, "CCConfigure::pipePipeCFDictionaryApplier Pipe: %s\n", CStringPtr);
  }

  CFDictionaryApplyFunction(a2, CCConfigure::pipeConfigureCFDictionaryApplier, a3);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

void CCConfigure::pipeConfigureCFDictionaryApplier(const __CFString *this, const __CFString *a2, CFStringRef *a3, void *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(a3[2], 0);
    *buf = 136315138;
    *&buf[4] = CStringPtr;
    v9 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = CFStringGetCStringPtr(a3[2], 0);
    *buf = 136315138;
    *&buf[4] = v10;
    v9 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier Owner: %s\n", buf, 0xCu);
LABEL_7:
  if (glog_fd)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v11;
    v66 = v11;
    v63 = v11;
    v64 = v11;
    v61 = v11;
    v62 = v11;
    *buf = v11;
    v60 = v11;
    memset(&v58, 0, sizeof(v58));
    v57 = 0xAAAAAAAAAAAAAAAALL;
    time(&v57);
    localtime_r(&v57, &v58);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
    dprintf(glog_fd, "%s ", buf);
    v12 = glog_fd;
    v13 = CFStringGetCStringPtr(a3[2], 0);
    dprintf(v12, "CCConfigure::pipeConfigureCFDictionaryApplier Owner: %s\n", v13);
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = CFStringGetCStringPtr(a3[3], 0);
    *buf = 136315138;
    *&buf[4] = v15;
    v16 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v17 = CFStringGetCStringPtr(a3[3], 0);
    *buf = 136315138;
    *&buf[4] = v17;
    v16 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier Pipe: %s\n", buf, 0xCu);
LABEL_15:
  if (glog_fd)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v18;
    v66 = v18;
    v63 = v18;
    v64 = v18;
    v61 = v18;
    v62 = v18;
    *buf = v18;
    v60 = v18;
    memset(&v58, 0, sizeof(v58));
    v57 = 0xAAAAAAAAAAAAAAAALL;
    time(&v57);
    localtime_r(&v57, &v58);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
    dprintf(glog_fd, "%s ", buf);
    v19 = glog_fd;
    v20 = CFStringGetCStringPtr(a3[3], 0);
    dprintf(v19, "CCConfigure::pipeConfigureCFDictionaryApplier Pipe: %s\n", v20);
  }

  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v22 = CFStringGetCStringPtr(this, 0);
    *buf = 136315138;
    *&buf[4] = v22;
    v23 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v24 = CFStringGetCStringPtr(this, 0);
    *buf = 136315138;
    *&buf[4] = v24;
    v23 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier Key: %s\n", buf, 0xCu);
LABEL_23:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v25;
    v66 = v25;
    v63 = v25;
    v64 = v25;
    v61 = v25;
    v62 = v25;
    *buf = v25;
    v60 = v25;
    memset(&v58, 0, sizeof(v58));
    v57 = 0xAAAAAAAAAAAAAAAALL;
    time(&v57);
    localtime_r(&v57, &v58);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
    dprintf(glog_fd, "%s ", buf);
    v26 = glog_fd;
    v27 = CFStringGetCStringPtr(this, 0);
    dprintf(v26, "CCConfigure::pipeConfigureCFDictionaryApplier Key: %s\n", v27);
  }

  TypeID = CFStringGetTypeID();
  if (validCFObjectReference("CCConfigure::pipeConfigureCFDictionaryApplier", this, TypeID))
  {
    if (CFStringCompare(this, @"CaptureReason", 0))
    {
      if (CFStringCompare(this, @"LogOptions", 0))
      {
        if (CFStringCompare(this, @"NotifyTimeout", 0))
        {
          if (CFStringCompare(this, @"WatermarkLevel", 0))
          {
            if (CFStringCompare(this, @"Policy", 0))
            {
              v29 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_67;
                }

                v30 = CFStringGetCStringPtr(this, 0);
                *buf = 136315138;
                *&buf[4] = v30;
                v31 = v29;
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_67;
                }

                v56 = CFStringGetCStringPtr(this, 0);
                *buf = 136315138;
                *&buf[4] = v56;
                v31 = MEMORY[0x277D86220];
              }

              _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "CCConfigure::pipeConfigureCFDictionaryApplier Unsupported Key %s\n", buf, 0xCu);
LABEL_67:
              if (glog_fd)
              {
                *&v49 = 0xAAAAAAAAAAAAAAAALL;
                *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v65 = v49;
                v66 = v49;
                v63 = v49;
                v64 = v49;
                v61 = v49;
                v62 = v49;
                *buf = v49;
                v60 = v49;
                memset(&v58, 0, sizeof(v58));
                v57 = 0xAAAAAAAAAAAAAAAALL;
                time(&v57);
                localtime_r(&v57, &v58);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
                dprintf(glog_fd, "%s ", buf);
                v50 = glog_fd;
                v51 = CFStringGetCStringPtr(this, 0);
                dprintf(v50, "CCConfigure::pipeConfigureCFDictionaryApplier Unsupported Key %s\n", v51);
              }

              goto LABEL_87;
            }

            v45 = CFNumberGetTypeID();
            if (!validCFObjectReference("CCConfigure::pipeConfigureCFDictionaryApplier", a2, v45))
            {
              goto LABEL_87;
            }

            v46 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v47 = v46;
LABEL_83:
                _os_log_impl(&dword_2452A3000, v47, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier pipe policy\n", buf, 2u);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v47 = MEMORY[0x277D86220];
              goto LABEL_83;
            }

            if (glog_fd)
            {
              *&v54 = 0xAAAAAAAAAAAAAAAALL;
              *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v65 = v54;
              v66 = v54;
              v63 = v54;
              v64 = v54;
              v61 = v54;
              v62 = v54;
              *buf = v54;
              v60 = v54;
              memset(&v58, 0, sizeof(v58));
              v57 = 0xAAAAAAAAAAAAAAAALL;
              time(&v57);
              localtime_r(&v57, &v58);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "CCConfigure::pipeConfigureCFDictionaryApplier pipe policy\n");
            }

            CCConfigure::policy(*a3, a3, a2);
            goto LABEL_87;
          }

          v41 = CFNumberGetTypeID();
          if (!validCFObjectReference("CCConfigure::pipeConfigureCFDictionaryApplier", a2, v41))
          {
            goto LABEL_87;
          }

          v42 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v43 = v42;
LABEL_77:
              _os_log_impl(&dword_2452A3000, v43, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier watermark level to notify\n", buf, 2u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v43 = MEMORY[0x277D86220];
            goto LABEL_77;
          }

          if (glog_fd)
          {
            *&v53 = 0xAAAAAAAAAAAAAAAALL;
            *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v65 = v53;
            v66 = v53;
            v63 = v53;
            v64 = v53;
            v61 = v53;
            v62 = v53;
            *buf = v53;
            v60 = v53;
            memset(&v58, 0, sizeof(v58));
            v57 = 0xAAAAAAAAAAAAAAAALL;
            time(&v57);
            localtime_r(&v57, &v58);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCConfigure::pipeConfigureCFDictionaryApplier watermark level to notify\n");
          }

          CCConfigure::watermarkLevel(*a3, a3, a2);
          goto LABEL_87;
        }

        v38 = CFNumberGetTypeID();
        if (!validCFObjectReference("CCConfigure::pipeConfigureCFDictionaryApplier", a2, v38))
        {
          goto LABEL_87;
        }

        v39 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v40 = v39;
LABEL_71:
            _os_log_impl(&dword_2452A3000, v40, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier notify timeout\n", buf, 2u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v40 = MEMORY[0x277D86220];
          goto LABEL_71;
        }

        if (glog_fd)
        {
          *&v52 = 0xAAAAAAAAAAAAAAAALL;
          *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v65 = v52;
          v66 = v52;
          v63 = v52;
          v64 = v52;
          v61 = v52;
          v62 = v52;
          *buf = v52;
          v60 = v52;
          memset(&v58, 0, sizeof(v58));
          v57 = 0xAAAAAAAAAAAAAAAALL;
          time(&v57);
          localtime_r(&v57, &v58);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCConfigure::pipeConfigureCFDictionaryApplier notify timeout\n");
        }

        CCConfigure::notifyTimeout(*a3, a3, a2);
        goto LABEL_87;
      }

      v35 = CFStringGetTypeID();
      if (!validCFObjectReference("CCConfigure::pipeConfigureCFDictionaryApplier", a2, v35))
      {
        goto LABEL_87;
      }

      v36 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v37 = v36;
LABEL_62:
          _os_log_impl(&dword_2452A3000, v37, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier Configure Log Options\n", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v37 = MEMORY[0x277D86220];
        goto LABEL_62;
      }

      if (glog_fd)
      {
        *&v48 = 0xAAAAAAAAAAAAAAAALL;
        *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v65 = v48;
        v66 = v48;
        v63 = v48;
        v64 = v48;
        v61 = v48;
        v62 = v48;
        *buf = v48;
        v60 = v48;
        memset(&v58, 0, sizeof(v58));
        v57 = 0xAAAAAAAAAAAAAAAALL;
        time(&v57);
        localtime_r(&v57, &v58);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCConfigure::pipeConfigureCFDictionaryApplier Configure Log Options\n");
      }

      CCConfigure::configureLogOptions(*a3, a3, a2);
      goto LABEL_87;
    }

    v32 = CFStringGetTypeID();
    if (!validCFObjectReference("CCConfigure::pipeConfigureCFDictionaryApplier", a2, v32))
    {
      goto LABEL_87;
    }

    v33 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v34 = v33;
LABEL_52:
        _os_log_impl(&dword_2452A3000, v34, OS_LOG_TYPE_DEFAULT, "CCConfigure::pipeConfigureCFDictionaryApplier capture\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = MEMORY[0x277D86220];
      goto LABEL_52;
    }

    if (glog_fd)
    {
      *&v44 = 0xAAAAAAAAAAAAAAAALL;
      *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v65 = v44;
      v66 = v44;
      v63 = v44;
      v64 = v44;
      v61 = v44;
      v62 = v44;
      *buf = v44;
      v60 = v44;
      memset(&v58, 0, sizeof(v58));
      v57 = 0xAAAAAAAAAAAAAAAALL;
      time(&v57);
      localtime_r(&v57, &v58);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v58);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCConfigure::pipeConfigureCFDictionaryApplier capture\n");
    }

    CCConfigure::capture(*a3, a3, a2);
  }

LABEL_87:
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t CCConfigure::capture(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!validCFObjectReference("CCConfigure::capture", a3, TypeID))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
  v25.length = CFStringGetLength(MutableCopy);
  v25.location = 0;
  CFStringFindAndReplace(MutableCopy, @"/", @"_", v25, 0);
  if (!CFStringGetLength(MutableCopy))
  {
    v9 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v10 = v9;
LABEL_17:
        _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCConfigure::capture capture reason can not be NULL\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = MEMORY[0x277D86220];
      goto LABEL_17;
    }

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
      v17 = v11;
      memset(&v15, 0, sizeof(v15));
      v14 = 0xAAAAAAAAAAAAAAAALL;
      time(&v14);
      localtime_r(&v14, &v15);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCConfigure::capture capture reason can not be NULL\n");
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_14;
  }

  *(&v17 + 1) = 0xAAAAAAAAAAAAAA00;
  *buf = MutableCopy;
  *&v15.tm_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v15.tm_hour = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v15, 0);
  *&buf[8] = *&v15.tm_sec;
  *&v17 = v15.tm_hour;
  CCPipeMonitor::forEachTapWithOwnerAndPipe(*(a1 + 16), *(a2 + 16), *(a2 + 24), _captureTapCallback, buf);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v8 = BYTE8(v17);
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

uint64_t CCConfigure::configureLogOptions(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  result = validCFObjectReference("CCConfigure::configureLogOptions", a3, TypeID);
  if (!result)
  {
    goto LABEL_14;
  }

  TapWithOwnerAndPipe = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
  if (TapWithOwnerAndPipe)
  {
    v9 = **TapWithOwnerAndPipe;
    if (v10)
    {
      v11 = v10;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v12;
      v36 = v12;
      v33 = v12;
      v34 = v12;
      v31 = v12;
      v32 = v12;
      buffer = v12;
      v30 = v12;
      CFStringGetCString(a3, &buffer, 128, 0);
      CCLogTap::configureLogOptions(v11, &buffer);
      (*(*v11 + 48))(v11);
      result = 1;
      goto LABEL_14;
    }
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v13;
  v44 = v13;
  v41 = v13;
  v42 = v13;
  v39 = v13;
  v40 = v13;
  v37 = v13;
  v38 = v13;
  v35 = v13;
  v36 = v13;
  v33 = v13;
  v34 = v13;
  v31 = v13;
  v32 = v13;
  buffer = v13;
  v30 = v13;
  CFStringGetCString(*(a2 + 16), &buffer, 256, 0);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[14] = v14;
  v28[15] = v14;
  v28[12] = v14;
  v28[13] = v14;
  v28[10] = v14;
  v28[11] = v14;
  v28[8] = v14;
  v28[9] = v14;
  v28[6] = v14;
  v28[7] = v14;
  v28[4] = v14;
  v28[5] = v14;
  v28[2] = v14;
  v28[3] = v14;
  v28[0] = v14;
  v28[1] = v14;
  CFStringGetCString(*(a2 + 24), v28, 256, 0);
  v15 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = &buffer;
      *&buf[12] = 2080;
      *&buf[14] = v28;
      v16 = v15;
LABEL_10:
      _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCConfigure::configureOptions Not found the tap owner:%s, pipe: %s\n", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = &buffer;
    *&buf[12] = 2080;
    *&buf[14] = v28;
    v16 = MEMORY[0x277D86220];
    goto LABEL_10;
  }

  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v17;
    v27 = v17;
    v24 = v17;
    v25 = v17;
    v22 = v17;
    v23 = v17;
    *buf = v17;
    *&buf[16] = v17;
    memset(&v20, 0, sizeof(v20));
    v19 = 0xAAAAAAAAAAAAAAAALL;
    time(&v19);
    localtime_r(&v19, &v20);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v20);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::configureOptions Not found the tap owner:%s, pipe: %s\n", &buffer, v28);
  }

  result = 0;
LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCConfigure::notifyTimeout(uint64_t a1, uint64_t a2, const void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  TypeID = CFNumberGetTypeID();
  result = validCFObjectReference("CCConfigure::notifyTimeout", a3, TypeID);
  if (!result)
  {
    goto LABEL_13;
  }

  result = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
  if (!result)
  {
    goto LABEL_13;
  }

  v8 = **result;
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  valuePtr = -1431655766;
  CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  v10 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = valuePtr;
      v11 = v10;
LABEL_9:
      _os_log_impl(&dword_2452A3000, v11, OS_LOG_TYPE_DEFAULT, "CCConfigure::notifyTimeout notifyTimeout: %u\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = valuePtr;
    v11 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

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
    memset(&v15, 0, sizeof(v15));
    v14 = 0xAAAAAAAAAAAAAAAALL;
    time(&v14);
    localtime_r(&v14, &v15);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::notifyTimeout notifyTimeout: %u\n", valuePtr);
  }

  *buf = valuePtr;
  CCLogTap::setNotifyTimeout(v9, buf);
  (*(*v9 + 48))(v9);
  result = 1;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCConfigure::watermarkLevel(uint64_t a1, uint64_t a2, const void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  TypeID = CFNumberGetTypeID();
  result = validCFObjectReference("CCConfigure::notifyTimeout", a3, TypeID);
  if (!result)
  {
    goto LABEL_13;
  }

  result = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
  if (!result)
  {
    goto LABEL_13;
  }

  v8 = **result;
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  valuePtr = -1431655766;
  CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  v10 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = valuePtr;
      v11 = v10;
LABEL_9:
      _os_log_impl(&dword_2452A3000, v11, OS_LOG_TYPE_DEFAULT, "CCConfigure::watermarkLevel watermarkLevel: %u\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = valuePtr;
    v11 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

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
    memset(&v15, 0, sizeof(v15));
    v14 = 0xAAAAAAAAAAAAAAAALL;
    time(&v14);
    localtime_r(&v14, &v15);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::watermarkLevel watermarkLevel: %u\n", valuePtr);
  }

  *buf = valuePtr;
  CCLogTap::setWatermarkLevel(v9, buf);
  (*(*v9 + 48))(v9);
  result = 1;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCConfigure::policy(uint64_t a1, uint64_t a2, const void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  TypeID = CFNumberGetTypeID();
  result = validCFObjectReference("CCConfigure::policy", a3, TypeID);
  if (!result)
  {
    goto LABEL_13;
  }

  result = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
  if (!result)
  {
    goto LABEL_13;
  }

  v8 = **result;
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  valuePtr = -1431655766;
  CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  v10 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = valuePtr;
      v11 = v10;
LABEL_9:
      _os_log_impl(&dword_2452A3000, v11, OS_LOG_TYPE_DEFAULT, "CCConfigure::policy policy: %u\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = valuePtr;
    v11 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

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
    memset(&v15, 0, sizeof(v15));
    v14 = 0xAAAAAAAAAAAAAAAALL;
    time(&v14);
    localtime_r(&v14, &v15);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v15);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::policy policy: %u\n", valuePtr);
  }

  *buf = valuePtr;
  CCLogTap::setPolicy(v9, buf);
  (*(*v9 + 48))(v9);
  result = 1;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

const void *CCConfigure::findTapWithOwnerAndPipe(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  TapWithOwnerAndPipe = CCPipeMonitor::findTapWithOwnerAndPipe(*(a1 + 16), *(a2 + 16), *(a2 + 24));
  if (!TapWithOwnerAndPipe)
  {
    goto LABEL_10;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buffer[14] = v4;
  buffer[15] = v4;
  buffer[12] = v4;
  buffer[13] = v4;
  buffer[10] = v4;
  buffer[11] = v4;
  buffer[8] = v4;
  buffer[9] = v4;
  buffer[6] = v4;
  buffer[7] = v4;
  buffer[4] = v4;
  buffer[5] = v4;
  buffer[2] = v4;
  buffer[3] = v4;
  buffer[0] = v4;
  buffer[1] = v4;
  CFStringGetCString(*(a2 + 16), buffer, 256, 0);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[14] = v5;
  v20[15] = v5;
  v20[12] = v5;
  v20[13] = v5;
  v20[10] = v5;
  v20[11] = v5;
  v20[8] = v5;
  v20[9] = v5;
  v20[6] = v5;
  v20[7] = v5;
  v20[4] = v5;
  v20[5] = v5;
  v20[2] = v5;
  v20[3] = v5;
  v20[0] = v5;
  v20[1] = v5;
  CFStringGetCString(*(a2 + 24), v20, 256, 0);
  v6 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    *&buf[4] = buffer;
    *&buf[12] = 2080;
    *&buf[14] = v20;
    v7 = v6;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    *&buf[4] = buffer;
    *&buf[12] = 2080;
    *&buf[14] = v20;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCConfigure::findTapWithOwnerAndPipe found CCTap, Owner: %s, Pipe: %s\n", buf, 0x16u);
LABEL_8:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v8;
    v19 = v8;
    v16 = v8;
    v17 = v8;
    v14 = v8;
    v15 = v8;
    *buf = v8;
    *&buf[16] = v8;
    memset(&v12, 0, sizeof(v12));
    v11 = 0xAAAAAAAAAAAAAAAALL;
    time(&v11);
    localtime_r(&v11, &v12);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v12);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCConfigure::findTapWithOwnerAndPipe found CCTap, Owner: %s, Pipe: %s\n", buffer, v20);
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return TapWithOwnerAndPipe;
}

void CCConfigure::streamOwnerCFDictionaryApplier(const __CFString *this, const __CFDictionary *a2, void *a3, void *a4)
{
  TypeID = CFStringGetTypeID();
  if (validCFObjectReference("CCConfigure::streamOwnerCFDictionaryApplier", this, TypeID))
  {
    v8 = CFDictionaryGetTypeID();
    if (validCFObjectReference("CCConfigure::streamOwnerCFDictionaryApplier", a2, v8))
    {
      a3[2] = this;
      v9 = a3[5];
      if (!v9 || CFStringCompare(this, v9, 0) == kCFCompareEqualTo)
      {

        CFDictionaryApplyFunction(a2, CCConfigure::streamPipeCFDictionaryApplier, a3);
      }
    }
  }
}

void CCConfigure::streamPipeCFDictionaryApplier(const __CFString *this, const __CFDictionary *a2, void *a3, void *a4)
{
  TypeID = CFStringGetTypeID();
  if (validCFObjectReference("CCConfigure::streamPipeCFDictionaryApplier", this, TypeID))
  {
    v8 = CFDictionaryGetTypeID();
    if (validCFObjectReference("CCConfigure::streamPipeCFDictionaryApplier", a2, v8))
    {
      a3[3] = this;
      v9 = a3[6];
      if (!v9 || CFStringCompare(this, v9, 0) == kCFCompareEqualTo)
      {

        CFDictionaryApplyFunction(a2, CCConfigure::streamStreamCFDictionaryApplier, a3);
      }
    }
  }
}

void CCConfigure::streamStreamCFDictionaryApplier(CCConfigure *this, const __CFDictionary *a2, void *a3, void *a4)
{
  TypeID = CFStringGetTypeID();
  if (validCFObjectReference("CCConfigure::streamStreamCFDictionaryApplier", this, TypeID))
  {
    v8 = CFDictionaryGetTypeID();
    if (validCFObjectReference("CCConfigure::streamStreamCFDictionaryApplier", a2, v8))
    {
      a3[4] = this;

      CFDictionaryApplyFunction(a2, CCConfigure::streamConfigureCFDictionaryApplier, a3);
    }
  }
}

void CCConfigure::streamConfigureCFDictionaryApplier(const __CFString *this, const __CFDictionary *a2, void *a3, void *a4)
{
  TypeID = CFStringGetTypeID();
  if (validCFObjectReference("CCConfigure::streamConfigureCFDictionaryApplier", this, TypeID))
  {
    v8 = CFDictionaryGetTypeID();
    if (validCFObjectReference("CCConfigure::streamConfigureCFDictionaryApplier", a2, v8))
    {
      v9 = CFStringCompare(this, @"CoreCapture", 0);
      v10 = CCConfigure::streamConfigureCoreCaptureCFDictionaryApplier;
      if (v9 == kCFCompareEqualTo || (v11 = CFStringCompare(this, @"Console", 0), v10 = CCConfigure::streamConfigureConsoleCFDictionaryApplier, v11 == kCFCompareEqualTo))
      {

        CFDictionaryApplyFunction(a2, v10, a3);
      }
    }
  }
}

uint64_t CCConfigure::streamConfigureConsoleCFDictionaryApplier(const __CFString *this, const void *a2, uint64_t *a3, void *a4)
{
  TypeID = CFStringGetTypeID();
  result = validCFObjectReference("CCConfigure::streamConfigureConsoleCFDictionaryApplier", this, TypeID);
  if (result)
  {
    v9 = CFNumberGetTypeID();
    result = validCFObjectReference("CCConfigure::streamConfigureConsoleCFDictionaryApplier", a2, v9);
    if (result)
    {
      if (CFStringCompare(this, @"LogFlags", 0))
      {
        result = CFStringCompare(this, @"LogLevel", 0);
        if (!result)
        {
          v11 = *a3;

          return CCConfigure::setConsoleLevel(v11, a3, a2);
        }
      }

      else
      {
        v10 = *a3;

        return CCConfigure::setConsoleFlags(v10, a3, a2);
      }
    }
  }

  return result;
}

uint64_t CCConfigure::setConsoleFlags(uint64_t a1, uint64_t a2, const void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  TypeID = CFNumberGetTypeID();
  result = validCFObjectReference("CCConfigure::setConsoleFlags", a3, TypeID);
  if (result)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
    result = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
    if (result)
    {
      v8 = **result;
      if (result)
      {
        v9 = result;
        v29 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27 = v10;
        v28 = v10;
        v25 = v10;
        v26 = v10;
        v23 = v10;
        v24 = v10;
        v21 = v10;
        v22 = v10;
        v19 = v10;
        v20 = v10;
        v17 = v10;
        v18 = v10;
        v15 = v10;
        v16 = v10;
        *buffer = v10;
        v14 = v10;
        CFStringGetCString(*(a2 + 32), buffer, 256, 0);
        v29 = valuePtr;
        CCLogTap::setConsoleLogFlags(v9, buffer);
        (*(*v9 + 48))(v9);
        result = 1;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCConfigure::setConsoleLevel(uint64_t a1, uint64_t a2, const void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  TypeID = CFNumberGetTypeID();
  result = validCFObjectReference("CCConfigure::setConsoleLevel", a3, TypeID);
  if (result)
  {
    valuePtr = -1431655766;
    CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
    result = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
    if (result)
    {
      v8 = **result;
      if (result)
      {
        v9 = result;
        v29 = -1431655766;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27 = v10;
        v28 = v10;
        v25 = v10;
        v26 = v10;
        v23 = v10;
        v24 = v10;
        v21 = v10;
        v22 = v10;
        v19 = v10;
        v20 = v10;
        v17 = v10;
        v18 = v10;
        v15 = v10;
        v16 = v10;
        *buffer = v10;
        v14 = v10;
        CFStringGetCString(*(a2 + 32), buffer, 256, 0);
        v29 = valuePtr;
        CCLogTap::setConsoleLogLevel(v9, buffer);
        (*(*v9 + 48))(v9);
        result = 1;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCConfigure::streamConfigureCoreCaptureCFDictionaryApplier(const __CFString *this, const void *a2, uint64_t *a3, void *a4)
{
  TypeID = CFStringGetTypeID();
  result = validCFObjectReference("CCConfigure::streamConfigureCoreCaptureCFDictionaryApplier", this, TypeID);
  if (result)
  {
    v9 = CFNumberGetTypeID();
    result = validCFObjectReference("CCConfigure::streamConfigureCoreCaptureCFDictionaryApplier", a2, v9);
    if (result)
    {
      if (CFStringCompare(this, @"LogFlags", 0))
      {
        result = CFStringCompare(this, @"LogLevel", 0);
        if (!result)
        {
          v11 = *a3;

          return CCConfigure::setLevel(v11, a3, a2);
        }
      }

      else
      {
        v10 = *a3;

        return CCConfigure::setFlags(v10, a3, a2);
      }
    }
  }

  return result;
}

BOOL CCConfigure::setFlags(uint64_t a1, uint64_t a2, const void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  TapWithOwnerAndPipe = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
  if (TapWithOwnerAndPipe)
  {
    v6 = **TapWithOwnerAndPipe;
  }

  else
  {
    v7 = 0;
  }

  v8 = CFGetTypeID(a3);
  if (v8 == CFNumberGetTypeID())
  {
    *&valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(a3, kCFNumberSInt64Type, valuePtr);
    v9 = v7 != 0;
    if (v7)
    {
      *&v22[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22[14] = v10;
      v22[15] = v10;
      v22[12] = v10;
      v22[13] = v10;
      v22[10] = v10;
      v22[11] = v10;
      v22[8] = v10;
      v22[9] = v10;
      v22[6] = v10;
      v22[7] = v10;
      v22[4] = v10;
      v22[5] = v10;
      v22[2] = v10;
      v22[3] = v10;
      v22[0] = v10;
      v22[1] = v10;
      CFStringGetCString(*(a2 + 32), v22, 256, 0);
      *&v22[16] = *&valuePtr[0];
      CCLogTap::setLogFlags(v7, v22);
      (*(*v7 + 48))(v7);
    }

    goto LABEL_23;
  }

  v11 = CFGetTypeID(a3);
  if (v11 != CFArrayGetTypeID())
  {
    v9 = 0;
    goto LABEL_23;
  }

  Count = CFArrayGetCount(a3);
  v9 = 1;
  if (Count >= 1)
  {
    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
      v16 = CFGetTypeID(ValueAtIndex);
      if (v16 != CFStringGetTypeID())
      {
        goto LABEL_20;
      }

      v17 = CFArrayGetValueAtIndex(a3, v14);
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      valuePtr[14] = v18;
      valuePtr[15] = v18;
      valuePtr[12] = v18;
      valuePtr[13] = v18;
      valuePtr[10] = v18;
      valuePtr[11] = v18;
      valuePtr[8] = v18;
      valuePtr[9] = v18;
      valuePtr[6] = v18;
      valuePtr[7] = v18;
      valuePtr[4] = v18;
      valuePtr[5] = v18;
      valuePtr[2] = v18;
      valuePtr[3] = v18;
      valuePtr[0] = v18;
      valuePtr[1] = v18;
      if (!CFStringGetCString(v17, valuePtr, 256, 0x8000100u))
      {
        goto LABEL_20;
      }

      memset(v22, 170, 0x204uLL);
      CFStringGetCString(*(a2 + 32), v22, 256, 0);
      LODWORD(v22[32]) = 1;
      if (LOBYTE(valuePtr[0]) == 43)
      {
        v19 = valuePtr + 1;
      }

      else
      {
        if (LOBYTE(valuePtr[0]) == 45)
        {
          strlcpy(&v22[16], valuePtr + 1, 0x100uLL);
          LODWORD(v22[32]) = 2;
          if (!v7)
          {
            goto LABEL_20;
          }

LABEL_19:
          CCLogTap::updateLogFlags(v7, v22);
          (*(*v7 + 48))(v7);
          goto LABEL_20;
        }

        v19 = valuePtr;
      }

      strlcpy(&v22[16], v19, 0x100uLL);
      if (v7)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v13 == ++v14)
      {
        v9 = 1;
        break;
      }
    }
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t CCConfigure::setLevel(uint64_t a1, uint64_t a2, const void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  TypeID = CFNumberGetTypeID();
  result = validCFObjectReference("CCConfigure::setLevel", a3, TypeID);
  if (result)
  {
    valuePtr = -1431655766;
    CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
    result = CCConfigure::findTapWithOwnerAndPipe(a1, a2);
    if (result)
    {
      v8 = **result;
      if (result)
      {
        v9 = result;
        v29 = -1431655766;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27 = v10;
        v28 = v10;
        v25 = v10;
        v26 = v10;
        v23 = v10;
        v24 = v10;
        v21 = v10;
        v22 = v10;
        v19 = v10;
        v20 = v10;
        v17 = v10;
        v18 = v10;
        v15 = v10;
        v16 = v10;
        *buffer = v10;
        v14 = v10;
        CFStringGetCString(*(a2 + 32), buffer, 256, 0);
        v29 = valuePtr;
        CCLogTap::setLogLevel(v9, buffer);
        (*(*v9 + 48))(v9);
        result = 1;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCOSSerializeFormatter::initWithRegistryEntry(CCOSSerializeFormatter *this, io_object_t object)
{
  *(this + 8) = object;
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

uint64_t CCFormatter::registerWriteCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = a3;
  *(result + 24) = a2;
  return result;
}

CFIndex CCOSSerializeFormatter::writeLog(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v11 = malloc_type_malloc(a6 + a4, 0x100004077774924uLL);
    memcpy(v11, a3, a4);
    memcpy(&v11[a4], a5, a6);
    a3 = v11;
  }

  else
  {
    v11 = 0;
  }

  errorString = 0xAAAAAAAAAAAAAAAALL;
  v12 = IOCFUnserialize(a3, *MEMORY[0x277CBECE8], 0, &errorString);
  v13 = v12;
  if (!v12)
  {
    v21 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(errorString, 0);
        *buf = 136315138;
        *&buf[4] = CStringPtr;
        v23 = v21;
LABEL_47:
        _os_log_error_impl(&dword_2452A3000, v23, OS_LOG_TYPE_ERROR, "Error: %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v38 = CFStringGetCStringPtr(errorString, 0);
      *buf = 136315138;
      *&buf[4] = v38;
      v23 = MEMORY[0x277D86220];
      goto LABEL_47;
    }

    if (glog_fd)
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v26;
      v48 = v26;
      v45 = v26;
      v46 = v26;
      v43 = v26;
      v44 = v26;
      *buf = v26;
      *&buf[16] = v26;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      v27 = glog_fd;
      v28 = CFStringGetCStringPtr(errorString, 0);
      dprintf(v27, "Error: %s", v28);
    }

    v15 = 0;
    goto LABEL_30;
  }

  v14 = CFGetTypeID(v12);
  if (v14 != CFArrayGetTypeID())
  {
    v24 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v25 = v24;
LABEL_49:
        _os_log_error_impl(&dword_2452A3000, v25, OS_LOG_TYPE_ERROR, "CCOSSerializeFormatter::writeLog unsupported root type for JSON Serialization", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = MEMORY[0x277D86220];
      goto LABEL_49;
    }

    if (glog_fd)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v29;
      v48 = v29;
      v45 = v29;
      v46 = v29;
      v43 = v29;
      v44 = v29;
      *buf = v29;
      *&buf[16] = v29;
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCOSSerializeFormatter::writeLog unsupported root type for JSON Serialization");
    }

    v15 = 0;
LABEL_24:
    v30 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v31 = v30;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v31 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "CCOSSerializeFormatter::writeLog CFDataGetBytePtr() failed", buf, 2u);
LABEL_28:
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
      memset(&v40, 0, sizeof(v40));
      v39 = 0xAAAAAAAAAAAAAAAALL;
      time(&v39);
      localtime_r(&v39, &v40);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCOSSerializeFormatter::writeLog CFDataGetBytePtr() failed");
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:1 error:0];
  CFRetain(v15);
  if (!v15)
  {
    goto LABEL_24;
  }

  BytePtr = CFDataGetBytePtr(v15);
  if (!BytePtr)
  {
    goto LABEL_24;
  }

  v17 = BytePtr;
  Length = CFDataGetLength(v15);
  v19 = (*(*a1 + 112))(a1, v17, Length);
  if (v19 == Length)
  {
    v20 = Length;
    goto LABEL_31;
  }

  v20 = v19;
  v35 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 134218240;
    *&buf[4] = Length;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    v36 = v35;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 134218240;
    *&buf[4] = Length;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    v36 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "CCOSSerializeFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", buf, 0x16u);
LABEL_42:
  if (glog_fd)
  {
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47 = v37;
    v48 = v37;
    v45 = v37;
    v46 = v37;
    v43 = v37;
    v44 = v37;
    *buf = v37;
    *&buf[16] = v37;
    memset(&v40, 0, sizeof(v40));
    v39 = 0xAAAAAAAAAAAAAAAALL;
    time(&v39);
    localtime_r(&v39, &v40);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v40);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCOSSerializeFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", Length, v20);
  }

LABEL_31:
  if (v11)
  {
    free(v11);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t CCDaemon::ccfree(atomic_uchar *this)
{
  result = CCDaemon::freeResources(this);
  v3 = 1;
  atomic_compare_exchange_strong(this + 305, &v3, 0);
  CCDaemon::instance = 0;
  if (this)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

uint64_t CCDaemon::freeResources(CCDaemon *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 72))(v2);
    CCPipeMonitor::cleanCaptureDirectories(*(this + 2));
    v3 = *(this + 2);
    v4 = *(v3 + 136);
    if (v4)
    {
      (*(*v4 + 48))(v4);
      *(v3 + 136) = 0;
    }
  }

  v5 = *(this + 37);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(this + 37));
    *(this + 37) = 0;
  }

  v6 = *(this + 5);
  if (v6)
  {
    (*(*v6 + 48))(v6);
    *(this + 5) = 0;
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 48))(v7);
    *(this + 3) = 0;
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 48))(v8);
    *(this + 4) = 0;
  }

  if (gReleaseType)
  {
    CFRelease(gReleaseType);
    gReleaseType = 0;
  }

  pthread_mutex_lock((this + 232));
  if ((*(this + 208) & 1) == 0)
  {
    if (CCDaemon::fIsCCDaemon)
    {
      v9 = "/var/log/CoreCapture";
    }

    else
    {
      v9 = CCDaemon::fWorkingDir;
    }

    v10 = CFStringCreateWithCString(0, v9, 0);
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 512, v10);
    if (MutableCopy)
    {
      v12 = MutableCopy;
      deleteDirectory(MutableCopy);
      CFRelease(v12);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v13 = *(this + 40);
  if (v13)
  {
    dispatch_release(v13);
    *(this + 40) = 0;
  }

  v14 = *(this + 41);
  if (v14)
  {
    dispatch_sync(v14, &__block_literal_global_25);
    dispatch_release(*(this + 41));
    *(this + 41) = 0;
  }

  v15 = *(this + 2);
  if (v15)
  {
    (*(*v15 + 48))(v15);
    *(this + 2) = 0;
  }

  v16 = *(this + 39);
  if (v16)
  {
    dispatch_release(v16);
    *(this + 39) = 0;
  }

  v17 = *(this + 25);
  if (v17)
  {
    CFRelease(v17);
    *(this + 25) = 0;
  }

  atomic_store(0, CCDaemon::initialized);
  atomic_store(0, this + 305);
  pthread_mutex_unlock((this + 232));

  return pthread_mutex_destroy((this + 232));
}

void CCDaemon::CCDaemon(CCDaemon *this)
{
  *(this + 2) = 1;
  *this = &unk_28583B578;
  *(this + 152) = 0;
}

{
  *(this + 2) = 1;
  *this = &unk_28583B578;
  *(this + 152) = 0;
}

CCDaemon *CoreCaptureStart(CCDaemon *a1, const char *a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(CCDaemon::initialized, memory_order_acquire))
  {
    v3 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      v4 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        *buf = 0;
        v5 = v3;
LABEL_26:
        _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "CoreCaptureStart called when CCDaemon already running, returning existing instance", buf, 2u);
      }
    }

    else
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v4)
      {
        *buf = 0;
        v5 = MEMORY[0x277D86220];
        goto LABEL_26;
      }
    }

    if (glog_fd)
    {
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v7;
      v22 = v7;
      v19 = v7;
      v20 = v7;
      v17 = v7;
      v18 = v7;
      *buf = v7;
      v16 = v7;
      memset(&v14, 0, sizeof(v14));
      v13 = 0xAAAAAAAAAAAAAAAALL;
      time(&v13);
      localtime_r(&v13, &v14);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
      dprintf(glog_fd, "%s ", buf);
      v4 = dprintf(glog_fd, "CoreCaptureStart called when CCDaemon already running, returning existing instance");
    }

    Instance = CCDaemon::getInstance(v4);
    goto LABEL_24;
  }

  if (a1 && a2 && (a3 & 1) == 0)
  {
    CCDaemon::ccstart(a1, a2, 0);
  }

  if (!a1 && !a2 && a3)
  {
    osTransaction = os_transaction_create();
    Instance = CCDaemon::getInstance(osTransaction);
    CCDaemon::startPipeMonitor(Instance);
    goto LABEL_24;
  }

  v8 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = v8;
LABEL_28:
      _os_log_error_impl(&dword_2452A3000, v9, OS_LOG_TYPE_ERROR, "CoreCaptureStart called with bad args, crashing", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v9 = MEMORY[0x277D86220];
    goto LABEL_28;
  }

  if (glog_fd)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v10;
    v22 = v10;
    v19 = v10;
    v20 = v10;
    v17 = v10;
    v18 = v10;
    *buf = v10;
    v16 = v10;
    memset(&v14, 0, sizeof(v14));
    v13 = 0xAAAAAAAAAAAAAAAALL;
    time(&v13);
    localtime_r(&v13, &v14);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CoreCaptureStart called with bad args, crashing");
  }

  Instance = 0;
LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return Instance;
}

void sub_2452AB474(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = (*(*v19 + 16))(v19);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_2452A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CCDaemon::setupDirectInstance failed with exception: %s", &buf, 0xCu);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void CCDaemon::startPipeMonitor(CCDaemon *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(CCDaemon::initialized, memory_order_acquire))
  {
    v1 = *(this + 2);
    v2 = *MEMORY[0x277D85DE8];

    CCServiceMonitor::scanServices(v1);
    return;
  }

  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v4 = v3;
LABEL_13:
      _os_log_error_impl(&dword_2452A3000, v4, OS_LOG_TYPE_ERROR, "CCDaemon::startPipeMonitor CCDaemon not yet initialized, exiting", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v4 = MEMORY[0x277D86220];
    goto LABEL_13;
  }

  if (glog_fd)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v5;
    v16 = v5;
    v13 = v5;
    v14 = v5;
    v11 = v5;
    v12 = v5;
    *buf = v5;
    v10 = v5;
    memset(&v8, 0, sizeof(v8));
    v7 = 0xAAAAAAAAAAAAAAAALL;
    time(&v7);
    localtime_r(&v7, &v8);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v8);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDaemon::startPipeMonitor CCDaemon not yet initialized, exiting");
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t CCDaemon::initCCDaemonWithOptions(CCDaemon *this, const char *a2, const char *a3, int a4)
{
  v87 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  atomic_store(0, this + 304);
  *(this + 37) = 0;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v85 = v8;
  v86 = v8;
  v83 = v8;
  v84 = v8;
  v81 = v8;
  v82 = v8;
  v79 = v8;
  v80 = v8;
  v77 = v8;
  v78 = v8;
  v75 = v8;
  v76 = v8;
  v73 = v8;
  v74 = v8;
  *__str = v8;
  v72 = v8;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  *(this + 208) = 0;
  if (a4)
  {
LABEL_2:
    v62 = 256;
    if (!sysctlbyname("kern.bootargs", __str, &v62, 0, 0))
    {
      HIBYTE(v86) = 0;
      v15 = strtok(__str, " ");
      if (v15)
      {
        v16 = v15;
        while (!strstr(v16, "cc.recovery.allow"))
        {
          v16 = strtok(0, " ");
          if (!v16)
          {
            goto LABEL_3;
          }
        }

        v37 = strchr(v16, 61);
        if (v37 && strtol(v37 + 1, 0, 10) == 1)
        {
          CCDaemon::fEnableDumpToDiskinRecoveryOS = 1;
        }
      }
    }

LABEL_3:
    CCDaemon::fIsCCDaemon = a4;
    if (a2)
    {
      v9 = strdup(a2);
    }

    else
    {
      v9 = 0;
    }

    CCDaemon::fWorkingDir = v9;
    if (a3)
    {
      v17 = strdup(a3);
    }

    else
    {
      v17 = 0;
    }

    CCDaemon::fSaveDir = v17;
    if (!a4)
    {
LABEL_32:
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
      v25 = dispatch_queue_create("com.apple.corecaptured.serial_queue", v24);
      *(this + 39) = v25;
      if (v25)
      {
        v26 = dispatch_queue_create("come.apple.corecaptured.service_notify", v24);
        *(this + 40) = v26;
        if (v26)
        {
          v27 = dispatch_queue_create("com.apple.corecaptured.background_queue", v24);
          *(this + 41) = v27;
          if (v27)
          {
            if (pthread_mutex_init((this + 232), 0))
            {
              v28 = coreCaptureOsLog;
              if (coreCaptureOsLog)
              {
                if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_74;
                }

                *buf = 0;
                v29 = v28;
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_74;
                }

                *buf = 0;
                v29 = MEMORY[0x277D86220];
              }

              _os_log_error_impl(&dword_2452A3000, v29, OS_LOG_TYPE_ERROR, "CCDaemon::init Failed to initialize mutex\n", buf, 2u);
LABEL_74:
              if (glog_fd)
              {
                *&v49 = 0xAAAAAAAAAAAAAAAALL;
                *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v49;
                v70 = v49;
                v67 = v49;
                v68 = v49;
                v65 = v49;
                v66 = v49;
                *buf = v49;
                v64 = v49;
                memset(&v61, 0, sizeof(v61));
                v60 = 0xAAAAAAAAAAAAAAAALL;
                time(&v60);
                localtime_r(&v60, &v61);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
                dprintf(glog_fd, "%s ", buf);
                dprintf(glog_fd, "CCDaemon::init Failed to initialize mutex\n");
              }

              goto LABEL_79;
            }

            v42 = IOServiceNameMatching("CCPipe");
            *(this + 25) = v42;
            v43 = coreCaptureOsLog;
            if (v42)
            {
              if (coreCaptureOsLog)
              {
                if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_86;
                }

                Count = CFDictionaryGetCount(v42);
                *buf = 134217984;
                *&buf[4] = Count;
                v46 = v43;
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_86;
                }

                v54 = CFDictionaryGetCount(v42);
                *buf = 134217984;
                *&buf[4] = v54;
                v46 = MEMORY[0x277D86220];
              }

              _os_log_impl(&dword_2452A3000, v46, OS_LOG_TYPE_DEFAULT, "CCDaemon:: Num of matching CCPipe %ld\n", buf, 0xCu);
LABEL_86:
              if (glog_fd)
              {
                *&v55 = 0xAAAAAAAAAAAAAAAALL;
                *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v69 = v55;
                v70 = v55;
                v67 = v55;
                v68 = v55;
                v65 = v55;
                v66 = v55;
                *buf = v55;
                v64 = v55;
                memset(&v61, 0, sizeof(v61));
                v60 = 0xAAAAAAAAAAAAAAAALL;
                time(&v60);
                localtime_r(&v60, &v61);
                strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
                dprintf(glog_fd, "%s ", buf);
                v56 = glog_fd;
                v57 = CFDictionaryGetCount(*(this + 25));
                dprintf(v56, "CCDaemon:: Num of matching CCPipe %ld\n", v57);
              }

              CCPipeMonitor::withDictionaryAndQueue(*(this + 25), *(this + 40), v44);
            }

            if (coreCaptureOsLog)
            {
              if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_90;
              }

              *buf = 0;
              v53 = v43;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_90;
              }

              *buf = 0;
              v53 = MEMORY[0x277D86220];
            }

            _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "CCDaemon:: No name matching CCPipe service found \n", buf, 2u);
LABEL_90:
            if (glog_fd)
            {
              *&v58 = 0xAAAAAAAAAAAAAAAALL;
              *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v69 = v58;
              v70 = v58;
              v67 = v58;
              v68 = v58;
              v65 = v58;
              v66 = v58;
              *buf = v58;
              v64 = v58;
              memset(&v61, 0, sizeof(v61));
              v60 = 0xAAAAAAAAAAAAAAAALL;
              time(&v60);
              localtime_r(&v60, &v61);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "CCDaemon:: No name matching CCPipe service found \n");
            }

            goto LABEL_79;
          }

          v38 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_77;
            }

            *buf = 0;
            v39 = v38;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_77;
            }

            *buf = 0;
            v39 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v39, OS_LOG_TYPE_ERROR, "CCDaemon::init failed to create com.apple.corecaptured.background_queue\n", buf, 2u);
LABEL_77:
          if (glog_fd)
          {
            *&v50 = 0xAAAAAAAAAAAAAAAALL;
            *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v69 = v50;
            v70 = v50;
            v67 = v50;
            v68 = v50;
            v65 = v50;
            v66 = v50;
            *buf = v50;
            v64 = v50;
            memset(&v61, 0, sizeof(v61));
            v60 = 0xAAAAAAAAAAAAAAAALL;
            time(&v60);
            localtime_r(&v60, &v61);
            strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
            dprintf(glog_fd, "%s ", buf);
            dprintf(glog_fd, "CCDaemon::init failed to create com.apple.corecaptured.background_queue\n");
          }

          goto LABEL_79;
        }

        v32 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *buf = 0;
          v33 = v32;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *buf = 0;
          v33 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v33, OS_LOG_TYPE_ERROR, "CCDaemon::init failed to create come.apple.corecaptured.service_notify\n", buf, 2u);
LABEL_68:
        if (glog_fd)
        {
          *&v47 = 0xAAAAAAAAAAAAAAAALL;
          *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v69 = v47;
          v70 = v47;
          v67 = v47;
          v68 = v47;
          v65 = v47;
          v66 = v47;
          *buf = v47;
          v64 = v47;
          memset(&v61, 0, sizeof(v61));
          v60 = 0xAAAAAAAAAAAAAAAALL;
          time(&v60);
          localtime_r(&v60, &v61);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCDaemon::init failed to create come.apple.corecaptured.service_notify\n");
        }

        goto LABEL_79;
      }

      v30 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v31 = v30;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v31 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "CCDaemon::init failed to create com.apple.corecaptured.serial_queue\n", buf, 2u);
LABEL_58:
      if (glog_fd)
      {
        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v69 = v40;
        v70 = v40;
        v67 = v40;
        v68 = v40;
        v65 = v40;
        v66 = v40;
        *buf = v40;
        v64 = v40;
        memset(&v61, 0, sizeof(v61));
        v60 = 0xAAAAAAAAAAAAAAAALL;
        time(&v60);
        localtime_r(&v60, &v61);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCDaemon::init failed to create com.apple.corecaptured.serial_queue\n");
      }

      goto LABEL_79;
    }

    v62 = 256;
    if (!sysctlbyname("kern.bootargs", __str, &v62, 0, 0))
    {
      HIBYTE(v86) = 0;
      if (strnstr(__str, "cc.debug.keepwd", 0x100uLL))
      {
        *(this + 208) = 1;
      }
    }

    if ((*(this + 208) & 1) == 0)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 512, @"/var/log/CoreCapture");
      v19 = MutableCopy;
      if (!MutableCopy)
      {
        goto LABEL_79;
      }

      deleteDirectory(MutableCopy);
      CFRelease(v19);
    }

    pruneDirectoryOnOSUpgrade();
    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    *(this + 37) = v20;
    if (v20)
    {
      v21 = v20;
      v22 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(v21, v22, 0xDF8475800uLL, 0);
      v23 = *(this + 37);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ___ZN8CCDaemon23initCCDaemonWithOptionsEPKcS1_b_block_invoke;
      handler[3] = &__block_descriptor_tmp_63;
      handler[4] = this;
      dispatch_source_set_event_handler(v23, handler);
      dispatch_resume(*(this + 37));
      goto LABEL_32;
    }

    v34 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      *buf = 0;
      v35 = v34;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      *buf = 0;
      v35 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v35, OS_LOG_TYPE_ERROR, "CCDaemon::init Failed to create timer dispatch source\n", buf, 2u);
LABEL_71:
    if (glog_fd)
    {
      *&v48 = 0xAAAAAAAAAAAAAAAALL;
      *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v69 = v48;
      v70 = v48;
      v67 = v48;
      v68 = v48;
      v65 = v48;
      v66 = v48;
      *buf = v48;
      v64 = v48;
      memset(&v61, 0, sizeof(v61));
      v60 = 0xAAAAAAAAAAAAAAAALL;
      time(&v60);
      localtime_r(&v60, &v61);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDaemon::init Failed to create timer dispatch source\n");
    }

    goto LABEL_79;
  }

  if (a2 && a3)
  {
    v10 = 0;
    atomic_compare_exchange_strong(this + 305, &v10, 1u);
    if (!v10)
    {
      goto LABEL_2;
    }

    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 0;
      v12 = v11;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 0;
      v12 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "CCDaemon::init CoreCaptureStart was already called\n", buf, 2u);
LABEL_61:
    if (glog_fd)
    {
      *&v41 = 0xAAAAAAAAAAAAAAAALL;
      *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v69 = v41;
      v70 = v41;
      v67 = v41;
      v68 = v41;
      v65 = v41;
      v66 = v41;
      *buf = v41;
      v64 = v41;
      memset(&v61, 0, sizeof(v61));
      v60 = 0xAAAAAAAAAAAAAAAALL;
      time(&v60);
      localtime_r(&v60, &v61);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDaemon::init CoreCaptureStart was already called\n");
    }

    goto LABEL_79;
  }

  v13 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v14 = v13;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v14 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "CCDaemon::init invalid arguments passed for non-daemon case\n", buf, 2u);
LABEL_49:
  if (glog_fd)
  {
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v69 = v36;
    v70 = v36;
    v67 = v36;
    v68 = v36;
    v65 = v36;
    v66 = v36;
    *buf = v36;
    v64 = v36;
    memset(&v61, 0, sizeof(v61));
    v60 = 0xAAAAAAAAAAAAAAAALL;
    time(&v60);
    localtime_r(&v60, &v61);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v61);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDaemon::init invalid arguments passed for non-daemon case\n");
  }

LABEL_79:
  result = 0;
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void CCDaemon::enablePowerNotification(CCDaemon *this)
{
  v22 = *MEMORY[0x277D85DE8];
  gPMConnectRootPort = 0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  v2 = IORegisterForSystemPower(0, this + 27, CCDaemon::sysPowerNotificationCallback, this + 56);
  *(this + 53) = v2;
  if (v2)
  {
    v3 = *(this + 27);
    if (v3)
    {
      if (*(this + 56))
      {
        if (*(this + 40))
        {
          v4 = *(this + 40);
        }

        else
        {
          v4 = MEMORY[0x277D85CD0];
        }

        gPMConnectRootPort = v2;
        IONotificationPortSetDispatchQueue(v3, v4);
        v5 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v6 = v5;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v6 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v6, OS_LOG_TYPE_DEFAULT, "CCDaemon power notification enabled\n", buf, 2u);
LABEL_19:
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
          dprintf(glog_fd, "CCDaemon power notification enabled\n");
        }

        goto LABEL_21;
      }
    }
  }

  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCDaemon IORegisterForSystemPower failed\n", buf, 2u);
LABEL_14:
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
    dprintf(glog_fd, "CCDaemon IORegisterForSystemPower failed\n");
  }

LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
}

void CCDaemon::sysPowerNotificationCallback(CCDaemon *this, void *a2, int a3, intptr_t a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a3 > -536870273)
  {
    if (a3 != -536870272)
    {
      if (a3 == -536870256 || a3 == -536870144)
      {
        Instance = CCDaemon::getInstance(this);
        CCPipeMonitor::resumeAllTapsFromQuiesced(*(Instance + 16));
        v8 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          *buf = 67109120;
          *&buf[4] = a3;
          v9 = v8;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          *buf = 67109120;
          *&buf[4] = a3;
          v9 = MEMORY[0x277D86220];
        }

        _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "CCDaemon received system wake or will not sleep (0x%x), all cctap resumed from quiesced state\n", buf, 8u);
LABEL_22:
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
          *buf = v18;
          v26 = v18;
          memset(&v24, 0, sizeof(v24));
          v23 = 0xAAAAAAAAAAAAAAAALL;
          time(&v23);
          localtime_r(&v23, &v24);
          strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
          dprintf(glog_fd, "%s ", buf);
          dprintf(glog_fd, "CCDaemon received system wake or will not sleep (0x%x), all cctap resumed from quiesced state\n");
        }

        goto LABEL_40;
      }

LABEL_16:
      v16 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        *buf = 67109120;
        *&buf[4] = a3;
        v17 = v16;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        *buf = 67109120;
        *&buf[4] = a3;
        v17 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "CCDaemon received power notification (0x%x) \n", buf, 8u);
LABEL_38:
      if (glog_fd)
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31 = v21;
        v32 = v21;
        v29 = v21;
        v30 = v21;
        v27 = v21;
        v28 = v21;
        *buf = v21;
        v26 = v21;
        memset(&v24, 0, sizeof(v24));
        v23 = 0xAAAAAAAAAAAAAAAALL;
        time(&v23);
        localtime_r(&v23, &v24);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCDaemon received power notification (0x%x) \n");
      }

      goto LABEL_40;
    }

LABEL_10:
    v10 = CCDaemon::getInstance(this);
    CCPipeMonitor::quiesceAllTaps(*(v10 + 16));
    v11 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a3;
        v12 = v11;
LABEL_26:
        _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCDaemon received system sleep notification (0x%x), all cctap quiesced\n", buf, 8u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      v12 = MEMORY[0x277D86220];
      goto LABEL_26;
    }

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
      *buf = v19;
      v26 = v19;
      memset(&v24, 0, sizeof(v24));
      v23 = 0xAAAAAAAAAAAAAAAALL;
      time(&v23);
      localtime_r(&v23, &v24);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDaemon received system sleep notification (0x%x), all cctap quiesced\n", a3);
    }

    IOAllowPowerChange(gPMConnectRootPort, a4);
    goto LABEL_40;
  }

  if (a3 != -536870315)
  {
    if (a3 != -536870288)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v13 = CCDaemon::getInstance(this);
  CCPipeMonitor::quiesceAllTaps(*(v13 + 16));
  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "CCDaemon received system shutdown notification, all cctap quiesced\n", buf, 2u);
LABEL_33:
  if (glog_fd)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31 = v20;
    v32 = v20;
    v29 = v20;
    v30 = v20;
    v27 = v20;
    v28 = v20;
    *buf = v20;
    v26 = v20;
    memset(&v24, 0, sizeof(v24));
    v23 = 0xAAAAAAAAAAAAAAAALL;
    time(&v23);
    localtime_r(&v23, &v24);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v24);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDaemon received system shutdown notification, all cctap quiesced\n");
  }

LABEL_40:
  v22 = *MEMORY[0x277D85DE8];
}

void CoreCaptureStop(CCDaemon *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(CCDaemon::initialized, memory_order_acquire))
  {
    Instance = CCDaemon::getInstance(a1);
    if (atomic_load_explicit(Instance + 304, memory_order_acquire))
    {
      v2 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v3 = v2;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v3 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v3, OS_LOG_TYPE_ERROR, "CoreCaptureStop called when isShutdownPending true, ignoring", buf, 2u);
LABEL_20:
      if (glog_fd)
      {
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v36 = v14;
        v37 = v14;
        v34 = v14;
        v35 = v14;
        v32 = v14;
        v33 = v14;
        *buf = v14;
        v31 = v14;
        memset(&v29, 0, sizeof(v29));
        v28 = 0xAAAAAAAAAAAAAAAALL;
        time(&v28);
        localtime_r(&v28, &v29);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CoreCaptureStop called when isShutdownPending true, ignoring");
      }

      goto LABEL_54;
    }

    v6 = CCDaemon::getInstance(Instance);
    v7 = coreCaptureOsLog;
    if (CCDaemon::fIsCCDaemon)
    {
      if (coreCaptureOsLog)
      {
        v8 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          *buf = 0;
          v9 = v7;
LABEL_24:
          _os_log_impl(&dword_2452A3000, v9, OS_LOG_TYPE_DEFAULT, "CCDaemon will calling shutdown()\n", buf, 2u);
        }
      }

      else
      {
        v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          *buf = 0;
          v9 = MEMORY[0x277D86220];
          goto LABEL_24;
        }
      }

      if (glog_fd)
      {
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v36 = v15;
        v37 = v15;
        v34 = v15;
        v35 = v15;
        v32 = v15;
        v33 = v15;
        *buf = v15;
        v31 = v15;
        memset(&v29, 0, sizeof(v29));
        v28 = 0xAAAAAAAAAAAAAAAALL;
        time(&v28);
        localtime_r(&v28, &v29);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
        dprintf(glog_fd, "%s ", buf);
        v8 = dprintf(glog_fd, "CCDaemon will calling shutdown()\n");
      }

      CCDaemon::shutdown(v8);
      goto LABEL_46;
    }

    v11 = v6;
    if (coreCaptureOsLog)
    {
      v12 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v13 = v7;
    }

    else
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v13 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "CoreCaptureStop non daemon stopping, calling quiesceAllTaps()\n", buf, 2u);
LABEL_31:
    if (glog_fd)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36 = v16;
      v37 = v16;
      v34 = v16;
      v35 = v16;
      v32 = v16;
      v33 = v16;
      *buf = v16;
      v31 = v16;
      memset(&v29, 0, sizeof(v29));
      v28 = 0xAAAAAAAAAAAAAAAALL;
      time(&v28);
      localtime_r(&v28, &v29);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
      dprintf(glog_fd, "%s ", buf);
      v12 = dprintf(glog_fd, "CoreCaptureStop non daemon stopping, calling quiesceAllTaps()\n");
    }

    v17 = CCDaemon::getInstance(v12);
    CCPipeMonitor::quiesceAllTaps(*(v17 + 16));
    v18 = 0;
    atomic_compare_exchange_strong(v11 + 304, &v18, 1u);
    v19 = coreCaptureOsLog;
    if (!v18)
    {
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = v19;
LABEL_42:
          _os_log_impl(&dword_2452A3000, v20, OS_LOG_TYPE_DEFAULT, "CoreCaptureStop non daemon cleanup, calling ccfree\n", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = MEMORY[0x277D86220];
        goto LABEL_42;
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
        v31 = v22;
        memset(&v29, 0, sizeof(v29));
        v28 = 0xAAAAAAAAAAAAAAAALL;
        time(&v28);
        localtime_r(&v28, &v29);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CoreCaptureStop non daemon cleanup, calling ccfree\n");
      }

      (*(*v11 + 24))(v11);
LABEL_46:
      v23 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v24 = v23;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        *buf = 0;
        v24 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v24, OS_LOG_TYPE_DEFAULT, "CoreCaptureStop complete\n", buf, 2u);
LABEL_52:
      if (glog_fd)
      {
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v36 = v25;
        v37 = v25;
        v34 = v25;
        v35 = v25;
        v32 = v25;
        v33 = v25;
        *buf = v25;
        v31 = v25;
        memset(&v29, 0, sizeof(v29));
        v28 = 0xAAAAAAAAAAAAAAAALL;
        time(&v28);
        localtime_r(&v28, &v29);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CoreCaptureStop complete\n");
      }

      goto LABEL_54;
    }

    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v21 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v21 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "CoreCaptureStop setShutdownAlreadyTrue, exiting without doing anything", buf, 2u);
LABEL_56:
    if (glog_fd)
    {
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36 = v27;
      v37 = v27;
      v34 = v27;
      v35 = v27;
      v32 = v27;
      v33 = v27;
      *buf = v27;
      v31 = v27;
      memset(&v29, 0, sizeof(v29));
      v28 = 0xAAAAAAAAAAAAAAAALL;
      time(&v28);
      localtime_r(&v28, &v29);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CoreCaptureStop setShutdownAlreadyTrue, exiting without doing anything");
    }

    goto LABEL_54;
  }

  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "CoreCaptureStop called when no CCDaemon running, CCDaemon::isInitialized() returned false, ignoring", buf, 2u);
LABEL_14:
  if (glog_fd)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v10;
    v37 = v10;
    v34 = v10;
    v35 = v10;
    v32 = v10;
    v33 = v10;
    *buf = v10;
    v31 = v10;
    memset(&v29, 0, sizeof(v29));
    v28 = 0xAAAAAAAAAAAAAAAALL;
    time(&v28);
    localtime_r(&v28, &v29);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v29);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CoreCaptureStop called when no CCDaemon running, CCDaemon::isInitialized() returned false, ignoring");
  }

LABEL_54:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_2452ADA84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = (*(*v19 + 16))(v19);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_2452A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CoreCaptureStop failed with exception: %s", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2452AD820);
  }

  _Unwind_Resume(a1);
}

uint64_t CCDaemon::setCaptureIdAndReason(uint64_t a1, uint64_t a2, const char *a3)
{
  pthread_mutex_lock((a1 + 232));
  if (*a2 != *(a1 + 56) || *(a2 + 8) != *(a1 + 64))
  {
    strlcpy((a1 + 72), a3, 0x80uLL);
    *(a1 + 56) = *a2;
  }

  return pthread_mutex_unlock((a1 + 232));
}

void CCDaemon::sendProfileChangeNotification(CCDaemon *this, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
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

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDaemon::sendProfileChangeNotification profile change notification received\n", buf, 2u);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v6;
    v18 = v6;
    v15 = v6;
    v16 = v6;
    v13 = v6;
    v14 = v6;
    *buf = v6;
    v12 = v6;
    memset(&v10, 0, sizeof(v10));
    v9 = 0xAAAAAAAAAAAAAAAALL;
    time(&v9);
    localtime_r(&v9, &v10);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v10);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDaemon::sendProfileChangeNotification profile change notification received\n");
  }

  v7 = *(this + 3);
  if (v7)
  {
    CCProfileMonitor::sendProfileChangeNotification(v7, a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t CCCrashTracerFormatter::initWithRegistryEntry(CCCrashTracerFormatter *this, io_object_t object)
{
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

uint64_t CCCrashTracerFormatter::writeLog(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  if (a3)
  {
    v10 = a4;
    if ((a4 & 0xFFFFFFF8) != 0)
    {
      v9 = 0;
      do
      {
        v11 = a3[1];
        v12 = a3 + 2;
        if (*a3 <= 1u)
        {
          v9 += (*(*a1 + 112))(a1, a3 + 2, a3[1]);
        }

        v10 = v10 - v11 - 8;
        a3 = (v12 + v11);
      }

      while ((v10 & 0xFFFFFFF8) != 0);
    }
  }

  if (a5)
  {
    v9 += (*(*a1 + 112))(a1, a5, a6);
  }

  return v9;
}

uint64_t CCDataFile::openCaptureFile(uint64_t a1, const char *a2, char *cStr, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = "debug_data";
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 88) = 0;
  }

  *(a1 + 88) = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
  v11 = (*(*a1 + 144))(a1, v9, a4, a5);
  mkdirRecursive(v11);
  CFStringAppendCString(v11, "/", 0);
  CFStringAppendCString(v11, cStr, 0);
  Length = CFStringGetLength(v11);
  v13 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v14 = CFStringGetLength(v11);
  CFStringGetCString(v11, v13, v14 + 1, 0);
  v15 = isSeedAndiOS();
  if (v15)
  {
    if (!deviceUnlockedSinceBoot(v15, v16))
    {
      *(a1 + 36) = -1;
      goto LABEL_14;
    }

    v17 = open_dprotected_np(v13, 514, 3, 0, 420);
  }

  else
  {
    v17 = creat(v13, 0x1A4u);
  }

  *(a1 + 36) = v17;
  if (v17 != -1)
  {
    v18 = 1;
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v13);
    goto LABEL_22;
  }

LABEL_14:
  v19 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    v20 = v19;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    v20 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v20, OS_LOG_TYPE_ERROR, "CCDataFile::open Failed to create %s\n", buf, 0xCu);
LABEL_18:
  if (glog_fd)
  {
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v21;
    v33 = v21;
    v30 = v21;
    v31 = v21;
    v28 = v21;
    v29 = v21;
    *buf = v21;
    v27 = v21;
    memset(&v25, 0, sizeof(v25));
    v24 = 0xAAAAAAAAAAAAAAAALL;
    time(&v24);
    localtime_r(&v24, &v25);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v25);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDataFile::open Failed to create %s\n", v13);
  }

  v18 = 0;
  if (v13)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v11)
  {
    CFRelease(v11);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

__CFString *CCDataFile::generateFileName(CCDataFile *this, const char *a2)
{
  if (CFStringGetLength(*(this + 12)) && (v4 = CFStringGetLength(*(this + 12)), (v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL)) != 0))
  {
    v6 = v5;
    v7 = *(this + 12);
    Length = CFStringGetLength(v7);
    CFStringGetCString(v7, v6, Length + 1, 0);
    SaveLocation = getSaveLocation(v6);
    free(v6);
  }

  else
  {
    SaveLocation = getSaveLocation(0);
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 512);
  CFStringAppendCString(Mutable, SaveLocation, 0);
  ++*(this + 8);
  CFStringAppendCString(Mutable, "/", 0);
  CFStringAppend(Mutable, *(this + 9));
  CFStringAppendCString(Mutable, "/", 0);
  CFStringAppend(Mutable, *(this + 10));
  CFStringAppendCString(Mutable, "/", 0);
  CFStringAppendCString(Mutable, a2, 0);
  v12 = *(this + 11);
  if (v12)
  {
    CFRelease(v12);
    *(this + 11) = 0;
  }

  *(this + 11) = CFStringCreateWithCString(v10, a2, 0);
  return Mutable;
}

uint64_t CCDataFile::closeFile(CCDataFile *this)
{
  CCDataFile::sendTelemetry(this);
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
    *(this + 11) = 0;
  }

  close(*(this + 9));
  *(this + 9) = -1;
  return 1;
}

void CCDataFile::sendTelemetry(CCDataFile *this)
{
  v25 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x2822170A8])
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZN10CCDataFile13sendTelemetryEv_block_invoke;
    v15 = &__block_descriptor_tmp_161;
    v16 = this;
    v2 = analytics_send_event_lazy();
    goto LABEL_12;
  }

  v3 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = v3;
LABEL_8:
      _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "CCDataFile::sendTelemetry analytics_send_event_lazy weak link import failed", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

  if (glog_fd)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v5;
    v24 = v5;
    v21 = v5;
    v22 = v5;
    v19 = v5;
    v20 = v5;
    *buf = v5;
    v18 = v5;
    memset(&v11, 0, sizeof(v11));
    v10 = 0xAAAAAAAAAAAAAAAALL;
    time(&v10);
    localtime_r(&v10, &v11);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDataFile::sendTelemetry analytics_send_event_lazy weak link import failed");
  }

  v2 = 0;
LABEL_12:
  v6 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 67109120;
    *&buf[4] = v2;
    v7 = v6;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 67109120;
    *&buf[4] = v2;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCDataFile::sendTelemetry returned %d", buf, 8u);
LABEL_18:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v8;
    v24 = v8;
    v21 = v8;
    v22 = v8;
    v19 = v8;
    v20 = v8;
    *buf = v8;
    v18 = v8;
    memset(&v11, 0, sizeof(v11));
    v10 = 0xAAAAAAAAAAAAAAAALL;
    time(&v10);
    localtime_r(&v10, &v11);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDataFile::sendTelemetry returned %d", v2);
  }

  *(this + 16) = 0;
  *(this + 30) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

xpc_object_t ___ZN10CCDataFile13sendTelemetryEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  CCFile::populateCommonTelemetryDictionary(v1, v2);
  v3 = *(v1 + 16);
  if ((v3 & 0x8000000000000000) == 0)
  {
    xpc_dictionary_set_uint64(v2, "LogFileSize", v3);
  }

  return v2;
}

uint64_t CCDataFile::openFile(CCDataFile *this, const char *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = (*(*this + 136))(this, a2);
  mkdirRecursive(v3);
  Length = CFStringGetLength(v3);
  v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v6 = CFStringGetLength(v3);
  CFStringGetCString(v3, v5, v6 + 1, 0);
  v7 = isSeedAndiOS();
  if (v7)
  {
    if (!deviceUnlockedSinceBoot(v7, v8))
    {
      *(this + 9) = -1;
      goto LABEL_9;
    }

    v9 = open_dprotected_np(v5, 514, 3, 0, 420);
  }

  else
  {
    v9 = creat(v5, 0x1A4u);
  }

  *(this + 9) = v9;
  if (v9 != -1)
  {
    v10 = 1;
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_16:
    CFRelease(v3);
    goto LABEL_17;
  }

LABEL_9:
  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    v12 = v11;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    v12 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v12, OS_LOG_TYPE_ERROR, "CCDataFile::open Failed to create %s\n", buf, 0xCu);
LABEL_13:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v13;
    v25 = v13;
    v22 = v13;
    v23 = v13;
    v20 = v13;
    v21 = v13;
    *buf = v13;
    v19 = v13;
    memset(&v17, 0, sizeof(v17));
    v16 = 0xAAAAAAAAAAAAAAAALL;
    time(&v16);
    localtime_r(&v16, &v17);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v17);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDataFile::open Failed to create %s\n", v5);
  }

  v10 = 0;
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v5)
  {
    free(v5);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t CCDataFile::ccfree(CCDataFile *this)
{
  result = CCFile::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCDataFile::resetTelemetryParameters(uint64_t this)
{
  *(this + 128) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t CCOSSerializeWithIOReporterFormatter::initWithRegistryEntry(CCOSSerializeWithIOReporterFormatter *this, io_object_t object)
{
  *(this + 8) = object;
  IOObjectRetain(object);
  *(this + 3) = object;
  return 1;
}

CFIndex CCOSSerializeWithIOReporterFormatter::writeLog(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v12 = malloc_type_malloc(a6 + a4, 0x100004077774924uLL);
    memcpy(v12, a3, a4);
    memcpy(&v12[a4], a5, a6);
    a3 = v12;
  }

  else
  {
    v12 = 0;
  }

  errorString = 0xAAAAAAAAAAAAAAAALL;
  v13 = IOCFUnserialize(a3, *MEMORY[0x277CBECE8], 0, &errorString);
  if (!v13)
  {
    v17 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(errorString, 0);
        *buf = 136315138;
        *&buf[4] = CStringPtr;
        v19 = v17;
LABEL_50:
        _os_log_error_impl(&dword_2452A3000, v19, OS_LOG_TYPE_ERROR, "Error: %s", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v39 = CFStringGetCStringPtr(errorString, 0);
      *buf = 136315138;
      *&buf[4] = v39;
      v19 = MEMORY[0x277D86220];
      goto LABEL_50;
    }

    if (glog_fd)
    {
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v48 = v22;
      v49 = v22;
      v46 = v22;
      v47 = v22;
      v44 = v22;
      v45 = v22;
      *buf = v22;
      *&buf[16] = v22;
      memset(&v41, 0, sizeof(v41));
      v40 = 0xAAAAAAAAAAAAAAAALL;
      time(&v40);
      localtime_r(&v40, &v41);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", buf);
      v23 = glog_fd;
      v24 = CFStringGetCStringPtr(errorString, 0);
      dprintf(v23, "Error: %s", v24);
    }

    Data = 0;
    goto LABEL_33;
  }

  v14 = CCOSSerializeWithIOReporterFormatter::processAllDictionarieswithinIncommingArray(a1, v13, a2);
  v15 = CFGetTypeID(v14);
  if (v15 == CFArrayGetTypeID())
  {
    Data = CFPropertyListCreateData(0, v14, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (!v14)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v20 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v21 = v20;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v21 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::writeLog unsupported root type for JSON Serialization", buf, 2u);
LABEL_19:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48 = v25;
    v49 = v25;
    v46 = v25;
    v47 = v25;
    v44 = v25;
    v45 = v25;
    *buf = v25;
    *&buf[16] = v25;
    memset(&v41, 0, sizeof(v41));
    v40 = 0xAAAAAAAAAAAAAAAALL;
    time(&v40);
    localtime_r(&v40, &v41);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::writeLog unsupported root type for JSON Serialization");
  }

  Data = 0;
  if (v14)
  {
LABEL_22:
    CFRelease(v14);
  }

LABEL_23:
  if (!Data || (BytePtr = CFDataGetBytePtr(Data)) == 0)
  {
    v31 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v32 = v31;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v32 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v32, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::writeLog CFDataGetBytePtr() failed", buf, 2u);
LABEL_31:
    if (glog_fd)
    {
      *&v33 = 0xAAAAAAAAAAAAAAAALL;
      *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v48 = v33;
      v49 = v33;
      v46 = v33;
      v47 = v33;
      v44 = v33;
      v45 = v33;
      *buf = v33;
      *&buf[16] = v33;
      memset(&v41, 0, sizeof(v41));
      v40 = 0xAAAAAAAAAAAAAAAALL;
      time(&v40);
      localtime_r(&v40, &v41);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::writeLog CFDataGetBytePtr() failed");
    }

LABEL_33:
    v30 = 0;
    goto LABEL_34;
  }

  v27 = BytePtr;
  Length = CFDataGetLength(Data);
  v29 = (*(*a1 + 112))(a1, v27, Length);
  if (v29 == Length)
  {
    v30 = Length;
    goto LABEL_34;
  }

  v30 = v29;
  v36 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 134218240;
    *&buf[4] = Length;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    v37 = v36;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 134218240;
    *&buf[4] = Length;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    v37 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v37, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", buf, 0x16u);
LABEL_45:
  if (glog_fd)
  {
    *&v38 = 0xAAAAAAAAAAAAAAAALL;
    *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48 = v38;
    v49 = v38;
    v46 = v38;
    v47 = v38;
    v44 = v38;
    v45 = v38;
    *buf = v38;
    *&buf[16] = v38;
    memset(&v41, 0, sizeof(v41));
    v40 = 0xAAAAAAAAAAAAAAAALL;
    time(&v40);
    localtime_r(&v40, &v41);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v41);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::writeLog Failed to write(1) dsize=%lu, tempLength=%lu\n", Length, v30);
  }

LABEL_34:
  if (v12)
  {
    free(v12);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

__CFArray *CCOSSerializeWithIOReporterFormatter::processAllDictionarieswithinIncommingArray(int a1, const __CFArray *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  for (i = 0; i < CFArrayGetCount(a2); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
    if (!ValueAtIndex || (v9 = ValueAtIndex, v10 = CFGetTypeID(ValueAtIndex), v10 != CFDictionaryGetTypeID()))
    {
      v12 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = i;
          v13 = v12;
          goto LABEL_16;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = i;
        v13 = MEMORY[0x277D86220];
LABEL_16:
        _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::processAllDictionarieswithinIncommingArray  didnt find or wrong type in array at i %ld\n", buf, 0xCu);
      }

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
        *buf = v14;
        v20 = v14;
        memset(&v18, 0, sizeof(v18));
        v17 = 0xAAAAAAAAAAAAAAAALL;
        time(&v17);
        localtime_r(&v17, &v18);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::processAllDictionarieswithinIncommingArray  didnt find or wrong type in array at i %ld\n", i);
      }

      break;
    }

    DictionaryWithProcessedIOReporter = CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter(a1, v9, a3);
    CFArrayAppendValue(Mutable, DictionaryWithProcessedIOReporter);
    if (DictionaryWithProcessedIOReporter)
    {
      CFRelease(DictionaryWithProcessedIOReporter);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return Mutable;
}

__CFDictionary *CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  if (MutableCopy)
  {
    v6 = CFDictionaryContainsKey(theDict, @"CCIOReportInterests");
    if (v6 == CFDictionaryContainsKey(theDict, @"CCIOReportRdata"))
    {
      Value = CFDictionaryGetValue(theDict, @"CCIOReportRdata");
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        TypeID = CFDataGetTypeID();
        if (v9 != TypeID)
        {
          v8 = 0;
        }

        v11 = CFDictionaryGetValue(theDict, @"CCIOReportInterests");
        if (!v11)
        {
          if (v9 != TypeID)
          {
            goto LABEL_48;
          }

          goto LABEL_33;
        }

        v12 = v11;
      }

      else
      {
        v18 = CFDictionaryGetValue(theDict, @"CCIOReportInterests");
        if (!v18)
        {
          goto LABEL_48;
        }

        v12 = v18;
        v8 = 0;
      }

      v19 = CFGetTypeID(v12);
      v20 = CFArrayGetTypeID();
      if (v19 == v20)
      {
        v21 = v12;
      }

      else
      {
        v21 = 0;
      }

      if (v8 && v19 == v20)
      {
        err = 0;
        Aggregate = IOReportCreateAggregate();
        if (Aggregate)
        {
          v23 = Aggregate;
          if (CCOSSerializeWithIOReporterFormatter::convertInterestsArrayToIOReportLegend(Aggregate, Aggregate, v21))
          {
            goto LABEL_26;
          }

          SamplesRaw = IOReportCreateSamplesRaw();
          v24 = SamplesRaw;
          if (SamplesRaw && CFDictionaryGetCount(SamplesRaw))
          {
LABEL_59:
            if (a3)
            {
              v39 = *(a3 + 28) & 0xFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = 0;
            }

            addSystemInformationToDict(v24, v39);
            if (v24)
            {
              CFDictionarySetValue(MutableCopy, @"IOReporter", v24);
              CFRelease(v23);
              goto LABEL_64;
            }

LABEL_26:
            v24 = v23;
LABEL_64:
            CFRelease(v24);
            CFDictionaryRemoveValue(MutableCopy, @"CCIOReportRkey");
            CFDictionaryRemoveValue(MutableCopy, @"CCIOReportRdata");
            CFDictionaryRemoveValue(MutableCopy, @"CCIOReportInterests");
            goto LABEL_48;
          }

          v59 = xmmword_2452E9D60;
          v60 = unk_2452E9D70;
          v61 = xmmword_2452E9D80;
          v62 = unk_2452E9D90;
          v55 = xmmword_2452E9D20;
          v56 = unk_2452E9D30;
          v57 = xmmword_2452E9D40;
          v58 = unk_2452E9D50;
          v51 = xmmword_2452E9CE0;
          v52 = unk_2452E9CF0;
          v53 = xmmword_2452E9D00;
          v54 = unk_2452E9D10;
          *buffer = *"<unknown>";
          memset(&buffer[16], 0, 32);
          v50 = unk_2452E9CD0;
          v36 = coreCaptureOsLog;
          if (coreCaptureOsLog)
          {
            if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *v44 = 136315138;
            *&v44[4] = buffer;
            v37 = v36;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *v44 = 136315138;
            *&v44[4] = buffer;
            v37 = MEMORY[0x277D86220];
          }

          _os_log_error_impl(&dword_2452A3000, v37, OS_LOG_TYPE_ERROR, "IOReportCreateSamplesRaw() returned 0 sized dictionary %s", v44, 0xCu);
LABEL_57:
          if (glog_fd)
          {
            *&v38 = 0xAAAAAAAAAAAAAAAALL;
            *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v47 = v38;
            v48 = v38;
            v45 = v38;
            v46 = v38;
            *&v44[32] = v38;
            *&v44[48] = v38;
            *v44 = v38;
            *&v44[16] = v38;
            memset(&v42, 0, sizeof(v42));
            v41 = 0xAAAAAAAAAAAAAAAALL;
            time(&v41);
            localtime_r(&v41, &v42);
            strftime(v44, 0x80uLL, "%b %d %H:%M:%S", &v42);
            dprintf(glog_fd, "%s ", v44);
            dprintf(glog_fd, "IOReportCreateSamplesRaw() returned 0 sized dictionary %s", buffer);
          }

          goto LABEL_59;
        }

        v29 = coreCaptureOsLog;
        if (coreCaptureOsLog)
        {
          if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *buffer = 136315394;
          *&buffer[4] = "createDictionaryWithProcessedIOReporter";
          *&buffer[12] = 1024;
          *&buffer[14] = 116;
          v30 = v29;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *buffer = 136315394;
          *&buffer[4] = "createDictionaryWithProcessedIOReporter";
          *&buffer[12] = 1024;
          *&buffer[14] = 116;
          v30 = MEMORY[0x277D86220];
        }

        _os_log_error_impl(&dword_2452A3000, v30, OS_LOG_TYPE_ERROR, "%s@%d: bail - !legend\n", buffer, 0x12u);
LABEL_46:
        if (glog_fd)
        {
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v53 = v33;
          v54 = v33;
          v51 = v33;
          v52 = v33;
          *&buffer[32] = v33;
          v50 = v33;
          *buffer = v33;
          *&buffer[16] = v33;
          memset(v44, 0, 56);
          *&v42.tm_sec = 0xAAAAAAAAAAAAAAAALL;
          time(&v42.tm_sec);
          localtime_r(&v42.tm_sec, v44);
          strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v44);
          dprintf(glog_fd, "%s ", buffer);
          dprintf(glog_fd, "%s@%d: bail - !legend\n");
        }

        goto LABEL_48;
      }

      if ((v8 != 0) == (v19 == v20))
      {
        goto LABEL_48;
      }

LABEL_33:
      v27 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *buffer = 0;
        v28 = v27;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *buffer = 0;
        v28 = MEMORY[0x277D86220];
      }

      _os_log_error_impl(&dword_2452A3000, v28, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter  rawData or interests not available\n", buffer, 2u);
LABEL_40:
      if (glog_fd)
      {
        *&v31 = 0xAAAAAAAAAAAAAAAALL;
        *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v53 = v31;
        v54 = v31;
        v51 = v31;
        v52 = v31;
        *&buffer[32] = v31;
        v50 = v31;
        *buffer = v31;
        *&buffer[16] = v31;
        memset(v44, 0, 56);
        *&v42.tm_sec = 0xAAAAAAAAAAAAAAAALL;
        time(&v42.tm_sec);
        localtime_r(&v42.tm_sec, v44);
        strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v44);
        dprintf(glog_fd, "%s ", buffer);
        dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter  rawData or interests not available\n");
      }

      goto LABEL_48;
    }

    v15 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buffer = 136315906;
      *&buffer[4] = "CCIOReportInterests";
      *&buffer[12] = 1024;
      *&buffer[14] = CFDictionaryContainsKey(theDict, @"CCIOReportInterests");
      *&buffer[18] = 2080;
      *&buffer[20] = "CCIOReportRdata";
      *&buffer[28] = 1024;
      *&buffer[30] = CFDictionaryContainsKey(theDict, @"CCIOReportRdata");
      v16 = v15;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buffer = 136315906;
      *&buffer[4] = "CCIOReportInterests";
      *&buffer[12] = 1024;
      *&buffer[14] = CFDictionaryContainsKey(theDict, @"CCIOReportInterests");
      *&buffer[18] = 2080;
      *&buffer[20] = "CCIOReportRdata";
      *&buffer[28] = 1024;
      *&buffer[30] = CFDictionaryContainsKey(theDict, @"CCIOReportRdata");
      v16 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v16, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter  contains %s %d contains %s %d\n", buffer, 0x22u);
LABEL_28:
    if (glog_fd)
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v53 = v25;
      v54 = v25;
      v51 = v25;
      v52 = v25;
      *&buffer[32] = v25;
      v50 = v25;
      *buffer = v25;
      *&buffer[16] = v25;
      memset(v44, 0, 56);
      *&v42.tm_sec = 0xAAAAAAAAAAAAAAAALL;
      time(&v42.tm_sec);
      localtime_r(&v42.tm_sec, v44);
      strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v44);
      dprintf(glog_fd, "%s ", buffer);
      v26 = glog_fd;
      CFDictionaryContainsKey(theDict, @"CCIOReportInterests");
      CFDictionaryContainsKey(theDict, @"CCIOReportRdata");
      dprintf(v26, "CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter  contains %s %d contains %s %d\n");
    }

    goto LABEL_48;
  }

  v13 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buffer = 0;
    v14 = v13;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buffer = 0;
    v14 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v14, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter  failed to duplicate dictionary\n", buffer, 2u);
LABEL_15:
  if (glog_fd)
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53 = v17;
    v54 = v17;
    v51 = v17;
    v52 = v17;
    *&buffer[32] = v17;
    v50 = v17;
    *buffer = v17;
    *&buffer[16] = v17;
    memset(v44, 0, 56);
    *&v42.tm_sec = 0xAAAAAAAAAAAAAAAALL;
    time(&v42.tm_sec);
    localtime_r(&v42.tm_sec, v44);
    strftime(buffer, 0x80uLL, "%b %d %H:%M:%S", v44);
    dprintf(glog_fd, "%s ", buffer);
    dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::createDictionaryWithProcessedIOReporter  failed to duplicate dictionary\n", v40);
  }

LABEL_48:
  v34 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

uint64_t CCOSSerializeWithIOReporterFormatter::convertInterestsArrayToIOReportLegend(CCOSSerializeWithIOReporterFormatter *this, __CFDictionary *a2, CFArrayRef theArray)
{
  v5 = 0;
  v30 = *MEMORY[0x277D85DE8];
  while (1)
  {
    if (CFArrayGetCount(theArray) <= v5)
    {
      v11 = 0;
      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (!ValueAtIndex)
    {
      break;
    }

    v7 = ValueAtIndex;
    v8 = CFGetTypeID(ValueAtIndex);
    TypeID = CFDictionaryGetTypeID();
    if (v8 != TypeID)
    {
      break;
    }

    v10 = CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup(TypeID, a2, v7);
    ++v5;
    if (v10)
    {
      v11 = v10;
      v12 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = v12;
          goto LABEL_23;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = MEMORY[0x277D86220];
LABEL_23:
        _os_log_error_impl(&dword_2452A3000, v13, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromSubscription  failed to store Channel Description\n", buf, 2u);
      }

      if (glog_fd)
      {
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v28 = v17;
        v29 = v17;
        v26 = v17;
        v27 = v17;
        v24 = v17;
        v25 = v17;
        *buf = v17;
        v23 = v17;
        memset(&v21, 0, sizeof(v21));
        v20 = 0xAAAAAAAAAAAAAAAALL;
        time(&v20);
        localtime_r(&v20, &v21);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromSubscription  failed to store Channel Description\n");
      }

      goto LABEL_19;
    }
  }

  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v15, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromSubscription  didnt find or not a dict in array\n", buf, 2u);
LABEL_14:
  v11 = 3758097136;
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
    dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromSubscription  didnt find or not a dict in array\n");
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup(CCOSSerializeWithIOReporterFormatter *this, __CFDictionary *a2, CFDictionaryRef theDict)
{
  v128 = *MEMORY[0x277D85DE8];
  v119 = 0;
  valuePtr = 0;
  v118 = 0;
  Value = CFDictionaryGetValue(theDict, @"IOReportGroupName");
  if (!Value)
  {
    v8 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportGroupName";
      v9 = v8;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportGroupName";
      v9 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v9, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_11:
    if (glog_fd)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v12;
      v127 = v12;
      v124 = v12;
      v125 = v12;
      v123 = v12;
      *&cStr[16] = v12;
      v122 = v12;
      *cStr = v12;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_16;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 == CFStringGetTypeID())
  {
    v7 = 0;
    goto LABEL_17;
  }

  v10 = coreCaptureOsLog;
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
    LOWORD(v122) = 2048;
    *(&v122 + 2) = CFGetTypeID(v5);
    v11 = v10;
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
    LOWORD(v122) = 2048;
    *(&v122 + 2) = CFGetTypeID(v5);
    v11 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v11, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is %s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_14:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v126 = v13;
    v127 = v13;
    v124 = v13;
    v125 = v13;
    v123 = v13;
    *&cStr[16] = v13;
    v122 = v13;
    *cStr = v13;
    memset(&v117, 0, sizeof(v117));
    v116 = 0xAAAAAAAAAAAAAAAALL;
    time(&v116);
    localtime_r(&v116, &v117);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
    dprintf(glog_fd, "%s ", cStr);
    v14 = glog_fd;
    CFStringGetTypeID();
    CFGetTypeID(v5);
    dprintf(v14, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is %s NULL, with type %ld, but has type %ld\n");
  }

LABEL_16:
  v7 = -536870160;
LABEL_17:
  v15 = CFDictionaryGetValue(theDict, @"IOReportSubGroupName");
  if (!v15)
  {
    v22 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportSubGroupName";
      v23 = v22;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportSubGroupName";
      v23 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v23, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_26:
    if (glog_fd)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v24;
      v127 = v24;
      v124 = v24;
      v125 = v24;
      v123 = v24;
      *&cStr[16] = v24;
      v122 = v24;
      *cStr = v24;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_31;
  }

  v16 = v15;
  v17 = CFGetTypeID(v15);
  if (v17 == CFStringGetTypeID())
  {
    goto LABEL_32;
  }

  v18 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    TypeID = CFStringGetTypeID();
    v20 = CFGetTypeID(v16);
    *cStr = 136315906;
    *&cStr[4] = "IOReportGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = TypeID;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = v20;
    v21 = v18;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v104 = CFStringGetTypeID();
    v105 = CFGetTypeID(v16);
    *cStr = 136315906;
    *&cStr[4] = "IOReportGroupName";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v104;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = v105;
    v21 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v21, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_29:
  if (glog_fd)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v126 = v25;
    v127 = v25;
    v124 = v25;
    v125 = v25;
    v123 = v25;
    *&cStr[16] = v25;
    v122 = v25;
    *cStr = v25;
    memset(&v117, 0, sizeof(v117));
    v116 = 0xAAAAAAAAAAAAAAAALL;
    time(&v116);
    localtime_r(&v116, &v117);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
    dprintf(glog_fd, "%s ", cStr);
    v26 = glog_fd;
    CFStringGetTypeID();
    CFGetTypeID(v16);
    dprintf(v26, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj is%s NULL, with type %ld, but has type %ld\n");
  }

LABEL_31:
  v7 = -536870160;
LABEL_32:
  v27 = CFDictionaryGetValue(theDict, @"DriverID");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v28, kCFNumberLongLongType, &valuePtr);
      if (valuePtr)
      {
        goto LABEL_54;
      }

      v30 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
        {
          *cStr = 0;
          v31 = v30;
LABEL_158:
          _os_log_error_impl(&dword_2452A3000, v31, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey invalid value \n", cStr, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *cStr = 0;
        v31 = MEMORY[0x277D86220];
        goto LABEL_158;
      }

      if (glog_fd)
      {
        *&v41 = 0xAAAAAAAAAAAAAAAALL;
        *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v126 = v41;
        v127 = v41;
        v124 = v41;
        v125 = v41;
        v123 = v41;
        *&cStr[16] = v41;
        v122 = v41;
        *cStr = v41;
        memset(&v117, 0, sizeof(v117));
        v116 = 0xAAAAAAAAAAAAAAAALL;
        time(&v116);
        localtime_r(&v116, &v117);
        strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
        dprintf(glog_fd, "%s ", cStr);
        dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey invalid value \n");
      }

      v7 = -536870911;
      goto LABEL_54;
    }

    v34 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v35 = CFNumberGetTypeID();
      v36 = CFGetTypeID(v28);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v35;
      *&cStr[22] = 2048;
      *&cStr[24] = v36;
      v37 = v34;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v106 = CFNumberGetTypeID();
      v107 = CFGetTypeID(v28);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v106;
      *&cStr[22] = 2048;
      *&cStr[24] = v107;
      v37 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v37, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected obj is%s NULL, with type %ld, but has type %ld\n", cStr, 0x20u);
LABEL_48:
    v7 = -536870160;
    if (glog_fd)
    {
      *&v39 = 0xAAAAAAAAAAAAAAAALL;
      *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v39;
      v127 = v39;
      v124 = v39;
      v125 = v39;
      v123 = v39;
      *&cStr[16] = v39;
      v122 = v39;
      *cStr = v39;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      v40 = glog_fd;
      CFNumberGetTypeID();
      CFGetTypeID(v28);
      dprintf(v40, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected obj is%s NULL, with type %ld, but has type %ld\n");
    }

    goto LABEL_54;
  }

  v32 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *cStr = 0;
    v33 = v32;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *cStr = 0;
    v33 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v33, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected \n", cStr, 2u);
LABEL_45:
  v7 = -536870160;
  if (glog_fd)
  {
    *&v38 = 0xAAAAAAAAAAAAAAAALL;
    *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v126 = v38;
    v127 = v38;
    v124 = v38;
    v125 = v38;
    v123 = v38;
    *&cStr[16] = v38;
    v122 = v38;
    *cStr = v38;
    memset(&v117, 0, sizeof(v117));
    v116 = 0xAAAAAAAAAAAAAAAALL;
    time(&v116);
    localtime_r(&v116, &v117);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
    dprintf(glog_fd, "%s ", cStr);
    dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverIDKey expected \n");
  }

LABEL_54:
  v42 = CFDictionaryGetValue(theDict, @"DriverName");
  if (!v42)
  {
    v45 = IORegistryEntryIDMatching(valuePtr);
    if (v45)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v45);
      if (MatchingService)
      {
        *&v47 = 0xAAAAAAAAAAAAAAAALL;
        *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v126 = v47;
        v127 = v47;
        v124 = v47;
        v125 = v47;
        v123 = v47;
        *&cStr[16] = v47;
        v122 = v47;
        *cStr = v47;
        MEMORY[0x245D67880](MatchingService, cStr);
        v43 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0);
        goto LABEL_73;
      }
    }

    v52 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *cStr = 0;
      v53 = v52;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *cStr = 0;
      v53 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v53, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected, couldn't resolve device \n", cStr, 2u);
LABEL_70:
    if (glog_fd)
    {
      *&v56 = 0xAAAAAAAAAAAAAAAALL;
      *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v56;
      v127 = v56;
      v124 = v56;
      v125 = v56;
      v123 = v56;
      *&cStr[16] = v56;
      v122 = v56;
      *cStr = v56;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected, couldn't resolve device \n");
    }

    goto LABEL_72;
  }

  v43 = v42;
  v44 = CFGetTypeID(v42);
  if (v44 != CFStringGetTypeID())
  {
    v48 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v49 = CFStringGetTypeID();
      v50 = CFGetTypeID(v43);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v49;
      *&cStr[22] = 2048;
      *&cStr[24] = v50;
      v51 = v48;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v108 = CFStringGetTypeID();
      v109 = CFGetTypeID(v43);
      *cStr = 136315650;
      *&cStr[4] = " NOT";
      *&cStr[12] = 2048;
      *&cStr[14] = v108;
      *&cStr[22] = 2048;
      *&cStr[24] = v109;
      v51 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v51, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected obj %s is NULL, with type %ld, but has type %ld\n", cStr, 0x20u);
LABEL_67:
    if (glog_fd)
    {
      *&v54 = 0xAAAAAAAAAAAAAAAALL;
      *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v54;
      v127 = v54;
      v124 = v54;
      v125 = v54;
      v123 = v54;
      *&cStr[16] = v54;
      v122 = v54;
      *cStr = v54;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      v55 = glog_fd;
      CFStringGetTypeID();
      CFGetTypeID(v43);
      dprintf(v55, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup kIOReportDriverNameKey expected obj %s is NULL, with type %ld, but has type %ld\n");
    }

LABEL_72:
    v43 = 0;
    v7 = -536870160;
    goto LABEL_73;
  }

  CFRetain(v43);
LABEL_73:
  v57 = CFDictionaryGetValue(theDict, @"IOReportChannelInfo");
  v58 = v57;
  if (!v57)
  {
    goto LABEL_81;
  }

  v59 = CFGetTypeID(v57);
  if (v59 == CFDictionaryGetTypeID())
  {
    goto LABEL_81;
  }

  v60 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v61 = CFDictionaryGetTypeID();
    v62 = CFGetTypeID(v58);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannelInfo";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v61;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = v62;
    v63 = v60;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    v110 = CFDictionaryGetTypeID();
    v111 = CFGetTypeID(v58);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannelInfo";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v110;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = v111;
    v63 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v63, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj %s is NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_79:
  if (glog_fd)
  {
    *&v64 = 0xAAAAAAAAAAAAAAAALL;
    *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v126 = v64;
    v127 = v64;
    v124 = v64;
    v125 = v64;
    v123 = v64;
    *&cStr[16] = v64;
    v122 = v64;
    *cStr = v64;
    memset(&v117, 0, sizeof(v117));
    v116 = 0xAAAAAAAAAAAAAAAALL;
    time(&v116);
    localtime_r(&v116, &v117);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
    dprintf(glog_fd, "%s ", cStr);
    v65 = glog_fd;
    v66 = CFDictionaryGetTypeID();
    v67 = CFGetTypeID(v58);
    dprintf(v65, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj %s is NULL, with type %ld, but has type %ld\n", "IOReportChannelInfo", " NOT", v66, v67);
  }

LABEL_81:
  v68 = CFDictionaryGetValue(theDict, @"IOReportChannels");
  v69 = v68;
  if (!v68)
  {
    v75 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportChannels";
      v76 = v75;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *cStr = 136315138;
      *&cStr[4] = "IOReportChannels";
      v76 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v76, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n", cStr, 0xCu);
LABEL_90:
    if (glog_fd)
    {
      *&v77 = 0xAAAAAAAAAAAAAAAALL;
      *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v77;
      v127 = v77;
      v124 = v77;
      v125 = v77;
      v123 = v77;
      *&cStr[16] = v77;
      v122 = v77;
      *cStr = v77;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected \n");
    }

    goto LABEL_95;
  }

  v70 = CFGetTypeID(v68);
  if (v70 == CFArrayGetTypeID())
  {
    goto LABEL_96;
  }

  v71 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_93;
    }

    v72 = CFArrayGetTypeID();
    v73 = CFGetTypeID(v69);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannels";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v72;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = v73;
    v74 = v71;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_93;
    }

    v112 = CFArrayGetTypeID();
    v113 = CFGetTypeID(v69);
    *cStr = 136315906;
    *&cStr[4] = "IOReportChannels";
    *&cStr[12] = 2080;
    *&cStr[14] = " NOT";
    *&cStr[22] = 2048;
    *&cStr[24] = v112;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = v113;
    v74 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v74, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj %s is NULL, with type %ld, but has type %ld\n", cStr, 0x2Au);
LABEL_93:
  if (glog_fd)
  {
    *&v78 = 0xAAAAAAAAAAAAAAAALL;
    *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v126 = v78;
    v127 = v78;
    v124 = v78;
    v125 = v78;
    v123 = v78;
    *&cStr[16] = v78;
    v122 = v78;
    *cStr = v78;
    memset(&v117, 0, sizeof(v117));
    v116 = 0xAAAAAAAAAAAAAAAALL;
    time(&v116);
    localtime_r(&v116, &v117);
    strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
    dprintf(glog_fd, "%s ", cStr);
    v79 = glog_fd;
    CFArrayGetTypeID();
    CFGetTypeID(v69);
    dprintf(v79, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup %s expected obj %s is NULL, with type %ld, but has type %ld\n");
  }

LABEL_95:
  v7 = -536870160;
LABEL_96:
  v80 = 0;
  v114 = v7;
  if (v7)
  {
    v81 = 0;
  }

  else
  {
    v81 = a2 != 0;
  }

  while (CFArrayGetCount(v69) > v80)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v69, v80);
    if (!ValueAtIndex)
    {
      break;
    }

    v83 = ValueAtIndex;
    v84 = CFGetTypeID(ValueAtIndex);
    if (v84 != CFArrayGetTypeID() || CFArrayGetCount(v83) < 2)
    {
      break;
    }

    v85 = CFArrayGetValueAtIndex(v83, 0);
    if (v85)
    {
      v86 = v85;
      v87 = CFGetTypeID(v85);
      if (v87 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v86, kCFNumberSInt64Type, &v119);
      }
    }

    v88 = CFArrayGetValueAtIndex(v83, 1);
    if (v88)
    {
      v89 = v88;
      v90 = CFGetTypeID(v88);
      if (v90 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v89, kCFNumberSInt64Type, &v118);
      }
    }

    v91 = CFArrayGetValueAtIndex(v83, 2);
    if (v91)
    {
      v92 = v91;
      v93 = CFGetTypeID(v91);
      if (v93 == CFStringGetTypeID())
      {
        v94 = v92;
      }

      else
      {
        v94 = 0;
      }
    }

    else
    {
      v94 = 0;
    }

    v96 = v119;
    v95 = valuePtr;
    if (valuePtr)
    {
      v97 = v81;
    }

    else
    {
      v97 = 0;
    }

    v98 = v118;
    if (v94 && v97 && v43 && v119 && v118)
    {
      IOReportAddChannelDescription();
      goto LABEL_129;
    }

    v99 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_127;
      }

      *cStr = 67110400;
      *&cStr[4] = a2 != 0;
      *&cStr[8] = 1024;
      *&cStr[10] = v95 != 0;
      *&cStr[14] = 1024;
      *&cStr[16] = v43 != 0;
      *&cStr[20] = 1024;
      *&cStr[22] = v96 != 0;
      *&cStr[26] = 1024;
      *&cStr[28] = v98 != 0;
      LOWORD(v122) = 1024;
      *(&v122 + 2) = v94 != 0;
      v100 = v99;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_127;
      }

      *cStr = 67110400;
      *&cStr[4] = a2 != 0;
      *&cStr[8] = 1024;
      *&cStr[10] = v95 != 0;
      *&cStr[14] = 1024;
      *&cStr[16] = v43 != 0;
      *&cStr[20] = 1024;
      *&cStr[22] = v96 != 0;
      *&cStr[26] = 1024;
      *&cStr[28] = v98 != 0;
      LOWORD(v122) = 1024;
      *(&v122 + 2) = v94 != 0;
      v100 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v100, OS_LOG_TYPE_ERROR, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup failed to find required objects legend %d && providerID %d && providerName %d && channelID %d && channelType %d && channelName %d\n", cStr, 0x26u);
LABEL_127:
    if (glog_fd)
    {
      *&v101 = 0xAAAAAAAAAAAAAAAALL;
      *(&v101 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v126 = v101;
      v127 = v101;
      v124 = v101;
      v125 = v101;
      v123 = v101;
      *&cStr[16] = v101;
      v122 = v101;
      *cStr = v101;
      memset(&v117, 0, sizeof(v117));
      v116 = 0xAAAAAAAAAAAAAAAALL;
      time(&v116);
      localtime_r(&v116, &v117);
      strftime(cStr, 0x80uLL, "%b %d %H:%M:%S", &v117);
      dprintf(glog_fd, "%s ", cStr);
      dprintf(glog_fd, "CCOSSerializeWithIOReporterFormatter::storeChannelDescriptionFromDriverGroup failed to find required objects legend %d && providerID %d && providerName %d && channelID %d && channelType %d && channelName %d\n", a2 != 0, valuePtr != 0, v43 != 0, v119 != 0, v118 != 0, v94 != 0);
    }

LABEL_129:
    v118 = 0;
    v119 = 0;
    ++v80;
  }

  if (v43)
  {
    CFRelease(v43);
  }

  v102 = *MEMORY[0x277D85DE8];
  return v114;
}

uint64_t CCDataPipeInterface::ccfree(CCDataPipeInterface *this)
{
  CCDataPipeInterface::freeResources(this);
  result = CCPipeInterface::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCDataPipeInterface::freeResources(uint64_t this)
{
  if (*(this + 80) >= 3)
  {
    v1 = this;
    this = IOConnectCallScalarMethod(*(this + 88), 2u, 0, 0, 0, 0);
    *(v1 + 80) = 1;
  }

  return this;
}

uint64_t CCDataPipeInterface::queryMetaData(uint64_t a1, void *inputStruct)
{
  v6 = *MEMORY[0x277D85DE8];
  outputCnt = 0;
  v4 = inputStruct[1] + 16;
  result = IOConnectCallMethod(*(a1 + 88), 4u, 0, 0, inputStruct, 0x10uLL, 0, &outputCnt, inputStruct, &v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCDataPipeInterface::readData(uint64_t a1, void *inputStruct)
{
  v6 = *MEMORY[0x277D85DE8];
  outputCnt = 0;
  v4 = inputStruct[1] + 16;
  result = IOConnectCallMethod(*(a1 + 88), 5u, 0, 0, inputStruct, 0x10uLL, 0, &outputCnt, inputStruct, &v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CCDataTap::tapLoopImpl(CCDataTap *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v3 = os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      v4 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "tapLoopImpl";
      *&buf[12] = 1024;
      *&buf[14] = 122;
      *&buf[18] = 1024;
      *&buf[20] = v4;
      v5 = v2;
LABEL_6:
      _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d CCDataTap::tapLoopImpl for entry:%u", buf, 0x18u);
    }
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      v6 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "tapLoopImpl";
      *&buf[12] = 1024;
      *&buf[14] = 122;
      *&buf[18] = 1024;
      *&buf[20] = v6;
      v5 = MEMORY[0x277D86220];
      goto LABEL_6;
    }
  }

  if (glog_fd)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v7;
    v28 = v7;
    v25 = v7;
    v26 = v7;
    v23 = v7;
    v24 = v7;
    *buf = v7;
    *&buf[16] = v7;
    memset(&v21, 0, sizeof(v21));
    v20 = 0xAAAAAAAAAAAAAAAALL;
    time(&v20);
    localtime_r(&v20, &v21);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
    dprintf(glog_fd, "%s ", buf);
    v3 = dprintf(glog_fd, "%s:%d CCDataTap::tapLoopImpl for entry:%u", "tapLoopImpl", 122, *(this + 4));
  }

  if (!CCTap::isDumpToDiskAllowed(v3))
  {
    (*(*this + 128))(this);
    goto LABEL_31;
  }

  *(this + 184) = 1;
  while (1)
  {
    v8 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v9 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "tapLoopImpl";
      *&buf[12] = 1024;
      *&buf[14] = 133;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      v10 = v8;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v11 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "tapLoopImpl";
      *&buf[12] = 1024;
      *&buf[14] = 133;
      *&buf[18] = 1024;
      *&buf[20] = v11;
      v10 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d processEvent for entry:%u", buf, 0x18u);
LABEL_17:
    if (glog_fd)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v12;
      v28 = v12;
      v25 = v12;
      v26 = v12;
      v23 = v12;
      v24 = v12;
      *buf = v12;
      *&buf[16] = v12;
      memset(&v21, 0, sizeof(v21));
      v20 = 0xAAAAAAAAAAAAAAAALL;
      time(&v20);
      localtime_r(&v20, &v21);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%d processEvent for entry:%u", "tapLoopImpl", 133, *(this + 4));
    }

    if (!CCDataTap::processEvent(this))
    {
      break;
    }

    pthread_mutex_lock((*(this + 8) + 16));
    v13 = *(this + 56);
    pthread_mutex_unlock((*(this + 8) + 16));
    if (v13)
    {
      break;
    }

    *(this + 24) = CFAbsoluteTimeGetCurrent();
    usleep(0x3E8u);
  }

  *(this + 184) = 0;
  v14 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(this + 4);
      *buf = 67109120;
      *&buf[4] = v15;
      v16 = v14;
      goto LABEL_28;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(this + 4);
    *buf = 67109120;
    *&buf[4] = v17;
    v16 = MEMORY[0x277D86220];
LABEL_28:
    _os_log_impl(&dword_2452A3000, v16, OS_LOG_TYPE_DEFAULT, "CCDataTap::tapLoopImpl exit :%u Exiting taploop\n", buf, 8u);
  }

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
    dprintf(glog_fd, "CCDataTap::tapLoopImpl exit :%u Exiting taploop\n", *(this + 4));
  }

LABEL_31:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t CCDataTap::processEvent(CCDataTap *this)
{
  v79 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  __dst = 0;
  if (*(this + 96))
  {
    result = 0;
    *(this + 48) = 256;
    goto LABEL_121;
  }

  if (*(this + 97))
  {
    goto LABEL_116;
  }

  v2 = isSeedAndiOS();
  if (v2 && (deviceUnlockedSinceBoot(v2, v3) & 1) == 0)
  {
    v55 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_114;
      }

      *buf = 0;
      v56 = v55;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_114;
      }

      *buf = 0;
      v56 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v56, OS_LOG_TYPE_DEFAULT, "CCDataTap::processEvent() seed build and device hasn't been unlocked since boot - not processing event and waiting for the next.\n", buf, 2u);
LABEL_114:
    if (glog_fd)
    {
      *&v59 = 0xAAAAAAAAAAAAAAAALL;
      *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v77 = v59;
      v78 = v59;
      v75 = v59;
      v76 = v59;
      *&buf[32] = v59;
      v74 = v59;
      *buf = v59;
      *&buf[16] = v59;
      memset(&v67, 0, sizeof(v67));
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      localtime_r(&v66, &v67);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCDataTap::processEvent() seed build and device hasn't been unlocked since boot - not processing event and waiting for the next.\n");
    }

    goto LABEL_116;
  }

  result = malloc_type_calloc(0x1000uLL, 1uLL, 0x965D384AuLL);
  if (!result)
  {
    goto LABEL_121;
  }

  v5 = result;
  v6 = (result + 16);
  *result = result + 16;
  *(result + 8) = 4080;
  v7 = *(this + 8);
  if (v7)
  {
    v8 = **v7;
  }

  v62 = v5;
  if (CCDataPipeInterface::queryMetaData(v7, v5))
  {
    goto LABEL_104;
  }

  v63 = this;
  v65 = 0;
  v64 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = *v6;
        v9 = *(v6 + 1);
        v11 = v6 + 16;
        if (*v6 <= 2)
        {
          break;
        }

        switch(v10)
        {
          case 3:
            v16 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = "processEvent";
                *&buf[12] = 1024;
                *&buf[14] = 218;
                *&buf[18] = 2048;
                *&buf[20] = v9;
                *&buf[28] = 2080;
                *&buf[30] = v11;
                v17 = v16;
LABEL_37:
                _os_log_impl(&dword_2452A3000, v17, OS_LOG_TYPE_DEFAULT, "Found blob name: %s:%d %llu %s\n", buf, 0x26u);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = "processEvent";
              *&buf[12] = 1024;
              *&buf[14] = 218;
              *&buf[18] = 2048;
              *&buf[20] = v9;
              *&buf[28] = 2080;
              *&buf[30] = v11;
              v17 = MEMORY[0x277D86220];
              goto LABEL_37;
            }

            v6 = &v11[v9];
            v65 = v11;
            if (glog_fd)
            {
              *&v24 = 0xAAAAAAAAAAAAAAAALL;
              *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v77 = v24;
              v78 = v24;
              v75 = v24;
              v76 = v24;
              *&buf[32] = v24;
              v74 = v24;
              *buf = v24;
              *&buf[16] = v24;
              memset(&v67, 0, sizeof(v67));
              v66 = 0xAAAAAAAAAAAAAAAALL;
              time(&v66);
              localtime_r(&v66, &v67);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "Found blob name: %s:%d %llu %s\n", "processEvent", 218, v9, v11);
              v65 = v11;
            }

            break;
          case 4:
            memcpy(&v69, v6 + 16, *(v6 + 1));
            v18 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_43;
              }

              *buf = 136316162;
              *&buf[4] = "processEvent";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 2048;
              *&buf[20] = v9;
              *&buf[28] = 2048;
              *&buf[30] = v69;
              *&buf[38] = 2048;
              *&buf[40] = v70;
              v19 = v18;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_43;
              }

              *buf = 136316162;
              *&buf[4] = "processEvent";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 2048;
              *&buf[20] = v9;
              *&buf[28] = 2048;
              *&buf[30] = v69;
              *&buf[38] = 2048;
              *&buf[40] = v70;
              v19 = MEMORY[0x277D86220];
            }

            _os_log_impl(&dword_2452A3000, v19, OS_LOG_TYPE_DEFAULT, "Found blob timestamp: %s:%d %llu %llu.%llu\n", buf, 0x30u);
LABEL_43:
            if (glog_fd)
            {
              *&v25 = 0xAAAAAAAAAAAAAAAALL;
              *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v77 = v25;
              v78 = v25;
              v75 = v25;
              v76 = v25;
              *&buf[32] = v25;
              v74 = v25;
              *buf = v25;
              *&buf[16] = v25;
              memset(&v67, 0, sizeof(v67));
              v66 = 0xAAAAAAAAAAAAAAAALL;
              time(&v66);
              localtime_r(&v66, &v67);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "Found blob timestamp: %s:%d %llu %llu.%llu\n");
            }

            goto LABEL_61;
          case 5:
            memcpy(&__dst, v6 + 16, *(v6 + 1));
            v12 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 136315906;
              *&buf[4] = "processEvent";
              *&buf[12] = 1024;
              *&buf[14] = 230;
              *&buf[18] = 2048;
              *&buf[20] = v9;
              *&buf[28] = 2048;
              *&buf[30] = __dst;
              v13 = v12;
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 136315906;
              *&buf[4] = "processEvent";
              *&buf[12] = 1024;
              *&buf[14] = 230;
              *&buf[18] = 2048;
              *&buf[20] = v9;
              *&buf[28] = 2048;
              *&buf[30] = __dst;
              v13 = MEMORY[0x277D86220];
            }

            _os_log_impl(&dword_2452A3000, v13, OS_LOG_TYPE_DEFAULT, "Found blob length: %s:%d %llu %zu\n", buf, 0x26u);
LABEL_48:
            if (glog_fd)
            {
              *&v26 = 0xAAAAAAAAAAAAAAAALL;
              *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v77 = v26;
              v78 = v26;
              v75 = v26;
              v76 = v26;
              *&buf[32] = v26;
              v74 = v26;
              *buf = v26;
              *&buf[16] = v26;
              memset(&v67, 0, sizeof(v67));
              v66 = 0xAAAAAAAAAAAAAAAALL;
              time(&v66);
              localtime_r(&v66, &v67);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "Found blob length: %s:%d %llu %zu\n");
            }

            goto LABEL_61;
          default:
LABEL_32:
            v22 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                *&buf[4] = v10;
                *&buf[12] = 2080;
                *&buf[14] = "processEvent";
                *&buf[22] = 1024;
                *&buf[24] = 234;
                v23 = v22;
LABEL_64:
                _os_log_impl(&dword_2452A3000, v23, OS_LOG_TYPE_DEFAULT, "Unknown type: %llu %s:%d\n", buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              *&buf[4] = v10;
              *&buf[12] = 2080;
              *&buf[14] = "processEvent";
              *&buf[22] = 1024;
              *&buf[24] = 234;
              v23 = MEMORY[0x277D86220];
              goto LABEL_64;
            }

            v6 += 16;
            if (glog_fd)
            {
              *&v29 = 0xAAAAAAAAAAAAAAAALL;
              *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v77 = v29;
              v78 = v29;
              v75 = v29;
              v76 = v29;
              *&buf[32] = v29;
              v74 = v29;
              *buf = v29;
              *&buf[16] = v29;
              memset(&v67, 0, sizeof(v67));
              v66 = 0xAAAAAAAAAAAAAAAALL;
              time(&v66);
              localtime_r(&v66, &v67);
              strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
              dprintf(glog_fd, "%s ", buf);
              dprintf(glog_fd, "Unknown type: %llu %s:%d\n", v10, "processEvent", 234);
              v6 = v11;
            }

            break;
        }
      }

      if (v10 != 1)
      {
        break;
      }

      v20 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 136315906;
        *&buf[4] = "processEvent";
        *&buf[12] = 1024;
        *&buf[14] = 205;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2080;
        *&buf[30] = v6 + 16;
        v21 = v20;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 136315906;
        *&buf[4] = "processEvent";
        *&buf[12] = 1024;
        *&buf[14] = 205;
        *&buf[18] = 2048;
        *&buf[20] = v9;
        *&buf[28] = 2080;
        *&buf[30] = v6 + 16;
        v21 = MEMORY[0x277D86220];
      }

      _os_log_impl(&dword_2452A3000, v21, OS_LOG_TYPE_DEFAULT, "Found SessionName: %s:%d %llu %s\n", buf, 0x26u);
LABEL_53:
      if (glog_fd)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v77 = v27;
        v78 = v27;
        v75 = v27;
        v76 = v27;
        *&buf[32] = v27;
        v74 = v27;
        *buf = v27;
        *&buf[16] = v27;
        memset(&v67, 0, sizeof(v67));
        v66 = 0xAAAAAAAAAAAAAAAALL;
        time(&v66);
        localtime_r(&v66, &v67);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Found SessionName: %s:%d %llu %s\n", "processEvent", 205, v9, v6 + 16);
      }

      v6 = &v11[v9];
      v64 = v11;
    }

    if (v10 != 2)
    {
      break;
    }

    memcpy(&v71, v6 + 16, *(v6 + 1));
    v14 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      *buf = 136316162;
      *&buf[4] = "processEvent";
      *&buf[12] = 1024;
      *&buf[14] = 212;
      *&buf[18] = 2048;
      *&buf[20] = v9;
      *&buf[28] = 2048;
      *&buf[30] = v71;
      *&buf[38] = 2048;
      *&buf[40] = v72;
      v15 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      *buf = 136316162;
      *&buf[4] = "processEvent";
      *&buf[12] = 1024;
      *&buf[14] = 212;
      *&buf[18] = 2048;
      *&buf[20] = v9;
      *&buf[28] = 2048;
      *&buf[30] = v71;
      *&buf[38] = 2048;
      *&buf[40] = v72;
      v15 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v15, OS_LOG_TYPE_DEFAULT, "Found session timestamp: %s:%d %llu %llu.%llu\n", buf, 0x30u);
LABEL_59:
    if (glog_fd)
    {
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v77 = v28;
      v78 = v28;
      v75 = v28;
      v76 = v28;
      *&buf[32] = v28;
      v74 = v28;
      *buf = v28;
      *&buf[16] = v28;
      memset(&v67, 0, sizeof(v67));
      v66 = 0xAAAAAAAAAAAAAAAALL;
      time(&v66);
      localtime_r(&v66, &v67);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "Found session timestamp: %s:%d %llu %llu.%llu\n");
    }

LABEL_61:
    v6 = &v11[v9];
  }

  if (v10)
  {
    goto LABEL_32;
  }

  v30 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v31 = v63;
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = v30;
      goto LABEL_72;
    }
  }

  else
  {
    v31 = v63;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = MEMORY[0x277D86220];
LABEL_72:
      _os_log_impl(&dword_2452A3000, v32, OS_LOG_TYPE_DEFAULT, "Invalid Meta Key. Bail.", buf, 2u);
    }
  }

  if (glog_fd)
  {
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v33;
    v78 = v33;
    v75 = v33;
    v76 = v33;
    *&buf[32] = v33;
    v74 = v33;
    *buf = v33;
    *&buf[16] = v33;
    memset(&v67, 0, sizeof(v67));
    v66 = 0xAAAAAAAAAAAAAAAALL;
    time(&v66);
    localtime_r(&v66, &v67);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "Invalid Meta Key. Bail.");
  }

  if (!__dst)
  {
LABEL_104:
    free(v62);
LABEL_116:
    result = 0;
    goto LABEL_121;
  }

  if (__dst >= 0x19000)
  {
    v34 = 102400;
  }

  else
  {
    v34 = __dst;
  }

  v35 = malloc_type_malloc(v34 + 16, 0x1000040451B5BE8uLL);
  *v35 = v35 + 2;
  v35[1] = v34;
  v36 = v71 != 0;
  v37 = v64 != 0;
  v38 = !v36 || !v37;
  if (v36 && v37)
  {
    v39 = &v72;
  }

  else
  {
    v39 = &v70;
  }

  v40 = *v39;
  if (v38)
  {
    v41 = v69;
  }

  else
  {
    v41 = v71;
  }

  v42 = CCFile::withRegistryEntry(*(v31 + 4));
  *(v31 + 4) = v42;
  if (v42)
  {
    v43 = **v42;
    if (v44)
    {
      (*(*v44 + 192))(v44, v64, v65, v41, v40);
    }

    v45 = 0;
    while (1)
    {
      v46 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v64;
          *&buf[12] = 2080;
          *&buf[14] = v65;
          *&buf[22] = 2048;
          *&buf[24] = v41;
          *&buf[32] = 2048;
          *&buf[34] = v40;
          v47 = v46;
LABEL_94:
          _os_log_impl(&dword_2452A3000, v47, OS_LOG_TYPE_DEFAULT, "Session Name: %s, Blob Name: %s %llu.%llu\n", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v64;
        *&buf[12] = 2080;
        *&buf[14] = v65;
        *&buf[22] = 2048;
        *&buf[24] = v41;
        *&buf[32] = 2048;
        *&buf[34] = v40;
        v47 = MEMORY[0x277D86220];
        goto LABEL_94;
      }

      if (glog_fd)
      {
        *&v48 = 0xAAAAAAAAAAAAAAAALL;
        *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v77 = v48;
        v78 = v48;
        v75 = v48;
        v76 = v48;
        *&buf[32] = v48;
        v74 = v48;
        *buf = v48;
        *&buf[16] = v48;
        memset(&v67, 0, sizeof(v67));
        v66 = 0xAAAAAAAAAAAAAAAALL;
        time(&v66);
        localtime_r(&v66, &v67);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "Session Name: %s, Blob Name: %s %llu.%llu\n", v64, v65, v41, v40);
      }

      v49 = *(v63 + 8);
      (*(**(v63 + 4) + 64))(*(v63 + 4), 0, *v35, v35[1], 0, 0);
      if (v52)
      {
        v45 += v35[1];
        if (v45 < __dst)
        {
          continue;
        }
      }

      v53 = *(v63 + 4);
      v53[30] = 1;
      (*(*v53 + 88))(v53);
      (*(**(v63 + 4) + 48))(*(v63 + 4));
      *(v63 + 4) = 0;
      v54 = v62;
      goto LABEL_120;
    }
  }

  v57 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    v54 = v62;
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v58 = v57;
      goto LABEL_123;
    }
  }

  else
  {
    v54 = v62;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v58 = MEMORY[0x277D86220];
LABEL_123:
      _os_log_error_impl(&dword_2452A3000, v58, OS_LOG_TYPE_ERROR, "CCDataTap: Unable to create CCFile.\n", buf, 2u);
    }
  }

  if (glog_fd)
  {
    *&v60 = 0xAAAAAAAAAAAAAAAALL;
    *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v60;
    v78 = v60;
    v75 = v60;
    v76 = v60;
    *&buf[32] = v60;
    v74 = v60;
    *buf = v60;
    *&buf[16] = v60;
    memset(&v67, 0, sizeof(v67));
    v66 = 0xAAAAAAAAAAAAAAAALL;
    time(&v66);
    localtime_r(&v66, &v67);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v67);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDataTap: Unable to create CCFile.\n");
  }

LABEL_120:
  free(v54);
  free(v35);
  result = 1;
LABEL_121:
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

void CCDataTap::tapLoop(CCDataTap *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 8) + 72))(*(this + 8));
  v3 = coreCaptureOsLog;
  if (!v2)
  {
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(this + 4);
        CStringPtr = CFStringGetCStringPtr(*(this + 5), 0);
        v6 = CFStringGetCStringPtr(*(this + 6), 0);
        *buf = 136316162;
        *&buf[4] = "tapLoop";
        *&buf[12] = 1024;
        *&buf[14] = 106;
        *&buf[18] = 1024;
        *&buf[20] = v4;
        *&buf[24] = 2080;
        *&buf[26] = CStringPtr;
        *&buf[34] = 2080;
        *&buf[36] = v6;
        v7 = v3;
LABEL_7:
        _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCDataTap::%s:%d tapLoop entry:%u Owner:%s Name:%s\n", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 4);
      v9 = CFStringGetCStringPtr(*(this + 5), 0);
      v10 = CFStringGetCStringPtr(*(this + 6), 0);
      *buf = 136316162;
      *&buf[4] = "tapLoop";
      *&buf[12] = 1024;
      *&buf[14] = 106;
      *&buf[18] = 1024;
      *&buf[20] = v8;
      *&buf[24] = 2080;
      *&buf[26] = v9;
      *&buf[34] = 2080;
      *&buf[36] = v10;
      v7 = MEMORY[0x277D86220];
      goto LABEL_7;
    }

    if (glog_fd)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v11;
      v31 = v11;
      v28 = v11;
      v29 = v11;
      *&buf[32] = v11;
      v27 = v11;
      *buf = v11;
      *&buf[16] = v11;
      memset(&v25, 0, sizeof(v25));
      v24 = 0xAAAAAAAAAAAAAAAALL;
      time(&v24);
      localtime_r(&v24, &v25);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v25);
      dprintf(glog_fd, "%s ", buf);
      v12 = glog_fd;
      v13 = *(this + 4);
      v14 = CFStringGetCStringPtr(*(this + 5), 0);
      v15 = CFStringGetCStringPtr(*(this + 6), 0);
      dprintf(v12, "CCDataTap::%s:%d tapLoop entry:%u Owner:%s Name:%s\n", "tapLoop", 106, v13, v14, v15);
    }

    v16 = (*(**(this + 8) + 88))(*(this + 8));
    v17 = *(this + 8);
    v18 = *v17 + 56;
    if (v16)
    {
      v19 = _dataTapInterestCallback_kext;
    }

    else
    {
      v19 = _dataTapInterestCallback_dext;
    }

    (*(*v17 + 56))(v17, v19, this);
    goto LABEL_14;
  }

  v21 = v2;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = v21;
    v22 = v3;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 67109120;
    *&buf[4] = v21;
    v22 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v22, OS_LOG_TYPE_ERROR, "CCDataTap::tapLoop(), Error setting notification port rc[0x%08x]\n", buf, 8u);
LABEL_19:
  if (glog_fd)
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30 = v23;
    v31 = v23;
    v28 = v23;
    v29 = v23;
    *&buf[32] = v23;
    v27 = v23;
    *buf = v23;
    *&buf[16] = v23;
    memset(&v25, 0, sizeof(v25));
    v24 = 0xAAAAAAAAAAAAAAAALL;
    time(&v24);
    localtime_r(&v24, &v25);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v25);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCDataTap::tapLoop(), Error setting notification port rc[0x%08x]\n", v21);
  }

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
}

void _dataTapInterestCallback_dext(CCDaemon *a1, int a2, void **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit((CCDaemon::getInstance(a1) + 304), memory_order_acquire))
  {
    v4 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v5 = v4;
LABEL_13:
        _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "_dataTapInterestCallback_dext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = MEMORY[0x277D86220];
      goto LABEL_13;
    }

    if (glog_fd)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18 = v8;
      v19 = v8;
      v16 = v8;
      v17 = v8;
      v14 = v8;
      v15 = v8;
      *buf = v8;
      v13 = v8;
      memset(&v11, 0, sizeof(v11));
      v10 = 0xAAAAAAAAAAAAAAAALL;
      time(&v10);
      localtime_r(&v10, &v11);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "_dataTapInterestCallback_dext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n");
    }

    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *(*a1 + 152);
  v7 = *MEMORY[0x277D85DE8];

  v6(a1);
}

void _dataTapInterestCallback_kext(CCDaemon *a1, int a2, void **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit((CCDaemon::getInstance(a1) + 304), memory_order_acquire))
  {
    v4 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v5 = v4;
LABEL_13:
        _os_log_error_impl(&dword_2452A3000, v5, OS_LOG_TYPE_ERROR, "_dataTapInterestCallback_kext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = MEMORY[0x277D86220];
      goto LABEL_13;
    }

    if (glog_fd)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18 = v8;
      v19 = v8;
      v16 = v8;
      v17 = v8;
      v14 = v8;
      v15 = v8;
      *buf = v8;
      v13 = v8;
      memset(&v11, 0, sizeof(v11));
      v10 = 0xAAAAAAAAAAAAAAAALL;
      time(&v10);
      localtime_r(&v10, &v11);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v11);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "_dataTapInterestCallback_kext called when CCDaemon::getInstance().isShutdownPending() == true, ignoring\n");
    }

    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *(*a1 + 152);
  v7 = *MEMORY[0x277D85DE8];

  v6(a1);
}

uint64_t CCDataTap::initWithRegistryEntry(CCDataTap *this, CCPipeInterface *a2, CCTap *a3)
{
  v3 = a2;
  v23 = *MEMORY[0x277D85DE8];
  *(this + 18) = 2;
  v5 = CCPipeInterface::withRegistryEntry(a2, this, a3);
  if (v5)
  {
    v6 = **v5;
    *(this + 8) = v7;
    if (v7)
    {
      CCTap::initWithRegistryEntry(this, v3);
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    *(this + 8) = 0;
  }

  v9 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = v9;
LABEL_14:
      _os_log_error_impl(&dword_2452A3000, v10, OS_LOG_TYPE_ERROR, "CCDataTap::initWithRegistryEntry invalid fPipeInterface\n", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v10 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

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
    dprintf(glog_fd, "CCDataTap::initWithRegistryEntry invalid fPipeInterface\n");
  }

  result = 0;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCDataTap::capture(uint64_t a1, const void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(*(a1 + 40), 0);
    v6 = CFStringGetCStringPtr(*(a1 + 48), 0);
    *buf = 136315394;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    v7 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v9 = CFStringGetCStringPtr(*(a1 + 48), 0);
    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCDataTap::capture, Owner: %s, Name: %s\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v10;
    v28 = v10;
    v25 = v10;
    v26 = v10;
    v23 = v10;
    v24 = v10;
    *buf = v10;
    *&buf[16] = v10;
    memset(&v21, 0, sizeof(v21));
    v20 = 0xAAAAAAAAAAAAAAAALL;
    time(&v20);
    localtime_r(&v20, &v21);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v21);
    dprintf(glog_fd, "%s ", buf);
    v11 = glog_fd;
    v12 = CFStringGetCStringPtr(*(a1 + 40), 0);
    v13 = CFStringGetCStringPtr(*(a1 + 48), 0);
    dprintf(v11, "CCDataTap::capture, Owner: %s, Name: %s\n", v12, v13);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = **v14;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 192) = CFAbsoluteTimeGetCurrent();
  *(a1 + 184) = 1;
  if (v16)
  {
    v17 = IOConnectCallMethod(v16[22], 8u, 0, 0, a2, 0x90uLL, 0, 0, 0, 0);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 192) = CFAbsoluteTimeGetCurrent();
  *(a1 + 184) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t CCDataTap::profileRemoved(CFStringRef *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(this[5], 0);
    v4 = CFStringGetCStringPtr(this[6], 0);
    *buf = 136315394;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    v5 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = CFStringGetCStringPtr(this[5], 0);
    v7 = CFStringGetCStringPtr(this[6], 0);
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDataTap::profileRemoved, Owner: %s, Name: %s\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v8;
    v25 = v8;
    v22 = v8;
    v23 = v8;
    v20 = v8;
    v21 = v8;
    *buf = v8;
    *&buf[16] = v8;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v9 = glog_fd;
    v10 = CFStringGetCStringPtr(this[5], 0);
    v11 = CFStringGetCStringPtr(this[6], 0);
    dprintf(v9, "CCDataTap::profileRemoved, Owner: %s, Name: %s\n", v10, v11);
  }

  v12 = this[8];
  if (v12)
  {
    v13 = **v12;
    if (v14)
    {
      IOConnectCallMethod(v14[22], 7u, 0, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CCDataTap::profileLoaded(CFStringRef *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    CStringPtr = CFStringGetCStringPtr(this[5], 0);
    v4 = CFStringGetCStringPtr(this[6], 0);
    *buf = 136315394;
    *&buf[4] = CStringPtr;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    v5 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = CFStringGetCStringPtr(this[5], 0);
    v7 = CFStringGetCStringPtr(this[6], 0);
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCDataTap::profileLoaded, Owner: %s, Name: %s\n", buf, 0x16u);
LABEL_7:
  if (glog_fd)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v8;
    v25 = v8;
    v22 = v8;
    v23 = v8;
    v20 = v8;
    v21 = v8;
    *buf = v8;
    *&buf[16] = v8;
    memset(&v18, 0, sizeof(v18));
    v17 = 0xAAAAAAAAAAAAAAAALL;
    time(&v17);
    localtime_r(&v17, &v18);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v18);
    dprintf(glog_fd, "%s ", buf);
    v9 = glog_fd;
    v10 = CFStringGetCStringPtr(this[5], 0);
    v11 = CFStringGetCStringPtr(this[6], 0);
    dprintf(v9, "CCDataTap::profileLoaded, Owner: %s, Name: %s\n", v10, v11);
  }

  v12 = this[8];
  if (v12)
  {
    v13 = **v12;
    if (v14)
    {
      IOConnectCallMethod(v14[22], 6u, 0, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CCDataTap::ccfree(CCDataTap *this)
{
  result = CCTap::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

void CCFile::captureLogRun(CCFile *this)
{
  v100 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(*(this + 6));
  v3 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v4 = *(this + 6);
  v5 = CFStringGetLength(v4);
  CFStringGetCString(v4, v3, v5 + 1, 0);
  v6 = opendir(v3);
  v7 = CFStringGetLength(*(this + 5));
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  v9 = *(this + 5);
  v10 = CFStringGetLength(v9);
  CFStringGetCString(v9, v8, v10 + 1, 0);
  v11 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v12 = v11;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    *&buf[4] = v8;
    v12 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v12, OS_LOG_TYPE_DEFAULT, "CCFile::captureLogRun Current File %s\n", buf, 0xCu);
LABEL_7:
  if (glog_fd)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v74 = v13;
    v75 = v13;
    v72 = v13;
    v73 = v13;
    v70 = v13;
    v71 = v13;
    *buf = v13;
    *&buf[16] = v13;
    memset(&v68, 0, 56);
    *v61 = 0xAAAAAAAAAAAAAAAALL;
    time(v61);
    localtime_r(v61, &v68);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v68);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::captureLogRun Current File %s\n", v8);
  }

  valuePtr = 0;
  v14 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(*(this + 16), @"CompressionDisabled", *MEMORY[0x277CBECE8], 0);
  v16 = CFProperty;
  if (CFProperty)
  {
    CFNumberGetValue(CFProperty, kCFNumberSInt8Type, &valuePtr);
    CFRelease(v16);
  }

  v17 = IORegistryEntryCreateCFProperty(*(this + 16), @"LogPolicy", v14, 0);
  v18 = v17;
  v59 = 0;
  if (!v17 || (CFNumberGetValue(v17, kCFNumberSInt32Type, &v59), CFRelease(v18), v59 != 1))
  {
    valuePtr = 0;
  }

  v55 = clock();
  Mutable = CFArrayCreateMutable(v14, 0, 0);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v20 = readdir(v6);
          if (!v20)
          {
            goto LABEL_41;
          }

          d_name = v20->d_name;
        }

        while (v20->d_name[0] == 46 && (!v20->d_name[1] || v20->d_name[1] == 46 && !v20->d_name[2]));
        if (!strcmp(v8, d_name))
        {
          break;
        }

        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v98 = v22;
        v99 = v22;
        v96 = v22;
        v97 = v22;
        v94 = v22;
        v95 = v22;
        v92 = v22;
        v93 = v22;
        v90 = v22;
        v91 = v22;
        v88 = v22;
        v89 = v22;
        v86 = v22;
        v87 = v22;
        v84 = v22;
        v85 = v22;
        v82 = v22;
        v83 = v22;
        v80 = v22;
        v81 = v22;
        v78 = v22;
        v79 = v22;
        v76 = v22;
        v77 = v22;
        v74 = v22;
        v75 = v22;
        v72 = v22;
        v73 = v22;
        v70 = v22;
        v71 = v22;
        *buf = v22;
        *&buf[16] = v22;
        if (snprintf(buf, 0x200uLL, "%s/%s", v3, d_name) >= 1)
        {
          v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v68.st_blksize = v23;
          *v68.st_qspare = v23;
          v68.st_birthtimespec = v23;
          *&v68.st_size = v23;
          v68.st_mtimespec = v23;
          v68.st_ctimespec = v23;
          *&v68.st_uid = v23;
          v68.st_atimespec = v23;
          *&v68.st_dev = v23;
          if (stat(buf, &v68))
          {
            v24 = coreCaptureOsLog;
            if (coreCaptureOsLog)
            {
              if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *__error();
                *v61 = 136315650;
                *&v61[4] = v3;
                *&v61[12] = 2080;
                *&v61[14] = d_name;
                *&v61[22] = 1024;
                *&v61[24] = v25;
                v26 = v24;
LABEL_38:
                _os_log_impl(&dword_2452A3000, v26, OS_LOG_TYPE_DEFAULT, "CCFile::captureLogRun Failed to stat file %s%s, errno: %d\n", v61, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v32 = *__error();
              *v61 = 136315650;
              *&v61[4] = v3;
              *&v61[12] = 2080;
              *&v61[14] = d_name;
              *&v61[22] = 1024;
              *&v61[24] = v32;
              v26 = MEMORY[0x277D86220];
              goto LABEL_38;
            }

            if (glog_fd)
            {
              *&v33 = 0xAAAAAAAAAAAAAAAALL;
              *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v66 = v33;
              v67 = v33;
              v64 = v33;
              v65 = v33;
              v62 = v33;
              v63 = v33;
              *v61 = v33;
              *&v61[16] = v33;
              memset(&v58, 0, sizeof(v58));
              v57 = 0xAAAAAAAAAAAAAAAALL;
              time(&v57);
              localtime_r(&v57, &v58);
              strftime(v61, 0x80uLL, "%b %d %H:%M:%S", &v58);
              dprintf(glog_fd, "%s ", v61);
              v34 = glog_fd;
              v35 = __error();
              dprintf(v34, "CCFile::captureLogRun Failed to stat file %s%s, errno: %d\n", v3, d_name, *v35);
            }
          }

          else
          {
            v29 = malloc_type_malloc(0x208uLL, 0x1000040EE8C0CC6uLL);
            v30 = v29;
            if (v29)
            {
              strncpy(v29, d_name, 0x1FFuLL);
              v30[511] = 0;
              *(v30 + 64) = v68.st_ctimespec.tv_sec;
              CFArrayAppendValue(Mutable, v30);
            }
          }
        }
      }

      v27 = coreCaptureOsLog;
      if (coreCaptureOsLog)
      {
        if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = d_name;
          *&buf[12] = 2080;
          *&buf[14] = v8;
          v28 = v27;
LABEL_33:
          _os_log_impl(&dword_2452A3000, v28, OS_LOG_TYPE_DEFAULT, "CCFile::captureLogRun Skipping current file Dir file %s, Current File %s\n", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = d_name;
        *&buf[12] = 2080;
        *&buf[14] = v8;
        v28 = MEMORY[0x277D86220];
        goto LABEL_33;
      }

      if (glog_fd)
      {
        *&v31 = 0xAAAAAAAAAAAAAAAALL;
        *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v74 = v31;
        v75 = v31;
        v72 = v31;
        v73 = v31;
        v70 = v31;
        v71 = v31;
        *buf = v31;
        *&buf[16] = v31;
        memset(&v68, 0, 56);
        *v61 = 0xAAAAAAAAAAAAAAAALL;
        time(v61);
        localtime_r(v61, &v68);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v68);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCFile::captureLogRun Skipping current file Dir file %s, Current File %s\n", d_name, v8);
      }
    }
  }

LABEL_41:
  if (v3)
  {
    free(v3);
  }

  Count = CFArrayGetCount(Mutable);
  v101.location = 0;
  v101.length = Count;
  CFArraySortValues(Mutable, v101, sortByModificationTime, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
      (*(*this + 96))(this, ValueAtIndex, valuePtr == 0);
      if (ValueAtIndex)
      {
        free(ValueAtIndex);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (valuePtr)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v39 = CFStringGetLength(*(this + 7));
    *&buf[24] = malloc_type_malloc(v39 + 1, 0x100004077774924uLL);
    *&v68.st_dev = 0;
    v68.st_ino = &v68;
    *&v68.st_uid = 0x2000000000;
    *&v68.st_rdev = 0;
    *v61 = 0;
    *&v61[8] = v61;
    *&v61[16] = 0x2000000000;
    *&v61[24] = 0xAAAAAAAAAAAAAAAALL;
    *&v58.tm_sec = 0;
    *&v58.tm_hour = &v58;
    *&v58.tm_mon = 0x2000000000;
    *&v58.tm_wday = 0;
    v40 = *(*&buf[8] + 24);
    if (v40)
    {
      v41 = *(this + 7);
      v42 = CFStringGetLength(v41);
      CString = CFStringGetCString(v41, v40, v42 + 1, 0);
      Instance = CCDaemon::getInstance(CString);
      if (*(Instance + 41))
      {
        v45 = *(CCDaemon::getInstance(Instance) + 328);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6CCFile13captureLogRunEv_block_invoke;
        block[3] = &unk_278E306F8;
        block[4] = &v68;
        block[5] = buf;
        block[6] = v61;
        block[7] = &v58;
        dispatch_async(v45, block);
      }

      else
      {
        v46 = *(*&buf[8] + 24);
        if (v46)
        {
          free(v46);
          *(*&buf[8] + 24) = 0;
        }
      }
    }

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(buf, 8);
  }

  v47 = (clock() - v55) / 1000000.0;
  v48 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 134217984;
    *&buf[4] = v47;
    v49 = v48;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 134217984;
    *&buf[4] = v47;
    v49 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v49, OS_LOG_TYPE_DEFAULT, "CCFile::captureLogRun copying files took %f seconds\n", buf, 0xCu);
LABEL_63:
  if (glog_fd)
  {
    *&v50 = 0xAAAAAAAAAAAAAAAALL;
    *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v74 = v50;
    v75 = v50;
    v72 = v50;
    v73 = v50;
    v70 = v50;
    v71 = v50;
    *buf = v50;
    *&buf[16] = v50;
    memset(&v68, 0, 56);
    *v61 = 0xAAAAAAAAAAAAAAAALL;
    time(v61);
    localtime_r(v61, &v68);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v68);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::captureLogRun copying files took %f seconds\n", v47);
  }

  if (v8)
  {
    free(v8);
  }

  if (v6)
  {
    closedir(v6);
  }

  (*(*this + 160))(this);
  v51 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    *buf = 0;
    v52 = v51;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    *buf = 0;
    v52 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v52, OS_LOG_TYPE_DEFAULT, "CCFile::captureLogRun() Exiting CCFile::captureLogRun \n", buf, 2u);
LABEL_75:
  if (glog_fd)
  {
    *&v53 = 0xAAAAAAAAAAAAAAAALL;
    *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v74 = v53;
    v75 = v53;
    v72 = v53;
    v73 = v53;
    v70 = v53;
    v71 = v53;
    *buf = v53;
    *&buf[16] = v53;
    memset(&v68, 0, 56);
    *v61 = 0xAAAAAAAAAAAAAAAALL;
    time(v61);
    localtime_r(v61, &v68);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v68);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCFile::captureLogRun() Exiting CCFile::captureLogRun \n");
  }

  v54 = *MEMORY[0x277D85DE8];
}