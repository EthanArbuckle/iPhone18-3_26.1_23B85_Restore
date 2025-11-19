@interface GKLoadImageResourceOperation
+ (NSURLSession)URLSession;
+ (OS_dispatch_queue)dataConsumerQueue;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (GKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5 dataConsumerQueue:(id)a6;
- (GKLoadImageResourceOperation)initWithURLRequest:(id)a3 dataConsumer:(id)a4;
- (void)cancel;
- (void)didFinishTaskWithData:(id)a3 response:(id)a4 error:(id)a5;
- (void)setQueuePriority:(int64_t)a3;
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

- (GKLoadImageResourceOperation)initWithURLRequest:(id)a3 URLSession:(id)a4 dataConsumer:(id)a5 dataConsumerQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
    v15 = [v11 dataTaskWithRequest:v10 completionHandler:v18];
    task = v14->_task;
    v14->_task = v15;

    objc_storeStrong(&v14->_dataConsumer, a5);
    objc_storeStrong(&v14->_dataConsumerQueue, a6);
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

- (GKLoadImageResourceOperation)initWithURLRequest:(id)a3 dataConsumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() URLSession];
  v9 = [objc_opt_class() dataConsumerQueue];
  v10 = [(GKLoadImageResourceOperation *)self initWithURLRequest:v7 URLSession:v8 dataConsumer:v6 dataConsumerQueue:v9];

  return v10;
}

- (void)didFinishTaskWithData:(id)a3 response:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(GKLoadImageResourceOperation *)self willChangeValueForKey:@"isExecuting"];
  v9 = [(GKLoadImageResourceOperation *)self dataConsumerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__GKLoadImageResourceOperation_didFinishTaskWithData_response_error___block_invoke;
  block[3] = &unk_27966A9A8;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);

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

  v4 = [(GKLoadImageResourceOperation *)self task];
  v3 = [v4 state] == 0;

  return v3;
}

- (BOOL)isFinished
{
  if (([(GKLoadImageResourceOperation *)self isCancelled]& 1) != 0)
  {
    return 1;
  }

  v4 = [(GKLoadImageResourceOperation *)self task];
  v3 = [v4 state] == 3;

  return v3;
}

- (void)setQueuePriority:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = GKLoadImageResourceOperation;
  [(GKLoadImageResourceOperation *)&v9 setQueuePriority:?];
  v5 = __ROR8__(a3 + 8, 2) - 1;
  if (v5 > 3)
  {
    v6 = 1045220557;
  }

  else
  {
    v6 = dword_24E367730[v5];
  }

  v7 = [(GKLoadImageResourceOperation *)self task];
  LODWORD(v8) = v6;
  [v7 setPriority:v8];
}

- (void)start
{
  v3 = [(GKLoadImageResourceOperation *)self task];
  v4 = [v3 state];

  if (([(GKLoadImageResourceOperation *)self isCancelled]& 1) == 0 && v4 != 2)
  {
    if (v4 == 1)
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

      v7 = [(GKLoadImageResourceOperation *)self task];
      LODWORD(v8) = v6;
      [v7 setPriority:v8];

      v9 = [(GKLoadImageResourceOperation *)self task];
      [v9 resume];

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
  v3 = [(GKLoadImageResourceOperation *)self task];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = GKLoadImageResourceOperation;
  [(GKLoadImageResourceOperation *)&v4 cancel];
}

@end