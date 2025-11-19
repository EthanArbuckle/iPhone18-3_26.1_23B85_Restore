void sub_100015474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

id *sub_1000154A8(id *result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    while (1)
    {
      result = (*(**(v1 + 16) + 80))(*(v1 + 16));
      if (!result)
      {
        result = [v2[4] iapPortManagerForDevPort:*(v1 + 16)];
        if (result)
        {
          result = [result accResistorID];
          *(*(v2[5] + 1) + 24) = result;
          if (*(*(v2[5] + 1) + 24) <= 0xFu)
          {
            break;
          }
        }
      }

      v1 = *(v1 + 8);
      if (v1 == &qword_100031E68)
      {
        return result;
      }
    }

    *(*(v2[6] + 1) + 24) = 1;
    *(*(v2[7] + 1) + 24) = *(v1 + 16);
  }

  return result;
}

void sub_1000155B8()
{
  for (i = qword_100031E70; i != &qword_100031E68; i = i[1])
  {
    v1 = i[2];
    if (!(*(*v1 + 80))(v1) || (*(*v1 + 80))(v1) == 1)
    {
      [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, "portID", v1);
      xpc_dictionary_set_string(v2, "requestType", "transportLeft");
      if (sub_1000116BC() && +[IAPTransportServer supportsIAPD])
      {
        [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
      }

      if (sub_100011744())
      {
        [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
      }

      xpc_release(v2);
      if (sub_100003EB8(v1) == 6)
      {
        sub_100004B78(0);
      }
    }
  }
}

id sub_1000157C0(id result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    do
    {
      v3 = v1[2];
      result = (*(*v3 + 80))(v3);
      if (result == 10)
      {
        v4 = *(v2 + 10);
        if (v4 == 3)
        {
          goto LABEL_10;
        }

        if (v4 != 2)
        {
          if (v4 != 1 || (v3[8] & 1) != 0)
          {
            goto LABEL_11;
          }

LABEL_10:
          result = [*(v2 + 4) _detachClientPort:v3];
          goto LABEL_11;
        }

        if (v3[8] == 1)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v1 = v1[1];
    }

    while (v1 != &qword_100031E68);
  }

  return result;
}

void *sub_100015C84(void *result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    while (1)
    {
      result = (*(*v1[2] + 80))(v1[2]);
      if (result == 10)
      {
        result = [sub_1000062D0(v1[2]) compare:v2[4]];
        if (!result)
        {
          break;
        }
      }

      v1 = v1[1];
      if (v1 == &qword_100031E68)
      {
        return result;
      }
    }

    v3 = v2[5];
    v4 = v1[2];

    return [v3 _detachClientPort:v4];
  }

  return result;
}

void *sub_100015DF0(void *result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    while (1)
    {
      result = (*(*v1[2] + 80))(v1[2]);
      if (result == 10)
      {
        result = [sub_1000062D0(v1[2]) compare:v2[4]];
        if (!result)
        {
          break;
        }
      }

      v1 = v1[1];
      if (v1 == &qword_100031E68)
      {
        return result;
      }
    }

    v3 = v2[5];
    v4 = v1[2];

    return [v3 _detachClientPort:v4];
  }

  return result;
}

id *sub_100015F5C(id *result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    do
    {
      result = (*(*v1[2] + 80))(v1[2]);
      if (result == 10)
      {
        result = sub_1000062D8(v1[2]);
        if (result == v2[4])
        {
          result = [v2[5] _detachClientPort:v1[2]];
        }
      }

      v1 = v1[1];
    }

    while (v1 != &qword_100031E68);
  }

  return result;
}

void sub_1000160B8(uint64_t a1)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    while ((*(*v1[2] + 80))(v1[2]) != 10 || [sub_1000062D0(v1[2]) compare:*(a1 + 32)])
    {
      v1 = v1[1];
      if (v1 == &qword_100031E68)
      {
        return;
      }
    }

    v3 = v1[2];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    sub_100005F80(v3, v4, v5);
  }
}

void sub_100016284()
{
  v0 = qword_100031DF8;
  if (qword_100031DF8)
  {
    sub_100011860(qword_100031DF8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000187D4;
    block[3] = &unk_10002CA90;
    block[4] = v0;
    dispatch_async(&_dispatch_main_q, block);
    qword_100031DF8 = 0;
  }
}

id sub_1000164A8()
{
  v0 = +[IAPTransportServer sharedIAPTransportServer];

  return [v0 stopServer:0];
}

uint64_t sub_100016F4C(uint64_t a1)
{
  sub_100004090(&qword_100031E68, (a1 + 32));
  result = sub_10001881C(1);
  if (result)
  {
    v2 = qword_100031E70;
    if (qword_100031E70 != &qword_100031E68)
    {
      v3 = 0;
      do
      {
        v4 = v2[2];
        if (v4)
        {
          v5 = (*(*v4 + 80))(v2[2]);
          syslog(4, "iaptransportd::RemovePortFromList Port #%d: %hhx, portType: %d\n", v3++, v4, v5);
        }

        v2 = v2[1];
      }

      while (v2 != &qword_100031E68);
    }

    v6 = __stderrp;

    return fflush(v6);
  }

  return result;
}

void sub_100017044(id a1)
{
  if ((byte_100031E00 & 1) == 0)
  {
    byte_100031E00 = sub_100002A7C();
  }
}

void sub_100017074(io_registry_entry_t a1)
{
  properties = 0;
  v2 = objc_alloc_init(NSAutoreleasePool);
  if (!IORegistryEntryCreateCFProperties(a1, &properties, 0, 0))
  {
    [-[__CFDictionary objectForKey:](properties objectForKey:{@"CurrentCapacity", "intValue"}];
    [-[__CFDictionary objectForKey:](properties objectForKey:{@"MaxCapacity", "intValue"}];
    byte_100031DE8 = [-[__CFDictionary objectForKey:](properties objectForKey:{@"ExternalConnected", "BOOLValue"}];
    [-[__CFDictionary objectForKey:](properties objectForKey:{@"IsCharging", "BOOLValue"}];
    if (byte_100031DE8 != byte_100031E01)
    {
      [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
      byte_100031E01 = byte_100031DE8;
    }

    CFRelease(properties);
  }
}

void sub_100017160(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536723200)
  {
    sub_100017074(a2);
  }
}

void sub_10001717C(uint64_t a1, void *a2)
{
  v4 = +[IAPTransportServer sharedIAPTransportServer];
  if (xpc_get_type(a2) != &_xpc_type_dictionary)
  {
    if (xpc_get_type(a2) == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
      NSLog(@"_xpc_iaptransportd_handle_incoming_request event error: %s\n", string);
      [v4 deleteClientPortsUsingConnection:*(a1 + 32)];
      v13 = *(a1 + 32);

      xpc_connection_cancel(v13);
    }

    return;
  }

  v5 = xpc_dictionary_get_string(a2, "requestType");
  if (!v5)
  {
    NSLog(@"RequestType not specified in xpc message!");
    v5 = "<nil>";
  }

  if (!strcmp(v5, "transmitData"))
  {
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v7 = reply;
      v8 = -536870212;
      length[0] = 0;
      uint64 = xpc_dictionary_get_uint64(a2, "portID");
      data = xpc_dictionary_get_data(a2, "data", length);
      v11 = xpc_dictionary_get_BOOL(a2, "waitSendDone");
      sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request::transmitData: portAddr = %llu, dataLength = %lu waitSendDone: %d\n", uint64, length[0], v11);
      if (uint64 && sub_100018374(uint64) && length[0] && uint64[10] == 1)
      {
        v8 = (*(*uint64 + 16))(uint64, data);
      }

      xpc_dictionary_set_int64(v7, "result", v8);
      xpc_connection_send_message(*(a1 + 32), v7);
      xpc_release(v7);
    }

    else
    {
      NSLog(@"ERROR: Client sent kXPCTransmitDataStr xpc message without a reply context");
    }
  }

  if (!strcmp(v5, "IAPClientPortRegisterStr"))
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *length = v14;
    v86 = v14;
    xpc_dictionary_get_audit_token();
    *v83 = *length;
    v84 = v86;
    if (sub_10001844C(v83))
    {
      v15 = xpc_dictionary_get_string(a2, "IAPClientPortUUIDStr");
      if (v15)
      {
        v16 = v15;
        sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request handling kXPCIAPClientPortRegisterStr for uuid: %s\n", v15);
        [v4 registerClientPortAccessory:+[NSString stringWithUTF8String:](NSString connection:{"stringWithUTF8String:", v16), *(a1 + 32)}];
      }
    }
  }

  if (!strcmp(v5, "IAPClientPortUnregisterStr"))
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *length = v17;
    v86 = v17;
    xpc_dictionary_get_audit_token();
    *v83 = *length;
    v84 = v86;
    if (sub_10001844C(v83))
    {
      v18 = xpc_dictionary_get_string(a2, "IAPClientPortUUIDStr");
      if (v18)
      {
        v19 = v18;
        sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request handling kXPCIAPClientPortUnregisterStr for uuid: %s\n", v18);
        [v4 unregisterClientPortAccessory:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v19)}];
      }
    }
  }

  if (!strcmp(v5, "dataArrived"))
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *length = v23;
    v86 = v23;
    xpc_dictionary_get_audit_token();
    *v83 = *length;
    v84 = v86;
    if (sub_10001844C(v83))
    {
      v83[0] = 0;
      v24 = xpc_dictionary_get_string(a2, "IAPClientPortUUIDStr");
      v25 = xpc_dictionary_get_data(a2, "data", v83);
      if (v24)
      {
        v26 = v25;
        if (v25)
        {
          sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request handling kXPCDataArrivedStr for uuid: %s with %lu bytes\n", v24, v83[0]);
          v27 = [NSString stringWithUTF8String:v24];
          [v4 clientPortReceivedData:v27 dataPtr:v26 length:LOWORD(v83[0])];
        }
      }
    }

    return;
  }

  if (strcmp(v5, "setPortLockout"))
  {
    if (!strcmp(v5, "getPortLockout"))
    {
      v35 = xpc_dictionary_create_reply(a2);
      if (!v35)
      {
        NSLog(@"ERROR: Client sent kXPCGetPortLockoutStr xpc message without a reply context", v79, v80, v81);
        return;
      }

      v36 = v35;
      v37 = -536870212;
      v38 = xpc_dictionary_get_uint64(a2, "portID");
      sub_10001883C(1, @"%s:%s-%d portAddr = %llu\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 636, v38);
      if (v38)
      {
        if (sub_100018374(v38))
        {
          LOBYTE(v38) = sub_1000046CC(v38);
          v37 = 0;
        }

        else
        {
          LOBYTE(v38) = 0;
        }
      }

      xpc_dictionary_set_uint64(v36, "result", v37);
      v46 = "bAuthLockout";
    }

    else
    {
      if (strcmp(v5, "getHasE75To30PinAdapter"))
      {
        if (!strcmp(v5, "USBHostHIDComponentInfo"))
        {
          v41 = xpc_dictionary_get_uint64(a2, "portID");
          sub_10001883C(1, @"%s:%s-%d USBHostHIDComponentInfo for portAddr %llu\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 683, v41);
          if (v41 && sub_100018374(v41))
          {
            v42 = xpc_dictionary_get_uint64(a2, "interfaceNumber");
            v43 = xpc_dictionary_get_uint64(a2, "HIDFunctionType");
            (*(*v41 + 48))(v41, v42, v43);
          }
        }

        else if (!strcmp(v5, "NativeBTHIDComponentInfoStr"))
        {
          v44 = xpc_dictionary_get_uint64(a2, "portID");
          sub_10001883C(1, @"%s:%s-%d NativeBTHIDComponent for portAddr %llu\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 701, v44);
          if (v44 && sub_100018374(v44) && (*(*v44 + 80))(v44) == 2)
          {
            v45 = xpc_dictionary_get_uint64(a2, "HIDFunctionType");
            NSLog(@"Found hidFunctionType %d for BT port", v45);
            (*(*v44 + 56))(v44, v45);
          }
        }

        else
        {
          if (!strcmp(v5, "kBTHIDPriorityHigh"))
          {
            v47 = xpc_dictionary_get_uint64(a2, "portID");
            length[0] = 0;
            length[1] = length;
            *&v86 = 0x3052000000;
            *(&v86 + 1) = sub_100012FBC;
            v48 = *(a1 + 40);
            v87 = sub_100012FCC;
            v88 = v48;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100018554;
            block[3] = &unk_10002CDA0;
            block[4] = length;
            block[5] = v47;
            dispatch_async(v48, block);
            _Block_object_dispose(length, 8);
            return;
          }

          if (!strcmp(v5, "kBTHIDPriorityDefault"))
          {
            v51 = xpc_dictionary_get_uint64(a2, "portID");
            dispatch_set_target_queue(*(a1 + 40), 0);
            if ([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")])
            {
              [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
            }

            if ([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")])
            {
              [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
            }

            if (v51 && sub_100018374(v51) && (*(*v51 + 80))(v51) == 2)
            {
              sub_100002D18(v51, 0);
            }

            if ([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")])
            {
              [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(length[0]) = 136315138;
              *(length + 4) = off_100031CE8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#%s] resetting target queue to default", length, 0xCu);
            }
          }

          else
          {
            if (strcmp(v5, "handleAuthenticationPassed"))
            {
              if (strcmp(v5, "handleAuthenticationFailed"))
              {
                if (strcmp(v5, "getPortAppleIDAuthState"))
                {
                  if (!strcmp(v5, "ping"))
                  {
                    sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request::ping");
                    return;
                  }

                  if (!strcmp(v5, "iapdTransportListStates"))
                  {
                    v65 = xpc_dictionary_get_BOOL(a2, "transportListContainsItems");
                    sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request::iapdTransportListStates listContainsItems: %d\n", v65);
                    [v4 setIapdPortListContainsItems:v65];
                  }

                  else
                  {
                    if (strcmp(v5, "iap2dTransportListStates"))
                    {
                      if (strcmp(v5, "deviceUUID"))
                      {
                        if (!strcmp(v5, "IAPShutdownIapTransportPort"))
                        {
                          if (byte_100031DE0 == 1)
                          {
                            sub_10001883C(1, @"Handling the kXPCShutdownIapTransportPortStr XPC message");
                            v75 = xpc_dictionary_get_uint64(a2, "portID");
                            if (v75)
                            {
                              v76 = v75;
                              if (sub_100018374(v75))
                              {
                                if ((*(*v76 + 80))(v76) == 10)
                                {
                                  [v4 detachClientPort:v76];
                                }
                              }
                            }
                          }
                        }

                        else if (!strcmp(v5, "accessoryPowerDisable"))
                        {
                          v77 = xpc_dictionary_get_uint64(a2, "portID");
                          if (xpc_dictionary_get_uint64(a2, "portType") == 1)
                          {
                            if (v77)
                            {
                              if (sub_100018374(v77))
                              {
                                if ((*(*v77 + 10))(v77) == 1)
                                {
                                  v78 = **v77;
                                  {
                                    sub_100016284();
                                  }
                                }
                              }
                            }
                          }
                        }

                        else if (!strcmp(v5, "accessoryPowerToggle"))
                        {
                          v20 = xpc_dictionary_get_uint64(a2, "portID");
                          if (!xpc_dictionary_get_uint64(a2, "portType") && v20 && sub_100018374(v20) && !(*(*v20 + 80))(v20))
                          {
                            v21 = v20[11];
                            UpstreamService = IOAccessoryManagerGetUpstreamService();
                            NSLog(@"SR: %s:%d Toggling Acc Power for service: %u, upstreamService: %u", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 1070, v20[11], UpstreamService);
                            [v4 toggleAccessoryPowerForPortService:UpstreamService];
                          }
                        }

                        return;
                      }

                      v73 = xpc_dictionary_create_reply(a2);
                      if (!v73)
                      {
                        NSLog(@"ERROR: Client sent kXPCIAPTransportDeviceUUIDStr xpc message without a reply context", v79, v80, v81);
                        return;
                      }

                      v36 = v73;
                      xpc_dictionary_set_BOOL(v73, "isValid", 0);
                      v74 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
                      sub_10001883C(1, @"Handling the kXPCIAPTransportDeviceUUIDStr XPC message, uuid: %@\n", v74);
                      if (v74)
                      {
                        xpc_dictionary_set_string(v36, "uuid", [v74 UTF8String]);
                        v46 = "isValid";
                        v49 = v36;
                        v50 = 1;
                        goto LABEL_86;
                      }

LABEL_87:
                      xpc_connection_send_message(*(a1 + 32), v36);
                      xpc_release(v36);
                      return;
                    }

                    v66 = xpc_dictionary_get_BOOL(a2, "transportListContainsItems");
                    sub_10001883C(1, @"_xpc_iaptransportd_handle_incoming_request::iap2dTransportListStates listContainsItems: %d\n", v66);
                    [v4 setIap2dPortListContainsItems:v66];
                  }

                  [v4 updateDeviceUUIDState];
                  [v4 updateSleepAssertionState];
                  return;
                }

                v60 = xpc_dictionary_create_reply(a2);
                if (!v60)
                {
                  NSLog(@"ERROR: Client sent kXPCGetPortAppleIDAuthState xpc message without a reply context", v79, v80, v81);
                  return;
                }

                v36 = v60;
                v61 = xpc_dictionary_get_uint64(a2, "portID");
                v62 = v61;
                length[0] = 0;
                v83[0] = 0;
                if (v61 && sub_100018374(v61))
                {
                  v63 = sub_100009090(v62, v83);
                }

                else
                {
                  v63 = 0;
                }

                xpc_dictionary_set_uint64(v36, "portID", v62);
                xpc_dictionary_set_uint64(v36, "portAppleIDAuthState", v63);
                if (v83[0])
                {
                  xpc_dictionary_set_data(v36, "portAppleIDAuthCertCaps", v83[0], 0x20uLL);
                }

                if (length[0])
                {
                  xpc_dictionary_set_string(v36, "portAppleIDAuthCertSerial", [length[0] UTF8String]);
                }

                goto LABEL_87;
              }

              v56 = xpc_dictionary_get_uint64(a2, "portID");
              v57 = xpc_dictionary_get_uint64(a2, "daemonMakingRequest");
              sub_10001883C(1, @"%s:%s-%d authentication failed for portAddr %llu and daemonType %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 884, v56, v57);
              if (!v56 || !sub_100018374(v56))
              {
                return;
              }

              v58 = v56[9];
              if (v58 == 1)
              {
                v59 = v56[8];
                if (v57 == 1)
                {
                  if ((v59 & 1) == 0)
                  {
LABEL_110:
                    NSLog(@"ERROR - Skipping HandleAuthenticationFailed! port->m_bIAPVersionDetermined = %d, daemonType = %d, port->m_bIAP2 = %d", v58, v57, v59);
                    return;
                  }
                }

                else if (v57 || (v59 & 1) != 0)
                {
                  goto LABEL_110;
                }
              }

              (*(*v56 + 72))(v56);
              return;
            }

            v52 = xpc_dictionary_get_uint64(a2, "portID");
            sub_10001883C(1, @"%s:%s-%d authentication passed for portAddr %llu\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 806, v52);
            if (v52 && sub_100018374(v52))
            {
              v53 = (*(*v52 + 80))(v52);
              v54 = xpc_dictionary_get_BOOL(a2, "hasNCM");
              if (v54)
              {
                v55 = xpc_dictionary_get_uint64(a2, "NCMInterfaceNumber");
                sub_10001883C(1, @"%s:%s-%d hasNCM interface at interface number %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 823, v55);
              }

              else
              {
                v55 = 0xFFFFFFFFLL;
              }

              (*(*v52 + 40))(v52, v54, v55);
              (*(*v52 + 64))(v52);
              v64 = 1;
              if (v53 && v53 != 11)
              {
                if (v53 == 1)
                {
                  v64 = 2;
                }

                else
                {
                  v64 = 0;
                }
              }

              [v4 setIoAccPortID:v64];
              v67 = &qword_100031DD8;
              if (v53 != 11)
              {
                v67 = &qword_100031DC8;
              }

              v68 = *v67;
              if (*v67)
              {
                length[0] = 0;
                v69 = xpc_dictionary_get_data(a2, "authenticationCertCaps", length);
                v70 = v69;
                if (v69 && length[0] == 32)
                {
                  v71 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
                  if (v71)
                  {
                    v72 = v71;
                    memcpy(v71, v70, length[0]);
                    sub_10000AD70(v68, 2, v64, v72);
                    free(v72);
                    return;
                  }
                }

                else
                {
                  sub_10001883C(1, @"%s:%d Length of cert caps %lu does not match iAPAuthCertCapsInt_t = %lu, pAuthCertCaps = %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", 865, length[0], 32, v69);
                }

                v32 = v68;
                v33 = 2;
                v34 = v64;
LABEL_62:
                sub_10000AD70(v32, v33, v34, 0);
                return;
              }
            }
          }
        }

        return;
      }

      v39 = xpc_dictionary_create_reply(a2);
      if (!v39)
      {
        NSLog(@"ERROR: Client sent kXPCGetHasE75To30PinAdapter xpc message without a reply context", v79, v80, v81);
        return;
      }

      v36 = v39;
      if (qword_100031DC8)
      {
        LOBYTE(v38) = (*(*qword_100031DC8 + 160))(qword_100031DC8);
        v40 = 0;
      }

      else
      {
        LOBYTE(v38) = 0;
        v40 = -536870212;
      }

      xpc_dictionary_set_uint64(v36, "result", v40);
      v46 = "bHasE75To30PinAdapter";
    }

    v49 = v36;
    v50 = v38;
LABEL_86:
    xpc_dictionary_set_BOOL(v49, v46, v50);
    goto LABEL_87;
  }

  v28 = xpc_dictionary_get_uint64(a2, "portID");
  sub_10001883C(1, @"%s:%s-%d portAddr = %llu\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "_xpc_iaptransportd_handle_incoming_request_block_invoke", 588, v28);
  if (v28 && sub_100018374(v28))
  {
    v29 = (*(*v28 + 80))(v28);
    (*(*v28 + 32))(v28);
    if (v29)
    {
      v30 = 2 * (v29 == 1);
    }

    else
    {
      v30 = 1;
    }

    [v4 setIoAccPortID:v30];
    v31 = &qword_100031DD8;
    if (v29 != 11)
    {
      v31 = &qword_100031DC8;
    }

    v32 = *v31;
    if (*v31)
    {
      v33 = 1;
      v34 = v30;
      goto LABEL_62;
    }
  }
}

uint64_t sub_100018374(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001878C;
  v3[3] = &unk_10002CDA0;
  v3[4] = &v4;
  v3[5] = a1;
  pthread_mutex_lock(&stru_100031AA8);
  sub_10001878C(v3);
  pthread_mutex_unlock(&stru_100031AA8);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100018434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10001844C(_OWORD *a1)
{
  v1 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v1;
  v2 = SecTaskCreateWithAuditToken(0, &token);
  if (v2)
  {
    v3 = v2;
    *token.val = 0;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.iaptransportd.clientport", &token);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v5);
        v8 = Value != 0;
        CFRelease(v5);
        v9 = *token.val;
        if (!*token.val)
        {
LABEL_13:
          CFRelease(v3);
          return v8;
        }

        if (Value)
        {
          v8 = 1;
LABEL_11:
          CFRelease(v9);
          goto LABEL_13;
        }

LABEL_10:
        NSLog(@"Unable to get entitlement '%@', error: %@", @"com.apple.iaptransportd.clientport", v9);
        v8 = 0;
        v9 = *token.val;
        goto LABEL_11;
      }

      CFRelease(v5);
    }

    v9 = *token.val;
    if (!*token.val)
    {
      v8 = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  NSLog(@"Unable to create security task from audit token.");
  return 0;
}

void sub_100018554(uint64_t a1)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v6 = -1431655766;
  v2 = pthread_self();
  pthread_getschedparam(v2, &v6, &v7);
  v7.sched_priority = 63;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v10.__opaque[24] = v3;
  *&v10.__opaque[40] = v3;
  *&v10.__sig = v3;
  *&v10.__opaque[8] = v3;
  pthread_attr_init(&v10);
  pthread_attr_setschedparam(&v10, &v7);
  if (![+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")])
  {
    [[NSString stringWithFormat:?]];
    v4 = dispatch_pthread_root_queue_create();
    [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    dispatch_release(v4);
  }

  dispatch_set_target_queue(*(*(*(a1 + 32) + 8) + 40), [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")]);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = off_100031CE8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#%s] high priority queue is set in iaptransportd", buf, 0xCu);
  }

  if ([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")])
  {
    [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  }

  if ([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")])
  {
    [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  }

  v5 = *(a1 + 40);
  if (v5 && sub_100018374(v5) && (*(*v5 + 80))(v5) == 2)
  {
    sub_100002D18(v5, 1);
  }
}

uint64_t sub_10001878C(uint64_t result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    while (v1[2] != *(result + 40))
    {
      v1 = v1[1];
      if (v1 == &qword_100031E68)
      {
        return result;
      }
    }

    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10001883C(char a1, NSString *format, ...)
{
  va_start(va, format);
  if ((qword_100031E20 & (1 << a1)) != 0)
  {
    NSLogv(format, va);
  }
}

uint64_t sub_100018890()
{
  NSLog(@"Loading logging preferences... (IAPTLogging)");
  qword_100031E20 = 0;
  result = CFPreferencesGetAppBooleanValue(@"Logging", @"com.apple.iaptransportd", 0);
  if (result)
  {
    qword_100031E20 |= 2uLL;
  }

  return result;
}

void sub_100018B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100018BAC(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100018CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100018CD4(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100018DF8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    *(*(*(a1 + 40) + 8) + 40) = v1;
    dispatch_retain(*(*(*(a1 + 40) + 8) + 40));
  }
}

void *sub_100018F48(void *result)
{
  v2 = *(result[4] + 24);
  if (v2 != result[5])
  {
    v3 = result;

    *(v3[4] + 24) = [v3[5] copy];
    v4 = v3[4];

    return [v4 _reloadEventHandler];
  }

  return result;
}

void *sub_100019018(void *result)
{
  v2 = *(result[4] + 40);
  if (v2 != result[5])
  {
    v3 = result;

    *(v3[4] + 40) = [v3[5] copy];
    v4 = v3[4];

    return [v4 _reloadEventHandler];
  }

  return result;
}

void sub_1000190E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  if (v4 != v3)
  {
    if (v4)
    {
      dispatch_release(v4);
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
    }

    *(v2 + 32) = v3;
    v5 = *(*(a1 + 32) + 32);
    if (v5)
    {

      dispatch_retain(v5);
    }
  }
}

void sub_1000192A8(uint64_t a1, _xpc_connection_s *object)
{
  if (object == &_xpc_error_connection_invalid)
  {
    *(*(a1 + 32) + 48) = 0;
  }

  else if (object != &_xpc_error_connection_interrupted)
  {
    if (xpc_get_type(object) == &_xpc_type_connection)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100019410;
      v10[3] = &unk_10002D928;
      v9 = *(a1 + 32);
      v11 = *(a1 + 40);
      v10[4] = v9;
      v10[5] = object;
      xpc_connection_set_event_handler(object, v10);
      xpc_connection_resume(object);
    }

    else if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        v5 = *(*(a1 + 32) + 8);
        v6 = *(v4 + 16);

        v6();
      }
    }

    return;
  }

  if (*(*(a1 + 32) + 49) == 1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

uint64_t sub_100019410(uint64_t result, void *a2)
{
  if (a2 == &_xpc_error_connection_invalid)
  {
    *(*(result + 32) + 48) = 0;
  }

  else if (a2 != &_xpc_error_connection_interrupted)
  {
    v2 = *(result + 56);
    if (v2)
    {
      v3 = *(result + 40);
      return (*(v2 + 16))(*(result + 56));
    }

    return result;
  }

  if (*(*(result + 32) + 49) == 1)
  {
    result = *(result + 48);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t sub_10001947C(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_10002D980;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 104) = 0xFFFF00000000;
  *(a1 + 112) = 0;
  *(a1 + 119) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v3, 0);
  *(a1 + 56) = 1000 * v3.tv_sec + v3.tv_usec / 1000;
  ++dword_100031FE8;
  return a1;
}

uint64_t sub_1000195A0(uint64_t result)
{
  *result = off_10002D980;
  *(result + 112) = 0;
  if (*(result + 32))
  {
    operator delete[]();
  }

  *(result + 110) = 0;
  *(result + 106) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  --dword_100031FE8;
  return result;
}

void sub_10001962C(uint64_t a1)
{
  sub_1000195A0(a1);

  operator delete();
}

uint64_t sub_100019664(uint64_t a1, uint64_t a2, char *__src, unint64_t a4, void *a5, _BYTE *a6)
{
  v6 = a5;
  *a6 = 0;
  v8 = *(a1 + 112);
  if ((v8 - 1) > 0xF)
  {
    result = 102;
    v13 = __src;
    goto LABEL_88;
  }

  if (v8 == 1 || (v11 = *(a1 + 72), !v11) || a2 - *(a1 + 64) <= v11)
  {
    *(a1 + 64) = a2;
    v13 = __src;
    if (!a4)
    {
LABEL_84:
      if (*(a1 + 112) >= 0x11u)
      {
        result = 0;
      }

      else
      {
        result = 36;
      }

      v6 = a5;
      goto LABEL_88;
    }

    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = a4;
    v17 = __src;
    while (1)
    {
      if ((v14 & 1) == 0)
      {
        v13 = v17 + 1;
        v21 = *v17;
        v20 = v16 - 1;
        switch(*(a1 + 112))
        {
          case 1:
            goto LABEL_21;
          case 2:
            if (v21 >= 2)
            {
              if (v21 == 2)
              {
                *(a1 + 116) = 1;
              }

              *(a1 + 16) = 0;
              *(a1 + 40) = v21;
              operator new[]();
            }

            if (*v17)
            {
              goto LABEL_82;
            }

            LOBYTE(v14) = 0;
            v24 = 3;
            goto LABEL_75;
          case 3:
            LOBYTE(v14) = 0;
            *(a1 + 113) += v21;
            *(a1 + 104) = v21 << 8;
            v24 = 4;
            goto LABEL_75;
          case 4:
            *(a1 + 16) = 0;
            *(a1 + 113) += v21;
            v33 = *(a1 + 104) + v21;
            *(a1 + 104) = v33;
            if (*(a1 + 120))
            {
              v34 = 8;
            }

            else
            {
              v34 = 1;
            }

            if (v34 < v33)
            {
              *(a1 + 40) = v33;
              operator new[]();
            }

            goto LABEL_82;
          case 5:
            if (v21 > 0xE)
            {
              goto LABEL_82;
            }

            *(a1 + 113) += v21;
            *(*(a1 + 88))++ = v21;
            *(a1 + 44) = v21;
            *(a1 + 108) = 0;
            v32 = *(a1 + 104);
            *(a1 + 110) = v32 - 2;
            *(a1 + 104) = v32 - 1;
            if (v21 == 4)
            {
              if ((v32 - 1) < 2u)
              {
LABEL_82:
                LOBYTE(v14) = 1;
              }

              else
              {
                LOBYTE(v14) = 0;
                *(a1 + 112) = 6;
                *(a1 + 110) = v32 - 3;
              }
            }

            else
            {
              if (!v21)
              {
                *(a1 + 117) = 1;
              }

              LOBYTE(v14) = 0;
              v24 = 7;
LABEL_75:
              *(a1 + 112) = v24;
            }

            goto LABEL_83;
          case 6:
            LOBYTE(v14) = 0;
            *(a1 + 108) = v21 << 8;
            *(a1 + 113) += v21;
            *(*(a1 + 88))++ = v21;
            *(a1 + 112) = 7;
            --*(a1 + 104);
            goto LABEL_83;
          case 7:
            *(a1 + 108) |= v21;
            *(a1 + 113) += v21;
            **(a1 + 88) = v21;
            v41 = *(a1 + 88) + 1;
            *(a1 + 88) = v41;
            --*(a1 + 104);
            if (*(a1 + 108) == 238)
            {
              *(a1 + 118) = 1;
            }

            v14 = *(a1 + 110);
            if (v14)
            {
              LOBYTE(v14) = 0;
              *(a1 + 112) = 8;
              *(a1 + 16) = v41;
            }

            else
            {
              *(a1 + 112) = 9;
              *(a1 + 16) = 0;
            }

            goto LABEL_83;
          case 8:
            v35 = *(a1 + 104);
            if (v16 >= v35)
            {
              v36 = *(a1 + 104);
            }

            else
            {
              v36 = v16;
            }

            *(a1 + 104) = v35 - v36;
            memcpy(*(a1 + 88), v17, v36);
            if (v35)
            {
              v37 = *(a1 + 113);
              v38 = v36;
              do
              {
                v39 = *v17++;
                v37 += v39;
                *(a1 + 113) = v37;
                --v38;
              }

              while (v38);
            }

            v20 = v16 - v36;
            *(a1 + 88) += v36;
            v14 = *(a1 + 104);
            if (v14)
            {
              goto LABEL_57;
            }

            v31 = 9;
            goto LABEL_77;
          case 9:
            v42 = *(a1 + 113) + v21;
            *(a1 + 113) = v42;
            if (v42)
            {
              goto LABEL_82;
            }

            *(a1 + 112) = 17;
            *(a1 + 56) = a2;
            *(a1 + 88) = 0;
            if (*(a1 + 116) == 1 && *(a1 + 117) == 1 && (*(a1 + 118) & 1) != 0)
            {
              goto LABEL_89;
            }

            goto LABEL_84;
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            LOBYTE(v14) = 0;
            *(a1 + 113) += v21;
            *(*(a1 + 88))++ = v21;
            --*(a1 + 104);
            v24 = *(a1 + 112) + 1;
            goto LABEL_75;
          case 0xE:
            --*(a1 + 104);
            v43 = *(a1 + 113);
            *(a1 + 115) = v43;
            v44 = v43 + v21;
            *(a1 + 113) = v44;
            if (v44)
            {
              goto LABEL_82;
            }

            LOBYTE(v14) = 0;
            v24 = 15;
            goto LABEL_75;
          case 0xF:
            v25 = *(a1 + 104);
            v26 = v25 - 1;
            if (v16 >= v25 - 1)
            {
              v27 = v25 - 1;
            }

            else
            {
              v27 = v16;
            }

            *(a1 + 104) = v25 - v27;
            memcpy(*(a1 + 88), v17, v27);
            if (v26)
            {
              v28 = *(a1 + 113);
              v29 = v27;
              do
              {
                v30 = *v17++;
                v28 += v30;
                *(a1 + 113) = v28;
                --v29;
              }

              while (v29);
            }

            v20 = v16 - v27;
            *(a1 + 88) += v27;
            if (*(a1 + 104) == 1)
            {
              LOBYTE(v14) = 0;
              v31 = 16;
LABEL_77:
              *(a1 + 112) = v31;
            }

            else
            {
LABEL_57:
              LOBYTE(v14) = 0;
            }

            v13 = v17;
            goto LABEL_83;
          case 0x10:
            v40 = *(a1 + 113) + v21;
            *(a1 + 113) = v40;
            if (v40)
            {
              goto LABEL_82;
            }

            *(a1 + 112) = 17;
            *(a1 + 56) = a2;
            *(a1 + 88) = 0;
LABEL_89:
            *a6 = 1;
            goto LABEL_84;
          default:
            abort();
        }
      }

      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = __src;
      }

      if (v15)
      {
        v19 = (__src - v15);
      }

      else
      {
        v19 = 0;
      }

      *(a1 + 120) = 0;
      *(a1 + 116) = 0;
      if (*(a1 + 32))
      {
        operator delete[]();
      }

      v15 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 104) = 0;
      *(a1 + 40) = 0;
      *(a1 + 44) = 15;
      *(a1 + 112) = 1;
      v20 = &v19[a4 - 1];
      v22 = *v18;
      v13 = v18 + 1;
      v21 = v22;
LABEL_21:
      *(a1 + 116) = 0;
      *(a1 + 118) = 0;
      *(a1 + 120) = 0;
      if (v21 == 85)
      {
        LOBYTE(v14) = 0;
        v23 = 2;
      }

      else
      {
        if (v21 != 90 || (*(a1 + 119) & 1) == 0)
        {
          LOBYTE(v14) = 0;
          if (v21 == 255)
          {
            *(a1 + 119) = 1;
          }

          goto LABEL_83;
        }

        LOBYTE(v14) = 0;
        *(a1 + 120) = 1;
        v23 = 22787;
      }

      *(a1 + 112) = v23;
      v15 = v13;
LABEL_83:
      v16 = v20;
      v17 = v13;
      if (!v20)
      {
        goto LABEL_84;
      }
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 116) = 0;
  if (*(a1 + 32))
  {
    operator delete[]();
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xF00000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  result = 60;
  v13 = __src;
  *(a1 + 64) = a2;
LABEL_88:
  *v6 = v13 - __src;
  return result;
}

uint64_t sub_100019D34(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10001A0A0(id a1)
{
  qword_100031E28 = asl_open(0, "IAP", 2u);
  if (qword_100031E28)
  {
    qword_100031E30 = asl_new(0);
  }

  else
  {
    syslog(3, "Couldn't open Event Log file");
  }
}

uint64_t sub_10001A2F4(io_registry_entry_t entry, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = 3758097084;
  if (a2)
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"DeviceVersion", kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      return 3758097136;
    }

    v14 = CFProperty;
    Value = CFNumberGetValue(CFProperty, kCFNumberSInt8Type, a2);
    CFRelease(v14);
    if (!Value)
    {
      return v11;
    }
  }

  if (a3)
  {
    v16 = IORegistryEntryCreateCFProperty(entry, @"FirmwareVersion", kCFAllocatorDefault, 0);
    if (!v16)
    {
      return 3758097136;
    }

    v17 = v16;
    v18 = CFNumberGetValue(v16, kCFNumberSInt8Type, a3);
    CFRelease(v17);
    if (!v18)
    {
      return v11;
    }
  }

  if (a4)
  {
    v19 = IORegistryEntryCreateCFProperty(entry, @"AuthMajorVersion", kCFAllocatorDefault, 0);
    if (!v19)
    {
      return 3758097136;
    }

    v20 = v19;
    v21 = CFNumberGetValue(v19, kCFNumberSInt8Type, a4);
    CFRelease(v20);
    if (!v21)
    {
      return v11;
    }
  }

  if (a5)
  {
    v22 = IORegistryEntryCreateCFProperty(entry, @"AuthMinorVersion", kCFAllocatorDefault, 0);
    if (!v22)
    {
      return 3758097136;
    }

    v23 = v22;
    v24 = CFNumberGetValue(v22, kCFNumberSInt8Type, a5);
    CFRelease(v23);
    if (!v24)
    {
      return v11;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v25 = IORegistryEntryCreateCFProperty(entry, @"DeviceID", kCFAllocatorDefault, 0);
  if (!v25)
  {
    return 3758097136;
  }

  v26 = v25;
  v27 = CFNumberGetValue(v25, kCFNumberSInt32Type, a6);
  CFRelease(v26);
  if (v27)
  {
    return 0;
  }

  return v11;
}

uint64_t sub_10001A4E0(mach_port_t a1, CFDataRef theData, CFDataRef *a3)
{
  length = 128;
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetLength(theData);
  v8 = IOConnectCallStructMethod(a1, 0, BytePtr, v7, outputStruct, &length);
  if (!v8)
  {
    *a3 = CFDataCreate(kCFAllocatorDefault, outputStruct, length);
  }

  return v8;
}

uint64_t sub_10001A694(mach_port_t a1, CFStringRef theString)
{
  v4 = 3758097085;
  Length = CFStringGetLength(theString);
  v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (CFStringGetCString(theString, v6, Length + 1, 0x8000100u))
    {
      v4 = IOConnectCallStructMethod(a1, 0xBu, v7, Length + 1, 0, 0);
    }

    else
    {
      v4 = 3758097090;
    }

    free(v7);
  }

  return v4;
}

void sub_10001A74C()
{
  sub_100003B5C();
  v2 = v0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[#%s] (%s) **ERROR** err - Invalid HID function %d\n", v1, 0x1Cu);
}

void sub_10001A7E4(unsigned __int8 *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100003B5C();
  sub_100003B7C();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[#%s] (%s) **ERROR** err = 0x%X when calling BTDeviceSetHIDProperties for m_btdevice %hhx, authStatus BT_TRUE, hidType %d, err", v4, 0x28u);
}

void sub_10001A884(unsigned __int8 *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100003B5C();
  sub_100003B7C();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[#%s] (%s) **ERROR** err = 0x%X when calling BTDeviceSetHIDProperties for m_btdevice %hhx, authStatus BT_FALSE, hidType %d, err", v4, 0x28u);
}

void sub_10001A924()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t sub_10001A990(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"flags", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v2 = CFProperty;
  valuePtr = -1431655766;
  if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
  {
    v3 = valuePtr & 0xFF0000;
    if ((valuePtr & 0xC) == 8)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (v3 != 0x10000)
    {
      v4 = 0;
    }

    if (v3 == 196608)
    {
      v4 = 3;
    }

    if (v3 == 0x40000)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

void sub_10001AA40(uint64_t a1, io_registry_entry_t a2)
{
  v84 = 0;
  v85 = 0;
  v83 = 0;
  valuePtr = 0;
  v81 = 0;
  v4 = *(a1 + 224);
  v5 = byte_100031AE8;
  v80 = 0;
  v79 = 31;
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v6 = "E75";
    }

    else
    {
      v6 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s), authCPService:%02X, aidbAttachUID:%02X\n", "AuthProcessStart", a1, v6, a2, v4);
  }

  v73 = a1;
  v74 = v4;
  v7 = 0;
  v75 = 0;
  v8 = 1;
  v72 = kCFAllocatorDefault;
  v71 = kAuthCertBufferKey;
  v70 = kAuthVersionKey;
  v69 = kAuthNonceBufferKey;
  v68 = kAuthResponseBufferKey;
  do
  {
    v85 = 0;
    sub_10000DBC8();
    if (v9)
    {
      syslog(4, "%s Starting auth loop authTryCurrent:%02X of authTryMaximum:%02X\n", "AuthProcessStart", v8, v5);
    }

    UpstreamService = IOAccessoryManagerGetUpstreamService();
    v11 = UpstreamService == 0;
    if (UpstreamService)
    {
      v12 = UpstreamService;
      IOObjectRelease(UpstreamService);
    }

    else
    {
      syslog(4, "%s IOAccMgrGetUpstreamService ioAccMgrSvcUpstream = IO_OBJECT_NULL\n", "AuthProcessStart");
      v12 = 0x7FFFFFFF;
    }

    v13 = sub_10001A990(a2);
    if (v13)
    {
      sub_100009840(v13, &v80 + 1, &v80, &v79);
      v14 = 0;
      v15 = HIBYTE(v80);
      v8 += HIBYTE(v80) ^ 1;
      v7 = 1;
      if ((v80 & 0x100) != 0)
      {
        break;
      }

      continue;
    }

    v16 = sub_10001A2F4(a2, &v83 + 1, &v83, &valuePtr + 1, &valuePtr, &v81);
    if (v16)
    {
      syslog(4, "%s cpGetDeviceInfo returned ioretStatus:%02X\n", "AuthProcessStart", v16);
      v14 = 0;
      v11 = 1;
      goto LABEL_89;
    }

    if ((HIBYTE(valuePtr) & 0xFE) != 2 || valuePtr)
    {
      syslog(4, "%s cpGetDeviceInfo returned  unsupported authVerMajor:%02X, authVerMinor:%02X\n", "AuthProcessStart", HIBYTE(valuePtr), valuePtr);
      v14 = 0;
      goto LABEL_89;
    }

    v17 = sub_10001A4C4(a2);
    v75 = v17;
    if (v17)
    {
      v18 = sub_100009B1C(v17, &v85);
      if (v18)
      {
        v19 = v85;
        if (v85)
        {
          LOBYTE(v18) = 1;
LABEL_31:
          if (byte_100031D99 != 1)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      syslog(6, "%s No dictionary cert serial number match found\n", "AuthProcessStart");
    }

    else
    {
      sub_10000DBC8();
      if (v9)
      {
        syslog(4, "%s cpCopyCertificateSerialNumber returned NULL !\n", "AuthProcessStart");
      }

      LOBYTE(v18) = 0;
    }

    v19 = v85;
    if (v85)
    {
      goto LABEL_31;
    }

LABEL_32:
    sub_10000DBB8();
    if (v9)
    {
      syslog(4, "%s Read accessory auth cert data, gbAuthCertNotCached:%d\n", "AuthProcessStart", byte_100031D99);
    }

    v19 = sub_10001A4A8(a2);
    v85 = v19;
LABEL_36:
    sub_10000DBB8();
    if (v9)
    {
      if (v19)
      {
        CFDataGetLength(v19);
      }

      sub_10000DBA8();
      syslog(4, "%s pCFCertData:%04X, certDataLen:%04lX\n", v60, v61, v63);
      v19 = v85;
    }

    if (!v19)
    {
      syslog(4, "%s cpCopyCertificate returned pCFCertData=NULL, auth service fail\n", "AuthProcessStart");
      v14 = 0;
      v11 = 1;
      goto LABEL_87;
    }

    v20 = v72;
    v21 = CFNumberCreate(v72, kCFNumberCharType, &valuePtr + 1);
    keys[0] = v71;
    keys[1] = v70;
    values[0] = v85;
    values[1] = v21;
    v67 = v21;
    v22 = CFDictionaryCreate(v20, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v64 = v18;
    if (VerifyCertAuthorityDictionary())
    {
      BytePtr = CFDataGetBytePtr(v85);
      Length = CFDataGetLength(v85);
      v66 = BytePtr;
      v65 = Length;
      v63 = v22;
      if (v75)
      {
        *v87 = 0xAAAAAAAAAAAAAAAALL;
        v88 = 0xAAAAAAAAAAAAAAAALL;
        v86[0] = v87;
        v78 = 16;
        v25 = IapAuthCertSerial();
        if (v25 && v86[0] && v78 - 1 <= 0xF)
        {
          __chkstk_darwin(v25, v26);
          v62 = &v65 - ((v27 + 19) & 0xFFFFFFFFFFFFFFF0);
          memset(v62, 170, v27 + 4);
          if (v78)
          {
            v28 = 0;
            v29 = v86[0];
            v30 = v62;
            do
            {
              sprintf(v30, "%02X", *v29);
              ++v28;
              v30 += 2;
              v29 = ++v86[0];
            }

            while (v28 < v78);
          }

          v31 = CFStringCreateWithCString(0, v62, 0x8000100u);
          if (v31)
          {
            v32 = v31;
            v33 = v75;
            v34 = CFStringCompare(v75, v31, 1uLL);
            v61 = v34 == kCFCompareEqualTo;
            if (v34)
            {
              CStringPtr = CFStringGetCStringPtr(v33, 0x8000100u);
              v36 = CFStringGetCStringPtr(v32, 0x8000100u);
              syslog(3, "%s Cert serial number mismatch: pCFCertSerialNumFromCPService:[%s] != pCFSerNumFromCertData:[%s]\n", "AuthProcessStart", CStringPtr, v36);
            }

            CFRelease(v32);
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          syslog(3, "%s IapAuthCertSerial failed bStatus:%d, pSerNumBin:%hhx, serNumBinLen:%02lX\n", "AuthProcessStart", v25, LODWORD(v86[0]), v78);
          v61 = 0;
        }
      }

      else
      {
        v61 = 1;
      }

      SecCertRef = GetSecCertRef();
      if (SecCertRef)
      {
        v38 = SecCertificateGetiAuthVersion();
        v39 = SecCertRef;
        SecCertRef = v38;
        CFRelease(v39);
      }

      v40 = HIBYTE(valuePtr);
      if (SecCertRef != HIBYTE(valuePtr))
      {
        syslog(3, "%s Authentication version mismatch: authVerMajor:%02X != secAuthVerMajor:%02X\n", "AuthProcessStart", HIBYTE(valuePtr), SecCertRef);
      }

      v60 = SecCertRef;
      v41 = IapAuthVerifyCertSerialNumber();
      if ((v41 & 1) == 0)
      {
        syslog(3, "%s IapAuthVerifyCertSerialNumber failed bCertNotRevoked:%d\n", "AuthProcessStart", 0);
      }

      v14 = AllocCapsFromAuthCert();
      sub_10000DBB8();
      if (v9)
      {
        syslog(4, "%s pkAccAuthCaps:%hhx, authCapsLen:%02lX\n", "AuthProcessStart", v14, v84);
      }

      if (v14)
      {
        v42 = v61;
        if (v60 == v40 && (v41 & v61) != 0 && (HIBYTE(valuePtr) & 0xFE) == 2)
        {
          v77 = 0;
          v78 = 0;
          connect = 0;
          GetRandomDigest();
          v43 = IOServiceOpen(a2, mach_task_self_, 0, &connect);
          if (v43)
          {
            syslog(4, "%s Auth CP service open fail svc:%04X, kernStatus:%02X, auth service fail\n", "AuthProcessStart", a2, v43);
            v11 = 1;
          }

          else
          {
            v47 = sub_10001A4E0(connect, v78, &v77);
            if (v47 || !v77)
            {
              syslog(3, "%s cpCreateSignature failed ioretStatus:%02X, pOutSig:%hhx, auth service fail\n", "AuthProcessStart", v47, v77);
              v11 = 1;
            }

            else
            {
              *v87 = v71;
              v88 = v69;
              v89 = v68;
              v90 = v70;
              v86[0] = v85;
              v86[1] = v78;
              v86[2] = v77;
              v86[3] = v67;
              v48 = CFDictionaryCreate(v72, v87, v86, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              v49 = VerifyNonceSigned();
              HIBYTE(v80) = v49;
              if (v49)
              {
                syslog(4, "%s Authentication pkAccAuthCaps:%04X, authCapsLen:%02X, authVerMajor:%02X PASSED !\n", "AuthProcessStart", v14, v84, HIBYTE(valuePtr));
              }

              CFRelease(v77);
              CFRelease(v48);
            }

            IOServiceClose(connect);
          }

          if (v78)
          {
            CFRelease(v78);
          }

          goto LABEL_76;
        }
      }

      else
      {
        syslog(3, "%s Accessory auth not supported pkAccAuthCaps:NULL\n", "AuthProcessStart");
        v42 = v61;
      }

      syslog(3, "%s Auth failed: bAuthSerNumMatch:%d, bAuthCertCapsOK:%d, bCertNotRevoked:%d\n", "AuthProcessStart", v42, v14 != 0, v41);
LABEL_76:
      v22 = v63;
      goto LABEL_77;
    }

    syslog(3, "%s Auth CP cert authority verify fail, auth failed !\n", "AuthProcessStart");
    v14 = 0;
LABEL_77:
    CFRelease(v67);
    CFRelease(v22);
    if (v75 && !v11)
    {
      if (HIBYTE(v80) == 1)
      {
        v44 = v85;
        if (!v85)
        {
          v11 = 0;
          goto LABEL_89;
        }

        if (byte_100031D99)
        {
          sub_10000DBC8();
          if (v9)
          {
            syslog(4, "%s Auth cert not cached, gbAuthCertNotCached:%d\n", "AuthProcessStart", 1);
          }

          goto LABEL_86;
        }

        if ((v64 & 1) == 0)
        {
          v46 = v75;
          goto LABEL_97;
        }

        v45 = v75;
        if ((sub_100009E44(v75) & 1) == 0)
        {
          v44 = v85;
          v46 = v45;
LABEL_97:
          sub_100009CB0(v46, v44);
        }
      }

      else
      {
        sub_10000A034(v75);
      }

LABEL_86:
      v11 = 0;
    }

LABEL_87:
    if (v85)
    {
      CFRelease(v85);
    }

LABEL_89:
    v15 = HIBYTE(v80);
    v8 += HIBYTE(v80) ^ 1;
    if ((v80 & 0x100) != 0)
    {
      break;
    }
  }

  while (v5 >= v8);
  if (v15)
  {
    sub_10000DBC8();
    v50 = v73;
    if (v9)
    {
      syslog(4, "%s Auth loop exit at authTryCurrent:%02X of authTryMaximum:%02X, bAuthPassed:%d\n", "AuthProcessStart", v8, v5, 1);
    }
  }

  else
  {
    syslog(3, "%s Auth loop exit at authTryCurrent:%02X of authTryMaximum:%02X, bAuthPassed:%d\n", "AuthProcessStart", v8, v5, 0);
    v50 = v73;
  }

  v87[0] = 0;
  if (!IOServiceOpen(a2, mach_task_self_, 0, v87))
  {
    if (sub_10001A5A4(v87[0], HIBYTE(v80)))
    {
      sub_10000DBA8();
      syslog(4, "%s cpSetAuthStatus(%d) returned ioretStatus:%02X\n", v60, v61, v63);
    }

    if (v79 > 30)
    {
      v51 = "UninitializedAuthError";
    }

    else
    {
      v51 = off_10002D248[v79];
    }

    v52 = CFStringCreateWithCString(v72, v51, 0x8000100u);
    if (v52)
    {
      v53 = v52;
      if (sub_10001A694(v87[0], v52))
      {
        if (v79 <= 30)
        {
          v54 = off_10002D248[v79];
        }

        sub_10000DBA8();
        syslog(4, "%s cpSetAuthErrorDescription(%s) returned ioretStatus:%02X\n", v65, v66, v67);
      }

      CFRelease(v53);
    }

    if (v7)
    {
      if (v80)
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      v56 = sub_10001A61C(v87[0], v55);
      if (v56)
      {
        syslog(4, "%s cpSetFdrValidationStatus(%d) returned ioretStatus:%02X\n", "AuthProcessStart", v55, v56);
      }

      if (sub_10001A5E0(v87[0], HIBYTE(v80) & v80 & 1))
      {
        sub_10000DBA8();
        syslog(4, "%s cpSetTrustStatus(%d) returned ioretStatus:%02X\n", v69, v70, v71);
      }
    }

    IOServiceClose(v87[0]);
  }

  v57 = v75;
  v58 = sub_10000A1BC(v50, a2, v12, HIBYTE(valuePtr), v14, v75, HIBYTE(v80), v11, v74);
  if (v14)
  {
    free(v14);
  }

  v59 = HIBYTE(v80);
  if (HIBYTE(v80) || xmmword_100031EE8 != v50)
  {
LABEL_139:
    if (v59)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (*(v58 + 225) == *(v58 + 224))
  {
    v59 = 0;
    goto LABEL_139;
  }

  [IAPTDPostAlert TearDownAccessoryNotification:v58 + 216];
  if (!HIBYTE(v80))
  {
LABEL_140:
    if (v57)
    {
      CFRelease(v57);
    }
  }

LABEL_142:
  sub_10000DBC8();
  if (v9)
  {
    syslog(4, "%s EXIT bServiceFailed:%d, pkAccAuthCaps:%hhx, bAuthPassed:%d\n", "AuthProcessStart", v11, 0, HIBYTE(v80));
  }
}

uint64_t sub_10001B750(uint64_t a1)
{
  syslog(4, "kAppleAuthCPMessageNewAuthRequested received. Call startAuthenticationProcess.");
  sub_10001AA40(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  return IOObjectRelease(v2);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}