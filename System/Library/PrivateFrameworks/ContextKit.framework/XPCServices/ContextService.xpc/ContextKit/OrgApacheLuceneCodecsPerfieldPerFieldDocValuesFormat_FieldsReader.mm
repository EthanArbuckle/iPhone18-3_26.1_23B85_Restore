@interface OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader
- (id)description;
- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (id)getMergeInstance;
- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)a3;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader

- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  fields = self->fields_;
  if (!fields || !a3)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(a3 + 1)];
  if (result)
  {

    return [result getNumericWithOrgApacheLuceneIndexFieldInfo:a3];
  }

  return result;
}

- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  fields = self->fields_;
  if (!fields || !a3)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(a3 + 1)];
  if (result)
  {

    return [result getBinaryWithOrgApacheLuceneIndexFieldInfo:a3];
  }

  return result;
}

- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  fields = self->fields_;
  if (!fields || !a3)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(a3 + 1)];
  if (result)
  {

    return [result getSortedWithOrgApacheLuceneIndexFieldInfo:a3];
  }

  return result;
}

- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  fields = self->fields_;
  if (!fields || !a3)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(a3 + 1)];
  if (result)
  {

    return [result getSortedNumericWithOrgApacheLuceneIndexFieldInfo:a3];
  }

  return result;
}

- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  fields = self->fields_;
  if (!fields || !a3)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(a3 + 1)];
  if (result)
  {

    return [result getSortedSetWithOrgApacheLuceneIndexFieldInfo:a3];
  }

  return result;
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3
{
  fields = self->fields_;
  if (!fields || !a3)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(a3 + 1)];
  if (result)
  {

    return [result getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:a3];
  }

  return result;
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
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  formats = self->formats_;
  if (!formats || (v3 = [(JavaUtilMap *)formats entrySet]) == 0)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = [*(*(&v15 + 1) + 8 * i) getKey];
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = [v11 length];
      v13 = [v10 getValue];
      if (!v13)
      {
        goto LABEL_14;
      }

      v7 += [v13 ramBytesUsed] + (2 * v12);
    }

    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);
  return v7;
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
  v3 = self->this$0_;
  v4 = [OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader alloc];
  sub_10008EBE8(&v4->super.super.isa, v3, self);

  return v4;
}

- (id)description
{
  formats = self->formats_;
  if (!formats)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)formats size];
  return JreStrcat("$IC", v3, v4, v5, v6, v7, v8, v9, @"PerFieldDocValues(formats=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader;
  [(OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader *)&v3 dealloc];
}

@end