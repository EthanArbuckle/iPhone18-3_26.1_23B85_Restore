@interface OrgApacheLuceneUtilCounter_SerialCounter
- (int64_t)addAndGetWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilCounter_SerialCounter

- (int64_t)addAndGetWithLong:(int64_t)long
{
  v3 = self->count_ + long;
  self->count_ = v3;
  return v3;
}

@end