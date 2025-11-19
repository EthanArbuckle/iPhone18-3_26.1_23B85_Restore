@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader
- (id)clone;
- (id)description;
- (id)getChildResources;
- (id)getMergeInstance;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader

- (void)close
{
  if (!self->closed_)
  {
    fieldsStream = self->fieldsStream_;
    v3 = [IOSObjectArray arrayWithObjects:&fieldsStream count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v3);
    self->closed_ = 1;
  }
}

- (id)clone
{
  sub_1000A3C90(self);
  v3 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader alloc];
  sub_1000A3510(v3, self, 0);

  return v3;
}

- (id)getMergeInstance
{
  sub_1000A3C90(self);
  v3 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader alloc];
  sub_1000A3510(v3, self, 1);

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
  v8 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"stored field index", self->indexReader_, v2, v3, v4, v5, v6, v7);

  return JavaUtilCollections_singletonWithId_(v8);
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader getClass](self "getClass")];
  chunkSize = self->chunkSize_;
  compressionMode = self->compressionMode_;
  return JreStrcat("$$@$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *)&v3 dealloc];
}

@end