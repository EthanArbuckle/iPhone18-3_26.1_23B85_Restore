@interface OrgApacheLuceneSearchPhraseQuery_PhraseWeight
- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term;
- (float)getValueForNormalization;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchPhraseQuery_PhraseWeight

- (float)getValueForNormalization
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight *)stats getValueForNormalization];
  return result;
}

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  stats = self->stats_;
  if (!stats)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context)
  {
    goto LABEL_29;
  }

  reader = [context reader];
  v6 = &OBJC_IVAR___IOSArray_size_;
  size = self->terms_->super.size_;
  if (qword_100554370 != -1)
  {
    sub_1000AE978();
  }

  v41 = [IOSObjectArray arrayWithLength:size type:qword_100554368];
  if (!reader)
  {
    goto LABEL_29;
  }

  result = [reader termsWithNSString:*&self->this$0_->slop_];
  if (result)
  {
    v9 = result;
    if (([result hasPositions] & 1) == 0)
    {
      v31 = *&self->this$0_->slop_;
      [(OrgApacheLuceneSearchWeight *)self getQuery];
      v39 = JreStrcat("$$$@C", v32, v33, v34, v35, v36, v37, v38, @"field ");
      v40 = new_JavaLangIllegalStateException_initWithNSString_(v39);
      objc_exception_throw(v40);
    }

    iterator = [v9 iterator];
    terms = self->terms_;
    LODWORD(v12) = 8;
    if (terms->super.size_ >= 1)
    {
      v13 = iterator;
      v14 = 0;
      while (1)
      {
        states = self->states_;
        if (!states)
        {
          break;
        }

        v16 = (&terms->elementType_)[v14];
        v17 = *(&states->super.super.isa + v12);
        if (v14 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v14);
        }

        v18 = (&states->elementType_)[v14];
        if (!v18)
        {
          break;
        }

        result = [(IOSClass *)v18 getWithInt:*(context + 7)];
        if (!result)
        {
          return result;
        }

        if (!v13)
        {
          break;
        }

        if (!v16)
        {
          break;
        }

        [v13 seekExactWithOrgApacheLuceneUtilBytesRef:-[IOSClass bytes](v16 withOrgApacheLuceneIndexTermState:{"bytes"), result}];
        v19 = [v13 postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:24];
        positions = self->positions_;
        if (!positions)
        {
          break;
        }

        v21 = v19;
        v22 = *(&positions->super.super.isa + *v6);
        v23 = v6;
        if (v14 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v14);
        }

        v24 = *(&positions->super.size_ + v14 + 1);
        v42 = v16;
        v25 = [IOSObjectArray arrayWithObjects:&v42 count:1 type:OrgApacheLuceneIndexTerm_class_()];
        v26 = [OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq alloc];
        OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withOrgApacheLuceneIndexTermArray_(v26, v21, v24, v25);
        IOSObjectArray_SetAndConsume(v41, v14++, v26);
        terms = self->terms_;
        v12 = *v23;
        v6 = v23;
        if (v14 >= *(&terms->super.super.isa + v12))
        {
          goto LABEL_21;
        }
      }

LABEL_29:
      JreThrowNullPointerException();
    }

LABEL_21:
    v27 = *&self->this$0_->mutable__;
    if (v27 || (OrgApacheLuceneUtilArrayUtil_timSortWithJavaLangComparableArray_(v41), (v27 = *&self->this$0_->mutable__) != 0))
    {
      similarity = self->similarity_;
      if (!similarity)
      {
        goto LABEL_29;
      }

      PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean = new_OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(self, v41, v27, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:context], self->needsScores_);
    }

    else
    {
      v30 = self->similarity_;
      if (!v30)
      {
        goto LABEL_29;
      }

      PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean = new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(self, v41, [(OrgApacheLuceneSearchSimilaritiesSimilarity *)v30 simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:self->stats_ withOrgApacheLuceneIndexLeafReaderContext:context], self->needsScores_);
    }

    return PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean;
  }

  return result;
}

- (BOOL)termNotInReaderWithOrgApacheLuceneIndexLeafReader:(id)reader withOrgApacheLuceneIndexTerm:(id)term
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader docFreqWithOrgApacheLuceneIndexTerm:term] == 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhraseQuery_PhraseWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end