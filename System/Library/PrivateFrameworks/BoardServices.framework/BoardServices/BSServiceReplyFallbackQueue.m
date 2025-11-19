@interface BSServiceReplyFallbackQueue
+ (BSServiceReplyFallbackQueue)_queueWithReplyQueue:(void *)a3 serviceQueue:;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)_performAsync:(id)a3 withHandoff:(id)a4;
- (void)_xpcReplyQueue_performReply:(id)a3;
- (void)performAfter:(double)a3 withBlock:(id)a4;
- (void)performAsync:(id)a3;
@end

@implementation BSServiceReplyFallbackQueue

+ (BSServiceReplyFallbackQueue)_queueWithReplyQueue:(void *)a3 serviceQueue:
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_self();
  v8 = v5;
  if (!v8)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"replyQueue", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *v60 = 138544642;
      *&v60[4] = v23;
      *&v60[12] = 2114;
      *&v60[14] = v25;
      v61 = 2048;
      v62 = v7;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 501;
      v67 = 2114;
      v68 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v60, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856A5CLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v8 classForCoder];
    if (!v28)
    {
      v28 = objc_opt_class();
    }

    v29 = NSStringFromClass(v28);
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"replyQueue", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *v60 = 138544642;
      *&v60[4] = v33;
      *&v60[12] = 2114;
      *&v60[14] = v35;
      v61 = 2048;
      v62 = v7;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 501;
      v67 = 2114;
      v68 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v60, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856BA4);
  }

  v9 = v6;
  if (!v9)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = [v37 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQueue", v39];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *v60 = 138544642;
      *&v60[4] = v41;
      *&v60[12] = 2114;
      *&v60[14] = v43;
      v61 = 2048;
      v62 = v7;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 502;
      v67 = 2114;
      v68 = v40;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v60, 0x3Au);
    }

    v44 = v40;
    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856CC4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = [v9 classForCoder];
    if (!v46)
    {
      v46 = objc_opt_class();
    }

    v47 = NSStringFromClass(v46);
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = [v45 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQueue", v47, v49];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *v60 = 138544642;
      *&v60[4] = v51;
      *&v60[12] = 2114;
      *&v60[14] = v53;
      v61 = 2048;
      v62 = v7;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 502;
      v67 = 2114;
      v68 = v50;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v60, 0x3Au);
    }

    v54 = v50;
    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856E0CLL);
  }

  v10 = [v9 _xpcReplyQueue];

  if (v10)
  {
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"serviceQueue already specifies a replyQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = NSStringFromSelector(sel__queueWithReplyQueue_serviceQueue_);
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      *v60 = 138544642;
      *&v60[4] = v56;
      *&v60[12] = 2114;
      *&v60[14] = v58;
      v61 = 2048;
      v62 = v7;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 503;
      v67 = 2114;
      v68 = v55;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v60, 0x3Au);
    }

    v59 = v55;
    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A856F04);
  }

  v11 = [BSServiceReplyFallbackQueue alloc];
  v12 = v8;
  v13 = v9;
  v14 = v13;
  if (v11)
  {
    v15 = v13[1];
    *v60 = v11;
    *&v60[8] = BSServiceQueue;
    v16 = objc_msgSendSuper2(v60, sel_init);
    v11 = v16;
    if (v16)
    {
      v16->super._userInteractive = v15;
      objc_storeStrong(&v16->_replyQueue, a2);
      objc_storeStrong(&v11->_serviceQueue, a3);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_performAsync:(id)a3 withHandoff:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(BSServiceQueue *)self->_serviceQueue _performAsync:v7 withHandoff:v6];
  }
}

- (void)_xpcReplyQueue_performReply:(id)a3
{
  v4 = a3;
  [(BSServiceDispatchQueue *)self->_replyQueue assertBarrierOnQueue];
  if (v4)
  {
    [(BSServiceQueue *)self->_serviceQueue performAsync:v4];
  }
}

- (void)performAsync:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(BSServiceQueue *)self->_serviceQueue performAsync:v4];
  }
}

- (void)performAfter:(double)a3 withBlock:(id)a4
{
  v6 = a4;
  if (v6)
  {
    [(BSServiceQueue *)self->_serviceQueue performAfter:v6 withBlock:a3];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && [(BSServiceDispatchQueue *)self->_replyQueue isEqual:v4->_replyQueue])
    {
      v6 = [(BSServiceQueue *)self->_serviceQueue isEqual:v4->_serviceQueue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_replyQueue withName:@"replyQueue"];
  v5 = [v3 appendObject:self->_serviceQueue withName:@"serviceQueue"];
  v6 = [v3 build];

  return v6;
}

@end