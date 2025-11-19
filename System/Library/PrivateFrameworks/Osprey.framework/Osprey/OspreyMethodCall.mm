@interface OspreyMethodCall
- (OspreyMethodCall)callWithRequestBuilder:(id)a3 messageReceived:(id)a4 completion:(id)a5;
- (OspreyMethodCall)initWithMethodName:(id)a3 channel:(id)a4 serializeRequest:(id)a5 deserializeResponse:(id)a6 defaultRequestBuilder:(id)a7;
@end

@implementation OspreyMethodCall

- (OspreyMethodCall)initWithMethodName:(id)a3 channel:(id)a4 serializeRequest:(id)a5 deserializeResponse:(id)a6 defaultRequestBuilder:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = OspreyMethodCall;
  v17 = [(OspreyMethodCall *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    methodName = v17->_methodName;
    v17->_methodName = v18;

    objc_storeStrong(&v17->_channel, a4);
    v20 = [v14 copy];
    serializeRequest = v17->_serializeRequest;
    v17->_serializeRequest = v20;

    v22 = [v15 copy];
    deserializeResponse = v17->_deserializeResponse;
    v17->_deserializeResponse = v22;

    v24 = [v16 copy];
    defaultRequestBuilder = v17->_defaultRequestBuilder;
    v17->_defaultRequestBuilder = v24;
  }

  return v17;
}

- (OspreyMethodCall)callWithRequestBuilder:(id)a3 messageReceived:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self->_deserializeResponse);
  v11 = MEMORY[0x25F8A5BA0](v8);
  if (self->_defaultRequestBuilder)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__OspreyMethodCall_callWithRequestBuilder_messageReceived_completion___block_invoke;
    v22[3] = &unk_2799F2448;
    v22[4] = self;
    v23 = v8;
    v12 = MEMORY[0x25F8A5BA0](v22);

    v11 = v12;
  }

  methodName = self->_methodName;
  channel = self->_channel;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__OspreyMethodCall_callWithRequestBuilder_messageReceived_completion___block_invoke_2;
  v19[3] = &unk_2799F2470;
  v15 = v9;
  v20 = v15;
  objc_copyWeak(&v21, &location);
  v16 = [(OspreyRPC *)channel bidirectionalStreamingRequestWithMethodName:methodName requestBuilder:v11 streamingResponseHandler:v19 completion:v10];
  v17 = [[OspreyMessageProducer alloc] initWithMessageSerializer:self->_serializeRequest streamingContext:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v17;
}

void __70__OspreyMethodCall_callWithRequestBuilder_messageReceived_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(*(a1 + 32) + 40) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __70__OspreyMethodCall_callWithRequestBuilder_messageReceived_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = v4[2](v4, v6);

      if (v5)
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

@end