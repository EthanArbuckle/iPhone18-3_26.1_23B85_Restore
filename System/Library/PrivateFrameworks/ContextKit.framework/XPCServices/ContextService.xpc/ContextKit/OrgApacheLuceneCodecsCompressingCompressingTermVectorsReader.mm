@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader
- (NSString)description;
- (id)clone;
- (id)getChildResources;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader

- (void)close
{
  if (!self->closed_)
  {
    vectorsStream = self->vectorsStream_;
    v3 = [IOSObjectArray arrayWithObjects:&vectorsStream count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v3);
    self->closed_ = 1;
  }
}

- (id)clone
{
  v3 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader alloc];
  sub_10007F860(v3, self);

  return v3;
}

- (int64_t)ramBytesUsed
{
  indexReader = self->indexReader_;
  if (!indexReader)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)indexReader ramBytesUsed];
}

- (id)getChildResources
{
  v8 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term vector index", self->indexReader_, v2, v3, v4, v5, v6, v7);

  return JavaUtilCollections_singletonWithId_(v8);
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader getClass](self "getClass")];
  chunkSize = self->chunkSize_;
  compressionMode = self->compressionMode_;
  return JreStrcat("$$@$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *)&v3 dealloc];
}

@end