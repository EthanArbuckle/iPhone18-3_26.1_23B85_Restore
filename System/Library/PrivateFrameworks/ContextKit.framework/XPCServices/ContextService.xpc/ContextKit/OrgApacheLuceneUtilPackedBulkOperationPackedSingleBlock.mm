@interface OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock
- (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)initWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock

- (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)initWithInt:(int)int
{
  OrgApacheLuceneUtilPackedBulkOperation_init(self, a2);
  self->bitsPerValue_ = int;
  self->valueCount_ = 64 / int;
  self->mask_ = ~(-1 << int);
  return self;
}

@end