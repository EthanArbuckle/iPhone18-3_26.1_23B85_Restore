@interface OrgApacheLuceneUtilPackedPackedInts_ReaderImpl
- (OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)initWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_ReaderImpl

- (OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)initWithInt:(int)int
{
  OrgApacheLuceneIndexNumericDocValues_init(self, a2);
  self->valueCount_ = int;
  return self;
}

@end