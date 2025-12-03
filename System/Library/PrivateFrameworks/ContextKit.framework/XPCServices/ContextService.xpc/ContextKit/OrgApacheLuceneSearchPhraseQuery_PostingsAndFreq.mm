@interface OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  position = self->position_;
  v6 = *(id + 4);
  result = position - v6;
  if (position == v6)
  {
    nTerms = self->nTerms_;
    v9 = *(id + 8);
    result = nTerms - v9;
    if (nTerms == v9)
    {
      if (!nTerms)
      {
        return 0;
      }

      terms = self->terms_;
      if (terms)
      {
        v11 = 0;
        while (v11 < terms->super.size_)
        {
          v12 = (&terms->elementType_)[v11];
          if (!v12)
          {
            goto LABEL_17;
          }

          v13 = *(id + 3);
          v14 = *(v13 + 8);
          if (v11 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v11);
          }

          result = [(IOSClass *)v12 compareToWithId:*(v13 + 24 + 8 * v11)];
          if (result)
          {
            return result;
          }

          ++v11;
          terms = self->terms_;
          if (!terms)
          {
            goto LABEL_17;
          }
        }

        return 0;
      }

LABEL_17:
      JreThrowNullPointerException();
    }
  }

  return result;
}

- (unint64_t)hash
{
  v2 = self->position_ + 31;
  if (self->nTerms_ >= 1)
  {
    v4 = 0;
    do
    {
      terms = self->terms_;
      if (!terms)
      {
        goto LABEL_10;
      }

      size = terms->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v7 = (&terms->elementType_)[v4];
      if (!v7)
      {
LABEL_10:
        JreThrowNullPointerException();
      }

      v2 = 31 * v2 + [(IOSClass *)v7 hash];
      ++v4;
    }

    while (v4 < self->nTerms_);
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  getClass = [(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *)self getClass];
  if (getClass != [equal getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->position_ != *(equal + 4))
  {
    return 0;
  }

  terms = self->terms_;
  v7 = *(equal + 3);
  if (!terms)
  {
    return v7 == 0;
  }

  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(terms, v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq;
  [(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *)&v3 dealloc];
}

@end