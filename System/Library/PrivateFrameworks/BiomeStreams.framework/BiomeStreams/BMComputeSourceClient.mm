@interface BMComputeSourceClient
- (BMComputeSourceClient)initWithStreamIdentifier:(id)identifier domain:(unint64_t)domain listenerEndpoint:(id)endpoint storage:(id)storage user:(unsigned int)user;
- (BMComputeSourceClient)initWithStreamIdentifier:(id)identifier listenerEndpoint:(id)endpoint storage:(id)storage;
- (id)_newConnectionForDomain:(unint64_t)domain;
- (id)_remoteObjectProxyForDomain:(unint64_t)domain errorHandler:(id)handler;
- (id)description;
- (void)eventsPrunedForAccount:(id)account remoteName:(id)name reason:(unint64_t)reason;
- (void)sendEvent:(id)event account:(id)account remoteName:(id)name timestamp:(double)timestamp signpostID:(unint64_t)d sendFullEvent:(BOOL)fullEvent;
@end

@implementation BMComputeSourceClient

- (BMComputeSourceClient)initWithStreamIdentifier:(id)identifier listenerEndpoint:(id)endpoint storage:(id)storage
{
  storageCopy = storage;
  endpointCopy = endpoint;
  identifierCopy = identifier;
  v11 = [(BMComputeSourceClient *)self initWithStreamIdentifier:identifierCopy domain:0 listenerEndpoint:endpointCopy storage:storageCopy user:getuid()];

  return v11;
}

- (BMComputeSourceClient)initWithStreamIdentifier:(id)identifier domain:(unint64_t)domain listenerEndpoint:(id)endpoint storage:(id)storage user:(unsigned int)user
{
  identifierCopy = identifier;
  endpointCopy = endpoint;
  storageCopy = storage;
  v19.receiver = self;
  v19.super_class = BMComputeSourceClient;
  v15 = [(BMComputeSourceClient *)&v19 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    streamIdentifier = v15->_streamIdentifier;
    v15->_streamIdentifier = v16;

    v15->_domain = domain;
    objc_storeStrong(&v15->_listenerEndpoint, endpoint);
    objc_storeStrong(&v15->_storage, storage);
    v15->_user = user;
  }

  return v15;
}

- (id)_newConnectionForDomain:(unint64_t)domain
{
  listenerEndpoint = self->_listenerEndpoint;
  if (listenerEndpoint)
  {
    [MEMORY[0x1E698EA28] connectionToMachService:2 endpoint:listenerEndpoint useCase:*MEMORY[0x1E698E960]];
  }

  else
  {
    [MEMORY[0x1E698EA28] connectionToComputeSourceServerInDomain:domain user:self->_user useCase:*MEMORY[0x1E698E960] options:0];
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_remoteObjectProxyForDomain:(unint64_t)domain errorHandler:(id)handler
{
  v27[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = self->_connectionWrapper;
  if (([(BMXPCConnectionWrapper *)v7 isValid]& 1) == 0)
  {
    v8 = [(BMComputeSourceClient *)self _newConnectionForDomain:domain];

    objc_storeStrong(&self->_connectionWrapper, v8);
    v7 = v8;
  }

  if (v7)
  {
    connection = [(BMXPCConnectionWrapper *)v7 connection];
    v10 = connection;
    if (connection)
    {
      v11 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];
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

    handlerCopy[2](handlerCopy, v15);
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E698E8C8];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Failed to get or create BMXPCConnectionWrapper";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v16 errorWithDomain:v17 code:0 userInfo:v10];
    handlerCopy[2](handlerCopy, v14);
    v11 = 0;
  }

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)sendEvent:(id)event account:(id)account remoteName:(id)name timestamp:(double)timestamp signpostID:(unint64_t)d sendFullEvent:(BOOL)fullEvent
{
  fullEventCopy = fullEvent;
  v38 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  accountCopy = account;
  nameCopy = name;
  streamIdentifier = [(BMComputeSourceClient *)self streamIdentifier];
  if ([(NSString *)self->_streamIdentifier hasSuffix:@":subscriptions"]|| (p_storage = &self->_storage, [(BMComputePublisherStorage *)self->_storage checkActiveSubscriptionMarkerForStream:streamIdentifier]))
  {
    v33 = accountCopy;
    dCopy = d;
    domain = self->_domain;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __89__BMComputeSourceClient_sendEvent_account_remoteName_timestamp_signpostID_sendFullEvent___block_invoke;
    v34[3] = &unk_1E6E53620;
    v21 = streamIdentifier;
    v35 = v21;
    v22 = [(BMComputeSourceClient *)self _remoteObjectProxyForDomain:domain errorHandler:v34];
    if (fullEventCopy)
    {
      serialize = [eventCopy serialize];
      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        latestDataVersion = [objc_opt_class() latestDataVersion];
      }

      else
      {
        latestDataVersion = [eventCopy dataVersion];
      }

      v25 = latestDataVersion;
    }

    else
    {
      v25 = 0;
      serialize = 0;
    }

    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [BMComputeSourceClient sendEvent:v21 account:self remoteName:? timestamp:? signpostID:? sendFullEvent:?];
    }

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
    v31 = dCopy;
    accountCopy = v33;
    [v22 sendEventWithStreamIdentifier:v21 timestamp:v30 signpostID:v31 eventData:serialize eventDataVersion:v25 account:v33 remoteName:nameCopy];

    v28 = v35;
  }

  else
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [BMComputeSourceClient sendEvent:streamIdentifier account:p_storage remoteName:? timestamp:? signpostID:? sendFullEvent:?];
    }

    v27 = __biome_log_for_category();
    v28 = v27;
    if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 138412290;
      v37 = streamIdentifier;
      _os_signpost_emit_with_name_impl(&dword_1848EE000, v28, OS_SIGNPOST_INTERVAL_END, d, "SendEvent", "StreamIdentifier=%@", buf, 0xCu);
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

- (void)eventsPrunedForAccount:(id)account remoteName:(id)name reason:(unint64_t)reason
{
  nameCopy = name;
  accountCopy = account;
  streamIdentifier = [(BMComputeSourceClient *)self streamIdentifier];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BMComputeSourceClient eventsPrunedForAccount:streamIdentifier remoteName:reason reason:v11];
  }

  domain = self->_domain;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__BMComputeSourceClient_eventsPrunedForAccount_remoteName_reason___block_invoke;
  v15[3] = &unk_1E6E53620;
  v16 = streamIdentifier;
  v13 = streamIdentifier;
  v14 = [(BMComputeSourceClient *)self _remoteObjectProxyForDomain:domain errorHandler:v15];
  [v14 eventsPrunedWithStreamIdentifier:v13 account:accountCopy remoteName:nameCopy reason:reason];
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
  streamIdentifier = [(BMComputeSourceClient *)self streamIdentifier];
  connection = [(BMXPCConnectionWrapper *)self->_connectionWrapper connection];
  v7 = [v3 stringWithFormat:@"<%@ %p> streamIdentifier: %@, connection: %@", v4, self, streamIdentifier, connection];

  return v7;
}

@end