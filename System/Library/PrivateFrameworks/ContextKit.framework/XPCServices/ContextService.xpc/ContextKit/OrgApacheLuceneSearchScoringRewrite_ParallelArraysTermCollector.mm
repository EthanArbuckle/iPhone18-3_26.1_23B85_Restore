@interface OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector
- (BOOL)collectWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(id)a3;
@end

@implementation OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector

- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(id)a3
{
  JreStrongAssign(&self->termsEnum_, a3);
  if (!a3 || (v5 = [a3 attributes]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 addAttributeWithIOSClass:OrgApacheLuceneSearchBoostAttribute_class_()];

  JreStrongAssign(&self->boostAtt_, v6);
}

- (BOOL)collectWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  terms = self->terms_;
  if (!terms)
  {
    goto LABEL_18;
  }

  v5 = [(OrgApacheLuceneUtilBytesRefHash *)terms addWithOrgApacheLuceneUtilBytesRef:a3];
  termsEnum = self->termsEnum_;
  if (!termsEnum)
  {
    goto LABEL_18;
  }

  v7 = [(OrgApacheLuceneIndexTermsEnum *)termsEnum termState];
  if ((v5 & 0x80000000) != 0)
  {
    array = self->array_;
    if (array)
    {
      termState = array->termState_;
      if (termState)
      {
        v19 = ~v5;
        size = termState->super.size_;
        if (size <= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v19);
        }

        v21 = (&termState->elementType_)[v19];
        if (v21)
        {
          readerContext = self->super.readerContext_;
          if (readerContext)
          {
            [(IOSClass *)v21 register__WithOrgApacheLuceneIndexTermState:v7 withInt:*(&readerContext->super.ordInParent_ + 1) withInt:[(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ docFreq] withLong:[(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ totalTermFreq]];
            return 1;
          }
        }
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  boostAtt = self->boostAtt_;
  if (!boostAtt)
  {
    goto LABEL_18;
  }

  [(OrgApacheLuceneSearchBoostAttribute *)boostAtt getBoost];
  v10 = self->array_;
  if (!v10)
  {
    goto LABEL_18;
  }

  boost = v10->boost_;
  if (!boost)
  {
    goto LABEL_18;
  }

  v12 = v5;
  v13 = boost->super.size_;
  if (v5 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v5);
  }

  *(&boost->super.size_ + v5 + 1) = v9;
  v14 = self->array_->termState_;
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = self->super.readerContext_;
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTermState_withInt_withInt_withLong_(self->super.topReaderContext_, v7, *(&v15->super.ordInParent_ + 1), [(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ docFreq], [(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ totalTermFreq]);
  IOSObjectArray_SetAndConsume(v14, v12, v16);
  [(OrgApacheLuceneSearchScoringRewrite *)self->this$0_ checkMaxClauseCountWithInt:[(OrgApacheLuceneUtilBytesRefHash *)self->terms_ size]];
  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector;
  [(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *)&v3 dealloc];
}

@end