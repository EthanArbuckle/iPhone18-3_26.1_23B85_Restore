@interface GSStorageManager
+ (BOOL)generationStorageIsDisabledForStatFSInfo:(statfs *)info fd:(int)fd;
+ (void)invalidateLibrary:(id)library;
+ (void)shutdownLibraries;
+ (void)startLibraries;
@end

@implementation GSStorageManager

+ (void)invalidateLibrary:(id)library
{
  libraryCopy = library;
  v4 = qword_10004C970;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B98;
  block[3] = &unk_100040B00;
  v7 = libraryCopy;
  v5 = libraryCopy;
  dispatch_async(v4, block);
}

+ (void)startLibraries
{
  v20 = xmmword_100031250;
  if (getrlimit(8, &v20) == -1)
  {
    v2 = sub_100003164();
    if (os_log_type_enabled(v2, 0x90u))
    {
      sub_100025864();
    }
  }

  v20.rlim_cur = 1000;
  if (setrlimit(8, &v20) == -1)
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, 0x90u))
    {
      sub_1000258EC();
    }
  }

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("com.apple.revisiond.volumeManager", v5);
  v7 = qword_10004C970;
  qword_10004C970 = v6;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = qword_10004C980;
  qword_10004C980 = v8;

  memset(&v21, 0, 512);
  if (statfs("/private/var/mobile", &v21))
  {
    v19 = sub_100003164();
    if (os_log_type_enabled(v19, 0x90u))
    {
      sub_100025974();
    }

    exit(1);
  }

  dword_10004C698 = v21.f_fsid.val[0];
  v10 = [GSStorageManager createLibraryForDevice:"createLibraryForDevice:error:" error:?];
  v11 = +[UMUserManager sharedManager];
  isMultiUser = [v11 isMultiUser];

  if (isMultiUser)
  {
    v22[0] = 0;
    v22[1] = 0x10000000000;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("unmount-queue", v13);
    v15 = qword_10004C9A0;
    qword_10004C9A0 = v14;

    if ((sub_100004890(1, v22, 16, 32) & 0x80000000) != 0)
    {
      v17 = sub_100003164();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_100025A44();
      }
    }

    else
    {
      if (ioctl(dword_10004C69C, 0x20007365uLL, 0) < 0)
      {
        v16 = sub_100003164();
        if (os_log_type_enabled(v16, 0x90u))
        {
          sub_1000259B4();
        }
      }

      pthread_create(&qword_10004C998, 0, sub_100004B08, 0);
    }

    pthread_create(&qword_10004C990, 0, sub_100005068, 0);
  }

  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v18, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_uint64(v18, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_string(v18, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v18, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_BOOL(v18, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v18, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
  xpc_activity_unregister("com.apple.revisiond.CacheDelete.purgeable-xpc");
  xpc_activity_register("com.apple.revisiond.CacheDelete.purgeable-xpc", v18, &stru_100040D38);
}

+ (void)shutdownLibraries
{
  v2 = dispatch_group_create();
  pthread_rwlock_wrlock(&stru_10004C5D0);
  byte_10004C978 = 1;
  allValues = [qword_10004C980 allValues];
  [qword_10004C980 removeAllObjects];
  pthread_rwlock_unlock(&stru_10004C5D0);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100004884;
        block[3] = &unk_100040B00;
        block[4] = v9;
        dispatch_group_async(v2, v10, block);
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v11 = dword_10004C69C;
  if ((dword_10004C69C & 0x80000000) == 0)
  {
    dword_10004C69C = -1;
    close(v11);
  }

  if (qword_10004C988)
  {
    CFFileDescriptorInvalidate(qword_10004C988);
  }

  if (qword_10004CA38)
  {
    CFRunLoopStop(qword_10004CA38);
  }

  if (qword_10004C990)
  {
    pthread_join(qword_10004C990, 0);
  }

  if (qword_10004C998)
  {
    pthread_join(qword_10004C998, 0);
  }
}

+ (BOOL)generationStorageIsDisabledForStatFSInfo:(statfs *)info fd:(int)fd
{
  if (info->f_fsid.val[0] != dword_10004C698)
  {
    v6 = 0;
    while (1)
    {
      v7 = strlen(off_100040C40[v6]);
      if (!strncmp(info->f_mntonname, off_100040C40[v6], v7))
      {
        break;
      }

      if (++v6 == 2)
      {
        return 1;
      }
    }
  }

  memset(&v10, 0, sizeof(v10));
  APFSVolumeRole();
  if (fstatat(fd, ".DocumentRevisionsDisabled", &v10, 32))
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v9 = sub_100003164();
    if (os_log_type_enabled(v9, 0x90u))
    {
      sub_100025B64();
    }
  }

  else if ((info->f_flags & 0x4000) != 0)
  {
    return *&v10.st_uid == 0;
  }

  return 1;
}

@end