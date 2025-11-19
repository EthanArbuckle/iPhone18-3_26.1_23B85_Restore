@interface CPSSessionRemoteObserver
+ (id)observerWithXPCProxy:(id)a3;
- (CPSSessionRemoteObserver)initWithXPCProxy:(id)a3;
@end

@implementation CPSSessionRemoteObserver

+ (id)observerWithXPCProxy:(id)a3
{
  v3 = a3;
  v4 = [[CPSSessionRemoteObserver alloc] initWithXPCProxy:v3];

  return v4;
}

- (CPSSessionRemoteObserver)initWithXPCProxy:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPSSessionRemoteObserver;
  v6 = [(CPSSessionRemoteObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcProxy, a3);
    v8 = v7;
  }

  return v7;
}

void __56__CPSSessionRemoteObserver_forwardingTargetForSelector___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__CPSSessionRemoteObserver_forwardingTargetForSelector___block_invoke_cold_1(v2, v3);
  }
}

void __56__CPSSessionRemoteObserver_forwardingTargetForSelector___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "An error occurred when requesting remote proxy object for session proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end