@interface JavaUtilConcurrentCopyOnWriteArrayList_Slice
- (JavaUtilConcurrentCopyOnWriteArrayList_Slice)initWithNSObjectArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)checkConcurrentModificationWithNSObjectArray:(id)array;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList_Slice

- (JavaUtilConcurrentCopyOnWriteArrayList_Slice)initWithNSObjectArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->expectedElements_, array);
  self->from_ = int;
  self->to_ = withInt;
  return self;
}

- (void)checkConcurrentModificationWithNSObjectArray:(id)array
{
  if (self->expectedElements_ != array)
  {
    v3 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v3);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList_Slice;
  [(JavaUtilConcurrentCopyOnWriteArrayList_Slice *)&v3 dealloc];
}

@end