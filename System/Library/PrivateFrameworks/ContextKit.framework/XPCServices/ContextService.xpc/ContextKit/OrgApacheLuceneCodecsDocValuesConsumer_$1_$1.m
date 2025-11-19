@interface OrgApacheLuceneCodecsDocValuesConsumer_$1_$1
- (BOOL)setNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$1_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$1:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$1_$1

- (BOOL)setNext
{
  v2 = *(*(a1 + 8) + 8);
  if (!v2)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v3 = *(a1 + 16);
    v4 = [v2 size];
    if (v3 == v4)
    {
      return v3 != v4;
    }

    if (*(a1 + 20) != *(a1 + 36))
    {
      break;
    }

    v5 = *(a1 + 16) + 1;
    *(a1 + 16) = v5;
    if (v5 >= [*(*(a1 + 8) + 8) size])
    {
      v15 = 0;
    }

    else
    {
      JreStrongAssign((a1 + 40), [*(*(a1 + 8) + 8) getWithInt:*(a1 + 16)]);
      v6 = *(*(a1 + 8) + 16);
      if (!v6)
      {
        goto LABEL_30;
      }

      JreStrongAssign((a1 + 56), [v6 getWithInt:*(a1 + 16)]);
      v7 = *(*(a1 + 8) + 24);
      if (!v7)
      {
        goto LABEL_30;
      }

      v8 = *(v7 + 64);
      if (!v8)
      {
        goto LABEL_30;
      }

      v9 = *(a1 + 16);
      v10 = *(v8 + 8);
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      JreStrongAssign((a1 + 48), *(v8 + 24 + 8 * v9));
      v11 = *(*(*(a1 + 8) + 24) + 96);
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = *(a1 + 16);
      v13 = v12;
      v14 = *(v11 + 8);
      if (v12 < 0 || v12 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v12);
      }

      v15 = 0;
      *(a1 + 36) = *(v11 + 12 + 4 * v13);
    }

LABEL_18:
    *(a1 + 20) = v15;
    v2 = *(*(a1 + 8) + 8);
    if (!v2)
    {
      goto LABEL_30;
    }
  }

  v16 = *(a1 + 48);
  if (v16 && ![v16 getWithInt:?])
  {
    v15 = *(a1 + 20) + 1;
    goto LABEL_18;
  }

  *(a1 + 64) = 1;
  v17 = *(a1 + 40);
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = [v17 getWithInt:*(a1 + 20)];
  *(a1 + 24) = v18;
  if (v18)
  {
    goto LABEL_26;
  }

  v19 = *(a1 + 56);
  if (!v19)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  if ([v19 getWithInt:*(a1 + 20)])
  {
LABEL_26:
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 32) = v20;
  ++*(a1 + 20);
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

- (OrgApacheLuceneCodecsDocValuesConsumer_$1_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$1:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
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