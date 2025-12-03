@interface SYSyncEngine
- (BOOL)resume:(id *)resume;
- (PBCodable)stateForLogging;
- (SYService)service;
- (SYSyncEngine)initWithService:(id)service queue:(id)queue;
- (SYSyncEngineResponder)responder;
- (id)outputStreamWithMetadata:(id)metadata priority:(int64_t)priority options:(id)options context:(id)context error:(id *)error;
- (void)beginSession;
- (void)dealloc;
- (void)endSession;
- (void)enqueueSyncRequest:(id)request withMessageID:(unsigned __int16)d priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback;
- (void)suspend;
@end

@implementation SYSyncEngine

- (SYSyncEngine)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = SYSyncEngine;
  v8 = [(SYSyncEngine *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, serviceCopy);
    serviceActivity = [serviceCopy serviceActivity];
    v11 = _os_activity_create(&dword_1DF835000, "Transport", serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);

    transportActivity = v9->_transportActivity;
    v9->_transportActivity = v11;

    if (queueCopy)
    {
      v13 = queueCopy;
      queue = v9->_queue;
      v9->_queue = v13;
    }

    else
    {
      v15 = objc_opt_class();
      queue = NSStringFromClass(v15);
      uTF8String = [queue UTF8String];
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_get_global_queue(21, 0);
      v19 = dispatch_queue_create_with_target_V2(uTF8String, v17, v18);
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

- (BOOL)resume:(id *)resume
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

- (void)enqueueSyncRequest:(id)request withMessageID:(unsigned __int16)d priority:(int64_t)priority options:(id)options userContext:(id)context callback:(id)callback
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (id)outputStreamWithMetadata:(id)metadata priority:(int64_t)priority options:(id)options context:(id)context error:(id *)error
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