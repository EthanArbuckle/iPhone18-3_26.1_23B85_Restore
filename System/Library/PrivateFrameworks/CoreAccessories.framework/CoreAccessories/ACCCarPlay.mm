@interface ACCCarPlay
+ (id)sharedManager;
- (id)_init;
- (void)carPlayAppLinksStateForCertSerial:(id)serial withReply:(id)reply;
- (void)carPlayIconStateForCertSerial:(id)serial andAppCategories:(unint64_t)categories withReply:(id)reply;
- (void)carPlaySendConnectionTimeEvent:(int64_t)event connectionType:(int64_t)type eventTime:(id)time;
- (void)filterMatchingDigitalCarKeys:(id)keys forAccessory:(id)accessory withCompletionHandler:(id)handler;
- (void)isCarPlayPairedWithCertSerial:(id)serial withReply:(id)reply;
- (void)isWirelessCarPlayAllowedForCertSerial:(id)serial withReply:(id)reply;
@end

@implementation ACCCarPlay

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ACCCarPlay_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __27__ACCCarPlay_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  init_logging();
  v8.receiver = self;
  v8.super_class = ACCCarPlay;
  v3 = [(ACCCarPlay *)&v8 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.coreaccessories.ACCCarPlayService"];
    xpcConnection = v3->_xpcConnection;
    v3->_xpcConnection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835375C0];
    [(NSXPCConnection *)v3->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v3->_xpcConnection resume];
  }

  return v3;
}

- (void)isCarPlayPairedWithCertSerial:(id)serial withReply:(id)reply
{
  replyCopy = reply;
  serialCopy = serial;
  xpcConnection = [(ACCCarPlay *)self xpcConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke;
  v14[3] = &unk_278486CA8;
  v9 = replyCopy;
  v15 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_22;
  v12[3] = &unk_278486CD0;
  v13 = v9;
  v11 = v9;
  [v10 isCarPlayPairedWithCertSerial:serialCopy withReply:v12];
}

void __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_22_cold_2();
    }
  }
}

- (void)isWirelessCarPlayAllowedForCertSerial:(id)serial withReply:(id)reply
{
  replyCopy = reply;
  serialCopy = serial;
  xpcConnection = [(ACCCarPlay *)self xpcConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ACCCarPlay_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke;
  v14[3] = &unk_278486CA8;
  v9 = replyCopy;
  v15 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__ACCCarPlay_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke_24;
  v12[3] = &unk_278486CD0;
  v13 = v9;
  v11 = v9;
  [v10 isWirelessCarPlayAllowedForCertSerial:serialCopy withReply:v12];
}

void __62__ACCCarPlay_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__ACCCarPlay_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__ACCCarPlay_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke_24_cold_2();
    }
  }
}

- (void)carPlayAppLinksStateForCertSerial:(id)serial withReply:(id)reply
{
  replyCopy = reply;
  serialCopy = serial;
  xpcConnection = [(ACCCarPlay *)self xpcConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ACCCarPlay_carPlayAppLinksStateForCertSerial_withReply___block_invoke;
  v14[3] = &unk_278486CA8;
  v9 = replyCopy;
  v15 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__ACCCarPlay_carPlayAppLinksStateForCertSerial_withReply___block_invoke_25;
  v12[3] = &unk_278486CF8;
  v13 = v9;
  v11 = v9;
  [v10 carPlayAppLinksStateForCertSerial:serialCopy withReply:v12];
}

void __58__ACCCarPlay_carPlayAppLinksStateForCertSerial_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __58__ACCCarPlay_carPlayAppLinksStateForCertSerial_withReply___block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__ACCCarPlay_carPlayAppLinksStateForCertSerial_withReply___block_invoke_25_cold_2();
    }
  }
}

- (void)carPlayIconStateForCertSerial:(id)serial andAppCategories:(unint64_t)categories withReply:(id)reply
{
  replyCopy = reply;
  serialCopy = serial;
  xpcConnection = [(ACCCarPlay *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ACCCarPlay_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke;
  v16[3] = &unk_278486CA8;
  v11 = replyCopy;
  v17 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__ACCCarPlay_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke_27;
  v14[3] = &unk_278486D20;
  v15 = v11;
  v13 = v11;
  [v12 carPlayIconStateForCertSerial:serialCopy andAppCategories:categories withReply:v14];
}

void __71__ACCCarPlay_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__ACCCarPlay_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
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
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__ACCCarPlay_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke_27_cold_2();
    }
  }
}

void __60__ACCCarPlay_carPlayStartSessionForConnectionID_properties___block_invoke(uint64_t a1, void *a2)
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }
}

void __60__ACCCarPlay_carPlayStartSessionForConnectionID_properties___block_invoke_29(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
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
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__ACCCarPlay_carPlayStartSessionForConnectionID_properties___block_invoke_29_cold_2();
    }
  }
}

- (void)filterMatchingDigitalCarKeys:(id)keys forAccessory:(id)accessory withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessoryCopy = accessory;
  keysCopy = keys;
  xpcConnection = [(ACCCarPlay *)self xpcConnection];
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_34];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ACCCarPlay_filterMatchingDigitalCarKeys_forAccessory_withCompletionHandler___block_invoke_35;
  v14[3] = &unk_278486D68;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [v12 filterMatchingDigitalCarKeys:keysCopy forAccessory:accessoryCopy withReply:v14];
}

void __78__ACCCarPlay_filterMatchingDigitalCarKeys_forAccessory_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }
}

void __78__ACCCarPlay_filterMatchingDigitalCarKeys_forAccessory_withCompletionHandler___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
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
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__ACCCarPlay_filterMatchingDigitalCarKeys_forAccessory_withCompletionHandler___block_invoke_35_cold_2();
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

- (void)carPlaySendConnectionTimeEvent:(int64_t)event connectionType:(int64_t)type eventTime:(id)time
{
  v24 = *MEMORY[0x277D85DE8];
  timeCopy = time;
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [timeCopy timeIntervalSinceReferenceDate];
    v16 = 134218754;
    eventCopy = event;
    v18 = 2048;
    typeCopy = type;
    v20 = 2048;
    v21 = v12;
    v22 = 2112;
    v23 = timeCopy;
    _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "CarPlay Connection Event: %ld, %ld, %f, %@", &v16, 0x2Au);
  }

  xpcConnection = [(ACCCarPlay *)self xpcConnection];
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_38];

  [v14 carPlaySendConnectionTimeEvent:event connectionType:type eventTime:timeCopy withReply:&__block_literal_global_41];
  v15 = *MEMORY[0x277D85DE8];
}

void __70__ACCCarPlay_carPlaySendConnectionTimeEvent_connectionType_eventTime___block_invoke(uint64_t a1, void *a2)
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
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2();
  }
}

void __70__ACCCarPlay_carPlaySendConnectionTimeEvent_connectionType_eventTime___block_invoke_39(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
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
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__ACCCarPlay_carPlaySendConnectionTimeEvent_connectionType_eventTime___block_invoke_39_cold_2();
    }
  }
}

void __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_2(&dword_221CB0000, v0, v1, "can't invoke remote object %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_22_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__ACCCarPlay_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke_24_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__ACCCarPlay_carPlayAppLinksStateForCertSerial_withReply___block_invoke_25_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__ACCCarPlay_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke_27_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__ACCCarPlay_carPlayStartSessionForConnectionID_properties___block_invoke_29_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ACCCarPlay_filterMatchingDigitalCarKeys_forAccessory_withCompletionHandler___block_invoke_35_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__ACCCarPlay_carPlaySendConnectionTimeEvent_connectionType_eventTime___block_invoke_39_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end