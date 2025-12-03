@interface OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader
- (id)description;
- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getMergeInstance;
- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_FieldsReader

- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fields = self->fields_;
  if (!fields || !info)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(info + 1)];
  if (result)
  {

    return [result getNumericWithOrgApacheLuceneIndexFieldInfo:info];
  }

  return result;
}

- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fields = self->fields_;
  if (!fields || !info)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(info + 1)];
  if (result)
  {

    return [result getBinaryWithOrgApacheLuceneIndexFieldInfo:info];
  }

  return result;
}

- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fields = self->fields_;
  if (!fields || !info)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(info + 1)];
  if (result)
  {

    return [result getSortedWithOrgApacheLuceneIndexFieldInfo:info];
  }

  return result;
}

- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fields = self->fields_;
  if (!fields || !info)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(info + 1)];
  if (result)
  {

    return [result getSortedNumericWithOrgApacheLuceneIndexFieldInfo:info];
  }

  return result;
}

- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fields = self->fields_;
  if (!fields || !info)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(info + 1)];
  if (result)
  {

    return [result getSortedSetWithOrgApacheLuceneIndexFieldInfo:info];
  }

  return result;
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  fields = self->fields_;
  if (!fields || !info)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)fields getWithId:*(info + 1)];
  if (result)
  {

    return [result getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:info];
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

  values = [(JavaUtilMap *)formats values];

  OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(values);
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

      getKey = [*(*(&v15 + 1) + 8 * i) getKey];
      if (!getKey)
      {
        goto LABEL_14;
      }

      v12 = [getKey length];
      getValue = [v10 getValue];
      if (!getValue)
      {
        goto LABEL_14;
      }

      v7 += [getValue ramBytesUsed] + (2 * v12);
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