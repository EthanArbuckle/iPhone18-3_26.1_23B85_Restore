@interface GTReplayADSReplyStream
- (GTReplayADSReplyStream)initWithCallback:(id)a3 bulkDataProxy:(id)a4 andToken:(id)a5;
- (void)dispatchMessage:(id)a3 replyConnection:(id)a4;
@end

@implementation GTReplayADSReplyStream

- (GTReplayADSReplyStream)initWithCallback:(id)a3 bulkDataProxy:(id)a4 andToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = GTReplayADSReplyStream;
  v11 = [(GTReplayADSReplyStream *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_token, a5);
    v13 = MEMORY[0x253034A70](v8);
    callback = v12->_callback;
    v12->_callback = v13;

    objc_storeStrong(&v12->_bulkDataProxy, a4);
  }

  return v12;
}

- (void)dispatchMessage:(id)a3 replyConnection:(id)a4
{
  v5 = a3;
  uint64 = xpc_dictionary_get_uint64(v5, "bulkDataHandle");
  if (uint64)
  {
    v7 = uint64;
    bulkDataProxy = self->_bulkDataProxy;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__GTReplayADSReplyStream_dispatchMessage_replyConnection___block_invoke;
    v12[3] = &unk_2796615F8;
    v12[4] = self;
    v13 = v5;
    [(GTBulkDataServiceXPCProxy *)bulkDataProxy downloadData:v7 completionHandler:v12];
  }

  else
  {
    v9 = xpc_dictionary_get_uint64(v5, "streamState");
    callback = self->_callback;
    v11 = [[GTReplayResponseStream alloc] initWithState:v9];
    callback[2](callback, v11);

    if (v9 == 2)
    {
      [(GTReplayRequestToken *)self->_token completed];
    }
  }
}

void __58__GTReplayADSReplyStream_dispatchMessage_replyConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setData:0];
    [v7 setError:v6];
    (*(*(*(a1 + 32) + 8) + 16))();
  }

  v8 = xpc_dictionary_get_value(*(a1 + 40), "bulkDataHandle");

  if (v8)
  {
    v9 = +[GTUnarchiver replayResponseStreamClassSet];
    v10 = objc_opt_class();
    v14 = 0;
    v11 = GTUnarchivedObjectOfClassesExpectingClass(v9, v10, v5, &v14);
    v12 = v14;

    if (v11)
    {
      (*(*(*(a1 + 32) + 8) + 16))();
    }

    else
    {
      v13 = objc_opt_new();
      [v13 setData:0];
      [v13 setError:v6];
      (*(*(*(a1 + 32) + 8) + 16))();
    }
  }
}

@end