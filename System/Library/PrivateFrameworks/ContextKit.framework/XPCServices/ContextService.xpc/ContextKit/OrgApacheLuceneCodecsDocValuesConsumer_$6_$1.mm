@interface OrgApacheLuceneCodecsDocValuesConsumer_$6_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$6_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$6:(id)a3;
- (id)next;
- (uint64_t)setNext;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$6_$1

- (BOOL)hasNext
{
  if (self->nextIsSet_)
  {
    return 1;
  }

  else
  {
    return [OrgApacheLuceneCodecsDocValuesConsumer_$6_$1 setNext]_0(self);
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
    *(a1 + 16) = v1 + 1;
    if (v1 + 1 >= *v3)
    {
      v6 = 0;
    }

    else
    {
      v7 = *(v2 + 16);
      if (!v7)
      {
        goto LABEL_33;
      }

      JreStrongAssign((a1 + 40), [v7 getGlobalOrdsWithInt:?]);
      v8 = *(*(a1 + 8) + 24);
      if (!v8)
      {
        goto LABEL_33;
      }

      v9 = *(v8 + 64);
      if (!v9)
      {
        goto LABEL_33;
      }

      v10 = *(a1 + 16);
      v11 = *(v9 + 8);
      if (v10 < 0 || v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v10);
      }

      JreStrongAssign((a1 + 32), *(v9 + 24 + 8 * v10));
      v12 = *(*(*(a1 + 8) + 24) + 96);
      if (!v12)
      {
        goto LABEL_33;
      }

      v13 = *(a1 + 16);
      v14 = *(v12 + 8);
      if (v13 < 0 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      v6 = 0;
      *(a1 + 28) = *(v12 + 12 + 4 * v13);
    }

LABEL_19:
    *(a1 + 20) = v6;
    v1 = *(a1 + 16);
    v2 = *(a1 + 8);
    v3 = (v2 + 8);
    if (v1 == *(v2 + 8))
    {
      return 0;
    }
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    goto LABEL_24;
  }

  if (![v15 getWithInt:?])
  {
    v6 = *(a1 + 20) + 1;
    goto LABEL_19;
  }

  v2 = *(a1 + 8);
LABEL_24:
  *(a1 + 48) = 1;
  v16 = *(v2 + 32);
  if (!v16)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 16);
  v18 = *(v16 + 8);
  if (v17 < 0 || v17 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v17);
  }

  v19 = *(v16 + 24 + 8 * v17);
  if (!v19)
  {
    goto LABEL_33;
  }

  v20 = [v19 getOrdWithInt:*(a1 + 20)];
  if (v20 != -1)
  {
    v21 = v20;
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = [v22 getWithInt:v21];
      goto LABEL_32;
    }

LABEL_33:
    JreThrowNullPointerException();
  }

  v23 = -1;
LABEL_32:
  ++*(a1 + 20);
  *(a1 + 24) = v23;
  return 1;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$6_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  nextValue = self->nextValue_;

  return JavaLangInteger_valueOfWithInt_(nextValue);
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$6_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$6:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__6__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$6_$1 *)&v3 dealloc];
}

@end