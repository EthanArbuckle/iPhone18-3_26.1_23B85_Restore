@interface MTRPluginClientXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (MTRPluginClient)client;
- (MTRPluginClientXPCProxy)initWithClient:(id)a3;
- (void)callRemoteProxyObject:(id)a3;
- (void)device:(id)a3 receivedAttributeReport:(id)a4;
- (void)device:(id)a3 receivedEventReport:(id)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation MTRPluginClientXPCProxy

- (MTRPluginClientXPCProxy)initWithClient:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTRPluginClientXPCProxy;
  v5 = [(MTRPluginClientXPCProxy *)&v10 init];
  if (v5)
  {
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ initWithClient %@", buf, 0x16u);
    }

    [(MTRPluginClientXPCProxy *)v5 setClient:v4];
    v7 = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)callRemoteProxyObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(MTRPluginClientXPCProxy *)self client];
    v7 = [v6 xpcConnection];

    v8 = [(MTRPluginClientXPCProxy *)self client];
    v9 = [v8 workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__MTRPluginClientXPCProxy_callRemoteProxyObject___block_invoke;
    v11[3] = &unk_2798940C8;
    v12 = v7;
    v13 = v4;
    v10 = v7;
    dispatch_async(v9, v11);

    objc_autoreleasePoolPop(v5);
  }
}

void __49__MTRPluginClientXPCProxy_callRemoteProxyObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  (*(*(a1 + 40) + 16))();
}

- (void)device:(id)a3 receivedAttributeReport:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__MTRPluginClientXPCProxy_device_receivedAttributeReport___block_invoke;
  v10[3] = &unk_279894108;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MTRPluginClientXPCProxy *)self callRemoteProxyObject:v10];
}

- (void)device:(id)a3 receivedEventReport:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__MTRPluginClientXPCProxy_device_receivedEventReport___block_invoke;
  v10[3] = &unk_279894108;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MTRPluginClientXPCProxy *)self callRemoteProxyObject:v10];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (MTRPluginCheckProtocolContainsSelector(&unk_286980790, a3))
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MTRPluginClientXPCProxy;
  return [(MTRPluginClientXPCProxy *)&v6 respondsToSelector:a3];
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (MTRPluginCheckProtocolContainsSelector(&unk_286980790, [v4 selector]))
  {
    [v4 retainArguments];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__MTRPluginClientXPCProxy_forwardInvocation___block_invoke;
    v6[3] = &unk_279894130;
    v7 = v4;
    [(MTRPluginClientXPCProxy *)self callRemoteProxyObject:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTRPluginClientXPCProxy;
    [(MTRPluginClientXPCProxy *)&v5 forwardInvocation:v4];
  }
}

- (MTRPluginClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

void __49__MTRPluginClientXPCProxy_callRemoteProxyObject___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_error_impl(&dword_25830F000, v2, OS_LOG_TYPE_ERROR, "Exception calling remote proxy: %@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x277D85DE8];
}

- (void)forwardInvocation:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  objc_begin_catch(a1);
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "Exception forwarding MTRXPCClientProtocol method: %@", &v6, 0xCu);
  }

  objc_end_catch();
  v5 = *MEMORY[0x277D85DE8];
}

@end