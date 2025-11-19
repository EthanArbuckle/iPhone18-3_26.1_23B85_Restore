@interface OrgApacheLuceneSearchBlendedTermQuery_Builder
- (id)addWithOrgApacheLuceneIndexTerm:(id)a3 withFloat:(float)a4 withOrgApacheLuceneIndexTermContext:(id)a5;
- (id)build;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBlendedTermQuery_Builder

- (id)addWithOrgApacheLuceneIndexTerm:(id)a3 withFloat:(float)a4 withOrgApacheLuceneIndexTermContext:(id)a5
{
  numTerms = self->numTerms_;
  if (numTerms >= OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount())
  {
    v41 = new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
    objc_exception_throw(v41);
  }

  v16 = OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(self->terms_, self->numTerms_ + 1, v10, v11, v12, v13, v14, v15);
  JreStrongAssign(&self->terms_, v16);
  v23 = OrgApacheLuceneUtilArrayUtil_growWithFloatArray_withInt_(self->boosts_, self->numTerms_ + 1, v17, v18, v19, v20, v21, v22);
  JreStrongAssign(&self->boosts_, v23);
  p_contexts = &self->contexts_;
  v31 = OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(self->contexts_, self->numTerms_ + 1, v25, v26, v27, v28, v29, v30);
  JreStrongAssign(&self->contexts_, v31);
  terms = self->terms_;
  if (!terms)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v33 = self->numTerms_;
  v34 = [a3 field];
  v35 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([a3 bytes]);
  v36 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(v34, v35);
  IOSObjectArray_SetAndConsume(terms, v33, v36);
  boosts = self->boosts_;
  if (!boosts)
  {
    goto LABEL_9;
  }

  v38 = self->numTerms_;
  size = boosts->super.size_;
  if (v38 < 0 || v38 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v38);
  }

  *(&boosts->super.size_ + v38 + 1) = a4;
  if (!*p_contexts)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(*p_contexts, self->numTerms_, a5);
  ++self->numTerms_;
  return self;
}

- (id)build
{
  v3 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->terms_, self->numTerms_);
  v4 = JavaUtilArrays_copyOfWithFloatArray_withInt_(self->boosts_, self->numTerms_);
  v5 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->contexts_, self->numTerms_);
  rewriteMethod = self->rewriteMethod_;
  v7 = [OrgApacheLuceneSearchBlendedTermQuery alloc];
  sub_100034E74(v7, v3, v4, v5, rewriteMethod);

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBlendedTermQuery_Builder;
  [(OrgApacheLuceneSearchBlendedTermQuery_Builder *)&v3 dealloc];
}

@end