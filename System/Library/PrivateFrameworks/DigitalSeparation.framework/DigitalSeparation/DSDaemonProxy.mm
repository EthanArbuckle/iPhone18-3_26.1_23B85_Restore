@interface DSDaemonProxy
+ (void)initialize;
- (DSDaemonProxy)init;
- (NSArray)signalsToReport;
- (void)addSignalWithIdentifier:(id)a3 sharingType:(id)a4 signalType:(id)a5;
- (void)removeSignalWithIdentifier:(id)a3 sharingType:(id)a4 signalType:(id)a5;
- (void)sendAggregatedSignals;
@end

@implementation DSDaemonProxy

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLog_7 = os_log_create("com.apple.DigitalSeparation", "DSDaemonProxy");

    MEMORY[0x2821F96F8]();
  }
}

- (DSDaemonProxy)init
{
  v5.receiver = self;
  v5.super_class = DSDaemonProxy;
  v2 = [(DSDaemonProxy *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [(DSDaemonProxy *)v2 setUnreportedSignals:v3];
  }

  return v2;
}

- (void)addSignalWithIdentifier:(id)a3 sharingType:(id)a4 signalType:(id)a5
{
  if (a3 && a4 && a5)
  {
    v8 = MEMORY[0x277D48DD0];
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v13 = objc_alloc_init(v8);
    [v13 setSharingIdentifier:v11];

    [v13 setSharingType:v10];
    [v13 setSignalType:v9];

    v12 = [(DSDaemonProxy *)self unreportedSignals];
    [v12 addObject:v13];
  }
}

- (void)removeSignalWithIdentifier:(id)a3 sharingType:(id)a4 signalType:(id)a5
{
  if (a3 && a4 && a5)
  {
    v8 = MEMORY[0x277D48DD0];
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v13 = objc_alloc_init(v8);
    [v13 setSharingIdentifier:v11];

    [v13 setSharingType:v10];
    [v13 setSignalType:v9];

    v12 = [(DSDaemonProxy *)self unreportedSignals];
    [v12 removeObject:v13];
  }
}

- (void)sendAggregatedSignals
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(DSDaemonProxy *)self unreportedSignals];
  v4 = [v3 allObjects];
  v5 = [v4 copy];

  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x277D48DC8]) initConnection];
    [(DSDaemonProxy *)self setDaemonConnection:v6];

    v7 = DSLog_7;
    if (os_log_type_enabled(DSLog_7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v14 = v5;
      _os_log_impl(&dword_248C40000, v7, OS_LOG_TYPE_INFO, "Reporting signals to daemon: %{private}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = [(DSDaemonProxy *)self daemonConnection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__DSDaemonProxy_sendAggregatedSignals__block_invoke;
    v10[3] = &unk_278F72FE0;
    objc_copyWeak(&v12, buf);
    v11 = v5;
    [v8 handleSignals:v11 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__DSDaemonProxy_sendAggregatedSignals__block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5 || (a2 & 1) == 0)
  {
    v7 = DSLog_7;
    if (os_log_type_enabled(DSLog_7, OS_LOG_TYPE_ERROR))
    {
      v11 = @"Unknown";
      v12 = *(a1 + 32);
      if (v5)
      {
        v11 = v5;
      }

      v13 = 138412547;
      v14 = v11;
      v15 = 2113;
      v16 = v12;
      _os_log_error_impl(&dword_248C40000, v7, OS_LOG_TYPE_ERROR, "Error: %@ Proxy failed to handle %{private}@", &v13, 0x16u);
    }
  }

  v8 = [WeakRetained daemonConnection];
  [v8 disconnect];

  v9 = [WeakRetained unreportedSignals];
  [v9 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)signalsToReport
{
  v2 = [(DSDaemonProxy *)self unreportedSignals];
  v3 = [v2 allObjects];

  return v3;
}

@end