@interface OrgApacheLuceneIndexMultiTermsEnum_TermMergeQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
- (int)fillTopWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSliceArray:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiTermsEnum_TermMergeQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v4 = *(a3 + 2)) == 0 || !a4)
  {
    JreThrowNullPointerException();
  }

  return [v4 compareToWithId:*(a4 + 2)] >> 31;
}

- (int)fillTopWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSliceArray:(id)a3
{
  v22 = [(OrgApacheLuceneUtilPriorityQueue *)self size];
  if (v22)
  {
    if (a3)
    {
      IOSObjectArray_Set(a3, 0, [(OrgApacheLuceneUtilPriorityQueue *)self top]);
      stack = self->stack_;
      if (stack)
      {
        v6 = *(stack + 8);
        if (v6 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v6, 0);
        }

        v7 = 1;
        *(stack + 12) = 1;
        LODWORD(stack) = 1;
        while (1)
        {
          v8 = self->stack_;
          size = v8->super.size_;
          stack = (stack - 1);
          if (stack < 0 || stack >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, stack);
          }

          v10 = *(&v8->super.size_ + stack + 1);
          v11 = (2 * v10);
          v12 = JavaLangMath_minWithInt_withInt_(v22, (2 * v10) | 1u);
          if (v11 <= v12)
          {
            break;
          }

LABEL_9:
          if (!stack)
          {
            return v7;
          }
        }

        v13 = v12;
        while (1)
        {
          v14 = sub_100057018(self, v11);
          if (!v14)
          {
            break;
          }

          v15 = v14;
          v16 = *(v14 + 16);
          if (!v16)
          {
            break;
          }

          v17 = *(a3 + 2);
          if (v17 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, 0);
          }

          v18 = *(a3 + 3);
          if (!v18)
          {
            break;
          }

          if ([v16 isEqual:*(v18 + 16)])
          {
            IOSObjectArray_Set(a3, v7, v15);
            v19 = self->stack_;
            v20 = v19->super.size_;
            if ((stack & 0x80000000) != 0 || stack >= v20)
            {
              IOSArray_throwOutOfBoundsWithMsg(v20, stack);
            }

            ++v7;
            *(&v19->super.size_ + stack + 1) = v11;
            stack = (stack + 1);
          }

          v11 = (v11 + 1);
          if (v11 > v13)
          {
            goto LABEL_9;
          }
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiTermsEnum_TermMergeQueue;
  [(OrgApacheLuceneUtilPriorityQueue *)&v3 dealloc];
}

@end