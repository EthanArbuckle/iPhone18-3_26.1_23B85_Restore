@interface OrgApacheLuceneCodecsBlocktreeFieldReader
+ (void)initialize;
- (BOOL)hasFreqs;
- (BOOL)hasOffsets;
- (BOOL)hasPayloads;
- (BOOL)hasPositions;
- (NSString)description;
- (id)getChildResources;
- (id)getMax;
- (id)getMin;
- (id)getStats;
- (id)intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
- (id)iterator;
- (int64_t)ramBytesUsed;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsBlocktreeFieldReader

- (id)getMin
{
  minTerm = self->minTerm_;
  if (!minTerm)
  {
    v4.receiver = self;
    v4.super_class = OrgApacheLuceneCodecsBlocktreeFieldReader;
    return [(OrgApacheLuceneIndexTerms *)&v4 getMin];
  }

  return minTerm;
}

- (id)getMax
{
  maxTerm = self->maxTerm_;
  if (!maxTerm)
  {
    v4.receiver = self;
    v4.super_class = OrgApacheLuceneCodecsBlocktreeFieldReader;
    return [(OrgApacheLuceneIndexTerms *)&v4 getMax];
  }

  return maxTerm;
}

- (id)getStats
{
  v2 = new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(self);

  return [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)v2 computeBlockStats];
}

- (BOOL)hasFreqs
{
  fieldInfo = self->fieldInfo_;
  if (!fieldInfo || (v3 = [(OrgApacheLuceneIndexFieldInfo *)fieldInfo getIndexOptions]) == 0)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  return [v4 compareToWithId:qword_100557380] >= 0;
}

- (BOOL)hasOffsets
{
  fieldInfo = self->fieldInfo_;
  if (!fieldInfo || (v3 = [(OrgApacheLuceneIndexFieldInfo *)fieldInfo getIndexOptions]) == 0)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  return [v4 compareToWithId:qword_100557390] >= 0;
}

- (BOOL)hasPositions
{
  fieldInfo = self->fieldInfo_;
  if (!fieldInfo || (v3 = [(OrgApacheLuceneIndexFieldInfo *)fieldInfo getIndexOptions]) == 0)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  return [v4 compareToWithId:qword_100557388] >= 0;
}

- (BOOL)hasPayloads
{
  fieldInfo = self->fieldInfo_;
  if (!fieldInfo)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexFieldInfo *)fieldInfo hasPayloads];
}

- (id)iterator
{
  v2 = new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(self);

  return v2;
}

- (id)intersectWithOrgApacheLuceneUtilAutomatonCompiledAutomaton:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonRunAutomaton_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withInt_(self, *(a3 + 4), *(a3 + 3), *(a3 + 5), a4, *(a3 + 14));

  return v4;
}

- (int64_t)ramBytesUsed
{
  v2 = qword_100553EB0;
  index = self->index_;
  if (index)
  {
    index = [(OrgApacheLuceneUtilFstFST *)index ramBytesUsed];
  }

  return index + v2;
}

- (id)getChildResources
{
  index = self->index_;
  if (index)
  {
    v10 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term index", index, v2, v3, v4, v5, v6, v7);

    return JavaUtilCollections_singletonWithId_(v10);
  }

  else
  {

    return JavaUtilCollections_emptyList();
  }
}

- (NSString)description
{
  docCount = self->docCount_;
  sumTotalTermFreq = self->sumTotalTermFreq_;
  sumDocFreq = self->sumDocFreq_;
  numTerms = self->numTerms_;
  return JreStrcat("$J$J$J$IC", a2, v2, v3, v4, v5, v6, v7, @"BlockTreeTerms(terms=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeFieldReader;
  [(OrgApacheLuceneCodecsBlocktreeFieldReader *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeFieldReader;
  [(OrgApacheLuceneCodecsBlocktreeFieldReader *)&v3 __javaClone];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneCodecsBlocktreeFieldReader_class_();
    v3 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    v4 = OrgApacheLuceneUtilBytesRef_class_();
    qword_100553EB0 = 3 * OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v4) + v3;
    atomic_store(1u, OrgApacheLuceneCodecsBlocktreeFieldReader__initialized);
  }
}

@end