@interface ComAppleProactiveLuceneCachingWeight
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)a3;
- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4;
@end

@implementation ComAppleProactiveLuceneCachingWeight

- (void)extractTermsWithJavaUtilSet:(id)a3
{
  cachedTerms = self->cachedTerms_;
  if (cachedTerms)
  {
    if (a3)
    {

      [a3 addAllWithJavaUtilCollection:cachedTerms];
      return;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  v5 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(&self->cachedTerms_, v5);
  w = self->w_;
  if (!w)
  {
    goto LABEL_10;
  }

  v7 = self->cachedTerms_;

  [(OrgApacheLuceneSearchWeight *)w extractTermsWithJavaUtilSet:v7];
}

- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4
{
  self->valueForNormalization_ = NAN;
  w = self->w_;
  if (!w)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  w = self->w_;
  if (!w)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchWeight *)w scorerWithOrgApacheLuceneIndexLeafReaderContext:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneCachingWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end