@interface GKLoadImageResourceOperation
+ (NSURLSession)URLSession;
+ (OS_dispatch_queue)dataConsumerQueue;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (GKLoadImageResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer dataConsumerQueue:(id)queue;
- (GKLoadImageResourceOperation)initWithURLRequest:(id)request dataConsumer:(id)consumer;
- (void)cancel;
- (void)didFinishTaskWithData:(id)data response:(id)response error:(id)error;
- (void)setQueuePriority:(int64_t)priority;
- (void)start;
@end

@implementation GKLoadImageResourceOperation

+ (NSURLSession)URLSession
{
  if (URLSession_onceToken != -1)
  {
    +[GKLoadImageResourceOperation URLSession];
  }

  v3 = URLSession_URLSession;

  return v3;
}

void __42__GKLoadImageResourceOperation_URLSession__block_invoke()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v7 = @"User-Agent";
  v1 = MEMORY[0x277CEE708];
  v2 = [MEMORY[0x277CEE620] currentProcess];
  v3 = [v1 userAgentForProcessInfo:v2];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v0 setHTTPAdditionalHeaders:v4];

  v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v0];
  v6 = URLSession_URLSession;
  URLSession_URLSession = v5;
}

+ (OS_dispatch_queue)dataConsumerQueue
{
  if (dataConsumerQueue_onceToken != -1)
  {
    +[GKLoadImageResourceOperation dataConsumerQueue];
  }

  v3 = dataConsumerQueue_dataConsumerQueue;

  return v3;
}

void __49__GKLoadImageResourceOperation_dataConsumerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("GameCenterUI.LoadImageResourceOperation.dataConsumerQueue", v2);
  v1 = dataConsumerQueue_dataConsumerQueue;
  dataConsumerQueue_dataConsumerQueue = v0;
}

- (GKLoadImageResourceOperation)initWithURLRequest:(id)request URLSession:(id)session dataConsumer:(id)consumer dataConsumerQueue:(id)queue
{
  requestCopy = request;
  sessionCopy = session;
  consumerCopy = consumer;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = GKLoadImageResourceOperation;
  v14 = [(GKLoadImageResourceOperation *)&v21 init];
  if (v14)
  {
    objc_initWeak(&location, v14);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__GKLoadImageResourceOperation_initWithURLRequest_URLSession_dataConsumer_dataConsumerQueue___block_invoke;
    v18[3] = &unk_27966A980;
    objc_copyWeak(&v19, &location);
    v15 = [sessionCopy dataTaskWithRequest:requestCopy completionHandler:v18];
    task = v14->_task;
    v14->_task = v15;

    objc_storeStrong(&v14->_dataConsumer, consumer);
    objc_storeStrong(&v14->_dataConsumerQueue, queue);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __93__GKLoadImageResourceOperation_initWithURLRequest_URLSession_dataConsumer_dataConsumerQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishTaskWithData:v9 response:v8 error:v7];
}

- (GKLoadImageResourceOperation)initWithURLRequest:(id)request dataConsumer:(id)consumer
{
  consumerCopy = consumer;
  requestCopy = request;
  uRLSession = [objc_opt_class() URLSession];
  dataConsumerQueue = [objc_opt_class() dataConsumerQueue];
  v10 = [(GKLoadImageResourceOperation *)self initWithURLRequest:requestCopy URLSession:uRLSession dataConsumer:consumerCopy dataConsumerQueue:dataConsumerQueue];

  return v10;
}

- (void)didFinishTaskWithData:(id)data response:(id)response error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  [(GKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
  dataConsumerQueue = [(GKLoadImageResourceOperation *)self dataConsumerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__GKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke;
  block[3] = &unk_27966A9A8;
  v13 = dataCopy;
  selfCopy = self;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = dataCopy;
  dispatch_async(dataConsumerQueue, block);

  [(GKLoadImageResourceOperation *)self didChangeValueForKey:@"isExecuting"];
}

void __69__GKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke(uint64_t a1)
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
  if (([(GKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 0;
  }

  task = [(GKLoadImageResourceOperation *)self task];
  v3 = [task state] == 0;

  return v3;
}

- (BOOL)isFinished
{
  if (([(GKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 1;
  }

  task = [(GKLoadImageResourceOperation *)self task];
  v3 = [task state] == 3;

  return v3;
}

- (void)setQueuePriority:(int64_t)priority
{
  v9.receiver = self;
  v9.super_class = GKLoadImageResourceOperation;
  [(GKLoadImageResourceOperation *)&v9 setQueuePriority:?];
  v5 = __ROR8__(priority + 8, 2) - 1;
  if (v5 > 3)
  {
    v6 = 1045220557;
  }

  else
  {
    v6 = dword_24E367730[v5];
  }

  task = [(GKLoadImageResourceOperation *)self task];
  LODWORD(v8) = v6;
  [task setPriority:v8];
}

- (void)start
{
  task = [(GKLoadImageResourceOperation *)self task];
  state = [task state];

  if (([(GKLoadImageResourceOperation *)self isCancelled]& 1) == 0 && state != 2)
  {
    if (state == 1)
    {
      [(GKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
      v5 = __ROR8__([(GKLoadImageResourceOperation *)self queuePriority]+ 8, 2) - 1;
      if (v5 > 3)
      {
        v6 = 1045220557;
      }

      else
      {
        v6 = dword_24E367730[v5];
      }

      task2 = [(GKLoadImageResourceOperation *)self task];
      LODWORD(v8) = v6;
      [task2 setPriority:v8];

      task3 = [(GKLoadImageResourceOperation *)self task];
      [task3 resume];

      [(GKLoadImageResourceOperation *)self didChangeValueForKey:@"isExecuting"];
    }

    else
    {
      NSLog(&cfstr_WarningSCalled.isa, "[GKLoadImageResourceOperation start]", self);
    }
  }
}

- (void)cancel
{
  task = [(GKLoadImageResourceOperation *)self task];
  [task cancel];

  v4.receiver = self;
  v4.super_class = GKLoadImageResourceOperation;
  [(GKLoadImageResourceOperation *)&v4 cancel];
}

@end