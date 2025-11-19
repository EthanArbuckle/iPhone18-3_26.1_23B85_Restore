double timebaseConversionFactor()
{
  if (qword_10001A160 != -1)
  {
    sub_100008418();
  }

  return *&qword_10001A158;
}

void sub_100000F00(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_10001A158 = ((info.numer * 0.000001) / info.denom);
}

uint64_t applyTailspinConfig(uint64_t a1)
{
  v2 = shared_ht_log_handle();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ApplyTailspinConfig: change tailspin config", v5, 2u);
    }

    return tailspin_config_apply_sync();
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000842C();
    }

    return 0;
  }
}

BOOL sub_100000FEC()
{
  v0 = arrayOfCFPrefsWithPrefix(@"com.apple.da", @"mobile", @"HTThirdPartyDevSupport");
  v1 = [v0 count] != 0;

  return v1;
}

uint64_t configureTailspinForEPL(int a1)
{
  v2 = +[PerfDiagsSelfEnablementController isAnyModeActive];
  v3 = sub_100000FEC();
  v4 = shared_ht_log_handle();
  v5 = v4;
  if ((v2 & 1) != 0 || v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008494();
    }

    return 0;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ConfigureTailspinForEPL: Other HangTracer enablement modes are NOT active, attempt to configure tailspin", v11, 2u);
  }

  v6 = tailspin_config_create_with_default_config();
  if (!v6)
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100008460();
    }

    return 0;
  }

  v7 = v6;
  if (a1)
  {
    tailspin_enabled_set();
  }

  v8 = applyTailspinConfig(v7);
  tailspin_config_free();
  return v8;
}

void sub_10000116C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000011D8(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100014AD8;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_10001A170;
  qword_10001A170 = v1;
}

void sub_100002F30(id a1)
{
  qword_10001A178 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_10000537C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 208), 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 144), 8);
  objc_destroyWeak((v34 - 104));
  _Unwind_Resume(a1);
}

void sub_1000053E0(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = shared_ht_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v9 = shared_ht_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v10 = @"ON";
      }

      else
      {
        v10 = @"OFF";
      }

      v11 = objc_loadWeakRetained((a1 + 80));
      if ([v11 hangtracerDaemonEnabled])
      {
        v12 = @"ON";
      }

      else
      {
        v12 = @"OFF";
      }

      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 80));
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 hangtracerDaemonEnabled]);
    v19 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = objc_loadWeakRetained((a1 + 80));
    [v16 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v17 userInfo:v15];
  }
}

void sub_100005730(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = shared_ht_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HTPrefs: Test Reset Log Limits", v5, 2u);
    }
  }
}

void cleanupDiagnosticLogsDirectory(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = shared_ht_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100008904();
  }

  v16 = v1;
  v4 = [NSURL URLWithString:v1];
  v5 = [v2 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:&stru_100014488];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v12 = [v2 removeItemAtURL:v11 error:&v17];
        v13 = v17;
        v14 = shared_ht_log_handle();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Successfully deleted file at %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to delete file at %@ : %@", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }
}

BOOL sub_1000064AC(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = shared_ht_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to enumerate file at %@ : %@", &v8, 0x16u);
  }

  return 1;
}

void persistAndUnredactLogs(int a1)
{
  v19 = @"Subsystems";
  v17[0] = @"com.apple.hangtracer";
  v17[1] = @"com.apple.performancelogging";
  v18[0] = &off_100015DF8;
  v18[1] = &off_100015DF8;
  v17[2] = @"com.apple.Sentry.Framework";
  v18[2] = &off_100015DF8;
  v2 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v16 = 0;
  v4 = OSLogValidateProfilePayload();
  v5 = 0;
  v6 = v5;
  if (v4)
  {
    v7 = shared_ht_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully validated profile payload", buf, 2u);
    }

    if (a1)
    {
      v8 = OSLogInstallProfilePayload();
      v9 = 0;
      v10 = v9;
      if (v8)
      {
        v11 = shared_ht_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Successfully installed profile payload";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (v9)
      {
        v11 = shared_ht_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100008A80(v10);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = OSLogRemoveProfilePayload();
      v14 = 0;
      v10 = v14;
      if (v13)
      {
        v11 = shared_ht_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Successfully removed profile payload";
          goto LABEL_14;
        }

LABEL_21:

        goto LABEL_22;
      }

      if (v14)
      {
        v11 = shared_ht_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000089FC(v10);
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v5)
  {
    v10 = shared_ht_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100008978(v6);
    }

    goto LABEL_22;
  }

LABEL_23:
}

void sub_100006818(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006FF0(id a1)
{
  v1 = dlopen("/usr/lib/libMemoryResourceException.dylib", 1);
  qword_10001A190 = v1;
  if (v1)
  {
    qword_10001A198 = dlsym(v1, "OBJC_CLASS_$_RMECacheEnumerator");
  }

  else
  {
    v2 = shared_pl_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100008BB4();
    }
  }
}

void sub_100007F58(id a1)
{
  qword_10001A188 = objc_alloc_init(NSLock);

  _objc_release_x1();
}

id shared_pl_log_handle()
{
  if (qword_10001A1C0 != -1)
  {
    sub_10000904C();
  }

  v1 = qword_10001A1B8;

  return v1;
}

void sub_1000081C4(id a1)
{
  qword_10001A1B8 = os_log_create("com.apple.performancelogging", "");

  _objc_release_x1();
}

id arrayOfCFPrefsWithPrefix(const __CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSString stringWithFormat:@"%@.", a3];
  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = CFPreferencesCopyKeyList(a1, v5, kCFPreferencesAnyHost);
  v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 hasPrefix:v6])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

id shared_ht_log_handle()
{
  if (qword_10001A1D0 != -1)
  {
    sub_100009060();
  }

  v1 = qword_10001A1C8;

  return v1;
}

void sub_1000083D4(id a1)
{
  qword_10001A1C8 = os_log_create("com.apple.hangtracer", "");

  _objc_release_x1();
}

void sub_10000855C(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_100006214();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000085F0()
{
  sub_100006224();
  sub_100006234();
  sub_100006214();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100008694()
{
  sub_100006224();
  sub_100006234();
  sub_100006214();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100008738()
{
  sub_100006224();
  sub_100006234();
  sub_100006214();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000087DC()
{
  sub_100006224();
  sub_100006234();
  sub_100006214();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100008978(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006838();
  sub_100006818(&_mh_execute_header, v2, v3, "Failed to validate os log profile payload with error: %@", v4, v5, v6, v7, v8);
}

void sub_1000089FC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006838();
  sub_100006818(&_mh_execute_header, v2, v3, "Failed to remove os log profile payload with error: %@", v4, v5, v6, v7, v8);
}

void sub_100008A80(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100006838();
  sub_100006818(&_mh_execute_header, v2, v3, "Failed to install os log profile payload with error: %@", v4, v5, v6, v7, v8);
}

void sub_100008BE8()
{
  v0 = __error();
  strerror(*v0);
  sub_100007FA4();
  sub_100007F94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100008C74(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100007FBC();
  sub_100007F94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100008D10()
{
  v0 = __error();
  strerror(*v0);
  sub_100007FA4();
  sub_100007F94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100008D9C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to write ReportMemoryException plist at %@: Could not open file descriptor", &v2, 0xCu);
}

void sub_100008E14(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_100007FBC();
  sub_100007F94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100008EF8(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100007F94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100008F88(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100007F94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}