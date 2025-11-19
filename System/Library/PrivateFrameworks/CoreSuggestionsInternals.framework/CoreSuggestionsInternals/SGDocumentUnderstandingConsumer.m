@interface SGDocumentUnderstandingConsumer
+ (id)sharedInstance;
- (SGDocumentUnderstandingConsumer)init;
- (id)consumeMailContentWithContext:(id)a3;
- (id)consumeMessagesContentWithContext:(id)a3;
- (id)consumeNotesContentWithContext:(id)a3;
- (id)consumeRemindersContentWithContext:(id)a3;
@end

@implementation SGDocumentUnderstandingConsumer

- (id)consumeRemindersContentWithContext:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDocumentUnderstandingConsumer: consumeRemindersContentWithContext", buf, 2u);
  }

  v6 = [v4 content];
  *buf = [v6 encodeAsProto];
  if (!*buf)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Error encoding message as protobuf", v15, 2u);
    }
  }

  v8 = NSSelectorFromString(@"addSerializedDocument:documentType:");
  duReceiver = self->_duReceiver;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [(DUDocumentHarvesting *)self->_duReceiver methodSignatureForSelector:v8];
    v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v11];
    [v12 setSelector:v8];
    [v12 setArgument:buf atIndex:{2, 3}];
    [v12 setArgument:v15 atIndex:3];
    [v12 invokeWithTarget:self->_duReceiver];

    objc_autoreleasePoolPop(v10);
  }

  v13 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  return v13;
}

- (id)consumeNotesContentWithContext:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDocumentUnderstandingConsumer: consumeNotesContentWithContext", buf, 2u);
  }

  v6 = [v4 content];
  *buf = [v6 encodeAsProto];
  if (!*buf)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Error encoding message as protobuf", v15, 2u);
    }
  }

  v8 = NSSelectorFromString(@"addSerializedDocument:documentType:");
  duReceiver = self->_duReceiver;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [(DUDocumentHarvesting *)self->_duReceiver methodSignatureForSelector:v8];
    v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v11];
    [v12 setSelector:v8];
    [v12 setArgument:buf atIndex:{2, 2}];
    [v12 setArgument:v15 atIndex:3];
    [v12 invokeWithTarget:self->_duReceiver];

    objc_autoreleasePoolPop(v10);
  }

  v13 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  return v13;
}

- (id)consumeMessagesContentWithContext:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDocumentUnderstandingConsumer: consumeMessagesContentWithContext", buf, 2u);
  }

  v6 = [v4 content];
  *buf = [v6 encodeAsProto];
  if (!*buf)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Error encoding message as protobuf", v15, 2u);
    }
  }

  v8 = NSSelectorFromString(@"addSerializedDocument:documentType:");
  duReceiver = self->_duReceiver;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [(DUDocumentHarvesting *)self->_duReceiver methodSignatureForSelector:v8];
    v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v11];
    [v12 setSelector:v8];
    [v12 setArgument:buf atIndex:{2, 1}];
    [v12 setArgument:v15 atIndex:3];
    [v12 invokeWithTarget:self->_duReceiver];

    objc_autoreleasePoolPop(v10);
  }

  v13 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  return v13;
}

- (id)consumeMailContentWithContext:(id)a3
{
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDocumentUnderstandingConsumer: consumeMailContentWithContext", buf, 2u);
  }

  v6 = [v4 content];
  *buf = [v6 encodeAsProto];
  if (!*buf)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "Error encoding message as protobuf", v15, 2u);
    }
  }

  v8 = NSSelectorFromString(@"addSerializedDocument:documentType:");
  duReceiver = self->_duReceiver;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [(DUDocumentHarvesting *)self->_duReceiver methodSignatureForSelector:v8];
    v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v11];
    [v12 setSelector:v8];
    [v12 setArgument:buf atIndex:{2, 0}];
    [v12 setArgument:v15 atIndex:3];
    [v12 invokeWithTarget:self->_duReceiver];

    objc_autoreleasePoolPop(v10);
  }

  v13 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];

  return v13;
}

- (SGDocumentUnderstandingConsumer)init
{
  v6.receiver = self;
  v6.super_class = SGDocumentUnderstandingConsumer;
  v2 = [(SGDocumentUnderstandingConsumer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    duReceiver = v2->_duReceiver;
    v2->_duReceiver = v3;

    [MEMORY[0x277D41DE8] defaultCoordinator];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_13286 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_13286, &__block_literal_global_13287);
  }

  v3 = sharedInstance__pasExprOnceResult_13288;

  return v3;
}

void __49__SGDocumentUnderstandingConsumer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_13288;
  sharedInstance__pasExprOnceResult_13288 = v1;

  objc_autoreleasePoolPop(v0);
}

@end