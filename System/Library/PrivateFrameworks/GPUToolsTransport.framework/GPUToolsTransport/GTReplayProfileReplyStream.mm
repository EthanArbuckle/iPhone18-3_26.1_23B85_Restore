@interface GTReplayProfileReplyStream
- (GTReplayProfileReplyStream)initWithCallback:(id)a3 bulkDataProxy:(id)a4 andToken:(id)a5;
- (void)dispatchMessage:(id)a3 replyConnection:(id)a4;
@end

@implementation GTReplayProfileReplyStream

- (GTReplayProfileReplyStream)initWithCallback:(id)a3 bulkDataProxy:(id)a4 andToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = GTReplayProfileReplyStream;
  v11 = [(GTReplayProfileReplyStream *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_token, a5);
    v13 = MEMORY[0x253034A70](v8);
    callback = v12->_callback;
    v12->_callback = v13;

    objc_storeStrong(&v12->_bulkDataProxy, a4);
    v15 = dispatch_queue_create("com.apple.gputools.profile", 0);
    serialQueue = v12->_serialQueue;
    v12->_serialQueue = v15;
  }

  return v12;
}

- (void)dispatchMessage:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__GTReplayProfileReplyStream_dispatchMessage_replyConnection___block_invoke;
  block[3] = &unk_2796611E8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

void __62__GTReplayProfileReplyStream_dispatchMessage_replyConnection___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), "bulkDataHandle");

  if (v2)
  {
    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "bulkDataHandle");
    v4 = *(*(a1 + 40) + 16);
    v21 = 0;
    v5 = [v4 downloadData:uint64 error:&v21];
    v6 = v21;
    if (*(*(a1 + 40) + 8))
    {
      if (v5)
      {
        v7 = MEMORY[0x277CBEB98];
        v8 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
        v20 = v6;
        v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v5 error:&v20];
        v12 = v20;

        (*(*(*(a1 + 40) + 8) + 16))();
        v6 = v12;
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v18 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __62__GTReplayProfileReplyStream_dispatchMessage_replyConnection___block_invoke_cold_1(v6, uint64, v18);
          }
        }

        else
        {
          v19 = *MEMORY[0x277D85DF8];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to download data handle:%llu error:%@", uint64, v6];
          fprintf(v19, "%s\n", [v18 UTF8String]);
        }

        v10 = objc_opt_new();
        [v10 setError:v6];
        (*(*(*(a1 + 40) + 8) + 16))();
      }
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v13 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __62__GTReplayProfileReplyStream_dispatchMessage_replyConnection___block_invoke_cold_2(v13);
      }
    }

    else
    {
      v14 = *MEMORY[0x277D85E08];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download Data Complete"];
      fprintf(v14, "%s\n", [v15 UTF8String]);
    }

    [*(a1 + 48) deregisterDispatcher:*(*(a1 + 40) + 40)];
    v16 = *(a1 + 40);
    if (*(v16 + 8))
    {
      v17 = objc_opt_new();
      (*(*(*(a1 + 40) + 8) + 16))();

      v16 = *(a1 + 40);
    }

    [*(v16 + 24) completed];
  }
}

void __62__GTReplayProfileReplyStream_dispatchMessage_replyConnection___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_24DBC9000, log, OS_LOG_TYPE_ERROR, "Failed to download data handle:%llu error:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end