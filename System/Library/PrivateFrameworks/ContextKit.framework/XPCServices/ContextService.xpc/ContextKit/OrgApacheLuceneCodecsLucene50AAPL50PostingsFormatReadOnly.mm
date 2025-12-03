@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly
- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)init;
- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)initWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly

- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)init
{
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(self, @"AAPL50");
  self->minTermBlockSize_ = 25;
  self->maxTermBlockSize_ = 48;
  return self;
}

- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)initWithInt:(int)int withInt:(int)withInt
{
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(self, @"AAPL50");
  self->minTermBlockSize_ = int;
  self->maxTermBlockSize_ = withInt;
  return self;
}

@end