int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10000098C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "service starting", v5, 2u);
  }

  v4 = dispatch_time(0, 10000000000);
  dispatch_after(v4, &_dispatch_main_q, &stru_100004280);
  xpc_main(sub_1000009D4);
}

id sub_10000098C()
{
  if (qword_1000080A8 != -1)
  {
    sub_100001850();
  }

  v1 = qword_1000080A0;

  return v1;
}

void sub_1000009D4(void *a1)
{
  v1 = a1;
  v2 = sub_10000098C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "adding connection %@", buf, 0xCu);
  }

  if (qword_1000080B8 != -1)
  {
    sub_100001864();
  }

  xpc_connection_set_target_queue(v1, qword_1000080B0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000BE8;
  handler[3] = &unk_1000042E8;
  v3 = v1;
  v6 = v3;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_resume(v3);
  v4 = sub_10000098C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "did resume connection %@", buf, 0xCu);
  }
}

void sub_100000B64(id a1)
{
  qword_1000080A0 = os_log_create("com.apple.migration", "helper");

  _objc_release_x1();
}

void sub_100000BA8(id a1)
{
  qword_1000080B0 = dispatch_queue_create("com.apple.datamigratorhelper.connection", 0);

  _objc_release_x1();
}

void sub_100000BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 32);
  v5 = v3;
  pid = xpc_connection_get_pid(v4);
  v7 = v4;
  [@"com.apple.datamigratorhelper.core" UTF8String];
  v8 = xpc_connection_copy_entitlement_value();

  if (!v8 || (value = xpc_BOOL_get_value(v8), v8, !value))
  {
    v17 = sub_10000098C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100001AF4(pid);
    }

    goto LABEL_15;
  }

  int64 = xpc_dictionary_get_int64(v5, "eventID");
  v11 = sub_10000098C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [NSNumber numberWithLongLong:int64];
    v13 = v12 = v5;
    v14 = [NSNumber numberWithInt:pid];
    *buf = 134218498;
    *v97 = v12;
    *&v97[8] = 2112;
    v98 = v13;
    v99 = 2112;
    v100 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "handling event %p eventID %@ from client pid %@", buf, 0x20u);

    v5 = v12;
  }

  if (int64 != 3)
  {
    if (int64 == 2)
    {
      v19 = sub_10000098C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000019F8();
      }

      reboot(0);
    }

    else if (int64 == 1)
    {
      string = xpc_dictionary_get_string(v5, "message");
      v16 = sub_10000098C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100001A2C();
      }

      reboot_np(3072, string);
    }

    else
    {
      v70 = sub_10000098C();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_100001A60(int64);
      }
    }

    goto LABEL_15;
  }

  v91 = v5;
  v20 = sub_10000098C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10000188C();
  }

  v21 = 0;
  while (1)
  {
    v22 = sub_10000098C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v97 = v21;
      *&v97[4] = 1024;
      *&v97[6] = 10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Attempt %d/%d: requesting purge from logd", buf, 0xEu);
    }

    sub_100001214("Attempt %d/%d: requesting purge from logd", v23, v24, v25, v26, v27, v28, v29, v21);
    mach_service = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
    if (!mach_service)
    {
      v44 = sub_10000098C();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100001978(&v94, v95, v44);
      }

      sub_100001214("Failed to create connection to logd", v45, v46, v47, v48, v49, v50, v51, v86);
      goto LABEL_38;
    }

    v31 = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_100004328);
    xpc_connection_activate(v31);
    v32 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v32, "operation", 5uLL);
    xpc_dictionary_set_uint64(v32, "purge", 0xFFFFFFFFFFFFFFFFLL);
    v33 = xpc_connection_send_message_with_reply_sync(v31, v32);
    type = xpc_get_type(v33);
    if (type == &_xpc_type_dictionary)
    {
      break;
    }

    v35 = type;
    v36 = sub_10000098C();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000018C0(&v101, v35, &v102);
    }

    name = xpc_type_get_name(v35);
    sub_100001214("Non dictionary response from logd: '%s'", v37, v38, v39, v40, v41, v42, v43, name);
LABEL_37:

LABEL_38:
    v62 = sub_10000098C();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_1000019B8(&v92, v93, v62);
    }

    sub_100001214("Failed to purge logs via logd. Retrying after 1s", v63, v64, v65, v66, v67, v68, v69, v88);
    sleep(1u);
    v21 = (v21 + 1);
    if (v21 == 10)
    {
      goto LABEL_50;
    }
  }

  v52 = xpc_dictionary_get_int64(v33, "st");
  v53 = sub_10000098C();
  v54 = v53;
  if (v52)
  {
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_10000191C(&v103, v52, &v104);
    }

    v89 = strerror(v52);
    sub_100001214("Error from logd: %s", v55, v56, v57, v58, v59, v60, v61, v89);
    goto LABEL_37;
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Success from logd: deleted all logs", buf, 2u);
  }

  sub_100001214("Success from logd: deleted all logs", v71, v72, v73, v74, v75, v76, v77, v86);
  v78 = sub_10000098C();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "logd purge success", buf, 2u);
  }

  sub_100001214("logd purge success", v79, v80, v81, v82, v83, v84, v85, v90);
LABEL_50:
  sub_10000132C(@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/sysdiagnose");
  sub_10000132C(@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.osanalytics/Library/Logs/DiagnosticReports/DiagnosticLogs/sysdiagnose/");
  v5 = v91;
  if (dword_100008098 != -1)
  {
    close(dword_100008098);
    dword_100008098 = -1;
  }

LABEL_15:
  reply = xpc_dictionary_create_reply(v5);
  xpc_connection_send_message(v7, reply);

LABEL_16:
}

void sub_100001214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (dword_100008098 == -1 && (dword_100008098 = open("/private/var/db/logd_cleanup_migrator.txt", 513, 438), dword_100008098 == -1))
  {
    v13 = sub_10000098C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100001B88();
    }
  }

  else
  {
    v10 = [NSString alloc];
    v11 = [NSString stringWithUTF8String:a1];
    v12 = [v10 initWithFormat:v11 arguments:&a9];

    v13 = [v12 stringByAppendingString:@"\n"];

    write(dword_100008098, [v13 UTF8String], [v13 length]);
  }
}

void sub_10000132C(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v45 = v1;
  v3 = [NSURL fileURLWithPath:v1 isDirectory:1];
  v4 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLNameKey, NSURLPathKey, 0];
  v46 = v2;
  v44 = v3;
  v5 = [v2 enumeratorAtURL:v3 includingPropertiesForKeys:v4 options:5 errorHandler:&stru_100004368];

  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = @"sysdiagnose";
    v47 = v5;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v7 lastPathComponent];
      if ([v10 rangeOfString:v8 options:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v8;
        v12 = v10;
        v13 = [NSSet setWithObjects:@"21N5165G", @"21N5207G", @"21N5233F", @"21N5259K", 0];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v50;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v50 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([v12 rangeOfString:*(*(&v49 + 1) + 8 * i) options:1] != 0x7FFFFFFFFFFFFFFFLL)
              {

                v19 = sub_10000098C();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v7 fileSystemRepresentation];
                  *buf = 136315138;
                  v54 = v20;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found problematic sysdiagnose. Deleting: %s", buf, 0xCu);
                }

                v21 = [v7 fileSystemRepresentation];
                sub_100001214("Found problematic sysdiagnose. Deleting: %s", v22, v23, v24, v25, v26, v27, v28, v21);
                v48 = 0;
                [v46 removeItemAtURL:v7 error:&v48];
                v29 = v48;
                v8 = v11;
                if (v29)
                {
                  v30 = sub_10000098C();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v41 = [v7 fileSystemRepresentation];
                    v42 = [v29 localizedDescription];
                    v43 = [v42 UTF8String];
                    *buf = 136315394;
                    v54 = v41;
                    v55 = 2080;
                    v56 = v43;
                    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to delete sysdiagnose at %s: %s", buf, 0x16u);
                  }

                  v31 = [v7 fileSystemRepresentation];
                  v32 = [v29 localizedDescription];
                  [v32 UTF8String];
                  sub_100001214("Failed to delete sysdiagnose at %s: %s", v33, v34, v35, v36, v37, v38, v39, v31);
                }

                goto LABEL_20;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v49 objects:buf count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v8 = v11;
LABEL_20:
        v5 = v47;
      }

      objc_autoreleasePoolPop(v9);
      v40 = [v5 nextObject];

      v7 = v40;
    }

    while (v40);
  }
}

BOOL sub_10000175C(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_10000098C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100001BC8(v3);
  }

  v5 = [(NSError *)v3 localizedDescription];
  v6 = [v5 UTF8String];
  sub_100001214("Failed to enumerate sysdiagnose files: %s", v7, v8, v9, v10, v11, v12, v13, v6);

  return 1;
}

void sub_1000017E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100001808(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100001830(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1000018C0(_DWORD *a1, xpc_type_t type, const char **a3)
{
  name = xpc_type_get_name(type);
  *a1 = 136315138;
  *a3 = name;
  sub_100001830(&_mh_execute_header, v6, v7, "Non dictionary response from logd: '%s'");
}

void sub_10000191C(_DWORD *a1, int __errnum, char **a3)
{
  v5 = strerror(__errnum);
  *a1 = 136315138;
  *a3 = v5;
  sub_100001830(&_mh_execute_header, v6, v7, "Error from logd: %s");
}

void sub_100001978(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create connection to logd", buf, 2u);
}

void sub_1000019B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to purge logs via logd. Retrying after 1s", buf, 2u);
}

void sub_100001A60(uint64_t a1)
{
  v1 = [NSNumber numberWithLongLong:a1];
  sub_1000017E8(&_mh_execute_header, v2, v3, "unknown eventID %@", v4, v5, v6, v7, 2u);
}

void sub_100001AF4(uint64_t a1)
{
  v1 = [NSNumber numberWithInt:a1];
  sub_1000017E8(&_mh_execute_header, v2, v3, "pid %@ lacks necessary entitlement", v4, v5, v6, v7, 2u);
}

void sub_100001BC8(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_1000017E8(&_mh_execute_header, v2, v3, "Failed to enumerate sysdiagnose files: %s", v4, v5, v6, v7, 2u);
}