@interface JavaUtilCollections_CheckedCollection
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (NSString)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (void)clear;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CheckedCollection

- (int)size
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c size];
}

- (BOOL)isEmpty
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c isEmpty];
}

- (BOOL)containsWithId:(id)id
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c containsWithId:id];
}

- (id)iterator
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  iterator = [(JavaUtilCollection *)c iterator];
  if (![JavaUtilListIterator_class_() isInstance:iterator])
  {
    return iterator;
  }

  v5 = JavaUtilListIterator_class_();
  if (iterator && ([v5 isInstance:iterator] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = sub_1001C7E30(iterator, self->type_);

  return v6;
}

- (id)toArray
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c toArray];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c toArrayWithNSObjectArray:array];
}

- (BOOL)addWithId:(id)id
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(id, self->type_);

  return [(JavaUtilCollection *)c addWithId:id];
}

- (BOOL)removeWithId:(id)id
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c removeWithId:id];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c containsAllWithJavaUtilCollection:collection];
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  if (!collection)
  {
    goto LABEL_12;
  }

  toArray = [collection toArray];
  if (!toArray)
  {
    goto LABEL_12;
  }

  v5 = toArray;
  v6 = toArray + 3;
  v7 = &toArray[*(toArray + 2) + 3];
  while (v6 < v7)
  {
    v8 = *v6++;
    JavaUtilCollections_checkTypeWithId_withIOSClass_(v8, self->type_);
  }

  c = self->c_;
  if (!c)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v10 = JavaUtilArrays_asListWithNSObjectArray_(v5);
  v11 = JavaUtilList_class_();
  if (v10 && ([v11 isInstance:v10] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [(JavaUtilCollection *)c addAllWithJavaUtilCollection:v10];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c removeAllWithJavaUtilCollection:collection];
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c retainAllWithJavaUtilCollection:collection];
}

- (void)clear
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilCollection *)c clear];
}

- (NSString)description
{
  c = self->c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedCollection;
  [(JavaUtilCollections_CheckedCollection *)&v3 dealloc];
}

@end