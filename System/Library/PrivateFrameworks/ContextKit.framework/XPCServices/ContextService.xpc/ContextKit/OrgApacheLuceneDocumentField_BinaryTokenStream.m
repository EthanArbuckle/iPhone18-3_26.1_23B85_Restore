@interface OrgApacheLuceneDocumentField_BinaryTokenStream
- (BOOL)incrementToken;
- (void)dealloc;
@end

@implementation OrgApacheLuceneDocumentField_BinaryTokenStream

- (BOOL)incrementToken
{
  used = self->used_;
  if (!used)
  {
    [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
    bytesAtt = self->bytesAtt_;
    if (!bytesAtt)
    {
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneAnalysisTokenattributesBytesTermAttribute *)bytesAtt setBytesRefWithOrgApacheLuceneUtilBytesRef:self->value_];
    self->used_ = 1;
  }

  return !used;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneDocumentField_BinaryTokenStream;
  [(OrgApacheLuceneUtilAttributeSource *)&v3 dealloc];
}

@end