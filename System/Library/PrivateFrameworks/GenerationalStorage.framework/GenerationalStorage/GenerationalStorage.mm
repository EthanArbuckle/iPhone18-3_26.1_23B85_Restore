void sub_100001CD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = a1 + 32;
    objc_storeStrong((*(a1 + 32) + 32), a2);
    v12 = [v8 pathComponents];
    v13 = *(*(a1 + 32) + 40);
    *(*v11 + 40) = v12;

    objc_storeStrong((*(a1 + 32) + 48), a3);
    [*(*(a1 + 32) + 48) bytes];
    *(*v11 + 56) = sandbox_extension_consume();
    if ((*(*(a1 + 32) + 56) & 0x8000000000000000) != 0)
    {
      v14 = sub_100003164();
      if (os_log_type_enabled(v14, 0x90u))
      {
        sub_1000252CC(a1 + 32);
      }
    }
  }

  [*(a1 + 40) handleBoolResult:v8 != 0 error:v10];
}

void sub_100001F14(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.genstore.invalidation-queue", v3);
  v2 = qword_10004C940;
  qword_10004C940 = v1;
}

void sub_100001F78(uint64_t a1)
{
  v2 = sub_100007360(0);
  [v2 stagingPrefixRelinquish:*(a1 + 32)];
}

id sub_1000022A8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [a3 pathComponents];
  v8 = [v6 count];
  if (v8 < [v7 count])
  {
    if (![v6 count])
    {
LABEL_6:
      v13 = [v7 objectAtIndex:{objc_msgSend(v6, "count")}];
      v14 = [v5 stringByAppendingPathComponent:v13];

      goto LABEL_8;
    }

    v9 = 0;
    while (1)
    {
      v10 = [v6 objectAtIndex:v9];
      v11 = [v7 objectAtIndex:v9];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        break;
      }

      if (++v9 >= [v6 count])
      {
        goto LABEL_6;
      }
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

id sub_100002494(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a1 objectForKey:@"kGSAdditionPOSIXName"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 validateGSNameAllowingDot:1 error:0])
    {
      v10 = v9;
    }

    else
    {
      v11 = [NSString stringWithFormat:@"invalid POSIX Name value"];
      v12 = sub_100003164();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100025378();
      }

      if (a4)
      {
        *a4 = sub_10000F0F8(105, v11, 0);
      }

      v10 = 0;
    }
  }

  else
  {
    v13 = [v7 lastPathComponent];
    v10 = [v13 gs_stringByUpdatingPathExtensionWithPathOrURL:v8];
  }

  return v10;
}

id sub_1000025E8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 objectForKey:@"kGSAdditionDisplayName"];
  if (!v10)
  {
    v28 = 0;
    v13 = [v8 getResourceValue:&v28 forKey:NSURLHasHiddenExtensionKey error:0];
    v14 = v28;
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = [v14 BOOLValue] ^ 1;
    }

    v27 = 0;
    v20 = [v8 getResourceValue:&v27 forKey:NSURLLocalizedNameKey error:0];
    v21 = v27;
    v22 = v21;
    if (v20)
    {
      v23 = v21 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      v12 = sub_100002494(v7, v8, v9, a4);

      if (!v12)
      {
        v11 = 0;
        goto LABEL_29;
      }

      if (!v19)
      {
        v24 = [v12 stringByDeletingPathExtension];
LABEL_26:
        v11 = v24;

        v25 = [v11 stringByReplacingOccurrencesOfString:@":" withString:@"/"];
LABEL_28:
        v12 = v25;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        v25 = v21;
        v11 = v25;
        goto LABEL_28;
      }

      v12 = v21;
    }

    v24 = [v12 gs_stringByUpdatingPathExtensionWithPathOrURL:v9];
    goto LABEL_26;
  }

  v11 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v11;
    v12 = v11;
  }

  else
  {
    v17 = [NSString stringWithFormat:@"invalid DisplayName value"];
    v18 = sub_100003164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100025378();
    }

    if (a4)
    {
      *a4 = sub_10000F0F8(105, v17, 0);
    }

    v12 = 0;
  }

LABEL_30:

  return v12;
}

id sub_100002840(void *a1, void *a2)
{
  v3 = [a1 objectForKey:@"kGSAdditionUserInfo"];
  if (!v3)
  {
    v4 = [NSData dataWithBytesNoCopy:&v9 length:0 freeWhenDone:0];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:a2];
LABEL_5:
    v5 = v4;
    goto LABEL_11;
  }

  v6 = [NSString stringWithFormat:@"invalid UserInfo"];
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000253E8();
  }

  if (a2)
  {
    *a2 = sub_10000F0F8(110, v6, 0);
  }

  v5 = 0;
LABEL_11:

  return v5;
}

id sub_100002974(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 pathExtension];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_100041DE0;
  }

  v10 = v9;

  v11 = [v6 pathExtension];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_100041DE0;
  }

  v14 = v13;

  if (![(__CFString *)v14 caseInsensitiveCompare:v10])
  {
    v5 = v5;
    goto LABEL_15;
  }

  v15 = [v5 URLByDeletingPathExtension];
  if ([(__CFString *)v14 length])
  {
    v16 = [v15 URLByAppendingPathExtension:v14];

    v15 = v16;
  }

  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v19 = v15;

    v5 = v19;
LABEL_15:
    v15 = v5;
    if (_CFURLReplaceObject())
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v17 = [v15 lastPathComponent];
  v18 = _CFURLReplaceObject();

  if (v18)
  {
    [NSFileCoordinator __itemAtURL:v5 didMoveToURL:v15 purposeID:0];
    goto LABEL_19;
  }

LABEL_16:

  if (a3)
  {
    v15 = 0;
    *a3 = 0;
  }

  else
  {
    CFRelease(0);
    v15 = 0;
  }

LABEL_19:

  return v15;
}

id sub_100002B78(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 storage];
  v8 = [v7 URLforReplacingItemWithError:a3];

  if (v8)
  {
    v9 = [v6 name];
    v10 = [v8 URLByAppendingPathComponent:v9];

    if ([v6 copyAdditionContentToURL:v10 error:a3])
    {
      v11 = sub_100002974(v5, v10, a3);

      v5 = v11;
    }

    sub_10000965C([v8 fileSystemRepresentation], 0, 0);
    v5 = v5;

    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100002C8C(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100002EAC;
  v30 = sub_100002EBC;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100002EAC;
  v24 = sub_100002EBC;
  v25 = 0;
  v12 = [v9 prepareAdditionCreationWithItemAtURL:v10 byMoving:a3 creationInfo:v11 error:a5];
  if (v12)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002EC4;
    v16[3] = &unk_100040B28;
    v18 = &v26;
    v19 = &v20;
    v13 = dispatch_semaphore_create(0);
    v17 = v13;
    [v9 createAdditionStagedAtURL:v12 creationInfo:v11 completionHandler:v16];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    if (a5)
    {
      *a5 = v21[5];
    }

    v14 = v27[5];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v14;
}

void sub_100002E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002EAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002EC4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 48;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_100002F58(const char *a1, stat *a2)
{
  v4 = lstat(a1, a2);
  if (!v4)
  {
    v5 = *__error();
    st_mode = a2->st_mode;
    v7 = a2->st_flags & 0xFFFFFFDD;
    value = 0;
    *__error() = 0;
    if (getxattr(a1, "com.apple.genstore.orig_perms_v1", &value, 1uLL, 0, 0) == 1)
    {
      v7 |= (2 * value) & 6;
      v8 = (2 * value) & 0x10 | (32 * value) & 0x92 | (value >> 3) & 2;
    }

    else
    {
      if (*__error() != 93)
      {
        v9 = sub_100003164();
        if (os_log_type_enabled(v9, 0x90u))
        {
          sub_100025458();
        }

        v4 = 0xFFFFFFFFLL;
        v5 = 5;
        goto LABEL_10;
      }

      LOWORD(v8) = 128;
    }

    v4 = 0;
    a2->st_flags = v7;
    a2->st_mode = st_mode | v8;
LABEL_10:
    *__error() = v5;
  }

  return v4;
}

void sub_1000030BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_100003110(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_10000312C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x1Cu);
}

char *sub_10000314C(int a1, int __errnum, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return strerror(__errnum);
}

id sub_100003164()
{
  if (qword_10004C950 != -1)
  {
    sub_1000254EC();
  }

  v1 = qword_10004C958;

  return v1;
}

void sub_1000031A8(id a1)
{
  qword_10004C958 = os_log_create("com.apple.revisiond", "default");

  _objc_release_x1();
}

void sub_1000031EC(void *a1)
{
  v1 = a1;
  if (qword_10004C968 != -1)
  {
    sub_100025500();
  }

  if ([v1 length] >= 0x65)
  {
    v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @":0x%lx", [v1 hash]);
    v3 = [v1 substringToIndex:{100 - objc_msgSend(v2, "length")}];
    v4 = [v3 stringByAppendingString:v2];

    v1 = v4;
  }

  v5 = [qword_10004C960 signatureWithDomain:@"Application" type:@"Functional" subType:@"AssertionFailed" detectedProcess:@"revisiond" triggerThresholdValues:0];
  [v5 setObject:v1 forKeyedSubscript:kSymptomDiagnosticSignatureSubTypeContext];
  v6 = [qword_10004C960 snapshotWithSignature:v5 duration:0 event:0 payload:&stru_100040BA8 reply:15.0];
  v7 = sub_100003164();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10002558C(v1, v8);
    }
  }

  else if (os_log_type_enabled(v7, 0x90u))
  {
    sub_100025514(v1, v8);
  }
}

void sub_100003374(id a1)
{
  qword_10004C960 = objc_alloc_init(SDRDiagnosticReporter);

  _objc_release_x1();
}

void sub_1000033B0(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100025604(v2, v3);
  }
}

void sub_100003818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003858(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003870(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v8 = [NSString stringWithFormat:@"library is invalid"];
    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000257EC();
    }

    v10 = sub_10000F0F8(101, v8, 0);
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [*(*(*(a1 + 40) + 8) + 40) invalidate:0];
    v13 = *(*(a1 + 40) + 8);
    v7 = *(v13 + 40);
    *(v13 + 40) = 0;
    goto LABEL_8;
  }

  v5 = *(a1 + 40);
  v4 = a1 + 40;
  [*(*(v5 + 8) + 40) validateLibrary];
  [*(*(*v4 + 8) + 40) start];
  v6 = [*(*(*v4 + 8) + 40) device];
  if (v6 != dword_10004C698)
  {
    v7 = sub_100003164();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10002576C(v4);
    }

LABEL_8:
  }
}

void sub_1000039AC(uint64_t a1)
{
  if (([*(*(*(a1 + 32) + 8) + 40) checkForDBUpgrade] & 1) == 0)
  {
    pthread_rwlock_wrlock(&stru_10004C5D0);
    v2 = qword_10004C980;
    v3 = [NSNumber numberWithInt:**(a1 + 40)];
    [v2 setObject:0 forKeyedSubscript:v3];

    pthread_rwlock_unlock(&stru_10004C5D0);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_100003B98(uint64_t a1)
{
  pthread_rwlock_wrlock(&stru_10004C5D0);
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) device]);
  v2 = [qword_10004C980 objectForKeyedSubscript:?];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    [qword_10004C980 removeObjectForKey:v4];
  }

  pthread_rwlock_unlock(&stru_10004C5D0);
}

void sub_10000416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000041CC(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _libraryForDisk:a1 + 7 createIfNone:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_100004890(int a1, uint64_t a2, int a3, int a4)
{
  if (a1)
  {
    v7 = open("/dev/fsevents", 0);
    v8 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v8;
    }

    v15 = a3;
    v16 = a4;
    v17 = &dword_10004C69C;
    v14 = a2;
    v9 = ioctl(v7, 0x80187301uLL, &v14);
    if ((v9 & 0x80000000) != 0)
    {
      v12 = v9;
      v13 = sub_100003164();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100025AD4(v13);
      }

      close(v8);
      return v12;
    }

    close(v8);
    return 0;
  }

  v10 = dword_10004C69C;
  if (dword_10004C69C < 0)
  {
    return 0;
  }

  dword_10004C69C = -1;

  return close(v10);
}

uint64_t sub_100004B08()
{
  v0 = mach_thread_self();
  policy_info = 19;
  thread_policy_set(v0, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v0);
  v1 = GSDocumentIdentifier;
  v2 = GSDocumentIdentifier;
  if (byte_10004C978)
  {
    goto LABEL_46;
  }

  v3 = 0;
  while (1)
  {
    v4 = read(HIDWORD(v2[42].superclass), v35, 0x800uLL);
    v5 = v4;
    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4)
    {
      v32 = v3;
      if (v4 < 0x801)
      {
        v11 = v35;
        v12 = &v35[v4];
        do
        {
          v14 = *v11;
          v11 += 8;
          v13 = v14;
          if (v11 < v12)
          {
            v33 = v13 & 0xF000;
            v15 = v13 & 0xFFF;
            while (1)
            {
              v16 = *v11;
              if (v16 == 45887)
              {
                break;
              }

              v17 = *(v11 + 1);
              v18 = (v11 + 4);
              if (v16 == 9 && v15 == 13 && v17 == 4)
              {
                v23 = *v18;
                v24 = sub_100003164();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *v36 = 67109120;
                  v37 = v23;
                  _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] received unmount pending on device %d", v36, 8u);
                }

                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100004F88;
                v43 = &unk_100040C58;
                v44 = v23;
                dispatch_async(qword_10004C9A0, buf);
              }

              else if (v16 != 5 || v15 != 13)
              {
                v22 = sub_100003164();
                if (os_log_type_enabled(v22, 0x90u))
                {
                  *v36 = 67109632;
                  v37 = v15;
                  v38 = 1024;
                  v39 = v33;
                  v40 = 1024;
                  v41 = v16;
                  _os_log_error_impl(&_mh_execute_header, v22, 0x90u, "[ERROR] unknown arg. type %d flags %d arg_type %d", v36, 0x14u);
                }
              }

              v11 = v18 + v17;
              if (v18 + v17 >= v12)
              {
                goto LABEL_42;
              }
            }

            v11 += 2;
          }

LABEL_42:
          ;
        }

        while (v11 < v12);
        v2 = GSDocumentIdentifier;
        v1 = GSDocumentIdentifier;
      }

      else
      {
        v8 = sub_100003164();
        if (os_log_type_enabled(v8, 0x90u))
        {
          *buf = 134218240;
          *&buf[4] = v5;
          *&buf[12] = 1024;
          *&buf[14] = 2048;
          _os_log_error_impl(&_mh_execute_header, v8, 0x90u, "[ERROR] read %zd bytes but buffer is only %u", buf, 0x12u);
        }
      }

      v3 = v32;
    }

    else
    {
      if (v1[60].vtable)
      {
        goto LABEL_45;
      }

      v10 = sub_100003164();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v25 = v1;
        v26 = *__error();
        v27 = __error();
        v28 = strerror(*v27);
        *buf = 67109378;
        *&buf[4] = v26;
        v1 = v25;
        *&buf[8] = 2080;
        *&buf[10] = v28;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] fsevent_producer: strange zero byte read w/errno == %d (%s).", buf, 0x12u);
      }
    }

LABEL_7:
    if (v1[60].vtable)
    {
      goto LABEL_45;
    }
  }

  v6 = *__error();
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = strerror(v6);
    *buf = 134218242;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] fmod_watch returned: %zd (err %s)", buf, 0x16u);
  }

  v3 = v6;
  if (v6 != 9)
  {
    goto LABEL_7;
  }

LABEL_45:
  if (v3 != 9)
  {
LABEL_46:
    superclass_high = HIDWORD(v2[42].superclass);
    if ((superclass_high & 0x80000000) == 0)
    {
      HIDWORD(v2[42].superclass) = -1;
      if (close(superclass_high))
      {
        v30 = sub_100003164();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_100025C20(v30);
        }
      }
    }
  }

  return 0;
}

void sub_100004F88(uint64_t a1)
{
  v5 = *(a1 + 32);
  pthread_rwlock_rdlock(&stru_10004C5D0);
  v1 = qword_10004C980;
  v2 = [NSNumber numberWithInt:v5];
  v3 = [v1 objectForKeyedSubscript:v2];

  pthread_rwlock_unlock(&stru_10004C5D0);
  [v3 invalidate:1];

  if (ioctl(dword_10004C69C, 0x80047368uLL, &v5) < 0)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, 0x90u))
    {
      sub_100025CB0(&v5);
    }
  }
}

uint64_t sub_100005068()
{
  qword_10004CA38 = CFRunLoopGetCurrent();
  setiopolicy_np(0, 1, 2);
  v0 = sub_1000051CC();
  if (v0 < 0)
  {
    v1 = sub_100003164();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_100025D68();
    }
  }

  v2 = CFFileDescriptorCreate(0, v0, 1u, sub_100005244, 0);
  if (!v2)
  {
    v6 = sub_100003164();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100025E24();
    }

    goto LABEL_14;
  }

  v3 = v2;
  RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v2, 0);
  if (!RunLoopSource)
  {
    v7 = sub_100003164();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100025DA4();
    }

    CFFileDescriptorInvalidate(v3);
    CFRelease(v3);
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v5 = RunLoopSource;
  CFRunLoopAddSource(qword_10004CA38, RunLoopSource, kCFRunLoopDefaultMode);
  CFRelease(v5);
  CFFileDescriptorEnableCallBacks(v3, 1uLL);
LABEL_15:
  qword_10004C988 = v3;
  sub_100005440();
  CFRunLoopRun();
  return 0;
}

uint64_t sub_1000051CC()
{
  v0 = kqueue();
  if ((v0 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  v3.ident = 0;
  *&v3.filter = 131063;
  memset(&v3.fflags, 0, 20);
  if (kevent(v0, &v3, 1, 0, 0, 0))
  {
    close(v1);
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_100005244(__CFFileDescriptor *a1)
{
  NativeDescriptor = CFFileDescriptorGetNativeDescriptor(a1);
  memset(&eventlist, 0, sizeof(eventlist));
  v11.tv_sec = 0;
  v11.tv_nsec = 0;
  do
  {
    if ((byte_10004C978 & 1) != 0 || kevent(NativeDescriptor, 0, 0, &eventlist, 1, &v11) != -1)
    {
      goto LABEL_13;
    }
  }

  while (*__error() == 4);
  v3 = *__error();
  if (v3)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100025EA4();
    }

    if (v3 != 9)
    {
      CFFileDescriptorInvalidate(a1);
      CFRelease(a1);
    }

    qword_10004C988 = 0;
    v5 = sub_1000051CC();
    if (v5 < 0)
    {
      v9 = sub_100003164();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100025FAC();
      }
    }

    else
    {
      v6 = CFFileDescriptorCreate(0, v5, 1u, sub_100005244, 0);
      RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v6, 0);
      if (RunLoopSource)
      {
        v8 = RunLoopSource;
        CFRunLoopAddSource(qword_10004CA38, RunLoopSource, kCFRunLoopDefaultMode);
        CFRelease(v8);
        CFFileDescriptorEnableCallBacks(v6, 1uLL);
        qword_10004C988 = v6;
        return;
      }

      v10 = sub_100003164();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100025F2C();
      }

      CFFileDescriptorInvalidate(v6);
      CFRelease(v6);
    }

    [GSStorageManager shutdownLibraries:v11.tv_sec];
    __dmb(0xBu);
    sub_100004890(0, 0, 0, 0);
    exit(-1);
  }

LABEL_13:
  if ((byte_10004C978 & 1) == 0)
  {
    sub_100005440();
  }

  CFFileDescriptorEnableCallBacks(a1, 1uLL);
}

void sub_100005440()
{
  v0 = 1000;
  context = objc_autoreleasePoolPush();
  while (1)
  {
    v1 = getfsstat(0, 0, 2);
    if (v1 < 0)
    {
      v4 = 0;
LABEL_8:
      v6 = 0;
      goto LABEL_10;
    }

    v2 = 2168 * v1 + 2168;
    v3 = malloc_type_malloc(v2, 0x100004087E0324AuLL);
    v4 = v3;
    if (!v3)
    {
      goto LABEL_8;
    }

    v5 = getfsstat(v3, v2, 2);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    free(v4);
    if (!--v0)
    {
      v4 = 0;
      v6 = -1;
      goto LABEL_10;
    }
  }

  v6 = v5;
LABEL_10:
  pthread_rwlock_rdlock(&stru_10004C5D0);
  v43 = [qword_10004C980 count];
  pthread_rwlock_unlock(&stru_10004C5D0);
  v44 = v6;
  if (v6 >= 1)
  {
    name = kMobileKeyBagLockStatusNotifyToken;
    v8 = v6;
    *&v7 = 67109120;
    v41 = v7;
    _X20 = v4;
    while (1)
    {
      __asm { PRFM            #0, [X20,#0x8A8] }

      v15 = _X20->f_fsid.val[0];
      memset(&v55, 0, sizeof(v55));
      v16 = 0;
      if (stat(_X20->f_mntonname, &v55))
      {
        goto LABEL_29;
      }

      st_uid = v55.st_uid;
      if (!v55.st_uid)
      {
        goto LABEL_29;
      }

      if (MKBDeviceFormattedForContentProtection())
      {
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v63 = 0;
        v18 = dispatch_semaphore_create(0);
        v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v20 = dispatch_queue_create("com.apple.genstore.wait-unlock", v19);

        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100005B34;
        v57[3] = &unk_100040CA8;
        v59 = st_uid;
        v21 = v18;
        v58 = v21;
        v22 = objc_retainBlock(v57);
        v23 = v61;
        *&handler = _NSConcreteStackBlock;
        *(&handler + 1) = 3221225472;
        v68 = sub_100005C7C;
        v69 = &unk_100040CD0;
        v71 = &v60;
        v24 = v22;
        v70 = v24;
        if (notify_register_dispatch(name, v23 + 6, v20, &handler))
        {
          abort();
        }

        dispatch_async(v20, v24);
        v25 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v21, v25))
        {
          v26 = sub_100003164();
          if (os_log_type_enabled(v26, 0x90u))
          {
            *buf = v41;
            v66 = st_uid;
            _os_log_error_impl(&_mh_execute_header, v26, 0x90u, "[ERROR] timed out waiting for first unlock for user %d", buf, 8u);
          }
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100005CA4;
        block[3] = &unk_100040CF8;
        block[4] = &v60;
        dispatch_sync(v20, block);

        _Block_object_dispose(&v60, 8);
      }

      v54 = 0;
      v27 = [GSStorageManager createLibraryForDevice:v15 error:&v54, v41];
      v28 = v54;
      v16 = v28;
      if (!v28)
      {
        goto LABEL_29;
      }

      v29 = [v28 domain];
      if (([v29 isEqualToString:@"GSLibraryErrorDomain"] & 1) == 0)
      {
        break;
      }

      v30 = [v16 code] == 5;

      if (!v30)
      {
        goto LABEL_26;
      }

LABEL_29:

      ++_X20;
      if (!--v8)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v31 = sub_100003164();
    if (os_log_type_enabled(v31, 0x90u))
    {
      LODWORD(handler) = 138412290;
      *(&handler + 4) = v16;
      _os_log_error_impl(&_mh_execute_header, v31, 0x90u, "[ERROR] failed to create library - %@", &handler, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_30:
  pthread_rwlock_rdlock(&stru_10004C5D0);
  v32 = [qword_10004C980 count];
  v33 = objc_opt_new();
  v34 = qword_10004C980;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100005AAC;
  v50[3] = &unk_100040C80;
  v53 = v44;
  v52 = v4;
  v35 = v33;
  v51 = v35;
  [v34 enumerateKeysAndObjectsUsingBlock:v50];
  pthread_rwlock_unlock(&stru_10004C5D0);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v46 objects:v64 count:16];
  if (v37)
  {
    v38 = *v47;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(v36);
        }

        [*(*(&v46 + 1) + 8 * i) invalidate:{1, v41}];
      }

      v37 = [v36 countByEnumeratingWithState:&v46 objects:v64 count:16];
    }

    while (v37);
  }

  free(v4);
  if (v32 != v43 || [v36 count])
  {
    v40 = sub_100003164();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_10002602C(v36, v32 - v43, v40);
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_100005AAC(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 longValue];
  v6 = *(a1 + 48);
  if (v6 < 1)
  {
LABEL_5:
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    v7 = (*(a1 + 40) + 48);
    while (*v7 != v5)
    {
      v7 += 542;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_100005B34(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (MKBUserUnlockedSinceBoot())
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000260CC(v3);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else if (byte_10004C978 == 1)
  {
    v5 = *(a1 + 32);

    dispatch_semaphore_signal(v5);
  }

  else
  {
    v6 = sub_100003164();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v3;
      v8[0] = 67109120;
      v8[1] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Device is locked for user %u - waiting\n", v8, 8u);
    }
  }
}

uint64_t sub_100005C7C(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100005CA4(uint64_t a1)
{
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

void sub_100005CE0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_activity_should_defer(v2))
  {
    if (xpc_activity_set_state(v2, 3))
    {
      goto LABEL_23;
    }

    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to defer the purgable state", buf, 2u);
    }
  }

  if (xpc_activity_get_state(v2) == 2)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100026144();
    }

    pthread_rwlock_rdlock(&stru_10004C5D0);
    v5 = [qword_10004C980 allValues];
    pthread_rwlock_unlock(&stru_10004C5D0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 estimatePurgeableSpace]);
          v26[0] = &off_1000441C0;
          v26[1] = &off_1000441D8;
          v27[0] = v11;
          v27[1] = v11;
          v26[2] = &off_1000441F0;
          v27[2] = v11;
          v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
          v25[0] = @"com.apple.revisiond.cache-delete";
          v24[0] = @"CACHE_DELETE_ID";
          v24[1] = @"CACHE_DELETE_VOLUME";
          v13 = [v10 libraryRoot];
          v24[2] = @"CACHE_DELETE_AMOUNT";
          v25[1] = v13;
          v25[2] = v12;
          v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

          v15 = sub_100003164();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = v14;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Updating purgeable info %@", buf, 0xCu);
          }

          CacheDeleteUpdatePurgeable();
        }

        v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v7);
    }

    if (!xpc_activity_set_state(v2, 5))
    {
      v16 = sub_100003164();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to set the purgeable xpc state to done", buf, 2u);
      }
    }
  }

LABEL_23:
}

id sub_100006FB4()
{
  if (qword_10004C9A8 != -1)
  {
    sub_1000262F0();
  }

  v1 = qword_10004C9B0;

  return v1;
}

void sub_100006FF8(id a1)
{
  context = objc_autoreleasePoolPush();
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GSProtocol];
  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  [v1 setClasses:v3 forSelector:"listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:" argumentIndex:4 ofReply:0];
  [v1 setClasses:v3 forSelector:"listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:" argumentIndex:3 ofReply:1];
  [v1 setClasses:v3 forSelector:"listAdditionsUnderPath:withNameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:" argumentIndex:4 ofReply:0];
  [v1 setClasses:v3 forSelector:"listAdditionsUnderPath:withNameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:" argumentIndex:1 ofReply:1];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];

  [v1 setClasses:v6 forSelector:"removeAdditionsInStorage:removalSpec:completionHandler:" argumentIndex:1 ofReply:0];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];

  [v1 setClasses:v9 forSelector:"removeAdditionsInStorage:removalSpec:completionHandler:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v9 forSelector:"removeAdditionsUnderPath:additionsList:completionHandler:" argumentIndex:0 ofReply:1];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [NSSet setWithObjects:v10, v11, v12, v13, v14, objc_opt_class(), 0];

  [v1 setClasses:v15 forSelector:"removeAdditionsUnderPath:additionsList:completionHandler:" argumentIndex:1 ofReply:0];
  [v1 setClasses:v15 forSelector:"getAdditionInStorage:andNameSpace:named:completionHandler:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v15 forSelector:"getAdditionsInStorage:andNameSpace:named:completionHandler:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v15 forSelector:"listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v15 forSelector:"listAdditionsUnderPath:withNameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v15 forSelector:"setAdditionNameSpaceInStorage:nameSpace:additionName:value:completionHandler:" argumentIndex:0 ofReply:1];
  [v1 setClasses:v15 forSelector:"createAdditionInStorage:stagedFileDescriptor:creationInfo:completionHandler:" argumentIndex:0 ofReply:1];
  v16 = qword_10004C9B0;
  qword_10004C9B0 = v1;

  objc_autoreleasePoolPop(context);
}

id sub_100007360(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000748C;
  v13 = sub_10000749C;
  v14 = 0;
  if (qword_10004C9D0 != -1)
  {
    sub_100026304();
  }

  v2 = qword_10004C9B8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000074A4;
  v6[3] = &unk_100040D80;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t sub_10000748C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000074A4(uint64_t a1)
{
  if (!qword_10004C9C0)
  {
    sub_100007528();
  }

  if (*(a1 + 32))
  {
    v2 = [qword_10004C9C0 remoteObjectProxyWithErrorHandler:?];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = qword_10004C9C8;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  return _objc_release_x1();
}

void sub_100007528()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.revisiond" options:4096];
  v2 = sub_100006FB4();
  [v1 setRemoteObjectInterface:v2];

  objc_initWeak(&location, v1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007D5C;
  v6[3] = &unk_100040E10;
  objc_copyWeak(&v7, &location);
  [v1 setInterruptionHandler:v6];
  v3 = [v1 remoteObjectProxy];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007D9C;
  v4[3] = &unk_100040E10;
  objc_copyWeak(&v5, &location);
  [v1 setInvalidationHandler:v4];
  objc_storeStrong(&qword_10004C9C0, v1);
  objc_storeStrong(&qword_10004C9C8, v3);
  [v1 resume];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v0);
}

void sub_1000076BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000076F0()
{
  if (qword_10004C9D0 != -1)
  {
    sub_10002632C();
  }

  v1 = qword_10004C9B8;

  dispatch_sync(v1, &stru_100040DA0);
}

void sub_10000773C(id a1)
{
  [qword_10004C9C0 invalidate];
  v1 = qword_10004C9C0;
  qword_10004C9C0 = 0;

  v2 = qword_10004C9C8;
  qword_10004C9C8 = 0;

  v3 = +[GSStorageManager manager];
  [v3 _connectionWithDaemonWasLost];
}

void sub_1000078DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000078F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleObjResult:0 error:v3];
}

void sub_100007CF8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.genstore.daemontracker", v3);
  v2 = qword_10004C9B8;
  qword_10004C9B8 = v1;
}

void sub_100007D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100007D9C(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000263C4(v2);
  }

  v3 = qword_10004C9B8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E60;
  block[3] = &unk_100040E10;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);
}

void sub_100007E60(uint64_t a1)
{
  v1 = qword_10004C9C0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (v1 == WeakRetained)
  {
    v3 = qword_10004C9C0;
    qword_10004C9C0 = 0;

    v4 = qword_10004C9C8;
    qword_10004C9C8 = 0;

    v5 = +[GSStorageManager manager];
    [v5 _connectionWithDaemonWasLost];
  }
}

void sub_100007F08(uint64_t a1)
{
  v2 = qword_10004C9C0;
  if (!qword_10004C9C0)
  {
    sub_100007528();
    v2 = qword_10004C9C0;
  }

  v3 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_1000084C8(id a1)
{
  qword_10004C9E0 = objc_alloc_init(GSUserDefaults);

  _objc_release_x1();
}

id sub_1000088A0(_DWORD *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v4 = [v3 intValue], v4 >= a1[10]))
  {
    v7 = a1[11];
    v5 = v4 <= v7;
    if (v4 > v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (!v5)
  {
    v8 = sub_100003164();
    if (os_log_type_enabled(v8, 0x90u))
    {
      sub_1000264A0(a1);
    }
  }

LABEL_14:
  if (!v5)
  {
    v6 = a1[12];
  }

  v9 = [NSNumber numberWithInt:v6];

  return v9;
}

id sub_100008A9C(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v4 = [v3 longLongValue], v4 >= a1[5]))
  {
    v7 = a1[6];
    v5 = v4 <= v7;
    if (v4 > v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (!v5)
  {
    v8 = sub_100003164();
    if (os_log_type_enabled(v8, 0x90u))
    {
      sub_1000265C0(a1);
    }
  }

LABEL_14:
  if (!v5)
  {
    v6 = a1[7];
  }

  v9 = [NSNumber numberWithLongLong:v6];

  return v9;
}

id sub_100008CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v3 doubleValue], v4 < *(a1 + 40)) || v4 > *(a1 + 48))
  {
    if (v3)
    {
      v5 = sub_100003164();
      if (os_log_type_enabled(v5, 0x90u))
      {
        sub_1000266C4(a1);
      }
    }

    v4 = *(a1 + 56);
  }

  v6 = [NSNumber numberWithDouble:v4];

  return v6;
}

id sub_100008E54(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    if (v3)
    {
      v5 = sub_100003164();
      if (os_log_type_enabled(v5, 0x90u))
      {
        sub_100026744(a1);
      }
    }

    v4 = *(a1 + 40);
  }

  v6 = [NSNumber numberWithBool:v4];

  return v6;
}

BOOL sub_100008F80(const char *a1, _OWORD *a2)
{
  memset(v7, 0, sizeof(v7));
  v5 = xmmword_100031288;
  v6 = 0;
  v3 = getattrlist(a1, &v5, v7, 0x14uLL, 0);
  if (!v3)
  {
    *a2 = *&v7[4];
  }

  return v3 == 0;
}

id sub_100009018(const char *a1, void *a2)
{
  memset(&v7, 0, 512);
  if (statfs(a1, &v7))
  {
    if (a2)
    {
      v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v4 = v3;
      v5 = 0;
      *a2 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [NSURL fileURLWithFileSystemRepresentation:v7.f_mntonname isDirectory:1 relativeToURL:0];
  }

  return v5;
}

id sub_100009144(const char *a1, void *a2)
{
  memset(v8, 0, 512);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = 0x800000800000005;
  if (getattrlist(a1, v7, v8, 0x410uLL, 0))
  {
    if (a2)
    {
      v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v4 = v3;
      v5 = 0;
      *a2 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [NSURL fileURLWithFileSystemRepresentation:v8 + SDWORD2(v8[0]) + 8 isDirectory:DWORD1(v8[0]) == 2 relativeToURL:0];
  }

  return v5;
}

uint64_t sub_1000092B0(int a1, _DWORD *a2)
{
  v8 = 0;
  v7 = xmmword_1000312A0;
  v6 = 0;
  v5 = 0;
  if (fgetattrlist(a1, &v7, &v5, 0xCuLL, 0x20u) < 0)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, 0x90u))
    {
      sub_1000267E4();
    }

    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = HIDWORD(v5);
    }

    return v6;
  }

  return result;
}

uint64_t sub_100009364(int a1)
{
  if ((sub_1000093FC(a1, 0, 0x40u) & 0x80000000) != 0)
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, 0x90u))
    {
      sub_10002689C();
    }

    return 0;
  }

  else
  {

    return sub_1000092B0(a1, 0);
  }
}

uint64_t sub_1000093FC(int a1, int a2, gid_t a3)
{
  if ((a3 & a2) != 0)
  {
    *__error() = 22;
    v5 = sub_100003164();
    if (os_log_type_enabled(v5, 0x90u))
    {
      sub_100026958();
    }

LABEL_7:

    return 0xFFFFFFFFLL;
  }

  v6 = (a3 | a2) & 0xFFFF0000;
  if (v6)
  {
    *__error() = 1;
    v5 = sub_100003164();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      v20.st_dev = 136316418;
      *&v20.st_mode = "GSFchflags";
      WORD2(v20.st_ino) = 1024;
      *(&v20.st_ino + 6) = a2;
      HIWORD(v20.st_uid) = 1024;
      v20.st_gid = a3;
      LOWORD(v20.st_rdev) = 1024;
      *(&v20.st_rdev + 2) = v6;
      *(&v20.st_rdev + 3) = 1024;
      LODWORD(v20.st_atimespec.tv_sec) = v15;
      WORD2(v20.st_atimespec.tv_sec) = 2080;
      *(&v20.st_atimespec.tv_sec + 6) = v17;
      _os_log_error_impl(&_mh_execute_header, v5, 0x90u, "[ERROR] %s: non-modifyable flags -%x/+%x (%x); error %d (%s)", &v20, 0x2Eu);
    }

    goto LABEL_7;
  }

  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20) < 0)
  {
    v14 = sub_100003164();
    if (os_log_type_enabled(v14, 0x90u))
    {
      sub_100026AB0();
    }

    return 0xFFFFFFFFLL;
  }

  v9 = (a2 << 25) & 0x40000000 | a2;
  st_flags = v20.st_flags;
  v11 = v20.st_flags & ~v9 | a3;
  if (v11 != v20.st_flags)
  {
    v12 = 1;
    while (1)
    {
      v13 = v12;
      v18[0] = st_flags;
      v18[1] = v11;
      v19 = 0;
      if (ffsctl(a1, 0xC00C4114uLL, v18, 0) < 0)
      {
        break;
      }

      st_flags = v19;
      if (v19 != v18[0])
      {
        v12 = 0;
        v11 = v19 & ~v9 | a3;
        if (v13)
        {
          continue;
        }
      }

      return 0;
    }

    v5 = sub_100003164();
    if (os_log_type_enabled(v5, 0x90u))
    {
      sub_100026A04();
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_100009668(char *a1, uint64_t a2, char a3, void *a4)
{
  v34[0] = a1;
  v34[1] = 0;
  v7 = fts_open(v34, 84, 0);
  if (!v7)
  {
    v19 = [NSString stringWithFormat:@"fts_open(%s) failed", a1];
    v20 = *__error();
    v21 = sub_100003164();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B50();
    }

    if (a4)
    {
      *a4 = sub_10000F37C(v20, v19);
    }

    return 0;
  }

  v8 = v7;
  v9 = fts_read(v7);
  v10 = 1;
  if (!v9)
  {
    goto LABEL_46;
  }

  v11 = v9;
  v32 = a4;
  while (1)
  {
    fts_info = v11->fts_info;
    if (fts_info > 0xD)
    {
      break;
    }

    v13 = 1 << fts_info;
    if (((1 << fts_info) & 0x3108) != 0)
    {
      if (sub_10000C5F4(v11->fts_path, 6, 0))
      {
        v26 = [NSString stringWithFormat:@"Failed to make %s deletable", v11->fts_path];
        v27 = *__error();
        v28 = sub_100003164();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      fts_statp = v11->fts_statp;
      if (!fts_statp)
      {
        sub_100026BD4();
      }

      if (!sub_10000C834(v11->fts_path, fts_statp))
      {
        v26 = [NSString stringWithFormat:@"Failed to remove %s", v11->fts_path];
        v27 = *__error();
        v28 = sub_100003164();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_42;
        }

LABEL_43:

        v23 = v32;
        if (!v32)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if ((v13 & 0x50) != 0)
    {
      if ((v11->fts_level || (a3 & 1) == 0) && !sub_10000C834(v11->fts_path, v11->fts_statp))
      {
        v26 = [NSString stringWithFormat:@"Failed to remove %s", v11->fts_path];
        v27 = *__error();
        v28 = sub_100003164();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

LABEL_42:
        sub_100026B50();
        goto LABEL_43;
      }
    }

    else
    {
      if ((v13 & 0x480) == 0)
      {
        break;
      }

      if (*__error() != 2)
      {
        fts_errno = v11->fts_errno;
        *__error() = fts_errno;
        v26 = [NSString stringWithFormat:@"fts_read() failed for path '%s'\n", v11->fts_path];
        v27 = *__error();
        v28 = sub_100003164();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

LABEL_24:
    v11 = fts_read(v8);
    if (!v11)
    {
      v10 = 1;
      goto LABEL_46;
    }
  }

  if (fts_info != 1)
  {
    goto LABEL_24;
  }

  fts_path = v11->fts_path;
  v16 = v11->fts_statp;
  if (sub_10000C5F4(fts_path, 6, 0))
  {
    goto LABEL_35;
  }

  memset(&v33, 0, sizeof(v33));
  if (v16)
  {
    p_st_mode = &v16->st_mode;
  }

  else
  {
    v18 = lstat(fts_path, &v33);
    p_st_mode = &v33.st_mode;
    if (v18)
    {
      goto LABEL_35;
    }
  }

  if (!lchmod(fts_path, *p_st_mode | 0x90))
  {
    goto LABEL_24;
  }

LABEL_35:
  v23 = v32;
  v26 = [NSString stringWithFormat:@"Failed to make %s deletable", v11->fts_path];
  v27 = *__error();
  v24 = sub_100003164();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_100026B50();
  }

  if (v32)
  {
LABEL_44:
    *v23 = sub_10000F37C(v27, v26);
  }

LABEL_45:

  v10 = 0;
LABEL_46:
  fts_close(v8);
  return v10;
}

BOOL sub_100009AE4(int a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = xmmword_1000312D0;
  v5 = 0;
  return fsetattrlist(a1, &v4, v6, 0x10uLL, 0) >= 0;
}

id sub_100009B64(int32_t a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x2000uLL, 0x7D8CCE64uLL);
  if (v6)
  {
    v7 = v6;
    if (sub_100009CB4(v6, 0x2000uLL, a1, a2) < 0)
    {
      if (a3)
      {
        [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        *a3 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = [NSString gs_stringWithFileSystemRepresentation:v7];
    }

    free(v7);
  }

  else
  {
    v9 = sub_100003164();
    if (os_log_type_enabled(v9, 0x90u))
    {
      sub_100026C00();
    }

    if (a3)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

ssize_t sub_100009CB4(char *a1, size_t a2, int32_t a3, uint64_t a4)
{
  v11.val[0] = a3;
  v11.val[1] = 0;
  v7 = 5;
  while (1)
  {
    v8 = fsgetpath(a1, a2, &v11, a4);
    if ((v8 & 0x8000000000000000) == 0)
    {
      return v8 - 1;
    }

    if (*__error() != 35)
    {
      break;
    }

    if (!--v7)
    {
      return -1;
    }
  }

  v10 = sub_100003164();
  if (os_log_type_enabled(v10, 0x90u))
  {
    sub_100026CA0();
  }

  return -1;
}

uint64_t sub_100009D60(std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, void *a3)
{
  memset(&v16, 0, sizeof(v16));
  if (lstat(a1, &v16) < 0)
  {
    v9 = [NSString stringWithFormat:@"Unable to lstat %s", a1];
    v10 = *__error();
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B50();
    }

    if (a3)
    {
      *a3 = sub_10000F37C(v10, v9);
    }

    return 0;
  }

  v15 = 0;
  result = sub_100009FA8(a1, &v16, &v15, a3);
  if (!result)
  {
    return result;
  }

  rename(a1, a2, v7);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (*__error() == 18)
  {
    if ((copyfile(a1, a2, 0, 0x10E000Fu) & 0x80000000) == 0)
    {
      sub_10000A2AC(a1, a2);
      sub_100009668(a1, 0, 0, 0);
LABEL_7:
      sub_10000A170(a2, &v15);
      return 1;
    }

    v12 = [NSString stringWithFormat:@"copyfile(%s, %s) failed", a1, a2];
    v13 = *__error();
    v14 = sub_100003164();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = [NSString stringWithFormat:@"rename(%s, %s) failed", a1, a2];
  v13 = *__error();
  v14 = sub_100003164();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
LABEL_16:
    sub_100026B50();
  }

LABEL_17:

  if (a3)
  {
    *a3 = sub_10000F37C(v13, v12);
  }

  sub_10000A170(a1, &v15);
  return 0;
}

uint64_t sub_100009FA8(const char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 4);
  v9 = *(a2 + 116);
  if (!geteuid())
  {
    return 1;
  }

  if (*(a2 + 4) == (v8 | 0x80))
  {
    v10 = 0;
  }

  else
  {
    if (chmod(a1, v8 | 0x80))
    {
      v11 = [NSString stringWithFormat:@"failed make %s writable", a1];
      v12 = *__error();
      v13 = sub_100003164();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }

      if (a4)
      {
        *a4 = sub_10000F37C(v12, v11);
      }

      return 0;
    }

    v10 = *(a2 + 4);
  }

  *a3 = v10;
  if (*(a2 + 116) == (v9 & 0xFFFFFFF9))
  {
    *(a3 + 4) = 0;
    return 1;
  }

  if ((sub_10000C554(a1, 6, 0) & 0x80000000) == 0)
  {
    *(a3 + 4) = *(a2 + 116);
    return 1;
  }

  v15 = [NSString stringWithFormat:@"failed to make %s writable", a1];
  v16 = *__error();
  v17 = sub_100003164();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100026B50();
  }

  if (a4)
  {
    *a4 = sub_10000F37C(v16, v15);
  }

  if (*a3)
  {
    chmod(a1, *a3);
  }

  return 0;
}

void sub_10000A170(const char *a1, uint64_t a2)
{
  if (geteuid())
  {
    if (*a2 && chmod(a1, *a2))
    {
      v4 = [NSString stringWithFormat:@"failed restore %s permissions", a1];
      v5 = *__error();
      v6 = sub_100003164();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }
    }

    if (*(a2 + 4) && sub_10000C554(a1, 0, *(a2 + 4)) && *__error() != 45)
    {
      v7 = [NSString stringWithFormat:@"failed restore %s flags", a1];
      v8 = *__error();
      v9 = sub_100003164();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }
    }
  }
}

void sub_10000A2AC(const char *a1, const char *a2)
{
  v7 = 0;
  v6 = xmmword_1000312D0;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  if (getattrlist(a1, &v6, v4, 0x14uLL, 1u))
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100026D68();
    }
  }

  else
  {
    if (!setattrlist(a2, &v6, v4 + 4, 0x10uLL, 1u))
    {
      return;
    }

    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100026DEC();
    }
  }
}

id sub_10000A388(const char *a1, void *a2)
{
  v4 = getxattr(a1, "com.apple.genstore.info", 0, 0, 0, 0);
  if (v4 == -1)
  {
    if (*__error() == 93)
    {
      v12 = +[NSMutableDictionary dictionary];
      goto LABEL_28;
    }

    v13 = [NSString stringWithFormat:@"getxattr failed"];
    v14 = *__error();
    v15 = sub_100003164();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_100026B50();
LABEL_21:

    if (a2)
    {
      *a2 = sub_10000F37C(v14, v13);
    }

    goto LABEL_26;
  }

  v5 = v4;
  v6 = malloc_type_malloc(v4, 0xEC731120uLL);
  if (!v6)
  {
    v13 = [NSString stringWithFormat:@"malloc failed"];
    v14 = *__error();
    v15 = sub_100003164();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v7 = v6;
  v8 = getxattr(a1, "com.apple.genstore.info", v6, v5, 0, 0);
  if (v8 == -1 || v8 != v5)
  {
    v10 = [NSString stringWithFormat:@"Attribute %s at path %s should have size: %ld actual %ld\n", "com.apple.genstore.info", a1, v5, v8];;
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100026E70();
    }

    if (a2)
    {
      *a2 = sub_10000F0F8(101, v10, 0);
    }

    free(v7);
    goto LABEL_27;
  }

  v13 = [NSData dataWithBytesNoCopy:v7 length:v5 freeWhenDone:1];
  v16 = [NSPropertyListSerialization propertyListWithData:v13 options:1 format:0 error:a2];
  if (!v16)
  {
    v18 = sub_100003164();
    if (os_log_type_enabled(v18, 0x90u))
    {
      sub_100026EE8(a1, v18);
    }

LABEL_26:
    goto LABEL_27;
  }

  v17 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v17;

    goto LABEL_28;
  }

  v20 = [NSString stringWithFormat:@"result isn't a CFDictionary"];
  v21 = sub_100003164();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_100026E70();
  }

  if (a2)
  {
    *a2 = sub_10000F0F8(101, v20, 0);
  }

LABEL_27:
  v12 = 0;
LABEL_28:

  return v12;
}

uint64_t sub_10000A6D8(const char *a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a2;
  v8 = [v7 bytes];
  v9 = [v7 length];

  return sub_10000A760(a1, "com.apple.genstore.info", v8, v9, a3);
}

uint64_t sub_10000A760(const char *a1, const char *a2, const void *a3, size_t a4, void *a5)
{
  v10 = geteuid();
  v20 = 0;
  if (v10)
  {
    memset(&v19, 0, sizeof(v19));
    if (lstat(a1, &v19))
    {
      v11 = [NSString stringWithFormat:@"lstat(%s) failed", a1];
      v12 = *__error();
      v13 = sub_100003164();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }

      if (a5)
      {
        *a5 = sub_10000F37C(v12, v11);
      }

      return 0;
    }

    if (!sub_100009FA8(a1, &v19, &v20, a5))
    {
      return 0;
    }
  }

  if (a3 && a4)
  {
    v14 = 1;
    if (setxattr(a1, a2, a3, a4, 0, 1))
    {
      v15 = [NSString stringWithFormat:@"setxattr(%s) failed", a1];
      v16 = *__error();
      v17 = sub_100003164();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v14 = 1;
    if (removexattr(a1, a2, 1) && *__error() != 93)
    {
      v15 = [NSString stringWithFormat:@"removexattr(%s) failed", a1];
      v16 = *__error();
      v17 = sub_100003164();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:
        sub_100026B50();
      }

LABEL_19:

      if (a5)
      {
        *a5 = sub_10000F37C(v16, v15);
      }

      v14 = 0;
    }
  }

  if (v10)
  {
    sub_10000A170(a1, &v20);
  }

  return v14;
}

uint64_t sub_10000A9BC(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = sub_10000A388(a1, a3);
  v7 = v6;
  if (v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000AAE8;
    v12[3] = &unk_100040F50;
    v8 = v6;
    v13 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    if ([v8 count])
    {
      v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:a3];
      if (!v9)
      {
        v10 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10000A6D8(a1, v9, a3);

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

void sub_10000AAE8(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    [v7 removeObjectForKey:v5];
  }

  else
  {
    [v7 setObject:v8 forKey:v5];
  }
}

id sub_10000AB98(char *name, char *path, void *a3)
{
  v6 = getxattr(path, name, value, 0x2FEuLL, 0, 0);
  if (v6 == -1)
  {
    v8 = [NSString stringWithFormat:@"Failed to get %s xattr", name];
    v11 = *__error();
    v12 = sub_100003164();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = v6;
  if (v6 >= 766)
  {
    v8 = [NSString stringWithFormat:@"%s xattr too large (%ld) at path %s", name, v6, path];
    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100026E70();
    }

    if (a3)
    {
      v10 = sub_10000F0F8(101, v8, 0);
LABEL_15:
      v13 = 0;
      *a3 = v10;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v6)
  {
    value[v6] = 0;
    v8 = +[NSFileManager defaultManager];
    v13 = [v8 stringWithFileSystemRepresentation:value length:v7];
    goto LABEL_17;
  }

  v8 = [NSString stringWithFormat:@"%s xattr too short (0) at path %s", name, path];
  v11 = *__error();
  v12 = sub_100003164();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
LABEL_12:
    sub_100026B50();
  }

LABEL_13:

  if (a3)
  {
    v10 = sub_10000F37C(v11, v8);
    goto LABEL_15;
  }

LABEL_16:
  v13 = 0;
LABEL_17:

  return v13;
}

uint64_t sub_10000ADD8(const char *a1, id a2, void *a3)
{
  v6 = a2;
  v7 = [a2 fileSystemRepresentation];
  v8 = v7;
  if (v7)
  {
    v9 = strlen(v7);
  }

  else
  {
    v9 = 0;
  }

  return sub_10000A760(a1, "com.apple.genstore.origposixname", v8, v9, a3);
}

uint64_t sub_10000AE58(const char *a1, id a2, void *a3)
{
  v6 = a2;
  v7 = [a2 fileSystemRepresentation];
  v8 = v7;
  if (v7)
  {
    v9 = strlen(v7);
  }

  else
  {
    v9 = 0;
  }

  return sub_10000A760(a1, "com.apple.genstore.origdisplayname", v8, v9, a3);
}

uint64_t sub_10000AED8(const char *a1, char a2, void *a3)
{
  if ((a2 & 0xC) != 0)
  {
    v6[1] = v3;
    v6[2] = v4;
    v6[0] = a2 & 0xC | 1;
    return sub_10000A760(a1, "com.apple.genstore.gen_options", v6, 8uLL, a3);
  }

  else
  {

    return sub_10000A760(a1, "com.apple.genstore.gen_options", 0, 0, a3);
  }
}

BOOL sub_10000AF3C(const char *a1)
{
  value = 0;
  v1 = getxattr(a1, "com.apple.genstore.gen_options", &value, 8uLL, 0, 1);
  if (v1 == -1)
  {
    return *__error() == 93;
  }

  v2 = v1;
  result = 0;
  if (v2 == 8)
  {
    return value;
  }

  return result;
}

uint64_t sub_10000B02C(const char *a1, uint64_t a2)
{
  memset(&v14, 0, sizeof(v14));
  if (stat(a1, &v14) || getxattr(a1, "com.apple.decmpfs", 0, 0, 0, 32) > 0)
  {
    return 0;
  }

  v6 = [NSString gs_stringWithFileSystemRepresentation:a2];
  v7 = [v6 stringByDeletingLastPathComponent];

  st_dev = v14.st_dev;
  if (stat([v7 fileSystemRepresentation], &v14))
  {
    v9 = 0;
  }

  else
  {
    v9 = st_dev == v14.st_dev;
  }

  if (!v9 || (memset(&v15, 0, 512), statfs(a1, &v15) < 0))
  {
    v4 = 0;
  }

  else
  {
    v13 = 0;
    v12 = xmmword_1000312B8;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    if (getattrlist(v15.f_mntonname, &v12, v10, 0x24uLL, 0x21u) >= 0)
    {
      v4 = HIWORD(DWORD2(v10[0])) & 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_10000B1E0(char *a1, void *a2)
{
  v20[0] = a1;
  v20[1] = 0;
  v4 = fts_open(v20, 84, 0);
  if (!v4)
  {
    v11 = [NSString stringWithFormat:@"fts_open(%s) failed", a1];
    v12 = *__error();
    v13 = sub_100003164();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B50();
    }

    if (a2)
    {
      *a2 = sub_10000F37C(v12, v11);
    }

    return 0;
  }

  v5 = v4;
  v6 = fts_read(v4);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    fts_info = v7->fts_info;
    if (fts_info == 8)
    {
      if (v7->fts_name[0] != 46 || v7->fts_name[1] != 95)
      {
        v8 += v7->fts_statp->st_size;
      }

      goto LABEL_14;
    }

    if (fts_info == 7 || fts_info == 10)
    {
      break;
    }

LABEL_14:
    v7 = fts_read(v5);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  fts_errno = v7->fts_errno;
  *__error() = fts_errno;
  v15 = [NSString stringWithFormat:@"fts_read(%s) failed", v7->fts_path];
  v16 = *__error();
  v17 = sub_100003164();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100026B50();
  }

  if (a2)
  {
    *a2 = sub_10000F37C(v16, v15);
  }

  v8 = -1;
LABEL_27:
  fts_close(v5);
  return v8;
}

uint64_t sub_10000B3E8(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path *a2, int a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    memset(&v21, 0, sizeof(v21));
    v20 = 0;
    if (lstat(a1, &v21))
    {
      v8 = [NSString stringWithFormat:@"lstat(%s) failed", a1];
      v9 = *__error();
      v10 = sub_100003164();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }

      if (a5)
      {
        *a5 = sub_10000F37C(v9, v8);
      }
    }

    else if (sub_100009FA8(a1, &v21, &v20, a5))
    {
      rename(a1, a2, v14);
      if (!v15)
      {
        sub_10000A170(a2, &v20);
        return sub_10000B60C(a2, 0, 0, a5);
      }

      v16 = [NSString stringWithFormat:@"rename(%s, %s) failed", a1, a2];
      v17 = *__error();
      v18 = sub_100003164();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }

      if (a5)
      {
        *a5 = sub_10000F37C(v17, v16);
      }

      sub_10000A170(a1, &v20);
    }

    return 0;
  }

  else
  {
    v11 = [[_CopyfileCallbackCtx alloc] initWithPath:a1 error:a5];
    v12 = v11;
    if (v11)
    {
      [(_CopyfileCallbackCtx *)v11 setDoArchive:1];
      v13 = sub_10000BC00(a1, a2, 17563663, v12, a5);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

uint64_t sub_10000B60C(char *a1, int a2, void *a3, void *a4)
{
  v49[0] = a1;
  v49[1] = 0;
  v8 = fts_open(v49, 84, 0);
  if (!v8)
  {
    v10 = [NSString stringWithFormat:@"fts_open(%s) failed", a1];
    v28 = *__error();
    v29 = sub_100003164();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B50();
    }

    if (a4)
    {
      sub_10000F37C(v28, v10);
      *a4 = v30 = 0;
      goto LABEL_64;
    }

LABEL_41:
    v30 = 0;
    goto LABEL_64;
  }

  v9 = v8;
  v10 = [[_CopyfileCallbackCtx alloc] initWithPath:a1 error:a4];
  if (!v10)
  {
    goto LABEL_41;
  }

  v11 = fts_read(v9);
  if (v11)
  {
    v12 = v11;
    do
    {
      fts_info = v12->fts_info;
      if (fts_info > 0xD)
      {
        goto LABEL_13;
      }

      fts_statp = v12->fts_statp;
      if (((1 << fts_info) & 0x3048) == 0)
      {
        if (fts_info != 8)
        {
          if (((1 << fts_info) & 0x490) != 0)
          {
            goto LABEL_42;
          }

          goto LABEL_13;
        }

        if (v12->fts_name[0] == 46 && v12->fts_name[1] == 95)
        {
          goto LABEL_13;
        }

        v46 = a3;
        if ((*(fts_statp + 4) & 0xF000) == 0x8000 && *(fts_statp + 6) >= 2u)
        {
          v45 = v10;
          fts_parent = v12->fts_parent;
          v48 = 0;
          memset(&v47, 0, sizeof(v47));
          v17 = fts_parent->fts_statp;
          fts_pathlen = fts_parent->fts_pathlen;
          if (snprintf(&__str, 0x400uLL, "%s_XXXXXX", v12->fts_path) >= 0x400)
          {
            v35 = [NSString stringWithFormat:@"temporary path %s_XXXXXX too long", v12->fts_path];
            v36 = sub_100003164();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              sub_100026F74();
            }

            v37 = v45;
            if (a4)
            {
              v38 = sub_10000F0F8(104, v35, 0);
              goto LABEL_51;
            }

LABEL_52:

            v23 = v37;
            goto LABEL_59;
          }

          if (!v12->fts_level)
          {
            v19 = v12->fts_pathlen;
            while (v19 >= 2)
            {
              v20 = v19 - 1;
              v21 = v12->fts_path[--v19];
              if (v21 == 47)
              {
                fts_pathlen = v20;
                goto LABEL_30;
              }
            }

            fts_pathlen = 0;
LABEL_30:
            __str.__pn_.__r_.__value_.__s.__data_[fts_pathlen] = 0;
            if (stat(&__str, &v47))
            {
              v23 = v45;
              if (!a4 || *a4)
              {
                goto LABEL_59;
              }

              v37 = v45;
              v35 = [NSString stringWithFormat:@"stat(%s) failed", &__str];
              v43 = *__error();
              v44 = sub_100003164();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                sub_100026B50();
              }

              v38 = sub_10000F37C(v43, v35);
LABEL_51:
              *a4 = v38;
              goto LABEL_52;
            }

            __str.__pn_.__r_.__value_.__s.__data_[fts_pathlen] = 47;
            v17 = &v47;
          }

          __str.__pn_.__r_.__value_.__s.__data_[fts_pathlen] = 0;
          v22 = sub_100009FA8(&__str, v17, &v48, a4);
          v23 = v45;
          if (!v22)
          {
            goto LABEL_59;
          }

          __str.__pn_.__r_.__value_.__s.__data_[fts_pathlen] = 47;
          if (!sub_10000BC00(v12->fts_path, &__str, 16777231, v45, a4))
          {
            goto LABEL_58;
          }

          rename(&__str, v12->fts_path, v24);
          if (v25)
          {
            v39 = [NSString stringWithFormat:@"rename(%s, %s) failed", &__str, v12->fts_path];
            v40 = *__error();
            v41 = sub_100003164();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              sub_100026B50();
            }

            if (a4)
            {
              *a4 = sub_10000F37C(v40, v39);
            }

LABEL_58:
            unlink(&__str);
            __str.__pn_.__r_.__value_.__s.__data_[fts_pathlen] = 0;
            sub_10000A170(&__str, &v48);
            v23 = v45;
LABEL_59:

            a3 = v46;
            break;
          }

          __str.__pn_.__r_.__value_.__s.__data_[fts_pathlen] = 0;
          sub_10000A170(&__str, &v48);
        }

        [(_CopyfileCallbackCtx *)v10 setGenerationSize:[(_CopyfileCallbackCtx *)v10 generationSize]+ *(fts_statp + 96)];
        v26 = [(_CopyfileCallbackCtx *)v10 generationSize];
        v27 = [(_CopyfileCallbackCtx *)v10 progress];
        [v27 setCompletedUnitCount:v26];

        a3 = v46;
      }

      if (!sub_10000C12C(v12->fts_path, fts_statp, a2, a4))
      {
        break;
      }

      if (fts_info <= 0xA && ((1 << fts_info) & 0x490) != 0)
      {
LABEL_42:
        fts_errno = v12->fts_errno;
        *__error() = fts_errno;
        v32 = [NSString stringWithFormat:@"fts_read() failed for path '%s'\n", v12->fts_path];
        v33 = *__error();
        v34 = sub_100003164();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100026B50();
        }

        if (a4)
        {
          *a4 = sub_10000F37C(v33, v32);
        }

        v30 = 0;
        goto LABEL_63;
      }

LABEL_13:
      v12 = fts_read(v9);
    }

    while (v12);
  }

  if (a3)
  {
    *a3 = [(_CopyfileCallbackCtx *)v10 generationSize];
  }

  v30 = 1;
LABEL_63:
  fts_close(v9);
LABEL_64:

  return v30;
}

uint64_t sub_10000BC00(const char *a1, const char *a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  [v9 doUnarchive];
  v10 = sub_10000B02C(a1, a2);
  if (!v10)
  {
    v12 = a3 & 0x100000 | 0x8000;
    if (v12 == 1081344)
    {
      v13 = a3 & 0xFEEF7FFF | 0x8000;
    }

    else
    {
      v13 = a3 & 0xFEFF7FFF | 0x8000;
    }

    v14 = copyfile_state_alloc();
    copyfile_state_set(v14, 6u, sub_10000C88C);
    copyfile_state_set(v14, 7u, v9);
    v15 = copyfile(a1, a2, v14, v13);
    v11 = v15 == 0;
    copyfile_state_free(v14);
    if (!v15 && v12 == 1081344)
    {
      v11 = 1;
      removefile(a1, 0, 1u);
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (clonefile(a1, a2, 1u))
  {
    goto LABEL_3;
  }

  if ((a3 & 0x100000) != 0)
  {
    removefile(a1, 0, 1u);
  }

  if ([v9 doArchive])
  {
    v11 = sub_10000B60C(a2, 0, v9 + 24, a5);
LABEL_15:
    if (!a5)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (![v9 doUnarchive])
  {
    v11 = 1;
    goto LABEL_22;
  }

  v36[0] = a2;
  v36[1] = 0;
  v23 = fts_open(v36, 84, 0);
  if (!v23)
  {
    v33 = [NSString stringWithFormat:@"fts_open(%s) failed", a2];
    v34 = *__error();
    v35 = sub_100003164();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_100026B50();
    }

    if (a5)
    {
      *a5 = sub_10000F37C(v34, v33);
    }

LABEL_3:
    v11 = 0;
    if (!a5)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v24 = v23;
  v25 = fts_read(v23);
  v11 = 1;
  if (!v25)
  {
    goto LABEL_50;
  }

  v26 = v25;
  while (1)
  {
    fts_info = v26->fts_info;
    if (fts_info > 0xD)
    {
      goto LABEL_35;
    }

    if (((1 << fts_info) & 0x3148) != 0)
    {
      break;
    }

    if (((1 << fts_info) & 0x490) != 0)
    {
      goto LABEL_38;
    }

LABEL_35:
    v26 = fts_read(v24);
    if (!v26)
    {
LABEL_49:
      v11 = 1;
      goto LABEL_50;
    }
  }

  if (!sub_10000CABC(v26->fts_path, v26->fts_statp, a5))
  {
    goto LABEL_49;
  }

  if (fts_info > 0xA || ((1 << fts_info) & 0x490) == 0)
  {
    goto LABEL_35;
  }

LABEL_38:
  fts_errno = v26->fts_errno;
  *__error() = fts_errno;
  v30 = [NSString stringWithFormat:@"fts_read() failed for path '%s'\n", v26->fts_path];
  v31 = *__error();
  v32 = sub_100003164();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_100026B50();
  }

  if (a5)
  {
    *a5 = sub_10000F37C(v31, v30);
  }

  v11 = 0;
LABEL_50:
  fts_close(v24);
  if (a5)
  {
LABEL_16:
    if ((v11 & 1) == 0)
    {
      v16 = "copyfile";
      if (v10)
      {
        v16 = "clonefile";
      }

      v17 = [NSString stringWithFormat:@"%s(%s, %s) failed", v16, a1, a2];
      v18 = *__error();
      v19 = sub_100003164();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }

      v20 = sub_10000F37C(v18, v17);

      v21 = v20;
      v11 = 0;
      *a5 = v20;
    }
  }

LABEL_22:

  return v11;
}

uint64_t sub_10000C010(const char *a1, char *a2, void *a3)
{
  v6 = [[_CopyfileCallbackCtx alloc] initWithPath:a1 error:a3];
  v7 = v6;
  if (v6)
  {
    [(_CopyfileCallbackCtx *)v6 setDoUnarchive:1];
    v15 = 0;
    v8 = sub_10000BC00(a1, a2, 17694735, v7, &v15);
    v9 = v15;
    v10 = v9;
    if ((v8 & 1) == 0 && [v9 code] == 17)
    {
      v11 = [v10 domain];
      v12 = [v11 isEqualToString:NSPOSIXErrorDomain];

      if (v12)
      {
        sub_100009668(a2, 0, 0, 0);
      }
    }

    if (a3)
    {
      v13 = v10;
      *a3 = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10000C12C(char *a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a2 + 4);
  if ((v4 & 0xF000) == 0xA000)
  {
    return 1;
  }

  v10 = *(a2 + 116);
  if ((v10 & 0x46) != 0)
  {
    if (chflags(a1, v10 & 0xFFFFFFB9))
    {
      v11 = [NSString stringWithFormat:@"failed to make path %s writable", a1];
      v12 = *__error();
      v13 = sub_100003164();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v4 = *(a2 + 4);
  }

  if ((v4 & 0x80) == 0)
  {
    if (chmod(a1, v4 | 0x80))
    {
      v11 = [NSString stringWithFormat:@"failed to make path %s writable", a1];
      v12 = *__error();
      v13 = sub_100003164();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:
        sub_100026B50();
      }

LABEL_12:

      if (a4)
      {
        *a4 = sub_10000F37C(v12, v11);
      }

      return 0;
    }

    v4 = *(a2 + 4);
  }

  if ((v4 & 0xF000) == 0x4000)
  {
    v14 = open(a1, 256);
  }

  else
  {
    v14 = open(a1, 258);
  }

  v15 = v14;
  if ((v14 & 0x80000000) == 0)
  {
    if ((*(a2 + 116) & 0x20) != 0 && (sub_1000093FC(v14, 102, 0) & 0x80000000) != 0)
    {
      v18 = [NSString stringWithFormat:@"failed make path %s uncompressed", a1];
      v19 = *__error();
      v20 = sub_100003164();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100026B50();
      }

      goto LABEL_45;
    }

    if ((fgetxattr(v15, "com.apple.genstore.orig_perms_v1", 0, 0, 0, 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v24 = (*(a2 + 4) >> 5) & 4 | (*(a2 + 4) >> 1) & 8 | (16 * ((*(a2 + 4) >> 1) & 1));
    value = (*(a2 + 4) >> 5) & 4 | (*(a2 + 4) >> 1) & 8 | (16 * ((*(a2 + 4) & 2) != 0));
    v25 = *(a2 + 116);
    if ((v25 & 6) != 0)
    {
      value = (v25 >> 1) & 3 | v24;
    }

    if (fsetxattr(v15, "com.apple.genstore.orig_perms_v1", &value, 1uLL, 0, 0))
    {
      v18 = [NSString stringWithFormat:@"failed to save original permissions for %s", a1];
      v19 = *__error();
      v20 = sub_100003164();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_23:
      v16 = *(a2 + 4);
      if ((v16 & 0xF000) == 0x4000)
      {
        v17 = 365;
      }

      else
      {
        v17 = 292;
      }

      if (!a3)
      {
        v17 = 0;
      }

      if (!fchmod(v15, (v16 | v17) & 0xFF6D))
      {
        v5 = 1;
LABEL_48:
        close(v15);
        return v5;
      }

      v18 = [NSString stringWithFormat:@"failed to set archived permissions for %s", a1];
      v19 = *__error();
      v20 = sub_100003164();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
LABEL_45:

        if (a4)
        {
          *a4 = sub_10000F37C(v19, v18);
        }

        v5 = 0;
        goto LABEL_48;
      }
    }

    sub_100026B50();
    goto LABEL_45;
  }

  v21 = [NSString stringWithFormat:@"failed to open generation item %s", a1];
  v22 = *__error();
  v23 = sub_100003164();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_100026B50();
  }

  if (a4)
  {
    *a4 = sub_10000F37C(v22, v21);
  }

  v5 = 0;
  if (v15 != -1)
  {
    goto LABEL_48;
  }

  return v5;
}

uint64_t sub_10000C554(const char *a1, int a2, gid_t a3)
{
  v5 = open(a1, 32772);
  if (v5 < 0)
  {
    v10 = sub_100003164();
    if (os_log_type_enabled(v10, 0x90u))
    {
      sub_100026FEC();
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    v7 = sub_1000093FC(v5, a2, a3);
    v8 = *__error();
    close(v6);
    *__error() = v8;
    return v7;
  }
}

uint64_t sub_10000C5F4(const char *a1, int a2, gid_t a3)
{
  v5 = open(a1, 2129924);
  if (v5 < 0)
  {
    v10 = sub_100003164();
    if (os_log_type_enabled(v10, 0x90u))
    {
      sub_100026FEC();
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    v7 = sub_1000093FC(v5, a2, a3);
    v8 = *__error();
    close(v6);
    *__error() = v8;
    return v7;
  }
}

BOOL sub_10000C834(std::__fs::filesystem::path *__p, std::error_code *a2)
{
  if (off_10004CA40)
  {
    off_10004CA40(__p);
  }

  return !remove(__p, a2) || *__error() == 2;
}

uint64_t sub_10000C88C(int a1, int a2, _copyfile_state *a3, char *a4, char *a5, void *a6)
{
  v11 = a6;
  dst = 0;
  v12 = [v11 progress];

  if (v12)
  {
    v13 = [v11 progress];
    v14 = [v13 isCancelled];

    if (v14)
    {
      *__error() = 89;
      v15 = 2;
      goto LABEL_28;
    }

    if (a1 == 4 && a2 == 4 && !copyfile_state_get(a3, 8u, &dst))
    {
      v16 = [v11 generationSize];
      v17 = dst;
      v18 = [v11 progress];
      [v18 setCompletedUnitCount:&v16[v17]];
    }
  }

  v15 = 2;
  if (a1 && a2 != 3)
  {
    if (a1 == 1 && a2 == 1)
    {
      v19 = strrchr(a4, 47);
      if (v19)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = a4;
      }

      if (*v20 == 46 && v20[1] == 95)
      {
        v15 = 1;
        goto LABEL_28;
      }

LABEL_27:
      v15 = 0;
      goto LABEL_28;
    }

    if (a2 != 2 || (a1 | 2) != 3)
    {
      goto LABEL_27;
    }

    memset(&v25, 0, sizeof(v25));
    if (!lstat(a5, &v25) && (![v11 doArchive] || sub_10000C12C(a5, &v25, 0, 0)) && (!objc_msgSend(v11, "doUnarchive") || sub_10000CABC(a5, &v25, 0)))
    {
      sub_10000A2AC(a4, a5);
      if ((v25.st_mode & 0xF000) != 0x4000)
      {
        v21 = [v11 generationSize];
        [v11 setGenerationSize:&v21[v25.st_size]];
        v22 = [v11 generationSize];
        v23 = [v11 progress];
        [v23 setCompletedUnitCount:v22];
      }

      goto LABEL_27;
    }
  }

LABEL_28:

  return v15;
}

uint64_t sub_10000CABC(char *a1, uint64_t a2, void *a3)
{
  memset(&v17, 0, sizeof(v17));
  if (a2)
  {
    p_st_mode = (a2 + 4);
    p_st_flags = (a2 + 116);
    goto LABEL_3;
  }

  if (!lstat(a1, &v17))
  {
    p_st_flags = &v17.st_flags;
    p_st_mode = &v17.st_mode;
LABEL_3:
    v7 = *p_st_mode;
    if ((*p_st_mode & 0xF000) == 0xA000)
    {
      return 1;
    }

    value = 0;
    v9 = getxattr(a1, "com.apple.genstore.orig_perms_v1", &value, 1uLL, 0, 0);
    if (v9 == 1)
    {
      v10 = (2 * value) & 6;
      v11 = (2 * value) & 0x10 | (32 * value) & 0x92 | (value >> 3) & 2;
    }

    else
    {
      if (*__error() != 93)
      {
        v12 = [NSString stringWithFormat:@"Failed to retrieve original perms from xattr on item %s", a1];
        v13 = *__error();
        v14 = sub_100003164();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v10 = 0;
      v11 = 128;
    }

    if ((*p_st_flags & 2) != 0 && sub_10000C554(a1, 2, 0))
    {
      v12 = [NSString stringWithFormat:@"Failed to temporarily unset UF_IMMUTABLE for %s", a1];
      v13 = *__error();
      v14 = sub_100003164();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *p_st_mode;
      if ((*p_st_mode & 0x80) == 0)
      {
        if (chmod(a1, v15 | 0x80))
        {
          v12 = [NSString stringWithFormat:@"Failed to temporarily make %s writable", a1];
          v13 = *__error();
          v14 = sub_100003164();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        v15 = *p_st_mode;
      }

      if ((v15 & 0xF000) == 0x4000)
      {
        removexattr(a1, "com.apple.genstore.orig_mtime", 0);
      }

      removexattr(a1, "com.apple.genstore.origdisplayname", 0);
      removexattr(a1, "com.apple.genstore.info", 0);
      removexattr(a1, "com.apple.genstore.gen_options", 0);
      if (v9 == 1)
      {
        removexattr(a1, "com.apple.genstore.orig_perms_v1", 0);
      }

      if (!chmod(a1, v7 & 0xFFF | v11))
      {
        if (!sub_10000C554(a1, 2, v10) || *__error() == 45)
        {
          return 1;
        }

        v12 = [NSString stringWithFormat:@"chflags(%s) failed", a1];
        v13 = *__error();
        v14 = sub_100003164();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v12 = [NSString stringWithFormat:@"chmod(%s, %04o) failed", a1, v7 & 0xFFF | v11];
      v13 = *__error();
      v14 = sub_100003164();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
LABEL_28:
        sub_100026B50();
      }
    }

LABEL_29:

    if (a3)
    {
      *a3 = sub_10000F37C(v13, v12);
    }
  }

  return 0;
}

void sub_10000D240(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100003164();
  v11 = os_log_type_enabled(v10, 0x90u);
  if (v8)
  {
    if (v11)
    {
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, 0x90u, "[ERROR] Sqlite request %@ failed on %@ with error [%@]", &v14, 0x20u);
    }
  }

  else if (v11)
  {
    sub_100027090();
  }

  v12 = sub_10000D39C(v9);
  v13 = [v9 code];
  if (v13 <= 0x1A && ((1 << v13) & 0x5000800) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

id sub_10000D39C(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v4 = [v1 code];
  if (v4 <= 10)
  {
    if (!v4)
    {
      v13 = 0;
      goto LABEL_18;
    }

    if (v4 == 10)
    {
      v10 = [v3 domain];
      v11 = [v10 isEqualToString:NSPOSIXErrorDomain];

      if (v11)
      {
        v12 = [v3 code];
      }

      else
      {
        v12 = 10;
      }

      v18 = [v1 sqliteStatement];
      v5 = [NSString stringWithFormat:@"Database operation failed: %@", v18];

      v19 = sub_100003164();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10002717C(v5, v12);
      }

      v16 = sub_10000F37C(v12, v5);
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v4 != 11 && v4 != 24 && v4 != 26)
  {
LABEL_13:
    v14 = [v1 sqliteStatement];
    v5 = [NSString stringWithFormat:@"Database operation failed: %@", v14];

    v15 = sub_100003164();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100027208();
    }

    v7 = 101;
    v8 = v5;
    v9 = v3;
    goto LABEL_16;
  }

  v5 = [NSString stringWithFormat:@"Database is corrupted"];
  v6 = sub_100003164();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000270F8();
  }

  v7 = 113;
  v8 = v5;
  v9 = 0;
LABEL_16:
  v16 = sub_10000F0F8(v7, v8, v9);
LABEL_17:
  v13 = v16;

LABEL_18:

  return v13;
}

id sub_10000D6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setUserVersion:5];
  if ([v3 execute:{@"CREATE TABLE IF NOT EXISTS files (file_row_id INTEGER PRIMARY KEY ASC, file_inode INTEGER, file_last_seen INTEGER NOT NULL DEFAULT 0, file_status INTEGER NOT NULL DEFAULT 1, file_document_id INTEGER, UNIQUE(file_document_id))"}] && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS files_status_idx ON files (file_status)") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS files_inode_idx ON files (file_inode)") && objc_msgSend(v3, "execute:", @"CREATE TABLE IF NOT EXISTS generations (generation_id INTEGER PRIMARY KEY ASC,generation_storage_id INTEGER NOT NULL,generation_name TEXT NOT NULL,generation_client_id TEXT NOT NULL,generation_path TEXT UNIQUE,generation_options INTEGER NOT NULL DEFAULT 1,generation_status INTEGER NOT NULL DEFAULT 1,generation_add_time INTEGER NOT NULL DEFAULT 0,generation_size INTEGER NOT NULL DEFAULT 0,generation_prunable INTEGER NOT NULL DEFAULT 0,generation_conflict_resolved BOOL NOT NULL DEFAULT 0)") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS generations_options_idx ON generations (generation_options)") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS generations_status_idx ON generations (generation_status)") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS generations_addtime_idx ON generations (generation_add_time desc)") && objc_msgSend(v3, "execute:", @"CREATE UNIQUE INDEX IF NOT EXISTS generations_storage_id_name_client_id  ON generations (generation_storage_id, generation_name, generation_client_id)") && objc_msgSend(v3, "execute:", @"CREATE TABLE IF NOT EXISTS state (v)"))
  {
    v4 = [v3 execute:@"INSERT INTO state values (NULL)"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10000D7C4(id a1, PQLConnection *a2)
{
  v2 = a2;
  if ([(PQLConnection *)v2 execute:@"DROP INDEX IF EXISTS storage_status_idx"]&& [(PQLConnection *)v2 execute:@"DROP INDEX IF EXISTS generations_storage_id_idx"]&& [(PQLConnection *)v2 execute:@"DROP TABLE IF EXISTS files_new"]&& [(PQLConnection *)v2 execute:@"CREATE TABLE IF NOT EXISTS files_new (file_row_id INTEGER PRIMARY KEY ASC, file_name TEXT, file_parent_id INTEGER, file_path TEXT, file_inode INTEGER, file_last_seen INTEGER NOT NULL DEFAULT 0, file_status INTEGER NOT NULL DEFAULT 1, file_storage_id INTEGER NOT NULL)"]&& [(PQLConnection *)v2 execute:@"INSERT INTO files_new (file_name, file_parent_id, file_path, file_inode, file_last_seen, file_status, file_storage_id) SELECT file_name, file_parent_id, file_path, file_inode, file_last_seen, file_status, file_storage_id FROM files ORDER BY file_row_id"]&& [(PQLConnection *)v2 execute:@"DROP TABLE files"]&& [(PQLConnection *)v2 execute:@"ALTER TABLE files_new RENAME TO files"]&& [(PQLConnection *)v2 execute:@"CREATE INDEX IF NOT EXISTS files_name_parent_id_idx ON files (file_name, file_parent_id)"]&& [(PQLConnection *)v2 execute:@"CREATE INDEX IF NOT EXISTS file_path_idx ON files (file_path)"]&& [(PQLConnection *)v2 execute:@"CREATE INDEX IF NOT EXISTS files_status_storage_id_idx ON files (file_status, file_storage_id)"])
  {
    v3 = [(PQLConnection *)v2 execute:@"PRAGMA user_version = 2"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_10000D8E0(id a1, PQLConnection *a2)
{
  v2 = a2;
  if ([(PQLConnection *)v2 execute:@"DROP TABLE IF EXISTS generations_new"]&& [(PQLConnection *)v2 execute:@"CREATE TABLE IF NOT EXISTS generations_new (generation_id INTEGER PRIMARY KEY ASC, generation_storage_id INTEGER NOT NULL, generation_name TEXT NOT NULL, generation_client_id TEXT NOT NULL, generation_path TEXT UNIQUE, generation_options INTEGER NOT NULL DEFAULT 1, generation_status INTEGER NOT NULL DEFAULT 1, generation_add_time INTEGER NOT NULL DEFAULT 0, generation_size INTEGER NOT NULL DEFAULT 0)"]&& [(PQLConnection *)v2 execute:@"INSERT INTO generations_new (generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time) SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time FROM generations ORDER BY generation_id"]&& [(PQLConnection *)v2 execute:@"DROP TABLE generations"]&& [(PQLConnection *)v2 execute:@"ALTER TABLE generations_new RENAME TO generations"]&& [(PQLConnection *)v2 execute:@"CREATE INDEX IF NOT EXISTS generations_options_idx ON generations (generation_options)"]&& [(PQLConnection *)v2 execute:@"CREATE INDEX IF NOT EXISTS generations_status_idx ON generations (generation_status)"]&& [(PQLConnection *)v2 execute:@"CREATE UNIQUE INDEX IF NOT EXISTS generations_storage_id_name_client_id ON generations (generation_storage_id, generation_name, generation_client_id)"])
  {
    v3 = [(PQLConnection *)v2 execute:@"PRAGMA user_version = 3"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10000DA34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sqlite3_exec([*(a1 + 32) dbHandle], "SELECT generation_prunable FROM generations LIMIT 0", 0, 0, 0))
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] upgrade generations to have the generation_prunable column", buf, 2u);
    }

    if (![v3 execute:@"DROP TABLE IF EXISTS generations_new"] || !objc_msgSend(v3, "execute:", @"CREATE TABLE generations_new (generation_id INTEGER PRIMARY KEY ASC,generation_storage_id INTEGER NOT NULL,generation_name TEXT NOT NULL,generation_client_id TEXT NOT NULL,generation_path TEXT UNIQUE,generation_options INTEGER NOT NULL DEFAULT 1,generation_status INTEGER NOT NULL DEFAULT 1,generation_add_time INTEGER NOT NULL DEFAULT 0,generation_size INTEGER NOT NULL DEFAULT 0,generation_prunable INTEGER NOT NULL DEFAULT 0)") || !objc_msgSend(v3, "execute:", @"INSERT OR REPLACE INTO generations_new (generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size,) SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size,  FROM generations ORDER BY generation_id") || !objc_msgSend(v3, "execute:", @"DROP TABLE generations") || !objc_msgSend(v3, "execute:", @"ALTER TABLE generations_new RENAME TO generations"))
    {
      goto LABEL_21;
    }
  }

  if (!sqlite3_exec([*(a1 + 32) dbHandle], "CREATE TABLE state (v)", 0, 0, 0))
  {
    v5 = sub_100003164();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] create the state table", v8, 2u);
    }

    if (![v3 execute:@"INSERT INTO state values (NULL)"])
    {
      goto LABEL_21;
    }
  }

  if ([v3 execute:@"CREATE INDEX IF NOT EXISTS files_inode_idx ON files (file_inode)"] && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS generations_options_idx ON generations (generation_options)") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS generations_status_idx ON generations (generation_status)") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS generations_addtime_idx ON generations (generation_add_time desc)") && objc_msgSend(v3, "execute:", @"CREATE UNIQUE INDEX IF NOT EXISTS generations_storage_id_name_client_id ON generations (generation_storage_id, generation_name, generation_client_id)") && objc_msgSend(v3, "execute:", @"DROP INDEX IF EXISTS files_status_storage_id_idx") && objc_msgSend(v3, "execute:", @"CREATE INDEX IF NOT EXISTS files_status_idx ON files (file_status)"))
  {
    v6 = [v3 execute:@"PRAGMA user_version = 4"];
  }

  else
  {
LABEL_21:
    v6 = 0;
  }

  return v6;
}

BOOL sub_10000DC74(id a1, PQLConnection *a2)
{
  v2 = a2;
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] upgrade generations table to have the generation_conflict_resolved column", v6, 2u);
  }

  if ([(PQLConnection *)v2 execute:@"DROP TABLE IF EXISTS generations_new"]&& [(PQLConnection *)v2 execute:@"CREATE TABLE generations_new (generation_id INTEGER PRIMARY KEY ASC, generation_storage_id INTEGER NOT NULL, generation_name TEXT NOT NULL, generation_client_id TEXT NOT NULL, generation_path TEXT UNIQUE, generation_options INTEGER NOT NULL DEFAULT 1, generation_status INTEGER NOT NULL DEFAULT 1, generation_add_time INTEGER NOT NULL DEFAULT 0, generation_size INTEGER NOT NULL DEFAULT 0, generation_prunable INTEGER NOT NULL DEFAULT 0, generation_conflict_resolved BOOL NOT NULL DEFAULT 0)"]&& [(PQLConnection *)v2 execute:@"INSERT OR REPLACE INTO generations_new (generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_prunable) SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_prunable FROM generations ORDER BY generation_id"]&& [(PQLConnection *)v2 execute:@"DROP TABLE generations"]&& [(PQLConnection *)v2 execute:@"ALTER TABLE generations_new RENAME TO generations"])
  {
    v4 = [(PQLConnection *)v2 execute:@"PRAGMA user_version = 5"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10000DF40(uint64_t a1)
{
  v1 = (a1 + 32);
  if (![*(a1 + 32) execute:@"PRAGMA auto_vacuum = incremental"] || !objc_msgSend(*v1, "execute:", @"PRAGMA page_size = 4096"))
  {
    v6 = 0;
    v2 = 0;
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v2 = [*v1 fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA journal_mode = WAL"];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"wal"];

  if ((v4 & 1) == 0)
  {
    v5 = sub_100003164();
    if (os_log_type_enabled(v5, 0x90u))
    {
      sub_10002727C(v1, v5);
    }
  }

  v6 = [*v1 fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA wal_autocheckpoint = 4000"];
  if (([v6 isEqualToNumber:&off_100044208] & 1) == 0)
  {
    v9 = [NSError errorWithSqliteCode:2 andMessage:@"cannot set wal_autocheckpoint to 4000"];
    [*v1 setLastError:v9];

    goto LABEL_10;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

void sub_10000E370(id a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    sub_10002738C();
  }

  v5 = sqlite3_value_text(*a4);
  v6 = access(v5, 0) == 0;

  sqlite3_result_int(a2, v6);
}

void sub_10000E3C8(id a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    sub_1000273B8();
  }

  v5 = sqlite3_value_text(*a4);
  if (access(v5, 0))
  {
    v6 = *__error() == 2;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_result_int(a2, v6);
}

void sub_10000E434(id a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  v6 = sqlite3_value_int64(*a4);
  v7 = a4[1];
  v9 = pql_sqlite3_value_object();
  v8 = NSHashGet(v9, v6) == 0;
  sqlite3_result_int(a2, v8);
}

void sub_10000E8B0(id a1, PQLConnection *a2, PQLStatement *a3, NSError *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003164();
  if (os_log_type_enabled(v7, 0x90u))
  {
    sub_100027544();
  }
}

void sub_10000E9E8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x16u);
}

id sub_10000EFC8(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v18[0] = kCFErrorDescriptionKey;
    v18[1] = kCFErrorUnderlyingErrorKey;
    v19[0] = a2;
    v19[1] = a3;
    v6 = a3;
    v7 = a2;
    v8 = v19;
    v9 = v18;
    v10 = 2;
  }

  else
  {
    v16 = kCFErrorDescriptionKey;
    v17 = a2;
    v11 = 0;
    v12 = a2;
    v8 = &v17;
    v9 = &v16;
    v10 = 1;
  }

  v13 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:v10];
  v14 = [NSError errorWithDomain:@"GSLibraryErrorDomain" code:a1 userInfo:v13];

  return v14;
}

id sub_10000F0F8(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = @"GSLibraryErrorDomain";
  v8 = @"GSLibraryErrorDomain";
  if (a1 > 106)
  {
    if (a1 > 109)
    {
      if (a1 <= 111)
      {
        if (a1 == 110)
        {
          v10 = 9;
        }

        else
        {
          v7 = NSCocoaErrorDomain;
          v9 = NSCocoaErrorDomain;
          v10 = 642;
        }

        goto LABEL_25;
      }

      if (a1 != 112)
      {
        if (a1 == 113)
        {
          v10 = 10;
          goto LABEL_25;
        }

        goto LABEL_32;
      }

LABEL_20:
      v10 = 3;
      goto LABEL_25;
    }

    if (a1 == 107)
    {
      v10 = 5;
    }

    else if (a1 == 108)
    {
      v10 = 6;
    }

    else
    {
      v7 = NSCocoaErrorDomain;
      v11 = NSCocoaErrorDomain;
      v10 = 640;
    }

    goto LABEL_25;
  }

  if (a1 > 103)
  {
    if (a1 == 104)
    {
      v10 = 2;
      goto LABEL_25;
    }

    if (a1 != 105)
    {
      v7 = NSCocoaErrorDomain;
      v12 = NSCocoaErrorDomain;
      v10 = 516;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v10 = 1;
  if (!a1 || a1 == 101)
  {
LABEL_25:
    v13 = v7;
    if (v6)
    {
      v23[0] = kCFErrorDescriptionKey;
      v23[1] = kCFErrorUnderlyingErrorKey;
      v24[0] = v5;
      v24[1] = v6;
      v14 = v24;
      v15 = v23;
      v16 = 2;
    }

    else
    {
      v21 = kCFErrorDescriptionKey;
      v22 = v5;
      v14 = &v22;
      v15 = &v21;
      v16 = 1;
    }

    v17 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16];
    v18 = [NSError errorWithDomain:v13 code:v10 userInfo:v17];

    goto LABEL_29;
  }

  if (a1 == 102)
  {
    v10 = 7;
    goto LABEL_25;
  }

LABEL_32:
  v20 = sub_100003164();
  if (os_log_type_enabled(v20, 0x90u))
  {
    sub_1000275D8(a1, v20);
  }

  v13 = @"GSLibraryErrorDomain";
  v18 = 0;
LABEL_29:

  return v18;
}

id sub_10000F37C(int a1, void *a2)
{
  v10 = kCFErrorDescriptionKey;
  v3 = a2;
  v4 = [NSString gs_stringWithFileSystemRepresentation:strerror(a1)];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:a1 userInfo:v5];
  if (a1 > 29)
  {
    if (a1 > 65)
    {
      if (a1 <= 92)
      {
        if (a1 == 66)
        {
          goto LABEL_30;
        }

        if (a1 != 69)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      if (a1 != 102)
      {
        if (a1 == 93)
        {
          v7 = 112;
          goto LABEL_34;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (a1 > 61)
      {
        if ((a1 - 62) >= 2)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      if (a1 == 30)
      {
        v7 = 111;
        goto LABEL_34;
      }

      if (a1 == 34)
      {
LABEL_21:
        v7 = 109;
        goto LABEL_34;
      }

      if (a1 != 45)
      {
        goto LABEL_27;
      }
    }

    v7 = 107;
    goto LABEL_34;
  }

  if (a1 > 19)
  {
    if ((a1 - 20) < 2)
    {
      goto LABEL_30;
    }

    if (a1 == 26)
    {
      goto LABEL_28;
    }

    if (a1 != 28)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (a1 <= 12)
  {
    if (a1 == 1)
    {
      goto LABEL_28;
    }

    if (a1 != 2)
    {
LABEL_27:
      v7 = 101;
      goto LABEL_34;
    }

LABEL_30:
    v7 = 104;
    goto LABEL_34;
  }

  if (a1 == 13)
  {
LABEL_28:
    v7 = 108;
    goto LABEL_34;
  }

  if (a1 != 17)
  {
    if (a1 != 18)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v7 = 106;
LABEL_34:
  v8 = sub_10000F0F8(v7, v3, v6);

  return v8;
}

void sub_10000F5DC(id a1)
{
  qword_10004C9E8 = objc_alloc_init(GSDaemon);

  _objc_release_x1();
}

void sub_10000FA24(uint64_t a1)
{
  if (MKBDeviceUnlockedSinceBoot())
  {
    v2 = *(a1 + 32);

    dispatch_semaphore_signal(v2);
  }

  else
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Device is locked - waiting\n", v4, 2u);
    }
  }
}

uint64_t sub_10000FABC(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_10000FAE4(uint64_t a1)
{
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

__CFDictionary *__cdecl sub_10000FC90(id a1, int a2, __CFDictionary *a3)
{
  v4 = a3;
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(__CFDictionary *)v4 description];
    v9 = 136315394;
    v10 = [v6 UTF8String];
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Cache delete asked us to purge %s with urgency %d", &v9, 0x12u);
  }

  v7 = sub_10000FD88(a2, v4, 0);
  return v7;
}

id sub_10000FD88(int a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = v6;
  if (!v6)
  {
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, 0x90u))
    {
      sub_1000277EC(v5, v11);
    }

    goto LABEL_38;
  }

  memset(&v62, 0, sizeof(v62));
  if (lstat([v6 fileSystemRepresentation], &v62) < 0)
  {
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, 0x90u))
    {
      sub_100027774(v7, v11);
    }

    goto LABEL_38;
  }

  v8 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v9 = [v8 longLongValue];

  v10 = [GSStorageManager existingLibraryForDevice:v62.st_dev];
  if (!v10)
  {
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v68) = v62.st_dev;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed locating library for device %d", buf, 8u);
    }

    goto LABEL_38;
  }

  v11 = v10;
  v12 = [v10 libraryRoot];
  v13 = [v12 stringByAppendingString:@"-bad-1"];

  value = 0;
  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (v15)
  {
    v16 = removefile_state_alloc();
    removefile_state_set(v16, 1u, sub_100010A0C);
    removefile_state_set(v16, 2u, &value);
    removefile([v13 fileSystemRepresentation], v16, 1u);
    removefile_state_free(v16);
    v9 -= value;
    v17 = sub_100003164();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000276F8(&value, v17);
    }
  }

  if (a3)
  {
    v57 = v13;
    v58 = [v11 computePurgeableSpace];
    v52 = [v11 computeNumberOfPruneableStorages];
    v51 = [v11 computePruneableNumberOfGenerations];
    v18 = [NSURL fileURLWithPath:v7];
    v60 = 0;
    [v18 getResourceValue:&v60 forKey:NSURLVolumeTotalCapacityKey error:0];
    v19 = v60;
    v20 = [v19 unsignedLongLongValue];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = -1;
    }

    v54 = v21;
    v59 = 0;
    v56 = v18;
    [v18 getResourceValue:&v59 forKey:NSURLVolumeAvailableCapacityKey error:0];
    v22 = v59;

    v50 = [v22 unsignedLongLongValue];
    v23 = +[GSUserDefaults defaults];
    v55 = [v23 longLongForKey:@"cachedeletethreshold.mindiskconsumed" min:1 max:0x7FFFFFFFFFFFFFFFLL byDefault:314572800];
    [v23 doubleForKey:@"cachedeletethreshold.diskpercentage.high" min:0.0001 max:1.0 byDefault:0.1];
    v25 = v24;
    v53 = [v23 longLongForKey:@"cachedeletethreshold.diskconsumed.high" min:1 max:0x7FFFFFFFFFFFFFFFLL byDefault:0xC80000000];
    [v23 doubleForKey:@"cachedeletereduction.diskpercentage.high" min:0.0 max:1.0 byDefault:0.1];
    v27 = v26;
    v28 = [v23 longLongForKey:@"cachedeletereduction.diskconsumed.high" min:0 max:0x7FFFFFFFFFFFFFFFLL byDefault:0x40000000];
    [v23 doubleForKey:@"cachedeletethreshold.diskpercentage.med" min:0.0001 max:1.0 byDefault:0.05];
    v30 = v29;
    v31 = [v23 longLongForKey:@"cachedeletethreshold.diskconsumed.med" min:1 max:0x7FFFFFFFFFFFFFFFLL byDefault:0xC80000000];
    v32 = [v23 intForKey:@"cachedeletereduction.gensperfile.med" min:0 max:0x7FFFFFFFLL byDefault:10];
    [v23 doubleForKey:@"cachedeletereduction.diskpercentage.med" min:0.0 max:1.0 byDefault:0.1];
    v34 = v33;
    v35 = [v23 longLongForKey:@"cachedeletereduction.diskconsumed.med" min:0 max:0x7FFFFFFFFFFFFFFFLL byDefault:0x40000000];
    if (v58 > v55)
    {
      v36 = v58;
      v37 = v58 / v54;
      if (v37 <= v25 && v58 <= v53)
      {
        v48 = v51 / v52 > v32 || v37 > v30 || v58 > v31;
        v13 = v57;
        if (v48)
        {
          v49 = v34 * v36;
          if (v35 >= v49)
          {
            v9 = v49;
          }

          else
          {
            v9 = v35;
          }

          a1 = 2;
        }

        goto LABEL_23;
      }

      v39 = v27 * v36;
      if (v28 >= v39)
      {
        v9 = v39;
      }

      else
      {
        v9 = v28;
      }

      a1 = 3;
    }

    v13 = v57;
LABEL_23:
    v40 = sub_100003164();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219520;
      v68 = v58;
      v69 = 2048;
      v70 = v52;
      v71 = 2048;
      v72 = v51;
      v73 = 2048;
      v74 = v54;
      v75 = 2048;
      v76 = v50;
      v77 = 1024;
      v78 = a1;
      v79 = 2048;
      v80 = v9;
      _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] period reclaim computed purgeable:%lld files:%lld generationCount:%lld diskCapacity:%lld availible:%lld computedUrgency:%d computedSpaceToReclaim:%lld", buf, 0x44u);
    }
  }

  if (v9 <= 0)
  {
    v65[0] = @"CACHE_DELETE_VOLUME";
    v65[1] = @"CACHE_DELETE_AMOUNT";
    v66[0] = v7;
    v42 = [NSNumber numberWithLongLong:value];
    v66[1] = v42;
    v43 = v66;
    v44 = v65;
    goto LABEL_36;
  }

  if (a1 < 2)
  {

LABEL_38:
    v45 = 0;
    goto LABEL_39;
  }

  v63[0] = @"CACHE_DELETE_VOLUME";
  v63[1] = @"CACHE_DELETE_AMOUNT";
  v64[0] = v7;
  v41 = [v11 purgeTryingToReclaimSpace:v9 highUrgency:a1 != 2];
  v42 = [NSNumber numberWithLongLong:&v41[value]];
  v64[1] = v42;
  v43 = v64;
  v44 = v63;
LABEL_36:
  v45 = [NSDictionary dictionaryWithObjects:v43 forKeys:v44 count:2, v50];

LABEL_39:
  return v45;
}

__CFDictionary *__cdecl sub_100010490(id a1, int a2, __CFDictionary *a3)
{
  v4 = a3;
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(__CFDictionary *)v4 description];
    v9 = 136315394;
    v10 = [v6 UTF8String];
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Cache delete asked us to reclaim %s with urgency %d", &v9, 0x12u);
  }

  v7 = sub_10000FD88(a2, v4, 1);
  return v7;
}

id sub_1000107DC(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] Client %d connection was interrupted", v5, 8u);
  }

  return [*(a1 + 32) invalidate];
}

id sub_10001088C(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100027864(a1, v2);
  }

  v3 = [*(a1 + 32) exportedObject];
  [v3 invalidate];

  return [*(a1 + 32) setExportedObject:0];
}

uint64_t start(uint64_t a1, char **a2)
{
  v3 = objc_autoreleasePoolPush();
  if (getuid())
  {
    v4 = __stderrp;
    v5 = basename(*a2);
    fprintf(v4, "%s must be run as root!\n", v5);
    objc_autoreleasePoolPop(v3);
    return 1;
  }

  else
  {
    v7 = +[GSDaemon daemon];
    objc_autoreleasePoolPop(v3);
    v8 = [v7 resume];

    return v8;
  }
}

uint64_t sub_100010A0C(int a1, char *a2, void *a3)
{
  memset(&v5, 0, sizeof(v5));
  if (!lstat(a2, &v5))
  {
    *a3 += v5.st_size;
  }

  return 0;
}

BOOL sub_100010A70(uint64_t a1, const char *a2, int a3)
{
  if (!*(a1 + 4))
  {
    return 1;
  }

  if (a3)
  {
    v5 = *(a1 + 28);
    v10[0] = *(a1 + 12);
    v10[1] = v5;
    if (sandbox_check_by_audit_token() > 0)
    {
      return 0;
    }
  }

  memset(v10 + 8, 0, 504);
  v9 = 0;
  *&v10[0] = 0x20000000010;
  __strlcpy_chk();
  v7 = strlen(a2);
  v8 = accessx_np(v10, v7 + 17, &v9, *(a1 + 4));
  return (v8 | v9) == 0;
}

void sub_1000115EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = [NSString stringWithFormat:@"library is invalid"];
    v15 = sub_100003164();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100027BF4(v6, v15, v16, v17, v18, v19, v20, v21);
    }

    v22 = 101;
    goto LABEL_18;
  }

  v4 = a1 + 32;
  if (!*(*(a1 + 32) + 64))
  {
    v6 = [NSString stringWithFormat:@"path has no storage"];
    v23 = sub_100003164();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10002525C();
    }

    v22 = 102;
LABEL_18:
    v14 = sub_10000F0F8(v22, v6, 0);
    goto LABEL_28;
  }

  v5 = [GSFileRow fileRow:v3 byDocumentID:?];
  v6 = v5;
  if (!v5)
  {
    v24 = *(*v4 + 64);
    v25 = *(*v4 + 32);
    v40 = 0;
    v26 = [GSFileRow createEntry:v3 withDocumentID:v24 fileID:v25 error:&v40];
    v14 = v40;
    if (!v26)
    {
      goto LABEL_28;
    }

    v27 = sub_100003164();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_100027B84((a1 + 32), v27, v28, v29, v30, v31, v32, v33);
    }

    goto LABEL_26;
  }

  v7 = *v4;
  v8 = *(*v4 + 32);
  if (v8 && *(v5 + 16) != v8)
  {
    v9 = v7[2];
    v10 = *(v5 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!((v12 < 0) ^ v11 | (v12 == 0)) && v12 >= 3)
    {
      v34 = sub_100003164();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(*v4 + 64);
        v37 = v6[2];
        v38 = *(*v4 + 32);
        *buf = 134218496;
        v42 = v36;
        v43 = 2048;
        v44 = v37;
        v45 = 2048;
        v46 = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARNING] fixing up inode for %lld from %lld to %lld", buf, 0x20u);
      }

      v6[2] = *(*v4 + 32);
      [v6 saveToDB:v3];
      v14 = 0;
LABEL_26:
      v7 = *v4;
      goto LABEL_27;
    }
  }

  v14 = 0;
LABEL_27:
  v7[1] = v7[8];
LABEL_28:

  if (!v14)
  {
    v39 = *(*(a1 + 32) + 8);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100011974(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10001199C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x22u);
}

id sub_1000119BC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 mutableCopy];
  v7 = [v6 objectForKey:@"kGSAdditionNameSpace"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 validateGSName:0] & 1) == 0)
  {
    v11 = [NSString stringWithFormat:@"invalid NameSpace value"];
    v12 = sub_100003164();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:

      if (a3)
      {
        *a3 = sub_10000F0F8(105, v11, 0);
      }

      v13 = 0;
      goto LABEL_13;
    }

LABEL_9:
    sub_100025378();
    goto LABEL_10;
  }

  v8 = [v6 objectForKey:@"kGSAdditionOnDuplicate"];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [NSString stringWithFormat:@"invalid OnDuplicate value"];
      v10 = sub_100003164();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if ([v8 unsignedLongLongValue] >= 3)
    {
      v9 = [NSString stringWithFormat:@"invalid OnDuplicate value"];
      v10 = sub_100003164();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

  else
  {
    [v6 setObject:&off_100044220 forKey:@"kGSAdditionOnDuplicate"];
  }

  v7 = [v6 objectForKey:@"kGSAdditionName"];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 validateGSName:0] & 1) == 0)
    {
      v11 = [NSString stringWithFormat:@"invalid Name value"];
      v12 = sub_100003164();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];
    v17 = [v16 gs_stringByUpdatingPathExtensionWithPathOrURL:v5];

    [v6 setObject:v17 forKey:@"kGSAdditionName"];
  }

  v8 = [v6 objectForKey:@"kGSAdditionOptions"];

  if (v8)
  {
    if (([v8 unsignedLongLongValue] & 0xFFFFFFFFFFFFFFE1) != 1)
    {
      v9 = [NSString stringWithFormat:@"invalid options"];
      v10 = sub_100003164();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_28:
        sub_1000253E8();
      }

LABEL_29:

      if (a3)
      {
        *a3 = sub_10000F0F8(110, v9, 0);
      }

      v13 = 0;
      v7 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    [v6 setObject:&off_100044238 forKey:@"kGSAdditionOptions"];
  }

  v7 = [v6 objectForKey:@"kGSAdditionConflictResolved"];

  if (!v7)
  {
    [v6 setObject:&__kCFBooleanFalse forKey:@"kGSAdditionConflictResolved"];
  }

  v13 = v6;
LABEL_13:

  return v13;
}

BOOL sub_1000132AC(uint64_t a1)
{
  memset(&v4, 0, 512);
  if (!fstatfs([*(a1 + 32) volDirFd], &v4))
  {
    return v4.f_bavail * v4.f_bsize < *(a1 + 40);
  }

  v2 = sub_100003164();
  if (os_log_type_enabled(v2, 0x90u))
  {
    sub_100027E40();
  }

  return 0;
}

uint64_t sub_1000133A0(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100027EE0();
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100014184(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) library];
  v8 = v7;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 isIgnoringOwners];
    v11 = [v8 libraryRoot];
    v12 = v11;
    if (v10)
    {
      [NSString stringWithFormat:@"%@/%@/%llx/", v11, @"AllUIDs", a3, v14];
    }

    else
    {
      [NSString stringWithFormat:@"%@/%@/%d/%llx/", v11, @"PerUID", *(*(a1 + 40) + 28), a3];
    }
    v9 = ;
  }

  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000286E0();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100014450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_100003164();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100028868();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100014820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) library];
  v8 = *(a1 + 40);
  v22 = 0;
  v23 = 0;
  [v7 extensionsForStorageID:a3 credentials:v8 + 24 pubExt:&v23 privExt:&v22];
  v9 = v23;
  v10 = v22;

  if (v6)
  {
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v25 = "[GSClient permanentStorageOpenForHandle:withRemoteID:andDocumentID:reply:]_block_invoke";
      v26 = 2112;
      v27 = 0;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v6;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@, %@)", buf, 0x34u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (![*(*(a1 + 40) + 8) count])
    {
      v12 = os_transaction_create();
      v13 = *(a1 + 40);
      v14 = *(v13 + 72);
      *(v13 + 72) = v12;
    }

    v15 = *(a1 + 32);
    v16 = *(*(a1 + 40) + 8);
    v17 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = sub_100003164();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = [NSNumber numberWithLongLong:a3];
      *buf = 136316162;
      v25 = "[GSClient permanentStorageOpenForHandle:withRemoteID:andDocumentID:reply:]_block_invoke";
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = 0;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@, %@)", buf, 0x34u);
    }

    v19 = *(a1 + 48);
    v20 = [NSNumber numberWithLongLong:a3];
    (*(v19 + 16))(v19, v20, v9, v10, 0);
  }
}

void sub_100014E64(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) library];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v22 = 0;
    v10 = [v11 _getAddition:a3 inNameSpace:v12 named:v13 credentials:v14 + 24 error:&v22];
    v9 = v22;
  }

  v15 = [*(a1 + 32) library];
  v16 = *(a1 + 56);
  v20 = 0;
  v21 = 0;
  [v15 extensionsForStorageID:a3 credentials:v16 + 24 pubExt:&v21 privExt:&v20];
  v17 = v21;
  v18 = v20;

  v19 = sub_100003164();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v24 = "[GSClient getAdditionInStorage:andNameSpace:named:completionHandler:]_block_invoke";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v9;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@, %@)", buf, 0x34u);
  }

  (*(*(a1 + 64) + 16))();
}

uint64_t sub_10001532C(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v6 validateGSName:{0, v9}])
        {
          v7 = 0;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  return v7;
}

void sub_100015464(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v23 = v7;
    v9 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [*(a1 + 40) library];
          v17 = [v16 _getAddition:a3 inNameSpace:*(a1 + 48) named:v15 credentials:*(a1 + 56) + 24 error:0];

          if (v17)
          {
            [v9 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v12);
    }

    v7 = v23;
  }

  v18 = [*(a1 + 40) library];
  v19 = *(a1 + 56);
  v24 = 0;
  v25 = 0;
  [v18 extensionsForStorageID:a3 credentials:v19 + 24 pubExt:&v25 privExt:&v24];
  v20 = v25;
  v21 = v24;

  v22 = sub_100003164();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v31 = "[GSClient getAdditionsInStorage:andNameSpace:named:completionHandler:]_block_invoke";
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v20;
    v36 = 2112;
    v37 = v21;
    v38 = 2112;
    v39 = v8;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@, %@)", buf, 0x34u);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100015CD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 40) library];
    v10 = [v11 _listAdditions:a3 nameSpace:*(a1 + 48) withOptions:*(a1 + 72) withoutOptions:*(a1 + 80) andEnumerationState:*(a1 + 32) credentials:*(a1 + 56) + 24];
  }

  v12 = [v10 count];
  v13 = [*(a1 + 32) objectAtIndexedSubscript:1];
  v14 = [v13 unsignedIntegerValue];

  if (v12 < v14)
  {

    v9 = 0;
  }

  v15 = [*(a1 + 40) library];
  v16 = *(a1 + 56);
  v20 = 0;
  v21 = 0;
  [v15 extensionsForStorageID:a3 credentials:v16 + 24 pubExt:&v21 privExt:&v20];
  v17 = v21;
  v18 = v20;

  v19 = sub_100003164();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v23 = "[GSClient listAdditionsOfStorage:nameSpace:withOptions:withoutOptions:andEnumerationState:completionHandler:]_block_invoke";
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v8;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@, %@, %@)", buf, 0x3Eu);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100016404(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v9 = a1[4];
    v10 = a1[5];
    v21 = 0;
    v11 = [GSGenerationRow generationRow:v7 storageID:a3 name:v9 clientID:v10 error:&v21];
    v12 = v21;
    v13 = *(a1[6] + 28);
    v20 = v12;
    v14 = [v11 isAccessibleByUID:v13 error:&v20];
    v8 = v20;

    if (v14)
    {
      v15 = v11[1];
      v16 = a1[8];
      v19 = v8;
      [GSGenerationRow setGenerationOptions:v7 rowID:v15 options:v16 error:&v19];
      v17 = v19;

      v8 = v17;
    }
  }

  v18 = sub_100003164();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100028EF0();
  }

  (*(a1[7] + 16))(a1[7], v8 == 0, v8);
}

void sub_100016A1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v23 = 0;
    v11 = [GSGenerationRow generationRow:v7 storageID:a3 name:v9 clientID:v10 error:&v23];
    v12 = v23;
    v13 = *(*(a1 + 48) + 28);
    v22 = v12;
    v14 = [v11 isAccessibleByUID:v13 error:&v22];
    v8 = v22;

    if (v14)
    {
      v15 = [*(a1 + 56) library];
      v16 = [v11 fullPath:v15];
      v17 = [v16 fileSystemRepresentation];

      v18 = *(a1 + 64);
      v21 = v8;
      sub_10000A9BC(v17, v18, &v21);
      v19 = v21;

      v8 = v19;
    }
  }

  v20 = sub_100003164();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100028FF4();
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v8 == 0, v8);
}

void sub_100016F70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v23 = 0;
    v11 = [GSGenerationRow generationRow:v7 storageID:a3 name:v9 clientID:v10 error:&v23];
    v12 = v23;
    v13 = *(*(a1 + 48) + 28);
    v22 = v12;
    v14 = [v11 isAccessibleByUID:v13 error:&v22];
    v8 = v22;

    if (v14)
    {
      v15 = [*(a1 + 56) library];
      v16 = [v11 fullPath:v15];
      v17 = [v16 fileSystemRepresentation];

      v18 = *(a1 + 64);
      v21 = v8;
      sub_10000AE58(v17, v18, &v21);
      v19 = v21;

      v8 = v19;
    }
  }

  v20 = sub_100003164();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000290F8();
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v8 == 0, v8);
}

void sub_1000174C4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) library];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v17 = 0;
    v10 = [v11 _setAdditionNameSpace:a3 inNameSpace:v12 named:v13 newNameSpace:v14 credentials:v15 + 24 error:&v17];
    v9 = v17;
  }

  v16 = sub_100003164();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100029200();
  }

  (*(*(a1 + 72) + 16))();
}

void sub_100017AD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) library];
  v4 = [v3 _listAdditions:0 nameSpace:*(a1 + 48) withOptions:*(a1 + 72) withoutOptions:*(a1 + 80) andEnumerationState:*(a1 + 32) credentials:*(a1 + 56) + 24];

  v5 = [v4 count];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:1];
  v7 = [v6 unsignedIntegerValue];

  if (v5 < v7)
  {

    v2 = 0;
  }

  v8 = sub_100003164();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100029300();
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100018168(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = (*(a1 + 84) & 0xF000) == 0x4000;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v23 = 0;
    v10 = [v11 _createAddition:a3 creationInfo:v12 isDir:v13 stagedPath:v14 credentials:v15 + 24 error:&v23];
    v9 = v23;
  }

  v16 = [*(a1 + 64) library];
  v17 = *(a1 + 56);
  v21 = 0;
  v22 = 0;
  [v16 extensionsForStorageID:a3 credentials:v17 + 24 pubExt:&v22 privExt:&v21];
  v18 = v22;
  v19 = v21;

  v20 = sub_100003164();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v25 = "[GSClient createAdditionInStorage:stagedFileDescriptor:creationInfo:completionHandler:]_block_invoke";
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v9;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@, %@)", buf, 0x34u);
  }

  (*(*(a1 + 72) + 16))();
}

void sub_1000186B4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = sub_1000188F8;
  v22[3] = sub_100018908;
  v23 = 0;
  if (v8)
  {
    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10002951C();
    }

LABEL_11:

    (*(*(a1 + 56) + 16))();
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    v15 = [*(a1 + 40) library];
    [v15 _removeAllAdditions:a3 inNameSpace:0 credentials:*(a1 + 48) + 24];

    v9 = sub_100003164();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100029624();
    }

    goto LABEL_11;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100018910;
  v16[3] = &unk_100041468;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v17 = v11;
  v18 = v12;
  v19 = &v21;
  v20 = a3;
  [v10 enumerateKeysAndObjectsUsingBlock:v16];
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10002959C(v22);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), *(v22[0] + 40), 0, v14);
LABEL_12:
  _Block_object_dispose(&v21, 8);
}

void sub_1000188D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000188F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100018910(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = v6;
      v9 = 0;
      v10 = *v29;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * v11);
          v14 = [*(a1 + 32) library];
          v15 = *(a1 + 56);
          v16 = *(a1 + 40);
          v27 = v12;
          v17 = [v14 _removeAddition:v15 inNameSpace:v5 named:v13 credentials:v16 + 24 error:&v27];
          v9 = v27;

          if ((v17 & 1) == 0)
          {
            v18 = sub_100003164();
            if (os_log_type_enabled(v18, 0x90u))
            {
              *buf = 138412802;
              v33 = v13;
              v34 = 2112;
              v35 = v5;
              v36 = 2112;
              v37 = v9;
              _os_log_error_impl(&_mh_execute_header, v18, 0x90u, "[ERROR] remove of %@ in %@ ended with %@\n", buf, 0x20u);
            }

            v19 = *(*(*(a1 + 48) + 8) + 40);
            if (!v19)
            {
              v20 = objc_alloc_init(NSMutableDictionary);
              v21 = *(*(a1 + 48) + 8);
              v22 = *(v21 + 40);
              *(v21 + 40) = v20;

              v19 = *(*(*(a1 + 48) + 8) + 40);
            }

            v23 = [v19 objectForKeyedSubscript:v5];
            if (!v23)
            {
              v23 = objc_alloc_init(NSMutableDictionary);
              [*(*(*(a1 + 48) + 8) + 40) setObject:v23 forKeyedSubscript:v5];
            }

            [v23 setObject:v9 forKeyedSubscript:v13];
          }

          v11 = v11 + 1;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v8);

      v6 = v25;
    }
  }

  else
  {
    v24 = [*(a1 + 32) library];
    [v24 _removeAllAdditions:*(a1 + 56) inNameSpace:v5 credentials:*(a1 + 40) + 24];
  }
}

void sub_10001902C(uint64_t a1, void *a2)
{
  v21 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v24 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  v3 = 0;
  if (v24)
  {
    v23 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * v4);
        v6 = sub_100003164();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v5;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] about to remove %@\n", buf, 0xCu);
        }

        v7 = [v5 storageID];
        v8 = [*(a1 + 40) library];
        v9 = [v7 longLongValue];
        v10 = [v5 nameSpace];
        v11 = [v5 name];
        v12 = *(a1 + 48);
        v25 = 0;
        v13 = [v8 _removeAddition:v9 inNameSpace:v10 named:v11 credentials:v12 + 24 error:&v25];
        v14 = v25;

        if ((v13 & 1) == 0)
        {
          v15 = sub_100003164();
          if (os_log_type_enabled(v15, 0x90u))
          {
            *buf = 138412546;
            v31 = v5;
            v32 = 2112;
            v33 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, 0x90u, "[ERROR] remove of %@ ended with %@\n", buf, 0x16u);
          }

          if (!v3)
          {
            v3 = objc_alloc_init(NSMutableDictionary);
          }

          v16 = [v5 nameSpace];
          v17 = [v3 objectForKeyedSubscript:v16];

          if (!v17)
          {
            v17 = objc_alloc_init(NSMutableDictionary);
            v18 = [v5 nameSpace];
            [v3 setObject:v17 forKeyedSubscript:v18];
          }

          v19 = [v5 name];
          [v17 setObject:v14 forKeyedSubscript:v19];
        }

        v4 = v4 + 1;
      }

      while (v24 != v4);
      v24 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v24);
  }

  v20 = sub_100003164();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000298A4();
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t sub_100019CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v4 = *(a1 + 32);
  v13 = *(v4 + 36);
  v15 = *(v4 + 52);
  v5 = sandbox_check_by_audit_token();
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  if ((v8 & 1) == 0 && v5)
  {
    v9 = *(a1 + 40);
    [v3 fileSystemRepresentation];
    v14 = *(v7 + 36);
    v16 = *(v7 + 52);
    v8 = *(*(a1 + 32) + 80) | (sandbox_check_by_audit_token() == 0);
  }

  v10 = 1;
  if ((v8 & 1) == 0 && v6)
  {
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100029D98();
    }

    goto LABEL_10;
  }

LABEL_11:

  return v10;
}

void sub_10001A3B4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = 0;
  LODWORD(v5) = [v2 writeData:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v5 = a1[4];
    v6 = [v5 offsetInFile];
    v7 = *(a1[7] + 8);
    v8 = 0;
    LOBYTE(v5) = [v5 truncateAtOffset:v6 error:&v8];
    objc_storeStrong((v7 + 40), v8);
  }

  *(*(a1[6] + 8) + 24) = v5;
}

void sub_10001A458(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 offsetInFile];
  v4 = *(*(a1 + 40) + 8);
  obj = 0;
  [v2 truncateAtOffset:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void sub_10001A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001A988(uint64_t a1)
{
  v2 = [[NSFileHandle alloc] initWithFileDescriptor:*(a1 + 48) closeOnDealloc:1];
  v3 = *(*(a1 + 40) + 8);
  obj = 0;
  v4 = [v2 readDataToEndOfFileAndReturnError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (![*(*(*(a1 + 32) + 8) + 40) length])
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_10001AE60(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v21 = 0;
    v11 = [GSGenerationRow generationRow:v7 storageID:a3 name:v9 clientID:v10 error:&v21];
    v12 = v21;
    v13 = *(*(a1 + 48) + 28);
    v20 = v12;
    v14 = [v11 isAccessibleByUID:v13 error:&v20];
    v8 = v20;

    if (v14)
    {
      v15 = v11[1];
      v16 = *(a1 + 64);
      v19 = v8;
      [GSGenerationRow setGenerationConflictResolved:v7 rowID:v15 conflictResolved:v16 error:&v19];
      v17 = v19;

      v8 = v17;
    }
  }

  v18 = sub_100003164();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A694();
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v8 == 0, v8);
}

id sub_10001B000()
{
  if (qword_10004CA00 != -1)
  {
    sub_10002A71C();
  }

  v1 = qword_10004C9F8;

  return v1;
}

void sub_10001B044(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("import-cookie-queue", v3);
  v2 = qword_10004C9F8;
  qword_10004C9F8 = v1;
}

uint64_t sub_10001B1C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_10001B264(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x12u);
}

void sub_10001B2C8(id a1)
{
  qword_10004CA08 = objc_alloc_init(GSSystemResourcesManager);

  _objc_release_x1();
}

void sub_10001B4A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    [v2 _invalidatePowerManager];
    [*(a1 + 32) _invalidateLowDiskManager];
    [*(a1 + 32) _invalidateLowMemory];
    *(*(a1 + 32) + 16) = 1;
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] [%@] has been invalidated", &v6, 0xCu);
    }
  }
}

id sub_10001B758(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10001B798(a2);

  return [v2 _setPowerLevelWithCoalescing:v3];
}

BOOL sub_10001B798(int a1)
{
  state64 = 1;
  notify_get_state(a1, &state64);
  v1 = sub_100003164();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A744(&state64, v1);
  }

  return state64 != 1;
}

id sub_10001B8BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v2 = *(a1 + 32);
  }

  v6 = sub_10001B798(*(v2 + 32));

  return [v2 _setPowerLevel:v6];
}

id sub_10001BDC0(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (*(*(a1 + 40) + 36))
    {
      v4 = "good";
    }

    else
    {
      v4 = "bad";
    }

    v6 = 138412546;
    v7 = v3;
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] Adding Power Observer: %@; power level: %s", &v6, 0x16u);
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  return [*(a1 + 32) powerLevelChanged:*(*(a1 + 40) + 36)];
}

id sub_10001BF40(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] Removing Power Observer: %@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
}

void sub_10001C0CC(uint64_t a1)
{
  v2 = +[GSUserDefaults defaults];
  v3 = *(a1 + 32);
  if (!*(v3 + 72))
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 8));
    [v2 doubleForKey:@"system.lowdisk" min:0.001 max:172800.0 byDefault:10.0];
    v6 = (v5 * 1000000000.0);
    v7 = v4;
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, v6 / 10);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001C238;
    v14[3] = &unk_100041638;
    v9 = v7;
    v10 = *(a1 + 32);
    v15 = v9;
    v16 = v10;
    dispatch_source_set_event_handler(v9, v14);
    v11 = *(a1 + 32);
    v12 = *(v11 + 72);
    *(v11 + 72) = v9;
    v13 = v9;

    dispatch_resume(v13);
  }
}

id sub_10001C238(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 40);

  return [v4 _processLowDiskNotification:0];
}

void sub_10001C408(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10001C600([v5 intValue]);
  v8 = [*(*(a1 + 32) + 48) containsObject:v5];
  if ((*(a1 + 40) & 1) != 0 || (v7 == 0) != v8)
  {
    v9 = *(*(a1 + 32) + 48);
    if (v7)
    {
      [v9 removeObject:v5];
    }

    else
    {
      [v9 addObject:v5];
    }

    v10 = [v5 intValue];
    v11 = sub_100003164();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "bad";
      if (!v7)
      {
        v12 = "good";
      }

      *buf = 67109378;
      v24 = v10;
      v25 = 2080;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] Disk Space Level on %d becomes %s", buf, 0x12u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * i) lowDiskStatusChangedForDevice:v10 hasEnoughSpace:{v7 == 0, v18}];
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

uint64_t sub_10001C600(int32_t a1)
{
  v3 = 0;
  if (sub_100009CB4(v4, 0x80uLL, a1, 2uLL) < 0)
  {
    v2 = sub_100003164();
    if (os_log_type_enabled(v2, 0x90u))
    {
      sub_10002A878();
    }
  }

  else
  {
    if ((fsctl(v4, 0x40046818uLL, &v3, 0) & 0x80000000) == 0)
    {
      return v3 & 0x204;
    }

    v2 = sub_100003164();
    if (os_log_type_enabled(v2, 0x90u))
    {
      sub_10002A7E4();
    }
  }

  return 0;
}

void sub_10001C7A4(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v2];
  v4 = [*(*(a1 + 32) + 48) containsObject:v2];
  if (v3)
  {
    v5 = v4 ^ 1;
  }

  else
  {
    v6 = *(*(a1 + 32) + 56);
    v3 = +[NSHashTable weakObjectsHashTable];
    [v6 setObject:v3 forKeyedSubscript:v2];
    if (sub_10001C600(*(a1 + 48)))
    {
      [*(*(a1 + 32) + 48) addObject:v2];
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  v7 = sub_100003164();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = "bad";
    if (v5)
    {
      v10 = "good";
    }

    v11[0] = 67109634;
    v11[1] = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] Adding Disk Space Observer on device %x: %@; disk level: %s", v11, 0x1Cu);
  }

  [v3 addObject:*(a1 + 40)];
  [*(a1 + 40) lowDiskStatusChangedForDevice:*(a1 + 48) hasEnoughSpace:v5];
}

void sub_10001C9FC(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v2];
  if (v3)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 40);
      v7[0] = 67109378;
      v7[1] = v5;
      v8 = 2112;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] Removing Disk Space Observer on device %x: %@", v7, 0x12u);
    }

    [v3 removeObject:*(a1 + 40)];
    if (![v3 count])
    {
      [*(*(a1 + 32) + 56) removeObjectForKey:v2];
      [*(*(a1 + 32) + 48) removeObject:v2];
    }
  }
}

void sub_10001CC90(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 88));
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;
}

void sub_10001CFD4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x18u);
}

unsigned __int8 *sub_10001D23C(uint64_t a1)
{
  result = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5 != result[89])
  {
    v8 = v1;
    v9 = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001D2C8;
    v6[3] = &unk_1000416C8;
    v6[4] = result;
    v7 = v5;
    return [result _updateThrottlingProperty:v6];
  }

  return result;
}

unsigned __int8 *sub_10001D354(uint64_t a1)
{
  result = *(a1 + 32);
  v5 = *(a1 + 40);
  if (result[88] != v5)
  {
    v8 = v1;
    v9 = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001D3E0;
    v6[3] = &unk_1000416C8;
    v6[4] = result;
    v7 = v5;
    return [result _updateThrottlingProperty:v6];
  }

  return result;
}

void sub_10001D638(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
    v6 = [v4 pendingDeleteDocumentTimerForDocID:v5];

    if (v6)
    {
      v7 = 0;
      v8 = 0;
LABEL_4:
      v9 = 16;
      goto LABEL_6;
    }

    v11 = [GSFileRow fileRow:v3 byDocumentID:*(a1 + 48)];
    v7 = v11;
    if (v11)
    {
      v8 = *(v11 + 16);
      if (!v8)
      {
        [*(a1 + 32) _actOnDocidDeletion:*(a1 + 48) row:v11];
        goto LABEL_4;
      }

      v9 = 0;
      v12 = *(v11 + 24);
    }

    else
    {
      v8 = 0;
      v9 = 2;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 4;
  }

LABEL_6:
  v10 = sub_100003164();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = 138413058;
    v15 = v13;
    v16 = 2080;
    v17 = "[GSManager resolveDocId:reply:]_block_invoke";
    v18 = 2048;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@:%s:reply(%lld, %d)", &v14, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001DAE4(void *a1)
{
  v2 = a1[4];
  v3 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  [v2 removePendingDeleteDocumentTimerForDocID:v3];

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_10001DB58(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A9A8(a1);
  }

  [*(a1 + 40) _nukeStorageID:*(a1 + 56)];
  v3 = *(a1 + 40);
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  LODWORD(v3) = [v3 removePendingDeleteDocumentTimerForDocID:v4];

  if (v3)
  {
    dispatch_source_cancel(*(a1 + 48));
  }
}

void sub_10001DEEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = (*(*(a1 + 48) + 8 * v5) + 6);
      do
      {
        v7 = *(v6++ - 6);
      }

      while (v7 == 47);
      if (!strncmp(v6 - 7, ".docid/", 7uLL))
      {
        *__endptr = v6;
        if ((*v6 - 48) > 9 || (*__error() = 0, strtoll(v6, __endptr, 10), !*__error()) && (v6 = (*__endptr + 1), **__endptr == 47))
        {
          if (!strncmp(v6, "changed/", 8uLL))
          {
            *__endptr = v6 + 8;
            *__error() = 0;
            v9 = strtoll(v6 + 8, __endptr, 10);
            if (!*__error())
            {
              v10 = *__endptr;
              if (!strncmp(*__endptr, "/src=", 5uLL))
              {
                v11 = (v10 + 5);
                *__endptr = v11;
                *__error() = 0;
                v12 = strtoll(v11, __endptr, 10);
                if (!*__error())
                {
                  v13 = *__endptr;
                  if (!strncmp(*__endptr, ",dst=", 5uLL))
                  {
                    v14 = (v13 + 5);
                    *__endptr = v14;
                    *__error() = 0;
                    v15 = strtoll(v14, __endptr, 10);
                    if (!*__error() && !**__endptr)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (strcmp(*(*(a1 + 48) + 8 * v5), ".docid"))
      {
        v8 = sub_100003164();
        if (os_log_type_enabled(v8, 0x90u))
        {
          v16 = *(*(a1 + 48) + 8 * v5);
          v17 = *(*(a1 + 56) + 4 * v5);
          v18 = *(*(a1 + 32) + 144);
          v19 = *(*(a1 + 64) + 8 * v5);
          *__endptr = 67109890;
          *&__endptr[4] = v18;
          *&__endptr[8] = 2080;
          *&__endptr[10] = v16;
          v27 = 1024;
          v28 = v17;
          v29 = 2048;
          v30 = v19;
          _os_log_error_impl(&_mh_execute_header, v8, 0x90u, "[ERROR] Received bogus event on device %x: %s (flags:%x id:%lld)", __endptr, 0x22u);
        }

LABEL_9:
      }

LABEL_10:
      ++v5;
      v4 = *(a1 + 40);
      if (v5 >= v4)
      {
        goto LABEL_31;
      }
    }

    log = sub_100003164();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(a1 + 48) + 8 * v5);
      v22 = *(*(a1 + 56) + 4 * v5);
      v23 = *(*(a1 + 32) + 144);
      v24 = *(*(a1 + 64) + 8 * v5);
      *__endptr = 67109890;
      *&__endptr[4] = v23;
      *&__endptr[8] = 2080;
      *&__endptr[10] = v21;
      v27 = 1024;
      v28 = v22;
      v29 = 2048;
      v30 = v24;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Received event on device %x: %s (flags:%x id:%lld)", __endptr, 0x22u);
    }

    if (v15)
    {
      [*(a1 + 32) _actOnDocidChange:v9 src:v12 dst:v15];
      goto LABEL_10;
    }

    v8 = [GSFileRow fileRow:v3 byDocumentID:v9];
    if (v8)
    {
      [*(a1 + 32) _actOnDocidDeletion:v9 row:v8];
    }

    else
    {
      v20 = sub_100003164();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *__endptr = 134217984;
        *&__endptr[4] = v9;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] unable to find row for docid:%lld", __endptr, 0xCu);
      }
    }

    goto LABEL_9;
  }

LABEL_31:
  *(*(*(a1 + 32) + 152) + 16) = *(*(a1 + 64) + 8 * v4 - 8);
}

uint64_t sub_10001EF1C(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 stringByAppendingString:@"-bad-1"];
  if ([v4 fileExistsAtPath:v5])
  {
    sub_10000965C([v5 fileSystemRepresentation], 0, 0);
  }

  else
  {
    if ((a2 - 1) > 4)
    {
      v6 = "Unknown reason";
    }

    else
    {
      v6 = (&off_100041A18)[a2 - 1];
    }

    v7 = [NSString stringWithFormat:@"Dataloss reason - %s", v6];
    sub_1000031EC(v7);
  }

  v14 = 0;
  v8 = [v4 moveItemAtPath:v3 toPath:v5 error:&v14];
  v9 = v14;
  v10 = sub_100003164();
  v11 = os_log_type_enabled(v10, 0x90u);
  if (v8)
  {
    if (v11)
    {
      sub_10002ADB8();
    }

    v12 = 1;
  }

  else
  {
    if (v11)
    {
      sub_10002AD50();
    }

    v12 = 0;
  }

  return v12;
}

void sub_10001F090(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("exclude-from-backup-queue", v3);
  v2 = qword_10004CA18;
  qword_10004CA18 = v1;
}

void sub_10001F0F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSURL fileURLWithPath:*(a1 + 40)];
  v39 = NSURLIsExcludedFromBackupKey;
  v3 = [NSArray arrayWithObjects:&v39 count:1];
  v4 = [v1 enumeratorAtURL:v2 includingPropertiesForKeys:v3 options:1 errorHandler:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_28;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v31;
  *&v7 = 138412546;
  v28 = v7;
  do
  {
    v11 = 0;
    do
    {
      v12 = v9;
      if (*v31 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v30 + 1) + 8 * v11);
      v14 = [v13 lastPathComponent];
      v15 = [v14 isEqualToString:@"PerUID"];

      if (v15 & 1) != 0 || ([v13 lastPathComponent], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"AllUIDs"), v16, (v17))
      {
        v9 = v12;
        goto LABEL_15;
      }

      v29 = 0;
      v18 = [v13 getResourceValue:&v29 forKey:NSURLIsExcludedFromBackupKey error:0];
      v9 = v29;

      if ((v18 & 1) == 0)
      {
        v19 = sub_100003164();
        if (!os_log_type_enabled(v19, 0x90u))
        {
          goto LABEL_14;
        }

        *buf = v28;
        v35 = NSURLIsExcludedFromBackupKey;
        v36 = 2112;
        v37 = v13;
        v24 = v19;
        v25 = "[ERROR] Failed to get value of %@ for %@";
        v26 = 22;
LABEL_24:
        _os_log_error_impl(&_mh_execute_header, v24, 0x90u, v25, buf, v26);
        goto LABEL_14;
      }

      if ([v9 BOOLValue])
      {
        v19 = sub_100003164();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v13;
          v20 = v19;
          v21 = "[DEBUG] %@ is already ignored from backups";
LABEL_20:
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
        }
      }

      else
      {
        v22 = [v13 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:0];
        v23 = sub_100003164();
        v19 = v23;
        if (!v22)
        {
          if (!os_log_type_enabled(v23, 0x90u))
          {
            goto LABEL_14;
          }

          *buf = 138412290;
          v35 = v13;
          v24 = v19;
          v25 = "[ERROR] Failed to exclude %@ from backups";
          v26 = 12;
          goto LABEL_24;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v13;
          v20 = v19;
          v21 = "[DEBUG] %@ is now excluded from backups";
          goto LABEL_20;
        }
      }

LABEL_14:

LABEL_15:
      v11 = v11 + 1;
    }

    while (v8 != v11);
    v27 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
    v8 = v27;
  }

  while (v27);
LABEL_28:
}

uint64_t sub_1000202E8(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 136) & 1) == 0)
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10002AFD8();
    }

    goto LABEL_7;
  }

  if (*(v2 + 80))
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10002B014();
    }

LABEL_7:

    goto LABEL_8;
  }

  v6 = [v2 libraryRoot];

  if (!v6)
  {
    v3 = sub_100003164();
    if (os_log_type_enabled(v3, 0x90u))
    {
      sub_10002B050();
    }

    goto LABEL_7;
  }

  *(*(a1[6] + 8) + 24) = 1;
LABEL_8:
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v4 = *(a1[4] + 16);
  }

  else
  {
    v4 = 0;
  }

  return (*(a1[5] + 16))(a1[5], v4);
}

void sub_100020628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100020660(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v36 = [GSFileRow tableRowCount:v3];
    v34 = malloc_type_calloc(0x10uLL, v36, 0x354608BuLL);
    if (v34)
    {
      v4 = [NSMapTable mapTableWithKeyOptions:1282 valueOptions:258];
      table = [NSHashTable hashTableWithOptions:1282];
      v42 = 0u;
      v43 = 0u;
      memset(v41, 0, sizeof(v41));
      DWORD2(v42) = -1;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v33 = v3;
      v5 = [GSGenerationRow enumerate:v3 withOptions:v41];
      v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v6)
      {
        goto LABEL_31;
      }

      v7 = v6;
      v8 = *v38;
      while (1)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v37 + 1) + 8 * i);
          v11 = *(v10 + 16);
          v12 = NSMapGet(v4, v11);
          if (v12)
          {
            v13 = v12;
            if ((*(v10 + 48) & 8) == 0)
            {
              goto LABEL_15;
            }

            if (*(v10 + 64) > *(v12 + 1))
            {
              continue;
            }
          }

          else
          {
            v14 = NSCountMapTable(v4);
            if (v14 >= v36)
            {
              [*(a1 + 32) setIsInconsistent:1];
              continue;
            }

            v13 = &v34[16 * v14];
            NSMapInsertKnownAbsent(v4, v11, v13);
            *v13 = *(v10 + 64);
          }

          NSHashInsertKnownAbsent(table, *(v10 + 8));
LABEL_15:
          v15 = *(a1 + 64);
          v16 = *(v10 + 64);
          v17 = *(a1 + 56) - *v13;
          v18 = *v13 - v16;
          if ((v15 & 0x200) != 0 || (v17 <= 86399 ? (v19 = v18 < 43200) : (v19 = 0), !v19))
          {
            v20 = v15 != 0;
            v21 = (&unk_100031388 + 24 * v20 + 16);
            do
            {
              v22 = *v21;
              v21 += 3;
              if (v17 <= v22)
              {
                break;
              }

              ++v20;
            }

            while (v20 != 3);
            v23 = (&unk_100031388 + 24 * v20);
            if (v23[2])
            {
              do
              {
                if (v18 <= v23[1])
                {
                  break;
                }

                v24 = v23[5];
                v23 += 3;
              }

              while (v24);
            }

            v16 -= *v23;
          }

          *(v13 + 1) = v16;
        }

        v7 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (!v7)
        {
LABEL_31:

          v3 = v33;
          v25 = [v33 lastError];

          if (v25)
          {
            v26 = [v33 translatedError];
            v27 = *(*(a1 + 40) + 8);
            v28 = *(v27 + 40);
            *(v27 + 40) = v26;

            v29 = table;
          }

          else
          {
            v29 = table;
            if ([GSGenerationRow thinningPrecompute:v33 kept:table])
            {
              *(*(a1 + 32) + 96) = *(a1 + 56);
              *(*(a1 + 32) + 104) = *(a1 + 64);
              *(*(*(a1 + 48) + 8) + 24) = 1;
            }
          }

          free(v34);
          goto LABEL_39;
        }
      }
    }

    v4 = [NSString stringWithFormat:@"Allocation failure"];
    v30 = sub_100003164();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_100027C60();
    }

    v31 = sub_10000F0F8(101, v4, 0);
    v32 = *(*(a1 + 40) + 8);
    v29 = *(v32 + 40);
    *(v32 + 40) = v31;
LABEL_39:
  }
}

void sub_100020B44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableIndexSet);
    v5 = [GSFileRow tableRowCount:v3];
    v6 = [GSGenerationRow tableRowCount:v3];
    v30 = 0u;
    v31 = 0u;
    v28[0] = 0;
    v29 = 0u;
    v28[1] = 8;
    DWORD2(v30) = -1;
    BYTE12(v30) = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v3;
    v7 = [GSGenerationRow enumerate:v3 withOptions:v28];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = v6 / v5;
      v11 = *v25;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v7);
          }

          if (v12 < 0.0)
          {
            v14 = *(*(&v24 + 1) + 8 * i);
            if ([*(a1 + 32) _generationForsakeRow:v14 withCredential:*(a1 + 48) error:0])
            {
              v15 = sub_100003164();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v16 = *(v14 + 8);
                v17 = [*(v14 + 40) UTF8String];
                *buf = 134218242;
                v33 = v16;
                v34 = 2080;
                v35 = v17;
                _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Deleted generation with id %lld at path %s.\n", buf, 0x16u);
              }

              v12 = v10 + v12;

              [v4 addIndex:*(v14 + 8)];
            }
          }

          v12 = v12 + -1.0;
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v9);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100020E28;
    v21[3] = &unk_100041800;
    v3 = v20;
    v18 = v20;
    v19 = *(a1 + 32);
    v22 = v18;
    v23 = v19;
    [v4 enumerateIndexesUsingBlock:v21];
    *(*(*(a1 + 40) + 8) + 24) = [v4 count];
  }
}

id sub_100020E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003164();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002B0C0();
  }

  result = [GSGenerationRow deleteRow:*(a1 + 32) rowID:a2];
  if (result <= 0)
  {
    v6 = sub_100003164();
    if (os_log_type_enabled(v6, 0x90u))
    {
      sub_10002B130();
    }

    return [*(a1 + 40) setIsInconsistent:1];
  }

  return result;
}

void sub_100020FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021000(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v19[0] = 0;
  v20 = 0u;
  v19[1] = 8;
  DWORD2(v21) = -1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [GSGenerationRow enumerate:v3 withOptions:v19, 0];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      if ([*(a1 + 32) _generationForsakeRow:v9 withCredential:*(a1 + 48) error:0])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = sub_100003164();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10002B198(v9);
    }

    v11 = *(v9 + 8);
    ++**(a1 + 56);

    if (v11)
    {
      v12 = sub_100003164();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10002B0C0();
      }

      if ([GSGenerationRow deleteRow:v3 rowID:v11]<= 0)
      {
        v13 = sub_100003164();
        if (os_log_type_enabled(v13, 0x90u))
        {
          sub_10002B130();
        }

        [*(a1 + 32) setIsInconsistent:1];
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = sub_100003164();
  if (os_log_type_enabled(v14, 0x90u))
  {
    sub_10002B248();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_22:
}

uint64_t sub_100021390(uint64_t a1)
{
  v28 = 0;
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 144);
    *buf = 67109120;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] [dev:%d] Start purging", buf, 8u);
  }

  [*(a1 + 32) _thinningPrecompute:0 error:0];
  v4 = 0;
  v5 = 0;
  *&v6 = 67109120;
  v24 = v6;
  while (1)
  {
    while (1)
    {
      if (!v5)
      {
        v7 = sub_100003164();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(a1 + 32) + 144);
          *buf = v24;
          v30 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] [dev:%d] Start purging generations", buf, 8u);
        }

        v5 = 1;
      }

      v9 = [*(a1 + 32) _purgeGenerationsWithCredentials:{a1 + 56, v24}];
      if (v9 < 1)
      {
        break;
      }

      v4 += v9;
      v28 = v4;
    }

    if (v9 < 0)
    {
      break;
    }

    if (v5 != 1)
    {
      if (*(a1 + 60) || *(a1 + 100) != 1 || (+[GSSystemResourcesManager manager](GSSystemResourcesManager, "manager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 deviceLowSpaceFlags:*(*(a1 + 32) + 144)], v12, (v13 & 0x200) == 0))
      {
LABEL_19:
        v14 = 0;
        goto LABEL_20;
      }

      v19 = sub_100003164();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(a1 + 32) + 144);
        *buf = v24;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[NOTICE] [dev:%d] Still very low on disk, purge harder", buf, 8u);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10002178C;
      v25[3] = &unk_100041878;
      v21 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = 0;
      v14 = [v21 _purgeAggressively:&v28 credentials:a1 + 56 whilePredicateIsTrue:v25];
      v22 = (*(*(a1 + 40) + 16))();

      if (v22)
      {
LABEL_20:
        v15 = sub_100003164();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*(a1 + 32) + 144);
          *buf = 67109632;
          v30 = v16;
          v31 = 2048;
          v32 = v14;
          v33 = 2048;
          v34 = v28;
          v17 = "[NOTICE] [dev:%d] Nothing left to purge: freed %lld bytes, removed %lld generations";
          goto LABEL_22;
        }
      }

      else
      {
        v15 = sub_100003164();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(*(a1 + 32) + 144);
          *buf = 67109632;
          v30 = v23;
          v31 = 2048;
          v32 = v14;
          v33 = 2048;
          v34 = v28;
          v17 = "[NOTICE] [dev:%d] Finished purging: freed %lld bytes, removed %lld generations";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0x1Cu);
        }
      }

      break;
    }

    v10 = sub_100003164();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 144);
      *buf = v24;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] [dev:%d] Recompute thinning", buf, 8u);
    }

    v5 = 2;
    if (([*(a1 + 32) _thinningPrecompute:1 error:0] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(*(a1 + 32) + 120) = 0;
  return (*(*(a1 + 48) + 16))();
}

void sub_100021A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100021A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GSFileRow tableRowCount:v3];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [GSGenerationRow tableRowCount:v3];
  if (v6 / v5 >= 1.0)
  {
    v7 = v6 / v5;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [GSGenerationRow computePrunableSpace:v3];

  result = v8 / v7;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100021B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100021B9C(uint64_t a1, uint64_t a2)
{
  result = [GSGenerationRow computePrunableSpace:a2];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100021C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100021C94(uint64_t a1, uint64_t a2)
{
  result = [GSGenerationRow computeNumberOfPruneableStorages:a2];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100021D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100021D8C(uint64_t a1, uint64_t a2)
{
  result = [GSGenerationRow computePruneableNumberOfGenerations:a2];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *sub_100021F70(void *result)
{
  v3 = result[4];
  if (!*(v3 + 80))
  {
    result = *(v3 + 32);
    if (result)
    {
      v4 = [result fileSystemRepresentation];

      return sub_100009AD8(v4, 0, 0);
    }
  }

  return result;
}

int64_t sub_1000228EC(uint64_t a1, uint64_t a2)
{
  result = [GSGenerationRow deleteRow:*(*(a1 + 32) + 16) rowID:a2];
  if (result < 0)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, 0x90u))
    {
      sub_10002B540();
    }

    return [*(a1 + 32) setIsInconsistent:1];
  }

  return result;
}

void sub_100024748(void *a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    for (i = a1[5]; i; i = *(i + 16))
    {
      v4 = a1[6];
      v5 = [NSString gs_stringWithFileSystemRepresentation:i + 104];
      v6 = [GSGenerationRow rowExists:v7 withStorageID:v4 andName:v5 andClientID:a1[4]];

      *(i + 32) = v6;
    }
  }
}

_DWORD *sub_100024B7C(uint64_t a1)
{
  [*(a1 + 32) _validateGenerationsStorageTree:"PerUID" atDepth:2];
  [*(a1 + 32) _validateGenerationsStorageTree:"AllUIDs" atDepth:1];
  result = *(a1 + 32);
  if (result[20])
  {

    return [result setIsInconsistent:1];
  }

  return result;
}

void sub_100024FA8(uint64_t a1)
{
  v2 = sub_100003164();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002BAE0();
  }

  v3 = 0;
  atomic_compare_exchange_strong((*(a1 + 32) + 84), &v3, 1u);
  if (!v3)
  {
    if (qword_10004CA30 != -1)
    {
      sub_10002BB1C();
    }

    v4 = qword_10004CA28;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000250FC;
    block[3] = &unk_100040B00;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void sub_100025098(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.genstore.corruption-queue", v3);
  v2 = qword_10004CA28;
  qword_10004CA28 = v1;
}

void sub_1000250FC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  v3 = sub_100003164();
  if (os_log_type_enabled(v3, 0x90u))
  {
    sub_10002BB44();
  }

  [*(a1 + 32) invalidate:1];
  sub_10001EF1C(v2, 5);
}

void sub_10002517C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, &a9, 0xCu);
}

void sub_1000251A4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, &a9, 2u);
}

void sub_1000251C0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1000251E0()
{
  sub_1000030DC();
  sub_10000314C(v0, v1, v2, v3, v4, v5, v6, v7, v14, v16, v17, v18, v19, v20);
  sub_100003084();
  sub_1000030BC(&_mh_execute_header, v8, v9, "[DEBUG] %@; error %d (%s)", v10, v11, v12, v13, v15);
}

void sub_1000252CC(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  sub_1000030EC();
  sub_10000312C(&_mh_execute_header, v4, v5, "[ERROR] Failed consuming extension - %@; error %d (%s)", v6, v7, v8, v9, v10);
}

void sub_100025458()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_1000030EC();
  sub_10000312C(&_mh_execute_header, v2, v3, "[ERROR] failed to retrieve original perms from xattr on item %s; error %d (%s)\n", v4, v5, v6, v7, v8);
}

void sub_100025514(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Failed to send snapshot for signature %@", &v2, 0xCu);
}

void sub_10002558C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Sent snapshot for signature %@", &v2, 0xCu);
}

void sub_100025604(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] got response from diagnosticReporter - %@", &v2, 0xCu);
}

void sub_10002567C()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000256F4()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002576C(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  sub_100006064();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000257EC()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100025864()
{
  v0 = __error();
  strerror(*v0);
  sub_100006058();
  sub_100006048();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000258EC()
{
  v0 = __error();
  strerror(*v0);
  sub_100006058();
  sub_100006048();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000259B4()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000607C();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100025A44()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000607C();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100025AD4(NSObject *a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100006058();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "[CRIT] /dev/fsevents clone failed! (%s)", v3, 0xCu);
}

void sub_100025BA4(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Disabling storage on system volume 0x%x", v3, 8u);
}

void sub_100025C20(NSObject *a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100006058();
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "[DEBUG] failed to disable fmod watching (%s)", v3, 0xCu);
}

void sub_100025CB0(int *a1)
{
  v1 = *a1;
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  sub_100006048();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_100025D68()
{
  sub_100006094();
  sub_100006070();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002602C(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Added %lld libraries and removed %lu", &v4, 0x16u);
}

void sub_1000260CC(int *a1)
{
  v6 = *a1;
  sub_100006064();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100026144()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100026180(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Saving %@", &v2, 0xCu);
}

void sub_1000261F8()
{
  sub_1000030A8();
  v2 = 101;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; status %d", v1, 0x12u);
}

void sub_100026274()
{
  sub_1000030A8();
  v2 = 105;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; status %d", v1, 0x12u);
}

void sub_1000264A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v4 = *(a1 + 48);
  sub_100008F3C();
  sub_100008F50();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x28u);
}

void sub_1000265C0(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  sub_100008F3C();
  sub_100008F60();
  sub_100008F50();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);
}

void sub_1000266C4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  sub_100008F3C();
  sub_100008F60();
  sub_100008F50();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);
}

void sub_100026744(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 40);
  sub_100008F3C();
  sub_100008F50();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000267E4()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_10002689C()
{
  sub_1000030DC();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void sub_100026958()
{
  sub_1000030DC();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000CEBC();
  sub_10000CEC8();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
}

void sub_100026A04()
{
  sub_1000030DC();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000CEBC();
  sub_10000CEC8();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
}

void sub_100026AB0()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000CE90();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100026B50()
{
  sub_1000030DC();
  sub_10000314C(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18);
  sub_100003084();
  sub_10000CEAC();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x1Cu);
}

void sub_100026C00()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000CE90();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100026CA0()
{
  sub_10000CF04();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_100026D68()
{
  sub_10000CF04();
  v0 = *__error();
  sub_10000CEEC();
  sub_10000CEAC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100026DEC()
{
  sub_10000CF04();
  v0 = *__error();
  sub_10000CEEC();
  sub_10000CEAC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100026EE8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "com.apple.genstore.info";
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Invalid property list found in attribute %s at path %s", &v2, 0x16u);
}

void sub_100026FEC()
{
  sub_10000CF04();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000CEBC();
  sub_10000CF10();
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000270F8()
{
  sub_100006058();
  v2 = 1024;
  v3 = 113;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; status %d", v1, 0x12u);
}

void sub_10002717C(int a1, int __errnum)
{
  strerror(__errnum);
  sub_100003084();
  sub_1000030BC(&_mh_execute_header, v2, v3, "[DEBUG] %@; error %d (%s)", v4, v5, v6, v7, v8);
}

void sub_10002727C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Unable to set journal mode to WAL for %@", &v3, 0xCu);
}

void sub_1000272F8(void *a1, NSObject *a2)
{
  v3 = [a1 url];
  sub_100006058();
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Database %@ wasn't converted to incremental vacuum mode", v4, 0xCu);
}

void sub_1000274C0()
{
  sub_100006058();
  v2 = 1024;
  v3 = 111;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; status %d", v1, 0x12u);
}

void sub_1000275D8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Unknown status code encountered: %d\n", v2, 8u);
}

void sub_100027664(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, 0x90u, "[ERROR] IOPOL_TYPE_VFS_IGNORE_PERMISSIONS was not set: %s", &v4, 0xCu);
}

void sub_1000276F8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] freed %lld bytes from the bad root", &v3, 0xCu);
}

void sub_100027774(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] Couldn't lstat '%@'", &v2, 0xCu);
}

void sub_1000277EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] No volume path in info dict %@", &v2, 0xCu);
}

void sub_100027864(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Client %d connection was invalidated", v3, 8u);
}

void sub_1000278E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = *__error();
  v5 = __error();
  strerror(*v5);
  sub_100011948();
  sub_10001199C(&_mh_execute_header, v6, v7, "[ERROR] unable to allocate Document ID to %@ on device %x; error %d (%s)", v8, v9, v10, v11, v12);
}

void sub_100027978(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = *__error();
  v5 = __error();
  strerror(*v5);
  sub_100011948();
  sub_10001199C(&_mh_execute_header, v6, v7, "[ERROR] unable to open %@ on device %x; error %d (%s)", v8, v9, v10, v11, v12);
}

void sub_100027A10()
{
  sub_1000030A8();
  sub_100011990();
  sub_100003110(&_mh_execute_header, v0, v1, "[DEBUG] %@; status %d", v2, v3, v4, v5, v6);
}

void sub_100027C60()
{
  sub_1000030A8();
  sub_10001B24C();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100027CD4()
{
  sub_10001B184();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100027D50()
{
  sub_10001B0C8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100027DCC()
{
  sub_1000030A8();
  sub_100011990();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100027E40()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100006048();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100027EE0()
{
  sub_10001B154();
  sub_10001B1A4();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100027F6C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109378;
  HIDWORD(v3) = a2;
  LOWORD(v4) = 2112;
  *(&v4 + 2) = a1;
  sub_10001B264(&_mh_execute_header, a2, a3, "[ERROR] Failed creating library for %d: %@", v3, v4, WORD4(v4));
}

void sub_100027FE4()
{
  sub_10001B1B4();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028070()
{
  sub_10001B154();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void sub_100028108()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100028184()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000281C0()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002823C()
{
  sub_10001B154();
  sub_10001B1A4();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000282C8()
{
  sub_10001B0C8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028344(void *a1)
{
  v1 = [a1 UUIDString];
  sub_10001B154();
  sub_10001B144();
  sub_10000CEAC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000283F0()
{
  sub_10001B0A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_100028470()
{
  sub_10001B130();
  sub_10001B228();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_1000284F8()
{
  sub_10001B114();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028568()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000285E4()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100028660()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000286E0()
{
  sub_10001B130();
  sub_10001B228();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100028760()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000287DC()
{
  sub_10001B1B4();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100028868()
{
  sub_10001B184();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000288E4()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100028954()
{
  sub_10001B0A8();
  sub_10001B164();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void sub_1000289D4()
{
  sub_10001B1B4();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100028A54()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028ACC()
{
  sub_10001B0A8();
  sub_10001B164();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void sub_100028B4C()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028BC4()
{
  sub_10001B0A8();
  sub_10001B164();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void sub_100028C44()
{
  sub_10001B0A8();
  sub_10001B1D4();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x3Eu);
}

void sub_100028CC4(uint64_t a1)
{
  v1 = [NSError errorWithDomain:a1 code:-1002 userInfo:0];
  sub_10001B0C8();
  sub_10000CEAC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100028D70()
{
  sub_10001B154();
  sub_10001B1A4();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028DFC()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100028E74()
{
  sub_10001B0C8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028EF0()
{
  sub_10001B258();
  sub_10001B1EC();
  sub_10001B144();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028F78()
{
  sub_10001B0C8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100028FF4()
{
  sub_10001B258();
  sub_10001B1EC();
  sub_10001B144();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002907C()
{
  sub_10001B0C8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000290F8()
{
  sub_10001B258();
  sub_10001B1EC();
  sub_10001B144();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100029180()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100029200()
{
  sub_10001B130();
  sub_10001B228();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100029280()
{
  sub_10001B0A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_100029300()
{
  sub_10001B130();
  sub_10001B228();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_100029388()
{
  sub_10001B0A8();
  sub_10001B164();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void sub_100029408(int a1, int __errnum)
{
  strerror(__errnum);
  sub_100003084();
  sub_10000CEAC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10002949C()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10002951C()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10002959C(uint64_t a1)
{
  sub_10001B1C4(a1, __stack_chk_guard);
  sub_10001B1FC();
  sub_100006064();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100029624()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000296A8()
{
  sub_10001B184();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100029724()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000297A4()
{
  sub_10001B130();
  sub_10001B228();
  sub_10001B174();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100029824()
{
  sub_10001B0E8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000298A4()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100029928()
{
  v0 = __error();
  strerror(*v0);
  sub_100006058();
  sub_100006048();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000299B0(unsigned int *a1)
{
  v1 = *a1;
  sub_10001B234();
  sub_10001B174();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100029A24()
{
  sub_100006058();
  sub_10001B20C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100029A94()
{
  v0 = __error();
  strerror(*v0);
  sub_10001B218();
  sub_100006048();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100029B28()
{
  sub_100006094();
  sub_10001B20C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029B64(unsigned int *a1)
{
  v1 = *a1;
  sub_10001B234();
  sub_10001B264(&_mh_execute_header, v2, v3, "[ERROR] [ImportCookie] No library on volume: %d, URL: %@");
}

void sub_100029BD0()
{
  sub_100006058();
  sub_10001B20C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100029C40()
{
  v0 = __error();
  strerror(*v0);
  sub_100006058();
  sub_100006048();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100029CC8()
{
  v0 = __error();
  strerror(*v0);
  sub_10001B218();
  sub_100006048();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100029D5C()
{
  sub_100006094();
  sub_10001B20C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029D98()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029DD4(int a1, id a2)
{
  v3 = a2;
  [a2 fileSystemRepresentation];
  sub_10000CEAC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100029EA8(uint64_t a1)
{
  sub_10001B1C4(a1, __stack_chk_guard);
  sub_10001B20C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100029F1C(uint64_t a1)
{
  sub_10001B1C4(a1, __stack_chk_guard);
  sub_10001B1FC();
  sub_100006064();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100029F9C()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029FD8()
{
  sub_10001B100();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002A058()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A094(uint64_t a1)
{
  sub_10001B1C4(a1, __stack_chk_guard);
  sub_10001B20C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002A188()
{
  sub_100006058();
  sub_10001B20C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002A1F8()
{
  sub_10001B130();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002A274()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A2B0(void *a1)
{
  [a1 fileSystemRepresentation];
  sub_10001B218();
  sub_10000CEAC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002A344(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "[GSClient readImportCookieDataForVolumeAtURL:reply:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  *(buf + 16) = 2112;
  *(buf + 34) = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] %s reply(%@, %@, %@)", buf, 0x2Au);
}

void sub_10002A3C4()
{
  sub_100006094();
  sub_10001B20C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002A400(uint64_t a1)
{
  sub_10001B1C4(a1, __stack_chk_guard);
  sub_10001B1FC();
  sub_100006064();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

void sub_10002A490()
{
  sub_10001B0A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_10002A510()
{
  sub_10001B0A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_10002A594()
{
  sub_10001B1EC();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002A618()
{
  sub_10001B0C8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002A694()
{
  sub_10001B258();
  sub_10001B1EC();
  sub_10001B144();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10002A744(void *a1, NSObject *a2)
{
  v2 = *a1 - 1;
  if (v2 > 2)
  {
    v3 = "<unknown>";
  }

  else
  {
    v3 = off_1000416A8[v2];
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Power level is now %s", &v4, 0xCu);
}

void sub_10002A7E4()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10001CFB0();
  sub_10001CFD4(&_mh_execute_header, v2, v3, "[ERROR] fsctl(dev=%d) failed; error %d (%s)", v4, v5, v6, v7, v8);
}

void sub_10002A878()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10001CFB0();
  sub_10001CFD4(&_mh_execute_header, v2, v3, "[ERROR] fsgetpath(dev=%d) failed; error %d (%s)", v4, v5, v6, v7, v8);
}

void sub_10002A938()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002A9A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100025198();
  sub_100006064();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002AA90()
{
  sub_100006058();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_1000251C0(&_mh_execute_header, v0, v1, "[DEBUG] Creating entry for docid:%lld ino:%lld", v2, v3);
}

void sub_10002AB04(uint64_t *a1)
{
  v1 = *a1;
  sub_100025198();
  sub_10002517C(&_mh_execute_header, v2, v3, "[ERROR] Found non-directory at %@ but expecting directory; moving out of the way and creating a new storage directory.\n", v4, v5, v6, v7, v8);
}