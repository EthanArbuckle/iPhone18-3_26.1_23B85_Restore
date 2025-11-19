@interface ComAppleProactiveLuceneScoreInterceptTermQuery
- (ComAppleProactiveLuceneScoreInterceptTermQuery)initWithOrgApacheLuceneIndexTerm:(id)a3 withComAppleProactiveLuceneScoreInterceptTarget:(id)a4;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneScoreInterceptTermQuery

- (ComAppleProactiveLuceneScoreInterceptTermQuery)initWithOrgApacheLuceneIndexTerm:(id)a3 withComAppleProactiveLuceneScoreInterceptTarget:(id)a4
{
  OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(self, a3);
  JreStrongAssign((&self->super.perReaderTermState_ + 4), a4);
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