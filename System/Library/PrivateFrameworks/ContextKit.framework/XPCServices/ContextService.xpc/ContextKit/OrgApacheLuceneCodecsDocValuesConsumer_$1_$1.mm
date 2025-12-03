@interface OrgApacheLuceneCodecsDocValuesConsumer_$1_$1
- (BOOL)setNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$1_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$1:(id)1;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$1_$1

- (BOOL)setNext
{
  v2 = *(*(self + 8) + 8);
  if (!v2)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v3 = *(self + 16);
    v4 = [v2 size];
    if (v3 == v4)
    {
      return v3 != v4;
    }

    if (*(self + 20) != *(self + 36))
    {
      break;
    }

    v5 = *(self + 16) + 1;
    *(self + 16) = v5;
    if (v5 >= [*(*(self + 8) + 8) size])
    {
      v15 = 0;
    }

    else
    {
      JreStrongAssign((self + 40), [*(*(self + 8) + 8) getWithInt:*(self + 16)]);
      v6 = *(*(self + 8) + 16);
      if (!v6)
      {
        goto LABEL_30;
      }

      JreStrongAssign((self + 56), [v6 getWithInt:*(self + 16)]);
      v7 = *(*(self + 8) + 24);
      if (!v7)
      {
        goto LABEL_30;
      }

      v8 = *(v7 + 64);
      if (!v8)
      {
        goto LABEL_30;
      }

      v9 = *(self + 16);
      v10 = *(v8 + 8);
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      JreStrongAssign((self + 48), *(v8 + 24 + 8 * v9));
      v11 = *(*(*(self + 8) + 24) + 96);
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = *(self + 16);
      v13 = v12;
      v14 = *(v11 + 8);
      if (v12 < 0 || v12 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v12);
      }

      v15 = 0;
      *(self + 36) = *(v11 + 12 + 4 * v13);
    }

LABEL_18:
    *(self + 20) = v15;
    v2 = *(*(self + 8) + 8);
    if (!v2)
    {
      goto LABEL_30;
    }
  }

  v16 = *(self + 48);
  if (v16 && ![v16 getWithInt:?])
  {
    v15 = *(self + 20) + 1;
    goto LABEL_18;
  }

  *(self + 64) = 1;
  v17 = *(self + 40);
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = [v17 getWithInt:*(self + 20)];
  *(self + 24) = v18;
  if (v18)
  {
    goto LABEL_26;
  }

  v19 = *(self + 56);
  if (!v19)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  if ([v19 getWithInt:*(self + 20)])
  {
LABEL_26:
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  *(self + 32) = v20;
  ++*(self + 20);
  return v3 != v4;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$1_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  if (!self->nextHasValue_)
  {
    return 0;
  }

  nextValue = self->nextValue_;

  return JavaLangLong_valueOfWithLong_(nextValue);
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$1_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$1:(id)1
{
  JreStrongAssign(&self->this$0_, 1);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__1__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$1_$1 *)&v3 dealloc];
}

@end