void sub_100001864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = DDRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008B28(v4, v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id DDRLogForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    sub_100008BB4();
  }

  if (qword_10001C530 != -1)
  {
    sub_100008BA0();
  }

  v2 = qword_10001C510[a1];

  return v2;
}

void sub_10000194C(id a1)
{
  v1 = os_log_create("com.apple.devicedatareset.xpcserviceworker", "DeviceDataResetDefault");
  v2 = qword_10001C510[0];
  qword_10001C510[0] = v1;

  v3 = os_log_create("com.apple.devicedatareset.xpcserviceworker", "DeviceDataResetProgress");
  v4 = qword_10001C518;
  qword_10001C518 = v3;

  v5 = os_log_create("com.apple.devicedatareset.daemon", "DeviceDataResetDaemon");
  v6 = qword_10001C520;
  qword_10001C520 = v5;

  qword_10001C528 = os_log_create("com.apple.devicedatareset.framework", "DeviceDataResetFramework");

  _objc_release_x1();
}

void sub_100002258(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002650(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 leaveClique:&v6];
  v4 = v6;
  v5 = DDRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Octagon removal complete. Succeeded: %{BOOL}d, Error: %{public}@", buf, 0x12u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100002900(id a1)
{
  v1 = +[CLLocationManager sharedManager];
  [v1 resetApps];
}

void sub_100002C20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DDRLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008ED4(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sign out Apple Accounts success", v7, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100002DB8(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void sub_100003298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000032D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _incrementCurrentResetTaskProgress];
}

id _locale()
{
  v0 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v0;
}

id _languages()
{
  v0 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v0;
}

id _keyboards()
{
  v0 = CFPreferencesCopyValue(@"AppleKeyboards", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v0;
}

uint64_t sub_100004BFC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  [v0 synchronize];

  return CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

void sub_1000050FC(id a1)
{
  v1 = DDRLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "I am invalidated at DDRWorkerServer!", v2, 2u);
  }
}

void sub_100005168(id a1)
{
  v1 = DDRLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "I am interrupted at DDRWorkerServer!", v2, 2u);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(DDRWorkerServer);
  [(DDRWorkerServer *)v3 start];

  return 0;
}

void sub_1000055A8(id a1)
{
  v1 = +[TUCallCenter sharedInstance];
  [v1 disconnectAllCalls];
}

void sub_100005C84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DDRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000909C(v3, v4);
    }
  }

  [*(a1 + 32) invalidate];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000060B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000060D0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained setFetchError:v5];
  }

  else
  {
    [WeakRetained setPairedDevice:v8];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_100006418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = DDRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100009114(a1, v3);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100006E28(uint64_t a1, unint64_t a2)
{
  if (a2 > 6)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_100014798[a2];
  }

  v9 = [NSString stringWithFormat:@"com.apple.devicedatareset.%@-reset-%@", a1, v3];
  v4 = BiomeLibrary();
  v5 = [v4 Discoverability];
  v6 = [v5 Signals];

  v7 = [[BMDiscoverabilitySignals alloc] initWithContentIdentifier:v9 context:0 osBuild:0 userInfo:0];
  v8 = [v6 source];
  [v8 sendEvent:v7];
}

void _removeFiles(void *a1)
{
  v8 = a1;
  v1 = NSHomeDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Media"];

  v3 = [v8 count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v8 objectAtIndex:v5];

      [v7 hasPrefix:v2];
      v6 = v7;
      [v7 fileSystemRepresentation];
      CPDeleteTree();
      ++v5;
    }

    while (v4 != v5);
  }
}

void removeSubFiles(void *a1, void *a2)
{
  v19 = a1;
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 contentsOfDirectoryAtPath:v19 error:0];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v12;
      v14 = v11;
      v12 = [v5 objectAtIndex:v9];

      v11 = [v19 stringByAppendingPathComponent:v12];

      if (!v3 || ([v3 containsObject:v12] & 1) == 0)
      {
        v15 = [v11 stringByAppendingPathExtension:@"old"];

        v16 = [v11 fileSystemRepresentation];
        v17 = [v15 fileSystemRepresentation];
        rename(v16, v17, v18);
        [v6 addObject:v15];
        v10 = v15;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  _removeFiles(v6);
}

void sub_1000085B8(uint64_t a1)
{
  v2 = DDRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset with task: %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 40) progress];
  v5 = [*(a1 + 32) identifier];
  [*(a1 + 32) estimatedTimeOfCompletion];
  [v4 noteTaskBeginningWithName:v5 duration:?];

  [*(a1 + 32) run];
  v6 = DDRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "reset task: %@ finished", &v9, 0xCu);
  }

  v8 = [*(a1 + 40) progress];
  [v8 noteTaskCompleted];
}

void sub_1000087D4(uint64_t a1)
{
  v2 = DDRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "progress report percentage completion: %lf", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [*(a1 + 32) resetScheduler];
  [v4 resetWithMode:objc_msgSend(v5 didUpdateWithProgress:{"mode"), *(a1 + 40)}];
}

void sub_10000894C(uint64_t a1)
{
  v2 = DDRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "progress report completed all tasks", v7, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [*(a1 + 32) resetScheduler];
  [v3 resetWithMode:objc_msgSend(v4 didUpdateWithProgress:{"mode"), 1.0}];

  v5 = [*(a1 + 32) resetScheduler];
  DDRDonateResetSignalComplete([v5 mode]);

  v6 = [*(a1 + 32) completionBlock];
  v6[2](v6, 0);
}

void sub_100008B28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error terminating application: %@", &v2, 0xCu);
}

void sub_100008BE0()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002278();
  sub_100002258(&_mh_execute_header, v1, v2, "SCPreferencesUnlock failed: %{public}s", v3, v4, v5, v6, v7);
}

void sub_100008C5C()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002278();
  sub_100002258(&_mh_execute_header, v1, v2, "SCPreferencesApplyChanges failed: %{public}s", v3, v4, v5, v6, v7);
}

void sub_100008CD8()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002278();
  sub_100002258(&_mh_execute_header, v1, v2, "SCPreferencesCommitChanges failed: %{public}s", v3, v4, v5, v6, v7);
}

void sub_100008D54()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002278();
  sub_100002258(&_mh_execute_header, v1, v2, "SCPreferencesPathSetValue failed %{public}s", v3, v4, v5, v6, v7);
}

void sub_100008DD0()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100002278();
  sub_100002258(&_mh_execute_header, v1, v2, "SCPreferencesLock failed: %{public}s", v3, v4, v5, v6, v7);
}

void sub_100008ED4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Apple Account signout failed with error: %{public}@", &v2, 0xCu);
}

void sub_100008F90(int a1, int a2, NSObject *a3)
{
  v6 = +[NSThread callStackReturnAddresses];
  v7[0] = 67109634;
  v7[1] = a1;
  v8 = 1024;
  v9 = a2;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "CTServerConnection returned error: (%i, %i). Destroying connection. (Callstack: %{public}@)", v7, 0x18u);
}

void sub_10000909C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to regenerate Rapport self identity: %@", &v2, 0xCu);
}

void sub_100009114(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed removing pairedpeer %@", &v3, 0xCu);
}

void sub_1000091D4(int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_ResetAdHocCerts: SecItemDelete failed: %ld", &v2, 0xCu);
}

void sub_100009250(int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_ResetWISPr: SecItemDelete failed: %ld", &v2, 0xCu);
}