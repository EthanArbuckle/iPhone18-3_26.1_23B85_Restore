@interface OrgApacheLuceneUtilCounter_SerialCounter
- (int64_t)addAndGetWithLong:(int64_t)a3;
@end

@implementation OrgApacheLuceneUtilCounter_SerialCounter

- (int64_t)addAndGetWithLong:(int64_t)a3
{
  v3 = self->count_ + a3;
  self->count_ = v3;
  return v3;
}

@end