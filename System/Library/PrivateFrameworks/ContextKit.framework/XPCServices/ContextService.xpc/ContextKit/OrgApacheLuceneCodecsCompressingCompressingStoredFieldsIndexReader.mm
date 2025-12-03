@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader
+ (void)initialize;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getChildResources;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader

- (int64_t)ramBytesUsed
{
  v3 = qword_1005547D8;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->docBasesDeltas_);
  docBasesDeltas = self->docBasesDeltas_;
  if (!docBasesDeltas)
  {
    goto LABEL_12;
  }

  v6 = v4 + v3;
  p_elementType = &docBasesDeltas->elementType_;
  v8 = &(&docBasesDeltas->elementType_)[docBasesDeltas->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_12;
    }

    ++p_elementType;
    v6 += [v9 ramBytesUsed];
  }

  v10 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->startPointersDeltas_);
  startPointersDeltas = self->startPointersDeltas_;
  if (!startPointersDeltas)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v12 = v10 + v6;
  v13 = &startPointersDeltas->elementType_;
  v14 = &(&startPointersDeltas->elementType_)[startPointersDeltas->super.size_];
  while (v13 < v14)
  {
    v15 = *v13;
    if (!*v13)
    {
      goto LABEL_12;
    }

    ++v13;
    v12 += [v15 ramBytesUsed];
  }

  v16 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->docBases_);
  v17 = v16 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->startPointers_) + v12;
  v18 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(self->avgChunkDocs_);
  return v17 + v18 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->avgChunkSizes_);
}

- (id)getChildResources
{
  v3 = new_JavaUtilArrayList_init();
  v4 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->docBasesDeltas_);
  docBasesDeltas = self->docBasesDeltas_;
  if (!docBasesDeltas)
  {
    goto LABEL_14;
  }

  v6 = v4;
  p_elementType = &docBasesDeltas->elementType_;
  v8 = &(&docBasesDeltas->elementType_)[docBasesDeltas->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_14;
    }

    ++p_elementType;
    v6 += [v9 ramBytesUsed];
  }

  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(@"doc base deltas", v6)];
  v10 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->startPointersDeltas_);
  startPointersDeltas = self->startPointersDeltas_;
  if (!startPointersDeltas)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v12 = v10;
  v13 = &startPointersDeltas->elementType_;
  v14 = &(&startPointersDeltas->elementType_)[startPointersDeltas->super.size_];
  while (v13 < v14)
  {
    v15 = *v13;
    if (!*v13)
    {
      goto LABEL_14;
    }

    ++v13;
    v12 += [v15 ramBytesUsed];
  }

  [(JavaUtilArrayList *)v3 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(@"start pointer deltas", v12)];

  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v3);
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader getClass](self "getClass")];
  docBases = self->docBases_;
  if (!docBases)
  {
    JreThrowNullPointerException();
  }

  size = docBases->super.size_;
  return JreStrcat("$$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_class_();
    qword_1005547D8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader__initialized);
  }
}

@end