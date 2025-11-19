@interface NACAVRoutingDiscoverySession
@end

@implementation NACAVRoutingDiscoverySession

void __37___NACAVRoutingDiscoverySession_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___NACAVRoutingDiscoverySession_init__block_invoke_2;
    block[3] = &unk_27992B4E8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __37___NACAVRoutingDiscoverySession_init__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    v3 = NMLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 8);
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACEndpointObserver] Got initial updates for MRAVEndpoints in session %@!", &v10, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 32) + 24));
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    MRAVRoutingDiscoverySessionRemoveEndpointsChangedCallback();
    v8 = *(*(a1 + 32) + 16);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __74___NACAVRoutingDiscoverySession_fetchRouteForOriginIdentifier_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = MRAVRoutingDiscoverySessionCopyAvailableEndpoints();
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (MRAVEndpointGetExternalDevice())
        {
          v9 = MRExternalDeviceCopyCustomOrigin();
          if (v9)
          {
            v10 = v9;
            UniqueIdentifier = MROriginGetUniqueIdentifier();
            if (UniqueIdentifier == [*(a1 + 40) intValue])
            {
              v12 = [objc_alloc(MEMORY[0x277CD5D20]) initWithEndpoint:v8];
              CFRelease(v10);
              if (v12)
              {
                goto LABEL_15;
              }
            }

            else
            {
              CFRelease(v10);
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = 0;
LABEL_15:

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v12);
  }

  v14 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___NACAVRoutingDiscoverySession_fetchRouteForOriginIdentifier_completion___block_invoke_2;
  block[3] = &unk_27992B4E8;
  v17 = *(a1 + 48);
  dispatch_async(v14, block);

  v15 = *MEMORY[0x277D85DE8];
}

@end