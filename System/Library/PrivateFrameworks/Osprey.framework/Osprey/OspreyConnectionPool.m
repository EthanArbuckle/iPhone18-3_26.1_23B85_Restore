@interface OspreyConnectionPool
- (OspreyConnectionPool)init;
- (id)connectionForConfiguration:(id)a3;
@end

@implementation OspreyConnectionPool

- (OspreyConnectionPool)init
{
  v9.receiver = self;
  v9.super_class = OspreyConnectionPool;
  v2 = [(OspreyConnectionPool *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("OspreyConnectionPool", v3);
    poolQueue = v2->_poolQueue;
    v2->_poolQueue = v4;

    v6 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    connectionMap = v2->_connectionMap;
    v2->_connectionMap = v6;
  }

  return v2;
}

- (id)connectionForConfiguration:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  OspreyLoggingInit();
  v5 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[OspreyConnectionPool connectionForConfiguration:]";
    _os_log_impl(&dword_25DDE6000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = [[OspreyRPCPromise alloc] initWithFulfillmentQueue:self->_poolQueue];
  v7 = [v4 urlSessionConfiguration];

  if (!v7)
  {
    OspreyLoggingInit();
    v8 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_DEBUG))
    {
      [OspreyConnectionPool connectionForConfiguration:v8];
    }

    v9 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v4 setUrlSessionConfiguration:v9];
  }

  v10 = [v4 urlSessionConfiguration];
  v11 = [v10 TLSMinimumSupportedProtocolVersion];

  if (v11 <= 0x302)
  {
    v12 = [v4 urlSessionConfiguration];
    [v12 setTLSMinimumSupportedProtocolVersion:771];
  }

  OspreyLoggingInit();
  v13 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyConnectionPool *)v13 connectionForConfiguration:v4];
  }

  poolQueue = self->_poolQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__OspreyConnectionPool_connectionForConfiguration___block_invoke;
  block[3] = &unk_2799F1D08;
  block[4] = self;
  v21 = v4;
  v15 = v6;
  v22 = v15;
  v16 = v4;
  dispatch_async(poolQueue, block);
  v17 = v22;
  v18 = v15;

  return v15;
}

void __51__OspreyConnectionPool_connectionForConfiguration___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 2) objectForKey:a1[5]];
  if (v2)
  {
    OspreyLoggingInit();
    v3 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
      v19 = 2112;
      v20 = v2;
      _os_log_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_INFO, "%s Reused channel %@ from pool", buf, 0x16u);
    }
  }

  else
  {
    v4 = [OspreyChannel alloc];
    v5 = [a1[5] connectionUrl];
    v6 = [a1[5] urlSessionConfiguration];
    v2 = [(OspreyChannel *)v4 initWithURL:v5 configuration:v6];

    OspreyLoggingInit();
    v7 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
      v19 = 2112;
      v20 = v2;
      _os_log_impl(&dword_25DDE6000, v7, OS_LOG_TYPE_INFO, "%s Created channel %@", buf, 0x16u);
    }

    objc_initWeak(buf, a1[4]);
    v8 = [OspreyConnectionHandle alloc];
    v9 = a1[5];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_7;
    v14 = &unk_2799F2420;
    objc_copyWeak(&v16, buf);
    v15 = a1[5];
    v10 = [(OspreyConnectionHandle *)v8 initWithConnectionKey:v9 willRelease:&v11];
    [(OspreyChannel *)v2 ocp_setAssociatedHandle:v10, v11, v12, v13, v14];
    [*(a1[4] + 2) setObject:v2 forKey:a1[5]];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  [a1[6] fulfill:v2];
}

void __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_7(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  OspreyLoggingInit();
  v2 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
    _os_log_impl(&dword_25DDE6000, v2, OS_LOG_TYPE_INFO, "%s OspreyChannel deallocated, removing handle from pool", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained[1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_8;
  v6[3] = &unk_2799F1F20;
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  v5 = WeakRetained;
  dispatch_async(v4, v6);
}

void __51__OspreyConnectionPool_connectionForConfiguration___block_invoke_8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  OspreyLoggingInit();
  v2 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = v2;
    v5 = 136315394;
    v6 = "[OspreyConnectionPool connectionForConfiguration:]_block_invoke";
    v7 = 2048;
    v8 = [v3 count];
    _os_log_impl(&dword_25DDE6000, v4, OS_LOG_TYPE_INFO, "%s Handle removed from pool, current size: %lu", &v5, 0x16u);
  }
}

- (void)connectionForConfiguration:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyConnectionPool connectionForConfiguration:]";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s No NSURLSessionConfiguration specified, using defaultSessionConfiguration", &v1, 0xCu);
}

- (void)connectionForConfiguration:(void *)a1 .cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 urlSessionConfiguration];
  v5 = 136315394;
  v6 = "[OspreyConnectionPool connectionForConfiguration:]";
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s Using NSURLSessionConfiguration: %@", &v5, 0x16u);
}

@end