@interface Activate
@end

@implementation Activate

void __endpoint_Activate_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 40) + 40);
  v3 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 40) + 40);
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_241BB7000, v3, OS_LOG_TYPE_DEFAULT, "Activate %@", buf, 0xCu);
  }

  if (*(a1 + 48) == 2)
  {
    endpoint_SetUserRouted(*(a1 + 40), 1);
    *(*(a1 + 40) + 88) = *(a1 + 48);
    CFRetain(*(a1 + 56));
    v5 = +[BluetoothBridge sharedBluetoothBridge];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __endpoint_Activate_block_invoke_75;
    v7[3] = &__block_descriptor_64_e8_v12__0i8l;
    v7[4] = *(a1 + 40);
    v8 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v9 = *(a1 + 72);
    [v5 connectToAddress:v2 completionHandler:v7];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16720;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __endpoint_Activate_block_invoke_75(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 40);
    *buf = 138412546;
    v17 = v5;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Activated %@ with result %d", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 80) + 1;
  *(v6 + 80) = v7;
  if (a2)
  {
    v8 = 0;
    *(v6 + 88) = 0;
  }

  else
  {
    v8 = *(v6 + 88);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *v6;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __endpoint_Activate_block_invoke_76;
    v14[3] = &__block_descriptor_76_e5_v8__0l;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14[4] = v9;
    v14[5] = v11;
    v14[6] = v8;
    v14[7] = v7;
    v15 = a2;
    v14[8] = v12;
    dispatch_async(v10, v14);
  }

  else
  {
    CFRelease(*(a1 + 48));
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __endpoint_Activate_block_invoke_76(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end