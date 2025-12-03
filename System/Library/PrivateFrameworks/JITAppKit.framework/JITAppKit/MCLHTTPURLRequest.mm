@interface MCLHTTPURLRequest
- (MCLHTTPURLRequest)init;
- (void)cancel;
- (void)handleCompletion:(id)completion;
- (void)loadRequest:(id)request;
- (void)sendData:(id)data;
- (void)sendText:(id)text;
@end

@implementation MCLHTTPURLRequest

- (MCLHTTPURLRequest)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = MCLHTTPURLRequest;
  v6 = [(MCLHTTPURLRequest *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    objc_storeStrong(&v6->_httpMethod, @"GET");
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)sendData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  [(MCLHTTPURLRequest *)selfCopy setStatusCode:0];
  if (selfCopy->_url)
  {
    [(MCLHTTPURLRequest *)selfCopy cancel];
    v4 = [MEMORY[0x277CCAB70] requestWithURL:selfCopy->_url cachePolicy:1 timeoutInterval:selfCopy->_timeout];
    [v4 setNetworkServiceType:0];
    if ([(NSDictionary *)selfCopy->_httpHeaders count])
    {
      [v4 setAllHTTPHeaderFields:selfCopy->_httpHeaders];
    }

    [v4 setHTTPMethod:selfCopy->_httpMethod];
    if (location[0])
    {
      v3 = [location[0] copy];
      [v4 setHTTPBody:?];
      MEMORY[0x277D82BD8](v3);
    }

    [(MCLHTTPURLRequest *)selfCopy loadRequest:v4];
    objc_storeStrong(&v4, 0);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)sendText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v3 = selfCopy;
  v4 = [location[0] dataUsingEncoding:4];
  [(MCLHTTPURLRequest *)v3 sendData:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)cancel
{
  if (self->_task)
  {
    v2 = +[MCLURLDataLoader shared];
    [v2 cancelTask:self->_task];
    MEMORY[0x277D82BD8](v2);
    objc_storeStrong(&self->_task, 0);
  }
}

- (void)loadRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  objc_initWeak(&from, selfCopy);
  v5 = +[MCLURLDataLoader shared];
  v6 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __33__MCLHTTPURLRequest_loadRequest___block_invoke;
  v11 = &unk_2797EE610;
  objc_copyWeak(v12, &from);
  v3 = [v5 loadRequest:v6 category:@"high" completionHandler:&v7];
  task = selfCopy->_task;
  selfCopy->_task = v3;
  MEMORY[0x277D82BD8](task);
  MEMORY[0x277D82BD8](v5);
  objc_destroyWeak(v12);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __33__MCLHTTPURLRequest_loadRequest___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained handleCompletion:v6];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)handleCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __38__MCLHTTPURLRequest_handleCompletion___block_invoke;
  v10 = &unk_2797EE270;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __38__MCLHTTPURLRequest_handleCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setError:*(a1 + 32)];
    return [*(a1 + 40) emitTMLSignal:@"error" withArguments:0];
  }

  else
  {
    v2 = [*(*(a1 + 40) + 8) response];
    [*(a1 + 40) setStatusCode:{objc_msgSend(v2, "statusCode")}];
    MEMORY[0x277D82BD8](v2);
    v4 = [*(*(a1 + 40) + 8) responseData];
    v3 = [v4 copy];
    [*(a1 + 40) setData:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    return [*(a1 + 40) emitTMLSignal:@"load" withArguments:0];
  }
}

@end