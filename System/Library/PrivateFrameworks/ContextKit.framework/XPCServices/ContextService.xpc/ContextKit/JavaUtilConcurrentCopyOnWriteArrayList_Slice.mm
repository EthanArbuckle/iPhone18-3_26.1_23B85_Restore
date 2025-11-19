@interface JavaUtilConcurrentCopyOnWriteArrayList_Slice
- (JavaUtilConcurrentCopyOnWriteArrayList_Slice)initWithNSObjectArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)checkConcurrentModificationWithNSObjectArray:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList_Slice

- (JavaUtilConcurrentCopyOnWriteArrayList_Slice)initWithNSObjectArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  JreStrongAssign(&self->expectedElements_, a3);
  self->from_ = a4;
  self->to_ = a5;
  return self;
}

- (void)checkConcurrentModificationWithNSObjectArray:(id)a3
{
  if (self->expectedElements_ != a3)
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