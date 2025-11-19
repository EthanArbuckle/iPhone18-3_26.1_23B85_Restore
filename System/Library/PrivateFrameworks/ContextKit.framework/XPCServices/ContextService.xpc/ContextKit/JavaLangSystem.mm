@interface JavaLangSystem
+ (id)getSecurityManager;
+ (id)lineSeparator;
+ (int)identityHashCodeWithId:(id)a3;
+ (uint64_t)setTimeInfoConsts;
+ (void)initialize;
+ (void)runFinalization;
+ (void)runFinalizersOnExitWithBoolean:(BOOL)a3;
@end

@implementation JavaLangSystem

+ (int)identityHashCodeWithId:(id)a3
{
  v3 = a3;
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return v3;
}

+ (id)getSecurityManager
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return 0;
}

+ (id)lineSeparator
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return @"\n";
}

+ (void)runFinalization
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }
}

+ (void)runFinalizersOnExitWithBoolean:(BOOL)a3
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(JavaIoFileDescriptor__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6F4();
    }

    v2 = new_JavaIoFileOutputStream_initWithJavaIoFileDescriptor_(JavaIoFileDescriptor_err_);
    v3 = new_JavaIoPrintStream_initWithJavaIoOutputStream_(v2);
    JreStrongAssignAndConsume(&JavaLangSystem_err_, v3);
    if ((atomic_load_explicit(JavaIoFileDescriptor__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6F4();
    }

    v4 = new_JavaIoFileOutputStream_initWithJavaIoFileDescriptor_(JavaIoFileDescriptor_out_);
    v5 = new_JavaIoPrintStream_initWithJavaIoOutputStream_(v4);
    JreStrongAssignAndConsume(&JavaLangSystem_out_, v5);
    if ((atomic_load_explicit(JavaIoFileDescriptor__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6F4();
    }

    v6 = new_JavaIoFileInputStream_initWithJavaIoFileDescriptor_(JavaIoFileDescriptor_in_);
    v7 = new_JavaIoBufferedInputStream_initWithJavaIoInputStream_(v6);
    JreStrongAssignAndConsume(&JavaLangSystem_in_, v7);
    +[JavaLangSystem setTimeInfoConsts]_0();
    atomic_store(1u, JavaLangSystem__initialized);
  }
}

+ (uint64_t)setTimeInfoConsts
{
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  return mach_timebase_info(&dword_100554BE8);
}

@end