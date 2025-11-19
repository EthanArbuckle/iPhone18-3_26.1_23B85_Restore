@interface OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex
+ (void)initialize;
- (OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withInt:(int)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex

- (OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex)initWithOrgApacheLuceneIndexTermsEnum:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->termsEnum_, a3);
  self->subIndex_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex;
  [(OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_EMPTY_ARRAY_, v2);
    atomic_store(1u, OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex__initialized);
  }
}

@end