@interface JavaUtilAbstractList_SubAbstractList
- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection;
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (id)getWithInt:(int)int;
- (id)listIteratorWithInt:(int)int;
- (id)removeWithInt:(int)int;
- (id)setWithInt:(int)int withId:(id)id;
- (int)size;
- (void)addWithInt:(int)int withId:(id)id;
- (void)dealloc;
- (void)removeRangeWithInt:(int)int withInt:(int)withInt;
- (void)sizeChangedWithBoolean:(BOOL)boolean;
@end

@implementation JavaUtilAbstractList_SubAbstractList

- (void)addWithInt:(int)int withId:(id)id
{
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v6 = new_JavaUtilConcurrentModificationException_init();
LABEL_9:
    objc_exception_throw(v6);
  }

  if (int < 0 || self->size_ < int)
  {
    v6 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_9;
  }

  [(JavaUtilAbstractList *)fullList addWithInt:(self->offset_ + int) withId:id];
  ++self->size_;
  self->super.modCount_ = self->fullList_->modCount_;
}

- (BOOL)addAllWithInt:(int)int withJavaUtilCollection:(id)collection
{
  fullList = self->fullList_;
  if (!fullList)
  {
    goto LABEL_9;
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v9 = new_JavaUtilConcurrentModificationException_init();
LABEL_12:
    objc_exception_throw(v9);
  }

  if (int < 0 || self->size_ < int)
  {
    v9 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_12;
  }

  v7 = [(JavaUtilAbstractList *)fullList addAllWithInt:(self->offset_ + int) withJavaUtilCollection:?];
  if (v7)
  {
    if (collection)
    {
      self->size_ += [collection size];
      self->super.modCount_ = self->fullList_->modCount_;
      return v7;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  return v7;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  fullList = self->fullList_;
  if (!fullList)
  {
    goto LABEL_7;
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v8 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v8);
  }

  v6 = [(JavaUtilAbstractList *)fullList addAllWithInt:(self->size_ + self->offset_) withJavaUtilCollection:collection];
  if (v6)
  {
    if (collection)
    {
      self->size_ += [collection size];
      self->super.modCount_ = self->fullList_->modCount_;
      return v6;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return v6;
}

- (id)getWithInt:(int)int
{
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v7 = new_JavaUtilConcurrentModificationException_init();
LABEL_11:
    objc_exception_throw(v7);
  }

  if (int < 0 || self->size_ <= int)
  {
    v7 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_11;
  }

  v4 = (self->offset_ + int);
  v5 = self->fullList_;

  return [(JavaUtilAbstractList *)v5 getWithInt:v4];
}

- (id)listIteratorWithInt:(int)int
{
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v10 = new_JavaUtilConcurrentModificationException_init();
LABEL_11:
    objc_exception_throw(v10);
  }

  if (int < 0 || self->size_ < int)
  {
    v10 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_11;
  }

  v5 = [(JavaUtilAbstractList *)fullList listIteratorWithInt:(self->offset_ + int)];
  offset = self->offset_;
  size = self->size_;
  v8 = [JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator alloc];
  JreStrongAssign(&v8->iterator_, v5);
  JreStrongAssign(&v8->subList_, self);
  v8->start_ = offset;
  v8->end_ = size + offset;

  return v8;
}

- (id)removeWithInt:(int)int
{
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v6 = new_JavaUtilConcurrentModificationException_init();
LABEL_9:
    objc_exception_throw(v6);
  }

  if (int < 0 || self->size_ <= int)
  {
    v6 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_9;
  }

  result = [(JavaUtilAbstractList *)fullList removeWithInt:(self->offset_ + int)];
  --self->size_;
  self->super.modCount_ = self->fullList_->modCount_;
  return result;
}

- (void)removeRangeWithInt:(int)int withInt:(int)withInt
{
  v4 = int - withInt;
  if (int != withInt)
  {
    fullList = self->fullList_;
    if (!fullList)
    {
      JreThrowNullPointerException();
    }

    if (self->super.modCount_ != fullList->modCount_)
    {
      v7 = new_JavaUtilConcurrentModificationException_init();
      objc_exception_throw(v7);
    }

    [(JavaUtilAbstractList *)fullList removeRangeWithInt:(self->offset_ + int) withInt:(self->offset_ + withInt)];
    self->size_ += v4;
    self->super.modCount_ = self->fullList_->modCount_;
  }
}

- (id)setWithInt:(int)int withId:(id)id
{
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v8 = new_JavaUtilConcurrentModificationException_init();
LABEL_11:
    objc_exception_throw(v8);
  }

  if (int < 0 || self->size_ <= int)
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_11;
  }

  v5 = (self->offset_ + int);
  v6 = self->fullList_;

  return [(JavaUtilAbstractList *)v6 setWithInt:v5 withId:id];
}

- (int)size
{
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  if (self->super.modCount_ != fullList->modCount_)
  {
    v4 = new_JavaUtilConcurrentModificationException_init();
    objc_exception_throw(v4);
  }

  return self->size_;
}

- (void)sizeChangedWithBoolean:(BOOL)boolean
{
  size = self->size_;
  if (boolean)
  {
    v4 = size + 1;
  }

  else
  {
    v4 = size - 1;
  }

  self->size_ = v4;
  fullList = self->fullList_;
  if (!fullList)
  {
    JreThrowNullPointerException();
  }

  self->super.modCount_ = fullList->modCount_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractList_SubAbstractList;
  [(JavaUtilAbstractList_SubAbstractList *)&v3 dealloc];
}

@end