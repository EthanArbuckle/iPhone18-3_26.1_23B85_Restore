void sub_100002DB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100003460(uint64_t a1)
{
  v2 = [DMPluginSpecificUtilitiesManager utilitiesForPluginIdentifier:*(a1 + 32)];
  v3 = [v2 activity];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (v3)
  {
    os_activity_scope_enter(v3, &state);
  }

  _DMLogFunc();
  v4 = _DMPluginSignpostLog();
  if (os_signpost_enabled(v4))
  {
    v5 = *(a1 + 40);
    *buf = 138543362;
    v27 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "loadAndPerformMigration", "plugin=%{signpost.description:attribute, public}@", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [DataClassMigrator dataClassMigratorForBundleAtPath:*(a1 + 48)];
  [v7 setContext:*(a1 + 56)];
  [v7 setUserDataDisposition:*(a1 + 112)];
  [v7 setRestoredBackupBuildVersion:*(a1 + 64)];
  [v7 setRestoredBackupProductType:*(a1 + 72)];
  [v7 setRestoredBackupDeviceName:*(a1 + 80)];
  v8 = [v7 userDataDisposition];
  v9 = [v7 restoredBackupBuildVersion];
  v10 = [v7 restoredBackupProductType];
  v24 = [v7 restoredBackupDeviceName];
  v23 = v8;
  _DMLogFunc();

  if (*(a1 + 116))
  {
    v11 = 1;
  }

  else
  {
    v12 = [DMMigrationPluginWrapperWatchdog alloc];
    v13 = [v7 dmBundleIdentifier];
    v14 = [(DMMigrationPluginWrapperWatchdog *)v12 initWithPluginBundleIdentifier:v13 backupDeviceUUID:*(a1 + 88)];

    [(DMMigrationPluginWrapperWatchdog *)v14 resume];
    _DMLogFunc();
    v15 = [v7 performMigration];
    v16 = [DMInducedPluginFailureManager alloc];
    v17 = +[DMEnvironment sharedInstance];
    v18 = [v16 initWithEnvironment:v17];
    v19 = [v18 shouldInduceFailureForPluginIdentifier:*(a1 + 32)];

    v11 = (v19 ^ 1) & v15;
    [(DMMigrationPluginWrapperWatchdog *)v14 cancel];
  }

  objc_autoreleasePoolPop(v6);
  v20 = _DMPluginSignpostLog();
  if (os_signpost_enabled(v20))
  {
    v21 = *(a1 + 40);
    *buf = 138543362;
    v27 = v21;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "loadAndPerformMigration", "plugin=%{signpost.description:attribute, public}@", buf, 0xCu);
  }

  if (v3)
  {
    os_activity_scope_leave(&state);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 96));
  xpc_dictionary_set_BOOL(reply, "migrationResult", v11);
  xpc_connection_send_message(*(*(a1 + 104) + OBJC_IVAR___DMXPCConnection__connection), reply);
}

void sub_100003804(id a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = sub_1000038F4;
  v3[4] = sub_100003904;
  v4 = os_transaction_create();
  v1 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000390C;
  block[3] = &unk_10000C340;
  block[4] = v3;
  dispatch_after(v1, &_dispatch_main_q, block);
  _Block_object_dispose(v3, 8);
}

uint64_t sub_1000038F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000390C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  v3 = _DMLogFunc();

  return _xpc_transaction_exit_clean(v3);
}

void sub_1000039A0(void *a1)
{
  v1 = a1;
  v2 = [[DMMigrationPluginWrapperProxy alloc] initWithConnection:v1];
  _DMLogFunc();
  if (qword_1000152D8 != -1)
  {
    sub_100005E54();
  }

  [qword_1000152C8 lock];
  [qword_1000152D0 addObject:v2];
  [qword_1000152C8 unlock];
  objc_initWeak(&location, v2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003BDC;
  v5[3] = &unk_10000C388;
  objc_copyWeak(&v6, &location);
  [(DMMigrationPluginWrapperProxy *)v2 setInvalidationHandler:v5];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003D00;
  v3[3] = &unk_10000C388;
  objc_copyWeak(&v4, &location);
  [(DMMigrationPluginWrapperProxy *)v2 setInterruptionHandler:v3];
  [(DMMigrationPluginWrapperProxy *)v2 resume];
  _DMLogFunc();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_100003B4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100003B7C(id a1)
{
  v1 = objc_alloc_init(NSLock);
  v2 = qword_1000152C8;
  qword_1000152C8 = v1;

  qword_1000152D0 = [[NSMutableArray alloc] initWithCapacity:1];

  _objc_release_x1();
}

void sub_100003BDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    sub_100003C3C(v3);

    WeakRetained = v4;
  }
}

void sub_100003C3C(void *a1)
{
  v1 = a1;
  _DMLogFunc();
  [qword_1000152C8 lock];
  [qword_1000152D0 removeObject:v1];
  if (![qword_1000152D0 count])
  {
    _DMLogFunc();
  }

  [qword_1000152C8 unlock];
  _DMLogFunc();
}

void sub_100003D00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    sub_100003C3C(v3);

    WeakRetained = v4;
  }
}

id sub_100003EE8(uint64_t a1)
{
  [*(a1 + 32) setFireCount:{objc_msgSend(*(a1 + 32), "fireCount") + 1}];
  v2 = [*(a1 + 32) fireCount];
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _migrationPluginDuration5Minutes];
    v4 = 300;
  }

  else
  {
    v5 = [v3 fireCount];
    v6 = *(a1 + 32);
    if (v5 == 2)
    {
      [v6 _migrationPluginDuration10Minutes];
      v4 = 600;
    }

    else
    {
      v7 = [v6 fireCount];
      v8 = *(a1 + 32);
      if (v7 == 3)
      {
        [v8 _migrationPluginDuration20Minutes];
        v4 = 1200;
      }

      else
      {
        if ([v8 fireCount] != 4)
        {
          goto LABEL_10;
        }

        [*(a1 + 32) _migrationPluginDuration40Minutes];
        v4 = 86400;
      }
    }
  }

  [*(a1 + 32) setSecondsBeforeNextFault:v4];
LABEL_10:
  v9 = *(a1 + 32);

  return [v9 secondsBeforeNextFault];
}

void sub_100005E68(void *a1, NSObject *a2)
{
  v3 = [a1 message];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "unknown plugin fault %@", &v4, 0xCu);
}