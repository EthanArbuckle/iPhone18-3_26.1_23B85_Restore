@interface LibcoreIoErrnoException
- (LibcoreIoErrnoException)initWithNSString:(id)string withInt:(int)int;
- (LibcoreIoErrnoException)initWithNSString:(id)string withInt:(int)int withJavaLangThrowable:(id)throwable;
- (id)getMessage;
- (id)rethrowAsIOException;
- (void)dealloc;
@end

@implementation LibcoreIoErrnoException

- (LibcoreIoErrnoException)initWithNSString:(id)string withInt:(int)int
{
  JavaLangException_init(self, a2);
  JreStrongAssign(&self->errno__, string);
  *(&self->super.super.rawFrameCount + 1) = int;
  return self;
}

- (LibcoreIoErrnoException)initWithNSString:(id)string withInt:(int)int withJavaLangThrowable:(id)throwable
{
  JavaLangException_initWithJavaLangThrowable_(self, throwable);
  JreStrongAssign(&self->errno__, string);
  *(&self->super.super.rawFrameCount + 1) = int;
  return self;
}

- (id)getMessage
{
  if (!LibcoreIoOsConstants_errnoNameWithInt_(*(&self->super.super.rawFrameCount + 1)))
  {
    v18 = *(&self->super.super.rawFrameCount + 1);
    JreStrcat("$I", v3, v4, v5, v6, v7, v8, v9, @"errno ");
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ strerrorWithInt:*(&self->super.super.rawFrameCount + 1)];
  return JreStrcat("$$$$$C", v10, v11, v12, v13, v14, v15, v16, *&self->errno__);
}

- (id)rethrowAsIOException
{
  v3 = new_JavaIoIOException_initWithNSString_([(LibcoreIoErrnoException *)self getMessage]);
  [(JavaLangThrowable *)v3 initCauseWithJavaLangThrowable:self];
  objc_exception_throw(v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoErrnoException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end