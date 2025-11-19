@interface IKScriptsEvaluator
- (IKAppContext)appContext;
- (IKScriptsEvaluator)initWithScripts:(id)a3 withContext:(id)a4 callback:(id)a5 jingleRequest:(BOOL)a6;
- (void)_operation:(id)a3 finishedWithResult:(id)a4 error:(id)a5;
- (void)evaluate;
- (void)evaluateScripts;
- (void)handleScirptLoadFailure;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)parseScriptData:(id)a3 successPredicate:(id)a4 completion:(id)a5;
- (void)scriptDidLoadWithID:(id)a3 data:(id)a4 error:(id)a5;
@end

@implementation IKScriptsEvaluator

- (IKScriptsEvaluator)initWithScripts:(id)a3 withContext:(id)a4 callback:(id)a5 jingleRequest:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v27.receiver = self;
  v27.super_class = IKScriptsEvaluator;
  v14 = [(IKScriptsEvaluator *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scripts, a3);
    objc_storeWeak(&v15->_appContext, v12);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    records = v15->_records;
    v15->_records = v16;

    v15->_isJingleRequest = a6;
    v18 = [MEMORY[0x277CCAD78] UUID];
    v19 = [v18 UUIDString];
    identifier = v15->_identifier;
    v15->_identifier = v19;

    objc_setAssociatedObject(v12, v15->_identifier, v15, 0x301);
    if (v13)
    {
      v21 = [MEMORY[0x277CD4650] managedValueWithValue:v13];
      v22 = [v12 jsContext];
      v23 = [v22 virtualMachine];
      v24 = [v12 jsContext];
      v25 = [v24 objectForKeyedSubscript:@"Device"];
      [v23 addManagedReference:v21 withOwner:v25];

      [(IKScriptsEvaluator *)v15 setCallback:v21];
    }
  }

  return v15;
}

- (void)evaluate
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v3 = [(IKScriptsEvaluator *)self scripts];
  v4 = [v3 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v4)
  {
    v5 = *v52;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v52 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v51 + 1) + 8 * i);
        if ([v7 length])
        {
          v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
          if (v8)
          {
            v9 = objc_alloc_init(IKLoadRecord);
            [(IKLoadRecord *)v9 setURL:v8];
            v10 = [(IKScriptsEvaluator *)self records];
            [v10 addObject:v9];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v4);
  }

  v11 = [(IKScriptsEvaluator *)self scripts];
  v12 = [v11 count];
  v13 = [(IKScriptsEvaluator *)self records];
  LOBYTE(v12) = v12 == [v13 count];

  if (v12)
  {
    v14 = +[IKPreference ignoreHTTPCache];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [(IKScriptsEvaluator *)self records];
    v38 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (!v38)
    {
      goto LABEL_31;
    }

    v39 = v14;
    v37 = *v47;
    v35 = v43;
    while (1)
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v46 + 1) + 8 * j);
        v17 = objc_opt_new();
        v18 = v17;
        if (v39)
        {
          [v17 setCachePolicy:{v39, v35}];
        }

        v19 = [v16 URL];
        [v18 setURL:v19];

        [v18 setAllowedRetryCount:0];
        [v18 setTimeoutInterval:30.0];
        v20 = [(IKScriptsEvaluator *)self appContext];
        v21 = [v20 delegate];
        if (objc_opt_respondsToSelector())
        {
          v22 = [v21 sourceApplicationBundleIdentifierForContext:v20];
          [v18 setClientAuditBundleIdentifier:v22];
        }

        if (objc_opt_respondsToSelector())
        {
          v23 = [v21 sourceApplicationAuditTokenDataForContext:v20];
          [v18 setClientAuditTokenData:v23];
        }

        if (self->_isJingleRequest)
        {
          [IKJSITunesStore setITunesStoreHeaders:v18];
          v24 = objc_alloc_init(MEMORY[0x277D7FD48]);
          [v24 setNeedsURLBag:0];
          [v24 setUrlKnownToBeTrusted:1];
LABEL_27:
          [v24 setDelegate:self];
          v27 = objc_opt_new();
          [v24 setDataProvider:v27];

          [v24 setRequestProperties:v18];
          objc_initWeak(&location, v24);
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __30__IKScriptsEvaluator_evaluate__block_invoke_3;
          v40[3] = &unk_279799920;
          v40[4] = self;
          objc_copyWeak(&v41, &location);
          [v24 setCompletionBlock:v40];
          [v16 setOpertaion:v24];
          v28 = [MEMORY[0x277D7FD20] mainQueue];
          [v28 addOperation:v24];

          objc_destroyWeak(&v41);
          objc_destroyWeak(&location);
          goto LABEL_29;
        }

        v25 = [v20 app];
        v26 = [v25 appIsTrusted];

        if (v26)
        {
          v24 = objc_alloc_init(MEMORY[0x277D7FD60]);
          [v24 _setUsesPrivateCookieStore:0];
          goto LABEL_27;
        }

        v29 = [MEMORY[0x277CCAD78] UUID];
        [v16 setRequestID:v29];

        v24 = [MEMORY[0x277CCAD30] sharedSession];
        objc_initWeak(&location, self);
        v30 = [v18 URL];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v43[0] = __30__IKScriptsEvaluator_evaluate__block_invoke_2;
        v43[1] = &unk_2797998F8;
        objc_copyWeak(&v44, &location);
        v43[2] = v16;
        v31 = [v24 dataTaskWithURL:v30 completionHandler:v42];

        [v16 setDataTask:v31];
        [v31 resume];

        objc_destroyWeak(&v44);
        objc_destroyWeak(&location);
LABEL_29:
      }

      v38 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (!v38)
      {
LABEL_31:

        goto LABEL_34;
      }
    }
  }

  v32 = [(IKScriptsEvaluator *)self callback];

  if (v32)
  {
    v33 = [(IKScriptsEvaluator *)self appContext];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __30__IKScriptsEvaluator_evaluate__block_invoke;
    v50[3] = &unk_2797998D0;
    v50[4] = self;
    [v33 addPostEvaluateBlock:v50];
  }

LABEL_34:
  v34 = *MEMORY[0x277D85DE8];
}

void __30__IKScriptsEvaluator_evaluate__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 callback];
  [v2 _sendCallback:v4 inContext:v3 success:0];
}

void __30__IKScriptsEvaluator_evaluate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [*(a1 + 32) requestID];
  [WeakRetained scriptDidLoadWithID:v8 data:v7 error:v6];
}

void __30__IKScriptsEvaluator_evaluate__block_invoke_3(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:101 userInfo:0];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 _operation:WeakRetained finishedWithResult:0 error:v4];
}

- (void)parseScriptData:(id)a3 successPredicate:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  obj = self;
  objc_sync_enter(obj);
  if ([v8 length])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 length])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(IKScriptsEvaluator *)obj records];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = *v23;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 loadCompleted];
          if (v9)
          {
            v19 = v18;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v15 &= v18;
          }

          else if (v9[2](v9, v17))
          {
            [v17 setLoadCompleted:1];
            [v17 setScriptStr:v11];
            if (v10)
            {
              v10[2](v10, 1, v17);
            }
          }

          else
          {
            v15 = 0;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);

      if ((v15 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    [(IKScriptsEvaluator *)obj evaluateScripts];
    goto LABEL_27;
  }

  [(IKScriptsEvaluator *)obj handleScirptLoadFailure];
  if (v10)
  {
    v10[2](v10, 0, 0);
  }

LABEL_27:

  objc_sync_exit(obj);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)scriptDidLoadWithID:(id)a3 data:(id)a4 error:(id)a5
{
  v7 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke;
  v10[3] = &unk_279799948;
  v11 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke_2;
  v9[3] = &unk_279799970;
  v9[4] = self;
  v8 = v7;
  [(IKScriptsEvaluator *)self parseScriptData:a4 successPredicate:v10 completion:v9];
}

uint64_t __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *MEMORY[0x277D85DE8];

    [a3 setDataTask:0];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [*(a1 + 32) records];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) dataTask];
          [v9 cancel];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)handleScirptLoadFailure
{
  if (self->_callback)
  {
    objc_initWeak(&location, self);
    v3 = [(IKScriptsEvaluator *)self appContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__IKScriptsEvaluator_handleScirptLoadFailure__block_invoke;
    v4[3] = &unk_2797995A8;
    objc_copyWeak(&v5, &location);
    [v3 evaluate:v4 completionBlock:0];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __45__IKScriptsEvaluator_handleScirptLoadFailure__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    if (v5)
    {
      [WeakRetained _sendCallback:v5 inContext:v6 success:0];
    }
  }
}

- (void)evaluateScripts
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(IKScriptsEvaluator *)self records];
  v5 = [v3 arrayWithArray:v4];

  objc_initWeak(&location, self);
  v6 = [(IKScriptsEvaluator *)self appContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__IKScriptsEvaluator_evaluateScripts__block_invoke;
  v8[3] = &unk_279799998;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v6 evaluate:v8 completionBlock:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __37__IKScriptsEvaluator_evaluateScripts__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v3 JSGlobalContextRef];
        v12 = JSStringCreateWithCFString([v10 scriptStr]);
        if (v12)
        {
          v13 = v12;
          exception = 0;
          v14 = [v10 URL];
          v15 = JSStringCreateWithCFString([v14 absoluteString]);

          if (!JSEvaluateScript(v11, v13, 0, v15, 1, &exception))
          {
            v16 = [MEMORY[0x277CD4658] valueWithJSValueRef:exception inContext:v3];
            v17 = ITMLKitGetLogObject(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [v16 toDictionary];
              *buf = 138412546;
              v30 = v16;
              v31 = 2112;
              v32 = v18;
              _os_log_error_impl(&dword_2549A4000, v17, OS_LOG_TYPE_ERROR, "Failed to evaluate Script: %@...%@", buf, 0x16u);
            }

            v8 = 0;
          }

          JSStringRelease(v15);
          JSStringRelease(v13);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  WeakRetained = objc_loadWeakRetained((v23 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    v21 = WeakRetained[4];
    if (v21)
    {
      [WeakRetained _sendCallback:v21 inContext:v3 success:v8 & 1];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEA90] data];
  }

  [(IKScriptsEvaluator *)self _operation:v7 finishedWithResult:v6 error:0];
}

- (void)_operation:(id)a3 finishedWithResult:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] data];
  }

  v10 = v9;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke;
  v20 = &unk_279799948;
  v21 = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke_2;
  v15 = &unk_279799970;
  v16 = self;
  v11 = v7;
  [(IKScriptsEvaluator *)self parseScriptData:v10 successPredicate:&v17 completion:&v12];
  [v11 setDelegate:{0, v12, v13, v14, v15, v16, v17, v18, v19, v20}];
  [v11 setCompletionBlock:0];
}

BOOL __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 opertaion];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *MEMORY[0x277D85DE8];

    [a3 setOpertaion:0];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 32) records];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 opertaion];
          [v10 setDelegate:0];

          v11 = [v9 opertaion];
          [v11 setCompletionBlock:0];

          v12 = [v9 opertaion];
          [v12 cancel];

          [v9 setOpertaion:0];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end