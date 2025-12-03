@interface OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat
- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context;
- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
- (id)implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum:(id)enum;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat

- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info)
  {
    goto LABEL_7;
  }

  v11 = [info getAttributeWithNSString:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY_];
  if (!v11)
  {
    v23 = *(info + 1);
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

  return [v19 fieldsReaderWithOrgApacheLuceneStoreDirectory:directory withOrgApacheLuceneIndexSegmentInfo:info withOrgApacheLuceneIndexFieldInfos:infos withOrgApacheLuceneStoreIOContext:context];
}

- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info)
  {
    goto LABEL_8;
  }

  mode = self->mode_;
  if (!mode)
  {
    goto LABEL_8;
  }

  if ([info putAttributeWithNSString:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_MODE_KEY_ withNSString:{-[JavaLangEnum name](mode, "name")}])
  {
    v11 = *(info + 1);
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

  return [v10 fieldsWriterWithOrgApacheLuceneStoreDirectory:directory withOrgApacheLuceneIndexSegmentInfo:info withOrgApacheLuceneStoreIOContext:context];
}

- (id)implWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum:(id)enum
{
  ordinal = [enum ordinal];
  if (ordinal == 1)
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
    if (ordinal)
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