uint64_t start()
{
  xpc_track_activity();
  IMSetEmbeddedTempDirectory();
  v0 = objc_autoreleasePoolPush();
  v1 = [+[IMImagePreviewGenerator UTITypes](IMImagePreviewGenerator "UTITypes")];
  [v1 addObjectsFromArray:{+[IMAnimatedImagePreviewGenerator UTITypes](IMAnimatedImagePreviewGenerator, "UTITypes")}];
  v2 = CGImageSourceSetAllowableTypes();

  objc_autoreleasePoolPop(v0);
  if (!v2)
  {
    xpc_main(sub_100000B84);
  }

  return 1;
}

void sub_100000B84(xpc_connection_t connection)
{
  if (qword_10000C0F8 != -1)
  {
    sub_100003CC0();
  }

  xpc_connection_set_target_queue(connection, qword_10000C0F0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000C5C;
  handler[3] = &unk_1000082F8;
  handler[4] = connection;
  xpc_connection_set_event_handler(connection, handler);
  xpc_connection_resume(connection);
}

void sub_100000C5C(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v4 = *(a1 + 32);
  xpc_connection_get_audit_token();
  if (IMDAuditTokenTaskHasEntitlement())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100000E5C;
    v7[3] = &unk_1000082D0;
    v7[4] = *(a1 + 32);
    v7[5] = a2;
    v10[0] = 0;
    v10[1] = 0;
    pthread_main_thread_np();
    pthread_dependency_init_np();
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_100002034;
    v12 = &unk_100008320;
    v13 = v7;
    v14 = v10;
    dispatch_async(&_dispatch_main_q, block);
    pthread_dependency_wait_np();
  }

  else
  {
    pid = xpc_connection_get_pid(*(a1 + 32));
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *block = 138412802;
        *&block[4] = @"com.apple.private.imcore.imtranscoderservice";
        *&block[12] = 2112;
        *&block[14] = IMProcessNameForPid();
        *&block[22] = 1024;
        LODWORD(v12) = pid;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Denying xpc connection, task does not have entitlement: %@  (%@:%d)", block, 0x1Cu);
      }
    }

    xpc_connection_cancel(*(a1 + 32));
  }
}

void sub_100000E5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    if (v2 == &_xpc_error_termination_imminent)
    {
      v12 = @"Termination Imminent";
    }

    else
    {
      v12 = @"unknown";
    }

    if (v2 == &_xpc_error_connection_invalid)
    {
      v13 = @"Connection Invalid";
    }

    else
    {
      v13 = v12;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        v15 = "received error: %@";
        v16 = v14;
        v17 = 12;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v15, &buf, v17);
      }
    }
  }

  else
  {
    xpc_retain(v2);
    xpc_retain(v1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = xpc_connection_get_pid(v1);
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "received message from peer(%d)", &buf, 8u);
      }
    }

    if (qword_10000C108 != -1)
    {
      sub_100003CD4();
    }

    if (qword_10000C118 != -1)
    {
      sub_100003CFC();
    }

    v4 = IMGetXPCIntFromDictionary();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Message type received %d", &buf, 8u);
      }
    }

    if (v4 <= 4)
    {
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          v42 = qword_10000C100;
          v43 = IMGetXPCStringFromDictionary();
          v44 = IMGetXPCStringFromDictionary();
          if ([v44 length])
          {
            v45 = [[NSURL alloc] initWithString:IMGetXPCStringFromDictionary()];
          }

          else
          {
            v45 = 0;
          }

          *&aBlock = objc_opt_class();
          [NSArray arrayWithObjects:&aBlock count:1];
          v80 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();
          v81 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v82 = os_transaction_create();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_100002BB0;
          v107 = &unk_100008518;
          v108 = v2;
          v109 = v43;
          *v111 = v82;
          *&v111[8] = v81;
          v110 = v1;
          v83 = _Block_copy(&buf);
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_100002DAC;
          v98 = &unk_100008540;
          v99 = v43;
          v100 = v45;
          v101 = v44;
          v102 = v80;
          v103 = v83;
          dispatch_async(v42, &block);

          return;
        }

        if (v4 == 3)
        {
          v23 = qword_10000C110;
          v24 = IMGetXPCStringFromDictionary();
          v25 = IMGetXPCStringFromDictionary();
          v26 = IMGetXPCStringFromDictionary();
          v27 = [NSURL URLWithString:v24];
          v28 = [NSURL URLWithString:v25];
          v127 = objc_opt_class();
          [NSArray arrayWithObjects:&v127 count:1];
          v29 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();
          v30 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v31 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          IMGetXPCDictionaryFromDictionary();
          v123 = 0;
          aBlock = 0u;
          v122 = 0u;
          IMPreviewConstraintsFromDictionary();
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_100002E90;
          v98 = &unk_100008590;
          v99 = v2;
          v100 = v27;
          v103 = v30;
          v104 = v31;
          v101 = v1;
          v102 = os_transaction_create();
          v32 = _Block_copy(&block);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          *&v111[16] = aBlock;
          v106 = sub_1000030E4;
          v107 = &unk_1000085B8;
          v108 = v27;
          v109 = v28;
          v110 = v29;
          *v111 = v26;
          *&v111[32] = v122;
          v112 = v123;
          *&v111[8] = v32;
          dispatch_sync(v23, &buf);

          return;
        }
      }

      else
      {
        if (!v4)
        {
          queue = qword_10000C100;
          v94 = IMGetXPCStringFromDictionary();
          if ([v94 length])
          {
            v93 = IMGetXPCDataFromDictionary();
          }

          else
          {
            v93 = 0;
          }

          v90 = IMGetXPCArrayFromDictionary();
          v89 = IMGetXPCBoolFromDictionary();
          v88 = IMGetXPCBoolFromDictionary();
          v87 = IMGetXPCArrayFromDictionary();
          v86 = IMGetXPCDictionaryFromDictionary();
          v85 = IMGetXPCIntFromDictionary();
          v84 = IMGetXPCIntFromDictionary();
          v92 = IMGetXPCIntFromDictionary();
          v69 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"ForceTargetType"];
          if (v69)
          {
            v70 = [v69 intValue];
            if (v70 < 3)
            {
              v92 = v70;
            }
          }

          v71 = IMGetXPCStringFromDictionary();
          v72 = IMGetXPCStringFromDictionary();
          v73 = IMGetXPCBoolFromDictionary();
          if (([objc_msgSend(v72 "pathExtension")] & 1) != 0 || objc_msgSend(objc_msgSend(v72, "pathExtension"), "isEqualToIgnoringCase:", @"bmp"))
          {
            v71 = @"________WBMP_________";
          }

          v74 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
          v75 = IMGetXPCDictionaryFromDictionary();
          v76 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v77 = os_transaction_create();
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_100002134;
          v98 = &unk_1000083B0;
          v99 = v2;
          v100 = v72;
          v102 = v77;
          v103 = v76;
          v101 = v1;
          v78 = _Block_copy(&block);
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 3221225472;
          *&v122 = sub_1000024CC;
          *(&v122 + 1) = &unk_100008400;
          v123 = v2;
          v124 = v72;
          v125 = v1;
          v126 = v77;
          v79 = _Block_copy(&aBlock);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_1000026C4;
          v107 = &unk_100008428;
          v108 = v72;
          v109 = v93;
          v117 = v89;
          v118 = v93 != 0;
          v110 = v90;
          *v111 = v71;
          v119 = v73;
          *&v111[8] = v74;
          *&v111[16] = v87;
          *&v111[24] = v86;
          *&v111[32] = v75;
          v115 = v84;
          v116 = v85;
          v120 = v88;
          *&v111[40] = v94;
          v112 = v78;
          v113 = v79;
          v114 = v92;
          dispatch_async(queue, &buf);

          return;
        }

        if (v4 == 1)
        {
          v18 = qword_10000C110;
          v19 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
          IMGetXPCDictionaryFromDictionary();
          v123 = 0;
          aBlock = 0u;
          v122 = 0u;
          IMPreviewConstraintsFromDictionary();
          v20 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v21 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_100002884;
          v98 = &unk_1000084A0;
          v99 = v2;
          v100 = v19;
          v103 = v20;
          v104 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v101 = v1;
          v102 = os_transaction_create();
          v22 = _Block_copy(&block);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          *v111 = aBlock;
          v106 = sub_100002AAC;
          v107 = &unk_1000084C8;
          v108 = v19;
          v109 = v21;
          *&v111[16] = v122;
          *&v111[32] = v123;
          v110 = v22;
          dispatch_async(v18, &buf);

          return;
        }
      }
    }

    else
    {
      if (v4 <= 6)
      {
        if (v4 == 5)
        {
          v51 = qword_10000C110;
          v52 = IMGetXPCStringFromDictionary();
          v53 = IMGetXPCStringFromDictionary();
          v54 = [NSURL URLWithString:v52];
          *&aBlock = objc_opt_class();
          [NSArray arrayWithObjects:&aBlock count:1];
          v55 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();
          v56 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v57 = os_transaction_create();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_100003528;
          v107 = &unk_100008670;
          v108 = v2;
          v109 = v54;
          v110 = v53;
          *v111 = v1;
          *&v111[8] = v57;
          *&v111[16] = v56;
          v41 = [&buf copy];
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_10000374C;
          v98 = &unk_100008698;
          v99 = v54;
          v100 = v53;
          v101 = v55;
          v102 = v41;
          dispatch_sync(v51, &block);
        }

        else
        {
          v33 = qword_10000C110;
          v34 = IMGetXPCStringFromDictionary();
          v35 = IMGetXPCStringFromDictionary();
          v36 = [NSURL URLWithString:v34];
          v37 = [NSURL URLWithString:v35];
          v127 = objc_opt_class();
          [NSArray arrayWithObjects:&v127 count:1];
          v38 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();
          v39 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v40 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          IMGetXPCDictionaryFromDictionary();
          v123 = 0;
          aBlock = 0u;
          v122 = 0u;
          IMPreviewConstraintsFromDictionary();
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_1000031E0;
          v98 = &unk_100008590;
          v99 = v2;
          v100 = v36;
          v103 = v39;
          v104 = v40;
          v101 = v1;
          v102 = os_transaction_create();
          v41 = _Block_copy(&block);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_100003434;
          v107 = &unk_1000085E0;
          v108 = v36;
          v109 = v37;
          *&v111[8] = aBlock;
          *&v111[24] = v122;
          *&v111[40] = v123;
          v110 = v38;
          *v111 = v41;
          dispatch_sync(v33, &buf);
        }

        return;
      }

      switch(v4)
      {
        case 7:
          v46 = qword_10000C100;
          v47 = [NSURL URLWithString:IMGetXPCStringFromDictionary()];
          v48 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v49 = os_transaction_create();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_100003838;
          v107 = &unk_1000086C0;
          v108 = v2;
          v109 = v1;
          v110 = v49;
          *v111 = v48;
          v50 = _Block_copy(&buf);
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_1000038EC;
          v98 = &unk_1000086E8;
          v99 = v47;
          v100 = v50;
          dispatch_async(v46, &block);

          return;
        case 8:
          v58 = qword_10000C100;
          v59 = IMGetXPCStringFromDictionary();
          v60 = IMGetXPCStringFromDictionary();
          v61 = [NSURL URLWithString:v59];
          v62 = [NSURL URLWithString:v60];
          *&aBlock = objc_opt_class();
          [NSArray arrayWithObjects:&aBlock count:1];
          v63 = IMGetXPCKeyedCodableFromDictionaryWithSecureCodingAllowedClasses();
          v64 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v65 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v66 = os_transaction_create();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_10000392C;
          v107 = &unk_100008710;
          v108 = v2;
          v109 = v61;
          v110 = v62;
          *v111 = v1;
          *&v111[16] = v64;
          *&v111[24] = v65;
          *&v111[8] = v66;
          v67 = [&buf copy];
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_100003A80;
          v98 = &unk_100008698;
          v99 = v61;
          v100 = v62;
          v101 = v63;
          v102 = v67;
          dispatch_sync(v58, &block);

          return;
        case 9:
          v6 = qword_10000C100;
          v7 = [NSURL URLWithString:IMGetXPCStringFromDictionary()];
          v8 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v9 = IMConsumeSandboxExtensionFromXPCMessageWithKey();
          v10 = os_transaction_create();
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v106 = sub_100003AC4;
          v107 = &unk_100008738;
          v108 = v2;
          v109 = v7;
          *&v111[8] = v8;
          *&v111[16] = v9;
          v110 = v1;
          *v111 = v10;
          v11 = [&buf copy];
          block = _NSConcreteStackBlock;
          v96 = 3221225472;
          v97 = sub_100003C4C;
          v98 = &unk_1000086E8;
          v99 = v7;
          v100 = v11;
          dispatch_sync(v6, &block);

          return;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v68 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v4;
        v15 = "We got a transcoder message type that is undefined: %d";
        v16 = v68;
        v17 = 8;
        goto LABEL_27;
      }
    }
  }
}

uint64_t sub_100002034(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return _pthread_dependency_fulfill_np(v2, 0);
}

void sub_10000207C(id a1)
{
  v1 = dispatch_queue_create("IMTranscoderBackgroundPriorityQueue", 0);
  qword_10000C100 = v1;
  global_queue = dispatch_get_global_queue(-2, 0);

  dispatch_set_target_queue(v1, global_queue);
}

void sub_1000020D8(id a1)
{
  v1 = dispatch_queue_create("IMTranscoderNormalPriorityQueue", 0);
  qword_10000C110 = v1;
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_set_target_queue(v1, global_queue);
}

void sub_100002134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000021CC;
  block[3] = &unk_100008388;
  block[4] = *(a1 + 32);
  block[5] = a2;
  v13 = a6;
  v14 = a7;
  block[6] = a3;
  block[7] = a5;
  block[8] = a4;
  block[9] = a8;
  v10 = *(a1 + 40);
  v8 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000021CC(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  [objc_msgSend(*(a1 + 40) "path")];
  IMInsertStringsToXPCDictionary();
  v10 = *(a1 + 113);
  v6 = *(a1 + 112);
  IMInsertBoolsToXPCDictionary();
  v11 = *(a1 + 56);
  v7 = *(a1 + 48);
  IMInsertCodableObjectsToXPCDictionary();
  v8 = *(a1 + 64);
  IMInsertCodableObjectsToXPCDictionary();
  v9 = *(a1 + 72);
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 72);
      v4 = *(a1 + 80);
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled TranscodeAttachment for %@ complete, additionalContext %@", buf, 0x16u);
    }
  }

  xpc_connection_send_message(*(a1 + 88), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 88));
  sub_100002388(*(a1 + 104));
  sub_10000243C(*(a1 + 96));
}

void sub_100002388(uint64_t a1)
{
  if (a1 >= 1 && sandbox_extension_release() == -1 && IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Failed to release sandbox extension", v2, 2u);
    }
  }
}

void sub_10000243C(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000287C;
  block[3] = &unk_100008450;
  block[4] = a1;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1000024CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002560;
  v6[3] = &unk_1000083D8;
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  v6[6] = a4;
  v6[7] = a3;
  v9 = a5;
  v10 = a6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100002560(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v9 = *(a1 + 56);
  v7 = *(a1 + 48);
  v5 = *(a1 + 40);
  IMInsertCodableObjectsToXPCDictionary();
  v8 = *(a1 + 89);
  v6 = *(a1 + 88);
  IMInsertBoolsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled TranscodeAttachment for %@ via fallback", buf, 0xCu);
    }
  }

  xpc_connection_send_message(*(a1 + 72), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 72));
  sub_10000243C(*(a1 + 80));
}

id sub_1000026C4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) length];
      v5 = @"NO";
      if (*(a1 + 136))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = *(a1 + 48);
      if (*(a1 + 137))
      {
        v5 = @"YES";
      }

      *buf = 138413314;
      v16 = v3;
      v17 = 2048;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling TranscodeAttachment for %@ data length %lu shouldGenerateFallback %@ isBalloonWithData %@ attachments %@", buf, 0x34u);
    }
  }

  v8 = *(a1 + 137);
  v9 = +[IMTranscodingAgentController sharedInstance];
  v10 = v9;
  if (v8)
  {
    return [(IMTranscodingAgentController *)v9 transcodeFileTransferData:*(a1 + 40) balloonBundleID:*(a1 + 96) attachments:*(a1 + 48) fallBack:*(a1 + 136) completionBlock:*(a1 + 112)];
  }

  v12 = [NSURL fileURLWithPath:*(a1 + 32)];
  LOBYTE(v14) = *(a1 + 139);
  LOBYTE(v13) = *(a1 + 136);
  return [(IMTranscodingAgentController *)v10 transcodeFileTransferContents:v12 utiType:*(a1 + 56) isSticker:*(a1 + 138) allowUnfilteredUTIs:*(a1 + 64) target:*(a1 + 120) sizes:*(a1 + 72) commonCapabilities:*(a1 + 80) maxDimension:*(a1 + 128) transcoderUserInfo:*(a1 + 88) fallback:v13 representations:*(a1 + 132) isLQMEnabled:v14 completionBlock:*(a1 + 104)];
}

void sub_100002884(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000291C;
  v6[3] = &unk_100008478;
  v5 = *(a1 + 32);
  v10 = a2;
  v6[4] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  v7 = *(a1 + 40);
  v9 = *(a1 + 64);
  v8 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10000291C(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v7 = *(a1 + 104);
  IMInsertBoolsToXPCDictionary();
  v8 = *(a1 + 40);
  IMInsertCodableObjectsToXPCDictionary();
  v9 = *(a1 + 48);
  IMInsertCodableObjectsToXPCDictionary();
  v10 = *(a1 + 56);
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v6 = *(a1 + 56);
      v5 = *(a1 + 64);
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled GenerateSafeRender for %@, previewURL: %@ error: %@", buf, 0x20u);
    }
  }

  xpc_connection_send_message(*(a1 + 72), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 72));
  sub_100002388(*(a1 + 88));
  sub_100002388(*(a1 + 96));
  sub_10000243C(*(a1 + 80));
}

id sub_100002AAC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *v11 = 138412546;
      *&v11[4] = v3;
      *&v11[12] = 2112;
      *&v11[14] = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling GenerateSafeRender for %@ to %@", v11, 0x16u);
    }
  }

  v5 = +[IMTranscodingAgentController sharedInstance];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  *v11 = *(a1 + 56);
  *&v11[16] = v9;
  v12 = *(a1 + 88);
  return [(IMTranscodingAgentController *)v5 generateSafeRender:v6 outputURL:v7 constraints:v11 completionBlock:v8];
}

void sub_100002BB0(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C3C;
  block[3] = &unk_1000084F0;
  v3 = *(a1 + 32);
  v9 = a2;
  block[4] = v3;
  block[5] = a3;
  v6 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100002C3C(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v7 = *(a1 + 80);
  IMInsertBoolsToXPCDictionary();
  v8 = *(a1 + 40);
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 80))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled GenerateSnapshot for %@, success: %@ snapshotError: %@", buf, 0x20u);
    }
  }

  xpc_connection_send_message(*(a1 + 56), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 56));
  sub_100002388(*(a1 + 72));
  sub_10000243C(*(a1 + 64));
}

id sub_100002DAC(void *a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling GenerateSnapshot for: %@", &v5, 0xCu);
    }
  }

  return [+[IMTranscodingAgentController sharedInstance](IMTranscodingAgentController generateSnapshotForMessageGUID:"generateSnapshotForMessageGUID:payloadURL:balloonBundleID:senderContext:completionBlock:" payloadURL:a1[4] balloonBundleID:a1[5] senderContext:a1[6] completionBlock:a1[7], a1[8]];
}

void sub_100002E90(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002F28;
  v6[3] = &unk_100008568;
  v5 = *(a1 + 32);
  v12 = a2;
  v6[4] = v5;
  v6[5] = a3;
  v9 = a4;
  v10 = a5;
  v7 = *(a1 + 40);
  v11 = *(a1 + 64);
  v8 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100002F28(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v8 = *(a1 + 104);
  IMInsertBoolsToXPCDictionary();
  v9 = *(a1 + 40);
  IMInsertCodableObjectsToXPCDictionary();
  *buf = *(a1 + 72);
  [NSValue valueWithBytes:buf objCType:"{CGSize=dd}", v9, 0];
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      if (*(a1 + 104))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = *(a1 + 72);
      v7 = *(a1 + 80);
      *buf = 138413058;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled GeneratePreview for %@, success: %@ size: (%f, %f)", buf, 0x2Au);
    }
  }

  xpc_connection_send_message(*(a1 + 56), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 56));
  sub_100002388(*(a1 + 88));
  sub_100002388(*(a1 + 96));
  sub_10000243C(*(a1 + 64));
}

id sub_1000030E4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      LODWORD(v12[0]) = 138412290;
      *(v12 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling GeneratePreview for %@", v12, 0xCu);
    }
  }

  v4 = +[IMTranscodingAgentController sharedInstance];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 88);
  v12[0] = *(a1 + 72);
  v12[1] = v10;
  v13 = *(a1 + 104);
  return [(IMTranscodingAgentController *)v4 generatePreview:v5 previewURL:v6 senderContext:v7 balloonBundleID:v8 constraints:v12 completionBlock:v9];
}

void sub_1000031E0(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003278;
  v6[3] = &unk_100008568;
  v5 = *(a1 + 32);
  v12 = a2;
  v6[4] = v5;
  v6[5] = a3;
  v9 = a4;
  v10 = a5;
  v7 = *(a1 + 40);
  v11 = *(a1 + 64);
  v8 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100003278(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v8 = *(a1 + 104);
  IMInsertBoolsToXPCDictionary();
  v9 = *(a1 + 40);
  IMInsertCodableObjectsToXPCDictionary();
  *buf = *(a1 + 72);
  [NSValue valueWithBytes:buf objCType:"{CGSize=dd}", v9, 0];
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      if (*(a1 + 104))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = *(a1 + 72);
      v7 = *(a1 + 80);
      *buf = 138413058;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled GenerateMetadata for %@, success: %@ size: (%f, %f)", buf, 0x2Au);
    }
  }

  xpc_connection_send_message(*(a1 + 56), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 56));
  sub_100002388(*(a1 + 88));
  sub_100002388(*(a1 + 96));
  sub_10000243C(*(a1 + 64));
}

id sub_100003434(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      LODWORD(v11[0]) = 138412290;
      *(v11 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling GenerateMetadata for %@", v11, 0xCu);
    }
  }

  v4 = +[IMTranscodingAgentController sharedInstance];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v11[0] = *(a1 + 64);
  v11[1] = v9;
  v12 = *(a1 + 96);
  return [(IMTranscodingAgentController *)v4 generatePreviewMetadata:v5 destinationURL:v6 senderContext:v7 constraints:v11 completionBlock:v8];
}

__n128 sub_100003528(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000035BC;
  v9[3] = &unk_100008648;
  v5 = *(a1 + 32);
  v13 = a2;
  v9[4] = v5;
  v9[5] = a5;
  v9[6] = a3;
  v9[7] = a4;
  v6 = *(a1 + 40);
  v12 = *(a1 + 72);
  v7 = *(a1 + 56);
  v10 = v6;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, v9);
  return result;
}

void sub_1000035BC(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v6 = *(a1 + 104);
  IMInsertBoolsToXPCDictionary();
  v7 = *(a1 + 40);
  IMInsertCodableObjectsToXPCDictionary();
  v8 = *(a1 + 48);
  IMInsertDatasToXPCDictionary();
  [*(a1 + 56) __imArrayByApplyingBlock:{&stru_100008620, v8, 0}];
  IMInsertArraysToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      v5 = *(a1 + 72);
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled DecodeiMessageAppPayload for %@ bundleID %@", buf, 0x16u);
    }
  }

  xpc_connection_send_message(*(a1 + 80), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 80));
  sub_100002388(*(a1 + 96));
  sub_10000243C(*(a1 + 88));
}

id sub_10000374C(void *a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling DecodeiMessageAppPayload for %@ bundleID %@", &v6, 0x16u);
    }
  }

  return [+[IMTranscodingAgentController sharedInstance](IMTranscodingAgentController decodeiMessageAppPayload:"decodeiMessageAppPayload:senderContext:bundleID:completionBlock:" senderContext:a1[4] bundleID:a1[6] completionBlock:a1[5], a1[7]];
}

void sub_100003838(uint64_t a1, uint64_t a2, void *a3)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  [a3 UTF8String];
  IMInsertStringsToXPCDictionary();
  IMInsertCodableObjectsToXPCDictionary();
  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  sub_100002388(*(a1 + 56));
  v6 = *(a1 + 48);

  sub_10000243C(v6);
}

id sub_1000038EC(uint64_t a1)
{
  v2 = +[IMTranscodingAgentController sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(IMTranscodingAgentController *)v2 transcribeAudioForAudioTransferURL:v3 withCompletion:v4];
}

void sub_10000392C(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  IMInsertBoolsToXPCDictionary();
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handled GeneratePosterConfig for %@ to %@", buf, 0x16u);
    }
  }

  xpc_connection_send_message(*(a1 + 56), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 56));
  sub_100002388(*(a1 + 72));
  sub_100002388(*(a1 + 80));
  sub_10000243C(*(a1 + 64));
}

id sub_100003A80(void *a1)
{
  v2 = +[IMTranscodingAgentController sharedInstance];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(IMTranscodingAgentController *)v2 generatePosterConfig:v3 destinationURL:v4 senderContext:v5 completionBlock:v6];
}

void sub_100003AC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  IMInsertBoolsToXPCDictionary();
  [objc_msgSend(a3 path];
  IMInsertStringsToXPCDictionary();
  IMInsertCodableObjectsToXPCDictionary();
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      *buf = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = a4;
      v15 = 2112;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Handled GenerateReadOnlyPosterConfig for %@, error: %@. Generated: %@", buf, 0x20u);
    }
  }

  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 48));
  sub_100002388(*(a1 + 64));
  sub_100002388(*(a1 + 72));
  sub_10000243C(*(a1 + 56));
}

uint64_t sub_100003C4C(uint64_t a1)
{
  v3 = 0;
  [+[IMTranscodingAgentController sharedInstance](IMTranscodingAgentController generateReadOnlyPosterConfig:"generateReadOnlyPosterConfig:error:" error:*(a1 + 32), &v3];
  return (*(*(a1 + 40) + 16))();
}