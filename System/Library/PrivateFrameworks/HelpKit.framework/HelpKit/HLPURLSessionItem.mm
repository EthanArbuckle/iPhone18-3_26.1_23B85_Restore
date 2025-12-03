@interface HLPURLSessionItem
- (HLPURLSessionItem)initWithSessionTask:(id)task completionHandler:(id)handler;
- (int64_t)state;
- (void)cancel;
- (void)dealloc;
- (void)notifyWithSessionTask:(id)task error:(id)error;
@end

@implementation HLPURLSessionItem

- (void)dealloc
{
  [(HLPURLSessionItem *)self cancel];
  v3.receiver = self;
  v3.super_class = HLPURLSessionItem;
  [(HLPURLSessionItem *)&v3 dealloc];
}

- (HLPURLSessionItem)initWithSessionTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HLPURLSessionItem;
  v9 = [(HLPURLSessionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionTask, task);
    v11 = [handlerCopy copy];
    completionHanlder = v10->_completionHanlder;
    v10->_completionHanlder = v11;

    [(HLPURLSessionTask *)v10->_sessionTask registerDelegate:v10];
  }

  return v10;
}

- (int64_t)state
{
  task = [(HLPURLSessionTask *)self->_sessionTask task];
  state = [task state];

  return state;
}

- (void)cancel
{
  v7[1] = *MEMORY[0x277D85DE8];
  self->_cancelled = 1;
  [(HLPURLSessionTask *)self->_sessionTask unregisterDelegate:self];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Cancelled";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Request" code:-1 userInfo:v3];
  [(HLPURLSessionItem *)self notifyWithSessionTask:0 error:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyWithSessionTask:(id)task error:(id)error
{
  if (self->_completionHanlder)
  {
    errorCopy = error;
    taskCopy = task;
    formattedData = [taskCopy formattedData];
    dataTaskData = [taskCopy dataTaskData];
    lastModified = [taskCopy lastModified];
    completionHanlder = self->_completionHanlder;
    isCacheData = [taskCopy isCacheData];

    completionHanlder[2](completionHanlder, formattedData, dataTaskData, isCacheData, lastModified, errorCopy);
    v12 = self->_completionHanlder;
    self->_completionHanlder = 0;
  }
}

@end