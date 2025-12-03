@interface OrgApacheLuceneCodecsDocValuesConsumer_$8_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$8_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$8:(id)8;
- (id)next;
- (uint64_t)setNext;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$8_$1

- (BOOL)hasNext
{
  if (self->nextIsSet_)
  {
    return 1;
  }

  else
  {
    return [OrgApacheLuceneCodecsDocValuesConsumer_$8_$1 setNext]_0(self);
  }
}

- (uint64_t)setNext
{
  v1 = *(self + 16);
  v2 = *(self + 8);
  v3 = (v2 + 8);
  if (v1 == *(v2 + 8))
  {
    return 0;
  }

  v6 = *(self + 20);
  while (v6 == *(self + 28))
  {
    v7 = (v1 + 1);
    *(self + 16) = v7;
    if (v7 >= *v3)
    {
      v6 = 0;
    }

    else
    {
      v8 = *(v2 + 16);
      if (!v8)
      {
        goto LABEL_31;
      }

      v9 = *(v8 + 64);
      if (!v9)
      {
        goto LABEL_31;
      }

      v10 = *(v9 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v7);
      }

      JreStrongAssign((self + 32), *(v9 + 24 + 8 * v7));
      v11 = *(*(*(self + 8) + 16) + 96);
      if (!v11)
      {
        goto LABEL_31;
      }

      v12 = *(self + 16);
      v13 = *(v11 + 8);
      if (v12 < 0 || v12 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v12);
      }

      v6 = 0;
      *(self + 28) = *(v11 + 12 + 4 * v12);
    }

LABEL_18:
    *(self + 20) = v6;
    v1 = *(self + 16);
    v2 = *(self + 8);
    v3 = (v2 + 8);
    if (v1 == *(v2 + 8))
    {
      return 0;
    }
  }

  v14 = *(self + 32);
  if (!v14)
  {
    goto LABEL_23;
  }

  if (![v14 getWithInt:?])
  {
    v6 = *(self + 20) + 1;
    goto LABEL_18;
  }

  v2 = *(self + 8);
LABEL_23:
  *(self + 40) = 1;
  v15 = *(v2 + 24);
  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = *(self + 16);
  v17 = *(v15 + 8);
  if (v16 < 0 || v16 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v16);
  }

  v18 = *(v15 + 24 + 8 * v16);
  if (!v18)
  {
LABEL_31:
    JreThrowNullPointerException();
  }

  [v18 setDocumentWithInt:*(self + 20)];
  *(self + 24) = 0;
  while ([v18 nextOrd] != -1)
  {
    ++*(self + 24);
  }

  ++*(self + 20);
  return 1;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$8_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  nextValue = self->nextValue_;

  return JavaLangInteger_valueOfWithInt_(nextValue);
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$8_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$8:(id)8
{
  JreStrongAssign(&self->this$0_, 8);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__8__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$8_$1 *)&v3 dealloc];
}

@end