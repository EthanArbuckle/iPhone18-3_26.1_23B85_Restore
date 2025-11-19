@interface NPKTransitAppletHistoryFetcher
- (NPKTransitAppletHistoryFetcher)initWithCallbackQueue:(id)a3;
- (NPKTransitAppletHistoryFetcherDelegate)delegate;
- (void)_handleActiveSecureElementManagerSession:(id)a3;
- (void)_handleSecureElementSessionFailureWithError:(id)a3;
- (void)requestTransitHistoryFetch;
- (void)setAIDToFetch:(id)a3;
@end

@implementation NPKTransitAppletHistoryFetcher

- (NPKTransitAppletHistoryFetcher)initWithCallbackQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NPKTransitAppletHistoryFetcher;
  v6 = [(NPKTransitAppletHistoryFetcher *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackQueue, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("NPKTransitAppletHistoryFetcher", v8);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v9;
  }

  return v7;
}

- (void)setAIDToFetch:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NPKTransitAppletHistoryFetcher_setAIDToFetch___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __48__NPKTransitAppletHistoryFetcher_setAIDToFetch___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher set AID to %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestTransitHistoryFetch
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher received fetch request", buf, 2u);
    }
  }

  v6 = [(NPKTransitAppletHistoryFetcher *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(v6, block);
}

void __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingSessionHandle];

  if (v2)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      return;
    }

    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher already has an outstanding session handle; not creating a new session.", v7, 2u);
    }
  }

  else
  {
    v5 = [PKGetClassNFHardwareManager() sharedHardwareManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_2;
    v8[3] = &unk_279946D48;
    v8[4] = *(a1 + 32);
    v6 = [v5 startSecureElementManagerSession:v8];
    [*(a1 + 32) setPendingSessionHandle:v6];
  }
}

void __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_3;
  block[3] = &unk_279945880;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _handleActiveSecureElementManagerSession:?];
    [*(a1 + 32) endSession];
  }

  else
  {
    [v2 _handleSecureElementSessionFailureWithError:*(a1 + 48)];
  }

  v4 = *(a1 + 40);

  return [v4 setPendingSessionHandle:0];
}

- (void)_handleActiveSecureElementManagerSession:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKTransitAppletHistoryFetcher *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      aidToFetch = self->_aidToFetch;
      *buf = 138412546;
      v36 = aidToFetch;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher (AID %@) got secure element manager session: %@", buf, 0x16u);
    }
  }

  v10 = self->_aidToFetch;
  v11 = [(NSString *)v4 appletWithIdentifier:v10];
  v12 = v11;
  if (v11)
  {
    if ([v11 isTypeF] && objc_msgSend(v12, "supportedTypeFSystem") == 1)
    {
      v34 = 0;
      v13 = &v34;
      v14 = [(NSString *)v4 felicaAppletState:v12 error:&v34];
      v15 = 0x277D37ED8;
    }

    else
    {
      v33 = 0;
      v13 = &v33;
      v14 = [(NSString *)v4 transitAppletState:v12 error:&v33];
      v15 = 0x277D38300;
    }

    v16 = *v13;
    v17 = [objc_alloc(*v15) initWithDictionary:v14 source:1];

    if (v16)
    {
      v18 = pk_General_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        v20 = pk_General_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v36 = v12;
          v37 = 2112;
          v38 = v10;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: Fail to creat Transit Applet history with Applet:%@ AID:%@ with error:%@", buf, 0x20u);
        }
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v21 = pk_General_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v10;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Could not fetch Applet with ID:%@ from session:%@", buf, 0x16u);
    }

    v17 = 0;
    goto LABEL_19;
  }

  v17 = 0;
LABEL_20:
  v23 = pk_Payment_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (v24)
  {
    v25 = pk_Payment_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher got applet history: %@ for applet: %@", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NPKTransitAppletHistoryFetcher__handleActiveSecureElementManagerSession___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v31 = v17;
  v32 = v10;
  v27 = v10;
  v28 = v17;
  dispatch_async(callbackQueue, block);

  v29 = *MEMORY[0x277D85DE8];
}

void __75__NPKTransitAppletHistoryFetcher__handleActiveSecureElementManagerSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transitAppletHistoryFetcher:*(a1 + 32) gotTransitAppletHistory:*(a1 + 40) forAppletWithAID:*(a1 + 48)];
}

- (void)_handleSecureElementSessionFailureWithError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKTransitAppletHistoryFetcher *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: History fetcher failed to start secure element manager session: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NPKTransitAppletHistoryFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end