@interface OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)initWithInt:(int)int withInt:(int)withInt;
- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)initWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet

- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)initWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->values_, array);
  self->hashCode_ = int;
  self->state_ = withInt;
  return self;
}

- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)initWithInt:(int)int withInt:(int)withInt
{
  intCopy = int;
  JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithInts:&intCopy count:1]);
  self->hashCode_ = int + 683;
  self->state_ = withInt;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->hashCode_ != *(equal + 4))
      {
        return 0;
      }

      v5 = *(equal + 1);
      if (v5)
      {
        v6 = *(v5 + 8);
        values = self->values_;
        if (v6 == values->super.size_)
        {
          if (v6 >= 1)
          {
            v8 = 0;
            do
            {
              v9 = *(equal + 1);
              v10 = *(v9 + 8);
              if (v8 >= v10)
              {
                IOSArray_throwOutOfBoundsWithMsg(v10, v8);
              }

              v11 = *(v9 + 12 + 4 * v8);
              size = values->super.size_;
              if (v8 >= size)
              {
                IOSArray_throwOutOfBoundsWithMsg(size, v8);
              }

              v13 = *(&values->super.size_ + v8 + 1);
              result = v11 == v13;
              if (v11 != v13)
              {
                break;
              }

              ++v8;
              values = self->values_;
            }

            while (v8 < values->super.size_);
            return result;
          }

          return 1;
        }

        return 0;
      }

LABEL_35:
      JreThrowNullPointerException();
    }

LABEL_34:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (self->hashCode_ != *(equal + 8))
  {
    return 0;
  }

  v15 = *(equal + 1);
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = self->values_;
  if (!v16)
  {
    goto LABEL_35;
  }

  v17 = *(v15 + 8);
  if (v17 != v16->super.size_)
  {
    return 0;
  }

  if (v17 < 1)
  {
    return 1;
  }

  v18 = 0;
  do
  {
    v19 = *(equal + 1);
    v20 = *(v19 + 8);
    if (v18 >= v20)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, v18);
    }

    v21 = *(v19 + 12 + 4 * v18);
    v22 = v16->super.size_;
    if (v18 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v18);
    }

    v23 = *(&v16->super.size_ + v18 + 1);
    result = v21 == v23;
    if (v21 != v23)
    {
      break;
    }

    ++v18;
    v16 = self->values_;
  }

  while (v18 < v16->super.size_);
  return result;
}

- (id)description
{
  v3 = [new_JavaLangStringBuilder_init() appendWithChar:91];
  values = self->values_;
  if (!values)
  {
    goto LABEL_17;
  }

  v5 = v3;
  v6 = 0;
  while (1)
  {
    size = values->super.size_;
    if (v6 >= size)
    {
      break;
    }

    if (v6)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      [v5 appendWithChar:32];
      values = self->values_;
      size = values->super.size_;
      v8 = size;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v8 = size;
    }

    if (v6 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    [v5 appendWithInt:*(&values->super.size_ + ++v6)];
    values = self->values_;
    if (!values)
    {
      goto LABEL_17;
    }
  }

  if (!v5)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  [v5 appendWithChar:93];

  return [v5 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet;
  [(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *)&v3 dealloc];
}

@end