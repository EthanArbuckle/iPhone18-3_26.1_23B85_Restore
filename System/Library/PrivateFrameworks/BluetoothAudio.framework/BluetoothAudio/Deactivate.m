@interface Deactivate
@end

@implementation Deactivate

void __endpoint_Deactivate_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_241BB7000, v2, OS_LOG_TYPE_DEFAULT, "Deactivate %@", buf, 0xCu);
  }

  endpoint_SetUserRouted(*(a1 + 32), 0);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 32);
    v6 = *(v4 + 80);
    v5 = *(v4 + 88);
    CFRetain(*(a1 + 48));
    v7 = **(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __endpoint_Deactivate_block_invoke_80;
    block[3] = &__block_descriptor_72_e5_v8__0l;
    v10 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    v13 = *(a1 + 56);
    dispatch_async(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __endpoint_Deactivate_block_invoke_80(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0, *(a1 + 64));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end