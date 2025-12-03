@interface JavaUtilConcurrentCopyOnWriteArrayList_CowSubList
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)isEmpty;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (JavaUtilConcurrentCopyOnWriteArrayList_CowSubList)subListWithInt:(int)int withInt:(int)withInt;
- (id)getWithInt:(int)int;
- (id)listIteratorWithInt:(int)int;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (int)size;
- (void)__javaClone;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentCopyOnWriteArrayList_CowSubList

- (int)size
{
  v2 = atomic_load(&self->slice_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 20) - *(v2 + 16);
}

- (BOOL)isEmpty
{
  v2 = atomic_load(&self->slice_);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 16) == *(v2 + 20);
}

- (id)getWithInt:(int)int
{
  v3 = atomic_load(&self->slice_);
  v4 = atomic_load(&self->this$0_->elements_);
  if (!v3 || ([v3 checkElementIndexWithInt:?], objc_msgSend(v3, "checkConcurrentModificationWithNSObjectArray:", v4), !v4))
  {
    JreThrowNullPointerException();
  }

  v6 = *(v4 + 8);
  v7 = (v3[4] + int);
  if (v7 < 0 || v7 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v7);
  }

  return *(v4 + 24 + 8 * v7);
}

- (id)listIteratorWithInt:(int)int
{
  v3 = atomic_load(&self->slice_);
  v4 = atomic_load(&self->this$0_->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 checkPositionIndexWithInt:?];
  [v3 checkConcurrentModificationWithNSObjectArray:v4];
  v8 = v3[2];
  v6 = [JavaUtilConcurrentCopyOnWriteArrayList_CowIterator alloc];
  v6->index_ = 0;
  JreStrongAssign(&v6->snapshot_, v4);
  *&v6->from_ = v8;
  v6->index_ = v8;
  result = v6;
  *(result + 6) = *(v3 + 4) + int;
  return result;
}

- (int)indexOfWithId:(id)id
{
  v3 = atomic_load(&self->slice_);
  v4 = atomic_load(&self->this$0_->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 checkConcurrentModificationWithNSObjectArray:v4];
  result = JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(id, v4, *(v3 + 16), *(v3 + 20));
  if (result != -1)
  {
    result -= *(v3 + 16);
  }

  return result;
}

- (int)lastIndexOfWithId:(id)id
{
  v3 = atomic_load(&self->slice_);
  v4 = atomic_load(&self->this$0_->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 checkConcurrentModificationWithNSObjectArray:v4];
  result = JavaUtilConcurrentCopyOnWriteArrayList_lastIndexOfWithId_withNSObjectArray_withInt_withInt_(id, v4, v3[4], v3[5]);
  if (result != -1)
  {
    result -= v3[4];
  }

  return result;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  v3 = atomic_load(&self->slice_);
  v4 = atomic_load(&self->this$0_->elements_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 checkConcurrentModificationWithNSObjectArray:v4];
  v6 = v3[4];
  v7 = v3[5];

  return JavaUtilConcurrentCopyOnWriteArrayList_containsAllWithJavaUtilCollection_withNSObjectArray_withInt_withInt_(collection, v4, v6, v7);
}

- (JavaUtilConcurrentCopyOnWriteArrayList_CowSubList)subListWithInt:(int)int withInt:(int)withInt
{
  v7 = atomic_load(&self->slice_);
  if (int < 0 || int > withInt || [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self size]< withInt)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self size];
    v20 = JreStrcat("$I$I$I", v13, v14, v15, v16, v17, v18, v19, @"from=");
    v21 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = self->this$0_;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = [JavaUtilConcurrentCopyOnWriteArrayList_CowSubList alloc];
  JavaUtilConcurrentCopyOnWriteArrayList_CowSubList_initWithJavaUtilConcurrentCopyOnWriteArrayList_withNSObjectArray_withInt_withInt_(v11, v8, v9, v10 + int, v10 + withInt);

  return v11;
}

- (void)clear
{
  v3 = self->this$0_;
  objc_sync_enter(v3);
  p_slice = &self->slice_;
  v5 = atomic_load(&self->slice_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = atomic_load(&self->this$0_->elements_);
  [v5 checkConcurrentModificationWithNSObjectArray:v6];
  v7 = self->this$0_;
  v8 = atomic_load(p_slice);
  v9 = *(v8 + 16);
  v10 = atomic_load(p_slice);
  sub_1002897FC(v7, v9, *(v10 + 20));
  v11 = atomic_load(&self->this$0_->elements_);
  v12 = atomic_load(p_slice);
  v13 = *(v12 + 16);
  v14 = atomic_load(p_slice);
  v15 = *(v14 + 16);
  v16 = [JavaUtilConcurrentCopyOnWriteArrayList_Slice alloc];
  JreStrongAssign(&v16->expectedElements_, v11);
  v16->from_ = v13;
  v16->to_ = v15;
  JreVolatileStrongAssignAndConsume(p_slice, v16);

  objc_sync_exit(v3);
}

- (BOOL)addWithId:(id)id
{
  v5 = self->this$0_;
  objc_sync_enter(v5);
  v6 = atomic_load(&self->slice_);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 20);
  v8 = atomic_load(&self->slice_);
  [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self addWithInt:(v7 - *(v8 + 16)) withId:id];
  objc_sync_exit(v5);
  return 1;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  v5 = self->this$0_;
  objc_sync_enter(v5);
  LOBYTE(collection) = [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self addAllWithInt:[(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self size] withJavaUtilCollection:collection];
  objc_sync_exit(v5);
  return collection;
}

- (BOOL)removeWithId:(id)id
{
  v5 = self->this$0_;
  objc_sync_enter(v5);
  v6 = [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self indexOfWithId:id];
  if (v6 != -1)
  {
    [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)self removeWithInt:v6];
  }

  objc_sync_exit(v5);
  return v6 != -1;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  v5 = self->this$0_;
  objc_sync_enter(v5);
  p_slice = &self->slice_;
  v7 = atomic_load(&self->slice_);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = atomic_load(&self->this$0_->elements_);
  [v7 checkConcurrentModificationWithNSObjectArray:v8];
  v9 = self->this$0_;
  v10 = atomic_load(p_slice);
  v11 = *(v10 + 16);
  v12 = atomic_load(p_slice);
  v13 = sub_1002899CC(v9, collection, 0, v11, *(v12 + 20));
  v14 = atomic_load(&self->this$0_->elements_);
  v15 = atomic_load(p_slice);
  v16 = *(v15 + 16);
  v17 = atomic_load(p_slice);
  v18 = *(v17 + 20);
  v19 = [JavaUtilConcurrentCopyOnWriteArrayList_Slice alloc];
  JreStrongAssign(&v19->expectedElements_, v14);
  v19->from_ = v16;
  v19->to_ = v18 - v13;
  JreVolatileStrongAssignAndConsume(p_slice, v19);
  objc_sync_exit(v5);
  return v13 != 0;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  v5 = self->this$0_;
  objc_sync_enter(v5);
  p_slice = &self->slice_;
  v7 = atomic_load(&self->slice_);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = atomic_load(&self->this$0_->elements_);
  [v7 checkConcurrentModificationWithNSObjectArray:v8];
  v9 = self->this$0_;
  v10 = atomic_load(p_slice);
  v11 = *(v10 + 16);
  v12 = atomic_load(p_slice);
  v13 = sub_1002899CC(v9, collection, 1, v11, *(v12 + 20));
  v14 = atomic_load(&self->this$0_->elements_);
  v15 = atomic_load(p_slice);
  v16 = *(v15 + 16);
  v17 = atomic_load(p_slice);
  v18 = *(v17 + 20);
  v19 = [JavaUtilConcurrentCopyOnWriteArrayList_Slice alloc];
  JreStrongAssign(&v19->expectedElements_, v14);
  v19->from_ = v16;
  v19->to_ = v18 - v13;
  JreVolatileStrongAssignAndConsume(p_slice, v19);
  objc_sync_exit(v5);
  return v13 != 0;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->slice_);
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList_CowSubList;
  [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentCopyOnWriteArrayList_CowSubList;
  [(JavaUtilConcurrentCopyOnWriteArrayList_CowSubList *)&v3 __javaClone];
  JreRetainVolatile(&self->slice_);
}

@end