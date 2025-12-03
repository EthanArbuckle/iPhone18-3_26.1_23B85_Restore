@interface MCMReply
- (BOOL)exitAfterSend;
- (MCMReply)initWithXpcReply:(id)reply slowWorkloop:(id)workloop fastWorkloop:(id)fastWorkloop resultPromise:(id)promise;
- (MCMResultPromise)resultPromise;
- (OS_dispatch_queue)fastWorkloop;
- (OS_dispatch_queue)slowWorkloop;
- (OS_xpc_object)xpcReply;
- (void)_send;
- (void)dispatchSyncToFastWorkloopWithBlock:(id)block;
- (void)encodeResult:(id)result;
- (void)handoffToSlowWorkloopforClientIdentity:(id)identity withBlock:(id)block;
- (void)invalidate;
- (void)send;
- (void)setExitAfterSend:(BOOL)send;
@end

@implementation MCMReply

- (MCMResultPromise)resultPromise
{
  result = self->_resultPromise;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)send
{
  v7 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  resultPromise = [(MCMReply *)obj resultPromise];
  complete = [resultPromise complete];

  if (complete && !obj->_replySent)
  {
    obj->_replySent = 1;
    objc_sync_exit(obj);

    v5 = *MEMORY[0x1E69E9840];

    [(MCMReply *)obj _send];
  }

  else
  {
    objc_sync_exit(obj);
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  self->_replySent = 1;
  xpcReply = self->_xpcReply;
  self->_xpcReply = 0;

  slowWorkloop = self->_slowWorkloop;
  self->_slowWorkloop = 0;

  fastWorkloop = self->_fastWorkloop;
  self->_fastWorkloop = 0;

  resultPromise = self->_resultPromise;
  self->_resultPromise = 0;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_send
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcReply = [(MCMReply *)selfCopy xpcReply];
  resultPromise = [(MCMReply *)selfCopy resultPromise];
  result = [resultPromise result];
  v6 = result;
  if (!result)
  {
    _os_crash();
    __break(1u);
  }

  [result encodeResultOntoReply:xpcReply];
  [(MCMReply *)selfCopy invalidate];

  objc_sync_exit(selfCopy);
  v7 = xpc_dictionary_get_remote_connection(xpcReply);
  xpc_connection_send_message(v7, xpcReply);
  if ([(MCMReply *)selfCopy exitAfterSend])
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "EXITING AFTER REPLYING", v10, 2u);
    }

    xpc_connection_send_barrier(v7, &__block_literal_global_9551);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (OS_xpc_object)xpcReply
{
  result = self->_xpcReply;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)exitAfterSend
{
  result = self->_exitAfterSend;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setExitAfterSend:(BOOL)send
{
  v4 = *MEMORY[0x1E69E9840];
  self->_exitAfterSend = send;
  v3 = *MEMORY[0x1E69E9840];
}

- (OS_dispatch_queue)fastWorkloop
{
  result = self->_fastWorkloop;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_dispatch_queue)slowWorkloop
{
  result = self->_slowWorkloop;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)dispatchSyncToFastWorkloopWithBlock:(id)block
{
  v7 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  fastWorkloop = [(MCMReply *)self fastWorkloop];
  dispatch_async_and_wait(fastWorkloop, blockCopy);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)encodeResult:(id)result
{
  v7 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  xpcReply = [(MCMReply *)self xpcReply];
  [resultCopy encodeResultOntoReply:?];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handoffToSlowWorkloopforClientIdentity:(id)identity withBlock:(id)block
{
  v11 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_replySent = 1;
  objc_sync_exit(selfCopy);

  xpcReply = [(MCMReply *)selfCopy xpcReply];
  slowWorkloop = [(MCMReply *)selfCopy slowWorkloop];
  v9 = blockCopy;
  xpc_dictionary_handoff_reply();

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __61__MCMReply_handoffToSlowWorkloopforClientIdentity_withBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];

  return [v3 _send];
}

- (MCMReply)initWithXpcReply:(id)reply slowWorkloop:(id)workloop fastWorkloop:(id)fastWorkloop resultPromise:(id)promise
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  workloopCopy = workloop;
  fastWorkloopCopy = fastWorkloop;
  promiseCopy = promise;
  v19.receiver = self;
  v19.super_class = MCMReply;
  v15 = [(MCMReply *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xpcReply, reply);
    objc_storeStrong(&v16->_slowWorkloop, workloop);
    objc_storeStrong(&v16->_fastWorkloop, fastWorkloop);
    objc_storeStrong(&v16->_resultPromise, promise);
    *&v16->_replySent = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

@end