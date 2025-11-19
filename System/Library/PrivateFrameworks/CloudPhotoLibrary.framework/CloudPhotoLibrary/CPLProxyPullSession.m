@interface CPLProxyPullSession
- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)getChangeBatchWithCompletionHandler:(id)a3;
@end

@implementation CPLProxyPullSession

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E861B550;
  v2 = *(a1 + 32);
  v15 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v14];
  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_1;
    v12[3] = &unk_1E861B578;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v4;
    [v3 getChangeBatchWithCompletionHandler:v12];
    v5 = v13;
  }

  else
  {
    v6 = [*(a1 + 32) proxyLibraryManager];
    v7 = [v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_5;
    v10[3] = &unk_1E861B4E0;
    v11 = *(a1 + 40);
    v8 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_0;
    block[3] = &unk_1E861B4E0;
    v17 = v8;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v9);

    v5 = v11;
  }
}

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) proxyLibraryManager];
  v8 = [v7 queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2;
  v14[3] = &unk_1E861ABE0;
  v15 = v5;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v10 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_0;
  block[3] = &unk_1E861B4E0;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v13);
}

uint64_t __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLProxyPullSessionOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 32);
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Getting batch failed with error %@", &v7, 0xCu);
      }

      v4 = *(a1 + 32);
    }

    result = (*(*(a1 + 48) + 16))();
  }

  else
  {
    result = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2_cold_1(_CPLSilentLogging, a1);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E861B550;
  v15 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v14];
  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_6;
    v12[3] = &unk_1E861B5A0;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v3 acknowledgeChangeBatch:v4 withCompletionHandler:v12];
    v5 = v13;
  }

  else
  {
    v6 = [*(a1 + 32) proxyLibraryManager];
    v7 = [v6 queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_12;
    v10[3] = &unk_1E861B4E0;
    v11 = *(a1 + 48);
    v8 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_0;
    block[3] = &unk_1E861B4E0;
    v17 = v8;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v9);

    v5 = v11;
  }
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) proxyLibraryManager];
  v8 = [v7 queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7;
  v14[3] = &unk_1E861ABE0;
  v15 = v5;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v10 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_0;
  block[3] = &unk_1E861B4E0;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v13);
}

uint64_t __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLProxyPullSessionOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = *(a1 + 32);
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Acknowledging failed with error %@", &v7, 0xCu);
      }

      v4 = *(a1 + 32);
    }

    result = (*(*(a1 + 48) + 16))();
  }

  else
  {
    result = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7_cold_1(_CPLSilentLogging, a1);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getChangeBatchWithCompletionHandler:(id)a3
{
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_73(v6))
    {
      v21 = 0;
      OUTLINED_FUNCTION_41();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLProxyPullSessionOSLogDomain();
      if (OUTLINED_FUNCTION_73(v12))
      {
        v21 = 0;
        OUTLINED_FUNCTION_41();
        _os_log_impl(v13, v14, v15, v16, v17, 2u);
      }
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E861AA50;
  v19[4] = self;
  v20 = v5;
  v18 = v5;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v19];
}

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_73(v5))
    {
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = OUTLINED_FUNCTION_37(*(a1 + 32));
  v12(v11, v4, 0);

  v13 = *MEMORY[0x1E69E9840];
}

void __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *(a1 + 32);
  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_1_0();
  v11(v10);
}

- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLProxyPullSessionOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Acknowledging %@", buf, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLProxyPullSessionOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Sending Acknowledging message to connection", buf, 2u);
      }
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E861ABE0;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v10 = v6;
  v11 = v7;
  [(CPLProxySession *)self dispatchBlockWhenLibraryIsOpen:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_73(v5))
    {
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = OUTLINED_FUNCTION_37(*(a1 + 32));
  v12(v11, v4, 0);

  v13 = *MEMORY[0x1E69E9840];
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_9(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [CPLErrors cplErrorWithCode:150 description:@"Exception raised while trying to send a batch to the daemon: %@", *(a1 + 32)];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_73(v4))
    {
      *buf = 138412290;
      v18 = v3;
      OUTLINED_FUNCTION_41();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLProxyPullSessionOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(*(a1 + 40) countStyle:{"estimatedBatchSize"), 1}];
        v13 = *(a1 + 40);
        *buf = 138412802;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Unable to send batch to daemon for ack: %@\nBatch (estimated size: %@): %@", buf, 0x20u);
      }
    }
  }

  v14 = OUTLINED_FUNCTION_37(*(a1 + 48));
  v15(v14, v3, 0);

  v16 = *MEMORY[0x1E69E9840];
}

void __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_12(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *(a1 + 32);
  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_1_0();
  v11(v10);
}

uint64_t __59__CPLProxyPullSession_getChangeBatchWithCompletionHandler___block_invoke_2_2_cold_1(char a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0)
  {
    v4 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v15 = *(a2 + 40);
      OUTLINED_FUNCTION_25();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = *(a2 + 40);
  v11 = OUTLINED_FUNCTION_37(*(a2 + 48));
  result = v12(v11, 0);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __68__CPLProxyPullSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke_2_7_cold_1(char a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0)
  {
    v4 = __CPLProxyPullSessionOSLogDomain();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v15 = *(a2 + 40);
      OUTLINED_FUNCTION_25();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = *(a2 + 40);
  v11 = OUTLINED_FUNCTION_37(*(a2 + 48));
  result = v12(v11, 0);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end