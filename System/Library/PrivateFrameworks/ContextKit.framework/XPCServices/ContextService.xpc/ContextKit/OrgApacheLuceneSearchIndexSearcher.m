@interface OrgApacheLuceneSearchIndexSearcher
+ (id)getDefaultQueryCache;
+ (id)getDefaultQueryCachingPolicy;
+ (id)getDefaultSimilarity;
+ (void)initialize;
- (OrgApacheLuceneSearchIndexSearcher)initWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (OrgApacheLuceneSearchIndexSearcher)initWithOrgApacheLuceneIndexIndexReader:(id)a3 withJavaUtilConcurrentExecutorService:(id)a4;
- (id)collectionStatisticsWithNSString:(id)a3;
- (id)createWeightWithOrgApacheLuceneSearchQuery:(id)a3 withBoolean:(BOOL)a4;
- (id)description;
- (id)explainWithOrgApacheLuceneSearchWeight:(id)a3 withInt:(int)a4;
- (id)getSimilarityWithBoolean:(BOOL)a3;
- (id)rewriteWithOrgApacheLuceneSearchQuery:(id)a3;
- (id)searchWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchCollectorManager:(id)a4;
- (id)slicesWithJavaUtilList:(id)a3;
- (id)termStatisticsWithOrgApacheLuceneIndexTerm:(id)a3 withOrgApacheLuceneIndexTermContext:(id)a4;
- (id)wrapFilterWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchFilter:(id)a4;
- (int)countWithOrgApacheLuceneSearchQuery:(id)a3;
- (void)dealloc;
- (void)searchWithJavaUtilList:(id)a3 withOrgApacheLuceneSearchWeight:(id)a4 withOrgApacheLuceneSearchCollector:(id)a5;
- (void)searchWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchCollector:(id)a4;
- (void)searchWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchFilter:(id)a4 withOrgApacheLuceneSearchCollector:(id)a5;
- (void)setQueryCachingPolicyWithOrgApacheLuceneSearchQueryCachingPolicy:(id)a3;
@end

@implementation OrgApacheLuceneSearchIndexSearcher

+ (id)getDefaultSimilarity
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchIndexSearcher__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B0DC4();
  }

  return qword_100554390;
}

+ (id)getDefaultQueryCache
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchIndexSearcher__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B0DC4();
  }

  return qword_100554380;
}

+ (id)getDefaultQueryCachingPolicy
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchIndexSearcher__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B0DC4();
  }

  return qword_100554388;
}

- (OrgApacheLuceneSearchIndexSearcher)initWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_withJavaUtilConcurrentExecutorService_(&self->super.isa, [a3 getContext], 0);
  return self;
}

- (OrgApacheLuceneSearchIndexSearcher)initWithOrgApacheLuceneIndexIndexReader:(id)a3 withJavaUtilConcurrentExecutorService:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_withJavaUtilConcurrentExecutorService_(&self->super.isa, [a3 getContext], a4);
  return self;
}

- (void)setQueryCachingPolicyWithOrgApacheLuceneSearchQueryCachingPolicy:(id)a3
{
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a3);

  JreStrongAssign(&self->queryCachingPolicy_, v4);
}

- (id)slicesWithJavaUtilList:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 size];
  if (qword_1005543A0 != -1)
  {
    sub_1000B0DD0();
  }

  v5 = [IOSObjectArray arrayWithLength:v4 type:qword_100554398];
  if (v5->super.size_ >= 1)
  {
    v6 = 0;
    do
    {
      v10 = [a3 getWithInt:v6];
      v7 = [IOSObjectArray arrayWithObjects:&v10 count:1 type:OrgApacheLuceneIndexLeafReaderContext_class_()];
      v8 = [OrgApacheLuceneSearchIndexSearcher_LeafSlice alloc];
      JreStrongAssign(&v8->leaves_, v7);
      IOSObjectArray_SetAndConsume(v5, v6++, v8);
    }

    while (v6 < v5->super.size_);
  }

  return v5;
}

- (id)getSimilarityWithBoolean:(BOOL)a3
{
  p_similarity = &self->similarity_;
  if (!a3)
  {
    p_similarity = &unk_100554378;
  }

  return *p_similarity;
}

- (id)wrapFilterWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchFilter:(id)a4
{
  result = a3;
  if (a4)
  {
    initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter = new_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_(a3, a4);

    return initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter;
  }

  return result;
}

- (int)countWithOrgApacheLuceneSearchQuery:(id)a3
{
  v3 = [(OrgApacheLuceneSearchIndexSearcher *)self searchWithOrgApacheLuceneSearchQuery:a3 withOrgApacheLuceneSearchCollectorManager:[OrgApacheLuceneSearchIndexSearcher__2 alloc]];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 intValue];
}

- (void)searchWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchFilter:(id)a4 withOrgApacheLuceneSearchCollector:(id)a5
{
  v7 = [(OrgApacheLuceneSearchIndexSearcher *)self wrapFilterWithOrgApacheLuceneSearchQuery:a3 withOrgApacheLuceneSearchFilter:a4];

  [(OrgApacheLuceneSearchIndexSearcher *)self searchWithOrgApacheLuceneSearchQuery:v7 withOrgApacheLuceneSearchCollector:a5];
}

- (void)searchWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchCollector:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  leafContexts = self->leafContexts_;
  v7 = -[OrgApacheLuceneSearchIndexSearcher createNormalizedWeightWithOrgApacheLuceneSearchQuery:withBoolean:](self, "createNormalizedWeightWithOrgApacheLuceneSearchQuery:withBoolean:", a3, [a4 needsScores]);

  [(OrgApacheLuceneSearchIndexSearcher *)self searchWithJavaUtilList:leafContexts withOrgApacheLuceneSearchWeight:v7 withOrgApacheLuceneSearchCollector:a4];
}

- (id)searchWithOrgApacheLuceneSearchQuery:(id)a3 withOrgApacheLuceneSearchCollectorManager:(id)a4
{
  v4 = a4;
  if (self->executor_)
  {
    leafSlices = self->leafSlices_;
    if (!leafSlices)
    {
      goto LABEL_29;
    }

    v8 = &OBJC_IVAR___IOSArray_size_;
    v9 = new_JavaUtilArrayList_initWithInt_(leafSlices->super.size_);
    if (self->leafSlices_->super.size_ >= 1)
    {
      if (v4)
      {
        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = [v4 newCollector];
          [(JavaUtilArrayList *)v9 addWithId:v12];
          if (!v12)
          {
            break;
          }

          v10 |= [v12 needsScores];
          if (++v11 >= self->leafSlices_->super.size_)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_29:
      JreThrowNullPointerException();
    }

    LOBYTE(v10) = 0;
LABEL_14:
    v34 = [(OrgApacheLuceneSearchIndexSearcher *)self createNormalizedWeightWithOrgApacheLuceneSearchQuery:a3 withBoolean:v10 & 1];
    v16 = new_JavaUtilArrayList_initWithInt_(self->leafSlices_->super.size_);
    v17 = self->leafSlices_;
    if (v17->super.size_ >= 1)
    {
      v18 = 0;
      do
      {
        v19 = (&v17->elementType_)[v18];
        if (!v19)
        {
          goto LABEL_29;
        }

        isa = v19[1].super.isa;
        v21 = [(JavaUtilArrayList *)v9 getWithInt:v18];
        v22 = v9;
        v23 = v8;
        v24 = v4;
        v25 = v21;
        executor = self->executor_;
        v27 = [OrgApacheLuceneSearchIndexSearcher__5 alloc];
        v28 = v25;
        v4 = v24;
        v8 = v23;
        v9 = v22;
        sub_1000B0CF4(&v27->super.isa, self, isa, v34, v28);
        [(JavaUtilArrayList *)v16 addWithId:[(JavaUtilConcurrentExecutorService *)executor submitWithJavaUtilConcurrentCallable:v27]];
        ++v18;
        v17 = self->leafSlices_;
      }

      while (v18 < *(&v17->super.super.isa + *v8));
    }

    v29 = new_JavaUtilArrayList_init();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = [(JavaUtilArrayList *)v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v30)
    {
      v31 = *v36;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(v16);
          }

          v33 = *(*(&v35 + 1) + 8 * i);
          if (!v33)
          {
            JreThrowNullPointerException();
          }

          -[JavaUtilArrayList addWithId:](v29, "addWithId:", [v33 get]);
        }

        v30 = [(JavaUtilArrayList *)v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v30);
    }

    if (!v4)
    {
      JreThrowNullPointerException();
    }

    return [v4 reduceWithJavaUtilCollection:v9];
  }

  else
  {
    if (!a4)
    {
      goto LABEL_29;
    }

    v13 = [a4 newCollector];
    [(OrgApacheLuceneSearchIndexSearcher *)self searchWithOrgApacheLuceneSearchQuery:a3 withOrgApacheLuceneSearchCollector:v13];
    v14 = JavaUtilCollections_singletonListWithId_(v13);

    return [v4 reduceWithJavaUtilCollection:v14];
  }
}

- (void)searchWithJavaUtilList:(id)a3 withOrgApacheLuceneSearchWeight:(id)a4 withOrgApacheLuceneSearchCollector:(id)a5
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v8 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(a3);
        }

        if (!a5)
        {
          JreThrowNullPointerException();
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [a5 getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:{v11, v17}];
        if (!a4)
        {
          JreThrowNullPointerException();
        }

        v13 = v12;
        v14 = [a4 bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:v11];
        if (v14)
        {
          if (!v11 || (v15 = [v11 reader]) == 0)
          {
            JreThrowNullPointerException();
          }

          [v14 scoreWithOrgApacheLuceneSearchLeafCollector:v13 withOrgApacheLuceneUtilBits:{objc_msgSend(v15, "getLiveDocs")}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v16 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v16;
    }

    while (v16);
  }
}

- (id)rewriteWithOrgApacheLuceneSearchQuery:(id)a3
{
  if (!a3)
  {
    goto LABEL_8;
  }

  v3 = a3;
  v5 = [a3 rewriteWithOrgApacheLuceneIndexIndexReader:self->reader_];
  if (v5 != v3)
  {
    v6 = v5;
    while (v6)
    {
      v7 = [v6 rewriteWithOrgApacheLuceneIndexIndexReader:self->reader_];
      v3 = v6;
      v8 = v7 == v6;
      v6 = v7;
      if (v8)
      {
        return v3;
      }
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  return v3;
}

- (id)explainWithOrgApacheLuceneSearchWeight:(id)a3 withInt:(int)a4
{
  v7 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(a4, self->leafContexts_);
  leafContexts = self->leafContexts_;
  if (!leafContexts)
  {
    goto LABEL_13;
  }

  v9 = [(JavaUtilList *)leafContexts getWithInt:v7];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = v9[8];
  v12 = [v9 reader];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = (a4 - v11);
  v14 = [v12 getLiveDocs];
  if (!v14 || ([v14 getWithInt:v13] & 1) != 0)
  {
    if (a3)
    {

      return [a3 explainWithOrgApacheLuceneIndexLeafReaderContext:v10 withInt:v13];
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v23 = JreStrcat("$I$", v15, v16, v17, v18, v19, v20, v21, @"Document ");
  v24 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];

  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(v23, v24);
}

- (id)createWeightWithOrgApacheLuceneSearchQuery:(id)a3 withBoolean:(BOOL)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  queryCache = self->queryCache_;
  result = [a3 createWeightWithOrgApacheLuceneSearchIndexSearcher:self withBoolean:?];
  if (!a4 && queryCache)
  {
    queryCachingPolicy = self->queryCachingPolicy_;

    return [(OrgApacheLuceneSearchQueryCache *)queryCache doCacheWithOrgApacheLuceneSearchWeight:result withOrgApacheLuceneSearchQueryCachingPolicy:queryCachingPolicy];
  }

  return result;
}

- (id)description
{
  executor = self->executor_;
  reader = self->reader_;
  return JreStrcat("$@$@C", a2, v2, v3, v4, v5, v6, v7, @"IndexSearcher(");
}

- (id)termStatisticsWithOrgApacheLuceneIndexTerm:(id)a3 withOrgApacheLuceneIndexTermContext:(id)a4
{
  if (!a3 || (v5 = [a3 bytes], !a4))
  {
    JreThrowNullPointerException();
  }

  v6 = new_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(v5, [a4 docFreq], objc_msgSend(a4, "totalTermFreq"));

  return v6;
}

- (id)collectionStatisticsWithNSString:(id)a3
{
  TermsWithOrgApacheLuceneIndexIndexReader_withNSString = OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(self->reader_, a3);
  v6 = TermsWithOrgApacheLuceneIndexIndexReader_withNSString;
  if (TermsWithOrgApacheLuceneIndexIndexReader_withNSString)
  {
    LODWORD(v8) = [TermsWithOrgApacheLuceneIndexIndexReader_withNSString getDocCount];
    v7 = [v6 getSumTotalTermFreq];
    v6 = [v6 getSumDocFreq];
    v8 = v8;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  reader = self->reader_;
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  v10 = new_OrgApacheLuceneSearchCollectionStatistics_initWithNSString_withLong_withLong_withLong_withLong_(a3, [(OrgApacheLuceneIndexIndexReader *)reader maxDoc], v8, v7, v6);

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchIndexSearcher;
  [(OrgApacheLuceneSearchIndexSearcher *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneSearchIndexSearcher__1 alloc];
    OrgApacheLuceneSearchSimilaritiesSimilarity_init(v2, v3);
    JreStrongAssignAndConsume(&qword_100554378, v2);
    JreStrongAssign(&qword_100554380, 0);
    CachingPolicy_init = new_OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy_init();
    JreStrongAssignAndConsume(&qword_100554388, CachingPolicy_init);
    v5 = new_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init();
    JreStrongAssignAndConsume(&qword_100554390, v5);
    atomic_store(1u, OrgApacheLuceneSearchIndexSearcher__initialized);
  }
}

@end