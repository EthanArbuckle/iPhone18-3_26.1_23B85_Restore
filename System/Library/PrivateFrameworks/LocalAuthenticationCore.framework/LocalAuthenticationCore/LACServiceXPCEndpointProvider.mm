@interface LACServiceXPCEndpointProvider
- (LACServiceXPCEndpointProvider)initWithContextProvider:(id)a3;
- (id)endpointForServiceWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation LACServiceXPCEndpointProvider

- (LACServiceXPCEndpointProvider)initWithContextProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACServiceXPCEndpointProvider;
  v6 = [(LACServiceXPCEndpointProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextProvider, a3);
  }

  return v7;
}

- (id)endpointForServiceWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v7 = [(LACContextProviding *)self->_contextProvider createContext];
  v8 = v7;
  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__LACServiceXPCEndpointProvider_endpointForServiceWithIdentifier_error___block_invoke;
    v13[3] = &unk_1E7A95D08;
    v15 = &v17;
    v16 = &v23;
    v14 = v7;
    [v14 bootstrapServiceType:v6 completionHandler:v13];
    v9 = v14;
  }

  else
  {
    v10 = [LACError errorWithCode:-1000 debugDescription:@"Unable to create context"];
    v9 = v18[5];
    v18[5] = v10;
  }

  if (a4)
  {
    *a4 = v18[5];
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __72__LACServiceXPCEndpointProvider_endpointForServiceWithIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
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