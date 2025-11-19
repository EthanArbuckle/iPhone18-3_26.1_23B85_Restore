void sub_10000103C(id a1)
{
  qword_100015658 = objc_alloc_init(IDSRemoteURLConnectionDaemon);

  _objc_release_x1();
}

void sub_1000015BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Application state changed: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v11 = v3;
      _IDSLogV();
    }

    v6 = [v3 objectForKey:{BKSApplicationStateProcessIDKey, v11}];
    v7 = [v3 objectForKey:BKSApplicationStateKey];
    v8 = v7;
    if (v6 && v7 && [v7 intValue] == 2)
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 intValue];
        *buf = 67109120;
        LODWORD(v14) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " => Pid %d suspended!", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v12 = [v6 intValue];
        _IDSLogV();
      }

      [WeakRetained _pidSuspended:{objc_msgSend(v6, "intValue", v12)}];
    }
  }
}

void sub_100001F14(uint64_t a1)
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

void sub_10000266C(uint64_t a1)
{
  (*(*(*(a1 + 32) + 8) + 16))();
  v2 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  [v2 removeURLLoaderForUniqueID:*(*(a1 + 32) + 48)];
}

void sub_100002994(id a1)
{
  qword_100015678 = objc_alloc_init(IDSRemoteURLConnectionDaemonMIGInterface);

  _objc_release_x1();
}

uint64_t sub_100002C6C(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    exit(-1);
  }

  return result;
}

void sub_100002C90(id a1, OS_xpc_object *a2, OS_xpc_object *a3)
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
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = v10;
    *buf = v10;
    xpc_connection_get_audit_token();
    v11 = kIDSRemoteURLConnectionEntitlement;
    if (IMDAuditTokenTaskHasEntitlement() & 1) != 0 || (*&v12 = 0xAAAAAAAAAAAAAAAALL, *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL, *&buf[16] = v12, *buf = v12, xpc_connection_get_audit_token(), (IMDAuditTokenTaskHasEntitlement()))
    {
      if (type != &_xpc_type_dictionary)
      {
        sub_100007968();
      }

      v13 = v8;
      v14 = xpc_copy_description(v13);
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        pid = xpc_connection_get_pid(v7);
        *buf = 67109378;
        *&buf[4] = pid;
        *&buf[8] = 2080;
        *&buf[10] = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received message from peer(%d): %s", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        xpc_connection_get_pid(v7);
        _IDSLogV();
      }

      free(v14);
      objc_opt_class();
      v17 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
      v63 = IMGetXPCBoolFromDictionary();
      v62 = IMGetXPCBoolFromDictionary();
      v61 = IMGetXPCBoolFromDictionary();
      v60 = IMGetXPCIntFromDictionary();
      v18 = IMGetXPCBoolFromDictionary();
      v19 = IMGetXPCIntFromDictionary();
      v20 = IMGetXPCIntFromDictionary();
      v59 = IMGetXPCBoolFromDictionary();
      v21 = IMGetXPCStringFromDictionary();
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Decoded URL request: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"NO";
        if (v63)
        {
          v24 = @"YES";
        }

        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " Try force cell: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = @"NO";
        if (v62)
        {
          v26 = @"YES";
        }

        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " requireIDSHost: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v27 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " data usage identifier: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = @"NO";
        if (v61)
        {
          v29 = @"YES";
        }

        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " shouldUsePipelining: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v60;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " concurrentConnections: %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v31 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = @"NO";
        if (v18)
        {
          v32 = @"YES";
        }

        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " disableKeepAlive: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v33 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [NSNumber numberWithInt:v19];
        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " keepAliveWifi: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v56 = [NSNumber numberWithInt:v19];
        _IDSLogV();
      }

      v35 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [NSNumber numberWithInt:v20];
        *buf = 138412290;
        *&buf[4] = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " keepAliveCell: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v57 = [NSNumber numberWithInt:v20];
        _IDSLogV();
      }

      ++dword_100015688;
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x3032000000;
      v70[3] = sub_100003F34;
      v70[4] = sub_100003F44;
      v71 = os_transaction_create();
      v37 = +[IMMobileNetworkManager sharedInstance];
      [v37 addFastDormancyDisableToken:@"IDSRemoteURLLoaderAgent"];

      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100003F4C;
      v64[3] = &unk_100010720;
      v38 = v17;
      v65 = v38;
      v39 = v21;
      v66 = v39;
      v40 = v13;
      v67 = v40;
      v68 = v7;
      v69 = v70;
      v41 = [v64 copy];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000047D0;
      *&buf[24] = &unk_100010748;
      v42 = v38;
      v73 = v42;
      v43 = v41;
      v75 = v43;
      v79 = v61;
      v80 = v18;
      v76 = v60;
      v77 = v19;
      v78 = v20;
      v81 = v63;
      v44 = v39;
      v74 = v44;
      v82 = v59;
      v83 = v62;
      im_dispatch_after_primary_queue();

      _Block_object_dispose(v70, 8);
    }

    else
    {
      v47 = xpc_connection_get_pid(v7);
      v48 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = IMProcessNameForPid();
        *buf = 138413058;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = @"com.apple.private.imcore.imremoteurlconnection";
        *&buf[22] = 2112;
        *&buf[24] = v49;
        LOWORD(v73) = 1024;
        *(&v73 + 2) = v47;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Denying xpc connection, task does not have entitlement: %@ or %@ (%@:%d)", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v50 = IMProcessNameForPid();
        _IDSWarnV();

        v51 = IMProcessNameForPid();
        _IDSLogV();

        v58 = IMProcessNameForPid();
        _IDSLogTransport();
      }

      xpc_connection_cancel(v7);
    }

    goto LABEL_92;
  }

  if (v8 == &_xpc_error_connection_invalid)
  {
    v52 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = xpc_connection_get_pid(v7);
      *buf = 67109120;
      *&buf[4] = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_91;
    }
  }

  else if (v8 == &_xpc_error_connection_interrupted)
  {
    v54 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = xpc_connection_get_pid(v7);
      *buf = 67109120;
      *&buf[4] = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_91;
    }
  }

  else if (v8 == &_xpc_error_termination_imminent)
  {
    v45 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = xpc_connection_get_pid(v7);
      *buf = 67109120;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
LABEL_91:
        xpc_connection_get_pid(v7);
        _IDSLogV();
      }
    }
  }

LABEL_92:
}

void sub_100003C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x10000390CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100003F34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003F4C(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138412290;
    v40 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Finished loading request: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v37 = *(a1 + 32);
    _IDSLogV();
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    *buf = 138412290;
    v40 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " Data Usage identifier: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v38 = *(a1 + 40);
    _IDSLogV();
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "              Response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v12 length];
    *buf = 67109120;
    LODWORD(v40) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "     ResultData Length: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v12 length];
    _IDSLogV();
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v40) = a3;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "            StatusCode: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v13;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "                 Error: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v24 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = +[NetworkChangeNotifier sharedInstance];
    v26 = [v25 linkQualityValueForInterfaceType:3];
    *buf = 67109120;
    LODWORD(v40) = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "     Cell Link Quality: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = +[NetworkChangeNotifier sharedInstance];
    [v27 linkQualityValueForInterfaceType:3];
    _IDSLogV();
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = +[NetworkChangeNotifier sharedInstance];
    v30 = [v29 linkQualityValueForInterfaceType:2];
    *buf = 67109120;
    LODWORD(v40) = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "     WiFi Link Quality: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v31 = +[NetworkChangeNotifier sharedInstance];
    [v31 linkQualityValueForInterfaceType:2];
    _IDSLogV();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  IMInsertDatasToXPCDictionary();
  IMInsertKeyedCodableObjectsToXPCDictionary();
  IMInsertKeyedCodableObjectsToXPCDictionary();
  IMInsertIntsToXPCDictionary();
  IMInsertDictionariesToXPCDictionary();
  xpc_connection_send_message(*(a1 + 56), reply);
  v33 = *(*(a1 + 64) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = 0;

  if (dword_100015688-- <= 1)
  {
    v36 = [IMMobileNetworkManager sharedInstance:v14];
    [v36 removeFastDormancyDisableToken:@"IDSRemoteURLLoaderAgent"];
  }

  im_dispatch_after_primary_queue();
}

void sub_100004644(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1000041E8);
  }

  _Unwind_Resume(a1);
}

void sub_1000046F4(id a1)
{
  if (dword_100015688 <= 0)
  {
    v1 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Idle exiting, we're done here", v2, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    exit(0);
  }
}

void sub_1000047D0(uint64_t a1)
{
  v3 = [[IDSRemoteAgentURLLoader alloc] initWithURLRequest:*(a1 + 32) completionBlock:*(a1 + 48)];
  [(IDSRemoteAgentURLLoader *)v3 setShouldUsePipelining:*(a1 + 68)];
  [(IDSRemoteAgentURLLoader *)v3 setConcurrentConnections:*(a1 + 56)];
  [(IDSRemoteAgentURLLoader *)v3 setDisableKeepAlive:*(a1 + 69)];
  [(IDSRemoteAgentURLLoader *)v3 setKeepAliveWifi:*(a1 + 60)];
  [(IDSRemoteAgentURLLoader *)v3 setKeepAliveCell:*(a1 + 64)];
  [(IDSRemoteAgentURLLoader *)v3 setForceCellularIfPossible:*(a1 + 70)];
  [(IDSRemoteAgentURLLoader *)v3 setBundleIdentifierForDataUsage:*(a1 + 40)];
  [(IDSRemoteAgentURLLoader *)v3 setShouldReturnTimingData:*(a1 + 71)];
  [(IDSRemoteAgentURLLoader *)v3 setRequireIDSHost:*(a1 + 72)];
  [(IDSRemoteAgentURLLoader *)v3 load];
  v2 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  [v2 addURLLoader:v3];
}

void sub_1000048FC(id a1)
{
  qword_100015698 = objc_alloc_init(IDSRemoteURLConnectionDaemonIDSInterface);

  _objc_release_x1();
}

void sub_100005440(uint64_t a1, void *a2, __CFString *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v55 = a4;
  v56 = a5;
  v54 = a6;
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    v53 = a3;
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(*(a1 + 32) + 24);
      *buf = 138412546;
      v58 = v13;
      v59 = 2112;
      v60 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed uniqueID %@ from _pendingResponseUniqueIDs. New map: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = *(a1 + 40);
      v51 = *(*(a1 + 32) + 24);
      _IDSLogV();
    }

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48);
      *buf = 138412290;
      v58 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Finished loading request: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = *(a1 + 48);
      _IDSLogV();
    }

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 56);
      *buf = 138412290;
      v58 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " Data Usage identifier: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = *(a1 + 56);
      _IDSLogV();
    }

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "              Response: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = v11;
      _IDSLogV();
    }

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v55 length];
      *buf = 67109120;
      LODWORD(v58) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "     ResultData Length: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = [v55 length];
      _IDSLogV();
    }

    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v58) = a3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "            StatusCode: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = a3;
      _IDSLogV();
    }

    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v56;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "                 Error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = v56;
      _IDSLogV();
    }

    v24 = [(__CFString *)v11 allHeaderFields:v48];
    v25 = JWEncodeKeyedCodableObject();
    if (!v25)
    {
      v25 = +[NSData data];
    }

    v26 = [(__CFString *)v11 URL];
    v27 = JWEncodeKeyedCodableObject();
    if (!v27)
    {
      v27 = +[NSData data];
    }

    v28 = kCFHTTPVersion1_1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(__CFString *)v11 _CFURLResponse];
      if (v29)
      {
        HTTPResponse = CFURLResponseGetHTTPResponse();
        if (HTTPResponse)
        {
          v31 = CFHTTPMessageCopyVersion(HTTPResponse);

          v28 = v31;
        }

        else
        {
          v36 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v29;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Could not get HTTP version for response %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v49 = v29;
            _IDSLogV();
          }
        }
      }

      else
      {
        v35 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = v11;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Could not get CFURLResponse from response %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v49 = v11;
          _IDSLogV();
        }
      }
    }

    else
    {
      v34 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v58 = @"IDSRemoteURLConnectionDaemonIDSInterface";
        v59 = 2112;
        v60 = v11;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@ - Response is not an HTTP response %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v49 = @"IDSRemoteURLConnectionDaemonIDSInterface";
        v52 = v11;
        _IDSLogTransport();
      }
    }

    v37 = JWEncodeKeyedCodableObject();
    if (!v37)
    {
      v37 = +[NSData data];
    }

    v38 = objc_alloc_init(NSMutableDictionary);
    CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyCommand, &off_100011310);
    v39 = *(a1 + 40);
    if (v39)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyUniqueID, v39);
    }

    v40 = v25;
    if (v40)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyHeaders, v40);
    }

    v41 = v27;
    if (v41)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyURL, v41);
    }

    v42 = v28;
    if (v42)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyHTTPVersion, v42);
    }

    v43 = [NSNumber numberWithInteger:v53];
    if (v43)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyResponseStatusCode, v43);
    }

    v44 = v55;
    if (v44)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyResultData, v44);
    }

    v45 = v37;
    if (v45)
    {
      CFDictionarySetValue(v38, IDSRemoteURLConnectionKeyResponseError, v45);
    }

    v46 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v38;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sending an IDS message back to the watch. loadResponse: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v49 = v38;
      _IDSLogV();
    }

    if (([*(a1 + 32) sendIDSMessage:v38 forLoaderWithUniqueID:{0, v49, v52}] & 1) == 0)
    {
      v47 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Failed sending load request response", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 40);
      *buf = 138412290;
      v58 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Response is for deactivated watch and was dropped. _pendingResponseUniqueIDs does not contain %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v50 = *(a1 + 40);
      _IDSLogV();
    }
  }
}

void sub_1000060CC(uint64_t a1)
{
  v3 = [[IDSRemoteAgentURLLoader alloc] initWithURLRequest:*(a1 + 32) completionBlock:*(a1 + 48)];
  [(IDSRemoteAgentURLLoader *)v3 setForceCellularIfPossible:*(a1 + 68)];
  [(IDSRemoteAgentURLLoader *)v3 setBundleIdentifierForDataUsage:*(a1 + 40)];
  [(IDSRemoteAgentURLLoader *)v3 setRequireIDSHost:*(a1 + 69)];
  [(IDSRemoteAgentURLLoader *)v3 setShouldUsePipelining:*(a1 + 70)];
  [(IDSRemoteAgentURLLoader *)v3 setConcurrentConnections:*(a1 + 56)];
  [(IDSRemoteAgentURLLoader *)v3 setDisableKeepAlive:*(a1 + 71)];
  [(IDSRemoteAgentURLLoader *)v3 setKeepAliveWifi:*(a1 + 60)];
  [(IDSRemoteAgentURLLoader *)v3 setKeepAliveCell:*(a1 + 64)];
  [(IDSRemoteAgentURLLoader *)v3 load];
  v2 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  [v2 addURLLoader:v3];
}

void sub_100006F44(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Message timeout block fired; checking if we still have a URLLoader for the request", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v3 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  v4 = [v3 urlLoaderForUniqueID:*(a1 + 32)];

  if (v4)
  {
    v5 = [v4 block];
    v6 = [v5 copy];

    if (v6)
    {
      v7 = [NSError errorWithDomain:IDSRemoteURLConnectionErrorDomain code:2 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, 0, v7, 0);
    }

    v8 = +[IDSRemoteURLConnectionDaemon sharedInstance];
    [v8 removeURLLoaderForUniqueID:*(a1 + 32)];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No URLLoader for uniqueID %@ message ID %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      _IDSLogV();
    }
  }
}

void sub_100007454(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000074C8;
  block[3] = &unk_100010800;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000074C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 14)
  {
    if (v1 != 1 && v1 != 3)
    {
      if (v1 == 13)
      {

        signal(2, sub_100007454);
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
      v6 = +[IDSRemoteURLConnectionDaemon sharedInstance];
      [v6 logState];

      break;
    case 15:
LABEL_13:
      _IMLog();
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 __mainThreadPostNotificationName:@"IMAVDaemonShutdownNotification" object:0];

      _IMLog();
      v4 = +[IDSRemoteURLConnectionDaemon sharedInstance];
      [v4 shutdown];

      _IMLog();
      return;
    default:
      return;
  }
}

void sub_100007648()
{
  if (qword_1000156A0 != -1)
  {
    sub_1000079D0();
  }
}

void sub_100007674(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  v2 = 0;
  v9 = xmmword_100009270;
  v10 = 0xD0000001FLL;
  do
  {
    v3 = *(&v9 + v2);
    v4 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, v1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000077DC;
    handler[3] = &unk_100010800;
    v8 = v3;
    dispatch_source_set_event_handler(v4, handler);
    v5 = qword_1000156A8[v2];
    qword_1000156A8[v2] = v4;
    v6 = v4;

    dispatch_resume(v6);
    signal(v3, 1);
    ++v2;
  }

  while (v2 != 6);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  if (qword_1000156A0 != -1)
  {
    sub_1000079D0();
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100010860);
  v2 = +[IDSRemoteURLConnectionDaemon sharedInstance];
  objc_autoreleasePoolPop(v1);
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = +[NSRunLoop currentRunLoop];
    [v4 run];

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100007934(void *a1)
{

  objc_end_catch();
}