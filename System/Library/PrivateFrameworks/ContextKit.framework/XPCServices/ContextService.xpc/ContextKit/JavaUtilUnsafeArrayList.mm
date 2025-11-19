@interface JavaUtilUnsafeArrayList
- (BOOL)addWithId:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilUnsafeArrayList

- (BOOL)addWithId:(id)a3
{
  array = self->array_;
  if (!array)
  {
    goto LABEL_7;
  }

  size = self->size_;
  if (size == array->super.size_)
  {
    v7 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_(self->elementType_, 2 * size);
    objc_opt_class();
    if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->array_, 0, v7, 0, self->size_);
    JreStrongAssign(&self->array_, v7);
    array = self->array_;
    if (!array)
    {
LABEL_7:
      JreThrowNullPointerException();
    }
  }

  v8 = self->size_;
  self->size_ = v8 + 1;
  IOSObjectArray_Set(array, v8, a3);
  ++self->super.modCount_;
  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilUnsafeArrayList;
  [(JavaUtilUnsafeArrayList *)&v3 dealloc];
}

@end