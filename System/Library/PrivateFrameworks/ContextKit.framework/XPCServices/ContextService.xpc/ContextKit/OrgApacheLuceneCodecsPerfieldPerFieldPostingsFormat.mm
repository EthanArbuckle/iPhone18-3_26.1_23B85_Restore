@interface OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat
- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)a3;
- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)a3;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat

- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)a3
{
  v5 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter alloc];
  sub_1000C8D2C(&v5->super.super.isa, self, a3);

  return v5;
}

- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)a3
{
  v4 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader alloc];
  sub_1000C97D4(&v4->super.super.super.isa, a3);

  return v4;
}

@end