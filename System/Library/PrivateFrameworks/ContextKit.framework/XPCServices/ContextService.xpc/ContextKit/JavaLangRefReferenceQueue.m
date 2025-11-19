@interface JavaLangRefReferenceQueue
+ (void)initialize;
- (JavaLangRefReferenceQueue)init;
- (id)poll;
- (id)removeWithLong:(int64_t)a3;
- (void)dealloc;
- (void)enqueueWithJavaLangRefReference:(id)a3;
@end

@implementation JavaLangRefReferenceQueue

- (JavaLangRefReferenceQueue)init
{
  v3 = new_JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(0, 0);
  JreStrongAssignAndConsume(&self->SENTINEL_, v3);
  return self;
}

- (id)poll
{
  objc_sync_enter(self);
  p_head = &self->head_;
  head = self->head_;
  if (head)
  {
    SENTINEL = self->SENTINEL_;
    v6 = atomic_load(head + 3);
    if (SENTINEL == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = atomic_load(&(*p_head)->queueNext_);
    }

    JreStrongAssign(p_head, v7);
    JreVolatileStrongAssign(head + 3, 0);
  }

  objc_sync_exit(self);
  return head;
}

- (id)removeWithLong:(int64_t)a3
{
  objc_sync_enter(self);
  if (a3 < 0)
  {
    v19 = JreStrcat("$J", v5, v6, v7, v8, v9, v10, v11, @"timeout < 0: ");
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  if (!self->head_)
  {
    if ((a3 - 0x8637BD05AF7) >= 0xFFFFF79C842FA50ALL)
    {
      v14 = JavaLangSystem_nanoTime();
      v15 = 0;
      for (i = 1000000 * a3; ; v15 = (v14 - v17 + i) % 0xF4240)
      {
        [(JavaLangRefReferenceQueue *)self waitWithLong:a3 withInt:v15];
        if (self->head_)
        {
          break;
        }

        v17 = JavaLangSystem_nanoTime();
        v18 = v14 - v17 + i;
        if (v18 < 1)
        {
          break;
        }

        a3 = v18 / 0xF4240uLL;
      }
    }

    else
    {
      do
      {
        [(JavaLangRefReferenceQueue *)self waitWithLong:0];
      }

      while (!self->head_);
    }
  }

  v12 = [(JavaLangRefReferenceQueue *)self poll];
  objc_sync_exit(self);
  return v12;
}

- (void)enqueueWithJavaLangRefReference:(id)a3
{
  objc_sync_enter(self);
  head = self->head_;
  if (head)
  {
    if (a3)
    {
      JreVolatileStrongAssign(a3 + 3, head);
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  JreVolatileStrongAssign(a3 + 3, self->SENTINEL_);
LABEL_6:
  JreStrongAssign(&self->head_, a3);
  [(JavaLangRefReferenceQueue *)self notify];

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangRefReferenceQueue;
  [(JavaLangRefReferenceQueue *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssign(&JavaLangRefReferenceQueue_unenqueued_, 0);
    atomic_store(1u, JavaLangRefReferenceQueue__initialized);
  }
}

@end