@interface OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly
- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)init;
- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)initWithInt:(int)a3 withInt:(int)a4;
@end

@implementation OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly

- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)init
{
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(self, @"AAPL50");
  self->minTermBlockSize_ = 25;
  self->maxTermBlockSize_ = 48;
  return self;
}

- (OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly)initWithInt:(int)a3 withInt:(int)a4
{
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(self, @"AAPL50");
  self->minTermBlockSize_ = a3;
  self->maxTermBlockSize_ = a4;
  return self;
}

@end