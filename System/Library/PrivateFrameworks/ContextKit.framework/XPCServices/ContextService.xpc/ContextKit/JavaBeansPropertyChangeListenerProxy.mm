@interface JavaBeansPropertyChangeListenerProxy
- (JavaBeansPropertyChangeListenerProxy)initWithNSString:(id)a3 withJavaBeansPropertyChangeListener:(id)a4;
- (void)dealloc;
- (void)propertyChangeWithJavaBeansPropertyChangeEvent:(id)a3;
@end

@implementation JavaBeansPropertyChangeListenerProxy

- (JavaBeansPropertyChangeListenerProxy)initWithNSString:(id)a3 withJavaBeansPropertyChangeListener:(id)a4
{
  JavaUtilEventListenerProxy_initWithJavaUtilEventListener_(self, a4);
  JreStrongAssign(&self->propertyName_, a3);
  return self;
}

- (void)propertyChangeWithJavaBeansPropertyChangeEvent:(id)a3
{
  v4 = [(JavaUtilEventListenerProxy *)self getListener];
  v5 = JavaBeansPropertyChangeListener_class_();
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:v4] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [v4 propertyChangeWithJavaBeansPropertyChangeEvent:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaBeansPropertyChangeListenerProxy;
  [(JavaUtilEventListenerProxy *)&v3 dealloc];
}

@end