@interface JavaIoFileDescriptor
+ (void)initialize;
- (void)sync;
@end

@implementation JavaIoFileDescriptor

- (void)sync
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v3 = [LibcoreIoLibcore_os_ isattyWithJavaIoFileDescriptor:self];
  explicit = atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire);
  if (v3)
  {
    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    [LibcoreIoLibcore_os_ tcdrainWithJavaIoFileDescriptor:self];
  }

  else
  {
    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    [LibcoreIoLibcore_os_ fsyncWithJavaIoFileDescriptor:self];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaIoFileDescriptor alloc];
    v2->descriptor_ = -1;
    JreStrongAssignAndConsume(&JavaIoFileDescriptor_in_, v2);
    v3 = [JavaIoFileDescriptor alloc];
    v3->descriptor_ = -1;
    JreStrongAssignAndConsume(&JavaIoFileDescriptor_out_, v3);
    v4 = [JavaIoFileDescriptor alloc];
    v4->descriptor_ = -1;
    JreStrongAssignAndConsume(&JavaIoFileDescriptor_err_, v4);
    *(JavaIoFileDescriptor_in_ + 8) = 0;
    *(JavaIoFileDescriptor_out_ + 8) = 1;
    *(JavaIoFileDescriptor_err_ + 8) = 2;
    atomic_store(1u, JavaIoFileDescriptor__initialized);
  }
}

@end