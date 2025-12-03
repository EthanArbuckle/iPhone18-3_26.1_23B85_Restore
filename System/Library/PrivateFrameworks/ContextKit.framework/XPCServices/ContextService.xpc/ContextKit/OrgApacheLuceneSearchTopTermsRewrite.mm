@interface OrgApacheLuceneSearchTopTermsRewrite
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneSearchTopTermsRewrite)initWithInt:(int)int;
- (OrgApacheLuceneSearchTopTermsRewrite)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query;
@end

@implementation OrgApacheLuceneSearchTopTermsRewrite

- (OrgApacheLuceneSearchTopTermsRewrite)initWithInt:(int)int
{
  OrgApacheLuceneSearchTermCollectingRewrite_init(self, a2);
  self->size_ = int;
  return self;
}

- (OrgApacheLuceneSearchTopTermsRewrite)rewriteWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query
{
  v7 = JavaLangMath_minWithInt_withInt_(self->size_, [(OrgApacheLuceneSearchTopTermsRewrite *)self getMaxSize]);
  v8 = new_JavaUtilPriorityQueue_init();
  v9 = [OrgApacheLuceneSearchTopTermsRewrite__2 alloc];
  sub_1000D6618(v9, v8, v7);
  [(OrgApacheLuceneSearchTermCollectingRewrite *)self collectTermsWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:v9];
  getTopLevelBuilder = [(OrgApacheLuceneSearchTopTermsRewrite *)self getTopLevelBuilder];
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
    if (query)
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

        v18 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(*(query + 12), [v17 toBytesRef]);
        v19 = *(v15 + 24);
        if (!v19)
        {
          break;
        }

        docFreq = [v19 docFreq];
        [query getBoost];
        *&v22 = v21 * *(v15 + 16);
        [(OrgApacheLuceneSearchTopTermsRewrite *)self addClauseWithId:getTopLevelBuilder withOrgApacheLuceneIndexTerm:v18 withInt:docFreq withFloat:*(v15 + 24) withOrgApacheLuceneIndexTermContext:v22];
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

  return [(OrgApacheLuceneSearchTopTermsRewrite *)self buildWithId:getTopLevelBuilder];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  getClass = [(OrgApacheLuceneSearchTopTermsRewrite *)self getClass];
  if (getClass != [equal getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->size_ == *(equal + 2);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554528, [OrgApacheLuceneSearchTopTermsRewrite__1 alloc]);
    atomic_store(1u, &OrgApacheLuceneSearchTopTermsRewrite__initialized);
  }
}

@end