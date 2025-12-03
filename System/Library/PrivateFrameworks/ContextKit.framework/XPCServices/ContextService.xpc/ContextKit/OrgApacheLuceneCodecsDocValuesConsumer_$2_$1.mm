@interface OrgApacheLuceneCodecsDocValuesConsumer_$2_$1
- (BOOL)setNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$2_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$2:(id)2;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$2_$1

- (BOOL)setNext
{
  v2 = *(*(self + 8) + 8);
  if (!v2)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = *(self + 16);
    v4 = [v2 size];
    if (v3 == v4)
    {
      return v3 != v4;
    }

    if (*(self + 20) != *(self + 40))
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
      JreStrongAssign((self + 48), [*(*(self + 8) + 8) getWithInt:*(self + 16)]);
      v6 = *(*(self + 8) + 16);
      if (!v6)
      {
        goto LABEL_29;
      }

      JreStrongAssign((self + 64), [v6 getWithInt:*(self + 16)]);
      v7 = *(*(self + 8) + 24);
      if (!v7)
      {
        goto LABEL_29;
      }

      v8 = *(v7 + 64);
      if (!v8)
      {
        goto LABEL_29;
      }

      v9 = *(self + 16);
      v10 = *(v8 + 8);
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      JreStrongAssign((self + 56), *(v8 + 24 + 8 * v9));
      v11 = *(*(*(self + 8) + 24) + 96);
      if (!v11)
      {
        goto LABEL_29;
      }

      v12 = *(self + 16);
      v13 = v12;
      v14 = *(v11 + 8);
      if (v12 < 0 || v12 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v12);
      }

      v15 = 0;
      *(self + 40) = *(v11 + 12 + 4 * v13);
    }

LABEL_18:
    *(self + 20) = v15;
    v2 = *(*(self + 8) + 8);
    if (!v2)
    {
      goto LABEL_29;
    }
  }

  v16 = *(self + 56);
  if (v16 && ![v16 getWithInt:?])
  {
    v15 = *(self + 20) + 1;
    goto LABEL_18;
  }

  *(self + 72) = 1;
  v17 = *(self + 64);
  if (!v17)
  {
    goto LABEL_29;
  }

  if (![v17 getWithInt:*(self + 20)])
  {
    v20 = (self + 32);
    v19 = 0;
    goto LABEL_27;
  }

  v18 = *(self + 48);
  if (!v18)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  JreStrongAssign((self + 24), [v18 getWithInt:*(self + 20)]);
  v19 = *(self + 24);
  v20 = (self + 32);
LABEL_27:
  JreStrongAssign(v20, v19);
  ++*(self + 20);
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

- (OrgApacheLuceneCodecsDocValuesConsumer_$2_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$2:(id)2
{
  JreStrongAssign(&self->this$0_, 2);
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