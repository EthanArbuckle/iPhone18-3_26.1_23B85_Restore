uint64_t sub_100000F48(void *a1)
{
  v1 = a1;
  xpc_get_type(v1);
  if (IMGetXPCBoolFromDictionary())
  {
    v2 = 1;
  }

  else if (IMGetXPCBoolFromDictionary())
  {
    v2 = 5;
  }

  else if (IMGetXPCBoolFromDictionary())
  {
    v2 = 2;
  }

  else if (IMGetXPCBoolFromDictionary())
  {
    v2 = 3;
  }

  else if (IMGetXPCBoolFromDictionary())
  {
    v2 = 4;
  }

  else if (IMGetXPCBoolFromDictionary())
  {
    v2 = 6;
  }

  else
  {
    v3 = IMGetXPCStringFromDictionary();
    if (v3)
    {
      v4 = IMGetXPCStringFromDictionary();
      if (v4)
      {
        v2 = 7;
      }

      else
      {
        v2 = 8;
      }
    }

    else if (xpc_dictionary_get_BOOL(v1, "updateUCA"))
    {
      v2 = 9;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void start()
{
  v0 = dispatch_workloop_create("com.apple.IMTransferAgentWorkQueue");
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_queue_create_with_target_V2("com.apple.IMTransferAgentSerialQueue", v1, v0);

  im_set_primary_base_queue();
  im_set_primary_queue();
  v2 = +[IMTransferAgentIDSInterface sharedInstance];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "IMTransferAgent woke up", buf, 2u);
    }
  }

  v4 = im_primary_queue();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, &stru_100008310);

  v5 = im_primary_queue();
  mach_service = xpc_connection_create_mach_service("com.apple.imtransferservices.IMTransferAgent", v5, 1uLL);

  xpc_connection_set_event_handler(mach_service, &stru_100008330);
  xpc_connection_activate(mach_service);
  *&v7 = 138412290;
  v10 = v7;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = +[NSRunLoop currentRunLoop];
    [v9 run];

    objc_autoreleasePoolPop(v8);
  }
}

void sub_1000012F4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received IDS Launch notification", v4, 2u);
    }
  }
}

void sub_100001390(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = qos_class_self();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handling connection message at qos (%u)", buf, 8u);
    }
  }

  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    *buf = 0u;
    v16 = 0u;
    xpc_connection_get_audit_token();
    if (IMDAuditTokenTaskHasEntitlement())
    {
      v5 = im_primary_queue();
      xpc_connection_set_target_queue(v2, v5);

      xpc_connection_set_event_handler(v2, &stru_100008350);
      xpc_connection_activate(v2);
    }

    else
    {
      pid = xpc_connection_get_pid(v2);
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = IMProcessNameForPid();
          v9 = 138412802;
          v10 = @"com.apple.private.imcore.imtransferservice";
          v11 = 2112;
          v12 = v8;
          v13 = 1024;
          v14 = pid;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Denying xpc connection, task does not have entitlement: %@  (%@:%d)", &v9, 0x1Cu);
        }
      }

      xpc_connection_cancel(v2);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection handler did not handle event: %@", buf, 0xCu);
    }
  }
}

void sub_100001630(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Received error, tearing down connection (%@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = +[IMTransferAgentIDSInterface sharedInstance];
    [v3 incrementTransferCount];

    v90 = xpc_dictionary_get_remote_connection(v2);
    v4 = v2;
    v5 = sub_100000F48(v4);
    if (v5 > 4)
    {
      if (v5 <= 6)
      {
        if (v5 == 5)
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *&buf[4] = qos_class_self();
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Transfer agent received prewarm message at qos (%u)", buf, 8u);
            }
          }

          v28 = +[IMTransferAgentController sharedInstance];
          [v28 warm];

          v29 = +[IMTransferAgentIDSInterface sharedInstance];
          [v29 decrementTransferCount];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v62 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *&buf[4] = qos_class_self();
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Handling cancel upload message at qos (%u)", buf, 8u);
            }
          }

          v63 = IMGetXPCStringFromDictionary();
          v64 = +[IMTransferAgentController sharedInstance];
          [v64 cancelSendTransferID:v63];

          v65 = +[IMTransferAgentIDSInterface sharedInstance];
          [v65 decrementTransferCount];
        }
      }

      else if (v5 == 7)
      {
        v39 = IMGetXPCStringFromDictionary();
        v40 = IMGetXPCStringFromDictionary();
        v41 = [NSURL URLWithString:v40];

        v42 = IMGetXPCStringFromDictionary();
        v43 = [NSURL URLWithString:v42];

        v44 = IMGetXPCDictionaryFromDictionary();
        v45 = +[IMRCSTransferController sharedInstance];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000038E8;
        v97 = &unk_1000084D0;
        v98 = v4;
        v99 = v90;
        v100 = &stru_100008390;
        [v45 receiveTransferOnSimID:v39 transferURL:v41 destURL:v43 cryptoMaterial:v44 completion:buf];
      }

      else if (v5 == 8)
      {
        v86 = IMGetXPCStringFromDictionary();
        v13 = IMGetXPCStringFromDictionary();
        v14 = [NSURL URLWithString:v13];

        v15 = IMGetXPCStringFromDictionary();
        if (v15)
        {
          v16 = [NSURL URLWithString:v15];
        }

        else
        {
          v16 = 0;
        }

        v66 = IMGetXPCBoolFromDictionary();
        v67 = IMGetXPCBoolFromDictionary();
        v68 = IMGetXPCDictionaryFromDictionary();
        v69 = +[IMRCSTransferController sharedInstance];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100003748;
        v97 = &unk_1000084D0;
        v98 = v4;
        v99 = v90;
        v100 = &stru_100008390;
        [v69 sendTransferOnSimID:v86 fileURL:v14 thumbURL:v16 isAudioMessage:v66 encrypted:v67 userInfo:v68 completion:buf];
      }

      else
      {
        v50 = IMGetXPCBoolFromDictionary();
        v51 = +[IMTransferAgentController sharedInstance];
        [v51 networkMonitorDidUpdate:v50];
      }
    }

    else if (v5 <= 1)
    {
      if (v5)
      {
        if (IMOSLoggingEnabled())
        {
          v52 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = qos_class_self();
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Handling upload message at qos (%u)", buf, 8u);
          }
        }

        v82 = IMGetXPCBoolFromDictionary();
        v89 = IMGetXPCStringFromDictionary();
        v85 = IMGetXPCStringFromDictionary();
        v53 = IMGetXPCStringFromDictionary();
        v54 = IMGetXPCStringFromDictionary();
        v55 = IMGetXPCDictionaryFromDictionary();
        v56 = IMGetXPCStringFromDictionary();
        v57 = v56;
        v58 = [v56 UTF8String];

        if (v58)
        {
          v59 = sandbox_extension_consume();
          if (v59 == -1)
          {
            if (IMOSLoggingEnabled())
            {
              v60 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                v61 = *__error();
                *buf = 67109378;
                *&buf[4] = v61;
                *&buf[8] = 2112;
                *&buf[10] = v89;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Unable to access path with extension, error: %d resource: %@", buf, 0x12u);
              }
            }

            v59 = -1;
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v70 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v89;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "No extension for path %@", buf, 0xCu);
            }
          }

          v59 = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v71 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Requesting to upload file.", buf, 2u);
          }
        }

        v72 = +[IMTransferAgentController sharedInstance];
        v91 = _NSConcreteStackBlock;
        v92 = 3221225472;
        v93 = sub_100002E5C;
        v94 = &unk_1000083B8;
        v95 = v90;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100002FCC;
        v97 = &unk_100008408;
        v101 = v59;
        v98 = v4;
        v99 = v95;
        v100 = &stru_100008390;
        [v72 sendFilePath:v89 encrypt:v82 topic:v53 transferID:v85 sourceAppID:v54 userInfo:v55 progressBlock:&v91 completionBlock:buf];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = qos_class_self();
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Handling download message at qos (%u)", buf, 8u);
          }
        }

        v87 = IMGetXPCDataFromDictionary();
        v83 = IMGetXPCDataFromDictionary();
        v80 = IMGetXPCStringFromDictionary();
        v79 = IMGetXPCStringFromDictionary();
        v18 = IMGetXPCStringFromDictionary();
        v78 = IMGetXPCStringFromDictionary();
        v19 = IMGetXPCStringFromDictionary();
        uint64 = xpc_dictionary_get_uint64(v4, "file-size");
        v20 = IMGetXPCStringFromDictionary();
        v21 = IMGetXPCStringFromDictionary();
        v22 = v21;
        v23 = [v21 UTF8String];

        if (v23)
        {
          v24 = sandbox_extension_consume();
          if (v24 == -1)
          {
            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = *__error();
                *buf = 67109378;
                *&buf[4] = v26;
                *&buf[8] = 2112;
                *&buf[10] = v18;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Unable to access path with extension, error: %d resource: %@", buf, 0x12u);
              }
            }

            v24 = -1;
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v18;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "No extension for path %@", buf, 0xCu);
            }
          }

          v24 = 0;
        }

        v74 = +[IMTransferAgentController sharedInstance];
        v91 = _NSConcreteStackBlock;
        v92 = 3221225472;
        v93 = sub_100002AA4;
        v94 = &unk_1000083B8;
        v95 = v90;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100002C14;
        v97 = &unk_1000083E0;
        v102 = v24;
        v98 = v4;
        v99 = v18;
        v100 = v95;
        v101 = &stru_100008390;
        v75 = v18;
        [v74 receiveFileTransfer:v78 topic:v20 path:v75 requestURLString:v79 ownerID:v80 signature:v87 fileSize:uint64 decryptionKey:v83 sourceAppID:v19 progressBlock:&v91 completionBlock:buf];
      }
    }

    else if (v5 == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = qos_class_self();
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Handling nickname download message at qos (%u)", buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Transfer agent received nickname get message", buf, 2u);
        }
      }

      v88 = IMGetXPCStringFromDictionary();
      v84 = IMGetXPCDataFromDictionary();
      v81 = IMGetXPCDataFromDictionary();
      v32 = IMGetXPCDataFromDictionary();
      v33 = IMGetXPCDataFromDictionary();
      v34 = IMGetXPCDataFromDictionary();
      v35 = IMGetXPCBoolFromDictionary();
      v36 = IMGetXPCBoolFromDictionary();
      v37 = +[IMTransferAgentNicknameController sharedInstance];
      v38 = im_primary_queue();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100003244;
      v97 = &unk_100008430;
      v98 = v4;
      v99 = v90;
      v100 = &stru_100008390;
      BYTE1(v76) = v36;
      LOBYTE(v76) = v35;
      [v37 getNicknameWithRecordID:v88 decryptionKey:v84 wallpaperDataTag:v81 wallpaperLowResDataTag:v32 wallpaperMetadataTag:v33 avatarRecipeDataTag:v34 knownSender:v76 shouldDecodeImageFields:v38 queue:buf completionBlock:?];
    }

    else if (v5 == 3)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = qos_class_self();
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Handling nickname upload message at qos (%u)", buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Transfer agent received nickname upload message", buf, 2u);
        }
      }

      v8 = IMGetXPCStringFromDictionary();
      v9 = IMGetXPCDataFromDictionary();
      v10 = +[IMTransferAgentNicknameController sharedInstance];
      v11 = im_primary_queue();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000033A0;
      v97 = &unk_100008458;
      v98 = v4;
      v99 = v90;
      v100 = &stru_100008390;
      [v10 setPersonalNicknameData:v9 oldRecordID:v8 queue:v11 completionBlock:buf];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = qos_class_self();
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Handling nickname delete message at qos (%u)", buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Transfer agent received nickname delete message", buf, 2u);
        }
      }

      v48 = +[IMTransferAgentNicknameController sharedInstance];
      v49 = im_primary_queue();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100003600;
      v97 = &unk_100008480;
      v98 = v4;
      v99 = v90;
      v100 = &stru_100008390;
      [v48 deleteAllPersonalNicknamesOnQueue:v49 withCompletion:buf];
    }
  }
}

void sub_1000028F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100001B80);
  }

  _Unwind_Resume(a1);
}

void sub_100002A5C(id a1)
{
  v1 = +[IMTransferAgentIDSInterface sharedInstance];
  [v1 decrementTransferCount];
}

void sub_100002AA4(uint64_t a1, int64_t a2, int64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Download progress update (%llu of %llu)", &v10, 0x16u);
    }
  }

  if (v8)
  {
    xpc_dictionary_set_int64(v8, "__message_type__", 1);
    xpc_dictionary_set_int64(v8, "transferredBytes", a2);
    xpc_dictionary_set_int64(v8, "totalBytes", a3);
    xpc_dictionary_set_int64(v8, "transferSpeed", a4);
    xpc_connection_send_message(*(a1 + 32), v8);
  }
}

void sub_100002C14(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v26 = qos_class_self();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Handling download completion at qos (%u)", buf, 8u);
    }
  }

  if (*(a1 + 64) != -1)
  {
    sandbox_extension_release();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    if (v11 && ([v11 isEqualToString:*(a1 + 40)] & 1) == 0)
    {
      v21 = [NSURL URLWithString:v11];
      IMInsertSandboxExtensionIntoXPCMessageWithKeyForFileURL();
    }

    v22 = v10;
    [v10 UTF8String];
    v23 = v11;
    [v11 UTF8String];
    v24 = v13;
    [v13 UTF8String];
    IMInsertStringsToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    xpc_connection_send_message(*(a1 + 48), reply);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v15, v16, v17, v18, v19);
}

void sub_100002E5C(uint64_t a1, int64_t a2, int64_t a3, int64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Update progress update (%llu of %llu)", &v10, 0x16u);
    }
  }

  if (v8)
  {
    xpc_dictionary_set_int64(v8, "__message_type__", 1);
    xpc_dictionary_set_int64(v8, "transferredBytes", a2);
    xpc_dictionary_set_int64(v8, "totalBytes", a3);
    xpc_dictionary_set_int64(v8, "transferSpeed", a4);
    xpc_connection_send_message(*(a1 + 32), v8);
  }
}

void sub_100002FCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v31 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v33 = qos_class_self();
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Handling upload completion at qos (%u)", buf, 8u);
    }
  }

  if (*(a1 + 56) != -1)
  {
    sandbox_extension_release();
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    v28 = v16;
    [v16 UTF8String];
    v29 = v18;
    [v18 UTF8String];
    v30 = v20;
    [v20 UTF8String];
    IMInsertStringsToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    if (v15)
    {
      IMInsertDatasToXPCDictionary();
    }

    IMInsertBoolsToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    xpc_connection_send_message(*(a1 + 40), reply);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v22, v23, v24, v25, v26);
}

void sub_100003244(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v11 = qos_class_self();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Handling nickname download completion at qos (%u)", buf, 8u);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    if (v5 || v6)
    {
      IMInsertKeyedCodableObjectsToXPCDictionary();
    }

    xpc_connection_send_message(*(a1 + 40), reply);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v8);
}

void sub_1000033A0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v26 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v28 = qos_class_self();
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Handling nickname upload completion at qos (%u)", buf, 8u);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    IMInsertBoolsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertKeyedCodableObjectsToXPCDictionary();
    if (v22)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_connection_send_message(*(a1 + 40), reply);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v24);
}

void sub_100003600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = qos_class_self();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling nickname delete completion at qos (%u)", buf, 8u);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    IMInsertBoolsToXPCDictionary();
    if (v4)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_connection_send_message(*(a1 + 40), reply);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v6);
}

void sub_100003748(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received result from RCS upload %@", buf, 0xCu);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    IMInsertDictionariesToXPCDictionary();
    xpc_connection_send_message(*(a1 + 40), reply);
  }

  v6 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038D8;
  block[3] = &unk_1000084A8;
  v8 = *(a1 + 48);
  dispatch_sync(v6, block);
}

void sub_1000038E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received result from RCS Download %@", buf, 0xCu);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    IMInsertDictionariesToXPCDictionary();
    xpc_connection_send_message(*(a1 + 40), reply);
  }

  v6 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A78;
  block[3] = &unk_1000084A8;
  v8 = *(a1 + 48);
  dispatch_sync(v6, block);
}