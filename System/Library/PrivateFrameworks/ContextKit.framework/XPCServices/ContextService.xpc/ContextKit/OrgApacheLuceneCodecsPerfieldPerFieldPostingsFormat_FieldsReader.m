@interface OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader
+ (void)initialize;
- (id)description;
- (id)getMergeInstance;
- (id)iterator;
- (id)termsWithNSString:(id)a3;
- (int)size;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader

- (id)iterator
{
  fields = self->fields_;
  if (!fields || (v3 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([(JavaUtilMap *)fields keySet])) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollections_UnmodifiableCollection *)v3 iterator];
}

- (id)termsWithNSString:(id)a3
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:?];
  if (result)
  {

    return [result termsWithNSString:a3];
  }

  return result;
}

- (int)size
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)fields size];
}

- (void)close
{
  formats = self->formats_;
  if (!formats)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilMap *)formats values];

  OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(v3);
}

- (int64_t)ramBytesUsed
{
  fields = self->fields_;
  if (!fields)
  {
    goto LABEL_18;
  }

  v4 = qword_100554498;
  v5 = [(JavaUtilMap *)fields size];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  formats = self->formats_;
  if (!formats)
  {
    goto LABEL_18;
  }

  v7 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_;
  v8 = [(JavaUtilMap *)formats size];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v9 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(JavaUtilMap *)self->formats_ entrySet];
  if (!v10)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = v4 + 2 * (v7 * v5 + v9 * v8);
  v13 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        if (!v17)
        {
          goto LABEL_18;
        }

        v18 = [v17 getValue];
        if (!v18)
        {
          goto LABEL_18;
        }

        v12 += [v18 ramBytesUsed];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  return v12;
}

- (void)checkIntegrity
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  formats = self->formats_;
  if (!formats || (v3 = [(JavaUtilMap *)formats values]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_12;
        }

        [v9 checkIntegrity];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)getMergeInstance
{
  v3 = [OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader alloc];
  sub_1000C9520(&v3->super.super.super.isa, self);

  return v3;
}

- (id)description
{
  if (!self->formats_)
  {
    JreThrowNullPointerException();
  }

  segment = self->segment_;
  [(JavaUtilMap *)self->formats_ size];
  return JreStrcat("$$$IC", v3, v4, v5, v6, v7, v8, v9, @"PerFieldPostings(segment=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader;
  [(OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader_class_();
    qword_100554498 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader__initialized);
  }
}

@end