void sub_100000FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Application state changed: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v3;
    _IDSLogV();
  }

  v6 = [v3 objectForKey:{BKSApplicationStateProcessIDKey, v12}];
  v7 = [v3 objectForKey:BKSApplicationStateKey];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && [v7 intValue] == 2)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 intValue];
      *buf = 67109120;
      LODWORD(v15) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " => Pid %d suspended!", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = [v6 intValue];
      _IDSLogV();
    }

    [WeakRetained _pidSuspended:{objc_msgSend(v6, "intValue", v13)}];
  }
}

void sub_10000125C(id a1)
{
  qword_1000154D0 = objc_alloc_init(IDSCredentialsDaemonIDSInterface);

  _objc_release_x1();
}

uint64_t sub_100001A68(uint64_t a1)
{
  v2 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100008278(v2);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100003420(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1000082FC(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_100003A40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    CFDictionarySetValue(*(a1 + 32), IDSRemoteCredentialKeyAccountMap, v3);
  }

  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FetchRA - Sending my device AccountInfo For services requested: %@", &v6, 0xCu);
  }

  if (([*(a1 + 40) _storeIDSMessageForLaterDeliveryIfNecessary:*(a1 + 32) completionBlock:0 isPairing:0] & 1) == 0)
  {
    [*(a1 + 40) _sendIDSMessage:*(a1 + 32)];
  }
}

void sub_100003E80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    value = [v3 objectForKey:IDSDevicePropertyIdentifier];
    v15 = [v4 objectForKey:IDSDevicePropertyEncryptionKey];
    v5 = [v4 objectForKey:IDSDevicePropertyEncryptionClassAKey];
    v6 = [v4 objectForKey:IDSDevicePropertyEncryptionClassCKey];
    v7 = [v4 objectForKey:IDSDevicePropertyPrivateDeviceData];
    v8 = [v4 objectForKey:IDSDevicePropertyName];
    v9 = [v4 objectForKey:IDSDevicePropertyHardwareVersion];
    v10 = objc_opt_class();
    v11 = IDSRemoteCredentialKeyUniqueID;
    v12 = sub_100003420(v10, *(a1 + 32), IDSRemoteCredentialKeyUniqueID);
    v13 = objc_alloc_init(NSMutableDictionary);
    CFDictionarySetValue(v13, IDSRemoteCredentialKeyCommand, &off_100011290);
    if (v12)
    {
      CFDictionarySetValue(v13, v11, v12);
    }

    if (value)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyIdentifier, value);
    }

    if (v15)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyEncryptionKey, v15);
    }

    if (v5)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyEncryptionClassAKey, v5);
    }

    if (v6)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyEncryptionClassCKey, v6);
    }

    CFDictionarySetValue(v13, IDSRemoteCredentialKeySuccess, &__kCFBooleanTrue);
    if (v7)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyPrivateDeviceData, v7);
    }

    if (v8)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyDeviceName, v8);
    }

    if (v9)
    {
      CFDictionarySetValue(v13, IDSRemoteCredentialKeyHardwareVersion, v9);
    }

    v14 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending my device info: %@", buf, 0xCu);
    }

    if (([*(a1 + 40) _storeIDSMessageForLaterDeliveryIfNecessary:v13 completionBlock:0 isPairing:1] & 1) == 0)
    {
      [*(a1 + 40) _sendIDSPairingMessage:v13];
    }
  }
}

id -[IDSCredentialsDaemonIDSInterface _blockForMessageIdentifier:](IDSCredentialsDaemonIDSInterface *self, SEL a2, id a3)
{
  v3 = [(IMOrderedMutableDictionary *)self->_uniqueIDToInfo orderedObjectForKey:a3];
  v4 = [v3 objectForKey:@"block"];

  return v4;
}

void sub_100005ED0(id a1)
{
  qword_1000154E0 = objc_alloc_init(IDSCredentialsDaemon);

  _objc_release_x1();
}

void sub_100006A54(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Idle exiting, we're done here", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    [*(a1 + 32) _terminate];
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_1000154E8 != -1)
  {
    sub_1000084D0();
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100010708);
  v1 = +[IDSCredentialsDaemon sharedInstance];

  objc_autoreleasePoolPop(v0);
  if (v1)
  {
    v2 = +[NSRunLoop currentRunLoop];
    [v2 run];
  }

  return 0;
}

void sub_100006DE8(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  v2 = 0;
  v9 = xmmword_100009FE0;
  v10 = 0xD0000001FLL;
  do
  {
    v3 = *(&v9 + v2);
    v4 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, v1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006F50;
    handler[3] = &unk_100010748;
    v8 = v3;
    dispatch_source_set_event_handler(v4, handler);
    v5 = qword_100015508[v2];
    qword_100015508[v2] = v4;
    v6 = v4;

    dispatch_resume(v6);
    signal(v3, 1);
    ++v2;
  }

  while (v2 != 6);
}

void sub_100006F58(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006FCC;
  block[3] = &unk_100010748;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100006FCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 14)
  {
    if (v1 != 1 && v1 != 3)
    {
      if (v1 == 13)
      {

        signal(2, sub_100006F58);
      }

      return;
    }

    goto LABEL_13;
  }

  switch(v1)
  {
    case 31:
      _IMLog();
      v5 = _IMSyncLoggingSettings();

      _MarcoSyncLoggingsPreferences(v5);
      break;
    case 30:
      v6 = +[IDSCredentialsDaemon sharedInstance];
      [v6 logState];

      break;
    case 15:
LABEL_13:
      _IMLog();
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 __mainThreadPostNotificationName:@"IMAVDaemonShutdownNotification" object:0];

      _IMLog();
      v4 = +[IDSCredentialsDaemon sharedInstance];
      [v4 shutdown];

      _IMLog();
      return;
    default:
      return;
  }
}

void sub_100007190(id a1)
{
  qword_1000154F8 = objc_alloc_init(IDSCredentialsDaemonMIGInterface);

  _objc_release_x1();
}

uint64_t sub_100007468(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    exit(-1);
  }

  return result;
}

void sub_10000748C(id a1, OS_xpc_object *a2, OS_xpc_object *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Incoming peer auth grant request", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v7 = v4;
  v8 = v5;
  type = xpc_get_type(v8);
  if (type != &_xpc_type_error)
  {
    v10 = v7;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v11;
    *&buf[16] = v11;
    xpc_connection_get_audit_token();
    v12 = kIDSRemoteCredentialsEntitlement;
    if (IMDAuditTokenTaskHasEntitlement())
    {

      if (type != &_xpc_type_dictionary)
      {
        sub_1000084F8();
      }

      v13 = v8;
      v14 = xpc_copy_description(v13);
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        pid = xpc_connection_get_pid(v10);
        *buf = 67109378;
        *&buf[4] = pid;
        *&buf[8] = 2080;
        *&buf[10] = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received message from peer(%d): %s", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        xpc_connection_get_pid(v10);
        _IDSLogV();
      }

      free(v14);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100007CDC;
      *&buf[24] = &unk_1000107D0;
      v17 = v13;
      v37 = v17;
      v38 = v10;
      *v32 = _NSConcreteStackBlock;
      *&v32[8] = 3221225472;
      *&v32[16] = sub_100007FA8;
      v33 = &unk_1000107F8;
      v34 = v17;
      v35 = [buf copy];
      v18 = v17;
      v19 = v35;
      im_dispatch_after_primary_queue();
    }

    else
    {
      v22 = xpc_connection_get_pid(v10);
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = IMProcessNameForPid();
        *v32 = 138412802;
        *&v32[4] = v12;
        *&v32[12] = 2112;
        *&v32[14] = v24;
        *&v32[22] = 1024;
        LODWORD(v33) = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Denying xpc connection, task does not have entitlement: %@  (%@:%d)", v32, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v25 = IMProcessNameForPid();
        _IDSWarnV();

        v26 = IMProcessNameForPid();
        _IDSLogV();

        v31 = IMProcessNameForPid();
        _IDSLogTransport();
      }

      xpc_connection_cancel(v10);
    }

    goto LABEL_28;
  }

  if (v8 == &_xpc_error_connection_invalid)
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = xpc_connection_get_pid(v7);
      *buf = 67109120;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_38;
    }
  }

  else if (v8 == &_xpc_error_connection_interrupted)
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = xpc_connection_get_pid(v7);
      *buf = 67109120;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_38;
    }
  }

  else if (v8 == &_xpc_error_termination_imminent)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = xpc_connection_get_pid(v7);
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
LABEL_38:
        xpc_connection_get_pid(v7);
        _IDSLogV();
      }
    }
  }

LABEL_28:
}

void sub_100007B58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100007814);
  }

  _Unwind_Resume(a1);
}

void sub_100007CDC(uint64_t a1, int a2, void *a3, int a4)
{
  v14 = a3;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (a4)
  {
    if (a2 <= 13)
    {
      if (a2 != 10)
      {
        if (a2 != 12)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      v13 = objc_opt_class();
      v9 = sub_100007EEC(v13, v14, IDSRemoteCredentialKeyiMessageAccountInfo);
      IMInsertArraysToXPCDictionary();
    }

    else
    {
      if (a2 != 14)
      {
        if (a2 != 16)
        {
          if (a2 != 18)
          {
            goto LABEL_13;
          }

          v8 = objc_opt_class();
          v9 = sub_100007EEC(v8, v14, IDSRemoteCredentialKeyAccountMap);
          IMInsertDictionariesToXPCDictionary();
          goto LABEL_12;
        }

LABEL_9:
        v10 = [v14 objectForKey:IDSRemoteCredentialKeySuccess];
        [v10 BOOLValue];

        IMInsertBoolsToXPCDictionary();
        goto LABEL_13;
      }

      v9 = [v14 _dictionaryForKey:IDSRemoteCredentialKeyIdStatusUpdates];
      v11 = [v14 objectForKey:IDSRemoteCredentialKeySuccess];
      [v11 BOOLValue];

      v12 = [v14 _stringForKey:IDSRemoteCredentialKeyFromURI];
      IMInsertBoolsToXPCDictionary();
      IMInsertDictionariesToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_12:
  }

LABEL_13:
  xpc_connection_send_message(*(a1 + 40), reply);
}

id sub_100007EEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100008524(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_100007FA8(uint64_t a1)
{
  v2 = +[IDSCredentialsDaemonIDSInterface sharedInstance];
  [v2 forwardIPCRequestToIDS:*(a1 + 32) withCompletionBlock:*(a1 + 40)];
}

void sub_1000081F4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[IDSCredentialsDaemonIDSInterface _sendIDSLocalDeviceInfoRequestToIDS:withCompletionBlock:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s Could not send remote credentials request", &v1, 0xCu);
}

void sub_100008278(os_log_t log)
{
  v1 = 136315138;
  v2 = "[IDSCredentialsDaemonIDSInterface _sendIDSLocalDeviceInfoRequestToIDS:withCompletionBlock:]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s Could not send remote credentials request", &v1, 0xCu);
}

void sub_1000082FC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "About to send device info request to IDS", &v3, 0x16u);
}

void sub_100008384()
{
  v0 = 138412546;
  v1 = @"block";
  v2 = 2080;
  v3 = "props";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100008420()
{
  v0 = 138412546;
  v1 = @"description";
  v2 = 2080;
  v3 = "props";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100008524(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Denying xpc connection, task does not have entitlement: %@  (%@:%d)", &v3, 0x16u);
}