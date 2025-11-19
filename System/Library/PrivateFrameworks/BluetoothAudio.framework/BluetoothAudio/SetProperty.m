@interface SetProperty
@end

@implementation SetProperty

void __endpoint_SetProperty_block_invoke(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v4, *MEMORY[0x277CC1420]))
  {
    valuePtr = 0;
    if (CFNumberGetValue(v3, kCFNumberIntType, &valuePtr))
    {
      v6 = +[BluetoothBridge sharedBluetoothBridge];
      v7 = [v6 deviceFromIdentifier:DerivedStorage[5]];

      v8 = objc_alloc_init(MEMORY[0x277CBE028]);
      [v8 setListeningMode:valuePtr];
      v9 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *&buf[4] = valuePtr;
        LOWORD(v32) = 2112;
        *(&v32 + 2) = v7;
        _os_log_impl(&dword_241BB7000, v9, OS_LOG_TYPE_DEFAULT, "Set listening mode to %d for %@", buf, 0x12u);
      }

      v10 = objc_alloc_init(MEMORY[0x277CBE010]);
      *buf = MEMORY[0x277D85DD0];
      *&v32 = 3221225472;
      *(&v32 + 1) = ___endpoint_SetProperty_block_invoke;
      v33 = &unk_278D10448;
      v34 = v10;
      v11 = v10;
      [v11 modifyDevice:v7 settings:v8 completion:buf];
    }

    else if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      __endpoint_SetProperty_block_invoke_cold_1();
    }

    goto LABEL_16;
  }

  if (CFEqual(v4, @"ConversationDetectEnable"))
  {
    Value = CFBooleanGetValue(v3);
    v13 = +[BluetoothBridge sharedBluetoothBridge];
    v14 = [v13 deviceFromIdentifier:DerivedStorage[5]];

    [v14 setIdentifier:DerivedStorage[5]];
    v15 = objc_alloc_init(MEMORY[0x277CBE028]);
    v16 = v15;
    if (Value)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [v15 setConversationDetectConfig:v17];
    v18 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = Value != 0;
      LOWORD(v32) = 2112;
      *(&v32 + 2) = v14;
      _os_log_impl(&dword_241BB7000, v18, OS_LOG_TYPE_DEFAULT, "Set conversationDetect mode to %d for %@", buf, 0x12u);
    }

    v19 = objc_alloc_init(MEMORY[0x277CBE010]);
    *buf = MEMORY[0x277D85DD0];
    *&v32 = 3221225472;
    v20 = ___endpoint_SetProperty_block_invoke_68;
LABEL_13:
    *(&v32 + 1) = v20;
    v33 = &unk_278D10448;
    v34 = v19;
    v21 = v19;
    [v21 modifyDevice:v14 settings:v16 completion:buf];

    goto LABEL_16;
  }

  if (CFEqual(v4, *MEMORY[0x277CC1248]))
  {
    v24 = CFGetTypeID(v3);
    if (v24 != CFBooleanGetTypeID())
    {
      goto LABEL_16;
    }

    v25 = CFBooleanGetValue(v3);
    v14 = objc_alloc_init(MEMORY[0x277CBE020]);
    [v14 setIdentifier:DerivedStorage[5]];
    v16 = objc_alloc_init(MEMORY[0x277CBE028]);
    [v16 setSpatialAudioAllowed:v25 != 0];
    v26 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v25 != 0;
      LOWORD(v32) = 2112;
      *(&v32 + 2) = v14;
      _os_log_impl(&dword_241BB7000, v26, OS_LOG_TYPE_DEFAULT, "Set setSpatialAudioAllowed mode to %d for %@", buf, 0x12u);
    }

    v19 = objc_alloc_init(MEMORY[0x277CBE010]);
    *buf = MEMORY[0x277D85DD0];
    *&v32 = 3221225472;
    v20 = ___endpoint_SetProperty_block_invoke_70;
    goto LABEL_13;
  }

  if (CFEqual(v4, *MEMORY[0x277CC1358]))
  {
    valuePtr = 0;
    if (!CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
    {
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
      {
        __endpoint_SetProperty_block_invoke_cold_2();
      }

      goto LABEL_16;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBE020]);
    [v14 setIdentifier:DerivedStorage[5]];
    v16 = objc_alloc_init(MEMORY[0x277CBE028]);
    [v16 setSpatialAudioMode:valuePtr];
    v27 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = valuePtr;
      LOWORD(v32) = 2112;
      *(&v32 + 2) = v14;
      _os_log_impl(&dword_241BB7000, v27, OS_LOG_TYPE_DEFAULT, "Set setSpatialAudioMode mode to %d for %@", buf, 0x12u);
    }

    v19 = objc_alloc_init(MEMORY[0x277CBE010]);
    *buf = MEMORY[0x277D85DD0];
    *&v32 = 3221225472;
    v20 = ___endpoint_SetProperty_block_invoke_71;
    goto LABEL_13;
  }

  if (!CFEqual(v4, @"UserPickedRoute"))
  {
    v22 = -12787;
    goto LABEL_17;
  }

  v28 = CFGetTypeID(v3);
  if (v28 == CFBooleanGetTypeID())
  {
    v29 = CFBooleanGetValue(v3) != 0;
    endpoint_SetUserRouted(DerivedStorage, v29);
  }

LABEL_16:
  v22 = 0;
LABEL_17:
  *(*(a1[4] + 8) + 24) = v22;
  v23 = *MEMORY[0x277D85DE8];
}

void ___endpoint_SetProperty_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void ___endpoint_SetProperty_block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_68_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void ___endpoint_SetProperty_block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_70_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void ___endpoint_SetProperty_block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_71_cold_1();
  }

  [*(a1 + 32) invalidate];
}

@end