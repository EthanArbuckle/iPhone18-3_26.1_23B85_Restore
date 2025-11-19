void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t _MTRValidateUserInfo(void *a1)
{
  v1 = [a1 objectForKey:@"HMDXPCConnectionClientIdentifierKey"];
  v2 = [v1 isEqualToString:@"com.apple.Home.HomeUIService"];

  return v2;
}

void sub_25832117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *OUTLINED_FUNCTION_3_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = result[4];
  v4 = result[5];
  v5 = result[6];
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

BOOL MTRPluginCheckProtocolContainsSelector(void *a1, const char *a2)
{
  v3 = a1;
  v4 = 1;
  if (!protocol_getMethodDescription(v3, a2, 0, 1).name)
  {
    v4 = protocol_getMethodDescription(v3, a2, 1, 1).name != 0;
  }

  return v4;
}

id MTRPluginHMFMessageDescription(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 identifier];
  v4 = [v2 destination];
  v5 = [v4 shortDescription];
  v6 = [v1 stringWithFormat:@"<HMFMessage: %p ID: %@ Dest: %@>", v2, v3, v5];

  return v6;
}

void MTRAssociateControllerWithHomeUUID(void *a1, id value)
{
  if (a1)
  {
    if (value)
    {
      objc_setAssociatedObject(a1, "homeUUID", value, 0x301);
    }
  }
}

id MTRGetAssociatedHomeUUIDWithController(void *a1)
{
  if (a1)
  {
    a1 = objc_getAssociatedObject(a1, "homeUUID");
    v1 = vars8;
  }

  return a1;
}

uint64_t MTRPluginForceRemoteControl()
{
  if (MTRPluginForceRemoteControl_predicateNAME != -1)
  {
    MTRPluginForceRemoteControl_cold_1();
  }

  return MTRPluginForceRemoteControl_remoteMode;
}

void __MTRPluginForceRemoteControl_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"MatterPluginAlwaysEnableIsInRemoteMode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 objectForKey:@"MatterPluginAlwaysEnableIsInRemoteMode"];

    if (v3 && [v3 BOOLValue])
    {
      MTRPluginForceRemoteControl_remoteMode = 1;
      goto LABEL_8;
    }
  }

  else
  {

    v3 = 0;
  }

  MTRPluginForceRemoteControl_remoteMode = 0;
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "MatterPlugin is NOT overridden to be in remote mode", v5, 2u);
  }

LABEL_8:
}

uint64_t MTRPluginMaxActiveClientSessions()
{
  if (MTRPluginMaxActiveClientSessions_predicateNAME != -1)
  {
    MTRPluginMaxActiveClientSessions_cold_1();
  }

  return MTRPluginMaxActiveClientSessions_maxAllowedSessions;
}

void __MTRPluginMaxActiveClientSessions_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"MTRPluginMaxActiveClientSessions"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [v2 objectForKey:@"MTRPluginMaxActiveClientSessions"];

    if (v3 && [v3 unsignedIntegerValue])
    {
      MTRPluginMaxActiveClientSessions_maxAllowedSessions = [v3 unsignedIntegerValue];
      v4 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = @"MTRPluginMaxActiveClientSessions";
        v11 = 2048;
        v12 = MTRPluginMaxActiveClientSessions_maxAllowedSessions;
        v5 = "%@ overridden to: %lu";
        v6 = v4;
LABEL_9:
        _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, 0x16u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {

    v3 = 0;
  }

  MTRPluginMaxActiveClientSessions_maxAllowedSessions = 125;
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = @"MTRPluginMaxActiveClientSessions";
    v11 = 2048;
    v12 = MTRPluginMaxActiveClientSessions_maxAllowedSessions;
    v5 = "%@ set to default value of: %lu";
    v6 = v7;
    goto LABEL_9;
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t MTRPluginEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 | v4) == 0;
  if (v3 && v4)
  {
    v6 = [v3 isEqual:v4];
  }

  return v6;
}

NSObject *MTRBufferedExecutionBlock(NSObject *a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    dispatch_source_cancel(a1);
  }

  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
  v10 = a4 * 1000000000.0;
  v11 = dispatch_time(0, v10);
  dispatch_source_set_timer(v9, v11, 0xFFFFFFFFFFFFFFFFLL, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __MTRBufferedExecutionBlock_block_invoke;
  v17[3] = &unk_2798940C8;
  v12 = v9;
  v18 = v12;
  v19 = v8;
  v13 = v8;
  dispatch_source_set_event_handler(v12, v17);
  dispatch_resume(v12);
  v14 = v19;
  v15 = v12;

  return v12;
}

uint64_t __MTRBufferedExecutionBlock_block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void MTRUpdateRunningModeForController(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 devices];
  v8 = [v7 count];

  if (sMTRPluginPairingStatusChangedSource)
  {
    v9 = matterPluginLog_default;
    if (!os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *v16 = 138412802;
    *&v16[4] = v6;
    *&v16[12] = 2112;
    *&v16[14] = v5;
    *&v16[22] = 2048;
    v17 = v8;
    v10 = "%@ Setting running mode for controller: %@ to local (forced pairing mode), unsuspending controller (devices count %lu)";
    goto LABEL_4;
  }

  switch(a1)
  {
    case 0:
      v9 = matterPluginLog_default;
      v14 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v14)
        {
          *v16 = 138412802;
          *&v16[4] = v6;
          *&v16[12] = 2112;
          *&v16[14] = v5;
          *&v16[22] = 2048;
          v17 = v8;
          v10 = "%@ Setting running mode for controller: %@ to unknown, resuming controller because we have active devices (devices count %lu)";
          goto LABEL_4;
        }

LABEL_5:
        if ([v5 isSuspended])
        {
          [v5 resume];
        }

        goto LABEL_7;
      }

      if (!v14)
      {
        goto LABEL_26;
      }

      *v16 = 138412802;
      *&v16[4] = v6;
      *&v16[12] = 2112;
      *&v16[14] = v5;
      *&v16[22] = 2048;
      v17 = 0;
      v13 = "%@ Setting running mode for controller: %@ to unknown, but no active devices, suspending controller (devices count %lu)";
      goto LABEL_25;
    case 1:
      v9 = matterPluginLog_default;
      if (!os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v16 = 138412802;
      *&v16[4] = v6;
      *&v16[12] = 2112;
      *&v16[14] = v5;
      *&v16[22] = 2048;
      v17 = v8;
      v13 = "%@ Setting running mode for controller: %@ to remote, suspending controller (devices count %lu)";
LABEL_25:
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, v13, v16, 0x20u);
LABEL_26:
      if (([v5 isSuspended] & 1) == 0)
      {
        [v5 suspend];
      }

      goto LABEL_7;
    case 2:
      v9 = matterPluginLog_default;
      v12 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v12)
        {
          *v16 = 138412802;
          *&v16[4] = v6;
          *&v16[12] = 2112;
          *&v16[14] = v5;
          *&v16[22] = 2048;
          v17 = v8;
          v10 = "%@ Setting running mode for controller: %@ to local, resuming controller because we have active devices (devices count %lu)";
LABEL_4:
          _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, v10, v16, 0x20u);
          goto LABEL_5;
        }

        goto LABEL_5;
      }

      if (!v12)
      {
        goto LABEL_26;
      }

      *v16 = 138412802;
      *&v16[4] = v6;
      *&v16[12] = 2112;
      *&v16[14] = v5;
      *&v16[22] = 2048;
      v17 = 0;
      v13 = "%@ Setting running mode for controller: %@ to local, but no active devices, suspending controller (devices count %lu)";
      goto LABEL_25;
  }

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    MTRUpdateRunningModeForController_cold_1(a1, v15);
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t MTRGetClientTypeForXPCConnection(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 auditToken];
  }

  memset(&atoken, 0, sizeof(atoken));
  v3 = audit_token_to_pid(&atoken);
  v4 = getpid();
  v5 = *MEMORY[0x277CBECE8];
  if (v3 == v4)
  {
    v6 = SecTaskCreateFromSelf(v5);
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
    v6 = SecTaskCreateWithAuditToken(v5, &atoken);
  }

  v7 = v6;
  if (v6)
  {
    v8 = SecTaskCopyValueForEntitlement(v6, @"application-identifier", 0);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  memset(&atoken, 0, sizeof(atoken));
  v9 = SecTaskCreateWithAuditToken(0, &atoken);
  if (v9)
  {
    v10 = v9;
    v11 = SecTaskCopySigningIdentifier(v9, 0);
    CFRelease(v10);
    if (v11)
    {
      v12 = v11;

      v8 = v12;
    }
  }

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    atoken.val[0] = 138412546;
    *&atoken.val[1] = v8;
    LOWORD(atoken.val[3]) = 2112;
    *(&atoken.val[3] + 2) = v2;
    _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "Found Bundle Identifier %@ for XPC connection %@", &atoken, 0x16u);
  }

  if ([v8 isEqualToString:{@"com.apple.homed", 0, 0}])
  {
    v14 = 1;
  }

  else if (([v8 isEqualToString:@"com.apple.Home"] & 1) == 0 && (!objc_msgSend(v8, "hasPrefix:", @"com.apple.NanoHome") || objc_msgSend(v8, "rangeOfString:", @"Widget") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v8, "rangeOfString:", @"Carousel") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v8, "rangeOfString:", @"Bulletin") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v8, "rangeOfString:", @"Intent") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v8, "rangeOfString:", @"Notification") == 0x7FFFFFFFFFFFFFFFLL))
  {
    if ([v8 isEqualToString:@"com.apple.springboard"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.PineBoard"))
    {
      v14 = 3;
    }

    else if ([v8 isEqualToString:@"com.apple.HomeAppIntentsExtension"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.Siri") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"assistant_service"))
    {
      v14 = 4;
    }

    else if ([v8 isEqualToString:@"com.apple.Home.HomeWidget.Interactive"])
    {
      v14 = 9;
    }

    else if ([v8 hasPrefix:@"com.apple"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"apple."))
    {
      v14 = 6;
    }

    else
    {
      if (v2)
      {
        [v2 auditToken];
      }

      else
      {
        memset(&atoken, 0, sizeof(atoken));
      }

      if (MTRPluginIsPlatformBinaryFromAuditToken(&atoken))
      {
        v14 = 5;
      }

      else if (v8)
      {
        v14 = 7;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 2;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t MTRPluginIsPlatformBinaryFromAuditToken(_OWORD *a1)
{
  v4 = 0;
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  audit_token_to_pid(&v3);
  if (csops_audittoken())
  {
    return 0;
  }

  else
  {
    return (v4 >> 26) & 1;
  }
}

__CFString *MTRPluginHomeRunnningModeAsString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid value>";
  }

  else
  {
    return off_2798940E8[a1];
  }
}

void MTRSwizzleMethods(objc_class *a1, objc_class *a2, SEL name, const char *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  InstanceMethod = class_getInstanceMethod(a1, name);
  v9 = class_getInstanceMethod(a2, a4);
  Implementation = method_getImplementation(InstanceMethod);
  v11 = method_getImplementation(v9);
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  class_replaceMethod(a1, a4, Implementation, TypeEncoding);
  v13 = method_getTypeEncoding(v9);
  class_replaceMethod(a2, name, v11, v13);
  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = NSStringFromSelector(name);
    v17 = NSStringFromSelector(a4);
    v19 = 138413058;
    v20 = a1;
    v21 = 2112;
    v22 = a2;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "Swizzing method for orignal class %@, target class %@, original selector: %@, swizzledSelector: %@", &v19, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void MTRSetPotentialPairing(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "Starting potential pairing: %@   home: %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __MTRSetPotentialPairing_block_invoke;
  v14[3] = &unk_279893AA0;
  v6 = v3;
  v15 = v6;
  v7 = MEMORY[0x259C7D980](v14);
  v8 = sMTRPluginPairingStatusChangedSource;
  if (a2)
  {
    v9 = MTRBufferedExecutionBlock(sMTRPluginPairingStatusChangedSource, MEMORY[0x277D85CD0], v7, 150.0);
    v10 = sMTRPluginPairingStatusChangedSource;
    sMTRPluginPairingStatusChangedSource = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"MTRPluginPairingPotentiallyStartingNotification" object:v6];
  }

  else
  {
    if (sMTRPluginPairingStatusChangedSource)
    {
      dispatch_source_cancel(sMTRPluginPairingStatusChangedSource);
      v8 = sMTRPluginPairingStatusChangedSource;
    }

    v12 = MTRBufferedExecutionBlock(v8, MEMORY[0x277D85CD0], v7, 150.0);
    v11 = sMTRPluginPairingStatusChangedSource;
    sMTRPluginPairingStatusChangedSource = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __MTRSetPotentialPairing_block_invoke(uint64_t a1)
{
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "Done potential pairing", v5, 2u);
  }

  v3 = sMTRPluginPairingStatusChangedSource;
  sMTRPluginPairingStatusChangedSource = 0;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"MTRPluginPairingPotentiallyCompletedNotification" object:*(a1 + 32)];
}

uint64_t MTRPluginPBMCommandPathReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTRPluginPBMClusterPath);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMClusterPathReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMClusterPathReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___MTRPluginPBMClusterPath__endpointID;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___MTRPluginPBMClusterPath__endpointID;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___MTRPluginPBMClusterPath__clusterID;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___MTRPluginPBMClusterPath__clusterID;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMURLReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMEventPathReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTRPluginPBMClusterPath);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMClusterPathReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeReadFrom(uint64_t a1, void *a2)
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

uint64_t MTRPluginPBMVariableValueDictionaryReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = objc_alloc_init(MTRPluginPBMVariableKeyValuePair);
        [a1 addPair:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMVariableKeyValuePairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMAttributePathReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTRPluginPBMClusterPath);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMClusterPathReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id attributeValueFromExpectedAttributeReport(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = *MEMORY[0x277CD50B8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 objectForKeyedSubscript:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 cluster];
  if ([v9 unsignedIntValue] == a2)
  {
    v10 = [v8 attribute];
    v11 = [v10 unsignedIntValue];

    if (v11 != a3)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v12 = *MEMORY[0x277CD50D8];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 objectForKeyedSubscript:v12];
    }

    else
    {
      v9 = 0;
    }

    v14 = [MTRPluginMetric numberValueFromDataValueDictionary:v9];
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

id commandValueFromCommandFields(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3)
  {
    v4 = *MEMORY[0x277CD5180];
    v34 = *MEMORY[0x277CD5188];
    v5 = [v3 objectForKeyedSubscript:?];
    LODWORD(v4) = [v4 isEqual:v5];

    if (v4)
    {
      v6 = *MEMORY[0x277CD51A0];
      v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v3 objectForKeyedSubscript:v6];

        if (v8)
        {
          v31 = v6;
          v32 = v3;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (!v10)
          {
            goto LABEL_32;
          }

          v11 = v10;
          v12 = *v38;
          v13 = *MEMORY[0x277CD50D0];
          v36 = *MEMORY[0x277CD50D8];
          v33 = *MEMORY[0x277CD5198];
          v14 = 0x277CCA000uLL;
          while (1)
          {
            v15 = 0;
            do
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v16 = *(*(&v37 + 1) + 8 * v15);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = v16;
              }

              else
              {
                v17 = 0;
              }

              v18 = v17;
              if (v18)
              {
                v19 = v18;
                v20 = [v18 objectForKeyedSubscript:v13];
                v21 = *(v14 + 2992);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = [v19 objectForKeyedSubscript:v13];

                  if (v22 && ![v22 unsignedIntValue])
                  {
                    v23 = [v19 objectForKeyedSubscript:v36];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = [v19 objectForKeyedSubscript:v36];

                      if (v20)
                      {
                        v24 = [v20 objectForKeyedSubscript:v34];
                        v35 = [v24 isEqual:v33];

                        if (v35)
                        {
                          v29 = [v20 objectForKeyedSubscript:v31];
                          objc_opt_class();
                          isKindOfClass = objc_opt_isKindOfClass();
                          if (isKindOfClass)
                          {
                            v26 = [v20 objectForKeyedSubscript:v31];
                          }

                          else
                          {
                            v26 = 0;
                          }

                          v3 = v32;

                          goto LABEL_35;
                        }
                      }
                    }

                    else
                    {

                      v20 = 0;
                    }

                    v14 = 0x277CCA000;
LABEL_25:
                  }

                  goto LABEL_27;
                }

                v22 = 0;
                goto LABEL_25;
              }

LABEL_27:
              ++v15;
            }

            while (v11 != v15);
            v25 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
            v11 = v25;
            if (!v25)
            {
LABEL_32:

              v26 = 0;
              v3 = v32;
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
      }
    }
  }

  v26 = 0;
LABEL_35:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void sub_258335408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258336528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258336804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2048;
  return result;
}

void OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = v3;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
}

void OUTLINED_FUNCTION_3_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x20u);
}

uint64_t MTRPluginPBMHeaderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v21 = objc_alloc_init(MTRPluginPBMUUID);
          v22 = 48;
        }

        else
        {
          if (v13 != 8)
          {
            goto LABEL_79;
          }

          v21 = objc_alloc_init(MTRPluginPBMUUID);
          v22 = 8;
        }
      }

      else
      {
        if (v13 == 5)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v50[0] & 0x7F) << v35;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_88;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_88:
          v47 = 16;
          goto LABEL_101;
        }

        if (v13 != 6)
        {
          goto LABEL_79;
        }

        v21 = objc_alloc_init(MTRPluginPBMUUID);
        v22 = 24;
      }

      objc_storeStrong((a1 + v22), v21);
      v50[0] = 0;
      v50[1] = 0;
      if (!PBReaderPlaceMark() || !MTRPluginPBMUUIDReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_102:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          LOBYTE(v50[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v50[0] & 0x7F) << v41;
          if ((v50[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_92;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v43;
        }

LABEL_92:
        v47 = 36;
        goto LABEL_101;
      }

      if (v13 == 4)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 60) |= 2u;
        while (1)
        {
          LOBYTE(v50[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v50[0] & 0x7F) << v23;
          if ((v50[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v25;
        }

LABEL_100:
        v47 = 32;
        goto LABEL_101;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          LOBYTE(v50[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v50[0] & 0x7F) << v29;
          if ((v50[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_84;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_84:
        v47 = 56;
        goto LABEL_101;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          LOBYTE(v50[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v50[0] & 0x7F) << v14;
          if ((v50[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_96:
        v47 = 40;
LABEL_101:
        *(a1 + v47) = v20;
        goto LABEL_102;
      }
    }

LABEL_79:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_102;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDateReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        *(a1 + 16) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMHeaderMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = objc_alloc_init(MTRPluginPBMHeader);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMUUIDReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMVariableValueListReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = objc_alloc_init(MTRPluginPBMVariableValue);
        [a1 addValue:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMVariableValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v37) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v37 & 0x7F) << v5;
      if ((v37 & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_26;
      case 2u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 136) |= 2u;
        while (1)
        {
          LOBYTE(v37) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v37 & 0x7F) << v27;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v29;
        }

LABEL_85:
        v34 = 16;
        goto LABEL_86;
      case 3u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 136) |= 4u;
        while (1)
        {
          LOBYTE(v37) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v37 & 0x7F) << v18;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_81:
        v34 = 24;
LABEL_86:
        *(a1 + v34) = v24;
        goto LABEL_74;
      case 4u:
        *(a1 + 136) |= 1u;
        v37 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v37 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v37;
        goto LABEL_74;
      case 5u:
        v13 = PBReaderReadData();
        v14 = 64;
LABEL_26:
        v16 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_74;
      case 6u:
        v15 = objc_alloc_init(MTRPluginPBMUUID);
        objc_storeStrong((a1 + 128), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMUUIDReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 7u:
        v15 = objc_alloc_init(MTRPluginPBMDate);
        objc_storeStrong((a1 + 72), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMDateReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 8u:
        v15 = objc_alloc_init(MTRPluginPBMURL);
        objc_storeStrong((a1 + 120), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMURLReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 9u:
        v15 = objc_alloc_init(MTRPluginPBMVariableValueList);
        v17 = 32;
        goto LABEL_71;
      case 0xAu:
        v15 = objc_alloc_init(MTRPluginPBMVariableValueList);
        v17 = 104;
LABEL_71:
        objc_storeStrong((a1 + v17), v15);
        v37 = 0;
        v38 = 0;
        if (PBReaderPlaceMark() && MTRPluginPBMVariableValueListReadFrom(v15, a2))
        {
          goto LABEL_73;
        }

        goto LABEL_90;
      case 0xBu:
        v15 = objc_alloc_init(MTRPluginPBMVariableValueDictionary);
        objc_storeStrong((a1 + 80), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueDictionaryReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 0xCu:
        v15 = objc_alloc_init(MTRPluginPBMError);
        objc_storeStrong((a1 + 88), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMErrorReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 0xDu:
        v15 = objc_alloc_init(MTRPluginPBMClusterPath);
        objc_storeStrong((a1 + 48), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMClusterPathReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 0xEu:
        v15 = objc_alloc_init(MTRPluginPBMAttributePath);
        objc_storeStrong((a1 + 40), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMAttributePathReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 0xFu:
        v15 = objc_alloc_init(MTRPluginPBMCommandPath);
        objc_storeStrong((a1 + 56), v15);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMCommandPathReadFrom(v15, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_73;
      case 0x10u:
        v15 = objc_alloc_init(MTRPluginPBMEventPath);
        objc_storeStrong((a1 + 96), v15);
        v37 = 0;
        v38 = 0;
        if (PBReaderPlaceMark() && MTRPluginPBMEventPathReadFrom(v15, a2))
        {
LABEL_73:
          PBReaderRecallMark();

LABEL_74:
          v33 = [a2 position];
          if (v33 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_90:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_74;
    }
  }
}

uint64_t MTRPluginPBMDeviceNodeDownloadDiagnosticLogReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_45:
          *(a1 + 24) = v23;
          goto LABEL_48;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 1u;
          v27 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v27;
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MTRPluginPBMHeader);
          objc_storeStrong((a1 + 16), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
          objc_storeStrong((a1 + 32), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

LABEL_32:
          PBReaderRecallMark();

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeWriteAttributeMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(MTRPluginPBMVariableValue);
            objc_storeStrong((a1 + 48), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            goto LABEL_46;
          case 5:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v31) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v31 & 0x7F) << v22;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_63:
            v28 = 8;
            goto LABEL_64;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v31) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v31 & 0x7F) << v15;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_59:
            v28 = 16;
LABEL_64:
            *(a1 + v28) = v21;
            goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(MTRPluginPBMHeader);
            objc_storeStrong((a1 + 32), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_46;
          case 2:
            v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
            objc_storeStrong((a1 + 40), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_46;
          case 3:
            v14 = objc_alloc_init(MTRPluginPBMAttributePath);
            objc_storeStrong((a1 + 24), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MTRPluginPBMAttributePathReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceControllerMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTRPluginPBMHeader);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(MTRPluginPBMVariableValue);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeInvokeCommmandMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v37 & 0x7F) << v28;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v30;
            }

LABEL_75:
            v34 = 24;
            goto LABEL_84;
          }

          if (v13 == 8)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v37 & 0x7F) << v22;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_83:
            v34 = 16;
            goto LABEL_84;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(MTRPluginPBMVariableValueList);
            objc_storeStrong((a1 + 48), v14);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueListReadFrom(v14, a2))
            {
LABEL_87:

              return 0;
            }

            goto LABEL_60;
          }

          if (v13 == 6)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v37 & 0x7F) << v15;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_79:
            v34 = 8;
LABEL_84:
            *(a1 + v34) = v21;
            goto LABEL_85;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(MTRPluginPBMCommandPath);
          objc_storeStrong((a1 + 40), v14);
          v37 = 0;
          v38 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMCommandPathReadFrom(v14, a2))
          {
            goto LABEL_87;
          }

          goto LABEL_60;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(MTRPluginPBMVariableValue);
          objc_storeStrong((a1 + 32), v14);
          v37 = 0;
          v38 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v14, a2))
          {
            goto LABEL_87;
          }

          goto LABEL_60;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MTRPluginPBMHeader);
          objc_storeStrong((a1 + 56), v14);
          v37 = 0;
          v38 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
          {
            goto LABEL_87;
          }

          goto LABEL_60;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
          objc_storeStrong((a1 + 64), v14);
          v37 = 0;
          v38 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
          {
            goto LABEL_87;
          }

LABEL_60:
          PBReaderRecallMark();

          goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMCommandWithRequiredResponsesReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = objc_alloc_init(MTRPluginPBMCommandWithRequiredResponse);
        [a1 addCommandWithRequiredResponseValue:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMCommandWithRequiredResponseReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeReadAttributeMessageReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(MTRPluginPBMAttributePath);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMAttributePathReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(MTRPluginPBMReadParams);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMReadParamsReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MTRPluginPBMHeader);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMVariableValueResponseMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(MTRPluginPBMVariableValue);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_43;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_43:
          *(a1 + 32) = v21;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MTRPluginPBMHeader);
          objc_storeStrong((a1 + 16), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MTRPluginPBMError);
          objc_storeStrong((a1 + 8), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !MTRPluginPBMErrorReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMReadParamsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = objc_alloc_init(MTRPluginPBMVariableValue);
        objc_storeStrong((a1 + 8), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v27, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31[0] & 0x7F) << v21;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_44:
          v28 = 16;
          goto LABEL_47;
        }

        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_46;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_46:
          v28 = 17;
LABEL_47:
          *(a1 + v28) = v20;
          goto LABEL_48;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_48:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMVariableKeyValuePairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(MTRPluginPBMVariableValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeMessageReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(MTRPluginPBMVariableValue);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(MTRPluginPBMHeader);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
    objc_storeStrong(a1 + 2, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMErrorReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeInvokeBatchCommmandMessageReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(MTRPluginPBMCommandWithRequiredResponses);
        [a1 addCommandWithRequiredResponsesValue:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMCommandWithRequiredResponsesReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(MTRPluginPBMHeader);
        objc_storeStrong(a1 + 2, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
    objc_storeStrong(a1 + 3, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMCommandWithRequiredResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(MTRPluginPBMVariableValue);
        v15 = 8;
LABEL_25:
        objc_storeStrong((a1 + v15), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMVariableValueReadFrom(v14, a2))
        {
LABEL_31:

          return 0;
        }

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(MTRPluginPBMCommandPath);
        objc_storeStrong((a1 + 16), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMCommandPathReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

LABEL_27:
        PBReaderRecallMark();

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(MTRPluginPBMVariableValue);
    v15 = 24;
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTRPluginPBMDeviceNodeReadMultipleAttributesMessageReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(MTRPluginPBMAttributePath);
        [a1 addAttributePaths:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMAttributePathReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(MTRPluginPBMHeader);
        objc_storeStrong(a1 + 2, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !MTRPluginPBMHeaderReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(MTRPluginPBMDeviceNode);
    objc_storeStrong(a1 + 3, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !MTRPluginPBMDeviceNodeReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

void matterPluginLogInitialize()
{
  if (matterPluginLogInitialize_onceToken != -1)
  {
    matterPluginLogInitialize_cold_1();
  }
}

uint64_t __matterPluginLogInitialize_block_invoke()
{
  matterPluginLog_default = os_log_create("com.apple.matter.plugin", "Default");

  return MEMORY[0x2821F96F8]();
}

void sub_258351ECC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 responseHandler];

    if (v4)
    {
      v5 = [v2 responseHandler];
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1005 userInfo:0];
      (v5)[2](v5, v6, 0);
    }

    objc_end_catch();
    JUMPOUT(0x258351E88);
  }

  _Unwind_Resume(exception_object);
}

id clientConnectionForMessage(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v1 = [v14 homeIdentifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = +[MTRPluginServer sharedInstance];
  v3 = [v2 clientConnections];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 homeUUID];
        if ([v8 isEqual:v1])
        {
          v9 = [v7 sessionID];
          v10 = [v14 sessionIdentifier];
          v11 = [v9 isEqual:v10];

          if (v11)
          {
            v4 = v7;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_2583524E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 responseHandler];

    if (v4)
    {
      v5 = [v2 responseHandler];
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1005 userInfo:0];
      (v5)[2](v5, v6, 0);
    }

    objc_end_catch();
    JUMPOUT(0x2583524A4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2583531E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MTRUpdateRunningModeForController_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "Unknown running mode: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}