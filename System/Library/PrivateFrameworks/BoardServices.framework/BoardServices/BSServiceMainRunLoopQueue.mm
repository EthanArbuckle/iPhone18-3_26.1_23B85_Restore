@interface BSServiceMainRunLoopQueue
+ (id)commonModesQueue;
+ (id)queueWithModes:(id)modes;
- (CFRunLoopSourceContext)_initWithModes:(CFIndex)modes;
- (id)description;
- (void)_queue_performAsync:(id)obj;
- (void)assertBarrierOnQueue;
- (void)dealloc;
- (void)performAfter:(double)after withBlock:(id)block;
- (void)performAsync:(id)async;
@end

@implementation BSServiceMainRunLoopQueue

+ (id)commonModesQueue
{
  if (qword_1ED4A7B60 != -1)
  {
    dispatch_once(&qword_1ED4A7B60, &__block_literal_global_118);
  }

  v3 = qword_1ED4A7B58;

  return v3;
}

void __45__BSServiceMainRunLoopQueue_commonModesQueue__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [BSServiceMainRunLoopQueue alloc];
  v5[0] = *MEMORY[0x1E695DA28];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [(BSServiceMainRunLoopQueue *)v0 _initWithModes:v1];
  v3 = qword_1ED4A7B58;
  qword_1ED4A7B58 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __58__BSServiceMainRunLoopQueue__performNextFromRunLoopSource__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) count])
  {
    v2 = [*(*(a1 + 32) + 40) objectAtIndex:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(a1 + 32) + 40) removeObjectAtIndex:0];
  }

  if (![*(*(a1 + 32) + 40) count])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;
  }
}

- (void)assertBarrierOnQueue
{
  v22 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"threading violation: expected the main thread"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BSServiceQueue.m";
      v18 = 1024;
      v19 = 272;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82A374);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (CFRunLoopSourceContext)_initWithModes:(CFIndex)modes
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (modes)
  {
    if (qos_class_main() == QOS_CLASS_USER_INTERACTIVE)
    {
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    v33.version = modes;
    v33.info = BSServiceQueue;
    v5 = [(CFRunLoopSourceContext *)&v33 init];
    v6 = v5;
    if (v5)
    {
      v5->info = *v4;
      serial = [MEMORY[0x1E698E698] serial];
      v8 = [serial serviceClass:33];
      v9 = BSDispatchQueueCreate();
      release = v6->release;
      v6->release = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      equal = v6->equal;
      v6->equal = v11;

      v13 = [v3 copy];
      retain = v6->retain;
      v6->retain = v13;

      v33.version = 0;
      memset(&v33.retain, 0, 56);
      v33.info = v6;
      v33.perform = BSServiceMainRunLoopSourceHandler;
      v15 = CFRunLoopSourceCreate(0, 0, &v33);
      v6->copyDescription = v15;
      if (!v15)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create source"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = NSStringFromSelector(sel__initWithModes_);
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138544642;
          v36 = v25;
          v37 = 2114;
          v38 = v27;
          v39 = 2048;
          v40 = v6;
          v41 = 2114;
          v42 = @"BSServiceQueue.m";
          v43 = 1024;
          v44 = 229;
          v45 = 2114;
          v46 = v24;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v28 = v24;
        [v24 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A854B64);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v6->retain;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v17)
      {
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v29 + 1) + 8 * v19);
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, v6->copyDescription, v20);
            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  CFRunLoopSourceInvalidate(self->_source);
  CFRelease(self->_source);
  v3.receiver = self;
  v3.super_class = BSServiceMainRunLoopQueue;
  [(BSServiceMainRunLoopQueue *)&v3 dealloc];
}

+ (id)queueWithModes:(id)modes
{
  v74 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  if (!modesCopy)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v33 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"modes", v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v63 = v37;
      v64 = 2114;
      v65 = v39;
      v66 = 2048;
      selfCopy5 = self;
      v68 = 2114;
      v69 = @"BSServiceQueue.m";
      v70 = 1024;
      v71 = 254;
      v72 = 2114;
      v73 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8551E0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = MEMORY[0x1E696AEC0];
    classForCoder = [modesCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v43 = NSStringFromClass(classForCoder);
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = [v41 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"modes", v43, v45];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *buf = 138544642;
      v63 = v47;
      v64 = 2114;
      v65 = v49;
      v66 = 2048;
      selfCopy5 = self;
      v68 = 2114;
      v69 = @"BSServiceQueue.m";
      v70 = 1024;
      v71 = 254;
      v72 = 2114;
      v73 = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v50 = v46;
    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85532CLL);
  }

  if (![modesCopy count])
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[modes count] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *buf = 138544642;
      v63 = v52;
      v64 = 2114;
      v65 = v54;
      v66 = 2048;
      selfCopy5 = self;
      v68 = 2114;
      v69 = @"BSServiceQueue.m";
      v70 = 1024;
      v71 = 255;
      v72 = 2114;
      v73 = v51;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v55 = v51;
    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A855434);
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = modesCopy;
  v7 = [v6 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v7)
  {
    v8 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AEC0];
        if (!v10)
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"mode", v17];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector(a2);
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *buf = 138544642;
            v63 = v19;
            v64 = 2114;
            v65 = v21;
            v66 = 2048;
            selfCopy5 = self;
            v68 = 2114;
            v69 = @"BSServiceQueue.m";
            v70 = 1024;
            v71 = 258;
            v72 = 2114;
            v73 = v18;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v22 = v18;
          [v18 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A854F6CLL);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v10 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v25 = NSStringFromClass(classForCoder2);
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = [v23 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"mode", v25, v27];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v29 = NSStringFromSelector(a2);
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = 138544642;
            v63 = v29;
            v64 = 2114;
            v65 = v31;
            v66 = 2048;
            selfCopy5 = self;
            v68 = 2114;
            v69 = @"BSServiceQueue.m";
            v70 = 1024;
            v71 = 258;
            v72 = 2114;
            v73 = v28;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v32 = v28;
          [v28 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A8550B8);
        }

        v12 = [v10 copy];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v7);
  }

  v13 = [[BSServiceMainRunLoopQueue alloc] _initWithModes:v5];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)performAsync:(id)async
{
  if (async)
  {
    v4 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, async);
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__BSServiceMainRunLoopQueue_performAsync___block_invoke;
    v7[3] = &unk_1E7520648;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_async_and_wait(queue, v7);
  }
}

- (void)_queue_performAsync:(id)obj
{
  if (obj && a2)
  {
    objc_storeStrong(obj + 6, obj);
    v4 = a2;
    v5 = *(obj + 5);
    v6 = MEMORY[0x19A908200]();

    [v5 addObject:v6];
    CFRunLoopSourceSignal(*(obj + 4));
    Main = CFRunLoopGetMain();

    CFRunLoopWakeUp(Main);
  }
}

- (void)performAfter:(double)after withBlock:(id)block
{
  if (block)
  {
    v6 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v7 = dispatch_time(0, (after * 1000000000.0));
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__BSServiceMainRunLoopQueue_performAfter_withBlock___block_invoke;
    v10[3] = &unk_1E7520648;
    v10[4] = self;
    v11 = v6;
    v9 = v6;
    dispatch_after(v7, queue, v10);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendArraySection:self->_modes withName:@"modes" skipIfEmpty:0];
  v4 = [v3 appendPointer:self->_source withName:@"source"];
  v5 = [v3 appendBool:self->_main_callingOut withName:@"callingOut"];
  queue = self->_queue;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__BSServiceMainRunLoopQueue_description__block_invoke;
  v13 = &unk_1E75209E8;
  v7 = v3;
  v14 = v7;
  selfCopy = self;
  dispatch_async_and_wait(queue, &v10);
  build = [v7 build];

  return build;
}

@end