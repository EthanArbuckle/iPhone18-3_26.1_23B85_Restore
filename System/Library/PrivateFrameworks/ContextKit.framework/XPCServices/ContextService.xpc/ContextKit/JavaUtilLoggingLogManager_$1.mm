@interface JavaUtilLoggingLogManager_$1
- (JavaUtilLoggingLogManager_$1)initWithJavaUtilLoggingLogManager:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilLoggingLogManager_$1

- (JavaUtilLoggingLogManager_$1)initWithJavaUtilLoggingLogManager:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  JavaLangThread_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLogManager__1;
  [(JavaLangThread *)&v3 dealloc];
}

@end