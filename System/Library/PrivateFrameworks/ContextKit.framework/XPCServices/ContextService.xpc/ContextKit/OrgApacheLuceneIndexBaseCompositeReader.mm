@interface OrgApacheLuceneIndexBaseCompositeReader
- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)a3;
- (int)getDocCountWithNSString:(id)a3;
- (int64_t)getSumDocFreqWithNSString:(id)a3;
- (int64_t)getSumTotalTermFreqWithNSString:(id)a3;
- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexBaseCompositeReader

- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  v6 = 0;
  v7 = 0;
  while (v6 < subReaders->super.size_)
  {
    v8 = (&subReaders->elementType_)[v6];
    if (v8)
    {
      v7 += [(IOSClass *)v8 docFreqWithOrgApacheLuceneIndexTerm:a3];
      ++v6;
      subReaders = self->subReaders_;
      if (subReaders)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  return v7;
}

- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v6 = 0;
  v7 = 0;
  while (v6 < subReaders->super.size_)
  {
    v8 = (&subReaders->elementType_)[v6];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [(IOSClass *)v8 totalTermFreqWithOrgApacheLuceneIndexTerm:a3];
    if (v9 == -1)
    {
      return -1;
    }

    v7 += v9;
    ++v6;
    subReaders = self->subReaders_;
    if (!subReaders)
    {
      goto LABEL_7;
    }
  }

  return v7;
}

- (int64_t)getSumDocFreqWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = 0;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v10 = [v9 getSumDocFreqWithNSString:a3];
    v6 += v10;
    if (v10 == -1)
    {
      return -1;
    }
  }

  return v6;
}

- (int)getDocCountWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = 0;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v10 = [v9 getDocCountWithNSString:a3];
    v6 += v10;
    if (v10 == -1)
    {
      return -1;
    }
  }

  return v6;
}

- (int64_t)getSumTotalTermFreqWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v6 = 0;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_8;
    }

    ++p_elementType;
    v10 = [v9 getSumTotalTermFreqWithNSString:a3];
    v6 += v10;
    if (v10 == -1)
    {
      return -1;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexBaseCompositeReader;
  [(OrgApacheLuceneIndexIndexReader *)&v3 dealloc];
}

@end