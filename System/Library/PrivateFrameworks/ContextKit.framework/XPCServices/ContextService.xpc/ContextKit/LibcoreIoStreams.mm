@interface LibcoreIoStreams
+ (void)initialize;
@end

@implementation LibcoreIoStreams

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilConcurrentAtomicAtomicReference_init();
    JreStrongAssignAndConsume(&qword_100556FD0, v2);
    atomic_store(1u, &LibcoreIoStreams__initialized);
  }
}

@end