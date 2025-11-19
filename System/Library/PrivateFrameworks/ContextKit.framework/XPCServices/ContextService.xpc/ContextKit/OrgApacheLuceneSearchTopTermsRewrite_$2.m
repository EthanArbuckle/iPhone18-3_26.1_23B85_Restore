@interface OrgApacheLuceneSearchTopTermsRewrite_$2
- (BOOL)collectWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (BOOL)compareToLastTermWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(id)a3;
@end

@implementation OrgApacheLuceneSearchTopTermsRewrite_$2

- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(id)a3
{
  JreStrongAssign(&self->termsEnum_, a3);
  if (!self->st_)
  {
    v5 = new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(self->super.topReaderContext_);
    v6 = new_OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_initWithOrgApacheLuceneIndexTermContext_(v5);
    JreStrongAssignAndConsume(&self->st_, v6);
  }

  if (!a3 || (v7 = [a3 attributes]) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = [v7 addAttributeWithIOSClass:OrgApacheLuceneSearchBoostAttribute_class_()];

  JreStrongAssign(&self->boostAtt_, v8);
}

- (BOOL)compareToLastTermWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  lastTerm = self->lastTerm_;
  if (!a3 || lastTerm)
  {
    if (a3)
    {
      [(OrgApacheLuceneUtilBytesRefBuilder *)lastTerm copyBytesWithOrgApacheLuceneUtilBytesRef:a3];
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
    [(OrgApacheLuceneUtilBytesRefBuilder *)self->lastTerm_ appendWithOrgApacheLuceneUtilBytesRef:a3];
  }

  return 1;
}

- (BOOL)collectWithOrgApacheLuceneUtilBytesRef:(id)a3
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

  v9 = [(JavaUtilPriorityQueue *)self->val$stQueue_ peek];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9[4];
  if (v8 >= v10)
  {
    if (v8 != v10)
    {
      goto LABEL_10;
    }

    if (!a3)
    {
      goto LABEL_28;
    }

    v11 = *(v9 + 1);
    if (!v11)
    {
      goto LABEL_28;
    }

    if ([a3 compareToWithId:{objc_msgSend(v11, "get")}] <= 0)
    {
LABEL_10:
      visitedTerms = self->visitedTerms_;
      if (visitedTerms)
      {
        v13 = [(JavaUtilMap *)visitedTerms getWithId:a3];
        termsEnum = self->termsEnum_;
        if (termsEnum)
        {
          v15 = [(OrgApacheLuceneIndexTermsEnum *)termsEnum termState];
          if (v13)
          {
            v16 = v13[3];
            if (v16)
            {
              readerContext = self->super.readerContext_;
              if (readerContext)
              {
                [v16 register__WithOrgApacheLuceneIndexTermState:v15 withInt:*(&readerContext->super.ordInParent_ + 1) withInt:-[OrgApacheLuceneIndexTermsEnum docFreq](self->termsEnum_ withLong:{"docFreq"), -[OrgApacheLuceneIndexTermsEnum totalTermFreq](self->termsEnum_, "totalTermFreq")}];
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
                [(OrgApacheLuceneUtilBytesRefBuilder *)bytes copyBytesWithOrgApacheLuceneUtilBytesRef:a3];
                self->st_->boost_ = v8;
                [(JavaUtilMap *)self->visitedTerms_ putWithId:[(OrgApacheLuceneUtilBytesRefBuilder *)self->st_->bytes_ get] withId:self->st_];
                v20 = self->super.readerContext_;
                if (v20)
                {
                  [(OrgApacheLuceneIndexTermContext *)self->st_->termState_ register__WithOrgApacheLuceneIndexTermState:v15 withInt:*(&v20->super.ordInParent_ + 1) withInt:[(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ docFreq] withLong:[(OrgApacheLuceneIndexTermsEnum *)self->termsEnum_ totalTermFreq]];
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

                  v24 = [(JavaUtilPriorityQueue *)self->val$stQueue_ peek];
                  maxBoostAtt = self->maxBoostAtt_;
                  if (maxBoostAtt && v24)
                  {
                    LODWORD(v25) = *(v24 + 4);
                    [(OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute *)maxBoostAtt setMaxNonCompetitiveBoostWithFloat:v25];
                    -[OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:](self->maxBoostAtt_, "setCompetitiveTermWithOrgApacheLuceneUtilBytesRef:", [*(v24 + 1) get]);
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