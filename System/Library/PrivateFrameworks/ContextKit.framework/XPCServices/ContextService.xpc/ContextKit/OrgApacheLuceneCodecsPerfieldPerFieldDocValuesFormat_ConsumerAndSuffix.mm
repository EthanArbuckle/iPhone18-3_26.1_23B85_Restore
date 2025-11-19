@interface OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_ConsumerAndSuffix
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_ConsumerAndSuffix

- (void)close
{
  consumer = self->consumer_;
  if (!consumer)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsDocValuesConsumer *)consumer close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_ConsumerAndSuffix;
  [(OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_ConsumerAndSuffix *)&v3 dealloc];
}

@end