@interface OrgApacheLuceneIndexLeafReader
- (id)termDocsEnumWithOrgApacheLuceneIndexTerm:(id)term;
- (id)termPositionsEnumWithOrgApacheLuceneIndexTerm:(id)term;
- (id)termsWithNSString:(id)string;
- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)term;
- (int)getDocCountWithNSString:(id)string;
- (int64_t)getSumDocFreqWithNSString:(id)string;
- (int64_t)getSumTotalTermFreqWithNSString:(id)string;
- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)term;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexLeafReader

- (int)docFreqWithOrgApacheLuceneIndexTerm:(id)term
{
  if (!term)
  {
    goto LABEL_10;
  }

  field = [term field];
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    goto LABEL_10;
  }

  v7 = [fields termsWithNSString:field];
  if (!v7)
  {
    return 0;
  }

  iterator = [v7 iterator];
  if (!iterator)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v9 = iterator;
  if (![iterator seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(term, "bytes")}])
  {
    return 0;
  }

  return [v9 docFreq];
}

- (int64_t)totalTermFreqWithOrgApacheLuceneIndexTerm:(id)term
{
  if (!term)
  {
    goto LABEL_10;
  }

  field = [term field];
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    goto LABEL_10;
  }

  v7 = [fields termsWithNSString:field];
  if (!v7)
  {
    return 0;
  }

  iterator = [v7 iterator];
  if (!iterator)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v9 = iterator;
  if (![iterator seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(term, "bytes")}])
  {
    return 0;
  }

  return [v9 totalTermFreq];
}

- (int64_t)getSumDocFreqWithNSString:(id)string
{
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  result = [fields termsWithNSString:string];
  if (result)
  {

    return [result getSumDocFreq];
  }

  return result;
}

- (int)getDocCountWithNSString:(id)string
{
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  v5 = [fields termsWithNSString:string];
  if (v5)
  {

    LODWORD(v5) = [v5 getDocCount];
  }

  return v5;
}

- (int64_t)getSumTotalTermFreqWithNSString:(id)string
{
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  result = [fields termsWithNSString:string];
  if (result)
  {

    return [result getSumTotalTermFreq];
  }

  return result;
}

- (id)termsWithNSString:(id)string
{
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  return [fields termsWithNSString:string];
}

- (id)termDocsEnumWithOrgApacheLuceneIndexTerm:(id)term
{
  field = [term field];
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    goto LABEL_9;
  }

  v7 = [fields termsWithNSString:field];
  if (!v7)
  {
    return 0;
  }

  iterator = [v7 iterator];
  if (!iterator)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = iterator;
  if (![iterator seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(term, "bytes")}])
  {
    return 0;
  }

  getLiveDocs = [(OrgApacheLuceneIndexLeafReader *)self getLiveDocs];

  return [v9 docsWithOrgApacheLuceneUtilBits:getLiveDocs withOrgApacheLuceneIndexDocsEnum:0];
}

- (id)termPositionsEnumWithOrgApacheLuceneIndexTerm:(id)term
{
  field = [term field];
  fields = [(OrgApacheLuceneIndexLeafReader *)self fields];
  if (!fields)
  {
    goto LABEL_9;
  }

  v7 = [fields termsWithNSString:field];
  if (!v7)
  {
    return 0;
  }

  iterator = [v7 iterator];
  if (!iterator)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = iterator;
  if (![iterator seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(term, "bytes")}])
  {
    return 0;
  }

  getLiveDocs = [(OrgApacheLuceneIndexLeafReader *)self getLiveDocs];

  return [v9 docsAndPositionsWithOrgApacheLuceneUtilBits:getLiveDocs withOrgApacheLuceneIndexDocsAndPositionsEnum:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReader;
  [(OrgApacheLuceneIndexIndexReader *)&v3 dealloc];
}

@end