@interface JavaLangRefReference
- (JavaLangRefReference)initWithId:(id)a3 withJavaLangRefReferenceQueue:(id)a4;
- (uint64_t)enqueue;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaLangRefReference

- (JavaLangRefReference)initWithId:(id)a3 withJavaLangRefReferenceQueue:(id)a4
{
  atomic_store(a3, &self->referent_);
  atomic_store(a4, &self->queue_);
  [IOSReference initReferent:self];
  return self;
}

- (uint64_t)enqueue
{
  objc_sync_enter(a1);
  v2 = atomic_load(a1 + 2);
  if (v2 && (v3 = atomic_load(a1 + 3)) == 0)
  {
    v5 = atomic_load(a1 + 2);
    [v5 enqueueWithJavaLangRefReference:a1];
    atomic_store(0, a1 + 2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(a1);
  return v4;
}

- (void)dealloc
{
  [(JavaLangRefReference *)self clear];
  JreReleaseVolatile(&self->queueNext_);
  JreReleaseVolatile(&self->pendingNext_);
  v3.receiver = self;
  v3.super_class = JavaLangRefReference;
  [(JavaLangRefReference *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaLangRefReference;
  [(JavaLangRefReference *)&v3 __javaClone];
  JreRetainVolatile(&self->queueNext_);
  JreRetainVolatile(&self->pendingNext_);
}

@end