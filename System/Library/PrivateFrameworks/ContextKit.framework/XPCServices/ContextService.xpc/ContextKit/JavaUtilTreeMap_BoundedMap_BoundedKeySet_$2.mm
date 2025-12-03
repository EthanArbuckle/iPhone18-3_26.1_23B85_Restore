@interface JavaUtilTreeMap_BoundedMap_BoundedKeySet_$2
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedKeySet_$2

- (id)next
{
  if (*(objc_loadWeak(&self->this$2_->this$0_) + 32) == 1)
  {
    stepBackward = [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)self stepBackward];
  }

  else
  {
    stepBackward = [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)self stepForward];
  }

  return stepBackward[4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedKeySet__2;
  [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)&v3 dealloc];
}

@end