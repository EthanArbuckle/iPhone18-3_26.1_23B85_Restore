@interface HDElectrocardiogramSessionServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (HDElectrocardiogramSessionServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)remote_abortWithCompletion:(id)a3;
- (void)remote_startWithCompletion:(id)a3;
@end

@implementation HDElectrocardiogramSessionServer

- (HDElectrocardiogramSessionServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HDElectrocardiogramSessionServer;
  v11 = [(HDStandardTaskServer *)&v17 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [v10 sessionConfiguration];
    sessionConfiguration = v11->_sessionConfiguration;
    v11->_sessionConfiguration = v14;
  }

  return v11;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = [a3 sessionConfiguration];

  if (!v6)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Session configuration is nil"];
  }

  return v6 != 0;
}

- (void)connectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HDElectrocardiogramSessionServer_connectionInvalidated__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)connectionInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HDElectrocardiogramSessionServer_connectionInterrupted__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)remote_startWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDElectrocardiogramSessionServer_remote_startWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__HDElectrocardiogramSessionServer_remote_startWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 48));
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 138543362;
      v12 = objc_opt_class();
      v5 = v12;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session start", buf, 0xCu);
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      v7 = @"Not Started";
      if (v6 == 1)
      {
        v7 = @"Started";
      }

      if (v6 == 2)
      {
        v8 = @"Ended";
      }

      else
      {
        v8 = v7;
      }

      v9 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Cannot start session in state: %@", v8}];
      v2[2](v2, 0, v9);
    }

    else
    {
      *(v1 + 56) = 1;
      v2[2](v2, 1, 0);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remote_abortWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDElectrocardiogramSessionServer_remote_abortWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__HDElectrocardiogramSessionServer_remote_abortWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 48));
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 138543362;
      v12 = objc_opt_class();
      v5 = v12;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session abort", buf, 0xCu);
    }

    v6 = *(v1 + 56);
    if (v6 == 1)
    {
      *(v1 + 56) = 2;
      v7 = [v1 remoteObjectProxyWithErrorHandler:&__block_literal_global_319_0];
      [v7 clientRemote_didEndWithReason:2 error:0];

      v2[2](v2, 1, 0);
    }

    else
    {
      v8 = @"Not Started";
      if (v6 == 2)
      {
        v8 = @"Ended";
      }

      v9 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Cannot abort session in state: %@", v8}];
      (v2)[2](v2, 0, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __81__HDElectrocardiogramSessionServer__queue_notifyClientDidEndWithEndReason_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Error notifiying ECG Session client of session end: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end