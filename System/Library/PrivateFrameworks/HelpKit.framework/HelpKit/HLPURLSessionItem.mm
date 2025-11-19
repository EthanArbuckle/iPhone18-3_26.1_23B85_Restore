@interface HLPURLSessionItem
- (HLPURLSessionItem)initWithSessionTask:(id)a3 completionHandler:(id)a4;
- (int64_t)state;
- (void)cancel;
- (void)dealloc;
- (void)notifyWithSessionTask:(id)a3 error:(id)a4;
@end

@implementation HLPURLSessionItem

- (void)dealloc
{
  [(HLPURLSessionItem *)self cancel];
  v3.receiver = self;
  v3.super_class = HLPURLSessionItem;
  [(HLPURLSessionItem *)&v3 dealloc];
}

- (HLPURLSessionItem)initWithSessionTask:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HLPURLSessionItem;
  v9 = [(HLPURLSessionItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionTask, a3);
    v11 = [v8 copy];
    completionHanlder = v10->_completionHanlder;
    v10->_completionHanlder = v11;

    [(HLPURLSessionTask *)v10->_sessionTask registerDelegate:v10];
  }

  return v10;
}

- (int64_t)state
{
  v2 = [(HLPURLSessionTask *)self->_sessionTask task];
  v3 = [v2 state];

  return v3;
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

- (void)notifyWithSessionTask:(id)a3 error:(id)a4
{
  if (self->_completionHanlder)
  {
    v6 = a4;
    v7 = a3;
    v13 = [v7 formattedData];
    v8 = [v7 dataTaskData];
    v9 = [v7 lastModified];
    completionHanlder = self->_completionHanlder;
    v11 = [v7 isCacheData];

    completionHanlder[2](completionHanlder, v13, v8, v11, v9, v6);
    v12 = self->_completionHanlder;
    self->_completionHanlder = 0;
  }
}

@end