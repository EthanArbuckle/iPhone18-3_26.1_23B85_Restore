@interface CRSCardRequest
+ (void)initialize;
+ (void)registerService:(id)a3;
- (CRSCardRequest)initWithContent:(id)a3 format:(unint64_t)a4;
- (void)_loadAndRegisterBundleServices:(id)a3;
- (void)_tryRemainingCardServices:(id)a3 reply:(id)a4;
- (void)startWithReply:(id)a3;
@end

@implementation CRSCardRequest

- (CRSCardRequest)initWithContent:(id)a3 format:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = CRSCardRequest;
  v8 = [(CRSCardRequest *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_content, a3);
    v9->_format = a4;
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.CardServices.CRSCardRequest.request-queue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    v9->_loadsBundleServices = 1;
  }

  return v9;
}

- (void)startWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_queue;
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__CRSCardRequest_startWithReply___block_invoke;
    v13[3] = &unk_278DA4FC0;
    v6 = v5;
    v14 = v6;
    objc_copyWeak(&v17, &location);
    v7 = v4;
    v15 = self;
    v16 = v7;
    v8 = MEMORY[0x245D2D910](v13);
    v9 = v8;
    if (self->_loadsBundleServices)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __33__CRSCardRequest_startWithReply___block_invoke_56;
      v10[3] = &unk_278DA4FE8;
      v11 = v7;
      v12 = v9;
      [(CRSCardRequest *)self _loadAndRegisterBundleServices:v10];
    }

    else
    {
      (*(v8 + 16))(v8);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __33__CRSCardRequest_startWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CRSCardRequest_startWithReply___block_invoke_2;
  block[3] = &unk_278DA4F98;
  objc_copyWeak(&v6, (a1 + 56));
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __33__CRSCardRequest_startWithReply___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v4 = *(v1 + 32);
      *buf = 138412290;
      v35 = v4;
      _os_log_impl(&dword_243268000, v3, OS_LOG_TYPE_INFO, "Starting card request: %@", buf, 0xCu);
    }

    v5 = +[CRSIdentifiedServiceRegistry sharedInstance];
    v6 = [v5 identifiedServices];

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        v11 = 0;
        v28 = v9;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * v11);
          if ([v12 conformsToProtocol:&unk_2855F2AE0])
          {
            v13 = v12;
            if ([v13 canSatisfyCardRequest:WeakRetained])
            {
              [*(v1 + 32) _excludedServiceIdentifiers];
              v15 = v14 = v10;
              [v13 serviceIdentifier];
              v16 = v7;
              v17 = WeakRetained;
              v19 = v18 = v1;
              v20 = [v15 containsObject:v19];

              v1 = v18;
              WeakRetained = v17;
              v7 = v16;

              v10 = v14;
              v9 = v28;
              if ((v20 & 1) == 0)
              {
                [v27 addObject:v13];
              }
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v9);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __33__CRSCardRequest_startWithReply___block_invoke_52;
    v29[3] = &unk_278DA4F70;
    v29[4] = WeakRetained;
    [v27 sortUsingComparator:v29];
    v21 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v22 = *(v1 + 32);
      v23 = v21;
      v24 = [v27 reverseObjectEnumerator];
      v25 = [v24 allObjects];
      *buf = 138412546;
      v35 = v22;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_243268000, v23, OS_LOG_TYPE_INFO, "Sorted card services by priority for request %@: %@", buf, 0x16u);
    }

    [WeakRetained _tryRemainingCardServices:v27 reply:*(v1 + 40)];
  }

  else
  {
    (*(*(v1 + 40) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __33__CRSCardRequest_startWithReply___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 servicePriorityForRequest:v5];
  v8 = [v6 servicePriorityForRequest:*(a1 + 32)];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

uint64_t __33__CRSCardRequest_startWithReply___block_invoke_56(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

+ (void)initialize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___CRSCardRequest;
  objc_msgSendSuper2(&v4, sel_initialize);
  CRLogInitIfNeeded();
  v3 = objc_alloc_init(_CRSPassthroughService);
  [a1 registerService:v3];
}

- (void)_loadAndRegisterBundleServices:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke;
  v7[3] = &unk_278DA5010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_243268000, v2, OS_LOG_TYPE_INFO, "Loading and registering bundle services if necessary: %@", buf, 0xCu);
  }

  v4 = +[(_CRSServiceBundleManager *)_CRSCardServiceBundleManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke_63;
  v6[3] = &unk_278DA4F48;
  v7 = *(a1 + 40);
  [v4 getServiceBundlesWithCompletion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __49__CRSCardRequest__loadAndRegisterBundleServices___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_13:
      v8();
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = +[CRSIdentifiedServiceRegistry sharedInstance];
          [v14 registerIdentifiedService:v13];
        }

        v10 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v8 = *(v15 + 16);
      goto LABEL_13;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_tryRemainingCardServices:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke;
    block[3] = &unk_278DA50B0;
    objc_copyWeak(&v13, &location);
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(queue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v3 = [*(a1 + 32) lastObject];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  objc_initWeak(&location, WeakRetained);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_65;
  v18[3] = &unk_278DA5060;
  objc_copyWeak(&v23, &location);
  v18[4] = WeakRetained;
  v5 = v3;
  v6 = *(a1 + 40);
  v19 = v5;
  v20 = v6;
  v22 = v25;
  v7 = v4;
  v21 = v7;
  [v5 requestCard:WeakRetained reply:v18];
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_67;
    block[3] = &unk_278DA5088;
    objc_copyWeak(&v17, &location);
    v12 = *(a1 + 32);
    v16 = v25;
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    v13 = 0;
    v14 = v10;
    v15 = v9;
    dispatch_group_notify(v7, v8, block);

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(v25, 8);
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 72));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2;
    block[3] = &unk_278DA5038;
    v14 = v6;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v15 = v9;
    v16 = v10;
    v17 = v5;
    v12 = *(a1 + 56);
    v11 = v12;
    v18 = v12;
    dispatch_async(v8, block);
  }

  objc_destroyWeak(&to);
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2_cold_1(a1, v2, v3);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *MEMORY[0x277CF93F0];
    v6 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v8 = *(a1 + 48);
        v7 = *(a1 + 56);
        v9 = *(a1 + 40);
        v13 = 138412802;
        v14 = v7;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_243268000, v5, OS_LOG_TYPE_INFO, "Retrieved card %@ from service %@ for request %@", &v13, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 56));
    }

    else if (v6)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_243268000, v5, OS_LOG_TYPE_INFO, "No card retrieved from service %@ for request %@", &v13, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 64));
  v12 = *MEMORY[0x277D85DE8];
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_67(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 72));
  v2 = [*(a1 + 32) mutableCopy];
  [v2 removeLastObject];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v3 = objc_alloc_init(CRSCardResponse);
    [(CRSCardResponse *)v3 setCard:*(*(*(a1 + 64) + 8) + 40)];
    v4 = objc_loadWeakRetained(&to);
    [(CRSCardResponse *)v3 setRequest:v4];

    v5 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
    if ([v2 count])
    {
      v6 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v2;
        _os_log_impl(&dword_243268000, v6, OS_LOG_TYPE_INFO, "Found card, so not trying remaining services %@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  if (![v2 count])
  {
    v8 = *(a1 + 56);
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA068];
    v14 = @"No service produced a card";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [v9 errorWithDomain:*MEMORY[0x277CF93E8] code:401 userInfo:v3];
    (*(v8 + 16))(v8, 0, v10);

LABEL_10:
    goto LABEL_11;
  }

  v7 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v2;
    _os_log_impl(&dword_243268000, v7, OS_LOG_TYPE_INFO, "Trying remaining services %@", buf, 0xCu);
  }

  [*(a1 + 48) _tryRemainingCardServices:v2 reply:*(a1 + 56)];
LABEL_11:

  objc_destroyWeak(&to);
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)registerService:(id)a3
{
  v3 = a3;
  v4 = +[CRSIdentifiedServiceRegistry sharedInstance];
  [v4 registerIdentifiedService:v3];
}

void __50__CRSCardRequest__tryRemainingCardServices_reply___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *a2;
  v7 = 138412802;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_243268000, log, OS_LOG_TYPE_ERROR, "Failed to retrieve card from service %@ for request %@ due to error: %@", &v7, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

@end