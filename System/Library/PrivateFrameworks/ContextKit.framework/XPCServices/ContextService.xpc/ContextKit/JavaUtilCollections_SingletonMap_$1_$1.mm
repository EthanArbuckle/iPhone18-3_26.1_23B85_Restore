@interface JavaUtilCollections_SingletonMap_$1_$1
- (JavaUtilCollections_SingletonMap_$1_$1)initWithJavaUtilCollections_SingletonMap_$1:(id)1;
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonMap_$1_$1

- (id)next
{
  if (!self->hasNext_)
  {
    v7 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v7);
  }

  self->hasNext_ = 0;
  v2 = self->this$0_->this$0_;
  k = v2->k_;
  v = v2->v_;
  v5 = [JavaUtilCollections_SingletonMap__1__1__1 alloc];
  JavaUtilMapEntry_initWithId_withId_(v5, k, v);

  return v5;
}

- (JavaUtilCollections_SingletonMap_$1_$1)initWithJavaUtilCollections_SingletonMap_$1:(id)1
{
  JreStrongAssign(&self->this$0_, 1);
  self->hasNext_ = 1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonMap__1__1;
  [(JavaUtilCollections_SingletonMap_$1_$1 *)&v3 dealloc];
}

@end