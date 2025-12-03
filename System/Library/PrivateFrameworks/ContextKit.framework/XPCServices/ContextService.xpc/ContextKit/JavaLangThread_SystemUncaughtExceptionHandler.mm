@interface JavaLangThread_SystemUncaughtExceptionHandler
- (void)uncaughtExceptionWithJavaLangThread:(id)thread withJavaLangThrowable:(id)throwable;
@end

@implementation JavaLangThread_SystemUncaughtExceptionHandler

- (void)uncaughtExceptionWithJavaLangThread:(id)thread withJavaLangThrowable:(id)throwable
{
  objc_sync_enter(self);
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v7 = JavaLangSystem_err_;
  if (JavaLangSystem_err_)
  {
    v8 = thread == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([thread getName], objc_msgSend(v7, "printWithNSString:", JreStrcat("$$$", v9, v10, v11, v12, v13, v14, v15, @"Exception in thread ")), !throwable))
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [throwable printStackTraceWithJavaIoPrintStream:JavaLangSystem_err_];

  objc_sync_exit(self);
}

@end