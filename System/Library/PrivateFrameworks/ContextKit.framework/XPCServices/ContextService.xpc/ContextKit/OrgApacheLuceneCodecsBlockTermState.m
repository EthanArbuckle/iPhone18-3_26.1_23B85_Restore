@interface OrgApacheLuceneCodecsBlockTermState
- (OrgApacheLuceneCodecsBlockTermState)init;
- (id)description;
- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)a3;
@end

@implementation OrgApacheLuceneCodecsBlockTermState

- (OrgApacheLuceneCodecsBlockTermState)init
{
  OrgApacheLuceneIndexOrdTermState_init(self, a2);
  self->isRealTerm_ = 1;
  return self;
}

- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)a3
{
  objc_opt_class();
  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5.receiver = self;
  v5.super_class = OrgApacheLuceneCodecsBlockTermState;
  [(OrgApacheLuceneIndexOrdTermState *)&v5 copyFromWithOrgApacheLuceneIndexTermState:a3];
  self->docFreq_ = *(a3 + 4);
  self->totalTermFreq_ = *(a3 + 3);
  self->termBlockOrd_ = *(a3 + 8);
  self->blockFilePointer_ = *(a3 + 5);
  self->isRealTerm_ = *(a3 + 48);
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