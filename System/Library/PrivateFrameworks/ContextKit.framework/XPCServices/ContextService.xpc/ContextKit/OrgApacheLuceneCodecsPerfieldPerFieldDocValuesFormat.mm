@interface OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat
- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)state;
- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)state;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat

- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)state
{
  v5 = [OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsWriter alloc];
  sub_10008E564(&v5->super.super.isa, self, state);

  return v5;
}

- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)state
{
  v5 = [OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader alloc];
  sub_10008EE9C(&v5->super.super.isa, self, state);

  return v5;
}

@end