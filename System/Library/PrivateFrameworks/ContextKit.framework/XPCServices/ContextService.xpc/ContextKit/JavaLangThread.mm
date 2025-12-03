@interface JavaLangThread
+ (JavaLangThread)initializeThreadClass;
+ (id)getAllStackTraces;
+ (id)getDefaultUncaughtExceptionHandler;
+ (uint64_t)getNextThreadId;
+ (void)initialize;
- (BOOL)isAlive;
- (JavaLangThread)initWithJavaLangThreadGroup:(id)group withNSString:(id)string withBoolean:(BOOL)boolean;
- (NSString)description;
- (id)getContextClassLoader;
- (id)getStackTrace;
- (id)getState;
- (id)getUncaughtExceptionHandler;
- (int)countStackFrames;
- (int64_t)getId;
- (void)__javaClone;
- (void)dealloc;
- (void)interrupt;
- (void)parkForWithLong:(int64_t)long;
- (void)parkUntilWithLong:(int64_t)long;
- (void)popInterruptAction$WithJavaLangRunnable:(id)runnable;
- (void)pushInterruptAction$WithJavaLangRunnable:(id)runnable;
- (void)run;
- (void)run0WithId:(id)id;
- (void)setNameWithNSString:(id)string;
- (void)setPriorityWithInt:(int)int;
- (void)setUncaughtExceptionHandlerWithJavaLangThread_UncaughtExceptionHandler:(id)handler;
- (void)start;
- (void)unpark;
@end

@implementation JavaLangThread

- (JavaLangThread)initWithJavaLangThreadGroup:(id)group withNSString:(id)string withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  JreStrongAssignAndConsume(&self->vmThread_, [NSObject alloc]);
  self->parkState_ = 1;
  JreStrongAssignAndConsume(&self->parkBlocker_, [NSObject alloc]);
  v9 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->interruptActions_, v9);
  sub_1002797AC(self, group, 0, string, 0, booleanCopy);
  return self;
}

- (void)start
{
  nsThread = self->nsThread_;
  if ([nsThread isExecuting])
  {
    v4 = [[JavaLangIllegalThreadStateException alloc] initWithNSString:@"This thread was already started!"];
    v5 = v4;
    objc_exception_throw(v4);
  }

  self->running_ = 1;

  [nsThread start];
}

- (void)run
{
  threadDictionary = [self->nsThread_ threadDictionary];
  v4 = [threadDictionary objectForKey:off_1005538B8[0]];
  if (v4)
  {
    v5 = v4 == self;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = objc_autoreleasePoolPush();
    [(JavaLangThread *)v6 run];

    objc_autoreleasePoolPop(v7);
  }
}

- (void)run0WithId:(id)id
{
  [(JavaLangThread *)self run];
  interruptActions = self->interruptActions_;
  if (!interruptActions)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)interruptActions clear];
  [self->nsThread_ cancel];
}

- (int64_t)getId
{
  threadDictionary = [self->nsThread_ threadDictionary];
  v3 = [threadDictionary objectForKey:off_1005538C0[0]];

  return [v3 longLongValue];
}

- (void)setNameWithNSString:(id)string
{
  if (!string)
  {
    v5 = objc_alloc_init(JavaLangNullPointerException);
    v6 = v5;
    objc_exception_throw(v5);
  }

  nsThread = self->nsThread_;

  [nsThread setName:?];
}

- (void)setPriorityWithInt:(int)int
{
  [(JavaLangThread *)self checkAccess];
  if ((int - 11) <= 0xFFFFFFF5)
  {
    v8 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Wrong Thread priority value");
    objc_exception_throw(v8);
  }

  getThreadGroup = [(JavaLangThread *)self getThreadGroup];
  if (!getThreadGroup)
  {
    JreThrowNullPointerException();
  }

  v6 = getThreadGroup;
  if ([getThreadGroup getMaxPriority] < int)
  {
    int = [v6 getMaxPriority];
  }

  nsThread = self->nsThread_;

  [nsThread setThreadPriority:int / 10.0];
}

- (id)getState
{
  if (([self->nsThread_ isCancelled] & 1) != 0 || objc_msgSend(self->nsThread_, "isFinished"))
  {
    v3 = &qword_100558C68;
    if (atomic_load_explicit(JavaLangThread_StateEnum__initialized, memory_order_acquire))
    {
      return *v3;
    }

LABEL_9:
    objc_opt_class();
    return *v3;
  }

  isExecuting = [self->nsThread_ isExecuting];
  explicit = atomic_load_explicit(JavaLangThread_StateEnum__initialized, memory_order_acquire);
  if (isExecuting)
  {
    v3 = &qword_100558C48;
  }

  else
  {
    v3 = &JavaLangThread_StateEnum_values_;
  }

  if ((explicit & 1) == 0)
  {
    goto LABEL_9;
  }

  return *v3;
}

- (id)getStackTrace
{
  getStackTrace = [new_JavaLangThrowable_init() getStackTrace];
  if (!getStackTrace)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v3 = getStackTrace;
  v4 = getStackTrace[2];
  if (v4 < 1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *&v3[2 * v5 + 6];
    if (!v7)
    {
      goto LABEL_19;
    }

    getMethodName = [v7 getMethodName];
    if (!getMethodName)
    {
      goto LABEL_19;
    }

    v9 = getMethodName;
    if (![getMethodName contains:@"getStackTrace"])
    {
      break;
    }

    v6 = v5;
LABEL_9:
    if (++v5 >= v3[2])
    {
      goto LABEL_13;
    }
  }

  if (([v9 contains:@"mainWithNSStringArray:"] & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v5;
LABEL_13:
  if (v4 - v6 + 1 >= 0)
  {
    v10 = v3[2];
    if (v4 + 1 <= v10)
    {
      v11 = (v4 - v6 + 1);
    }

    else
    {
      v11 = (v10 - v6);
    }

    v12 = [IOSObjectArray arrayWithLength:v11 type:JavaLangStackTraceElement_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, v6, v12, 0, v11);
    return v12;
  }

  return v3;
}

- (int)countStackFrames
{
  getStackTrace = [(JavaLangThread *)self getStackTrace];
  if (!getStackTrace)
  {
    JreThrowNullPointerException();
  }

  return getStackTrace[2];
}

- (void)interrupt
{
  vmThread = self->vmThread_;
  objc_sync_enter(vmThread);
  interruptActions = self->interruptActions_;
  objc_sync_enter(interruptActions);
  v5 = self->interruptActions_;
  if (!v5)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilList *)v5 size]- 1;
  while ((v6 & 0x80000000) == 0)
  {
    v7 = [(JavaUtilList *)self->interruptActions_ getWithInt:v6];
    if (!v7)
    {
      goto LABEL_12;
    }

    v6 = (v6 - 1);
    [v7 run];
  }

  objc_sync_exit(interruptActions);
  if (!self->interrupted_)
  {
    self->interrupted_ = 1;
    blocker = self->blocker_;
    if (blocker)
    {
      objc_sync_enter(self->blocker_);
      [self->blocker_ notify];
      objc_sync_exit(blocker);
    }
  }

  objc_sync_exit(vmThread);
}

- (BOOL)isAlive
{
  nsThread = self->nsThread_;
  if ([nsThread isExecuting] && !objc_msgSend(nsThread, "isCancelled"))
  {
    LOBYTE(Weak) = 1;
    return Weak;
  }

  if (!self->running_)
  {
    goto LABEL_6;
  }

  self->running_ = 0;
  Weak = objc_loadWeak(&self->threadGroup_);
  if (Weak)
  {
    [objc_loadWeak(&self->threadGroup_) removeWithJavaLangThread:self];
    v5 = objc_loadWeak(&self->threadGroup_);
    objc_storeWeak(&self->threadGroup_, 0);
LABEL_6:
    LOBYTE(Weak) = 0;
  }

  return Weak;
}

- (id)getContextClassLoader
{
  result = self->contextClassLoader_;
  if (!result)
  {
    return JavaLangClassLoader_getSystemClassLoader();
  }

  return result;
}

- (NSString)description
{
  getThreadGroup = [(JavaLangThread *)self getThreadGroup];
  [(JavaLangThread *)self getName];
  [(JavaLangThread *)self getPriority];
  if (!getThreadGroup)
  {
    return JreStrcat("$$CI$", v4, v5, v6, v7, v8, v9, v10, @"Thread[");
  }

  [getThreadGroup getName];
  return JreStrcat("$$CIC$C", v11, v12, v13, v14, v15, v16, v17, @"Thread[");
}

- (void)unpark
{
  vmThread = self->vmThread_;
  objc_sync_enter(vmThread);
  parkState = self->parkState_;
  if (parkState != 2)
  {
    if (parkState == 1)
    {
      self->parkState_ = 2;
    }

    else
    {
      self->parkState_ = 1;
      if (!vmThread)
      {
        JreThrowNullPointerException();
      }

      [vmThread notifyAll];
    }
  }

  objc_sync_exit(vmThread);
}

- (void)parkForWithLong:(int64_t)long
{
  vmThread = self->vmThread_;
  objc_sync_enter(vmThread);
  parkState = self->parkState_;
  if (parkState == 1)
  {
    self->parkState_ = 3;
    if (!vmThread)
    {
      JreThrowNullPointerException();
    }

    [vmThread waitWithLong:long / 1000000 withInt:(long % 1000000)];
    if (self->parkState_ == 3)
    {
      self->parkState_ = 1;
    }
  }

  else
  {
    if (parkState != 2)
    {
      v7 = new_JavaLangAssertionError_initWithId_(@"shouldn't happen: attempt to repark");
      objc_exception_throw(v7);
    }

    self->parkState_ = 1;
  }

  objc_sync_exit(vmThread);
}

- (void)parkUntilWithLong:(int64_t)long
{
  vmThread = self->vmThread_;
  objc_sync_enter(vmThread);
  v6 = long - JavaLangSystem_currentTimeMillis();
  if (v6 <= 0)
  {
    self->parkState_ = 1;
  }

  else
  {
    [(JavaLangThread *)self parkForWithLong:1000000 * v6];
  }

  objc_sync_exit(vmThread);
}

+ (id)getDefaultUncaughtExceptionHandler
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  return qword_100556F78;
}

- (id)getUncaughtExceptionHandler
{
  threadDictionary = [self->nsThread_ threadDictionary];
  result = [threadDictionary objectForKey:off_1005538C8[0]];
  if (!result)
  {
    v4 = [threadDictionary objectForKey:off_1005538D0];
    if (v4)
    {
      v5 = (v4 + 72);

      return objc_loadWeak(v5);
    }

    else
    {
      if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10027B634();
      }

      return qword_100556F78;
    }
  }

  return result;
}

- (void)setUncaughtExceptionHandlerWithJavaLangThread_UncaughtExceptionHandler:(id)handler
{
  threadDictionary = [self->nsThread_ threadDictionary];
  v5 = off_1005538C8[0];
  if (handler)
  {

    [threadDictionary setObject:handler forKey:v5];
  }

  else
  {
    v6 = off_1005538C8[0];

    [threadDictionary removeObjectForKey:{v6, v5}];
  }
}

- (void)pushInterruptAction$WithJavaLangRunnable:(id)runnable
{
  interruptActions = self->interruptActions_;
  objc_sync_enter(interruptActions);
  v6 = self->interruptActions_;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)v6 addWithId:runnable];
  objc_sync_exit(interruptActions);
  if (runnable && [(JavaLangThread *)self isInterrupted])
  {

    [runnable run];
  }
}

- (void)popInterruptAction$WithJavaLangRunnable:(id)runnable
{
  interruptActions = self->interruptActions_;
  objc_sync_enter(interruptActions);
  v6 = self->interruptActions_;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilList *)v6 removeWithInt:[(JavaUtilList *)v6 size]- 1]!= runnable)
  {
    v14 = JreStrcat("$@$@", v7, v8, v9, v10, v11, v12, v13, @"Expected ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  objc_sync_exit(interruptActions);
}

+ (id)getAllStackTraces
{
  if (atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire))
  {
  }

  else
  {
    sub_10027B634();
  }

  return JavaUtilCollections_emptyMap();
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangThread;
  [(JavaLangThread *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaLangThread;
  [(JavaLangThread *)&v3 __javaClone];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100556F78, [JavaLangThread_SystemUncaughtExceptionHandler alloc]);
    +[JavaLangThread initializeThreadClass]_0();
    atomic_store(1u, &JavaLangThread__initialized);
  }
}

+ (JavaLangThread)initializeThreadClass
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  [+[NSThread currentThread](NSThread setName:"setName:", @"main"];
  if (!qword_100556F80)
  {
    qword_100556F80 = objc_alloc_init(JavaLangThreadGroup);
    v0 = [JavaLangThreadGroup alloc];
    qword_100556F88 = [(JavaLangThreadGroup *)v0 initWithJavaLangThreadGroup:qword_100556F80 withNSString:@"main"];
    v1 = qword_100556F80;
    v2 = qword_100556F88;
  }

  v3 = [JavaLangThread alloc];
  v4 = qword_100556F88;

  return [(JavaLangThread *)v3 initWithJavaLangThreadGroup:v4 withNSString:@"main" withBoolean:0];
}

+ (uint64_t)getNextThreadId
{
  if ((atomic_load_explicit(&JavaLangThread__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10027B634();
  }

  v0 = JavaLangThread_class_();
  objc_sync_enter(v0);
  v1 = ++qword_1005538D8;
  objc_sync_exit(v0);
  return v1;
}

@end