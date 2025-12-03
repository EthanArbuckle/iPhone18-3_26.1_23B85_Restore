@interface OspreyRPCPromise
- (OspreyRPCPromise)initWithFulfillmentQueue:(id)queue;
- (id)bidirectionalStreamingRequestWithMethodName:(id)name requestBuilder:(id)builder streamingResponseHandler:(id)handler completion:(id)completion;
- (id)clientStreamingRequestWithMethodName:(id)name requestBuilder:(id)builder responseHandler:(id)handler;
- (void)serverStreamingRequestWithMethodName:(id)name requestData:(id)data requestBuilder:(id)builder streamingResponseHandler:(id)handler completion:(id)completion;
- (void)unaryRequestWithMethodName:(id)name requestData:(id)data requestBuilder:(id)builder responseHandler:(id)handler;
@end

@implementation OspreyRPCPromise

- (OspreyRPCPromise)initWithFulfillmentQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = OspreyRPCPromise;
  v6 = [(OspreyRPCPromise *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fulfillmentQueue, queue);
    v8 = [[OspreyDeferredObject alloc] initWithFulfillmentQueue:queueCopy];
    deferredRPC = v7->_deferredRPC;
    v7->_deferredRPC = v8;
  }

  return v7;
}

- (id)bidirectionalStreamingRequestWithMethodName:(id)name requestBuilder:(id)builder streamingResponseHandler:(id)handler completion:(id)completion
{
  nameCopy = name;
  builderCopy = builder;
  handlerCopy = handler;
  completionCopy = completion;
  v14 = [[OspreyClientStreamContextPromise alloc] initWithFulfillmentQueue:self->_fulfillmentQueue];
  deferredRPC = self->_deferredRPC;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __115__OspreyRPCPromise_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion___block_invoke;
  v24[3] = &unk_2799F2310;
  v25 = nameCopy;
  v27 = builderCopy;
  v28 = handlerCopy;
  v29 = completionCopy;
  v16 = v14;
  v26 = v16;
  v17 = completionCopy;
  v18 = handlerCopy;
  v19 = builderCopy;
  v20 = nameCopy;
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

- (id)clientStreamingRequestWithMethodName:(id)name requestBuilder:(id)builder responseHandler:(id)handler
{
  nameCopy = name;
  builderCopy = builder;
  handlerCopy = handler;
  v11 = [[OspreyClientStreamContextPromise alloc] initWithFulfillmentQueue:self->_fulfillmentQueue];
  deferredRPC = self->_deferredRPC;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__OspreyRPCPromise_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke;
  v20[3] = &unk_2799F2338;
  v21 = nameCopy;
  v23 = builderCopy;
  v24 = handlerCopy;
  v13 = v11;
  v22 = v13;
  v14 = handlerCopy;
  v15 = builderCopy;
  v16 = nameCopy;
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

- (void)serverStreamingRequestWithMethodName:(id)name requestData:(id)data requestBuilder:(id)builder streamingResponseHandler:(id)handler completion:(id)completion
{
  nameCopy = name;
  dataCopy = data;
  builderCopy = builder;
  handlerCopy = handler;
  completionCopy = completion;
  deferredRPC = self->_deferredRPC;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __120__OspreyRPCPromise_serverStreamingRequestWithMethodName_requestData_requestBuilder_streamingResponseHandler_completion___block_invoke;
  v23[3] = &unk_2799F2360;
  v24 = nameCopy;
  v25 = dataCopy;
  v26 = builderCopy;
  v27 = handlerCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = handlerCopy;
  v20 = builderCopy;
  v21 = dataCopy;
  v22 = nameCopy;
  [(OspreyDeferredObject *)deferredRPC fulfilledWithCompletion:v23];
}

- (void)unaryRequestWithMethodName:(id)name requestData:(id)data requestBuilder:(id)builder responseHandler:(id)handler
{
  nameCopy = name;
  dataCopy = data;
  builderCopy = builder;
  handlerCopy = handler;
  deferredRPC = self->_deferredRPC;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__OspreyRPCPromise_unaryRequestWithMethodName_requestData_requestBuilder_responseHandler___block_invoke;
  v19[3] = &unk_2799F2388;
  v20 = nameCopy;
  v21 = dataCopy;
  v22 = builderCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = builderCopy;
  v17 = dataCopy;
  v18 = nameCopy;
  [(OspreyDeferredObject *)deferredRPC fulfilledWithCompletion:v19];
}

@end