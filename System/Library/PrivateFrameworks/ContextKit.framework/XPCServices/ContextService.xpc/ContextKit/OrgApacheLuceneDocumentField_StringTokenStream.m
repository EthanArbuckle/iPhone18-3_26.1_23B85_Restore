@interface OrgApacheLuceneDocumentField_StringTokenStream
- (BOOL)incrementToken;
- (void)dealloc;
- (void)end;
@end

@implementation OrgApacheLuceneDocumentField_StringTokenStream

- (BOOL)incrementToken
{
  used = self->used_;
  if (!used)
  {
    [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
    termAttribute = self->termAttribute_;
    if (!termAttribute || ([(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute *)termAttribute appendWithNSString:self->value_], (offsetAttribute = self->offsetAttribute_) == 0) || (value = self->value_) == 0)
    {
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAttribute setOffsetWithInt:0 withInt:[(NSString *)value length]];
    self->used_ = 1;
  }

  return !used;
}

- (void)end
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneDocumentField_StringTokenStream;
  [(OrgApacheLuceneAnalysisTokenStream *)&v6 end];
  value = self->value_;
  if (!value || (v4 = [(NSString *)value length], (offsetAttribute = self->offsetAttribute_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAttribute setOffsetWithInt:v4 withInt:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneDocumentField_StringTokenStream;
  [(OrgApacheLuceneUtilAttributeSource *)&v3 dealloc];
}

@end