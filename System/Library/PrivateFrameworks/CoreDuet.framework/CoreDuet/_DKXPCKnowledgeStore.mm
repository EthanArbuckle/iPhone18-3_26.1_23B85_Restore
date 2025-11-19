@interface _DKXPCKnowledgeStore
+ (id)XPCKnowledgeStore;
+ (id)XPCUserKnowledgeStore;
- (BOOL)confirmConnectionWithError:(id *)a3;
- (BOOL)deleteObjects:(id)a3 error:(id *)a4;
- (BOOL)deleteRemoteState:(id *)a3;
- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4;
- (BOOL)saveObjects:(id)a3 error:(id *)a4;
- (BOOL)synchronizeWithError:(id *)a3;
- (BOOL)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 error:(id *)a5;
- (_DKXPCKnowledgeStore)initWithConnection:(id)a3;
- (_DKXPCKnowledgeStore)initWithMachServiceName:(id)a3;
- (id)deleteObjects:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (id)deviceUUID;
- (id)executeQuery:(id)a3 error:(id *)a4;
- (id)executeQuery:(id)a3 synchronous:(BOOL)a4 error:(id *)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (id)saveObjects:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (id)sourceDeviceIdentityFromObject:(id)a3 error:(id *)a4;
- (id)sourceDeviceIdentityWithError:(id *)a3;
- (unint64_t)deleteAllEventsInEventStream:(id)a3 error:(id *)a4;
- (unint64_t)deleteAllEventsInEventStream:(id)a3 synchronous:(BOOL)a4 error:(id *)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 error:(id *)a4;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 synchronous:(BOOL)a4 error:(id *)a5 responseQueue:(id)a6 withCompletion:(id)a7;
- (void)dealloc;
- (void)disableSyncPolicyForFeature:(unint64_t)a3 transportType:(int64_t)a4;
- (void)executeQuery:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 responseQueue:(id)a5 completion:(id)a6;
@end

@implementation _DKXPCKnowledgeStore

+ (id)XPCKnowledgeStore
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _DKXPCKnowledgeStore;
  [(_DKXPCKnowledgeStore *)&v3 dealloc];
}

+ (id)XPCUserKnowledgeStore
{
  v2 = [[a1 alloc] initWithMachServiceName:@"com.apple.coreduetd.knowledge"];

  return v2;
}

- (_DKXPCKnowledgeStore)initWithMachServiceName:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithMachServiceName:v5 options:0];

  v7 = [(_DKXPCKnowledgeStore *)self initWithConnection:v6];
  return v7;
}

- (_DKXPCKnowledgeStore)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _DKXPCKnowledgeStore;
  v6 = [(_DKXPCKnowledgeStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = _DKDaemonInterface();
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

- (id)saveObjects:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v8 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v10 count];
    _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Starting saveObjects with %lu objects.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__25;
  v35 = __Block_byref_object_dispose__25;
  v36 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke;
  v28[3] = &unk_1E736A830;
  v14 = v12;
  v30 = v14;
  v15 = v11;
  v29 = v15;
  p_buf = &buf;
  v16 = MEMORY[0x193B00C50](v28);
  connection = self->_connection;
  if (v8)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  }
  v18 = ;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_3;
  v24[3] = &unk_1E736A858;
  v24[4] = self;
  v19 = v14;
  v26 = v19;
  v20 = v15;
  v25 = v20;
  v27 = &buf;
  [v18 saveObjects:v10 reply:v24];
  v21 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)saveObjects:(id)a3 error:(id *)a4
{
  v5 = [(_DKXPCKnowledgeStore *)self saveObjects:a3 synchronous:1 responseQueue:0 withCompletion:0];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  v6 = v5 == 0;

  return v6;
}

- (id)deleteObjects:(id)a3 synchronous:(BOOL)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v8 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v10 count];
    _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Starting deleteObjects with %lu objects.", &buf, 0xCu);
  }

  if ([v10 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__25;
    v41 = __Block_byref_object_dispose__25;
    v42 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_2;
    v32[3] = &unk_1E736A830;
    v14 = v12;
    v34 = v14;
    v15 = v11;
    v33 = v15;
    p_buf = &buf;
    v16 = MEMORY[0x193B00C50](v32);
    connection = self->_connection;
    if (v8)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
    }
    v24 = ;
    v25 = objc_autoreleasePoolPush();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_3;
    v28[3] = &unk_1E736A858;
    v28[4] = self;
    v30 = v14;
    v29 = v15;
    v31 = &buf;
    [v24 deleteObjects:v10 reply:v28];

    objc_autoreleasePoolPop(v25);
    v23 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "Early out because no valid objects were provided.", &buf, 2u);
    }

    if (v12)
    {
      if (!v11)
      {
        [_DKXPCKnowledgeStore deleteObjects:synchronous:responseQueue:withCompletion:];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke;
      v36[3] = &unk_1E7367840;
      v37 = v12;
      v19 = v36;
      v20 = v11;
      v21 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v39 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v40 = &unk_1E7367818;
      v41 = v21;
      v42 = v19;
      v22 = v21;
      dispatch_async(v20, &buf);
    }

    v23 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)deleteObjects:(id)a3 error:(id *)a4
{
  v5 = [(_DKXPCKnowledgeStore *)self deleteObjects:a3 synchronous:1 responseQueue:0 withCompletion:0];
  if (a4 && v5)
  {
    v5 = v5;
    *a4 = v5;
  }

  v6 = v5 == 0;

  return v6;
}

- (unint64_t)deleteAllEventsInEventStream:(id)a3 synchronous:(BOOL)a4 error:(id *)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v10 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v12)
  {
    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_INFO, "Starting deleteAllEventsInEventStream with stream %@.", &buf, 0xCu);
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__25;
    v47 = __Block_byref_object_dispose__25;
    v48 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_11;
    v34[3] = &unk_1E736A830;
    v17 = v15;
    v36 = v17;
    v18 = v13;
    v35 = v18;
    p_buf = &buf;
    v19 = MEMORY[0x193B00C50](v34);
    connection = self->_connection;
    if (v10)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v19];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
    }
    v25 = ;
    v26 = [v12 name];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_3;
    v29[3] = &unk_1E736A8A8;
    v29[4] = self;
    v32 = &v38;
    v33 = &buf;
    v31 = v17;
    v30 = v18;
    [v25 deleteAllEventsInEventStreamNamed:v26 reply:v29];

    if (a5)
    {
      *a5 = *(*(&buf + 1) + 40);
    }

    v24 = v39[3];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    if (v14)
    {
      if (!v13)
      {
        [_DKXPCKnowledgeStore deleteAllEventsInEventStream:synchronous:error:responseQueue:withCompletion:];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke;
      v42[3] = &unk_1E7367840;
      v43 = v14;
      v21 = v42;
      v22 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v45 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v46 = &unk_1E7367818;
      v47 = v22;
      v48 = v21;
      v23 = v22;
      dispatch_async(v13, &buf);
    }

    v24 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

- (unint64_t)deleteAllEventsInEventStream:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [(_DKXPCKnowledgeStore *)self deleteAllEventsInEventStream:a3 synchronous:1 error:&v8 responseQueue:0 withCompletion:0];
  v6 = v8;
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 synchronous:(BOOL)a4 error:(id *)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v10 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v12)
  {
    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v12 cd_sanitizeForLogging];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_INFO, "Starting deleteAllEventsMatchingPredicate with predicate %@.", &buf, 0xCu);
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__25;
    v47 = __Block_byref_object_dispose__25;
    v48 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_14;
    v34[3] = &unk_1E736A830;
    v18 = v15;
    v36 = v18;
    v19 = v13;
    v35 = v19;
    p_buf = &buf;
    v20 = MEMORY[0x193B00C50](v34);
    connection = self->_connection;
    if (v10)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
    }
    v26 = ;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_3;
    v29[3] = &unk_1E736A8A8;
    v29[4] = self;
    v32 = &v38;
    v33 = &buf;
    v31 = v18;
    v30 = v19;
    [v26 deleteAllEventsMatchingPredicate:v12 reply:v29];
    if (a5)
    {
      *a5 = *(*(&buf + 1) + 40);
    }

    v25 = v39[3];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    if (v14)
    {
      if (!v13)
      {
        [_DKXPCKnowledgeStore deleteAllEventsMatchingPredicate:synchronous:error:responseQueue:withCompletion:];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke;
      v42[3] = &unk_1E7367840;
      v43 = v14;
      v22 = v42;
      v23 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v45 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v46 = &unk_1E7367818;
      v47 = v23;
      v48 = v22;
      v24 = v23;
      dispatch_async(v13, &buf);
    }

    v25 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [(_DKXPCKnowledgeStore *)self deleteAllEventsMatchingPredicate:a3 synchronous:1 error:&v8 responseQueue:0 withCompletion:0];
  v6 = v8;
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

- (id)executeQuery:(id)a3 synchronous:(BOOL)a4 error:(id *)a5 responseQueue:(id)a6 withCompletion:(id)a7
{
  v9 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "Starting executeQuery with query %@.", &buf, 0xCu);
  }

  v15 = [_DKQuery executableQueryForQuery:v11];
  if (v15)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__25;
    v51 = __Block_byref_object_dispose__25;
    v52 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_2;
    v42[3] = &unk_1E736A830;
    v16 = v13;
    v44 = v16;
    v17 = v12;
    v43 = v17;
    p_buf = &buf;
    v18 = MEMORY[0x193B00C50](v42);
    connection = self->_connection;
    if (v9)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
    }
    v26 = ;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__25;
    v40 = __Block_byref_object_dispose__25;
    v41 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_3;
    v30[3] = &unk_1E736A8D0;
    v30[4] = self;
    v31 = v15;
    v33 = v16;
    v32 = v17;
    v34 = &buf;
    v35 = &v36;
    [v26 executeQuery:v11 reply:v30];
    if (a5)
    {
      *a5 = *(*(&buf + 1) + 40);
    }

    v25 = v37[5];

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_DKXPCKnowledgeStore executeQuery:v20 synchronous:? error:? responseQueue:? withCompletion:?];
    }

    if (v13)
    {
      if (!v12)
      {
        [_DKXPCKnowledgeStore executeQuery:synchronous:error:responseQueue:withCompletion:];
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke;
      v46[3] = &unk_1E7367840;
      v47 = v13;
      v21 = v46;
      v22 = v12;
      v23 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v49 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v50 = &unk_1E7367818;
      v51 = v23;
      v52 = v21;
      v24 = v23;
      dispatch_async(v22, &buf);
    }

    v25 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)executeQuery:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "Starting executeQuery with query %@.", &v14, 0xCu);
  }

  v12 = [(_DKXPCKnowledgeStore *)self executeQuery:v8 synchronous:0 error:0 responseQueue:v9 withCompletion:v10];
  v13 = *MEMORY[0x1E69E9840];
}

- (id)executeQuery:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [(_DKXPCKnowledgeStore *)self executeQuery:a3 synchronous:1 error:&v8 responseQueue:0 withCompletion:0];
  v6 = v8;
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

- (BOOL)synchronizeWithError:(id *)a3
{
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Starting synchronizeWithError.", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45___DKXPCKnowledgeStore_synchronizeWithError___block_invoke;
  v16[3] = &unk_1E736A500;
  v16[4] = buf;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45___DKXPCKnowledgeStore_synchronizeWithError___block_invoke_21;
  v11[3] = &unk_1E736A8F8;
  v11[4] = buf;
  v11[5] = &v12;
  [v7 synchronizeWithReply:v11];
  if (a3)
  {
    v8 = *(v18 + 5);
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
  return v9;
}

- (BOOL)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Starting synchronizeWithUrgency.", buf, 2u);
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__25;
  v25 = __Block_byref_object_dispose__25;
  v26 = 0;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60___DKXPCKnowledgeStore_synchronizeWithUrgency_client_error___block_invoke;
  v20[3] = &unk_1E736A500;
  v20[4] = buf;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60___DKXPCKnowledgeStore_synchronizeWithUrgency_client_error___block_invoke_22;
  v15[3] = &unk_1E736A8F8;
  v15[4] = buf;
  v15[5] = &v16;
  [v11 synchronizeWithUrgency:a3 client:v8 reply:v15];
  if (a5)
  {
    v12 = *(v22 + 5);
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(buf, 8);
  return v13;
}

- (void)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 responseQueue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Starting async synchronizeWithUrgency.", buf, 2u);
  }

  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke;
  v23[3] = &unk_1E736A920;
  v15 = v11;
  v25 = v15;
  v16 = v10;
  v24 = v16;
  v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_3;
  v20[3] = &unk_1E736A948;
  v21 = v16;
  v22 = v15;
  v20[4] = self;
  v18 = v16;
  v19 = v15;
  [v17 synchronizeWithUrgency:a3 client:v12 reply:v20];
}

- (BOOL)deleteRemoteState:(id *)a3
{
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Starting deleteRemoteState.", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42___DKXPCKnowledgeStore_deleteRemoteState___block_invoke;
  v16[3] = &unk_1E736A500;
  v16[4] = buf;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___DKXPCKnowledgeStore_deleteRemoteState___block_invoke_24;
  v11[3] = &unk_1E736A8F8;
  v11[4] = buf;
  v11[5] = &v12;
  [v7 deleteRemoteState:v11];
  if (a3)
  {
    v8 = *(v18 + 5);
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
  return v9;
}

- (id)sourceDeviceIdentityFromObject:(id)a3 error:(id *)a4
{
  v4 = [a3 source];
  v5 = [v4 syncDeviceID];

  return v5;
}

- (id)sourceDeviceIdentityWithError:(id *)a3
{
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Starting sourceDeviceIdentityWithError.", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__25;
  v23 = __Block_byref_object_dispose__25;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54___DKXPCKnowledgeStore_sourceDeviceIdentityWithError___block_invoke;
  v18[3] = &unk_1E736A500;
  v18[4] = buf;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25;
  v16 = __Block_byref_object_dispose__25;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54___DKXPCKnowledgeStore_sourceDeviceIdentityWithError___block_invoke_25;
  v11[3] = &unk_1E736A970;
  v11[4] = buf;
  v11[5] = &v12;
  [v7 sourceDeviceIdentityWithReply:v11];
  if (a3)
  {
    v8 = *(v20 + 5);
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);

  return v9;
}

- (id)deviceUUID
{
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_INFO, "Starting deviceUUID.", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_77];
  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__25;
  v12 = __Block_byref_object_dispose__25;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34___DKXPCKnowledgeStore_deviceUUID__block_invoke_26;
  v7[3] = &unk_1E736A998;
  v7[4] = buf;
  [v4 deviceUUIDWithReply:v7];
  v5 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v5;
}

- (void)disableSyncPolicyForFeature:(unint64_t)a3 transportType:(int64_t)a4
{
  v7 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Starting disableSyncPolicy.", v9, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28];
  [v8 disableSyncPolicyForFeature:a3 transportType:a4 withReply:&__block_literal_global_31];
}

- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4
{
  v7 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Starting isSyncPolicyDisabled.", buf, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_33_1];
  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69___DKXPCKnowledgeStore_isSyncPolicyDisabledForFeature_transportType___block_invoke_34;
  v11[3] = &unk_1E736A9E0;
  v11[4] = buf;
  [v8 isSyncPolicyDisabledForFeature:a3 transportType:a4 withReply:v11];
  v9 = v13[24];
  _Block_object_dispose(buf, 8);

  return v9;
}

- (BOOL)confirmConnectionWithError:(id *)a3
{
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: confirmConnectionWithError", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Starting confirmConnectionWithError.", &state, 2u);
  }

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  v7 = [(_DKXPCKnowledgeStore *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51___DKXPCKnowledgeStore_confirmConnectionWithError___block_invoke;
  v17[3] = &unk_1E736A500;
  v17[4] = &state;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51___DKXPCKnowledgeStore_confirmConnectionWithError___block_invoke_35;
  v12[3] = &unk_1E736A8F8;
  v12[4] = &v13;
  v12[5] = &state;
  [v8 confirmDatabaseConnectionWithReply:v12];
  if (a3)
  {
    v9 = *(state.opaque[1] + 40);
    if (v9)
    {
      *a3 = v9;
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&state, 8);
  return v10;
}

- (void)executeQuery:(NSObject *)a1 synchronous:error:responseQueue:withCompletion:.cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = +[_DKQuery queryNotExecutableError];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, a1, OS_LOG_TYPE_ERROR, "Completed executeQuery with success=0. Error: %@.", v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end