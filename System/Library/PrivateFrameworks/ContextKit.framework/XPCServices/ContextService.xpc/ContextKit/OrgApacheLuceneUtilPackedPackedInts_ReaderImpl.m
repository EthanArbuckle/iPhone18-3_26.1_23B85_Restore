@interface OrgApacheLuceneUtilPackedPackedInts_ReaderImpl
- (OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)initWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_ReaderImpl

- (OrgApacheLuceneUtilPackedPackedInts_ReaderImpl)initWithInt:(int)a3
{
  OrgApacheLuceneIndexNumericDocValues_init(self, a2);
  self->valueCount_ = a3;
  return self;
}

@end