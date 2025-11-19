void sub_1000015A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 _queue_submitEvent:?];
  }

  else
  {
    v3 = sub_1000118BC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100017DB8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

id sub_100001AEC(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136446466;
    v7 = "[DRAnalytics _queue_submitEvent:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: SUBMIT: Submitting CoreAnalytics event: %{public}@", &v6, 0x16u);
  }

  v4 = [*(a1 + 32) eventPayload];

  return v4;
}

void sub_100001DC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100001DE0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v15 = a1;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a4;
  v20 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a8, a9, a7, v16];
  v21 = sub_1000118BC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v26 = &stru_100035AE0;
    *buf = 136448002;
    v29 = "DRCreateErrorWithInfo";
    v30 = 2082;
    if (v17)
    {
      v26 = v17;
    }

    v31 = a8;
    v32 = 1024;
    v33 = a9;
    v34 = 2082;
    v35 = a7;
    v36 = 2114;
    v37 = v15;
    v38 = 2048;
    v39 = a2;
    v40 = 2114;
    v41 = v16;
    v42 = 2114;
    v43 = v26;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: Error [%{public}s:%d][%{public}s]: %{public}@ - %ld - %{public}@ %{public}@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v22 = [v18 mutableCopy];
  }

  else
  {
    v22 = [NSMutableDictionary dictionaryWithCapacity:3];
  }

  v23 = v22;
  [v22 setObject:v20 forKey:NSDebugDescriptionErrorKey];
  [v23 setObject:v19 forKey:@"StaticString"];

  if (v17)
  {
    [v23 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v24 = [NSError errorWithDomain:v15 code:a2 userInfo:v23];

  return v24;
}

BOOL sub_100002068()
{
  size = 0;
  if (sysctlbyname("hw.osenvironment", 0, &size, 0, 0) == -1)
  {
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100018254(v7);
    }
  }

  else
  {
    v0 = malloc_type_malloc(size, 0x5C398F0AuLL);
    if (v0)
    {
      v1 = v0;
      bzero(v0, size);
      v2 = sysctlbyname("hw.osenvironment", v1, &size, 0, 0);
      v3 = sub_1000118BC();
      v4 = v3;
      v5 = v2 == -1;
      v6 = v2 != -1;
      if (v5)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_100018114(v4);
        }
      }

      else
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "DREIsRunningInDeviceRecoveryEnvironment";
          v12 = 2082;
          v13 = v1;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Running in OS environment: %{public}s", buf, 0x16u);
        }

        if (strncmp(v1, "device-recovery", 0xFuLL))
        {
          v6 = 0;
LABEL_18:
          free(v1);
          return v6;
        }

        v4 = sub_1000118BC();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v11 = "DREIsRunningInDeviceRecoveryEnvironment";
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Running in DeviceRecoveryEnvironment\n", buf, 0xCu);
        }
      }

      goto LABEL_18;
    }

    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000181D0(v7);
    }
  }

  return 0;
}

BOOL sub_100002288()
{
  result = sub_100002068();
  if (result)
  {
    return ((sub_1000022B4() - 3) & 0xFFFFFFFD) == 0;
  }

  return result;
}

id sub_1000022B4()
{
  v0 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v1 = [v0 DREEntryReasonEnum];

  return v1;
}

id sub_1000022F4()
{
  v0 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v1 = [v0 DREEntryDescription];

  return v1;
}

id sub_100002348(uint64_t a1)
{
  v2 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v3 = [v2 DREStringFromEntryReason:a1];

  return v3;
}

id sub_1000023A4()
{
  v0 = sub_1000022B4();

  return sub_100002348(v0);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1000118BC();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136446722;
    *&v10[4] = "main";
    v11 = 2082;
    v12 = "Oct 11 2025";
    v13 = 2082;
    v14 = "01:51:07";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: Daemon devicerecoveryd started (built at %{public}s %{public}s)", v10, 0x20u);
  }

  v2 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v3 = objc_alloc_init(DeviceRecoveryService);
  if (!v3)
  {
    sub_100018614(v10);
LABEL_10:
    v6 = *v10;
    goto LABEL_13;
  }

  v4 = [DeviceRecoveryOverrideService alloc];
  v5 = [(DeviceRecoveryService *)v3 serviceQueue];
  v6 = [(DeviceRecoveryOverrideService *)v4 initWithQueue:v5];

  if (!v6)
  {
    sub_10001853C(v10);
    goto LABEL_10;
  }

  [(DeviceRecoveryService *)v3 setOverrideService:v6];
  v7 = [(DeviceRecoveryService *)v3 startService];
  if (v7)
  {
    sub_1000182FC(v7);
  }

  else
  {
    v8 = [(DeviceRecoveryOverrideService *)v6 startService];
    if (!v8)
    {
      dispatch_main();
    }

    sub_10001841C(v8);
  }

LABEL_13:

  objc_autoreleasePoolPop(v0);
  return 0xFFFFFFFFLL;
}

BOOL sub_1000025E8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100002B74(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136446466;
    v5 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%{public}@]", &v4, 0x16u);
  }
}

void sub_100002C30(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136446466;
    v5 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%{public}@]", &v4, 0x16u);
  }
}

void sub_1000033AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void sub_1000033D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void sub_1000033F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString alloc];
    v6 = [NSString stringWithUTF8String:a1];
    v7 = [v5 initWithFormat:v6 arguments:a2];
    v8 = 136446466;
    v9 = "dr_libpartition_logger";
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", &v8, 0x16u);
  }
}

void sub_1000034FC(uint64_t a1, int a2)
{
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "dr_libpartition_execution_logger";
    v7 = 1040;
    v8 = a2;
    v9 = 2082;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}.*s\n", &v5, 0x1Cu);
  }
}

uint64_t sub_1000035CC(uint64_t *a1, void (*a2)(_BYTE *, ssize_t, uint64_t), uint64_t a3)
{
  v18 = 0;
  *v20 = -1;
  if (pipe(v20))
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100018EF8(a1);
    }

    return 0xFFFFFFFFLL;
  }

  v17 = 0;
  posix_spawn_file_actions_init(&v17);
  posix_spawn_file_actions_adddup2(&v17, v20[1], 1);
  posix_spawn_file_actions_addclose(&v17, v20[0]);
  v8 = posix_spawn(&v18, *a1, &v17, 0, a1, 0);
  if (v8)
  {
    v7 = v8;
    v9 = sub_1000118BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100018F90(a1, v7);
    }

    close(v20[0]);
    goto LABEL_9;
  }

  v11 = v20[0];
  close(v20[1]);
  v20[1] = -1;
  v12 = read(v11, v19, 0x400uLL);
  if (v12 >= 1)
  {
    for (i = v12; i > 0; i = read(v11, v19, 0x400uLL))
    {
      if (a2)
      {
        a2(v19, i, a3);
      }
    }
  }

  v16 = 0;
  if (waitpid(v18, &v16, 0) == -1)
  {
    v7 = *__error();
    v14 = sub_1000118BC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100019144(a1);
    }

    goto LABEL_9;
  }

  if ((v16 & 0x7F) == 0x7F)
  {
    v15 = sub_1000118BC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100019024(a1, &v16);
    }
  }

  else
  {
    if ((v16 & 0x7F) == 0)
    {
      v7 = BYTE1(v16);
      goto LABEL_9;
    }

    v15 = sub_1000118BC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000190B4(a1, &v16);
    }
  }

  v7 = 0xFFFFFFFFLL;
LABEL_9:
  posix_spawn_file_actions_destroy(&v17);
  if (v20[1] != -1)
  {
    close(v20[1]);
  }

  return v7;
}

void sub_100003A8C(id a1, NSError *a2)
{
  v2 = [(NSError *)a2 localizedDescription];
  NSLog(@"OSASubmissionClient error: %@", v2);
}

void sub_100003AD8(uint64_t a1)
{
  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment])
  {
    v2 = [*(a1 + 32) mountSystemDataVolume];
    set_partition_logging_function(sub_1000033F0);
    set_partition_execution_function(sub_1000035CC);
    set_partition_execution_logging_function(sub_1000034FC);
    v3 = [@"/var/MobileSoftwareUpdate" UTF8String];
    if (mount_update_partition_if_exists(v3, v4, v5, v6, v7, v8, v9, v10))
    {
      v11 = sub_1000118BC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000194C0();
      }
    }

    else
    {
      [*(a1 + 32) setUpdateVolumeMountPath:@"/var/MobileSoftwareUpdate"];
    }

    v13 = [*(a1 + 32) systemDataVolumeMountPath];

    if (v13)
    {
      v14 = +[MCProfileConnection sharedConnection];
      v15 = [*(a1 + 32) systemDataVolumeMountPath];
      [*(a1 + 32) setUnlockScreenType:{objc_msgSend(v14, "unlockScreenTypeForSharedDataVolume:OutSimplePasscodeType:", v15, *(a1 + 32) + 52)}];

      v16 = sub_1000118BC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) unlockScreenType];
        v18 = [*(a1 + 32) simplePasscodeType];
        *buf = 136446722;
        v32 = "[DeviceRecoveryService init]_block_invoke";
        v33 = 1024;
        *v34 = v17;
        *&v34[4] = 1024;
        *&v34[6] = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: unlockScreenType = %d, simplePasscodeType = %d", buf, 0x18u);
      }
    }

    v29 = @"DeviceHandle";
    v30 = &off_100037A50;
    [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [*(a1 + 32) setIsPasscodeSet:MKBGetDeviceLockState() != 3];
    v19 = sub_1000118BC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) isPasscodeSet];
      v21 = "is not";
      if (v20)
      {
        v21 = "is";
      }

      *buf = 136446466;
      v32 = "[DeviceRecoveryService init]_block_invoke";
      v33 = 2080;
      *v34 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: passcode %s set", buf, 0x16u);
    }

    v22 = MSUCopyEnvInfoForNeRD();
    v23 = v22;
    if (v22)
    {
      v24 = [v22 objectForKeyedSubscript:@"BootedOSLanguage"];
      [*(a1 + 32) setMainOSLanguageCode:v24];
    }

    v25 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.enteredDeviceRecovery"];
    v26 = [NSNumber numberWithUnsignedInt:sub_1000022B4()];
    [(DRAnalyticsEvent *)v25 setEventPayloadEntry:@"EntryMethod" value:v26];

    v27 = sub_1000022F4();
    if (v27)
    {
      [(DRAnalyticsEvent *)v25 setEventPayloadEntry:@"EntryDescription" value:v27];
    }

    [*(*(a1 + 32) + 16) addEvent:v25];
  }

  else
  {
    v12 = +[MCProfileConnection sharedConnection];
    [*(a1 + 32) setUnlockScreenType:{objc_msgSend(v12, "unlockScreenType")}];

    v28 = +[MCProfileConnection sharedConnection];
    [v28 unlockScreenTypeWithOutSimplePasscodeType:*(a1 + 32) + 52];
  }
}

void sub_100003EF4(id a1)
{
  v1 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  [v1 CreateCookieAndCleanup];
}

void sub_1000045C8(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136446466;
    v7 = "[DeviceRecoveryService listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%{public}@]", &v6, 0x16u);
  }

  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v4 clientConnectionInterrupted:WeakRetained];
}

void sub_1000046A4(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 136446466;
    v9 = "[DeviceRecoveryService listener:shouldAcceptNewConnection:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%{public}@]", &v8, 0x16u);
  }

  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v4 clientConnectionInvalidated:WeakRetained];

  v6 = [*(a1 + 40) controlClientConnection];
  v7 = objc_loadWeakRetained((a1 + 48));

  if (v6 == v7)
  {
    [*(a1 + 40) setControlClientConnection:0];
  }
}

void sub_100004CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100004CF8(uint64_t a1)
{
  v2 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.PostRecovery"];
  [(DRAnalyticsEvent *)v2 setEventPayloadEntry:@"BootedPostRecovery" value:&__kCFBooleanTrue];
  [*(*(a1 + 32) + 16) addEvent:v2];
  [*(*(a1 + 32) + 16) submitAllEvents];
}

uint64_t sub_100004D88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained shouldDownloadBrain];

  if (!v3)
  {
    v13 = sub_1000118BC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Will use builtin recovery brain", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 recoveryBrainAsset];

  if (!v5)
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Will attempt to download external brain", buf, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [v7 downloadRecoveryBrain];

    if (!v8 || (v9 = objc_loadWeakRetained((a1 + 56)), [v9 recoveryBrainAsset], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v9, v11))
    {
      v12 = sub_1000118BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100019EE0();
      }
    }

    else
    {
      v12 = sub_1000118BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v31 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully grafted downloaded DeviceRecoveryBrain", buf, 0xCu);
      }
    }
  }

  v14 = objc_loadWeakRetained((a1 + 56));
  v15 = [v14 recoveryBrainAsset];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = sub_1000118BC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to personalize and graft downloaded DeviceRecoveryBrain", buf, 0xCu);
    }

    v18 = objc_loadWeakRetained((a1 + 56));
    v19 = [v18 personalizeAndGraftRecoveryBrain];

    v20 = sub_1000118BC();
    v13 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v31 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully grafted downloaded DeviceRecoveryBrain", buf, 0xCu);
      }

      v13 = objc_loadWeakRetained((a1 + 56));
      [v13 setDownloadedBrainIsAvailable:1];
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100019F60();
    }

LABEL_23:
  }

  v21 = objc_loadWeakRetained((a1 + 56));
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000051A4;
  v24[3] = &unk_100034C98;
  v23 = *(a1 + 40);
  v22 = v23;
  v26 = v23;
  objc_copyWeak(&v27, (a1 + 56));
  v28 = *(a1 + 64);
  v25 = *(a1 + 32);
  v29 = *(a1 + 65);
  [v21 configureBrain:v24];

  objc_destroyWeak(&v27);
}

void sub_1000051A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000054B8;
  v25[3] = &unk_100034BF8;
  v15 = *(a1 + 40);
  v4 = v15;
  v26 = v15;
  v5 = objc_retainBlock(v25);
  if (v3)
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100019FE0();
    }

    v7 = v3;
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = [WeakRetained brainConnection];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100005548;
  v23[3] = &unk_100034C20;
  v10 = v5;
  v24 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v23];

  if (v11)
  {
    if (*(a1 + 64) == 1)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:@"OSRecoveryState"];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000055BC;
      v18[3] = &unk_100034C70;
      v13 = &v21;
      v21 = v10;
      v22 = *(a1 + 65);
      v19 = v11;
      v20 = *(a1 + 32);
      [v19 recoverDeviceFromBootedOS:v12 userUnlocked:0 completion:v18];

      v14 = v19;
    }

    else
    {
      if (*(a1 + 65) != 1)
      {
LABEL_12:

LABEL_13:
        v7 = 0;
        goto LABEL_14;
      }

      v14 = [*(a1 + 32) objectForKeyedSubscript:@"OSRecoveryState"];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100005714;
      v16[3] = &unk_100034C48;
      v13 = &v17;
      v17 = v10;
      [v11 recoverDeviceFromBootedOS:v14 userUnlocked:1 completion:v16];
    }

    goto LABEL_12;
  }

  if (sub_10001A05C())
  {
    goto LABEL_13;
  }

  v7 = v27;
LABEL_5:
  (v5[2])(v5, v7);
LABEL_14:
}

void sub_1000054B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000118BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001A1A0();
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_100005548(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001A21C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000055BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001A298();
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }

  if (*(a1 + 56) != 1)
  {
    v8 = *(*(a1 + 48) + 16);
LABEL_8:
    v8();
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) objectForKeyedSubscript:@"OSRecoveryState"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005704;
  v11[3] = &unk_100034C48;
  v12 = *(a1 + 48);
  [v9 recoverDeviceFromBootedOS:v10 userUnlocked:1 completion:v11];

LABEL_9:
}

void sub_10000612C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006188(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DeviceRecoveryService connectToRecoveryBrain]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Brain connection interrupted", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained brainConnectionInterrupted];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBrainConnection:0];
}

void sub_100006260(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DeviceRecoveryService connectToRecoveryBrain]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Brain connection invalidated", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained brainConnectionInvalidated];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBrainConnection:0];
}

void sub_1000063D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001AB9C();
  }
}

void sub_100006D0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setTestModeEnabled:1];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) attributeDict];
  (*(v8 + 16))(v8, v7, v6, v9);
}

void sub_1000072F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) attributeDict];
    (*(v1 + 16))(v1, 0, 0, v2);
  }
}

void sub_10000736C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001AC18();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000073E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[DeviceRecoveryService resetRecovery:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: brain reset complete: %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100007938(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001B1DC();
  }

  v5 = [NSString stringWithFormat:@"Error talking to DeviceRecoveryBrain"];
  v6 = sub_100002034(@"DeviceRecoveryError", 1, v5, @"Error talking to DeviceRecoveryBrain", v3, "[DeviceRecoveryService configureBrain:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x4B1u);

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) attributeDict];
  (*(v7 + 16))(v7, v6, 0, v8);
}

void sub_100007A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[DeviceRecoveryService configureBrain:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: brain config completion: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) attributeDict];
  (*(v8 + 16))(v8, v5, v6, v9);
}

void sub_100008050(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10001B8C8(a1);
  }
}

void sub_100008484(uint64_t a1)
{
  [*(*(a1 + 32) + 24) submitDRETelemetryAndDiagnostics:1];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100009180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001C3E0();
    }

    v9 = *(a1 + 32);
    v10 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Authenticating user" withDescription:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[DeviceRecoveryService userAuthenticated:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: user auth complete / data volumes mounted", buf, 0xCu);
    }

    [*(a1 + 32) setUserAuthenticated:1];
    [*(a1 + 32) setDataVolumeMounted:1];
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v11 = [*(a1 + 32) serviceQueue];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100009390;
    v17 = &unk_100034AC0;
    v18 = *(a1 + 32);
    v19 = v5;
    dispatch_async(v11, &v14);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) attributeDict];
  (*(v12 + 16))(v12, v5, v6, v13);
}

void sub_100009390(uint64_t a1)
{
  v2 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.userAuthenticated"];
  v3 = [*(a1 + 32) userAuthenticated];
  v4 = &off_100034A58;
  v5 = @"Status";
  if ((v3 & 1) == 0)
  {
    [(DRAnalyticsEvent *)v2 setEventPayloadEntry:@"Status" value:&__kCFBooleanFalse];
    v5 = @"Error";
    v4 = (a1 + 40);
  }

  [(DRAnalyticsEvent *)v2 setEventPayloadEntry:v5 value:*v4];
  v6 = sub_1000118BC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) userApprovedDiagnosticsSubmission];
    v8 = @"has not";
    if (v7)
    {
      v8 = @"has";
    }

    *buf = 136446466;
    v17 = "[DeviceRecoveryService userAuthenticated:completion:]_block_invoke";
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: User %{public}@ opted in to sharing diagnostics", buf, 0x16u);
  }

  if ([*(a1 + 32) userApprovedDiagnosticsSubmission])
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    [v9 setDREOptIn:1];
  }

  v10 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.dataVolumeMounted"];
  if ([*(a1 + 32) dataVolumeMounted])
  {
    v11 = [*(a1 + 32) osaQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009610;
    block[3] = &unk_100034AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);

    v12 = &__kCFBooleanTrue;
    v13 = v10;
    v14 = @"Status";
  }

  else
  {
    [(DRAnalyticsEvent *)v10 setEventPayloadEntry:@"Status" value:&__kCFBooleanFalse];
    v14 = @"Error";
    v12 = *(a1 + 40);
    v13 = v10;
  }

  [(DRAnalyticsEvent *)v13 setEventPayloadEntry:v14 value:v12];
  [*(*(a1 + 32) + 16) addEvent:v2];
  [*(*(a1 + 32) + 16) addEvent:v10];
}

uint64_t sub_10000961C(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryService userAuthenticated:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated user auth processing complete", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100009AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001C984();
    }

    v9 = *(a1 + 32);
    v10 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Checking network availability" withDescription:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[DeviceRecoveryService reportNetworkAvailability:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: network available", buf, 0xCu);
    }

    [*(a1 + 32) setNetworkAvailable:1];
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v11 = [*(a1 + 32) serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009C94;
    block[3] = &unk_100034AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) attributeDict];
  (*(v12 + 16))(v12, v5, v6, v13);
}

void sub_100009C94(uint64_t a1)
{
  [*(*(a1 + 32) + 16) submitAllEvents];
  v2 = [*(a1 + 32) osaQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D30;
  block[3] = &unk_100034AE8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t sub_100009D40(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryService reportNetworkAvailability:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated network availability report complete", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10000A2FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001D144();
    }

    v9 = *(a1 + 32);
    v10 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Loading DeviceRecovery brain" withDescription:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446210;
      v21 = "[DeviceRecoveryService loadRecoveryBrain:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: recovery brain loaded", &v20, 0xCu);
    }

    [*(a1 + 32) setRecoveryBrainLoaded:1];
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v11 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.brainLoad"];
    if ([*(a1 + 32) recoveryBrainLoaded])
    {
      [(DRAnalyticsEvent *)v11 setEventPayloadEntry:@"Status" value:&__kCFBooleanTrue];
      if ([*(a1 + 32) downloadedBrainIsAvailable])
      {
        v12 = [*(a1 + 32) recoveryBrainAsset];
        v13 = [v12 attributes];
        v14 = [v13 objectForKeyedSubscript:@"Build"];

        [(DRAnalyticsEvent *)v11 setEventPayloadEntry:@"BrainInfo" value:v14];
        [(DRAnalyticsEvent *)v11 setEventPayloadEntry:@"BrainType" value:&off_100037A38];

LABEL_16:
        [*(*(a1 + 32) + 16) addEvent:v11];

        goto LABEL_17;
      }

      [(DRAnalyticsEvent *)v11 setEventPayloadEntry:@"BrainInfo" value:@"BuiltInBrain"];
      v15 = @"BrainType";
      v17 = &off_100037A20;
      v16 = v11;
    }

    else
    {
      [(DRAnalyticsEvent *)v11 setEventPayloadEntry:@"Status" value:&__kCFBooleanFalse];
      [(DRAnalyticsEvent *)v11 setEventPayloadEntry:@"BrainType" value:&off_100037A08];
      v15 = @"Error";
      v16 = v11;
      v17 = v5;
    }

    [(DRAnalyticsEvent *)v16 setEventPayloadEntry:v15 value:v17];
    goto LABEL_16;
  }

LABEL_17:
  v18 = *(a1 + 40);
  v19 = [*(a1 + 32) attributeDict];
  (*(v18 + 16))(v18, v5, v6, v19);
}

void sub_10000ABB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001DD00();
    }

    v9 = *(a1 + 32);
    v8 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Scanning for repairable issues" withDescription:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v36 = "[DeviceRecoveryService scanForIssues:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: issue scan complete", buf, 0xCu);
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v10 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.issueScan"];
    v11 = [*(a1 + 32) issuesScanComplete];
    v12 = @"Status";
    if (v11)
    {
      v13 = &__kCFBooleanTrue;
      v14 = v10;
    }

    else
    {
      [(DRAnalyticsEvent *)v10 setEventPayloadEntry:@"Status" value:&__kCFBooleanFalse];
      v12 = @"Error";
      v14 = v10;
      v13 = v5;
    }

    [(DRAnalyticsEvent *)v14 setEventPayloadEntry:v12 value:v13];
    v15 = [*(a1 + 32) repairableIssuesFound];
    if (v6 && v15)
    {
      v16 = objc_opt_new();
      v17 = [v6 objectForKeyedSubscript:@"RepairableIssues"];
      v18 = v17;
      if (v17)
      {
        v28 = v10;
        v29 = v5;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v30 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = [v23 objectForKeyedSubscript:@"RepairableIssueDescription"];
                v25 = v24;
                if (v24)
                {
                  [v16 appendFormat:@" | %@", v24];
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v20);
        }

        if ([v16 length] >= 4)
        {
          [v16 deleteCharactersInRange:{objc_msgSend(v16, "length") - 3, 3}];
        }

        v10 = v28;
        [(DRAnalyticsEvent *)v28 setEventPayloadEntry:@"RepairableIssuesFound" value:v16];
        v5 = v29;
      }

      else
      {
        [(DRAnalyticsEvent *)v10 setEventPayloadEntry:@"RepairableIssuesFound" value:@"No issues found"];
      }

      [*(*(a1 + 32) + 16) addEvent:v10];
    }
  }

  v26 = *(a1 + 40);
  v27 = [*(a1 + 32) attributeDict];
  (*(v26 + 16))(v26, v5, v6, v27);
}

void sub_10000AF58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001DD7C();
  }

  v5 = [NSString stringWithFormat:@"Error talking to the DeviceRecoveryBrain"];
  v6 = sub_100002034(@"DeviceRecoveryError", 1, v5, @"Error talking to the DeviceRecoveryBrain", v3, "[DeviceRecoveryService scanForIssues:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x7D5u);

  (*(*(a1 + 32) + 16))();
}

void sub_10000B040(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000118BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001DDF8();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000B148;
    v8[3] = &unk_100034E70;
    v11 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    [v5 checkFreeSpace:v8];
  }
}

void sub_10000B148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = sub_1000118BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001DE74();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B25C;
    v10[3] = &unk_100034E48;
    v9 = *(a1 + 32);
    v10[4] = *(a1 + 40);
    v11 = v6;
    v12 = *(a1 + 48);
    [v9 scanForIssues:v10];
  }
}

void sub_10000B25C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001DEF0();
    }

    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) mergeResults:a3 withResults:*(a1 + 40)];
    [*(a1 + 32) setIssuesScanComplete:1];
    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:@"RepairableIssues"];
      v9 = [v8 count];

      if (v9)
      {
        [*(a1 + 32) setRepairableIssuesFound:1];
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000BA28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001ECA4();
    }

    v9 = *(a1 + 32);
    v8 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Recovering device" withDescription:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446210;
    v18 = "[DeviceRecoveryService recoverDevice:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: device recovery complete", &v17, 0xCu);
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v10 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.recoverDevice"];
    v11 = [*(a1 + 32) recoveryComplete];
    v12 = @"Status";
    if (v11)
    {
      v13 = &__kCFBooleanTrue;
      v14 = v10;
    }

    else
    {
      [(DRAnalyticsEvent *)v10 setEventPayloadEntry:@"Status" value:&__kCFBooleanFalse];
      v12 = @"Error";
      v14 = v10;
      v13 = v5;
    }

    [(DRAnalyticsEvent *)v14 setEventPayloadEntry:v12 value:v13];
    [*(*(a1 + 32) + 16) addEvent:v10];
  }

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) attributeDict];
  (*(v15 + 16))(v15, v5, v6, v16);
}

void sub_10000BC2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001ED20();
  }

  v5 = [NSString stringWithFormat:@"Error talking to the DeviceRecoveryBrain"];
  v6 = sub_100002034(@"DeviceRecoveryError", 1, v5, @"Error talking to the DeviceRecoveryBrain", v3, "[DeviceRecoveryService recoverDevice:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x87Cu);

  (*(*(a1 + 32) + 16))();
}

void sub_10000BD14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000118BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001EDA4();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000BE1C;
    v8[3] = &unk_100034E70;
    v11 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    [v5 reclaimFreeSpace:v8];
  }
}

void sub_10000BE1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001EE20();
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000BF20;
    v10[3] = &unk_100034DD0;
    v8 = a1[4];
    v9 = a1[6];
    v10[4] = a1[5];
    v11 = v9;
    [v8 recoverDevice:v10];
  }
}

void sub_10000BF20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001EE9C();
    }
  }

  else
  {
    [*(a1 + 32) setRecoveryComplete:1];
    v8 = [*(a1 + 32) processRecoveryResults:v6];

    v6 = v8;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000C06C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, 0);
  }

  return result;
}

void sub_10000D7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id obj, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_10000D8B4(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000D930(id a1, MAProgressNotification *a2)
{
  v2 = a2;
  v3 = 0.0;
  if ([(MAProgressNotification *)v2 totalWritten]>= 1 && [(MAProgressNotification *)v2 totalExpected]>= 1)
  {
    v4 = [(MAProgressNotification *)v2 totalWritten];
    v3 = (v4 / [(MAProgressNotification *)v2 totalExpected]);
  }

  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ([(MAProgressNotification *)v2 isStalled])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = [(MAProgressNotification *)v2 taskDescription];
    v8 = 136446978;
    v9 = "[DeviceRecoveryService downloadRecoveryBrain]_block_invoke";
    v10 = 2048;
    v11 = v3;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Progress: %f stalled: %{public}@ taskID: %{public}@", &v8, 0x2Au);
  }
}

void sub_10000DA88(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000E374(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 32;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000E3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString alloc];
  v5 = [v3 date];
  v6 = [v3 process];
  v7 = [v3 logType];
  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = @"Default";
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v8 = @"Info";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v8 = @"Debug";
        goto LABEL_13;
      case 16:
        v8 = @"Error";
        goto LABEL_13;
      case 17:
        v8 = @"Fault";
        goto LABEL_13;
    }
  }

  v8 = @"Unexpected";
LABEL_13:
  v9 = [v3 composedMessage];

  v10 = [v4 initWithFormat:@"%@ (%@) [%@]: %@", v5, v6, v8, v9];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v10];
}

void sub_10000E550(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 != 5)
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001F440();
    }
  }

  v7 = sub_1000022F4();
  v26[0] = *(*(a1[7] + 8) + 40);
  v25[0] = @"LogLines";
  v25[1] = @"EntryReason";
  v8 = [NSNumber numberWithUnsignedInt:sub_1000022B4()];
  v9 = v8;
  v10 = @"null description";
  if (v7)
  {
    v10 = v7;
  }

  v26[1] = v8;
  v26[2] = v10;
  v25[2] = @"EntryDescription";
  v25[3] = @"FailedOperation";
  v11 = @"null operation";
  v12 = a1[5];
  if (a1[4])
  {
    v11 = a1[4];
  }

  v25[4] = @"FailureDescription";
  v13 = @"null failure description";
  if (v12)
  {
    v13 = v12;
  }

  v26[3] = v11;
  v26[4] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];

  v24 = 0;
  v15 = [NSJSONSerialization dataWithJSONObject:v14 options:1 error:&v24];
  v16 = v24;
  if (v15)
  {
    v17 = *(a1[8] + 8);
    obj = *(v17 + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000E81C;
    v21[3] = &unk_100034F78;
    v22 = v15;
    v18 = [OSALog createForSubmission:@"244" metadata:0 options:0 error:&obj writing:v21];
    objc_storeStrong((v17 + 40), obj);
    if (!v18)
    {
      v19 = sub_1000118BC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10001F4C4();
      }
    }

    v20 = v22;
  }

  else
  {
    v20 = sub_1000118BC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10001F550();
    }
  }

  dispatch_group_leave(*(a1[6] + 72));
}

void sub_10000EB70(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

uint64_t sub_10000EC08(uint64_t result)
{
  *v1 = result;
  v3 = *(v2 - 40);
  return result;
}

void sub_10000EC74(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

BOOL sub_10000ECA0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000ECB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v4;
  *(a3 + 12) = 2114;
  *(a3 + 14) = result;
  *(a3 + 22) = 2114;
  *(a3 + 24) = v3;
  return result;
}

BOOL sub_10000ED34(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_10000ED4C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id sub_10000EDB8()
{
  v0 = __chkstk_darwin();
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v4 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", v0];
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"%@ (pid %d)", v3, v0];
  }

  return v4;
}

__CFString *sub_10000EED4(uint64_t a1)
{
  if (a1 > 20)
  {
    switch(a1)
    {
      case 0x15:
        v2 = @"DEFAULT";

        break;
      case 0x21:
        v2 = @"USER_INTERACTIVE";

        break;
      case 0x19:
        v2 = @"USER_INITIATED";

        break;
      default:
LABEL_20:
        v2 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        v2 = @"UTILITY";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"BACKGROUND";
  }

  else
  {
    v2 = @"UNSPECIFIED";
  }

  return v2;
}

uint64_t sub_10000F1E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000F1FC(uint64_t a1)
{
  v2 = [NSDictionary dictionaryWithDictionary:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

__CFString *sub_10000F87C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"BrainType"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 unsignedCharValue];
      v6 = @"None";
      if (v5 == 2)
      {
        v6 = @"Production";
      }

      v7 = @"Builtin";
      goto LABEL_6;
    }

    sub_10001FFB0();
LABEL_54:
    v8 = @"<unknown>";
    goto LABEL_16;
  }

  if (([v3 isEqualToString:@"BrainBundlePath"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UserDataPath") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SystemDataPath") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"UpdateVolumePath"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10001FEF0();
      goto LABEL_54;
    }

    v9 = v4;
LABEL_15:
    v8 = v9;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"UserAuthResult"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10001FE30();
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"NetworkAvailableResult"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10001FD70();
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"BrainLoadResult"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10001FCB0();
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if (![v3 isEqualToString:@"IssuesScanResult"])
  {
    if (![v3 isEqualToString:@"RecoveryResult"])
    {
      if ([v3 isEqualToString:@"FreeSpaceThreshold"])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001FA70();
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"Free space Threshold: %@", v4];
      }

      else if ([v3 isEqualToString:@"SystemDataPath"])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001F9B0();
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"System Data Path: %@", v4];
      }

      else if ([v3 isEqualToString:@"UserDataPath"])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001F8F0();
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"User Data Path: %@", v4];
      }

      else
      {
        if (![v3 isEqualToString:@"UpdateVolumePath"])
        {
          v12 = sub_1000118BC();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10001F7A4(v3, v12);
          }

          goto LABEL_54;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001F830();
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"Update Volume Path: %@", v4];
      }
      v9 = ;
      goto LABEL_15;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10001FB30();
      goto LABEL_54;
    }

LABEL_27:
    v5 = [v4 unsignedCharValue];
    v6 = @"None";
    v7 = @"Force Failure";
LABEL_6:
    if (v5 == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10001FBF0();
    goto LABEL_54;
  }

  v11 = [v4 unsignedCharValue] - 1;
  if (v11 >= 3)
  {
    v8 = @"None";
  }

  else
  {
    v8 = *(&off_100035108 + v11);
  }

LABEL_16:

  return v8;
}

id sub_10000FC9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"BrainType"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 3)
      {
LABEL_4:
        v5 = 0;
        goto LABEL_12;
      }

      sub_1000210B8();
    }

    else
    {
      sub_100020F90();
    }

    goto LABEL_43;
  }

  if (([v3 isEqualToString:@"BrainBundlePath"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UserDataPath") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SystemDataPath") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"UpdateVolumePath"))
  {
    v6 = [NSString stringWithFormat:@"%@ is not a NSString(%s)", v3, object_getClassName(v4)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 0;
    }

    else
    {
      sub_100020E70();
      v5 = v9;
    }

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"UserAuthResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      sub_100020D4C();
    }

    else
    {
      sub_100020C24();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"NetworkAvailableResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      sub_100020B00();
    }

    else
    {
      sub_1000209D8();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"BrainLoadResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      sub_1000208B4();
    }

    else
    {
      sub_10002078C();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"IssuesScanResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 4)
      {
        goto LABEL_4;
      }

      sub_10002063C();
    }

    else
    {
      sub_100020514();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"RecoveryResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 5)
      {
        goto LABEL_4;
      }

      sub_1000203E8();
    }

    else
    {
      sub_1000202C0();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"FreeSpaceThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    sub_100020198();
    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"AlwaysShowWiFiPicker"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    sub_100020070();
LABEL_43:
    v5 = v9;
    goto LABEL_12;
  }

  v8 = [NSString stringWithFormat:@"Unknown override name: %@", v3];
  v5 = sub_100002034(@"DeviceRecoveryError", 13, v8, @"Unknown override name: %@", 0, "DRValidateOverride", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryOverrides.m", 0xE1u);

LABEL_12:

  return v5;
}

id sub_1000100D0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 2)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100010124(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 1)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100010178(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 3)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000101CC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 4)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100010264(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void sub_100010284(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

id sub_1000102E0(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, a1);
  if (v6)
  {
    v7 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, v5, kCFAllocatorDefault, 0);
    IOObjectRelease(v7);
    v9 = sub_1000118BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v16 = "DRECopyIORegEntryWithError";
      v17 = 2082;
      v18 = a1;
      v19 = 2114;
      v20 = CFProperty;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: ioreg property: '%{public}s' = %{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  else
  {
    v12 = sub_1000118BC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000211DC();
    }

    v13 = [NSString stringWithFormat:@"unable to fetch io-reg entry for %s", a1];
    v10 = sub_100002034(@"DeviceRecoveryError", 16, v13, @"unable to fetch io-reg entry for %s", 0, "DRECopyIORegEntryWithError", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryHelpers.m", 0x16u);

    CFProperty = 0;
    if (a3 && v10)
    {
      v14 = v10;
      CFProperty = 0;
      *a3 = v10;
    }
  }

  return CFProperty;
}

id sub_1000104D0(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, a1);
  if (!v6)
  {
    sub_1000213C4(a1, &v14);
    CFProperty = 0;
LABEL_16:
    v9 = v14;
    goto LABEL_8;
  }

  v7 = v6;
  CFProperty = IORegistryEntryCreateCFProperty(v6, v5, kCFAllocatorDefault, 0);
  IOObjectRelease(v7);
  if (!CFProperty)
  {
    sub_100021290(v5, &v14);
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFProperty = CFProperty;
    v9 = 0;
    v10 = CFProperty;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[NSString alloc] initWithData:CFProperty encoding:4];
    v9 = 0;
    goto LABEL_11;
  }

  v11 = [NSString stringWithFormat:@"unable to coerce io-reg property to a string"];
  v9 = sub_100002034(@"DeviceRecoveryError", 16, v11, @"unable to coerce io-reg property to a string", 0, "DRECopyIORegAsStringWithError", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryHelpers.m", 0x3Du);

LABEL_8:
  v10 = 0;
  if (a3 && v9)
  {
    v12 = v9;
    v10 = 0;
    *a3 = v9;
  }

LABEL_11:

  return v10;
}

void sub_100010690(void *a1)
{
  property = a1;
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v1)
  {
    v2 = v1;
    IORegistryEntrySetCFProperty(v1, @"IONVRAM-DELETE-PROPERTY", property);
    IOObjectRelease(v2);
  }
}

uint64_t sub_100010708(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100010818();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "DRESetNVRAMProperty";
      v12 = 2114;
      v13 = v3;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting NVRAM var: %{public}@ = %{public}@", &v10, 0x20u);
    }

    v8 = IORegistryEntrySetCFProperty(v6, v3, v4);
  }

  else
  {
    v8 = 3758097097;
  }

  return v8;
}

uint64_t sub_100010818()
{
  result = atomic_load(dword_10003A2C8);
  if (!result)
  {
    result = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (result)
    {
      v1 = 0;
      atomic_compare_exchange_strong(dword_10003A2C8, &v1, result);
      if (v1)
      {
        IOObjectRelease(result);
        return v1;
      }
    }
  }

  return result;
}

id sub_10001087C(void *a1)
{
  v1 = a1;
  v2 = sub_100010818();
  v3 = sub_1000118BC();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "DREGetNVRAMVar";
      v9 = 2114;
      v10 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting NVRAM var: %{public}@", &v7, 0x16u);
    }

    v5 = IORegistryEntryCreateCFProperty(v2, v1, 0, 0);
  }

  else
  {
    sub_1000214F8(v3);
    v5 = 0;
  }

  return v5;
}

void sub_1000109F0(id a1)
{
  qword_10003A2D0 = objc_alloc_init(DeviceRecoveryEnvironmentWorker);

  _objc_release_x1();
}

id sub_100010B78(uint64_t a1)
{
  [*(a1 + 32) populateDREReason];
  v2 = *(a1 + 32);

  return [v2 setupPopulateDREDescription];
}

void sub_100011048(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/run/com.apple.DumpPanic.finishedThisBoot"];

  v4 = *(a1 + 32);
  if ((v3 & 1) != 0 || (v5 = *(v4 + 8), v5 >= 15))
  {
    dispatch_source_cancel(*(v4 + 24));
    v6 = *(a1 + 32);
    v7 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
    [v6 populateDREDescription:v7];

    v4 = *(a1 + 32);
    LOBYTE(v5) = *(v4 + 8);
  }

  *(v4 + 8) = v5 + 1;
}

uint64_t sub_100011564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011678(uint64_t a1)
{
  v2 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");
  if (v2)
  {
    v6[0] = @"entryReason";
    v3 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
    v6[1] = @"entryDescription";
    v7[0] = v3;
    v7[1] = *(*(a1 + 32) + 32);
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

    if ([v4 writeToFile:@"/var/db/com.apple.DeviceRecovery.entryInfo" atomically:1])
    {
      sub_100010690(@"device-recovery-boot-reason");
    }
  }

  if (*(*(a1 + 32) + 12) == 3)
  {
    v5 = sub_100010688("IODeviceTree:/options", @"boot-command");
    if ([v5 isEqualToString:@"device-recovery"])
    {
      sub_100010690(@"boot-command");
    }
  }
}

id sub_1000118BC()
{
  if (qword_10003A2E0 != -1)
  {
    sub_10002204C();
  }

  v1 = off_10003A288;

  return v1;
}

void sub_100011900(id a1)
{
  v1 = sub_1000023CC();
  off_10003A288 = os_log_create("com.apple.DeviceRecovery", v1);

  _objc_release_x1();
}

id sub_100011944()
{
  if (qword_10003A2E8 != -1)
  {
    sub_100022060();
  }

  v1 = off_10003A290;

  return v1;
}

void sub_100011988(id a1)
{
  v1 = sub_1000023CC();
  off_10003A290 = os_log_create("com.apple.DeviceRecovery.signposts", v1);

  _objc_release_x1();
}

void sub_100011B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011BB0(id a1)
{
  v1 = sub_1000118BC();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection interrupted", &v2, 0xCu);
  }
}

void sub_100011C58(uint64_t a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection invalidated", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceConnection:0];
}

void sub_100011EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011EC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011EDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100022404();
  }
}

void sub_1000121B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000121E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000228A8();
  }
}

void sub_100012A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012A4C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100022A84();
  }
}

void sub_100012B48(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100022C78();
  }
}

void sub_100012BC0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void sub_100012BE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

BOOL sub_100012BFC@<W0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100012C38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (off_10003A2F0)
  {
    return off_10003A2F0(result, &a9);
  }

  return result;
}

uint64_t create_update_partition_folder_hierarchy(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100012C38("%s: Creating folder hierarchy for update partition", a2, a3, a4, a5, a6, a7, a8, "create_update_partition_folder_hierarchy");
    for (i = 0; i != 9; i += 3)
    {
      *__str = *&(&UPDATE_DIR_LIST)[i];
      v52 = (&UPDATE_DIR_LIST)[i + 2];
      sub_100012E44(__str, a1);
    }

    sub_100012C38("Creating hardware folder hierarchy\n", v10, v11, v12, v13, v14, v15, v16, v46);
    bzero(__str, 0x400uLL);
    sub_100012C38("Creating root folder", v17, v18, v19, v20, v21, v22, v23, v47);
    v49 = HARDWARE_DIR_LIST;
    v50 = off_10003A2A8[0];
    if (sub_100012E44(&v49, a1))
    {
      sub_100012C38("Successfully created root Hardware folder. Proceeding to create the rest of the folder hierarchy", v24, v25, v26, v27, v28, v29, v30, v48);
      snprintf(__str, 0x3FFuLL, "%s/%s", a1, HARDWARE_DIR_LIST);
      v49 = *&off_10003A2B0;
      v50 = off_10003A2C0;
      if (sub_100012E44(&v49, __str))
      {
        sub_100012C38("Successfully created %s under %s with permissions 0%o for user %s", v31, v32, v33, v34, v35, v36, v37, off_10003A2B0);
      }

      else
      {
        sub_100012C38("Failed to create %s under %s with permissions 0%o for user %s", v31, v32, v33, v34, v35, v36, v37, off_10003A2B0);
      }
    }

    else
    {
      sub_100012C38("Failed to create root hardware folder %s under %s", v24, v25, v26, v27, v28, v29, v30, HARDWARE_DIR_LIST);
    }

    sub_100012C38("%s: Done creating folder hierarchy for update partition", v38, v39, v40, v41, v42, v43, v44, "create_update_partition_folder_hierarchy");
    return 0;
  }

  else
  {
    sub_100012C38("%s: Invalid mount point passed", a2, a3, a4, a5, a6, a7, a8, "create_update_partition_folder_hierarchy");
    return 1;
  }
}

uint64_t sub_100012E44(uint64_t *a1, const char *a2)
{
  v55 = 0;
  asprintf(&v55, "%s/%s", a2, *a1);
  if (v55)
  {
    if (mkdir(v55, *(a1 + 4)) && *__error() != 17)
    {
      v20 = v55;
      v50 = *__error();
      sub_100012C38("failed to mkdir %s with errno=%d", v21, v22, v23, v24, v25, v26, v27, v20);
    }

    else
    {
      if (chmod(v55, *(a1 + 4)))
      {
        v11 = v55;
        v48 = *(a1 + 4);
        v52 = *__error();
        sub_100012C38("Failed to chmod %s 0%o with errno=%d", v12, v13, v14, v15, v16, v17, v18, v11);
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
        sub_100012C38("failed to chown %s %d:%d with errno=%d", v32, v33, v34, v35, v36, v37, v38, v30);
      }

      else
      {
        v39 = a1[2];
        v51 = *__error();
        sub_100012C38("failed to getpwnam for %s with errno=%d", v40, v41, v42, v43, v44, v45, v46, v39);
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

  v49 = *a1;
  sub_100012C38("failed to allocate path string for %s/%s", v4, v5, v6, v7, v8, v9, v10, a2);
  return 0;
}

uint64_t init_update_partition_with_reserve_and_reformat(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = a1;
  if (a3)
  {
    a1 = sub_100013288(a2);
  }

  if (!partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v18 = "media probe failed probe the media";
    goto LABEL_35;
  }

  if (byte_10003A328)
  {
    if (!v8)
    {
      sub_100012C38("not deleting existing update filesystem", v11, v12, v13, v14, v15, v16, v17, v82);
      goto LABEL_14;
    }

    if (delete_apfs_partition(5u, 0, v12, v13, v14, v15, v16, v17))
    {
      v18 = "failed to delete update filesystem";
LABEL_35:
      sub_100012C38(v18, v11, v12, v13, v14, v15, v16, v17, v82);
      return 1;
    }

    sub_100012C38("delete update filesystem succeeded", v11, v12, v13, v14, v15, v16, v17, v82);
  }

  v19 = format_partition(&byte_10003A308, "Update", 0, 0, 0);
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
    sub_100012C38("statfs-ing %s failed - creating new mount point", v20, v21, v22, v23, v24, v25, v26, a2);
    mkdir(a2, 0x1C0u);
  }

  v27 = realpath_DARWIN_EXTSN(a2, 0);
  if (!v27)
  {
    v67 = __error();
    strerror(*v67);
    sub_100012C38("Could not realpath(3) path %s: %s", v68, v69, v70, v71, v72, v73, v74, a2);
    return 1;
  }

  v28 = v27;
  v29 = strcmp(v86.f_mntonname, v27);
  free(v28);
  if (v29 && sub_10001415C(&byte_10003A328, a2))
  {
    v18 = "mounting update partition filesystem failed";
    goto LABEL_35;
  }

  if (create_update_partition_folder_hierarchy(a2, v11, v12, v13, v14, v15, v16, v17))
  {
    sub_100012C38("Failed to create folder hierarchy on update volume", v30, v31, v32, v33, v34, v35, v36, v82);
  }

  bzero(v85, 0x400uLL);
  __strlcat_chk();
  __strlcat_chk();
  if (v10)
  {
    sub_100012C38("creating %lld MB reserve file at %s", v37, v38, v39, v40, v41, v42, v43, v10 >> 20);
    result = sub_100014250(v10, v85);
    if (result == 28)
    {
      v84 = 3;
      if (fsctl(a2, 0x80044101uLL, &v84, 0))
      {
        v52 = __error();
        strerror(*v52);
        sub_100012C38("first preallocation attempt failed, and full sync of volume %s failed: %s", v53, v54, v55, v56, v57, v58, v59, a2);
      }

      else
      {
        sub_100012C38("first preallocation attempt failed, but full sync of volume %s was successful", v45, v46, v47, v48, v49, v50, v51, a2);
      }

      sub_100012C38("re-trying reserve file creation", v60, v61, v62, v63, v64, v65, v66, v83);
      result = sub_100014250(v10, v85);
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
      sub_100012C38("existing reserved file deleted", v75, v76, v77, v78, v79, v80, v81, v82);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100013288(const char *a1)
{
  bzero(&v50, 0x878uLL);
  if (statfs(a1, &v50))
  {
    v2 = __error();
    strerror(*v2);
    sub_100012C38("statfs %s failed: %s", v3, v4, v5, v6, v7, v8, v9, a1);
    return 1;
  }

  v11 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v11)
  {
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    sub_100012C38("realpath %s failed: %d %s", v14, v15, v16, v17, v18, v19, v20, a1);
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
      if (!off_10003A300)
      {
        v10 = 0xFFFFFFFFLL;
LABEL_18:
        v38 = *__error();
        v39 = __error();
        strerror(*v39);
        sub_100012C38("error unmounting '%s': %d %s", v40, v41, v42, v43, v44, v45, v46, a1);
        v47 = off_1000354A8;
        if (off_10003A300)
        {
          (off_10003A300)(&v47, sub_100017818, 0);
        }

        goto LABEL_14;
      }

      v36 = (off_10003A300)(&v47, sub_100017818, 0);
      if (v36)
      {
        v10 = v36;
        goto LABEL_18;
      }
    }

    sub_100012C38("file system at %s successfully unmounted", v29, v30, v31, v32, v33, v34, v35, a1);
    goto LABEL_13;
  }

  sub_100012C38("no file system mounted at %s", v21, v22, v23, v24, v25, v26, v27, a1);
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
  p_info = &OBJC_METACLASS___DRAnalyticsEvent.info;
  v11 = &OBJC_METACLASS___DRAnalyticsEvent.info;
  do
  {
    iterator = 0;
    cf = 0;
    byte_10003A468 = 0;
    *(p_info + 776) = 0;
    *(v11 + 936) = 0;
    byte_10003A3E8 = 0;
    byte_10003A408 = 0;
    byte_10003A3C8 = 0;
    byte_10003A328 = 0;
    byte_10003A428 = 0;
    byte_10003A348 = 0;
    byte_10003A448 = 0;
    byte_10003A388 = 0;
    byte_10003A368 = 0;
    byte_10003A488 = 0;
    if (!sub_10001523C(&byte_10003A468, a2, a3, a4, a5, a6, a7, a8))
    {
      sub_100012C38("Unable to find storage device node for service named: %s", v12, v13, v14, v15, v16, v17, v18, "EmbeddedDeviceTypeRoot");
      v37 = 0;
      v28 = 0;
      goto LABEL_7;
    }

    sub_100012C38("entering %s.", v12, v13, v14, v15, v16, v17, v18, "_partition_probe_media_should_retry");
    v19 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_10003A46D);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v19);
    v28 = MatchingService;
    if (!MatchingService)
    {
      sub_100012C38("unable to find service for %s", v21, v22, v23, v24, v25, v26, v27, byte_10003A46D);
      v38 = 0;
LABEL_9:
      v37 = 1;
      goto LABEL_100;
    }

    IOServiceWaitQuiet(MatchingService, 0);
    v29 = IORegistryEntryCreateIterator(v28, "IOService", 1u, &iterator);
    if (v29)
    {
      sub_100012C38("unable to create child iterator: 0c%.8x", v30, v31, v32, v33, v34, v35, v36, v29);
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
      sub_100012C38("unable to get properies for media registry entry: 0x%.8x", v41, v42, v43, v44, v45, v46, v47, CFProperties);
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
        v11 = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
        if (CFEqual(v58, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
        {
          v91 = &byte_10003A448;
          if (!strstr(name, "RecoveryOSContainer"))
          {
            if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
            {
              v91 = &byte_10003A308;
            }

            else
            {
              v91 = &byte_10003A488;
            }
          }

          snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
          sub_100012C38("APFS Container '%s' %s\n", v92, v93, v94, v95, v96, v97, v98, name);
          goto LABEL_88;
        }

        v99 = CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC");
        v91 = v118;
        if (v99 == 1)
        {
          if (v118 && *v118)
          {
            sub_100012C38("Found synthesized APFS container. Using %s instead of %s\n", v100, v101, v102, v103, v104, v105, v106, buffer);
            snprintf(v118, 0x20uLL, "%s%s", "/dev/", buffer);
            goto LABEL_90;
          }

          sub_100012C38("found synthesized container without original device node\n", v100, v101, v102, v103, v104, v105, v106, v117);
        }

        if (v118)
        {
LABEL_88:
          v118 = v91;
          if (!*v91)
          {
            snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
            sub_100012C38("APFS Container '%s' %s\n", v108, v109, v110, v111, v112, v113, v114, name);
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
      v61 = &byte_10003A3A8;
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
          v61 = &byte_10003A3C8;
        }

        else if (*name == 1633972309 && *&name[3] == 6648929)
        {
          v61 = &byte_10003A328;
        }

        else
        {
          if (byte_10003A3A8)
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
            sub_100012C38(v60, v51, v52, v53, v54, v55, v56, v57, name);
            v61 = &byte_10003A3A8;
          }

          else if (*name == 0x68637461726353)
          {
            v61 = &byte_10003A428;
          }

          else if (*name ^ 0x54524178 | name[4])
          {
            if (*name ^ 0x797265766F636552 | name[8])
            {
              if (*name != 0x746F6F62657250)
              {
                sub_100012C38("unexpected partition '%s' - skipping", v51, v52, v53, v54, v55, v56, v57, name);
                v61 = 0;
                v62 = 1;
                goto LABEL_35;
              }

              v61 = &byte_10003A368;
            }

            else
            {
              v61 = &byte_10003A388;
            }
          }

          else
          {
            v61 = &byte_10003A348;
          }
        }
      }

      else
      {
        v61 = &byte_10003A408;
      }
    }

    else
    {
      v61 = &byte_10003A3E8;
    }

    if (*v61)
    {
      sub_100012C38("encountered second '%s' partition; original was '%s'", v51, v52, v53, v54, v55, v56, v57, name);
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
        sub_100012C38("ran out of registry entries without finding a leaf media object", v65, v66, v67, v68, v69, v70, v71, v117);
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
        sub_100012C38("unable to get properies for media registry entry: 0x%.8x", v73, v74, v75, v76, v77, v78, v79, v72);
        goto LABEL_97;
      }
    }

    if (v62)
    {
LABEL_75:
      v11 = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
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
    sub_100012C38(v116, v84, v85, v86, v87, v88, v89, v90, v117);
LABEL_97:
    v11 = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
LABEL_98:
    v37 = 0;
LABEL_99:
    p_info = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
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
  v10 = sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "delete_apfs_partition");
  if (!partition_probe_media(v10, v11, v12, v13, v14, v15, v16, v17))
  {
    sub_100012C38("%s : partition_probe_media() failed for partition at index %u, mountpoint %s\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  if (a2)
  {
    sub_100013288(a2);
  }

  if (a1 >= 8)
  {
    sub_100012C38("%s : Deleting partition at slice %d is not allowed as path is NULL\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  v25 = off_1000354B8[a1];
  if (*v25)
  {
    v26 = off_1000354B8[a1];
    if (APFSVolumeDelete())
    {
      sub_100012C38("%s : failed to delete partition at slice %d\n", v27, v28, v29, v30, v31, v32, v33, "delete_apfs_partition");
      return 1;
    }

    v35 = sub_100012C38("%s : delete partition succeeded at slice %d %s\n", v27, v28, v29, v30, v31, v32, v33, "delete_apfs_partition");
    if (!partition_probe_media(v35, v36, v37, v38, v39, v40, v41, v42))
    {
      sub_100012C38("%s : partition_probe_media() failed for checking for partition at slice %d\n", v43, v44, v45, v46, v47, v48, v49, "delete_apfs_partition");
      return 1;
    }

    if (*v25)
    {
      sub_100012C38("%s : partition_probe_media() found partition at slice %d after it was deleted\n", v43, v44, v45, v46, v47, v48, v49, "delete_apfs_partition");
      return 1;
    }

    return 0;
  }

  else
  {
    sub_100012C38("%s : partition at slice %d does not exist, ignoring this delete call\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
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
    sub_100012C38("%s ", v8, v9, v10, v11, v12, v13, v14, v18);
    v18 = (&v32)[v19++];
  }

  while (v18);
  sub_100012C38("\n", v8, v9, v10, v11, v12, v13, v14, v30);
  if (!off_10003A300)
  {
    v27 = 0xFFFFFFFFLL;
    v28 = "/sbin/newfs_apfs";
    goto LABEL_33;
  }

  v27 = off_10003A300(&v32, sub_100017818, 0);
  if (v27)
  {
    v28 = v32;
LABEL_33:
    sub_100012C38("%s returned %d", v20, v21, v22, v23, v24, v25, v26, v28);
  }

  return v27;
}

uint64_t sub_10001415C(uint64_t a1, char *a2)
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
  if (off_10003A300)
  {
    v10 = off_10003A300(v12, sub_100017818, 0);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  sub_100012C38("mounting %s at %s failed: %d", v3, v4, v5, v6, v7, v8, v9, a1);
  return v10;
}

uint64_t sub_100014250(uint64_t a1, char *a2)
{
  v47 = 0;
  unlink(a2);
  v4 = open(a2, 2562, 384);
  if (v4 == -1)
  {
    v44 = *__error();
    sub_100012C38("Could not open %s with error %d", v21, v22, v23, v24, v25, v26, v27, a2);
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
      sub_100012C38("preallocation of %llu bytes failed: %d", v28, v29, v30, v31, v32, v33, v34, a1);
    }

    else if (v47 >= a1)
    {
      if (ftruncate(v5, a1) == -1)
      {
        v45 = *__error();
        sub_100012C38("failed to write to %s file to establish the size (%d).", v35, v36, v37, v38, v39, v40, v41, a2);
        v20 = v45;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      sub_100012C38("failed to allocate all %llu bytes for %s. only allocatedf %llu bytes", v6, v7, v8, v9, v10, v11, v12, a1);
      if (unlink(a2) == -1)
      {
        v43 = *__error();
        sub_100012C38("failed to unlink %s: %d", v13, v14, v15, v16, v17, v18, v19, a2);
      }

      v20 = 28;
    }

    close(v5);
  }

  return v20;
}

uint64_t create_xart_partition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (byte_10003A348)
    {
      return 1;
    }

    v17 = format_partition(&byte_10003A308, "xART", 0, 0, 0);
    if (v17)
    {
      v18 = v17;
      v16 = "Creating xART partition failed with error: %d";
    }

    else if (partition_probe_media(v17, v8, v9, v10, v11, v12, v13, v14))
    {
      if (byte_10003A348)
      {
        return 1;
      }

      v16 = "Couldn't find xART volume after xART creation.";
    }

    else
    {
      v16 = "partition_probe_media after xART creation failed.";
    }
  }

  else
  {
    v16 = "partition_probe_media before xART creation failed.";
  }

  sub_100012C38(v16, v8, v9, v10, v11, v12, v13, v14, v18);
  return 0;
}

uint64_t create_preboot_partition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (byte_10003A368)
    {
      return 1;
    }

    v17 = format_partition(&byte_10003A308, "Preboot", 0, 0, 0);
    if (v17)
    {
      v18 = v17;
      v16 = "Creating preboot partition failed with error: %d";
    }

    else if (partition_probe_media(v17, v8, v9, v10, v11, v12, v13, v14))
    {
      if (byte_10003A368)
      {
        return 1;
      }

      v16 = "Couldn't find preboot volume after preboot creation.";
    }

    else
    {
      v16 = "partition_probe_media after preboot creation failed.";
    }
  }

  else
  {
    v16 = "partition_probe_media before preboot creation failed.";
  }

  sub_100012C38(v16, v8, v9, v10, v11, v12, v13, v14, v18);
  return 0;
}

const char *mount_recovery_boot(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_recovery_boot");
  if (partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    if (!byte_10003A388)
    {
      sub_100012C38("%s: no device node found for recovery volume\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
    }

    bzero(&v55, 0x878uLL);
    if (!statfs(a1, &v55) && !strcmp(v55.f_mntonname, a1) && !strcmp(v55.f_mntfromname, &byte_10003A388))
    {
      sub_100012C38("%s: Recovery device already mounted at %s\n", v24, v25, v26, v27, v28, v29, v30, "mount_recovery_boot");
      return a1;
    }

    if (!statfs("/", &v55) && !strcmp(v55.f_mntfromname, &byte_10003A388))
    {
      sub_100012C38("%s: Recovery device already mounted at %s\n", v31, v32, v33, v34, v35, v36, v37, "mount_recovery_boot");
      return "/";
    }

    v54[0] = 0;
    v54[1] = &byte_10003A388;
    if (!mount("apfs", a1, 0x20000000, v54))
    {
      sub_100012C38("%s: Successfully mounted recovery boot at %s", v38, v39, v40, v41, v42, v43, v44, "mount_recovery_boot");
      return a1;
    }

    v53 = *__error();
    sub_100012C38("%s: Recovery boot failed to mount at %s: %d, errno %d\n", v45, v46, v47, v48, v49, v50, v51, "mount_recovery_boot");
  }

  else
  {
    sub_100012C38("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
  }

  return 0;
}

uint64_t mount_update_partition_if_exists(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_update_partition_if_exists");
  if (!partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    sub_100012C38("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  if (!byte_10003A328)
  {
    sub_100012C38("%s : no device node found for update partition\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  v63 = 0;
  v24 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v24)
  {
    v62 = *__error();
    sub_100012C38("Failed to realpath(%s). errno=%d", v37, v38, v39, v40, v41, v42, v43, a1);
    return 0xFFFFFFFFLL;
  }

  v25 = v24;
  v26 = getmntinfo_r_np(&v63, 2);
  if (v26 < 1)
  {
    sub_100012C38("Failed to get mount info for all mounted file systems", v27, v28, v29, v30, v31, v32, v33, v61);
    v44 = *__error();
  }

  else
  {
    v34 = v63;
    v35 = v26;
    v36 = 1112;
    while (strcmp(v34 + v36, &byte_10003A328))
    {
      v36 += 2168;
      if (!--v35)
      {
        goto LABEL_16;
      }
    }

    if (!strcmp(v34 + v36 - 1024, v25))
    {
      sub_100012C38("Update partition is already mounted\n", v45, v46, v47, v48, v49, v50, v51, v61);
      v44 = 0;
      goto LABEL_19;
    }

    sub_100012C38("unmounting %s at %s", v45, v46, v47, v48, v49, v50, v51, v34 + v36);
    sub_100013288(v63 + v36 - 1024);
LABEL_16:
    v44 = sub_10001415C(&byte_10003A328, v25);
    v59 = "Failed to mount";
    if (!v44)
    {
      v59 = "Successfully mounted";
    }

    sub_100012C38("%s update partition at %s", v52, v53, v54, v55, v56, v57, v58, v59);
  }

LABEL_19:
  if (v63)
  {
    free(v63);
  }

  free(v25);
  return v44;
}

uint64_t lookup_partition_index_by_name(char *__s1)
{
  v2 = 0;
  for (i = &off_100035338; strcmp(__s1, *i); i += 4)
  {
    if (++v2 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t lookup_partition_index_by_device_node(char *__s1)
{
  v2 = 0;
  for (i = &off_100035328; !*i || strcmp(__s1, *i); i += 4)
  {
    if (++v2 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t enumerate_apfs_snapshots(const char *a1, uint64_t a2)
{
  v3 = open(a1, 0x100000);
  if ((v3 & 0x80000000) != 0)
  {
    v18 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v19, v20, v21, v22, v23, v24, v25, "enumerate_apfs_snapshots");
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
      sub_100012C38("%s : fs_snapshot_list failed with error %d", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
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
            sub_100012C38("%s : Error in reading attributes for directory entry %d", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
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

        sub_100012C38("%s : caller cancelled on snapshot %s", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      }

      else
      {
        sub_100012C38("%s : No snapshots to enumerate on %s", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      }

LABEL_15:
      v18 = 0;
    }

LABEL_16:
    close(v4);
  }

  return v18;
}

BOOL sub_100014B28(id a1, int a2, const char *a3)
{
  if (fs_snapshot_delete(a2, a3, 0))
  {
    v18 = *__error();
    sub_100012C38("%s : Unable to delete snapshot %s: %d\n", v10, v11, v12, v13, v14, v15, v16, "delete_all_mobilebackup_snapshots_block_invoke");
  }

  else
  {
    sub_100012C38("%s : Successfully deleted snapshot %s\n", v3, v4, v5, v6, v7, v8, v9, "delete_all_mobilebackup_snapshots_block_invoke");
  }

  return 1;
}

BOOL is_mountpoint_apfs(const char *a1)
{
  bzero(&v11, 0x878uLL);
  partition_probe_media(v2, v3, v4, v5, v6, v7, v8, v9);
  return a1 && !statfs(a1, &v11) && (*v11.f_fstypename ^ 0x73667061 | v11.f_fstypename[4]) == 0;
}

uint64_t partition_raw_device_for_block_device(const char *a1, char *a2, size_t a3)
{
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v23))
  {
    v13 = __error();
    v14 = *v13;
    strerror(*v13);
    sub_100012C38("unable to stat block device %s: %s\n", v15, v16, v17, v18, v19, v20, v21, a1);
  }

  else if ((v23.st_mode & 0xF000) == 0x6000)
  {
    *buf = 0u;
    v25 = 0u;
    devname_r(v23.st_rdev, 0x2000u, buf, 32);
    snprintf(a2, a3, "%s%s", "/dev/", buf);
    return 0;
  }

  else
  {
    sub_100012C38("%s is not a block device\n", v6, v7, v8, v9, v10, v11, v12, a1);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t reserve_space_for_overprovisioning()
{
  bzero(v140, 0x400uLL);
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  *v138 = 0u;
  v139 = 0u;
  memset(v137, 0, sizeof(v137));
  v136 = 0;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  memset(&v132, 0, sizeof(v132));
  v130 = 0;
  v131 = 0;
  if (!stat(v140, &v132))
  {
    v16 = "space already reserved for overprovisioning\n";
LABEL_7:
    sub_100012C38(v16, v0, v1, v2, v3, v4, v5, v6, v119);
    return 0;
  }

  if (!sub_10001523C(v137, v0, v1, v2, v3, v4, v5, v6))
  {
    v119 = "EmbeddedDeviceTypeRoot";
    v16 = "Unable to find storage device node for service named: %s";
    goto LABEL_7;
  }

  v7 = partition_raw_device_for_block_device(v137, v138, 0x20uLL);
  if (!v7)
  {
    v18 = open(v138, 0);
    if (v18 == -1)
    {
      v15 = *__error();
      v120 = *__error();
      sub_100012C38("unable to open device: %d\n", v46, v47, v48, v49, v50, v51, v52, v120);
      return v15;
    }

    v19 = v18;
    if (ioctl(v18, 0x40046418uLL, &v136) == -1)
    {
      v15 = *__error();
      v121 = *__error();
      sub_100012C38("unable to get DKIOCGETBLOCKSIZE: %d\n", v53, v54, v55, v56, v57, v58, v59, v121);
    }

    else if (ioctl(v19, 0x40086419uLL, &v135) == -1)
    {
      v15 = *__error();
      v122 = *__error();
      sub_100012C38("unable to get DKIOCGETBLOCKCOUNT: %d\n", v60, v61, v62, v63, v64, v65, v66, v122);
    }

    else
    {
      v27 = v135 * v136;
      sub_100012C38("device_size = %llu (%lld GB)\n", v20, v21, v22, v23, v24, v25, v26, v27);
      if (v27 <= 0x1900000063)
      {
        v35 = v27 / 100;
      }

      else
      {
        v35 = 0x40000000;
      }

      sub_100012C38("file_size = %llu (%lld GB)\n", v28, v29, v30, v31, v32, v33, v34, v35);
      v36 = open_dprotected_np(v140, 2562, 4, 0, 384, v35 / 0x40000000);
      if (v36 == -1)
      {
        v15 = *__error();
        v126 = *__error();
        sub_100012C38("Could not open %s with error %d\n", v67, v68, v69, v70, v71, v72, v73, v140);
      }

      else
      {
        v37 = v36;
        v133 = 0x30000000EuLL;
        *&v134 = v35;
        if (fcntl(v36, 42, &v133) == -1)
        {
          if (*__error() == 28)
          {
            LODWORD(v133) = 10;
            if (fcntl(v37, 42, &v133) == -1)
            {
              if (*__error() == 28)
              {
                LODWORD(v133) = 8;
                if (fcntl(v37, 42, &v133) == -1)
                {
                  v15 = *__error();
                  v127 = *__error();
                  sub_100012C38("preallocation of %llu bytes failed with error: %d (Allocated %llu bytes)\n", v75, v76, v77, v78, v79, v80, v81, v35);
                  goto LABEL_35;
                }
              }

              else if (*__error())
              {
                v124 = *__error();
                sub_100012C38("fcntl(2) failed trying to allocate contiguous space with error: %d", v112, v113, v114, v115, v116, v117, v118, v124);
                goto LABEL_34;
              }
            }
          }

          else if (*__error())
          {
            v123 = *__error();
            sub_100012C38("fcntl(2) failed trying to allocate contiguous space all at once with error: %d", v90, v91, v92, v93, v94, v95, v96, v123);
            goto LABEL_34;
          }
        }

        v38 = ftruncate(v37, v35);
        if (v38)
        {
          v15 = v38;
          v125 = *__error();
          sub_100012C38("failed to write to %s file to establish the size (%d).\n", v39, v40, v41, v42, v43, v44, v45, v140);
LABEL_35:
          close(v19);
          v74 = v37;
          goto LABEL_36;
        }

        v82 = fcntl(v37, 51, 0);
        if (v82)
        {
          v15 = v82;
          v128 = *__error();
          sub_100012C38("failed to fullsync %s file with %d.\n", v83, v84, v85, v86, v87, v88, v89, v140);
          goto LABEL_35;
        }

        v130 = 0;
        v131 = v35;
        if (fcntl(v37, 100, &v130) != -1)
        {
LABEL_34:
          v15 = 0;
          goto LABEL_35;
        }

        v15 = *__error();
        v97 = __error();
        sub_100012C38("F_TRIM_ACTIVE_FILE failed with: %d \n", v98, v99, v100, v101, v102, v103, v104, *v97);
        close(v37);
        if (unlink(v140))
        {
          v129 = *__error();
          sub_100012C38("failed to unlink %s: %d \n", v105, v106, v107, v108, v109, v110, v111, v140);
        }
      }
    }

    v74 = v19;
LABEL_36:
    close(v74);
    return v15;
  }

  v15 = v7;
  sub_100012C38("unable to determine character device for %s\n", v8, v9, v10, v11, v12, v13, v14, v137);
  return v15;
}

uint64_t sub_10001523C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100012C38("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "_partition_wait_for_device");
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
    sub_100012C38(v41, v9, v10, v11, v12, v13, v14, v15, v111);
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
    sub_100012C38("waiting for matching IOKit service: %s\n", v27, v28, v29, v30, v31, v32, v33, CStringPtr);
    sleep(v24);
    v22 += v24;
    CFRelease(v25);
    if (v22 >= 0x1E)
    {
      CFRelease(v21);
      sub_100012C38("failed to lookup IO service for %s", v34, v35, v36, v37, v38, v39, v40, "EmbeddedDeviceTypeRoot");
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
      sub_100012C38(v100, v46, v47, v48, v49, v50, v51, v52, v111);
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
    sub_100012C38("Did not find Whole property on IOMedia class", v57, v58, v59, v60, v61, v62, v63, v111);
    goto LABEL_51;
  }

  v64 = CFProperty;
  v65 = CFGetTypeID(CFProperty);
  if (v65 != CFBooleanGetTypeID())
  {
    v101 = "Expected Whole to be BOOLean";
LABEL_50:
    sub_100012C38(v101, v66, v67, v68, v69, v70, v71, v72, v111);
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
    sub_100012C38("no BSD device name for service %s", v74, v75, v76, v77, v78, v79, v80, "EmbeddedDeviceTypeRoot");
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
      sub_100012C38("Using device path %s for %s\n", v91, v92, v93, v94, v95, v96, v97, a1);
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
      sub_100012C38("stat error while waiting for device '%s': %s\n", v104, v105, v106, v107, v108, v109, v110, a1);
LABEL_58:
      v111 = "EmbeddedDeviceTypeRoot";
      v102 = "timeout waiting for %s";
    }

    else
    {
      v102 = "failed to create C string from BSD name";
    }

    sub_100012C38(v102, v91, v92, v93, v94, v95, v96, v97, v111);
  }

  else
  {
    sub_100012C38("returnbed BSD device name for service %s is wrong type", v83, v84, v85, v86, v87, v88, v89, "EmbeddedDeviceTypeRoot");
  }

  v42 = 0;
LABEL_61:
  CFRelease(v81);
LABEL_52:
  IOObjectRelease(v55);
  IOObjectRelease(v44);
  return v42;
}

uint64_t get_bsd_device_for_mountpoint()
{
  v0 = __chkstk_darwin();
  if (!v0)
  {
    v14 = "Can't find device for NULL mountpoint";
LABEL_10:
    sub_100012C38(v14, v1, v2, v3, v4, v5, v6, v7, v17);
    return 1;
  }

  v8 = v2;
  v9 = v1;
  v10 = v0;
  bzero(&v19, 0x54B0uLL);
  bzero(v18, 0x400uLL);
  v11 = getfsstat(&v19, 21680, 0);
  if (v11 == -1)
  {
    v14 = "Failed to get list of all mounted file systems";
    goto LABEL_10;
  }

  if (v11 < 1)
  {
    return 1;
  }

  v12 = v11;
  for (i = v19.f_mntfromname; strcmp(v10, i - 1024); i += 2168)
  {
    if (!--v12)
    {
      return 1;
    }
  }

  v16 = basename_r(i, v18);
  if (!v16)
  {
    v14 = "Mapped mount to device but failed to basename string!";
    goto LABEL_10;
  }

  strlcpy(v9, v16, v8);
  return 0;
}

uint64_t delete_directory_contents(const char *a1)
{
  value = 0;
  v2 = removefile_state_alloc();
  removefile_state_set(v2, 1u, sub_100015A18);
  removefile_state_set(v2, 2u, &value);
  removefile_state_set(v2, 3u, sub_100015A20);
  removefile_state_set(v2, 4u, &value);
  sub_100012C38("Deleting contents of %s...", v3, v4, v5, v6, v7, v8, v9, a1);
  if (removefile(a1, v2, 3u))
  {
    if (!value)
    {
      value = *__error();
    }
  }

  else
  {
    strcpy(path, ".XXXXXXXX");
    v17 = open(a1, 1048832);
    if (v17 == -1)
    {
      v21 = *__error();
    }

    else
    {
      v18 = v17;
      v19 = mkstempsat_np(v17, path, 8);
      if (v19 == -1)
      {
        v21 = *__error();
      }

      else
      {
        v20 = v19;
        if (unlinkat(v18, path, 0) || fcopyfile(v20, v18, 0, 5u))
        {
          v21 = *__error();
        }

        else
        {
          v21 = 0;
        }

        close(v20);
      }

      close(v18);
    }

    value = v21;
    if (v21)
    {
      strerror(v21);
      sub_100012C38("Could not reset metadata on %s: %s", v22, v23, v24, v25, v26, v27, v28, a1);
    }

    else
    {
      value = 0;
    }
  }

  sub_100012C38("Deleting contents of %s %s (result: %d).", v10, v11, v12, v13, v14, v15, v16, a1);
  removefile_state_free(v2);
  return value;
}

uint64_t sub_100015A20(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *__error();
  *a3 = v5;
  strerror(v5);
  sub_100012C38("Could not removefile(3) path %s: %s", v6, v7, v8, v9, v10, v11, v12, a2);
  return 2;
}

uint64_t mount_apfs_system_readwrite_with_revert(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!byte_10003A3A8)
  {
    sub_100012C38("system volume device node not found", v10, v11, v12, v13, v14, v15, v16, v102);
    return 2;
  }

  v103 = 0;
  v17 = getmntinfo_r_np(&v103, 2);
  if (v17 < 1)
  {
    sub_100012C38("Failed to get mount info for all mounted file systems", v18, v19, v20, v21, v22, v23, v24, v102);
    return *__error();
  }

  v25 = v103;
  v26 = v17;
  v27 = 1112;
  while (strcmp(v25 + v27, &byte_10003A3A8))
  {
    v27 += 2168;
    if (!--v26)
    {
      goto LABEL_10;
    }
  }

  sub_100012C38("unmounting %s at %s", v28, v29, v30, v31, v32, v33, v34, v25 + v27);
  sub_100013288(v103 + v27 - 1024);
  v25 = v103;
LABEL_10:
  free(v25);
  v36 = sub_10001415C(&byte_10003A3A8, a1);
  if (v36)
  {
    v35 = v36;
    sub_100012C38("system volume device node %s could not be mounted read/write at %s", v37, v38, v39, v40, v41, v42, v43, &byte_10003A3A8);
    return v35;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v45, v46, v47, v48, v49, v50, v51, v102);
    return 45;
  }

  if (!a2)
  {
LABEL_29:
    sub_100012C38("mounting system volume read/write at %s succeeded.", v45, v46, v47, v48, v49, v50, v51, a1);
    return 0;
  }

  v52 = open(a1, 0x100000);
  v53 = v52;
  if (v52 < 0)
  {
    v35 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v69, v70, v71, v72, v73, v74, v75, "mount_apfs_system_readwrite_with_revert");
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
    sub_100012C38("revert snapshot operation failed: %d %s", v62, v63, v64, v65, v66, v67, v68, v35);
    goto LABEL_23;
  }

  sub_100012C38("reverting system volume to snapshot %s succeeded. remounting...", v54, v55, v56, v57, v58, v59, v60, a2);
  if (!close(v53))
  {
    v93 = sub_100013288(a1);
    if (v93)
    {
      v35 = v93;
      sub_100012C38("system volume device node %s could not be unmounted from %s", v94, v95, v96, v97, v98, v99, v100, &byte_10003A3A8);
      return v35;
    }

    v101 = sub_10001415C(&byte_10003A3A8, a1);
    if (v101)
    {
      v35 = v101;
      sub_100012C38("system volume device node %s could not be re-mounted read/write at %s", v45, v46, v47, v48, v49, v50, v51, &byte_10003A3A8);
      return v35;
    }

    goto LABEL_29;
  }

  v76 = __error();
  v35 = *v76;
  strerror(*v76);
  sub_100012C38("%s: Unable to close directory: %d %s\n", v77, v78, v79, v80, v81, v82, v83, "mount_apfs_system_readwrite_with_revert");
LABEL_23:
  if (close(v53))
  {
    v84 = *__error();
    v85 = __error();
    strerror(*v85);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v86, v87, v88, v89, v90, v91, v92, "mount_apfs_system_readwrite_with_revert");
  }

  return v35;
}

uint64_t create_apfs_system_snapshot(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "create_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v10, v11, v12, v13, v14, v15, v16, v52);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: createSnapshot is required", v10, v11, v12, v13, v14, v15, v16, "create_apfs_system_snapshot");
    return 22;
  }

  v17 = open(a1, 0x100000);
  v18 = v17;
  if (v17 < 0)
  {
    v27 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v35, v36, v37, v38, v39, v40, v41, "create_apfs_system_snapshot");
    if (v18 == -1)
    {
      return v27;
    }
  }

  else if (fs_snapshot_create(v17, a2, 0))
  {
    v26 = __error();
    v27 = *v26;
    strerror(*v26);
    sub_100012C38("create snapshot operation failed: %d %s", v28, v29, v30, v31, v32, v33, v34, v27);
  }

  else
  {
    sub_100012C38("creating system volume snapshot %s succeeded.", v19, v20, v21, v22, v23, v24, v25, a2);
    v27 = 0;
  }

  if (close(v18))
  {
    v42 = *__error();
    v43 = __error();
    strerror(*v43);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v44, v45, v46, v47, v48, v49, v50, "create_apfs_system_snapshot");
  }

  return v27;
}

uint64_t delete_apfs_system_snapshot(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "delete_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v10, v11, v12, v13, v14, v15, v16, v52);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: deleteSnapshot is required", v10, v11, v12, v13, v14, v15, v16, "delete_apfs_system_snapshot");
    return 22;
  }

  v17 = open(a1, 0x100000);
  v18 = v17;
  if (v17 < 0)
  {
    v27 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v35, v36, v37, v38, v39, v40, v41, "delete_apfs_system_snapshot");
    if (v18 == -1)
    {
      return v27;
    }
  }

  else if (fs_snapshot_delete(v17, a2, 0))
  {
    v26 = __error();
    v27 = *v26;
    strerror(*v26);
    sub_100012C38("delete snapshot operation failed: %d %s", v28, v29, v30, v31, v32, v33, v34, v27);
  }

  else
  {
    sub_100012C38("deleting system volume snapshot %s succeeded.", v19, v20, v21, v22, v23, v24, v25, a2);
    v27 = 0;
  }

  if (close(v18))
  {
    v42 = *__error();
    v43 = __error();
    strerror(*v43);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v44, v45, v46, v47, v48, v49, v50, "delete_apfs_system_snapshot");
  }

  return v27;
}

uint64_t rename_apfs_system_snapshot(const char *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "rename_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v11, v12, v13, v14, v15, v16, v17, v53);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: oldName is required", v11, v12, v13, v14, v15, v16, v17, "rename_apfs_system_snapshot");
    return 22;
  }

  if (!a3)
  {
    sub_100012C38("%s: newName is required", v11, v12, v13, v14, v15, v16, v17, "rename_apfs_system_snapshot");
    return 22;
  }

  v18 = open(a1, 0x100000);
  v19 = v18;
  if (v18 < 0)
  {
    v28 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v37, v38, v39, v40, v41, v42, v43, "rename_apfs_system_snapshot");
    if (v19 == -1)
    {
      return v28;
    }
  }

  else if (fs_snapshot_rename(v18, a2, a3, 0))
  {
    v27 = __error();
    v28 = *v27;
    strerror(*v27);
    sub_100012C38("rename snapshot operation failed: %d %s", v29, v30, v31, v32, v33, v34, v35, v28);
  }

  else
  {
    sub_100012C38("renaming system volume snapshot %s to %s succeeded.", v20, v21, v22, v23, v24, v25, v26, a2);
    v28 = 0;
  }

  if (close(v19))
  {
    v44 = *__error();
    v45 = __error();
    strerror(*v45);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v46, v47, v48, v49, v50, v51, v52, "rename_apfs_system_snapshot");
  }

  return v28;
}

uint64_t root_from_apfs_system_snapshot(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "root_from_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v10, v11, v12, v13, v14, v15, v16, v44);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: rootSnapshot is required", v10, v11, v12, v13, v14, v15, v16, "root_from_apfs_system_snapshot");
    return 22;
  }

  LOBYTE(v45) = 0;
  APFSShouldSealSystemVolume();
  v17 = open(a1, 0x100000);
  if (v17 < 0)
  {
    v19 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v28, v29, v30, v31, v32, v33, v34, "root_from_apfs_system_snapshot");
    if (v17 == -1)
    {
      return v19;
    }
  }

  else if (fs_snapshot_root())
  {
    v18 = __error();
    v19 = *v18;
    strerror(*v18);
    sub_100012C38("root from snapshot operation failed: %d %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
  }

  else
  {
    v19 = 0;
  }

  if (close(v17))
  {
    v35 = *__error();
    v36 = __error();
    strerror(*v36);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v37, v38, v39, v40, v41, v42, v43, "root_from_apfs_system_snapshot");
  }

  return v19;
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
    sub_100012C38(v7, v0, v1, v2, v3, v4, v5, v6, v16);
    return 0;
  }

  v9 = strlen(v20.f_mntfromname);
  v10 = strlen(&byte_10003A3A8);
  if (v9 <= v10 + 1 || (v11 = v9 + ~v10, v20.f_mntfromname[v11] != 64) || strcmp(&v20.f_mntfromname[v9 - v10], &byte_10003A3A8) || (asprintf(&v17, "%.*s", v11, v20.f_mntfromname), (result = v17) == 0))
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
    sub_100012C38("uanble to find chosen node", v1, v2, v3, v4, v5, v6, v7, v30);
    return 0;
  }

  v8 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"root-snapshot-name", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_100012C38("unable to look up root-snapshot-name on chosen node", v10, v11, v12, v13, v14, v15, v16, v30);
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
    sub_100012C38("device tree root-snapshot-name type mismatch", v19, v20, v21, v22, v23, v24, v25, v30);
    v28 = 0;
  }

  IOObjectRelease(v8);
  CFRelease(v17);
  return v28;
}

uint64_t create_apfs_container(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (byte_10003A308)
    {
      v16 = "/sbin/newfs_apfs";
      v22[0] = "/sbin/newfs_apfs";
      v22[1] = "-C";
      v17 = &byte_10003A448;
      v23 = 0u;
      v24 = 0u;
      if (!v8)
      {
        v17 = &byte_10003A308;
      }

      v25 = 0uLL;
      v26 = 0uLL;
      v22[2] = v17;
      v22[3] = 0;
      v18 = 1;
      do
      {
        sub_100012C38("%s ", v9, v10, v11, v12, v13, v14, v15, v16);
        v16 = v22[v18++];
      }

      while (v16);
      if (off_10003A300)
      {
        result = off_10003A300(v22, sub_100017818, 0);
        if (!result)
        {
          return result;
        }

        v20 = v22[0];
      }

      else
      {
        v20 = "/sbin/newfs_apfs";
      }

      sub_100012C38("%s returned %d", v9, v10, v11, v12, v13, v14, v15, v20);
      return 8;
    }

    else
    {
      sub_100012C38("media is apfs not formatted.", v9, v10, v11, v12, v13, v14, v15, v21);
      return 19;
    }
  }

  else
  {
    sub_100012C38("media isn't apfs formatted.", v9, v10, v11, v12, v13, v14, v15, v21);
    return 2;
  }
}

uint64_t delete_recovery_os_partitions(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = a1;
  v95 = a1;
  v96 = 0;
  valuePtr = 0;
  v94 = 0;
  v92 = 0;
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "delete_recovery_os_partitions");
  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"Shared Writer", kCFBooleanTrue);
    v12 = Mutable;
  }

  else
  {
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = v12;
  }

  CFDictionaryAddValue(v12, @"Writable", kCFBooleanTrue);
  if (!byte_10003A468)
  {
    sub_100012C38("No storage device found exiting without failure.", v13, v14, v15, v16, v17, v18, v19, v88);
    return 0;
  }

  v20 = MKMediaCreateWithPath();
  CFRelease(Mutable);
  v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = MKCFReadMedia();
  CFRelease(v22);
  if (!v23)
  {
    sub_100012C38("no media in mediaref found \n", v24, v25, v26, v27, v28, v29, v30, v88);
    v21 = 0;
    HIDWORD(v96) = -1;
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(v23, @"Schemes");
  if (!Value)
  {
    v69 = "Couldn't find Schemes in existing media struct.\n";
LABEL_34:
    sub_100012C38(v69, v32, v33, v34, v35, v36, v37, v38, v88);
    v21 = 0;
    HIDWORD(v96) = -1;
    goto LABEL_35;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  if (!ValueAtIndex)
  {
    v69 = "Couldn't find any scheme in schemes struct.\n";
    goto LABEL_34;
  }

  if (!CFDictionaryGetValue(ValueAtIndex, @"Sections"))
  {
    v69 = "Couldn't find Sections in the scheme struct.\n";
    goto LABEL_34;
  }

  v40 = CFArrayDictionarySearchWithIndexOptions();
  if (!v40)
  {
    v69 = "Couldn't ID/MAP section in the sections struct.\n";
    goto LABEL_34;
  }

  v41 = CFDictionaryGetValue(v40, @"Partitions");
  if (!v41)
  {
    v69 = "Couldn't Partitions in the section struct.\n";
    goto LABEL_34;
  }

  v42 = v41;
  Count = CFArrayGetCount(v41);
  if (Count < 1)
  {
    goto LABEL_39;
  }

  v51 = Count;
  v52 = 0;
  v90 = 0;
  theDict = 0;
  v53 = 0;
  v89 = Count;
  do
  {
    v54 = CFArrayGetValueAtIndex(v42, v52);
    if (!v54)
    {
      v68 = "Couldn't partition in the Partitions array.\n";
      goto LABEL_41;
    }

    v55 = CFDictionaryGetValue(v54, @"Name");
    if (v55)
    {
      v56 = v55;
      if (CFStringCompare(v55, @"Container", 0))
      {
        if (CFStringCompare(v56, @"RecoveryOSContainer", 0) == kCFCompareEqualTo)
        {
          v57 = CFArrayGetValueAtIndex(v42, v52);
          v58 = CFDictionaryGetValue(v57, @"Size");
          CFNumberGetValue(v58, kCFNumberSInt64Type, &valuePtr);
          v92 = 0;
          v59 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v92);
          v60 = v57;
          v53 = v57;
          v51 = v89;
          CFDictionaryReplaceValue(v60, @"Size", v59);
          CFDictionaryReplaceValue(v53, @"Offset", v59);
          CFRelease(v59);
          sub_100012C38("Deleting the recovery OS partition/container/volume.\n", v61, v62, v63, v64, v65, v66, v67, v88);
          LODWORD(v90) = v52;
        }
      }

      else
      {
        theDict = CFArrayGetValueAtIndex(v42, v52);
        HIDWORD(v90) = v52;
      }
    }

    ++v52;
  }

  while (v51 != v52);
  if (theDict && v53)
  {
    if (v90 && v90 != HIDWORD(v90) + 1)
    {
      v68 = "Recovery OS partition doesn't adjacent to the main OS partition, this isn't supported by the recovery OS update process .\n";
LABEL_41:
      sub_100012C38(v68, v44, v45, v46, v47, v48, v49, v50, v88);
      v21 = 0;
      HIDWORD(v96) = -1;
      goto LABEL_35;
    }

    if (v51 >= 3)
    {
      v71 = CFDictionaryGetValue(theDict, @"Size");
      CFNumberGetValue(v71, kCFNumberSInt64Type, &v94);
      v10 = v95;
      if (!v95 || v94 > valuePtr + v94)
      {
        v95 = valuePtr + v94;
        v10 = valuePtr + v94;
      }
    }

    v72 = MKCFUpdateMedia();
    HIDWORD(v96) = v72;
    if (v72)
    {
      sub_100012C38("MKCFUpdateMedia failed to remove recovery os partition: %d\n", v73, v74, v75, v76, v77, v78, v79, v72);
    }

    else
    {
      sub_100012C38("New main OS partiton block count is %llu.\n", v73, v74, v75, v76, v77, v78, v79, v10);
      v80 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v95);
      CFDictionaryReplaceValue(theDict, @"Size", v80);
      HIDWORD(v96) = MKCFWriteMedia();
      CFRelease(v80);
      if (!HIDWORD(v96))
      {
        *a3 = v95 << 9;
        v21 = 1;
        goto LABEL_35;
      }

      sub_100012C38("MKCFWriteMedia failed to update main os partition size: %d\n", v81, v82, v83, v84, v85, v86, v87, HIDWORD(v96));
    }
  }

  else
  {
LABEL_39:
    sub_100012C38("Couldn't find both main partition and recovery OS partition , continuing without deletion of recovery os partition.\n", v44, v45, v46, v47, v48, v49, v50, v88);
  }

  v21 = 0;
LABEL_35:
  MKCFDisposeMedia();
LABEL_36:
  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

uint64_t create_recovery_os_partition(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v99 = a1;
  v100 = 0;
  valuePtr = 0;
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "create_recovery_os_partition");
  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"Shared Writer", kCFBooleanTrue);
    v12 = Mutable;
  }

  else
  {
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = v12;
  }

  CFDictionaryAddValue(v12, @"Writable", kCFBooleanTrue);
  if (!byte_10003A468)
  {
    sub_100012C38("No storage device found exiting without failure.", v13, v14, v15, v16, v17, v18, v19, v94);
    return 0;
  }

  v20 = MKMediaCreateWithPath();
  CFRelease(Mutable);
  v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = MKCFReadMedia();
  CFRelease(v22);
  if (v23)
  {
    Value = CFDictionaryGetValue(v23, @"Schemes");
    if (Value)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      if (ValueAtIndex)
      {
        CFDictionaryGetValue(ValueAtIndex, @"Sections");
        v41 = CFArrayDictionarySearchWithIndexOptions();
        if (v41)
        {
          v42 = CFDictionaryGetValue(v41, @"Partitions");
          if (v42)
          {
            v43 = v42;
            Count = CFArrayGetCount(v42);
            if (Count < 1)
            {
LABEL_41:
              v78 = "Couldn't find both main OS partition , continuing without deletion of recovery os partition.\n";
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v95 = 0;
              theDict = 0;
              v53 = -1;
              do
              {
                v54 = CFArrayGetValueAtIndex(v43, v52);
                if (!v54)
                {
                  v78 = "Couldn't partition in the Partitions array.\n";
                  goto LABEL_44;
                }

                v55 = v43;
                v56 = CFDictionaryGetValue(v54, @"Name");
                if (v56)
                {
                  v57 = v56;
                  if (CFStringCompare(v56, @"Container", 0))
                  {
                    v58 = CFStringCompare(v57, @"RecoveryOSContainer", 0);
                    v43 = v55;
                    if (v58 == kCFCompareEqualTo)
                    {
                      sub_100012C38("Found an existing recovery OS partition, no need to create again (non cretical).\n", v44, v45, v46, v47, v48, v49, v50, v94);
                      v31 = 0;
LABEL_7:
                      v21 = 0;
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v43 = v55;
                    theDict = CFArrayGetValueAtIndex(v55, v52);
                    v95 = v52;
                  }
                }

                ++v52;
                v51 += &_mh_execute_header;
                ++v53;
              }

              while (Count != v52);
              if (!theDict)
              {
                goto LABEL_41;
              }

              if (v53 == v95)
              {
                v59 = CFDictionaryGetValue(theDict, @"Size");
                CFNumberGetValue(v59, kCFNumberSInt64Type, &valuePtr);
                v67 = v99;
                if (v99 - 1 >= (valuePtr - a2))
                {
                  v99 = valuePtr - a2;
                  v67 = valuePtr - a2;
                }

                sub_100012C38("New main OS partiton block count is %llu.\n", v60, v61, v62, v63, v64, v65, v66, v67);
                v68 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v99);
                CFDictionaryReplaceValue(theDict, @"Size", v68);
                v31 = MKCFBuildPartition();
                if (HIDWORD(v100))
                {
                  sub_100012C38("MKCFBuildPartition recovery OS failed: %d\n", v69, v70, v71, v72, v73, v74, v75, HIDWORD(v100));
                  goto LABEL_7;
                }

                CFArrayInsertValueAtIndex(v43, v51 >> 32, v31);
                sub_100012C38("New recovery OS partiton block count is %llu.\n", v79, v80, v81, v82, v83, v84, v85, a2);
                v86 = MKCFWriteMedia();
                HIDWORD(v100) = v86;
                if (v86)
                {
                  sub_100012C38("MKCFWriteMedia failed: %d\n", v87, v88, v89, v90, v91, v92, v93, v86);
                  goto LABEL_7;
                }

                HIDWORD(v100) = 0;
                *a4 = v99 << 9;
                v21 = 1;
                goto LABEL_35;
              }

              v78 = "Can't create recovery OS partition becuase the main OS partition isn't the last in the partition table (can't resize other partitions).\n";
            }

LABEL_44:
            sub_100012C38(v78, v44, v45, v46, v47, v48, v49, v50, v94);
            v31 = 0;
            v21 = 0;
            HIDWORD(v100) = -1;
LABEL_35:
            MKCFDisposeMedia();
            goto LABEL_36;
          }

          v76 = "Couldn't Partitions in the section struct.\n";
        }

        else
        {
          v76 = "Couldn't ID/MAP section in the sections struct.\n";
        }
      }

      else
      {
        v76 = "Couldn't find any scheme in schemes struct.\n";
      }
    }

    else
    {
      v76 = "Couldn't find Schemes in existing media struct.\n";
    }

    sub_100012C38(v76, v33, v34, v35, v36, v37, v38, v39, v94);
    v21 = 0;
    v31 = 0;
    HIDWORD(v100) = -1;
    goto LABEL_35;
  }

  sub_100012C38("no media in mediaref found \n", v24, v25, v26, v27, v28, v29, v30, v94);
  v21 = 0;
  v31 = 0;
  HIDWORD(v100) = -1;
LABEL_36:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v21;
}

uint64_t create_recovery_os_volume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10003A448)
  {

    return format_partition(&byte_10003A448, "Recovery", 0, 0, 0);
  }

  else
  {
    sub_100012C38("No recovery OS container found.\n", a2, a3, a4, a5, a6, a7, a8, v8);
    return 6;
  }
}

uint64_t delete_recovery_os_volume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v23 = "Failed to probe device media.\n";
LABEL_7:
    sub_100012C38(v23, v8, v9, v10, v11, v12, v13, v14, v25);
    return 0;
  }

  if (!byte_10003A388)
  {
    v23 = "No recovery OS volume found.\n";
    goto LABEL_7;
  }

  sub_100012C38("Deleting recovery OS volume %s \n", v8, v9, v10, v11, v12, v13, v14, &byte_10003A388);
  v22 = APFSVolumeDelete();
  if (v22)
  {
    sub_100012C38("Failed deleting recovery OS volume %s , got %d.\n", v15, v16, v17, v18, v19, v20, v21, &byte_10003A388);
  }

  return v22;
}

uint64_t get_os_partitions_size(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  v62 = 0;
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "get_os_partitions_size");
  if (!byte_10003A468)
  {
    v18 = "No storage device found exiting without failure.";
LABEL_6:
    sub_100012C38(v18, v10, v11, v12, v13, v14, v15, v16, v58);
    return 0;
  }

  if (!a1)
  {
    v18 = "main_os_partition_size can't be NULL.";
    goto LABEL_6;
  }

  v17 = MKMediaCreateWithPath();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v21 = MKCFReadMedia();
  CFRelease(Mutable);
  if (!v21)
  {
    sub_100012C38("no media in mediaref found \n", v22, v23, v24, v25, v26, v27, v28, v58);
    v19 = 0;
    HIDWORD(v62) = -1;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(v21, @"Schemes");
  if (Value)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (ValueAtIndex)
    {
      CFDictionaryGetValue(ValueAtIndex, @"Sections");
      v38 = CFArrayDictionarySearchWithIndexOptions();
      if (v38)
      {
        v39 = CFDictionaryGetValue(v38, @"Partitions");
        if (v39)
        {
          v40 = v39;
          Count = CFArrayGetCount(v39);
          if (Count >= 1)
          {
            v42 = Count;
            v43 = 0;
            v59 = 0;
            theDict = 0;
            do
            {
              v44 = CFArrayGetValueAtIndex(v40, v43);
              if (!v44)
              {
                v56 = "Couldn't partition in the Partitions array.\n";
                goto LABEL_30;
              }

              v45 = CFDictionaryGetValue(v44, @"Name");
              if (v45)
              {
                v46 = v45;
                if (CFStringCompare(v45, @"Container", 0))
                {
                  if (CFStringCompare(v46, @"RecoveryOSContainer", 0) == kCFCompareEqualTo)
                  {
                    v59 = CFArrayGetValueAtIndex(v40, v43);
                  }
                }

                else
                {
                  theDict = CFArrayGetValueAtIndex(v40, v43);
                }
              }

              ++v43;
            }

            while (v42 != v43);
            if (!theDict)
            {
              goto LABEL_35;
            }

            v47 = CFDictionaryGetValue(theDict, @"Size");
            CFNumberGetValue(v47, kCFNumberSInt64Type, &valuePtr);
            *a1 = valuePtr << 9;
            if (v59)
            {
              if (a2)
              {
                v55 = CFDictionaryGetValue(v59, @"Size");
                CFNumberGetValue(v55, kCFNumberSInt64Type, &valuePtr);
                *a2 = valuePtr << 9;
              }
            }

            else
            {
              sub_100012C38("Couldn't find recovery OS partition.\n", v48, v49, v50, v51, v52, v53, v54, v58);
            }

            v19 = 1;
            goto LABEL_31;
          }

LABEL_35:
          v56 = "Couldn't find main OS partition.\n";
        }

        else
        {
          v56 = "Couldn't Partitions in the section struct.\n";
        }
      }

      else
      {
        v56 = "Couldn't ID/MAP section in the sections struct.\n";
      }
    }

    else
    {
      v56 = "Couldn't find any scheme in schemes struct.\n";
    }
  }

  else
  {
    v56 = "Couldn't find Schemes in existing media struct.\n";
  }

LABEL_30:
  sub_100012C38(v56, v30, v31, v32, v33, v34, v35, v36, v58);
  v19 = 0;
  HIDWORD(v62) = -1;
LABEL_31:
  MKCFDisposeMedia();
LABEL_32:
  if (v17)
  {
    CFRelease(v17);
  }

  return v19;
}

uint64_t get_main_container_space_info(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "get_main_container_space_info");
  if (byte_10003A308)
  {
    SpaceInfo = APFSContainerGetSpaceInfo();
    if (SpaceInfo)
    {
      sub_100012C38("APFSContainerGetSpaceInfo failed with result:%d", v21, v22, v23, v24, v25, v26, v27, SpaceInfo);
    }
  }

  else
  {
    sub_100012C38("No container device found, can't retrieve space info", v13, v14, v15, v16, v17, v18, v19, v52);
  }

  if (byte_10003A3A8)
  {
    v28 = APFSVolumeGetSpaceInfo();
    if (v28)
    {
      sub_100012C38("APFSVolumeGetSpaceInfo for system volume failed with result:%d", v29, v30, v31, v32, v33, v34, v35, v28);
    }
  }

  else
  {
    sub_100012C38("No system device found, can't retrieve space info", v21, v22, v23, v24, v25, v26, v27, v52);
  }

  if (byte_10003A3E8)
  {
    v36 = APFSVolumeGetSpaceInfo();
    if (v36)
    {
      sub_100012C38("APFSVolumeGetSpaceInfo for data volume failed with result:%d", v37, v38, v39, v40, v41, v42, v43, v36);
    }
  }

  else
  {
    sub_100012C38("No data device found, can't retrieve space info", v29, v30, v31, v32, v33, v34, v35, v52);
  }

  if (!byte_10003A368)
  {
    result = sub_100012C38("No preboot device found, can't retrieve space info", v37, v38, v39, v40, v41, v42, v43, v52);
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
    result = sub_100012C38("APFSVolumeGetSpaceInfo for preboot volume failed with result:%d", v45, v46, v47, v48, v49, v50, v51, result);
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

uint64_t sub_100017818()
{
  if (off_10003A2F8)
  {
    return off_10003A2F8();
  }

  return result;
}

CFStringRef tickethelper_copy_hash_hex_string(const __CFData *a1, CFErrorRef *a2)
{
  memset(v10, 0, sizeof(v10));
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if ((Length & 0x7FFFFFC0) == 0)
  {
    v6 = 0;
    if (Length)
    {
      do
      {
        v7 = *BytePtr++;
        *(v10 + v6) = a0123456789abcd[v7 >> 4];
        *(v10 + (v6 + 1)) = a0123456789abcd[v7 & 0xF];
        v6 += 2;
      }

      while (2 * Length != v6);
      v6 = v6;
    }

    *(v10 + v6) = 0;
  }

  v8 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  if (!v8)
  {
    *a2 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 1, 0);
  }

  return v8;
}

CFTypeRef tickethelper_copy_root_hash(CFErrorRef *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v10 = v2;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buffer = 0u;
    v25 = 0u;
    sub_100012C38("looking up boot manifest hash", v3, v4, v5, v6, v7, v8, v9, v23);
    CFProperty = IORegistryEntryCreateCFProperty(v10, @"boot-manifest-hash", kCFAllocatorDefault, 0);
    v12 = CFProperty;
    if (CFProperty)
    {
      v13 = CFGetTypeID(CFProperty);
      if (v13 != CFDataGetTypeID())
      {
        v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v12);
        if (CFStringGetCString(v14, buffer, 128, 0x8000100u))
        {
          sub_100012C38("device tree ticket-hash type mismatch: %s", v15, v16, v17, v18, v19, v20, v21, buffer);
        }

        *a1 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 3, 0);
        CFRelease(v14);
      }
    }

    else
    {
      *a1 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 2, 0);
    }

    IOObjectRelease(v10);
  }

  else
  {
    v12 = 0;
    *a1 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainMach, -536870911, 0);
  }

  return v12;
}

CFDataRef tickethelper_copy_hash_data(const void *a1, CFErrorRef *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDataGetTypeID())
  {
    v32 = kCFAllocatorDefault;
    v33 = @"TickethelperErrorDomain";
    v34 = 5;
LABEL_13:
    v31 = 0;
    *a2 = CFErrorCreate(v32, v33, v34, 0);
    return v31;
  }

  v5 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v5)
  {
    v32 = kCFAllocatorDefault;
    v33 = kCFErrorDomainMach;
    v34 = -536870911;
    goto LABEL_13;
  }

  v6 = v5;
  v52 = 0u;
  v53 = 0u;
  *md = 0u;
  *buffer = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  CFProperty = IORegistryEntryCreateCFProperty(v5, @"crypto-hash-method", kCFAllocatorDefault, 0);
  v15 = CFProperty;
  if (CFProperty)
  {
    if (*CFDataGetBytePtr(CFProperty) != 828467315)
    {
      if (*CFDataGetBytePtr(v15) != 0x3438332D32616873)
      {
        v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"img4CryptoHashMethodData not recognized: %@", v15);
        if (CFStringGetCString(v23, buffer, 128, 0x8000100u))
        {
          sub_100012C38("%s\n", v24, v25, v26, v27, v28, v29, v30, buffer);
        }

        *a2 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 4, 0);
        if (v23)
        {
          CFRelease(v23);
        }

        IOObjectRelease(v6);
        v31 = 0;
LABEL_20:
        CFRelease(v15);
        return v31;
      }

      sub_100012C38("crypto-hash-method found. Using SHA2-384\n", v16, v17, v18, v19, v20, v21, v22, v42);
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      CC_SHA384(BytePtr, Length, md);
      v38 = 48;
      goto LABEL_17;
    }

    v35 = "crypto-hash-method found. Using SHA1\n";
  }

  else
  {
    v35 = "crypto-hash-method not found, defaulting to SHA1\n";
  }

  sub_100012C38(v35, v8, v9, v10, v11, v12, v13, v14, v42);
  v36 = CFDataGetBytePtr(a1);
  v37 = CFDataGetLength(a1);
  CC_SHA1(v36, v37, md);
  v38 = 20;
LABEL_17:
  v31 = CFDataCreate(kCFAllocatorDefault, md, v38);
  if (!v31)
  {
    *a2 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 1, 0);
  }

  IOObjectRelease(v6);
  if (v15)
  {
    goto LABEL_20;
  }

  return v31;
}

void sub_100018088(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[DRAnalytics _queue_removeEvent:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: REMOVE_EVENT: Event %{public}@ does not exist. Nothing to do.", &v2, 0x16u);
}

void sub_100018114(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5 = 136446722;
  v6 = "DREIsRunningInDeviceRecoveryEnvironment";
  v7 = 1024;
  v8 = v2;
  v9 = 2082;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s: Unable to determine OS environment: %d:(%{public}s)\n", &v5, 0x1Cu);
}

void sub_1000181D0(os_log_t log)
{
  v1 = 136446210;
  v2 = "DREIsRunningInDeviceRecoveryEnvironment";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Failed to allocate buffer to read OSEnvironment value. Assuming running in normal mode", &v1, 0xCu);
}

void sub_100018254(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136446466;
  v5 = "DREIsRunningInDeviceRecoveryEnvironment";
  v6 = 2082;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s: Failed to determine size of buffer to read OSEnvironment value(%{public}s). Assuming running in normal mode", &v4, 0x16u);
}

void sub_1000182FC(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = sub_1000118BC();
  if (sub_1000025E8(v4))
  {
    sub_1000025B8();
    sub_10000258C();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x16u);
  }
}

void sub_10001841C(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = sub_1000118BC();
  if (sub_1000025E8(v4))
  {
    sub_1000025B8();
    sub_10000258C();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x16u);
  }
}

void sub_10001853C(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }

  *a1 = v1;
}

void sub_100018614(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }

  *a1 = v1;
}

void sub_1000186EC()
{
  v2[0] = 136447490;
  sub_1000025D0();
  sub_1000033CC();
  v3 = "";
  sub_100003398();
  v4 = 49;
  sub_1000033D8(&_mh_execute_header, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

void sub_100018794(uint64_t *a1)
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136447490;
    v6 = "[DeviceRecoveryOverrideService startService]";
    v7 = 2082;
    v8 = "[DeviceRecoveryOverrideService startService]";
    v9 = 2082;
    v10 = "listener != nil";
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryOverrideService.m";
    v15 = 1026;
    v16 = 81;
    sub_1000033D8(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v5);
  }

  v4 = [NSString stringWithFormat:@"Unable to create NSXPCListener for service: %@", @"com.apple.DeviceRecoveryOverrideService"];
  *a1 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"Unable to create NSXPCListener for service: %@", 0, "[DeviceRecoveryOverrideService startService]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryOverrideService.m", 0x51u);
}

void sub_100018900()
{
  v0 = sub_1000118BC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v5 = 136447490;
    v6 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v7 = 2082;
    v8 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v9 = 2082;
    v10 = "[recoveryOverrideEntitlement isKindOfClass:[NSNumber class]]";
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryOverrideService.m";
    v15 = 1026;
    v16 = 115;
    sub_1000033D8(&_mh_execute_header, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v5);
  }

  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 136446722;
    v6 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v7 = 2114;
    v8 = @"com.apple.DeviceRecovery.Override";
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: entitlement '%{public}@' on client is not an NSNumber: %{public}@", &v5, 0x20u);
  }
}

void sub_100018A84()
{
  v0 = sub_1000118BC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100018B4C()
{
  v2[0] = 136447490;
  sub_1000025D0();
  sub_1000033CC();
  v3 = "";
  sub_100003398();
  v4 = 114;
  sub_1000033D8(&_mh_execute_header, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

void sub_100018BF4(os_log_t log)
{
  v1 = 136446466;
  v2 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
  v3 = 2114;
  v4 = @"com.apple.DeviceRecovery.Override";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: override client is missing entitlement: '%{public}@'", &v1, 0x16u);
}

void sub_100018C8C()
{
  v0 = sub_1000118BC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }
}

void sub_100018D54(NSObject **a1, _BYTE *a2)
{
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v7 = "";
    sub_100003398();
    v8 = 101;
    sub_1000033D8(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6);
  }

  *a2 = 0;
  *a1 = v4;
}

void sub_100018E38(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_100018EF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = __error();
  strerror(*v2);
  sub_10000EC44();
  sub_10000EB90();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100018F90(uint64_t *a1, int __errnum)
{
  v2 = *a1;
  strerror(__errnum);
  sub_10000EC44();
  sub_10000EB90();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100019024(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = (*a2 >> 8);
  sub_10000ECD4();
  sub_10000EBDC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_1000190B4(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *a2 & 0x7F;
  sub_10000ECD4();
  sub_10000EBDC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100019144(uint64_t *a1)
{
  v1 = *a1;
  v2 = __error();
  strerror(*v2);
  sub_10000EC44();
  sub_10000EB90();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1000191DC(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB70(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  v10 = sub_1000118BC();
  if (sub_1000025E8(v10))
  {
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x12u);
  }
}

void sub_100019320(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }
}

void sub_1000193F0(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }
}

void sub_100019548(uint64_t *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    v6[0] = 136447490;
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    *(&v6[13] + 2) = 482;
    sub_1000033D8(&_mh_execute_header, v1, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6);
  }

  v4 = [NSString stringWithFormat:@"Unable to create NSXPCListener for service: %@", @"com.apple.DeviceRecoveryService"];
  *a1 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"Unable to create NSXPCListener for service: %@", 0, "[DeviceRecoveryService startService]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x1E2u);
}

void sub_100019688(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1000118BC();
  if (sub_10000ED4C(v7))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17, v18, v19, v20, v21, v22, 2u);
  }

  *a2 = [NSString stringWithFormat:@"Failed to create mount point for system data volume: %@", a1];
  v8 = sub_10000ED84();
  *a3 = sub_100002034(v8, v9, v10, v11, v12, v13, v14, 0x209u);
}

void sub_1000197BC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1000118BC();
  if (sub_10000ED4C(v7))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17, v18, v19, v20, v21, v22, 2u);
  }

  *a2 = [NSString stringWithFormat:@"Failed to mount system data volume: %@", a1];
  v8 = sub_10000ED84();
  *a3 = sub_100002034(v8, v9, v10, v11, v12, v13, v14, 0x20Cu);
}

void sub_1000198F0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

void sub_1000199BC()
{
  sub_10000EC14();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_100019A80()
{
  sub_10000ED78();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

void sub_100019B54()
{
  sub_10000EDAC();
  object_getClassName(v0);
  sub_10000EB4C();
  sub_10000EC60();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100019BEC()
{
  sub_10000EDAC();
  object_getClassName(v0);
  sub_10000EB4C();
  sub_10000EC60();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

uint64_t sub_100019C84()
{
  sub_10000ECEC();
  v2 = v1;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    *(&v7[13] + 2) = 620;
    sub_1000033D8(&_mh_execute_header, v2, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  v3 = [NSString stringWithFormat:@"no state file: %@", @"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist"];
  *v0 = v3;
  v4 = sub_100002034(@"DeviceRecoveryError", 1, v3, @"no state file: %@", 0, "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x26Cu);
  return sub_10000EC08(v4);
}

uint64_t sub_100019DBC()
{
  sub_10000EC14();
  v2 = sub_1000118BC();
  if (sub_10000ECA0(v2))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v6, v7, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v8, v9, v10, v11, 2u);
  }

  v3 = [NSString stringWithFormat:@"OS Recovery Phase not supported in DRE"];
  *v0 = v3;
  v4 = sub_100002034(@"DeviceRecoveryError", 1, v3, @"OS Recovery Phase not supported in DRE", 0, "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x269u);
  return sub_10000EC08(v4);
}

void sub_100019FE0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

BOOL sub_10001A05C()
{
  sub_10000ED78();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, 2u);
  }

  v4 = [NSString stringWithFormat:@"no connection from daemon to brain"];
  sub_10000EC2C();
  v12 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0x2CAu);
  *v1 = v12;

  return v12 == 0;
}

void sub_10001A1A0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A21C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A298()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A314()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001A3C0(uint64_t a1, NSObject **a2, void *a3)
{
  v7 = sub_1000118BC();
  if (sub_10000ED4C(v7))
  {
    v9[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v10 = "";
    sub_100003398();
    v11 = 780;
    sub_1000033D8(&_mh_execute_header, v3, v8, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v9);
  }

  *a3 = a1;
  *a2 = v3;
}

void sub_10001A4A0()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001A54C()
{
  sub_10000ECEC();
  [v0 processIdentifier];
  v1 = sub_10000EDB8();
  sub_10000EB10();
  sub_10000EB90();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10001A5F8()
{
  sub_10000ED78();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

void sub_10001A6C8()
{
  sub_10000ED78();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

void sub_10001A798(uint64_t *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = [NSString stringWithFormat:@"Unable to create brain service interface"];
  *a1 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"Unable to create brain service interface", 0, "[DeviceRecoveryService connectToRecoveryBrain]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x3A0u);
}

void sub_10001A8C4()
{
  sub_10000ECEC();
  v4 = v3;
  v5 = sub_1000118BC();
  if (sub_10000ED4C(v5))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v8, v9, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v10, v11, v12, v13, v14, v15, 2u);
  }

  v6 = [v4 brainServiceName];
  *v1 = v6;
  v7 = [NSString stringWithFormat:@"Unable to create brain service connection: %@", v6];
  *v0 = sub_100002034(@"DeviceRecoveryError", 3, v7, @"Unable to create brain service connection: %@", 0, "[DeviceRecoveryService connectToRecoveryBrain]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x39Bu);
}

void sub_10001AA0C()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001AAD4()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001AB9C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001AC18()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001AC94()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

void sub_10001AD5C()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001AE24()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

uint64_t sub_10001AEEC()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"unable to get brain service object"];
  sub_10000EC20(v2);
  v3 = sub_10000EBB4();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x4B5u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001B000()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"trying to talk to brain without a connection"];
  sub_10000EC20(v2);
  v3 = sub_10000EBB4();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x4AAu);
  return sub_10000EC08(v10);
}

void sub_10001B114()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001B1DC()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001B258()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B304()
{
  sub_10000EB10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10001B38C()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B438()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001B4B8()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B564()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001B5E4()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B690()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B73C()
{
  sub_10000EC14();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001B800()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001B8C8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10001B95C()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

uint64_t sub_10001BA08()
{
  sub_10000ECEC();
  v2 = v1;
  v3 = sub_1000118BC();
  if (sub_10000ED4C(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, v20, v21, 2u);
  }

  v4 = [NSString stringWithFormat:@"DRESetNVRAMProperty() call failed: %d", v2];
  sub_10000EC20(v4);
  v5 = sub_10000ED98();
  v12 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0x52Bu);
  return sub_10000EC08(v12);
}

uint64_t sub_10001BB24()
{
  sub_10000ECEC();
  v2 = v1;
  v3 = sub_1000118BC();
  if (sub_10000ED4C(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, v20, v21, 2u);
  }

  v4 = [NSString stringWithFormat:@"reboot3() call failed: %d", v2];
  sub_10000EC20(v4);
  v5 = sub_10000ED98();
  v12 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0x542u);
  return sub_10000EC08(v12);
}

uint64_t sub_10001BC40()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"no current connection/client"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x51Du);
  return sub_10000EC08(v10);
}

void sub_10001BD5C(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1000118BC();
  if (sub_10000ECA0(v5))
  {
    v8[0] = 136447490;
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    *(&v8[13] + 2) = 1390;
    sub_1000033D8(&_mh_execute_header, v2, v7, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v8);
  }

  v6 = [NSString stringWithFormat:@"failed to set NVRAM in IORegistry: %d", a1];
  *a2 = sub_100002034(@"DeviceRecoveryError", 1, v6, @"failed to set NVRAM in IORegistry: %d", 0, "[DeviceRecoveryService disableRecoveryAutoBoot:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x56Eu);
}

uint64_t sub_10001BE98()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v2);
  v3 = sub_10000EBC8();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x5B7u);
  return sub_10000EC08(v10);
}

void sub_10001BFAC()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001C058(void *a1)
{
  [a1 doubleValue];
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

uint64_t sub_10001C0F0()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"data volume already mounted"];
  sub_10000EC20(v2);
  v3 = sub_10000EBA0();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x5B1u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001C204()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"user already authenticated"];
  sub_10000EC20(v2);
  v3 = sub_10000EBA0();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x5B0u);
  return sub_10000EC08(v10);
}

void sub_10001C318()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001C3E0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_10001C45C()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x6C8u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001C578()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x6C9u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001C694()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v2);
  v3 = sub_10000EBC8();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x6D0u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001C7A8()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"network already reported as available"];
  sub_10000EC20(v2);
  v3 = sub_10000EBA0();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x6CAu);
  return sub_10000EC08(v10);
}

void sub_10001C8BC()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

void sub_10001C984()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_10001CA00()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x718u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001CB1C()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x719u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001CC38()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"network not reported as available"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x71Au);
  return sub_10000EC08(v10);
}

uint64_t sub_10001CD54()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v2);
  v3 = sub_10000EBC8();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x721u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001CF68()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"recovery brain already loaded"];
  sub_10000EC20(v2);
  v3 = sub_10000EBA0();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x71Bu);
  return sub_10000EC08(v10);
}

void sub_10001D07C()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001D144()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

id sub_10001D1C0(void *a1)
{
  v2 = sub_1000118BC();
  if (sub_10000ED34(v2))
  {
    v7[0] = 136447490;
    sub_10000ED1C();
    v8 = "[issues1 isKindOfClass:[NSArray class]]";
    v9 = v4;
    v10 = "";
    sub_10000ED64();
    v11 = 1907;
    sub_1000033D8(&_mh_execute_header, v1, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  return a1;
}

void sub_10001D2A4()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v5, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7, v8, v9, v10, 2u);
  }

  v4 = v1;
}

uint64_t sub_10001D378()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7C3u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001D494()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7C4u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001D5B0()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"network not reported as available"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7C5u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001D6CC()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"recovery brain not loaded"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7C6u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001D7E8()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v2);
  v3 = sub_10000EBC8();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7CEu);
  return sub_10000EC08(v10);
}

uint64_t sub_10001D8FC()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"no connection from daemon to brain"];
  sub_10000EC20(v2);
  v3 = sub_10000EBB4();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7D9u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001DA10()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"issues scan already complete"];
  sub_10000EC20(v2);
  v3 = sub_10000EBA0();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7C8u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001DB24()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"no connection to recovery brain"];
  sub_10000EC20(v2);
  v3 = sub_10000EBB4();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x7C7u);
  return sub_10000EC08(v10);
}

void sub_10001DC38()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

void sub_10001DD00()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DD7C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DDF8()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DE74()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DEF0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DF6C()
{
  sub_10000EDAC();
  object_getClassName(v0);
  sub_10000EB4C();
  sub_10000EC60();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

id sub_10001E000(void *a1)
{
  v2 = sub_1000118BC();
  if (sub_10000ED34(v2))
  {
    v7[0] = 136447490;
    sub_10000ED1C();
    v8 = "processedResults != nil";
    v9 = v4;
    v10 = "";
    sub_10000ED64();
    v11 = 2105;
    sub_1000033D8(&_mh_execute_header, v1, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  return a1;
}

uint64_t sub_10001E0E4()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x868u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E200()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x869u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E31C()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"network not reported as available"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x86Au);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E438()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"recovery brain not loaded"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x86Bu);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E554()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"issues scan not complete"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x86Cu);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E670()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"no recoverable issues found"];
  sub_10000EC20(v2);
  sub_10000EC2C();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x86Du);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E78C()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v2);
  v3 = sub_10000EBC8();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x875u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E8A0()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"no connection from daemon to brain"];
  sub_10000EC20(v2);
  v3 = sub_10000EBB4();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x880u);
  return sub_10000EC08(v10);
}

uint64_t sub_10001E9B4()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"recovery already"];
  sub_10000EC20(v2);
  v3 = sub_10000EBA0();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x86Fu);
  return sub_10000EC08(v10);
}

uint64_t sub_10001EAC8()
{
  sub_10000EC14();
  v1 = sub_1000118BC();
  if (sub_10000ECA0(v1))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v2 = [NSString stringWithFormat:@"no connection to recovery brain"];
  sub_10000EC20(v2);
  v3 = sub_10000EBB4();
  v10 = sub_100002034(v3, v4, v5, v6, v7, v8, v9, 0x86Eu);
  return sub_10000EC08(v10);
}

void sub_10001EBDC()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001ECA4()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001ED20()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EDA4()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EE20()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EE9C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EF18()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001F09C(uint64_t a1, uint64_t a2)
{
  sub_10000ECF8(a1, a2);
  *v3 = 136446722;
  sub_10000ECB8(v4, v5, v3);
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: [DownloadRecoveryBrain]: Failed to download DeviceRecoveryBrain catalog: %{public}@ : %{public}@", v6, 0x20u);
}

void sub_10001F0F8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "[DeviceRecoveryService downloadRecoveryBrain]";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: [DownloadRecoveryBrain]: Failed to query for DeviceRecoveryBrain: (%{public}@)", buf, 0x16u);
}

void sub_10001F1E4(uint64_t a1, uint64_t a2)
{
  sub_10000ECF8(a1, a2);
  *v3 = 136446722;
  sub_10000ECB8(v4, v5, v3);
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: [DownloadRecoveryBrain]: Failed to download DeviceRecoveryBrain asset: %{public}@ : %{public}@", v6, 0x20u);
}

void sub_10001F340()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001F3C0()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001F440()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001F550()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001F5D4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 136446722;
  v8 = "[DRAnalyticsEvent setEventPayloadEntry:value:]";
  v9 = 2114;
  v10 = a1;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s: Event payload data %{public}@ is unsupported type %{public}@. Supported Types: NSString, NSNumber, NSData, NSDate, NSError", &v7, 0x20u);
}

void sub_10001F69C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[DRAnalyticsEvent _queue_setEventPayloadEntry:value:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Tried to set payload entry with missing key or value", &v1, 0xCu);
}

void sub_10001F720(os_log_t log)
{
  v1 = 136446210;
  v2 = "[DRAnalyticsEvent _queue_setEventPayloadEntryToNull:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Tried to set null payload entry with missing key", &v1, 0xCu);
}

void sub_10001F7A4(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "DROverrideDescription";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unknown override name: %{public}@", &v2, 0x16u);
}

void sub_10001F830()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001F8F0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001F9B0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FA70()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FB30()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FBF0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FCB0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FD70()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FE30()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FEF0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_10001FFB0()
{
  v1 = sub_1000118BC();
  if (sub_10000ED34(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, 2u);
  }
}

void sub_100020070()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xDFu);
}

void sub_100020198()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xDDu);
}

void sub_1000202C0()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xD1u);
}

void sub_1000203E8()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    v14[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v14[13] + 2) = 216;
    sub_100010284(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  v4 = [NSString stringWithFormat:@"RecoveryResult override has an invalid value: %d (must be between %d and %d)", v1, 0, 4];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xD8u);
}

void sub_100020514()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xC7u);
}

void sub_10002063C()
{
  sub_10000EC14();
  v2 = sub_1000118BC();
  if (sub_10000ECA0(v2))
  {
    v14 = 136447490;
    v15 = "DRValidateOverride";
    v16 = 2082;
    v17 = "DRValidateOverride";
    v18 = 2082;
    v19 = "((issuesScanResultVal == DROverrideIssuesScanResultNoOverride) || (issuesScanResultVal == DROverrideIssuesScanResultForceFailure) || (issuesScanResultVal == DROverrideIssuesScanResultNoResults) || (issuesScanResultVal == DROverrideIssuesScanResultRequireUserApproval))";
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryOverrides.m";
    v24 = 1026;
    v25 = 205;
    sub_100010284(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v14);
  }

  sub_1000102CC();
  v6 = [v5 stringWithFormat:@"IssuesScanResult override has an invalid value: %d (must be %d, %d, %d or %d)"];
  v7 = sub_100010220();
  *v0 = sub_100002034(v7, v8, v9, v10, v11, v12, v13, 0xCDu);
}

void sub_10002078C()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xBFu);
}

void sub_1000208B4()
{
  sub_10000EC14();
  v2 = sub_1000118BC();
  if (sub_10000ECA0(v2))
  {
    v14[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v14[13] + 2) = 195;
    sub_100010284(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  sub_1000102BC();
  v4 = [v3 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xC3u);
}

void sub_1000209D8()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xB7u);
}

void sub_100020B00()
{
  sub_10000EC14();
  v2 = sub_1000118BC();
  if (sub_10000ECA0(v2))
  {
    v14[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v14[13] + 2) = 187;
    sub_100010284(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  sub_1000102BC();
  v4 = [v3 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xBBu);
}

void sub_100020C24()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xAFu);
}

void sub_100020D4C()
{
  sub_10000EC14();
  v2 = sub_1000118BC();
  if (sub_10000ECA0(v2))
  {
    v14[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v14[13] + 2) = 179;
    sub_100010284(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  sub_1000102BC();
  v4 = [v3 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xB3u);
}

void sub_100020E70()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v19, 2u);
  }

  v4 = [NSString stringWithFormat:@"%@", v1];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xABu);
}

void sub_100020F90()
{
  sub_10000EC14();
  v3 = sub_1000118BC();
  if (sub_10000ECA0(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18, v20, 2u);
  }

  ClassName = object_getClassName(v1);
  v4 = [sub_1000102B0() stringWithFormat:ClassName];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xA0u);
}

void sub_1000210B8()
{
  sub_10000EC14();
  v2 = sub_1000118BC();
  if (sub_10000ECA0(v2))
  {
    v14[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v14[13] + 2) = 165;
    sub_100010284(&_mh_execute_header, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  sub_1000102CC();
  v4 = [v3 stringWithFormat:@"BrainType override has an invalid value: %d (must be %d, %d or %d)"];
  v5 = sub_100010220();
  *v0 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0xA5u);
}

void sub_1000211DC()
{
  v2[0] = 136447490;
  sub_1000025D0();
  v3 = "node != IO_OBJECT_NULL";
  v4 = v0;
  v5 = "";
  sub_100003398();
  v6 = 22;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2, 0x3Au);
}

void sub_100021290(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB5C();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20, 2u);
  }

  v5 = [NSString stringWithFormat:@"unable to fetch property for key: %@", a1];
  v6 = sub_100010994();
  *a2 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0x35u);
}

void sub_1000213C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB5C();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20, 2u);
  }

  v5 = [NSString stringWithFormat:@"unable to fetch io-reg entry for %s", a1];
  v6 = sub_100010994();
  *a2 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0x2Fu);
}

void sub_1000214F8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136447490;
    sub_1000025D0();
    v4 = "nvramService != IO_OBJECT_NULL";
    v5 = v2;
    v6 = "";
    sub_100003398();
    v7 = 122;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, 0x3Au);
  }
}

void sub_1000215E0(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = sub_1000118BC();
  if (sub_1000025E8(v4))
  {
    v10 = [a1 description];
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x20u);
  }
}

void sub_10002171C(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = sub_1000118BC();
  if (sub_1000025E8(v4))
  {
    object_getClassName(a1);
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);
  }
}

void sub_100021850(void *a1)
{
  v6 = [a1 DREStringFromEntryReason:0];
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_100021918(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = sub_1000118BC();
  if (sub_1000025E8(v4))
  {
    [a1 length];
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);
  }
}

void sub_100021A44()
{
  sub_1000025D0();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_100021AF4(void *a1)
{
  object_getClassName(a1);
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100021B8C()
{
  sub_1000025D0();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_100021C3C(void *a1)
{
  [a1 unsignedIntValue];
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100021CD4(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = sub_1000118BC();
  if (sub_1000025E8(v4))
  {
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  *a1 = v1;
}

void sub_100021E98()
{
  v0 = sub_1000118BC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000118B0();
    sub_10001188C();
    sub_10000EB90();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  v1 = sub_1000118BC();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB90();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }
}

void sub_100022074(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }
}

void sub_100022140(void *a1)
{
  v3 = sub_1000118BC();
  if (sub_1000025E8(v3))
  {
    v12 = "[DeviceRecoveryOverrideClient init]";
    v13 = 2082;
    v14 = "[DeviceRecoveryOverrideClient init]";
    v15 = 2082;
    v16 = "self.serviceConnection != nil";
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecovery_Framework/DeviceRecoveryOverrideClient.m";
    v21 = 1026;
    v22 = 46;
    sub_100012BC0(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  v10 = sub_1000118BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 136446466;
    v12 = "[DeviceRecoveryOverrideClient init]";
    v13 = 2114;
    v14 = @"com.apple.DeviceRecoveryOverrideService";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: Couldn't connect to service: %{public}@", &v11, 0x16u);
  }
}

void sub_10002229C()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  sub_10000EC94();
}

void sub_100022350()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  sub_10000EC94();
}

void sub_100022478(NSObject *a1)
{
  if (sub_100012BFC(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v4 = "";
    sub_100003398();
    v5 = 121;
    sub_1000033D8(&_mh_execute_header, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

void sub_100022534()
{
  v3[0] = 136446722;
  sub_10000EB10();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: Error setting override: %{public}@ -> %{public}@", v3, 0x20u);
}

void sub_1000225C0(NSObject *a1)
{
  if (sub_100012BFC(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v4 = "";
    sub_100003398();
    v5 = 116;
    sub_1000033D8(&_mh_execute_header, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

void sub_1000226F0(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v8 = "";
    sub_100003398();
    v9 = 110;
    sub_1000033D8(&_mh_execute_header, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

void sub_1000227CC(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v8 = "";
    sub_100003398();
    v9 = 105;
    sub_1000033D8(&_mh_execute_header, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

void sub_10002291C()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  sub_10000EC94();
}

void sub_1000229D0()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  sub_10000EC94();
}

void sub_100022AF8()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  sub_10000EC94();
}

void sub_100022BB8()
{
  v0 = sub_1000118BC();
  if (sub_1000025E8(v0))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  sub_10000EC94();
}

char *copy_tagged_apfs_system_snapshot_name(const void *a1, CFErrorRef *a2)
{
  bzero(buffer, 0x100uLL);
  if (a1)
  {
    v4 = tickethelper_copy_hash_data(a1, a2);
    if (!v4)
    {
      sub_100012C38("%s: could not copy hash from data", v5, v6, v7, v8, v9, v10, v11, "copy_tagged_apfs_system_snapshot_name");
      return 0;
    }
  }

  else
  {
    v4 = tickethelper_copy_root_hash(a2);
    if (!v4)
    {
      sub_100012C38("%s: could not copy root ticket hash from device tree", v12, v13, v14, v15, v16, v17, v18, "copy_tagged_apfs_system_snapshot_name");
      return 0;
    }
  }

  v19 = v4;
  v20 = tickethelper_copy_hash_hex_string(v4, a2);
  CFRelease(v19);
  if (!v20)
  {
    return 0;
  }

  v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", "com.apple.os.update-", v20);
  if (!v21)
  {
    sub_100012C38("%s: could not create snapshot name from ap ticket", v22, v23, v24, v25, v26, v27, v28, "copy_tagged_apfs_system_snapshot_name");
    if (a2)
    {
      *a2 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, 12, 0);
    }

    CFRelease(v20);
    return 0;
  }

  v29 = v21;
  if (CFStringGetCString(v21, buffer, 256, 0x8000100u))
  {
    v37 = strdup(buffer);
  }

  else
  {
    sub_100012C38("%s: could not convert snapshot name to c string", v30, v31, v32, v33, v34, v35, v36, "copy_tagged_apfs_system_snapshot_name");
    v37 = 0;
    if (a2)
    {
      *a2 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, 34, 0);
    }
  }

  CFRelease(v20);
  CFRelease(v29);
  return v37;
}

BOOL create_tagged_apfs_system_snapshot(const char *a1, const void *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "create_tagged_apfs_system_snapshot");
    if (a3)
    {
      v18 = kCFAllocatorDefault;
      v19 = kCFErrorDomainPOSIX;
      v20 = 22;
      goto LABEL_7;
    }

    return 0;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v11, v12, v13, v14, v15, v16, v17, v55);
    if (a3)
    {
      v18 = kCFAllocatorDefault;
      v19 = kCFErrorDomainPOSIX;
      v20 = 45;
LABEL_7:
      v21 = 0;
      *a3 = CFErrorCreate(v18, v19, v20, 0);
      return v21;
    }

    return 0;
  }

  v22 = copy_tagged_apfs_system_snapshot_name(a2, a3);
  if (!v22)
  {
    return 0;
  }

  v29 = v22;
  v30 = delete_apfs_system_snapshot(a1, v22, v23, v24, v25, v26, v27, v28);
  if (v30 != 2)
  {
    if (v30)
    {
      strerror(v30);
      sub_100012C38("%s: unexpected error %d deleting snapshot %s: %s", v39, v40, v41, v42, v43, v44, v45, "create_tagged_apfs_system_snapshot");
    }

    else
    {
      sub_100012C38("%s: existing snapshot %s was deleted", v31, v32, v33, v34, v35, v36, v37, "create_tagged_apfs_system_snapshot");
    }
  }

  apfs_system_snapshot = create_apfs_system_snapshot(a1, v29, v32, v33, v34, v35, v36, v37);
  v21 = apfs_system_snapshot == 0;
  if (apfs_system_snapshot)
  {
    v54 = apfs_system_snapshot;
    sub_100012C38("%s: tagging system volume snapshot %s failed", v47, v48, v49, v50, v51, v52, v53, "create_tagged_apfs_system_snapshot");
    if (a3)
    {
      *a3 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, v54, 0);
    }
  }

  free(v29);
  return v21;
}