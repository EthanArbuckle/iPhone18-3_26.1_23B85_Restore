@interface OrgApacheLuceneSearchBooleanQuery_Builder
- (OrgApacheLuceneSearchBooleanQuery_Builder)init;
- (id)addWithOrgApacheLuceneSearchBooleanClause:(id)clause;
- (id)addWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneSearchBooleanClause_OccurEnum:(id)enum;
- (id)build;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanQuery_Builder

- (OrgApacheLuceneSearchBooleanQuery_Builder)init
{
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->clauses_, v3);
  return self;
}

- (id)addWithOrgApacheLuceneSearchBooleanClause:(id)clause
{
  if (!clause)
  {
    JreThrowNullPointerException();
  }

  -[OrgApacheLuceneSearchBooleanQuery_Builder addWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchBooleanClause_OccurEnum:](self, "addWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchBooleanClause_OccurEnum:", [clause getQuery], objc_msgSend(clause, "getOccur"));
  return self;
}

- (id)addWithOrgApacheLuceneSearchQuery:(id)query withOrgApacheLuceneSearchBooleanClause_OccurEnum:(id)enum
{
  clauses = self->clauses_;
  if (!clauses)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilList *)clauses size];
  if (v8 >= dword_10054EE60)
  {
    v10 = new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
    objc_exception_throw(v10);
  }

  [(JavaUtilList *)self->clauses_ addWithId:new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(query, enum)];
  return self;
}

- (id)build
{
  clauses = self->clauses_;
  if (!clauses)
  {
    JreThrowNullPointerException();
  }

  minimumNumberShouldMatch = self->minimumNumberShouldMatch_;
  disableCoord = self->disableCoord_;
  v5 = [(JavaUtilList *)clauses toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchBooleanClause_class_()]];
  v6 = [OrgApacheLuceneSearchBooleanQuery alloc];
  sub_1000E40D8(v6, disableCoord, minimumNumberShouldMatch, v5);

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanQuery_Builder;
  [(OrgApacheLuceneSearchBooleanQuery_Builder *)&v3 dealloc];
}

@end