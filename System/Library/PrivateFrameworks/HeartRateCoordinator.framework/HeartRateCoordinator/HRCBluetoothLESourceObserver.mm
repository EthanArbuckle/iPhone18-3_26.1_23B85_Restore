@interface HRCBluetoothLESourceObserver
- (HRCBluetoothLESourceObserver)initWithDelegate:(id)delegate onQueue:(id)queue;
- (HRCBluetoothLESourceObserver)initWithDelegate:(id)delegate onQueue:(id)queue connectionHelper:(id)helper;
- (HRCBluetoothLESourceObserverDelegate)delegate;
- (void)dealloc;
- (void)handleUpdatedSourceList:(id)list;
@end

@implementation HRCBluetoothLESourceObserver

- (HRCBluetoothLESourceObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HRCBluetoothLESourceObserver)initWithDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = objc_opt_new();
  v9 = [(HRCBluetoothLESourceObserver *)self initWithDelegate:delegateCopy onQueue:queueCopy connectionHelper:v8];

  return v9;
}

- (HRCBluetoothLESourceObserver)initWithDelegate:(id)delegate onQueue:(id)queue connectionHelper:(id)helper
{
  queueCopy = queue;
  helperCopy = helper;
  delegateCopy = delegate;
  v11 = hws_get_framework_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v11, OS_LOG_TYPE_DEFAULT, "HRCBluetoothLESourceObserver init", buf, 2u);
  }

  v25.receiver = self;
  v25.super_class = HRCBluetoothLESourceObserver;
  v12 = [(HRCBluetoothLESourceObserver *)&v25 init];
  objc_storeWeak(&v12->_delegate, delegateCopy);

  delegateQueue = v12->_delegateQueue;
  v12->_delegateQueue = queueCopy;
  v14 = queueCopy;

  connectionHelper = v12->_connectionHelper;
  v12->_connectionHelper = helperCopy;
  v16 = helperCopy;

  v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v18 = dispatch_queue_create("com.apple.heartratecoordinator.btlesourceobserver", v17);
  primaryQueue = v12->_primaryQueue;
  v12->_primaryQueue = v18;

  [(HRCBluetoothLESourceObserverXPCHelper *)v12->_connectionHelper setupWithDelegate:v12 onQueue:v12->_primaryQueue];
  v20 = v12->_primaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HRCBluetoothLESourceObserver_initWithDelegate_onQueue_connectionHelper___block_invoke;
  block[3] = &unk_2796FA8B0;
  v21 = v12;
  v24 = v21;
  dispatch_sync(v20, block);

  return v21;
}

void __74__HRCBluetoothLESourceObserver_initWithDelegate_onQueue_connectionHelper___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionHelper];
  [v2 connect];

  v5 = [*(a1 + 32) connectionHelper];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 processName];
  [v5 updateProcessName:v4];
}

- (void)dealloc
{
  v3 = hws_get_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v3, OS_LOG_TYPE_DEFAULT, "HRCBluetoothLESourceObserver dealloc", buf, 2u);
  }

  primaryQueue = self->_primaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HRCBluetoothLESourceObserver_dealloc__block_invoke;
  block[3] = &unk_2796FA8B0;
  block[4] = self;
  dispatch_sync(primaryQueue, block);
  v5.receiver = self;
  v5.super_class = HRCBluetoothLESourceObserver;
  [(HRCBluetoothLESourceObserver *)&v5 dealloc];
}

- (void)handleUpdatedSourceList:(id)list
{
  v13 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v5 = hws_get_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v12 = [listCopy count];
    _os_log_impl(&dword_2521DF000, v5, OS_LOG_TYPE_DEFAULT, "received source list update in the client process with count : %{public}lu", buf, 0xCu);
  }

  delegateQueue = self->_delegateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HRCBluetoothLESourceObserver_handleUpdatedSourceList___block_invoke;
  v9[3] = &unk_2796FA8D8;
  v9[4] = self;
  v10 = listCopy;
  v7 = listCopy;
  dispatch_async(delegateQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__HRCBluetoothLESourceObserver_handleUpdatedSourceList___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 handleUpdatedSourceList:*(a1 + 40)];
  }
}

@end