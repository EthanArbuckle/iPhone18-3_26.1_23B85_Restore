@interface JavaUtilCollections_SynchronizedList
- (BOOL)isEqual:(id)a3;
- (JavaUtilCollections_SynchronizedList)initWithJavaUtilList:(id)a3;
- (id)listIterator;
- (id)readResolve;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilCollections_SynchronizedList

- (JavaUtilCollections_SynchronizedList)initWithJavaUtilList:(id)a3
{
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(self, a3);
  JreStrongAssign(&self->list_, a3);
  return self;
}

- (BOOL)isEqual:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list isEqual:a3];
  objc_sync_exit(mutex);
  return v7;
}

- (unint64_t)hash
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)list hash];
  objc_sync_exit(mutex);
  return v5;
}

- (int)indexOfWithId:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilList *)list size];
  v8 = [IOSObjectArray arrayWithLength:v7 type:NSObject_class_()];
  [(JavaUtilList *)self->list_ toArrayWithNSObjectArray:v8];
  objc_sync_exit(mutex);
  if (a3)
  {
    if (v7 >= 1)
    {
      v9 = 0;
      while (1)
      {
        size = v8->super.size_;
        if (v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        if ([a3 isEqual:(&v8->elementType_)[v9]])
        {
          break;
        }

        if (v7 == ++v9)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v11) = v9;
      return v11;
    }

LABEL_17:
    LODWORD(v11) = -1;
    return v11;
  }

  if (v7 < 1)
  {
    goto LABEL_17;
  }

  v11 = 0;
  while (1)
  {
    v12 = v8->super.size_;
    if (v11 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v11);
    }

    if (!(&v8->elementType_)[v11])
    {
      return v11;
    }

    if (v7 == ++v11)
    {
      goto LABEL_17;
    }
  }
}

- (int)lastIndexOfWithId:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v7) = [(JavaUtilList *)list size];
  v8 = [IOSObjectArray arrayWithLength:v7 type:NSObject_class_()];
  [(JavaUtilList *)self->list_ toArrayWithNSObjectArray:v8];
  objc_sync_exit(mutex);
  if (a3)
  {
    v9 = v7 - 1;
    while (1)
    {
      v7 = (v7 - 1);
      if (v7 < 0)
      {
        break;
      }

      size = v8->super.size_;
      if (size <= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      v11 = [a3 isEqual:(&v8->elementType_)[v9-- & 0x7FFFFFFF]];
      if (v11)
      {
        return v7;
      }
    }
  }

  else
  {
    v12 = v7 - 1;
    while (1)
    {
      v7 = (v7 - 1);
      if (v7 < 0)
      {
        break;
      }

      v13 = v8->super.size_;
      if (v13 <= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v7);
      }

      if (!(&v8->elementType_)[v12-- & 0x7FFFFFFF])
      {
        return v7;
      }
    }
  }

  LODWORD(v7) = -1;
  return v7;
}

- (id)listIterator
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)list listIterator];
  objc_sync_exit(mutex);
  return v5;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  mutex = self->super.mutex_;
  objc_sync_enter(mutex);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];

  objc_sync_exit(mutex);
}

- (id)readResolve
{
  if (![JavaUtilRandomAccess_class_() isInstance:self->list_])
  {
    return self;
  }

  list = self->list_;
  mutex = self->super.mutex_;
  v5 = [JavaUtilCollections_SynchronizedRandomAccessList alloc];
  JavaUtilCollections_SynchronizedList_initWithJavaUtilList_withId_(&v5->super.super.super.isa, list, mutex);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SynchronizedList;
  [(JavaUtilCollections_SynchronizedCollection *)&v3 dealloc];
}

@end