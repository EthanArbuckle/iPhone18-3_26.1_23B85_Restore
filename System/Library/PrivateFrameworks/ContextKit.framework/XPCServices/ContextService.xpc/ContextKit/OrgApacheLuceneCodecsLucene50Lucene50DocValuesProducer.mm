@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer
- (NSString)description;
- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getChildResources;
- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getMergeInstance;
- (id)getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:(id)entry;
- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (id)readSortedSetEntryWithOrgApacheLuceneStoreIndexInput:(id)input;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer

- (id)readSortedSetEntryWithOrgApacheLuceneStoreIndexInput:(id)input
{
  v5 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_SortedSetEntry alloc];
  if (!input)
  {
    goto LABEL_22;
  }

  v6 = v5;
  readVInt = [input readVInt];
  v6->format_ = readVInt;
  if (readVInt < 2)
  {
    return v6;
  }

  if (readVInt != 2)
  {
    v38 = @"Unknown format: ";
LABEL_24:
    v39 = JreStrcat("$I", v8, v9, v10, v11, v12, v13, v14, v38);
    goto LABEL_26;
  }

  readInt = [input readInt];
  v16 = readInt;
  if (readInt >= 257)
  {
    v38 = @"SORTED_SET_TABLE cannot have more than 256 values in its dictionary, got=";
    goto LABEL_24;
  }

  JreStrongAssignAndConsume(&v6->table_, [IOSLongArray newArrayWithLength:readInt]);
  if (v16 >= 1)
  {
    for (i = 0; i != v16; table->buffer_[i++] = readLong)
    {
      readLong = [input readLong];
      table = v6->table_;
      size = table->super.size_;
      if (i >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, i);
      }
    }
  }

  ramBytesUsed = self->ramBytesUsed_;
  if (!ramBytesUsed)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentAtomicAtomicLong *)ramBytesUsed addAndGetWithLong:OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v6->table_)];
  readInt2 = [input readInt];
  if (readInt2 > v16 + 1)
  {
    v39 = JreStrcat("$I$I$", v23, v24, v25, v26, v27, v28, v29, @"SORTED_SET_TABLE cannot have more set ids than ords in its dictionary, got ");
LABEL_26:
    v40 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v39, input);
    objc_exception_throw(v40);
  }

  selfCopy = self;
  JreStrongAssignAndConsume(&v6->tableOffsets_, [IOSIntArray newArrayWithLength:readInt2 + 1]);
  tableOffsets = v6->tableOffsets_;
  if (*(tableOffsets + 8) >= 2)
  {
    v31 = 0;
    do
    {
      v32 = v31 + 1;
      v33 = *(tableOffsets + 12 + 4 * v31);
      readInt3 = [input readInt];
      v35 = v6->tableOffsets_;
      v36 = v35->super.size_;
      if (v31 + 1 >= v36)
      {
        IOSArray_throwOutOfBoundsWithMsg(v36, (v31 + 1));
      }

      v35->buffer_[v31] = readInt3 + v33;
      tableOffsets = v6->tableOffsets_;
      ++v31;
    }

    while (v32 + 1 < *(tableOffsets + 8));
  }

  [(JavaUtilConcurrentAtomicAtomicLong *)selfCopy->ramBytesUsed_ addAndGetWithLong:OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(tableOffsets)];
  return v6;
}

- (id)getNumericWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  numerics = self->numerics_;
  if (!numerics || !info)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilMap *)numerics getWithId:*(info + 1)];

  return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:v5];
}

- (int64_t)ramBytesUsed
{
  ramBytesUsed = self->ramBytesUsed_;
  if (!ramBytesUsed)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicLong *)ramBytesUsed get];
}

- (id)getChildResources
{
  objc_sync_enter(self);
  v3 = new_JavaUtilArrayList_init();
  [(JavaUtilArrayList *)v3 addAllWithJavaUtilCollection:OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"addresses field", self->addressInstances_)];
  [(JavaUtilArrayList *)v3 addAllWithJavaUtilCollection:OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"ord index field", self->ordIndexInstances_)];
  [(JavaUtilArrayList *)v3 addAllWithJavaUtilCollection:OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(@"reverse index field", self->reverseIndexInstances_)];
  v4 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(v3);
  objc_sync_exit(self);
  return v4;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer getClass](self "getClass")];
  numFields = self->numFields_;
  return JreStrcat("$$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (id)getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:(id)entry
{
  if (!entry)
  {
    goto LABEL_19;
  }

  v4 = *(entry + 9);
  if (v4 <= 1)
  {
    if (!v4)
    {
      data = self->data_;
      if (data)
      {
        v22 = [(OrgApacheLuceneStoreIndexInput *)data randomAccessSliceWithLong:*(entry + 2) withLong:*(entry + 3) - *(entry + 2)];
        v23 = *(entry + 8);
        InstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt = OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(v22, *(entry + 8), v24, v25, v26, v27, v28, v29);
        v16 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__2 alloc];
        v17 = v16;
        v16->val$delta_ = v23;
        v18 = 16;
        goto LABEL_12;
      }

LABEL_19:
      JreThrowNullPointerException();
    }

    if (v4 == 1)
    {
      v5 = self->data_;
      if (v5)
      {
        v6 = [(OrgApacheLuceneStoreIndexInput *)v5 randomAccessSliceWithLong:*(entry + 2) withLong:*(entry + 3) - *(entry + 2)];
        v7 = *(entry + 8);
        v8 = *(entry + 9);
        InstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt = OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(v6, *(entry + 8), v9, v10, v11, v12, v13, v14);
        v16 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__3 alloc];
        v17 = v16;
        v16->val$delta_ = v7;
        v16->val$values_ = v8;
        v18 = 24;
LABEL_12:
        JreStrongAssign((&v16->super.super.super.isa + v18), InstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt);
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_20:
    v41 = new_JavaLangAssertionError_init();
    objc_exception_throw(v41);
  }

  if (v4 != 2)
  {
    if (v4 == 4)
    {
      v19 = *(entry + 8);
      v20 = sub_1000E8CFC(self, *(entry + 1), *(entry + 12));
      v17 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__1 alloc];
      JreStrongAssign(&v17->val$live_, v20);
      v17->val$constant_ = v19;
LABEL_13:
      OrgApacheLuceneUtilLongValues_init(v17);
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v30 = self->data_;
  if (!v30)
  {
    goto LABEL_19;
  }

  v31 = [(OrgApacheLuceneStoreIndexInput *)v30 randomAccessSliceWithLong:*(entry + 2) withLong:*(entry + 3) - *(entry + 2)];
  v32 = *(entry + 10);
  v39 = OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(v31, *(entry + 8), v33, v34, v35, v36, v37, v38);
  v17 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__4 alloc];
  sub_1000EB804(v17, v32, v39);
LABEL_16:

  return v17;
}

- (id)getBinaryWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  binaries = self->binaries_;
  if (!binaries || !info || (v6 = [(JavaUtilMap *)binaries getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  v7 = v6[6];
  if (v7 == 2)
  {

    return sub_1000E9034(self, info, v6);
  }

  else if (v7 == 1)
  {

    return sub_1000E8F64(self, info, v6);
  }

  else
  {
    if (v7)
    {
      v9 = new_JavaLangAssertionError_init();
      objc_exception_throw(v9);
    }

    return sub_1000E8E90(self, v6);
  }
}

- (id)getSortedWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  binaries = self->binaries_;
  if (!binaries || !info || (v6 = [(JavaUtilMap *)binaries getWithId:*(info + 1)]) == 0 || (v7 = v6[4], v8 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getBinaryWithOrgApacheLuceneIndexFieldInfo:info], (ords = self->ords_) == 0))
  {
    JreThrowNullPointerException();
  }

  v10 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:[(JavaUtilMap *)ords getWithId:*(info + 1)]];
  v11 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7 alloc];
  sub_1000EBF14(v11, v10, v8, v7);

  return v11;
}

- (id)getSortedNumericWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  sortedNumerics = self->sortedNumerics_;
  if (!sortedNumerics)
  {
    goto LABEL_20;
  }

  if (!info)
  {
    goto LABEL_20;
  }

  v6 = [(JavaUtilMap *)sortedNumerics getWithId:*(info + 1)];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = v6[2];
  if (v8)
  {
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        v26 = new_JavaLangAssertionError_init();
        objc_exception_throw(v26);
      }

      numerics = self->numerics_;
      if (numerics)
      {
        v10 = [(JavaUtilMap *)numerics getWithId:*(info + 1)];
        v11 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:v10];
        if (v10)
        {
          v12 = v11;
          v13 = sub_1000E8CFC(self, v10[1], self->maxDoc_);

          return OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(v12, v13);
        }
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    ords = self->ords_;
    if (!ords)
    {
      goto LABEL_20;
    }

    v16 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:[(JavaUtilMap *)ords getWithId:*(info + 1)]];
    v17 = *(v7 + 2);
    v18 = *(v7 + 3);
    v19 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__9 alloc];
    sub_1000EC374(&v19->super.super.isa, v16, v18, v17);
    v20 = v19;
  }

  else
  {
    v21 = self->numerics_;
    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:[(JavaUtilMap *)v21 getWithId:*(info + 1)]];
    ordIndexes = self->ordIndexes_;
    if (!ordIndexes)
    {
      goto LABEL_20;
    }

    v24 = sub_1000E9624(self, info, [(JavaUtilMap *)ordIndexes getWithId:*(info + 1)]);
    v25 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__8 alloc];
    sub_1000EC0EC(v25, v24, v22);
    v20 = v25;
  }

  return v20;
}

- (id)getSortedSetWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  sortedSets = self->sortedSets_;
  if (!sortedSets || !info || (v6 = [(JavaUtilMap *)sortedSets getWithId:*(info + 1)]) == 0)
  {
    JreThrowNullPointerException();
  }

  v7 = v6[2];
  if (v7)
  {
    if (v7 == 2)
    {

      return sub_1000E9B3C(self, info, v6);
    }

    else
    {
      if (v7 != 1)
      {
        v10 = new_JavaLangAssertionError_init();
        objc_exception_throw(v10);
      }

      v8 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getSortedWithOrgApacheLuceneIndexFieldInfo:info];

      return OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexSortedDocValues_(v8);
    }
  }

  else
  {

    return sub_1000E9A0C(self, info);
  }
}

- (id)getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  if (!info)
  {
    goto LABEL_24;
  }

  v5 = [objc_msgSend(info "getDocValuesType")];
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v9 = 8;
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_25;
      }

      v9 = 16;
    }

    v14 = *(&self->super.super.isa + v9);
    if (v14)
    {
      v15 = [v14 getWithId:*(info + 1)];
      if (v15)
      {
        v16 = v15[1];
        maxDoc = self->maxDoc_;

        return sub_1000E8CFC(self, v16, maxDoc);
      }
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  switch(v5)
  {
    case 3:
      v10 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getSortedWithOrgApacheLuceneIndexFieldInfo:info];
      v11 = self->maxDoc_;

      return OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedDocValues_withInt_(v10, v11);
    case 4:
      v12 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getSortedNumericWithOrgApacheLuceneIndexFieldInfo:info];
      v13 = self->maxDoc_;

      return OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues_withInt_(v12, v13);
    case 5:
      v6 = [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)self getSortedSetWithOrgApacheLuceneIndexFieldInfo:info];
      v7 = self->maxDoc_;

      return OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedSetDocValues_withInt_(v6, v7);
    default:
LABEL_25:
      v18 = new_JavaLangAssertionError_init();
      objc_exception_throw(v18);
  }
}

- (id)getMergeInstance
{
  objc_sync_enter(self);
  v3 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_(v3, self);
  v4 = v3;
  objc_sync_exit(self);
  return v4;
}

- (void)close
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)data close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *)&v3 dealloc];
}

@end