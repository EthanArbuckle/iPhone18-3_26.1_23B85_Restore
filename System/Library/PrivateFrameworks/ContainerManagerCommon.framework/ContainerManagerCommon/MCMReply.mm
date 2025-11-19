@interface MCMReply
- (BOOL)exitAfterSend;
- (MCMReply)initWithXpcReply:(id)a3 slowWorkloop:(id)a4 fastWorkloop:(id)a5 resultPromise:(id)a6;
- (MCMResultPromise)resultPromise;
- (OS_dispatch_queue)fastWorkloop;
- (OS_dispatch_queue)slowWorkloop;
- (OS_xpc_object)xpcReply;
- (void)_send;
- (void)dispatchSyncToFastWorkloopWithBlock:(id)a3;
- (void)encodeResult:(id)a3;
- (void)handoffToSlowWorkloopforClientIdentity:(id)a3 withBlock:(id)a4;
- (void)invalidate;
- (void)send;
- (void)setExitAfterSend:(BOOL)a3;
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
  v2 = [(MCMReply *)obj resultPromise];
  v3 = [v2 complete];

  if (v3 && !obj->_replySent)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MCMReply *)v2 xpcReply];
  v4 = [(MCMReply *)v2 resultPromise];
  v5 = [v4 result];
  v6 = v5;
  if (!v5)
  {
    _os_crash();
    __break(1u);
  }

  [v5 encodeResultOntoReply:v3];
  [(MCMReply *)v2 invalidate];

  objc_sync_exit(v2);
  v7 = xpc_dictionary_get_remote_connection(v3);
  xpc_connection_send_message(v7, v3);
  if ([(MCMReply *)v2 exitAfterSend])
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

- (void)setExitAfterSend:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_exitAfterSend = a3;
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

- (void)dispatchSyncToFastWorkloopWithBlock:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = [(MCMReply *)self fastWorkloop];
  dispatch_async_and_wait(v6, v4);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)encodeResult:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = [(MCMReply *)self xpcReply];
  [v4 encodeResultOntoReply:?];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handoffToSlowWorkloopforClientIdentity:(id)a3 withBlock:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v6->_replySent = 1;
  objc_sync_exit(v6);

  v7 = [(MCMReply *)v6 xpcReply];
  v8 = [(MCMReply *)v6 slowWorkloop];
  v9 = v5;
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

- (MCMReply)initWithXpcReply:(id)a3 slowWorkloop:(id)a4 fastWorkloop:(id)a5 resultPromise:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MCMReply;
  v15 = [(MCMReply *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xpcReply, a3);
    objc_storeStrong(&v16->_slowWorkloop, a4);
    objc_storeStrong(&v16->_fastWorkloop, a5);
    objc_storeStrong(&v16->_resultPromise, a6);
    *&v16->_replySent = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

@end