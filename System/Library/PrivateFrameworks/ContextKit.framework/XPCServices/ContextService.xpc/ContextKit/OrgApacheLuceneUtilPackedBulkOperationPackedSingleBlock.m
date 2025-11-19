@interface OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock
- (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)initWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock

- (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)initWithInt:(int)a3
{
  OrgApacheLuceneUtilPackedBulkOperation_init(self, a2);
  self->bitsPerValue_ = a3;
  self->valueCount_ = 64 / a3;
  self->mask_ = ~(-1 << a3);
  return self;
}

@end