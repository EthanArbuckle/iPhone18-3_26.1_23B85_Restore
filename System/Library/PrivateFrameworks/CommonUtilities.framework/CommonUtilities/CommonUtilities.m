id sub_1B23221F0(void *a1)
{
  v1 = a1;
  v2 = [v1 lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];

  v4 = [v1 stringByAppendingPathComponent:@"Versions"];
  v5 = [v4 stringByAppendingPathComponent:@"A"];

  v6 = [v5 stringByAppendingPathComponent:v3];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = [v1 stringByAppendingPathComponent:v3];
  }

  v10 = v9;

  return v10;
}

void *CUTWeakLinkSymbol(const char *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sub_1B23225B0(v3);
  if (v4)
  {
    v5 = dlsym(v4, a1);
  }

  else
  {
    v6 = +[CUTLog weakLink];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = a1;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_DEFAULT, "Could not load symbol {symbol: %{public}s, framework: %{public}@}", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

id CUTWeakLinkClass(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!sub_1B23225B0(v4))
  {
    v5 = +[CUTLog weakLink];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = v3;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1B2321000, v5, OS_LOG_TYPE_DEFAULT, "Could not load class {class: %{public}@, framework: %{public}@}", &v9, 0x16u);
    }
  }

  v6 = NSClassFromString(v3);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1B23224DC()
{
  [@"/" length];
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [@"/" stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/"];
  v1 = [@"/" stringByAppendingPathComponent:@"System/Library/Frameworks/"];
  v2 = [@"/" stringByAppendingPathComponent:@"AppleInternal/Library/Frameworks/"];
  v3 = [v0 initWithObjects:{v5, v1, v2, 0}];
  v4 = qword_1ED4AE490;
  qword_1ED4AE490 = v3;
}

void *sub_1B23225B0(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  os_unfair_lock_lock(&unk_1ED4AE478);
  v2 = 0x1ED4AE000uLL;
  Mutable = qword_1ED4AE480;
  if (!qword_1ED4AE480)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    qword_1ED4AE480 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  os_unfair_lock_unlock(&unk_1ED4AE478);
  if (!Value)
  {
    v5 = v1;
    if (qword_1ED4AE488 != -1)
    {
      sub_1B2322938();
    }

    if ([v5 rangeOfString:@".framework"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v5 rangeOfString:@".dylib"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v1;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = qword_1ED4AE490;
        v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v26;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v25 + 1) + 8 * i) stringByAppendingPathComponent:v5];
              v12 = [v11 stringByAppendingPathExtension:@"framework"];

              v13 = [MEMORY[0x1E696AC08] defaultManager];
              v14 = [v13 fileExistsAtPath:v12];

              if (v14)
              {
                v16 = sub_1B23221F0(v12);

                v1 = v24;
                v2 = 0x1ED4AE000;
                goto LABEL_22;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v15 = +[CUTLog weakLink];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v30 = v5;
          _os_log_impl(&dword_1B2321000, v15, OS_LOG_TYPE_DEFAULT, "Could not find binary path for framework name: %{public}@", buf, 0xCu);
        }

        v16 = 0;
        v1 = v24;
        goto LABEL_26;
      }

      v17 = v5;
    }

    else
    {
      v17 = sub_1B23221F0(v5);
    }

    v16 = v17;
LABEL_22:

    if (v16)
    {
      v18 = dlopen([v16 UTF8String], 1);
      if (v18)
      {
        Value = v18;
        os_unfair_lock_lock(&unk_1ED4AE478);
        v19 = CFDictionaryGetValue(*(v2 + 1152), v5);
        if (v19)
        {
          v20 = v19;
          os_unfair_lock_unlock(&unk_1ED4AE478);
          dlclose(Value);
          Value = v20;
        }

        else
        {
          CFDictionarySetValue(*(v2 + 1152), v5, Value);
          os_unfair_lock_unlock(&unk_1ED4AE478);
        }

LABEL_29:

        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = +[CUTLog weakLink];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138543362;
      v32 = v16;
      _os_log_impl(&dword_1B2321000, v21, OS_LOG_TYPE_DEFAULT, "Could not load framework binary: %{public}@", v31, 0xCu);
    }

    Value = 0;
    goto LABEL_29;
  }

LABEL_30:

  v22 = *MEMORY[0x1E69E9840];
  return Value;
}

id CUTProcessNameForPid(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[2] = v1;
  v5[3] = v1;
  v5[0] = v1;
  v5[1] = v1;
  if (proc_name(a1, v5, 0x40u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1B23229E0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED4AE468 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t CUTIsInternalInstall()
{
  if (qword_1ED4AE470 != -1)
  {
    sub_1B2322A64();
  }

  return byte_1ED4AE468;
}

void sub_1B2322AB0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    v5 = +[CUTPowerMonitor sharedInstance];
    [v5 updateBatteryLevelWithBatteryEntry:a2];

    v6 = +[CUTPowerMonitor sharedInstance];
    [v6 updateBatteryConnectedStateWithBatteryEntry:a2];
  }
}

void sub_1B2322BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = +[CUTPowerMonitor sharedInstance];
  [v6 _handlePowerChangedNotificationWithMessageType:a3 notificationID:a4];
}

void sub_1B2322FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232300C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) _isPrimaryCellular];
    result = WiFiNetworkIsCaptive();
    *(*(*(v2 + 40) + 8) + 24) = (result != 0) & v3;
  }

  return result;
}

uint64_t sub_1B23231E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1B2323460()
{
  if (qword_1EB7AAD60 != -1)
  {
    sub_1B2331938();
  }

  v1 = qword_1EB7AAD58;

  return v1;
}

void cut_dispatch_log_queue(void *a1)
{
  v1 = a1;
  if (qword_1EB7AAE00 != -1)
  {
    sub_1B23312FC();
  }

  v2 = qword_1EB7AADF8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B23237EC;
  block[3] = &unk_1E7B20D98;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_1B2323D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_1B2323D2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));

  if (WeakRetained)
  {
    v4 = [*(a1 + 32) pendingDispatchBlocks];
    v5 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
    [v4 removeObject:v5];
  }

  v6 = [*(a1 + 32) pendingDispatchBlocks];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v10 = [*(a1 + 32) originalBlock];
  v10[2](v10, *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

void sub_1B2324114(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CUTLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_INFO, "Reduce -- Finished {result: %{public}@}", &v6, 0xCu);
  }

  [*(a1 + 32) _completeWithResult:v3];
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B2324590(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CUTResult alloc] initWithError:v3];

  (*(v2 + 16))(v2, v4);
}

void sub_1B2324610(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CUTResult alloc] initWithSuccess:v3];

  (*(v2 + 16))(v2, v4);
}

void sub_1B2324690(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [[CUTResult alloc] initWithSuccess:v6];

  [v3 _reduceWithPending:v4 visited:v5 currentResult:v7 completion:a1[7]];
}

__CFBundle *CUTGetMainBundleIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    MainBundle = CFBundleGetIdentifier(MainBundle);
  }

  return MainBundle;
}

id CUTTemporaryPath()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"CUT"];

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v1;
}

BOOL CUTAuditTokenTaskHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *cf.val = *a1;
  *&cf.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &cf);
  if (v6)
  {
    v7 = v6;
    *cf.val = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, v3, &cf);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
      CFRelease(v9);
    }

    else
    {
      v11 = 0;
    }

    if (*cf.val)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        sub_1B2330EBC(&cf);
      }

      if (*cf.val)
      {
        CFRelease(*cf.val);
      }
    }

    CFRelease(v7);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B2330F40();
    }

    v11 = 0;
  }

  return v11;
}

void CUTMapObjectProperties(void *a1, char a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v20 = a3;
  v5 = objc_opt_class();
  if (v5)
  {
    v6 = v5;
    do
    {
      if (v6 == objc_opt_class())
      {
        break;
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = sub_1B2324FEC;
      v23 = &unk_1E7B20CF8;
      v27 = a2;
      v26 = v6;
      v24 = v4;
      v25 = v20;
      v7 = v21;
      outCount = 0;
      v8 = class_copyPropertyList(v6, &outCount);
      if (v8)
      {
        v9 = v8;
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            v11 = v9[i];
            Name = property_getName(v11);
            v13 = property_copyAttributeValue(v11, "V");
            v14 = property_copyAttributeValue(v11, "T");
            v15 = [MEMORY[0x1E696AEC0] stringWithCString:Name encoding:4];
            if (v15)
            {
              if (v13)
              {
                if (v14)
                {
                  v22(v7, v15, v13, v14);
                  free(v14);
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v30 = v6;
                  v31 = 1024;
                  v32 = i;
                  _os_log_error_impl(&dword_1B2321000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ObjectPropertyEnumeration failed -- failed to get ivar type {checkpoint: %@, index: %u}", buf, 0x12u);
                }

                free(v13);
                goto LABEL_19;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v30 = v6;
                v31 = 1024;
                v32 = i;
                v16 = MEMORY[0x1E69E9C10];
                v17 = "ObjectPropertyEnumeration failed -- failed to get ivar name {checkpoint: %@, index: %u}";
                goto LABEL_15;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = v6;
              v31 = 1024;
              v32 = i;
              v16 = MEMORY[0x1E69E9C10];
              v17 = "ObjectPropertyEnumeration failed -- failed to get property name {checkpoint: %@, index: %u}";
LABEL_15:
              _os_log_error_impl(&dword_1B2321000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x12u);
            }

LABEL_19:
          }
        }

        free(v9);
      }

      v6 = [(objc_class *)v6 superclass];
    }

    while (v6);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B2324FEC(uint64_t a1, void *a2, const char *a3, _BYTE *a4)
{
  v7 = a2;
  v12 = v7;
  if (*(a1 + 56) == 1 && *a4 == 64)
  {
    InstanceVariable = class_getInstanceVariable(*(a1 + 48), a3);
    v9 = object_getIvar(*(a1 + 32), InstanceVariable);
  }

  else
  {
    v9 = [*(a1 + 32) valueForKey:v7];
  }

  v10 = v9;
  v11 = (*(*(a1 + 40) + 16))();
  if (v11 != v10)
  {
    [*(a1 + 32) setValue:v11 forKey:v12];
  }
}

__CFString *sub_1B23250CC()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

id sub_1B2325124(void *a1)
{
  v1 = [a1 stringByExpandingTildeInPath];
  v2 = [v1 stringByStandardizingPath];

  v3 = [v2 stringByResolvingSymlinksInPath];

  v4 = v3;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
  v6 = v4;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DFF8] URLByResolvingAliasFileAtURL:v5 options:0 error:0];
    v8 = v7;
    v6 = v4;
    if (v7)
    {
      v6 = [v7 path];
    }
  }

  return v6;
}

id sub_1B23251FC(void *a1)
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndex:0];
  }

  return v2;
}

uint64_t sub_1B2325244(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 cutStringByResolvingAndStandardizingPath];
  v4 = [v3 pathComponents];
  if (![v3 hasPrefix:@"/Volumes"])
  {
    goto LABEL_4;
  }

  if ([v4 count] < 3)
  {
    goto LABEL_4;
  }

  v5 = [v4 objectAtIndex:2];
  v6 = [@"/Volumes" stringByAppendingPathComponent:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (!v8)
  {
    v9 = 1;
  }

  else
  {
LABEL_4:
    v9 = 0;
  }

  return v9;
}

id sub_1B2325324(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 lastPathComponent];
  v11 = [v8 stringByAppendingPathComponent:v10];
  v12 = [v11 cutStringByResolvingAndStandardizingPath];

  if ([a1 _cutIsPathOnMissingVolume:v12])
  {
    v13 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = v14;
      v14 = sub_1B2325498(v12, v15, v9);

      v23 = 0;
      v17 = [a1 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v23];
      v18 = v23;
      v19 = v18;
      v20 = 0;
      if ((v17 & 1) == 0 && v18)
      {
        v20 = [a1 fileExistsAtPath:v14];
      }

      v21 = (v19 == 0) | v20;

      v13 = 0;
      if ((v21 & 1) == 0 || v15 == 99)
      {
        break;
      }

      v15 = (v15 + 1);
      if ((v20 & 1) == 0)
      {
        v13 = v14;
        break;
      }
    }
  }

  return v13;
}

id sub_1B2325498(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (a2 <= 0)
  {
    v11 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = MEMORY[0x1E696ADA0];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:1];
    v11 = [v7 stringWithFormat:@"%@-%@", v5, v10];
  }

  if ([v6 length])
  {
    v12 = [v11 stringByAppendingPathExtension:v6];

    v11 = v12;
  }

  return v11;
}

id sub_1B23255A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 lastPathComponent];
  v11 = [v8 stringByAppendingPathComponent:v10];
  v12 = [v11 cutStringByResolvingAndStandardizingPath];

  if (![v9 length])
  {

    v9 = 0;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v13;
    v13 = sub_1B2325498(v12, v14, v9);

    if (v14 == 9999)
    {
      break;
    }

    v14 = (v14 + 1);
    if (([a1 fileExistsAtPath:v13] & 1) == 0)
    {
      v16 = v13;
      goto LABEL_8;
    }
  }

  v16 = [MEMORY[0x1E696AEC0] cutStringGUID];
LABEL_8:
  v17 = v16;

  return v17;
}

id sub_1B23256CC(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 cutStringGUID];
  v7 = NSTemporaryDirectory();
  v8 = [a1 cutCreateUniqueDirectoryWithName:v6 atPath:v7 ofType:0];

  v9 = [v5 lastPathComponent];
  v10 = [v9 stringByDeletingPathExtension];
  v11 = [v5 pathExtension];

  v12 = [a1 cutUniqueFilename:v10 atPath:v8 ofType:v11];

  return v12;
}

id sub_1B23257C4(void *a1)
{
  if ([a1 length] <= 0xC800000)
  {
    if ([a1 length])
    {
      if (!off_1EB7AAE30)
      {
        off_1EB7AAE30 = CUTWeakLinkSymbol("inflate", @"/usr/lib/libz.dylib");
      }

      if (!off_1EB7AAE38)
      {
        off_1EB7AAE38 = CUTWeakLinkSymbol("inflateEnd", @"/usr/lib/libz.dylib");
      }

      if (!off_1EB7AAE40)
      {
        off_1EB7AAE40 = CUTWeakLinkSymbol("inflateInit2_", @"/usr/lib/libz.dylib");
      }

      v3 = [a1 length];
      v4 = [a1 length];
      v5 = v4 + (v4 >> 31);
      v6 = [MEMORY[0x1E695DF88] dataWithLength:(v3 + v4 / 2)];
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      LODWORD(v16) = [a1 length];
      *(&v20 + 1) = 0;
      *&v21 = 0;
      *&v19 = 0;
      v2 = 0;
      if (!off_1EB7AAE40(&v15, 47, "1.2.12", 112))
      {
        do
        {
          v8 = v19;
          if (v8 >= [v6 length])
          {
            [v6 increaseLengthBy:(v5 >> 1)];
          }

          v9 = [v6 mutableBytes];
          v17 = v9 + v19;
          v10 = [v6 length];
          v18 = v10 - v19;
          v11 = off_1EB7AAE30(&v15, 2);
        }

        while (!v11);
        v12 = v11 == 1;
        v13 = off_1EB7AAE38(&v15);
        v2 = 0;
        if (v12 && !v13)
        {
          [v6 setLength:v19];
          v2 = [MEMORY[0x1E695DEF0] dataWithData:v6];
        }
      }
    }

    else
    {
      v2 = a1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1B23259F8(void *a1)
{
  v2 = [a1 _CUTDecompressData];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;

  return v5;
}

id sub_1B2325A4C(void *a1)
{
  if ([a1 length])
  {
    v1 = a1;
    if (!off_1EB7AAE48)
    {
      v2 = CUTWeakLinkSymbol("deflate", @"/usr/lib/libz.dylib");
      v1 = a1;
      off_1EB7AAE48 = v2;
    }

    if (!off_1EB7AAE50)
    {
      v3 = CUTWeakLinkSymbol("deflateEnd", @"/usr/lib/libz.dylib");
      v1 = a1;
      off_1EB7AAE50 = v3;
    }

    if (!off_1EB7AAE58)
    {
      v4 = CUTWeakLinkSymbol("deflateInit2_", @"/usr/lib/libz.dylib");
      v1 = a1;
      off_1EB7AAE58 = v4;
    }

    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v20 = v5;
    v15 = v5;
    v14 = v5;
    v16 = 0;
    v19 = 0uLL;
    v6 = v1;
    v13 = [a1 bytes];
    LODWORD(v14) = [a1 length];
    v7 = 0;
    if (!off_1EB7AAE58(&v13, 0xFFFFFFFFLL, 8, 31, 8, 0, "1.2.12", 112))
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:0x4000];
      do
      {
        v8 = v16;
        if (v8 >= [v7 length])
        {
          [v7 increaseLengthBy:0x4000];
        }

        v9 = [v7 mutableBytes];
        *&v15 = v9 + v16;
        v10 = [v7 length];
        DWORD2(v15) = v10 - v16;
        off_1EB7AAE48(&v13, 4);
      }

      while (!DWORD2(v15));
      off_1EB7AAE50(&v13);
      [v7 setLength:v16];
    }

    return v7;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1B232619C()
{
  qword_1EB7AAD40 = objc_alloc_init(CUTNetworkInterfaceListener);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B232664C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 32) != v2)
  {
    *(v1 + 32) = v2;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(*(a1 + 32) + 16);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 cutNetworkInterfaceListenerDidWifiStateChange:{*(a1 + 40), v11}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B2326800(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 36) != v2)
  {
    *(v1 + 36) = v2;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(*(a1 + 32) + 16);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 cutNetworkInterfaceListenerDidCellStateChange:{*(a1 + 40), v11}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B23269E4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = 48;
  if (*(a1 + 48))
  {
    v2 = 40;
  }

  v3 = *(*(a1 + 32) + v2);
  if (([v3 isEqualToSet:*(a1 + 40)] & 1) == 0)
  {
    v4 = 48;
    if (*(a1 + 48))
    {
      v4 = 40;
    }

    objc_storeStrong((*(a1 + 32) + v4), *(a1 + 40));
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(*(a1 + 32) + 16);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v10 cutNetworkInterfaceListenerDidAddressChange:*(a1 + 40) isIPv6:{*(a1 + 48), v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B2326BF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  result = [v2 containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 16);

    return [v8 addObject:v7];
  }

  return result;
}

void sub_1B2326D14(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

void sub_1B2327254(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_1B23272B8()
{
  qword_1EB7AAE60 = os_log_create("com.apple.CommonUtilities", "CUTFileCopier");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2327340()
{
  qword_1EB7AADF0 = os_log_create("com.apple.CommonUtilities", "Power");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2327384()
{
  qword_1ED4AE448 = os_log_create("com.apple.CommonUtilities", "Network");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232740C()
{
  qword_1EB7AADE0 = os_log_create("com.apple.CommonUtilities", "WeakLink");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2327494()
{
  qword_1EB7AAE70 = os_log_create("com.apple.CommonUtilities", "CUTXPC");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232751C()
{
  qword_1EB7AAE80 = os_log_create("com.apple.CommonUtilities", "utilities");

  return MEMORY[0x1EEE66BB8]();
}

id cut_backtrace()
{
  __b[66] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:66];
  memset(__b, 170, 0x210uLL);
  v1 = backtrace(__b, 66);
  v2 = backtrace_symbols(__b, v1);
  v3 = v2;
  if (v1 >= 2)
  {
    v4 = v1 - 1;
    v5 = (v2 + 1);
    do
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = *v5++;
      v8 = [v6 initWithUTF8String:v7];
      [v0 addObject:v8];

      --v4;
    }

    while (v4);
  }

  free(v3);
  if ([v0 count])
  {
    v9 = [v0 subarrayWithRange:{1, objc_msgSend(v0, "count") - 1}];
  }

  else
  {
    v9 = v0;
  }

  v10 = v9;

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void cut_non_arc_os_release(id *a1)
{
  if (a1)
  {
    v2 = *a1;
    v1 = objc_opt_self();
  }
}

void sub_1B23276FC()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("CUTLog.oversize.queue", v0);
  v2 = qword_1EB7AADF8;
  qword_1EB7AADF8 = v1;
}

void sub_1B23279A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  (*(v1 + 16))(v1, v2);
}

_xpc_connection_s *CUTXPCCreateServerConnection(const char *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1 && *a1)
  {
    mach_service = xpc_connection_create_mach_service(a1, MEMORY[0x1E69E96A0], 1uLL);
  }

  else
  {
    mach_service = xpc_connection_create(0, MEMORY[0x1E69E96A0]);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1B2328110;
  handler[3] = &unk_1E7B20DE8;
  v14 = mach_service;
  v25 = v9;
  v26 = v10;
  v23 = v14;
  v24 = v12;
  v27 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  v18 = v9;
  xpc_connection_set_event_handler(v14, handler);
  v19 = v27;
  v20 = v14;

  return v14;
}

void sub_1B2328110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1B2746560]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v5 = *(a1 + 32);
    v9 = v3;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (v9 == MEMORY[0x1E69E9E20])
    {
      v27 = +[CUTLog xpc];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1B233152C();
      }

      v14 = v10;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 != MEMORY[0x1E69E9E38])
      {
        MEMORY[0x1B2746560](v9);
        v28 = +[CUTLog xpc];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1B2331478();
        }

        exit(0);
      }

      v13 = +[CUTLog xpc];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1B23314EC();
      }

      v14 = v11;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v14[2]();
LABEL_11:

LABEL_12:
    goto LABEL_16;
  }

  if (v4 != MEMORY[0x1E69E9E68])
  {
    v5 = +[CUTLog xpc];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331408();
    }

    goto LABEL_12;
  }

  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v16;
  v19 = v3;
  v20 = v15;
  v21 = v17;
  v22 = v19;
  if (!v21)
  {
    v21 = MEMORY[0x1E69E96A0];
    v23 = MEMORY[0x1E69E96A0];
  }

  xpc_connection_set_target_queue(v22, v21);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1B2329184;
  handler[3] = &unk_1E7B20E58;
  v31 = v22;
  v32 = v20;
  v30 = v18;
  v24 = v20;
  v25 = v18;
  v26 = v22;
  xpc_connection_set_event_handler(v26, handler);
  xpc_connection_resume(v26);

LABEL_16:
}

void CUTXPCConnectionSetEventHandlers(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B23284C4;
  v15[3] = &unk_1E7B20E10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  xpc_connection_set_event_handler(v14, v15);
}

void sub_1B23284C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1B2746560]();
  if (v4 != MEMORY[0x1E69E9E98])
  {
    if (v4 != MEMORY[0x1E69E9E80])
    {
      v5 = +[CUTLog xpc];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1B233156C(a1);
      }

LABEL_9:

      goto LABEL_21;
    }

    v8 = a1[7];
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = *(v8 + 16);
LABEL_20:
    v9();
    goto LABEL_21;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v10 = +[CUTLog xpc];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331724(a1);
    }

    v11 = a1[5];
    if (v11)
    {
LABEL_19:
      v12 = a1[4];
      v9 = *(v11 + 16);
      goto LABEL_20;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9E20];
    v5 = +[CUTLog xpc];
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (v3 != v6)
    {
      if (v7)
      {
        sub_1B23315F8(a1, v3);
      }

      goto LABEL_9;
    }

    if (v7)
    {
      sub_1B23316A8(a1);
    }

    v11 = a1[6];
    if (v11)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
}

_xpc_connection_s *CUTXPCCreateConnectionForServiceWithQueue(char a1, int a2, const char *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3)
  {
    if (!v11)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s_connection_queue", a3];
      v11 = dispatch_queue_create([v14 UTF8String], 0);
    }

    if (a1)
    {
      mach_service = xpc_connection_create_mach_service(a3, v11, 0);
    }

    else
    {
      mach_service = xpc_connection_create(a3, v11);
    }

    v16 = mach_service;
    if (mach_service)
    {
      if (a2)
      {
        CUTXPCConnectionSetEventHandlers(mach_service, v12, v13, 0);
        xpc_connection_resume(v16);
      }
    }

    else
    {
      v17 = +[CUTLog xpc];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1B23317A0();
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t CUTInsertBoolsToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (a2)
  {
    do
    {
      xpc_dictionary_set_BOOL(xdict, a2, *v12 != 0);
      v10 = (v12 + 1);
      v12 += 2;
      a2 = *v10;
    }

    while (*v10);
  }

  return 1;
}

uint64_t CUTInsertIntsToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (a2)
  {
    do
    {
      xpc_dictionary_set_int64(xdict, a2, *v12);
      v10 = (v12 + 1);
      v12 += 2;
      a2 = *v10;
    }

    while (*v10);
  }

  return 1;
}

uint64_t CUTInsertDatasToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v15 = &a9;
  if (a2)
  {
    do
    {
      v11 = v15;
      v16 = v15 + 1;
      v12 = *v11;
      if (!v12)
      {
        v12 = [MEMORY[0x1E695DEF0] data];
      }

      xpc_dictionary_set_data(v10, a2, [v12 bytes], objc_msgSend(v12, "length"));

      v13 = v16;
      v15 = (v16 + 1);
      a2 = *v13;
    }

    while (*v13);
  }

  return 1;
}

uint64_t CUTInsertNSStringsToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v18 = &a9;
  if (a2)
  {
    do
    {
      v11 = v18;
      v19 = v18 + 1;
      v12 = *v11;
      v13 = v12;
      if (v12)
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        if (CStringPtr)
        {
          xpc_dictionary_set_string(v10, a2, CStringPtr);
        }

        else
        {
          maxBufLen = 0;
          v21.length = CFStringGetLength(v13);
          v21.location = 0;
          CFStringGetBytes(v13, v21, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
          v15 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
          v22.length = CFStringGetLength(v13);
          v22.location = 0;
          CFStringGetBytes(v13, v22, 0x8000100u, 0, 0, v15, maxBufLen, 0);
          v15[maxBufLen] = 0;
          xpc_dictionary_set_string(v10, a2, v15);
          free(v15);
        }
      }

      v16 = v19;
      v18 = (v19 + 1);
      a2 = *v16;
    }

    while (*v16);
  }

  return 1;
}

uint64_t CUTInsertDoublesToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (a2)
  {
    do
    {
      xpc_dictionary_set_double(xdict, a2, *v12);
      v10 = (v12 + 1);
      v12 += 2;
      a2 = *v10;
    }

    while (*v10);
  }

  return 1;
}

int64_t CUTGetXPCIntFromDictionary(void *a1, const char *a2)
{
  if (a2)
  {
    return xpc_dictionary_get_int64(a1, a2);
  }

  else
  {
    return 0;
  }
}

id CUTGetXPCDataFromDictionary(void *a1, const char *a2)
{
  if (a2)
  {
    length = 0;
    data = xpc_dictionary_get_data(a1, a2, &length);
    if (data)
    {
      v4 = data;
      v5 = objc_alloc(MEMORY[0x1E695DEF0]);
      data = [v5 initWithBytes:v4 length:length];
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

char *CUTGetXPCStringFromDictionary(void *a1, char *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    string = xpc_dictionary_get_string(v3, a2);
    a2 = string;
    if (string)
    {
      v6 = strlen(string);
      a2 = CFStringCreateWithBytes(*MEMORY[0x1E695E4A8], a2, v6, 0x8000100u, 0);
    }
  }

  return a2;
}

double CUTGetXPCDoubleFromDictionary(xpc_object_t xdict, const char *key)
{
  if (key)
  {
    return xpc_dictionary_get_double(xdict, key);
  }

  else
  {
    return 0.0;
  }
}

id CUTGetXPCConnectionContext(_xpc_connection_s *a1)
{
  v1 = xpc_connection_get_context(a1);
  v2 = [v1 object];

  return v2;
}

void CUTSetXPCConnectionContext(void *a1, void *a2)
{
  connection = a1;
  v3 = a2;
  context = xpc_connection_get_context(connection);
  v5 = objc_opt_self();

  if (v3)
  {
    v6 = [CUTWeakReference weakRefWithObject:v3];
  }

  else
  {
    v6 = 0;
  }

  xpc_connection_set_context(connection, v6);
}

id CUTCreateXPCObjectFromDictionary(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = _CFXPCCreateXPCMessageWithCFObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CUTCreateDictionaryFromXPCObject(void *a1)
{
  if (a1)
  {
    a1 = _CFXPCCreateCFObjectFromXPCMessage();
    v1 = vars8;
  }

  return a1;
}

id CUTDataForPropertyList(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:v1 format:200 options:0 error:0];
    if (!v2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"argument can't be converted to a property list"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CUTPropertyListFromNSData(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:0 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CUTSafeArrayOfStrings(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v1 = 0;
  }

  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  v4 = v2;
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v4 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v4 = v2;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

void CUTXPCAlertv(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a1;
    v19 = [[v3 alloc] initWithFormat:v4 arguments:a2];

    v5 = CUTXPCCreateConnectionForServiceWithQueue(1, 1, "com.apple.aps.alertprovider.xpc", 0, &unk_1F2998D18, 0);
    if (v5)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      CUTInsertIntsToXPCDictionary(v6, "type", v7, v8, v9, v10, v11, v12, 0);
      CUTInsertNSStringsToXPCDictionary(v6, "text", v13, v14, v15, v16, v17, v18, v19);
      xpc_connection_send_message(v5, v6);
    }
  }
}

void sub_1B232910C()
{
  v0 = +[CUTLog xpc];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_1B2331810();
  }
}

const char *sub_1B23291C8(uint64_t a1)
{
  v2 = *(a1 + 32);

  return xpc_connection_get_name(v2);
}

uint64_t sub_1B232931C()
{
  qword_1EB7AAD48 = objc_alloc_init(CUTReporting);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B2329474(uint64_t a1)
{
  v2 = +[CUTReporting _rtcReportingSession];
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B2329540;
    v3[3] = &unk_1E7B20E88;
    v5 = *(a1 + 32);
    v4 = v2;
    [v4 startConfigurationWithCompletionHandler:v3];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1B2329540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

void sub_1B23297C0()
{
  v0 = qword_1EB7AAD70;
  qword_1EB7AAD70 = &unk_1F299BB40;
}

void sub_1B2329888(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v4);
}

void sub_1B23299A0(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  if (a2)
  {
    v4 = a1[6];
    v5 = a1[4];

    MEMORY[0x1EEE66B58](v5, sel__fullfillSeal_withSession_);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CUTReportingErrorDomain" code:3 userInfo:0];
    [v2 _failSeal:v3 withError:v6];
  }
}

void sub_1B2329C18()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("CUTReporting.queue", v2);
  v1 = qword_1EB7AAD58;
  qword_1EB7AAD58 = v0;
}

void *sub_1B2329C80()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoClientType", @"RTCReporting");
  qword_1EB7AADC0 = result;
  return result;
}

void *sub_1B2329CB0()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoClientVersion", @"RTCReporting");
  qword_1EB7AADB0 = result;
  return result;
}

void *sub_1B2329CE0()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoSessionID", @"RTCReporting");
  qword_1EB7AADA0 = result;
  return result;
}

void *sub_1B2329D10()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoBatchEvent", @"RTCReporting");
  qword_1EB7AADD0 = result;
  return result;
}

void *sub_1B2329D40()
{
  result = CUTWeakLinkSymbol("kRTCReportingUserInfoClientName", @"RTCReporting");
  qword_1EB7AAD90 = result;
  return result;
}

void *sub_1B2329D70()
{
  result = CUTWeakLinkSymbol("kRTCReportingUserInfoServiceName", @"RTCReporting");
  qword_1EB7AAD80 = result;
  return result;
}

uint64_t sub_1B2329DA4()
{
  qword_1EB7AAE10 = objc_alloc_init(CUTTelephonyManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232A140(uint64_t a1)
{
  [*(*(a1 + 32) + 16) lock];
  byte_1EB7AAE08 = 0;
  [*(a1 + 32) __adjustFastDormancyTokens];
  v2 = *(*(a1 + 32) + 16);

  return [v2 unlock];
}

void sub_1B232A6A0(int a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = +[CUTLog network];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a1 & 0x40000) != 0)
    {
      v5 = 87;
    }

    else
    {
      v5 = 45;
    }

    v15[0] = 67111426;
    v15[1] = v5;
    if ((a1 & 2) != 0)
    {
      v6 = 82;
    }

    else
    {
      v6 = 45;
    }

    v16 = 1024;
    v17 = v6;
    if (a1)
    {
      v7 = 116;
    }

    else
    {
      v7 = 45;
    }

    v18 = 1024;
    v19 = v7;
    if ((a1 & 4) != 0)
    {
      v8 = 99;
    }

    else
    {
      v8 = 45;
    }

    v20 = 1024;
    v21 = v8;
    if ((a1 & 8) != 0)
    {
      v9 = 67;
    }

    else
    {
      v9 = 45;
    }

    v22 = 1024;
    if ((a1 & 0x10) != 0)
    {
      v10 = 105;
    }

    else
    {
      v10 = 45;
    }

    v23 = v9;
    v24 = 1024;
    if ((a1 & 0x20) != 0)
    {
      v11 = 68;
    }

    else
    {
      v11 = 45;
    }

    v25 = v10;
    if ((a1 & 0x10000) != 0)
    {
      v12 = 108;
    }

    else
    {
      v12 = 45;
    }

    v26 = 1024;
    v27 = v11;
    if ((a1 & 0x20000) != 0)
    {
      v13 = 100;
    }

    else
    {
      v13 = 45;
    }

    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 2080;
    v33 = a2;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, "Reachability Flag Status: %c%c %c%c%c%c%c%c%c %s\n", v15, 0x42u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B232A97C()
{
  qword_1ED4AE438 = objc_alloc_init(CUTWiFiManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232AD40(uint64_t a1)
{
  v2 = +[CUTLog network];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B2321000, v2, OS_LOG_TYPE_DEFAULT, "Notified about link change, running network block async", v4, 2u);
  }

  return [*(a1 + 32) _updateIsWiFiAssociatedAsync:1];
}

void sub_1B232B358()
{
  v0 = +[CUTLog network];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_1B2331B50();
  }
}

void sub_1B232B648(const __SCDynamicStore *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = *MEMORY[0x1E69822F0];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v2, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  v7 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v2, v5, *MEMORY[0x1E6982340]);
  CFArrayAppendValue(Mutable, v7);
  v8 = CFArrayCreateMutable(v2, 0, v3);
  v9 = *MEMORY[0x1E6982320];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v2, v5, *MEMORY[0x1E69822E0], *MEMORY[0x1E6982320]);
  CFArrayAppendValue(v8, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v11 = SCDynamicStoreCopyMultiple(a1, Mutable, v8);
  CFRelease(Mutable);
  CFRelease(v8);
  if (!v11)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if (!NetworkGlobalEntity)
  {
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v11, NetworkGlobalEntity);
  v13 = Value;
  if (!Value)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v14 = CFGetTypeID(Value);
  if (v14 != CFDictionaryGetTypeID())
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v15 = CFDictionaryGetValue(v13, *MEMORY[0x1E6982300]);
  v13 = CFDictionaryGetValue(v13, *MEMORY[0x1E6982308]);
LABEL_9:
  if (v15)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;
  if (v7)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = CFDictionaryGetValue(v11, v7);
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFDictionaryGetTypeID())
      {
        v15 = CFDictionaryGetValue(v21, *MEMORY[0x1E6982300]);
        v13 = CFDictionaryGetValue(v21, *MEMORY[0x1E6982308]);
      }
    }
  }

  v16 = 0;
  if (v15 && v13)
  {
    v23 = SCDynamicStoreKeyCreateNetworkServiceEntity(v2, v5, v13, v9);
    v24 = CFDictionaryGetValue(v11, v23);
    CFRelease(v23);
    v16 = v24 != 0;
  }

LABEL_25:
  if (NetworkGlobalEntity)
  {
    CFRelease(NetworkGlobalEntity);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v25 = +[CUTWiFiManager sharedInstance];
  [v25 setIsPrimaryCellularCached:v16];
}

void sub_1B232BCDC(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = +[CUTLog network];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a2;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, "Found current network: %p", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _ssidFromNetwork:a2];
  if (v5)
  {
    v6 = +[CUTLog network];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v29 = v5;
      _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_DEFAULT, "We are associated to %{private}@", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:v5 forKey:@"@CUTWiFiManagerSSID"];
  }

  else
  {
    v7 = 0;
  }

  [*(*(a1 + 32) + 32) lock];
  v8 = +[CUTLog network];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v29 = a2;
    _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, "Network change: %{private}@", buf, 0xCu);
  }

  v20 = v5;

  v9 = +[CUTLog network];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if (!a2)
    {
      v10 = @"NO";
    }

    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "Wifi is associated? %@", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = *(*(a1 + 32) + 40);
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    v15 = MEMORY[0x1E69E96A0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B232C030;
        block[3] = &unk_1E7B20F70;
        v18 = *(a1 + 32);
        block[4] = v17;
        block[5] = v18;
        v22 = v7;
        dispatch_async(v15, block);
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:{16, v20}];
    }

    while (v13);
  }

  [*(*(a1 + 32) + 32) unlock];
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B232C030(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return MEMORY[0x1EEE66B58](v4, sel_cutWiFiManagerLinkDidChange_context_);
  }

  return result;
}

void sub_1B232C3C4(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) lock];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    CFRetain(*(v4 + 56));
    v6 = +[CUTLog network];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v5;
      _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_DEFAULT, "Found cached network: %p", buf, 0xCu);
    }

    [*(*(a1 + 32) + 32) unlock];
LABEL_15:
    [*(a1 + 32) setCurrentNetwork:v5];
    (*(*(a1 + 40) + 16))();
    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_17;
  }

  [*(v4 + 32) unlock];
  if ((*(a1 + 48) & 1) == 0)
  {
    if (a2)
    {
      v5 = WiFiDeviceClientCopyCurrentNetwork();
    }

    else
    {
      v5 = 0;
    }

    v15 = +[CUTLog network];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v5;
      _os_log_impl(&dword_1B2321000, v15, OS_LOG_TYPE_DEFAULT, "Sync query found network: %p", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1B232C654;
  v20 = &unk_1E7B20FC0;
  v7 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = v7;
  v8 = MEMORY[0x1B2746240](&v17);
  if (a2)
  {
    [*(*(a1 + 32) + 32) lock];
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    v11 = *(v9 + 112);
    [v10 unlock];
    v12 = [v8 copy];

    v13 = MEMORY[0x1B2746240](v12);
    WiFiDeviceClientCopyCurrentNetworkAsync();

    v14 = objc_opt_self();
    v8 = v12;
  }

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B232C654(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCurrentNetwork:a2];
  if (*(a1 + 40))
  {
    v4 = +[CUTLog network];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, "async query found network: %p", &v6, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  if (a2)
  {
    CFRelease(a2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B232C740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3;
    a1 = (*(a3 + 16))(a3);
    a3 = v5;
    v3 = vars8;
  }

  return MEMORY[0x1EEE66BE0](a1, a2, a3);
}

uint64_t sub_1B232CBA4(int a1, CFDictionaryRef theDict, void *a3)
{
  v10 = -1431655766;
  valuePtr = -1431655766;
  Value = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE");
  v6 = CFBooleanGetValue(Value);
  v7 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON");
  CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
  v8 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_SUBREASON");
  result = CFNumberGetValue(v8, kCFNumberIntType, &v10);
  if (v6)
  {
    return [a3 _performPowerReading];
  }

  return result;
}

void sub_1B232CC3C(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"LINK_CHANGED_NETWORK");

    MEMORY[0x1EEE66B58](a3, sel__setCurrentNetwork_);
  }
}

uint64_t sub_1B232CCA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v4, sel_cutWiFiManagerDeviceAttached_);
  }

  return result;
}

void sub_1B232CECC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(*(a1 + 32) + 32) lock];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(*(a1 + 32) + 40);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = MEMORY[0x1E69E96A0];
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1B232D06C;
          block[3] = &unk_1E7B20F70;
          v11 = *(a1 + 32);
          block[4] = v10;
          block[5] = v11;
          v14 = v3;
          dispatch_async(v8, block);

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    [*(*(a1 + 32) + 32) unlock];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B232D06C(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return MEMORY[0x1EEE66B58](v4, sel_cutWiFiManager_generatedPowerReading_);
  }

  return result;
}

void sub_1B232D188(uint64_t a1, uint64_t a2)
{
  if (a2 && [*(a1 + 32) isWiFiAssociated])
  {
    valuePtr = 115;
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v5 = WiFiDeviceClientCopyProperty();
    v6 = [v5 objectForKey:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
    v7 = [v6 integerValue];

    v8 = [v5 objectForKey:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
    v9 = [v8 integerValue];

    if (v7 > 0 || v9 >= 1)
    {
      v11 = [v5 objectForKey:@"CACHED_ASSOCIATED_SLEEP_DURATION"];
      v12 = [v11 unsignedIntegerValue];

      v13 = [v5 objectForKey:@"CACHED_TIME_STAMP"];
      v14 = [v13 unsignedIntegerValue];

      v15 = [v5 objectForKey:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
      v16 = [v15 unsignedIntegerValue];

      v17 = [v5 objectForKey:@"INSTANT_TIME_STAMP"];
      v18 = [v17 unsignedIntegerValue];

      v19 = v18 >= v14 ? v18 - v14 : 0;
      if (v19 >> 5 >= 0x753)
      {
        if (v16 >= v12)
        {
          v20 = v16 - v12;
        }

        else
        {
          v20 = 0;
        }

        v21 = [MEMORY[0x1E695DF90] dictionary];
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
        [v21 setObject:v22 forKey:@"@CUTWiFiManagerTotalDuration"];

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
        [v21 setObject:v23 forKey:@"@CUTWiFiManagerPMDuration"];

        v24 = MEMORY[0x1E696AD98];
        [*(a1 + 32) _wifiMeasurementErrorForInterval:v19 / 1000.0];
        v25 = [v24 numberWithDouble:?];
        [v21 setObject:v25 forKey:@"@CUTWiFiManagerMaxMeasurementError"];

        v26 = [v5 objectForKey:@"CACHED_ASSOCIATED_SLEEP_DURATION"];
        v27 = [v26 unsignedIntegerValue];

        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
        [v21 setObject:v28 forKey:@"CACHED_ASSOCIATED_SLEEP_DURATION"];

        v29 = [v5 objectForKey:@"CACHED_TIME_STAMP"];
        v30 = [v29 unsignedIntValue];

        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
        [v21 setObject:v31 forKey:@"CACHED_TIME_STAMP"];

        v32 = [v5 objectForKey:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
        v33 = [v32 unsignedIntegerValue];

        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
        [v21 setObject:v34 forKey:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];

        v35 = [v5 objectForKey:@"INSTANT_TIME_STAMP"];
        v36 = [v35 unsignedIntegerValue];

        v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
        [v21 setObject:v37 forKey:@"INSTANT_TIME_STAMP"];

        v38 = *(a1 + 32);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = sub_1B232D5A4;
        v40[3] = &unk_1E7B21038;
        v40[4] = v38;
        v41 = v21;
        v42 = *(a1 + 40);
        v39 = v21;
        [v38 _performCurrentNetworkBlock:v40 withDevice:a2 async:1];
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t sub_1B232D5A4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _ssidFromNetwork:a2];
  v7 = v4;
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:@"@CUTWiFiManagerSSID"];
    v4 = v7;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, *(a1 + 40), v4);
    v4 = v7;
  }

  return MEMORY[0x1EEE66BE0](v5, v3, v4);
}

void sub_1B232D714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232D72C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _ssidFromNetwork:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B232DC80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id sub_1B232DCA8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(CUTUnsafePromiseSeal);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1B232DDA0;
  v13 = &unk_1E7B210D8;
  v14 = v5;
  v15 = v3;
  v6 = v3;
  v7 = v5;
  [v4 registerResultBlock:&v10];

  v8 = [(CUTUnsafePromiseSeal *)v7 promise:v10];

  return v8;
}

void sub_1B232DDA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    v8 = [v3 error];

    [v4 failWithError:v8];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [v3 value];

    v7 = (*(v5 + 16))(v5, v6);

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B232DED0;
    v9[3] = &unk_1E7B20C58;
    v10 = *(a1 + 32);
    [v7 registerResultBlock:v9];
  }
}

void sub_1B232DED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  if (v4 == 1)
  {
    v6 = [v3 error];

    [v5 failWithError:v6];
  }

  else
  {
    v6 = [v3 value];

    [v5 fulfillWithValue:v6];
  }
}

_CUTLockingPromise *sub_1B232DF68(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(_CUTLockingPromise);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B232E044;
  v11[3] = &unk_1E7B210D8;
  v6 = v5;
  v12 = v6;
  v13 = v3;
  v7 = v3;
  [v4 registerResultBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void sub_1B232E044(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [CUTResult alloc];
    v6 = [v3 error];
    v7 = [(CUTResult *)v5 initWithError:v6];
    [v4 _fulfillWithResult:v7];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v3 value];
    v10 = (*(v8 + 16))(v8, v9);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1B2331BF8();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B232E194;
    v11[3] = &unk_1E7B20C58;
    v12 = *(a1 + 32);
    [v10 registerResultBlock:v11];
  }
}

void sub_1B232E194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  v6 = [CUTResult alloc];
  if (v4 == 1)
  {
    v9 = [v3 error];

    v7 = [(CUTResult *)v6 initWithError:v9];
  }

  else
  {
    v9 = [v3 value];

    v7 = [(CUTResult *)v6 initWithSuccess:v9];
  }

  v8 = v7;
  [v5 _fulfillWithResult:v7];
}

void sub_1B232E5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B232E628(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v9 = v3;
    if ([v3 state] == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v4 = *(a1 + 32);
      v5 = [v9 error];
      [v4 failWithError:v5];

LABEL_7:
      v3 = v9;
      goto LABEL_8;
    }

    v6 = [v9 value];
    [*(a1 + 40) setObject:v6 atIndexedSubscript:*(a1 + 64)];

    v7 = ++*(*(*(a1 + 56) + 8) + 24);
    v8 = [*(a1 + 40) count] == v7;
    v3 = v9;
    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(a1 + 32) fulfillWithValue:*(a1 + 40)];
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_1B232E920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232E940(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 atIndexedSubscript:*(a1 + 56)];
  v3 = ++*(*(*(a1 + 48) + 8) + 24);
  result = [*(a1 + 32) count];
  if (result == v3)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 fulfillWithValue:v6];
  }

  return result;
}

void sub_1B232EF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1B232EFB0(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) lock];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    if ([v10 state] == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v3 = *(a1 + 40);
      v4 = [CUTResult alloc];
      v5 = [v10 error];
      v6 = [(CUTResult *)v4 initWithError:v5];
      [v3 _fulfillWithResult:v6];
    }

    else
    {
      v7 = [v10 value];
      [*(a1 + 48) setObject:v7 atIndexedSubscript:*(a1 + 72)];

      v8 = ++*(*(*(a1 + 64) + 8) + 24);
      if ([*(a1 + 48) count] != v8)
      {
        goto LABEL_7;
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      v9 = *(a1 + 40);
      v5 = [[CUTResult alloc] initWithSuccess:*(a1 + 48)];
      [v9 _fulfillWithResult:v5];
    }
  }

LABEL_7:
  [*(a1 + 32) unlock];
}

void sub_1B232F390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232F3B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(a1 + 40) setObject:v4 atIndexedSubscript:*(a1 + 64)];

  v5 = ++*(*(*(a1 + 56) + 8) + 24);
  if ([*(a1 + 40) count] == v5)
  {
    v6 = *(a1 + 48);
    v7 = [[CUTResult alloc] initWithSuccess:*(a1 + 40)];
    [v6 _fulfillWithResult:v7];
  }

  v8 = *(a1 + 32);

  return [v8 unlock];
}

uint64_t sub_1B232FDD0()
{
  v0 = BOMCopierUserData();
  v1 = v0;
  v2 = 2;
  if (v0)
  {
    if ([v0 wasCancelled])
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1B232FE18(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = BOMCopierUserData();
  v6 = +[CUTLog fileCopier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v9 = 138543875;
    v10 = v5;
    v11 = 2081;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_fault_impl(&dword_1B2321000, v6, OS_LOG_TYPE_FAULT, "File error {cutCopier: %{public}@, path: %{private}s, errorNumber: %d}", &v9, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1B232FF00(uint64_t a1, uint64_t a2)
{
  v3 = BOMCopierUserData();
  v4 = +[CUTLog fileCopier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1B2331C24(v3, a2, v4);
  }

  return 3;
}

void sub_1B232FF74(uint64_t a1, uint64_t a2)
{
  v3 = BOMCopierUserData();
  v4 = +[CUTLog fileCopier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1B2331C9C(v3, a2, v4);
  }
}

void sub_1B232FFE4(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = BOMCopierUserData();
  v6 = +[CUTLog fileCopier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v8 = 138543875;
    v9 = v5;
    v10 = 2081;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_fault_impl(&dword_1B2321000, v6, OS_LOG_TYPE_FAULT, "Fatal File Error {cutCopier: %{public}@, path: %{private}s, errorNumber: %d}", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B23301C0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_1B233041C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v4, sel_cutPowerMonitorSystemHasPoweredOn_);
  }

  return result;
}

uint64_t sub_1B2330678()
{
  qword_1ED4AE430 = [[CUTPowerMonitor alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2330B98(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v4, sel_cutPowerMonitorBatteryConnectedStateDidChange_);
  }

  return result;
}

void sub_1B2330D48(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUTAsyncReducer.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"self.continueBlock"}];
}

void sub_1B2330DC4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUTAsyncReducer.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"self.cancelBlock"}];
}

void sub_1B2330E40(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUTAsyncReducer.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"self.stopBlock"}];
}

void sub_1B2330EBC(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = 138543362;
  v4 = v1;
  _os_log_fault_impl(&dword_1B2321000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unable to get entitlements for client task {error: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B2330F88(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_CUTUnsafePromise.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"!self.done"}];
}

void sub_1B23310A8(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_fault_impl(&dword_1B2321000, log, OS_LOG_TYPE_FAULT, "Unable to create the power assertion {identifier: %{public}@, retVal: %d}", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B2331130()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = cut_backtrace();
  sub_1B2327254(&dword_1B2321000, v1, v2, "%{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B23311B8(uint64_t a1, int a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(*a1 + 16);
  v7 = getpid();
  v8 = *(*a1 + 24);
  v10 = 138544130;
  v11 = v6;
  v12 = 1024;
  v13 = a2;
  v14 = 1024;
  v15 = v7;
  v16 = 2114;
  v17 = v8;
  _os_log_fault_impl(&dword_1B2321000, a3, OS_LOG_TYPE_FAULT, "Unable to properly release the power assertion - Dropping it stead {identifier: %{public}@, retVal: %d, pid: %d, stack: %{public}@ }", &v10, 0x22u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B2331310(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_CUTPromise.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"!self.done"}];
}

void sub_1B233138C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_CUTPromise.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"!self.done"}];
}

void sub_1B2331408()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B23291BC();
  sub_1B23291B0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B2331478()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B23291B0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B233156C(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1B23291C8(a1);
  sub_1B23291BC();
  sub_1B23291A0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B23315F8(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B23291C8(a1);
  xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
  sub_1B23291A0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B23316A8(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1B23291C8(a1);
  sub_1B23291BC();
  sub_1B23291A0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B2331724(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1B23291C8(a1);
  sub_1B23291BC();
  sub_1B23291A0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B23317A0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B23291BC();
  sub_1B23291B0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B2331850(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUTResult.m" lineNumber:39 description:@"Unexpected state: Success"];
}

void sub_1B23318C4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CUTResult.m" lineNumber:44 description:@"Unexpected state: Fail"];
}

void sub_1B2331A3C()
{
  sub_1B232A968();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CUTReachability.m" lineNumber:186 description:@"connectionRequired called with NULL reachabilityRef"];

  *v0 = *v1;
}

void sub_1B2331AAC()
{
  sub_1B232A968();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CUTReachability.m" lineNumber:194 description:@"currentNetworkStatus called with NULL reachabilityRef"];

  *v0 = *v1;
}

void sub_1B2331C24(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543619;
  *&v4[4] = a1;
  *&v4[12] = 2081;
  *&v4[14] = a2;
  sub_1B23301C0(&dword_1B2321000, a2, a3, "File Conflict Error {cutCopier: %{public}@, path: %{private}s}", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B2331C9C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2082;
  *&v4[14] = a2;
  sub_1B23301C0(&dword_1B2321000, a2, a3, "Fatal Error {cutCopier: %{public}@, error: %{public}s}", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}