@interface JavaUtilTreeMap_BoundedMap_BoundedEntrySet_$1
- (id)next;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedEntrySet_$1

- (id)next
{
  if (*(objc_loadWeak(&self->this$2_->this$0_) + 32) == 1)
  {

    return [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)self stepForward];
  }

  else
  {

    return [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)self stepBackward];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedEntrySet__1;
  [(JavaUtilTreeMap_BoundedMap_BoundedIterator *)&v3 dealloc];
}

@end