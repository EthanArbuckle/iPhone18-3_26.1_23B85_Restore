@interface DalvikSystemCloseGuard
+ (id)getReporter;
+ (void)initialize;
+ (void)setEnabledWithBoolean:(BOOL)boolean;
- (void)dealloc;
- (void)openWithNSString:(id)string;
- (void)warnIfOpen;
@end

@implementation DalvikSystemCloseGuard

+ (void)setEnabledWithBoolean:(BOOL)boolean
{
  if ((atomic_load_explicit(DalvikSystemCloseGuard__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D22BC();
  }

  atomic_store(boolean, byte_100554E50);
}

+ (id)getReporter
{
  if ((atomic_load_explicit(DalvikSystemCloseGuard__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D22BC();
  }

  return atomic_load(&qword_100554E58);
}

- (void)openWithNSString:(id)string
{
  if (!string)
  {
    v12 = new_JavaLangNullPointerException_initWithNSString_(@"closer == null");
    objc_exception_throw(v12);
  }

  if (qword_100554E48 != self)
  {
    v9 = atomic_load(byte_100554E50);
    if (v9)
    {
      v10 = JreStrcat("$$$", a2, string, v3, v4, v5, v6, v7, @"Explicit termination method '");
      v11 = new_JavaLangThrowable_initWithNSString_(v10);

      JreStrongAssignAndConsume(&self->allocationSite_, v11);
    }
  }
}

- (void)warnIfOpen
{
  if (self->allocationSite_)
  {
    v3 = atomic_load(byte_100554E50);
    if (v3)
    {
      v4 = atomic_load(&qword_100554E58);
      if (!v4)
      {
        JreThrowNullPointerException();
      }

      allocationSite = self->allocationSite_;

      [v4 reportWithNSString:@"A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks." withJavaLangThrowable:allocationSite];
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DalvikSystemCloseGuard;
  [(DalvikSystemCloseGuard *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554E48, [DalvikSystemCloseGuard alloc]);
    JreVolatileStrongAssignAndConsume(&qword_100554E58, [DalvikSystemCloseGuard_DefaultReporter alloc]);
    atomic_store(1u, DalvikSystemCloseGuard__initialized);
  }
}

@end