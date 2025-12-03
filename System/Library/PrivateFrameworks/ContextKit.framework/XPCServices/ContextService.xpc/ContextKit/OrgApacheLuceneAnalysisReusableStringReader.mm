@interface OrgApacheLuceneAnalysisReusableStringReader
- (OrgApacheLuceneAnalysisReusableStringReader)init;
- (int)read;
- (void)dealloc;
- (void)setValueWithNSString:(id)string;
@end

@implementation OrgApacheLuceneAnalysisReusableStringReader

- (void)setValueWithNSString:(id)string
{
  JreStrongAssign(&self->s_, string);
  if (!string)
  {
    JreThrowNullPointerException();
  }

  self->size_ = [string length];
  self->pos_ = 0;
}

- (int)read
{
  pos = self->pos_;
  if (pos >= self->size_)
  {
    JreStrongAssign(&self->s_, 0);
    return -1;
  }

  else
  {
    s = self->s_;
    if (!s)
    {
      JreThrowNullPointerException();
    }

    self->pos_ = pos + 1;
    return [(NSString *)s charAtWithInt:?];
  }
}

- (OrgApacheLuceneAnalysisReusableStringReader)init
{
  JavaIoReader_init(self);
  self->pos_ = 0;
  self->size_ = 0;
  JreStrongAssign(&self->s_, 0);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisReusableStringReader;
  [(JavaIoReader *)&v3 dealloc];
}

@end