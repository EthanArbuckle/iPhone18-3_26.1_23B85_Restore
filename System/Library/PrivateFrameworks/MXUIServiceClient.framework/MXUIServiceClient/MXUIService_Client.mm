@interface MXUIService_Client
+ (id)sharedInstance;
- (BOOL)dismissBannerWithUUID:(id)a3 withResponse:(id)a4;
- (BOOL)recreateConnectionIfNecessary;
- (MXUIService_Client)init;
- (id)promptForDisconnectedBanner:(id)a3 withIconType:(int)a4 callbackHandler:(id)a5;
- (id)promptForUndoBanner:(id)a3 withIconType:(int)a4 callbackHandler:(id)a5;
- (void)showInputDeviceReplacementPillForConnectedDevice:(id)a3 replacedDevice:(id)a4;
@end

@implementation MXUIService_Client

- (MXUIService_Client)init
{
  v3.receiver = self;
  v3.super_class = MXUIService_Client;
  result = [(MXUIService_Client *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_shouldCreateConnection = 1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MXUIService_Client sharedInstance];
  }

  return sharedInstance_sSharedInstance;
}

- (BOOL)recreateConnectionIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_16);
  }

  if (qword_27F8F04C0 && qword_27F8F04C8)
  {
    if (!self->_shouldCreateConnection)
    {
LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      return 0;
    }

    v3 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.MXUIService" service:@"com.apple.MXUIService" instance:0];
    if (v3)
    {
      v4 = v3;
      v5 = [MEMORY[0x277CF3280] connectionWithEndpoint:v3];
      if (v5)
      {
        v6 = v5;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_2;
        v8[3] = &unk_279851050;
        v8[4] = self;
        [v5 configureConnection:v8];
        [v6 activate];
        self->_connection = v6;
        self->_endpoint = v4;
        self->_shouldCreateConnection = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

- (id)promptForUndoBanner:(id)a3 withIconType:(int)a4 callbackHandler:(id)a5
{
  OUTLINED_FUNCTION_7();
  v32 = *MEMORY[0x277D85DE8];
  [v9 recreateConnectionIfNecessary];
  v10 = *(v7 + 8);
  *v8 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  if ([v10 remoteTargetWithLaunchingAssertionAttributes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v31, 1)}] && (v11 = objc_alloc_init(MEMORY[0x277CBEB38])) != 0 && (v12 = v11, (v13 = objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v5)) != 0))
  {
    v14 = v13;
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = v15;
    if (v15)
    {
      [v12 setValue:objc_msgSend(v15 forKey:{"UUIDString"), @"UUID"}];
      [v12 setValue:v6 forKey:@"HeadsetString"];
      [v12 setValue:v14 forKey:@"ConnectionType"];
      OUTLINED_FUNCTION_0();
      [OUTLINED_FUNCTION_8() showUndoButton:? completionHandler:?];
      if (dword_27F8F0490)
      {
        v17 = OUTLINED_FUNCTION_3();
        v25 = OUTLINED_FUNCTION_5(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
        if (OUTLINED_FUNCTION_6(v25))
        {
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4();
        }

        OUTLINED_FUNCTION_2();
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)promptForDisconnectedBanner:(id)a3 withIconType:(int)a4 callbackHandler:(id)a5
{
  OUTLINED_FUNCTION_7();
  v32 = *MEMORY[0x277D85DE8];
  [v9 recreateConnectionIfNecessary];
  v10 = *(v7 + 8);
  *v8 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  if ([v10 remoteTargetWithLaunchingAssertionAttributes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v31, 1)}] && (v11 = objc_alloc_init(MEMORY[0x277CBEB38])) != 0 && (v12 = v11, (v13 = objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v5)) != 0))
  {
    v14 = v13;
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = v15;
    if (v15)
    {
      [v12 setValue:objc_msgSend(v15 forKey:{"UUIDString"), @"UUID"}];
      [v12 setValue:v6 forKey:@"HeadsetString"];
      [v12 setValue:v14 forKey:@"ConnectionType"];
      OUTLINED_FUNCTION_0();
      [OUTLINED_FUNCTION_8() showDisconnectedButton:? completionHandler:?];
      if (dword_27F8F0490)
      {
        v17 = OUTLINED_FUNCTION_3();
        v25 = OUTLINED_FUNCTION_5(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
        if (OUTLINED_FUNCTION_6(v25))
        {
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4();
        }

        OUTLINED_FUNCTION_2();
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)dismissBannerWithUUID:(id)a3 withResponse:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(MXUIService_Client *)self recreateConnectionIfNecessary];
    connection = self->_connection;
    v11[0] = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v8 = -[BSServiceConnectionClient remoteTargetWithLaunchingAssertionAttributes:](connection, "remoteTargetWithLaunchingAssertionAttributes:", [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1]);
    if (v8)
    {
      [v8 dismissBannerWithUUID:a3 withResponse:a4];
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)showInputDeviceReplacementPillForConnectedDevice:(id)a3 replacedDevice:(id)a4
{
  v13[22] = *MEMORY[0x277D85DE8];
  if (a3 && a4 && ([a3 isEqualToString:a4] & 1) == 0)
  {
    if (dword_27F8F0490)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXUIService_Client *)self recreateConnectionIfNecessary:v11];
    connection = self->_connection;
    v13[0] = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v9 = -[BSServiceConnectionClient remoteTargetWithLaunchingAssertionAttributes:](connection, "remoteTargetWithLaunchingAssertionAttributes:", [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1]);
    if (v9)
    {
      [v9 showInputDeviceReplacementPillForConnectedDevice:a3 replacedDevice:a4];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end