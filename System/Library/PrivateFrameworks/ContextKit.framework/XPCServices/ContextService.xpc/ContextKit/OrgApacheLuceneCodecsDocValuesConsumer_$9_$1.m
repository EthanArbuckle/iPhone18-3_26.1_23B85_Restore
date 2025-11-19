@interface OrgApacheLuceneCodecsDocValuesConsumer_$9_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsDocValuesConsumer_$9_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$9:(id)a3;
- (id)next;
- (uint64_t)setNext;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$9_$1

- (BOOL)hasNext
{
  if (self->nextIsSet_)
  {
    return 1;
  }

  else
  {
    return [OrgApacheLuceneCodecsDocValuesConsumer_$9_$1 setNext]_0(self);
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

  while (1)
  {
    v6 = *(a1 + 72);
    if (v6 < *(a1 + 76))
    {
      break;
    }

    if (*(a1 + 20) != *(a1 + 32))
    {
      v17 = *(a1 + 40);
      if (!v17)
      {
        goto LABEL_18;
      }

      if ([v17 getWithInt:?])
      {
        v2 = *(a1 + 8);
LABEL_18:
        v18 = *(v2 + 32);
        if (!v18)
        {
          goto LABEL_45;
        }

        v19 = *(a1 + 16);
        v20 = *(v18 + 8);
        if (v19 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v19);
        }

        v21 = *(v18 + 24 + 8 * v19);
        if (!v21)
        {
          goto LABEL_45;
        }

        [v21 setDocumentWithInt:*(a1 + 20)];
        *(a1 + 72) = 0;
        v22 = [v21 nextOrd];
        if (v22 != -1)
        {
          v29 = v22;
          while (1)
          {
            v30 = *(a1 + 64);
            if (!v30)
            {
              break;
            }

            v31 = *(a1 + 76);
            if (v31 == v30[2])
            {
              v32 = OrgApacheLuceneUtilArrayUtil_growWithLongArray_withInt_(v30, v31 + 1, v23, v24, v25, v26, v27, v28);
              JreStrongAssign((a1 + 64), v32);
            }

            v33 = *(a1 + 48);
            if (!v33)
            {
              break;
            }

            v34 = [v33 getWithLong:v29];
            v35 = *(a1 + 64);
            if (!v35)
            {
              break;
            }

            v36 = v34;
            v37 = *(a1 + 76);
            v38 = *(v35 + 8);
            if (v37 < 0 || v37 >= v38)
            {
              IOSArray_throwOutOfBoundsWithMsg(v38, *(a1 + 76));
            }

            v39 = *(a1 + 76);
            *(v35 + 16 + 8 * v37) = v36;
            *(a1 + 76) = v37 + 1;
            v29 = [v21 nextOrd];
            if (v29 == -1)
            {
              goto LABEL_34;
            }
          }

LABEL_45:
          JreThrowNullPointerException();
        }
      }

LABEL_34:
      v16 = *(a1 + 20) + 1;
      goto LABEL_36;
    }

    *(a1 + 16) = v1 + 1;
    if (v1 + 1 >= *v3)
    {
      v16 = 0;
    }

    else
    {
      v7 = *(v2 + 16);
      if (!v7)
      {
        goto LABEL_45;
      }

      JreStrongAssign((a1 + 48), [v7 getGlobalOrdsWithInt:?]);
      v8 = *(*(a1 + 8) + 24);
      if (!v8)
      {
        goto LABEL_45;
      }

      v9 = *(v8 + 64);
      if (!v9)
      {
        goto LABEL_45;
      }

      v10 = *(a1 + 16);
      v11 = *(v9 + 8);
      if (v10 < 0 || v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v10);
      }

      JreStrongAssign((a1 + 40), *(v9 + 24 + 8 * v10));
      v12 = *(*(*(a1 + 8) + 24) + 96);
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = *(a1 + 16);
      v14 = v13;
      v15 = *(v12 + 8);
      if (v13 < 0 || v13 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v13);
      }

      v16 = 0;
      *(a1 + 32) = *(v12 + 12 + 4 * v14);
    }

LABEL_36:
    *(a1 + 20) = v16;
    v1 = *(a1 + 16);
    v2 = *(a1 + 8);
    v3 = (v2 + 8);
    if (v1 == *(v2 + 8))
    {
      return 0;
    }
  }

  v40 = *(a1 + 64);
  if (!v40)
  {
    goto LABEL_45;
  }

  v41 = *(v40 + 8);
  if (v6 < 0 || v6 >= v41)
  {
    IOSArray_throwOutOfBoundsWithMsg(v41, *(a1 + 72));
  }

  v42 = *(a1 + 72);
  *(a1 + 24) = *(v40 + 16 + 8 * v6);
  *(a1 + 72) = v6 + 1;
  result = 1;
  *(a1 + 56) = 1;
  return result;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$9_$1 *)self hasNext])
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  self->nextIsSet_ = 0;
  nextValue = self->nextValue_;

  return JavaLangLong_valueOfWithLong_(nextValue);
}

- (OrgApacheLuceneCodecsDocValuesConsumer_$9_$1)initWithOrgApacheLuceneCodecsDocValuesConsumer_$9:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->readerUpto_ = -1;
  JreStrongAssignAndConsume(&self->ords_, [IOSLongArray newArrayWithLength:8]);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__9__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$9_$1 *)&v3 dealloc];
}

@end