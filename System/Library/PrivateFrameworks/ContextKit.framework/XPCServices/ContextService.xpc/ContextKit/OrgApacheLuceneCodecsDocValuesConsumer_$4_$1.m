@interface OrgApacheLuceneCodecsDocValuesConsumer_$4_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$4_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$4:(id)a3;
- (id)next;
- (uint64_t)setNext;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$4_$1

- (BOOL)hasNext
{
  if (self->nextIsSet_)
  {
    return 1;
  }

  else
  {
    return [OrgApacheLuceneCodecsDocValuesConsumer_$4_$1 setNext]_0(self);
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

  while (*(a1 + 52) >= *(a1 + 56))
  {
    if (*(a1 + 20) != *(a1 + 32))
    {
      v15 = *(a1 + 40);
      if (v15)
      {
        if ([v15 getWithInt:?])
        {
          v2 = *(a1 + 8);
          goto LABEL_17;
        }
      }

      else
      {
LABEL_17:
        v16 = *(v2 + 16);
        if (!v16)
        {
          goto LABEL_34;
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
          goto LABEL_34;
        }

        [v19 setDocumentWithInt:*(a1 + 20)];
        *(a1 + 52) = 0;
        *(a1 + 56) = [v19 count];
      }

      v14 = *(a1 + 20) + 1;
      goto LABEL_24;
    }

    v6 = (v1 + 1);
    *(a1 + 16) = v6;
    if (v6 >= *v3)
    {
      v14 = 0;
    }

    else
    {
      v7 = *(v2 + 24);
      if (!v7)
      {
        goto LABEL_34;
      }

      v8 = *(v7 + 64);
      if (!v8)
      {
        goto LABEL_34;
      }

      v9 = *(v8 + 8);
      if ((v6 & 0x80000000) != 0 || v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      JreStrongAssign((a1 + 40), *(v8 + 24 + 8 * v6));
      v10 = *(*(*(a1 + 8) + 24) + 96);
      if (!v10)
      {
        goto LABEL_34;
      }

      v11 = *(a1 + 16);
      v12 = v11;
      v13 = *(v10 + 8);
      if (v11 < 0 || v11 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v11);
      }

      v14 = 0;
      *(a1 + 32) = *(v10 + 12 + 4 * v12);
    }

LABEL_24:
    *(a1 + 20) = v14;
    v1 = *(a1 + 16);
    v2 = *(a1 + 8);
    v3 = (v2 + 8);
    if (v1 == *(v2 + 8))
    {
      return 0;
    }
  }

  v20 = *(v2 + 16);
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = *(v20 + 8);
  if ((v1 & 0x80000000) != 0 || v1 >= v21)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, v1);
  }

  v22 = *(v20 + 24 + 8 * v1);
  if (!v22)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  *(a1 + 24) = [v22 valueAtWithInt:(*(a1 + 52))++];
  result = 1;
  *(a1 + 48) = 1;
  return result;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$4_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  nextValue = self->nextValue_;

  return JavaLangLong_valueOfWithLong_(nextValue);
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$4_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$4:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__4__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$4_$1 *)&v3 dealloc];
}

@end