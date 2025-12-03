@interface OrgApacheLuceneCodecsNormsConsumer_$1_$1
- (BOOL)setNext;
- (OrgApacheLuceneCodecsNormsConsumer_$1_$1)initWithOrgApacheLuceneCodecsNormsConsumer_$1:(id)1;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsNormsConsumer_$1_$1

- (BOOL)setNext
{
  v2 = *(*(self + 8) + 8);
  if (!v2)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v3 = *(self + 16);
    v4 = [v2 size];
    if (v3 == v4)
    {
      return v3 != v4;
    }

    v5 = *(self + 40);
    if (!v5 || *(self + 20) == *(self + 32))
    {
      v6 = *(self + 16) + 1;
      *(self + 16) = v6;
      if (v6 >= [*(*(self + 8) + 8) size])
      {
        v15 = 0;
      }

      else
      {
        JreStrongAssign((self + 40), [*(*(self + 8) + 8) getWithInt:*(self + 16)]);
        v7 = *(*(self + 8) + 16);
        if (!v7)
        {
          goto LABEL_26;
        }

        v8 = *(v7 + 64);
        if (!v8)
        {
          goto LABEL_26;
        }

        v9 = *(self + 16);
        v10 = *(v8 + 8);
        if (v9 < 0 || v9 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v9);
        }

        JreStrongAssign((self + 48), *(v8 + 24 + 8 * v9));
        v11 = *(*(*(self + 8) + 16) + 96);
        if (!v11)
        {
          goto LABEL_26;
        }

        v12 = *(self + 16);
        v13 = v12;
        v14 = *(v11 + 8);
        if (v12 < 0 || v12 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v12);
        }

        v15 = 0;
        *(self + 32) = *(v11 + 12 + 4 * v13);
      }

      goto LABEL_18;
    }

    if (!*(self + 48))
    {
      break;
    }

    if ([*(self + 48) getWithInt:?])
    {
      v5 = *(self + 40);
      *(self + 56) = 1;
      if (v5)
      {
        goto LABEL_24;
      }

LABEL_26:
      JreThrowNullPointerException();
    }

    v15 = *(self + 20) + 1;
LABEL_18:
    *(self + 20) = v15;
    v2 = *(*(self + 8) + 8);
    if (!v2)
    {
      goto LABEL_26;
    }
  }

  *(self + 56) = 1;
LABEL_24:
  *(self + 24) = [v5 getWithInt:(*(self + 20))++];
  return v3 != v4;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsNormsConsumer_$1_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  nextValue = self->nextValue_;

  return JavaLangLong_valueOfWithLong_(nextValue);
}

- (OrgApacheLuceneCodecsNormsConsumer_$1_$1)initWithOrgApacheLuceneCodecsNormsConsumer_$1:(id)1
{
  JreStrongAssign(&self->this$0_, 1);
  self->readerUpto_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsNormsConsumer__1__1;
  [(OrgApacheLuceneCodecsNormsConsumer_$1_$1 *)&v3 dealloc];
}

@end