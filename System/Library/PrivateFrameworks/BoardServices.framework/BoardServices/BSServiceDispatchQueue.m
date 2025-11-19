@interface BSServiceDispatchQueue
+ (BSServiceDispatchQueue)queueWithName:(id)a3;
+ (BSServiceDispatchQueue)queueWithName:(id)a3 serviceQuality:(id)a4;
+ (BSServiceDispatchQueue)queueWithName:(id)a3 serviceQuality:(id)a4 targetQueue:(id)a5;
+ (BSServiceDispatchQueue)queueWithName:(id)a3 targetQueue:(id)a4;
+ (id)_queueOfDispatchQueue:(uint64_t)a1;
+ (id)_queueWithDispatchQueue:(uint64_t)a1;
+ (id)mainQueue;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_BYTE)_initWithQueue:(uint64_t)a3 asUserInteractive:(int)a4 shouldAssociate:;
- (void)_performAsync:(id)a3 withHandoff:(id)a4;
- (void)_xpcReplyQueue_performReply:(id)a3;
- (void)assertBarrierOnQueue;
- (void)performAfter:(double)a3 withBlock:(id)a4;
- (void)performAsync:(id)a3;
- (void)performAsyncAndWait:(id)a3;
@end

@implementation BSServiceDispatchQueue

- (void)assertBarrierOnQueue
{
  if (self->_main)
  {
    BSDispatchQueueAssertMain();
  }

  else
  {
    dispatch_assert_queue_barrier(self->_queue);
  }
}

+ (id)mainQueue
{
  if (qword_1ED4A7B50 != -1)
  {
    dispatch_once(&qword_1ED4A7B50, &__block_literal_global_7);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __35__BSServiceDispatchQueue_mainQueue__block_invoke()
{
  v0 = MEMORY[0x1E69E96A0];
  v1 = qos_class_main();
  v2 = [BSServiceDispatchQueue alloc];
  v3 = *MEMORY[0x1E695E4D0];
  if (v1 == QOS_CLASS_USER_INTERACTIVE)
  {
    v4 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = *MEMORY[0x1E695E4C0];
  }

  v5 = [(BSServiceDispatchQueue *)v2 _initWithQueue:v4 asUserInteractive:1 shouldAssociate:?];
  v6 = _MergedGlobals_1;
  _MergedGlobals_1 = v5;

  *(_MergedGlobals_1 + 24) = 1;
  v7 = MEMORY[0x1E69E96A0];
}

- (_BYTE)_initWithQueue:(uint64_t)a3 asUserInteractive:(int)a4 shouldAssociate:
{
  v8 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BSServiceQueue;
    v9 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v9;
    if (v9)
    {
      *(v9 + 1) = a3;
      objc_storeStrong(v9 + 2, a2);
      if (a4)
      {
        a1[25] = 1;
        v10 = [MEMORY[0x1E698E7B8] referenceWithObject:a1];
        objc_setAssociatedObject(v8, "BSServiceDispatchQueueReference", v10, 1);
      }
    }
  }

  return a1;
}

+ (id)_queueOfDispatchQueue:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_getAssociatedObject(v2, "BSServiceDispatchQueueReference");
  v4 = [v3 object];

  return v4;
}

+ (id)_queueWithDispatchQueue:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v8 = v3;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(sel__queueWithDispatchQueue_);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = v8;
      v20 = 2114;
      v21 = @"BSServiceQueue.m";
      v22 = 1024;
      v23 = 60;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8528F8);
  }

  if (v2 == MEMORY[0x1E69E96A0])
  {
    v4 = +[BSServiceDispatchQueue mainQueue];
  }

  else
  {
    v4 = [[BSServiceDispatchQueue alloc] _initWithQueue:v2 asUserInteractive:0 shouldAssociate:0];
  }

  v5 = v4;

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BSServiceDispatchQueue)queueWithName:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  if (!v5)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v14];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v31 = v16;
      v32 = 2114;
      v33 = v18;
      v34 = 2048;
      v35 = a1;
      v36 = 2114;
      v37 = @"BSServiceQueue.m";
      v38 = 1024;
      v39 = 83;
      v40 = 2114;
      v41 = v15;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A852B58);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v5 classForCoder];
    if (!v21)
    {
      v21 = objc_opt_class();
    }

    v22 = NSStringFromClass(v21);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v22, v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v31 = v26;
      v32 = 2114;
      v33 = v28;
      v34 = 2048;
      v35 = a1;
      v36 = 2114;
      v37 = @"BSServiceQueue.m";
      v38 = 1024;
      v39 = 83;
      v40 = 2114;
      v41 = v25;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A852C9CLL);
  }

  v7 = [MEMORY[0x1E698E698] serial];
  v8 = BSDispatchQueueCreate();
  v9 = [BSServiceDispatchQueue alloc];
  v10 = [(BSServiceDispatchQueue *)v9 _initWithQueue:v8 asUserInteractive:*MEMORY[0x1E695E4C0] shouldAssociate:1];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BSServiceDispatchQueue)queueWithName:(id)a3 targetQueue:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = MEMORY[0x1E696AEC0];
  if (!v9)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v41 = v21;
      v42 = 2114;
      v43 = v23;
      v44 = 2048;
      v45 = a1;
      v46 = 2114;
      v47 = @"BSServiceQueue.m";
      v48 = 1024;
      v49 = 90;
      v50 = 2114;
      v51 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A852F90);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [v9 classForCoder];
    if (!v26)
    {
      v26 = objc_opt_class();
    }

    v27 = NSStringFromClass(v26);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v25 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v27, v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v41 = v31;
      v42 = 2114;
      v43 = v33;
      v44 = 2048;
      v45 = a1;
      v46 = 2114;
      v47 = @"BSServiceQueue.m";
      v48 = 1024;
      v49 = 90;
      v50 = 2114;
      v51 = v30;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v34 = v30;
    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8530D4);
  }

  if (!v8)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v41 = v36;
      v42 = 2114;
      v43 = v38;
      v44 = 2048;
      v45 = a1;
      v46 = 2114;
      v47 = @"BSServiceQueue.m";
      v48 = 1024;
      v49 = 91;
      v50 = 2114;
      v51 = v35;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v39 = v35;
    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8531D4);
  }

  v11 = [MEMORY[0x1E698E698] serial];
  v12 = [v11 targetQueue:v8];

  v13 = BSDispatchQueueCreate();
  v14 = [BSServiceDispatchQueue alloc];
  v15 = [(BSServiceDispatchQueue *)v14 _initWithQueue:v13 asUserInteractive:*MEMORY[0x1E695E4C0] shouldAssociate:1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BSServiceDispatchQueue)queueWithName:(id)a3 serviceQuality:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = MEMORY[0x1E696AEC0];
  if (!v9)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v58 = v25;
      v59 = 2114;
      v60 = v27;
      v61 = 2048;
      v62 = a1;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 98;
      v67 = 2114;
      v68 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853560);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = [v9 classForCoder];
    if (!v30)
    {
      v30 = objc_opt_class();
    }

    v31 = NSStringFromClass(v30);
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v29 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v31, v33];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v58 = v35;
      v59 = 2114;
      v60 = v37;
      v61 = 2048;
      v62 = a1;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 98;
      v67 = 2114;
      v68 = v34;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8536A4);
  }

  v11 = v8;
  if (!v11)
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v39 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQuality", v41];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v58 = v43;
      v59 = 2114;
      v60 = v45;
      v61 = 2048;
      v62 = a1;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 99;
      v67 = 2114;
      v68 = v42;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v46 = v42;
    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8537C4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = MEMORY[0x1E696AEC0];
    v48 = [v11 classForCoder];
    if (!v48)
    {
      v48 = objc_opt_class();
    }

    v49 = NSStringFromClass(v48);
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v52 = [v47 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQuality", v49, v51];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      *buf = 138544642;
      v58 = v53;
      v59 = 2114;
      v60 = v55;
      v61 = 2048;
      v62 = a1;
      v63 = 2114;
      v64 = @"BSServiceQueue.m";
      v65 = 1024;
      v66 = 99;
      v67 = 2114;
      v68 = v52;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v56 = v52;
    [v52 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853908);
  }

  v12 = [MEMORY[0x1E698E698] serial];
  v13 = [v12 serviceClass:objc_msgSend(v11 relativePriority:{"serviceClass"), objc_msgSend(v11, "relativePriority")}];

  v14 = BSDispatchQueueCreate();
  v15 = [v11 serviceClass];
  v16 = [BSServiceDispatchQueue alloc];
  v17 = *MEMORY[0x1E695E4D0];
  if (v15 == 33)
  {
    v18 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v18 = *MEMORY[0x1E695E4C0];
  }

  v19 = [(BSServiceDispatchQueue *)v16 _initWithQueue:v14 asUserInteractive:v18 shouldAssociate:1];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (BSServiceDispatchQueue)queueWithName:(id)a3 serviceQuality:(id)a4 targetQueue:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = MEMORY[0x1E696AEC0];
  if (!v12)
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v13 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v67 = v29;
      v68 = 2114;
      v69 = v31;
      v70 = 2048;
      v71 = a1;
      v72 = 2114;
      v73 = @"BSServiceQueue.m";
      v74 = 1024;
      v75 = 108;
      v76 = 2114;
      v77 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853D10);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = [v12 classForCoder];
    if (!v34)
    {
      v34 = objc_opt_class();
    }

    v35 = NSStringFromClass(v34);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v33 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v35, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v67 = v39;
      v68 = 2114;
      v69 = v41;
      v70 = 2048;
      v71 = a1;
      v72 = 2114;
      v73 = @"BSServiceQueue.m";
      v74 = 1024;
      v75 = 108;
      v76 = 2114;
      v77 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853E54);
  }

  v14 = v10;
  if (!v14)
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = [v43 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQuality", v45];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138544642;
      v67 = v47;
      v68 = 2114;
      v69 = v49;
      v70 = 2048;
      v71 = a1;
      v72 = 2114;
      v73 = @"BSServiceQueue.m";
      v74 = 1024;
      v75 = 109;
      v76 = 2114;
      v77 = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v50 = v46;
    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A853F74);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = MEMORY[0x1E696AEC0];
    v52 = [v14 classForCoder];
    if (!v52)
    {
      v52 = objc_opt_class();
    }

    v53 = NSStringFromClass(v52);
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = [v51 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQuality", v53, v55];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = NSStringFromSelector(a2);
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      *buf = 138544642;
      v67 = v57;
      v68 = 2114;
      v69 = v59;
      v70 = 2048;
      v71 = a1;
      v72 = 2114;
      v73 = @"BSServiceQueue.m";
      v74 = 1024;
      v75 = 109;
      v76 = 2114;
      v77 = v56;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v60 = v56;
    [v56 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8540B8);
  }

  if (!v11)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v62 = NSStringFromSelector(a2);
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      *buf = 138544642;
      v67 = v62;
      v68 = 2114;
      v69 = v64;
      v70 = 2048;
      v71 = a1;
      v72 = 2114;
      v73 = @"BSServiceQueue.m";
      v74 = 1024;
      v75 = 110;
      v76 = 2114;
      v77 = v61;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v65 = v61;
    [v61 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8541B8);
  }

  v15 = [MEMORY[0x1E698E698] serial];
  v16 = [v15 targetQueue:v11];

  v17 = [v16 serviceClass:objc_msgSend(v14 relativePriority:{"serviceClass"), objc_msgSend(v14, "relativePriority")}];

  v18 = BSDispatchQueueCreate();
  v19 = [v14 serviceClass];
  v20 = [BSServiceDispatchQueue alloc];
  v21 = *MEMORY[0x1E695E4D0];
  if (v19 == 33)
  {
    v22 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v22 = *MEMORY[0x1E695E4C0];
  }

  v23 = [(BSServiceDispatchQueue *)v20 _initWithQueue:v18 asUserInteractive:v22 shouldAssociate:1];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)performAsyncAndWait:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BSServiceQueue.m";
      v21 = 1024;
      v22 = 119;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8544A4);
  }

  v12 = v5;
  dispatch_async_and_wait(self->_queue, v5);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performAsync:(id)a3 withHandoff:(id)a4
{
  block = a3;
  v6 = a4;
  if (block)
  {
    queue = self->_queue;
    if (v6)
    {
      xpc_dictionary_handoff_reply();
    }

    else
    {
      dispatch_async(self->_queue, block);
    }
  }
}

- (void)_xpcReplyQueue_performReply:(id)a3
{
  v4 = a3;
  [(BSServiceDispatchQueue *)self assertBarrierOnQueue];
  if (v4)
  {
    v4[2]();
  }
}

- (void)performAsync:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_queue, a3);
  }
}

- (void)performAfter:(double)a3 withBlock:(id)a4
{
  if (a4)
  {
    v5 = (a3 * 1000000000.0);
    block = a4;
    v6 = dispatch_time(0, v5);
    dispatch_after(v6, self->_queue, block);
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
    v6 = v5 == objc_opt_class() && !self->_isAssociated && !v4->_isAssociated && [(OS_dispatch_queue *)self->_queue isEqual:v4->_queue]&& self->_main == v4->_main;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  if (self->_main)
  {
    [v3 appendString:@"main" withName:@"queue"];
  }

  else
  {
    v5 = [v3 appendQueue:self->_queue withName:@"queue"];
  }

  v6 = [v4 build];

  return v6;
}

@end