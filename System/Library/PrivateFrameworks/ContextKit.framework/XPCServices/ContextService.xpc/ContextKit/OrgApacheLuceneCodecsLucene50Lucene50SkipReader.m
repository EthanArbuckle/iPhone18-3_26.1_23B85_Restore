@interface OrgApacheLuceneCodecsLucene50Lucene50SkipReader
- (int)getNextSkipDoc;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50SkipReader

- (int)getNextSkipDoc
{
  skipDoc = self->super.skipDoc_;
  if (!skipDoc)
  {
    JreThrowNullPointerException();
  }

  size = skipDoc->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return *(&skipDoc->super.size_ + 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50SkipReader;
  [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)&v3 dealloc];
}

@end