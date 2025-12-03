@interface ASKLoadImageResourceOperation
+ (OS_dispatch_queue)dataConsumerQueue;
- (ASKLoadImageResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer;
- (ASKLoadImageResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer dataConsumerQueue:(id)queue;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)didFinishTaskWithData:(id)data response:(id)response error:(id)error;
- (void)setQueuePriority:(int64_t)priority;
- (void)start;
@end

@implementation ASKLoadImageResourceOperation

+ (OS_dispatch_queue)dataConsumerQueue
{
  if (dataConsumerQueue_onceToken != -1)
  {
    +[ASKLoadImageResourceOperation dataConsumerQueue];
  }

  v3 = dataConsumerQueue_dataConsumerQueue;

  return v3;
}

void __50__ASKLoadImageResourceOperation_dataConsumerQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, -15);
  v1 = dispatch_queue_create("AppStoreKit.LoadImageResourceOperation.dataConsumerQueue", v0);
  v2 = dataConsumerQueue_dataConsumerQueue;
  dataConsumerQueue_dataConsumerQueue = v1;
}

- (ASKLoadImageResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer dataConsumerQueue:(id)queue
{
  requestCopy = request;
  sessionCopy = session;
  consumerCopy = consumer;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = ASKLoadImageResourceOperation;
  v15 = [(ASKLoadImageResourceOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_session, session);
    objc_storeStrong(&v16->_urlRequest, request);
    objc_storeStrong(&v16->_dataConsumer, consumer);
    objc_storeStrong(&v16->_dataConsumerQueue, queue);
  }

  return v16;
}

- (ASKLoadImageResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer
{
  consumerCopy = consumer;
  sessionCopy = session;
  requestCopy = request;
  dataConsumerQueue = [objc_opt_class() dataConsumerQueue];
  v12 = [(ASKLoadImageResourceOperation *)self initWithURLRequest:requestCopy URLSession:sessionCopy dataConsumer:consumerCopy dataConsumerQueue:dataConsumerQueue];

  return v12;
}

- (void)didFinishTaskWithData:(id)data response:(id)response error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  [(ASKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
  dataConsumerQueue = [(ASKLoadImageResourceOperation *)self dataConsumerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ASKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke;
  block[3] = &unk_27968B4B0;
  v13 = dataCopy;
  selfCopy = self;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = dataCopy;
  dispatch_async(dataConsumerQueue, block);

  [(ASKLoadImageResourceOperation *)self didChangeValueForKey:@"isExecuting"];
}

void __70__ASKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 dataConsumer];
    v5 = *(a1 + 32);
    v11 = 0;
    v6 = [v4 objectForData:v5 error:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = 0;
      v9 = v7;
    }

    else
    {
      v8 = v6;
      v9 = 0;
    }

    [*(a1 + 40) didCompleteWithResource:v8 error:v9];
  }

  else
  {
    v10 = *(a1 + 48);

    [v2 didCompleteWithResource:0 error:v10];
  }
}

- (BOOL)isExecuting
{
  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 0;
  }

  task = [(ASKLoadImageResourceOperation *)self task];
  if (task)
  {
    task2 = [(ASKLoadImageResourceOperation *)self task];
    v3 = [task2 state] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isFinished
{
  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 1;
  }

  task = [(ASKLoadImageResourceOperation *)self task];
  v3 = [task state] == 3;

  return v3;
}

- (void)setQueuePriority:(int64_t)priority
{
  v9.receiver = self;
  v9.super_class = ASKLoadImageResourceOperation;
  [(ASKLoadImageResourceOperation *)&v9 setQueuePriority:?];
  v5 = __ROR8__(priority + 8, 2) - 1;
  if (v5 > 3)
  {
    v6 = 1045220557;
  }

  else
  {
    v6 = dword_24F9354A0[v5];
  }

  task = [(ASKLoadImageResourceOperation *)self task];
  LODWORD(v8) = v6;
  [task setPriority:v8];
}

- (void)start
{
  task = [(ASKLoadImageResourceOperation *)self task];
  state = [task state];

  if (([(ASKLoadImageResourceOperation *)self isCancelled]& 1) == 0 && state != 2)
  {
    task2 = [(ASKLoadImageResourceOperation *)self task];

    if (!task2 || state == 1)
    {
      task3 = [(ASKLoadImageResourceOperation *)self task];

      if (!task3)
      {
        objc_initWeak(&location, self);
        session = [(ASKLoadImageResourceOperation *)self session];
        urlRequest = [(ASKLoadImageResourceOperation *)self urlRequest];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __38__ASKLoadImageResourceOperation_start__block_invoke;
        v11[3] = &unk_27968B4D8;
        objc_copyWeak(&v12, &location);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __38__ASKLoadImageResourceOperation_start__block_invoke_2;
        v9[3] = &unk_27968B500;
        objc_copyWeak(&v10, &location);
        [session createDataTaskWithRequest:urlRequest activity:0 dataTaskCreationCompletionHandler:v11 requestCompletionHandler:v9];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      NSLog(&cfstr_WarningSCalled.isa, "[ASKLoadImageResourceOperation start]", self);
    }
  }
}

void __38__ASKLoadImageResourceOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setTask:v11];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 willChangeValueForKey:@"isExecuting"];

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = __ROR8__([v7 queuePriority] + 8, 2) - 1;
    if (v8 > 3)
    {
      LODWORD(v9) = 1045220557;
    }

    else
    {
      LODWORD(v9) = dword_24F9354A0[v8];
    }

    [v11 setPriority:v9];

    [v11 resume];
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 didChangeValueForKey:@"isExecuting"];
  }
}

void __38__ASKLoadImageResourceOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 data];
  v8 = [v6 response];

  [WeakRetained didFinishTaskWithData:v7 response:v8 error:v5];
}

- (void)cancel
{
  task = [(ASKLoadImageResourceOperation *)self task];
  [task cancel];

  v4.receiver = self;
  v4.super_class = ASKLoadImageResourceOperation;
  [(ASKLoadImageResourceOperation *)&v4 cancel];
}

@end