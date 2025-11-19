@interface LNSuggestionsProvider
- (LNSuggestionsProvider)init;
- (id)suggestedActionsForSuggestionsRequests:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation LNSuggestionsProvider

- (id)suggestedActionsForSuggestionsRequests:(id)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6810;
  v31 = __Block_byref_object_dispose__6811;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6810;
  v25 = __Block_byref_object_dispose__6811;
  v26 = 0;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__LNSuggestionsProvider_suggestedActionsForSuggestionsRequests_error___block_invoke;
  v20[3] = &unk_1E74B2658;
  v20[4] = &v27;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__LNSuggestionsProvider_suggestedActionsForSuggestionsRequests_error___block_invoke_2;
  v19[3] = &unk_1E74B1330;
  v19[4] = &v21;
  v19[5] = &v27;
  [v8 suggestedActionsForSuggestionsRequests:v6 reply:v19];

  v9 = v22[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v13 = v28[5];
    if (v13)
    {
      *a4 = v13;
    }

    else
    {
      v33 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AAE8] mainBundle];
      v15 = [v14 localizedStringForKey:@"Empty result" value:&stru_1F0BBC770 table:0];
      v34[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];

      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSuggestionsProviderErrorDomain" code:9003 userInfo:v16];

      v18 = v17;
      *a4 = v17;
    }
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

void __70__LNSuggestionsProvider_suggestedActionsForSuggestionsRequests_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNSuggestionsProvider;
  [(LNSuggestionsProvider *)&v3 dealloc];
}

- (LNSuggestionsProvider)init
{
  v8.receiver = self;
  v8.super_class = LNSuggestionsProvider;
  v2 = [(LNSuggestionsProvider *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.suggestions" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = LNDaemonSuggestionsXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
    v6 = v2;
  }

  return v2;
}

@end