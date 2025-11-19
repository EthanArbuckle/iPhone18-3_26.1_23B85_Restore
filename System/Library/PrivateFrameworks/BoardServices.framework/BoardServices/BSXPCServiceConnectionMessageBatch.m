@interface BSXPCServiceConnectionMessageBatch
- (BOOL)appendMessage:(id)a3;
- (BOOL)containsMessage:(SEL)a3;
- (BOOL)didCommit;
- (BOOL)sendSynchronously;
- (BSXPCServiceConnectionMessageBatch)initWithMessage:(id)a3;
- (unint64_t)commitWithReason:(id)a3;
- (unint64_t)messageCount;
- (void)invalidate;
@end

@implementation BSXPCServiceConnectionMessageBatch

- (unint64_t)messageCount
{
  os_unfair_lock_lock(&self->_lock);
  lock_messages = self->_lock_messages;
  if (lock_messages)
  {
    count = xpc_array_get_count(lock_messages);
  }

  else
  {
    count = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return count;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_messages = self->_lock_messages;
  self->_lock_messages = 0;

  lock_completions = self->_lock_completions;
  self->_lock_completions = 0;

  lock_batchHandler = self->_lock_batchHandler;
  self->_lock_batchHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
  v6.receiver = self;
  v6.super_class = BSXPCServiceConnectionMessageBatch;
  [(BSXPCServiceConnectionMessage *)&v6 invalidate];
}

- (BSXPCServiceConnectionMessageBatch)initWithMessage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BSXPCServiceConnectionMessageBatch;
  v5 = [(BSXPCServiceConnectionMessage *)&v14 initWithMessage:v4];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = xpc_array_create(0, 0);
    lock_messages = v6->_lock_messages;
    v6->_lock_messages = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    lock_completions = v6->_lock_completions;
    v6->_lock_completions = v9;

    v11 = [MEMORY[0x1E695DF00] date];
    date = v6->_date;
    v6->_date = v11;
  }

  return v6;
}

- (BOOL)appendMessage:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_messages = self->_lock_messages;
  if (lock_messages && self->_lock_batchHandler)
  {
    v7 = lock_messages;
    v8 = MEMORY[0x19A908200](self->_lock_batchHandler);
    v9 = [v5 createMessage];
    xpc_array_append_value(v7, v9);

    count = xpc_array_get_count(v7);
    if (v5)
    {
      v11 = v5[10];
      v12 = v11;
      if (v11)
      {
        lock_completions = self->_lock_completions;
        v14 = MEMORY[0x19A908200](v11);
        [(NSMutableArray *)lock_completions addObject:v14];
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = self;
    os_unfair_lock_unlock(&self->_lock);
    if (count == 1)
    {
      (v8)[2](v8, v15);
    }

    [v5 invalidate];
    v16 = v15->super._targetQueue;
    if (!v16)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v21 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targetQueue", v23];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(a2);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v43 = v25;
        v44 = 2114;
        v45 = v27;
        v46 = 2048;
        v47 = v15;
        v48 = 2114;
        v49 = @"BSXPCServiceConnectionMessage.m";
        v50 = 1024;
        v51 = 352;
        v52 = 2114;
        v53 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A871080);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = [(BSServiceDispatchQueue *)v16 classForCoder];
      if (!v30)
      {
        v30 = objc_opt_class();
      }

      v31 = NSStringFromClass(v30);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v29 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetQueue", v31, v33];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138544642;
        v43 = v35;
        v44 = 2114;
        v45 = v37;
        v46 = 2048;
        v47 = v15;
        v48 = 2114;
        v49 = @"BSXPCServiceConnectionMessage.m";
        v50 = 1024;
        v51 = 352;
        v52 = 2114;
        v53 = v34;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v38 = v34;
      [v34 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8711C8);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __52__BSXPCServiceConnectionMessageBatch_appendMessage___block_invoke;
    v39[3] = &unk_1E7520FC0;
    v41 = count;
    v17 = v15;
    v40 = v17;
    [(BSServiceDispatchQueue *)v16 performAfter:v39 withBlock:0.1];

    v18 = 1;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __52__BSXPCServiceConnectionMessageBatch_appendMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = [*(a1 + 32) messageCount];
  if (v2 == result)
  {
    v4 = *(a1 + 32);

    return [v4 commitWithReason:@"internal timeout"];
  }

  return result;
}

- (BOOL)sendSynchronously
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"batched messages must be sent asynchronously"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionMessage.m";
    v18 = 1024;
    v19 = 367;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BOOL)didCommit
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_messages == 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)commitWithReason:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_messages;
  v6 = self->_lock_completions;
  v7 = self->super._completion;
  lock_messages = self->_lock_messages;
  self->_lock_messages = 0;

  lock_completions = self->_lock_completions;
  self->_lock_completions = 0;

  lock_batchHandler = self->_lock_batchHandler;
  self->_lock_batchHandler = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    count = xpc_array_get_count(v5);
    if (count == 1)
    {
      v12 = xpc_array_get_value(v5, 0);
      v13 = *MEMORY[0x1E698E7C0];
      v14 = *(&self->super.super.super.isa + v13);
      *(&self->super.super.super.isa + v13) = v12;

      v15 = [(NSMutableArray *)v6 firstObject];
      objc_setProperty_nonatomic_copy(self, v16, v15, 80);
    }

    else
    {
      v17 = BSServiceXPCBatchLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [(NSDate *)self->_date timeIntervalSinceNow];
        v18 = @"(reason unspecified)";
        *buf = 134218498;
        v28 = -v19;
        if (v4)
        {
          v18 = v4;
        }

        v29 = 2048;
        v30 = count;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_19A821000, v17, OS_LOG_TYPE_DEFAULT, "sending batch message after %.3f with %zu messages: %@", buf, 0x20u);
      }

      [(BSXPCCoder *)self encodeXPCObject:v5 forKey:@"bsxpc_BATCH"];
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __55__BSXPCServiceConnectionMessageBatch_commitWithReason___block_invoke;
      newValue[3] = &unk_1E7520670;
      v25 = v6;
      v26 = v7;
      objc_setProperty_nonatomic_copy(self, v20, newValue, 80);
    }

    v23.receiver = self;
    v23.super_class = BSXPCServiceConnectionMessageBatch;
    [(BSXPCServiceConnectionMessage *)&v23 send];
  }

  else
  {
    count = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return count;
}

void __55__BSXPCServiceConnectionMessageBatch_commitWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v10) + 16))(*(*(&v13 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsMessage:(SEL)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_messages)
  {
    v5 = [@"bsxpc_SEL" UTF8String];
    v6 = NSStringFromSelector(a3);
    v7 = [v6 UTF8String];

    lock_messages = self->_lock_messages;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __54__BSXPCServiceConnectionMessageBatch_containsMessage___block_invoke;
    applier[3] = &unk_1E7521260;
    applier[4] = &v12;
    applier[5] = v5;
    applier[6] = v7;
    xpc_array_apply(lock_messages, applier);
    os_unfair_lock_unlock(&self->_lock);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

BOOL __54__BSXPCServiceConnectionMessageBatch_containsMessage___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, *(a1 + 40));
  if (string)
  {
    *(*(*(a1 + 32) + 8) + 24) = strcmp(string, *(a1 + 48)) == 0;
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

@end