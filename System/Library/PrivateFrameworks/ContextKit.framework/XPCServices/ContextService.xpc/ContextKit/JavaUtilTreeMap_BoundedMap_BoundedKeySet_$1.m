@interface JavaUtilTreeMap_BoundedMap_BoundedKeySet_$1
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedKeySet_$1

- (id)next
{
  if (*(objc_loadWeak(&self->this$2_->this$0_) + 32) == 1)
  {
    v3 = [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)self stepForward];
  }

  else
  {
    v3 = [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)self stepBackward];
  }

  return v3[4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedKeySet__1;
  [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)&v3 dealloc];
}

@end