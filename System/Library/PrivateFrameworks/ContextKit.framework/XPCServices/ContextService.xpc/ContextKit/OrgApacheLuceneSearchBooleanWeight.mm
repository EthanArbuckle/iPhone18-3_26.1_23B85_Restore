@interface OrgApacheLuceneSearchBooleanWeight
- (float)coordWithInt:(int)a3 withInt:(int)a4;
- (float)getValueForNormalization;
- (id)BOOLeanScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)a3;
- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4;
@end

@implementation OrgApacheLuceneSearchBooleanWeight

- (void)extractTermsWithJavaUtilSet:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  query = self->query_;
  if (!query)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v6 = [(OrgApacheLuceneSearchBooleanQuery *)self->query_ countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(query);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v11)
        {
          goto LABEL_17;
        }

        if (([*(*(&v14 + 1) + 8 * i) isScoring] & 1) != 0 || !self->needsScores_ && (objc_msgSend(v11, "isProhibited") & 1) == 0)
        {
          weights = self->weights_;
          if (!weights)
          {
            goto LABEL_17;
          }

          v13 = [(JavaUtilArrayList *)weights getWithInt:v8];
          if (!v13)
          {
            goto LABEL_17;
          }

          [v13 extractTermsWithJavaUtilSet:a3];
        }

        v8 = (v8 + 1);
      }

      v7 = [(OrgApacheLuceneSearchBooleanQuery *)query countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (float)getValueForNormalization
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  query = self->query_;
  if (!query)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneSearchBooleanQuery *)self->query_ countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(query);
        }

        weights = self->weights_;
        if (!weights)
        {
          goto LABEL_15;
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(JavaUtilArrayList *)weights getWithInt:v6, v19];
        if (!v12)
        {
          goto LABEL_15;
        }

        [v12 getValueForNormalization];
        if (!v11)
        {
          goto LABEL_15;
        }

        v14 = v13;
        if ([v11 isScoring])
        {
          v8 = v8 + v14;
        }

        v6 = (v6 + 1);
      }

      v5 = [(OrgApacheLuceneSearchBooleanQuery *)query countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  [(OrgApacheLuceneSearchQuery *)self->query_ getBoost];
  v16 = v15;
  [(OrgApacheLuceneSearchQuery *)self->query_ getBoost];
  return v8 * (v16 * v17);
}

- (float)coordWithInt:(int)a3 withInt:(int)a4
{
  if (a3)
  {
    LODWORD(v5) = 1.0;
    if (a4 != 1)
    {
      similarity = self->similarity_;
      if (!similarity)
      {
        JreThrowNullPointerException();
      }

      [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity coordWithInt:v5 withInt:?];
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return *&v5;
}

- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4
{
  query = self->query_;
  if (!query || ([(OrgApacheLuceneSearchQuery *)query getBoost], v9 = v8, v19 = 0u, v20 = 0u, v21 = 0u, v22 = 0u, (weights = self->weights_) == 0))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v11 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v14 = v11;
    v15 = v9 * a4;
    v16 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(weights);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if (!v18)
        {
          goto LABEL_12;
        }

        *&v12 = a3;
        *&v13 = v15;
        [v18 normalizeWithFloat:v12 withFloat:{v13, v19}];
      }

      v14 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (id)BOOLeanScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  bulkScorerSize = self->bulkScorerSize_;
  if (!bulkScorerSize)
  {
    return 0;
  }

  v6 = new_JavaUtilArrayList_initWithInt_(bulkScorerSize);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  weights = self->weights_;
  if (!weights)
  {
    goto LABEL_20;
  }

  v8 = v6;
  v9 = [(JavaUtilArrayList *)self->weights_ countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(weights);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = [v13 bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:{a3, v23}];
        if (v14)
        {
          [(JavaUtilArrayList *)v8 addWithId:v14];
        }
      }

      v10 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v15 = [(JavaUtilArrayList *)v8 size];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  query = self->query_;
  if (!query)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch]<= v16)
  {
    v19 = self->query_;
    if (v19)
    {
      maxCoord = self->maxCoord_;
      disableCoord = self->disableCoord_;
      v22 = JavaLangMath_maxWithInt_withInt_(1, [(OrgApacheLuceneSearchBooleanQuery *)v19 getMinimumNumberShouldMatch]);
      return new_OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(self, disableCoord, maxCoord, v8, v22, self->needsScores_);
    }

    goto LABEL_20;
  }

  return 0;
}

- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  v5 = [(OrgApacheLuceneSearchBooleanWeight *)self BOOLeanScorerWithOrgApacheLuceneIndexLeafReaderContext:?];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  query = self->query_;
  if (!query)
  {
    goto LABEL_11;
  }

  if ([(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch]< 2)
  {
    v8 = -1;
    goto LABEL_8;
  }

  if (!a3 || (v9 = [a3 reader]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v8 = [v9 maxDoc] / 3;
LABEL_8:
  if ([v6 cost] <= v8)
  {
LABEL_9:
    v11.receiver = self;
    v11.super_class = OrgApacheLuceneSearchBooleanWeight;
    return [(OrgApacheLuceneSearchWeight *)&v11 bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:a3];
  }

  return v6;
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  query = self->query_;
  if (!query)
  {
    goto LABEL_39;
  }

  v6 = [(OrgApacheLuceneSearchBooleanQuery *)query getMinimumNumberShouldMatch];
  v7 = new_JavaUtilArrayList_init();
  v48 = new_JavaUtilArrayList_init();
  v47 = new_JavaUtilArrayList_init();
  v8 = new_JavaUtilArrayList_init();
  v9 = [(OrgApacheLuceneSearchBooleanQuery *)self->query_ iterator];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  weights = self->weights_;
  if (!weights)
  {
LABEL_39:
    JreThrowNullPointerException();
  }

  v11 = v9;
  v45 = v6;
  v46 = self;
  v12 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(weights);
        }

        if (!v11)
        {
          goto LABEL_39;
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [v11 next];
        if (!v16)
        {
          goto LABEL_39;
        }

        v18 = v17;
        v19 = [v16 scorerWithOrgApacheLuceneIndexLeafReaderContext:a3];
        if (v19)
        {
          if (!v18)
          {
            goto LABEL_39;
          }

          v20 = v19;
          if (![v18 isRequired])
          {
            if ([v18 isProhibited])
            {
              v22 = v47;
            }

            else
            {
              v22 = v8;
            }

LABEL_21:
            [(JavaUtilArrayList *)v22 addWithId:v20];
            continue;
          }

          [(JavaUtilArrayList *)v7 addWithId:v20];
          v21 = [v18 isScoring];
          v22 = v48;
          if (v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (!v18)
          {
            goto LABEL_39;
          }

          if ([v18 isRequired])
          {
            return 0;
          }
        }
      }

      v13 = [(JavaUtilArrayList *)weights countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v13);
  }

  v23 = v45;
  if ([(JavaUtilArrayList *)v8 size]== v45)
  {
    [(JavaUtilArrayList *)v7 addAllWithJavaUtilCollection:v8];
    [(JavaUtilArrayList *)v48 addAllWithJavaUtilCollection:v8];
    [(JavaUtilArrayList *)v8 clear];
    v23 = 0;
  }

  if ([(JavaUtilArrayList *)v7 isEmpty]&& [(JavaUtilArrayList *)v8 isEmpty]|| [(JavaUtilArrayList *)v8 size]< v23)
  {
    return 0;
  }

  if (!v46->needsScores_ && !v23 && [(JavaUtilArrayList *)v7 size]>= 1)
  {
    [(JavaUtilArrayList *)v8 clear];
  }

  if ([(JavaUtilArrayList *)v8 isEmpty])
  {
    v25 = sub_1000DA07C(v46, v7, v48, v46->disableCoord_);
    return sub_1000D9FA4(v46, &v25->super.super.super.super.isa, v47);
  }

  if ([(JavaUtilArrayList *)v7 isEmpty])
  {
    v25 = sub_1000DA1B0(v46, v8, v23, v46->disableCoord_);
    return sub_1000D9FA4(v46, &v25->super.super.super.super.isa, v47);
  }

  v26 = sub_1000DA07C(v46, v7, v48, 1);
  v27 = sub_1000D9FA4(v46, &v26->super.super.super.super.isa, v47);
  v28 = sub_1000DA1B0(v46, v8, v23, 1);
  v29 = v28;
  if (v46->disableCoord_)
  {
    if (v23 < 1)
    {
      v41 = new_OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(&v27->super.super.super.isa, v28);
      return v41;
    }

    v56[0] = v27;
    v56[1] = v28;
    v30 = [IOSObjectArray arrayWithObjects:v56 count:2 type:OrgApacheLuceneSearchScorer_class_()];
    v31 = JavaUtilArrays_asListWithNSObjectArray_(v30);
    v55[0] = v27;
    v55[1] = v29;
    v32 = [IOSObjectArray arrayWithObjects:v55 count:2 type:OrgApacheLuceneSearchScorer_class_()];
    v33 = JavaUtilArrays_asListWithNSObjectArray_(v32);
    v34 = 1.0;
    v35 = v46;
    v36 = v31;
  }

  else
  {
    if ([(JavaUtilArrayList *)v8 size]!= 1)
    {
      if (v23 < 1)
      {
        v41 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqMultiOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withInt_withFloatArray_(&v27->super.super.super.isa, v29, [(JavaUtilArrayList *)v48 size], v46->coords_);
      }

      else
      {
        v41 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_CoordinatingConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withFloatArray_withOrgApacheLuceneSearchScorer_withInt_withOrgApacheLuceneSearchScorer_(v46, v46->coords_, v27, [(JavaUtilArrayList *)v48 size], v29);
      }

      return v41;
    }

    if (v23 < 1)
    {
      [(OrgApacheLuceneSearchBooleanWeight *)v46 coordWithInt:[(JavaUtilArrayList *)v48 size] withInt:v46->maxCoord_];
      v43 = v42;
      [(OrgApacheLuceneSearchBooleanWeight *)v46 coordWithInt:[(JavaUtilArrayList *)v48 size]+ 1 withInt:v46->maxCoord_];
      v41 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_ReqSingleOptScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_withFloat_withFloat_(&v27->super.super.super.isa, v29, v43, v44);
      return v41;
    }

    v54[0] = v27;
    v54[1] = v29;
    v37 = [IOSObjectArray arrayWithObjects:v54 count:2 type:OrgApacheLuceneSearchScorer_class_()];
    v38 = JavaUtilArrays_asListWithNSObjectArray_(v37);
    v53[0] = v27;
    v53[1] = v29;
    v39 = [IOSObjectArray arrayWithObjects:v53 count:2 type:OrgApacheLuceneSearchScorer_class_()];
    v40 = JavaUtilArrays_asListWithNSObjectArray_(v39);
    [(OrgApacheLuceneSearchBooleanWeight *)v46 coordWithInt:[(JavaUtilArrayList *)v48 size]+ 1 withInt:v46->maxCoord_];
    v35 = v46;
    v36 = v38;
    v33 = v40;
  }

  v41 = new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(v35, v36, v33, v34);
  return v41;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end