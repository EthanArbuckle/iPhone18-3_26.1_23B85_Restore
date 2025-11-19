@interface OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat
- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)a3;
- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)a3;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat

- (id)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(id)a3
{
  v5 = [OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsWriter alloc];
  sub_10008E564(&v5->super.super.isa, self, a3);

  return v5;
}

- (id)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(id)a3
{
  v5 = [OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader alloc];
  sub_10008EE9C(&v5->super.super.isa, self, a3);

  return v5;
}

@end