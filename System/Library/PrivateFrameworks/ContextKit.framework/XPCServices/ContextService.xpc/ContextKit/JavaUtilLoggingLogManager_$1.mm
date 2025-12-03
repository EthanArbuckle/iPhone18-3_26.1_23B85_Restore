@interface JavaUtilLoggingLogManager_$1
- (JavaUtilLoggingLogManager_$1)initWithJavaUtilLoggingLogManager:(id)manager;
- (void)dealloc;
@end

@implementation JavaUtilLoggingLogManager_$1

- (JavaUtilLoggingLogManager_$1)initWithJavaUtilLoggingLogManager:(id)manager
{
  JreStrongAssign(&self->this$0_, manager);
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