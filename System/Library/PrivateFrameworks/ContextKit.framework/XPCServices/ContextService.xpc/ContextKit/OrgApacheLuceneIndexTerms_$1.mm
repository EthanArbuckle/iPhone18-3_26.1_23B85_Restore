@interface OrgApacheLuceneIndexTerms_$1
- (OrgApacheLuceneIndexTerms_$1)initWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilAutomatonCompiledAutomaton:(id)automaton;
- (id)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexTerms_$1

- (id)nextSeekTermWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    ref = *(&self->super.savedStates_ + 1);
  }

  v4.receiver = self;
  v4.super_class = OrgApacheLuceneIndexTerms__1;
  return [(OrgApacheLuceneIndexAutomatonTermsEnum *)&v4 nextSeekTermWithOrgApacheLuceneUtilBytesRef:ref];
}

- (OrgApacheLuceneIndexTerms_$1)initWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermsEnum:(id)enum withOrgApacheLuceneUtilAutomatonCompiledAutomaton:(id)automaton
{
  JreStrongAssign((&self->super.savedStates_ + 1), ref);
  OrgApacheLuceneIndexAutomatonTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilAutomatonCompiledAutomaton_(self, enum, automaton);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexTerms__1;
  [(OrgApacheLuceneIndexAutomatonTermsEnum *)&v3 dealloc];
}

@end