@interface OrgApacheLuceneIndexTermContext
- (BOOL)hasOnlyRealTerms;
- (id)description;
- (void)accumulateStatisticsWithInt:(int)int withLong:(int64_t)long;
- (void)clear;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexTermContext

- (void)clear
{
  self->docFreq_ = 0;
  self->totalTermFreq_ = 0;
  JavaUtilArrays_fillWithNSObjectArray_withId_(self->states_, 0);
}

- (void)accumulateStatisticsWithInt:(int)int withLong:(int64_t)long
{
  self->docFreq_ += int;
  totalTermFreq = self->totalTermFreq_;
  v5 = totalTermFreq | long;
  v6 = totalTermFreq + long;
  if (v5 < 0)
  {
    v6 = -1;
  }

  self->totalTermFreq_ = v6;
}

- (BOOL)hasOnlyRealTerms
{
  states = self->states_;
  if (!states)
  {
    JreThrowNullPointerException();
  }

  p_elementType = &states->elementType_;
  v4 = &(&states->elementType_)[states->super.size_];
  while (p_elementType < v4)
  {
    v6 = *p_elementType++;
    v5 = v6;
    if (v6)
    {
      isRealTerm = [v5 isRealTerm];
      if (!isRealTerm)
      {
        return isRealTerm;
      }
    }
  }

  LOBYTE(isRealTerm) = 1;
  return isRealTerm;
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"TermContext\n"];
  states = self->states_;
  if (!states)
  {
    goto LABEL_8;
  }

  p_elementType = &states->elementType_;
  v6 = &(&states->elementType_)[states->super.size_];
  if (&states->elementType_ < v6)
  {
    while (1)
    {
      v7 = *p_elementType;
      [(JavaLangStringBuilder *)v3 appendWithNSString:@"  state="];
      if (!v7)
      {
        break;
      }

      ++p_elementType;
      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v7 description]);
      [(JavaLangStringBuilder *)v3 appendWithChar:10];
      if (p_elementType >= v6)
      {
        goto LABEL_5;
      }
    }

LABEL_8:
    JreThrowNullPointerException();
  }

LABEL_5:

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexTermContext;
  [(OrgApacheLuceneIndexTermContext *)&v3 dealloc];
}

@end