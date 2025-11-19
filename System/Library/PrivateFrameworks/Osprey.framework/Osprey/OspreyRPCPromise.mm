@interface OspreyRPCPromise
- (OspreyRPCPromise)initWithFulfillmentQueue:(id)a3;
- (id)bidirectionalStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6;
- (id)clientStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 responseHandler:(id)a5;
- (void)serverStreamingRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 streamingResponseHandler:(id)a6 completion:(id)a7;
- (void)unaryRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 responseHandler:(id)a6;
@end

@implementation OspreyRPCPromise

- (OspreyRPCPromise)initWithFulfillmentQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = OspreyRPCPromise;
  v6 = [(OspreyRPCPromise *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fulfillmentQueue, a3);
    v8 = [[OspreyDeferredObject alloc] initWithFulfillmentQueue:v5];
    deferredRPC = v7->_deferredRPC;
    v7->_deferredRPC = v8;
  }

  return v7;
}

- (id)bidirectionalStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[OspreyClientStreamContextPromise alloc] initWithFulfillmentQueue:self->_fulfillmentQueue];
  deferredRPC = self->_deferredRPC;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __115__OspreyRPCPromise_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion___block_invoke;
  v24[3] = &unk_2799F2310;
  v25 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v16 = v14;
  v26 = v16;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  [(OspreyDeferredObject *)deferredRPC fulfilledWithCompletion:v24];
  v21 = v26;
  v22 = v16;

  return v16;
}

void __115__OspreyRPCPromise_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bidirectionalStreamingRequestWithMethodName:*(a1 + 32) requestBuilder:*(a1 + 48) streamingResponseHandler:*(a1 + 56) completion:*(a1 + 64)];
  [*(a1 + 40) fulfill:v3];
}

- (id)clientStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[OspreyClientStreamContextPromise alloc] initWithFulfillmentQueue:self->_fulfillmentQueue];
  deferredRPC = self->_deferredRPC;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__OspreyRPCPromise_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke;
  v20[3] = &unk_2799F2338;
  v21 = v8;
  v23 = v9;
  v24 = v10;
  v13 = v11;
  v22 = v13;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [(OspreyDeferredObject *)deferredRPC fulfilledWithCompletion:v20];
  v17 = v22;
  v18 = v13;

  return v13;
}

void __88__OspreyRPCPromise_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientStreamingRequestWithMethodName:*(a1 + 32) requestBuilder:*(a1 + 48) responseHandler:*(a1 + 56)];
  [*(a1 + 40) fulfill:v3];
}

- (void)serverStreamingRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 streamingResponseHandler:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  deferredRPC = self->_deferredRPC;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __120__OspreyRPCPromise_serverStreamingRequestWithMethodName_requestData_requestBuilder_streamingResponseHandler_completion___block_invoke;
  v23[3] = &unk_2799F2360;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [(OspreyDeferredObject *)deferredRPC fulfilledWithCompletion:v23];
}

- (void)unaryRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  deferredRPC = self->_deferredRPC;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__OspreyRPCPromise_unaryRequestWithMethodName_requestData_requestBuilder_responseHandler___block_invoke;
  v19[3] = &unk_2799F2388;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(OspreyDeferredObject *)deferredRPC fulfilledWithCompletion:v19];
}

@end