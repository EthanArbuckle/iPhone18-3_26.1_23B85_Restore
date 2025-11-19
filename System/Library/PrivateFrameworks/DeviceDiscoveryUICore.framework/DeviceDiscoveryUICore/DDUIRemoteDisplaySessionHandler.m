@interface DDUIRemoteDisplaySessionHandler
@end

@implementation DDUIRemoteDisplaySessionHandler

uint64_t __50___DDUIRemoteDisplaySessionHandler_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

void __59___DDUIRemoteDisplaySessionHandler_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _DDUICoreLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59___DDUIRemoteDisplaySessionHandler_activateWithCompletion___block_invoke_cold_1(a1, v4);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 8) = v3 != 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __74___DDUIRemoteDisplaySessionHandler_enterSessionWithRemoteDeviceID_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!a2)
  {
    v5 = WeakRetained;
    [WeakRetained[2] enterDiscoverySessionWithDevice:*(a1 + 32) reason:*(a1 + 40)];
    WeakRetained = v5;
  }
}

void __72___DDUIRemoteDisplaySessionHandler_presentProxCardForDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = _DDUICoreLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "{self: %@} Dedicated camera prox card response: %@ with error: %@", &v11, 0x20u);
  }

  v9 = WeakRetained[3];
  WeakRetained[3] = 0;

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void __59___DDUIRemoteDisplaySessionHandler_activateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_230EF9000, a2, OS_LOG_TYPE_ERROR, "%@: could not activate remote display discovery", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end