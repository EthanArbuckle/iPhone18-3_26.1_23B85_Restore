__CFString *sub_100000D70(void *a1)
{
  v1 = a1;
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 pathSubmission];

  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002718();
    }

    v3 = @"/private/var/mobile/Library/Logs/CrashReporter";
  }

  if (v1)
  {
    v4 = [(__CFString *)v3 stringByAppendingPathComponent:v1];

    v3 = v4;
  }

  return v3;
}

id sub_100000F48(void *a1)
{
  v1 = a1;
  v2 = dispatch_get_global_queue(33, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.sysdiagnose.service.xpc", v2, 2uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100004308);
  xpc_connection_resume(mach_service);
  if (mach_service)
  {
    v4 = xpc_connection_send_message_with_reply_sync(mach_service, v1);
    v5 = v4;
    if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary && xpc_dictionary_get_uint64(v5, "RESPONSE_TYPE") == 1)
    {
      v6 = v5;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Couldn't get valid reply from sysdiagnose server", v8, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10000147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000014A0(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1000082B8 != -1)
    {
      sub_100002760();
    }

    if (byte_1000082B0 == 1)
    {
      v2 = [v1 substringFromIndex:{objc_msgSend(v1, "rangeOfString:", @"/Library/Logs"}];
      if ([v1 rangeOfString:@"/private/var/mobile"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = [v2 stringByReplacingOccurrencesOfString:@"CrashReporter" withString:@"DiagnosticReports"];

        v2 = v3;
      }

      if (qword_1000082C8 != -1)
      {
        sub_100002774();
      }

      v4 = qword_1000082C0;
      v5 = [v4 stringByAppendingPathComponent:v2];
    }

    else
    {
      v5 = v1;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "File %@ realpath %@", &v7, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100001658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001670(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Remote Path: %@", &v6, 0xCu);
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [DEAttachmentItem attachmentWithPath:v3];
  [v4 addObject:v5];
}

uint64_t sub_100001DA4(uint64_t result, void *a2, _BYTE *a3)
{
  if (result && a2)
  {
    v4 = [a2 objectForKey:result];
    if (v4)
    {
      v6 = v4;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (a3)
      {
        if (isKindOfClass)
        {
          *a3 = [v6 BOOLValue];
        }
      }
    }

    return _objc_release_x1();
  }

  return result;
}

void sub_100002208(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Reporting progress to DE. Received progressDict: %@", &v9, 0xCu);
  }

  v4 = [v3 objectForKey:sdProgressPercent];
  v5 = [v3 objectForKey:sdProgressDiagnosticId];
  if (v4)
  {
    [v4 doubleValue];
    v7 = [[DECollectionProgress alloc] initWithPercentComplete:v6];
    v8 = v7;
    if (v5)
    {
      [v7 setStatusString:v5];
    }

    (*(*(a1 + 32) + 16))();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100002788();
  }
}

void sub_1000023E4(id a1, OS_xpc_object *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "com.apple.sysdiagnose.service.xpc";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC connection to %s failed", &v2, 0xCu);
  }
}

void sub_1000024B8(id a1)
{
  if (qword_1000082B8 != -1)
  {
    sub_100002760();
  }

  if (byte_1000082B0 == 1)
  {
    v1 = container_system_group_path_for_identifier();
    if (v1)
    {
      v2 = v1;
      v3 = [NSURL fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
      v4 = [v3 path];
      v5 = qword_1000082C0;
      qword_1000082C0 = v4;

      free(v2);
    }

    else
    {
      v7 = qword_1000082C0;
      qword_1000082C0 = @"/private/var/mobile/";

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v9 = 1;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error finding path %llu", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = qword_1000082C0;
    qword_1000082C0 = @"/private/var/mobile/";
  }
}

BOOL sub_100002650(id a1, NSURL *a2, NSError *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSError *)a3 localizedDescription];
    v7 = 138412546;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "DE Enumeration error for url: %@: %@\n", &v7, 0x16u);
  }

  return 1;
}