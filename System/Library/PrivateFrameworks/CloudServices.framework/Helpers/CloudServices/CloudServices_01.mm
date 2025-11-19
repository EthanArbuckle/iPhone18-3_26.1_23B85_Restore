NSObject *sub_100042638()
{
  v0 = +[ACAccountStore defaultStore];
  v1 = [v0 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
  v2 = objc_alloc_init(AKAccountManager);
  [v0 accountsWithAccountType:v1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:buf count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v2 isPrimaryiCloudAccount:v7])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:buf count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = CloudServicesLog();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to fetch the PRK from %@", buf, 0xCu);
    }

    v9 = objc_alloc_init(AKAccountManager);
    v10 = [v9 altDSIDForAccount:v4];
    v18 = 0;
    v11 = [v9 authKitAccountWithAltDSID:v10 error:&v18];
    v12 = v18;
    if (v11)
    {
      v13 = [v9 passwordResetTokenBackupForAccount:v11];
      v14 = CloudServicesLog();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Escrowing an existing PRK", buf, 2u);
        }

        v13 = v13;
        v16 = v13;
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10004E6C4();
        }

        v16 = 0;
      }
    }

    else
    {
      v13 = CloudServicesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10004E704();
      }

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E778();
    }

    v16 = 0;
  }

  return v16;
}

void sub_10004294C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004E650();
    }

    objc_end_catch();
    JUMPOUT(0x10004275CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  +[NSXPCListener enableTransactions];
  v1 = os_transaction_create();
  v2 = os_log_create("com.apple.sbd", "daemon");
  v3 = qword_100084B50;
  qword_100084B50 = v2;

  CloudServicesInitializeLogging();
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67109376;
    v21[1] = getuid();
    v22 = 1024;
    v23 = getgid();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "running as uid %d, gid %d", v21, 0xEu);
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_alloc_init(SBEscrowOperationLogger);
    v6 = qword_100084B40;
    qword_100084B40 = v5;

    v7 = [SecureBackupDaemonLoggerObservers alloc];
    v8 = [(SecureBackupDaemonLoggerObservers *)v7 initWithLogger:qword_100084B40];
    v9 = qword_100084B48;
    qword_100084B48 = v8;
  }

  v10 = [SecureBackupDaemon alloc];
  v11 = [(SecureBackupDaemon *)v10 initWithOperationsLogger:qword_100084B40];
  v12 = qword_100084B28;
  qword_100084B28 = v11;

  v13 = [NSXPCListener alloc];
  v14 = [v13 initWithMachServiceName:SECURE_BACKUP_SERVICE_NAME];
  v15 = qword_100084B30;
  qword_100084B30 = v14;

  [qword_100084B30 setDelegate:qword_100084B28];
  [qword_100084B30 resume];
  v16 = [NSXPCListener alloc];
  v17 = [v16 initWithMachServiceName:SECURE_BACKUP_CONCURRENT_SERVICE_NAME];
  v18 = qword_100084B38;
  qword_100084B38 = v17;

  [qword_100084B38 setDelegate:qword_100084B28];
  [qword_100084B38 resume];

  objc_autoreleasePoolPop(v0);
  v19 = +[NSRunLoop currentRunLoop];
  [v19 run];

  return 0;
}

uint64_t sub_100042C00()
{
  v0 = +[UMUserManager sharedManager];
  v1 = [v0 currentPersona];

  LODWORD(v0) = [v1 isDataSeparatedPersona];
  return v0 ^ 1;
}

uint64_t sub_100043BDC(void *a1, uint64_t a2)
{
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(a1[6], a1[7]);
  v5 = _CloudServicesSignpostLogSystem();
  v6 = v5;
  v7 = a1[6];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = a1[4];
    v12 = 138543618;
    v13 = v8;
    v14 = 1026;
    LODWORD(v15) = a2 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "BackupRestore", " CloudServicesSignpostNameSecItemBackupRestore=%{public,signpost.telemetry:string1,name=CloudServicesSignpostNameSecItemBackupRestore}@  CloudServicesSignpostNameSecItemBackupRestore=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupRestore}d ", &v12, 0x12u);
  }

  v9 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218754;
    v10 = a1[4];
    v13 = a1[6];
    v14 = 2048;
    v15 = Nanoseconds / 1000000000.0;
    v16 = 2114;
    v17 = v10;
    v18 = 1026;
    v19 = a2 == 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BackupRestore  CloudServicesSignpostNameSecItemBackupRestore=%{public,signpost.telemetry:string1,name=CloudServicesSignpostNameSecItemBackupRestore}@  CloudServicesSignpostNameSecItemBackupRestore=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupRestore}d ", &v12, 0x26u);
  }

  return (*(a1[5] + 16))();
}

uint64_t sub_1000452D4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100047700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004775C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100047774(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = CloudServicesLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004F314(v12);
    }

    v15 = 32;
    v16 = v12;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received bottle entropy for id=%@, including in escrow record", &v20, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v15 = 56;
    v16 = v9;
  }

  v17 = *(*(a1 + v15) + 8);
  v18 = v16;
  v19 = *(v17 + 40);
  *(v17 + 40) = v18;
}

uint64_t sub_100047DA0()
{
  if (qword_100084B60 != -1)
  {
    sub_10004F4CC();
  }

  dispatch_sync(qword_100084B68, &stru_1000762F8);
  return dword_100084B58;
}

void sub_100047DE8(id a1)
{
  if (!dword_100084B58)
  {
    dword_100084B58 = sub_100047E54("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_100047E54(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_100047FB8(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void sub_100047FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

void sub_100048060(void *a1)
{
  v1 = [a1 responseDictionary];
  sub_1000029AC(&_mh_execute_header, v2, v3, "Error returned from iCloud: %@", v4, v5, v6, v7, 2u);
}

void sub_1000480E8(void *a1)
{
  v1 = [a1 httpResponse];
  sub_1000029AC(&_mh_execute_header, v2, v3, "HTTP Error: %@", v4, v5, v6, v7, 2u);
}

void sub_100048198(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "currentBootUUID_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to retrieve kern.bootsessionuuid with error code %d", &v2, 0x12u);
}

void sub_100048224(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315906;
  v4 = "currentBootUUID_block_invoke";
  v5 = 1024;
  v6 = a2;
  v7 = 1040;
  v8 = 36;
  v9 = 2080;
  v10 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Error parsing boot uuid, UUID may be zeroes: { code: %d, str: %.36s }", &v3, 0x22u);
}

void sub_1000482D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "authKitAccountWithAltDSID returned error: %@", &v2, 0xCu);
}

void sub_10004835C()
{
  v5 = *__error();
  sub_100003E04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000483E4(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error executing query for daemon container [com.apple.sbd]: %s", &v2, 0xCu);
}

void sub_10004845C()
{
  sub_100003E14();
  objc_opt_class();
  sub_100003DEC();
  sub_100003E04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000484DC()
{
  sub_100003E14();
  objc_opt_class();
  sub_100003DEC();
  sub_100003E04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004855C()
{
  sub_100003E14();
  objc_opt_class();
  sub_100003DEC();
  sub_100003E04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000485DC()
{
  sub_100003E14();
  objc_opt_class();
  sub_100003DEC();
  sub_100003E04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004865C(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_100009068(&_mh_execute_header, a2, a3, "SOSBackupSliceKeyBagCreateFromData() failed: %@", a5, a6, a7, a8, 2u);
}

void sub_1000486D8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No peer for digest %@ found", buf, 0xCu);
}

void sub_100048798(uint64_t a1, sqlite3 **a2)
{
  sqlite3_errmsg(*a2);
  sub_1000090DC();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048820()
{
  sub_10000905C();
  sub_100009084();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004889C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000905C();
  sub_1000090CC();
  sub_100009084();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100048914()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_100009044();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000489A8()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_100009044();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048A3C()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_100009044();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048AD0()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_100009044();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048B64()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_100009044();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048BF8()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_100009044();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048C8C(uint64_t a1, void *a2)
{
  v7 = [a2 url];
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100048D38()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_1000090AC();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100048DD8()
{
  sub_100003E14();
  [v1 url];
  objc_claimAutoreleasedReturnValue();
  sub_100009094();
  sub_1000090AC();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100048E78()
{
  sub_100003E14();
  v2 = [v1 url];
  v3 = *v0;
  sub_10000905C();
  sub_1000090CC();
  sub_100003E04();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100048F14()
{
  sub_100003E14();
  v2 = [v1 url];
  v3 = *v0;
  sub_10000905C();
  sub_1000090CC();
  sub_100003E04();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100048FB0(void *a1)
{
  v1 = [a1 url];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100049054()
{
  sub_10000905C();
  sub_100009084();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000493B0(uint64_t *a1)
{
  v6 = *a1;
  sub_100009084();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100049504()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004958C()
{
  v0 = __error();
  strerror(*v0);
  sub_1000090DC();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004972C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error from escrow proxy: %ld, %@", &v3, 0x16u);
}

void sub_10004981C(uint64_t a1, NSObject *a2)
{
  v3 = [CSDateUtilities localStringFromDate:a1];
  sub_10000905C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "will be available for retry after %@", v4, 0xCu);
}

void sub_1000498BC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 24) URL];
  v7 = [*(a1 + 24) allHeaderFields];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "unexpected response from escrow proxy: URL: %@, headers: %@, data: %@", &v8, 0x20u);
}

void sub_100049990(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = @"no";
  if (a2)
  {
    v3 = @"yes";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "found silent attempt record with id %@ (metadata present %@)", &v4, 0x16u);
}

void sub_100049A30(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = [a1 objectForKeyedSubscript:a2];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Our idea of the best silent metadata is: %@", &v5, 0xCu);
}

void sub_100049B40()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100049B5C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to encode body: %@", &v2, 0xCu);
}

void sub_100049BD4(void *a1)
{
  v2 = [a1 command];
  v3 = [a1 recordLabel];
  sub_10000EDB4();
  sub_10000EDF4(&_mh_execute_header, v4, v5, "Disallowing %@ operation for label %@ (due to com.apple.cloudservices/PCS-UpdateDisabled)", v6, v7, v8, v9, v10);
}

void sub_100049C78(void *a1)
{
  v2 = [a1 command];
  v3 = [a1 recordLabel];
  sub_10000EDB4();
  sub_10000EDF4(&_mh_execute_header, v4, v5, "Disallowing %@ operation for label %@ (due to com.apple.cloudservices/PCS-NoRecord)", v6, v7, v8, v9, v10);
}

void sub_100049DF0()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100049E2C()
{
  sub_10000905C();
  sub_100009084();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100049EC8(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100049F3C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100049FAC()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100049FE8()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A124()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A194()
{
  sub_100032A3C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004A204()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A274()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A2E4()
{
  sub_10000905C();
  sub_100009084();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004A360(uint64_t a1, uint64_t *a2)
{
  sub_100032A30(*a2);
  sub_10000905C();
  sub_100032A20();
  sub_100009084();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A3DC(uint64_t a1, uint64_t *a2)
{
  sub_100032A30(*a2);
  sub_10000905C();
  sub_100032A20();
  sub_100009084();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A458()
{
  sub_100032A3C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004A4C8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_10000905C();
  sub_100009084();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10004A548()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A5B8()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A5F4()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A664()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A6A0(void *a1, void *a2)
{
  [a1 processIdentifier];
  v8 = [a2 serviceName];
  sub_100003E04();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10004A754(void *a1)
{
  [a1 processIdentifier];
  sub_100032A3C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10004A7E8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004A858()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A894()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A8D0()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A90C(void *a1)
{
  [a1 count];
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004A990()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004A9CC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004AA50()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004AAC0()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AAFC()
{
  sub_100032A3C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004AB6C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AC34()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AC70()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004ACAC()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004ACE8(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004AD58()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004ADC8()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AE04(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10004AE78()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AEB4()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004AF24()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004AF94()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004AFD0()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B00C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B07C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B0EC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not change device passcode: %@", buf, 0xCu);
}

void sub_10004B144()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B180()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B1BC()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004B20C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B27C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004B304()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B340()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B37C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B3B8()
{
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B42C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B468()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B4D8(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009084();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004B568()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B5A4()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B5E0()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B650()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B68C(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10004B700(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A30(v1);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004B774(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A30(v1);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004B7E8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B858()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B894()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B8D0()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B940()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004B9B0()
{
  sub_10000905C();
  sub_100032A20();
  sub_100009084();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BA3C(void *a1)
{
  v1 = [a1 escrowInformationMetadata];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004BAC8()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BB04()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BB40()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004BB90()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BBCC()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BC08()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004BC58()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BC94()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004BCE4()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BD20()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BD5C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BD98()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BDD4(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004BE44(void **a1)
{
  v1 = *a1;
  sub_1000329E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004BECC()
{
  sub_100032A08();
  sub_100009084();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004BF68()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004BFD8()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004C014()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004C064(id *a1)
{
  v1 = [*a1 hexString];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004C0F8()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004C134(uint64_t a1)
{
  v6 = *(*a1 + 24);
  sub_1000329E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004C1B0(uint64_t a1)
{
  v6 = *(*a1 + 24);
  sub_1000329E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004C22C(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A30(v1);
  sub_100032A08();
  sub_1000329E0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004C2A0()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004C310()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004C34C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004C3BC()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004C3F8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004C468()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004C4A4(void *a1, NSObject *a2)
{
  v4 = [a1 metadataHash];
  if (v4)
  {
    v5 = "have";
  }

  else
  {
    v5 = "missing";
  }

  v6 = [a1 backOffDate];
  if (v6)
  {
    v7 = "have";
  }

  else
  {
    v7 = "missing";
  }

  v8 = [a1 encodedMetadata];
  v10 = 136315650;
  if (v8)
  {
    v9 = "have";
  }

  else
  {
    v9 = "missing";
  }

  v11 = v5;
  v12 = 2080;
  v13 = v7;
  v14 = 2080;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "missing parameter: %s metadataHash, %s backOffDate, %s encodedMetadata", &v10, 0x20u);
}

void sub_10004C5BC()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004C60C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004C67C()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004C6CC(void *a1)
{
  [a1 length];
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004C760()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004C7E8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004C870()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004C8E0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004C968()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004C9F0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004CA78()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CAB4()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CB24(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100009084();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004CBA4()
{
  v0 = __error();
  strerror(*v0);
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004CC2C()
{
  v0 = __error();
  strerror(*v0);
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10004CCC8()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004CD18()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004CD68()
{
  sub_1000329D0();
  *v1 = 136315650;
  sub_1000329B4(v2, v3, v1);
  sub_1000329EC(&_mh_execute_header, "%s caught exception: %@: %@", v4, v5);
}

void sub_10004CDB8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CE28()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CE98()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CF08()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CF44()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CF80()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CFF0()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D060()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D0D0()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D140()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D1B0()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D220()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D290()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004D2CC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D33C()
{
  sub_100032A3C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004D3AC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D41C(NSObject *a1)
{
  v2 = [CSDateUtilities localStringFromDate:qword_100084AD0];
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "retry-after date has not passed, throttling calls to escrow proxy until %@", &v3, 0xCu);
}

void sub_10004D508(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "response retry after date = %@", &v2, 0xCu);
}

void sub_10004D580(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[LakituRequest performRequestWithHandler:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: returned error: %@", &v2, 0x16u);
}

void sub_10004D60C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 id];
  v6 = [a2 operationId];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Got non-matching event: Got %@, expected %@", &v7, 0x16u);
}

void sub_10004D714()
{
  sub_1000412E8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D784()
{
  sub_1000412E8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D7F4()
{
  sub_1000412E8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D864()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004D8A0(void *a1)
{
  v1 = [a1 specifiedFederation];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004D9FC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004DA6C(void *a1)
{
  v1 = [a1 error];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004DC58()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004DC94()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004DCD0()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004DD0C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004DD48(uint64_t a1)
{
  v6 = *(*(*(a1 + 64) + 8) + 40);
  sub_1000329E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004DDC8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004DE38(id *a1, void *a2)
{
  v3 = [*a1 dsid];
  v9 = [a2 dsid];
  sub_100003E04();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10004DEF8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004DF68()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004DFA4()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004DFE0(void *a1)
{
  [a1 duplicate];
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004E07C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004E0B8()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E128()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004E164(void *a1)
{
  [a1 clubTypeID];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004E1E4()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E254()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E2EC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E35C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E3CC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E43C()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E4AC()
{
  sub_10000905C();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E580(const __CFString **a1, NSObject *a2)
{
  if (a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = @"no error pointer";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "createPrerecordFromCandidate: Could not generate escrow record blob: %@", &v3, 0xCu);
}

void sub_10004E830(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009068(&_mh_execute_header, v1, v2, "SOSBSKBLoadAndUnlockWithWrappingSecret failed: %@", v3, v4, v5, v6, v7);
}

void sub_10004E898(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009068(&_mh_execute_header, v1, v2, "failed to create backupslicekeybag: %@", v3, v4, v5, v6, v7);
}

void sub_10004E900(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009068(&_mh_execute_header, v1, v2, "failed to encode backupslicekeybag: %@", v3, v4, v5, v6, v7);
}

void sub_10004E9D4(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  sub_100032A08();
  sub_100009068(&_mh_execute_header, v2, v3, "SOSCCCopyMyPeerInfo() failed: %@", v4, v5, v6, v7, v8);
}

void sub_10004EA50(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009068(&_mh_execute_header, v1, v2, "SOSBSKBCopyEncoded() failed: %@", v3, v4, v5, v6, v7);
}

void sub_10004EAB8(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009068(&_mh_execute_header, v1, v2, "SOSBackupSliceKeyBagCreateDirect() failed: %@", v3, v4, v5, v6, v7);
}

void sub_10004EB20(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_100009068(&_mh_execute_header, a2, a3, "CFPropertyListCreateDERData failed: %@", a5, a6, a7, a8, 2u);
}

void sub_10004EB9C(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_100009068(&_mh_execute_header, a2, a3, "CFPropertyListCreateWithDERData failed: %@", a5, a6, a7, a8, 2u);
}

void sub_10004EC18(uint64_t *a1)
{
  sub_100032A14(a1, __stack_chk_guard);
  sub_100032A08();
  sub_100009068(&_mh_execute_header, v1, v2, "SecPasswordGenerate() failed: %@", v3, v4, v5, v6, v7);
}

void sub_10004EC80()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004ED8C()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004EE98(uint64_t a1, void *a2)
{
  v7 = [a2 sosPeerID];
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004EF44()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004EF80(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004F0DC(void *a1, NSObject *a2)
{
  v4 = [a1 passphrase];
  if (v4)
  {
    v5 = @"non-";
  }

  else
  {
    v5 = &stru_1000767A0;
  }

  v6 = [a1 smsTarget];
  v7 = [a1 appleID];
  v8 = [a1 iCloudPassword];
  v10 = 138413058;
  if (v8)
  {
    v9 = @"non-";
  }

  else
  {
    v9 = &stru_1000767A0;
  }

  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", &v10, 0x2Au);
}

void sub_10004F208()
{
  sub_10000EDE8();
  sub_1000329E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F314(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000905C();
  sub_100003E04();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004F3A0()
{
  sub_10000905C();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "ClientMetadata mismatch: %@ %@", v2, 0x16u);
}

uint64_t sub_10004F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = 3758097084;
  if (sub_100047DA0())
  {
    if (a8)
    {
      sub_100047FE8();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_100047FA4();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 190, "", "");
  }

  return v9;
}

void sub_10004F640()
{
  sub_10004804C();
  sub_100048020();
  __chkstk_darwin();
  sub_100003E14();
  v7 = v6;
  *(v5 - 72) = __stack_chk_guard;
  sub_100048014();
  v8 = sub_100047DA0();
  if (v8)
  {
    v16 = v8;
    if (v1)
    {
      if (v0)
      {
        sub_100047FF4((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v26, v27, v28, v29, v30, v31, v32);
        __count = v3;
        v35 = v7;
        if (!sub_100047FB8(v16, 3u, &v35, v17, v18, v19, v20, v21, v4, &__count))
        {
          v22 = calloc(__count, 1uLL);
          *v1 = v22;
          if (v22)
          {
            memcpy(v22, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    sub_100047FA4();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v28, v29, v30, v31, v32, v33, ":", 679, "", "");
    sub_100047FDC();
  }

  v23 = *(v5 - 72);
  sub_10004802C();
  sub_100048038();
}