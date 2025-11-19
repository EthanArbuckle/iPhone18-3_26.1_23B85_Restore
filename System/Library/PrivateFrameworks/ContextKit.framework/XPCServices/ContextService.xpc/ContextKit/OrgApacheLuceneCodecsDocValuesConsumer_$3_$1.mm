@interface OrgApacheLuceneCodecsDocValuesConsumer_$3_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$3_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$3:(id)a3;
- (id)next;
- (uint64_t)setNext;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$3_$1

- (BOOL)hasNext
{
  if (self->nextIsSet_)
  {
    return 1;
  }

  else
  {
    return [OrgApacheLuceneCodecsDocValuesConsumer_$3_$1 setNext]_0(self);
  }
}

- (uint64_t)setNext
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (v2 + 8);
  if (v1 == *(v2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 20);
  while (v6 == *(a1 + 28))
  {
    v7 = (v1 + 1);
    *(a1 + 16) = v7;
    if (v7 >= *v3)
    {
      v6 = 0;
    }

    else
    {
      v8 = *(v2 + 16);
      if (!v8)
      {
        goto LABEL_28;
      }

      v9 = *(v8 + 64);
      if (!v9)
      {
        goto LABEL_28;
      }

      v10 = *(v9 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v7);
      }

      JreStrongAssign((a1 + 32), *(v9 + 24 + 8 * v7));
      v11 = *(*(*(a1 + 8) + 16) + 96);
      if (!v11)
      {
        goto LABEL_28;
      }

      v12 = *(a1 + 16);
      v13 = *(v11 + 8);
      if (v12 < 0 || v12 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v12);
      }

      v6 = 0;
      *(a1 + 28) = *(v11 + 12 + 4 * v12);
    }

LABEL_18:
    *(a1 + 20) = v6;
    v1 = *(a1 + 16);
    v2 = *(a1 + 8);
    v3 = (v2 + 8);
    if (v1 == *(v2 + 8))
    {
      return 0;
    }
  }

  v14 = *(a1 + 32);
  if (!v14)
  {
    goto LABEL_23;
  }

  if (![v14 getWithInt:?])
  {
    v6 = *(a1 + 20) + 1;
    goto LABEL_18;
  }

  v2 = *(a1 + 8);
LABEL_23:
  *(a1 + 40) = 1;
  v15 = *(v2 + 24);
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = *(a1 + 16);
  v17 = *(v15 + 8);
  if (v16 < 0 || v16 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v16);
  }

  v18 = *(v15 + 24 + 8 * v16);
  if (!v18)
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  [v18 setDocumentWithInt:*(a1 + 20)];
  v19 = [v18 count];
  ++*(a1 + 20);
  *(a1 + 24) = v19;
  return 1;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$3_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  nextValue = self->nextValue_;

  return JavaLangInteger_valueOfWithInt_(nextValue);
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$3_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$3:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__3__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$3_$1 *)&v3 dealloc];
}

@end