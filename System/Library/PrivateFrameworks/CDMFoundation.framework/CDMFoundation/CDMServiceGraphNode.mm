@interface CDMServiceGraphNode
+ (CDMServiceGraphNode)initWithName:(id)a3 forHandler:(id)a4 usingFunction:(id)a5 withError:(id)a6 cancellationBlock:(id)a7 requestId:(id)a8 dataDispatcherContext:(id)a9 serviceMetricsArray:(id)a10;
- (BOOL)isAsynchronous;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (id)getSuccessors;
- (void)addDependency:(id)a3;
- (void)asyncMarkNodeAsFinished;
- (void)cancel;
- (void)removeDependency:(id)a3;
- (void)willUseAsyncMarkNodeAsFinished;
@end

@implementation CDMServiceGraphNode

- (void)asyncMarkNodeAsFinished
{
  obj = self;
  objc_sync_enter(obj);
  if ([(CDMServiceGraphNode *)obj nodeIsUsingAsync])
  {
    [(CDMServiceGraphNode *)obj willChangeValueForKey:@"isExecuting"];
    [(CDMServiceGraphNode *)obj setNodeIsExecutingAsync:0];
    [(CDMServiceGraphNode *)obj didChangeValueForKey:@"isExecuting"];
    [(CDMServiceGraphNode *)obj willChangeValueForKey:@"isFinished"];
    [(CDMServiceGraphNode *)obj setAsyncIsFinished:1];
    [(CDMServiceGraphNode *)obj didChangeValueForKey:@"isFinished"];
  }

  objc_sync_exit(obj);
}

- (void)willUseAsyncMarkNodeAsFinished
{
  obj = self;
  objc_sync_enter(obj);
  [(CDMServiceGraphNode *)obj setNodeIsUsingAsync:1];
  [(CDMServiceGraphNode *)obj setNodeIsExecutingAsync:1];
  objc_sync_exit(obj);
}

- (BOOL)isAsynchronous
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CDMServiceGraphNode *)v2 nodeIsUsingAsync];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isExecuting
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(CDMServiceGraphNode *)v2 nodeIsUsingAsync])
  {
    v3 = [(CDMServiceGraphNode *)v2 nodeIsExecutingAsync];
  }

  else
  {
    v6.receiver = v2;
    v6.super_class = CDMServiceGraphNode;
    v3 = [(CDMServiceGraphNode *)&v6 isExecuting];
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(CDMServiceGraphNode *)v2 nodeIsUsingAsync])
  {
    v3 = [(CDMServiceGraphNode *)v2 asyncIsFinished];
  }

  else
  {
    v6.receiver = v2;
    v6.super_class = CDMServiceGraphNode;
    v3 = [(CDMServiceGraphNode *)&v6 isFinished];
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

- (id)getSuccessors
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSHashTable *)self->_successors allObjects];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)removeDependency:(id)a3
{
  v4 = a3;
  v5 = self->_successors;
  objc_sync_enter(v5);
  v6.receiver = self;
  v6.super_class = CDMServiceGraphNode;
  [(CDMServiceGraphNode *)&v6 removeDependency:v4];
  [v4 removeSuccessor:self];
  objc_sync_exit(v5);
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  v5 = self->_successors;
  objc_sync_enter(v5);
  v6.receiver = self;
  v6.super_class = CDMServiceGraphNode;
  [(CDMServiceGraphNode *)&v6 addDependency:v4];
  [v4 addSuccessor:self];
  objc_sync_exit(v5);
}

- (void)cancel
{
  if (([(CDMServiceGraphNode *)self isCancelled]& 1) == 0)
  {
    cancellationBlock = self->_cancellationBlock;
    if (cancellationBlock)
    {
      cancellationBlock[2]();
    }

    v4.receiver = self;
    v4.super_class = CDMServiceGraphNode;
    [(CDMServiceGraphNode *)&v4 cancel];
  }
}

+ (CDMServiceGraphNode)initWithName:(id)a3 forHandler:(id)a4 usingFunction:(id)a5 withError:(id)a6 cancellationBlock:(id)a7 requestId:(id)a8 dataDispatcherContext:(id)a9 serviceMetricsArray:(id)a10
{
  v16 = a3;
  v37 = a4;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v39 = a7;
  v38 = a8;
  v20 = a9;
  v21 = a10;
  v22 = CDMOSLoggerForCategory(4);
  v23 = os_signpost_id_generate(v22);

  v48.receiver = a1;
  v48.super_class = &OBJC_METACLASS___CDMServiceGraphNode;
  v24 = [objc_msgSendSuper2(&v48 alloc)];
  objc_initWeak(&location, v24);
  [v24 setNodeIsUsingAsync:0];
  [v24 setNodeIsExecutingAsync:0];
  [v24 setAsyncIsFinished:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke;
  aBlock[3] = &unk_1E862EFE8;
  v25 = v16;
  v41 = v25;
  v46[1] = v23;
  v26 = v18;
  v44 = v26;
  objc_copyWeak(v46, &location);
  v27 = v17;
  v42 = v27;
  v28 = v19;
  v45 = v28;
  v29 = v21;
  v43 = v29;
  v30 = _Block_copy(aBlock);
  [v24 addExecutionBlock:v30];
  if (v24)
  {
    v31 = _Block_copy(v39);
    v32 = *(v24 + 264);
    *(v24 + 264) = v31;

    objc_storeStrong((v24 + 272), a3);
    objc_storeStrong((v24 + 280), v37);
    v33 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v34 = *(v24 + 288);
    *(v24 + 288) = v33;
  }

  objc_destroyWeak(v46);
  objc_destroyWeak(&location);

  return v24;
}

void __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = dispatch_time(0, 3000000000);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3717;
  v30 = __Block_byref_object_dispose__3718;
  v31 = 0;
  v3 = [CDMSELFLogUtil stringNodeNameToEnum:*(a1 + 32)];
  if (!v3 && ([*(a1 + 32) isEqualToString:@"metricsNode"] & 1) == 0)
  {
    v4 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 136315394;
      *&buf[4] = "+[CDMServiceGraphNode initWithName:forHandler:usingFunction:withError:cancellationBlock:requestId:dataDispatcherContext:serviceMetricsArray:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s [WARN]: Unmapped CDM service node name for handle: %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__3717;
  v40 = __Block_byref_object_dispose__3718;
  v41 = objc_alloc_init(MEMORY[0x1E69CF160]);
  [*(*&buf[8] + 40) setServiceName:v3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke_360;
  block[3] = &unk_1E862EF98;
  v25[1] = *(a1 + 80);
  v20 = *(a1 + 32);
  v23 = buf;
  v22 = *(a1 + 56);
  objc_copyWeak(v25, (a1 + 72));
  v21 = *(a1 + 40);
  v24 = &v26;
  v6 = dispatch_block_create(0, block);
  dispatch_block_perform(0, v6);
  if (dispatch_block_wait(v6, v2))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node [%@] for handler [%@] timed out.", *(a1 + 32), *(a1 + 40)];
    v8 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315394;
      *&v32[4] = "+[CDMServiceGraphNode initWithName:forHandler:usingFunction:withError:cancellationBlock:requestId:dataDispatcherContext:serviceMetricsArray:]_block_invoke";
      *&v32[12] = 2112;
      *&v32[14] = v7;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", v32, 0x16u);
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = *(a1 + 32);
    v36 = *MEMORY[0x1E696A578];
    v37 = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v12 = [v9 errorWithDomain:v10 code:0 userInfo:v11];
    v13 = v27[5];
    v27[5] = v12;

    [*(*&buf[8] + 40) setFailureReason:4];
  }

  if (v27[5] && (v14 = *(a1 + 64)) != 0)
  {
    (*(v14 + 16))();
  }

  else
  {
    v15 = *(a1 + 48);
    if (v15)
    {
      *v32 = 0;
      *&v32[8] = v32;
      *&v32[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__3717;
      v34 = __Block_byref_object_dispose__3718;
      v35 = v15;
      v16 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke_374;
      v18[3] = &unk_1E862EFC0;
      v18[4] = v32;
      v18[5] = buf;
      dispatch_async(v16, v18);

      _Block_object_dispose(v32, 8);
    }
  }

  objc_destroyWeak(v25);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v26, 8);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke_360(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(4);
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v15 = v5;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ServiceGraphNodeExecution", "%@ handle", buf, 0xCu);
  }

  mach_absolute_time();
  [*(*(*(a1 + 56) + 8) + 40) setStartLogicalTimestampInNs:SiriAnalyticsMachAbsoluteTimeGetNanoseconds()];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke_362;
  v11[3] = &unk_1E862EF70;
  v12 = *(a1 + 48);
  objc_copyWeak(&v13, (a1 + 72));
  [CDMExceptionUtils runWrappingCppExceptions:v11];
  objc_destroyWeak(&v13);

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(*(*(a1 + 56) + 8) + 40) setFailureReason:3];
  }

  v6 = CDMOSLoggerForCategory(4);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_END, v8, "ServiceGraphNodeExecution", "", buf, 2u);
  }

  mach_absolute_time();
  result = [*(*(*(a1 + 56) + 8) + 40) setEndLogicalTimestampInNs:SiriAnalyticsMachAbsoluteTimeGetNanoseconds()];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __141__CDMServiceGraphNode_initWithName_forHandler_usingFunction_withError_cancellationBlock_requestId_dataDispatcherContext_serviceMetricsArray___block_invoke_362(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

@end