@interface OrgApacheLuceneIndexCodecReader
- (id)getBinaryDocValuesWithNSString:(id)a3;
- (id)getChildResources;
- (id)getDocsWithFieldWithNSString:(id)a3;
- (id)getNormValuesWithNSString:(id)a3;
- (id)getNumericDocValuesWithNSString:(id)a3;
- (id)getSortedDocValuesWithNSString:(id)a3;
- (id)getSortedNumericDocValuesWithNSString:(id)a3;
- (id)getSortedSetDocValuesWithNSString:(id)a3;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)dealloc;
- (void)doClose;
@end

@implementation OrgApacheLuceneIndexCodecReader

- (id)getNumericDocValuesWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  docValuesLocal = self->docValuesLocal_;
  if (!docValuesLocal)
  {
    goto LABEL_13;
  }

  v6 = [(OrgApacheLuceneUtilCloseableThreadLocal *)docValuesLocal get];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 getWithId:a3];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      return v9;
    }
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v9 = sub_10001AD94(self, a3, qword_100557A78);
  if (v9)
  {
    v10 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (v10)
    {
      v9 = [v10 getNumericWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:a3 withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getDocsWithFieldWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  docsWithFieldLocal = self->docsWithFieldLocal_;
  if (!docsWithFieldLocal)
  {
    goto LABEL_13;
  }

  v6 = [(OrgApacheLuceneUtilCloseableThreadLocal *)docsWithFieldLocal get];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 getWithId:a3];
  if (!v8)
  {
    v10 = [(OrgApacheLuceneIndexCodecReader *)self getFieldInfos];
    if (v10)
    {
      v11 = [v10 fieldInfoWithNSString:a3];
      v8 = v11;
      if (!v11)
      {
        return v8;
      }

      v12 = [v11 getDocValuesType];
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        v14 = v12;
        sub_10001B990();
        v12 = v14;
      }

      if (v12 == OrgApacheLuceneIndexDocValuesTypeEnum_values_)
      {
        return 0;
      }

      v13 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
      if (v13)
      {
        v8 = [v13 getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:v8];
        [v7 putWithId:a3 withId:v8];
        return v8;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v8;
}

- (id)getBinaryDocValuesWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v5 = sub_10001AD94(self, a3, qword_100557A80);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  docValuesLocal = self->docValuesLocal_;
  if (!docValuesLocal || (v8 = [(OrgApacheLuceneUtilCloseableThreadLocal *)docValuesLocal get]) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [v8 getWithId:a3];
  objc_opt_class();
  if (!v10)
  {
    v11 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (v11)
    {
      v10 = [v11 getBinaryWithOrgApacheLuceneIndexFieldInfo:v6];
      [v9 putWithId:a3 withId:v10];
      return v10;
    }

    goto LABEL_13;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v10;
}

- (id)getSortedDocValuesWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  docValuesLocal = self->docValuesLocal_;
  if (!docValuesLocal)
  {
    goto LABEL_13;
  }

  v6 = [(OrgApacheLuceneUtilCloseableThreadLocal *)docValuesLocal get];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 getWithId:a3];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      return v9;
    }
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v9 = sub_10001AD94(self, a3, qword_100557A88);
  if (v9)
  {
    v10 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (v10)
    {
      v9 = [v10 getSortedWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:a3 withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getSortedNumericDocValuesWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  docValuesLocal = self->docValuesLocal_;
  if (!docValuesLocal)
  {
    goto LABEL_13;
  }

  v6 = [(OrgApacheLuceneUtilCloseableThreadLocal *)docValuesLocal get];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 getWithId:a3];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      return v9;
    }
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v9 = sub_10001AD94(self, a3, qword_100557A90);
  if (v9)
  {
    v10 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (v10)
    {
      v9 = [v10 getSortedNumericWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:a3 withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getSortedSetDocValuesWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  docValuesLocal = self->docValuesLocal_;
  if (!docValuesLocal)
  {
    goto LABEL_13;
  }

  v6 = [(OrgApacheLuceneUtilCloseableThreadLocal *)docValuesLocal get];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 getWithId:a3];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      return v9;
    }
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v9 = sub_10001AD94(self, a3, qword_100557A98);
  if (v9)
  {
    v10 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (v10)
    {
      v9 = [v10 getSortedSetWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:a3 withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getNormValuesWithNSString:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  normsLocal = self->normsLocal_;
  if (!normsLocal)
  {
    goto LABEL_11;
  }

  v6 = [(OrgApacheLuceneUtilCloseableThreadLocal *)normsLocal get];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 getWithId:a3];
  if (!v8)
  {
    v10 = [(OrgApacheLuceneIndexCodecReader *)self getFieldInfos];
    if (v10)
    {
      v11 = [v10 fieldInfoWithNSString:a3];
      v8 = v11;
      if (!v11)
      {
        return v8;
      }

      if (![v11 hasNorms])
      {
        return 0;
      }

      v12 = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
      if (v12)
      {
        v8 = [v12 getNormsWithOrgApacheLuceneIndexFieldInfo:v8];
        [v7 putWithId:a3 withId:v8];
        return v8;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return v8;
}

- (void)doClose
{
  docsWithFieldLocal = self->docsWithFieldLocal_;
  v4[0] = self->docValuesLocal_;
  v4[1] = docsWithFieldLocal;
  v4[2] = self->normsLocal_;
  v3 = [IOSObjectArray arrayWithObjects:v4 count:3 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v3);
}

- (int64_t)ramBytesUsed
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  v3 = [(OrgApacheLuceneIndexCodecReader *)self getPostingsReader];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = [v3 ramBytesUsed];
  if ([(OrgApacheLuceneIndexCodecReader *)self getNormsReader])
  {
    v5 = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
    if (!v5)
    {
      goto LABEL_15;
    }

    v4 = &v4[[v5 ramBytesUsed]];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader])
  {
    v6 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (!v6)
    {
      goto LABEL_15;
    }

    v4 = &v4[[v6 ramBytesUsed]];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getFieldsReader])
  {
    v7 = [(OrgApacheLuceneIndexCodecReader *)self getFieldsReader];
    if (!v7)
    {
      goto LABEL_15;
    }

    v4 = &v4[[v7 ramBytesUsed]];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader])
  {
    v8 = [(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader];
    if (v8)
    {
      return &v4[[v8 ramBytesUsed]];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return v4;
}

- (id)getChildResources
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  v3 = new_JavaUtilArrayList_init();
  v4 = [(OrgApacheLuceneIndexCodecReader *)self getPostingsReader];
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"postings", v4, v5, v6, v7, v8, v9, v10)];
  if ([(OrgApacheLuceneIndexCodecReader *)self getNormsReader])
  {
    v11 = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"norms", v11, v12, v13, v14, v15, v16, v17)];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader])
  {
    v18 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"docvalues", v18, v19, v20, v21, v22, v23, v24)];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getFieldsReader])
  {
    v25 = [(OrgApacheLuceneIndexCodecReader *)self getFieldsReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"stored fields", v25, v26, v27, v28, v29, v30, v31)];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader])
  {
    v32 = [(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term vectors", v32, v33, v34, v35, v36, v37, v38)];
  }

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v3);
}

- (void)checkIntegrity
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  v3 = [(OrgApacheLuceneIndexCodecReader *)self getPostingsReader];
  if (!v3)
  {
    goto LABEL_17;
  }

  [v3 checkIntegrity];
  if ([(OrgApacheLuceneIndexCodecReader *)self getNormsReader])
  {
    v4 = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
    if (!v4)
    {
      goto LABEL_17;
    }

    [v4 checkIntegrity];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader])
  {
    v5 = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (!v5)
    {
      goto LABEL_17;
    }

    [v5 checkIntegrity];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getFieldsReader])
  {
    v6 = [(OrgApacheLuceneIndexCodecReader *)self getFieldsReader];
    if (!v6)
    {
      goto LABEL_17;
    }

    [v6 checkIntegrity];
  }

  if (![(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader])
  {
    return;
  }

  v7 = [(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader];
  if (!v7)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  [v7 checkIntegrity];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexCodecReader;
  [(OrgApacheLuceneIndexLeafReader *)&v3 dealloc];
}

@end