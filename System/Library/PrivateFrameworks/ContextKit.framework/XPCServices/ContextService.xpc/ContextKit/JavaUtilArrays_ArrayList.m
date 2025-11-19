@interface JavaUtilArrays_ArrayList
- (BOOL)containsWithId:(id)a3;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation JavaUtilArrays_ArrayList

- (BOOL)containsWithId:(id)a3
{
  a = self->a_;
  if (a3)
  {
    if (a)
    {
      p_elementType = &a->elementType_;
      v6 = &(&a->elementType_)[a->super.size_];
      do
      {
        v7 = p_elementType < v6;
        if (p_elementType >= v6)
        {
          break;
        }

        v8 = *p_elementType++;
      }

      while (([a3 isEqual:v8] & 1) == 0);
      return v7;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  if (!a)
  {
    goto LABEL_12;
  }

  v9 = &a->elementType_;
  v10 = &(&a->elementType_)[a->super.size_];
  do
  {
    v7 = v9 < v10;
    if (v9 >= v10)
    {
      break;
    }
  }

  while (*v9++);
  return v7;
}

- (int)indexOfWithId:(id)a3
{
  a = self->a_;
  if (a3)
  {
    if (a)
    {
      v6 = 0;
      while (v6 < a->super.size_)
      {
        if ([a3 isEqual:(&a->elementType_)[v6]])
        {
          LODWORD(v8) = v6;
          return v8;
        }

        ++v6;
        a = self->a_;
        if (!a)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_13;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!a)
  {
    goto LABEL_16;
  }

  size = a->super.size_;
  if (size < 1)
  {
LABEL_13:
    LODWORD(v8) = -1;
    return v8;
  }

  v8 = 0;
  v9 = size & ~(size >> 31);
  p_elementType = &a->elementType_;
  while (p_elementType[v8])
  {
    if (v9 == ++v8)
    {
      goto LABEL_13;
    }
  }

  return v8;
}

- (int)lastIndexOfWithId:(id)a3
{
  a = self->a_;
  if (a3)
  {
    if (a)
    {
      LODWORD(v6) = a->super.size_;
      v7 = v6 - 1;
      while (1)
      {
        v6 = (v6 - 1);
        if (v6 < 0)
        {
          break;
        }

        v8 = self->a_;
        size = v8->super.size_;
        if (size <= v6)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v10 = [a3 isEqual:(&v8->elementType_)[v7-- & 0x7FFFFFFF]];
        if (v10)
        {
          return v6;
        }
      }

      goto LABEL_16;
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  if (!a)
  {
    goto LABEL_18;
  }

  v6 = a->super.size_;
  v11 = v6 - 1;
  while (1)
  {
    v6 = (v6 - 1);
    if (v6 < 0)
    {
      break;
    }

    v12 = self->a_;
    v13 = v12->super.size_;
    if (v13 <= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v6);
    }

    if (!(&v12->elementType_)[v11-- & 0x7FFFFFFF])
    {
      return v6;
    }
  }

LABEL_16:
  LODWORD(v6) = -1;
  return v6;
}

- (int)size
{
  a = self->a_;
  if (!a)
  {
    JreThrowNullPointerException();
  }

  return a->super.size_;
}

- (id)toArray
{
  a = self->a_;
  if (!a)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)a clone];
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  v5 = [(JavaUtilArrays_ArrayList *)self size];
  if (!a3)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (v5 > *(a3 + 2))
  {
    a3 = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(a3 "getClass")], v5);
    objc_opt_class();
    if (a3)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->a_, 0, a3, 0, v6);
  if (!a3)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if (v6 < *(a3 + 2))
  {
    IOSObjectArray_Set(a3, v6, 0);
  }

  return a3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilArrays_ArrayList;
  [(JavaUtilArrays_ArrayList *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  a3->var2 = &self->super.modCount_;
  p_elementType = &self->a_->elementType_;
  a3->var0 = 1;
  a3->var1 = p_elementType;
  return self->a_->super.size_;
}

@end