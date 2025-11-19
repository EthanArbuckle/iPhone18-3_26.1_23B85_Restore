@interface OrgApacheLuceneSearchReqOptSumScorer
- (float)score;
- (id)asTwoPhaseIterator;
- (id)getChildren;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchReqOptSumScorer

- (id)asTwoPhaseIterator
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer asTwoPhaseIterator];
}

- (int)nextDoc
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer nextDoc];
}

- (int)docID
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer docID];
}

- (float)score
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    goto LABEL_10;
  }

  v4 = [(OrgApacheLuceneSearchScorer *)reqScorer docID];
  [(OrgApacheLuceneSearchScorer *)self->reqScorer_ score];
  v6 = v5;
  optScorer = self->optScorer_;
  if (optScorer)
  {
    v8 = [(OrgApacheLuceneSearchScorer *)optScorer docID];
    if (v8 < v4)
    {
      v8 = [(OrgApacheLuceneSearchScorer *)self->optScorer_ advanceWithInt:v4];
      if (v8 == 0x7FFFFFFF)
      {
        JreStrongAssign(&self->optScorer_, 0);
        return v6;
      }
    }

    if (v8 != v4)
    {
      return v6;
    }

    v9 = self->optScorer_;
    if (v9)
    {
      [(OrgApacheLuceneSearchScorer *)v9 score];
      return v6 + v10;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  return v6;
}

- (int)freq
{
  [(OrgApacheLuceneSearchReqOptSumScorer *)self score];
  optScorer = self->optScorer_;
  if (!optScorer)
  {
    return 1;
  }

  v4 = [(OrgApacheLuceneSearchScorer *)optScorer docID];
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  if (v4 == [(OrgApacheLuceneSearchScorer *)reqScorer docID])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)getChildren
{
  v3 = new_JavaUtilArrayList_initWithInt_(2);
  [(JavaUtilArrayList *)v3 addWithId:new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->reqScorer_, @"MUST")];
  [(JavaUtilArrayList *)v3 addWithId:new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->optScorer_, @"SHOULD")];
  return v3;
}

- (int64_t)cost
{
  reqScorer = self->reqScorer_;
  if (!reqScorer)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchScorer *)reqScorer cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchReqOptSumScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end