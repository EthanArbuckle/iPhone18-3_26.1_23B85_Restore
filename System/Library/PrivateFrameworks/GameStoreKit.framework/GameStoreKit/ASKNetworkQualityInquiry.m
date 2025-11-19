@interface ASKNetworkQualityInquiry
- (ASKNetworkQualityInquiry)init;
- (BOOL)areKnownNetworksReady;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)drainKnownNetworksReadyHandlers;
- (void)investigateNetworksWithCompletionBlock:(id)a3;
- (void)performWhenKnownNetworksReady:(id)a3;
@end

@implementation ASKNetworkQualityInquiry

- (ASKNetworkQualityInquiry)init
{
  v11.receiver = self;
  v11.super_class = ASKNetworkQualityInquiry;
  v2 = [(ASKNetworkQualityInquiry *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D6B6E0]);
    manager = v2->_manager;
    v2->_manager = v3;

    if (!v2->_manager)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = dispatch_queue_create("AppStoreKit.NetworkQualityInquiry.queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(NWNetworkOfInterestManager *)v2->_manager setQueue:v2->_queue];
    [(NWNetworkOfInterestManager *)v2->_manager setDelegate:v2];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    knownNetworks = v2->_knownNetworks;
    v2->_knownNetworks = v7;

    [(NWNetworkOfInterestManager *)v2->_manager trackNOIAnyForInterfaceType:2 options:0];
    [(NWNetworkOfInterestManager *)v2->_manager trackNOIAnyForInterfaceType:1 options:0];
    [(NWNetworkOfInterestManager *)v2->_manager trackNOIAnyForInterfaceType:3 options:0];
  }

  v9 = v2;
LABEL_6:

  return v9;
}

- (void)dealloc
{
  [(NWNetworkOfInterestManager *)self->_manager setDelegate:0];
  [(NWNetworkOfInterestManager *)self->_manager destroy];
  v3.receiver = self;
  v3.super_class = ASKNetworkQualityInquiry;
  [(ASKNetworkQualityInquiry *)&v3 dealloc];
}

- (BOOL)areKnownNetworksReady
{
  v3 = [(ASKNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ASKNetworkQualityInquiry *)self knownNetworks];
  LOBYTE(v3) = [v4 count] == 3;

  return v3;
}

- (void)performWhenKnownNetworksReady:(id)a3
{
  v4 = a3;
  v5 = [(ASKNetworkQualityInquiry *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ASKNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke;
  v7[3] = &unk_27968B3D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__ASKNetworkQualityInquiry_performWhenKnownNetworksReady___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) areKnownNetworksReady])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) knownNetworksReadyHandlers];

    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      [*(a1 + 32) setKnownNetworksReadyHandlers:v4];
    }

    v7 = [*(a1 + 32) knownNetworksReadyHandlers];
    v5 = [*(a1 + 40) copy];
    v6 = _Block_copy(v5);
    [v7 addObject:v6];
  }
}

- (void)drainKnownNetworksReadyHandlers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(ASKNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(ASKNetworkQualityInquiry *)self knownNetworksReadyHandlers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(ASKNetworkQualityInquiry *)self setKnownNetworksReadyHandlers:0];
}

- (void)didStartTrackingNOI:(id)a3
{
  v4 = a3;
  v5 = [(ASKNetworkQualityInquiry *)self knownNetworks];
  [v5 addObject:v4];

  if ([(ASKNetworkQualityInquiry *)self areKnownNetworksReady])
  {

    [(ASKNetworkQualityInquiry *)self drainKnownNetworksReadyHandlers];
  }
}

- (void)didStopTrackingNOI:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASKNetworkQualityInquiry *)self knownNetworks];
  [v5 removeObject:v4];

  v6 = [MEMORY[0x277CEE508] ask_generalLogConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x277CEE508] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_24E5DD000, v7, OS_LOG_TYPE_DEBUG, "%@: Stopped tracking %@, searching for interface again", &v9, 0x16u);
  }

  v8 = [(ASKNetworkQualityInquiry *)self manager];
  [v8 trackNOIAnyForInterfaceType:objc_msgSend(v4 options:{"interface"), 0}];
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ASKNetworkQualityInquiry *)self didStopTrackingNOI:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)investigateNetworksWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ASKNetworkQualityInquiry_investigateNetworksWithCompletionBlock___block_invoke;
  v6[3] = &unk_27968B448;
  v7 = v4;
  v5 = v4;
  [(ASKNetworkQualityInquiry *)self performWhenKnownNetworksReady:v6];
}

void __67__ASKNetworkQualityInquiry_investigateNetworksWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = [v3 knownNetworks];
  v5 = [v4 count];

  v25 = v5;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [v6 initWithCapacity:v23[3]];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v3 knownNetworks];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [v3 manager];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __67__ASKNetworkQualityInquiry_investigateNetworksWithCompletionBlock___block_invoke_2;
        v14[3] = &unk_27968B420;
        v14[4] = v12;
        v15 = v7;
        v17 = &v22;
        v16 = *(a1 + 32);
        [v13 auditableLinkQualityForNOI:v12 reply:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v22, 8);
}

void __67__ASKNetworkQualityInquiry_investigateNetworksWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  if (v8 && (v9 = [v7 interface], (v9 - 1) <= 2))
  {
    v10 = off_27968B490[v9 - 1];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __ASKNetworkQualityInquiryReportMake_block_invoke;
    v23 = &unk_27968B470;
    v12 = v11;
    v24 = v12;
    [v8 enumerateKeysAndObjectsUsingBlock:buf];
    if ([v12 count])
    {
      [v12 setObject:v10 forKeyedSubscript:@"interface"];
      v13 = [v12 copy];
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      [*(a1 + 40) addObject:v13];
    }
  }

  else
  {
  }

  if (v6)
  {
    v14 = [MEMORY[0x277CEE508] ask_generalLogConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277CEE508] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_24E5DD000, v15, OS_LOG_TYPE_ERROR, "Could not determine link quality for %@, reason: %@", buf, 0x16u);
    }
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 24) - 1;
  *(v17 + 24) = v18;
  if (!v18)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__ASKNetworkQualityInquiry_investigateNetworksWithCompletionBlock___block_invoke_44;
    v19[3] = &unk_27968B3F8;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v19);
  }
}

@end