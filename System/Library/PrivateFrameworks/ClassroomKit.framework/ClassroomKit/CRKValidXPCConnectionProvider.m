@interface CRKValidXPCConnectionProvider
- (CRKValidXPCConnectionProvider)initWithBuilder:(id)a3;
- (NSXPCConnection)connection;
- (id)captureConnection;
- (id)invokeBuilder;
- (id)makeConnection;
- (id)unprotectedConnection;
- (void)connectionDied:(id)a3;
- (void)dealloc;
- (void)tearDownConnection;
@end

@implementation CRKValidXPCConnectionProvider

- (void)dealloc
{
  [(CRKValidXPCConnectionProvider *)self tearDownConnection];
  v3.receiver = self;
  v3.super_class = CRKValidXPCConnectionProvider;
  [(CRKValidXPCConnectionProvider *)&v3 dealloc];
}

- (CRKValidXPCConnectionProvider)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRKValidXPCConnectionProvider;
  v5 = [(CRKValidXPCConnectionProvider *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](v4);
    builder = v5->_builder;
    v5->_builder = v6;

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v5];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

- (NSXPCConnection)connection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(CRKValidXPCConnectionProvider *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__CRKValidXPCConnectionProvider_connection__block_invoke;
  v6[3] = &unk_278DC30E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__CRKValidXPCConnectionProvider_connection__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) unprotectedConnection];

  return MEMORY[0x2821F96F8]();
}

- (id)unprotectedConnection
{
  v3 = [(CRKValidXPCConnectionProvider *)self backingConnection];

  if (!v3)
  {
    v4 = [(CRKValidXPCConnectionProvider *)self makeConnection];
    [(CRKValidXPCConnectionProvider *)self setBackingConnection:v4];
  }

  return [(CRKValidXPCConnectionProvider *)self backingConnection];
}

- (id)makeConnection
{
  v3 = [(CRKValidXPCConnectionProvider *)self invokeBuilder];
  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __47__CRKValidXPCConnectionProvider_makeConnection__block_invoke;
  v9 = &unk_278DC3138;
  objc_copyWeak(&v10, &from);
  objc_copyWeak(&v11, &location);
  v4 = MEMORY[0x245D3AAD0](&v6);
  [v3 setInterruptionHandler:{v4, v6, v7, v8, v9}];
  [v3 setInvalidationHandler:v4];
  [v3 resume];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v3;
}

void __47__CRKValidXPCConnectionProvider_makeConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__CRKValidXPCConnectionProvider_makeConnection__block_invoke_2;
    v5[3] = &unk_278DC3110;
    v5[4] = v3;
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
  }
}

void __47__CRKValidXPCConnectionProvider_makeConnection__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 connectionDied:WeakRetained];
}

- (id)invokeBuilder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CRKValidXPCConnectionProvider *)self builder];
  v5 = v4[2]();

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)connectionDied:(id)a3
{
  v4 = a3;
  v5 = [(CRKValidXPCConnectionProvider *)self backingConnection];

  if (v5 == v4)
  {
    if (_CRKLogGeneral_onceToken_34 != -1)
    {
      [CRKValidXPCConnectionProvider connectionDied:];
    }

    v6 = _CRKLogGeneral_logObj_34;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_34, OS_LOG_TYPE_ERROR))
    {
      [(CRKValidXPCConnectionProvider *)v4 connectionDied:v6];
    }

    [(CRKValidXPCConnectionProvider *)self tearDownConnection];
  }
}

- (void)tearDownConnection
{
  v2 = [(CRKValidXPCConnectionProvider *)self captureConnection];
  [v2 setInterruptionHandler:0];
  [v2 setInvalidationHandler:0];
  [v2 invalidate];
}

- (id)captureConnection
{
  v3 = [(CRKValidXPCConnectionProvider *)self backingConnection];
  [(CRKValidXPCConnectionProvider *)self setBackingConnection:0];

  return v3;
}

- (void)connectionDied:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "XPC connection died: %{public}@", &v2, 0xCu);
}

@end