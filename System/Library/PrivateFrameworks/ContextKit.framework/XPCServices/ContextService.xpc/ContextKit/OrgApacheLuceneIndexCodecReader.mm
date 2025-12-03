@interface OrgApacheLuceneIndexCodecReader
- (id)getBinaryDocValuesWithNSString:(id)string;
- (id)getChildResources;
- (id)getDocsWithFieldWithNSString:(id)string;
- (id)getNormValuesWithNSString:(id)string;
- (id)getNumericDocValuesWithNSString:(id)string;
- (id)getSortedDocValuesWithNSString:(id)string;
- (id)getSortedNumericDocValuesWithNSString:(id)string;
- (id)getSortedSetDocValuesWithNSString:(id)string;
- (int64_t)ramBytesUsed;
- (void)checkIntegrity;
- (void)dealloc;
- (void)doClose;
@end

@implementation OrgApacheLuceneIndexCodecReader

- (id)getNumericDocValuesWithNSString:(id)string
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
  v8 = [v6 getWithId:string];
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

  v9 = sub_10001AD94(self, string, qword_100557A78);
  if (v9)
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (getDocValuesReader)
    {
      v9 = [getDocValuesReader getNumericWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:string withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getDocsWithFieldWithNSString:(id)string
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
  v8 = [v6 getWithId:string];
  if (!v8)
  {
    getFieldInfos = [(OrgApacheLuceneIndexCodecReader *)self getFieldInfos];
    if (getFieldInfos)
    {
      v11 = [getFieldInfos fieldInfoWithNSString:string];
      v8 = v11;
      if (!v11)
      {
        return v8;
      }

      getDocValuesType = [v11 getDocValuesType];
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        v14 = getDocValuesType;
        sub_10001B990();
        getDocValuesType = v14;
      }

      if (getDocValuesType == OrgApacheLuceneIndexDocValuesTypeEnum_values_)
      {
        return 0;
      }

      getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
      if (getDocValuesReader)
      {
        v8 = [getDocValuesReader getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:v8];
        [v7 putWithId:string withId:v8];
        return v8;
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v8;
}

- (id)getBinaryDocValuesWithNSString:(id)string
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v5 = sub_10001AD94(self, string, qword_100557A80);
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
  v10 = [v8 getWithId:string];
  objc_opt_class();
  if (!v10)
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (getDocValuesReader)
    {
      v10 = [getDocValuesReader getBinaryWithOrgApacheLuceneIndexFieldInfo:v6];
      [v9 putWithId:string withId:v10];
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

- (id)getSortedDocValuesWithNSString:(id)string
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
  v8 = [v6 getWithId:string];
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

  v9 = sub_10001AD94(self, string, qword_100557A88);
  if (v9)
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (getDocValuesReader)
    {
      v9 = [getDocValuesReader getSortedWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:string withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getSortedNumericDocValuesWithNSString:(id)string
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
  v8 = [v6 getWithId:string];
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

  v9 = sub_10001AD94(self, string, qword_100557A90);
  if (v9)
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (getDocValuesReader)
    {
      v9 = [getDocValuesReader getSortedNumericWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:string withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getSortedSetDocValuesWithNSString:(id)string
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
  v8 = [v6 getWithId:string];
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

  v9 = sub_10001AD94(self, string, qword_100557A98);
  if (v9)
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (getDocValuesReader)
    {
      v9 = [getDocValuesReader getSortedSetWithOrgApacheLuceneIndexFieldInfo:v9];
      [v7 putWithId:string withId:v9];
      return v9;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  return v9;
}

- (id)getNormValuesWithNSString:(id)string
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
  v8 = [v6 getWithId:string];
  if (!v8)
  {
    getFieldInfos = [(OrgApacheLuceneIndexCodecReader *)self getFieldInfos];
    if (getFieldInfos)
    {
      v11 = [getFieldInfos fieldInfoWithNSString:string];
      v8 = v11;
      if (!v11)
      {
        return v8;
      }

      if (![v11 hasNorms])
      {
        return 0;
      }

      getNormsReader = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
      if (getNormsReader)
      {
        v8 = [getNormsReader getNormsWithOrgApacheLuceneIndexFieldInfo:v8];
        [v7 putWithId:string withId:v8];
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
  getPostingsReader = [(OrgApacheLuceneIndexCodecReader *)self getPostingsReader];
  if (!getPostingsReader)
  {
    goto LABEL_15;
  }

  ramBytesUsed = [getPostingsReader ramBytesUsed];
  if ([(OrgApacheLuceneIndexCodecReader *)self getNormsReader])
  {
    getNormsReader = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
    if (!getNormsReader)
    {
      goto LABEL_15;
    }

    ramBytesUsed = &ramBytesUsed[[getNormsReader ramBytesUsed]];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader])
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (!getDocValuesReader)
    {
      goto LABEL_15;
    }

    ramBytesUsed = &ramBytesUsed[[getDocValuesReader ramBytesUsed]];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getFieldsReader])
  {
    getFieldsReader = [(OrgApacheLuceneIndexCodecReader *)self getFieldsReader];
    if (!getFieldsReader)
    {
      goto LABEL_15;
    }

    ramBytesUsed = &ramBytesUsed[[getFieldsReader ramBytesUsed]];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader])
  {
    getTermVectorsReader = [(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader];
    if (getTermVectorsReader)
    {
      return &ramBytesUsed[[getTermVectorsReader ramBytesUsed]];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return ramBytesUsed;
}

- (id)getChildResources
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  v3 = new_JavaUtilArrayList_init();
  getPostingsReader = [(OrgApacheLuceneIndexCodecReader *)self getPostingsReader];
  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"postings", getPostingsReader, v5, v6, v7, v8, v9, v10)];
  if ([(OrgApacheLuceneIndexCodecReader *)self getNormsReader])
  {
    getNormsReader = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"norms", getNormsReader, v12, v13, v14, v15, v16, v17)];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader])
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"docvalues", getDocValuesReader, v19, v20, v21, v22, v23, v24)];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getFieldsReader])
  {
    getFieldsReader = [(OrgApacheLuceneIndexCodecReader *)self getFieldsReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"stored fields", getFieldsReader, v26, v27, v28, v29, v30, v31)];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader])
  {
    getTermVectorsReader = [(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader];
    [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term vectors", getTermVectorsReader, v33, v34, v35, v36, v37, v38)];
  }

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v3);
}

- (void)checkIntegrity
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  getPostingsReader = [(OrgApacheLuceneIndexCodecReader *)self getPostingsReader];
  if (!getPostingsReader)
  {
    goto LABEL_17;
  }

  [getPostingsReader checkIntegrity];
  if ([(OrgApacheLuceneIndexCodecReader *)self getNormsReader])
  {
    getNormsReader = [(OrgApacheLuceneIndexCodecReader *)self getNormsReader];
    if (!getNormsReader)
    {
      goto LABEL_17;
    }

    [getNormsReader checkIntegrity];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader])
  {
    getDocValuesReader = [(OrgApacheLuceneIndexCodecReader *)self getDocValuesReader];
    if (!getDocValuesReader)
    {
      goto LABEL_17;
    }

    [getDocValuesReader checkIntegrity];
  }

  if ([(OrgApacheLuceneIndexCodecReader *)self getFieldsReader])
  {
    getFieldsReader = [(OrgApacheLuceneIndexCodecReader *)self getFieldsReader];
    if (!getFieldsReader)
    {
      goto LABEL_17;
    }

    [getFieldsReader checkIntegrity];
  }

  if (![(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader])
  {
    return;
  }

  getTermVectorsReader = [(OrgApacheLuceneIndexCodecReader *)self getTermVectorsReader];
  if (!getTermVectorsReader)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  [getTermVectorsReader checkIntegrity];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexCodecReader;
  [(OrgApacheLuceneIndexLeafReader *)&v3 dealloc];
}

@end