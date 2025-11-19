@interface JavaUtilCollections_SingletonSet_$1
- (JavaUtilCollections_SingletonSet_$1)initWithJavaUtilCollections_SingletonSet:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonSet_$1

- (id)next
{
  if (!self->hasNext_)
  {
    v3 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v3);
  }

  self->hasNext_ = 0;
  return self->this$0_->element_;
}

- (JavaUtilCollections_SingletonSet_$1)initWithJavaUtilCollections_SingletonSet:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->hasNext_ = 1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonSet__1;
  [(JavaUtilCollections_SingletonSet_$1 *)&v3 dealloc];
}

@end