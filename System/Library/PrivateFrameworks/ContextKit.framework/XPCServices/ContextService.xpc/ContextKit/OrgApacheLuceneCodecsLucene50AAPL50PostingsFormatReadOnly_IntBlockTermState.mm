@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState
- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState)init;
- (id)clone;
- (id)description;
- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)state;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState

- (id)clone
{
  v3 = new_OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState_init();
  [(OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState *)v3 copyFromWithOrgApacheLuceneIndexTermState:self];
  return v3;
}

- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)state
{
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState;
  [(OrgApacheLuceneCodecsBlockTermState *)&v5 copyFromWithOrgApacheLuceneIndexTermState:?];
  objc_opt_class();
  if (!state)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  self->docStartFP_ = *(state + 7);
  self->posStartFP_ = *(state + 8);
  self->payStartFP_ = *(state + 9);
  self->lastPosBlockOffset_ = *(state + 11);
  self->skipOffset_ = *(state + 10);
  self->singletonDocID_ = *(state + 24);
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState;
  v3 = [(OrgApacheLuceneCodecsBlockTermState *)&v17 description];
  singletonDocID = self->singletonDocID_;
  lastPosBlockOffset = self->lastPosBlockOffset_;
  payStartFP = self->payStartFP_;
  posStartFP = self->posStartFP_;
  docStartFP = self->docStartFP_;
  return JreStrcat("$$J$J$J$J$I", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState)init
{
  OrgApacheLuceneCodecsBlockTermState_init(self, a2);
  self->docStartFP_ = 0;
  self->posStartFP_ = 0;
  self->payStartFP_ = 0;
  self->skipOffset_ = -1;
  self->lastPosBlockOffset_ = -1;
  self->singletonDocID_ = -1;
  return self;
}

@end