@interface LibcoreIoLibcore
+ (void)initialize;
@end

@implementation LibcoreIoLibcore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_LibcoreIoPosix_init();
    JreStrongAssignAndConsume(&LibcoreIoLibcore_os_, v2);
    atomic_store(1u, LibcoreIoLibcore__initialized);
  }
}

@end