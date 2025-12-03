@interface OrgApacheLuceneSearchTopTermsRewrite_$2
- (BOOL)collectWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (BOOL)compareToLastTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(id)enum;
@end

@implementation OrgApacheLuceneSearchTopTermsRewrite_$2

- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(id)enum
{
  JreStrongAssign(&self->termsEnum_, enum);
  if (!self->st_)
  {
    v5 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(self->super.topReaderContext_);
    v6 = new_OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_initWithOrgApacheLuceneIndexTermContext_(v5);
    JreStrongAssignAndConsume(&self->st_, v6);
  }

  if (!enum || (v7 = [enum attributes]) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = [v7 addAttributeWithIOSClass:OrgApacheLuceneSearchBoostAttribute_class_()];

  JreStrongAssign(&self->boostAtt_, v8);
}

- (BOOL)compareToLastTermWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  lastTerm = self->lastTerm_;
  if (!ref || lastTerm)
  {
    if (ref)
    {
      [(OrgApacheLuceneUtilBytesRefBuilder *)lastTerm copyBytesWithOrgApacheLuceneUtilBytesRef:ref];
    }

    else
    {
      JreStrongAssign(&self->lastTerm_, 0);
    }
  }

  else
  {
    v6 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
    JreStrongAssignAndConsume(&self->lastTerm_, v6);
    [(OrgApacheLuceneUtilBytesRefBuilder *)self->lastTerm_ appendWithOrgApacheLuceneUtilBytesRef:ref];
  }

  return 1;
}

- (BOOL)collectWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  boostAtt = self->boostAtt_;
  if (!boostAtt)
  {
    goto LABEL_28;
  }

  [(OrgApacheLuceneSearchBoostAttribute *)boostAtt getBoost];
  v7 = self->val$stQueue_;
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v6;
  if ([(JavaUtilPriorityQueue *)v7 size]!= self->val$maxSize_)
  {
    goto LABEL_10;
  }

  peek = [(JavaUtilPriorityQueue *)self->val$stQueue_ peek];
  if (!peek)
  {
    goto LABEL_28;
  }

  v10 = peek[4];
  if (v8 >= v10)
  {
    if (v8 != v10)
    {
      goto LABEL_10;
    }

    if (!ref)
    {
      goto LABEL_28;
    }

    v11 = *(peek + 1);
    if (!v11)
    {
      goto LABEL_28;
    }

    if ([ref compareToWithId:{objc_msgSend(v11, "get")}] <= 0)
    {
LABEL_10:
      visitedTerms = self->visitedTerms_;
      if (visitedTerms)
      {
        v13 = [(JavaUtilMap *)visitedTerms getWithId:ref];
        termsEnum = self->termsEnum_;
        if (termsEnum)
        {
          termState = [(OrgApacheLuceneIndexTermsEnum *)termsEnum termState];
          if (v13)
          {
            v16 = v13[3];
            if (v16)
            {
              readerContext = self->super.readerContext_;
              if (readerContext)
              {
                [v16 register__WithOrgApacheLuceneIndexTermState:termState withInt:*(&readerContext->super.ordInParent_ + 1) withInt:-[OrgApacheLuceneIndexTermsEnum docFreq](self->termsEnum_ withLong:{"docFreq"), -[OrgApacheLuceneIndexTermsEnum totalTermFreq](self->termsEnum_, "totalTermFreq")}];
                return 1;
              }
            }
          }

          else
          {
            st = self->st_;
            if (st)
            {
              bytes = st->bytes_;
              if (bytes)
              {
                [(OrgApacheLuceneUtilBytesRefBuilder *)bytes copyBytesWithOrgApacheLuceneUtilBytesRef:ref];
                self->st_->boost_ = v8;
                [(JavaUtilMap *)self->visitedTerms_ putWithId:[(OrgApacheLuceneUtilBytesRefBuilder *)self->st_->bytes_ get] withId:self->st_];
                v20 = self->super.readerContext_;
                if (v20)
                {
                  [(OrgApacheLuceneIndexTermContext *)self->st_->termState_ register__WithOrgApacheLuceneIndexTermState:termState withInt:*(&v20->super.ordInParent_ + 1) withInt:[(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ docFreq] withLong:[(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ totalTermFreq]];
                  [(JavaUtilPriorityQueue *)self->val$stQueue_ offerWithId:self->st_];
                  if ([(JavaUtilPriorityQueue *)self->val$stQueue_ size]<= self->val$maxSize_)
                  {
                    v22 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(self->super.topReaderContext_);
                    v23 = new_OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_initWithOrgApacheLuceneIndexTermContext_(v22);
                    JreStrongAssignAndConsume(&self->st_, v23);
                  }

                  else
                  {
                    JreStrongAssign(&self->st_, [(JavaUtilPriorityQueue *)self->val$stQueue_ poll]);
                    v21 = self->st_;
                    if (!v21)
                    {
                      goto LABEL_28;
                    }

                    [(JavaUtilMap *)self->visitedTerms_ removeWithId:[(OrgApacheLuceneUtilBytesRefBuilder *)v21->bytes_ get]];
                    [(OrgApacheLuceneIndexTermContext *)self->st_->termState_ clear];
                  }

                  if ([(JavaUtilPriorityQueue *)self->val$stQueue_ size]!= self->val$maxSize_)
                  {
                    return 1;
                  }

                  peek2 = [(JavaUtilPriorityQueue *)self->val$stQueue_ peek];
                  maxBoostAtt = self->maxBoostAtt_;
                  if (maxBoostAtt && peek2)
                  {
                    LODWORD(v25) = *(peek2 + 4);
                    [(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute *)maxBoostAtt setMaxNonCompetitiveBoostWithFloat:v25];
                    -[OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:](self->maxBoostAtt_, "setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:", [*(peek2 + 1) get]);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }

LABEL_28:
      JreThrowNullPointerException();
    }
  }

  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopTermsRewrite__2;
  [(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *)&v3 dealloc];
}

@end