@interface JavaUtilConcurrentConcurrentHashMap_TreeBin
+ (void)initialize;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_TreeBin

- (void)dealloc
{
  JreReleaseVolatile(&self->first_);
  JreReleaseVolatile(&self->waiter_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_TreeBin;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_TreeBin;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 __javaClone];
  JreRetainVolatile(&self->first_);
  JreRetainVolatile(&self->waiter_);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    Unsafe = SunMiscUnsafe_getUnsafe();
    JreStrongAssign(&qword_100554D30, Unsafe);
    v3 = JavaUtilConcurrentConcurrentHashMap_TreeBin_class_();
    if (!qword_100554D30)
    {
      JreThrowNullPointerException();
    }

    qword_100554D38 = [qword_100554D30 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(v3, "getDeclaredField:", @"lockState"}];
    atomic_store(1u, JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized);
  }
}

@end