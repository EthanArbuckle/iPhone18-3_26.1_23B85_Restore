@interface OrgApacheLuceneIndexLeafReader
- (id)termDocsEnumWithOrgApacheLuceneIndexTerm:(id)a3;
- (id)termPositionsEnumWithOrgApacheLuceneIndexTerm:(id)a3;
- (id)termsWithNSString:(id)a3;
- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)a3;
- (int)getDocCountWithNSString:(id)a3;
- (int64_t)getSumDocFreqWithNSString:(id)a3;
- (int64_t)getSumTotalTermFreqWithNSString:(id)a3;
- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexLeafReader

- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)a3
{
  if (!a3)
  {
    goto LABEL_10;
  }

  v5 = [a3 field];
  v6 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 termsWithNSString:v5];
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 iterator];
  if (!v8)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if (![v8 seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(a3, "bytes")}])
  {
    return 0;
  }

  return [v9 docFreq];
}

- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)a3
{
  if (!a3)
  {
    goto LABEL_10;
  }

  v5 = [a3 field];
  v6 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 termsWithNSString:v5];
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 iterator];
  if (!v8)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if (![v8 seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(a3, "bytes")}])
  {
    return 0;
  }

  return [v9 totalTermFreq];
}

- (int64_t)getSumDocFreqWithNSString:(id)a3
{
  v4 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  result = [v4 termsWithNSString:a3];
  if (result)
  {

    return [result getSumDocFreq];
  }

  return result;
}

- (int)getDocCountWithNSString:(id)a3
{
  v4 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 termsWithNSString:a3];
  if (v5)
  {

    LODWORD(v5) = [v5 getDocCount];
  }

  return v5;
}

- (int64_t)getSumTotalTermFreqWithNSString:(id)a3
{
  v4 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  result = [v4 termsWithNSString:a3];
  if (result)
  {

    return [result getSumTotalTermFreq];
  }

  return result;
}

- (id)termsWithNSString:(id)a3
{
  v4 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 termsWithNSString:a3];
}

- (id)termDocsEnumWithOrgApacheLuceneIndexTerm:(id)a3
{
  v5 = [a3 field];
  v6 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v6 termsWithNSString:v5];
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 iterator];
  if (!v8)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if (![v8 seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(a3, "bytes")}])
  {
    return 0;
  }

  v10 = [(OrgApacheLuceneIndexLeafReader *)self getLiveDocs];

  return [v9 docsWithOrgApacheLuceneUtilBits:v10 withOrgApacheLuceneIndexDocsEnum:0];
}

- (id)termPositionsEnumWithOrgApacheLuceneIndexTerm:(id)a3
{
  v5 = [a3 field];
  v6 = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v6 termsWithNSString:v5];
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 iterator];
  if (!v8)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if (![v8 seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(a3, "bytes")}])
  {
    return 0;
  }

  v10 = [(OrgApacheLuceneIndexLeafReader *)self getLiveDocs];

  return [v9 docsAndPositionsWithOrgApacheLuceneUtilBits:v10 withOrgApacheLuceneIndexDocsAndPositionsEnum:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReader;
  [(OrgApacheLuceneIndexIndexReader *)&v3 dealloc];
}

@end