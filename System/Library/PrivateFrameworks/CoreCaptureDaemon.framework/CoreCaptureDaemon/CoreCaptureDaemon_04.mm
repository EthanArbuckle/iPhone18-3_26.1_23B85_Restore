uint64_t CCLogFile::buildFileTables(CCLogFile *this)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 512, *(this + 6));
  pthread_mutex_lock((this + 200));
  Length = CFStringGetLength(MutableCopy);
  v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!v5)
  {
    v35 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 136315394;
      *&buf[4] = "buildFileTables";
      *&buf[12] = 1024;
      *&buf[14] = 189;
      v36 = v35;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      *buf = 136315394;
      *&buf[4] = "buildFileTables";
      *&buf[12] = 1024;
      *&buf[14] = 189;
      v36 = MEMORY[0x277D86220];
    }

    _os_log_error_impl(&dword_2452A3000, v36, OS_LOG_TYPE_ERROR, "%s:%06u: Allocation failure\n", buf, 0x12u);
LABEL_61:
    if (glog_fd)
    {
      goto LABEL_76;
    }

    goto LABEL_82;
  }

  v6 = v5;
  v7 = CFStringGetLength(MutableCopy);
  if (!CFStringGetCString(MutableCopy, v6, v7 + 1, 0))
  {
    v37 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "buildFileTables";
        *&buf[12] = 1024;
        *&buf[14] = 192;
        v38 = v37;
LABEL_88:
        _os_log_error_impl(&dword_2452A3000, v38, OS_LOG_TYPE_ERROR, "%s:%06u: CFStringGetCString failure\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "buildFileTables";
      *&buf[12] = 1024;
      *&buf[14] = 192;
      v38 = MEMORY[0x277D86220];
      goto LABEL_88;
    }

    if (glog_fd)
    {
      *&v45 = 0xAAAAAAAAAAAAAAAALL;
      *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v57 = v45;
      v58 = v45;
      v55 = v45;
      v56 = v45;
      v53 = v45;
      v54 = v45;
      *buf = v45;
      *&buf[16] = v45;
      memset(&v51, 0, sizeof(v51));
      v50 = 0xAAAAAAAAAAAAAAAALL;
      time(&v50);
      localtime_r(&v50, &v51);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v51);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u: CFStringGetCString failure\n", "buildFileTables", 192);
    }

    v46 = v6;
    goto LABEL_81;
  }

  v8 = opendir(v6);
  free(v6);
  v9 = 0;
  if (v8)
  {
    while (1)
    {
      v10 = readdir(v8);
      if (!v10)
      {
        break;
      }

      if (v10->d_name[0] != 46)
      {
        ++v9;
      }
    }

    closedir(v8);
  }

  v11 = *(this + 33);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  *(this + 42) = v12;
  if (!v12)
  {
    v39 = coreCaptureOsLog;
    if (!coreCaptureOsLog)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      *buf = 0;
      v40 = MEMORY[0x277D86220];
      goto LABEL_71;
    }

    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_53;
  }

  v13 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
  *(this + 22) = v13;
  if (!v13)
  {
    v39 = coreCaptureOsLog;
    if (!coreCaptureOsLog)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      *buf = 0;
      v40 = MEMORY[0x277D86220];
LABEL_71:
      _os_log_error_impl(&dword_2452A3000, v40, OS_LOG_TYPE_ERROR, "CCLogFile::buildFileTables fNumberOfArrayEntries is zero\n", buf, 2u);
LABEL_72:
      if (glog_fd)
      {
        *&v47 = 0xAAAAAAAAAAAAAAAALL;
        *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v57 = v47;
        v58 = v47;
        v55 = v47;
        v56 = v47;
        v53 = v47;
        v54 = v47;
        *buf = v47;
        *&buf[16] = v47;
        memset(&v51, 0, sizeof(v51));
        v50 = 0xAAAAAAAAAAAAAAAALL;
        time(&v50);
        localtime_r(&v50, &v51);
        strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v51);
        dprintf(glog_fd, "%s ", buf);
        dprintf(glog_fd, "CCLogFile::buildFileTables fNumberOfArrayEntries is zero\n");
      }

      goto LABEL_82;
    }

    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_72;
    }

    *buf = 0;
LABEL_53:
    v40 = v39;
    goto LABEL_71;
  }

  *(this + 46) = 0;
  v14 = CFStringGetLength(MutableCopy);
  v15 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
  if (v15)
  {
    v16 = v15;
    v17 = CFStringGetLength(MutableCopy);
    if (CFStringGetCString(MutableCopy, v16, v17 + 1, 0))
    {
      v18 = opendir(v16);
      free(v16);
      if (v18)
      {
        while (1)
        {
          v20 = readdir(v18);
          if (!v20)
          {
            break;
          }

          d_name = v20->d_name;
          if (v20->d_name[0] != 46)
          {
            v22 = CFStringCreateMutableCopy(v2, 512, MutableCopy);
            if (v22)
            {
              v23 = v22;
              CFStringAppendCString(v22, "/", 0);
              CFStringAppendCString(v23, d_name, 0);
              v24 = *(this + 22);
              v25 = *(this + 46);
              *(this + 46) = v25 + 1;
              *(v24 + 8 * v25) = v23;
            }
          }
        }

        v19 = closedir(v18);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v9 >= 2)
      {
        v19 = CCLogFile::sortByFileName(this, v9);
      }

      v26 = *(this + 33);
      v27 = v9 - v26;
      if (v9 > v26)
      {
        v28 = 0;
        do
        {
          CCLogFile::deleteFile(v19, *(*(this + 22) + 8 * v28));
          *(*(this + 22) + 8 * v28++) = 0;
        }

        while (v27 != v28);
        if (v27 < v9)
        {
          v29 = 0;
          v30 = *(this + 33);
          do
          {
            *(*(this + 22) + 8 * v29) = *(*(this + 22) + 8 * v27);
            if (v27 >= v30)
            {
              *(*(this + 22) + 8 * v27) = 0;
            }

            ++v27;
            ++v29;
          }

          while (v9 != v27);
        }
      }

      if (*(this + 31))
      {
        v31 = 0;
      }

      else
      {
        v32 = *(this + 33);
        if (v9 >= v32)
        {
          v31 = v32 - 1;
        }

        else
        {
          v31 = v9;
        }
      }

      *(this + 46) = v31;
      pthread_mutex_unlock((this + 200));
      result = 1;
      goto LABEL_40;
    }

    v43 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "buildFileTables";
        *&buf[12] = 1024;
        *&buf[14] = 221;
        v44 = v43;
LABEL_92:
        _os_log_error_impl(&dword_2452A3000, v44, OS_LOG_TYPE_ERROR, "%s:%06u: CFStringGetCString failure\n", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "buildFileTables";
      *&buf[12] = 1024;
      *&buf[14] = 221;
      v44 = MEMORY[0x277D86220];
      goto LABEL_92;
    }

    if (glog_fd)
    {
      *&v49 = 0xAAAAAAAAAAAAAAAALL;
      *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v57 = v49;
      v58 = v49;
      v55 = v49;
      v56 = v49;
      v53 = v49;
      v54 = v49;
      *buf = v49;
      *&buf[16] = v49;
      memset(&v51, 0, sizeof(v51));
      v50 = 0xAAAAAAAAAAAAAAAALL;
      time(&v50);
      localtime_r(&v50, &v51);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v51);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "%s:%06u: CFStringGetCString failure\n", "buildFileTables", 221);
    }

    v46 = v16;
LABEL_81:
    free(v46);
    goto LABEL_82;
  }

  v41 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315394;
    *&buf[4] = "buildFileTables";
    *&buf[12] = 1024;
    *&buf[14] = 218;
    v42 = v41;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136315394;
    *&buf[4] = "buildFileTables";
    *&buf[12] = 1024;
    *&buf[14] = 218;
    v42 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v42, OS_LOG_TYPE_ERROR, "%s:%06u: Allocation failure\n", buf, 0x12u);
LABEL_75:
  if (glog_fd)
  {
LABEL_76:
    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v57 = v48;
    v58 = v48;
    v55 = v48;
    v56 = v48;
    v53 = v48;
    v54 = v48;
    *buf = v48;
    *&buf[16] = v48;
    memset(&v51, 0, sizeof(v51));
    v50 = 0xAAAAAAAAAAAAAAAALL;
    time(&v50);
    localtime_r(&v50, &v51);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v51);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "%s:%06u: Allocation failure\n");
  }

LABEL_82:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  pthread_mutex_unlock((this + 200));
  result = 0;
LABEL_40:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CCLogFile::freeResources(CCLogFile *this)
{
  pthread_mutex_lock((this + 200));
  CCLogFile::freeFilePathArray(this);
  pthread_mutex_unlock((this + 200));

  return pthread_mutex_destroy((this + 200));
}

void CCLogFile::freeFilePathArray(CCLogFile *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    if (!*(this + 42))
    {
      goto LABEL_6;
    }

    v3 = 0;
    do
    {
      CCLogFile::deleteFile(v2, *(*(this + 22) + 8 * v3));
      *(*(this + 22) + 8 * v3++) = 0;
    }

    while (v3 < *(this + 42));
    v2 = *(this + 22);
    if (v2)
    {
LABEL_6:
      free(v2);
      *(this + 22) = 0;
    }
  }
}

const __CFString *CCLogFile::sortByFileName(const __CFString *this, int a2)
{
  v2 = a2 - 1;
  if (a2 != 1)
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    do
    {
      while (1)
      {
        data = v3[5].data;
        this = *&data[8 * v4];
        v7 = v4 + 1;
        if (!this)
        {
          break;
        }

        v8 = *&data[8 * v7];
        if (!v8)
        {
          break;
        }

        this = CFStringCompare(this, v8, 0);
        if (this != 1)
        {
          break;
        }

        v9 = v3[5].data;
        v10 = *&v9[8 * v4];
        *&v9[8 * v4] = *&v9[8 * v7];
        *&v3[5].data[8 * v7] = v10;
        v5 = v7 < v2;
        if (v7 >= v2)
        {
          v4 = 0;
        }

        else
        {
          ++v4;
        }
      }

      v11 = (v7 < v2) | v5;
      if (v7 >= v2)
      {
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      v5 &= v7 < v2;
    }

    while ((v11 & 1) != 0);
  }

  return this;
}

uint64_t CCLogFile::addFile(CCLogFile *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = pthread_mutex_lock((this + 200));
  v3 = (*(this + 46) + 1) % *(this + 33);
  v4 = *(*(this + 22) + 8 * v3);
  if (v4)
  {
    CCLogFile::deleteFile(v2, v4);
    *(*(this + 22) + 8 * v3) = 0;
  }

  if (*(this + 9) != -1)
  {
    (*(*this + 88))(this);
  }

  Length = CFStringGetLength(*(this + 11));
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  v7 = *(this + 11);
  v8 = CFStringGetLength(v7);
  CFStringGetCString(v7, v6, v8 + 1, 0);
  v9 = (*(*this + 136))(this, v6);
  if (v6)
  {
    free(v6);
  }

  v10 = CFStringGetLength(v9);
  v11 = malloc_type_malloc(v10 + 1, 0x100004077774924uLL);
  v12 = CFStringGetLength(v9);
  CFStringGetCString(v9, v11, v12 + 1, 0);
  v13 = isSeedAndiOS();
  if (v13)
  {
    if (deviceUnlockedSinceBoot(v13, v14))
    {
      remove(v11, v15);
      v16 = open_dprotected_np(v11, 1538, 3, 0, 420);
      goto LABEL_11;
    }

    v19 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v20 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v20 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v20, OS_LOG_TYPE_DEFAULT, "CCLogFile::addFile: No log before device first unlocked for PROTECTION_CLASS_C\n", buf, 2u);
LABEL_27:
    if (glog_fd)
    {
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v22;
      v34 = v22;
      v31 = v22;
      v32 = v22;
      v29 = v22;
      v30 = v22;
      *buf = v22;
      v28 = v22;
      memset(&v26, 0, sizeof(v26));
      v25 = 0xAAAAAAAAAAAAAAAALL;
      time(&v25);
      localtime_r(&v25, &v26);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "CCLogFile::addFile: No log before device first unlocked for PROTECTION_CLASS_C\n");
    }

    goto LABEL_29;
  }

  v16 = open(v11, 1538, 420);
LABEL_11:
  *(this + 9) = v16;
  *(this + 30) = 0;
  if (v16 != -1)
  {
    (*(*this + 168))(this, *(this + 32));
    if (v11)
    {
      free(v11);
    }

    *(this + 1288) = 0;
    *(this + 24) = 0;
    (*(**(this + 2) + 56))(*(this + 2));
    *(*(this + 22) + 8 * v3) = v9;
    *(this + 46) = v3;
    v9 = 1;
    goto LABEL_33;
  }

  v17 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    *&buf[4] = v11;
    v18 = v17;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    *&buf[4] = v11;
    v18 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v18, OS_LOG_TYPE_ERROR, "CCLogFile::addFile Failed to create %s\n", buf, 0xCu);
LABEL_22:
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
    v28 = v21;
    memset(&v26, 0, sizeof(v26));
    v25 = 0xAAAAAAAAAAAAAAAALL;
    time(&v25);
    localtime_r(&v25, &v26);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v26);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogFile::addFile Failed to create %s\n");
  }

LABEL_29:
  if (v11)
  {
    free(v11);
  }

  if (v9)
  {
    CFRelease(v9);
    v9 = 0;
  }

LABEL_33:
  pthread_mutex_unlock((this + 200));
  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t CCLogFile::configureLogOptions(uint64_t a1, const char *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v5 = v4;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v5 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v5, OS_LOG_TYPE_DEFAULT, "CCLogFile::configureLogOptions Configuration is %s\n", buf, 0xCu);
LABEL_7:
  if (glog_fd)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v6;
    v40 = v6;
    v37 = v6;
    v38 = v6;
    v35 = v6;
    v36 = v6;
    *buf = v6;
    v34 = v6;
    memset(&v32, 0, sizeof(v32));
    v31 = 0xAAAAAAAAAAAAAAAALL;
    time(&v31);
    localtime_r(&v31, &v32);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogFile::configureLogOptions Configuration is %s\n", a2);
  }

  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 124);
    v9 = *(a1 + 128);
    v10 = *(a1 + 132);
    *buf = 67109632;
    *&buf[4] = v8;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    *&buf[14] = 1024;
    LODWORD(v34) = v10;
    v11 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 124);
    v13 = *(a1 + 128);
    v14 = *(a1 + 132);
    *buf = 67109632;
    *&buf[4] = v12;
    *&buf[8] = 1024;
    *&buf[10] = v13;
    *&buf[14] = 1024;
    LODWORD(v34) = v14;
    v11 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v11, OS_LOG_TYPE_DEFAULT, "CCLogFile::configureLogOptions Current Log Type:%d, File Size=%u, Max Number Of Files:%u\n", buf, 0x14u);
LABEL_15:
  if (glog_fd)
  {
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v15;
    v40 = v15;
    v37 = v15;
    v38 = v15;
    v35 = v15;
    v36 = v15;
    *buf = v15;
    v34 = v15;
    memset(&v32, 0, sizeof(v32));
    v31 = 0xAAAAAAAAAAAAAAAALL;
    time(&v31);
    localtime_r(&v31, &v32);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogFile::configureLogOptions Current Log Type:%d, File Size=%u, Max Number Of Files:%u\n", *(a1 + 124), *(a1 + 128), *(a1 + 132));
  }

  pthread_mutex_lock((a1 + 200));
  v31 = 0;
  strlcpy((a1 + 264), a2, 0x400uLL);
  v16 = strtok_r((a1 + 264), ",", &v31);
  if (*v16 == 83 && !v16[1])
  {
    *(a1 + 124) = 0xFFFFFFFF00000001;
    v19 = 1;
  }

  else
  {
    *(a1 + 124) = 0;
    v17 = strtok_r(0, ",", &v31);
    if (v17)
    {
      *(a1 + 128) = strtol(v17, 0, 0) << 10;
    }

    v18 = strtok_r(0, ",", &v31);
    if (v18)
    {
      v19 = strtol(v18, 0, 0);
    }

    else
    {
      v19 = *(a1 + 132);
    }
  }

  v20 = v19 + 1;
  *(a1 + 132) = v19 + 1;
  v21 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v22 = *(a1 + 124);
    v23 = *(a1 + 128);
    *buf = 67109632;
    *&buf[4] = v22;
    *&buf[8] = 1024;
    *&buf[10] = v23;
    *&buf[14] = 1024;
    LODWORD(v34) = v20;
    v24 = v21;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v25 = *(a1 + 124);
    v26 = *(a1 + 128);
    *buf = 67109632;
    *&buf[4] = v25;
    *&buf[8] = 1024;
    *&buf[10] = v26;
    *&buf[14] = 1024;
    LODWORD(v34) = v20;
    v24 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v24, OS_LOG_TYPE_DEFAULT, "CCLogFile::configureLogOptions Configured Log Type:%d, File Size=%u, Max Number Of Files:%u\n", buf, 0x14u);
LABEL_31:
  if (glog_fd)
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v27;
    v40 = v27;
    v37 = v27;
    v38 = v27;
    v35 = v27;
    v36 = v27;
    *buf = v27;
    v34 = v27;
    memset(&v32, 0, sizeof(v32));
    v30 = 0xAAAAAAAAAAAAAAAALL;
    time(&v30);
    localtime_r(&v30, &v32);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v32);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogFile::configureLogOptions Configured Log Type:%d, File Size=%u, Max Number Of Files:%u\n", *(a1 + 124), *(a1 + 128), *(a1 + 132));
  }

  pthread_mutex_unlock((a1 + 200));
  CCLogFile::buildFileTables(a1);
  v28 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CCLogFile::closeFile(CCLogFile *this)
{
  (*(**(this + 2) + 64))(*(this + 2));
  CCLogFile::sendTelemetry(this);
  (*(*this + 176))(this);
  fsync(*(this + 9));
  close(*(this + 9));
  *(this + 9) = -1;
  return 1;
}

void CCLogFile::sendTelemetry(CCLogFile *this)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!MEMORY[0x2822170A8])
  {
    v3 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v4 = v3;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v4 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_2452A3000, v4, OS_LOG_TYPE_DEFAULT, "CCLogFile::sendTelemetry analytics_send_event_lazy weak link import failed", buf, 2u);
LABEL_11:
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
      dprintf(glog_fd, "CCLogFile::sendTelemetry analytics_send_event_lazy weak link import failed");
    }

    goto LABEL_13;
  }

  if (*(this + 18) != 0.0 && *(this + 19) != 0.0)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZN9CCLogFile13sendTelemetryEv_block_invoke;
    v15 = &__block_descriptor_tmp_2331;
    v16 = this;
    v2 = analytics_send_event_lazy();
    goto LABEL_14;
  }

LABEL_13:
  v2 = 0;
LABEL_14:
  v6 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109120;
    *&buf[4] = v2;
    v7 = v6;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109120;
    *&buf[4] = v2;
    v7 = MEMORY[0x277D86220];
  }

  _os_log_impl(&dword_2452A3000, v7, OS_LOG_TYPE_DEFAULT, "CCLogFile::sendTelemetry returned %d", buf, 8u);
LABEL_20:
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
    dprintf(glog_fd, "CCLogFile::sendTelemetry returned %d", v2);
  }

  *(this + 24) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 30) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

xpc_object_t ___ZN9CCLogFile13sendTelemetryEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  CCFile::populateCommonTelemetryDictionary(v1, v2);
  xpc_dictionary_set_uint64(v2, "MaxFileSize", *(v1 + 128));
  xpc_dictionary_set_uint64(v2, "MaxNumberOfFiles", *(v1 + 132));
  v3 = *(v1 + 124);
  if (v3 > 2)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_278E309D0[v3];
  }

  xpc_dictionary_set_string(v2, "LogType", v4);
  xpc_dictionary_set_uint64(v2, "PipeSize", *(v1 + 136));
  xpc_dictionary_set_uint64(v2, "LogEvents", *(v1 + 160));
  v5 = *(v1 + 192);
  if ((v5 & 0x8000000000000000) == 0)
  {
    xpc_dictionary_set_uint64(v2, "LogFileSize", v5);
  }

  xpc_dictionary_set_uint64(v2, "LogTimeSpan", (*(v1 + 152) - *(v1 + 144)));
  return v2;
}

uint64_t CCLogFile::writeCommentEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 && (*(a1 + 164) & 2) != 0)
  {
    return 1;
  }

  (*(**(a1 + 16) + 80))(*(a1 + 16));
  ++*(a1 + 160);
  if (*(a1 + 1288) != 1)
  {
    return 1;
  }

  *(a1 + 120) = 2;

  return CCLogFile::addFile(a1);
}

uint64_t CCLogFile::writeLog(uint64_t a1)
{
  (*(**(a1 + 16) + 72))(*(a1 + 16));
  ++*(a1 + 160);
  if (*(a1 + 1288) != 1)
  {
    return 1;
  }

  *(a1 + 120) = 2;

  return CCLogFile::addFile(a1);
}

uint64_t CCLogFile::openFile(CCLogFile *this, const char *a2)
{
  if (*(this + 31))
  {
    v3 = *(*(this + 22) + 8 * *(this + 46));
    if (v3)
    {
      Length = CFStringGetLength(v3);
      v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      v6 = *(*(this + 22) + 8 * *(this + 46));
      v7 = CFStringGetLength(v6);
      CFStringGetCString(v6, v5, v7 + 1, 0);
      v8 = open(v5, 10);
      *(this + 9) = v8;
      v9 = v8 != -1;
      if (v8 != -1)
      {
        (*(*this + 168))(this, *(this + 32));
      }

      if (v5)
      {
        free(v5);
      }
    }

    else
    {
      v9 = CCLogFile::addFile(this);
    }

    pthread_mutex_lock((this + 200));
    *(this + 46) = 0;
    pthread_mutex_unlock((this + 200));
    return v9;
  }

  else
  {

    return CCLogFile::addFile(this);
  }
}

uint64_t CCLogFile::ccfree(CCLogFile *this)
{
  CCLogFile::freeResources(this);
  result = CCFile::freeResources(this);
  if (this)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

uint64_t CCLogFile::withRegistryEntry(CCLogFile *this)
{
  v1 = this;
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

  _os_log_impl(&dword_2452A3000, v3, OS_LOG_TYPE_DEFAULT, "CCLogFile::withRegistryEntry()\n", buf, 2u);
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
    dprintf(glog_fd, "CCLogFile::withRegistryEntry()\n");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, @"LogType", *MEMORY[0x277CBECE8], 0);
  valuePtr = -86;
  CFNumberGetValue(CFProperty, kCFNumberSInt8Type, &valuePtr);
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  v6 = valuePtr;
  if (valuePtr < 2)
  {
    operator new();
  }

  v7 = coreCaptureOsLog;
  if (coreCaptureOsLog)
  {
    if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 67109120;
    *&buf[4] = v6;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 67109120;
    *&buf[4] = v6;
    v8 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2452A3000, v8, OS_LOG_TYPE_ERROR, "CCLogFile::withRegistryEntry() Invalid log type %d\n", buf, 8u);
LABEL_17:
  if (glog_fd)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v9;
    v22 = v9;
    v19 = v9;
    v20 = v9;
    v17 = v9;
    v18 = v9;
    *buf = v9;
    v16 = v9;
    memset(&v14, 0, sizeof(v14));
    v13 = 0xAAAAAAAAAAAAAAAALL;
    time(&v13);
    localtime_r(&v13, &v14);
    strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v14);
    dprintf(glog_fd, "%s ", buf);
    dprintf(glog_fd, "CCLogFile::withRegistryEntry() Invalid log type %d\n", valuePtr);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CCLogFile::resetTelemetryParameters(uint64_t this)
{
  *(this + 192) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *(this + 120) = 0;
  return this;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}