@interface BSServiceQueue
+ (BSServiceQueue)queueWithDispatchQueue:(id)a3;
+ (BSServiceQueue)queueWithMainRunLoopModes:(id)a3;
+ (id)mainDispatchQueue;
- (BSServiceQueue)init;
- (void)_performAsync:(id)a3 withHandoff:(id)a4;
- (void)_xpcReplyQueue_performReply:(id)a3;
- (void)assertBarrierOnQueue;
- (void)performAfter:(double)a3 withBlock:(id)a4;
- (void)performAsync:(id)a3;
@end

@implementation BSServiceQueue

- (BSServiceQueue)init
{
  v3 = +[BSServiceDispatchQueue mainQueue];

  return v3;
}

- (void)_performAsync:(id)a3 withHandoff:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138413314;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = @"BSServiceQueue.m";
    v20 = 1024;
    v21 = 590;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v12, 0x30u);
  }

  __break(0);
}

- (void)_xpcReplyQueue_performReply:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138413314;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = @"BSServiceQueue.m";
    v17 = 1024;
    v18 = 598;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v9, 0x30u);
  }

  __break(0);
}

+ (id)mainDispatchQueue
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != a1)
  {
    v4 = NSClassFromString(&cfstr_Fbsserialqueue.isa);
    if (!v4 || v4 != a1)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = NSStringFromSelector(a2);
      v9 = [v7 stringWithFormat:@"%@ is not available on subclass %@", v8, a1];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v15 = v10;
        v16 = 2114;
        v17 = v12;
        v18 = 2048;
        v19 = a1;
        v20 = 2114;
        v21 = @"BSServiceQueue.m";
        v22 = 1024;
        v23 = 612;
        v24 = 2114;
        v25 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A857850);
    }
  }

  v5 = *MEMORY[0x1E69E9840];

  return +[BSServiceDispatchQueue mainQueue];
}

+ (BSServiceQueue)queueWithDispatchQueue:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v26 = v19;
      v27 = 2114;
      v28 = v21;
      v29 = 2048;
      v30 = a1;
      v31 = 2114;
      v32 = @"BSServiceQueue.m";
      v33 = 1024;
      v34 = 620;
      v35 = 2114;
      v36 = v18;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A857BE8);
  }

  if (objc_opt_class() != a1)
  {
    v6 = NSClassFromString(&cfstr_Fbsserialqueue.isa);
    if (!v6 || v6 != a1)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = NSStringFromSelector(a2);
      v13 = [v11 stringWithFormat:@"%@ is not available on subclass %@", v12, a1];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v26 = v14;
        v27 = 2114;
        v28 = v16;
        v29 = 2048;
        v30 = a1;
        v31 = 2114;
        v32 = @"BSServiceQueue.m";
        v33 = 1024;
        v34 = 624;
        v35 = 2114;
        v36 = v13;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v17 = v13;
      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A857AE4);
    }
  }

  v7 = [BSServiceDispatchQueue _queueOfDispatchQueue:v5];
  if (!v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__BSServiceQueue_queueWithDispatchQueue___block_invoke;
    block[3] = &unk_1E75205D0;
    v8 = v5;
    v24 = v8;
    dispatch_async(v8, block);
    v7 = [BSServiceDispatchQueue _queueWithDispatchQueue:v8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BSServiceQueue)queueWithMainRunLoopModes:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_class() != a1)
  {
    v6 = NSClassFromString(&cfstr_Fbsserialqueue.isa);
    if (!v6 || v6 != a1)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = NSStringFromSelector(a2);
      v12 = [v10 stringWithFormat:@"%@ is not available on subclass %@", v11, a1];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        v22 = a1;
        v23 = 2114;
        v24 = @"BSServiceQueue.m";
        v25 = 1024;
        v26 = 642;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v16 = v12;
      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A857E54);
    }
  }

  v7 = [BSServiceMainRunLoopQueue queueWithModes:v5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)assertBarrierOnQueue
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138413314;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = @"BSServiceQueue.m";
    v15 = 1024;
    v16 = 654;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v7, 0x30u);
  }

  __break(0);
}

- (void)performAsync:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138413314;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = @"BSServiceQueue.m";
    v17 = 1024;
    v18 = 658;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v9, 0x30u);
  }

  __break(0);
}

- (void)performAfter:(double)a3 withBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138413314;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = @"BSServiceQueue.m";
    v18 = 1024;
    v19 = 662;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v10, 0x30u);
  }

  __break(0);
}

@end