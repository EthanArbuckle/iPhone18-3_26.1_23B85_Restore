id sub_1000035C0(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_10000371C(uint64_t a1, void *a2)
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

uint64_t MBSQLiteJournalSuffixes()
{
  if (qword_10002A100 != -1)
  {
    sub_1000144D8();
  }

  return qword_10002A0F8;
}

void sub_100005584(id a1)
{
  v1 = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", 5);
  v2 = dlopen("/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport", 5);
  off_10002A108 = dlsym(v2, "CPGetDeviceRegionCode");
  off_10002A110 = dlsym(v1, "IOServiceGetMatchingService");
  off_10002A118 = dlsym(v1, "IOServiceMatching");
  qword_10002A120 = dlsym(v1, "kIOMainPortDefault");
  v3 = off_10002A110;
  v4 = *qword_10002A120;
  v5 = off_10002A118("AppleBaseband");
  v6 = v3(v4, v5);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0xFFFFFFFD)
  {
    v6 = mach_port_deallocate(mach_task_self_, v6);
  }

  byte_10002A128 = (v7 < 0xFFFFFFFE) & [off_10002A108(v6) isEqualToString:@"CH"];
}

uint64_t MBMobileUID()
{
  result = qword_100029EC8;
  if (qword_100029EC8 < 0)
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
    qword_100029EC8 = result;
  }

  return result;
}

uint64_t sub_1000058AC(uint64_t a1)
{
  qword_10002A138 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100005A40(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 40) count];
  if (result == 1)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    class_getName(v4);
    v5 = os_transaction_create();
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    return _objc_release_x1();
  }

  return result;
}

void sub_100005B50(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 40) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;

    v4 = *(*(a1 + 32) + 16);
    if (v4)
    {

      dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void sub_100005DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005DE4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v2, v3, objc_opt_class(), 0];
  [v1 setClasses:v4 forSelector:"runEncodingTask:reply:" argumentIndex:0 ofReply:0];

  v5 = qword_10002A148;
  qword_10002A148 = v1;
}

uint64_t sub_100005EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _removeConnection:WeakRetained];
  }

  return _objc_release_x1();
}

void sub_100005F98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (!v2)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      dispatch_suspend(v4);
      v1 = *(a1 + 32);
      v2 = *(v1 + 24);
    }

    else
    {
      v2 = 0;
    }
  }

  *(v1 + 24) = v2 + 1;
}

void sub_10000606C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v1 + 24) = v2 - 1;
    v4 = *(a1 + 32);
    if (*(v4 + 24) <= 0)
    {
      v5 = *(v4 + 16);
      if (!v5)
      {
        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initializing idle timer", buf, 2u);
          _MBLog(@"I ", "Initializing idle timer", v7, v8, v9, v10, v11, v12, v24);
        }

        v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 8));
        v14 = *(a1 + 32);
        v15 = *(v14 + 16);
        *(v14 + 16) = v13;

        v4 = *(a1 + 32);
        v5 = *(v4 + 16);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006230;
      handler[3] = &unk_1000248C0;
      handler[4] = v4;
      dispatch_source_set_event_handler(v5, handler);
      v16 = dispatch_time(0, 300000000000);
      dispatch_source_set_timer(*(*(a1 + 32) + 16), v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(*(a1 + 32) + 16));
    }
  }

  else
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Over-released idle timer", buf, 2u);
      _MBLog(@"F ", "Over-released idle timer", v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

void sub_100006230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

id MBTemporaryPath()
{
  if (qword_10002A158 != -1)
  {
    sub_100014528();
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000066F8;
  v8 = sub_100006708;
  v9 = 0;
  v0 = sub_100006710();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006754;
  block[3] = &unk_100024908;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100006638(id a1)
{
  strcpy(v4, "/var/tmp/backupd-XXXXXXXXXXXXXXX");
  v1 = mkdtemp(v4);
  qword_10002A160 = v1;
  if (!v1)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (mkdtemp)";
    goto LABEL_6;
  }

  qword_10002A160 = strdup(v1);
  if (!qword_10002A160)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (strdup)";
LABEL_6:
    objc_exception_throw([(MBException *)v2 initWithCode:1 format:v3]);
  }
}

uint64_t sub_1000066F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100006710()
{
  if (qword_10002A170 != -1)
  {
    sub_10001453C();
  }

  v1 = qword_10002A168;

  return v1;
}

void sub_100006754(uint64_t a1)
{
  if (!qword_10002A160)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Unable to create /var/tmp/backupd-XXXXXXXXXX directory"]);
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", qword_10002A160);
  if (mktemp(__str))
  {
    v2 = [[NSString alloc] initWithUTF8String:__str];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 67109120;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "mktemp failed: %{errno}d", buf, 8u);
      v6 = __error();
      _MBLog(@"E ", "mktemp failed: %{errno}d", v7, v8, v9, v10, v11, v12, *v6);
    }
  }
}

void sub_10000689C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBTemporaryPath", v3);
  v2 = qword_10002A168;
  qword_10002A168 = v1;
}

NSMutableString *MBStringWithArray(void *a1)
{
  v2 = [NSMutableString stringWithString:@"["];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([(NSMutableString *)v2 length]!= 1)
      {
        [(NSMutableString *)v2 appendString:@", "];
      }

      [(NSMutableString *)v2 appendString:MBStringWithObject(v5)];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [(NSMutableString *)v2 appendString:@"]"];
  return v2;
}

NSMutableString *MBStringWithObject(void *a1)
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
            return [NSString stringWithFormat:@"%@", a1];
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
      *(v5 - 1) = a0123456789abcd[v8 >> 4];
      if (v6 < a2)
      {
        *v5 = a0123456789abcd[v7 & 0xF];
      }

      v9 = v6 + 1;
      v6 += 2;
      v5 += 2;
    }

    while (v9 < a2);
  }

  v10 = [[NSString alloc] initWithCharactersNoCopy:v4 length:a2 freeWhenDone:1];

  return v10;
}

id MBStringWithDate(id result)
{
  if (result)
  {
    return [NSDateFormatter localizedStringFromDate:result dateStyle:1 timeStyle:2];
  }

  return result;
}

NSMutableString *MBStringWithDictionary(void *a1)
{
  v2 = [NSMutableString stringWithString:@"{"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([(NSMutableString *)v2 length]!= 1)
        {
          [(NSMutableString *)v2 appendString:@", "];
        }

        -[NSMutableString appendFormat:](v2, "appendFormat:", @"%@: %@", v7, MBStringWithObject([a1 objectForKeyedSubscript:v7]));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [(NSMutableString *)v2 appendString:@"}"];
  return v2;
}

NSMutableString *MBStringWithSet(void *a1)
{
  v2 = [NSMutableString stringWithString:@"{"];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([(NSMutableString *)v2 length]!= 1)
      {
        [(NSMutableString *)v2 appendString:@", "];
      }

      [(NSMutableString *)v2 appendString:MBStringWithObject(v5)];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [(NSMutableString *)v2 appendString:@"}"];
  return v2;
}

uint64_t MBHTTPDateFormatter()
{
  if (qword_10002A178 != -1)
  {
    sub_100014550();
  }

  return qword_10002A180;
}

void sub_100006E7C(id a1)
{
  qword_10002A180 = objc_alloc_init(NSDateFormatter);
  v1 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [qword_10002A180 setLocale:v1];
  v2 = qword_10002A180;

  [v2 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss z"];
}

char *sub_100006F8C(const char *a1, void *a2, char *a3)
{
  v5 = a2;
  if (!a1)
  {
    sub_1000145D0();
  }

  v6 = v5;
  if (!v5)
  {
    sub_1000145A4();
  }

  snprintf(__str, 0x401uLL, "%s/%s_XXXXXXXXXXXXXXX", a1, [v5 fileSystemRepresentation]);
  v7 = mkdtemp(__str);
  if (v7)
  {
    a3 = strdup(v7);
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315394;
      v20 = __str;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=tmpdir= Failed to create %s directory (mkdtemp error: %d)", buf, 0x12u);
      v18 = *__error();
      _MBLog(@"E ", "=tmpdir= Failed to create %s directory (mkdtemp error: %d)", v10, v11, v12, v13, v14, v15, __str);
    }

    if (a3)
    {
      v16 = [NSString mb_stringWithFileSystemRepresentation:__str];
      *a3 = [MBError posixErrorWithPath:v16 format:@"TempDir: Failed to create directory (mkdtemp error: %d)", *__error()];

      a3 = 0;
    }
  }

  return a3;
}

uint64_t sub_100007370(const char *a1)
{
  if (!a1)
  {
    sub_1000146D4();
  }

  result = mkpath_np(a1, 0x1FFu);
  if (result != 17)
  {

    return MBMobileUID();
  }

  return result;
}

id sub_10000764C(const char *a1)
{
  if (!a1)
  {
    sub_1000147DC();
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", a1);
  mktemp(__str);
  v1 = [NSString mb_stringWithFileSystemRepresentation:__str];

  return v1;
}

uint64_t sub_100007B4C(_removefile_state *a1, uint64_t a2, void *a3)
{
  dst = 0;
  v5 = a3;
  removefile_state_get(a1, 5u, &dst);
  v6 = dst;
  v7 = [NSString stringWithUTF8String:a2];
  v8 = [MBError errorWithErrno:v6 path:v7 format:@"removefileat() error"];
  [v5 addObject:v8];

  return 0;
}

void sub_100007E64(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup.testing");
  qword_10002A188 = v1;

  sub_100007370(v1);
}

void sub_100007E9C(id a1)
{
  v1 = strdup("/var/mobile/tmp/com.apple.backup.testing");
  qword_10002A198 = v1;

  sub_100007370(v1);
}

void sub_100007ED4(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup");
  qword_10002A1A8 = v1;

  sub_100007370(v1);
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

void MBDiagnoseFile(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (atomic_fetch_add_explicit(dword_10002A1B8, 1u, memory_order_relaxed) <= 1)
  {
    sub_10000A6D4(v5);
    if (MBIsInternalInstall())
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v15 = a3;
        v16 = 1024;
        v17 = a2;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=diag= %{public}s failed with %d at %{public}@", buf, 0x1Cu);
        _MBLog(@"F ", "=diag= %{public}s failed with %d at %{public}@", v8, v9, v10, v11, v12, v13, a3);
      }
    }
  }
}

void sub_10000A6D4(void *a1)
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
    _MBLog(@"Df", "=diag= Dumping diagnostics for %{public}@ (%d)", v5, v6, v7, v8, v9, v10, v1);
  }

  v11 = [v1 fileSystemRepresentation];
  v12 = [v1 lastPathComponent];
  v13 = [v12 fileSystemRepresentation];

  v14 = [v1 stringByDeletingLastPathComponent];
  v15 = [v14 fileSystemRepresentation];

  if (v1)
  {
    if (!v11)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=diag= nil path FSR", &buf, 2u);
        v40 = "=diag= nil path FSR";
        goto LABEL_215;
      }

      goto LABEL_216;
    }

    if (!v13)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=diag= nil name FSR", &buf, 2u);
        v40 = "=diag= nil name FSR";
        goto LABEL_215;
      }

      goto LABEL_216;
    }

    if (v15)
    {
      if (access(v11, 4))
      {
        v16 = *__error();
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v16;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK) failed: %{errno}d", &buf, 8u);
          }

          _MBLog(@"Df", "=diag= access(R_OK) failed: %{errno}d", v19, v20, v21, v22, v23, v24, v16);
        }

        if (access(v11, 0))
        {
          v25 = *__error();
          v26 = MBGetDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v26;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 67109120;
              buf.f_iosize = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK) failed: %{errno}d", &buf, 8u);
            }

            _MBLog(@"Df", "=diag= access(F_OK) failed: %{errno}d", v27, v28, v29, v30, v31, v32, v25);
          }
        }

        else
        {
          v26 = MBGetDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v26;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 67109120;
              buf.f_iosize = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK): %d", &buf, 8u);
            }

            _MBLog(@"Df", "=diag= access(F_OK): %d", v47, v48, v49, v50, v51, v52, 0);
          }
        }
      }

      else
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v26;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK): %d", &buf, 8u);
          }

          _MBLog(@"Df", "=diag= access(R_OK): %d", v41, v42, v43, v44, v45, v46, 0);
        }
      }

      memset(&v624, 0, sizeof(v624));
      if (stat(v11, &v624))
      {
        v53 = *__error();
        v54 = MBGetDefaultLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v54;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "=diag= stat failed: %{errno}d", &buf, 8u);
          }

          _MBLog(@"Df", "=diag= stat failed: %{errno}d", v55, v56, v57, v58, v59, v60, v53);
        }

        st_ino = 0;
      }

      else
      {
        st_ino = v624.st_ino;
        v54 = MBGetDefaultLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v54;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67113472;
            buf.f_iosize = v624.st_dev;
            LOWORD(buf.f_blocks) = 2048;
            *(&buf.f_blocks + 2) = v624.st_ino;
            WORD1(buf.f_bfree) = 1024;
            HIDWORD(buf.f_bfree) = v624.st_mode;
            LOWORD(buf.f_bavail) = 1024;
            *(&buf.f_bavail + 2) = v624.st_nlink;
            HIWORD(buf.f_bavail) = 1024;
            LODWORD(buf.f_files) = v624.st_uid;
            WORD2(buf.f_files) = 1024;
            *(&buf.f_files + 6) = v624.st_gid;
            WORD1(buf.f_ffree) = 1024;
            HIDWORD(buf.f_ffree) = v624.st_rdev;
            LOWORD(buf.f_fsid.val[0]) = 2048;
            *(&buf.f_fsid + 2) = v624.st_atimespec.tv_sec;
            HIWORD(buf.f_owner) = 2048;
            *&buf.f_type = v624.st_atimespec.tv_nsec;
            LOWORD(buf.f_fssubtype) = 2048;
            *(&buf.f_fssubtype + 2) = v624.st_mtimespec.tv_sec;
            *&buf.f_fstypename[6] = 2048;
            *&buf.f_fstypename[8] = v624.st_mtimespec.tv_nsec;
            *buf.f_mntonname = 2048;
            *&buf.f_mntonname[2] = v624.st_ctimespec.tv_sec;
            *&buf.f_mntonname[10] = 2048;
            *&buf.f_mntonname[12] = v624.st_ctimespec.tv_nsec;
            *&buf.f_mntonname[20] = 2048;
            *&buf.f_mntonname[22] = v624.st_size;
            *&buf.f_mntonname[30] = 2048;
            *&buf.f_mntonname[32] = v624.st_blocks << 9;
            *&buf.f_mntonname[40] = 1024;
            *&buf.f_mntonname[42] = v624.st_blksize;
            *&buf.f_mntonname[46] = 1024;
            *&buf.f_mntonname[48] = v624.st_flags;
            *&buf.f_mntonname[52] = 1024;
            *&buf.f_mntonname[54] = v624.st_gen;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "=diag= stat: dev %d, ino %llu, mode 0%o, nlink %u, uid %u, gid %u, rdev %d, atime %lu.%ld, mtime %lu.%ld, ctime %lu.%ld, lgsize %lld, physize %lld, blksize %d, flags %u, gen %u", &buf, 0x92u);
          }

          st_flags = v624.st_flags;
          st_gen = v624.st_gen;
          v586 = v624.st_blocks << 9;
          st_blksize = v624.st_blksize;
          st_size = v624.st_size;
          st_ctimespec = v624.st_ctimespec;
          st_mtimespec = v624.st_mtimespec;
          st_atimespec = v624.st_atimespec;
          *(&v580 + 1) = v624.st_gid;
          st_rdev = v624.st_rdev;
          *(&v578 + 1) = v624.st_nlink;
          *&v580 = v624.st_uid;
          f_iosize = v624.st_ino;
          *&v578 = v624.st_mode;
          _MBLog(@"Df", "=diag= stat: dev %d, ino %llu, mode 0%o, nlink %u, uid %u, gid %u, rdev %d, atime %lu.%ld, mtime %lu.%ld, ctime %lu.%ld, lgsize %lld, physize %lld, blksize %d, flags %u, gen %u", v62, v63, v64, v65, v66, v67, v624.st_dev);
        }
      }

      v622 = xmmword_100018EA0;
      v623 = 0x1800000403;
      memset(v621, 0, sizeof(v621));
      v619 = 0u;
      v620 = 0u;
      v618 = 0u;
      v617 = 0u;
      v602 = v11;
      if (getattrlist(v11, &v622, &v617, 0x64uLL, 0x29u))
      {
        v68 = *__error();
        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v69;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v68;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist failed: %{errno}d", &buf, 8u);
          }

          _MBLog(@"Df", "=diag= getattrlist failed: %{errno}d", v70, v71, v72, v73, v74, v75, v68);
        }
      }

      else
      {
        if (!st_ino)
        {
          if ((BYTE7(v617) & 2) != 0)
          {
            st_ino = *(&v620 + 4);
          }

          else
          {
            st_ino = 0;
          }
        }

        if (HIDWORD(v618) != 1)
        {
          v76 = MBGetDefaultLog();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            v77 = st_ino;
            v78 = v76;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.f_bsize) = 0;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "=diag= warning: not a regular file, link info and sizes will be garbage", &buf, 2u);
            }

            _MBLog(@"Df", "=diag= warning: not a regular file, link info and sizes will be garbage", v79, v80, v81, v82, v83, v84, v568);
            st_ino = v77;
          }
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v69;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_iosize = v617;
            *(&buf.f_blocks + 2) = (DWORD1(v617) >> 1) & 1;
            LODWORD(buf.f_bfree) = DWORD2(v618);
            *(&buf.f_bfree + 6) = (DWORD1(v617) >> 3) & 1;
            HIDWORD(buf.f_bavail) = HIDWORD(v618);
            *(&buf.f_files + 2) = (DWORD1(v617) >> 25) & 1;
            buf.f_ffree = *(&v620 + 4);
            *(buf.f_fsid.val + 2) = (DWORD1(v617) >> 15) & 1;
            buf.f_owner = v619;
            *(&buf.f_type + 2) = HIWORD(DWORD1(v617)) & 1;
            buf.f_fssubtype = DWORD1(v619);
            *&buf.f_fstypename[2] = (DWORD1(v617) >> 17) & 1;
            *&buf.f_fstypename[8] = DWORD2(v619);
            *&buf.f_fstypename[14] = (DWORD1(v617) >> 18) & 1;
            *&buf.f_mntonname[4] = HIDWORD(v619);
            *&buf.f_mntonname[10] = (DWORD1(v617) >> 19) & 1;
            *&buf.f_mntonname[16] = v620;
            *&buf.f_mntonname[22] = (DWORD1(v617) >> 30) & 1;
            *&buf.f_mntonname[28] = HIDWORD(v620);
            *&buf.f_mntonname[34] = v618 & 1;
            *&buf.f_mntonname[40] = v621[0];
            *&buf.f_mntonname[46] = (v618 >> 1) & 1;
            *&buf.f_mntonname[52] = *&v621[1];
            *&buf.f_mntonname[62] = (v618 >> 10) & 1;
            *&buf.f_mntonname[68] = *&v621[3];
            *&buf.f_mntonname[78] = (DWORD1(v618) >> 3) & 1;
            *&buf.f_mntonname[84] = *&v621[5];
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
            *&buf.f_mntonname[94] = (DWORD1(v618) >> 4) & 1;
            HIWORD(buf.f_files) = 2048;
            *&buf.f_mntonname[50] = 2048;
            *&buf.f_mntonname[66] = 2048;
            *&buf.f_mntonname[82] = 2048;
            *&buf.f_mntonname[98] = 2048;
            *&buf.f_mntonname[100] = *&v621[7];
            buf.f_bsize = 67116288;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist: len %u, dev (%d)%d, type (%d)%u, fileId (%d)%llu, uid (%d)%u, gid (%d)%u, access (%d)0%o, flags (%d)0x%x, gencount (%d)%u, protclass (%d)%u, nlink (%d)%u, lgsize (%d)%lld, physize (%d)%lld, realsize (%d)%lld, linkid (%d)%llu", &buf, 0xC4u);
          }

          v599 = (DWORD1(v618) >> 4) & 1;
          v600 = *&v621[7];
          v597 = (DWORD1(v618) >> 3) & 1;
          v598 = *&v621[5];
          v595 = (v618 >> 10) & 1;
          v596 = *&v621[3];
          v593 = (v618 >> 1) & 1;
          v594 = *&v621[1];
          v591 = v618 & 1;
          v592 = v621[0];
          st_gen = (DWORD1(v617) >> 30) & 1;
          v590 = HIDWORD(v620);
          st_blksize = (DWORD1(v617) >> 19) & 1;
          st_flags = v620;
          st_size = (DWORD1(v617) >> 18) & 1;
          v586 = HIDWORD(v619);
          st_ctimespec.tv_sec = (DWORD1(v617) >> 17) & 1;
          st_ctimespec.tv_nsec = DWORD2(v619);
          st_mtimespec.tv_sec = HIWORD(DWORD1(v617)) & 1;
          st_mtimespec.tv_nsec = DWORD1(v619);
          st_atimespec.tv_sec = (DWORD1(v617) >> 15) & 1;
          st_atimespec.tv_nsec = v619;
          *(&v580 + 1) = (DWORD1(v617) >> 25) & 1;
          st_rdev = *(&v620 + 4);
          *(&v578 + 1) = (DWORD1(v617) >> 3) & 1;
          *&v580 = HIDWORD(v618);
          f_iosize = (DWORD1(v617) >> 1) & 1;
          *&v578 = DWORD2(v618);
          _MBLog(@"Df", "=diag= getattrlist: len %u, dev (%d)%d, type (%d)%u, fileId (%d)%llu, uid (%d)%u, gid (%d)%u, access (%d)0%o, flags (%d)0x%x, gencount (%d)%u, protclass (%d)%u, nlink (%d)%u, lgsize (%d)%lld, physize (%d)%lld, realsize (%d)%lld, linkid (%d)%llu", v599, st_size, *&v621[5], st_blksize, *&v621[7], st_gen, v617);
        }
      }

      f_fsid = 0;
      v85 = open(v15, 256);
      if (v85 == -1)
      {
        v95 = *__error();
        v96 = MBGetDefaultLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = v96;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 136446466;
            *&buf.f_iosize = v15;
            WORD2(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 6) = v95;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "=diag= open failed at %{public}s: %{errno}d", &buf, 0x12u);
          }

          f_iosize = v95;
          _MBLog(@"Df", "=diag= open failed at %{public}s: %{errno}d", v98, v99, v100, v101, v102, v103, v15);
        }

        if (!st_ino)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v86 = v85;
        *v603 = st_ino;
        bzero(&buf, 0x878uLL);
        if (fstatfs(v86, &buf))
        {
          v87 = *__error();
          v88 = MBGetDefaultLog();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v88 = v88;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v631.d_ino) = 136446466;
              *(&v631.d_ino + 4) = v15;
              WORD2(v631.d_seekoff) = 1024;
              *(&v631.d_seekoff + 6) = v87;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs failed at %{public}s: %{errno}d", &v631, 0x12u);
            }

            f_iosize = v87;
            _MBLog(@"Df", "=diag= fstatfs failed at %{public}s: %{errno}d", v89, v90, v91, v92, v93, v94, v15);
          }
        }

        else
        {
          f_fsid = buf.f_fsid;
          v88 = MBGetDefaultLog();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v88 = v88;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v631.d_ino) = 67112448;
              HIDWORD(v631.d_ino) = buf.f_bsize;
              LOWORD(v631.d_seekoff) = 1024;
              *(&v631.d_seekoff + 2) = buf.f_iosize;
              HIWORD(v631.d_seekoff) = 2048;
              *&v631.d_reclen = buf.f_blocks;
              *&v631.d_name[3] = 2048;
              *&v631.d_name[5] = buf.f_bfree;
              *&v631.d_name[13] = 2048;
              *&v631.d_name[15] = buf.f_bavail;
              *&v631.d_name[23] = 2048;
              *&v631.d_name[25] = buf.f_files;
              *&v631.d_name[33] = 2048;
              *&v631.d_name[35] = buf.f_ffree;
              *&v631.d_name[43] = 1024;
              *&v631.d_name[45] = buf.f_fsid.val[0];
              *&v631.d_name[49] = 1024;
              *&v631.d_name[51] = buf.f_fsid.val[1];
              *&v631.d_name[55] = 1024;
              *&v631.d_name[57] = buf.f_owner;
              *&v631.d_name[61] = 1024;
              *&v631.d_name[63] = buf.f_type;
              *&v631.d_name[67] = 1024;
              *&v631.d_name[69] = buf.f_flags;
              *&v631.d_name[73] = 1024;
              *&v631.d_name[75] = buf.f_fssubtype;
              *&v631.d_name[79] = 1024;
              *&v631.d_name[81] = buf.f_flags_ext;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs: bsize %u, iosize %d, blocks %llu, bfree %llu, bavail %llu, files %llu, ffree %llu, fsid {%d, %d}, owner %d, type %d, flags 0x%x, fssubtype %d, flags_ext 0x%x", &v631, 0x6Au);
            }

            st_ctimespec.tv_nsec = buf.f_fssubtype;
            st_size = buf.f_flags_ext;
            st_mtimespec.tv_nsec = buf.f_type;
            st_ctimespec.tv_sec = buf.f_flags;
            st_atimespec.tv_nsec = buf.f_fsid.val[1];
            st_mtimespec.tv_sec = buf.f_owner;
            st_rdev = buf.f_ffree;
            st_atimespec.tv_sec = buf.f_fsid.val[0];
            v578 = *&buf.f_blocks;
            v580 = *&buf.f_bavail;
            f_iosize = buf.f_iosize;
            _MBLog(@"Df", "=diag= fstatfs: bsize %u, iosize %d, blocks %llu, bfree %llu, bavail %llu, files %llu, ffree %llu, fsid {%d, %d}, owner %d, type %d, flags 0x%x, fssubtype %d, flags_ext 0x%x", v104, v105, v106, v107, v108, v109, buf.f_bsize);
          }
        }

        v110 = fdopendir(v86);
        if (v110)
        {
          v111 = v110;
          v112 = 0;
          while (1)
          {
            bzero(&v631, 0x418uLL);
            v615 = 0;
            v113 = readdir_r(v111, &v631, &v615);
            if (v113)
            {
              break;
            }

            if (!v615)
            {
              goto LABEL_99;
            }

            if (*v631.d_name != 46 && *v631.d_name ^ 0x2E2E | v631.d_name[2] && !strcmp(v631.d_name, v13))
            {
              d_ino = *v603;
              if (!*v603)
              {
                d_ino = v631.d_ino;
              }

              v560 = MBGetDefaultLog();
              if (os_log_type_enabled(v560, OS_LOG_TYPE_DEFAULT))
              {
                v561 = v560;
                if (os_log_type_enabled(v561, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v625) = 67110144;
                  DWORD1(v625) = v112;
                  WORD4(v625) = 1024;
                  *(&v625 + 10) = v631.d_type;
                  HIWORD(v625) = 2048;
                  v626 = v631.d_ino;
                  v627 = 1024;
                  d_namlen = v631.d_namlen;
                  v629 = 1024;
                  d_reclen = v631.d_reclen;
                  _os_log_impl(&_mh_execute_header, v561, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r found file entry (%u), type %d, ino %llu, namelen %d, reclen %d", &v625, 0x24u);
                }

                *(&v578 + 1) = v631.d_namlen;
                *&v580 = v631.d_reclen;
                f_iosize = v631.d_type;
                *&v578 = v631.d_ino;
                _MBLog(@"Df", "=diag= readdir_r found file entry (%u), type %d, ino %llu, namelen %d, reclen %d", v562, v563, v564, v565, v566, v567, v112);
              }

              closedir(v111);
              st_ino = d_ino;
              if (d_ino)
              {
                goto LABEL_104;
              }

LABEL_125:
              v625 = 0uLL;
              if (fsctl(v11, 0x40104A0EuLL, &v625, 0))
              {
                v176 = *__error();
                v177 = MBGetDefaultLog();
                if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                {
                  v177 = v177;
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v176;
                    _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO) failed: %{errno}d", &buf, 8u);
                  }

                  _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_CLONE_INFO) failed: %{errno}d", v178, v179, v180, v181, v182, v183, v176);
                }
              }

              else
              {
                v177 = MBGetDefaultLog();
                if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                {
                  v177 = v177;
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134218240;
                    *&buf.f_iosize = v625;
                    WORD2(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 6) = *(&v625 + 1);
                    _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO): flags 0x%llx, private_id %llu", &buf, 0x16u);
                  }

                  f_iosize = *(&v625 + 1);
                  _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_CLONE_INFO): flags 0x%llx, private_id %llu", v184, v185, v186, v187, v188, v189, v625);
                }
              }

              v569 = 0;
              v604 = open_dprotected_np(v11, 0, 0, 1);
              if (v604 == -1)
              {
                v198 = *__error();
                v199 = MBGetDefaultLog();
                if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v198;
                  _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "=diag= Failed to open the file raw encrypted: %{errno}d", &buf, 8u);
                  _MBLog(@"Df", "=diag= Failed to open the file raw encrypted: %{errno}d", v200, v201, v202, v203, v204, v205, v198);
                }
              }

              else
              {
                v614 = 0;
                if (fsctl(v11, 0x40084A25uLL, &v614, 8u))
                {
                  v190 = *__error();
                  v191 = MBGetDefaultLog();
                  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                  {
                    v191 = v191;
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v190;
                      _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS) failed: %{errno}d", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS) failed: %{errno}d", v192, v193, v194, v195, v196, v197, v190);
                  }
                }

                else
                {
                  v191 = MBGetDefaultLog();
                  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                  {
                    v191 = v191;
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 134217984;
                      *&buf.f_iosize = v614;
                      _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS): flags 0x%llx", &buf, 0xCu);
                    }

                    _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS): flags 0x%llx", v206, v207, v208, v209, v210, v211, v614);
                  }
                }

                v612 = 0u;
                v613 = 0u;
                v611 = 0u;
                if (fsctl(v11, 0x40304A6DuLL, &v611, 0))
                {
                  v212 = *__error();
                  v213 = MBGetDefaultLog();
                  if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                  {
                    v213 = v213;
                    if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v212;
                      _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO) failed: %{errno}d", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO) failed: %{errno}d", v214, v215, v216, v217, v218, v219, v212);
                  }
                }

                else
                {
                  v213 = MBGetDefaultLog();
                  if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                  {
                    v213 = v213;
                    if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 134219264;
                      *&buf.f_iosize = v611;
                      WORD2(buf.f_blocks) = 2048;
                      *(&buf.f_blocks + 6) = *(&v611 + 1);
                      HIWORD(buf.f_bfree) = 2048;
                      buf.f_bavail = v612;
                      LOWORD(buf.f_files) = 2048;
                      *(&buf.f_files + 2) = *(&v612 + 1);
                      WORD1(buf.f_ffree) = 2048;
                      *(&buf.f_ffree + 4) = v613;
                      LOWORD(buf.f_fsid.val[1]) = 2048;
                      *(&buf.f_fsid + 6) = *(&v613 + 1);
                      _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO): file flags: 0x%llx related flags: 0x%llx, file acctime: %llu\n gen count: %llu sync root id: %llu size: %llu", &buf, 0x3Eu);
                    }

                    v580 = v613;
                    f_iosize = *(&v611 + 1);
                    v578 = v612;
                    _MBLog(@"Df", "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO): file flags: 0x%llx related flags: 0x%llx, file acctime: %llu\n gen count: %llu sync root id: %llu size: %llu", v220, v221, v222, v223, v224, v225, v611);
                  }
                }

                v226 = MBGetDefaultLog();
                if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                {
                  v227 = v226;
                  if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(buf.f_bsize) = 0;
                    _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "=diag= Dumping extent information", &buf, 2u);
                  }

                  _MBLog(@"Df", "=diag= Dumping extent information", v228, v229, v230, v231, v232, v233, v569);
                }

                v601 = v1;

                v234 = 0;
                v235 = 0;
                while (1)
                {
                  LODWORD(v631.d_ino) = 0;
                  *(&v631.d_ino + 4) = 0x7FFFFFFFFFFFFFFFLL;
                  *(&v631.d_seekoff + 4) = v234;
                  if (fcntl(v604, 65, &v631, f_iosize, v578, v580, st_rdev, st_atimespec, st_mtimespec, st_ctimespec, st_size, v586, st_blksize, st_flags, st_gen, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600))
                  {
                    break;
                  }

                  v236 = *(&v631.d_ino + 4);
                  v237 = MBGetDefaultLog();
                  if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                  {
                    v238 = v237;
                    if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 134218496;
                      *&buf.f_iosize = v234;
                      WORD2(buf.f_blocks) = 2048;
                      *(&buf.f_blocks + 6) = v236;
                      HIWORD(buf.f_bfree) = 2048;
                      buf.f_bavail = *(&v631.d_seekoff + 4);
                      _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "=diag= 0x%llx:+%lld @ 0x%llx", &buf, 0x20u);
                    }

                    f_iosize = v236;
                    *&v578 = *(&v631.d_seekoff + 4);
                    _MBLog(@"Df", "=diag= 0x%llx:+%lld @ 0x%llx", v239, v240, v241, v242, v243, v244, v234);
                  }

                  if (v236 < 1 || (v236 ^ 0x7FFFFFFFFFFFFFFFLL) < v234)
                  {
                    goto LABEL_176;
                  }

                  v234 += v236;
                  v235 = (v235 + 1);
                  if (v235 == 10000)
                  {
                    v235 = 10000;
                    goto LABEL_176;
                  }
                }

                v245 = *__error();
                if (v245 != 34)
                {
                  v246 = MBGetDefaultLog();
                  if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                  {
                    v247 = v246;
                    if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 134218240;
                      *&buf.f_iosize = v234;
                      WORD2(buf.f_blocks) = 1024;
                      *(&buf.f_blocks + 6) = v245;
                      _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, "=diag= log2phys failed at 0x%llx: %{errno}d", &buf, 0x12u);
                    }

                    _MBLog(@"Df", "=diag= log2phys failed at 0x%llx: %{errno}d", v248, v249, v250, v251, v252, v253, v234);
                  }
                }

LABEL_176:
                v254 = MBGetDefaultLog();
                if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
                {
                  v255 = v254;
                  if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v235;
                    _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "=diag= Found %u extents", &buf, 8u);
                  }

                  _MBLog(@"Df", "=diag= Found %u extents", v256, v257, v258, v259, v260, v261, v235);
                }

                v262 = malloc_type_malloc(0x4000uLL, 0x3F4D6170uLL);
                if (!v262)
                {
                  sub_100014808();
                }

                v263 = v262;
                v264 = MBGetDefaultLog();
                if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                {
                  v265 = v264;
                  if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(buf.f_bsize) = 0;
                    _os_log_impl(&_mh_execute_header, v265, OS_LOG_TYPE_DEFAULT, "=diag= Dumping crypto file info", &buf, 2u);
                  }

                  _MBLog(@"Df", "=diag= Dumping crypto file info", v266, v267, v268, v269, v270, v271, v570);
                }

                v605 = 1;
                v607 = 0;
                v606 = 0;
                v608 = 0;
                v609 = 0x4000;
                v610 = v263;
                if (ffsctl(v604, 0x80284A7FuLL, &v605, 0))
                {
                  v272 = *__error();
                  v273 = MBGetDefaultLog();
                  if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                  {
                    v273 = v273;
                    if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v272;
                      _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "=diag= Failed to get the crypto file infos: %{errno}d", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag= Failed to get the crypto file infos: %{errno}d", v274, v275, v276, v277, v278, v279, v272);
                  }

                  goto LABEL_203;
                }

                v280 = MBGetDefaultLog();
                if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
                {
                  v281 = v280;
                  if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
                  {
                    v282 = *v263;
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v282;
                    _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEFAULT, "=diag= private_id: %llu", &buf, 0xCu);
                  }

                  _MBLog(@"Df", "=diag= private_id: %llu", v283, v284, v285, v286, v287, v288, *v263);
                }

                v289 = MBGetDefaultLog();
                if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
                {
                  v290 = v289;
                  if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                  {
                    v291 = *(v263 + 1);
                    v292 = v263[4] & 1;
                    buf.f_bsize = 134218240;
                    *&buf.f_iosize = v291;
                    WORD2(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 6) = v292;
                    _os_log_impl(&_mh_execute_header, v290, OS_LOG_TYPE_DEFAULT, "=diag= prot_class: %llu (explicit? %d)", &buf, 0x12u);
                  }

                  v572 = v263[4] & 1;
                  _MBLog(@"Df", "=diag= prot_class: %llu (explicit? %d)", v293, v294, v295, v296, v297, v298, *(v263 + 1));
                }

                if ((*(v263 + 2) & 0x8000000000000000) != 0)
                {
                  v315 = MBGetDefaultLog();
                  if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                  {
                    v316 = v315;
                    if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
                    {
                      v317 = v263[85];
                      v318 = *(v263 + 3);
                      buf.f_bsize = 67109376;
                      buf.f_iosize = v317;
                      LOWORD(buf.f_blocks) = 2048;
                      *(&buf.f_blocks + 2) = v318;
                      _os_log_impl(&_mh_execute_header, v316, OS_LOG_TYPE_DEFAULT, "=diag= Found %u crypto ids for filesize %lld", &buf, 0x12u);
                    }

                    v573 = *(v263 + 3);
                    _MBLog(@"Df", "=diag= Found %u crypto ids for filesize %lld", v319, v320, v321, v322, v323, v324, v263[85]);
                  }

                  v325 = MBGetDefaultLog();
                  if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
                  {
                    v326 = v325;
                    if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
                    {
                      v327 = *(v263 + 3);
                      buf.f_bsize = 134217984;
                      *&buf.f_iosize = v327;
                      _os_log_impl(&_mh_execute_header, v326, OS_LOG_TYPE_DEFAULT, "=diag=   size:         %llu", &buf, 0xCu);
                    }

                    _MBLog(@"Df", "=diag=   size:         %llu", v328, v329, v330, v331, v332, v333, *(v263 + 3));
                  }

                  v334 = MBGetDefaultLog();
                  if (os_log_type_enabled(v334, OS_LOG_TYPE_DEFAULT))
                  {
                    v335 = v334;
                    if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
                    {
                      v336 = *(v263 + 4);
                      buf.f_bsize = 134217984;
                      *&buf.f_iosize = v336;
                      _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_DEFAULT, "=diag=   alloced_size: %llu", &buf, 0xCu);
                    }

                    _MBLog(@"Df", "=diag=   alloced_size: %llu", v337, v338, v339, v340, v341, v342, *(v263 + 4));
                  }

                  v343 = MBGetDefaultLog();
                  if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
                  {
                    v344 = v343;
                    if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
                    {
                      v345 = *(v263 + 5);
                      buf.f_bsize = 134217984;
                      *&buf.f_iosize = v345;
                      _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_DEFAULT, "=diag=   default_crid: %llu", &buf, 0xCu);
                    }

                    _MBLog(@"Df", "=diag=   default_crid: %llu", v346, v347, v348, v349, v350, v351, *(v263 + 5));
                  }

                  v352 = MBGetDefaultLog();
                  if (os_log_type_enabled(v352, OS_LOG_TYPE_DEFAULT))
                  {
                    v353 = v352;
                    if (os_log_type_enabled(v353, OS_LOG_TYPE_DEFAULT))
                    {
                      v354 = (*(v263 + 24) >> 14) & 1;
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v354;
                      _os_log_impl(&_mh_execute_header, v353, OS_LOG_TYPE_DEFAULT, "=diag=     exists?  %u", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=     exists?  %u", v355, v356, v357, v358, v359, v360, (*(v263 + 24) >> 14) & 1);
                  }

                  v361 = MBGetDefaultLog();
                  if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                  {
                    v362 = v361;
                    if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
                    {
                      v363 = *(v263 + 25);
                      v364 = *(v263 + 24) >> 15;
                      buf.f_bsize = 67109376;
                      buf.f_iosize = v363;
                      LOWORD(buf.f_blocks) = 1024;
                      *(&buf.f_blocks + 2) = v364;
                      _os_log_impl(&_mh_execute_header, v362, OS_LOG_TYPE_DEFAULT, "=diag=     payload: %u (trunc? %d)", &buf, 0xEu);
                    }

                    v574 = *(v263 + 24) >> 15;
                    _MBLog(@"Df", "=diag=     payload: %u (trunc? %d)", v365, v366, v367, v368, v369, v370, *(v263 + 25));
                  }

                  v371 = MBGetDefaultLog();
                  if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
                  {
                    v372 = v371;
                    if (os_log_type_enabled(v372, OS_LOG_TYPE_DEFAULT))
                    {
                      v373 = v263[13];
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v373;
                      _os_log_impl(&_mh_execute_header, v372, OS_LOG_TYPE_DEFAULT, "=diag=     refcnt:  %u", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=     refcnt:  %u", v374, v375, v376, v377, v378, v379, v263[13]);
                  }

                  v380 = MBGetDefaultLog();
                  if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
                  {
                    v381 = v380;
                    if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
                    {
                      v382 = *(v263 + 28);
                      v383 = *(v263 + 29);
                      buf.f_bsize = 67109376;
                      buf.f_iosize = v382;
                      LOWORD(buf.f_blocks) = 1024;
                      *(&buf.f_blocks + 2) = v383;
                      _os_log_impl(&_mh_execute_header, v381, OS_LOG_TYPE_DEFAULT, "=diag=     version: %u.%u", &buf, 0xEu);
                    }

                    v575 = *(v263 + 29);
                    _MBLog(@"Df", "=diag=     version: %u.%u", v384, v385, v386, v387, v388, v389, *(v263 + 28));
                  }

                  v390 = MBGetDefaultLog();
                  if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
                  {
                    v391 = v390;
                    if (os_log_type_enabled(v391, OS_LOG_TYPE_DEFAULT))
                    {
                      v392 = v263[15];
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v392;
                      _os_log_impl(&_mh_execute_header, v391, OS_LOG_TYPE_DEFAULT, "=diag=     flags:   %#x", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=     flags:   %#x", v393, v394, v395, v396, v397, v398, v263[15]);
                  }

                  v399 = MBGetDefaultLog();
                  if (os_log_type_enabled(v399, OS_LOG_TYPE_DEFAULT))
                  {
                    v400 = v399;
                    if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
                    {
                      v401 = v263[16];
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v401;
                      _os_log_impl(&_mh_execute_header, v400, OS_LOG_TYPE_DEFAULT, "=diag=     class:   %#x", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=     class:   %#x", v402, v403, v404, v405, v406, v407, v263[16]);
                  }

                  v408 = MBGetDefaultLog();
                  if (os_log_type_enabled(v408, OS_LOG_TYPE_DEFAULT))
                  {
                    v409 = v408;
                    if (os_log_type_enabled(v409, OS_LOG_TYPE_DEFAULT))
                    {
                      v410 = sub_10000D644(v263[17]);
                      buf.f_bsize = 138412290;
                      *&buf.f_iosize = v410;
                      _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_DEFAULT, "=diag=     os:      %@", &buf, 0xCu);
                    }

                    v411 = sub_10000D644(v263[17]);
                    _MBLog(@"Df", "=diag=     os:      %@", v412, v413, v414, v415, v416, v417, v411);
                  }

                  v418 = MBGetDefaultLog();
                  if (os_log_type_enabled(v418, OS_LOG_TYPE_DEFAULT))
                  {
                    v419 = v418;
                    if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
                    {
                      v420 = *(v263 + 36);
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v420;
                      _os_log_impl(&_mh_execute_header, v419, OS_LOG_TYPE_DEFAULT, "=diag=     rev:     %u", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=     rev:     %u", v421, v422, v423, v424, v425, v426, *(v263 + 36));
                  }

                  v427 = MBGetDefaultLog();
                  if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
                  {
                    v428 = v427;
                    if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
                    {
                      v429 = *(v263 + 37);
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v429;
                      _os_log_impl(&_mh_execute_header, v428, OS_LOG_TYPE_DEFAULT, "=diag=     len:     %u", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=     len:     %u", v430, v431, v432, v433, v434, v435, *(v263 + 37));
                  }

                  v436 = MBGetDefaultLog();
                  if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
                  {
                    v437 = v436;
                    if (os_log_type_enabled(v437, OS_LOG_TYPE_DEFAULT))
                    {
                      v438 = v263[83];
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v438;
                      _os_log_impl(&_mh_execute_header, v437, OS_LOG_TYPE_DEFAULT, "=diag=   refcnt:       %u", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=   refcnt:       %u", v439, v440, v441, v442, v443, v444, v263[83]);
                  }

                  v445 = MBGetDefaultLog();
                  if (os_log_type_enabled(v445, OS_LOG_TYPE_DEFAULT))
                  {
                    v446 = v445;
                    if (os_log_type_enabled(v446, OS_LOG_TYPE_DEFAULT))
                    {
                      v447 = v263[85];
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v447;
                      _os_log_impl(&_mh_execute_header, v446, OS_LOG_TYPE_DEFAULT, "=diag=   num extents:  %u", &buf, 8u);
                    }

                    _MBLog(@"Df", "=diag=   num extents:  %u", v448, v449, v450, v451, v452, v453, v263[85]);
                  }

                  if (v263[85])
                  {
                    v454 = 0;
                    v455 = v263 + 197;
                    do
                    {
                      v456 = MBGetDefaultLog();
                      if (os_log_type_enabled(v456, OS_LOG_TYPE_DEFAULT))
                      {
                        v457 = v456;
                        if (os_log_type_enabled(v457, OS_LOG_TYPE_DEFAULT))
                        {
                          v458 = *(v455 - 25);
                          v459 = *(v455 - 21);
                          v460 = *(v455 - 17);
                          buf.f_bsize = 134218496;
                          *&buf.f_iosize = v458;
                          WORD2(buf.f_blocks) = 2048;
                          *(&buf.f_blocks + 6) = v459;
                          HIWORD(buf.f_bfree) = 2048;
                          buf.f_bavail = v460;
                          _os_log_impl(&_mh_execute_header, v457, OS_LOG_TYPE_DEFAULT, "=diag=       0x%llx:+%lld (crid %llu)", &buf, 0x20u);
                        }

                        v579 = *(v455 - 17);
                        _MBLog(@"Df", "=diag=       0x%llx:+%lld (crid %llu)", v461, v462, v463, v464, v465, v466, *(v455 - 25));
                      }

                      v467 = MBGetDefaultLog();
                      if (os_log_type_enabled(v467, OS_LOG_TYPE_DEFAULT))
                      {
                        v468 = v467;
                        if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                        {
                          v469 = (*(v455 - 13) >> 14) & 1;
                          buf.f_bsize = 67109120;
                          buf.f_iosize = v469;
                          _os_log_impl(&_mh_execute_header, v468, OS_LOG_TYPE_DEFAULT, "=diag=       exists?  %u", &buf, 8u);
                        }

                        _MBLog(@"Df", "=diag=       exists?  %u", v470, v471, v472, v473, v474, v475, (*(v455 - 13) >> 14) & 1);
                      }

                      v476 = MBGetDefaultLog();
                      if (os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
                      {
                        v477 = v476;
                        if (os_log_type_enabled(v477, OS_LOG_TYPE_DEFAULT))
                        {
                          v478 = *(v455 - 12);
                          v479 = *(v455 - 13) >> 15;
                          buf.f_bsize = 67109376;
                          buf.f_iosize = v478;
                          LOWORD(buf.f_blocks) = 1024;
                          *(&buf.f_blocks + 2) = v479;
                          _os_log_impl(&_mh_execute_header, v477, OS_LOG_TYPE_DEFAULT, "=diag=       payload: %u (trunc? %d)", &buf, 0xEu);
                        }

                        v576 = *(v455 - 13) >> 15;
                        _MBLog(@"Df", "=diag=       payload: %u (trunc? %d)", v480, v481, v482, v483, v484, v485, *(v455 - 12));
                      }

                      v486 = MBGetDefaultLog();
                      if (os_log_type_enabled(v486, OS_LOG_TYPE_DEFAULT))
                      {
                        v487 = v486;
                        if (os_log_type_enabled(v487, OS_LOG_TYPE_DEFAULT))
                        {
                          v488 = *(v455 - 11);
                          buf.f_bsize = 67109120;
                          buf.f_iosize = v488;
                          _os_log_impl(&_mh_execute_header, v487, OS_LOG_TYPE_DEFAULT, "=diag=       refcnt:  %u", &buf, 8u);
                        }

                        _MBLog(@"Df", "=diag=       refcnt:  %u", v489, v490, v491, v492, v493, v494, *(v455 - 11));
                      }

                      v495 = MBGetDefaultLog();
                      if (os_log_type_enabled(v495, OS_LOG_TYPE_DEFAULT))
                      {
                        v496 = v495;
                        if (os_log_type_enabled(v496, OS_LOG_TYPE_DEFAULT))
                        {
                          v497 = *(v455 - 9);
                          v498 = *(v455 - 8);
                          buf.f_bsize = 67109376;
                          buf.f_iosize = v497;
                          LOWORD(buf.f_blocks) = 1024;
                          *(&buf.f_blocks + 2) = v498;
                          _os_log_impl(&_mh_execute_header, v496, OS_LOG_TYPE_DEFAULT, "=diag=       version: %u.%u", &buf, 0xEu);
                        }

                        v577 = *(v455 - 8);
                        _MBLog(@"Df", "=diag=       version: %u.%u", v499, v500, v501, v502, v503, v504, *(v455 - 9));
                      }

                      v505 = MBGetDefaultLog();
                      if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
                      {
                        v506 = v505;
                        if (os_log_type_enabled(v506, OS_LOG_TYPE_DEFAULT))
                        {
                          v507 = *(v455 - 7);
                          buf.f_bsize = 67109120;
                          buf.f_iosize = v507;
                          _os_log_impl(&_mh_execute_header, v506, OS_LOG_TYPE_DEFAULT, "=diag=       flags:   %#x", &buf, 8u);
                        }

                        _MBLog(@"Df", "=diag=       flags:   %#x", v508, v509, v510, v511, v512, v513, *(v455 - 7));
                      }

                      v514 = MBGetDefaultLog();
                      if (os_log_type_enabled(v514, OS_LOG_TYPE_DEFAULT))
                      {
                        v515 = v514;
                        if (os_log_type_enabled(v515, OS_LOG_TYPE_DEFAULT))
                        {
                          v516 = *(v455 - 5);
                          buf.f_bsize = 67109120;
                          buf.f_iosize = v516;
                          _os_log_impl(&_mh_execute_header, v515, OS_LOG_TYPE_DEFAULT, "=diag=       class:   %#x", &buf, 8u);
                        }

                        _MBLog(@"Df", "=diag=       class:   %#x", v517, v518, v519, v520, v521, v522, *(v455 - 5));
                      }

                      v523 = MBGetDefaultLog();
                      if (os_log_type_enabled(v523, OS_LOG_TYPE_DEFAULT))
                      {
                        v524 = v523;
                        if (os_log_type_enabled(v524, OS_LOG_TYPE_DEFAULT))
                        {
                          v525 = *(v455 - 3);
                          v526 = (v525 << 8) >> 24;
                          if (v526 > 0x7F)
                          {
                            v527 = __maskrune((v525 << 8) >> 24, 0x100uLL);
                          }

                          else
                          {
                            v527 = _DefaultRuneLocale.__runetype[v526] & 0x100;
                          }

                          if (v527)
                          {
                            v528 = @"%u%c%u";
                          }

                          else
                          {
                            v528 = @"%u-%c-%u";
                          }

                          v529 = [NSString stringWithFormat:v528, HIBYTE(v525), ((v525 << 8) >> 24), v525];
                          buf.f_bsize = 138412290;
                          *&buf.f_iosize = v529;
                          _os_log_impl(&_mh_execute_header, v524, OS_LOG_TYPE_DEFAULT, "=diag=       os:      %@", &buf, 0xCu);
                        }

                        v530 = *(v455 - 3);
                        v531 = (v530 << 8) >> 24;
                        if (v531 > 0x7F)
                        {
                          v532 = __maskrune((v530 << 8) >> 24, 0x100uLL);
                        }

                        else
                        {
                          v532 = _DefaultRuneLocale.__runetype[v531] & 0x100;
                        }

                        if (v532)
                        {
                          v533 = @"%u%c%u";
                        }

                        else
                        {
                          v533 = @"%u-%c-%u";
                        }

                        v534 = [NSString stringWithFormat:v533, HIBYTE(v530), ((v530 << 8) >> 24), v530];
                        _MBLog(@"Df", "=diag=       os:      %@", v535, v536, v537, v538, v539, v540, v534);
                      }

                      v541 = MBGetDefaultLog();
                      if (os_log_type_enabled(v541, OS_LOG_TYPE_DEFAULT))
                      {
                        v542 = v541;
                        if (os_log_type_enabled(v542, OS_LOG_TYPE_DEFAULT))
                        {
                          v543 = *(v455 - 1);
                          buf.f_bsize = 67109120;
                          buf.f_iosize = v543;
                          _os_log_impl(&_mh_execute_header, v542, OS_LOG_TYPE_DEFAULT, "=diag=       rev:     %u", &buf, 8u);
                        }

                        _MBLog(@"Df", "=diag=       rev:     %u", v544, v545, v546, v547, v548, v549, *(v455 - 1));
                      }

                      v550 = MBGetDefaultLog();
                      if (os_log_type_enabled(v550, OS_LOG_TYPE_DEFAULT))
                      {
                        v551 = v550;
                        if (os_log_type_enabled(v551, OS_LOG_TYPE_DEFAULT))
                        {
                          v552 = *v455;
                          buf.f_bsize = 67109120;
                          buf.f_iosize = v552;
                          _os_log_impl(&_mh_execute_header, v551, OS_LOG_TYPE_DEFAULT, "=diag=       len:     %u", &buf, 8u);
                        }

                        _MBLog(@"Df", "=diag=       len:     %u", v553, v554, v555, v556, v557, v558, *v455);
                      }

                      ++v454;
                      v455 += 156;
                    }

                    while (v454 < v263[85]);
                  }
                }

                else
                {
                  v273 = MBGetDefaultLog();
                  if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                  {
                    v273 = v273;
                    if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 136315138;
                      *&buf.f_iosize = v602;
                      _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "=diag= %s does not have associated crypto dstreams", &buf, 0xCu);
                    }

                    _MBLog(@"Df", "=diag= %s does not have associated crypto dstreams", v299, v300, v301, v302, v303, v304, v602);
                  }

LABEL_203:
                }

                free(v263);
                sub_10000D6E8(v602);
                v1 = v601;
                if (getxattr(v602, "com.apple.ResourceFork", 0, 0, 0, 0) != -1)
                {
                  v305 = MBGetDefaultLog();
                  if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
                  {
                    v306 = v305;
                    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.f_bsize = 136315138;
                      *&buf.f_iosize = v602;
                      _os_log_impl(&_mh_execute_header, v306, OS_LOG_TYPE_DEFAULT, "=diag= %s is a compressed file", &buf, 0xCu);
                    }

                    _MBLog(@"Df", "=diag= %s is a compressed file", v307, v308, v309, v310, v311, v312, v602);
                  }

                  v313 = [v601 stringByAppendingPathComponent:@"/..namedfork/rsrc"];
                  sub_10000D6E8([v313 fileSystemRepresentation]);
                }

                close(v604);
              }

              v33 = MBGetDefaultLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v314 = v33;
                if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 138543362;
                  *&buf.f_iosize = v1;
                  _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_DEFAULT, "=diag= Finished dumping diagnostics for %{public}@", &buf, 0xCu);
                }

                v568 = v1;
                v40 = "=diag= Finished dumping diagnostics for %{public}@";
LABEL_215:
                _MBLog(@"Df", v40, v34, v35, v36, v37, v38, v39, v568);
              }

              goto LABEL_216;
            }

            v112 = (v112 + 1);
            if (v112 == 500000)
            {
              v112 = 500000;
              goto LABEL_99;
            }
          }

          v123 = v113;
          v124 = *__error();
          v125 = MBGetDefaultLog();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            v126 = v125;
            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v625) = 67109376;
              DWORD1(v625) = v123;
              WORD4(v625) = 1024;
              *(&v625 + 10) = v124;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r failed: %d (%{errno}d)", &v625, 0xEu);
            }

            f_iosize = v124;
            _MBLog(@"Df", "=diag= readdir_r failed: %d (%{errno}d)", v127, v128, v129, v130, v131, v132, v123);
          }

LABEL_99:
          closedir(v111);
          v133 = MBGetDefaultLog();
          st_ino = *v603;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            v134 = v133;
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v631.d_ino) = 67109120;
              HIDWORD(v631.d_ino) = v112;
              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "=diag= Failed to find the file using readdir_r (%u)", &v631, 8u);
            }

            _MBLog(@"Df", "=diag= Failed to find the file using readdir_r (%u)", v135, v136, v137, v138, v139, v140, v112);
          }

          if (!*v603)
          {
            goto LABEL_125;
          }

          goto LABEL_104;
        }

        v114 = *__error();
        v115 = MBGetDefaultLog();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v116 = v115;
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v631.d_ino) = 136446466;
            *(&v631.d_ino + 4) = v15;
            WORD2(v631.d_seekoff) = 1024;
            *(&v631.d_seekoff + 6) = v114;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "=diag= fdopendir failed at %{public}s: %{errno}d", &v631, 0x12u);
          }

          f_iosize = v114;
          _MBLog(@"Df", "=diag= fdopendir failed at %{public}s: %{errno}d", v117, v118, v119, v120, v121, v122, v15);
        }

        close(v86);
        st_ino = *v603;
        if (!*v603)
        {
          goto LABEL_125;
        }
      }

LABEL_104:
      if (f_fsid.val[0])
      {
        *&v625 = st_ino;
        v141 = openbyid_np();
        if (v141 == -1)
        {
          v160 = *__error();
          v161 = MBGetDefaultLog();
          if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
          {
            v162 = v161;
            if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 67109888;
              buf.f_iosize = f_fsid.val[0];
              LOWORD(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 2) = f_fsid.val[1];
              HIWORD(buf.f_blocks) = 2048;
              buf.f_bfree = st_ino;
              LOWORD(buf.f_bavail) = 1024;
              *(&buf.f_bavail + 2) = v160;
              _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) failed: %{errno}d", &buf, 0x1Eu);
            }

            *&v578 = st_ino;
            *(&v578 + 1) = v160;
            f_iosize = f_fsid.val[1];
            _MBLog(@"Df", "=diag= openbyid_np({%d, %d}, %llu) failed: %{errno}d", v163, v164, v165, v166, v167, v168, f_fsid.val[0]);
          }
        }

        else
        {
          v142 = v141;
          v143 = MBGetDefaultLog();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            v144 = v143;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 67109632;
              buf.f_iosize = f_fsid.val[0];
              LOWORD(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 2) = f_fsid.val[1];
              HIWORD(buf.f_blocks) = 2048;
              buf.f_bfree = st_ino;
              _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) succeeded", &buf, 0x18u);
            }

            f_iosize = f_fsid.val[1];
            *&v578 = st_ino;
            _MBLog(@"Df", "=diag= openbyid_np({%d, %d}, %llu) succeeded", v145, v146, v147, v148, v149, v150, f_fsid.val[0]);
          }

          v151 = pread(v142, &buf, 0x10uLL, 0);
          if (v151 == -1)
          {
            v169 = *__error();
            v153 = MBGetDefaultLog();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v153 = v153;
              if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v631.d_ino) = 67109120;
                HIDWORD(v631.d_ino) = v169;
                _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "=diag= pread failed: %d", &v631, 8u);
              }

              _MBLog(@"Df", "=diag= pread failed: %d", v170, v171, v172, v173, v174, v175, v169);
            }
          }

          else
          {
            v152 = v151;
            v153 = MBGetDefaultLog();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v153 = v153;
              if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v631.d_ino) = 134217984;
                *(&v631.d_ino + 4) = v152;
                _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "=diag= pread returned %ld bytes", &v631, 0xCu);
              }

              _MBLog(@"Df", "=diag= pread returned %ld bytes", v154, v155, v156, v157, v158, v159, v152);
            }
          }

          close(v142);
        }
      }

      goto LABEL_125;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=diag= nil dir path FSR", &buf, 2u);
      v40 = "=diag= nil dir path FSR";
      goto LABEL_215;
    }

LABEL_216:
  }
}

id sub_10000D644(unsigned int a1)
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

void sub_10000D6E8(const char *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xD59A0561uLL);
  if (!v2)
  {
    sub_100014834();
  }

  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v60 = 0u;
  v59 = 0u;
  v53 = xmmword_100018E80;
  v54 = 0;
  v55 = v2;
  v57 = 0;
  v58 = 0;
  v56 = 16;
  if (fsctl(a1, 0xC0584A1EuLL, &v53, 0))
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
    v49 = *__error();
    v12 = "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d";
LABEL_5:
    _MBLog(@"Df", v12, v6, v7, v8, v9, v10, v11, v49);
    goto LABEL_6;
  }

  if (!v58)
  {
    free(v3);
    v4 = MBGetDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) returned zero buffer entries", buf, 2u);
    v12 = "=diag= fsctl(APFSIOC_DEBUG_STATS) returned zero buffer entries";
    goto LABEL_5;
  }

  v13 = malloc_type_malloc(0x4E200uLL, 0x100004071F2C783uLL);
  if (v13)
  {
    v14 = v13;
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v3;
      v17 = v3[1];
      *buf = 134218240;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= Dstream id %llu, dstream size %llu bytes", buf, 0x16u);
      v51 = v3[1];
      _MBLog(@"Df", "=diag= Dstream id %llu, dstream size %llu bytes", v18, v19, v20, v21, v22, v23, *v3);
    }

    for (i = 0; ; i = *(v25 - 7) + *(v25 - 8))
    {
      bzero(v14, 0x4E200uLL);
      v69 = 0;
      v70 = 0;
      v71 = 0;
      *buf = xmmword_100018E90;
      *&buf[16] = 10;
      v64 = v14;
      v65 = 320000;
      v66 = i;
      v67 = *v3;
      v68 = 0;
      if (fsctl(a1, 0xC0584A1EuLL, buf, 0))
      {
        break;
      }

      if (!v68)
      {
        v35 = MBGetDefaultLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 134217984;
          *v62 = i;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) for FUSION_DEBUG_STATS_PURE_FEXTS_ONLY returned zero buffer entries at offset %lld", v61, 0xCu);
          _MBLog(@"Df", "=diag= fsctl(APFSIOC_DEBUG_STATS) for FUSION_DEBUG_STATS_PURE_FEXTS_ONLY returned zero buffer entries at offset %lld", v43, v44, v45, v46, v47, v48, i);
        }

        goto LABEL_23;
      }

      v25 = &v14[64 * v68];
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(v25 - 8);
        v28 = *(v25 - 7);
        *v61 = 134218240;
        *v62 = v27;
        *&v62[8] = 2048;
        *&v62[10] = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=diag= Extent offset %lld and length %lld", v61, 0x16u);
        v52 = *(v25 - 7);
        _MBLog(@"Df", "=diag= Extent offset %lld and length %lld", v29, v30, v31, v32, v33, v34, *(v25 - 8));
      }
    }

    v35 = MBGetDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *__error();
      *v61 = 67109376;
      *v62 = v36;
      *&v62[4] = 2048;
      *&v62[6] = i;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d, cannot get extents at offset %lld", v61, 0x12u);
      v50 = *__error();
      _MBLog(@"Df", "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d, cannot get extents at offset %lld", v37, v38, v39, v40, v41, v42, v50);
    }

LABEL_23:

    free(v14);
  }

  free(v3);
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
          sub_100014860();
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

id MBGetDefaultLog()
{
  if (qword_10002A1C8 != -1)
  {
    sub_1000148E4();
  }

  v1 = qword_10002A1C0;

  return v1;
}

void sub_10000E638(id a1)
{
  qword_10002A1C0 = os_log_create("com.apple.mobilebackup", "Default");

  _objc_release_x1();
}

id MBGetLogDateFormatter()
{
  if (qword_10002A1D8 != -1)
  {
    sub_1000148F8();
  }

  v1 = qword_10002A1D0;

  return v1;
}

void sub_10000E6C0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10002A1D0;
  qword_10002A1D0 = v1;

  [qword_10002A1D0 setFormatterBehavior:1040];
  v3 = qword_10002A1D0;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

const __CFString *MBGetLogDir()
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

id sub_10000E750(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [NSMutableString stringWithCapacity:v2];
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
        v9 = v8 - 64;
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

    v12 = v8 - 64;
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
  v16 = &v2[-v7];
  if (v15)
  {
    v17 = v3;
    v18 = [v1 substringWithRange:{v7, v16}];
    [v17 appendString:v18];
  }

  return v3;
}

void _MBLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (sFileLoggingEnabled == 1)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [NSString stringWithCString:a2 encoding:4];
    v13 = [NSString alloc];
    v14 = sub_10000E750(v12);
    v15 = [v13 initWithFormat:v14 arguments:&a9];

    sub_10000EA64(v10, v15);
    objc_autoreleasePoolPop(v11);
  }
}

void sub_10000EA64(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_10002A1F8 != -1)
  {
    sub_10001490C();
  }

  v5 = MBGetLogDateFormatter();
  v6 = +[NSDate date];
  v7 = [v5 stringFromDate:v6];

  v74 = 0;
  if (pthread_threadid_np(0, &v74))
  {
    v8 = 0;
    v74 = 0;
  }

  else
  {
    v8 = v74;
  }

  v9 = [NSString stringWithFormat:@"%@ %d.%llx %@: %@\n", v7, dword_10002A1F0, v8, v3, v4];
  v10 = [v9 UTF8String];
  v11 = strlen(v10);
  pthread_mutex_lock(&stru_100029FF0);
  if (qword_10002A1E8)
  {
    if (qword_10002A210 != -1)
    {
      sub_100014920();
    }

    if (qword_10002A208 > qword_10002A200)
    {
      goto LABEL_79;
    }

    if (qword_10002A1E8)
    {
      fclose(qword_10002A1E8);
    }
  }

  if (qword_10002A220 != -1)
  {
    sub_100014948();
  }

  if (byte_10002A218 == 1)
  {
    v12 = MBGetLogDir();
    v13 = [v12 fileSystemRepresentation];
    if (mkdir(v13, 0x1C0u) && *__error() != 17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100014970();
      }
    }

    else if (!geteuid())
    {
      memset(&v82, 0, sizeof(v82));
      if (lstat(v13, &v82))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000149F4();
        }
      }

      else
      {
        v55 = MBMobileUID();
        if (v82.st_uid == v55 && v82.st_gid == v55 || !lchown(v13, v55, v55))
        {
          if ((~v82.st_mode & 0x1C0) != 0 && lchmod(v13, 0x1C0u) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100014AFC();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100014A78();
        }
      }
    }
  }

  if (qword_10002A238 != -1)
  {
    sub_100014B80();
  }

  if ((byte_10002A230 & 1) == 0)
  {
    qword_10002A1E8 = 0;
    goto LABEL_81;
  }

  v14 = MBGetLogDir();
  v66 = sub_10000F390();
  v15 = [v14 stringByAppendingPathComponent:?];
  qword_10002A200 = 0;
  memset(&v82, 0, sizeof(v82));
  v67 = v14;
  if (!lstat([v15 fileSystemRepresentation], &v82))
  {
    if (qword_10002A210 != -1)
    {
      sub_100014920();
    }

    v68 = qword_10002A208;
    if (qword_10002A258 != -1)
    {
      sub_100014BA8();
    }

    v72 = qword_10002A250;
    v69 = time(0);
    st_size = v82.st_size;
    if (v68 < v82.st_size || (qword_10002A200 = v82.st_size, v69 > v82.st_birthtimespec.tv_sec) && v69 - v82.st_birthtimespec.tv_sec >= 86401)
    {
      v16 = +[NSFileManager defaultManager];
      if (qword_10002A248 != -1)
      {
        sub_100014BD0();
      }

      if (byte_10002A240)
      {
        v59 = v15;
        v60 = v11;
        v61 = v10;
        v62 = v9;
        v63 = v7;
        v64 = v4;
        v65 = v3;
        v70 = v16;
        v17 = [v16 contentsOfDirectoryAtPath:v14 error:0];
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_10000F648;
        v80[3] = &unk_100024A10;
        v18 = v66;
        v81 = v18;
        v57 = [NSPredicate predicateWithBlock:v80];
        v58 = v17;
        v56 = [v17 filteredArrayUsingPredicate:?];
        v19 = [v56 sortedArrayUsingComparator:&stru_100024AB0];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v20 = v19;
        v21 = [v19 countByEnumeratingWithState:&v76 objects:v83 count:16];
        v22 = v68;
        if (!v21)
        {
          goto LABEL_65;
        }

        v23 = v21;
        v24 = *v77;
        while (1)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v77 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v76 + 1) + 8 * i);
            v27 = [v26 stringByDeletingPathExtension];
            v28 = [v27 isEqualToString:v18];

            if ((v28 & 1) == 0)
            {
              if (([v26 isEqualToString:v18] & 1) == 0)
              {
                continue;
              }

              v30 = 0;
LABEL_48:
              v31 = [v14 stringByAppendingPathComponent:v26];
              v32 = v31;
              if (v72 <= v30)
              {
                if (!lstat([v31 fileSystemRepresentation], &v82) && v69 > v82.st_mtimespec.tv_sec && v69 - v82.st_mtimespec.tv_sec >= 864001)
                {
                  goto LABEL_59;
                }
              }

              else if (v22 < st_size)
              {
                if (v72 > (v30 + 1))
                {
                  v33 = [NSNumber numberWithInt:?];
                  [v33 description];
                  v35 = v34 = v14;
                  v36 = [v18 stringByAppendingPathExtension:v35];
                  v37 = [v34 stringByAppendingPathComponent:v36];

                  v22 = v68;
                  v75 = 0;
                  LOBYTE(v33) = [v70 moveItemAtPath:v32 toPath:v37 error:&v75];
                  v38 = v75;
                  v39 = v38;
                  if ((v33 & 1) == 0)
                  {
                    v40 = [v38 domain];
                    if ([v40 isEqualToString:NSCocoaErrorDomain])
                    {
                      v41 = [v39 code];

                      v42 = v41 == 513;
                      v22 = v68;
                      if (v42)
                      {
                        [v70 removeItemAtPath:v32 error:0];
                      }
                    }

                    else
                    {
                    }
                  }

                  v14 = v67;
                  goto LABEL_62;
                }

LABEL_59:
                [v70 removeItemAtPath:v32 error:0];
              }

LABEL_62:

              continue;
            }

            v29 = [v26 pathExtension];
            v30 = [v29 intValue];

            if ((v30 & 0x80000000) == 0)
            {
              goto LABEL_48;
            }
          }

          v23 = [v20 countByEnumeratingWithState:&v76 objects:v83 count:16];
          if (!v23)
          {
LABEL_65:

            v4 = v64;
            v3 = v65;
            v9 = v62;
            v7 = v63;
            v11 = v60;
            v10 = v61;
            v15 = v59;
            v16 = v70;
            goto LABEL_68;
          }
        }
      }

      [v16 removeItemAtPath:v15 error:0];
LABEL_68:
    }
  }

  v43 = v9;
  v44 = v7;
  v45 = v4;
  v46 = v3;
  v47 = v11;
  v48 = v10;
  v49 = v15;
  v50 = fopen([v15 fileSystemRepresentation], "a");
  if (v50)
  {
    v73 = MBMobileUID();
    v51 = fileno(v50);
    if (!fstat(v51, &v82))
    {
      st_uid = v82.st_uid;
      if (v82.st_uid != v73 && st_uid == geteuid())
      {
        fchown(v51, v73, 0xFFFFFFFF);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100014BF8();
  }

  qword_10002A1E8 = v50;
  v3 = v46;
  v4 = v45;
  v7 = v44;
  v9 = v43;
  if (v50)
  {
    v10 = v48;
    v11 = v47;
    if (ftello(v50))
    {
      fputs("\n", qword_10002A1E8);
      ++qword_10002A200;
    }

LABEL_79:
    if (qword_10002A1E8)
    {
      qword_10002A200 += v11;
      fputs(v10, qword_10002A1E8);
      v53 = qword_10002A1E0;
      v54 = dispatch_time(0, 3000000000);
      dispatch_source_set_timer(v53, v54, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

LABEL_81:
  pthread_mutex_unlock(&stru_100029FF0);
}

id sub_10000F390()
{
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 processName];

  if (!v1 || !strcmp([v1 UTF8String], "backupd"))
  {
    [NSString stringWithFormat:@"%@.%@", @"MobileBackup", @"log", v4];
  }

  else
  {
    [NSString stringWithFormat:@"%@-%@.%@", @"MobileBackup", v1, @"log"];
  }
  v2 = ;

  return v2;
}

void sub_10000F46C(id a1)
{
  dword_10002A1F0 = getpid();
  v1 = dispatch_get_global_queue(17, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v1);
  v3 = qword_10002A1E0;
  qword_10002A1E0 = v2;

  dispatch_source_set_timer(qword_10002A1E0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_10002A1E0, &stru_100024A70);
  v4 = qword_10002A1E0;

  dispatch_resume(v4);
}

void sub_10000F50C(id a1)
{
  pthread_mutex_lock(&stru_100029FF0);
  dispatch_source_set_timer(qword_10002A1E0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (qword_10002A1E8)
  {
    fflush(qword_10002A1E8);
  }

  pthread_mutex_unlock(&stru_100029FF0);
}

void sub_10000F56C(id a1)
{
  v1 = getenv("MBMaxLogSize");
  if (v1)
  {
    v2 = strtol(v1, 0, 10);
    if ((v2 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      v3 = 10485760;
    }

    else
    {
      v3 = v2;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MBMaxLogSize=%ld", &v4, 0xCu);
    }
  }

  else
  {
    v3 = 10485760;
  }

  qword_10002A208 = v3;
}

void sub_10000F660(id a1)
{
  v1 = MBGetLogDir();
  v5 = [v1 stringByDeletingLastPathComponent];

  getpid();
  v2 = v5;
  [v5 fileSystemRepresentation];
  byte_10002A218 = sandbox_check() == 0;
  v3 = os_log_set_hook();
  v4 = qword_10002A228;
  qword_10002A228 = v3;
}

void sub_10000F724(id a1, unsigned __int8 a2, os_log_message_s *a3)
{
  v4 = a2;
  if (qword_10002A228)
  {
    (*(qword_10002A228 + 16))();
  }

  var16 = a3->var16;
  if (var16)
  {
    if (!strcmp(var16, "MBSwift"))
    {
      v6 = os_log_copy_message_string();
      if (v6)
      {
        v7 = v6;
        if (v4 <= 1)
        {
          if (!v4)
          {
            v8 = @"Df";
            goto LABEL_19;
          }

          if (v4 == 1)
          {
            v8 = @"I ";
            goto LABEL_19;
          }
        }

        else
        {
          switch(v4)
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
              v9 = [NSString stringWithUTF8String:v6];
              sub_10000EA64(v8, v9);

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

void sub_10000F854(id a1)
{
  v2 = MBGetLogDir();
  getpid();
  v1 = v2;
  [v2 fileSystemRepresentation];
  byte_10002A230 = sandbox_check() == 0;
}

void sub_10000F8E4(id a1)
{
  v1 = MBGetLogDir();
  if (v1)
  {
    v7 = v1;
    getpid();
    v2 = v7;
    v6 = [v7 fileSystemRepresentation];
    if (sandbox_check())
    {
      v3 = 0;
    }

    else
    {
      v4 = +[NSProcessInfo processInfo];
      v5 = [v4 processName];

      v3 = ([v5 isEqualToString:@"healthd"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"imagent");
    }

    byte_10002A240 = v3;
    v1 = v7;
  }
}

void sub_10000F9D8(id a1)
{
  v1 = getenv("MBMaxLogCount");
  v2 = 10;
  if (v1)
  {
    v3 = strtol(v1, 0, 10);
    if ((v3 - 1) < 0x7FFFFFFFFFFFFFFELL)
    {
      v2 = v3;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MBMaxLogCount=%ld", &v4, 0xCu);
    }
  }

  qword_10002A250 = v2;
}

void sub_10000FAC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t MBIsInternalInstall()
{
  if (qword_10002A268 != -1)
  {
    sub_100014C7C();
  }

  return byte_10002A260;
}

void sub_10000FB18(id a1)
{
  v1 = MGCopyAnswer();
  byte_10002A260 = [v1 BOOLValue];
  if (v1)
  {

    CFRelease(v1);
  }
}

void sub_10001086C(uint64_t a1)
{
  v2 = [*(a1 + 32) encodingMethod];
  if ((v2 - 2) < 2)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v5 _archive];
    }

    else
    {
      [v5 _unarchive];
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
LABEL_5:
    v3 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v3 _compress];
    }

    else
    {
      [v3 _decompress];
    }

    v4 = LABEL_7:;
    goto LABEL_13;
  }

  if (v2 == 255)
  {
    [*(a1 + 32) setEncodingMethod:1];
    goto LABEL_5;
  }

  v4 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Unknown encoding method %ld", [*(a1 + 32) encodingMethod]);
LABEL_13:
  v6 = v4;
  [*(a1 + 32) _finishWithError:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_100010F08(int a1, int *a2, void *a3)
{
  if (!a2)
  {
    sub_100014F48();
  }

  *a2 = 0;
  if (a1 <= 1)
  {
    if (a1 != -1)
    {
      if (a1 == 1)
      {
        v4 = 0;
        v5 = 517;
LABEL_10:
        *a2 = v5;
        v6 = 1;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_9:
    v4 = 0;
    v5 = 2049;
    goto LABEL_10;
  }

  if (a1 == 2)
  {
    goto LABEL_9;
  }

  if (a1 == 3)
  {
    v4 = 0;
    v5 = 774;
    goto LABEL_10;
  }

LABEL_12:
  v4 = [MBError errorWithCode:1 format:@"Invalid file compression method %ld", a1];
  v6 = v4 == 0;
  if (a3 && v4)
  {
    v4 = v4;
    v6 = 0;
    *a3 = v4;
  }

LABEL_11:

  return v6;
}

uint64_t sub_100010FDC(unsigned int a1, char *a2, void *a3)
{
  if (!a2)
  {
    sub_100014FA0();
  }

  *a2 = 0;
  switch(a1)
  {
    case 0x205u:
      v4 = 0;
      v6 = 1;
      *a2 = 1;
      goto LABEL_17;
    case 0x306u:
      v4 = 0;
      v5 = 3;
      goto LABEL_7;
    case 0x801u:
      v4 = 0;
      v5 = 2;
LABEL_7:
      *a2 = v5;
LABEL_8:
      v6 = 1;
      goto LABEL_17;
  }

  v4 = [MBError errorWithCode:1 format:@"Invalid compression algorithm %ld", a1];
  if (!v4)
  {
    if (*a2 == 255 || !*a2)
    {
      sub_100014F74();
    }

    v4 = 0;
    goto LABEL_8;
  }

  if (a3)
  {
    v4 = v4;
    v6 = 0;
    *a3 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  return v6;
}

void sub_100012B40(id a1)
{
  v3 = NSTemporaryDirectory();
  v1 = [v3 stringByAppendingPathComponent:@"tmpbackupXXXXXXXX"];
  v2 = qword_10002A270;
  qword_10002A270 = v1;
}

void sub_100013590(id a1)
{
  qword_10002A280 = dispatch_semaphore_create(2);

  _objc_release_x1();
}

void sub_1000135C8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.encoding", attr);
  v3 = qword_10002A290;
  qword_10002A290 = v2;
}

void sub_100013650(id a1)
{
  qword_10002A2A0 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_100013688(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.decoding", attr);
  v3 = qword_10002A2B0;
  qword_10002A2B0 = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  signal(13, 1);
  v3 = +[NSXPCListener serviceListener];
  v4 = +[MBHelperServiceDelegate sharedInstance];
  [v3 setDelegate:v4];

  [v3 resume];
  return 0;
}

void sub_100013BAC(id a1)
{
  v3 = NSTemporaryDirectory();
  v1 = [v3 stringByAppendingPathComponent:@"tmpbackupencodeXXXXXXXX"];
  v2 = qword_10002A2C0;
  qword_10002A2C0 = v1;
}

void sub_100013C08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  unlink([*(a1 + 32) fileSystemRepresentation]);
  close(*(a1 + 64));
  v3 = *(a1 + 56);
  v4 = [*(a1 + 40) error];
  (*(v3 + 16))(v3, v4);

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = [v6 error];
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished task:%@, error:%@", buf, 0x16u);

    v8 = *(a1 + 40);
    v15 = [v8 error];
    _MBLog(@"I ", "Finished task:%@, error:%@", v9, v10, v11, v12, v13, v14, v8);
  }

  [*(a1 + 48) idle];
  objc_autoreleasePoolPop(v2);
}

void sub_100014970()
{
  v0 = *__error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v1, "mkdir failed at %s: %{errno}d", v2, v3, v4, v5, v6);
}

void sub_1000149F4()
{
  v0 = *__error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v1, "lstat failed at %s: %{errno}d", v2, v3, v4, v5, v6);
}

void sub_100014A78()
{
  v0 = *__error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v1, "lchown failed at %s: %{errno}d", v2, v3, v4, v5, v6);
}

void sub_100014AFC()
{
  v0 = *__error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v1, "lchmod failed at %s: %{errno}d", v2, v3, v4, v5, v6);
}

void sub_100014BF8()
{
  v0 = *__error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v1, "Failed to open MobileBackup log file at %@: %{errno}d", v2, v3, v4, v5, v6);
}