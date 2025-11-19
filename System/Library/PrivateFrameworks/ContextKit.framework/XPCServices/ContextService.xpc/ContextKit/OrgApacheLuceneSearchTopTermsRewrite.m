@interface OrgApacheLuceneSearchTopTermsRewrite
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (OrgApacheLuceneSearchTopTermsRewrite)initWithInt:(int)a3;
- (OrgApacheLuceneSearchTopTermsRewrite)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4;
@end

@implementation OrgApacheLuceneSearchTopTermsRewrite

- (OrgApacheLuceneSearchTopTermsRewrite)initWithInt:(int)a3
{
  OrgApacheLuceneSearchTermCollectingRewrite_init(self, a2);
  self->size_ = a3;
  return self;
}

- (OrgApacheLuceneSearchTopTermsRewrite)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4
{
  v7 = JavaLangMath_minWithInt_withInt_(self->size_, [(OrgApacheLuceneSearchTopTermsRewrite *)self getMaxSize]);
  v8 = new_JavaUtilPriorityQueue_init();
  v9 = [OrgApacheLuceneSearchTopTermsRewrite__2 alloc];
  sub_1000D6618(v9, v8, v7);
  [(OrgApacheLuceneSearchTermCollectingRewrite *)self collectTermsWithOrgApacheLuceneIndexIndexReader:a3 withOrgApacheLuceneSearchMultiTermQuery:a4 withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:v9];
  v10 = [(OrgApacheLuceneSearchTopTermsRewrite *)self getTopLevelBuilder];
  v11 = [(JavaUtilPriorityQueue *)v8 size];
  if (qword_100554538 != -1)
  {
    sub_1000D67E0();
  }

  v12 = [(JavaUtilAbstractCollection *)v8 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:v11 type:qword_100554530]];
  OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withJavaUtilComparator_(v12, qword_100554528);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12 + 3;
  v14 = &v12[*(v12 + 2) + 3];
  if ((v12 + 3) < v14)
  {
    if (a4)
    {
      while (1)
      {
        v16 = *v13++;
        v15 = v16;
        if (!v16)
        {
          break;
        }

        v17 = *(v15 + 8);
        if (!v17)
        {
          break;
        }

        v18 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(*(a4 + 12), [v17 toBytesRef]);
        v19 = *(v15 + 24);
        if (!v19)
        {
          break;
        }

        v20 = [v19 docFreq];
        [a4 getBoost];
        *&v22 = v21 * *(v15 + 16);
        [(OrgApacheLuceneSearchTopTermsRewrite *)self addClauseWithId:v10 withOrgApacheLuceneIndexTerm:v18 withInt:v20 withFloat:*(v15 + 24) withOrgApacheLuceneIndexTermContext:v22];
        if (v13 >= v14)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_10:

  return [(OrgApacheLuceneSearchTopTermsRewrite *)self buildWithId:v10];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = [(OrgApacheLuceneSearchTopTermsRewrite *)self getClass];
  if (v5 != [a3 getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->size_ == *(a3 + 2);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554528, [OrgApacheLuceneSearchTopTermsRewrite__1 alloc]);
    atomic_store(1u, &OrgApacheLuceneSearchTopTermsRewrite__initialized);
  }
}

@end