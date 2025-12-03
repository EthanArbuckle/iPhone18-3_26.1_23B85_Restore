@interface LACDTORatchetEndpointProvider
- (LACDTORatchetEndpointProvider)initWithContextProvider:(id)provider;
- (id)endpoint:(id *)endpoint;
@end

@implementation LACDTORatchetEndpointProvider

- (LACDTORatchetEndpointProvider)initWithContextProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = LACDTORatchetEndpointProvider;
  v5 = [(LACDTORatchetEndpointProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contextProvider, providerCopy);
  }

  return v6;
}

- (id)endpoint:(id *)endpoint
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_contextProvider);
  createContext = [WeakRetained createContext];

  if (createContext)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__LACDTORatchetEndpointProvider_endpoint___block_invoke;
    v10[3] = &unk_1E7A95D08;
    v12 = &v14;
    v13 = &v20;
    v11 = createContext;
    [v11 bootstrapServiceType:@"kLAServiceTypeRatchet" completionHandler:v10];
    v6 = v11;
  }

  else
  {
    v7 = [LACError errorWithCode:-1000 debugDescription:@"Unable to create context"];
    v6 = v15[5];
    v15[5] = v7;
  }

  if (endpoint)
  {
    *endpoint = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __42__LACDTORatchetEndpointProvider_endpoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

@end