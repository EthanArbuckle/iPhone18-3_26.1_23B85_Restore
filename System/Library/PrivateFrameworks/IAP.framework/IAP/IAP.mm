uint64_t IAPLocationActivate()
{
  pthread_mutex_lock(&__isLocationActivatedLock);
  if ((__isLocationActivated & 1) == 0)
  {
    __isLocationActivated = 1;
  }

  pthread_mutex_unlock(&__isLocationActivatedLock);
  ClientIDForIAPD = IAPAppGetClientIDForIAPD();
  if (ClientIDForIAPD)
  {
    v1 = ClientIDForIAPD;
    v2 = RetainConnectionToIAPDaemon();
    if (v2)
    {
      v3 = v2;
      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "clientID", v1);
      xpc_dictionary_set_string(v4, "requestType", "IAPLocationActivate");
      xpc_connection_send_message(v3, v4);
      xpc_release(v4);
      xpc_release(v3);
    }

    else
    {
      NSLog(&cfstr_LocationSkipIa.isa);
    }
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_0.isa);
  }

  return 1;
}

uint64_t IAPAppGetClientIDForIAPD()
{
  pthread_mutex_lock(&__eaClientPortLock);
  v0 = __eaClientIDiapd;
  pthread_mutex_unlock(&__eaClientPortLock);
  return v0;
}

uint64_t IAPLocationDeactivate()
{
  pthread_mutex_lock(&__isLocationActivatedLock);
  if (__isLocationActivated == 1)
  {
    __isLocationActivated = 0;
  }

  pthread_mutex_unlock(&__isLocationActivatedLock);
  ClientIDForIAPD = IAPAppGetClientIDForIAPD();
  if (ClientIDForIAPD)
  {
    v1 = ClientIDForIAPD;
    v2 = RetainConnectionToIAPDaemon();
    if (v2)
    {
      v3 = v2;
      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "clientID", v1);
      xpc_dictionary_set_string(v4, "requestType", "IAPLocationDeactivate");
      v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
      if (v5)
      {
        v6 = v5;
        v7 = MEMORY[0x259C17370]();
        if (v6 == MEMORY[0x277D863F8] && v7 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_LocationIaploc.isa);
        }

        else if (v6 == MEMORY[0x277D863F0] && v7 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_LocationIaploc_0.isa);
        }

        else if (v7 == MEMORY[0x277D86468])
        {
          if (!xpc_dictionary_get_BOOL(v6, "result"))
          {
            NSLog(&cfstr_LocationErrorS.isa, "IAPLocationDeactivate");
          }
        }

        else if (v7 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationDeactivate", 122);
        }

        else
        {
          NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationDeactivate", 126, v7);
        }

        xpc_release(v6);
      }

      else
      {
        NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationDeactivate", 132);
      }

      xpc_release(v4);
      xpc_release(v3);
    }

    else
    {
      NSLog(&cfstr_LocationSkipIa_1.isa);
    }
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_2.isa);
  }

  return 1;
}

_xpc_connection_s *IAPAppConnectedAccessories()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, "requestType", "IAPAppConnectedAccessories");
  NSLog(&cfstr_Iapappconnecte.isa, __eaClientHasCheckedForConnectedAccessories, 1);
  __eaClientHasCheckedForConnectedAccessories = 1;
  v1 = IAPDHasLaunched();
  v2 = IAP2DHasLaunched();
  NSLog(&cfstr_Iapappconnecte_0.isa, v1, v2);
  if (!IAPDHasLaunched())
  {
LABEL_8:
    v3 = 0;
    goto LABEL_23;
  }

  v3 = RetainConnectionToIAPDaemon();
  xpc_dictionary_set_uint64(v0, "eaClientID", __eaClientIDiapd);
  if (v3)
  {
    v4 = _IAPSendXPCMessageWithTimeout(v3, v0, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v4)
    {
      v5 = v4;
      xpc_release(v3);
      v6 = MEMORY[0x259C17370](v5);
      if (v5 == MEMORY[0x277D863F8] && v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppConnectedAccessories", 637);
      }

      else if (v5 == MEMORY[0x277D863F0] && v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppConnectedAccessories", 641);
      }

      else if (v6 == MEMORY[0x277D86468])
      {
        length = 0;
        data = xpc_dictionary_get_data(v5, "plistData", &length);
        v3 = 0;
        if (!data || !length)
        {
          goto LABEL_22;
        }

        v8 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
        if (v8)
        {
          v20 = 0;
          v3 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v20];
          if (!v3)
          {
            NSLog(&cfstr_ErrorReceivedB.isa, [v20 description]);
          }

          goto LABEL_22;
        }
      }

      else if (v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppConnectedAccessories", 668);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppConnectedAccessories", 672, v6);
      }

      v3 = 0;
LABEL_22:
      xpc_release(v5);
      goto LABEL_23;
    }

    NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppConnectedAccessories", 628);
    xpc_release(v3);
    goto LABEL_8;
  }

LABEL_23:
  if (IAP2DHasLaunched())
  {
    v9 = RetainConnectionToIAP2Daemon();
    xpc_dictionary_set_uint64(v0, "eaClientID", __eaClientIDiap2d);
    if (v9)
    {
      v10 = _IAPSendXPCMessageWithTimeout(v9, v0, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (v10)
      {
        v11 = v10;
        xpc_release(v9);
        v12 = MEMORY[0x259C17370](v11);
        if (v11 == MEMORY[0x277D863F8] && v12 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppConnectedAccessories", 699);
        }

        else if (v11 == MEMORY[0x277D863F0] && v12 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppConnectedAccessories", 703);
        }

        else if (v12 == MEMORY[0x277D86468])
        {
          length = 0;
          v13 = xpc_dictionary_get_data(v11, "plistData", &length);
          if (v13)
          {
            if (length)
            {
              v14 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:?];
              if (v14)
              {
                v20 = 0;
                v15 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v20];
                if (v15)
                {
                  v16 = v15;
                  if (!v3)
                  {
                    v3 = [MEMORY[0x277CBEB18] array];
                  }

                  [(_xpc_connection_s *)v3 addObjectsFromArray:v16];
                }

                else
                {
                  NSLog(&cfstr_ErrorReceivedB_0.isa, [v20 description], v18, v19);
                }
              }
            }
          }
        }

        else if (v12 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppConnectedAccessories", 740, v19);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPAppConnectedAccessories", 744, v12);
        }
      }

      else
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppConnectedAccessories", 690);
        v11 = v9;
      }

      xpc_release(v11);
    }
  }

  xpc_release(v0);
  return v3;
}

BOOL IAPDHasLaunched()
{
  out_token = 0;
  state64 = 0;
  v0 = 0;
  if (!notify_register_check("com.apple.iapd.notify.availability", &out_token))
  {
    check = 0;
    notify_check(out_token, &check);
    if (check)
    {
      notify_get_state(out_token, &state64);
      v1 = IAPDHasLaunched::_oldIapdAvailableState;
      if (IAPDHasLaunched::_oldIapdAvailableState != state64)
      {
        NSLog(&cfstr_Iapdhaslaunche.isa, IAPDHasLaunched::_oldIapdAvailableState, state64);
        v1 = state64;
        IAPDHasLaunched::_oldIapdAvailableState = state64;
      }

      v0 = v1 != 0;
    }

    else
    {
      v0 = 0;
    }

    notify_cancel(out_token);
  }

  return v0;
}

BOOL IAP2DHasLaunched()
{
  out_token = 0;
  state64 = 0;
  v0 = 0;
  if (!notify_register_check("com.apple.iap2d.notify.availability", &out_token))
  {
    check = 0;
    notify_check(out_token, &check);
    if (check)
    {
      notify_get_state(out_token, &state64);
      v1 = IAP2DHasLaunched::_oldIap2dAvailableState;
      if (IAP2DHasLaunched::_oldIap2dAvailableState != state64)
      {
        NSLog(&cfstr_Iap2dhaslaunch.isa, IAP2DHasLaunched::_oldIap2dAvailableState, state64);
        v1 = state64;
        IAP2DHasLaunched::_oldIap2dAvailableState = state64;
      }

      v0 = v1 != 0;
    }

    else
    {
      v0 = 0;
    }

    notify_cancel(out_token);
  }

  return v0;
}

void *RetainConnectionToIAP2Daemon()
{
  if (!IAP2DHasLaunched())
  {
    return 0;
  }

  return RetainIAP2DaemonConnection();
}

void *RetainIAP2DaemonConnection(void)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAP2DaemonConnection = _GetIAP2DaemonConnection();
  v1 = IAP2DaemonConnection;
  if (IAP2DaemonConnection)
  {
    xpc_retain(IAP2DaemonConnection);
  }

  pthread_mutex_unlock(&__iapConnectionMutex);
  return v1;
}

uint64_t _IAPSendXPCMessageWithTimeout(_xpc_connection_s *a1, void *a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___IAPSendXPCMessageWithTimeout_block_invoke;
  v9[3] = &unk_279780D60;
  v9[4] = &v10;
  _IAPSendXPCMessageReplyWithTimeout(a1, a2, a3, global_queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_2546BC974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _GetIAP2DaemonConnection(void)
{
  if (__hasSandbox(nsIap2dServiceName))
  {
    hasEntitlement = 1;
  }

  else
  {
    hasEntitlement = __hasEntitlement(nsIap2dServiceName);
  }

  if (hasEntitlement && !__iap2d_connection)
  {
    if (IAP2DHasLaunched())
    {
      if (GetIAPConnectionQueue(void)::once != -1)
      {
        GetIAPConnectionQueue();
      }

      mach_service = xpc_connection_create_mach_service("com.apple.iap2d.xpc", __iAPConnectionQ, 0);
      __iap2d_connection = mach_service;
      if (mach_service)
      {
        xpc_connection_set_event_handler(mach_service, &__block_literal_global_217);
        xpc_connection_resume(__iap2d_connection);
      }

      else
      {
        NSLog(&cfstr_NoConnectionTo_0.isa);
      }
    }

    else
    {
      NSLog(&cfstr_IapdNotLaunche.isa);
    }
  }

  return __iap2d_connection;
}

uint64_t _IAPSendXPCMessageReplyWithTimeout(_xpc_connection_s *a1, void *a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  if (a5)
  {
    if (!a1)
    {
LABEL_25:
      syslog(3, "%s: connection does not match one of the existing ones!!!", "_IAPSendXPCMessageReplyWithTimeout");
LABEL_26:
      (*(a5 + 16))(a5, 0);
      return pthread_mutex_unlock(&__iapConnectionMutex);
    }
  }

  else
  {
    string = xpc_dictionary_get_string(a2, "requestType");
    v11 = "unknown";
    if (string)
    {
      v11 = string;
    }

    syslog(3, "%s: replyHandler not provided for '%s'!", "_IAPSendXPCMessageReplyWithTimeout", v11);
    if (!a1)
    {
      goto LABEL_25;
    }
  }

  if (__iapd_connection != a1 && __iap2d_connection != a1 && __iaptransportd_connection != a1)
  {
    goto LABEL_25;
  }

  if (!a2 || !a5)
  {
    NSLog(&cfstr_SOneOfConnecti.isa, "_IAPSendXPCMessageReplyWithTimeout", 1, a2 != 0, a5 != 0);
    if (!a5)
    {
      return pthread_mutex_unlock(&__iapConnectionMutex);
    }

    goto LABEL_26;
  }

  v14 = dispatch_semaphore_create(0);
  v15 = xpc_dictionary_get_string(a2, "requestType");
  v16 = "unknown";
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = "unknown";
  }

  if (__iapd_connection == a1)
  {
    v16 = "iapd";
  }

  else if (__iap2d_connection == a1)
  {
    v16 = "iap2d";
  }

  else if (__iaptransportd_connection == a1)
  {
    v16 = "iaptransportd";
  }

  NSLog(&cfstr_SSendXpcMessag_1.isa, "_IAPSendXPCMessageReplyWithTimeout", v17, v16, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = ___IAPSendXPCMessageReplyWithTimeout_block_invoke;
  handler[3] = &unk_279780D38;
  handler[4] = a2;
  handler[5] = a1;
  handler[6] = v14;
  handler[7] = a5;
  xpc_connection_send_message_with_reply(a1, a2, a4, handler);
  v19 = [MEMORY[0x277CBEAA8] date];
  if (a3)
  {
    v20 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v20 = -1;
  }

  if (dispatch_semaphore_wait(v14, v20))
  {
    syslog(3, "%s: xpc_connection_send_message_with_reply did not reply within %d ms. Timeout has occurred, tryLeft %d", "_IAPSendXPCMessageReplyWithTimeout", a3, 0);
    (*(a5 + 16))(a5, 0);
  }

  else
  {
    [v19 timeIntervalSinceNow];
    syslog(6, "%s: xpc_connection_send_message_with_reply reply in %lu ms.", "_IAPSendXPCMessageReplyWithTimeout", (v21 * 1000.0));
  }

  dispatch_release(v14);
  return pthread_mutex_unlock(&__iapConnectionMutex);
}

uint64_t IAPAppRegisterClient(uint64_t a1)
{
  v1 = a1;
  __dst[128] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_Iapappregister.isa, a1);
  pthread_mutex_lock(&__eaClientPortLock);
  if ((__eaClientRegisterediapd & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __iapdServerLaunched, @"kIAPServerLaunchedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, __iapdServerDied, @"kIAPDServerDiedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  if ((__eaClientRegisterediap2d & 1) == 0)
  {
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, 0, __iap2dServerLaunched, @"kIAP2ServerLaunchedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v5, 0, __iap2dServerDied, @"kIAP2ServerDiedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  NSLog(&cfstr_Iapappregister_0.isa, __eaClientRegisterediapd, 1);
  __eaClientRegisterediapd = 1;
  NSLog(&cfstr_Iapappregister_1.isa, __eaClientRegisterediap2d, 1);
  __eaClientRegisterediap2d = 1;
  __eaClientCapabilities = v1;
  if ((v1 & 0x200) != 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:getprogname() encoding:4];
  }

  else
  {
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  }

  v7 = v6;
  memset(__dst + 1, 170, 0x3FFuLL);
  LOBYTE(__dst[0]) = 0;
  if (v7 && [v7 lengthOfBytesUsingEncoding:4] <= 0x3FF)
  {
    strlcpy(__dst, [v7 cStringUsingEncoding:4], 0x400uLL);
  }

  v8 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:100 options:0 error:0];
  }

  else
  {
    v10 = 0;
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v11, "requestType", "IAPAppRegisterClient");
  xpc_dictionary_set_uint64(v11, "eaClientCapabilities", __eaClientCapabilities);
  xpc_dictionary_set_string(v11, "eaClientBundleID", __dst);
  xpc_dictionary_set_uint64(v11, "eaClientID", __eaClientIDiapd);
  xpc_dictionary_set_BOOL(v11, "eaClientHasCheckedForConnectedAccessories", __eaClientHasCheckedForConnectedAccessories);
  if (v10)
  {
    xpc_dictionary_set_data(v11, "eaClientSupportedProtocols", [v10 bytes], objc_msgSend(v10, "length"));
  }

  v12 = __eaiapdHasClientID;
  v13 = IAPDHasLaunched();
  NSLog(&cfstr_Iapappregister_2.isa, v12, v13);
  if ((__eaiapdHasClientID & 1) == 0 && IAPDHasLaunched())
  {
    v14 = RetainConnectionToIAPDaemon();
    if (v14)
    {
      v15 = v14;
      v16 = _IAPSendXPCMessageWithTimeout(v14, v11, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (!v16)
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppRegisterClient", 515);
        v19 = 0;
LABEL_51:
        xpc_release(v15);
        goto LABEL_25;
      }

      v17 = v16;
      v18 = MEMORY[0x259C17370]();
      if (v17 == MEMORY[0x277D863F8] && v18 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppRegisterClient", 491, __dst[0]);
      }

      else if (v17 == MEMORY[0x277D863F0] && v18 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppRegisterClient", 495, __dst[0]);
      }

      else
      {
        if (v18 == MEMORY[0x277D86468])
        {
          __eaClientIDiapd = xpc_dictionary_get_uint64(v17, "eaClientID");
          v19 = 1;
          __eaiapdHasClientID = 1;
LABEL_50:
          xpc_release(v17);
          goto LABEL_51;
        }

        if (v18 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppRegisterClient", 505, v29, __dst[0]);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPAppRegisterClient", 509, v18, __dst[0]);
        }
      }

      v19 = 0;
      goto LABEL_50;
    }
  }

  v19 = 0;
LABEL_25:
  v20 = __eaiap2dHasClientID;
  v21 = IAP2DHasLaunched();
  NSLog(&cfstr_Iapappregister_4.isa, v20, v21);
  if ((__eaiap2dHasClientID & 1) == 0 && IAP2DHasLaunched())
  {
    v22 = RetainConnectionToIAP2Daemon();
    if (v22)
    {
      v23 = v22;
      xpc_dictionary_set_uint64(v11, "eaClientID", __eaClientIDiap2d);
      v24 = _IAPSendXPCMessageWithTimeout(v23, v11, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (v24)
      {
        v25 = v24;
        v26 = MEMORY[0x259C17370]();
        if (v25 == MEMORY[0x277D863F8] && v26 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppRegisterClient", 539);
        }

        else if (v25 == MEMORY[0x277D863F0] && v26 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppRegisterClient", 543);
        }

        else if (v26 == MEMORY[0x277D86468])
        {
          __eaClientIDiap2d = xpc_dictionary_get_uint64(v25, "eaClientID");
          v19 = 1;
          __eaiap2dHasClientID = 1;
        }

        else if (v26 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppRegisterClient", 553, v29);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPAppRegisterClient", 557, v26);
        }

        xpc_release(v25);
      }

      else
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppRegisterClient", 563);
      }

      xpc_release(v23);
    }
  }

  xpc_release(v11);
  pthread_mutex_unlock(&__eaClientPortLock);
  NSLog(&cfstr_Iapappregister_5.isa, v19);
  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

dispatch_queue_t ___Z21GetIAPConnectionQueuev_block_invoke()
{
  result = dispatch_queue_create("iAPConnectionQueue", 0);
  __iAPConnectionQ = result;
  return result;
}

uint64_t IAPAppSendDebugCommand(unsigned int a1, void *a2, uint64_t *a3)
{
  length = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "requestType", "kXPCIAPAppSendDebugCommand");
  xpc_dictionary_set_uint64(v6, "kXPCIAPAppDebugCommandType", a1);
  xpc_dictionary_set_data(v6, "kXPCIAPAppDebugCommandData", [a2 bytes], objc_msgSend(a2, "length"));
  v7 = RetainConnectionToIAPDaemon();
  if (v7)
  {
    v8 = v7;
    v9 = _IAPSendXPCMessageWithTimeout(v7, v6, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v9)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppSendDebugCommand", 351);
      v12 = 0;
LABEL_23:
      xpc_release(v8);
      goto LABEL_24;
    }

    v10 = v9;
    v11 = MEMORY[0x259C17370]();
    if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppSendDebugCommand", 320);
    }

    else if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppSendDebugCommand", 324);
    }

    else
    {
      if (v11 == MEMORY[0x277D86468])
      {
        data = xpc_dictionary_get_data(v10, "kXPCIAPAppDebugCommandData", &length);
        v12 = 1;
        if (data)
        {
          if (length)
          {
            v14 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
            if (a3)
            {
              *a3 = v14;
            }
          }
        }

        goto LABEL_22;
      }

      if (v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppSendDebugCommand", 341);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppSendDebugCommand", 345, v11);
      }
    }

    v12 = 0;
LABEL_22:
    xpc_release(v10);
    goto LABEL_23;
  }

  NSLog(&cfstr_ErrorSNoConnec.isa, "IAPAppSendDebugCommand");
  v12 = 0;
LABEL_24:
  xpc_release(v6);
  return v12;
}

BOOL IAPAppToAppSocketPath(int a1, int a2, char *__str)
{
  if (__str)
  {
    snprintf(__str, 0x100uLL, "%s/ea.%u.%u", "/var/mobile/Library/ExternalAccessory", a1, a2);
  }

  else
  {
    NSLog(&cfstr_ErrorSSDErrorP.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppToAppSocketPath", 371);
  }

  return __str != 0;
}

BOOL IAPAppToAppFifoPath(int a1, int a2, char *__str)
{
  if (__str)
  {
    snprintf(__str, 0x100uLL, "%s/ea.%d.%d.out", "/var/mobile/Library/ExternalAccessory", a1, a2);
  }

  else
  {
    NSLog(&cfstr_ErrorSSDErrorP.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppToAppFifoPath", 384);
  }

  return __str != 0;
}

BOOL IAPAppFromAppFifoPath(int a1, int a2, char *__str)
{
  if (__str)
  {
    snprintf(__str, 0x100uLL, "%s/ea.%d.%d.in", "/var/mobile/Library/ExternalAccessory", a1, a2);
  }

  else
  {
    NSLog(&cfstr_SSDErrorPathIs.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppFromAppFifoPath", 397);
  }

  return __str != 0;
}

uint64_t __iapdServerLaunched(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  if (_InitIAPAppSendXPCMessageDefaultTimeoutMs(void)::onceToken != -1)
  {
    __iapdServerLaunched();
  }

  out_token = 0;
  result = notify_register_check("com.apple.iapd.notify.availability", &out_token);
  if (!result)
  {
    state64 = 1;
    notify_get_state(out_token, &state64);
    if (!state64)
    {
      notify_set_state(out_token, 1uLL);
      notify_post("com.apple.iapd.notify.availability");
    }

    result = notify_cancel(out_token);
  }

  if (__eaClientRegisterediapd == 1)
  {
    IAPAppRegisterClient(__eaClientCapabilities);
    v6 = 0;
    result = IAPLocationIsActivated(&v6);
    if (v6)
    {
      return IAPLocationActivate();
    }
  }

  return result;
}

uint64_t __iapdServerDied(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  pthread_mutex_lock(&__eaClientPortLock);
  __eaiapdHasClientID = 0;
  __eaClientIDiapd = 0;
  pthread_mutex_unlock(&__eaClientPortLock);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v5 postNotificationName:@"IAPAppMigServerDiedNotification" object:0 userInfo:0];
}

uint64_t __iap2dServerLaunched(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  if (_InitIAPAppSendXPCMessageDefaultTimeoutMs(void)::onceToken != -1)
  {
    __iapdServerLaunched();
  }

  out_token = 0;
  result = notify_register_check("com.apple.iap2d.notify.availability", &out_token);
  if (!result)
  {
    state64 = 1;
    notify_get_state(out_token, &state64);
    if (!state64)
    {
      notify_set_state(out_token, 1uLL);
      notify_post("com.apple.iapd.notify.availability");
    }

    result = notify_cancel(out_token);
  }

  if (__eaClientRegisterediap2d == 1)
  {
    IAPAppRegisterClient(__eaClientCapabilities);
    v6 = 0;
    result = IAPLocationIsActivated(&v6);
    if (v6)
    {
      return IAPLocationActivate();
    }
  }

  return result;
}

uint64_t __iap2dServerDied(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  pthread_mutex_lock(&__eaClientPortLock);
  __eaiap2dHasClientID = 0;
  __eaClientIDiap2d = 0;
  pthread_mutex_unlock(&__eaClientPortLock);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];

  return [v5 postNotificationName:@"IAPAppMigServerDiedNotification" object:0 userInfo:0];
}

uint64_t IAPAppGetClientIDForIAP2D()
{
  pthread_mutex_lock(&__eaClientPortLock);
  v0 = __eaClientIDiap2d;
  pthread_mutex_unlock(&__eaClientPortLock);
  return v0;
}

BOOL IAPAppCreateSessionForAccessory(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v16 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v16);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "requestType", "IAPAppCreateSessionForAccessory");
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    xpc_dictionary_set_uint64(v8, "eaProtocolID", a2);
    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_8;
      }

      v9 = &__eaClientIDiap2d;
    }

    else
    {
      v9 = &__eaClientIDiapd;
    }

    xpc_dictionary_set_uint64(v8, "eaClientID", *v9);
LABEL_8:
    v11 = _IAPSendXPCMessageWithTimeout(v7, v8, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v11)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppCreateSessionForAccessory", 810);
      v10 = 0;
LABEL_23:
      xpc_release(v8);
      xpc_release(v7);
      return v10;
    }

    v12 = v11;
    v13 = MEMORY[0x259C17370]();
    if (v12 == MEMORY[0x277D863F8] && v13 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppCreateSessionForAccessory", 785);
    }

    else if (v12 == MEMORY[0x277D863F0] && v13 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppCreateSessionForAccessory", 789);
    }

    else
    {
      if (v13 == MEMORY[0x277D86468])
      {
        uint64 = xpc_dictionary_get_uint64(v12, "eaSessionID");
        *a3 = uint64;
        v10 = uint64 != 0x10000;
LABEL_22:
        xpc_release(v12);
        goto LABEL_23;
      }

      if (v13 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppCreateSessionForAccessory", 800);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppCreateSessionForAccessory", 804, v13);
      }
    }

    v10 = 0;
    goto LABEL_22;
  }

  NSLog(&cfstr_SSDConnectionH.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppCreateSessionForAccessory", 816, 0);
  return 0;
}

BOOL IAPAppOpenSessionFromAppToAccessory(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v14 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v14);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "requestType", "IAPAppOpenSessionFromAppToAccessory");
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    xpc_dictionary_set_uint64(v8, "eaProtocolID", a2);
    xpc_dictionary_set_uint64(v8, "eaSessionID", a3);
    v9 = _IAPSendXPCMessageWithTimeout(v7, v8, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v9)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppOpenSessionFromAppToAccessory", 865);
      v12 = 0;
LABEL_18:
      xpc_release(v8);
      xpc_release(v7);
      return v12;
    }

    v10 = v9;
    v11 = MEMORY[0x259C17370]();
    if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppOpenSessionFromAppToAccessory", 843);
    }

    else if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppOpenSessionFromAppToAccessory", 847);
    }

    else
    {
      if (v11 == MEMORY[0x277D86468])
      {
        v12 = xpc_dictionary_get_BOOL(v10, "openWasSuccessful");
LABEL_17:
        xpc_release(v10);
        goto LABEL_18;
      }

      if (v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppOpenSessionFromAppToAccessory", 855);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppOpenSessionFromAppToAccessory", 859, v11);
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  NSLog(&cfstr_SSDConnectionH.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppOpenSessionFromAppToAccessory", 871, 0);
  return 0;
}

BOOL IAPAppOpenSessionFromAccessoryToApp(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v14 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v14);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "requestType", "IAPAppOpenSessionFromAccessoryToApp");
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    xpc_dictionary_set_uint64(v8, "eaProtocolID", a2);
    xpc_dictionary_set_uint64(v8, "eaSessionID", a3);
    v9 = _IAPSendXPCMessageWithTimeout(v7, v8, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v9)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppOpenSessionFromAccessoryToApp", 920);
      v12 = 0;
LABEL_18:
      xpc_release(v8);
      xpc_release(v7);
      return v12;
    }

    v10 = v9;
    v11 = MEMORY[0x259C17370]();
    if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppOpenSessionFromAccessoryToApp", 898);
    }

    else if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppOpenSessionFromAccessoryToApp", 902);
    }

    else
    {
      if (v11 == MEMORY[0x277D86468])
      {
        v12 = xpc_dictionary_get_BOOL(v10, "openWasSuccessful");
LABEL_17:
        xpc_release(v10);
        goto LABEL_18;
      }

      if (v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppOpenSessionFromAccessoryToApp", 910);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppOpenSessionFromAccessoryToApp", 914, v11);
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  NSLog(&cfstr_SSDConnectionH.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppOpenSessionFromAccessoryToApp", 926, 0);
  return 0;
}

BOOL IAPAppCloseSessionToAccessory(unsigned int a1, unsigned int a2)
{
  v12 = 2;
  v4 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v12);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "requestType", "IAPAppCloseSessionToAccessory");
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_uint64(v6, "eaSessionID", a2);
    v7 = _IAPSendXPCMessageWithTimeout(v5, v6, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v7)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppCloseSessionToAccessory", 975);
      v10 = 0;
LABEL_18:
      xpc_release(v6);
      xpc_release(v5);
      return v10;
    }

    v8 = v7;
    v9 = MEMORY[0x259C17370]();
    if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppCloseSessionToAccessory", 953);
    }

    else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppCloseSessionToAccessory", 957);
    }

    else
    {
      if (v9 == MEMORY[0x277D86468])
      {
        v10 = xpc_dictionary_get_BOOL(v8, "closeWasSuccessful");
LABEL_17:
        xpc_release(v8);
        goto LABEL_18;
      }

      if (v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppCloseSessionToAccessory", 965);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppCloseSessionToAccessory", 969, v9);
      }
    }

    v10 = 0;
    goto LABEL_17;
  }

  NSLog(&cfstr_SSDConnectionH.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppCloseSessionToAccessory", 981, 0);
  return 0;
}

void __IAPAppStartAccessibility_block_invoke()
{
  if ((__eaClientCapabilities & 2) != 0 && !__eaClientListener && __eaClientListenerQueue == 0)
  {
    __eaClientListenerQueue = dispatch_queue_create("IAPAppListenerQueue", 0);
    v1 = [@"com.apple.VoiceOverTouch.xpc" UTF8String];
    mach_service = xpc_connection_create_mach_service(v1, __eaClientListenerQueue, 1uLL);
    __eaClientListener = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global_326);
      v3 = __eaClientListener;

      xpc_connection_resume(v3);
    }

    else
    {
      NSLog(&cfstr_ErrorSSDIapapp.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppStartAccessibility_block_invoke", 1009);
    }
  }
}

void __IAPAppStartAccessibility_block_invoke_2(uint64_t a1, _xpc_connection_s *a2)
{
  v3 = __eaClientListenerQueue;
  if (MEMORY[0x259C17370](a2) == MEMORY[0x277D86450])
  {
    xpc_connection_set_target_queue(a2, v3);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___ZL28_xpc_handle_outgoing_requestPU24objcproto13OS_xpc_object8NSObjectPU28objcproto17OS_dispatch_queueS__block_invoke;
    handler[3] = &unk_279780CC0;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else
  {
    NSLog(&cfstr_SSDErrorXpcHan.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request", 1378);
  }
}

void __IAPAppStopAccessibility_block_invoke()
{
  if (__eaClientListener)
  {
    xpc_release(__eaClientListener);
    __eaClientListener = 0;
  }

  if (__eaClientListenerQueue)
  {
    dispatch_release(__eaClientListenerQueue);
    __eaClientListenerQueue = 0;
  }
}

BOOL IAPAppSendAccessibilityResponse(unsigned int a1, uint64_t a2)
{
  v14 = 2;
  v4 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v14);
  v5 = v4;
  if (a2 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "requestType", "IAPAppAccessibilityResponse");
    xpc_dictionary_set_uint64(v7, "connectionID", a1);
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:0];
    if (v8)
    {
      xpc_dictionary_set_data(v7, "userInfo", [v8 bytes], objc_msgSend(v8, "length"));
    }

    v9 = _IAPSendXPCMessageWithTimeout(v5, v7, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v9)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppSendAccessibilityResponse", 1085);
      v12 = 0;
LABEL_22:
      xpc_release(v7);
      objc_autoreleasePoolPop(v6);
      goto LABEL_23;
    }

    v10 = v9;
    v11 = MEMORY[0x259C17370]();
    if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppSendAccessibilityResponse", 1063);
    }

    else if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppSendAccessibilityResponse", 1067);
    }

    else
    {
      if (v11 == MEMORY[0x277D86468])
      {
        v12 = xpc_dictionary_get_BOOL(v10, "sendWasSuccessful");
LABEL_21:
        xpc_release(v10);
        goto LABEL_22;
      }

      if (v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppSendAccessibilityResponse", 1075);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppSendAccessibilityResponse", 1079, v11);
      }
    }

    v12 = 0;
    goto LABEL_21;
  }

  v12 = 0;
  result = 0;
  if (v5)
  {
LABEL_23:
    xpc_release(v5);
    return v12;
  }

  return result;
}

BOOL IAPAppSendPointOfInterestInformation(unsigned int a1, void *a2, void *a3)
{
  v15 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v15);
  v7 = v6;
  if (a2 && a3 && v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, "requestType", "IAPDestinationtInformation");
    xpc_dictionary_set_uint64(v9, "connectionID", a1);
    xpc_dictionary_set_data(v9, "IAPDestinationtInformationIdentifierStr", [objc_msgSend(a3 dataUsingEncoding:{4), "bytes"}], objc_msgSend(a3, "lengthOfBytesUsingEncoding:", 4));
    xpc_dictionary_set_data(v9, "IAPDestinationInformationParametersStr", [a2 bytes], objc_msgSend(a2, "length"));
    v10 = _IAPSendXPCMessageWithTimeout(v7, v9, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v10)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppSendPointOfInterestInformation", 1144);
      v13 = 0;
LABEL_21:
      xpc_release(v9);
      objc_autoreleasePoolPop(v8);
      goto LABEL_22;
    }

    v11 = v10;
    v12 = MEMORY[0x259C17370]();
    if (v11 == MEMORY[0x277D863F8] && v12 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppSendPointOfInterestInformation", 1122);
    }

    else if (v11 == MEMORY[0x277D863F0] && v12 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppSendPointOfInterestInformation", 1126);
    }

    else
    {
      if (v12 == MEMORY[0x277D86468])
      {
        v13 = xpc_dictionary_get_BOOL(v11, "sendWasSuccessful");
LABEL_20:
        xpc_release(v11);
        goto LABEL_21;
      }

      if (v12 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppSendPointOfInterestInformation", 1134);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppSendPointOfInterestInformation", 1138, v12);
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  v13 = 0;
  result = 0;
  if (v7)
  {
LABEL_22:
    xpc_release(v7);
    return v13;
  }

  return result;
}

void IAPAppBeginOOBBTPairingForConnection(unsigned int a1)
{
  v6 = 2;
  v2 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v6);
  if (v2)
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "requestType", "IAPAppBeginOOBPairingStr");
    xpc_dictionary_set_uint64(v5, "connectionID", a1);
    xpc_connection_send_message(v3, v5);
    xpc_release(v5);
    objc_autoreleasePoolPop(v4);
    xpc_release(v3);
  }
}

void IAPAppNotifyAppOfSessionClose(int a1, int a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __IAPAppNotifyAppOfSessionClose_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v3 = a2;
  v4 = a1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __IAPAppNotifyAppOfSessionClose_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  EAAccessoryManager = __GetEAAccessoryManager();
  if (EAAccessoryManager)
  {
    EAAccessoryManager = EAAccessoryManager();
  }

  [EAAccessoryManager endSession:*(a1 + 32) forConnectionID:*(a1 + 36)];

  objc_autoreleasePoolPop(v2);
}

void *__GetEAAccessoryManager(void)
{
  result = __GetEAAccessoryManager(void)::_GetEAAccesoryManager;
  if (!__GetEAAccessoryManager(void)::_GetEAAccesoryManager)
  {
    v1 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/Frameworks/ExternalAccessory.framework/ExternalAccessory"];
    v2 = dlopen([v1 fileSystemRepresentation], 1);
    __GetEAAccessoryManager(void)::eaHandle = v2;
    if (v2)
    {
      result = dlsym(v2, "GetEAAccesoryManager");
      __GetEAAccessoryManager(void)::_GetEAAccesoryManager = result;
      if (result)
      {
        return result;
      }

      goto LABEL_4;
    }

    NSLog(&cfstr_ErrorCouldNotL.isa, v1);
    result = __GetEAAccessoryManager(void)::_GetEAAccesoryManager;
    if (!__GetEAAccessoryManager(void)::_GetEAAccesoryManager)
    {
LABEL_4:
      NSLog(&cfstr_ErrorCouldNotL_0.isa);
      return __GetEAAccessoryManager(void)::_GetEAAccesoryManager;
    }
  }

  return result;
}

uint64_t IAPAppProcessIDIsUsingAccessory(const __CFString *a1)
{
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "requestType", "IAPAppProcessIDIsUsingAccessory");
    Length = CFStringGetLength(a1);
    v4 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      v6 = CFStringGetLength(a1);
      CFStringGetCString(a1, v5, v6 + 1, 0x8000100u);
      xpc_dictionary_set_string(v2, "displayIdentifier", v5);
      free(v5);
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
      NSLog(&cfstr_SSDErrorCanTCh.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppProcessIDIsUsingAccessory", 1401, CStringPtr);
    }

    if (!IAPDHasLaunched())
    {
      goto LABEL_24;
    }

    v9 = RetainConnectionToIAPDaemon();
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = v9;
    v11 = _IAPSendXPCMessageWithTimeout(v9, v2, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0x259C17370]();
      if (v12 == MEMORY[0x277D863F8] && v13 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppProcessIDIsUsingAccessory", 1416);
      }

      else if (v12 == MEMORY[0x277D863F0] && v13 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppProcessIDIsUsingAccessory", 1420);
      }

      else
      {
        if (v13 == MEMORY[0x277D86468])
        {
          v14 = xpc_dictionary_get_BOOL(v12, "processAllowedByIAPD");
          xpc_release(v12);
          xpc_release(v10);
          if (v14)
          {
            v7 = 1;
LABEL_27:
            xpc_release(v2);
            return v7;
          }

LABEL_24:
          v15 = IAPWeakLinkSymbol("ACCDigitalAudioAllowBackgroundAudioForClient", 6);
          if (v15)
          {
            v7 = v15(a1);
            NSLog(&cfstr_BackgroundAudi.isa, v7, a1);
          }

          else
          {
            NSLog(&cfstr_ErrorCouldnTFi.isa);
            v7 = 0;
          }

          goto LABEL_27;
        }

        if (v13 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppProcessIDIsUsingAccessory", 1428, v17);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPAppProcessIDIsUsingAccessory", 1432, v13);
        }
      }

      xpc_release(v12);
    }

    else
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppProcessIDIsUsingAccessory", 1438);
    }

    xpc_release(v10);
    goto LABEL_24;
  }

  NSLog(&cfstr_SSDErrorCanTCh_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppProcessIDIsUsingAccessory", 1464);
  return 0;
}

uint64_t IAPAppAuthCertForConnectionID(uint64_t a1)
{
  v1 = a1;
  if (!_eaAuthDataGetter || (result = _eaAuthDataGetter(a1)) == 0)
  {
    v13 = 2;
    v3 = RetainConnectionToIAPDaemonWithConnectionID(v1, &v13);
    v4 = v3;
    if (v13 != 2 && v3 != 0)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v7, "requestType", "IAPAppAuthCertForConnectionIDStr");
      xpc_dictionary_set_uint64(v7, "connectionID", v1);
      v8 = _IAPSendXPCMessageWithTimeout(v4, v7, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (!v8)
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppAuthCertForConnectionID", 1524);
        v6 = 0;
LABEL_27:
        xpc_release(v7);
        goto LABEL_28;
      }

      v9 = v8;
      v10 = MEMORY[0x259C17370]();
      if (v9 == MEMORY[0x277D863F8] && v10 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppAuthCertForConnectionID", 1496);
      }

      else if (v9 == MEMORY[0x277D863F0] && v10 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppAuthCertForConnectionID", 1500);
      }

      else
      {
        if (v10 == MEMORY[0x277D86468])
        {
          length = 0;
          data = xpc_dictionary_get_data(v9, "kXPCIAPAppAuthCertDataStr", &length);
          v6 = 0;
          if (data && length)
          {
            v6 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
          }

          goto LABEL_26;
        }

        if (v10 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppAuthCertForConnectionID", 1514);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPAppAuthCertForConnectionID", 1518, v10);
        }
      }

      v6 = 0;
LABEL_26:
      xpc_release(v9);
      goto LABEL_27;
    }

    v6 = 0;
    result = 0;
    if (v4)
    {
LABEL_28:
      xpc_release(v4);
      return v6;
    }
  }

  return result;
}

uint64_t IAPAppAuthCertSerialStringForConnectionID(uint64_t a1)
{
  v1 = a1;
  if (!_eaAuthSerialStringGetter || (result = _eaAuthSerialStringGetter(a1)) == 0)
  {
    v12 = 2;
    v3 = RetainConnectionToIAPDaemonWithConnectionID(v1, &v12);
    v4 = v3;
    if (v12 != 2 && v3 != 0)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v7, "requestType", "IAPAppAuthCertSerialForConnectionIDStr");
      xpc_dictionary_set_uint64(v7, "connectionID", v1);
      v8 = _IAPSendXPCMessageWithTimeout(v4, v7, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (!v8)
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAppAuthCertSerialStringForConnectionID", 1589);
        v6 = 0;
LABEL_26:
        xpc_release(v7);
        goto LABEL_27;
      }

      v9 = v8;
      v10 = MEMORY[0x259C17370]();
      if (v9 == MEMORY[0x277D863F8] && v10 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppAuthCertSerialStringForConnectionID", 1564);
      }

      else if (v9 == MEMORY[0x277D863F0] && v10 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SSDReceivedAnX_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "IAPAppAuthCertSerialStringForConnectionID", 1568);
      }

      else if (v10 == MEMORY[0x277D86468])
      {
        string = xpc_dictionary_get_string(v9, "kXPCIAPAppAuthCertSerialStr");
        if (string)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithCString:string encoding:4];
LABEL_25:
          xpc_release(v9);
          goto LABEL_26;
        }
      }

      else if (v10 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAppAuthCertSerialStringForConnectionID", 1579);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAppAuthCertSerialStringForConnectionID", 1583, v10);
      }

      v6 = 0;
      goto LABEL_25;
    }

    v6 = 0;
    result = 0;
    if (v4)
    {
LABEL_27:
      xpc_release(v4);
      return v6;
    }
  }

  return result;
}

void *IAPRegisterEAAuthGetters(void *result, void *a2)
{
  _eaAuthDataGetter = result;
  _eaAuthSerialStringGetter = a2;
  return result;
}

void SendDisplayPortStatusToAccessory(BOOL a1)
{
  v2 = RetainConnectionToIAPDaemon();
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "requestType", "kXPCIAPAppSendDisplayPortStatus");
    xpc_dictionary_set_BOOL(v4, "kXPCDisplayPortStatus", a1);
    xpc_connection_send_message(v3, v4);
    xpc_release(v4);

    xpc_release(v3);
  }
}

void ___ZL41_InitIAPAppSendXPCMessageDefaultTimeoutMsv_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 addSuiteNamed:@"com.apple.logging"];
  v1 = [v0 integerForKey:@"OverrideIAPXPCTimeoutMs"];
  if (v1 == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1000;
  }

  NSLog(&cfstr_LoadingLogging.isa, @"OverrideIAPXPCTimeoutMs", __IAPAppSendXPCMessageDefaultTimeoutMs, v3);
  __IAPAppSendXPCMessageDefaultTimeoutMs = v3;
}

void ___ZL28_xpc_handle_outgoing_requestPU24objcproto13OS_xpc_object8NSObjectPU28objcproto17OS_dispatch_queueS__block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x259C17370](a2);
  v5 = MEMORY[0x277D86468];
  if (v4 != MEMORY[0x277D86468])
  {
    if (v4 == MEMORY[0x277D86480])
    {
      value = xpc_dictionary_get_value(a2, *MEMORY[0x277D86400]);
      if (value)
      {
        string_ptr = xpc_string_get_string_ptr(value);
      }

      else
      {
        string_ptr = "";
      }

      NSLog(&cfstr_SSDErrorReceiv_2.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1363, string_ptr);
    }

    else
    {
      NSLog(&cfstr_SSDErrorReceiv_3.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1368);
    }

    v17 = *(a1 + 32);

    xpc_connection_cancel(v17);
    return;
  }

  string = xpc_dictionary_get_string(a2, "requestType");
  if (!string)
  {
    NSLog(&cfstr_RequesttypeNot.isa);
    string = "<nil>";
  }

  if (!strcmp(string, "VoiceOver"))
  {
    v7 = objc_autoreleasePoolPush();
    v26 = 0;
    length = 0xAAAAAAAAAAAAAAAALL;
    data = xpc_dictionary_get_data(a2, "userInfo", &length);
    if (data && (v9 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length]) != 0 && (v10 = objc_msgSend(MEMORY[0x277CCAC58], "propertyListWithData:options:format:error:", v9, 0, 0, &v26)) != 0)
    {
      v11 = v10;
      v12 = xpc_dictionary_get_string(a2, "VoiceOver");
      EAAccessoryManager = __GetEAAccessoryManager();
      if (EAAccessoryManager)
      {
        v14 = EAAccessoryManager();
      }

      else
      {
        v14 = 0;
      }

      if (v12)
      {
        if (!strcmp(v12, "Action"))
        {
          if (__GetEAStringConstant(char const*)::once != -1)
          {
            ___ZL28_xpc_handle_outgoing_requestPU24objcproto13OS_xpc_object8NSObjectPU28objcproto17OS_dispatch_queueS__block_invoke_cold_1();
          }

          if (__GetEAStringConstant(char const*)::eaHandle)
          {
            v24 = dlsym(__GetEAStringConstant(char const*)::eaHandle, "EAAccessoryAccessibilityContextKey");
            if (v24)
            {
              if (*v24 && [v11 objectForKey:?])
              {
                [v14 accessibilityContextChange:v11];
              }
            }
          }

          [v14 accessibilityAction:v11];
        }

        else if (!strcmp(v12, "ContextChange"))
        {
          [v14 accessibilityContextChange:v11];
        }

        else if (!strcmp(v12, "ItemPropertyRequest"))
        {
          [v14 accessibilityItemPropertyRequest:v11];
        }

        else if (!strcmp(v12, "SystemPropertyChange"))
        {
          [v14 accessibilitySystemPropertyChange:v11];
        }

        else if (!strcmp(v12, "SystemPropertyRequest"))
        {
          [v14 accessibilitySystemPropertyRequest:v11];
        }

        v18 = 1;
        goto LABEL_32;
      }

      NSLog(&cfstr_SSDErrorReceiv.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1317);
    }

    else if (v26)
    {
      NSLog(&cfstr_SSDErrorReceiv_0.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1326, [v26 description]);
    }

    else
    {
      NSLog(&cfstr_SSDErrorReceiv_1.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1330);
    }

    v18 = 0;
LABEL_32:
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v20 = reply;
      v21 = MEMORY[0x259C17370]();
      if (v21 == v5)
      {
        xpc_dictionary_set_BOOL(v20, "sendWasSuccessful", v18);
        xpc_connection_send_message(*(a1 + 32), v20);
      }

      else if (v21 == MEMORY[0x277D86480])
      {
        v22 = xpc_dictionary_get_value(v20, *MEMORY[0x277D86400]);
        if (v22)
        {
          v23 = xpc_string_get_string_ptr(v22);
        }

        else
        {
          v23 = "";
        }

        NSLog(&cfstr_SSDErrorReceiv_2.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1348, v23);
      }

      else
      {
        NSLog(&cfstr_SSDErrorReceiv_3.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "_xpc_handle_outgoing_request_block_invoke", 1352, v25);
      }

      xpc_release(v20);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void ___ZL21__GetEAStringConstantPKc_block_invoke()
{
  v0 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/Frameworks/ExternalAccessory.framework/ExternalAccessory"];
  __GetEAStringConstant(char const*)::eaHandle = dlopen([v0 fileSystemRepresentation], 1);
  if (!__GetEAStringConstant(char const*)::eaHandle)
  {
    NSLog(&cfstr_SSDCouldNotLoa.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/IAP/IPC_Client/IAPApp.mm", "__GetEAStringConstant_block_invoke", 1215, v0);
  }
}

uint64_t IAPServerPort()
{
  out_token = 0;
  state64 = 0;
  v0 = 0;
  if (!notify_register_check("com.apple.iapd.notify.availability", &out_token))
  {
    check = 0;
    notify_check(out_token, &check);
    if (check && (notify_get_state(out_token, &state64), state64))
    {
      if (!__iapdServerPort)
      {
        pthread_mutex_lock(&__iapdServerPortLock);
        if (bootstrap_look_up(*MEMORY[0x277D85F18], __iapdServerPortName, &__iapdServerPort))
        {
          v1 = 1;
        }

        else
        {
          v1 = (__iapdServerPort - 1) > 0xFFFFFFFD;
        }

        if (!v1)
        {
          __iapdServerMachPort = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], __iapdServerPort, 0, 0, 0);
        }

        pthread_mutex_unlock(&__iapdServerPortLock);
        if (__iapdServerMachPort)
        {
          CFMachPortSetInvalidationCallBack(__iapdServerMachPort, __invalidateIAPDServerPort);
        }
      }

      v0 = __iapdServerPort;
    }

    else
    {
      v0 = 0;
    }

    notify_cancel(out_token);
  }

  return v0;
}

BOOL IAPCheckIn()
{
  if (IAPDHasLaunched())
  {
    v0 = RetainIAPDaemonConnection();
    if (v0)
    {
      v1 = v0;
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v2, "requestType", "IAPCheckIn");
      NSLog(&cfstr_SSendXpcMessag.isa, "IAPCheckIn", "IAPCheckIn");
      v3 = _IAPSendXPCMessageWithTimeout(v1, v2, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (!v3)
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPCheckIn", 183);
        v8 = 0;
LABEL_21:
        xpc_release(v2);
        xpc_release(v1);
        return v8;
      }

      v4 = v3;
      v5 = MEMORY[0x259C17370]();
      if (v4 == MEMORY[0x277D863F8] && v5 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapcheckinRece.isa, v10, v11);
      }

      else if (v4 == MEMORY[0x277D863F0] && v5 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapcheckinRece_0.isa, v10, v11);
      }

      else
      {
        if (v5 == MEMORY[0x277D86468])
        {
          v8 = xpc_dictionary_get_BOOL(v4, "result");
          NSLog(&cfstr_IapcheckinResu.isa, v8);
          goto LABEL_20;
        }

        if (v5 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPCheckIn", 173);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPCheckIn", 177, v5);
        }
      }

      v8 = 0;
LABEL_20:
      xpc_release(v4);
      goto LABEL_21;
    }
  }

  return 0;
}

void *RetainConnectionToIAPDaemon()
{
  if (!IAPDHasLaunched())
  {
    return 0;
  }

  return RetainIAPDaemonConnection();
}

BOOL iaptransportdHasLaunched()
{
  out_token = 0;
  state64 = 0;
  v0 = 0;
  if (!notify_register_check("com.apple.iaptransportd.notify.availability", &out_token))
  {
    check = 0;
    notify_check(out_token, &check);
    if (check)
    {
      notify_get_state(out_token, &state64);
      v0 = state64 != 0;
    }

    else
    {
      v0 = 0;
    }

    notify_cancel(out_token);
  }

  return v0;
}

BOOL IsIAPDaemonConnection(uint64_t a1)
{
  if (a1)
  {
    v1 = __iapd_connection == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1 && __iapd_connection == a1;
}

BOOL IsIAP2DaemonConnection(uint64_t a1)
{
  if (a1)
  {
    v1 = __iap2d_connection == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1 && __iap2d_connection == a1;
}

uint64_t GetIAPTransportDaemonConnection(void)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAPTransportDaemonConnection = _GetIAPTransportDaemonConnection();
  pthread_mutex_unlock(&__iapConnectionMutex);
  return IAPTransportDaemonConnection;
}

uint64_t _GetIAPTransportDaemonConnection(void)
{
  if (__hasSandbox(nsIaptransportdServiceName))
  {
    hasEntitlement = 1;
  }

  else
  {
    hasEntitlement = __hasEntitlement(nsIaptransportdServiceName);
  }

  if (hasEntitlement && !__iaptransportd_connection)
  {
    v1 = __iaptransportdConnectionQ;
    if (!__iaptransportdConnectionQ)
    {
      v1 = dispatch_queue_create("iaptransportdConnectionQueue", 0);
      __iaptransportdConnectionQ = v1;
    }

    mach_service = xpc_connection_create_mach_service("com.apple.iaptransportd.xpc", v1, 0);
    __iaptransportd_connection = mach_service;
    if (mach_service)
    {
      xpc_connection_set_event_handler(mach_service, &__block_literal_global_140);
      xpc_connection_resume(__iaptransportd_connection);
    }

    else
    {
      NSLog(&cfstr_NoConnectionMa.isa);
      dispatch_release(__iaptransportdConnectionQ);
      __iaptransportdConnectionQ = 0;
    }
  }

  return __iaptransportd_connection;
}

void *RetainIAPTransportDaemonConnection(void)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAPTransportDaemonConnection = _GetIAPTransportDaemonConnection();
  v1 = IAPTransportDaemonConnection;
  if (IAPTransportDaemonConnection)
  {
    xpc_retain(IAPTransportDaemonConnection);
  }

  pthread_mutex_unlock(&__iapConnectionMutex);
  return v1;
}

uint64_t GetIAPConnectionQueue(void)
{
  if (GetIAPConnectionQueue(void)::once != -1)
  {
    GetIAPConnectionQueue();
  }

  return __iAPConnectionQ;
}

uint64_t GetIAPDaemonConnection(void)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAPDaemonConnection = _GetIAPDaemonConnection();
  pthread_mutex_unlock(&__iapConnectionMutex);
  return IAPDaemonConnection;
}

uint64_t _GetIAPDaemonConnection(void)
{
  if (__hasSandbox(nsIapdServiceName))
  {
    hasEntitlement = 1;
  }

  else
  {
    hasEntitlement = __hasEntitlement(nsIapdServiceName);
  }

  if (hasEntitlement && !__iapd_connection)
  {
    if (IAPDHasLaunched())
    {
      if (GetIAPConnectionQueue(void)::once != -1)
      {
        GetIAPConnectionQueue();
      }

      mach_service = xpc_connection_create_mach_service("com.apple.iapd.xpc", __iAPConnectionQ, 0);
      __iapd_connection = mach_service;
      if (mach_service)
      {
        xpc_connection_set_event_handler(mach_service, &__block_literal_global_171);
        xpc_connection_resume(__iapd_connection);
      }

      else
      {
        NSLog(&cfstr_NoConnectionTo.isa);
      }
    }

    else
    {
      NSLog(&cfstr_IapdNotLaunche.isa);
    }
  }

  return __iapd_connection;
}

uint64_t GetIAP2DaemonConnection(void)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAP2DaemonConnection = _GetIAP2DaemonConnection();
  pthread_mutex_unlock(&__iapConnectionMutex);
  return IAP2DaemonConnection;
}

uint64_t GetConnectionToIAPTransportDaemon()
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAPTransportDaemonConnection = _GetIAPTransportDaemonConnection();
  pthread_mutex_unlock(&__iapConnectionMutex);
  return IAPTransportDaemonConnection;
}

uint64_t GetConnectionToIAPDaemon()
{
  if (!IAPDHasLaunched())
  {
    return 0;
  }

  pthread_mutex_lock(&__iapConnectionMutex);
  IAPDaemonConnection = _GetIAPDaemonConnection();
  pthread_mutex_unlock(&__iapConnectionMutex);
  return IAPDaemonConnection;
}

uint64_t GetConnectionToIAP2Daemon()
{
  if (!IAP2DHasLaunched())
  {
    return 0;
  }

  pthread_mutex_lock(&__iapConnectionMutex);
  IAP2DaemonConnection = _GetIAP2DaemonConnection();
  pthread_mutex_unlock(&__iapConnectionMutex);
  return IAP2DaemonConnection;
}

_xpc_connection_s *GetConnectionToIAPDaemonOwningPhysicalConnector(_DWORD *a1)
{
  if (a1)
  {
    *a1 = 2;
  }

  ConnectionToIAPDaemon = GetConnectionToIAPDaemon();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "requestType", "OwnsPhysicalConnector");
  if (ConnectionToIAPDaemon)
  {
    NSLog(&cfstr_SSendXpcMessag.isa, "GetConnectionToIAPDaemonOwningPhysicalConnector", "OwnsPhysicalConnector");
    v4 = _IAPSendXPCMessageWithTimeout(ConnectionToIAPDaemon, v3, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x259C17370]();
      if (v5 == MEMORY[0x277D863F8] && v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapdPhysicalco.isa);
      }

      else if (v5 == MEMORY[0x277D863F0] && v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapdPhysicalco_0.isa);
      }

      else if (v6 == MEMORY[0x277D86468] && xpc_dictionary_get_BOOL(v5, "result"))
      {
        xpc_release(v5);
        xpc_release(v3);
        if (a1)
        {
          *a1 = 0;
        }

        return ConnectionToIAPDaemon;
      }

      xpc_release(v5);
    }

    else
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "GetConnectionToIAPDaemonOwningPhysicalConnector", 1002);
    }
  }

  ConnectionToIAPDaemon = GetConnectionToIAP2Daemon();
  if (!ConnectionToIAPDaemon)
  {
LABEL_39:
    xpc_release(v3);
    return ConnectionToIAPDaemon;
  }

  NSLog(&cfstr_SSendXpcMessag_0.isa, "GetConnectionToIAPDaemonOwningPhysicalConnector", "OwnsPhysicalConnector");
  v9 = _IAPSendXPCMessageWithTimeout(ConnectionToIAPDaemon, v3, __IAPAppSendXPCMessageDefaultTimeoutMs);
  if (!v9)
  {
    NSLog(&cfstr_SDNoReplyRecei.isa, "GetConnectionToIAPDaemonOwningPhysicalConnector", 1044);
    goto LABEL_39;
  }

  v10 = v9;
  v11 = MEMORY[0x259C17370]();
  if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iap2dPhysicalc.isa);
LABEL_38:
    xpc_release(v10);
    goto LABEL_39;
  }

  if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iap2dPhysicalc_0.isa);
    goto LABEL_38;
  }

  if (v11 != MEMORY[0x277D86468] || !xpc_dictionary_get_BOOL(v10, "result"))
  {
    goto LABEL_38;
  }

  xpc_release(v10);
  xpc_release(v3);
  if (a1)
  {
    *a1 = 1;
  }

  return ConnectionToIAPDaemon;
}

uint64_t GetConnectionToIAPDaemonWithConnectionID(int a1, int *a2)
{
  if (a2)
  {
    *a2 = 2;
  }

  if ((~a1 & 0x1000000) == 0)
  {
    result = GetConnectionToIAPDaemon();
    if (!a2)
    {
      return result;
    }

    v4 = 0;
LABEL_9:
    *a2 = v4;
    return result;
  }

  if ((~a1 & 0x2000000) == 0)
  {
    result = GetConnectionToIAP2Daemon();
    if (!a2)
    {
      return result;
    }

    v4 = 1;
    goto LABEL_9;
  }

  return 0;
}

_xpc_connection_s *GetConnectionToIAPDaemonByCheckingConnectionID(unsigned int a1, _DWORD *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "requestType", "OwnsConnectionID");
  xpc_dictionary_set_uint64(v4, "connectionID", a1);
  if (a2)
  {
    *a2 = 2;
  }

  if ((a1 & 0x1000000) == 0x1000000)
  {
    ConnectionToIAPDaemon = GetConnectionToIAPDaemon();
  }

  else
  {
    if ((~a1 & 0x2000000) != 0)
    {
      v6 = 0;
      goto LABEL_31;
    }

    ConnectionToIAPDaemon = GetConnectionToIAP2Daemon();
  }

  v6 = ConnectionToIAPDaemon;
  if (ConnectionToIAPDaemon)
  {
    NSLog(&cfstr_SSendXpcMessag.isa, "GetConnectionToIAPDaemonByCheckingConnectionID", "OwnsConnectionID");
    v7 = _IAPSendXPCMessageWithTimeout(v6, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x259C17370]();
      if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapdGetconnect.isa);
      }

      else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapdGetconnect_0.isa);
      }

      else if (v9 == MEMORY[0x277D86468])
      {
        v12 = xpc_dictionary_get_BOOL(v8, "result");
        if (v12)
        {
          v13 = v6;
        }

        else
        {
          v13 = 0;
        }

        if (!a2 || !v12)
        {
          goto LABEL_30;
        }

        if ((a1 & 0x1000000) == 0x1000000)
        {
          *a2 = 0;
        }

        else if ((~a1 & 0x2000000) == 0)
        {
          *a2 = 1;
        }
      }

      v13 = v6;
LABEL_30:
      xpc_release(v8);
      v6 = v13;
      goto LABEL_31;
    }

    NSLog(&cfstr_SDNoReplyRecei.isa, "GetConnectionToIAPDaemonByCheckingConnectionID", 1151);
  }

LABEL_31:
  xpc_release(v4);
  return v6;
}

void *RetainIAPDaemonConnection(void)
{
  pthread_mutex_lock(&__iapConnectionMutex);
  IAPDaemonConnection = _GetIAPDaemonConnection();
  v1 = IAPDaemonConnection;
  if (IAPDaemonConnection)
  {
    xpc_retain(IAPDaemonConnection);
  }

  pthread_mutex_unlock(&__iapConnectionMutex);
  return v1;
}

_xpc_connection_s *RetainConnectionToIAPDaemonOwningPhysicalConnector(_DWORD *a1)
{
  if (a1)
  {
    *a1 = 2;
  }

  if (IAPDHasLaunched())
  {
    v2 = RetainIAPDaemonConnection();
  }

  else
  {
    v2 = 0;
  }

  NSLog(&cfstr_SIapdConnectio.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", v2 != 0);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "requestType", "OwnsPhysicalConnector");
  if (v2)
  {
    NSLog(&cfstr_SSendXpcMessag.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", "OwnsPhysicalConnector");
    v4 = _IAPSendXPCMessageWithTimeout(v2, v3, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x259C17370]();
      if (v5 == MEMORY[0x277D863F8] && v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapdPhysicalco.isa, v13, v15);
      }

      else if (v5 == MEMORY[0x277D863F0] && v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_IapdPhysicalco_0.isa, v13, v15);
      }

      else if (v6 == MEMORY[0x277D86468])
      {
        if (xpc_dictionary_get_BOOL(v5, "result"))
        {
          xpc_release(v5);
          xpc_release(v3);
          if (a1)
          {
            v11 = 0;
            *a1 = 0;
LABEL_50:
            NSLog(&cfstr_SDaemontypeDCo.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", v11, 1);
            return v2;
          }

LABEL_49:
          v11 = 0xFFFFFFFFLL;
          goto LABEL_50;
        }
      }

      else if (v6 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1273);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1277, v6);
      }

      xpc_release(v5);
    }

    else
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1283);
    }
  }

  else
  {
    NSLog(&cfstr_SDNoConnection.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1288);
  }

  if (!IAP2DHasLaunched())
  {
    NSLog(&cfstr_SIap2dConnecti.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 0);
    goto LABEL_27;
  }

  v2 = RetainIAP2DaemonConnection();
  NSLog(&cfstr_SIap2dConnecti.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", v2 != 0);
  if (!v2)
  {
LABEL_27:
    NSLog(&cfstr_SDNoConnection_0.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1346);
    v2 = 0;
    goto LABEL_47;
  }

  NSLog(&cfstr_SSendXpcMessag_0.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", "OwnsPhysicalConnector");
  v8 = _IAPSendXPCMessageWithTimeout(v2, v3, __IAPAppSendXPCMessageDefaultTimeoutMs);
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x259C17370]();
    if (v9 == MEMORY[0x277D863F8] && v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iap2dPhysicalc.isa, v14, v16, v17);
      goto LABEL_46;
    }

    if (v9 == MEMORY[0x277D863F0] && v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iap2dPhysicalc_0.isa, v14, v16, v17);
      goto LABEL_46;
    }

    if (v10 != MEMORY[0x277D86468])
    {
      if (v10 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1331, v17);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1335, v10);
      }

      goto LABEL_46;
    }

    if (!xpc_dictionary_get_BOOL(v9, "result"))
    {
LABEL_46:
      xpc_release(v9);
      goto LABEL_47;
    }

    xpc_release(v9);
    xpc_release(v3);
    if (a1)
    {
      v11 = 1;
      *a1 = 1;
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  NSLog(&cfstr_SDNoReplyRecei.isa, "RetainConnectionToIAPDaemonOwningPhysicalConnector", 1341);
LABEL_47:
  xpc_release(v3);
  return v2;
}

void *RetainConnectionToIAPDaemonWithConnectionID(int a1, int *a2)
{
  if (a2)
  {
    *a2 = 2;
  }

  if ((~a1 & 0x1000000) == 0)
  {
    if (IAPDHasLaunched())
    {
      result = RetainIAPDaemonConnection();
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!a2)
      {
        return result;
      }
    }

    v4 = 0;
LABEL_16:
    *a2 = v4;
    return result;
  }

  if ((~a1 & 0x2000000) != 0)
  {
    return 0;
  }

  if (!IAP2DHasLaunched())
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_15;
  }

  result = RetainIAP2DaemonConnection();
  if (a2)
  {
LABEL_15:
    v4 = 1;
    goto LABEL_16;
  }

  return result;
}

void *RetainConnectionToIAPDOnlyWithConnectionID(int a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 2;
  }

  if ((~a1 & 0x1000000) != 0)
  {
    return 0;
  }

  if (!IAPDHasLaunched())
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = RetainIAPDaemonConnection();
  if (a2)
  {
LABEL_9:
    *a2 = 0;
  }

  return result;
}

_xpc_connection_s *RetainConnectionToIAPDaemonByCheckingConnectionID(uint64_t a1, _DWORD *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "requestType", "OwnsConnectionID");
  xpc_dictionary_set_uint64(v4, "connectionID", a1);
  if (a2)
  {
    *a2 = 2;
  }

  if ((a1 & 0x1000000) == 0x1000000)
  {
    if (IAPDHasLaunched())
    {
      v5 = RetainIAPDaemonConnection();
LABEL_9:
      v6 = v5;
      goto LABEL_11;
    }
  }

  else if ((~a1 & 0x2000000) == 0 && IAP2DHasLaunched())
  {
    v5 = RetainIAP2DaemonConnection();
    goto LABEL_9;
  }

  v6 = 0;
LABEL_11:
  NSLog(&cfstr_SConnectionidX.isa, "RetainConnectionToIAPDaemonByCheckingConnectionID", a1, a1, 0x1000000, 0x2000000, v6 != 0);
  if (!v6)
  {
    goto LABEL_33;
  }

  NSLog(&cfstr_SSendXpcMessag.isa, "RetainConnectionToIAPDaemonByCheckingConnectionID", "OwnsConnectionID");
  v7 = _IAPSendXPCMessageWithTimeout(v6, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
  if (!v7)
  {
    NSLog(&cfstr_SDNoReplyRecei.isa, "RetainConnectionToIAPDaemonByCheckingConnectionID", 1484);
    goto LABEL_33;
  }

  v8 = v7;
  v9 = MEMORY[0x259C17370]();
  if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_IapdRetainconn.isa, v14, v15, v16);
  }

  else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_IapdRetainconn_0.isa, v14, v15, v16);
  }

  else if (v9 == MEMORY[0x277D86468])
  {
    v10 = xpc_dictionary_get_BOOL(v8, "result");
    if (v10)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    if (!a2 || !v10)
    {
      goto LABEL_32;
    }

    if ((a1 & 0x1000000) == 0x1000000)
    {
      *a2 = 0;
    }

    else if ((~a1 & 0x2000000) == 0)
    {
      *a2 = 1;
    }
  }

  else if (v9 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_SDUnhandledRep.isa, "RetainConnectionToIAPDaemonByCheckingConnectionID", 1474, v16);
  }

  else
  {
    NSLog(&cfstr_SDUnknownReply.isa, "RetainConnectionToIAPDaemonByCheckingConnectionID", 1478, v9);
  }

  v11 = v6;
LABEL_32:
  xpc_release(v8);
  v6 = v11;
LABEL_33:
  xpc_release(v4);
  if (a2)
  {
    v12 = *a2;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  NSLog(&cfstr_SConnectionidD.isa, "RetainConnectionToIAPDaemonByCheckingConnectionID", a1, v6 != 0, v12);
  return v6;
}

void __invalidateIAPDServerPort(__CFMachPort *a1, void *a2)
{
  pthread_mutex_lock(&__iapdServerPortLock);
  mach_port_deallocate(*MEMORY[0x277D85F48], __iapdServerPort);
  __iapdServerPort = 0;
  CFRelease(__iapdServerMachPort);
  __iapdServerMachPort = 0;
  pthread_mutex_unlock(&__iapdServerPortLock);
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kIAPDServerDiedNotification", 0, 0, 1u);
}

BOOL __hasSandbox(NSString *a1)
{
  getpid();
  v2 = *MEMORY[0x277D861D8];
  [(NSString *)a1 UTF8String];
  v3 = sandbox_check();
  if (v3)
  {
    syslog(6, "%s: Client not sandboxed to %@", "__hasSandbox", a1);
    v4 = "NOT ";
  }

  else
  {
    v4 = "";
  }

  syslog(7, "%s: Client %ssandboxed to %@", "__hasSandbox", v4, a1);
  return v3 == 0;
}

uint64_t __hasEntitlement(const NSString *a1)
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  v3 = v2;
  if (!v2)
  {
    syslog(4, "%s: Unable to create self task", "__hasEntitlement");
LABEL_6:
    v5 = "NOT ";
    goto LABEL_7;
  }

  v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.security.exception.mach-lookup.global-name", 0);
  CFRelease(v3);
  if (([v4 containsObject:a1] & 1) == 0)
  {
    syslog(6, "%s: Client not entitled to %@", "__hasEntitlement", a1);
    v3 = 0;
    goto LABEL_6;
  }

  v5 = "";
  v3 = 1;
LABEL_7:
  syslog(7, "%s: Client %sentitled to %@", "__hasEntitlement", v5, a1);
  return v3;
}

void ___ZL32_GetIAPTransportDaemonConnectionv_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x259C17370](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0] || a2 == MEMORY[0x277D863F8])
    {
      pthread_mutex_lock(&__iapConnectionMutex);
      if (__iaptransportd_connection)
      {
        NSLog(&cfstr_SCleanupConnec.isa, "_xpc_iaptransportd_handle_message");
        xpc_connection_cancel(__iaptransportd_connection);
        xpc_release(__iaptransportd_connection);
        __iaptransportd_connection = 0;
        NSLog(&cfstr_SNotifyIaptran.isa, "_xpc_iaptransportd_handle_message");
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(LocalCenter, @"kIAPTransportServerDiedNotification", 0, 0, 1u);
      }

      pthread_mutex_unlock(&__iapConnectionMutex);
    }
  }

  else if (MEMORY[0x259C17370](a2) == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(a2, "requestType");
    if (!string)
    {
      NSLog(&cfstr_RequesttypeNot.isa);
      string = "<nil>";
    }

    if (!strcmp(string, "transmitData"))
    {
      length = 0;
      data = xpc_dictionary_get_data(a2, "data", &length);
      v5 = xpc_dictionary_get_string(a2, "IAPClientPortUUIDStr");
      if (v5 && data)
      {
        v6 = v5;
        v7 = +[IAPClientPortManager sharedInstance];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        [(IAPClientPortManager *)v7 sendData:v8 data:data length:length];
      }

      else
      {
        NSLog(&cfstr_XpcIaptranspor_0.isa);
      }
    }
  }
}

void ___ZL23_GetIAPDaemonConnectionv_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x259C17370](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0] || a2 == MEMORY[0x277D863F8])
    {
      if (a2 == MEMORY[0x277D863F0])
      {
        NSLog(&cfstr_SConnectionInt.isa, "_xpc_iapd_handle_message");
        LODWORD(length) = 0;
        if (!notify_register_check("com.apple.iapd.notify.availability", &length))
        {
          state64 = 0;
          notify_get_state(length, &state64);
          if (state64 == 1)
          {
            notify_set_state(length, 0);
            notify_post("com.apple.iapd.notify.availability");
          }

          notify_cancel(length);
        }
      }

      else
      {
        NSLog(&cfstr_SConnectionInv.isa, "_xpc_iapd_handle_message");
      }

      pthread_mutex_lock(&__iapConnectionMutex);
      if (__iapd_connection)
      {
        NSLog(&cfstr_SCleanupConnec.isa, "_xpc_iapd_handle_message");
        xpc_connection_cancel(__iapd_connection);
        xpc_release(__iapd_connection);
        __iapd_connection = 0;
        dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_182);
      }

      pthread_mutex_unlock(&__iapConnectionMutex);
    }
  }

  else
  {
    if (MEMORY[0x259C17370](a2) != MEMORY[0x277D86468])
    {
      return;
    }

    string = xpc_dictionary_get_string(a2, "requestType");
    if (!string)
    {
      NSLog(&cfstr_RequesttypeNot.isa);
      string = "<nil>";
    }

    if (strcmp(string, "eaNotifyAppOfSessionClose"))
    {
      if (!strcmp(string, "EAProtocolAccessoryConnected"))
      {
        v32 = 0;
        length = 0;
        data = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:&v32];
        state64 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v7 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_2;
      }

      else if (!strcmp(string, "EAProtocolAccessoryDisconnected"))
      {
        v32 = 0;
        length = 0;
        v13 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:length];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v32];
        state64 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v7 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_3;
      }

      else if (!strcmp(string, "EAProtocolAccessoryReconnected"))
      {
        v32 = 0;
        length = 0;
        v15 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
        v16 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:length];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:0 error:&v32];
        state64 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v7 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_4;
      }

      else
      {
        if (!strcmp(string, "kXPCACCNotificationKey"))
        {
          NSLog(&cfstr_SHandlingKxpca.isa, "_xpc_iapd_handle_message");
          v17 = xpc_dictionary_get_string(a2, "kXPCACCNotificationNameKey");
          if (!v17)
          {
            NSLog(&cfstr_SReceivedNilAr.isa, "_xpc_iapd_handle_message", 0);
            return;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
          if (!v18)
          {
            NSLog(&cfstr_SErrorWhenConv.isa, "_xpc_iapd_handle_message");
            return;
          }

          v19 = v18;
          NSLog(&cfstr_SReceivedNotif.isa, "_xpc_iapd_handle_message", v18);
          length = 0;
          v20 = xpc_dictionary_get_data(a2, "kXPCACCNotificationPlistData", &length);
          if (v20)
          {
            v21 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:length];
            if (!v21)
            {
              NSLog(&cfstr_SErrorWhenCrea_0.isa, "_xpc_iapd_handle_message", v25);
              return;
            }

            v32 = 0;
            v22 = [MEMORY[0x277CCAC58] propertyListWithData:v21 options:0 format:0 error:&v32];
            if (!v22)
            {
              NSLog(&cfstr_SErrorWhenCrea.isa, "_xpc_iapd_handle_message", [v32 localizedDescription]);
              return;
            }

            state64 = MEMORY[0x277D85DD0];
            v27 = 3221225472;
            v28 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_5;
            v29 = &unk_279780DB0;
            v30 = v19;
            v31 = v22;
          }

          else
          {
            state64 = MEMORY[0x277D85DD0];
            v27 = 3221225472;
            v28 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_6;
            v29 = &unk_279780D88;
            v30 = v19;
          }

          goto LABEL_41;
        }

        if (!strcmp(string, "EAProtocolAccessoryUpdated"))
        {
          v32 = 0;
          length = 0;
          v23 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
          v24 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:length];
          v6 = [MEMORY[0x277CCAC58] propertyListWithData:v24 options:0 format:0 error:&v32];
          state64 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v7 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_7;
        }

        else
        {
          if (strcmp(string, "EAProtocolAccessoryPortPropertyChanged"))
          {
            return;
          }

          v32 = 0;
          length = 0;
          v4 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
          v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:length];
          v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v32];
          state64 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v7 = ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_8;
        }
      }

      v28 = v7;
      v29 = &unk_279780D88;
      v30 = v6;
LABEL_41:
      dispatch_async(MEMORY[0x277D85CD0], &state64);
      return;
    }

    uint64 = xpc_dictionary_get_uint64(a2, "connectionID");
    v10 = xpc_dictionary_get_uint64(a2, "eaSessionID");

    IAPAppNotifyAppOfSessionClose(uint64, v10);
  }
}

void ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke()
{
  NSLog(&cfstr_SNotifyIapdSer.isa, "_xpc_iapd_handle_message_block_invoke");
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kIAPDServerDiedNotification", 0, 0, 1u);
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryDidConnectNotification" object:0 userInfo:v3];
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryDidDisconnectNotification" object:0 userInfo:v3];
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppReconnectAccessory" object:0 userInfo:v3];
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_5(uint64_t a1)
{
  NSLog(&cfstr_PostingNotific.isa, *(a1 + 32), *(a1 + 40));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 postNotificationName:v3 object:0 userInfo:v4];
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_6(uint64_t a1)
{
  NSLog(&cfstr_PostingNotific_0.isa, *(a1 + 32));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:v3 object:0 userInfo:0];
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryUpdatedNotification" object:0 userInfo:v3];
}

uint64_t ___ZL24_xpc_iapd_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryPortPropertyChangedNotification" object:0 userInfo:v3];
}

void ___ZL24_GetIAP2DaemonConnectionv_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x259C17370](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0] || a2 == MEMORY[0x277D863F8])
    {
      if (a2 == MEMORY[0x277D863F0])
      {
        NSLog(&cfstr_SConnectionInt.isa, "_xpc_iap2d_handle_message");
        LODWORD(length) = 0;
        if (!notify_register_check("com.apple.iap2d.notify.availability", &length))
        {
          state64 = 0;
          notify_get_state(length, &state64);
          if (state64 == 1)
          {
            notify_set_state(length, 0);
            notify_post("com.apple.iap2d.notify.availability");
          }

          notify_cancel(length);
        }
      }

      else
      {
        NSLog(&cfstr_SConnectionInv.isa, "_xpc_iap2d_handle_message");
      }

      pthread_mutex_lock(&__iapConnectionMutex);
      if (__iap2d_connection)
      {
        NSLog(&cfstr_SCleanupConnec.isa, "_xpc_iap2d_handle_message");
        xpc_connection_cancel(__iap2d_connection);
        xpc_release(__iap2d_connection);
        __iap2d_connection = 0;
        dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_219);
      }

      pthread_mutex_unlock(&__iapConnectionMutex);
    }
  }

  else
  {
    if (MEMORY[0x259C17370](a2) != MEMORY[0x277D86468])
    {
      return;
    }

    string = xpc_dictionary_get_string(a2, "requestType");
    if (!string)
    {
      NSLog(&cfstr_RequesttypeNot.isa);
      string = "<nil>";
    }

    if (strcmp(string, "eaNotifyAppOfSessionClose"))
    {
      if (!strcmp(string, "EAProtocolAccessoryConnected"))
      {
        v32 = 0;
        length = 0;
        data = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:&v32];
        state64 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v7 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_2;
      }

      else if (!strcmp(string, "EAProtocolAccessoryDisconnected"))
      {
        v32 = 0;
        length = 0;
        v13 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:length];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v32];
        state64 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v7 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_3;
      }

      else if (!strcmp(string, "EAProtocolAccessoryReconnected"))
      {
        v32 = 0;
        length = 0;
        v15 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
        v16 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:length];
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:0 error:&v32];
        state64 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v7 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_4;
      }

      else
      {
        if (!strcmp(string, "kXPCACCNotificationKey"))
        {
          NSLog(&cfstr_SHandlingKxpca.isa, "_xpc_iap2d_handle_message");
          v17 = xpc_dictionary_get_string(a2, "kXPCACCNotificationNameKey");
          if (!v17)
          {
            NSLog(&cfstr_SReceivedNilAr.isa, "_xpc_iap2d_handle_message", 0);
            return;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
          if (!v18)
          {
            NSLog(&cfstr_SErrorWhenConv.isa, "_xpc_iap2d_handle_message");
            return;
          }

          v19 = v18;
          NSLog(&cfstr_SReceivedNotif.isa, "_xpc_iap2d_handle_message", v18);
          length = 0;
          v20 = xpc_dictionary_get_data(a2, "kXPCACCNotificationPlistData", &length);
          if (v20)
          {
            v21 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:length];
            if (!v21)
            {
              NSLog(&cfstr_SErrorWhenCrea_0.isa, "_xpc_iap2d_handle_message", v25);
              return;
            }

            v32 = 0;
            v22 = [MEMORY[0x277CCAC58] propertyListWithData:v21 options:0 format:0 error:&v32];
            if (!v22)
            {
              NSLog(&cfstr_SErrorWhenCrea.isa, "_xpc_iap2d_handle_message", [v32 localizedDescription]);
              return;
            }

            state64 = MEMORY[0x277D85DD0];
            v27 = 3221225472;
            v28 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_5;
            v29 = &unk_279780DB0;
            v30 = v19;
            v31 = v22;
          }

          else
          {
            state64 = MEMORY[0x277D85DD0];
            v27 = 3221225472;
            v28 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_6;
            v29 = &unk_279780D88;
            v30 = v19;
          }

          goto LABEL_41;
        }

        if (!strcmp(string, "EAProtocolAccessoryUpdated"))
        {
          v32 = 0;
          length = 0;
          v23 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
          v24 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:length];
          v6 = [MEMORY[0x277CCAC58] propertyListWithData:v24 options:0 format:0 error:&v32];
          state64 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v7 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_7;
        }

        else
        {
          if (strcmp(string, "EAProtocolAccessoryPortPropertyChanged"))
          {
            return;
          }

          v32 = 0;
          length = 0;
          v4 = xpc_dictionary_get_data(a2, "EAProtocolAccessoryPlistData", &length);
          v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:length];
          v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v32];
          state64 = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v7 = ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_8;
        }
      }

      v28 = v7;
      v29 = &unk_279780D88;
      v30 = v6;
LABEL_41:
      dispatch_async(MEMORY[0x277D85CD0], &state64);
      return;
    }

    uint64 = xpc_dictionary_get_uint64(a2, "connectionID");
    v10 = xpc_dictionary_get_uint64(a2, "eaSessionID");

    IAPAppNotifyAppOfSessionClose(uint64, v10);
  }
}

void ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke()
{
  NSLog(&cfstr_SNotifyIap2dSe.isa, "_xpc_iap2d_handle_message_block_invoke");
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kIAP2ServerDiedNotification", 0, 0, 1u);
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryDidConnectNotification" object:0 userInfo:v3];
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryDidDisconnectNotification" object:0 userInfo:v3];
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppReconnectAccessory" object:0 userInfo:v3];
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_5(uint64_t a1)
{
  NSLog(&cfstr_PostingNotific.isa, *(a1 + 32), *(a1 + 40));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 postNotificationName:v3 object:0 userInfo:v4];
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_6(uint64_t a1)
{
  NSLog(&cfstr_PostingNotific_0.isa, *(a1 + 32));
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:v3 object:0 userInfo:0];
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryUpdatedNotification" object:0 userInfo:v3];
}

uint64_t ___ZL25_xpc_iap2d_handle_messagePU24objcproto13OS_xpc_object8NSObject_block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"IAPAppAccessoryPortPropertyChangedNotification" object:0 userInfo:v3];
}

void IAPTimeSyncSetParams(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, 0);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    xpc_dictionary_set_uint64(v8, "timeSyncOffsetUncertaintyThresholdStr", a2);
    xpc_dictionary_set_uint64(v8, "timeSyncOffsetMeasurementIntervalStr", a3);
    xpc_dictionary_set_string(v8, "requestType", "timeSyncParamStr");
    v9 = IAPAppSendXPCMessageWithTimeout(v7, v8, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x259C17370]();
      if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_Iaptimesyncset.isa);
      }

      else if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_Iaptimesyncset_0.isa);
      }

      else if (v11 == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_BOOL(v10, "result"))
        {
          NSLog(&cfstr_ErrorSFailed.isa, "IAPTimeSyncSetParams");
        }
      }

      else if (v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPTimeSyncSetParams", 50);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPTimeSyncSetParams", 54, v11);
      }

      xpc_release(v10);
    }

    else
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPTimeSyncSetParams", 60);
    }

    xpc_release(v8);

    xpc_release(v7);
  }
}

void IAPTimeSyncGetInfo(unsigned int a1, NSObject *a2, uint64_t a3)
{
  v6 = RetainConnectionToIAP2Daemon();
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "requestType", "timeSyncInfoStr");
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    dispatch_retain(a2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __IAPTimeSyncGetInfo_block_invoke;
    v9[3] = &unk_279780E00;
    v9[4] = a2;
    v9[5] = a3;
    IAPAppSendXPCMessageReplyWithTimeout(v7, v8, a2, __IAPAppSendXPCMessageDefaultTimeoutMs, v9);
    xpc_release(v8);
    xpc_release(v7);
  }
}

void __IAPTimeSyncGetInfo_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x259C17370](a2);
  if (a2 == MEMORY[0x277D863F8] && v4 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iaptimesyncget.isa);
  }

  else if (a2 == MEMORY[0x277D863F0] && v4 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iaptimesyncget_0.isa);
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_BOOL(a2, "result"))
    {
      xpc_retain(a2);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __IAPTimeSyncGetInfo_block_invoke_2;
      block[3] = &unk_279780DD8;
      block[4] = a2;
      dispatch_async(*(a1 + 32), block);
    }
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_SDUnhandledRep.isa, "IAPTimeSyncGetInfo_block_invoke", 113);
  }

  else
  {
    NSLog(&cfstr_SDUnknownReply.isa, "IAPTimeSyncGetInfo_block_invoke", 117, v4);
  }
}

void __IAPTimeSyncGetInfo_block_invoke_2(uint64_t a1)
{
  xpc_dictionary_get_value(*(a1 + 32), "timeSyncInfoDictionaryStr");
  v2 = _CFXPCCreateCFObjectFromXPCMessage();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  xpc_release(*(a1 + 32));
  v4 = *(a1 + 40);

  dispatch_release(v4);
}

void IAPTimeSyncResetKalmanFilter(unsigned int a1)
{
  v2 = RetainConnectionToIAPDaemonWithConnectionID(a1, 0);
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "connectionID", a1);
    xpc_dictionary_set_string(v4, "requestType", "timeSyncResetKalmanFilterStr");
    v5 = IAPAppSendXPCMessageWithTimeout(v3, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x259C17370]();
      if (v6 == MEMORY[0x277D863F8] && v7 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_Iaptimesyncres.isa);
      }

      else if (v6 == MEMORY[0x277D863F0] && v7 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_Iaptimesyncres_0.isa);
      }

      else if (v7 == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_BOOL(v6, "result"))
        {
          NSLog(&cfstr_ErrorSFailed.isa, "IAPTimeSyncResetKalmanFilter");
        }
      }

      else if (v7 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPTimeSyncResetKalmanFilter", 156);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPTimeSyncResetKalmanFilter", 160, v7);
      }

      xpc_release(v6);
    }

    else
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPTimeSyncResetKalmanFilter", 166);
    }

    xpc_release(v4);

    xpc_release(v3);
  }
}

uint64_t IAPCameraSendCameraControlMessage(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v12 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v12);
  if (v6)
  {
    v7 = v6;
    if (a3 <= 4)
    {
      v8 = off_279780E60[a3];
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v9, "requestType", v8);
      xpc_dictionary_set_uint64(v9, "connectionID", a1);
      v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:0];
      xpc_dictionary_set_data(v9, "IAPCameraIds", [v10 bytes], objc_msgSend(v10, "length"));
      xpc_connection_send_message(v7, v9);
      xpc_release(v9);
    }

    xpc_release(v7);
  }

  return 0;
}

uint64_t IAPCameraSendStartLivePreview(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v11 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v11);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "requestType", "IAPCameraSendStartLivePreview");
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:0];
    xpc_dictionary_set_data(v8, "IAPCameraIds", [v9 bytes], objc_msgSend(v9, "length"));
    xpc_dictionary_set_uint64(v8, "IAPCameraLivePreviewFormatIndexStr", a3);
    xpc_connection_send_message(v7, v8);
    xpc_release(v8);
    xpc_release(v7);
  }

  return 0;
}

uint64_t IAPCameraSendStartCameraUpdates(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 2;
  v8 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v15);
  if (v8)
  {
    v9 = v8;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, "requestType", "IAPCameraSendStartCameraUpdates");
    xpc_dictionary_set_uint64(v10, "connectionID", a1);
    v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:0];
    xpc_dictionary_set_data(v10, "IAPCameraIds", [v11 bytes], objc_msgSend(v11, "length"));
    v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:0];
    xpc_dictionary_set_data(v10, "IAPCameraProperties", [v12 bytes], objc_msgSend(v12, "length"));
    v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:a4 format:200 options:0 error:0];
    xpc_dictionary_set_data(v10, "IAPCameraCapabilities", [v13 bytes], objc_msgSend(v13, "length"));
    xpc_connection_send_message(v9, v10);
    xpc_release(v10);
    xpc_release(v9);
  }

  return 0;
}

uint64_t IAPCameraSendSetCameraProperties(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v11 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v11);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "requestType", "IAPCameraSendSetCameraProperties");
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    xpc_dictionary_set_uint64(v8, "IAPCameraId", a2);
    v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:0];
    xpc_dictionary_set_data(v8, "IAPCameraProperties", [v9 bytes], objc_msgSend(v9, "length"));
    xpc_connection_send_message(v7, v8);
    xpc_release(v8);
    xpc_release(v7);
  }

  return 0;
}

BOOL IAPAccessoryEQSelectEqualizerAtIndex(unsigned int a1, unsigned int a2)
{
  if (IAPDHasLaunched())
  {
    v4 = RetainConnectionToIAPDaemon();
    if (v4)
    {
      v5 = v4;
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v6, "connectionID", a1);
      xpc_dictionary_set_uint64(v6, "eqIndex", a2);
      xpc_dictionary_set_string(v6, "requestType", "IAPAccessoryEQSelectEqualizerAtIndex");
      v7 = IAPAppSendXPCMessageWithTimeout(v5, v6, __IAPAppSendXPCMessageDefaultTimeoutMs);
      if (!v7)
      {
        NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAccessoryEQSelectEqualizerAtIndex", 60);
        v12 = 0;
LABEL_21:
        xpc_release(v6);
        xpc_release(v5);
        return v12;
      }

      v8 = v7;
      v9 = MEMORY[0x259C17370]();
      if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_Iapaccessoryeq.isa);
      }

      else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_Iapaccessoryeq_0.isa);
      }

      else
      {
        if (v9 == MEMORY[0x277D86468])
        {
          v12 = xpc_dictionary_get_BOOL(v8, "result");
          NSLog(&cfstr_Iapaccessoryeq_1.isa, v12);
          goto LABEL_20;
        }

        if (v9 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_SDUnhandledRep.isa, "IAPAccessoryEQSelectEqualizerAtIndex", 50);
        }

        else
        {
          NSLog(&cfstr_SDUnknownReply.isa, "IAPAccessoryEQSelectEqualizerAtIndex", 54, v9);
        }
      }

      v12 = 0;
LABEL_20:
      xpc_release(v8);
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t IAPAudioDeviceStateChangedNotificationCallBack(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [IAPAudioCallbackInfo sharedInstance:a3];

  return [(IAPAudioCallbackInfo *)v5 _deviceStateChanged:0];
}

uint64_t AccessoryDigitalAudioNotificationCallBack(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [IAPAudioCallbackInfo sharedInstance:a3];

  return [(IAPAudioCallbackInfo *)v5 _deviceStateChanged:0];
}

uint64_t IAPAudioVolumeChangedNotificationCallBack(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [IAPAudioCallbackInfo sharedInstance:a3];

  return [(IAPAudioCallbackInfo *)v5 _volumeChanged:0];
}

uint64_t IAPAudioShouldPauseOnHeadphoneDisconnectChangedNotificationCallBack(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [IAPAudioCallbackInfo sharedInstance:a3];

  return [(IAPAudioCallbackInfo *)v5 _pauseOnHeadphoneDisconnectChanged:0];
}

uint64_t IAPAudioVolumeControlSupportChangedNotificationCallBack(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [IAPAudioCallbackInfo sharedInstance:a3];

  return [(IAPAudioCallbackInfo *)v5 _volumeControlSupportChanged:0];
}

uint64_t IAPAudioNotifyOfPlaybackStateChanged()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"IAPAudioPlaybackStateChangedNotification", 0, 0, 0);
  return 1;
}

uint64_t IAPAudioRegisterDeviceStateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo setupDeviceStateChangedCallback:"setupDeviceStateChangedCallback:withContext:andRunLoop:" withContext:a1 andRunLoop:a2, a3];

  return 1;
}

uint64_t IAPAudioUnregisterDeviceStateChangedCallback()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo clearDeviceStateChangedCallback];

  return 1;
}

id IAPAudioCopyDeviceStates()
{
  length = 0;
  v0 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (v0)
  {
    v1 = v0;
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "requestType", "IAPAudioCopyDeviceStates");
    v3 = IAPAppSendXPCMessageWithTimeout(v1, v2, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v3)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAudioCopyDeviceStates", 378);
      v8 = 0;
      goto LABEL_19;
    }

    v4 = v3;
    v5 = MEMORY[0x259C17370]();
    if (v4 == MEMORY[0x277D863F8] && v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiocopyde.isa);
    }

    else if (v4 == MEMORY[0x277D863F0] && v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiocopyde_0.isa);
    }

    else if (v5 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v4, "result"))
      {
        v11 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        data = xpc_dictionary_get_data(v4, "deviceStates", &length);
        if (data && (v13 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length]) != 0)
        {
          v14 = 0;
          v8 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:0 error:&v14];
          if (!v8)
          {
            NSLog(&cfstr_ErrorReceivedB_1.isa, length, [v14 description]);
          }
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_18;
      }
    }

    else if (v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPAudioCopyDeviceStates", 368);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPAudioCopyDeviceStates", 372, v5);
    }

    v8 = 0;
LABEL_18:
    xpc_release(v4);
LABEL_19:
    xpc_release(v2);
    xpc_release(v1);
    if (v8)
    {
      return v8;
    }
  }

  v9 = IAPWeakLinkSymbol("ACCAudioCopyDeviceStates", 6);
  if (!v9 || (v8 = v9()) == 0)
  {
    NSLog(&cfstr_Iapaudiocopyde_2.isa);
    return 0;
  }

  return v8;
}

uint64_t IAPAudioRegisterVolumeChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo setupVolumeChangedCallback:"setupVolumeChangedCallback:withContext:andRunLoop:" withContext:a1 andRunLoop:a2, a3];

  return 1;
}

uint64_t IAPAudioUnregisterVolumeChangedCallback()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo clearVolumeChangedCallback];

  return 1;
}

_xpc_connection_s *IAPAudioSetVolumeForTransport(unsigned int a1, float a2)
{
  v7 = 2;
  result = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v7);
  if (result)
  {
    v5 = result;
    if (!v7)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v6, "transport", a1);
      xpc_dictionary_set_double(v6, "volume", a2);
      xpc_dictionary_set_string(v6, "requestType", "IAPAudioSetVolumeForTransport");
      xpc_connection_send_message(v5, v6);
      xpc_release(v6);
    }

    xpc_release(v5);
    return 1;
  }

  return result;
}

uint64_t IAPAudioGetVolumeForTransport(unsigned int a1, float *a2)
{
  *a2 = 0.0;
  v15 = 2;
  v4 = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v15);
  if (v4)
  {
    v5 = v4;
    if (v15)
    {
      v6 = 1;
LABEL_23:
      xpc_release(v5);
      return v6;
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "transport", a1);
    xpc_dictionary_set_string(v7, "requestType", "IAPAudioGetVolumeForTransport");
    v8 = IAPAppSendXPCMessageWithTimeout(v5, v7, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v8)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAudioGetVolumeForTransport", 510);
      v6 = 0;
LABEL_22:
      xpc_release(v7);
      goto LABEL_23;
    }

    v9 = v8;
    v10 = MEMORY[0x259C17370]();
    if (v9 == MEMORY[0x277D863F8] && v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiogetvol.isa);
    }

    else if (v9 == MEMORY[0x277D863F0] && v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiogetvol_0.isa);
    }

    else if (v10 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v9, "result"))
      {
        v14 = xpc_dictionary_get_double(v9, "volume");
        *a2 = v14;
        v6 = 1;
        goto LABEL_21;
      }
    }

    else if (v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPAudioGetVolumeForTransport", 500);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPAudioGetVolumeForTransport", 504, v10);
    }

    v6 = 0;
LABEL_21:
    xpc_release(v9);
    goto LABEL_22;
  }

  return 0;
}

uint64_t IAPAudioRegisterShouldPauseAudioOnHeadsetDisconnectChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo setupPauseOnHeadphoneDisconnectChangedCallback:"setupPauseOnHeadphoneDisconnectChangedCallback:withContext:andRunLoop:" withContext:a1 andRunLoop:a2, a3];

  return 1;
}

uint64_t IAPAudioUnregisterShouldPauseAudioOnHeadsetDisconnectChangedCallback()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo clearPauseOnHeadphoneDisconnectChangedCallback];

  return 1;
}

uint64_t IAPAudioShouldPauseAudioOnHeadsetDisconnect(BOOL *a1)
{
  *a1 = 1;
  v12 = 2;
  v2 = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v12);
  if (v2)
  {
    v3 = v2;
    if (v12)
    {
      v4 = 0;
LABEL_23:
      xpc_release(v3);
      return v4;
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "requestType", "IAPAudioShouldPauseAudioOnHeadsetDisconnect");
    v6 = IAPAppSendXPCMessageWithTimeout(v3, v5, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v6)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAudioShouldPauseAudioOnHeadsetDisconnect", 588);
      v4 = 0;
LABEL_22:
      xpc_release(v5);
      goto LABEL_23;
    }

    v7 = v6;
    v8 = MEMORY[0x259C17370]();
    if (v7 == MEMORY[0x277D863F8] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudioshould_0.isa);
    }

    else if (v7 == MEMORY[0x277D863F0] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudioshould_1.isa);
    }

    else if (v8 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v7, "result"))
      {
        *a1 = xpc_dictionary_get_BOOL(v7, "shouldPause");
        v4 = 1;
        goto LABEL_21;
      }
    }

    else if (v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPAudioShouldPauseAudioOnHeadsetDisconnect", 578);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPAudioShouldPauseAudioOnHeadsetDisconnect", 582, v8);
    }

    v4 = 0;
LABEL_21:
    xpc_release(v7);
    goto LABEL_22;
  }

  return 0;
}

uint64_t IAPAudioRegisterVolumeControlSupportChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo setupVolumeControlSupportChangedCallback:"setupVolumeControlSupportChangedCallback:withContext:andRunLoop:" withContext:a1 andRunLoop:a2, a3];

  return 1;
}

uint64_t IAPAudioUnregisterVolumeControlSupportChangedCallback()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [+[IAPAudioCallbackInfo sharedInstance](IAPAudioCallbackInfo clearVolumeControlSupportChangedCallback];

  return 1;
}

uint64_t IAPAudioIsVolumeControlSupportedForTransport(unsigned int a1, BOOL *a2)
{
  *a2 = 0;
  v14 = 2;
  v4 = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v14);
  if (v4)
  {
    v5 = v4;
    if (v14)
    {
      v6 = 1;
LABEL_23:
      xpc_release(v5);
      return v6;
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "transport", a1);
    xpc_dictionary_set_string(v7, "requestType", "IAPAudioIsVolumeControlSupportedForTransport");
    v8 = IAPAppSendXPCMessageWithTimeout(v5, v7, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v8)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAudioIsVolumeControlSupportedForTransport", 668);
      v6 = 0;
LABEL_22:
      xpc_release(v7);
      goto LABEL_23;
    }

    v9 = v8;
    v10 = MEMORY[0x259C17370]();
    if (v9 == MEMORY[0x277D863F8] && v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudioisvolu.isa);
    }

    else if (v9 == MEMORY[0x277D863F0] && v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudioisvolu_0.isa);
    }

    else if (v10 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v9, "result"))
      {
        *a2 = xpc_dictionary_get_BOOL(v9, "isSupported");
        v6 = 1;
        goto LABEL_21;
      }
    }

    else if (v10 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPAudioIsVolumeControlSupportedForTransport", 658);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPAudioIsVolumeControlSupportedForTransport", 662, v10);
    }

    v6 = 0;
LABEL_21:
    xpc_release(v9);
    goto LABEL_22;
  }

  return 0;
}

_xpc_connection_s *IAPAudioStartPlaybackForTransport(unsigned int a1)
{
  v5 = 2;
  result = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v5);
  if (result)
  {
    v3 = result;
    if (!v5)
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "transport", a1);
      xpc_dictionary_set_string(v4, "requestType", "IAPAudioStartPlaybackForTransport");
      xpc_connection_send_message(v3, v4);
      xpc_release(v4);
    }

    xpc_release(v3);
    return 1;
  }

  return result;
}

_xpc_connection_s *IAPAudioStopPlaybackForTransport(unsigned int a1)
{
  v5 = 2;
  result = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v5);
  if (result)
  {
    v3 = result;
    if (!v5)
    {
      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "transport", a1);
      xpc_dictionary_set_string(v4, "requestType", "IAPAudioStopPlaybackForTransport");
      xpc_connection_send_message(v3, v4);
      xpc_release(v4);
    }

    xpc_release(v3);
    return 1;
  }

  return result;
}

BOOL IAPAudioStartRecordingForTransport(unsigned int a1)
{
  v12 = 2;
  v2 = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v12);
  if (v2)
  {
    v3 = v2;
    if (v12)
    {
      v4 = 1;
LABEL_23:
      xpc_release(v3);
      return v4;
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "transport", a1);
    xpc_dictionary_set_string(v5, "requestType", "IAPAudioStartRecordingForTransport");
    v6 = IAPAppSendXPCMessageWithTimeout(v3, v5, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v6)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAudioStartRecordingForTransport", 793);
      v4 = 0;
LABEL_22:
      xpc_release(v5);
      goto LABEL_23;
    }

    v7 = v6;
    v8 = MEMORY[0x259C17370]();
    if (v7 == MEMORY[0x277D863F8] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiostartr.isa);
    }

    else if (v7 == MEMORY[0x277D863F0] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiostartr_0.isa);
    }

    else
    {
      if (v8 == MEMORY[0x277D86468])
      {
        v4 = xpc_dictionary_get_BOOL(v7, "result");
        goto LABEL_21;
      }

      if (v8 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAudioStartRecordingForTransport", 783);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAudioStartRecordingForTransport", 787, v8);
      }
    }

    v4 = 0;
LABEL_21:
    xpc_release(v7);
    goto LABEL_22;
  }

  return 0;
}

BOOL IAPAudioStopRecordingForTransport(unsigned int a1)
{
  v12 = 2;
  v2 = RetainConnectionToIAPDaemonOwningPhysicalConnector(&v12);
  if (v2)
  {
    v3 = v2;
    if (v12)
    {
      v4 = 1;
LABEL_23:
      xpc_release(v3);
      return v4;
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "transport", a1);
    xpc_dictionary_set_string(v5, "requestType", "IAPAudioStopRecordingForTransport");
    v6 = IAPAppSendXPCMessageWithTimeout(v3, v5, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v6)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPAudioStopRecordingForTransport", 856);
      v4 = 0;
LABEL_22:
      xpc_release(v5);
      goto LABEL_23;
    }

    v7 = v6;
    v8 = MEMORY[0x259C17370]();
    if (v7 == MEMORY[0x277D863F8] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiostopre.isa);
    }

    else if (v7 == MEMORY[0x277D863F0] && v8 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapaudiostopre_0.isa);
    }

    else
    {
      if (v8 == MEMORY[0x277D86468])
      {
        v4 = xpc_dictionary_get_BOOL(v7, "result");
        goto LABEL_21;
      }

      if (v8 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPAudioStopRecordingForTransport", 846);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPAudioStopRecordingForTransport", 850, v8);
      }
    }

    v4 = 0;
LABEL_21:
    xpc_release(v7);
    goto LABEL_22;
  }

  return 0;
}

void __iap2dServerLaunched()
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationVoid_3.isa);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"iAP2ServerLaunch" object:0];
}

void __iap2dServerDied()
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  if (AppBooleanValue)
  {
    NSLog(&cfstr_NavigationVoid_4.isa);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"iAP2ServerDie" object:0];
}

BOOL __debugLogEnabled()
{
  AppBooleanValue = __debugLogEnabled___bNavigationDebug;
  if (__debugLogEnabled___bNavigationDebug == -1)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"iAP2LogNavigation", @"com.apple.iapd", 0);
    __debugLogEnabled___bNavigationDebug = AppBooleanValue;
  }

  return AppBooleanValue != 0;
}

void *IAPWeakLinkSymbol(const char *a1, uint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *__HandleForSource(uint64_t a1)
{
  pthread_mutex_lock(&__HandlesLock);
  Mutable = __Handles;
  if (!__Handles)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __Handles = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    if (a1 > 2)
    {
      if (a1 > 4)
      {
        if (a1 == 5)
        {
          v4 = MEMORY[0x277CCACA8];
          v5 = MEMORY[0x277CBEA60];
          v6 = CPSystemRootDirectory();
          v12 = @"VisualVoicemail";
          v7 = @"VisualVoicemail.framework";
        }

        else
        {
          if (a1 != 6)
          {
            goto LABEL_24;
          }

          v4 = MEMORY[0x277CCACA8];
          v5 = MEMORY[0x277CBEA60];
          v6 = CPSystemRootDirectory();
          v12 = @"AccessoryAudio";
          v7 = @"AccessoryAudio.framework";
        }
      }

      else
      {
        v4 = MEMORY[0x277CCACA8];
        v5 = MEMORY[0x277CBEA60];
        v6 = CPSystemRootDirectory();
        if (a1 == 3)
        {
          v12 = @"FrontBoardServices";
          v7 = @"FrontBoardServices.framework";
        }

        else
        {
          v12 = @"CarKit";
          v7 = @"CarKit.framework";
        }
      }

LABEL_18:
      v8 = @"PrivateFrameworks";
LABEL_21:
      v9 = [v4 pathWithComponents:{objc_msgSend(v5, "arrayWithObjects:", v6, @"System", @"Library", v8, v7, v12, 0)}];
      if (v9)
      {
        v10 = dlopen([v9 UTF8String], 1);
        if (v10)
        {
          Value = v10;
          CFDictionarySetValue(__Handles, a1, v10);
          goto LABEL_25;
        }
      }

LABEL_24:
      NSLog(&cfstr_CouldNotLoadSo.isa, a1);
      Value = 0;
      goto LABEL_25;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_24;
        }

        v4 = MEMORY[0x277CCACA8];
        v5 = MEMORY[0x277CBEA60];
        v6 = CPSystemRootDirectory();
        v12 = @"SpringBoardServices";
        v7 = @"SpringBoardServices.framework";
        goto LABEL_18;
      }

      v4 = MEMORY[0x277CCACA8];
      v5 = MEMORY[0x277CBEA60];
      v6 = CPSystemRootDirectory();
      v12 = @"MobileCoreServices";
      v7 = @"MobileCoreServices.framework";
    }

    else
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = MEMORY[0x277CBEA60];
      v6 = CPSystemRootDirectory();
      v12 = @"UIKit";
      v7 = @"UIKit.framework";
    }

    v8 = @"Frameworks";
    goto LABEL_21;
  }

LABEL_25:
  pthread_mutex_unlock(&__HandlesLock);
  return Value;
}

Class IAPWeakLinkClass(NSString *a1, uint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return NSClassFromString(a1);
  }

  return result;
}

void *IAPWeakLinkStringConstant(const char *a1, uint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {
    result = dlsym(result, a1);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t Generate32BitConnectionID()
{
  if (Generate32BitConnectionID_onceToken != -1)
  {
    Generate32BitConnectionID_cold_1();
  }

  if (((Generate32BitConnectionID_connectionID + 1) & 0xFFFFFF) != 0)
  {
    v0 = Generate32BitConnectionID_connectionID + 1;
  }

  else
  {
    v0 = Generate32BitConnectionID_connectionID + 2;
  }

  Generate32BitConnectionID_connectionID = v0;
  v1 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (![v1 caseInsensitiveCompare:@"com.apple.iapd"])
  {
    v3 = Generate32BitConnectionID_connectionID;
    v4 = 0x1000000;
LABEL_11:
    result = v4 & 0xFF000000 | v3 & 0xFFFFFF;
    goto LABEL_12;
  }

  if (![v1 caseInsensitiveCompare:@"com.apple.iap2d"])
  {
    v3 = Generate32BitConnectionID_connectionID;
    v4 = 0x2000000;
    goto LABEL_11;
  }

  NSLog(&cfstr_SSUnknownDaemo.isa, "/Library/Caches/com.apple.xbs/Sources/IAPFramework/common/SharedFunctions.m", "Generate32BitConnectionID", v1);
  result = Generate32BitConnectionID_connectionID | 0xFF000000;
LABEL_12:
  Generate32BitConnectionID_connectionID = result;
  return result;
}

uint64_t __Generate32BitConnectionID_block_invoke()
{
  result = arc4random();
  Generate32BitConnectionID_connectionID = result;
  return result;
}

uint64_t IsAppVisibleInCurrentMode(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v2 = IAPWeakLinkClass(&cfstr_Lsapplicationp.isa, 1);
  v3 = IAPWeakLinkClass(&cfstr_Lsapplicationw.isa, 1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([-[objc_class defaultWorkspace](v3 "defaultWorkspace")])
  {
    v4 = [(objc_class *)v2 applicationProxyForIdentifier:v1];
    v5 = [(objc_class *)v3 defaultWorkspace];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __IsAppVisibleInCurrentMode_block_invoke;
    v8[3] = &unk_279780F78;
    v8[4] = v4;
    v8[5] = &v9;
    [v5 enumerateBundlesOfType:4 block:v8];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_2546C7E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IsAppVisibleInCurrentMode_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEqual:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

BOOL ShouldAccessoryBeHidden(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  v4 = 0;
  do
  {
    v5 = [v3 caseInsensitiveCompare:hiddenAccessoryTable[v4]];
    if (v4 > 0xF)
    {
      break;
    }

    ++v4;
  }

  while (v5);
  v6 = v5 == 0;
  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t IAPDigitalAudioCurrentSampleRate()
{
  NSLog(&cfstr_Iapdigitalaudi.isa);
  v0 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (!v0)
  {
    NSLog(&cfstr_Iapdigitalaudi_2.isa);
    NSLog(&cfstr_Iapdigitalaudi_3.isa, 0, 0);
    return 0;
  }

  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "requestType", "IAPDigitalAudioCurrentSampleRate");
  v3 = IAPAppSendXPCMessageWithTimeout(v1, v2, __IAPAppSendXPCMessageDefaultTimeoutMs);
  if (!v3)
  {
    NSLog(&cfstr_SDNoReplyRecei.isa, "IAPDigitalAudioCurrentSampleRate", 70);
    v8 = 0;
    uint64 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  v5 = MEMORY[0x259C17370]();
  if (v4 == MEMORY[0x277D863F8] && v5 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iapdigitalaudi_0.isa);
  }

  else if (v4 == MEMORY[0x277D863F0] && v5 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iapdigitalaudi_1.isa);
  }

  else
  {
    if (v5 == MEMORY[0x277D86468])
    {
      uint64 = xpc_dictionary_get_uint64(v4, "sampleRate");
      v8 = xpc_dictionary_get_BOOL(v4, "result");
      goto LABEL_19;
    }

    if (v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPDigitalAudioCurrentSampleRate", 60);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPDigitalAudioCurrentSampleRate", 64, v5);
    }
  }

  v8 = 0;
  uint64 = 0;
LABEL_19:
  xpc_release(v4);
LABEL_20:
  xpc_release(v2);
  xpc_release(v1);
  NSLog(&cfstr_Iapdigitalaudi_3.isa, uint64, v8);
  if (!v8)
  {
    return 0;
  }

  return uint64;
}

uint64_t IAPDigitalAudioSetSampleRate(uint64_t a1)
{
  NSLog(&cfstr_Iapdigitalaudi_4.isa, a1);
  v2 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "inputRate", a1);
    xpc_dictionary_set_string(v4, "requestType", "IAPDigitalAudioSetSampleRate");
    v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
    if (!v5)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPDigitalAudioSetSampleRate", 138);
      v8 = 0;
      v9 = 1;
      goto LABEL_19;
    }

    v6 = v5;
    v7 = MEMORY[0x259C17370]();
    if (v6 == MEMORY[0x277D863F8] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_5.isa, v12);
    }

    else if (v6 == MEMORY[0x277D863F0] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_6.isa, v12);
    }

    else if (v7 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v6, "result"))
      {
        NSLog(&cfstr_Iapdigitalaudi_7.isa);
        v9 = 0;
        v8 = 1;
LABEL_18:
        xpc_release(v6);
LABEL_19:
        xpc_release(v4);
        xpc_release(v3);
        if (!v9)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }
    }

    else if (v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPDigitalAudioSetSampleRate", 128);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPDigitalAudioSetSampleRate", 132, v7);
    }

    v8 = 0;
    v9 = 1;
    goto LABEL_18;
  }

  v8 = 0;
LABEL_20:
  v10 = IAPWeakLinkSymbol("ACCDigitalAudioSetSampleRate", 6);
  if (v10)
  {
    v8 = v10(a1);
  }

  else
  {
    NSLog(&cfstr_Iapdigitalaudi_9.isa);
  }

LABEL_23:
  NSLog(&cfstr_Iapdigitalaudi_10.isa, a1, v8);
  return v8;
}

uint64_t IAPDigitalAudioSupportedSampleRate(uint64_t a1)
{
  NSLog(&cfstr_Iapdigitalaudi_11.isa, a1);
  v2 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "inputRate", a1);
    xpc_dictionary_set_string(v4, "requestType", "IAPDigitalAudioSupportedSampleRate");
    v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
    if (!v5)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPDigitalAudioSupportedSampleRate", 222);
      v9 = 0;
      uint64 = 0;
      v10 = 1;
      goto LABEL_19;
    }

    v6 = v5;
    v7 = MEMORY[0x259C17370]();
    if (v6 == MEMORY[0x277D863F8] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_12.isa, v14);
    }

    else if (v6 == MEMORY[0x277D863F0] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_13.isa, v14);
    }

    else if (v7 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v6, "result"))
      {
        uint64 = xpc_dictionary_get_uint64(v6, "outputRate");
        NSLog(&cfstr_Iapdigitalaudi_14.isa);
        v10 = 0;
        v9 = 1;
LABEL_18:
        xpc_release(v6);
LABEL_19:
        xpc_release(v4);
        xpc_release(v3);
        if (!v10)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }
    }

    else if (v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPDigitalAudioSupportedSampleRate", 212);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPDigitalAudioSupportedSampleRate", 216, v7);
    }

    v9 = 0;
    uint64 = 0;
    v10 = 1;
    goto LABEL_18;
  }

  uint64 = 0;
  v9 = 0;
LABEL_20:
  v11 = IAPWeakLinkSymbol("ACCDigitalAudioSupportedSampleRate", 6);
  if (v11)
  {
    v12 = v11(a1);
    NSLog(&cfstr_Iapdigitalaudi_17.isa, a1, v12, 1);
    return v12;
  }

  NSLog(&cfstr_Iapdigitalaudi_16.isa);
LABEL_23:
  NSLog(&cfstr_Iapdigitalaudi_17.isa, a1, uint64, v9);
  if (v9)
  {
    return uint64;
  }

  else
  {
    return 0;
  }
}

BOOL IAPDigitalAudioSetVolumeOffset(uint64_t a1)
{
  v1 = a1;
  NSLog(&cfstr_Iapdigitalaudi_18.isa, a1);
  v2 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "offset", v1);
    xpc_dictionary_set_string(v4, "requestType", "IAPDigitalAudioSetVolumeOffset");
    v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
    if (!v5)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPDigitalAudioSetVolumeOffset", 296);
      v8 = 0;
LABEL_18:
      xpc_release(v4);
      xpc_release(v3);
      goto LABEL_19;
    }

    v6 = v5;
    v7 = MEMORY[0x259C17370]();
    if (v6 == MEMORY[0x277D863F8] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_19.isa, v10);
    }

    else if (v6 == MEMORY[0x277D863F0] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_20.isa, v10);
    }

    else
    {
      if (v7 == MEMORY[0x277D86468])
      {
        v8 = xpc_dictionary_get_BOOL(v6, "result");
LABEL_17:
        xpc_release(v6);
        goto LABEL_18;
      }

      if (v7 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "IAPDigitalAudioSetVolumeOffset", 286);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPDigitalAudioSetVolumeOffset", 290, v7);
      }
    }

    v8 = 0;
    goto LABEL_17;
  }

  NSLog(&cfstr_Iapdigitalaudi_22.isa);
  v8 = 0;
LABEL_19:
  NSLog(&cfstr_Iapdigitalaudi_23.isa, v8);
  return v8;
}

uint64_t IAPDigitalAudioGetVideoDelay()
{
  NSLog(&cfstr_Iapdigitalaudi_24.isa);
  v0 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (!v0)
  {
    NSLog(&cfstr_Iapdigitalaudi_27.isa);
    NSLog(&cfstr_Iapdigitalaudi_28.isa, 0, 0);
    return 0;
  }

  v1 = v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "requestType", "IAPDigitalAudioGetVideoDelay");
  v3 = xpc_connection_send_message_with_reply_sync(v1, v2);
  if (!v3)
  {
    NSLog(&cfstr_SDNoReplyRecei.isa, "IAPDigitalAudioGetVideoDelay", 354);
    v6 = 0;
    uint64 = 0;
    goto LABEL_19;
  }

  v4 = v3;
  v5 = MEMORY[0x259C17370]();
  if (v4 == MEMORY[0x277D863F8] && v5 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iapdigitalaudi_25.isa);
    goto LABEL_17;
  }

  if (v4 == MEMORY[0x277D863F0] && v5 == MEMORY[0x277D86480])
  {
    NSLog(&cfstr_Iapdigitalaudi_26.isa);
    goto LABEL_17;
  }

  if (v5 != MEMORY[0x277D86468])
  {
    if (v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPDigitalAudioGetVideoDelay", 344);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPDigitalAudioGetVideoDelay", 348, v5);
    }

    goto LABEL_17;
  }

  if (!xpc_dictionary_get_BOOL(v4, "result"))
  {
LABEL_17:
    v6 = 0;
    uint64 = 0;
    goto LABEL_18;
  }

  v6 = 1;
  uint64 = xpc_dictionary_get_uint64(v4, "videoDelay");
LABEL_18:
  xpc_release(v4);
LABEL_19:
  xpc_release(v2);
  xpc_release(v1);
  NSLog(&cfstr_Iapdigitalaudi_28.isa, uint64, v6);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return uint64;
}

CFMutableArrayRef IAPDigitalAudioCopySupportSampleRates()
{
  valuePtr = 0;
  length = 0;
  NSLog(&cfstr_Iapdigitalaudi_29.isa);
  v0 = RetainConnectionToIAPDaemonOwningPhysicalConnector(0);
  if (v0)
  {
    v1 = v0;
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "requestType", "IAPDigitalAudioCopySupportSampleRates");
    v3 = xpc_connection_send_message_with_reply_sync(v1, v2);
    if (!v3)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "IAPDigitalAudioCopySupportSampleRates", 443);
      Mutable = 0;
      goto LABEL_23;
    }

    v4 = v3;
    v5 = MEMORY[0x259C17370]();
    if (v4 == MEMORY[0x277D863F8] && v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_30.isa);
    }

    else if (v4 == MEMORY[0x277D863F0] && v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapdigitalaudi_31.isa);
    }

    else if (v5 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v4, "result"))
      {
        v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        data = xpc_dictionary_get_data(v4, "sampleRates", &length);
        if (data)
        {
          v9 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
          Mutable = v9;
          if (v9)
          {
            v10 = [(__CFArray *)v9 bytes];
            v11 = [(__CFArray *)Mutable length];
            v12 = v11 >> 2;
            v13 = *MEMORY[0x277CBECE8];
            Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v11 >> 2, MEMORY[0x277CBF128]);
            if (v11 >= 4)
            {
              do
              {
                v14 = *v10++;
                valuePtr = v14;
                v15 = CFNumberCreate(v13, kCFNumberIntType, &valuePtr);
                CFArrayAppendValue(Mutable, v15);
                CFRelease(v15);
                --v12;
              }

              while (v12);
            }
          }
        }

        else
        {
          Mutable = 0;
        }

        goto LABEL_22;
      }

      NSLog(&cfstr_Iapdigitalaudi_32.isa);
    }

    else if (v5 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_SDUnhandledRep.isa, "IAPDigitalAudioCopySupportSampleRates", 433);
    }

    else
    {
      NSLog(&cfstr_SDUnknownReply.isa, "IAPDigitalAudioCopySupportSampleRates", 437, v5);
    }

    Mutable = 0;
LABEL_22:
    xpc_release(v4);
LABEL_23:
    xpc_release(v2);
    xpc_release(v1);
    if (Mutable)
    {
      goto LABEL_27;
    }
  }

  v16 = IAPWeakLinkSymbol("ACCDigitalAudioCopySupportSampleRates", 6);
  if (!v16 || (Mutable = v16()) == 0)
  {
    NSLog(&cfstr_Iapdigitalaudi_33.isa);
    Mutable = 0;
  }

LABEL_27:
  NSLog(&cfstr_Iapdigitalaudi_34.isa, Mutable);
  return Mutable;
}

uint64_t IAPLocationIsNMEADataAvailable(uint64_t a1, BOOL *a2)
{
  *a2 = 0;
  v4 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_string(v6, "requestType", "IAPLocationIsNMEADataAvailable");
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x259C17370]();
      if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_1.isa);
      }

      else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_2.isa);
      }

      else if (v9 == MEMORY[0x277D86468])
      {
        if (xpc_dictionary_get_BOOL(v8, "result"))
        {
          *a2 = xpc_dictionary_get_BOOL(v8, "isAvailable");
        }

        else
        {
          NSLog(&cfstr_LocationErrorS.isa, "IAPLocationIsNMEADataAvailable");
        }
      }

      else if (v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationIsNMEADataAvailable", 193);
      }

      else
      {
        NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationIsNMEADataAvailable", 197, v9);
      }

      xpc_release(v8);
    }

    else
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationIsNMEADataAvailable", 203);
    }

    xpc_release(v6);
    xpc_release(v5);
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_3.isa, a1);
  }

  return 1;
}

uint64_t IAPLocationCopyNMEAData(uint64_t a1, const char **a2)
{
  if (*a2)
  {
    [MEMORY[0x277CBEAD8] raise:@"IAPCopyNMEAException" format:@"nmea must be NULL"];
  }

  v4 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_string(v6, "requestType", "IAPLocationCopyNMEAData");
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x259C17370]();
      if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_3.isa);
      }

      else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_4.isa);
      }

      else if (v9 == MEMORY[0x277D86468])
      {
        if (xpc_dictionary_get_BOOL(v8, "result"))
        {
          string = xpc_dictionary_get_string(v8, "sentence");
          if (string)
          {
            v11 = string;
            string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
          }

          else
          {
            v11 = "<nil>";
          }

          *a2 = string;
          NSLog(&cfstr_LocationIaploc_5.isa, v11);
        }

        else
        {
          NSLog(&cfstr_LocationErrorS.isa, "IAPLocationCopyNMEAData");
        }
      }

      else if (v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationCopyNMEAData", 260);
      }

      else
      {
        NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationCopyNMEAData", 264, v9);
      }

      xpc_release(v8);
    }

    else
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationCopyNMEAData", 270);
    }

    xpc_release(v6);
    xpc_release(v5);
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_4.isa, a1);
  }

  return 1;
}

uint64_t IAPLocationCopyEphemerisURL(uint64_t a1, void *a2)
{
  if (*a2)
  {
    [MEMORY[0x277CBEAD8] raise:@"IAPCopyEphemerisException" format:@"ephemerisURL must be NULL"];
  }

  v4 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_string(v6, "requestType", "IAPLocationCopyEphemerisURL");
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x259C17370]();
      if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_6.isa);
      }

      else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_7.isa);
      }

      else if (v9 == MEMORY[0x277D86468])
      {
        if (xpc_dictionary_get_BOOL(v8, "result"))
        {
          string = xpc_dictionary_get_string(v8, "urlString");
          if (string)
          {
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
            v12 = v11;
            if (v11 && [v11 length])
            {
              *a2 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
            }
          }

          NSLog(&cfstr_LocationIaploc_8.isa, string);
        }

        else
        {
          NSLog(&cfstr_LocationErrorS.isa, "IAPLocationCopyEphemerisURL");
        }
      }

      else if (v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationCopyEphemerisURL", 334);
      }

      else
      {
        NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationCopyEphemerisURL", 338, v9);
      }

      xpc_release(v8);
    }

    else
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationCopyEphemerisURL", 344);
    }

    xpc_release(v6);
    xpc_release(v5);
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_5.isa, a1);
  }

  return 1;
}

uint64_t IAPLocationGetEphemerisMaxInterval(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_string(v6, "requestType", "IAPLocationGetEphemerisMaxInterval");
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (!v7)
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationGetEphemerisMaxInterval", 401);
      v10 = 0;
LABEL_20:
      xpc_release(v6);
      xpc_release(v5);
      return v10;
    }

    v8 = v7;
    v9 = MEMORY[0x259C17370]();
    if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationIaploc_9.isa);
    }

    else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationIaploc_10.isa);
    }

    else if (v9 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v8, "result"))
      {
        *a2 = xpc_dictionary_get_uint64(v8, "maxInterval");
        v10 = 1;
LABEL_19:
        xpc_release(v8);
        goto LABEL_20;
      }

      NSLog(&cfstr_LocationErrorS.isa, "IAPLocationGetEphemerisMaxInterval");
    }

    else if (v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationGetEphemerisMaxInterval", 391);
    }

    else
    {
      NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationGetEphemerisMaxInterval", 395, v9);
    }

    v10 = 0;
    goto LABEL_19;
  }

  NSLog(&cfstr_LocationSkipIa_6.isa, a1);
  return 0;
}

uint64_t IAPLocationGetEphemerisRecommendedRefreshInterval(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_string(v6, "requestType", "IAPLocationGetEphemerisRecommendedRefreshInterval");
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (!v7)
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationGetEphemerisRecommendedRefreshInterval", 458);
      v10 = 0;
LABEL_20:
      xpc_release(v6);
      xpc_release(v5);
      return v10;
    }

    v8 = v7;
    v9 = MEMORY[0x259C17370]();
    if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationIaploc_11.isa);
    }

    else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationIaploc_12.isa);
    }

    else if (v9 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v8, "result"))
      {
        *a2 = xpc_dictionary_get_uint64(v8, "refreshInterval");
        v10 = 1;
LABEL_19:
        xpc_release(v8);
        goto LABEL_20;
      }

      NSLog(&cfstr_LocationErrorS.isa, "IAPLocationGetEphemerisRecommendedRefreshInterval");
    }

    else if (v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationGetEphemerisRecommendedRefreshInterval", 448);
    }

    else
    {
      NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationGetEphemerisRecommendedRefreshInterval", 452, v9);
    }

    v10 = 0;
    goto LABEL_19;
  }

  NSLog(&cfstr_LocationSkipIa_7.isa, a1);
  return 0;
}

uint64_t IAPLocationIsNMEAFilteringSupported(uint64_t a1, BOOL *a2)
{
  *a2 = 0;
  v4 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_string(v6, "requestType", "IAPLocationIsNMEAFilteringSupported");
    v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
    if (!v7)
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationIsNMEAFilteringSupported", 515);
      v10 = 0;
LABEL_20:
      xpc_release(v6);
      xpc_release(v5);
      return v10;
    }

    v8 = v7;
    v9 = MEMORY[0x259C17370]();
    if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationIaploc_13.isa);
    }

    else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationIaploc_14.isa);
    }

    else if (v9 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v8, "result"))
      {
        *a2 = xpc_dictionary_get_BOOL(v8, "isNMEAFilteringSupported");
        v10 = 1;
LABEL_19:
        xpc_release(v8);
        goto LABEL_20;
      }

      NSLog(&cfstr_LocationErrorS.isa, "IAPLocationIsNMEAFilteringSupported");
    }

    else if (v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationIsNMEAFilteringSupported", 505);
    }

    else
    {
      NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationIsNMEAFilteringSupported", 509, v9);
    }

    v10 = 0;
    goto LABEL_19;
  }

  NSLog(&cfstr_LocationSkipIa_8.isa, a1);
  return 0;
}

uint64_t IAPlocationSetAccessoryNMEAFilter(uint64_t a1, uint64_t a2)
{
  if (a2 && (v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:0]) != 0)
  {
    v4 = v3;
    v5 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
    if (v5)
    {
      v6 = v5;
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v7, "connectionID", a1);
      xpc_dictionary_set_data(v7, "nmeaFilter", [v4 bytes], objc_msgSend(v4, "length"));
      xpc_dictionary_set_string(v7, "requestType", "IAPLocationSetAccessoryNMEAFilter");
      v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0x259C17370]();
        if (v9 == MEMORY[0x277D863F8] && v10 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_LocationIaploc_15.isa);
        }

        else if (v9 == MEMORY[0x277D863F0] && v10 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_LocationIaploc_16.isa);
        }

        else if (v10 == MEMORY[0x277D86468])
        {
          if (!xpc_dictionary_get_BOOL(v9, "result"))
          {
            NSLog(&cfstr_LocationErrorS.isa, "IAPlocationSetAccessoryNMEAFilter");
          }
        }

        else if (v10 == MEMORY[0x277D86480])
        {
          NSLog(&cfstr_LocationSDUnha.isa, "IAPlocationSetAccessoryNMEAFilter", 565);
        }

        else
        {
          NSLog(&cfstr_LocationSDUnkn.isa, "IAPlocationSetAccessoryNMEAFilter", 569, v10);
        }

        xpc_release(v9);
      }

      else
      {
        NSLog(&cfstr_LocationSDNoRe.isa, "IAPlocationSetAccessoryNMEAFilter", 575);
      }

      xpc_release(v7);
      xpc_release(v6);
    }

    else
    {
      NSLog(&cfstr_LocationSkipIa_9.isa, a1);
    }
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_10.isa, a1);
  }

  return 1;
}

uint64_t IAPLocationSendGPSTime(uint64_t a1, unsigned int a2, double a3)
{
  v6 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "connectionID", a1);
    xpc_dictionary_set_uint64(v8, "gpsWeek", a2);
    xpc_dictionary_set_double(v8, "gpsTOWInSeconds", a3);
    xpc_dictionary_set_string(v8, "requestType", "IAPLocationSendGPSTime");
    v9 = xpc_connection_send_message_with_reply_sync(v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x259C17370]();
      if (v10 == MEMORY[0x277D863F8] && v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_17.isa);
      }

      else if (v10 == MEMORY[0x277D863F0] && v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_18.isa);
      }

      else if (v11 == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_BOOL(v10, "result"))
        {
          NSLog(&cfstr_LocationErrorS.isa, "IAPLocationSendGPSTime");
        }
      }

      else if (v11 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationSendGPSTime", 624);
      }

      else
      {
        NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationSendGPSTime", 628, v11);
      }

      xpc_release(v10);
    }

    else
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationSendGPSTime", 634);
    }

    xpc_release(v8);
    xpc_release(v7);
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_11.isa, a1);
  }

  return 1;
}

uint64_t IAPLocationSendEphemerisPointData(uint64_t a1, unsigned int a2, unsigned int a3, double a4, double a5, double a6)
{
  v12 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v12)
  {
    v13 = v12;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "connectionID", a1);
    xpc_dictionary_set_uint64(v14, "gpsWeek", a2);
    xpc_dictionary_set_double(v14, "gpsTOWInSeconds", a4);
    xpc_dictionary_set_double(v14, "latitude", a5);
    xpc_dictionary_set_double(v14, "longitude", a6);
    xpc_dictionary_set_uint64(v14, "accuracyInMeters", a3);
    xpc_dictionary_set_string(v14, "requestType", "IAPLocationSendEphemerisPointData");
    v15 = xpc_connection_send_message_with_reply_sync(v13, v14);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x259C17370]();
      if (v16 == MEMORY[0x277D863F8] && v17 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_19.isa);
      }

      else if (v16 == MEMORY[0x277D863F0] && v17 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_20.isa);
      }

      else if (v17 == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_BOOL(v16, "result"))
        {
          NSLog(&cfstr_LocationErrorS.isa, "IAPLocationSendEphemerisPointData");
        }
      }

      else if (v17 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationSendEphemerisPointData", 681);
      }

      else
      {
        NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationSendEphemerisPointData", 685, v17);
      }

      xpc_release(v16);
    }

    else
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationSendEphemerisPointData", 691);
    }

    xpc_release(v14);
    xpc_release(v13);
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_12.isa, a1);
  }

  return 1;
}

uint64_t IAPLocationSendEphemeris(uint64_t a1, const void *a2)
{
  if (a2)
  {
    Data = CFPropertyListCreateData(0, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v4 = Data;
      v5 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
      if (v5)
      {
        v6 = v5;
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v7, "connectionID", a1);
        BytePtr = CFDataGetBytePtr(v4);
        Length = CFDataGetLength(v4);
        xpc_dictionary_set_data(v7, "ephemerisData", BytePtr, Length);
        xpc_dictionary_set_string(v7, "requestType", "IAPLocationSendEphemeris");
        v10 = xpc_connection_send_message_with_reply_sync(v6, v7);
        if (v10)
        {
          v11 = v10;
          v12 = MEMORY[0x259C17370]();
          if (v11 == MEMORY[0x277D863F8] && v12 == MEMORY[0x277D86480])
          {
            NSLog(&cfstr_LocationIaploc_21.isa);
          }

          else if (v11 == MEMORY[0x277D863F0] && v12 == MEMORY[0x277D86480])
          {
            NSLog(&cfstr_LocationIaploc_22.isa);
          }

          else if (v12 == MEMORY[0x277D86468])
          {
            if (!xpc_dictionary_get_BOOL(v11, "result"))
            {
              NSLog(&cfstr_LocationErrorS.isa, "IAPLocationSendEphemeris");
            }
          }

          else if (v12 == MEMORY[0x277D86480])
          {
            NSLog(&cfstr_LocationSDUnha.isa, "IAPLocationSendEphemeris", 740);
          }

          else
          {
            NSLog(&cfstr_LocationSDUnkn.isa, "IAPLocationSendEphemeris", 744, v12);
          }

          xpc_release(v11);
        }

        else
        {
          NSLog(&cfstr_LocationSDNoRe.isa, "IAPLocationSendEphemeris", 750);
        }

        xpc_release(v7);
        xpc_release(v6);
      }

      else
      {
        NSLog(&cfstr_LocationSkipIa_13.isa, a1);
      }

      CFRelease(v4);
    }

    else
    {
      NSLog(&cfstr_LocationSkipIa_14.isa, a1);
    }
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_15.isa, a1);
  }

  return 1;
}

uint64_t IAPlocationSendGPRMCDataStatusValues(uint64_t a1, BOOL a2, BOOL a3, BOOL a4)
{
  v8 = RetainConnectionToIAPDOnlyWithConnectionID(a1, 0);
  if (v8)
  {
    v9 = v8;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "connectionID", a1);
    xpc_dictionary_set_BOOL(v10, "IAPLocationGPRMCDataStatusValueA", a2);
    xpc_dictionary_set_BOOL(v10, "IAPLocationGPRMCDataStatusValueV", a3);
    xpc_dictionary_set_BOOL(v10, "IAPLocationGPRMCDataStatusValueX", a4);
    xpc_dictionary_set_string(v10, "requestType", "IAPLocationSendGPRMCDataStatusValues");
    v11 = xpc_connection_send_message_with_reply_sync(v9, v10);
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0x259C17370]();
      if (v12 == MEMORY[0x277D863F8] && v13 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_15.isa);
      }

      else if (v12 == MEMORY[0x277D863F0] && v13 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationIaploc_16.isa);
      }

      else if (v13 == MEMORY[0x277D86468])
      {
        if (!xpc_dictionary_get_BOOL(v12, "result"))
        {
          NSLog(&cfstr_LocationErrorS.isa, "IAPlocationSendGPRMCDataStatusValues");
        }
      }

      else if (v13 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_LocationSDUnha.isa, "IAPlocationSendGPRMCDataStatusValues", 807);
      }

      else
      {
        NSLog(&cfstr_LocationSDUnkn.isa, "IAPlocationSendGPRMCDataStatusValues", 811, v13);
      }

      xpc_release(v12);
    }

    else
    {
      NSLog(&cfstr_LocationSDNoRe.isa, "IAPlocationSendGPRMCDataStatusValues", 817);
    }

    xpc_release(v10);
    xpc_release(v9);
  }

  else
  {
    NSLog(&cfstr_LocationSkipIa_16.isa, a1);
  }

  return 1;
}

uint64_t __iaptransportdDied()
{
  v0 = +[IAPClientPortManager sharedInstance];

  return [(IAPClientPortManager *)v0 setIaptransportdIsRunning:0];
}

uint64_t __iaptransportdLaunched()
{
  v0 = +[IAPClientPortManager sharedInstance];
  [(IAPClientPortManager *)v0 setIaptransportdIsRunning:1];

  return [(IAPClientPortManager *)v0 reRegisterHandlers];
}

uint64_t IAPClientPortRegisterSendDataHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[IAPClientPortManager sharedInstance];

  return [(IAPClientPortManager *)v6 registerSendDataHandler:a1 queue:a2 sendBlock:a3];
}

uint64_t IAPClientPortDataReceivedHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[IAPClientPortManager sharedInstance];

  return [(IAPClientPortManager *)v6 forwardAccessoryDataToIAP:a1 data:a2 length:a3];
}

uint64_t IAPBluetoothDeviceMode(const __CFData *a1)
{
  v2 = RetainConnectionToIAPDaemon();
  v3 = _IAPBluetoothDeviceMode(a1, v2);
  if (v2)
  {
    xpc_release(v2);
  }

  v4 = RetainConnectionToIAP2Daemon();
  v5 = _IAPBluetoothDeviceMode(a1, v4);
  if (v4)
  {
    xpc_release(v4);
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (!v3)
  {
    v6 = v5;
  }

  if (v3 == v5)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

uint64_t _IAPBluetoothDeviceMode(const __CFData *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "requestType", "IAPBluetoothDeviceMode");
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    xpc_dictionary_set_data(v4, "MACAddress", BytePtr, Length);
    v7 = IAPAppSendXPCMessageWithTimeout(a2, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v7)
    {
      NSLog(&cfstr_SDNoReplyRecei.isa, "_IAPBluetoothDeviceMode", 126);
      v12 = 0;
LABEL_20:
      xpc_release(v4);
      return v12;
    }

    v8 = v7;
    v9 = MEMORY[0x259C17370]();
    if (v8 == MEMORY[0x277D863F8] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapbluetoothde_8.isa);
    }

    else if (v8 == MEMORY[0x277D863F0] && v9 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Iapbluetoothde_9.isa);
    }

    else
    {
      if (v9 == MEMORY[0x277D86468])
      {
        uint64 = xpc_dictionary_get_uint64(v8, "result");
        if (uint64 - 1 >= 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = uint64;
        }

        goto LABEL_19;
      }

      if (v9 == MEMORY[0x277D86480])
      {
        NSLog(&cfstr_SDUnhandledRep.isa, "_IAPBluetoothDeviceMode", 116);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "_IAPBluetoothDeviceMode", 120, v9);
      }
    }

    v12 = 0;
LABEL_19:
    xpc_release(v8);
    goto LABEL_20;
  }

  return 0;
}

void IAPBluetoothDeviceGetAccessoryConnectNotification()
{
  syslog(3, "%s OBSOLETE FUNCTION: Please use IAPAppConnectedAccessories and iterate through array\n of accessory dictionaries looking for one with IAPAppBTPairingIsSupported key", "IAPBluetoothDeviceGetAccessoryConnectNotification");
  v0 = RetainConnectionToIAP2Daemon();
  if (v0)
  {
    v1 = v0;
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "requestType", "IAPBluetoothDeviceGetAccessoryConnectNotification");
    v3 = IAPAppSendXPCMessageWithTimeout(v1, v2, __IAPAppSendXPCMessageDefaultTimeoutMs);
    IAPBluetoothXPCHandleReply("IAPBluetoothDeviceGetAccessoryConnectNotification", v3);

    xpc_release(v1);
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceGetAccessoryConnectNotification");
  }
}

uint64_t IAPBluetoothXPCHandleReply(const char *a1, void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x259C17370](a2);
    if (v4 == MEMORY[0x277D86468])
    {
      uint64 = xpc_dictionary_get_uint64(a2, "result");
    }

    else
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (a2 == MEMORY[0x277D863F0])
        {
          v6 = "XPC_ERROR_CONNECTION_INTERRUPTED";
        }

        else
        {
          v6 = "XPC ERROR UNKNOWN";
        }

        if (a2 == MEMORY[0x277D863F8])
        {
          v7 = "XPC_ERROR_CONNECTION_INVALID";
        }

        else
        {
          v7 = v6;
        }

        syslog(4, "%s XPC connection failure cause:[%s]\n", a1, v7);
      }

      else
      {
        NSLog(&cfstr_SDUnknownReply.isa, "IAPBluetoothXPCHandleReply", 579, v4);
      }

      uint64 = 0;
    }

    xpc_release(a2);
  }

  else
  {
    syslog(3, "%s ERROR: [%s] pXpcReply = NULL !\n", "IAPBluetoothXPCHandleReply", a1);
    return 0;
  }

  return uint64;
}

uint64_t IAPBluetoothDeviceAllocAccessoryPairingInfo(uint64_t a1)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v2 = RetainConnectionToIAP2Daemon();
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "requestType", "IAPBluetoothDeviceGetAccessoryPairingInfo");
    xpc_dictionary_set_uint64(v4, "connectionID", a1);
    v5 = IAPAppSendXPCMessageWithTimeout(v3, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v5)
    {
      syslog(3, "%s xpc_connection_send_message_with_reply_sync returned pXpcReply = NULL !\n", "IAPBluetoothDeviceAllocAccessoryPairingInfo");
      goto LABEL_7;
    }

    v6 = v5;
    if (MEMORY[0x259C17370]() != MEMORY[0x277D86468])
    {
      IAPBluetoothXPCHandleReply("IAPBluetoothDeviceAllocAccessoryPairingInfo", v6);
LABEL_7:
      v7 = 0;
LABEL_14:
      xpc_release(v4);
      xpc_release(v3);
      goto LABEL_15;
    }

    uint64 = xpc_dictionary_get_uint64(v6, "connectionID");
    string = xpc_dictionary_get_string(v6, "btInfoAccessoryMfg");
    v10 = xpc_dictionary_get_string(v6, "btInfoAccessoryModel");
    v20 = 0;
    length = 0;
    data = xpc_dictionary_get_data(v6, "btInfoPairUUID", &length);
    v12 = xpc_dictionary_get_data(v6, "btInfoPairTypes", &v20);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:uint64];
    if (string)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithCString:string encoding:4];
      if (v10)
      {
LABEL_10:
        v15 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
LABEL_13:
        v16 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
        v17 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:v20];
        v22[0] = @"IAPAppBTPairingConnectionIDKey";
        v22[1] = @"IAPAppBTPairingAccManufacturer";
        v23[0] = v13;
        v23[1] = v14;
        v22[2] = @"IAPAppBTPairingAccModel";
        v22[3] = @"IAPAppBTPairingUUIDKey";
        v23[2] = v15;
        v23[3] = v16;
        v22[4] = @"IAPAppBTPairingTypesSupportedKey";
        v23[4] = v17;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
        xpc_release(v6);
        goto LABEL_14;
      }
    }

    else
    {
      v14 = &stru_286688890;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v15 = &stru_286688890;
    goto LABEL_13;
  }

  syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceAllocAccessoryPairingInfo");
  v7 = 0;
LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t IAPBluetoothDeviceStartBLEUpdates(uint64_t a1, unsigned int a2, BOOL a3, BOOL a4)
{
  v8 = RetainConnectionToIAP2Daemon();
  if (v8)
  {
    v9 = v8;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v10, "requestType", "IAPBluetoothDeviceStartBLEUpdates");
    xpc_dictionary_set_uint64(v10, "connectionID", a1);
    xpc_dictionary_set_uint64(v10, "btParmPairType", a2);
    xpc_dictionary_set_BOOL(v10, "btParmUpdatesRadio", a3);
    xpc_dictionary_set_BOOL(v10, "btParmUpdatesPairInfo", a4);
    v11 = IAPAppSendXPCMessageWithTimeout(v9, v10, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v12 = IAPBluetoothXPCHandleReply("IAPBluetoothDeviceStartBLEUpdates", v11);
    xpc_release(v10);
    xpc_release(v9);
    return v12;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceStartBLEUpdates");
    return 19;
  }
}

uint64_t IAPBluetoothDeviceStateUpdate(uint64_t a1, BOOL a2, unsigned int a3, BOOL a4, BOOL a5)
{
  v10 = RetainConnectionToIAP2Daemon();
  if (v10)
  {
    v11 = v10;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "requestType", "IAPBluetoothDeviceStateUpdate");
    xpc_dictionary_set_uint64(v12, "connectionID", a1);
    xpc_dictionary_set_uint64(v12, "btParmPairStatus", a3);
    xpc_dictionary_set_BOOL(v12, "btParmRadioOn", a2);
    xpc_dictionary_set_BOOL(v12, "btParmPairModeOn", a4);
    xpc_dictionary_set_BOOL(v12, "bParmForceUpdates", a5);
    v13 = IAPAppSendXPCMessageWithTimeout(v11, v12, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v14 = IAPBluetoothXPCHandleReply("IAPBluetoothDeviceStateUpdate", v13);
    xpc_release(v12);
    xpc_release(v11);
    return v14;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceStateUpdate");
    return 19;
  }
}

uint64_t IAPBluetoothDevicePairingData(uint64_t a1, void *a2)
{
  v4 = RetainConnectionToIAP2Daemon();
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "requestType", "IAPBluetoothDevicePairingData");
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_data(v6, "btParmPairData", [a2 bytes], objc_msgSend(a2, "length"));
    v7 = IAPAppSendXPCMessageWithTimeout(v5, v6, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v8 = IAPBluetoothXPCHandleReply("IAPBluetoothDevicePairingData", v7);
    xpc_release(v6);
    xpc_release(v5);
    return v8;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDevicePairingData");
    return 19;
  }
}

uint64_t IAPBluetoothDevicePairingInfoUpdate(uint64_t a1, void *a2)
{
  v4 = RetainConnectionToIAP2Daemon();
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "requestType", "IAPBluetoothDevicePairingInfoUpdate");
    xpc_dictionary_set_uint64(v6, "connectionID", a1);
    xpc_dictionary_set_data(v6, "btParmPairInfo", [a2 bytes], objc_msgSend(a2, "length"));
    v7 = IAPAppSendXPCMessageWithTimeout(v5, v6, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v8 = IAPBluetoothXPCHandleReply("IAPBluetoothDevicePairingInfoUpdate", v7);
    xpc_release(v6);
    xpc_release(v5);
    return v8;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDevicePairingInfoUpdate");
    return 19;
  }
}

uint64_t IAPBluetoothDeviceStopBLEUpdates(uint64_t a1)
{
  v2 = RetainConnectionToIAP2Daemon();
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "requestType", "IAPBluetoothDeviceStopBLEUpdates");
    xpc_dictionary_set_uint64(v4, "connectionID", a1);
    v5 = IAPAppSendXPCMessageWithTimeout(v3, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v6 = IAPBluetoothXPCHandleReply("IAPBluetoothDeviceStopBLEUpdates", v5);
    xpc_release(v4);
    xpc_release(v3);
    return v6;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceStopBLEUpdates");
    return 19;
  }
}

uint64_t IAPBluetoothDeviceAccessoryAttach(uint64_t a1, const void *a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8)
{
  v16 = RetainConnectionToIAP2Daemon();
  if (v16)
  {
    v17 = v16;
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v18, "requestType", "BTAccessoryAttachNotification");
    xpc_dictionary_set_uint64(v18, "BTAccessoryAttachDeviceId", a1);
    xpc_dictionary_set_data(v18, "BTAccessoryAttachMacAddress", a2, 6uLL);
    xpc_dictionary_set_string(v18, "BTAccessoryAttachAccModel", a3);
    xpc_dictionary_set_string(v18, "BTAccessoryAttachAccName", a4);
    xpc_dictionary_set_string(v18, "BTAccessoryAttachAccMfr", a5);
    xpc_dictionary_set_string(v18, "BTAccessoryAttachAccSerial", a6);
    xpc_dictionary_set_string(v18, "BTAccessoryAttachAccFwVersion", a7);
    xpc_dictionary_set_string(v18, "BTAccessoryAttachAccHwVersion", a8);
    xpc_dictionary_set_BOOL(v18, "BTAccessoryAttachState", 1);
    v19 = IAPAppSendXPCMessageWithTimeout(v17, v18, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v20 = IAPBluetoothXPCHandleReply("IAPBluetoothDeviceAccessoryAttach", v19);
    xpc_release(v18);
    xpc_release(v17);
    return v20;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceAccessoryAttach");
    return 19;
  }
}

uint64_t IAPBluetoothDeviceAccessoryDetach(uint64_t a1)
{
  v2 = RetainConnectionToIAP2Daemon();
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "requestType", "BTAccessoryAttachNotification");
    xpc_dictionary_set_uint64(v4, "BTAccessoryAttachDeviceId", a1);
    xpc_dictionary_set_BOOL(v4, "BTAccessoryAttachState", 0);
    v5 = IAPAppSendXPCMessageWithTimeout(v3, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    v6 = IAPBluetoothXPCHandleReply("IAPBluetoothDeviceAccessoryDetach", v5);
    xpc_release(v4);
    xpc_release(v3);
    return v6;
  }

  else
  {
    syslog(3, "%s ERROR: piAP2XpcConn = NULL !\n", "IAPBluetoothDeviceAccessoryDetach");
    return 19;
  }
}

void IAPAppRequestAccessoryWiFiCredentials(unsigned int a1)
{
  v6 = 2;
  v2 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v6);
  if (v2)
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "requestType", "IAPRequestAccessoryWiFiCredentials");
    xpc_dictionary_set_uint64(v5, "connectionID", a1);
    xpc_connection_send_message(v3, v5);
    xpc_release(v5);
    objc_autoreleasePoolPop(v4);
    xpc_release(v3);
  }
}

void IAPAppSendDeviceIdentifierNotification(unsigned int a1, const char *a2, const char *a3)
{
  v10 = 2;
  v6 = RetainConnectionToIAPDaemonWithConnectionID(a1, &v10);
  if (v6)
  {
    v7 = v6;
    v8 = objc_autoreleasePoolPush();
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, "requestType", "kXPCIAPSendDeviceTransportIdentifier");
    xpc_dictionary_set_uint64(v9, "connectionID", a1);
    xpc_dictionary_set_string(v9, "kXPCDeviceBluetoothTransportIdentifierStr", a2);
    xpc_dictionary_set_string(v9, "kXPCDeviceUSBTransportIdentifier", a3);
    xpc_connection_send_message(v7, v9);
    xpc_release(v9);
    objc_autoreleasePoolPop(v8);
    xpc_release(v7);
  }
}

uint64_t IAPGetVehicleStatus(uint64_t a1)
{
  NSLog(&cfstr_Vehicleinfosta.isa, a1);
  v2 = RetainConnectionToIAP2Daemon();
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "requestType", "IAPVehicleStatusGetData");
    xpc_dictionary_set_uint64(v4, "connectionID", a1);
    v5 = IAPAppSendXPCMessageWithTimeout(v3, v4, __IAPAppSendXPCMessageDefaultTimeoutMs);
    if (!v5)
    {
      NSLog(&cfstr_Vehicleinfosta_4.isa, "IAPGetVehicleStatus", 69);
      v10 = 0;
LABEL_20:
      xpc_release(v4);
      xpc_release(v3);
      return v10;
    }

    v6 = v5;
    v7 = MEMORY[0x259C17370]();
    if (v6 == MEMORY[0x277D863F8] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Vehicleinfosta_0.isa, v13);
    }

    else if (v6 == MEMORY[0x277D863F0] && v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Vehicleinfosta_1.isa, v13);
    }

    else if (v7 == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v6, "result"))
      {
        v12 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        xpc_dictionary_get_value(v6, "IAPVehicleStatusDictionary");
        v10 = _CFXPCCreateCFObjectFromXPCMessage();

        goto LABEL_19;
      }
    }

    else if (v7 == MEMORY[0x277D86480])
    {
      NSLog(&cfstr_Vehicleinfosta_2.isa, "IAPGetVehicleStatus", 59);
    }

    else
    {
      NSLog(&cfstr_Vehicleinfosta_3.isa, "IAPGetVehicleStatus", 63, v7);
    }

    v10 = 0;
LABEL_19:
    xpc_release(v6);
    goto LABEL_20;
  }

  NSLog(&cfstr_Vehicleinfosta_5.isa, a1);
  return 0;
}