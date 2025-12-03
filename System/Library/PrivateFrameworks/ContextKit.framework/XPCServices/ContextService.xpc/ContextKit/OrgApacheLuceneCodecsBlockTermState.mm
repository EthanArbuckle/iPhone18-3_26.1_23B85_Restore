@interface OrgApacheLuceneCodecsBlockTermState
- (OrgApacheLuceneCodecsBlockTermState)init;
- (id)description;
- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)state;
@end

@implementation OrgApacheLuceneCodecsBlockTermState

- (OrgApacheLuceneCodecsBlockTermState)init
{
  OrgApacheLuceneIndexOrdTermState_init(self, a2);
  self->isRealTerm_ = 1;
  return self;
}

- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)state
{
  objc_opt_class();
  if (state && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5.receiver = self;
  v5.super_class = OrgApacheLuceneCodecsBlockTermState;
  [(OrgApacheLuceneIndexOrdTermState *)&v5 copyFromWithOrgApacheLuceneIndexTermState:state];
  self->docFreq_ = *(state + 4);
  self->totalTermFreq_ = *(state + 3);
  self->termBlockOrd_ = *(state + 8);
  self->blockFilePointer_ = *(state + 5);
  self->isRealTerm_ = *(state + 48);
}

- (id)description
{
  isRealTerm = self->isRealTerm_;
  blockFilePointer = self->blockFilePointer_;
  termBlockOrd = self->termBlockOrd_;
  totalTermFreq = self->totalTermFreq_;
  docFreq = self->docFreq_;
  return JreStrcat("$I$J$I$J$Z", a2, v2, v3, v4, v5, v6, v7, @"docFreq=");
}

@end