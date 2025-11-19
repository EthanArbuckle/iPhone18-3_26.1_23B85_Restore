@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex
- (NSString)description;
- (id)getChildResources;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex

- (int64_t)ramBytesUsed
{
  termAddresses = self->termAddresses_;
  if (!termAddresses || (v4 = [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)termAddresses ramBytesUsed], (terms = self->terms_) == 0))
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPagedBytes_Reader *)terms ramBytesUsed]+ v4;
}

- (id)getChildResources
{
  v3 = new_JavaUtilArrayList_init();
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term bytes", self->terms_, v4, v5, v6, v7, v8, v9)];
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term addresses", self->termAddresses_, v10, v11, v12, v13, v14, v15)];

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v3);
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex getClass](self "getClass")];
  termAddresses = self->termAddresses_;
  if (!termAddresses)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)termAddresses size];
  return JreStrcat("$$JC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *)&v3 dealloc];
}

@end