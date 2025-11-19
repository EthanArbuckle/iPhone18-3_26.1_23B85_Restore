@interface SYSyncEngine
- (BOOL)resume:(id *)a3;
- (PBCodable)stateForLogging;
- (SYService)service;
- (SYSyncEngine)initWithService:(id)a3 queue:(id)a4;
- (SYSyncEngineResponder)responder;
- (id)outputStreamWithMetadata:(id)a3 priority:(int64_t)a4 options:(id)a5 context:(id)a6 error:(id *)a7;
- (void)beginSession;
- (void)dealloc;
- (void)endSession;
- (void)enqueueSyncRequest:(id)a3 withMessageID:(unsigned __int16)a4 priority:(int64_t)a5 options:(id)a6 userContext:(id)a7 callback:(id)a8;
- (void)suspend;
@end

@implementation SYSyncEngine

- (SYSyncEngine)initWithService:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SYSyncEngine;
  v8 = [(SYSyncEngine *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, v6);
    v10 = [v6 serviceActivity];
    v11 = _os_activity_create(&dword_1DF835000, "Transport", v10, OS_ACTIVITY_FLAG_DEFAULT);

    transportActivity = v9->_transportActivity;
    v9->_transportActivity = v11;

    if (v7)
    {
      v13 = v7;
      queue = v9->_queue;
      v9->_queue = v13;
    }

    else
    {
      v15 = objc_opt_class();
      queue = NSStringFromClass(v15);
      v16 = [queue UTF8String];
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_get_global_queue(21, 0);
      v19 = dispatch_queue_create_with_target_V2(v16, v17, v18);
      v20 = v9->_queue;
      v9->_queue = v19;
    }

    [SYQueueDumper registerQueue:v9->_queue];
    v21 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SYSyncEngine;
  [(SYSyncEngine *)&v2 dealloc];
}

- (SYSyncEngineResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (void)beginSession
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  MEMORY[0x1EEE66BB8](v3, transaction);
}

- (void)endSession
{
  transaction = self->_transaction;
  self->_transaction = 0;
  MEMORY[0x1EEE66BB8]();
}

- (SYService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)resume:(id *)a3
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)suspend
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)enqueueSyncRequest:(id)a3 withMessageID:(unsigned __int16)a4 priority:(int64_t)a5 options:(id)a6 userContext:(id)a7 callback:(id)a8
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (id)outputStreamWithMetadata:(id)a3 priority:(int64_t)a4 options:(id)a5 context:(id)a6 error:(id *)a7
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (PBCodable)stateForLogging
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

@end