@interface OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart
- (id)clear;
- (id)grow;
- (id)init__;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart

- (id)init__
{
  v22.receiver = self;
  v22.super_class = OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart;
  v3 = [(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *)&v22 init__];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v10 = v3;
  v11 = [IOSFloatArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v3[2], 4, v4, v5, v6, v7, v8, v9)];
  JreStrongAssignAndConsume(&self->boost_, v11);
  v18 = v10[2];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000865D4();
  }

  v19 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v18, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, v12, v13, v14, v15, v16, v17);
  v20 = [IOSObjectArray newArrayWithLength:v19 type:OrgApacheLuceneIndexTermContext_class_()];
  JreStrongAssignAndConsume(&self->termState_, v20);
  return v10;
}

- (id)grow
{
  v23.receiver = self;
  v23.super_class = OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart;
  v3 = [(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *)&v23 grow];
  if (!v3 || (v10 = v3, v11 = OrgApacheLuceneUtilArrayUtil_growWithFloatArray_withInt_(self->boost_, v3[2], v4, v5, v6, v7, v8, v9), JreStrongAssign(&self->boost_, v11), (termState = self->termState_) == 0))
  {
    JreThrowNullPointerException();
  }

  v19 = v10[2];
  if (termState->super.size_ < v19)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000865D4();
    }

    v20 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v19, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, v12, v13, v14, v15, v16, v17);
    v21 = [IOSObjectArray arrayWithLength:v20 type:OrgApacheLuceneIndexTermContext_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termState_, 0, v21, 0, self->termState_->super.size_);
    JreStrongAssign(&self->termState_, v21);
  }

  return v10;
}

- (id)clear
{
  JreStrongAssign(&self->boost_, 0);
  JreStrongAssign(&self->termState_, 0);
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart;
  return [(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *)&v4 clear];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart;
  [(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *)&v3 dealloc];
}

@end