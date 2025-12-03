@interface HDHealthRecordsLegacyIngestionServiceClient
- (HDHealthRecordsLegacyIngestionServiceClient)initWithListenerEndpoint:(id)endpoint;
- (id)_doubleObjectCompletionOnClientQueue:(id)queue;
- (id)_objectCompletionOnClientQueue:(id)queue;
- (id)_objectReturnOnClientQueue:(id)queue;
- (id)exportedInterface;
- (void)_performWithProxyHandler:(id)handler errorHandler:(id)errorHandler;
- (void)dealloc;
- (void)fetchAccessTokenForTokenSession:(id)session connectionInformation:(id)information completion:(id)completion;
- (void)fetchOrRefreshCredentialForAccount:(id)account completion:(id)completion;
- (void)performDownloadRequest:(id)request completion:(id)completion;
- (void)pingWithCompletion:(id)completion;
@end

@implementation HDHealthRecordsLegacyIngestionServiceClient

- (HDHealthRecordsLegacyIngestionServiceClient)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v12.receiver = self;
  v12.super_class = HDHealthRecordsLegacyIngestionServiceClient;
  v5 = [(HDHealthRecordsLegacyIngestionServiceClient *)&v12 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = objc_alloc(MEMORY[0x277CCDE80]);
    if (endpointCopy)
    {
      v9 = [v8 initWithListenerEndpoint:endpointCopy];
    }

    else
    {
      v9 = [v8 initWithServiceName:@"com.apple.health.records.legacy-ingestion"];
    }

    connection = v5->_connection;
    v5->_connection = v9;

    [(_HKXPCConnection *)v5->_connection setExportedObject:v5];
    [(_HKXPCConnection *)v5->_connection resume];
  }

  return v5;
}

- (void)dealloc
{
  [(_HKXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = HDHealthRecordsLegacyIngestionServiceClient;
  [(HDHealthRecordsLegacyIngestionServiceClient *)&v3 dealloc];
}

- (void)pingWithCompletion:(id)completion
{
  v4 = [(HDHealthRecordsLegacyIngestionServiceClient *)self _objectCompletionOnClientQueue:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDHealthRecordsLegacyIngestionServiceClient_pingWithCompletion___block_invoke;
  v8[3] = &unk_2796DC278;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HDHealthRecordsLegacyIngestionServiceClient_pingWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HDHealthRecordsLegacyIngestionServiceClient *)self _performWithProxyHandler:v8 errorHandler:v6];
}

- (void)performDownloadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v7 = [(HDHealthRecordsLegacyIngestionServiceClient *)self _objectReturnOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HDHealthRecordsLegacyIngestionServiceClient_performDownloadRequest_completion___block_invoke;
  v12[3] = &unk_2796DC2A0;
  v13 = requestCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HDHealthRecordsLegacyIngestionServiceClient_performDownloadRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = requestCopy;
  [(HDHealthRecordsLegacyIngestionServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

void __81__HDHealthRecordsLegacyIngestionServiceClient_performDownloadRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[HKFHIRResourceDownloadRequestResult alloc] initWithError:v3];

  (*(v2 + 16))(v2, v4);
}

- (void)fetchAccessTokenForTokenSession:(id)session connectionInformation:(id)information completion:(id)completion
{
  sessionCopy = session;
  informationCopy = information;
  v10 = [(HDHealthRecordsLegacyIngestionServiceClient *)self _doubleObjectCompletionOnClientQueue:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__HDHealthRecordsLegacyIngestionServiceClient_fetchAccessTokenForTokenSession_connectionInformation_completion___block_invoke;
  v16[3] = &unk_2796DC2C8;
  v17 = sessionCopy;
  v18 = informationCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__HDHealthRecordsLegacyIngestionServiceClient_fetchAccessTokenForTokenSession_connectionInformation_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = informationCopy;
  v13 = sessionCopy;
  [(HDHealthRecordsLegacyIngestionServiceClient *)self _performWithProxyHandler:v16 errorHandler:v14];
}

- (void)fetchOrRefreshCredentialForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  v7 = [(HDHealthRecordsLegacyIngestionServiceClient *)self _objectReturnOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__HDHealthRecordsLegacyIngestionServiceClient_fetchOrRefreshCredentialForAccount_completion___block_invoke;
  v12[3] = &unk_2796DC2A0;
  v13 = accountCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__HDHealthRecordsLegacyIngestionServiceClient_fetchOrRefreshCredentialForAccount_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = accountCopy;
  [(HDHealthRecordsLegacyIngestionServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

void __93__HDHealthRecordsLegacyIngestionServiceClient_fetchOrRefreshCredentialForAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = +[HKFHIRCredential nilCredential];
  v4 = [v5 asRefreshResultWithError:v3];

  (*(v2 + 16))(v2, v4);
}

- (void)_performWithProxyHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v7 = [(_HKXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:errorHandlerCopy];
  if (v7)
  {
    handlerCopy[2](handlerCopy, v7);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"unable to fetch legacy ingestion service interface proxy"];
    errorHandlerCopy[2](errorHandlerCopy, v8);
  }
}

- (id)_objectReturnOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HDHealthRecordsLegacyIngestionServiceClient__objectReturnOnClientQueue___block_invoke;
  v8[3] = &unk_2796DC318;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __74__HDHealthRecordsLegacyIngestionServiceClient__objectReturnOnClientQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HDHealthRecordsLegacyIngestionServiceClient__objectReturnOnClientQueue___block_invoke_2;
  v7[3] = &unk_2796DC2F0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __74__HDHealthRecordsLegacyIngestionServiceClient__objectReturnOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)_objectCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HDHealthRecordsLegacyIngestionServiceClient__objectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796DC368;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __78__HDHealthRecordsLegacyIngestionServiceClient__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDHealthRecordsLegacyIngestionServiceClient__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_2796DC340;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __78__HDHealthRecordsLegacyIngestionServiceClient__objectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)_doubleObjectCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDHealthRecordsLegacyIngestionServiceClient__doubleObjectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796DC3B8;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __84__HDHealthRecordsLegacyIngestionServiceClient__doubleObjectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HDHealthRecordsLegacyIngestionServiceClient__doubleObjectCompletionOnClientQueue___block_invoke_2;
  v15[3] = &unk_2796DC390;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

uint64_t __84__HDHealthRecordsLegacyIngestionServiceClient__doubleObjectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end