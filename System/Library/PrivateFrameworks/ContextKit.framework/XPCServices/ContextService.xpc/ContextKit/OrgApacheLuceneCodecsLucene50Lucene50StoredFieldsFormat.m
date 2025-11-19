@interface OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat
- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneIndexFieldInfos:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6;
- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5;
- (id)implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat

- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneIndexFieldInfos:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6
{
  if (!a4)
  {
    goto LABEL_7;
  }

  v11 = [a4 getAttributeWithNSString:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY_];
  if (!v11)
  {
    v23 = *(a4 + 1);
    v21 = JreStrcat("$$$$", v12, v13, v14, v15, v16, v17, v18, @"missing value for ");
    v22 = new_JavaLangIllegalStateException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  v19 = [(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *)self implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_valueOfWithNSString_(v11)];
  if (!v19)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  return [v19 fieldsReaderWithOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexSegmentInfo:a4 withOrgApacheLuceneIndexFieldInfos:a5 withOrgApacheLuceneStoreIOContext:a6];
}

- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5
{
  if (!a4)
  {
    goto LABEL_8;
  }

  mode = self->mode_;
  if (!mode)
  {
    goto LABEL_8;
  }

  if ([a4 putAttributeWithNSString:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY_ withNSString:{-[JavaLangEnum name](mode, "name")}])
  {
    v11 = *(a4 + 1);
    [(JavaLangEnum *)self->mode_ name];
    v19 = JreStrcat("$$$$$$$$", v12, v13, v14, v15, v16, v17, v18, @"found existing value for ");
    v20 = new_JavaLangIllegalStateException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  v10 = [(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *)self implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum:self->mode_];
  if (!v10)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v10 fieldsWriterWithOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexSegmentInfo:a4 withOrgApacheLuceneStoreIOContext:a5];
}

- (id)implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum:(id)a3
{
  v3 = [a3 ordinal];
  if (v3 == 1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressionMode__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005CD10();
    }

    v4 = OrgApacheLuceneCodecsCompressingCompressionMode_HIGH_COMPRESSION_;
    v5 = @"Lucene50StoredFieldsHigh";
    v6 = 61440;
    v7 = 512;
  }

  else
  {
    if (v3)
    {
      v10 = new_JavaLangAssertionError_init();
      objc_exception_throw(v10);
    }

    if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressionMode__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10005CD10();
    }

    v4 = OrgApacheLuceneCodecsCompressingCompressionMode_FAST_;
    v5 = @"Lucene50StoredFieldsFast";
    v6 = 0x4000;
    v7 = 128;
  }

  v8 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat_initWithNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(v5, v4, v6, v7, 1024);

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat;
  [(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *)&v3 dealloc];
}

@end