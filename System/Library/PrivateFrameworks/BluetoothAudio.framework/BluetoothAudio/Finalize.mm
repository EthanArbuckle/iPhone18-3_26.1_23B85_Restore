@interface Finalize
@end

@implementation Finalize

void __endpoint_Finalize_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *v2;
  *v2 = 0;

  v4 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 40);
    v22 = 138412290;
    v23 = v5;
    _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Finalize %@", &v22, 0xCu);
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *(a1 + 32) + 8 * v6;
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 16);
      VTable = CMBaseObjectGetVTable();
      v13 = *(*(VTable + 16) + 32);
      if (v13)
      {
        v14 = *(VTable + 16) + 32;
        v13(v10);
      }

      v15 = *(*(a1 + 32) + 8 * v6 + 16);
      if (v15)
      {
        CFRelease(v15);
        *(*(a1 + 32) + 8 * v6 + 16) = 0;
      }
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v16 = *(a1 + 32);
  v17 = v16[9];
  if (v17)
  {
    CFRelease(v17);
    *(*(a1 + 32) + 72) = 0;
    v16 = *(a1 + 32);
  }

  v18 = v16[4];
  if (v18)
  {
    CFRelease(v18);
    *(*(a1 + 32) + 32) = 0;
    v16 = *(a1 + 32);
  }

  v19 = v16[5];
  if (v19)
  {
    CFRelease(v19);
    *(*(a1 + 32) + 40) = 0;
    v16 = *(a1 + 32);
  }

  v20 = v16[7];
  if (v20)
  {
    CFRelease(v20);
    *(*(a1 + 32) + 56) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __audioStream_Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    dispatch_release(*v2);
    **(a1 + 32) = 0;
  }
}

@end