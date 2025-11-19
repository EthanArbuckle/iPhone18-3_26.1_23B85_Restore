void sub_100002EB0(id a1, OS_xpc_object *a2, OS_xpc_object *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  type = xpc_get_type(v7);
  if (type != &_xpc_type_error)
  {
    if (type != &_xpc_type_dictionary)
    {
      v9 = xpc_copy_description(v7);
      free(v9);
      goto LABEL_40;
    }

    v11 = v7;
    if (xpc_dictionary_get_BOOL(v11, "setup-request"))
    {
      *buf = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000035F8;
      v21 = &unk_100BD6E40;
      v22 = v11;
      v23 = v6;
      v12 = dispatch_block_create(0, buf);
      if (_os_feature_enabled_impl())
      {
        goto LABEL_37;
      }
    }

    else if (xpc_dictionary_get_BOOL(v11, "xpc-object"))
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Incoming file descriptor request", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      *buf = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10043B408;
      v21 = &unk_100BD6E40;
      v22 = v6;
      v23 = v11;
      v12 = dispatch_block_create(0, buf);
      if (_os_feature_enabled_impl())
      {
        goto LABEL_37;
      }
    }

    else
    {
      *buf = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_100004688;
      v21 = &unk_100BD6E40;
      v22 = v6;
      v23 = v11;
      v12 = dispatch_block_create(0, buf);
      if (_os_feature_enabled_impl())
      {
LABEL_37:
        v12[2](v12);
LABEL_39:

        goto LABEL_40;
      }
    }

    sub_1000034F0(v12);
    goto LABEL_39;
  }

  if (v7 == &_xpc_error_connection_invalid)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v6);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      xpc_connection_get_pid(v6);
      _IDSLogV();
    }

    v14 = im_local_object_from_connection();
    v15 = v14;
    if (v14)
    {
      [v14 _portDidBecomeInvalid];
      CFRelease(v15);
    }

    xpc_connection_cancel(v6);
  }

  else if (v7 == &_xpc_error_connection_interrupted)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v6);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_11;
    }
  }

  else if (v7 == &_xpc_error_termination_imminent)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v6);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
LABEL_11:
        xpc_connection_get_pid(v6);
        _IDSLogV();
      }
    }
  }

LABEL_40:
}

void sub_100003490(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100002FC4);
  }

  _Unwind_Resume(a1);
}

void sub_1000034F0(void *a1)
{
  v1 = a1;
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  pthread_main_thread_np();
  pthread_dependency_init_np();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000035B0;
  v3[3] = &unk_100BDA2B8;
  v4 = v1;
  v5 = v6;
  v2 = v1;
  dispatch_async(&_dispatch_main_q, v3);
  pthread_dependency_wait_np();
}

uint64_t sub_1000035B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return _pthread_dependency_fulfill_np(v2, 0);
}

void sub_1000035F8(uint64_t a1)
{
  v2 = +[IDSDaemonMIGInterface sharedInstance];
  v3 = [v2 delegate];

  v4 = IMGetXPCStringFromDictionary();
  v5 = IMGetXPCDictionaryFromDictionary();
  pid = xpc_connection_get_pid(*(a1 + 40));
  if (+[IDSUserManagement isThreadDataSeparated]|| !_os_feature_enabled_impl())
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *v20 = 138412802;
      *&v20[4] = v4;
      *&v20[12] = 1024;
      *&v20[14] = pid;
      *&v20[18] = 2112;
      *&v20[20] = v17;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Data separated port name request for: %@ from pid: %d -- rejecting %@", v20, 0x1Cu);
    }

    v11 = 0;
    LOBYTE(v10) = 0;
  }

  else
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v20 = v7;
    *&v20[16] = v7;
    xpc_connection_get_audit_token();
    if (v3 && *(a1 + 40))
    {
      v8 = +[IDSDaemonMIGInterface sharedInstance];
      v9 = *(a1 + 40);
      *buf = *v20;
      *&buf[16] = *&v20[16];
      v18 = 0;
      v10 = [v3 daemonInterface:v8 shouldGrantAccessForPID:pid auditToken:buf portName:v4 listenerConnection:v9 setupInfo:v5 setupResponse:&v18];
      v11 = v18;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      *buf = 138412802;
      *&buf[4] = v4;
      if (v10)
      {
        v14 = @"YES";
      }

      *&buf[12] = 1024;
      *&buf[14] = pid;
      *&buf[18] = 2112;
      *&buf[20] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Port name request for: %@ from pid: %d granted: %@", buf, 0x1Cu);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v16 = reply;
  if (reply)
  {
    if (v11)
    {
      xpc_dictionary_set_value(reply, "response", v11);
    }

    xpc_dictionary_set_BOOL(v16, "granted", v10);
    xpc_connection_send_message(*(a1 + 40), v16);
  }
}

void sub_100003A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100003A80(void *a1)
{
  v1 = a1;
  if ([v1 rangeOfString:@"&."])
  {
    if ([v1 rangeOfString:@"^."])
    {
      if ([v1 rangeOfString:@"com.apple.private.alloy."])
      {
        if ([v1 rangeOfString:@"com.apple."])
        {
          v6 = v1;
          goto LABEL_11;
        }

        v7 = [v1 substringFromIndex:v5];
        [NSString stringWithFormat:@"^.%@", v7];
      }

      else
      {
        v7 = [v1 substringFromIndex:v4];
        [NSString stringWithFormat:@"&.%@", v7];
      }
    }

    else
    {
      v7 = [v1 substringFromIndex:v3];
      [NSString stringWithFormat:@"-.%@", v7];
    }
  }

  else
  {
    v7 = [v1 substringFromIndex:v2];
    [NSString stringWithFormat:@"+.%@", v7];
  }
  v6 = ;

LABEL_11:

  return v6;
}

uint64_t sub_100003BE4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kIDSRegistrationEntitlement])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:kIDSMessagingEntitlement])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:kIDSSessionEntitlement])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:kIDSRegistrationResetEntitlement])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:kIDSiCloudSignInHackEntitlement])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:kIDSEncryptionKeysEntitlement])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:kIDSHighPriorityMessagingEntitlement])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:kIDSUrgentPriorityMessagingEntitlement])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:kIDSContinuityEntitlement])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:kIDSSelfSessionEntitlement])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:kIDSDeviceUUIDEntitlement])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:kIDSSessionPrivateEntitlement])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:kIDSBypassSizeCheckEntitlement])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:kIDSPreferInfraWiFiEntitlement])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:kIDSLinkPreferencesEntitlement])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:kIDSLocalPairingEntitlement])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:kIDSLocalPairingAPIEntitlement])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:kIDSAccountSyncEntitlement])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:kIDSAllowedTrafficClasses])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:kIDSKeyRollingEntitlement])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:kIDSReportiMessageSpamEntitlement])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:kIDSForceEncryptionOffEntitlement])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:kIDSSubServicesEntitlement])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:kIDSAppleCareServicesEntitlement])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:kIDSRegistrationControlEntitlement])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:kIDSPhoneNumberAuthenticationEntitlement])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:kIDSPhoneNumberAuthenticationPrivateEntitlement])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:kIDSTestToolEntitlement])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:kIDSStateResetEntitlement])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:kIDSReportSpamEntitlement])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:kIDSStatusKitPublishingForStatusTypeEntitlement])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:kIDSStatusKitSubscriptionForStatusTypeEntitlement])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:kIDSStatusKitPublishingForAllStatusTypeEntitlement])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:kIDSStatusKitSubscriptionForAllStatusTypeEntitlement])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:kIDSForceQuerySendParameterEntitlement])
  {
    v2 = 35;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void sub_1000041CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000041E4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _criticalActivePairedDevice];

  return _objc_release_x1();
}

void sub_1000043A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_base_queue();
  dispatch_assert_queue_V2(v7);

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Duet resources changed {syncIdentifiersToCheck: %@, defaultIdentifiersToCheck: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPairedDeviceIdentifier];

  v10 = +[NSMutableSet set];
  [v10 addObjectsFromArray:v6];
  [v10 addObjectsFromArray:v5];
  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v10 allObjects];
  [v11 _resourceAvailabilityChangedForIdentifiers:v12];
}

void sub_100004688(uint64_t a1)
{
  v2 = im_local_object_from_connection();
  if (+[IDSUserManagement isThreadDataSeparated]&& _os_feature_enabled_impl())
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v16 = v2;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Data separated request came in to %@ from peer: %@ -- rejecting %@", buf, 0x20u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v2)
  {
    v6 = [v2 protocolChecker];
    v3 = [v6 protocol];

    int64 = xpc_dictionary_get_int64(*(a1 + 40), "priority");
    if (int64)
    {
      v8 = +[IDSDaemonPriorityQueueController sharedInstance];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100015F18;
      v10[3] = &unk_100BDA088;
      v11 = *(a1 + 40);
      v12 = v2;
      v3 = v3;
      v13 = v3;
      v14 = int64;
      [v8 performBlockWithPriority:v10 priority:int64];
    }

    else
    {
      v9 = IMCreateInvocationFromXPCObjectWithProtocol();
      if (v9)
      {
        if (_os_feature_enabled_impl())
        {
          [v2 _enqueueInvocationWithSync:v9 xpcMessage:*(a1 + 40)];
        }

        else
        {
          [v2 _enqueueInvocation:v9];
        }
      }

      CFRelease(v2);
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_1000061A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000061B8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 96) copy];

  return _objc_release_x1();
}

void sub_100006380(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Application state changed: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v3;
    _IDSLogV();
  }

  v6 = [v3 objectForKey:{BKSApplicationStateProcessIDKey, v13}];
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
      LODWORD(v17) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " => Pid %d suspended!", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 intValue];
      _IDSLogV();
    }

    v12 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10042795C;
    block[3] = &unk_100BD6E40;
    block[4] = WeakRetained;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

id sub_100006AB8(void *a1)
{
  v1 = a1;
  if ([v1 rangeOfString:@"+."])
  {
    if ([v1 rangeOfString:@"-."])
    {
      if ([v1 rangeOfString:@"&."])
      {
        if ([v1 rangeOfString:@"^."])
        {
          v6 = v1;
          goto LABEL_11;
        }

        v7 = [v1 substringFromIndex:v5];
        [NSString stringWithFormat:@"com.apple.%@", v7];
      }

      else
      {
        v7 = [v1 substringFromIndex:v4];
        [NSString stringWithFormat:@"com.apple.private.alloy.%@", v7];
      }
    }

    else
    {
      v7 = [v1 substringFromIndex:v3];
      [NSString stringWithFormat:@"^.%@", v7];
    }
  }

  else
  {
    v7 = [v1 substringFromIndex:v2];
    [NSString stringWithFormat:@"&.%@", v7];
  }
  v6 = ;

LABEL_11:

  return v6;
}

void sub_100006C24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updating interested bundle IDs to: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = *(a1 + 32);
    _IDSLogV();
  }

  [WeakRetained[48] updateInterestedBundleIDs:{*(a1 + 32), v6}];

  objc_autoreleasePoolPop(v2);
}

void sub_10000A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A77C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _criticalAllPairedDevices];

  return _objc_release_x1();
}

id sub_10000A7C8(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24) - Current + 600.0;
  if (v4 <= 0.0)
  {

    return [v3 __closeDatabase];
  }

  else
  {
    [*(v3 + 8) lock];
    v5 = *(*(a1 + 32) + 16);
    v6 = dispatch_time(0, (v4 * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0x7FFFFFFFFFFFFFFFuLL, (v4 * 1000000000.0) / 10);
    v7 = *(*(a1 + 32) + 8);

    return [v7 unlock];
  }
}

uint64_t sub_10000A8A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A8B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A8C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A8D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A8E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A8F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000A918(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10000A944(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A9F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AA94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AAF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000AB14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000AB24(void *a1)
{
  v1 = a1;
  if (qword_100CBF4D0 != -1)
  {
    sub_100931C0C();
  }

  pthread_mutex_lock(&stru_100CBF4D8);
  v2 = +[IMSystemMonitor sharedInstance];
  v3 = [v2 isUnderDataProtectionLock];

  v4 = +[IMSystemMonitor sharedInstance];
  v5 = [v4 isUnderFirstDataProtectionLock];

  v6 = [v1 dataProtectionClass];
  v7 = IDSDataProtectionClassStringFromDataProtectionClass();
  v8 = [qword_100CBF4C8 objectForKey:v7];
  if (v8)
  {
    goto LABEL_4;
  }

  if (((v6 == 1) & v3) != 1 && ((v6 == 0) & v5) != 1)
  {
    v10 = [NSString stringWithFormat:@"IDSMessageStore-%@", v7];
    v8 = CSDBCreateThreadedRecordStoreWithQOSClassAndLookAsideBufferConfig();
    [qword_100CBF4C8 setObject:v8 forKey:v7];
    v11 = +[IMRGLog dataProtectionClass];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = qword_100CBF4C8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SharedMessage store %@", buf, 0xCu);
    }

LABEL_4:
    pthread_mutex_unlock(&stru_100CBF4D8);
    goto LABEL_8;
  }

  pthread_mutex_unlock(&stru_100CBF4D8);
  v8 = 0;
LABEL_8:

  return v8;
}

double sub_10000AD38()
{
  v0 = +[IDSServerBag sharedInstance];
  v1 = [v0 objectForKey:@"gl-cloud-msg-disable-interval"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

void sub_10000B240(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = sub_10000AB24(a3);
  CSDBPerformBlock();
}

void sub_10000B2B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained connectionIsEmptyOfCloudMessages:*(a1 + 32)];
}

uint64_t sub_10000B4B0(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B930;
  v13[3] = &unk_100BD7AB8;
  v18 = a3;
  v10 = a5;
  v16 = a2;
  v17 = a1;
  v14 = v10;
  v15 = &v19;
  sub_10000B8B8(v13, v9);
  v11 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v11;
}

void sub_10000B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B6F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_10000AB24(v4);
  CSDBThreadedRecordStoreOwnsCurrentThread();

  v7 = sub_10000AB24(v4);

  if (v7)
  {
    v8 = v4;
    v9 = v5;
    v10 = objc_autoreleasePoolPush();
    v11 = [v8 dataProtectionClass];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006B7918;
    v15[3] = &unk_100BE45F8;
    v16 = v11;
    v12 = objc_retainBlock(v15);
    v13 = v12;
    if (!v9)
    {
      v9 = objc_retainBlock(v12);
    }

    v14 = sub_10000AB24(v8);
    CSDBThreadedRecordStoreEnsureDatabaseSetupWithProtection();

    objc_autoreleasePoolPop(v10);
  }
}

void sub_10000B8B8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 ensureDatabaseIsInitialized];
  v5 = sub_10000AB24(v3);

  CSDBPerformLockedSectionForDatabase();
}

void sub_10000B930(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"SELECT DISTINCT account_guid FROM outgoing_message WHERE priority = ? AND is_sent = 0 AND pending_delete = 0 ");
  if (*(a1 + 64) == 1)
  {
    CFStringAppend(Mutable, @"AND duet_identifiers IS NOT NULL ");
  }

  if ([*(a1 + 32) count])
  {
    CFStringAppend(Mutable, @"AND message_type ");
    [*(a1 + 32) count];
    v3 = CSDBGenerateInClauseForCount();
    CFStringAppend(Mutable, v3);
  }

  CFStringAppend(Mutable, @"LIMIT ?");
  v4 = CSDBSqliteDatabaseStatementForReading();
  if (v4 && *(v4 + 8))
  {
    CSDBSqliteBindInt64();
    if ([*(a1 + 32) count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v13 + 1) + 8 * i) longLongValue];
            CSDBSqliteBindInt64();
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }

    CSDBSqliteBindInt64();
    while (1)
    {
      v10 = CSDBSqliteStatementCopyStringResult();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = *(*(*(a1 + 40) + 8) + 24);
      if (!v12)
      {
        *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v12 = *(*(*(a1 + 40) + 8) + 24);
      }

      CFArrayAppendValue(v12, v11);
      CFRelease(v11);
    }

    CSDBSqliteStatementReset();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_10000BB74(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_10000AB24(a2);
  CSDBPerformLockedSectionForRecordStoreWithoutInitialize();
}

id sub_10000BE90(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_IDSSessionClientID unknown class type for %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v5 = [v4 connection];
  v6 = v5;
  if (v5)
  {
    pid = xpc_connection_get_pid(v5);
LABEL_7:
    v8 = [NSString stringWithFormat:@"%@.[%d]", v3, pid];

    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    pid = [v4 pid];
    goto LABEL_7;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_IDSSessionClientID failed to get pid from %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && (_IDSShouldLog() & 1) != 0)
  {
LABEL_17:
    _IDSLogV();
  }

LABEL_18:
  v8 = v3;
LABEL_19:

  return v8;
}

void sub_10000C18C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 16);
  v9 = 0;
  do
  {
    if (v4 >= v6)
    {
      break;
    }

    v8 = 0;
    v7 = (*(a1 + 8) + 16 * v4);
    (*(a2 + 16))(a2, *v7, v7[1], &v9, &v8);
    if (v8 == 1)
    {

      if (v6 >= 2)
      {
        *(*(a1 + 8) + 16 * v4) = *(*(a1 + 8) + 16 * v6 - 16);
      }

      --v6;
      v5 = 1;
    }

    else
    {
      ++v4;
    }
  }

  while (v9 != 1);
  if (v5)
  {
    *(a1 + 16) = v6;
  }
}

void sub_10000C280(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 16);
  v9 = 0;
  do
  {
    if (v4 >= v6)
    {
      break;
    }

    v8 = 0;
    v7 = (*(a1 + 8) + 16 * v4);
    (*(a2 + 16))(a2, *v7, *(v7 + 1), &v9, &v8);
    if (v8 == 1)
    {

      if (v6 >= 2)
      {
        *(*(a1 + 8) + 16 * v4) = *(*(a1 + 8) + 16 * v6 - 16);
      }

      --v6;
      v5 = 1;
    }

    else
    {
      ++v4;
    }
  }

  while (v9 != 1);
  if (v5)
  {
    *(a1 + 16) = v6;
  }
}

void sub_10000C35C(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForPriority:200];
}

void sub_10000C3A4(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForPriority:300];
}

void sub_10000C3EC(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForSockets];
}

uint64_t sub_10000CF7C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D0B4;
  v8[3] = &unk_100BE2850;
  v12 = a2;
  v13 = a1;
  v5 = a3;
  v9 = v5;
  v10 = &v18;
  v11 = &v14;
  sub_10000B8B8(v8, v5);
  if (a4)
  {
    *a4 = *(v15 + 24);
  }

  v6 = v19[3];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v6;
}

void sub_10000D090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10000D0B4(uint64_t a1)
{
  v2 = CSDBSqliteDatabaseStatementForReading();
  if (v2 && *(v2 + 8))
  {
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    v3 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count & 0x7FFFFFFF;
      v6 = v5 - 1;
      while (1)
      {
        CFArrayGetValueAtIndex(v3, v6);
        ID = CSDBRecordGetID();
        v8 = sub_10061D08C(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        v9 = v8;
        if (!*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        if (v8)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (--v6 == -1)
        {
          goto LABEL_14;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, v5, &kCFTypeArrayCallBacks);
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_7:
      CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 24), v9);
      CFRelease(v9);
      goto LABEL_8;
    }

LABEL_14:
    CSDBSqliteStatementReset();
    if (v3)
    {

      CFRelease(v3);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10000D81C(uint64_t a1)
{
  v3 = [*(a1 + 32) block];
  v2 = [*(a1 + 32) _isFinishedBlock];
  v3[2](v3, v2, [*(a1 + 32) attempts]);
}

void sub_10000DA28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabled offgrid mode through internet with error: %@", &v6, 0xCu);
  }

  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [*(a1 + 32) _setAndPersistOffGridMode:*(*(a1 + 32) + 88) publishStatus:v5];
  [*(a1 + 32) _updateClientsWithCurrentStateAndError:v3];
}

void sub_10000DB0C(uint64_t a1, char a2)
{
  if (a2)
  {
    *(*(a1 + 32) + 40) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _run];
  }
}

uint64_t sub_10000DB5C(uint64_t a1)
{
  sub_10000DBA0(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);

  return _pthread_dependency_fulfill_np(v2, 0);
}

void sub_10000DBA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  connection = v3;
  pid = xpc_connection_get_pid(v3);
  type = xpc_get_type(v4);
  object = v4;
  if (type != &_xpc_type_error)
  {
    if (type == &_xpc_type_dictionary)
    {
      v12 = v4;
      if (_IDSWillLog())
      {
        v13 = v12;
        v14 = xpc_copy_description(v12);
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *&buf[4] = xpc_connection_get_pid(connection);
          *&buf[8] = 2080;
          *&buf[10] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received message from peer(%d): %s", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          xpc_connection_get_pid(connection);
          MarcoLogMadridLevel();
          v76 = xpc_connection_get_pid(connection);
          v86 = v14;
          IMLogString();
          if (_IMWillLog())
          {
            v76 = xpc_connection_get_pid(connection);
            v86 = v14;
            _IMAlwaysLog();
          }
        }

        free(v14);
        v12 = v13;
      }

      xdict = v12;
      if (xpc_dictionary_get_BOOL(v12, "service-cache-request"))
      {
        v16 = connection;
        v17 = v12;
        reply = xpc_dictionary_create_reply(v17);
        if (reply)
        {
          *&v19 = 0xAAAAAAAAAAAAAAAALL;
          *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *buf = v19;
          *&buf[16] = v19;
          xpc_connection_get_audit_token();
          v20 = xpc_connection_get_pid(v16);
          if ((IMDAuditTokenTaskHasEntitlement() & 1) != 0 || (IMDAuditTokenTaskHasEntitlement() & 1) != 0 || IMDAuditTokenTaskHasEntitlement())
          {
            v21 = IMGetXPCStringFromDictionary();
            v22 = IMGetXPCStringFromDictionary();
            v23 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v121 = 138412546;
              *&v121[4] = v22;
              *&v121[12] = 2112;
              *&v121[14] = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "*** Incoming cache query for (service: %@) (transactionID: %@)", v121, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogMadridLevel();
              v76 = v22;
              v86 = v21;
              IMLogString();
              if (_IMWillLog())
              {
                v76 = v22;
                v86 = v21;
                _IMAlwaysLog();
              }
            }

            v24 = [IDSDServiceController sharedInstance:v76];
            v25 = [v24 serviceWithIdentifier:v22];

            v26 = [v25 queryService];
            v27 = +[IDSIDStatusQueryController sharedInstance];
            v28 = [v27 currentCacheForService:v26];

            v29 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v28 count];
              *v121 = 67109120;
              *&v121[4] = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Current cache: %d count", v121, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v77 = [v28 count];
              MarcoLogMadridLevel();
              v78 = [v28 count];
              IMLogString();
              if (_IMWillLog())
              {
                [v28 count];
                _IMAlwaysLog();
              }
            }

            IMInsertNSStringsToXPCDictionary();
            IMInsertDictionariesToXPCDictionary();
            IMInsertNSStringsToXPCDictionary();
          }

          else
          {
            v70 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              *v121 = 67109120;
              *&v121[4] = v20;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Incoming cache query, but %d is not entitled to access the cache", v121, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogMadridLevel();
              IMLogString();
              if (_IMWillLog())
              {
                _IMAlwaysLog();
              }
            }
          }

          xpc_connection_send_message(v16, reply);
        }

        else
        {
          v66 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Could not create reply message for cache request", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            MarcoLogMadridLevel();
            IMLogString();
            _IMWarn();
          }
        }
      }

      else if (xpc_dictionary_get_BOOL(v12, "cached-id-status-query"))
      {
        v113 = connection;
        v114 = v12;
        message = xpc_dictionary_create_reply(v114);
        if (message)
        {
          v101 = IMGetXPCStringFromDictionary();
          v104 = IMGetXPCStringFromDictionary();
          v96 = IMGetXPCStringFromDictionary();
          v103 = IMGetXPCArrayFromDictionary();
          v112 = xpc_dictionary_get_BOOL(v114, "respect-expiry");
          v34 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = @"NO";
            *buf = 138413058;
            if (v112)
            {
              v35 = @"YES";
            }

            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v104;
            *&buf[22] = 2112;
            *&buf[24] = v101;
            LOWORD(v120) = 2112;
            *(&v120 + 2) = v103;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "*** Incoming cached ID status query for (respectExpiry: %@)  (service: %@)  (transactionID: %@)  (destinations: %@)", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            v36 = v112 ? @"YES" : @"NO";
            MarcoLogMadridLevel();
            v92 = v101;
            v93 = v103;
            v76 = v36;
            v86 = v104;
            IMLogString();
            if (_IMWillLog())
            {
              v92 = v101;
              v93 = v103;
              v76 = v36;
              v86 = v104;
              _IMAlwaysLog();
            }
          }

          v99 = [IDSURI URIWithUnprefixedURI:v96, v76, v86, v92, v93];
          v37 = +[IDSDServiceController sharedInstance];
          v100 = [v37 serviceWithIdentifier:v104];

          v38 = [v100 queryService];
          v39 = +[IDSDAccountController sharedInstance];
          v95 = [v39 accountsOnService:v100];

          v94 = [v103 __imArrayByApplyingBlock:&stru_100BE24A8];
          v102 = [IDSQueryUtilities accountToQueryFrom:v95 fromURI:v99 destinationURIs:v94 allowLocalAccount:0];
          if (v102)
          {
            v97 = objc_alloc_init(NSMutableDictionary);
            v98 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v102 withPreferredFromURI:v99];
            if (![v98 length])
            {
              v40 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v102;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No fromURI for account %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                MarcoLogMadridLevel();
                v79 = v102;
                IMLogString();
                if (_IMWillLog())
                {
                  v79 = v102;
                  _IMAlwaysLog();
                }
              }
            }

            if ([v98 length])
            {
              v41 = sub_10043996C(v103, v102);
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [v102 uniqueID];
                *buf = 138412546;
                *&buf[4] = v43;
                *&buf[12] = 2112;
                *&buf[14] = v98;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Account: %@  fromURI: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                v81 = [v102 uniqueID];
                MarcoLogMadridLevel();

                v80 = [v102 uniqueID];
                v89 = v98;
                IMLogString();

                if (_IMWillLog())
                {
                  v80 = [v102 uniqueID];
                  v89 = v98;
                  _IMAlwaysLog();
                }
              }

              v110 = [IDSURI URIWithUnprefixedURI:v98 withServiceLoggingHint:v38, v80, v89];
              v111 = objc_alloc_init(NSMutableDictionary);
              v122 = 0u;
              v123 = 0u;
              memset(v121, 0, sizeof(v121));
              obj = v41;
              v44 = [obj countByEnumeratingWithState:v121 objects:buf count:16];
              if (v44)
              {
                v45 = **&v121[16];
                do
                {
                  for (i = 0; i != v44; i = i + 1)
                  {
                    if (**&v121[16] != v45)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v47 = *(*&v121[8] + 8 * i);
                    v48 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      v49 = IDSLoggableDescriptionForHandleOnService();
                      *v115 = 138412546;
                      v116 = v49;
                      v117 = 2112;
                      v118 = v38;
                      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Looking up cached value for %@ -> %@", v115, 0x16u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      v50 = IDSLoggableDescriptionForHandleOnService();
                      MarcoLogMadridLevel();

                      v82 = IDSLoggableDescriptionForHandleOnService();
                      v90 = v38;
                      IMLogString();

                      if (_IMWillLog())
                      {
                        v82 = IDSLoggableDescriptionForHandleOnService();
                        v90 = v38;
                        _IMAlwaysLog();
                      }
                    }

                    v51 = [IDSIDStatusQueryController sharedInstance:v82];
                    v52 = [IDSURI URIWithUnprefixedURI:v47 withServiceLoggingHint:v38];
                    v53 = sub_100614E88(@"IDStatus", v113);
                    v54 = [v51 cachedIDStatusForID:v52 fromURI:v110 fromService:v38 respectExpiry:v112 reason:v53];

                    v55 = [NSNumber numberWithInt:v54];
                    [v111 setObject:v55 forKey:v47];
                  }

                  v44 = [obj countByEnumeratingWithState:v121 objects:buf count:16];
                }

                while (v44);
              }

              [v97 setObject:v111 forKey:v104];
            }

            IMInsertDictionariesToXPCDictionary();
            IMInsertNSStringsToXPCDictionary();
            IMInsertNSStringsToXPCDictionary();
            v56 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v57 = IDSLoggableDescriptionForObjectOnService();
              *v115 = 138412290;
              v116 = v57;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Sending id status results %@", v115, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              v58 = IDSLoggableDescriptionForObjectOnService();
              MarcoLogMadridLevel();

              v83 = IDSLoggableDescriptionForObjectOnService();
              IMLogString();

              if (_IMWillLog())
              {
                v84 = IDSLoggableDescriptionForObjectOnService();
                _IMAlwaysLog();
              }
            }

            xpc_connection_send_message(v113, message);
          }

          else
          {
            v68 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v104;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "No registered account for service %@, bailing...", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              MarcoLogMadridLevel();
              IMLogString();
              if (_IMWillLog())
              {
                _IMAlwaysLog();
              }
            }

            if (v113)
            {
              *v121 = IDSIDQueryControllerErrorDestinationSet;
              *buf = v103;
              v69 = [NSDictionary dictionaryWithObjects:buf forKeys:v121 count:1];
              v85 = [NSError errorWithDomain:IDSIDQueryControllerErrorDomain code:-3000 userInfo:v69];
              IMInsertKeyedCodableObjectsToXPCDictionary();

              xpc_connection_send_message(v113, message);
            }
          }
        }

        else
        {
          v67 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Could not create reply message for cached id status query", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            MarcoLogMadridLevel();
            IMLogString();
            _IMWarn();
          }
        }
      }

      else if (xpc_dictionary_get_BOOL(v12, "id-status-query"))
      {
        v60 = connection;
        v61 = xdict;
        if (qword_100CBF358 != -1)
        {
          sub_10092D860();
        }

        v62 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "__HandleIDStatusQuery - enqueuing", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          MarcoLogMadridLevel();
          IMLogString();
          if (_IMWillLog())
          {
            _IMAlwaysLog();
          }
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100614F8C;
        *&buf[24] = &unk_100BD6E40;
        *&v120 = v61;
        *(&v120 + 1) = v60;
        v63 = v61;
        v64 = v60;
        v65 = objc_retainBlock(buf);
        [qword_100CBF350 enqueueQueryBlock:v65 cleanup:0];
      }

      else if (xpc_dictionary_get_BOOL(v12, "set-id-status"))
      {
        sub_100614534(connection, v12);
      }

      else if (xpc_dictionary_get_BOOL(v12, "remote-device-status-query"))
      {
        sub_1006148C4(connection, v12);
      }

      else if (xpc_dictionary_get_BOOL(v12, "id-status-info-query"))
      {
        sub_100614A88(connection, v12);
      }

      else if (xpc_dictionary_get_BOOL(v12, "flush-query-cache"))
      {
        sub_100614C4C(connection, v12);
      }

      else
      {
        v71 = xpc_copy_description(v12);
        v72 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = IMProcessNameForPid();
          *buf = 67109634;
          *&buf[4] = pid;
          *&buf[8] = 2112;
          *&buf[10] = v73;
          *&buf[18] = 2080;
          *&buf[20] = v71;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Unknown message from peer: (%d):(%@) %s", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          v74 = IMProcessNameForPid();
          MarcoLogMadridLevel();

          v75 = IMProcessNameForPid();
          IMLogString();

          v91 = IMProcessNameForPid();
          _IMWarn();
        }

        free(v71);
        xpc_connection_cancel(connection);
      }
    }

    else
    {
      v7 = xpc_copy_description(v4);
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = IMProcessNameForPid();
        *buf = 67109634;
        *&buf[4] = pid;
        *&buf[8] = 2112;
        *&buf[10] = v9;
        *&buf[18] = 2080;
        *&buf[20] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "received unknown from peer(%d):(%@) %s", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v10 = IMProcessNameForPid();
        MarcoLogMadridLevel();

        v87 = IMProcessNameForPid();
        IMLogString();

        if (_IMWillLog())
        {
          v88 = IMProcessNameForPid();
          _IMAlwaysLog();
        }
      }

      free(v7);
    }

    goto LABEL_130;
  }

  if (v4 == &_xpc_error_connection_invalid)
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v3);
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      xpc_connection_get_pid(v3);
      MarcoLogMadridLevel();
      xpc_connection_get_pid(v3);
      IMLogString();
      if (_IMWillLog())
      {
        xpc_connection_get_pid(v3);
        _IMAlwaysLog();
      }
    }

    v32 = im_local_object_from_connection();
    v33 = v32;
    if (v32)
    {
      [v32 _portDidBecomeInvalid];
      CFRelease(v33);
    }

    xpc_connection_cancel(v3);
  }

  else if (v4 == &_xpc_error_connection_interrupted)
  {
    v59 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v3);
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      xpc_connection_get_pid(v3);
      MarcoLogMadridLevel();
      xpc_connection_get_pid(v3);
      IMLogString();
      if (_IMWillLog())
      {
        goto LABEL_16;
      }
    }
  }

  else if (v4 == &_xpc_error_termination_imminent)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v3);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      xpc_connection_get_pid(v3);
      MarcoLogMadridLevel();
      xpc_connection_get_pid(v3);
      IMLogString();
      if (_IMWillLog())
      {
LABEL_16:
        xpc_connection_get_pid(v3);
        _IMAlwaysLog();
      }
    }
  }

LABEL_130:
}

void sub_10000F938(id a1, OS_xpc_object *a2, OS_xpc_object *a3)
{
  v4 = a2;
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006143C8;
    block[3] = &unk_100BD6E40;
    v16 = v4;
    v17 = v5;
    v7 = v5;
    v8 = v4;
    dispatch_sync(v6, block);

    v9 = v16;
  }

  else
  {
    v14[0] = 0xAAAAAAAAAAAAAAAALL;
    v14[1] = 0xAAAAAAAAAAAAAAAALL;
    pthread_main_thread_np();
    pthread_dependency_init_np();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000DB5C;
    v10[3] = &unk_100BE04B0;
    v11 = v4;
    v12 = v5;
    v13 = v14;
    v7 = v5;
    v8 = v4;
    dispatch_async(&_dispatch_main_q, v10);
    pthread_dependency_wait_np();

    v9 = v11;
  }
}

uint64_t sub_10000FAC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 16);
    if (v3 >= 1)
    {
      for (i = 0; ([*(*(a1 + 8) + i) isEqualToString:a2] & 1) == 0; i += 16)
      {
        if (!--v3)
        {
          return 0;
        }
      }

      if (v3)
      {
        return *(*(a1 + 8) + i + 8);
      }
    }
  }

  else
  {
    v6 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "SimpleNSStringToObjectTable_ObjectForKey_NoRetain";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: table empty", &v8, 0xCu);
    }
  }

  return 0;
}

void sub_10000FBD0(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _powerlogDictionaryForPriority:100];
}

uint64_t sub_10000FF48(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010030;
  v6[3] = &unk_100BD7B30;
  v10 = a3;
  v8 = &v11;
  v9 = a1;
  v3 = a2;
  v7 = v3;
  sub_10000B8B8(v6, v3);
  v4 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v4;
}

void sub_100010030(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 56))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE is_sent = 0 AND pending_delete = 0 AND expiration_date > 0 AND expiration_date <= ? LIMIT ? ");
  v5 = CSDBSqliteDatabaseStatementForReading();
  if (v5)
  {
    if (*(v5 + 8))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      CSDBSqliteBindInt64();
      CSDBSqliteBindInt64();
      v6 = CSDBRecordStoreProcessStatement();
      *(*(*(a1 + 40) + 8) + 24) = sub_100010150(v6, *(a1 + 32));
      CSDBSqliteStatementReset();
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

__CFArray *sub_100010150(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  Mutable = 0;
  if (Count << 32)
  {
    v6 = 0;
    v7 = Count;
    if (Count <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = Count;
    }

    while (1)
    {
      CFArrayGetValueAtIndex(a1, v6);
      ID = CSDBRecordGetID();
      v10 = sub_10001F054(kCFAllocatorDefault, ID, 0, v3);
      v11 = v10;
      if (!Mutable)
      {
        break;
      }

      if (v10)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (v8 == ++v6)
      {
        goto LABEL_12;
      }
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v7, &kCFTypeArrayCallBacks);
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFArrayAppendValue(Mutable, v11);
    CFRelease(v11);
    goto LABEL_8;
  }

LABEL_12:

  return Mutable;
}

uint64_t sub_100010248(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010318;
  v6[3] = &unk_100BD7B80;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10000B8B8(v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_100010300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010318(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"SELECT DISTINCT account_guid FROM outgoing_message WHERE is_sent = 0 AND pending_delete = 0 LIMIT ? ");
  v3 = CSDBSqliteDatabaseStatementForReading();
  if (v3 && *(v3 + 8))
  {
    CSDBSqliteBindInt64();
    while (1)
    {
      v4 = CSDBSqliteStatementCopyStringResult();
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (!v6)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v6 = *(*(*(a1 + 32) + 8) + 24);
      }

      CFArrayAppendValue(v6, v5);
      CFRelease(v5);
    }

    CSDBSqliteStatementReset();
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t sub_1000105C0(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000106A8;
  v6[3] = &unk_100BD7B30;
  v10 = a3;
  v8 = &v11;
  v9 = a1;
  v3 = a2;
  v7 = v3;
  sub_10000B8B8(v6, v3);
  v4 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v4;
}

void sub_1000106A8(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 56))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE pending_delete = 1 LIMIT ? ");
  v5 = CSDBSqliteDatabaseStatementForReading();
  if (v5)
  {
    if (*(v5 + 8))
    {
      CSDBSqliteBindInt64();
      v6 = CSDBRecordStoreProcessStatement();
      *(*(*(a1 + 40) + 8) + 24) = sub_100010150(v6, *(a1 + 32));
      CSDBSqliteStatementReset();
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_100010B38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100010AB8);
  }

  _Unwind_Resume(a1);
}

void sub_100010B80(uint64_t a1)
{
  v2 = [*(a1 + 32) _maxOutgoingDatabasesSizeInMB];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10000AAD4;
  v7[4] = sub_10000BCDC;
  v8 = 0;
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006573D8;
  v6[3] = &unk_100BE3388;
  v6[4] = v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000114C0;
  v5[3] = &unk_100BE33B0;
  v5[4] = *(a1 + 32);
  v5[5] = v7;
  v5[6] = v2;
  [v4 performBlockSyncPriority:v5];

  _Block_object_dispose(v7, 8);
}

void sub_100010CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010CEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010DE8;
  v8[3] = &unk_100BD7D70;
  v14 = a5;
  v12 = a2;
  v13 = a3;
  v10 = &v15;
  v11 = a1;
  v5 = a4;
  v9 = v5;
  sub_10000B8B8(v8, v5);
  v6 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v6;
}

void sub_100010DE8(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (*(a1 + 72))
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  else
  {
    v4 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, NULL AS message_data, NULL AS data, NULL AS protobuf_data, destinations, NULL AS data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message ";
  }

  CFStringAppend(Mutable, v4);
  CFStringAppend(v3, @"WHERE is_sent = 0 AND pending_delete = 0 AND enqueued_date > 0 AND enqueued_date <= ? AND local_destination_device_uuid IS NOT NULL AND local_destination_device_uuid != ? LIMIT ? ");
  v5 = CSDBSqliteDatabaseStatementForReading();
  if (v5)
  {
    if (*(v5 + 8))
    {
      CSDBSqliteBindInt64();
      CSDBSqliteBindTextFromCFString();
      CSDBSqliteBindInt64();
      v6 = CSDBRecordStoreProcessStatement();
      *(*(*(a1 + 40) + 8) + 24) = sub_100010150(v6, *(a1 + 32));
      CSDBSqliteStatementReset();
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_100011130(uint64_t a1)
{
  v1 = [*(a1 + 32) _maxMessagesForRunawayClientConsideration];
  v2 = +[IDSDaemonPriorityQueueController sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012F70;
  v3[3] = &unk_100BD75B8;
  v3[4] = v1;
  [v2 performBlockSyncPriority:v3];
}

void sub_1000113F4(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = [*(a1 + 32) database];
  sub_10001145C(v3);
}

void sub_1000114C0(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = +[IDSPairingManager sharedInstance];
  v4 = [v3 pairedDeviceUniqueID];
  v5 = [IDSDMessageStore allUnsentOutgoingMessagesForAccounts:v2 localDestinationDeviceID:v4 hardLimit:2500];

  [*(a1 + 32) _failSavedMessagesCleanly:v5 withResponseCode:9];
  if ([IDSDMessageStore databaseSizeBiggerThanThreshold:*(a1 + 48)])
  {
    v6 = +[IDSDMessageStore largestPayloadSizeAccountUUID];
    v7 = +[IDSDAccountController sharedInstance];
    v8 = [v7 threadSafeServiceWithAccountUniqueID:v6];
    v9 = [v8 adHocServiceType];

    if (v9 == 2)
    {
      v10 = +[IDSPairingManager sharedInstance];
      v11 = [v10 pairedDeviceUniqueID];
    }

    else
    {
      v11 = 0;
    }

    v12 = [IDSDMessageStore allOutgoingMessagesOnAccountGUID:v6 localDestinationDeviceID:v11];
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      *buf = 67109378;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS outgoing DB past threshold size %d MB, largest payload size account UUID: %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v16 = *(a1 + 48);
      v17 = v6;
      _IDSLogTransport();
    }

    [*(a1 + 32) _failSavedMessagesCleanly:v12 withResponseCode:{19, v16, v17}];
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ending cleanup of outgoing message database", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
  }
}

void sub_100011850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011868(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v4 ensureDatabaseIsInitialized];
  v6 = sub_10000AB24(v4);

  CSDBPerformLockedSectionForQueryForWriting();
}

void sub_1000118F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012694;
  v3[3] = &unk_100BE2828;
  v3[4] = a1;
  v3[5] = a2;
  sub_100011868(@"DELETE FROM incoming_message WHERE date < ? LIMIT ?; ", v3, a3);
}

void sub_100011964()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  sub_100011C54();
  if ((*((swift_isaMask & *v1) + 0x80))())
  {
    sub_100936778();
    swift_allocObject();

    sub_100936788();
    v3();
    sub_100936708();
    sub_100936738();
    v2(0);
  }

  else
  {
    sub_10083F070();

    v4 = sub_10083F07C(6u);
    sub_100706B30(&unk_100CBB120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AC700;
    *(inited + 32) = sub_100936B38();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v6;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x8000000100B06230;
    sub_100746D18(inited);
    swift_setDeallocating();
    sub_100013814(inited + 32, &qword_100CB36E8);
    v7 = objc_allocWithZone(NSError);
    v8 = sub_100936B28();

    isa = sub_100936A58().super.isa;

    v10 = [v7 initWithDomain:v8 code:v4 userInfo:isa];

    v11 = v10;
    v2(v10);
  }
}

void sub_100011C54()
{
  v1 = v0;
  v2 = sub_100936918();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100706B30(&qword_100CBB228);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  if (!(*((swift_isaMask & *v0) + 0x80))(v10))
  {
    v69 = v5;
    sub_100936A48();
    sub_10074D21C();
    v68 = sub_100936968();
    v16 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
    v17 = v1;
    v67 = v16;
    v18 = sub_1009364B8();
    v19 = sub_100936F18();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65 = v2;
      v66 = v12;
      v22 = v3;
      v23 = v21;
      v70[0] = v21;
      *v20 = 136315138;
      v24 = (*((swift_isaMask & *v17) + 0x98))();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v24 = 7104878;
        v26 = 0xE300000000000000;
      }

      v27 = v17;
      v28 = sub_10001273C(v24, v26, v70);

      *(v20 + 4) = v28;
      v17 = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "File path provided for model configuration: %s", v20, 0xCu);
      sub_100012970(v23);
      v3 = v22;
      v2 = v65;
      v12 = v66;
    }

    sub_1000129BC(v17, v12);
    sub_100012D50(v12, v9, &qword_100CBB228);
    v29 = (*(v3 + 48))(v9, 1, v2);
    v31 = v68;
    v30 = v69;
    if (v29 == 1)
    {
      sub_100013814(v9, &qword_100CBB228);
      sub_1008A6294(0, v31, v17);
LABEL_27:
      sub_100013874();

      sub_100013814(v12, &qword_100CBB228);
      return;
    }

    v66 = v17;
    (*(v3 + 32))(v69, v9, v2);

    v32 = sub_1009364B8();
    v33 = sub_100936F18();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v70[0] = v35;
      *v34 = 136315138;
      v36 = sub_1009369D8();
      v38 = v12;
      v39 = v2;
      v40 = v3;
      v41 = sub_10001273C(v36, v37, v70);

      *(v34 + 4) = v41;
      v3 = v40;
      v2 = v39;
      v12 = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Loading model container with schema %s", v34, 0xCu);
      sub_100012970(v35);

      v30 = v69;
    }

    sub_1009367B8();
    sub_1008F4B88();
    sub_100706B30(&unk_100CBB240);
    v42 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1009AC700;
    (*(v3 + 16))(v43 + v42, v30, v2);

    sub_1009367A8();
    v44 = v66;
    v45 = *((swift_isaMask & *v66) + 0x88);

    v45();
    v46 = v44;
    v47 = sub_1009364B8();
    v48 = sub_100936F18();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70[0] = v50;
      *v49 = 136315138;
      v51 = (*((swift_isaMask & *v46) + 0x98))();
      if (v52)
      {
        v53 = v52;
      }

      else
      {
        v51 = 7104878;
        v53 = 0xE300000000000000;
      }

      v54 = v12;
      v55 = v2;
      v56 = v3;
      v57 = sub_10001273C(v51, v53, v70);

      *(v49 + 4) = v57;
      v3 = v56;
      v2 = v55;
      v12 = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Successfully initialized ModelContainer {filePath: %s}", v49, 0xCu);
      sub_100012970(v50);
    }

    v58 = [objc_allocWithZone(type metadata accessor for ContainerLoadMetric()) init];
    v58[OBJC_IVAR____TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric_containerType] = 2;
    v59 = [objc_opt_self() defaultLogger];
    v60 = v69;
    if (v59)
    {
      v61 = v59;
      [v59 logMetric:v58];
    }

    else
    {
      v61 = sub_1009364B8();
      v62 = sub_100936EF8();
      if (!os_log_type_enabled(v61, v62))
      {

        goto LABEL_26;
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Error initializing core analytics logger.", v63, 2u);
    }

LABEL_26:
    (*(v3 + 8))(v60, v2);
    goto LABEL_27;
  }

  v69 = sub_1009364B8();
  v13 = sub_100936EE8();
  if (os_log_type_enabled(v69, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v69, v13, "Container already loaded.", v14, 2u);
  }

  v15 = v69;
}

uint64_t sub_1000125D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10001265C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1000126E4()
{
  v1 = (v0 + OBJC_IVAR___IDSQuerySDPersistenceManager_filePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

unint64_t sub_10001273C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100012808(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100012914(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012970(v11);
  return v7;
}

unint64_t sub_100012808(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100712CB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100937288();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100012914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012970(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000129BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100936908();
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100935DD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v30 - v16;
  v18 = (*((swift_isaMask & *a1) + 0x98))(v15);
  if (v19)
  {
    v20 = v18;
    v21 = swift_isaMask & *a1;
    v31 = a2;
    v22 = *(v21 + 160);
    v30 = v6;
    v23 = v19;

    v22(v20, v23);
    sub_100935D98();

    sub_100935DC8();
    (*(v8 + 16))(v11, v14, v7);
    sub_1009368F8();
    v24 = v31;
    sub_100936938();
    v25 = *(v8 + 8);
    v25(v14, v7);
    v25(v17, v7);
    v26 = sub_100936918();
    return (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  }

  else
  {
    v28 = sub_100936918();
    v29 = *(*(v28 - 8) + 56);

    return v29(a2, 1, 1, v28);
  }
}

uint64_t sub_100012CF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___IDSQuerySDPersistenceManager_filePath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100012D50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100706B30(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100012DB8(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v3 = [*(a1 + 32) database];
  *(*(*(a1 + 40) + 8) + 24) = sub_100012E2C(v3);
}

uint64_t sub_100012E2C(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012EF8;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_100012EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012EF8(uint64_t a1)
{
  result = CSDBSqliteDatabaseStatementForReading();
  if (result && *(result + 8))
  {
    *(*(*(a1 + 32) + 8) + 24) = CSDBSqliteStatementInteger64Result();

    return CSDBSqliteStatementReset();
  }

  return result;
}

void sub_100012F70(uint64_t a1)
{
  v1 = [IDSDMessageStore largestEnquedMessagesAccountUUIDOverThreshold:*(a1 + 32)];
  if ([v1 length])
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Runaway Client Detected, Purging messages for given client", v3, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [IDSDMessageStore deleteAllMessagesWithAccountGUID:v1];
  }
}

void sub_10001315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013174(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 ensureDatabaseIsInitialized];

  v6 = [*(a1 + 32) database];
  v3 = sub_1000131F0(v6);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1000131F0(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000132BC;
  v4[3] = &unk_100BD7B08;
  v4[4] = &v5;
  sub_10000B8B8(v4, v1);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1000132A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000132BC(uint64_t a1)
{
  result = CSDBSqliteDatabaseStatementForReading();
  if (result && *(result + 8))
  {
    *(*(*(a1 + 32) + 8) + 24) = CSDBSqliteStatementCopyStringsForColumnsAtIndices();

    return CSDBSqliteStatementReset();
  }

  return result;
}

uint64_t sub_100013338(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

unint64_t sub_1000134E4()
{
  if (*(v0 + OBJC_IVAR____TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric_containerType))
  {
    sub_100706B30(&unk_100CB4F30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1009AC700;
    strcpy((inited + 32), "containerType");
    *(inited + 46) = -4864;
    *(inited + 48) = sub_100936E78();
    v2 = sub_1000135E0(inited);
    swift_setDeallocating();
    sub_100013814(inited + 32, &qword_100CBA3F0);
    return v2;
  }

  else
  {

    return sub_1000135E0(&_swiftEmptyArrayStorage);
  }
}

unint64_t sub_1000135E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB4F48);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000136E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000136E4(uint64_t a1, uint64_t a2)
{
  sub_100937668();
  sub_100936BC8();
  v4 = sub_1009376C8();

  return sub_10001375C(a1, a2, v4);
}

unint64_t sub_10001375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100937598())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100013814(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100706B30(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100013874()
{
  v43 = sub_1009364F8();
  __chkstk_darwin(v43);
  v44 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100936FA8();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1009364E8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v42 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = (v39 - v8);
  v10 = sub_100936558();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v39 - v15;
  sub_10001401C();
  v52 = v0;
  v17 = sub_1009364B8();
  v18 = sub_100936F18();
  v19 = os_log_type_enabled(v17, v18);
  v53 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting SD database cleanup timer.", v20, 2u);
  }

  sub_100936538();
  *v9 = 10;
  v40 = *(v5 + 104);
  v40(v9, enum case for DispatchTimeInterval.seconds(_:), v4);
  sub_100936598();
  v21 = *(v5 + 8);
  v39[1] = v5 + 8;
  v41 = v21;
  v21(v9, v4);
  v22 = *(v11 + 8);
  v50 = v11 + 8;
  v51 = v10;
  v49 = v22;
  v22(v14, v10);
  v45 = sub_100014170(0, &qword_100CB5058);
  v23 = v52;
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100014C40(&qword_100CB5060, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100706B30(&qword_100CB5068);
  sub_100014C88(&unk_100CB5070, &qword_100CB5068);
  v24 = v46;
  v25 = v48;
  v26 = v53;
  sub_1009370B8();
  v27 = sub_100936FB8();
  (*(v47 + 8))(v24, v25);
  v28 = (*((swift_isaMask & *v23) + 0xB8))(v27);
  v29 = *((swift_isaMask & *v23) + 0xB0);
  v30 = v29(v28);
  if (v30)
  {
    swift_getObjectType();
    v31 = v40;
    v40(v9, enum case for DispatchTimeInterval.never(_:), v4);
    v32 = v42;
    *v42 = 0;
    v31(v32, enum case for DispatchTimeInterval.nanoseconds(_:), v4);
    sub_100937008();
    swift_unknownObjectRelease();
    v33 = v41;
    v41(v32, v4);
    v30 = v33(v9, v4);
  }

  v34 = v52;
  v35 = v29(v30);
  if (v35)
  {
    swift_getObjectType();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    aBlock[4] = sub_10001D90C;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEB818;
    _Block_copy(aBlock);
    v54 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    v37 = v34;
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936588();
    swift_allocObject();
    v26 = v53;
    sub_100936568();

    sub_100936FD8();

    v35 = swift_unknownObjectRelease();
  }

  if (v29(v35))
  {
    swift_getObjectType();
    sub_100936FF8();
    swift_unknownObjectRelease();
  }

  return v49(v26, v51);
}

uint64_t sub_100013FE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001401C()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Canceling cleanup timer.", v4, 2u);
  }

  result = (*((swift_isaMask & *v1) + 0xB0))();
  if (result)
  {
    swift_getObjectType();
    sub_100936FE8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100014170(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000141B8(uint64_t a1)
{
  v3 = *(sub_100936038() - 8);
  v4 = *(v3 + 80);
  return sub_100014D08(a1, v1 + ((v4 + 16) & ~v4), v1 + ((*(v3 + 64) + v4 + ((v4 + 16) & ~v4)) & ~v4));
}

uint64_t *sub_100014250(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000145C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014604()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1009364F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100936528();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR___IDSQuerySDPersistenceManager_queue];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a1;
  v16[6] = a2;
  aBlock[4] = sub_100011964;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BEA9C8;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_100936508();
  v22 = &_swiftEmptyArrayStorage;
  sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550);
  sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
  sub_1009370B8();
  sub_100936F88();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_100014940()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100014988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000149A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000149B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000149C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000149D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000149E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000149F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014A90(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014AD8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014B20(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014B68(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014BB0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014BF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014C40(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014C88(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100706B30(&qword_100CBAE30);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_100706B30(&qword_100CBA360);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  v14 = a2;
  v15 = a3;
  v16 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100936128();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936748();
  sub_100013814(v7, &qword_100CBAE30);
  return (*(v9 + 8))(v11, v8);
}

id sub_100014F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v10 = sub_1009364F8();
  v22 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100936528();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v17 = result;
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    aBlock[4] = a5;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = v20;
    v19 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_100936508();
    v23 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v19);

    (*(v22 + 8))(v12, v10);
    (*(v13 + 8))(v15, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000152C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000152D4()
{
  v1 = sub_100936038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v6, v4 | 7);
}

uint64_t sub_1000154BC(unsigned __int8 a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 16))
  {
    return v2(1, 0);
  }

  swift_errorRetain();
  sub_10083F070();

  v4 = sub_10083F07C(a1);
  sub_100706B30(&unk_100CBB120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v6;
  swift_getErrorValue();
  *(inited + 72) = v14;
  v7 = sub_100014250((inited + 48));
  (*(*(v14 - 8) + 16))(v7);
  sub_100746D18(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &qword_100CB36E8);
  v8 = objc_allocWithZone(NSError);
  v9 = sub_100936B28();

  isa = sub_100936A58().super.isa;

  v11 = [v8 initWithDomain:v9 code:v4 userInfo:isa];

  v12 = v11;
  v2(0, v11);
}

void sub_100015728(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40) - Current + 600.0;
  if (v4 <= 0.0)
  {

    [v3 closeDatabase];
  }

  else
  {
    v5 = (v4 * 1000000000.0);
    v6 = *(v3 + 32);
    v7 = dispatch_time(0, v5);

    dispatch_source_set_timer(v6, v7, 0x7FFFFFFFFFFFFFFFuLL, v5 / 10);
  }
}

void sub_1000157D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  os_unfair_lock_lock(&unk_100CBD588);
  sub_10001585C(v3);

  v5 = sub_10001599C();
  CSDBPerformLocked();

  os_unfair_lock_unlock(&unk_100CBD588);
}

void sub_10001585C(void *a1)
{
  v1 = a1;
  os_unfair_lock_assert_owner(&unk_100CBD588);
  v2 = sub_10001599C();

  if (v2)
  {
    v3 = v1;
    v4 = objc_autoreleasePoolPush();
    v5 = sub_10001599C();
    v6 = v3;
    CSDBThreadedRecordStoreEnsureDatabaseSetupWithProtection();

    objc_autoreleasePoolPop(v4);
  }
}

id sub_10001599C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A9F64;
  block[3] = &unk_100BD75B8;
  block[4] = @"IDSFirewallStore";
  if (qword_100CBD580 != -1)
  {
    dispatch_once(&qword_100CBD580, block);
  }

  v0 = qword_100CBD578;

  return v0;
}

void sub_100015A44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  sub_100015A94();
}

void sub_100015A94()
{
  os_unfair_lock_assert_owner(&unk_100CBD588);
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Saving database.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v1 = sub_10001599C();
  CSDBPerformLockedSectionForRecordStore();

  v2 = sub_10001599C();

  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying database.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v4 = sub_10001599C();
    CSDBThreadedRecordStoreTeardownDatabase();

    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Closed database.", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

void sub_100015CE0(id a1, CSDBRecordStore *a2)
{
  CSDBRecordSaveStore();

  _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

uint64_t sub_100015F18(uint64_t a1)
{
  v4 = IMCreateInvocationFromXPCObjectWithProtocol();
  if (v4)
  {
    [*(a1 + 40) _enqueueInvocationWithPriority:v4 priority:*(a1 + 56)];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  return _objc_release_x1();
}

void sub_10001613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016158(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      v8 = [v7 cloudConnection];

      if (v8)
      {
        v9 = [v7 cloudConnection];
        *(*(*(a1 + 40) + 8) + 24) = [v9 isIdle];

        if (*(*(*(a1 + 40) + 8) + 24) != 1)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

const __CFString *sub_100016528(uint64_t a1)
{
  if ((a1 + 2) > 0x33)
  {
    return @"Unrecognized";
  }

  else
  {
    return off_100BDC888[a1 + 2];
  }
}

unint64_t sub_100016C28(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  v3 = +[IDSSocketPairMessage headerDataSize];
  v4 = v3;
  *&v5 = 67109376;
  v15 = v5;
  while (1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    __chkstk_darwin(v3);
    v6 = &parse[-2] - ((v4 + 15) & 0x1FFFFFFF0);
    if (v4)
    {
      memset(&parse[-2] - ((v4 + 15) & 0x1FFFFFFF0), 170, v4);
    }

    parse[0] = _NSConcreteStackBlock;
    parse[1] = 3221225472;
    parse[2] = sub_100018974;
    parse[3] = &unk_100BDC698;
    parse[4] = &v17;
    parse[5] = v4;
    if (!nw_framer_parse_input(v2, v4, v4, &parse[-2] - ((v4 + 15) & 0x1FFFFFFF0), parse))
    {
      break;
    }

    if ((v18[3] & 1) == 0)
    {
      v12 = +[IDSFoundationLog socketPairConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: IDSNWSocketPairConnectionProtocol returning -- no header.", buf, 2u);
      }

      break;
    }

    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = nw_framer_message_create(v2);
    v10 = +[IDSFoundationLog socketPairConnection];
    v11 = bswap32(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v15;
      v22 = v11;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: IDSNWSocketPairConnectionProtocol read message_length:%u, type:%u", buf, 0xEu);
    }

    if (!nw_framer_deliver_input_no_copy(v2, v4 + v11, v9, 1))
    {
      v13 = +[IDSFoundationLog socketPairConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: IDSNWSocketPairConnectionProtocol returning partial data.", buf, 2u);
      }

      break;
    }

    _Block_object_dispose(&v17, 8);
  }

  _Block_object_dispose(&v17, 8);

  return 0;
}

void sub_1000171E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, void **a6)
{
  v10 = [a5 prefixedURI];
  v11 = sub_100936B38();
  v13 = v12;

  v14 = sub_1008AF68C(a3, a4, v11, v13, a1);

  if (v14)
  {

    v15 = sub_10074EC18();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  type metadata accessor for ArchiveHelper();
  v18 = sub_100014170(0, &qword_100CBA560);
  v19 = sub_10001C1E4(v18, v15, v17);

  sub_10001C370(v15, v17);
  v20 = *a6;
  *a6 = v19;
}

uint64_t sub_100017318(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {

    a2(v4);
    if (v2)
    {
      sub_100936738();
      swift_willThrow();
    }
  }

  else
  {
    __chkstk_darwin(0);
    return sub_100936F68();
  }
}

uint64_t sub_100017548()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_100011C54();
  result = (*((swift_isaMask & *v2) + 0x80))();
  if (result)
  {
    sub_100936778();
    swift_allocObject();

    sub_100936788();
    v3();
    sub_100936738();
    if (v1)
    {
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100017758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, void *a8)
{
  v144 = a8;
  LODWORD(v157) = a7;
  v150 = a6;
  v149 = sub_100706B30(&qword_100CBA350);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v14 = v141 - v13;
  v15 = sub_100936038();
  v160 = *(v15 - 8);
  __chkstk_darwin(v15);
  v161 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = a5;
  v17 = [a5 prefixedURI];
  v18 = sub_100936B38();
  v20 = v19;

  v155 = a3;
  v156 = a4;
  v158 = a1;
  v159 = a2;
  v21 = sub_1008AF68C(a3, a4, v18, v20, a1);

  if (v21)
  {
    v23 = sub_10074F118();
    if (v23)
    {
      v146 = v21;
      v152 = v23 & 0xFFFFFFFFFFFFFF8;
      v153 = v23;
      if (v23 >> 62)
      {
        v151 = sub_1009373F8();
        if (v151)
        {
          v40 = sub_1009373F8();
          if (!v40)
          {
            goto LABEL_24;
          }

          v24 = v40;
LABEL_5:
          v147 = v14;
          __s1[0] = &_swiftEmptyArrayStorage;
          sub_1008E447C(0, v24 & ~(v24 >> 63), 0);
          if ((v24 & 0x8000000000000000) == 0)
          {
            v143 = v15;
            v25 = __s1[0];
            if ((v153 & 0xC000000000000001) != 0)
            {
              v26 = 0;
              do
              {
                sub_100937268();
                v27 = sub_100751C10();
                v29 = v28;
                swift_unknownObjectRelease();
                __s1[0] = v25;
                v31 = v25[2];
                v30 = v25[3];
                if (v31 >= v30 >> 1)
                {
                  sub_1008E447C((v30 > 1), v31 + 1, 1);
                  v25 = __s1[0];
                }

                ++v26;
                v25[2] = v31 + 1;
                v32 = &v25[2 * v31];
                *(v32 + 4) = v27;
                *(v32 + 5) = v29;
              }

              while (v24 != v26);
            }

            else
            {
              v33 = v153 + 32;
              do
              {

                v34 = sub_100751C10();
                v36 = v35;

                __s1[0] = v25;
                v38 = v25[2];
                v37 = v25[3];
                if (v38 >= v37 >> 1)
                {
                  sub_1008E447C((v37 > 1), v38 + 1, 1);
                  v25 = __s1[0];
                }

                v25[2] = v38 + 1;
                v39 = &v25[2 * v38];
                *(v39 + 4) = v34;
                *(v39 + 5) = v36;
                v33 += 8;
                --v24;
              }

              while (v24);
            }

            goto LABEL_25;
          }

          __break(1u);
LABEL_24:
          v143 = v15;
          v147 = v14;
          v25 = &_swiftEmptyArrayStorage;
LABEL_25:
          v41 = [v150 prefixedURI];
          v42 = sub_100936B38();
          v44 = v43;

          v45 = [v154 prefixedURI];
          v46 = sub_100936B38();
          v48 = v47;

          v49 = v161;
          v50 = sub_100936028();
          v141[2] = v141;
          __chkstk_darwin(v50);
          v51 = v156;
          v141[-10] = v155;
          v141[-9] = v51;
          v141[-8] = v42;
          v141[-7] = v44;
          v141[-6] = v46;
          v141[-5] = v48;
          v141[-4] = v25;
          LOBYTE(v141[-3]) = v157 & 1;
          v141[-2] = v49;
          v170[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
          v52 = v147;
          sub_100936128();

          v142 = &_swiftEmptyArrayStorage;
          v170[0] = &_swiftEmptyArrayStorage;
          __chkstk_darwin(v53);
          v54 = v158;
          v55 = v159;
          v141[-2] = v170;
          v141[-1] = v52;
          v56 = v145;
          (*((swift_isaMask & *v55) + 0x118))(v54, sub_1008F4D58);
          v57 = v160;
          v141[1] = v141;
          if (v56)
          {

            swift_errorRetain();
            v58 = sub_1009364B8();
            v59 = sub_100936EF8();

            v60 = os_log_type_enabled(v58, v59);
            v61 = v149;
            v62 = v148;
            if (v60)
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              *v63 = 138412290;
              swift_errorRetain();
              v65 = _swift_stdlib_bridgeErrorToNSError();
              *(v63 + 4) = v65;
              *v64 = v65;
              _os_log_impl(&_mh_execute_header, v58, v59, "Error fetching session matching condition: %@", v63, 0xCu);
              sub_100013814(v64, &qword_100CB36B0);
            }

            v145 = 0;
            v66 = &_swiftEmptyArrayStorage;
            v67 = v153;
          }

          else
          {
            v145 = 0;
            v66 = v170[0];
            v67 = v153;
            v61 = v149;
            v62 = v148;
          }

          (*(v62 + 8))(v52, v61);
          (*(v57 + 8))(v161, v143);
          v154 = 0;
          v169 = &_swiftEmptyArrayStorage;
          v150 = (v67 & 0xC000000000000001);
          v148 = v67 + 32;
          v68 = v66 & 0xFFFFFFFFFFFFFF8;
          v159 = v66 & 0xFFFFFFFFFFFFFF8;
          if (v66 < 0)
          {
            v68 = v66;
          }

          v143 = v68;
          v157 = v66 & 0xC000000000000001;
          v149 = v66 >> 62;
          v155 = v66;
          while (1)
          {
            if (v150)
            {
              v140 = v154;
              v160 = sub_100937268();
              v70 = __OFADD__(v140, 1);
              v71 = v140 + 1;
              if (v70)
              {
                goto LABEL_193;
              }
            }

            else
            {
              v69 = v154;
              if (v154 >= *(v152 + 16))
              {
                goto LABEL_194;
              }

              v160 = *(v148 + 8 * v154);

              v70 = __OFADD__(v69, 1);
              v71 = v69 + 1;
              if (v70)
              {
                goto LABEL_193;
              }
            }

            if (v149)
            {
              v72 = sub_1009373F8();
              v154 = v71;
              if (!v72)
              {
LABEL_183:

                goto LABEL_184;
              }
            }

            else
            {
              v72 = *(v159 + 16);
              v154 = v71;
              if (!v72)
              {
                goto LABEL_183;
              }
            }

            v73 = 0;
            v158 = v72;
            while (1)
            {
              if (v157)
              {
                v74 = sub_100937268();
                v75 = (v73 + 1);
                if (__OFADD__(v73, 1))
                {
                  goto LABEL_187;
                }
              }

              else
              {
                if (v73 >= *(v159 + 16))
                {
                  goto LABEL_188;
                }

                v74 = *(v66 + 8 * v73 + 32);

                v75 = (v73 + 1);
                if (__OFADD__(v73, 1))
                {
LABEL_187:
                  __break(1u);
LABEL_188:
                  __break(1u);
LABEL_189:
                  __break(1u);
LABEL_190:
                  __break(1u);
LABEL_191:
                  __break(1u);
LABEL_192:
                  __break(1u);
LABEL_193:
                  __break(1u);
LABEL_194:
                  __break(1u);
LABEL_195:
                  __break(1u);
LABEL_196:
                  __break(1u);
LABEL_197:
                  __break(1u);
LABEL_198:
                  __break(1u);
LABEL_199:
                  __break(1u);
LABEL_200:
                  __break(1u);
LABEL_201:
                  __break(1u);
LABEL_202:
                  __break(1u);
LABEL_203:
                  __break(1u);
LABEL_204:
                  __break(1u);
LABEL_205:
                  __break(1u);
LABEL_206:
                  __break(1u);
LABEL_207:
                  __break(1u);
LABEL_208:
                  __break(1u);
LABEL_209:
                  __break(1u);
LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  sub_100935C08();
LABEL_215:
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
LABEL_226:
                  __break(1u);
LABEL_227:
                  __break(1u);
LABEL_228:
                  __break(1u);
LABEL_229:
                  sub_100935C08();
                  __break(1u);
                }
              }

              v161 = v75;
              v76 = sub_100755CE8();
              v78 = v77;
              v79 = sub_100751C10();
              v81 = v79;
              v82 = v80;
              v83 = v78 >> 62;
              v84 = v80 >> 62;
              if (v78 >> 62 == 3)
              {
                v85 = 0;
                if (!v76 && v78 == 0xC000000000000000 && v80 >> 62 == 3)
                {
                  v85 = 0;
                  if (!v79 && v80 == 0xC000000000000000)
                  {
                    v156 = v74;
                    sub_1007156D8(0, 0xC000000000000000);
                    v137 = 0;
                    v138 = 0xC000000000000000;
                    goto LABEL_174;
                  }
                }

LABEL_61:
                if (v84 <= 1)
                {
                  goto LABEL_62;
                }

                goto LABEL_55;
              }

              if (v83 <= 1)
              {
                break;
              }

              if (v83 == 2)
              {
                v90 = *(v76 + 16);
                v89 = *(v76 + 24);
                v70 = __OFSUB__(v89, v90);
                v85 = v89 - v90;
                if (v70)
                {
                  goto LABEL_191;
                }

                goto LABEL_61;
              }

              v85 = 0;
              if (v84 <= 1)
              {
                goto LABEL_62;
              }

LABEL_55:
              if (v84 != 2)
              {
                if (!v85)
                {
                  goto LABEL_172;
                }

                goto LABEL_40;
              }

              v87 = *(v79 + 16);
              v86 = *(v79 + 24);
              v70 = __OFSUB__(v86, v87);
              v88 = v86 - v87;
              if (v70)
              {
                goto LABEL_190;
              }

LABEL_64:
              if (v85 == v88)
              {
                goto LABEL_68;
              }

LABEL_40:

              sub_1007156D8(v81, v82);
              sub_1007156D8(v76, v78);
LABEL_41:
              ++v73;
              if (v161 == v158)
              {
                goto LABEL_183;
              }
            }

            if (!v83)
            {
              v85 = BYTE6(v78);
              if (v84 <= 1)
              {
                goto LABEL_62;
              }

              goto LABEL_55;
            }

            LODWORD(v85) = HIDWORD(v76) - v76;
            if (__OFSUB__(HIDWORD(v76), v76))
            {
              goto LABEL_192;
            }

            v85 = v85;
            if (v84 > 1)
            {
              goto LABEL_55;
            }

LABEL_62:
            if (!v84)
            {
              v88 = BYTE6(v80);
              goto LABEL_64;
            }

            if (__OFSUB__(HIDWORD(v79), v79))
            {
              goto LABEL_189;
            }

            if (v85 != HIDWORD(v79) - v79)
            {
              goto LABEL_40;
            }

LABEL_68:
            if (v85 >= 1)
            {
              v156 = v74;
              if (v83 > 1)
              {
                if (v83 != 2)
                {
                  memset(__s1, 0, 14);
                  if (!v84)
                  {
                    goto LABEL_111;
                  }

                  if (v84 == 2)
                  {
                    v109 = *(v79 + 16);
                    v108 = *(v79 + 24);
                    v95 = sub_100935BE8();
                    if (v95)
                    {
                      v110 = sub_100935C18();
                      if (__OFSUB__(v109, v110))
                      {
                        goto LABEL_208;
                      }

                      v95 += v109 - v110;
                    }

                    v70 = __OFSUB__(v108, v109);
                    v91 = v108 - v109;
                    if (v70)
                    {
                      goto LABEL_201;
                    }

                    v96 = sub_100935C08();
                    if (!v95)
                    {
                      goto LABEL_226;
                    }
                  }

                  else
                  {
                    v91 = (v79 >> 32) - v79;
                    if (v79 >> 32 < v79)
                    {
                      goto LABEL_198;
                    }

                    v115 = sub_100935BE8();
                    if (!v115)
                    {
                      goto LABEL_214;
                    }

                    v116 = v115;
                    v117 = sub_100935C18();
                    if (__OFSUB__(v81, v117))
                    {
                      goto LABEL_203;
                    }

                    v95 = (v81 - v117 + v116);
                    v96 = sub_100935C08();
                    if (!v95)
                    {
                      goto LABEL_215;
                    }
                  }

LABEL_123:
                  if (v96 >= v91)
                  {
                    v118 = v91;
                  }

                  else
                  {
                    v118 = v96;
                  }

                  v119 = memcmp(__s1, v95, v118);
                  sub_1007156D8(v76, v78);
                  sub_1007156D8(v81, v82);
                  v66 = v155;
                  if (!v119)
                  {
                    goto LABEL_175;
                  }

LABEL_168:

                  goto LABEL_41;
                }

                v97 = *(v76 + 16);
                v98 = sub_100935BE8();
                if (v98)
                {
                  v99 = sub_100935C18();
                  if (__OFSUB__(v97, v99))
                  {
                    goto LABEL_196;
                  }

                  v98 += v97 - v99;
                }

                sub_100935C08();
                v66 = v155;
                if (v84 != 2)
                {
                  if (v84 == 1)
                  {
                    v147 = v98;
                    if (v81 >> 32 < v81)
                    {
                      goto LABEL_202;
                    }

                    v100 = sub_100935BE8();
                    if (v100)
                    {
                      v101 = v100;
                      v102 = sub_100935C18();
                      if (__OFSUB__(v81, v102))
                      {
                        goto LABEL_212;
                      }

                      v103 = v81 - v102 + v101;
                    }

                    else
                    {
                      v103 = 0;
                    }

                    v134 = sub_100935C08();
                    if (v134 >= (v81 >> 32) - v81)
                    {
                      v125 = (v81 >> 32) - v81;
                    }

                    else
                    {
                      v125 = v134;
                    }

                    v126 = v147;
                    if (!v147)
                    {
                      goto LABEL_228;
                    }

                    v66 = v155;
                    if (!v103)
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_165;
                  }

                  __s1[0] = v81;
                  LOWORD(__s1[1]) = v82;
                  BYTE2(__s1[1]) = BYTE2(v82);
                  BYTE3(__s1[1]) = BYTE3(v82);
                  BYTE4(__s1[1]) = BYTE4(v82);
                  BYTE5(__s1[1]) = BYTE5(v82);
                  if (!v98)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_151;
                }

                v120 = v98;
                v121 = *(v81 + 16);
                v147 = *(v81 + 24);
                v103 = sub_100935BE8();
                if (v103)
                {
                  v122 = sub_100935C18();
                  if (__OFSUB__(v121, v122))
                  {
                    goto LABEL_210;
                  }

                  v103 += v121 - v122;
                }

                v70 = __OFSUB__(v147, v121);
                v123 = &v147[-v121];
                if (v70)
                {
                  goto LABEL_205;
                }

                v124 = sub_100935C08();
                if (v124 >= v123)
                {
                  v125 = v123;
                }

                else
                {
                  v125 = v124;
                }

                if (!v120)
                {
                  goto LABEL_221;
                }

                v126 = v120;
                v66 = v155;
                if (!v103)
                {
                  goto LABEL_220;
                }
              }

              else
              {
                if (!v83)
                {
                  __s1[0] = v76;
                  LOWORD(__s1[1]) = v78;
                  BYTE2(__s1[1]) = BYTE2(v78);
                  BYTE3(__s1[1]) = BYTE3(v78);
                  BYTE4(__s1[1]) = BYTE4(v78);
                  BYTE5(__s1[1]) = BYTE5(v78);
                  if (v84)
                  {
                    if (v84 == 1)
                    {
                      v91 = (v79 >> 32) - v79;
                      if (v79 >> 32 < v79)
                      {
                        goto LABEL_199;
                      }

                      v92 = sub_100935BE8();
                      if (!v92)
                      {
                        goto LABEL_229;
                      }

                      v93 = v92;
                      v94 = sub_100935C18();
                      if (__OFSUB__(v81, v94))
                      {
                        goto LABEL_204;
                      }

                      v95 = (v81 - v94 + v93);
                      v96 = sub_100935C08();
                      if (!v95)
                      {
                        goto LABEL_222;
                      }
                    }

                    else
                    {
                      v113 = *(v79 + 16);
                      v112 = *(v79 + 24);
                      v95 = sub_100935BE8();
                      if (v95)
                      {
                        v114 = sub_100935C18();
                        if (__OFSUB__(v113, v114))
                        {
                          goto LABEL_209;
                        }

                        v95 += v113 - v114;
                      }

                      v70 = __OFSUB__(v112, v113);
                      v91 = v112 - v113;
                      if (v70)
                      {
                        goto LABEL_200;
                      }

                      v96 = sub_100935C08();
                      if (!v95)
                      {
                        goto LABEL_217;
                      }
                    }

                    goto LABEL_123;
                  }

LABEL_111:
                  __s2 = v79;
                  v163 = v80;
                  v164 = BYTE2(v80);
                  v165 = BYTE3(v80);
                  v166 = BYTE4(v80);
                  v167 = BYTE5(v80);
                  v111 = memcmp(__s1, &__s2, BYTE6(v80));
                  sub_1007156D8(v76, v78);
                  sub_1007156D8(v81, v82);
                  if (!v111)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_168;
                }

                if (v76 > v76 >> 32)
                {
                  goto LABEL_195;
                }

                v98 = sub_100935BE8();
                if (v98)
                {
                  v104 = sub_100935C18();
                  if (__OFSUB__(v76, v104))
                  {
                    goto LABEL_197;
                  }

                  v98 += v76 - v104;
                }

                sub_100935C08();
                v66 = v155;
                if (v84 != 2)
                {
                  if (v84 == 1)
                  {
                    v147 = v98;
                    if (v81 >> 32 < v81)
                    {
                      goto LABEL_206;
                    }

                    v105 = sub_100935BE8();
                    if (v105)
                    {
                      v106 = v105;
                      v107 = sub_100935C18();
                      if (__OFSUB__(v81, v107))
                      {
                        goto LABEL_213;
                      }

                      v103 = v81 - v107 + v106;
                    }

                    else
                    {
                      v103 = 0;
                    }

                    v135 = sub_100935C08();
                    if (v135 >= (v81 >> 32) - v81)
                    {
                      v125 = (v81 >> 32) - v81;
                    }

                    else
                    {
                      v125 = v135;
                    }

                    v126 = v147;
                    if (!v147)
                    {
                      goto LABEL_224;
                    }

                    v66 = v155;
                    if (!v103)
                    {
                      goto LABEL_223;
                    }

                    goto LABEL_165;
                  }

                  __s1[0] = v81;
                  LOWORD(__s1[1]) = v82;
                  BYTE2(__s1[1]) = BYTE2(v82);
                  BYTE3(__s1[1]) = BYTE3(v82);
                  BYTE4(__s1[1]) = BYTE4(v82);
                  BYTE5(__s1[1]) = BYTE5(v82);
                  if (!v98)
                  {
                    goto LABEL_216;
                  }

LABEL_151:
                  v132 = BYTE6(v82);
                  v133 = __s1;
                  v126 = v98;
LABEL_167:
                  v136 = memcmp(v126, v133, v132);
                  sub_1007156D8(v81, v82);
                  sub_1007156D8(v76, v78);
                  if (!v136)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_168;
                }

                v127 = v98;
                v128 = *(v81 + 16);
                v147 = *(v81 + 24);
                v103 = sub_100935BE8();
                if (v103)
                {
                  v129 = sub_100935C18();
                  if (__OFSUB__(v128, v129))
                  {
                    goto LABEL_211;
                  }

                  v103 += v128 - v129;
                }

                v70 = __OFSUB__(v147, v128);
                v130 = &v147[-v128];
                if (v70)
                {
                  goto LABEL_207;
                }

                v131 = sub_100935C08();
                if (v131 >= v130)
                {
                  v125 = v130;
                }

                else
                {
                  v125 = v131;
                }

                if (!v127)
                {
                  goto LABEL_219;
                }

                v126 = v127;
                v66 = v155;
                if (!v103)
                {
                  goto LABEL_218;
                }
              }

LABEL_165:
              if (v126 == v103)
              {
                goto LABEL_173;
              }

              v132 = v125;
              v133 = v103;
              goto LABEL_167;
            }

LABEL_172:
            v156 = v74;
LABEL_173:
            sub_1007156D8(v81, v82);
            v137 = v76;
            v138 = v78;
LABEL_174:
            sub_1007156D8(v137, v138);
LABEL_175:
            v139 = sub_1008EC230();

            if (v139)
            {
              sub_100936CC8();
              if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_100936D18();
                v66 = v155;
              }

              sub_100936D38();
              v142 = v169;
            }

LABEL_184:
            if (v154 == v151)
            {

              *v144 = v142;
            }
          }
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v151 = v24;
        if (v24)
        {
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100018974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 40) <= a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

void sub_100018AE8(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 context];
  v6 = [v4 topic];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

uint64_t sub_100018BB8(uint64_t a1, uint64_t a2)
{
  CSDBSqliteBindTextFromCFString();
  if (*(a1 + 48))
  {
    CSDBSqliteBindTextFromCFString();
  }

  v4 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    do
    {
      CFArrayGetValueAtIndex(v4, v6);
      CSDBRecordStoreRemoveRecord();
      ++v6;
    }

    while (v7 != v6);
  }

  CFRelease(v4);
  *(*(*(a1 + 32) + 8) + 24) = CSDBRecordSaveStore();

  return _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

void sub_100018C94(const __CFString *a1, const void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1 && CFStringGetLength(a1))
  {
    if (a2)
    {
      v9 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message WHERE guid = ? AND alternate_guid = ? ORDER BY ROWID ASC;";
    }

    else
    {
      v9 = @"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message WHERE guid = ? ORDER BY ROWID ASC;";
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100018BB8;
    v15[3] = &unk_100BD7A90;
    v15[5] = a1;
    v15[6] = a2;
    v15[4] = &v16;
    sub_100018E48(v9, v15, v7);
    if ((v17[3] & 1) == 0)
    {
      CFRetain(a1);
      if (a2)
      {
        CFRetain(a2);
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10033F730;
      v10[3] = &unk_100BD7E20;
      v11 = v8;
      v13 = a2;
      v12 = v7;
      v14 = a1;
      sub_10000B240(v10, 0, v11);
    }

    _Block_object_dispose(&v16, 8);
  }
}

void sub_100018E48(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v4 ensureDatabaseIsInitialized];
  v6 = sub_10000AB24(v4);

  CSDBPerformLockedSectionForQueryForReading();
}

uint64_t sub_100019928(char a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v6 = +[IDSPairingManager sharedInstance];
  v7 = [v6 shouldUseIPsecLinkForDefaultPairedDevice];

  v8 = 0;
  if (a2 == 1 && v7)
  {
    v9 = +[IMIDSLog daemon];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Changing Class-A to AOverC for service %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

void sub_100019E70(uint64_t a1)
{
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = [*(v2 + 24) count];
    *buf = 138412546;
    v40 = v2;
    v41 = 2048;
    v42 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%@ fallback timer fired, fallback queue: %lu", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = *(a1 + 32);
    v26 = [*(v25 + 24) count];
    _IDSLogV();
  }

  context = objc_autoreleasePoolPush();
  v4 = [*(*(a1 + 32) + 24) _copyForEnumerating];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v5)
  {

    v28 = 0;
    v29 = 0;
    v30 = 0;
    Mutable = 0;
    v31 = 0;
    v23 = 0.0;
    goto LABEL_38;
  }

  v28 = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v6 = 0;
  Mutable = 0;
  v8 = *v35;
  do
  {
    v9 = 0;
    do
    {
      if (*v35 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v34 + 1) + 8 * v9);
      v11 = [v10 topic];
      v12 = [(__CFDictionary *)Mutable objectForKey:v11];
      v13 = v12;
      if (v12)
      {
        if (![v12 BOOLValue])
        {
          goto LABEL_24;
        }

        goto LABEL_13;
      }

      if ([v10 deniedToSend])
      {
        v14 = 0;
        if (Mutable)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = [*(a1 + 32) _messageIsAllowedToSendMessageOnTopic:v11];
        if (Mutable)
        {
          goto LABEL_23;
        }
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_23:
      v16 = [NSNumber numberWithBool:v14];
      [(__CFDictionary *)Mutable setObject:v16 forKey:v11];

      if ((v14 & 1) == 0)
      {
LABEL_24:
        v31 = 1;
        goto LABEL_25;
      }

LABEL_13:
      if ([*(a1 + 32) _performFallbackIfNecessary:v10])
      {
        if (v30)
        {
          [v30 addIndex:v6];
        }

        else
        {
          v30 = [[NSMutableIndexSet alloc] initWithIndex:v6];
        }
      }

      else if (!v29)
      {
        [v10 timeEnqueued];
        v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        v15 = v11;

        v28 = v15;
      }

LABEL_25:

      ++v6;
      v9 = v9 + 1;
    }

    while (v5 != v9);
    v17 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    v5 = v17;
  }

  while (v17);

  if (v30)
  {
    [*(*(a1 + 32) + 24) removeObjectsAtIndexes:v30];
    if (![*(*(a1 + 32) + 24) count])
    {
      v18 = *(a1 + 32);
      v19 = *(v18 + 24);
      *(v18 + 24) = 0;
    }
  }

  if (v29)
  {
    [v29 timeIntervalSinceNow];
    v21 = v20;
    [*(a1 + 32) _fallbackTimeoutForService:v28];
    v23 = v21 + v22;
    v31 = 1;
  }

  else
  {
    v29 = 0;
    if (v31)
    {
      v23 = 60.0;
    }

    else
    {
      v23 = 0.0;
    }
  }

LABEL_38:

  [*(*(a1 + 32) + 104) invalidate];
  v24 = *(*(a1 + 32) + 104);
  *(*(a1 + 32) + 104) = 0;

  if (v31)
  {
    [*(a1 + 32) _resetFallbackTimeout:1 useNextFallback:v23];
  }

  objc_autoreleasePoolPop(context);
}

void sub_10001A2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x100019F24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001B18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained connectionIsEmpty:*(a1 + 32)];
}

id sub_10001B2E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10091A12C();
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_10001B3A0(uint64_t a1, void *a2, void *a3)
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
        sub_10091B25C(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001B45C(uint64_t a1, void *a2, void *a3)
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
        sub_10091BAD8(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001B518(uint64_t a1, void *a2, void *a3)
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
        sub_10091C6EC(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001B5D4(uint64_t a1, void *a2, void *a3)
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
        sub_10092224C(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001B690(uint64_t a1, void *a2, void *a3)
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
        sub_100924A38(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001B74C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_100929B3C();
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_10001B808(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_100929DDC();
      }
    }

    v6 = 0;
  }

  return v6;
}

id sub_10001B8C4(uint64_t a1, void *a2, void *a3)
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
        sub_10092A694(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001B980(uint64_t a1, void *a2, void *a3)
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
        sub_10092C4B0(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_10001BA3C(uint64_t a1, void *a2, void *a3)
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
        sub_10092C73C(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

uint64_t sub_10001BD74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BE54;
  v8[3] = &unk_100BD7AE0;
  v8[5] = a2;
  v8[6] = a1;
  v8[4] = &v9;
  sub_10000B8B8(v8, v5);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_10001BE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BE54(uint64_t a1)
{
  result = CSDBSqliteDatabaseStatementForReading();
  if (result && *(result + 8))
  {
    CSDBSqliteBindInt64();
    if (*(a1 + 48))
    {
      CSDBSqliteBindTextFromCFString();
    }

    while (1)
    {
      v3 = CSDBSqliteStatementCopyDataResult();
      if (!v3)
      {
        break;
      }

      v4 = v3;
      v5 = *(*(*(a1 + 32) + 8) + 24);
      if (!v5)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v5 = *(*(*(a1 + 32) + 8) + 24);
      }

      CFArrayAppendValue(v5, v4);
      CFRelease(v4);
    }

    return CSDBSqliteStatementReset();
  }

  return result;
}

uint64_t sub_10001C1E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  if (a3 >> 60 != 15)
  {
    sub_100715F9C();
    sub_100715738(a2, a3);
    v6 = sub_100936F28();
    sub_10001C35C(a2, a3);
    return v6;
  }

  return result;
}

uint64_t sub_10001C35C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1007156D8(a1, a2);
  }

  return a1;
}

void sub_10001D264(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x10001D120);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v19 - 96), 8);
  _Unwind_Resume(exc_buf);
}

void sub_10001D30C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1003D6FF4;
  v9 = &unk_100BD6E40;
  v10 = v3;
  v11 = WeakRetained;
  v4 = WeakRetained;
  [v3 _performLockedBlock:&v6];
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 _save];
}

void sub_10001D3CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[6];
  if (v2)
  {
    [v2 setFireTimeInterval:120.0];
  }

  else
  {
    v3 = [IMTimer alloc];
    v4 = *(a1 + 32);
    v5 = im_primary_queue();
    v6 = [v3 initWithTimeInterval:@"com.apple.identityservices.keychain-manager" name:0 shouldWake:v4 target:"_flush" selector:0 userInfo:v5 queue:120.0];
    v7 = WeakRetained[6];
    WeakRetained[6] = v6;
  }
}

void sub_10001D6D8()
{
  v1 = v0;
  v2 = sub_1009364B8();
  v3 = sub_100936F18();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cleanup timer fired.", v4, 2u);
  }

  if ((*((swift_isaMask & *v1) + 0x80))())
  {

    v5 = sub_1009364B8();
    v6 = sub_100936F18();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Closing our SD database.", v7, 2u);
    }

    v8 = *((swift_isaMask & *v1) + 0x88);

    v8(0);
  }

  else
  {
    oslog = sub_1009364B8();
    v9 = sub_100936F18();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "SD database is already closed.", v10, 2u);
    }
  }
}

void sub_10001D974(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v25 = a2;
  v5 = a3;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling devices updated push {userInfo: %@}", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(IDSRegistrationPushHandler *)v25 copyHandlersForEnumerating];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v28 = *v31;
    *&v8 = 138412802;
    v22 = v8;
    do
    {
      v9 = 0;
      v29 = v7;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = objc_opt_class();
          v12 = sub_10001B808(v11, v5, @"i");
          v13 = [(NSDictionary *)v5 objectForKey:@"p", v22];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = [(NSDictionary *)v5 objectForKey:@"p"];
            v16 = [NSData _IDSDataFromBase64String:v15];
            v24 = v16;
            v27 = v15;
            goto LABEL_13;
          }

          v17 = [(NSDictionary *)v5 objectForKey:@"p"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [(NSDictionary *)v5 objectForKey:@"p"];
            v3 = v17;
            v23 = v16;
LABEL_13:
            v18 = isKindOfClass ^ 1;
          }

          else
          {
            v18 = 0;
            v16 = 0;
            v3 = v17;
          }

          v19 = objc_opt_class();
          v20 = sub_10001B808(v19, v5, @"s");
          [v10 handler:v25 profile:v12 deviceUpdated:v16 service:v20];

          if (v18)
          {
          }

          v21 = v3;
          if (isKindOfClass)
          {

            v21 = v27;
          }
        }

        v9 = v9 + 1;
      }

      while (v29 != v9);
      v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }
}

void sub_10001DD54(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100929F98();
    }

    objc_end_catch();
    JUMPOUT(0x10001DD0CLL);
  }

  JUMPOUT(0x10001DDE4);
}

id sub_10001E21C(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:kIDSServiceDefaultsAliasKey];

  if (v3)
  {
    v3 = v2;
  }

  return v3;
}

const __CFString *_StringForIDSRegistrationType(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unrecognized";
  }

  else
  {
    return off_100BDC870[a1];
  }
}

void *sub_10001E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  v44 = a44;
  pthread_once(&stru_100CAE890, sub_100340528);
  Instance = _CFRuntimeCreateInstance();
  v46 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = 0;
    [v44 ensureDatabaseIsInitialized];
    v47 = CSDBRecordCreate();
    if (v47)
    {
      v48 = v47;
      v51 = v44;
      for (i = 0; i != 55; ++i)
      {
        CSDBRecordSetProperty();
      }

      v44 = v51;
      if (sub_10001E5FC(v48, v51))
      {
        v46[3] = CSDBRecordGetID();
      }

      else
      {
        CFRelease(v46);
        v46 = 0;
      }

      CFRelease(v48);
    }

    else
    {
      CFRelease(v46);
      v46 = 0;
    }
  }

  return v46;
}

uint64_t sub_10001E5FC(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E75C;
  v5[3] = &unk_100BD79A0;
  v7 = &v9;
  v8 = a1;
  v2 = a2;
  v6 = v2;
  sub_10001E6DC(v5, v2);
  v3 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v3;
}

void sub_10001E6DC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 ensureDatabaseIsInitialized];
  v5 = sub_10000AB24(v3);

  CSDBPerformLockedSectionForRecordStore();
}

void sub_10001E75C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    CSDBRecordStoreAddRecord();
    *(*(*(a1 + 40) + 8) + 24) = CSDBRecordSaveStore();
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (CSDBRecordStoreGetDatabase())
      {
        ID = CSDBRecordGetID();
        v3 = sub_10001F054(kCFAllocatorDefault, ID, 0, *(a1 + 32));
        if (v3)
        {

          CFRelease(v3);
        }
      }
    }
  }
}

const void *sub_10001F054(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  pthread_once(&stru_100CAE890, sub_100340528);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v8 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 24) = a2;
    *(Instance + 16) = 0;
    if (a3)
    {
      v9 = sub_10033CA20(a2, v6);
    }

    else
    {
      v9 = sub_10001F108(a2, v6);
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10001F108(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F250;
  v6[3] = &unk_100BD7A68;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10001F1D8(v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_10001F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F1D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 ensureDatabaseIsInitialized];
  v5 = sub_10000AB24(v3);

  CSDBPerformUnlockedSectionForRecordStore();
}

uint64_t sub_10001F250(uint64_t a1)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10001F294(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 24) = -1;

  os_unfair_lock_unlock((a1 + 16));
}

void sub_10001F2D8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 24) = -1;

  os_unfair_lock_unlock((a1 + 16));
}

id sub_10001F5A0(void *a1)
{
  v1 = a1;
  v2 = sub_10001F670();
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [v1 pushToken];
    v5 = [v4 SHA1HexString];
    v6 = [v5 uppercaseString];
    v3 = [NSString stringWithFormat:@"t:%@", v6];
  }

  return v3;
}

id sub_10001F670()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrService, @"AppleIDClientIdentifier");
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  result = 0;
  v1 = 0;
  if (SecItemCopyMatching(Mutable, &result))
  {
    v2 = 1;
  }

  else
  {
    v2 = result == 0;
  }

  if (!v2)
  {
    v3 = [NSString alloc];
    v1 = [v3 initWithData:result encoding:4];
    CFRelease(result);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

void sub_100020348(const __CFString *a1, void *a2)
{
  v3 = a2;
  if (a1 && CFStringGetLength(a1))
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000204AC;
    v4[3] = &unk_100BD7E40;
    v4[4] = a1;
    sub_100018E48(@"SELECT ROWID, guid, topic, from_id, message_data, date, is_local, message_identifier, expiration_date, control_category FROM incoming_message WHERE guid = ? ORDER BY ROWID ASC;", v4, v3);
  }
}

uint64_t sub_1000204AC(uint64_t a1, uint64_t a2)
{
  CSDBSqliteBindTextFromCFString();
  v3 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v3);
  if (Count >= 1)
  {
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    do
    {
      CFArrayGetValueAtIndex(v3, v5);
      CSDBRecordStoreRemoveRecord();
      ++v5;
    }

    while (v6 != v5);
  }

  CFRelease(v3);
  CSDBRecordSaveStore();

  return _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

void sub_100020FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100936038();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v44 - v11;
  v13 = sub_100706B30(&qword_100CB4AC0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v44 - v18;
  __chkstk_darwin(v17);
  v21 = v44 - v20;
  if (!a1)
  {
    return;
  }

  v50 = a1;
  v22 = [v50 bagKey];
  if (v22)
  {
    v48 = a2;
    v49 = v22;
    sub_100936B38();
    if (([v50 wantsBagKey] & 1) != 0 && sub_100936BD8() >= 1 && CUTIsInternalInstall())
    {
      v23 = [v50 requestStart];
      if (v23)
      {
        v24 = v23;
        sub_100935FE8();

        v25 = *(v7 + 56);
        v25(v21, 0, 1, v6);
      }

      else
      {
        v25 = *(v7 + 56);
        v25(v21, 1, 1, v6);
      }

      v46 = a3;
      v27 = [v50 responseReceived];
      if (v27)
      {
        v47 = v25;
        v28 = v27;
        sub_100935FE8();

        v29 = *(v7 + 32);
        v29(v19, v10, v6);
        v47(v19, 0, 1, v6);
        v29(v12, v19, v6);
      }

      else
      {
        v25(v19, 1, 1, v6);
        sub_100936028();
        if ((*(v7 + 48))(v19, 1, v6) != 1)
        {
          sub_100021EA4(v19);
        }
      }

      v30 = [v50 splunkHint];
      if (v30)
      {
        v31 = v30;
        sub_100936B38();
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = [v50 baaSigningDigest];
      if (v34)
      {
        v35 = v34;
        v45 = sub_100936B38();
        v47 = v36;
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      v37 = [objc_opt_self() sharedInstance];
      if (v37)
      {
        v38 = v37;

        v39 = [v38 persistenceManager];

        if (v39)
        {
          sub_10002155C(v21, v16);
          if ((*(v7 + 48))(v16, 1, v6) == 1)
          {
            v44[0] = 0;
          }

          else
          {
            v44[0] = sub_100935F58().super.isa;
            (*(v7 + 8))(v16, v6);
          }

          v40.super.isa = sub_100935F58().super.isa;
          if (v33)
          {
            v41 = sub_100936B28();
          }

          else
          {
            v41 = 0;
          }

          v44[1] = v33;
          if (v47)
          {
            v42 = sub_100936B28();
          }

          else
          {
            v42 = 0;
          }

          v43 = v44[0];
          [v39 saveRegistrationEventWithBagKey:v49 requestStart:v44[0] completionTime:v40.super.isa resultCode:v48 interface:v46 splunkHint:v41 baaSigningDigest:v42];
        }

        else
        {
        }

        (*(v7 + 8))(v12, v6);
        sub_100021EA4(v21);
      }

      else
      {

        __break(1u);
      }

      return;
    }

    v26 = v49;
  }

  else
  {
    v26 = v50;
  }
}

uint64_t sub_10002155C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002180C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = a8;
  v57 = a6;
  v58 = a7;
  v51 = a4;
  v52 = a3;
  v61 = a1;
  v62 = a2;
  v55 = a5;
  v56 = a10;
  v54 = a9;
  v11 = sub_100936038();
  v48 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v53 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  v50 = v14;
  __chkstk_darwin(v13);
  v17 = v47 - v16;
  v49 = v47 - v16;
  v18 = sub_100706B30(&qword_100CB4AC0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v22 = v47 - v21;
  sub_100012D50(v52, v47 - v21, &qword_100CB4AC0);
  v63 = v12;
  v52 = *(v12 + 16);
  v52(v17, a4, v11);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = *(v12 + 80);
  v25 = (v20 + v24 + v23) & ~v24;
  v47[1] = v24 | 7;
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v62;
  *(v30 + 16) = v61;
  *(v30 + 24) = v31;
  sub_100021E3C(v22, v30 + v23, &qword_100CB4AC0);
  v32 = *(v63 + 32);
  v63 += 32;
  v33 = v30 + v25;
  v34 = v48;
  v32(v33, v49, v48);
  v35 = v56;
  *(v30 + v26) = v55;
  v36 = v58;
  *(v30 + v27) = v57;
  v37 = (v30 + v28);
  v38 = v59;
  *v37 = v36;
  v37[1] = v38;
  v39 = (v30 + v29);
  v40 = v53;
  *v39 = v54;
  v39[1] = v35;
  v52(v40, v51, v34);
  v41 = swift_allocObject();
  v43 = v60;
  v42 = v61;
  v41[2] = v60;
  v41[3] = v42;
  v41[4] = v62;
  v32(v41 + ((v24 + 40) & ~v24), v40, v34);
  v44 = *((swift_isaMask & *v43) + 0x110);

  v45 = v43;
  swift_bridgeObjectRetain_n();

  v44(sub_100021F80, v30, sub_1008EC1B4, v41);
}

uint64_t sub_100021BC0()
{
  v1 = *(sub_100706B30(&qword_100CB4AC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100936038();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (((((((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 16, v2 | v7 | 7);
}

uint64_t sub_100021D70()
{
  v1 = sub_100936038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100021E3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100706B30(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021EA4(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB4AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021F80(uint64_t a1)
{
  v3 = *(sub_100706B30(&qword_100CB4AC0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_100936038() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000220C8(a1, *(v1 + 16), *(v1 + 24), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000220C8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v52 = a7;
  v53 = a8;
  v50 = a3;
  v51 = a6;
  v47 = a4;
  v48 = a5;
  v49 = a2;
  v54 = a1;
  v12 = sub_100706B30(&qword_100CBA610);
  __chkstk_darwin(v12 - 8);
  v44 = &v40 - v13;
  v14 = sub_100706B30(&qword_100CBA618);
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v40 - v15;
  v45 = sub_100936038();
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v18 - 8);
  v20 = &v40 - v19;
  v21 = [objc_allocWithZone(IMUserDefaults) init];
  v22 = sub_100936B28();
  v23 = [v21 appValueForKey:v22];

  if (v23)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  v55 = v11;
  v43 = v14;
  if (!*(&v57 + 1))
  {
LABEL_8:
    sub_100013814(v58, &qword_100CB4A90);
    goto LABEL_9;
  }

  sub_100014170(0, &unk_100CBA300);
  if (swift_dynamicCast())
  {
    v24 = v59;
    v25 = [v59 unsignedIntegerValue];

    v26 = v25 + 1;
    if (v25 != -1)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v26 = 0;
LABEL_10:
  v27 = [objc_allocWithZone(IMUserDefaults) init];
  v28 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v26];
  v29 = sub_100936B28();
  [v27 setAppValue:v28 forKey:v29];

  v30 = type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent(0);
  sub_100012D50(v47, v20, &qword_100CB4AC0);
  v31 = v46;
  (*(v16 + 16))(v46, v48, v45);

  v32 = v50;

  sub_100763034(v49, v32, v20, v31, v51, v52, v53, a9, a10, a11, v26);
  sub_100014C40(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936768();
  v33 = sub_1000236C4();
  if (v26 <= *v33)
  {
  }

  __chkstk_darwin(v33);
  *&v58[0] = v30;
  v34 = v41;
  sub_100936128();
  v35 = v42;
  v36 = v44;
  v37 = v43;
  (*(v42 + 16))(v44, v34, v43);
  (*(v35 + 56))(v36, 0, 1, v37);
  v38 = v55;
  sub_100936748();
  if (v38)
  {
  }

  sub_100013814(v36, &qword_100CBA610);
  return (*(v35 + 8))(v34, v37);
}

void *sub_1000226D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100022718(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_100768830(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000227B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_1007B1924(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022850(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_1007FBEB8(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000228EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_10083439C(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022988(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_100864C40(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022A24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_100887294(a2, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022AC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&unk_100CBA310);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022B2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100022EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100918268(v3, v4);
  }

  if (![v3 registrationType] || objc_msgSend(v3, "registrationType") == 2)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1009182E0(v5);
    }

    v6 = [v3 phoneNumber];
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

uint64_t sub_100022FD8(uint64_t result)
{
  if (result <= 5199)
  {
    if (result <= 1004)
    {
      if (result == 1004)
      {
        v1 = 81;
      }

      else
      {
        v1 = result;
      }

      if (result == 1003)
      {
        v2 = 80;
      }

      else
      {
        v2 = v1;
      }

      if (result == 1002)
      {
        v3 = 79;
      }

      else
      {
        v3 = v2;
      }

      if (result == 1001)
      {
        v4 = 78;
      }

      else
      {
        v4 = result;
      }

      if (result == 1000)
      {
        v5 = 70;
      }

      else
      {
        v5 = v4;
      }

      if (result == 443)
      {
        v6 = 109;
      }

      else
      {
        v6 = v5;
      }

      if (result <= 1001)
      {
        v3 = v6;
      }

      if (result == 442)
      {
        v7 = 107;
      }

      else
      {
        v7 = result;
      }

      if (result == 441)
      {
        v8 = 106;
      }

      else
      {
        v8 = v7;
      }

      if (result == 440)
      {
        v9 = 108;
      }

      else
      {
        v9 = v8;
      }

      if (result == 200)
      {
        v10 = 2;
      }

      else
      {
        v10 = result;
      }

      if (result == 1)
      {
        v10 = 0;
      }

      if (result)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      if (result <= 439)
      {
        v9 = v11;
      }

      if (result <= 442)
      {
        return v9;
      }

      else
      {
        return v3;
      }
    }

    else
    {
      switch(result)
      {
        case 5000:
          result = 3;
          break;
        case 5001:
          result = 4;
          break;
        case 5002:
          result = 5;
          break;
        case 5003:
          result = 6;
          break;
        case 5004:
          result = 7;
          break;
        case 5005:
          result = 8;
          break;
        case 5006:
          result = 9;
          break;
        case 5007:
          result = 10;
          break;
        case 5008:
          result = 11;
          break;
        case 5009:
          result = 12;
          break;
        case 5010:
          result = 13;
          break;
        case 5011:
          result = 14;
          break;
        case 5012:
          result = 15;
          break;
        case 5013:
          result = 16;
          break;
        case 5014:
          result = 17;
          break;
        case 5015:
          result = 18;
          break;
        case 5016:
          result = 19;
          break;
        case 5017:
          result = 20;
          break;
        case 5018:
          result = 21;
          break;
        case 5019:
          result = 22;
          break;
        case 5020:
          result = 23;
          break;
        case 5021:
          result = 24;
          break;
        case 5022:
          result = 25;
          break;
        case 5023:
          result = 26;
          break;
        case 5024:
          result = 27;
          break;
        case 5025:
          result = 28;
          break;
        case 5026:
          result = 29;
          break;
        case 5027:
          result = 30;
          break;
        case 5028:
          result = 31;
          break;
        case 5029:
          result = 32;
          break;
        case 5030:
          result = 33;
          break;
        case 5031:
          result = 34;
          break;
        case 5032:
          result = 35;
          break;
        case 5033:
          result = 36;
          break;
        case 5034:
          result = 37;
          break;
        case 5035:
          result = 41;
          break;
        case 5036:
          result = 42;
          break;
        case 5037:
          result = 43;
          break;
        case 5038:
          result = 44;
          break;
        case 5039:
          result = 38;
          break;
        case 5040:
          result = 39;
          break;
        case 5041:
          result = 40;
          break;
        case 5042:
        case 5043:
        case 5044:
        case 5045:
        case 5049:
        case 5050:
        case 5053:
        case 5054:
        case 5056:
        case 5065:
        case 5066:
        case 5067:
        case 5069:
        case 5070:
        case 5071:
        case 5072:
        case 5073:
        case 5074:
        case 5075:
        case 5077:
        case 5081:
        case 5082:
        case 5083:
        case 5084:
        case 5091:
        case 5093:
        case 5094:
        case 5095:
        case 5096:
        case 5097:
        case 5098:
        case 5101:
        case 5102:
          return result;
        case 5046:
          result = 45;
          break;
        case 5047:
          result = 46;
          break;
        case 5048:
          result = 47;
          break;
        case 5051:
          result = 48;
          break;
        case 5052:
          result = 49;
          break;
        case 5055:
          result = 76;
          break;
        case 5057:
          result = 50;
          break;
        case 5058:
          result = 51;
          break;
        case 5059:
          result = 52;
          break;
        case 5060:
          result = 53;
          break;
        case 5061:
          result = 54;
          break;
        case 5062:
          result = 55;
          break;
        case 5063:
          result = 56;
          break;
        case 5064:
          result = 57;
          break;
        case 5068:
          result = 58;
          break;
        case 5076:
          result = 64;
          break;
        case 5078:
          result = 59;
          break;
        case 5079:
          result = 60;
          break;
        case 5080:
          result = 61;
          break;
        case 5085:
          result = 65;
          break;
        case 5086:
          result = 66;
          break;
        case 5087:
          result = 67;
          break;
        case 5088:
          result = 68;
          break;
        case 5089:
          result = 62;
          break;
        case 5090:
          result = 63;
          break;
        case 5092:
          result = 69;
          break;
        case 5099:
          result = 75;
          break;
        case 5100:
          result = 84;
          break;
        case 5103:
          result = 85;
          break;
        default:
          if (result == 1006)
          {
            v25 = 83;
          }

          else
          {
            v25 = result;
          }

          if (result == 1005)
          {
            result = 82;
          }

          else
          {
            result = v25;
          }

          break;
      }
    }

    return result;
  }

  if (result <= 5999)
  {
    if (result <= 5203)
    {
      v12 = 5201;
      if (result == 5203)
      {
        v23 = 89;
      }

      else
      {
        v23 = result;
      }

      if (result == 5202)
      {
        v15 = 88;
      }

      else
      {
        v15 = v23;
      }

      v16 = 5200;
      v17 = 86;
      v18 = result == 5201;
      v19 = 87;
    }

    else
    {
      v12 = 5205;
      if (result == 5208)
      {
        v13 = 110;
      }

      else
      {
        v13 = result;
      }

      if (result == 5207)
      {
        v14 = 93;
      }

      else
      {
        v14 = v13;
      }

      if (result == 5206)
      {
        v15 = 92;
      }

      else
      {
        v15 = v14;
      }

      v16 = 5204;
      v17 = 91;
      v18 = result == 5205;
      v19 = 90;
    }

    if (!v18)
    {
      v19 = result;
    }

    goto LABEL_86;
  }

  if (result > 6999)
  {
    v12 = 9999;
    if (result == 20001)
    {
      v20 = 74;
    }

    else
    {
      v20 = result;
    }

    if (result == 20000)
    {
      v21 = 74;
    }

    else
    {
      v21 = v20;
    }

    if (result == 10000)
    {
      v15 = 73;
    }

    else
    {
      v15 = v21;
    }

    v16 = 7000;
    v17 = 77;
    if (result == 8001)
    {
      v22 = 72;
    }

    else
    {
      v22 = result;
    }

    if (result == 8000)
    {
      v19 = 72;
    }

    else
    {
      v19 = v22;
    }

LABEL_86:
    if (result == v16)
    {
      v24 = v17;
    }

    else
    {
      v24 = v19;
    }

    if (result <= v12)
    {
      return v24;
    }

    else
    {
      return v15;
    }
  }

  switch(result)
  {
    case 6000:
      result = 71;
      break;
    case 6001:
      result = 94;
      break;
    case 6002:
      result = 95;
      break;
    case 6003:
      result = 96;
      break;
    case 6004:
      result = 97;
      break;
    case 6005:
      result = 98;
      break;
    case 6006:
      result = 101;
      break;
    case 6008:
      result = 99;
      break;
    case 6009:
      result = 100;
      break;
    case 6010:
      result = 102;
      break;
    case 6011:
      result = 103;
      break;
    case 6012:
      result = 104;
      break;
    case 6013:
      result = 105;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000236A8(uint64_t result)
{
  if ((result + 2) <= 0x33)
  {
    return dword_1009ABA20[result + 2];
  }

  return result;
}

void sub_10002445C(uint64_t a1)
{
  v2 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) length];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    *buf = 67110146;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    v28 = 1024;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving %d bytes under service: %@   account: %@   accessGroup: %@   saveIdentifier: %u", buf, 0x2Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v8 = [*(a1 + 32) length];
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v16 = *(a1 + 40);
    v14 = v8;
    MarcoLogRegistration();
  }

  v19 = 0;
  v9 = [IDSDependencyProvider keychainAdapter:v14];
  v10 = [v9 setKeychainData:*(a1 + 32) service:*(a1 + 40) account:*(a1 + 48) accessGroup:*(a1 + 56) allowSync:0 error:&v19];

  if ((v10 & 1) == 0)
  {
    v11 = +[IMRGLog keychainManager];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to save registrations to keychain (error: %d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v15 = v19;
      MarcoLogRegistration();
    }
  }

  v12 = +[IMRGLog keychainManager];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "** Saving registration data to keychain: Done **", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogRegistration();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, IDSRegistrationKeychainChangedNotification, 0, 0, 0);
}

void sub_1000246DC(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  *(*(a1 + 32) + 80) &= ~8u;
  v11 = [NSNumber numberWithInteger:a3];
  [v9 setDependentRegistrationResponseCode:v11];

  if (a4)
  {
    context = objc_autoreleasePoolPush();
    v12 = +[IMRGLog GDR];
    v56 = a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) uniqueID];
      v14 = [*(a1 + 32) service];
      v15 = [v14 queryService];
      *buf = 138412546;
      v68 = v13;
      v69 = 2112;
      v70 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device query completed with   Account ID: %@   service: %@", buf, 0x16u);

      a1 = v56;
    }

    v16 = [v10 _numberForKey:@"expiry-epoch-milli-sec"];
    [v16 doubleValue];
    v18 = [NSNumber numberWithDouble:v17 / 1000.0];

    v19 = [NSDate alloc];
    v54 = v18;
    [v18 doubleValue];
    v51 = [v19 initWithTimeIntervalSince1970:?];
    [v9 setDependentRegistrationsTTL:?];
    [v9 setDependentRegistrationAuthRetries:&off_100C3C898];
    v20 = *(a1 + 32);
    v21 = +[NSDate date];
    v22 = [NSDictionary dictionaryWithObject:v21 forKey:kIDSServiceDefaultsLastGDRDateKey];
    [v20 writeAccountDefaults:v22];

    v23 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [v18 doubleValue];
      *buf = 134217984;
      v68 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "  => seconds: %f", buf, 0xCu);
    }

    v53 = v10;
    v25 = [v10 _arrayForKey:@"registrations"];
    v26 = v9;
    v27 = [v9 dependentRegistrations];
    v28 = [*(v56 + 32) service];
    v29 = [v28 tunnelService];

    v55 = v27;
    if (v29)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v30 = [*(v56 + 32) adHocAccounts];
      v31 = [v30 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v62;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v62 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v61 + 1) + 8 * i);
            v36 = [*(v56 + 32) primaryRegistration];
            v37 = [v36 uris];

            [v35 _updateSessionsWithRegisteredURIs:v37 sendReasonPathID:30];
            [*(v56 + 32) _flushTokensForRegisteredURIs:v37];
          }

          v32 = [v30 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v32);
      }
    }

    else
    {
      v39 = [*(v56 + 32) primaryRegistration];
      v30 = [v39 uris];

      [*(v56 + 32) _updateSessionsWithRegisteredURIs:v30 sendReasonPathID:30];
      [*(v56 + 32) _flushTokensForRegisteredURIs:v30];
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v40 = v25;
    v41 = [v40 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v58;
      v44 = IDSDevicePropertyService;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v58 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v57 + 1) + 8 * j);
          v47 = [v46 objectForKey:v44];
          v48 = [v26 serviceIdentifier];
          v49 = [v47 isEqualToString:v48];

          if (v49)
          {
            [*(v56 + 32) _processReceivedDependentRegistration:v46 oldDependentRegistrations:v55];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v42);
    }

    v9 = v26;
    v10 = v53;
    if (!v55)
    {
      v50 = +[IMRGLog GDR];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " *** This is our first dependent handles check, we're just storing them", buf, 2u);
      }
    }

    [*(v56 + 32) _notifyListenersAndSetDependentRegistrations:v40 onRegistrationInfo:v9];
    [*(v56 + 32) _saveAndNotifyGDRUpdate];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v38 = +[IMRGLog warning];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_10092614C(v38);
    }

    [v9 setDependentRegistrationsTTL:0];
    [*(a1 + 32) _notifyListenersAndSetDependentRegistrations:0 onRegistrationInfo:v9];
    [*(a1 + 32) _saveAndNotifyGDRUpdate];
    sub_100570288();
    im_dispatch_after_primary_queue();
  }
}

uint64_t sub_100024F78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = sub_100937268();
      }

      else
      {
        if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v8 = *(a2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 prefixedURI];
      v12 = sub_100936B38();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000251F4(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_1000251F4((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_19:
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v7;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = *((swift_isaMask & *v25) + 0x110);

  v20(sub_1008EB514, v18, sub_1008EB530, v19);
}

char *sub_1000251F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100706B30(&unk_100CBABF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000254AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000254C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000254DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  v12 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v19 = a2;
  v20 = a3;
  v22 = v12;
  sub_100936128();
  v13 = sub_100706B30(&unk_100CBA340);
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  sub_100936748();
  result = sub_100013814(v11, &qword_100CBA9A8);
  if (!v3)
  {
    v15 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    v16 = __chkstk_darwin(v15);
    *&v18[-16] = a2;
    *&v18[-8] = a3;
    v21 = v16;
    sub_100936128();
    v17 = sub_100706B30(&qword_100CBA350);
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
    sub_100936748();
    return sub_100013814(v8, &qword_100CBA9B0);
  }

  return result;
}

void sub_1000257DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 broadcasterForTopic:v6 ignoreServiceListener:1 messageContext:*(a1 + 32)];

  v8 = [v3 dependentRegistrations];
  if (![v8 count])
  {
    v9 = [*(a1 + 40) dependentRegistrations];
    v10 = [v9 count];

    if (v10)
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1009260E4();
      }
    }
  }

  v12 = [v3 service];
  v13 = [v12 identifier];
  v14 = [v13 isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"];

  if (v14)
  {
    if ([v3 isRegistered] && (objc_msgSend(v3, "primaryRegistration"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, v17 = objc_msgSend(v3, "isEnabled"), v16, v17))
    {
      v18 = +[IMRGLog GDR];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "iCloud pairing account is usable, updating device properties", v25, 2u);
      }

      v19 = [*(a1 + 40) accountController];
      [v19 updateDevicePropertiesWithDevices:v8];
    }

    else
    {
      v19 = +[IMRGLog GDR];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if ([v3 isRegistered])
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v21 = [v3 primaryRegistration];
        if (v21)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        *v25 = 138412802;
        if ([v3 isEnabled])
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        *&v25[4] = v20;
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "iCloud pairing account is not usable, not updating device properties (registered: %@, primaryRegistration: %@, isEnabled: %@)", v25, 0x20u);
      }
    }
  }

  v24 = [v3 uniqueID];
  [v7 account:v24 dependentDevicesUpdated:v8];
}

uint64_t sub_100025AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_100706B30(&unk_100CBA420);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  v14 = a2;
  v15 = a3;
  v16 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100936128();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936748();
  sub_100013814(v7, &qword_100CBA418);
  return (*(v9 + 8))(v11, v8);
}

id sub_100025CF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v24 = a7;
  v11 = sub_1009364F8();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100936528();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    aBlock[4] = v23;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = v24;
    v20 = _Block_copy(aBlock);
    swift_errorRetain();
    v21 = a2;
    sub_1000254AC(a3);
    sub_100936508();
    v27 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v20);

    (*(v26 + 8))(v13, v11);
    (*(v14 + 8))(v16, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002603C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026084()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000260C4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100026144;
    v2[3] = &unk_100BD7E40;
    v2[4] = a1;
    sub_100018E48(@"SELECT ROWID, guid, alternate_guid, account_guid, from_identifier, message_data, data, protobuf_data, destinations, data_to_encrypt, encrypt_payload, compress_payload, use_top_level_dict, wants_response, expiration_date, command, wants_delivery_status, delivery_status_context, message_uuid, priority, date, is_sent, identifier, forced_local, peer_response_identifier, expects_peer_response, wants_app_ack, non_waking, fire_and_forget, stored_size, duet_identifiers, bypass_duet, queue_one_identifier, enforce_remote_timeout, main_account_guid, pending_delete, local_destination_device_uuid, enqueued_date, message_type, skip_self, include_self, push_priority, non_cloud_waking, live_delivery, require_bluetooth, require_local_wifi, wants_progress, ignore_max_retry_count, wants_certified_delivery, original_timestamp, kt_uri_verification_map, wants_firewall_donation, send_mode, delivery_minimum_time_delay, delivery_minimum_time, send_reason FROM outgoing_message WHERE queue_one_identifier = ? ORDER BY ROWID ASC;", v2, a2);
  }
}

uint64_t sub_100026144(uint64_t a1, uint64_t a2)
{
  CSDBSqliteBindTextFromCFString();
  v3 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v3);
  if (Count >= 1)
  {
    v5 = 0;
    v6 = Count & 0x7FFFFFFF;
    do
    {
      CFArrayGetValueAtIndex(v3, v5);
      CSDBRecordStoreRemoveRecord();
      ++v5;
    }

    while (v6 != v5);
  }

  CFRelease(v3);
  CSDBRecordSaveStore();

  return _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

uint64_t sub_100026ADC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026B1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100706B30(&qword_100CB2AA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100936038();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100026CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100706B30(&qword_100CB2AA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100936038();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100026E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100706B30(&qword_100CB2AA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100936038();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_100026F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100706B30(&qword_100CB2AA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100936038();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000270A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = a1 + *(a3 + 28);
    v11 = *(v10 + 8);
    v12 = *v10 & 0x7FFFFFFF;
    if ((v11 & 0xF000000000000007) != 0)
    {
      return (v12 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100936038();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 56);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000271CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    v11 = (a1 + *(a4 + 28));
    *v11 = (a2 - 1);
    v11[1] = 1;
  }

  else
  {
    v12 = sub_100936038();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 56);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1000272F8()
{
  v1 = sub_100706B30(&qword_100CB2DB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002738C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000273C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000273FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10002745C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100027468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 4);
    if (v4 > 3)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002750C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 4) = -a2;
  }

  else
  {
    v7 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000275AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 4);
    if (v4 > 3)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1009360A8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000276C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 4) = -a2;
  }

  else
  {
    v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1009360A8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000277E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1009360A8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000278A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_1009360A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100027944()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000279D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027A10()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100027A58()
{
  v1 = (type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[8]);

  v6 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v7 = *(v6 + 24);
  v8 = sub_100936038();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027B80()
{
  v1 = (type metadata accessor for IDSGroupEncryptionPublicIdentity(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1007156D8(*(v0 + 24), *(v0 + 32));
  v5 = (v0 + v3);

  v6 = v1[8];
  v7 = sub_100936038();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100027CA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100027CE8()
{
  v1 = *(sub_100706B30(&qword_100CB36B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (((v4 + v3) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;

  v7 = v0 + v3;
  v8 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = (v7 + *(v8 + 24));

    v11 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v23 = v4;
    v12 = *(v11 + 24);
    v13 = sub_100936038();
    v14 = v10 + v12;
    v4 = v23;
    (*(*(v13 - 8) + 8))(v14, v13);
    v15 = *(v10 + *(v11 + 28));
    v6 = (v2 + v5 + 8) & ~v2;
  }

  if (!v9(v0 + v6, 1, v8))
  {

    v16 = (v0 + v6 + *(v8 + 24));

    v17 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v18 = v6;
    v19 = *(v17 + 24);
    v20 = sub_100936038();
    v21 = v16 + v19;
    v6 = v18;
    (*(*(v20 - 8) + 8))(v21, v20);
  }

  return _swift_deallocObject(v0, ((v4 + v6) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100027F68()
{
  v1 = *(sub_100706B30(&qword_100CB36B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v2 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v6 = v0 + v3;
  v7 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {

    v19 = v4;
    v9 = (v6 + *(v7 + 24));

    v10 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v18 = *(v10 + 24);
    v11 = sub_100936038();
    (*(*(v11 - 8) + 8))(v9 + v18, v11);
    v12 = *(v9 + *(v10 + 28));
    v4 = v19;
  }

  if (!v8(v0 + v20, 1, v7))
  {

    v13 = (v0 + v20 + *(v7 + 24));

    v14 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v15 = *(v14 + 24);
    v16 = sub_100936038();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  return _swift_deallocObject(v0, ((((v4 + v20) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000281F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1009360A8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100936038();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000282FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1009360A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100936038();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100028404()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002843C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002848C()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1000284F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028530()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028568()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000285E0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100028648()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000286A0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000286EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100936038();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000287B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100936038();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100028870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SenderKeyInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100028940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SenderKeyInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100028A08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}