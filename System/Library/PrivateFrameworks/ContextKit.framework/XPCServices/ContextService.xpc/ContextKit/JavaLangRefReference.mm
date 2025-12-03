@interface JavaLangRefReference
- (JavaLangRefReference)initWithId:(id)id withJavaLangRefReferenceQueue:(id)queue;
- (uint64_t)enqueue;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaLangRefReference

- (JavaLangRefReference)initWithId:(id)id withJavaLangRefReferenceQueue:(id)queue
{
  atomic_store(id, &self->referent_);
  atomic_store(queue, &self->queue_);
  [IOSReference initReferent:self];
  return self;
}

- (uint64_t)enqueue
{
  objc_sync_enter(self);
  v2 = atomic_load(self + 2);
  if (v2 && (v3 = atomic_load(self + 3)) == 0)
  {
    v5 = atomic_load(self + 2);
    [v5 enqueueWithJavaLangRefReference:self];
    atomic_store(0, self + 2);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(self);
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