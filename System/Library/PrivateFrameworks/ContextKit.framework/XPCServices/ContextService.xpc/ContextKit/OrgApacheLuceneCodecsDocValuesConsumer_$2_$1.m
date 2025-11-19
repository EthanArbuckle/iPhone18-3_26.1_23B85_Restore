@interface OrgApacheLuceneCodecsDocValuesConsumer_$2_$1
- (BOOL)setNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$2_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$2:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$2_$1

- (BOOL)setNext
{
  v2 = *(*(a1 + 8) + 8);
  if (!v2)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = *(a1 + 16);
    v4 = [v2 size];
    if (v3 == v4)
    {
      return v3 != v4;
    }

    if (*(a1 + 20) != *(a1 + 40))
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
      JreStrongAssign((a1 + 48), [*(*(a1 + 8) + 8) getWithInt:*(a1 + 16)]);
      v6 = *(*(a1 + 8) + 16);
      if (!v6)
      {
        goto LABEL_29;
      }

      JreStrongAssign((a1 + 64), [v6 getWithInt:*(a1 + 16)]);
      v7 = *(*(a1 + 8) + 24);
      if (!v7)
      {
        goto LABEL_29;
      }

      v8 = *(v7 + 64);
      if (!v8)
      {
        goto LABEL_29;
      }

      v9 = *(a1 + 16);
      v10 = *(v8 + 8);
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      JreStrongAssign((a1 + 56), *(v8 + 24 + 8 * v9));
      v11 = *(*(*(a1 + 8) + 24) + 96);
      if (!v11)
      {
        goto LABEL_29;
      }

      v12 = *(a1 + 16);
      v13 = v12;
      v14 = *(v11 + 8);
      if (v12 < 0 || v12 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v12);
      }

      v15 = 0;
      *(a1 + 40) = *(v11 + 12 + 4 * v13);
    }

LABEL_18:
    *(a1 + 20) = v15;
    v2 = *(*(a1 + 8) + 8);
    if (!v2)
    {
      goto LABEL_29;
    }
  }

  v16 = *(a1 + 56);
  if (v16 && ![v16 getWithInt:?])
  {
    v15 = *(a1 + 20) + 1;
    goto LABEL_18;
  }

  *(a1 + 72) = 1;
  v17 = *(a1 + 64);
  if (!v17)
  {
    goto LABEL_29;
  }

  if (![v17 getWithInt:*(a1 + 20)])
  {
    v20 = (a1 + 32);
    v19 = 0;
    goto LABEL_27;
  }

  v18 = *(a1 + 48);
  if (!v18)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 24), [v18 getWithInt:*(a1 + 20)]);
  v19 = *(a1 + 24);
  v20 = (a1 + 32);
LABEL_27:
  JreStrongAssign(v20, v19);
  ++*(a1 + 20);
  return v3 != v4;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$2_$1 *)self hasNext])
  {
    v4 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v4);
  }

  self->nextIsSet_ = 0;
  return self->nextPointer_;
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$2_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$2:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__2__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$2_$1 *)&v3 dealloc];
}

@end