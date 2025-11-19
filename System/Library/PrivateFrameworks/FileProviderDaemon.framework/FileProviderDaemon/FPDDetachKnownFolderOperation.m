@interface FPDDetachKnownFolderOperation
- (FPDDetachKnownFolderOperation)initWithKnownFolder:(id)a3 server:(id)a4 request:(id)a5;
- (void)main;
@end

@implementation FPDDetachKnownFolderOperation

- (FPDDetachKnownFolderOperation)initWithKnownFolder:(id)a3 server:(id)a4 request:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FPDDetachKnownFolderOperation;
  v12 = [(FPOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_knownFolders, a3);
    objc_storeStrong(&v13->_server, a4);
    objc_storeStrong(&v13->_request, a5);
  }

  return v13;
}

- (void)main
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = 304;
  obj = self->_knownFolders;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v25;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v7);
        v23 = 0;
        v10 = [(FPDServer *)self->_server extensionManager];
        v11 = [v9 logicalLocation];
        v5 = [v10 domainForURL:v11 reason:&v23];

        if (v8 && v5 != v8)
        {
          v12 = [v9 logicalLocation];
          v13 = FPProviderNotFoundErrorForURL();
          [(FPOperation *)self finishWithResult:0 error:v13];

          goto LABEL_17;
        }

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = [v5 defaultBackend];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [v5 defaultBackend];
    v17 = *(&self->super.super.super.isa + v20);
    request = self->_request;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __37__FPDDetachKnownFolderOperation_main__block_invoke;
    v22[3] = &unk_1E83BDFC8;
    v22[4] = self;
    [v16 detachKnownFolders:v17 request:request completionHandler:v22];
  }

  else
  {
    v16 = FPNotSupportedError();
    [(FPOperation *)self finishWithResult:0 error:v16];
  }

  v8 = v5;
LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
}

@end