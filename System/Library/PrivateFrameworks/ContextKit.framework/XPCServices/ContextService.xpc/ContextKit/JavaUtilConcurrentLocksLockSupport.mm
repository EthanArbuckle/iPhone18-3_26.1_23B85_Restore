@interface JavaUtilConcurrentLocksLockSupport
+ (void)initialize;
@end

@implementation JavaUtilConcurrentLocksLockSupport

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    Unsafe = SunMiscUnsafe_getUnsafe();
    JreStrongAssign(&qword_100554AA8, Unsafe);
    if (!qword_100554AA8)
    {
      JreThrowNullPointerException();
    }

    qword_100554AB0 = [qword_100554AA8 objectFieldOffsetWithJavaLangReflectField:{objc_msgSend(JavaLangThread_class_(), "getDeclaredField:", @"parkBlocker"}];
    atomic_store(1u, JavaUtilConcurrentLocksLockSupport__initialized);
  }
}

@end