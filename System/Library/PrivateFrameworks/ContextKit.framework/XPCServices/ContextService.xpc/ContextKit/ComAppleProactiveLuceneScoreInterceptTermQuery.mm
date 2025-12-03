@interface ComAppleProactiveLuceneScoreInterceptTermQuery
- (ComAppleProactiveLuceneScoreInterceptTermQuery)initWithOrgApacheLuceneIndexTerm:(id)term withComAppleProactiveLuceneScoreInterceptTarget:(id)target;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneScoreInterceptTermQuery

- (ComAppleProactiveLuceneScoreInterceptTermQuery)initWithOrgApacheLuceneIndexTerm:(id)term withComAppleProactiveLuceneScoreInterceptTarget:(id)target
{
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(self, term);
  JreStrongAssign((&self->super.perReaderTermState_ + 4), target);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneScoreInterceptTermQuery;
  [(OrgApacheLuceneSearchTermQuery *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneScoreInterceptTermQuery;
  [(ComAppleProactiveLuceneScoreInterceptTermQuery *)&v3 __javaClone];
}

@end