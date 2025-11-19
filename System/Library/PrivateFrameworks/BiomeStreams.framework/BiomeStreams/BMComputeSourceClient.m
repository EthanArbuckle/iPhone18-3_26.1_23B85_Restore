@interface BMComputeSourceClient
- (BMComputeSourceClient)initWithStreamIdentifier:(id)a3 domain:(unint64_t)a4 listenerEndpoint:(id)a5 storage:(id)a6 user:(unsigned int)a7;
- (BMComputeSourceClient)initWithStreamIdentifier:(id)a3 listenerEndpoint:(id)a4 storage:(id)a5;
- (id)_newConnectionForDomain:(unint64_t)a3;
- (id)_remoteObjectProxyForDomain:(unint64_t)a3 errorHandler:(id)a4;
- (id)description;
- (void)eventsPrunedForAccount:(id)a3 remoteName:(id)a4 reason:(unint64_t)a5;
- (void)sendEvent:(id)a3 account:(id)a4 remoteName:(id)a5 timestamp:(double)a6 signpostID:(unint64_t)a7 sendFullEvent:(BOOL)a8;
@end

@implementation BMComputeSourceClient

- (BMComputeSourceClient)initWithStreamIdentifier:(id)a3 listenerEndpoint:(id)a4 storage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BMComputeSourceClient *)self initWithStreamIdentifier:v10 domain:0 listenerEndpoint:v9 storage:v8 user:getuid()];

  return v11;
}

- (BMComputeSourceClient)initWithStreamIdentifier:(id)a3 domain:(unint64_t)a4 listenerEndpoint:(id)a5 storage:(id)a6 user:(unsigned int)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = BMComputeSourceClient;
  v15 = [(BMComputeSourceClient *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    streamIdentifier = v15->_streamIdentifier;
    v15->_streamIdentifier = v16;

    v15->_domain = a4;
    objc_storeStrong(&v15->_listenerEndpoint, a5);
    objc_storeStrong(&v15->_storage, a6);
    v15->_user = a7;
  }

  return v15;
}

- (id)_newConnectionForDomain:(unint64_t)a3
{
  listenerEndpoint = self->_listenerEndpoint;
  if (listenerEndpoint)
  {
    [MEMORY[0x1E698EA28] connectionToMachService:2 endpoint:listenerEndpoint useCase:*MEMORY[0x1E698E960]];
  }

  else
  {
    [MEMORY[0x1E698EA28] connectionToComputeSourceServerInDomain:a3 user:self->_user useCase:*MEMORY[0x1E698E960] options:0];
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_remoteObjectProxyForDomain:(unint64_t)a3 errorHandler:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self->_connectionWrapper;
  if (([(BMXPCConnectionWrapper *)v7 isValid]& 1) == 0)
  {
    v8 = [(BMComputeSourceClient *)self _newConnectionForDomain:a3];

    objc_storeStrong(&self->_connectionWrapper, v8);
    v7 = v8;
  }

  if (v7)
  {
    v9 = [(BMXPCConnectionWrapper *)v7 connection];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 remoteObjectProxyWithErrorHandler:v6];
      if (v11)
      {
        goto LABEL_11;
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E698E8C8];
      v22 = *MEMORY[0x1E696A578];
      v23 = @"Failed to create remote object proxy";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = [v12 errorWithDomain:v13 code:0 userInfo:v14];
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E698E8C8];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Failed to get connection from BMXPCConnectionWrapper";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [v18 errorWithDomain:v19 code:0 userInfo:v14];
      v11 = 0;
    }

    v6[2](v6, v15);
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E698E8C8];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Failed to get or create BMXPCConnectionWrapper";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v16 errorWithDomain:v17 code:0 userInfo:v10];
    v6[2](v6, v14);
    v11 = 0;
  }

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)sendEvent:(id)a3 account:(id)a4 remoteName:(id)a5 timestamp:(double)a6 signpostID:(unint64_t)a7 sendFullEvent:(BOOL)a8
{
  v8 = a8;
  v38 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [(BMComputeSourceClient *)self streamIdentifier];
  if ([(NSString *)self->_streamIdentifier hasSuffix:@":subscriptions"]|| (p_storage = &self->_storage, [(BMComputePublisherStorage *)self->_storage checkActiveSubscriptionMarkerForStream:v17]))
  {
    v33 = v15;
    v19 = a7;
    domain = self->_domain;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __89__BMComputeSourceClient_sendEvent_account_remoteName_timestamp_signpostID_sendFullEvent___block_invoke;
    v34[3] = &unk_1E6E53620;
    v21 = v17;
    v35 = v21;
    v22 = [(BMComputeSourceClient *)self _remoteObjectProxyForDomain:domain errorHandler:v34];
    if (v8)
    {
      v23 = [v14 serialize];
      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v24 = [objc_opt_class() latestDataVersion];
      }

      else
      {
        v24 = [v14 dataVersion];
      }

      v25 = v24;
    }

    else
    {
      v25 = 0;
      v23 = 0;
    }

    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [BMComputeSourceClient sendEvent:v21 account:self remoteName:? timestamp:? signpostID:? sendFullEvent:?];
    }

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v31 = v19;
    v15 = v33;
    [v22 sendEventWithStreamIdentifier:v21 timestamp:v30 signpostID:v31 eventData:v23 eventDataVersion:v25 account:v33 remoteName:v16];

    v28 = v35;
  }

  else
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [BMComputeSourceClient sendEvent:v17 account:p_storage remoteName:? timestamp:? signpostID:? sendFullEvent:?];
    }

    v27 = __biome_log_for_category();
    v28 = v27;
    if (a7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 138412290;
      v37 = v17;
      _os_signpost_emit_with_name_impl(&dword_1848EE000, v28, OS_SIGNPOST_INTERVAL_END, a7, "SendEvent", "StreamIdentifier=%@", buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __89__BMComputeSourceClient_sendEvent_account_remoteName_timestamp_signpostID_sendFullEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__BMComputeSourceClient_sendEvent_account_remoteName_timestamp_signpostID_sendFullEvent___block_invoke_cold_1(a1);
  }
}

- (void)eventsPrunedForAccount:(id)a3 remoteName:(id)a4 reason:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(BMComputeSourceClient *)self streamIdentifier];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BMComputeSourceClient eventsPrunedForAccount:v10 remoteName:a5 reason:v11];
  }

  domain = self->_domain;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__BMComputeSourceClient_eventsPrunedForAccount_remoteName_reason___block_invoke;
  v15[3] = &unk_1E6E53620;
  v16 = v10;
  v13 = v10;
  v14 = [(BMComputeSourceClient *)self _remoteObjectProxyForDomain:domain errorHandler:v15];
  [v14 eventsPrunedWithStreamIdentifier:v13 account:v9 remoteName:v8 reason:a5];
}

void __66__BMComputeSourceClient_eventsPrunedForAccount_remoteName_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__BMComputeSourceClient_sendEvent_account_remoteName_timestamp_signpostID_sendFullEvent___block_invoke_cold_1(a1);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BMComputeSourceClient *)self streamIdentifier];
  v6 = [(BMXPCConnectionWrapper *)self->_connectionWrapper connection];
  v7 = [v3 stringWithFormat:@"<%@ %p> streamIdentifier: %@, connection: %@", v4, self, v5, v6];

  return v7;
}

@end