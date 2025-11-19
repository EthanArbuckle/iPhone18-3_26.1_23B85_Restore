@interface EMDiagnosticsHelper
+ (id)log;
- (EMDiagnosticsHelper)initWithDaemonInterface:(id)a3;
- (id)registerDiagnosticFileProvider:(id)a3;
- (void)dealloc;
- (void)provideDiagnosticsAt:(id)a3 options:(unint64_t)a4 completion:(id)a5;
@end

@implementation EMDiagnosticsHelper

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EMDiagnosticsHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_13 != -1)
  {
    dispatch_once(&log_onceToken_13, block);
  }

  v2 = log_log_13;

  return v2;
}

void __26__EMDiagnosticsHelper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_13;
  log_log_13 = v1;
}

- (EMDiagnosticsHelper)initWithDaemonInterface:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = EMDiagnosticsHelper;
  v5 = [(EMDiagnosticsHelper *)&v16 init];
  if (v5)
  {
    v6 = [[EMObjectID alloc] initAsEphemeralID:1];
    providerObjectID = v5->_providerObjectID;
    v5->_providerObjectID = v6;

    v8 = [v4 diagnosticInfoGatherer];
    v9 = [v8 registerDiagnosticInfoProvider:v5];
    diagnosticInfoProviderToken = v5->_diagnosticInfoProviderToken;
    v5->_diagnosticInfoProviderToken = v9;

    v5->_source = 0;
    v11 = objc_alloc(MEMORY[0x1E699B7F0]);
    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v13 = [v11 initWithObject:v12];
    providers = v5->_providers;
    v5->_providers = v13;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(EMDiagnosticsHelper *)self diagnosticInfoProviderToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = EMDiagnosticsHelper;
  [(EMDiagnosticsHelper *)&v4 dealloc];
}

- (id)registerDiagnosticFileProvider:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EMDiagnosticsHelper log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "Registering a diagnostic file provider: %@", buf, 0xCu);
  }

  v6 = [(EMDiagnosticsHelper *)self providers];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__EMDiagnosticsHelper_registerDiagnosticFileProvider___block_invoke;
  v15[3] = &unk_1E826CE90;
  v7 = v4;
  v16 = v7;
  [v6 performWhileLocked:v15];

  v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__EMDiagnosticsHelper_registerDiagnosticFileProvider___block_invoke_2;
  v12[3] = &unk_1E826CA80;
  objc_copyWeak(&v14, buf);
  v9 = v7;
  v13 = v9;
  [v8 addCancelationBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

void __54__EMDiagnosticsHelper_registerDiagnosticFileProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained providers];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__EMDiagnosticsHelper_registerDiagnosticFileProvider___block_invoke_3;
    v5[3] = &unk_1E826CE90;
    v6 = *(a1 + 32);
    [v4 performWhileLocked:v5];
  }
}

- (void)provideDiagnosticsAt:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v24 = a5;
  if (a4)
  {
    v10 = [(EMDiagnosticsHelper *)self providers];
    v22 = [v10 getObject];

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v22;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v30 + 1) + 8 * v14) messageListItemsForDiagnosticsHelper:{self, v22, v23}];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v17)
          {
            v18 = *v27;
            do
            {
              v19 = 0;
              do
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = [*(*(&v26 + 1) + 8 * v19) displayMessageObjectID];
                [v11 addObject:v20];

                ++v19;
              }

              while (v17 != v19);
              v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v17);
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }

    [(EMDiagnosticsHelper *)self setSource:0];
    v24[2](v24, v11, 0);

    v9 = obj;
  }

  else
  {
    v8 = +[EMDiagnosticsHelper log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = a4;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "Skipping visible message source diagnostics because options are: %lu", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E695DFD8] set];
    v24[2](v24, v9, 0);
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end