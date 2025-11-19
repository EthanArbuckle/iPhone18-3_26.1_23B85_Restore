@interface MSSearch
+ (id)findMessageData:(id)a3 matchingCriterion:(id)a4 options:(unint64_t)a5 delegate:(id)a6;
+ (id)findMessageData:(id)a3 matchingCriterion:(id)a4 shouldFetch:(BOOL)a5 onServer:(BOOL)a6 delegate:(id)a7;
+ (id)findMessageData:(id)a3 matchingCriterion:(id)a4 shouldFetch:(BOOL)a5 onServer:(BOOL)a6 onlyInboxes:(BOOL)a7 delegate:(id)a8;
- (MSSearch)initWithRemoteObjectInterface:(id)a3;
- (MSSearchDelegate)delegate;
- (id)_initWithDelegate:(id)a3;
- (id)newConnectionForInterface:(id)a3;
- (void)_delegateDidFindResults:(id)a3;
- (void)_delegateDidFinishWithError:(id)a3;
- (void)_findMessageData:(id)a3 matchingCriterion:(id)a4 options:(unint64_t)a5;
- (void)cancel;
- (void)foundResults:(id)a3 error:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation MSSearch

+ (id)findMessageData:(id)a3 matchingCriterion:(id)a4 options:(unint64_t)a5 delegate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [[MSSearch alloc] _initWithDelegate:v11];
  [v12 _findMessageData:v9 matchingCriterion:v10 options:a5];

  return v12;
}

+ (id)findMessageData:(id)a3 matchingCriterion:(id)a4 shouldFetch:(BOOL)a5 onServer:(BOOL)a6 delegate:(id)a7
{
  v7 = 4;
  if (a5)
  {
    v7 = 5;
  }

  if (a6)
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [a1 findMessageData:a3 matchingCriterion:a4 options:v8 delegate:a7];

  return v9;
}

+ (id)findMessageData:(id)a3 matchingCriterion:(id)a4 shouldFetch:(BOOL)a5 onServer:(BOOL)a6 onlyInboxes:(BOOL)a7 delegate:(id)a8
{
  v8 = a5;
  if (a6)
  {
    v8 = a5 | 2;
  }

  if (a7)
  {
    v9 = v8 | 4;
  }

  else
  {
    v9 = v8;
  }

  v10 = [a1 findMessageData:a3 matchingCriterion:a4 options:v9 delegate:a8];

  return v10;
}

- (id)_initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54235D0];
  v10.receiver = self;
  v10.super_class = MSSearch;
  v6 = [(MSXPCService *)&v10 initWithRemoteObjectInterface:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, v4);
    v8 = v7;
  }

  return v7;
}

- (MSSearch)initWithRemoteObjectInterface:(id)a3
{
  v4.receiver = self;
  v4.super_class = MSSearch;
  return [(MSXPCService *)&v4 initWithRemoteObjectInterface:a3];
}

- (id)newConnectionForInterface:(id)a3
{
  v18.receiver = self;
  v18.super_class = MSSearch;
  v4 = [(MSXPCService *)&v18 newConnectionForInterface:a3];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5421920];
  [v4 setExportedInterface:v5];
  v6 = [[MSSearchProxy alloc] initWithSearch:self];
  [v4 setExportedObject:v6];

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__MSSearch_newConnectionForInterface___block_invoke;
  v15[3] = &unk_1E855EF10;
  objc_copyWeak(&v16, &location);
  v7 = MEMORY[0x1DA71BD00](v15);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__MSSearch_newConnectionForInterface___block_invoke_2;
  v13[3] = &unk_1E855EF38;
  v8 = v7;
  v14 = v8;
  [v4 setInterruptionHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__MSSearch_newConnectionForInterface___block_invoke_3;
  v11[3] = &unk_1E855EF38;
  v9 = v8;
  v12 = v9;
  [v4 setInvalidationHandler:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v4;
}

void __38__MSSearch_newConnectionForInterface___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696AA08];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"MSMailSearchErrorDomain" code:1500 userInfo:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _delegateDidFinishWithError:v6];

  v8 = *MEMORY[0x1E69E9840];
}

void __38__MSSearch_newConnectionForInterface___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  (*(v1 + 16))(v1);
}

void __38__MSSearch_newConnectionForInterface___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  (*(v1 + 16))(v1);
}

- (void)cancel
{
  v2 = [(MSXPCService *)self connection];
  [v2 invalidate];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!obj && WeakRetained)
  {
    v5 = [(MSXPCService *)self connection];
    [v5 invalidate];
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (void)foundResults:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(MSSearch *)self _delegateDidFindResults:v7];
  }

  else
  {
    [(MSSearch *)self _delegateDidFinishWithError:v6];
  }
}

- (void)_findMessageData:(id)a3 matchingCriterion:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSSearch.m" lineNumber:357 description:{@"Invalid parameter not satisfying: %@", @"criterion"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MSSearch.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"resultKeys"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__MSSearch__findMessageData_matchingCriterion_options___block_invoke;
  v14[3] = &unk_1E855EAD8;
  v14[4] = self;
  v11 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v14];
  [v11 findMessageData:v9 matchingCriterion:v10 options:a5];
}

void __55__MSSearch__findMessageData_matchingCriterion_options___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696AA08];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"MSMailSearchErrorDomain" code:1500 userInfo:v6];
  [v4 _delegateDidFinishWithError:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_delegateDidFinishWithError:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained search:self didFinishWithError:v6];
  }

  v5 = [(MSXPCService *)self connection];
  [v5 invalidate];

  objc_storeWeak(&self->_delegate, 0);
}

- (void)_delegateDidFindResults:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained search:self didFindResults:v5] & 1) == 0)
  {
    [(MSSearch *)self _delegateDidFinishWithError:0];
  }
}

- (MSSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end