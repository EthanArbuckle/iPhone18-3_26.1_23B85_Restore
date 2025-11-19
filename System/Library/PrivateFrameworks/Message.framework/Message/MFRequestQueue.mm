@interface MFRequestQueue
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_processRequests:(id)a3;
- (BOOL)addRequest:(id)a3;
- (BOOL)addRequests:(id)a3 combine:(BOOL)a4;
- (BOOL)processRequest:(id)a3;
- (BOOL)processRequests:(id)a3;
- (BOOL)sendRequests:(id)a3;
- (MFRequestQueue)init;
- (unint64_t)signpostID;
@end

@implementation MFRequestQueue

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFRequestQueue_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_29 != -1)
  {
    dispatch_once(&log_onceToken_29, block);
  }

  v2 = log_log_29;

  return v2;
}

void __21__MFRequestQueue_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_29;
  log_log_29 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MFRequestQueue_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_1 != -1)
  {
    dispatch_once(&signpostLog_onceToken_1, block);
  }

  v2 = signpostLog_log_1;

  return v2;
}

void __29__MFRequestQueue_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_1;
  signpostLog_log_1 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (MFRequestQueue)init
{
  v7.receiver = self;
  v7.super_class = MFRequestQueue;
  v2 = [(MFRequestQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestPairs = v3->_requestPairs;
    v3->_requestPairs = v4;
  }

  return v3;
}

- (BOOL)addRequests:(id)a3 combine:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [(MFRequestQueue *)self sendRequests:v6];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = *v18;
      v8 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v21 = *(*(&v17 + 1) + 8 * i);
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:{1, v17}];
          v14 = [(MFRequestQueue *)self sendRequests:v13];

          v8 &= v14;
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v8 = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)addRequest:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  LOBYTE(self) = [(MFRequestQueue *)self sendRequests:v5];

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)sendRequests:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 first];

  v7 = objc_opt_class();
  v8 = +[MFRequestQueue signpostLog];
  v9 = os_signpost_id_generate(v8);

  v10 = +[MFRequestQueue signpostLog];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v17 = 138543874;
    v18 = v7;
    v19 = 2050;
    v20 = [v7 hash];
    v21 = 2050;
    v22 = [v4 count];
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "REQUEST QUEUE", "RequestClass=%{signpost.description:attribute,public}@ RequestType=%{public, signpost.telemetry:number1}lu RequestCount=%{public, signpost.telemetry:number2}lu enableTelemetry=YES ", &v17, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(MFRequestQueue *)self _processRequests:v4];
  os_unfair_lock_unlock(&self->_lock);
  v13 = +[MFRequestQueue signpostLog];
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v14, OS_SIGNPOST_INTERVAL_END, v9, "REQUEST QUEUE", "", &v17, 2u);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)processRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 second];
  v5 = [v3 first];
  [v4 handleResponse:v5 error:0];

  return 1;
}

- (BOOL)_processRequests:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  LOBYTE(self) = [(MFRequestQueue *)self processRequests:v4];

  v5 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)processRequests:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MFRequestQueue_processRequests___block_invoke;
  v5[3] = &unk_1E7AA2550;
  v5[4] = self;
  v5[5] = &v6;
  [a3 enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__MFRequestQueue_processRequests___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) processRequest:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

@end