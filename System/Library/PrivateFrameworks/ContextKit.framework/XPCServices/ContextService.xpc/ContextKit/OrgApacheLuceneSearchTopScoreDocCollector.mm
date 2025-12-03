@interface OrgApacheLuceneSearchTopScoreDocCollector
- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector

- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  if (array)
  {
    if (int)
    {
      pq = self->super.pq_;
      if (pq)
      {
        v7 = [(OrgApacheLuceneUtilPriorityQueue *)pq size];
        if (v7 >= 2)
        {
          v8 = v7 + 1;
          do
          {
            [(OrgApacheLuceneUtilPriorityQueue *)self->super.pq_ pop];
            --v8;
          }

          while (v8 > 2);
        }

        v9 = [(OrgApacheLuceneUtilPriorityQueue *)self->super.pq_ pop];
        if (v9)
        {
LABEL_8:
          v10 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(self->super.totalHits_, array, v9[2]);

          return v10;
        }
      }
    }

    else
    {
      v12 = *(array + 2);
      if (v12 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, 0);
      }

      v9 = *(array + 3);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneSearchTopDocsCollector__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10010E300();
  }

  return OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopScoreDocCollector;
  [(OrgApacheLuceneSearchTopDocsCollector *)&v3 dealloc];
}

@end