@interface HRCHeartRateRequestorXPCHelper
- (HRCXPCConnectionHelperDelegate)delegate;
- (NSXPCConnection)connection;
- (void)connect;
- (void)handleHeartRateData:(id)data;
- (void)invalidateConnection;
- (void)requestStreamingMode:(unint64_t)mode;
- (void)setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType;
- (void)setupWithDelegate:(id)delegate onQueue:(id)queue;
- (void)updateProcessName:(id)name;
@end

@implementation HRCHeartRateRequestorXPCHelper

- (void)setupWithDelegate:(id)delegate onQueue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_delegate, delegate);
  primaryQueue = self->_primaryQueue;
  self->_primaryQueue = queueCopy;
}

- (void)connect
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v4 = hws_get_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2521DF000, v4, OS_LOG_TYPE_DEFAULT, "connecting to service", buf, 2u);
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.heartratecoordinatord.requestor" options:0];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2864694C0];
  [v5 setRemoteObjectInterface:v6];

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286469040];
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke;
  v8[3] = &unk_2796FA868;
  objc_copyWeak(&v9, buf);
  [v5 setInterruptionHandler:v8];
  [v5 setInvalidationHandler:&__block_literal_global_0];
  objc_storeWeak(&self->_connection, v5);
  [v5 activate];
  [(HRCHeartRateRequestorXPCHelper *)self setConnected:1];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke(uint64_t a1)
{
  v2 = hws_get_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __48__HRCBluetoothLESourceObserverXPCHelper_connect__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained primaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_54;
  block[3] = &unk_2796FA868;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_54(uint64_t a1)
{
  v2 = hws_get_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v2, OS_LOG_TYPE_DEFAULT, "trying to re-establish connection", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_55;
  v5[3] = &unk_2796FA900;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 refreshRequiredWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_55(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateProcessName:v11];

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 requestStreamingMode:a3];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 requestOpportunisticUpdates:a4];

  if (a5)
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setUserWorkoutActivityType:a5 locationType:a6];
  }
}

void __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_2()
{
  v0 = hws_get_framework_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __41__HRCHeartRateRequestorXPCHelper_connect__block_invoke_2_cold_1(v0);
  }
}

- (void)updateProcessName:(id)name
{
  nameCopy = name;
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy updateProcessName:nameCopy];
}

- (void)requestStreamingMode:(unint64_t)mode
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy requestStreamingMode:mode];
}

- (void)setUserWorkoutActivityType:(unint64_t)type locationType:(int64_t)locationType
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy setUserWorkoutActivityType:type locationType:locationType];
}

- (void)invalidateConnection
{
  primaryQueue = [(HRCHeartRateRequestorXPCHelper *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  connection = [(HRCHeartRateRequestorXPCHelper *)self connection];
  if (connection)
  {
  }

  else if (![(HRCHeartRateRequestorXPCHelper *)self connected])
  {
    return;
  }

  v5 = hws_get_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2521DF000, v5, OS_LOG_TYPE_DEFAULT, "closing connection to server", v7, 2u);
  }

  connection2 = [(HRCHeartRateRequestorXPCHelper *)self connection];
  [connection2 invalidate];

  [(HRCHeartRateRequestorXPCHelper *)self setConnection:0];
  [(HRCHeartRateRequestorXPCHelper *)self setConnected:0];
}

- (void)handleHeartRateData:(id)data
{
  dataCopy = data;
  delegate = [(HRCHeartRateRequestorXPCHelper *)self delegate];
  [delegate handleHeartRateData:dataCopy];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (HRCXPCConnectionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end