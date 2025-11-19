@interface PlatformIAPDBridge
+ (id)sharedPlatformIAPDBridge;
- (BOOL)_getPortLockout:(unint64_t)a3;
- (BOOL)_handleTransmitData:(char *)a3 withLength:(unint64_t)a4 forPortID:(unint64_t)a5 withSynchronousTransmit:(BOOL)a6;
- (BOOL)_shouldProcessAuthenticationFailState:(ACCEndpoint_s *)a3;
- (BOOL)iapdAccessory:(ACCEndpoint_s *)a3 dataArrivedFromAccessory:(id)a4;
- (PlatformIAPDBridge)init;
- (unint64_t)_generatePortID;
- (void)_E75To30PinAdapterConnected;
- (void)_generateIAPDPortInfoForDictionary:(id)a3 fromEndpoint:(ACCEndpoint_s *)a4;
- (void)_generateIAPDPortTypeForDictionary:(id)a3 fromEndpoint:(ACCEndpoint_s *)a4;
- (void)_handleAccessoryInfo:(id *)a3 forPortID:(unint64_t)a4;
- (void)_handleAuthenticationState:(BOOL)a3 forPortID:(unint64_t)a4 certData:(id)a5;
- (void)_handleAvailableCurrentNegotiated:(unsigned __int16)a3 forPortID:(unint64_t)a4;
- (void)_handleB139B164ConnectedStatus:(id)a3;
- (void)_handleIncomingXPCEvent:(id)a3 forXPCConnection:(id)a4;
- (void)_handleLingoesSupported:(unsigned int)a3 forPortID:(unint64_t)a4;
- (void)_handlePrimaryPortReturn:(id)a3;
- (void)_handleResistorID:(id)a3 forPortDictionary:(id)a4;
- (void)_handleResistorIDChanged:(id)a3;
- (void)_handleSetPortLockout:(unint64_t)a3;
- (void)_sendHasAdaptor;
- (void)handleIAPDDisconnect;
- (void)handleIncomingXPCConnection:(id)a3;
- (void)iapdAccessoryArrived:(ACCEndpoint_s *)a3;
- (void)iapdAccessoryLeft:(id)a3;
- (void)sendData:(char *)a3 length:(unint64_t)a4 forConnection:(id)a5 portUID:(id)a6;
@end

@implementation PlatformIAPDBridge

- (PlatformIAPDBridge)init
{
  v21.receiver = self;
  v21.super_class = PlatformIAPDBridge;
  v2 = [(PlatformIAPDBridge *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = objc_alloc_init(ACCClientPortShimManager);
    v6 = *(v2 + 7);
    *(v2 + 7) = v5;

    v2[24] = 0;
    if ([v2 supportsIAPD])
    {
      v7 = dispatch_queue_create([@"com.apple.accessories.IAPDBridgeQueue" UTF8String], 0);
      v8 = *(v2 + 5);
      *(v2 + 5) = v7;

      mach_service = xpc_connection_create_mach_service([@"com.apple.iaptransportd.xpc" UTF8String], *(v2 + 5), 1uLL);
      v10 = *(v2 + 4);
      *(v2 + 4) = mach_service;

      v11 = *(v2 + 4);
      if (v11)
      {
        xpc_connection_set_event_handler(v11, &__block_literal_global_5);
        xpc_connection_activate(*(v2 + 4));
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v12 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v12 = &_os_log_default;
          v13 = &_os_log_default;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PlatformIAPDBridge init];
        }
      }
    }

    *(v2 + 12) = -1;
    v14 = (v2 + 48);
    if (!notify_register_check("com.apple.iaptransportd.notify.availability", v2 + 12))
    {
      state64 = 0;
      notify_get_state(*v14, &state64);
      if (state64 != 1)
      {
        notify_set_state(*v14, 1uLL);
        notify_post("com.apple.iaptransportd.notify.availability");
      }
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_handleResistorIDChanged:" name:ACCPlatformIAPDPort_ResistorIDChangedNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"_handleB139B164ConnectedStatus:" name:ACCPlatformIAPDPort_ReturnB139B164ConnectedNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"_handlePrimaryPortReturn:" name:ACCPlatformIAPDPort_ReturnPrimaryPort object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kIAPTransportServerLaunchedNotification", 0, 0, 1u);
  }

  return v2;
}

void __26__PlatformIAPDBridge_init__block_invoke(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __26__PlatformIAPDBridge_init__block_invoke_cold_2();
  }

  v6 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
  [v6 handleIncomingXPCConnection:v2];
}

+ (id)sharedPlatformIAPDBridge
{
  if (sharedPlatformIAPDBridge_onceToken != -1)
  {
    +[PlatformIAPDBridge sharedPlatformIAPDBridge];
  }

  v3 = sharedPlatformIAPDBridge_iapdBridgeInstance;

  return v3;
}

void __46__PlatformIAPDBridge_sharedPlatformIAPDBridge__block_invoke(id a1)
{
  v1 = objc_alloc_init(PlatformIAPDBridge);
  v2 = sharedPlatformIAPDBridge_iapdBridgeInstance;
  sharedPlatformIAPDBridge_iapdBridgeInstance = v1;

  v3 = +[NSMutableDictionary dictionary];
  v4 = gCoreAccessoriesEndpointMap;
  gCoreAccessoriesEndpointMap = v3;

  gIAPDEndpointMap = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

- (void)iapdAccessoryArrived:(ACCEndpoint_s *)a3
{
  if ([(PlatformIAPDBridge *)self supportsIAPD])
  {
    if (!self->iapdConnection)
    {
      var4 = a3->var4;
      if (var4 == 3 || var4 == 0)
      {
        v7 = [[ACCXPCConnection alloc] initWithServiceName:@"com.apple.iapd.xpc" queueName:@"com.apple.accessoryd.ACCXPCConnection"];
        iapdConnection = self->iapdConnection;
        self->iapdConnection = v7;

        [(ACCXPCConnection *)self->iapdConnection setDisconnectBlock:&__block_literal_global_43];
        [(PlatformIAPDBridge *)self _sendHasAdaptor];
      }
    }

    v9 = [(PlatformIAPDBridge *)self _generatePortID];
    v10 = a3->var2;
    v11 = *a3->var0;
    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = [NSNumber numberWithUnsignedLongLong:v9];
    [v12 setObject:v13 forKey:@"ACCPlatformIAPDBridge_PortID"];

    v14 = [(__CFString *)v10 copy];
    [v12 setObject:v14 forKey:ACCPlatformIAPDPort_EndpointUUID];

    v15 = [v11 copy];
    [v12 setObject:v15 forKey:ACCPlatformIAPDPort_ConnectionUUID];

    v16 = [NSNumber numberWithInt:a3->var4];
    [v12 setObject:v16 forKey:ACCPlatformIAPDPort_Protocol];

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v17 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412802;
      v41 = v11;
      v42 = 2048;
      v43 = v9;
      v44 = 2112;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] iapd accessory arrived, connectionUID %@, generated portID %llu, acc. info %@", &v40, 0x20u);
    }

    [gCoreAccessoriesEndpointMap setObject:v12 forKey:v10];
    v19 = gIAPDEndpointMap;
    v20 = [NSNumber numberWithUnsignedLongLong:v9];
    [v19 setObject:v12 forKey:v20];

    [(PlatformIAPDBridge *)self _generateIAPDPortTypeForDictionary:v12 fromEndpoint:a3];
    var3 = a3->var3;
    if (var3 <= 7 && ((1 << var3) & 0xC3) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v22 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v22 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a3->var3;
        v40 = 67109120;
        LODWORD(v41) = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] an iAP1 dock accessory connected with transport type %{coreacc:ACCEndpoint_TransportType_t}d", &v40, 8u);
      }

      if (!a3->var0)
      {
        goto LABEL_46;
      }

      v25 = acc_connection_copyProperties(a3->var0);
      v26 = acc_endpoint_copyProperties(a3);
      v27 = [gCoreAccessoriesEndpointMap objectForKey:v10];
      v28 = kACCProperties_Connection_PrimaryPortNumber;
      v29 = [v25 objectForKey:kACCProperties_Connection_PrimaryPortNumber];

      if (v29)
      {
        v30 = [v25 objectForKey:v28];
        [v27 setObject:v30 forKey:ACCPlatformIAPDBridge_PrimaryPortNumber];
      }

      v31 = kACCProperties_Endpoint_PortNumber;
      v32 = [(pthread_mutex_t *)v26 objectForKey:kACCProperties_Endpoint_PortNumber];

      if (v32)
      {
        v33 = [(pthread_mutex_t *)v26 objectForKey:v31];
        [v27 setObject:v33 forKey:@"ACCPlatformIAPDBridge_PortNumber"];
      }

      v34 = [(pthread_mutex_t *)v26 objectForKey:kACCProperties_Endpoint_ResistorID];
      if (v34)
      {
        [v27 setObject:v34 forKey:ACCPlatformIAPDPort_ResistorID];
        [(PlatformIAPDBridge *)self _handleResistorID:v34 forPortDictionary:v27];
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v35 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v35 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138412802;
        v41 = v11;
        v42 = 2048;
        v43 = v9;
        v44 = 2112;
        v45 = v27;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] iapd accessory arrived, connectionUID %@, generated portID %llu, coreAccToIAPDAccDict %@", &v40, 0x20u);
      }
    }

    else
    {
      Type = acc_connection_getType(a3->var0);
      [(PlatformIAPDBridge *)self _generateIAPDPortInfoForDictionary:v12 fromEndpoint:a3];
      if (Type != 2)
      {
        goto LABEL_46;
      }

      v25 = [gCoreAccessoriesEndpointMap objectForKey:v10];
      if (!v25)
      {
LABEL_45:

LABEL_46:
        return;
      }

      v38 = acc_connection_copyIdentifier(a3->var0);
      v26 = v38;
      if (!v38 || (convertNSStringToNSData(v38), (v39 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_44:

        goto LABEL_45;
      }

      v27 = v39;
      [v25 setObject:v39 forKey:@"ACCPlatformIAPDPort_BluetoothMACAddress"];
    }

    goto LABEL_44;
  }
}

void __43__PlatformIAPDBridge_iapdAccessoryArrived___block_invoke(id a1)
{
  v1 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
  [v1 handleIAPDDisconnect];
}

- (void)iapdAccessoryLeft:(id)a3
{
  v12 = a3;
  if ([(PlatformIAPDBridge *)self supportsIAPD])
  {
    v4 = [gCoreAccessoriesEndpointMap objectForKey:v12];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_8;
    }

    v6 = [v4 objectForKey:ACCPlatformIAPDPort_Protocol];
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    if ([v6 intValue] == 3)
    {
    }

    else
    {
      v8 = [v7 intValue];

      if (v8)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v9 = [v5 objectForKey:@"ACCPlatformIAPDBridge_PortID"];
    v10 = [v9 unsignedLongLongValue];
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "portID", v10);
    xpc_dictionary_set_string(v11, "requestType", "transportLeft");
    [(ACCXPCConnection *)self->iapdConnection sendMessage:v11];
    [gCoreAccessoriesEndpointMap removeObjectForKey:v12];
    [gIAPDEndpointMap removeObjectForKey:v9];

    goto LABEL_8;
  }

LABEL_9:

  _objc_release_x2();
}

- (BOOL)iapdAccessory:(ACCEndpoint_s *)a3 dataArrivedFromAccessory:(id)a4
{
  v6 = a4;
  if ([(PlatformIAPDBridge *)self supportsIAPD]&& ((var4 = a3->var4, var4 != 3) ? (v8 = var4 == 0) : (v8 = 1), v8))
  {
    v9 = a3->var2;
    v10 = [gCoreAccessoriesEndpointMap objectForKey:v9];
    v11 = v10;
    v12 = v10 != 0;
    if (v10)
    {
      v24 = v9;
      v23 = [v10 objectForKey:@"ACCPlatformIAPDBridge_PortID"];
      v13 = [v23 unsignedLongLongValue];
      v22 = [v11 objectForKey:@"ACCPlatformIAPDBridge_PortNumber"];
      v14 = [v22 unsignedLongLongValue];
      v21 = [v11 objectForKey:ACCPlatformIAPDBridge_PrimaryPortNumber];
      v15 = [v21 unsignedLongLongValue];
      v20 = [v11 objectForKey:@"ACCPlatformIAPDBridge_PrimaryPortType"];
      v16 = [v20 unsignedLongLongValue];
      v17 = [v11 objectForKey:@"ACCPlatformIAPDPort_BluetoothMACAddress"];
      v18 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v18, "portID", v13);
      xpc_dictionary_set_uint64(v18, "portType", v16);
      xpc_dictionary_set_uint64(v18, "portNumber", v14);
      xpc_dictionary_set_uint64(v18, "portManagerNumber", v15);
      xpc_dictionary_set_data(v18, "data", [v6 bytes], objc_msgSend(v6, "length"));
      xpc_dictionary_set_string(v18, "requestType", "dataArrived");
      if (v17)
      {
        xpc_dictionary_set_data(v18, "macAddr", [v17 bytes], objc_msgSend(v17, "length"));
      }

      [(ACCXPCConnection *)self->iapdConnection sendMessage:v18];

      v9 = v24;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)handleIAPDDisconnect
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] iapd disconnected from accessoryd", buf, 2u);
  }

  out_token = -1;
  if (!notify_register_check("com.apple.iapd.notify.availability", &out_token))
  {
    v7 = 0;
    notify_get_state(out_token, &v7);
    if (v7 == 1)
    {
      notify_set_state(out_token, 0);
      notify_post("com.apple.iapd.notify.availability");
    }

    notify_cancel(out_token);
  }

  if ([(PlatformIAPDBridge *)self supportsIAPD])
  {
    [(ACCXPCConnection *)self->iapdConnection setDisconnectBlock:0];
    iapdConnection = self->iapdConnection;
    self->iapdConnection = 0;
  }
}

- (void)handleIncomingXPCConnection:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 7;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PlatformIAPDBridge handleIncomingXPCConnection:];
  }

  if (xpc_get_type(v4) == &_xpc_type_connection)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v11 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PlatformIAPDBridge handleIncomingXPCConnection:];
    }

    xpc_connection_set_target_queue(v4, self->_accessoryIAPDBridgeListenerQueue);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __50__PlatformIAPDBridge_handleIncomingXPCConnection___block_invoke;
    handler[3] = &unk_1002268A0;
    v14 = v4;
    v18 = v14;
    xpc_connection_set_event_handler(v14, handler);
    xpc_connection_resume(v14);
  }

  else if (xpc_get_type(v4) == &_xpc_type_error)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PlatformIAPDBridge *)v4 handleIncomingXPCConnection:v12];
    }
  }

  else
  {
    v8 = xpc_copy_description(v4);
    if (v8)
    {
      v9 = v8;
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v10 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PlatformIAPDBridge handleIncomingXPCConnection:];
      }

      free(v9);
    }
  }
}

void __50__PlatformIAPDBridge_handleIncomingXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
  [v4 _handleIncomingXPCEvent:v3 forXPCConnection:*(a1 + 32)];
}

- (void)_handleIncomingXPCEvent:(id)a3 forXPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v6, "requestType");
    if (!string)
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v13 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] RequestType not specified in xpc message!", buf, 2u);
      }

      string = "<nil>";
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v16 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PlatformIAPDBridge _handleIncomingXPCEvent:forXPCConnection:];
    }

    if (!strcmp(string, "transmitData"))
    {
      reply = xpc_dictionary_create_reply(v6);
      if (reply)
      {
        *buf = 0;
        uint64 = xpc_dictionary_get_uint64(v6, "portID");
        data = xpc_dictionary_get_data(v6, "data", buf);
        v30 = xpc_dictionary_get_BOOL(v6, "waitSendDone");
        v31 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
        LODWORD(uint64) = [v31 _handleTransmitData:data withLength:*buf forPortID:uint64 withSynchronousTransmit:v30];

        xpc_dictionary_set_int64(reply, "result", uint64 ^ 1);
LABEL_71:
        xpc_connection_send_message(v7, reply);
      }
    }

    else
    {
      if (strcmp(string, "getHasE75To30PinAdapter"))
      {
        if (!strcmp(string, "IAPClientPortRegisterStr"))
        {
          v36 = xpc_dictionary_get_string(v6, "IAPClientPortUUIDStr");
          if (!v36)
          {
            goto LABEL_116;
          }

          v37 = v36;
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v38 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v38 = &_os_log_default;
            v49 = &_os_log_default;
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] _xpc_iaptransportd_handle_incoming_request handling kXPCIAPClientPortRegisterStr for uuid: %s", buf, 0xCu);
          }

          v50 = [NSString stringWithUTF8String:v37];
          v51 = [(ACCClientPortShimManager *)self->_clienPortShimManager findClientPortForUUID:v50];
          if (!v51)
          {
            v51 = [[ACCClientPortShim alloc] initWithUID:v50 xpcConnection:v7 delegate:self];
            [(ACCClientPortShimManager *)self->_clienPortShimManager addClienPort:v51 forUUID:v50];
          }
        }

        else
        {
          if (strcmp(string, "IAPClientPortUnregisterStr"))
          {
            if (!strcmp(string, "dataArrived"))
            {
              length = 0;
              v42 = xpc_dictionary_get_string(v6, "IAPClientPortUUIDStr");
              v43 = xpc_dictionary_get_data(v6, "data", &length);
              if (!v42)
              {
                goto LABEL_116;
              }

              v44 = v43;
              if (!v43)
              {
                goto LABEL_116;
              }

              v45 = logObjectForModule_9();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = v42;
                *&buf[12] = 2048;
                *&buf[14] = length;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] _xpc_iaptransportd_handle_incoming_request handling kXPCDataArrivedStr for uuid: %s with %lu bytes", buf, 0x16u);
              }

              v46 = [NSString stringWithUTF8String:v42];
              v47 = [(ACCClientPortShimManager *)self->_clienPortShimManager findClientPortForUUID:v46];
              v48 = v47;
              if (v47)
              {
                [v47 receiveData:v44 length:length];
              }

              goto LABEL_88;
            }

            if (!strcmp(string, "setPortLockout"))
            {
              v52 = xpc_dictionary_get_uint64(v6, "portID");
              v50 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
              [v50 _handleSetPortLockout:v52];
LABEL_115:

              goto LABEL_116;
            }

            if (strcmp(string, "getPortLockout"))
            {
              if (!strcmp(string, "handleAuthenticationPassed"))
              {
                v56 = xpc_dictionary_get_uint64(v6, "portID");
                *buf = 0;
                v57 = xpc_dictionary_get_data(v6, "certData", buf);
                v50 = 0;
                if (v57 && *buf)
                {
                  v50 = [NSData dataWithBytes:v57 length:?];
                }

                v58 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
                v51 = v58;
                v59 = 1;
              }

              else
              {
                if (strcmp(string, "handleAuthenticationFailed"))
                {
                  if (!strcmp(string, "iAP1LingoesSupported"))
                  {
                    v61 = xpc_dictionary_get_uint64(v6, "portID");
                    v62 = xpc_dictionary_get_uint64(v6, "lingoesSupported");
                    if (!v62)
                    {
                      goto LABEL_116;
                    }

                    v63 = v62;
                    v46 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
                    [v46 _handleLingoesSupported:v63 forPortID:v61];
                  }

                  else
                  {
                    if (strcmp(string, "availableCurrentNegotiated"))
                    {
                      if (!strcmp(string, "accInfo"))
                      {
                        v18 = xpc_dictionary_get_uint64(v6, "portID");
                        v19 = xpc_dictionary_get_string(v6, "accName");
                        v20 = xpc_dictionary_get_string(v6, "accManufacturer");
                        v21 = xpc_dictionary_get_string(v6, "accModel");
                        v22 = xpc_dictionary_get_string(v6, "accSerialNumber");
                        v23 = xpc_dictionary_get_string(v6, "accHardwareVersion");
                        v24 = xpc_dictionary_get_string(v6, "accFirmwareVersionActive");
                        if (v19)
                        {
                          if (v20)
                          {
                            if (v21)
                            {
                              if (v22)
                              {
                                if (v23)
                                {
                                  v25 = v24;
                                  if (v24)
                                  {
                                    v79 = 0;
                                    v78 = 0u;
                                    v77 = 0u;
                                    v76 = 0u;
                                    v75 = 0u;
                                    v74 = 0u;
                                    v73 = 0u;
                                    v72 = 0u;
                                    *buf = [NSString stringWithCString:v19 encoding:4];
                                    *&buf[8] = [NSString stringWithCString:v20 encoding:4];
                                    *&buf[16] = [NSString stringWithCString:v21 encoding:4];
                                    v68 = [NSString stringWithCString:v22 encoding:4];
                                    v69 = [NSString stringWithCString:v23 encoding:4];
                                    v70 = [NSString stringWithCString:v25 encoding:4];
                                    v71 = 0;
                                    v26 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
                                    [v26 _handleAccessoryInfo:buf forPortID:v18];

                                    if (*buf)
                                    {
                                      CFRelease(*buf);
                                      *buf = 0;
                                    }

                                    if (*&buf[8])
                                    {
                                      CFRelease(*&buf[8]);
                                      *&buf[8] = 0;
                                    }

                                    if (*&buf[16])
                                    {
                                      CFRelease(*&buf[16]);
                                      *&buf[16] = 0;
                                    }

                                    if (v68)
                                    {
                                      CFRelease(v68);
                                      v68 = 0;
                                    }

                                    if (v69)
                                    {
                                      CFRelease(v69);
                                      v69 = 0;
                                    }

                                    if (v70)
                                    {
                                      CFRelease(v70);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_116;
                    }

                    v64 = xpc_dictionary_get_uint64(v6, "portID");
                    v65 = xpc_dictionary_get_uint64(v6, "availableCurrent");
                    v46 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
                    [v46 _handleAvailableCurrentNegotiated:v65 forPortID:v64];
                  }

LABEL_88:

                  goto LABEL_116;
                }

                v56 = xpc_dictionary_get_uint64(v6, "portID");
                *buf = 0;
                v60 = xpc_dictionary_get_data(v6, "certData", buf);
                v50 = 0;
                if (v60 && *buf)
                {
                  v50 = [NSData dataWithBytes:v60 length:?];
                }

                v58 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
                v51 = v58;
                v59 = 0;
              }

              [(ACCClientPortShim *)v58 _handleAuthenticationState:v59 forPortID:v56 certData:v50];
              goto LABEL_114;
            }

            reply = xpc_dictionary_create_reply(v6);
            v54 = xpc_dictionary_get_uint64(v6, "portID");
            v55 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
            LOBYTE(v54) = [v55 _getPortLockout:v54];

            xpc_dictionary_set_uint64(reply, "result", 0);
            v34 = "bAuthLockout";
            v35 = reply;
            v33 = v54;
            goto LABEL_70;
          }

          v39 = xpc_dictionary_get_string(v6, "IAPClientPortUUIDStr");
          if (!v39)
          {
            goto LABEL_116;
          }

          v40 = v39;
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v41 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v41 = &_os_log_default;
            v53 = &_os_log_default;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] _xpc_iaptransportd_handle_incoming_request handling kXPCIAPClientPortUnregisterStr for uuid: %s", buf, 0xCu);
          }

          v50 = [NSString stringWithUTF8String:v40];
          v51 = [(ACCClientPortShimManager *)self->_clienPortShimManager findClientPortForUUID:v50];
          if (v51)
          {
            [(ACCClientPortShimManager *)self->_clienPortShimManager removeClienPortForUUID:v50];
            [(ACCClientPortShim *)v51 shutdown];
          }
        }

LABEL_114:

        goto LABEL_115;
      }

      reply = xpc_dictionary_create_reply(v6);
      if (reply)
      {
        v32 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
        [v32 _E75To30PinAdapterConnected];

        xpc_dictionary_set_uint64(reply, "result", 0);
        v33 = gb139b164ConnectedState;
        v34 = "bHasE75To30PinAdapter";
        v35 = reply;
LABEL_70:
        xpc_dictionary_set_BOOL(v35, v34, v33);
        goto LABEL_71;
      }
    }

    goto LABEL_116;
  }

  v8 = xpc_copy_description(v6);
  v9 = xpc_copy_description(v7);
  v10 = v9;
  if (v8 && v9)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v11 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] unexpected event: %s for connection: %s\n", buf, 0x16u);
    }
  }

  else if (!v8)
  {
    if (!v9)
    {
      goto LABEL_116;
    }

    goto LABEL_21;
  }

  free(v8);
  if (v10)
  {
LABEL_21:
    free(v10);
  }

LABEL_116:
}

- (BOOL)_handleTransmitData:(char *)a3 withLength:(unint64_t)a4 forPortID:(unint64_t)a5 withSynchronousTransmit:(BOOL)a6
{
  v9 = [NSNumber numberWithUnsignedLongLong:a5];
  v10 = [gIAPDEndpointMap objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    EndpointWithUUID = acc_manager_getEndpointWithUUID(v12);
    v14 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a3, a4, kCFAllocatorNull);
    v15 = acc_endpoint_sendOutgoingData(EndpointWithUUID, v14);
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v16 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412802;
      v22 = v12;
      v23 = 2048;
      v24 = a5;
      v25 = 1024;
      v26 = v15;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[#iapd Bridge] found endpointUUID %@ for portID %llu, transmitData success = %d", &v21, 0x1Cu);
    }

    CFRelease(v14);
  }

  else
  {
    if (gLogObjects)
    {
      v17 = gNumLogObjects < 7;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v18 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] no dictionary found for portID %llu", &v21, 0xCu);
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)_E75To30PinAdapterConnected
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:ACCPlatformIAPDPort_RequestB139B164ConnectedNotification object:0 userInfo:0];
}

- (void)_handleSetPortLockout:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedLongLong:?];
  v4 = [gIAPDEndpointMap objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    EndpointWithUUID = acc_manager_getEndpointWithUUID(v6);
    acc_manager_enableLockoutForTransportType(EndpointWithUUID[6], 6u);
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v8 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PlatformIAPDBridge _handleSetPortLockout:];
    }
  }
}

- (BOOL)_getPortLockout:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedLongLong:?];
  v5 = [gIAPDEndpointMap objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    EndpointWithUUID = acc_manager_getEndpointWithUUID(v7);
    isLockoutActiveForTransportType = acc_manager_isLockoutActiveForTransportType(EndpointWithUUID[6], 0);
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v10 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 2048;
      v16 = a3;
      v17 = 1024;
      v18 = isLockoutActiveForTransportType;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[#iapd Bridge] found endpointUUID %@ for portID %llu, lockoutEnabled = %d", &v13, 0x1Cu);
    }
  }

  else
  {
    LOBYTE(isLockoutActiveForTransportType) = 0;
  }

  return isLockoutActiveForTransportType;
}

- (void)_handleAuthenticationState:(BOOL)a3 forPortID:(unint64_t)a4 certData:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [NSNumber numberWithUnsignedLongLong:a4];
  v10 = [gIAPDEndpointMap objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __68__PlatformIAPDBridge__handleAuthenticationState_forPortID_certData___block_invoke;
    v17[3] = &unk_1002268E8;
    v17[4] = self;
    v19 = v6;
    v18 = v8;
    if ((acc_manager_protectedEndpointCall(v12, 0, 0, v17) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v13 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[PlatformIAPDBridge _handleAuthenticationState:forPortID:certData:]";
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] %s: didn't find endpointUUID %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v14 = gNumLogObjects < 7;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v15 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v21) = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find dictionary for auth passed %d", buf, 8u);
    }
  }
}

uint64_t __68__PlatformIAPDBridge__handleAuthenticationState_forPortID_certData___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  if (acc_connection_getType(*a2) == 6 || acc_endpoint_getTransportType(a2) == 8)
  {
    v6 = *(*(a1 + 32) + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __68__PlatformIAPDBridge__handleAuthenticationState_forPortID_certData___block_invoke_2;
    v13[3] = &__block_descriptor_41_e5_v8__0l;
    v14 = *(a1 + 48);
    v13[4] = v5;
    dispatch_async(v6, v13);
  }

  if (v4)
  {
    if (*(a1 + 48) == 1)
    {
      acc_connection_setAuthCertData(v4, *(a1 + 40));
      v7 = v4;
      v8 = 2;
LABEL_12:
      acc_connection_setAuthStatus(v7, 1, v8);
      return 1;
    }

    if ([*(a1 + 32) _shouldProcessAuthenticationFailState:a2])
    {
      v7 = v4;
      v8 = 1;
      goto LABEL_12;
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v9 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a2 + 24);
      *buf = 67109120;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Ignoring failed auth state for endpoint type %{coreacc:ACCEndpoint_TransportType_t}d, matching iaptransportd behavior", buf, 8u);
    }
  }

  return 1;
}

void __68__PlatformIAPDBridge__handleAuthenticationState_forPortID_certData___block_invoke_2(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] enabling authentication passed? %d for USB Host", v7, 8u);
  }

  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    platform_usb_unlockUSBHostInterfaces(v6);
  }

  else
  {
    platform_usb_lockUSBHostInterfaces(v6);
  }
}

- (void)_handleLingoesSupported:(unsigned int)a3 forPortID:(unint64_t)a4
{
  v5 = [NSNumber numberWithUnsignedLongLong:a4];
  v6 = [gIAPDEndpointMap objectForKey:v5];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v10 = &_os_log_default;
    }

    else
    {
      v13 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find dictionary for supported lingoes: %08x", &v16, 8u);
    }
  }

  else
  {
    v11 = [v6 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    v13 = v11;
    if (v11)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v11);
      if (EndpointWithUUID)
      {
        platform_analytics_iap1_lingoesSupportedDidChange(EndpointWithUUID);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v14 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v14 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        v17 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find endpoint for supported lingoes: %08x", &v16, 8u);
      }
    }
  }
}

- (void)_handleAvailableCurrentNegotiated:(unsigned __int16)a3 forPortID:(unint64_t)a4
{
  v4 = [NSNumber numberWithUnsignedLongLong:a4];
  v5 = [gIAPDEndpointMap objectForKey:v4];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 7;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v11 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find dictionary for power negotiation", v14, 2u);
    }
  }

  else
  {
    v10 = [v5 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    v11 = v10;
    if (v10)
    {
      if (acc_manager_getEndpointWithUUID(v10))
      {
        platform_analytics_availableCurrentNegotiated();
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v12 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v12 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find endpoint for power negotiation", buf, 2u);
      }
    }
  }
}

- (void)_handleAccessoryInfo:(id *)a3 forPortID:(unint64_t)a4
{
  v5 = [NSNumber numberWithUnsignedLongLong:a4];
  v6 = [gIAPDEndpointMap objectForKey:v5];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v10 = &_os_log_default;
    }

    else
    {
      v13 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find dictionary for power negotiation", v16, 2u);
    }
  }

  else
  {
    v11 = [v6 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
    v13 = v11;
    if (v11)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v11);
      if (a3 && EndpointWithUUID)
      {
        acc_endpoint_setAccessoryInfo(EndpointWithUUID);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v14 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v14 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Can't find endpoint for power negotiation", buf, 2u);
      }
    }
  }
}

- (void)_handleResistorID:(id)a3 forPortDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Sending kXPCResistorArrivedStr with resistorID %@ for portDict %@", buf, 0x16u);
  }

  if (v7)
  {
    v23 = [v7 objectForKey:@"ACCPlatformIAPDBridge_PortID"];
    value = [v23 unsignedLongLongValue];
    v22 = [v7 objectForKey:@"ACCPlatformIAPDBridge_PortNumber"];
    v11 = [v22 unsignedLongLongValue];
    v12 = [v7 objectForKey:ACCPlatformIAPDBridge_PrimaryPortNumber];
    v13 = [v12 unsignedLongLongValue];
    v14 = [v7 objectForKey:@"ACCPlatformIAPDBridge_PrimaryPortType"];
    v15 = self;
    v16 = [v14 unsignedLongLongValue];
    v17 = v6;
    v18 = [v6 unsignedLongLongValue];
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v19, "portNumber", v11);
    xpc_dictionary_set_uint64(v19, "portManagerNumber", v13);
    xpc_dictionary_set_uint64(v19, "portType", v16);
    xpc_dictionary_set_uint64(v19, "portID", value);
    v20 = v18;
    v6 = v17;
    xpc_dictionary_set_uint64(v19, "resistorID", v20);
    xpc_dictionary_set_string(v19, "requestType", "resistorArrived");
    [(ACCXPCConnection *)v15->iapdConnection sendMessage:v19];
  }
}

- (void)_generateIAPDPortInfoForDictionary:(id)a3 fromEndpoint:(ACCEndpoint_s *)a4
{
  v5 = a3;
  v6 = [gCoreAccessoriesEndpointMap objectForKey:a4->var2];
  var3 = a4->var3;
  p_var3 = &a4->var3;
  if (var3 == 8)
  {
    v9 = ACCPlatformIAPDPort_ConnectionUUID;
    v10 = [v5 objectForKey:ACCPlatformIAPDPort_ConnectionUUID];
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 7;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v12 = &_os_log_default;
    }

    else
    {
      v15 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[#iapd Bridge] iAP1 USB Host connectionUUID = %@", buf, 0xCu);
    }

    v24 = v9;
    v25 = v10;
    v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:ACCPlatformIAPDPort_RequestPrimaryPort object:0 userInfo:v16];

    v18 = gPrimaryPortNumber;
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v19 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[#iapd Bridge] Returning primaryPortNumber %llu for USBHost endpoint type", buf, 0xCu);
    }

    v21 = 2;
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 7;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v14 = &_os_log_default;
    }

    else
    {
      v10 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PlatformIAPDBridge _generateIAPDPortInfoForDictionary:? fromEndpoint:?];
    }

    v18 = 0;
    v21 = 0;
  }

  v22 = [NSNumber numberWithUnsignedLongLong:v21];
  v23 = [NSNumber numberWithUnsignedLongLong:v18];
  [v6 setObject:v22 forKey:@"ACCPlatformIAPDBridge_PortNumber"];
  [v6 setObject:v23 forKey:ACCPlatformIAPDBridge_PrimaryPortNumber];
}

- (void)_generateIAPDPortTypeForDictionary:(id)a3 fromEndpoint:(ACCEndpoint_s *)a4
{
  v5 = [gCoreAccessoriesEndpointMap objectForKey:a4->var2];
  if (a4->var0)
  {
    if (acc_connection_getType(a4->var0) == 2)
    {
      v6 = 2;
      goto LABEL_17;
    }

    TransportType = acc_endpoint_getTransportType(a4);
    v6 = 1;
    if (!TransportType || TransportType == 8)
    {
      goto LABEL_17;
    }

    if (TransportType != 6)
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v8 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        var3 = a4->var3;
        v16 = 67109120;
        v17 = var3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Unknown transport type %{coreacc:ACCEndpoint_TransportType_t}d", &v16, 8u);
      }
    }
  }

  v6 = 0;
LABEL_17:
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 7;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a4->var3;
    v16 = 67109376;
    v17 = v6;
    v18 = 1024;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] generated ACCPlatform_IAPDPort_t %d for %{coreacc:ACCEndpoint_TransportType_t}d", &v16, 0xEu);
  }

  v15 = [NSNumber numberWithUnsignedLongLong:v6];
  [v5 setObject:v15 forKey:@"ACCPlatformIAPDBridge_PrimaryPortType"];
}

- (unint64_t)_generatePortID
{
  if ((_generatePortID_gPortIDCounter + 1) > 1)
  {
    result = _generatePortID_gPortIDCounter + 1;
  }

  else
  {
    result = 1;
  }

  _generatePortID_gPortIDCounter = result;
  return result;
}

- (void)_sendHasAdaptor
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResistorIDChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = ACCPlatformIAPDPort_ConnectionUUID;
  v6 = [v4 objectForKey:ACCPlatformIAPDPort_ConnectionUUID];
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 7;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v53 = v6;
    v54 = 2112;
    v55 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Received notification for handling resistor ID change, connectionUUID %@, accInfo contained in notification %@", buf, 0x16u);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = [gCoreAccessoriesEndpointMap allValues];
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v11)
  {
    v13 = v11;
    v43 = self;
    v44 = v4;
    v14 = 0;
    v15 = *v48;
    v16 = &_os_log_default;
    *&v12 = 134218240;
    v42 = v12;
    v45 = *v48;
LABEL_13:
    v17 = 0;
    v18 = v14;
    v46 = v13;
    while (1)
    {
      if (*v48 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v47 + 1) + 8 * v17);

      v19 = [v14 objectForKey:v5];
      v20 = [v19 isEqualToString:v6];

      if (v20)
      {
        v21 = [v14 objectForKey:@"ACCPlatformIAPDBridge_PrimaryPortType"];
        if ([v21 unsignedIntValue] != 1)
        {

          if (gLogObjects && gNumLogObjects > 6)
          {
            v29 = *(gLogObjects + 48);
            v30 = v43;
            v4 = v44;
          }

          else
          {
            v30 = v43;
            v4 = v44;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v29 = &_os_log_default;
            v31 = &_os_log_default;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v53 = v14;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[#iapd Bridge] Found dictionary %@ in coreAccToIAPDAccDict for the resistorID change", buf, 0xCu);
          }

          v32 = ACCPlatformIAPDPort_ResistorID;
          v33 = [v4 objectForKey:ACCPlatformIAPDPort_ResistorID];
          if (!v33)
          {
            goto LABEL_50;
          }

          v34 = [v14 objectForKey:@"ACCPlatformIAPDBridge_PortNumber"];
          if (v34)
          {
            goto LABEL_48;
          }

          v35 = [v14 objectForKey:ACCPlatformIAPDPort_EndpointUUID];
          v36 = v35;
          if (!v35)
          {
            goto LABEL_47;
          }

          EndpointWithUUID = acc_manager_getEndpointWithUUID(v35);
          if (EndpointWithUUID)
          {
            v38 = acc_endpoint_copyProperties(EndpointWithUUID);
            v39 = [(pthread_mutex_t *)v38 objectForKey:kACCProperties_Endpoint_PortNumber];
            if (v39)
            {
              v40 = v39;
              [v14 setObject:v39 forKey:@"ACCPlatformIAPDBridge_PortNumber"];

LABEL_47:
LABEL_48:
              [v14 setObject:v33 forKey:v32, v42];
              [(PlatformIAPDBridge *)v30 _handleResistorID:v33 forPortDictionary:v14];
LABEL_49:

LABEL_50:
              goto LABEL_56;
            }
          }

          goto LABEL_49;
        }

        v22 = v10;
        v23 = v5;
        v24 = v16;
        v25 = v6;
        v26 = gLogObjects;
        v27 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v16 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v42;
            v53 = v26;
            v54 = 1024;
            LODWORD(v55) = v27;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v28 = v16;
        }

        v6 = v25;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = v14;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[#iapd Bridge] Got resistorID notification for eACCPlatformIAPDPort_USB, unexpected. (accessory info %@)", buf, 0xCu);
        }

        v16 = v24;
        v5 = v23;
        v10 = v22;
        v15 = v45;
        v13 = v46;
      }

      v17 = v17 + 1;
      v18 = v14;
      if (v13 == v17)
      {
        v13 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v13)
        {
          goto LABEL_13;
        }

        v4 = v44;
        break;
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v14 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v41 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Unable to find iapd information dictionary for connectionUUID %@", buf, 0xCu);
  }

LABEL_56:
}

- (void)_handleB139B164ConnectedStatus:(id)a3
{
  v4 = [a3 userInfo];
  v3 = [v4 objectForKey:ACCPlatformIAPDPort_B139B164Connected];
  gb139b164ConnectedState = [v3 BOOLValue];
}

- (void)_handlePrimaryPortReturn:(id)a3
{
  v4 = [a3 userInfo];
  v3 = [v4 objectForKey:ACCPlatformIAPDBridge_PrimaryPortNumber];
  gPrimaryPortNumber = [v3 unsignedIntValue];
}

- (void)sendData:(char *)a3 length:(unint64_t)a4 forConnection:(id)a5 portUID:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a3 && a4)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v11, "data", a3, a4);
    xpc_dictionary_set_string(v11, "IAPClientPortUUIDStr", [v10 UTF8String]);
    xpc_dictionary_set_string(v11, "requestType", "transmitData");
    xpc_connection_send_message(v9, v11);
  }

  else
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 7;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v13 = &_os_log_default;
    }

    else
    {
      v14 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] ACCClientPortShimDelegate: ERROR: NULL transport data", v15, 2u);
    }
  }
}

- (BOOL)_shouldProcessAuthenticationFailState:(ACCEndpoint_s *)a3
{
  if (!a3)
  {
    return 1;
  }

  TransportType = acc_endpoint_getTransportType(a3);
  result = 1;
  if (TransportType <= 7 && ((1 << TransportType) & 0xC3) != 0)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 7;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_5_9();
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v9, v10, v11, v12, v13[0]);
      }

      v7 = &_os_log_default;
      v6 = &_os_log_default;
    }

    else
    {
      v7 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = TransportType;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#iapd Bridge] Got endpoint type of %d, must not handle failed auth state", v13, 8u);
    }

    return 0;
  }

  return result;
}

void __26__PlatformIAPDBridge_init__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleIncomingXPCConnection:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleIncomingXPCConnection:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingXPCConnection:(void *)a1 .cold.6(void *a1, NSObject *a2)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#iapd Bridge] handling XPC_TYPE_ERROR %s\n", v3, 0xCu);
}

- (void)handleIncomingXPCConnection:.cold.8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleIncomingXPCEvent:forXPCConnection:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleSetPortLockout:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "[#iapd Bridge] found endpointUUID %@ for portID %llu, handle port lockout", v2, 0x16u);
}

- (void)_generateIAPDPortInfoForDictionary:(int *)a1 fromEndpoint:.cold.2(int *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

@end