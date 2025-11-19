@interface JavaLangRuntime
+ (id)getRuntime;
+ (void)initialize;
- (BOOL)removeShutdownHookWithJavaLangThread:(id)a3;
- (int64_t)freeMemory;
- (int64_t)maxMemory;
- (int64_t)totalMemory;
- (void)addShutdownHookWithJavaLangThread:(id)a3;
- (void)dealloc;
- (void)registerShutdownHooks;
- (void)runShutdownHooks;
@end

@implementation JavaLangRuntime

+ (id)getRuntime
{
  if ((atomic_load_explicit(JavaLangRuntime__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024B5B8();
  }

  return qword_1005553D0;
}

- (int64_t)maxMemory
{
  v2 = +[NSProcessInfo processInfo];

  return [(NSProcessInfo *)v2 physicalMemory];
}

- (int64_t)totalMemory
{
  v5 = 0;
  memset(task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 40;
  if (task_info(mach_task_self_, 0x12u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return *&task_info_out[3];
  }
}

- (int64_t)freeMemory
{
  v2 = mach_host_self();
  host_info_outCnt = 15;
  v5 = 0;
  memset(v4, 0, 60);
  host_page_size(v2, &v5);
  host_statistics(v2, 2, v4, &host_info_outCnt);
  return v5 * LODWORD(v4[0]);
}

- (void)addShutdownHookWithJavaLangThread:(id)a3
{
  if (!self->shutdownHooks_)
  {
    v7 = new_JavaLangIllegalStateException_initWithNSString_(@"shutdown in progress");
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if ([a3 isAlive])
  {
    v8 = @"hook already started";
LABEL_13:
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
LABEL_14:
    objc_exception_throw(v7);
  }

  shutdownHooks = self->shutdownHooks_;
  if (!shutdownHooks)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if ([(JavaUtilList *)shutdownHooks containsWithId:a3])
  {
    v8 = @"hook previously added";
    goto LABEL_13;
  }

  v6 = self->shutdownHooks_;

  [(JavaUtilList *)v6 addWithId:a3];
}

- (BOOL)removeShutdownHookWithJavaLangThread:(id)a3
{
  shutdownHooks = self->shutdownHooks_;
  if (!shutdownHooks)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)shutdownHooks removeWithId:a3];
}

- (void)runShutdownHooks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  p_shutdownHooks = &self->shutdownHooks_;
  shutdownHooks = self->shutdownHooks_;
  if (!shutdownHooks)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilList *)self->shutdownHooks_ countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(shutdownHooks);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (!v8)
        {
          goto LABEL_11;
        }

        [v8 start];
      }

      v5 = [(JavaUtilList *)shutdownHooks countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  JreStrongAssign(p_shutdownHooks, 0);
}

- (void)registerShutdownHooks
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10024B5B0;
  v2[3] = &unk_1003FFC90;
  v2[4] = self;
  atexit_b(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangRuntime;
  [(JavaLangRuntime *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaLangRuntime alloc];
    sub_10024B070(v2);
    JreStrongAssignAndConsume(&qword_1005553D0, v2);
    atomic_store(1u, JavaLangRuntime__initialized);
  }
}

@end