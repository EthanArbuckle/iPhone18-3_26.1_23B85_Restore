@interface OrgApacheLuceneIndexFieldInfo
- (BOOL)checkConsistency;
- (BOOL)hasNorms;
- (id)getAttributeWithNSString:(id)a3;
- (id)putAttributeWithNSString:(id)a3 withNSString:(id)a4;
- (void)dealloc;
- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:(id)a3;
- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:(id)a3;
- (void)setOmitsNorms;
- (void)setStorePayloads;
@end

@implementation OrgApacheLuceneIndexFieldInfo

- (BOOL)checkConsistency
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    if (self->storeTermVector_)
    {
      name = self->name_;
    }

    else if (self->storePayloads_)
    {
      v17 = self->name_;
    }

    else
    {
      if (!self->omitNorms_)
      {
        goto LABEL_13;
      }

      v18 = self->name_;
    }

    v12 = @"non-indexed field '";
LABEL_24:
    v19 = JreStrcat("$$$", a2, v2, v3, v4, v5, v6, v7, v12);
    v20 = new_JavaLangIllegalStateException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  v10 = self->indexOptions_;
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if ([(JavaLangEnum *)v10 compareToWithId:qword_100557388]< 0 && self->storePayloads_)
  {
    v11 = self->name_;
    v12 = @"indexed field '";
    goto LABEL_24;
  }

LABEL_13:
  if (self->dvGen_ != -1)
  {
    docValuesType = self->docValuesType_;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    if (docValuesType == OrgApacheLuceneIndexDocValuesTypeEnum_values_)
    {
      v15 = self->name_;
      v12 = @"field '";
      goto LABEL_24;
    }
  }

  return 1;
}

- (void)setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:(id)a3
{
  if (!a3)
  {
    name = self->name_;
    v12 = JreStrcat("$$$", a2, 0, v3, v4, v5, v6, v7, @"DocValuesType cannot be null (field: ");
    v13 = new_JavaLangNullPointerException_initWithNSString_(v12);
    goto LABEL_14;
  }

  p_docValuesType = &self->docValuesType_;
  docValuesType = self->docValuesType_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  if (docValuesType != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    if (OrgApacheLuceneIndexDocValuesTypeEnum_values_ != a3 && *p_docValuesType != a3)
    {
      v17 = self->name_;
      v16 = *p_docValuesType;
      v14 = JreStrcat("$@$@$$C", a2, a3, v3, v4, v5, v6, v7, @"cannot change DocValues type from ");
      v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
LABEL_14:
      objc_exception_throw(v13);
    }
  }

  JreStrongAssign(&self->docValuesType_, a3);
}

- (void)setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:(id)a3
{
  p_indexOptions = &self->indexOptions_;
  indexOptions = self->indexOptions_;
  if (indexOptions != a3)
  {
    v6 = a3;
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
    {
LABEL_11:
      JreStrongAssign(p_indexOptions, v6);
      goto LABEL_12;
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (OrgApacheLuceneIndexIndexOptionsEnum_values_[0] != v6)
    {
      if (!*p_indexOptions)
      {
        goto LABEL_21;
      }

      if ([(JavaLangEnum *)*p_indexOptions compareToWithId:v6]< 0)
      {
        v6 = *p_indexOptions;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  v7 = *p_indexOptions;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (v7 == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    goto LABEL_19;
  }

  v8 = *p_indexOptions;
  if (!v8)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if ([(JavaLangEnum *)v8 compareToWithId:qword_100557388]< 0)
  {
LABEL_19:
    self->storePayloads_ = 0;
  }
}

- (void)setStorePayloads
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    v4 = self->indexOptions_;
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (([(JavaLangEnum *)v4 compareToWithId:qword_100557388]& 0x80000000) == 0)
    {
      self->storePayloads_ = 1;
    }
  }
}

- (void)setOmitsNorms
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (indexOptions == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"cannot omit norms: this field is not indexed");
    objc_exception_throw(v4);
  }

  self->omitNorms_ = 1;
}

- (BOOL)hasNorms
{
  indexOptions = self->indexOptions_;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  return indexOptions != OrgApacheLuceneIndexIndexOptionsEnum_values_[0] && !self->omitNorms_;
}

- (id)getAttributeWithNSString:(id)a3
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes getWithId:a3];
}

- (id)putAttributeWithNSString:(id)a3 withNSString:(id)a4
{
  attributes = self->attributes_;
  if (!attributes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)attributes putWithId:a3 withId:a4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFieldInfo;
  [(OrgApacheLuceneIndexFieldInfo *)&v3 dealloc];
}

@end