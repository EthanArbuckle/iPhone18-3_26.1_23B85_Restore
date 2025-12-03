@interface LibcoreIoGaiException
- (LibcoreIoGaiException)initWithNSString:(id)string withInt:(int)int;
- (LibcoreIoGaiException)initWithNSString:(id)string withInt:(int)int withJavaLangThrowable:(id)throwable;
- (id)getMessage;
- (id)rethrowAsUnknownHostExceptionWithNSString:(id)string;
- (void)dealloc;
@end

@implementation LibcoreIoGaiException

- (LibcoreIoGaiException)initWithNSString:(id)string withInt:(int)int
{
  JavaLangRuntimeException_init(self, a2);
  JreStrongAssign(&self->error_, string);
  *(&self->super.super.super.rawFrameCount + 1) = int;
  return self;
}

- (LibcoreIoGaiException)initWithNSString:(id)string withInt:(int)int withJavaLangThrowable:(id)throwable
{
  JavaLangRuntimeException_initWithJavaLangThrowable_(self, throwable);
  JreStrongAssign(&self->error_, string);
  *(&self->super.super.super.rawFrameCount + 1) = int;
  return self;
}

- (id)getMessage
{
  if (!LibcoreIoOsConstants_gaiNameWithInt_(*(&self->super.super.super.rawFrameCount + 1)))
  {
    v18 = *(&self->super.super.super.rawFrameCount + 1);
    JreStrcat("$I", v3, v4, v5, v6, v7, v8, v9, @"GAI_ error ");
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ gai_strerrorWithInt:*(&self->super.super.super.rawFrameCount + 1)];
  return JreStrcat("$$$$$C", v10, v11, v12, v13, v14, v15, v16, *&self->error_);
}

- (id)rethrowAsUnknownHostExceptionWithNSString:(id)string
{
  v4 = new_JavaNetUnknownHostException_initWithNSString_(string);
  [(JavaLangThrowable *)v4 initCauseWithJavaLangThrowable:self];
  objc_exception_throw(v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoGaiException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end