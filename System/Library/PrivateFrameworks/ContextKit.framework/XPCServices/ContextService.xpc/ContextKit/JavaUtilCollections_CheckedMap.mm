@interface JavaUtilCollections_CheckedMap
- (BOOL)containsKeyWithId:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)entrySet;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)a3;
@end

@implementation JavaUtilCollections_CheckedMap

- (int)size
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m size];
}

- (BOOL)isEmpty
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEmpty];
}

- (BOOL)containsKeyWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsKeyWithId:a3];
}

- (BOOL)containsValueWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m containsValueWithId:a3];
}

- (id)getWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m getWithId:a3];
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  JavaUtilCollections_checkTypeWithId_withIOSClass_(a3, self->keyType_);
  JavaUtilCollections_checkTypeWithId_withIOSClass_(a4, self->valueType_);

  return [(JavaUtilMap *)m putWithId:a3 withId:a4];
}

- (id)removeWithId:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m removeWithId:a3];
}

- (void)putAllWithJavaUtilMap:(id)a3
{
  if (!a3)
  {
    goto LABEL_20;
  }

  v5 = [a3 size];
  if (v5)
  {
    v6 = v5;
    v7 = [IOSObjectArray arrayWithLength:v5 type:JavaUtilMap_Entry_class_()];
    v8 = [a3 entrySet];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = [v8 iterator];
    if (v6 >= 1)
    {
      v10 = v9;
      if (v9)
      {
        v11 = 0;
        v12 = v6;
        do
        {
          v13 = [v10 next];
          if (!v13)
          {
            goto LABEL_20;
          }

          v14 = v13;
          JavaUtilCollections_checkTypeWithId_withIOSClass_([v13 getKey], self->keyType_);
          JavaUtilCollections_checkTypeWithId_withIOSClass_([v14 getValue], self->valueType_);
          IOSObjectArray_Set(v7, v11++, v14);
        }

        while (v12 != v11);
        v15 = 0;
        for (i = v7; ; i = (i + 8))
        {
          m = self->m_;
          if (!m)
          {
            break;
          }

          size = v7->super.size_;
          if (v15 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v15);
          }

          elementType = i->elementType_;
          if (!elementType)
          {
            break;
          }

          v20 = [(IOSClass *)elementType getKey];
          v21 = v7->super.size_;
          if (v15 >= v21)
          {
            IOSArray_throwOutOfBoundsWithMsg(v21, v15);
          }

          v22 = i->elementType_;
          if (!v22)
          {
            break;
          }

          [(JavaUtilMap *)m putWithId:v20 withId:[(IOSClass *)v22 getValue]];
          if (v12 == ++v15)
          {
            return;
          }
        }
      }

LABEL_20:
      JreThrowNullPointerException();
    }
  }
}

- (void)clear
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)m clear];
}

- (id)keySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m keySet];
}

- (id)values
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m values];
}

- (id)entrySet
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilMap *)m entrySet];
  valueType = self->valueType_;
  v6 = [JavaUtilCollections_CheckedMap_CheckedEntrySet alloc];
  JreStrongAssign(&v6->s_, v4);
  JreStrongAssign(&v6->valueType_, valueType);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m isEqual:a3];
}

- (unint64_t)hash
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m hash];
}

- (NSString)description
{
  m = self->m_;
  if (!m)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)m description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CheckedMap;
  [(JavaUtilCollections_CheckedMap *)&v3 dealloc];
}

@end