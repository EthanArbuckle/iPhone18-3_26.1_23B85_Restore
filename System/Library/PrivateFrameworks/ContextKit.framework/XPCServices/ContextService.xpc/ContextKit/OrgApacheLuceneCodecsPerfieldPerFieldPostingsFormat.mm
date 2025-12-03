@interface OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat
- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)state;
- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)state;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat

- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)state
{
  v5 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter alloc];
  sub_1000C8D2C(&v5->super.super.isa, self, state);

  return v5;
}

- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)state
{
  v4 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader alloc];
  sub_1000C97D4(&v4->super.super.super.isa, state);

  return v4;
}

@end