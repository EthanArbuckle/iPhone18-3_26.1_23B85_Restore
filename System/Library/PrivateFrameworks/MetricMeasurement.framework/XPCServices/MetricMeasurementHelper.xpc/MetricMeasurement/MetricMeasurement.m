int main(int argc, const char **argv, const char **envp)
{
  unsetenv("TMPDIR");
  _set_user_dir_suffix();
  v3 = objc_autoreleasePoolPush();
  v4 = _MXMGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 infoDictionary];
    v7 = [v6 objectForKeyedSubscript:@"CFBundleName"];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting %@.", &v11, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = +[NSXPCListener serviceListener];
  [v9 setDelegate:v8];
  objc_autoreleasePoolPop(v3);
  [v9 resume];

  return 0;
}

uint64_t uncache_regular_file(int a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = mmap(0, a2, 1, 1, a1, 0);
  if (v3 == -1)
  {
    sub_100005C68();
  }

  else
  {
    v4 = v3;
    if (msync(v3, a2, 18) != -1)
    {
      munmap(v4, a2);
      return 0;
    }

    v6 = _MXMGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error while trying to uncache: msync", v7, 2u);
    }

    munmap(v4, a2);
  }

  return 1;
}

uint64_t uncache_dir2(DIR *a1)
{
  v17 = 0;
  v2 = open(".", 0);
  if (v2 == -1)
  {
    v13 = _MXMGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error while trying to uncache: open(., ...)", __str, 2u);
    }

    return 1;
  }

  v3 = v2;
  v4 = dirfd(a1);
  if (fchdir(v4) == -1)
  {
    v14 = _MXMGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      v15 = "Error while trying to uncache: fchdir(dirfd(dirp))";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, __str, 2u);
    }
  }

  else
  {
    v5 = malloc_type_malloc(0x418uLL, 0x1000040D92F83E5uLL);
    v6 = readdir_r(a1, v5, &v17);
    v7 = v6 == 0;
    if (!v6 && v17 == v5)
    {
      do
      {
        v8 = v5->d_name[0];
        if (v8 != 46)
        {
          goto LABEL_36;
        }

        v8 = v5->d_name[1];
        if (!v5->d_name[1])
        {
          goto LABEL_14;
        }

        if (v8 == 46)
        {
          if (!v5->d_name[2])
          {
            goto LABEL_14;
          }
        }

        else
        {
LABEL_36:
          if (46 == v8)
          {
            goto LABEL_14;
          }
        }

        if (uncache_filename(v5->d_name, 0))
        {
          goto LABEL_29;
        }

        v9 = getxattr(v5->d_name, "com.apple.ResourceFork", 0, 0, 0, 32);
        if (v9 != -1)
        {
          v10 = v9;
          snprintf(__str, 0x400uLL, "%s/..namedfork/rsrc", v5->d_name);
          if (uncache_filename(__str, v10))
          {
            goto LABEL_29;
          }
        }

LABEL_14:
        v11 = readdir_r(a1, v5, &v17);
        v7 = v11 == 0;
      }

      while (!v11 && v17 == v5);
    }

    if (!v7)
    {
      v16 = _MXMGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *__str = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error while trying to uncache: readdir_r", __str, 2u);
      }

LABEL_29:
      free(v5);
      fchdir(v3);
      goto LABEL_30;
    }

    free(v5);
    if (fchdir(v3) != -1)
    {
      close(v3);
      return 0;
    }

    v14 = _MXMGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      v15 = "Error while trying to uncache: fchdir(oldcwdfd)";
      goto LABEL_24;
    }
  }

LABEL_30:
  close(v3);
  return 1;
}

uint64_t uncache_filename(const char *a1, size_t a2)
{
  memset(&v21.st_size, 0, 48);
  v4 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v4 == -1)
  {
    v10 = _MXMGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Error while trying to uncache: open";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }

LABEL_13:

    return 1;
  }

  v5 = v4;
  if (fstat(v4, &v21) == -1)
  {
    v10 = _MXMGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Error while trying to uncache: fstat";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = v21.st_mode & 0xF000;
  if (v6 == 0x8000)
  {
    if (a2)
    {
      st_size = a2;
    }

    else
    {
      st_size = v21.st_size;
    }

    if (!uncache_regular_file(v5, st_size))
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v6 != 0x4000)
  {
    v15 = _MXMGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v23) = v21.st_mode;
      v16 = "Cannot uncache file of mode 0%o";
      v17 = v15;
      v18 = OS_LOG_TYPE_INFO;
      v19 = 8;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
    }

LABEL_26:

    goto LABEL_27;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    v15 = _MXMGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Error while trying to uncache: opendir";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 2;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v8 = v7;
  v9 = uncache_dir2(v7);
  closedir(v8);
  if (v9)
  {
LABEL_27:
    v20 = _MXMGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = a1;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Uncache failed with filepath: %s", buf, 0xCu);
    }

    close(v5);
    return 1;
  }

LABEL_18:
  close(v5);
  v13 = _MXMGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = a1;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Uncached filename: %s", buf, 0xCu);
  }

  return 0;
}

uint64_t _uncacheFilepath(void *a1)
{
  v1 = a1;
  uncache_filename([v1 UTF8String], 0);

  return 0;
}

void sub_100001EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = _MXMGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Exception caught while trying to uncache: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100001E74);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MXMGetLog()
{
  if (qword_100011B10 != -1)
  {
    sub_100005CDC();
  }

  return qword_100011B08;
}

void sub_100001F7C(id a1)
{
  qword_100011B08 = os_log_create("com.apple.metricmeasurement", "Default");

  _objc_release_x1();
}

uint64_t _MXMGetInstrumentsLog()
{
  if (qword_100011B20 != -1)
  {
    sub_100005CF0();
  }

  return qword_100011B18;
}

void sub_100001FF8(id a1)
{
  qword_100011B18 = os_log_create("com.apple.metricmeasurement", "PointsOfInterest");

  _objc_release_x1();
}

void sub_1000030EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003128(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v13.tv_sec = 0;
  v13.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v13);
  v9 = (v13.tv_sec - *(a1 + 56));
  [*(a1 + 32) add:a4];
  v10 = [*(a1 + 32) checkQuiesced:v9];
  v11 = 0;
  if (v8)
  {
    goto LABEL_10;
  }

  if (v10)
  {
    v12 = _MXMGetLog();
    v11 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Successfully quiesced within: %f", buf, 0xCu);
    }

LABEL_9:

LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) = v11;
    [v7 cancel];
    goto LABEL_11;
  }

  if (*(a1 + 72) <= v9)
  {
    v12 = _MXMGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Timed out: %f", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_9;
  }

LABEL_11:
}

void sub_1000043B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000043DC(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSMutableDictionary dictionary];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = v14 = 0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  sysmon_table_apply();
  [*(a1 + 32) logTopUsageProcesses:{v8, _NSConcreteStackBlock, 3221225472, sub_10000455C, &unk_10000C538}];
  [*(a1 + 32) convertToPercent:*(a1 + 64) ncpus:v12[3]];
  v5 = 100.0 - v4;
  v6 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(v6 + 16))(v6, WeakRetained, *(a1 + 40), v5);

  _Block_object_dispose(&v11, 8);
}

void sub_100004540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000455C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000046CC;
  v15 = sub_1000046DC;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = *(a1 + 48);
  sysmon_row_apply();
  v4 = *(a1 + 32);
  [*(a1 + 40) convertToPercent:*(a1 + 56) ncpus:v8[3]];
  v5 = [NSNumber numberWithDouble:?];
  [v4 setValue:v5 forKey:v12[5]];

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void sub_1000046A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000046CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000046E4(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 == 51)
  {
    xdouble = v5;
    v9 = xpc_get_type(v5) == &_xpc_type_double;
    v5 = xdouble;
    if (v9)
    {
      value = xpc_double_get_value(xdouble);
      v5 = xdouble;
      *(*(a1[5] + 8) + 24) = value;
      *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 24) + *(*(a1[6] + 8) + 24);
    }
  }

  else if (a2 == 13)
  {
    xdoublea = v5;
    v6 = xpc_to_foundation(v5);
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = xdoublea;
  }
}

id xpc_to_foundation(void *a1)
{
  v1 = a1;
  type = xpc_get_type(v1);
  if (type == &_xpc_type_array)
  {
    [NSMutableArray arrayWithCapacity:xpc_array_get_count(v1)];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100004FDC;
    v4 = applier[3] = &unk_10000C5C8;
    v13 = v4;
    xpc_array_apply(v1, applier);
    v5 = v13;
    goto LABEL_12;
  }

  if (type != &_xpc_type_BOOL)
  {
    if (type == &_xpc_type_date)
    {
      value = xpc_date_get_value(v1);
      v7 = dword_100011B2C;
      if (!dword_100011B2C)
      {
        mach_timebase_info(&dword_100011B28);
        v7 = dword_100011B2C;
      }

      v8 = (value * dword_100011B28 / v7) / 1000000000.0;
LABEL_19:
      v3 = [NSNumber numberWithDouble:v8];
      goto LABEL_20;
    }

    if (type != &_xpc_type_dictionary)
    {
      if (type != &_xpc_type_double)
      {
        if (type == &_xpc_type_int64)
        {
          v3 = [NSNumber numberWithLongLong:xpc_int64_get_value(v1)];
        }

        else if (type == &_xpc_type_string)
        {
          v3 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v1)];
        }

        else
        {
          if (type == &_xpc_type_uint64)
          {
            [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
          }

          else
          {
            +[NSNull null];
          }
          v3 = ;
        }

        goto LABEL_20;
      }

      v8 = xpc_double_get_value(v1);
      goto LABEL_19;
    }

    [NSMutableDictionary dictionaryWithCapacity:xpc_dictionary_get_count(v1)];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005030;
    v4 = v10[3] = &unk_10000C5F0;
    v11 = v4;
    xpc_dictionary_apply(v1, v10);
    v5 = v11;
LABEL_12:

    goto LABEL_21;
  }

  v3 = [NSNumber numberWithBool:xpc_BOOL_get_value(v1)];
LABEL_20:
  v4 = v3;
LABEL_21:

  return v4;
}

int64_t sub_100004CA8(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  return v6 < v8;
}

double MachAbsoluteTimeToTimeInterval(uint64_t a1)
{
  v2 = dword_100011B2C;
  if (!dword_100011B2C)
  {
    mach_timebase_info(&dword_100011B28);
    v2 = dword_100011B2C;
  }

  return (dword_100011B28 * a1 / v2) / 1000000000.0;
}

uint64_t sub_100004FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = xpc_to_foundation(a3);
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];

  return 1;
}

uint64_t sub_100005030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = xpc_to_foundation(a3);
  v6 = *(a1 + 32);
  v7 = [NSString stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

id _fullProcessNameForPid()
{
  v0 = __chkstk_darwin();
  if (v0 < 1 || (v1 = v0, bzero(buffer, 0x1000uLL), proc_pidpath(v1, buffer, 0x1000u) < 1))
  {
    v2 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v2 = [NSString stringWithUTF8String:basename(buffer)];
  }

  return v2;
}

uint64_t _processIdentifierWithProcessName(void *a1)
{
  v1 = a1;
  *__error() = 0;
  v2 = proc_listpids(1u, 0, 0, 0);
  if ((v2 & 0x80000000) != 0)
  {
    v16 = _MXMGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *__error();
      *buf = 67109120;
      *v23 = v17;
      v18 = "Failed to read pids: %d";
      v19 = v16;
      v20 = 8;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
    }

LABEL_23:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v3 = v2;
  v4 = v2;
  v5 = malloc_type_malloc(v2, 0x100004052888210uLL);
  if (!v5)
  {
    v16 = _MXMGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v18 = "Failed to allocate buffer";
      v19 = v16;
      v20 = 2;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v6 = v5;
  memset(v5, 255, v4);
  v7 = proc_listpids(1u, 0, v6, v3);
  v8 = _MXMGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v23 = v1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Searching for procName: %@", buf, 0xCu);
  }

  if (v7 < 4)
  {
LABEL_15:
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v7 >> 2 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 >> 2;
    }

    v10 = v6;
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 >= 1)
      {
        v13 = _fullProcessNameForPid();
        v14 = _MXMGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v23 = v13;
          *&v23[8] = 1024;
          *&v23[10] = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Checking %@ (%d)", buf, 0x12u);
        }

        v15 = [v13 isEqualToString:v1];
        if (v15)
        {
          break;
        }
      }

      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  free(v6);
  v16 = _MXMGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v23 = v11;
    *&v23[4] = 2112;
    *&v23[6] = v1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found pid (%d) for process name: %@", buf, 0x12u);
  }

LABEL_24:

  return v11;
}

uint64_t _terminateProcess(void *a1)
{
  v1 = a1;
  if (os_variant_allows_internal_security_policies())
  {
    v2 = _processIdentifierWithProcessName(v1);
    if (v2 >= 1)
    {
      v3 = v2;
      v4 = [RBSProcessIdentifier identifierWithPid:v2];
      v5 = [RBSProcessPredicate predicateMatchingIdentifier:v4];

      v6 = [objc_alloc_init(RBSTerminateContext) initWithExplanation:@"Terminating process between performance test iterations via MetricMeasurement"];
      [v6 setReportType:0];
      v7 = [[RBSTerminateRequest alloc] initWithPredicate:v5 context:v6];
      v8 = v7;
      if (v7)
      {
        v15 = 0;
        v9 = [v7 execute:&v15];
        v10 = v15;
        v11 = _MXMGetLog();
        v12 = v11;
        if (v9)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v17 = v1;
            v18 = 1024;
            v19 = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Successfully terminated process with name: %@ (%d)", buf, 0x12u);
          }

          v13 = 1;
          goto LABEL_19;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v17 = v1;
          v18 = 1024;
          v19 = v3;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error occurred when trying to terminate process with name: %@ (%d). Error: %@", buf, 0x1Cu);
        }
      }

      else
      {
        v10 = _MXMGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v17 = v1;
          v18 = 1024;
          v19 = v3;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create RBSTerminateRequest for process name: %@ (%d)", buf, 0x12u);
        }
      }

      v13 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v5 = _MXMGetLog();
    v13 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unable to find process ID for process name: %@. Skipping termination.", buf, 0xCu);
    }
  }

  else
  {
    v5 = _MXMGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AppleInternal policies must be enabled for successful process termination.", buf, 2u);
    }

    v13 = 0;
  }

LABEL_20:

  return v13;
}

void sub_100005C68()
{
  perror("mmap");
  v0 = _MXMGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Error while trying to uncache: mmap", v1, 2u);
  }
}