@interface SetupGSXPCConn
@end

@implementation SetupGSXPCConn

void ___SetupGSXPCConn_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void ___SetupGSXPCConn_block_invoke_2(uint64_t a1)
{
  v2 = gs_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___SetupGSXPCConn_block_invoke_2_cold_1(v2);
  }

  v3 = sDaemonTrackerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SetupGSXPCConn_block_invoke_130;
  block[3] = &unk_279697550;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);
}

void ___SetupGSXPCConn_block_invoke_130(uint64_t a1)
{
  v1 = sDaemonConn;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (v1 == WeakRetained)
  {
    v3 = sDaemonConn;
    sDaemonConn = 0;

    v4 = sDaemonProxy;
    sDaemonProxy = 0;

    v5 = +[GSStorageManager manager];
    [v5 _connectionWithDaemonWasLost];
  }
}

@end