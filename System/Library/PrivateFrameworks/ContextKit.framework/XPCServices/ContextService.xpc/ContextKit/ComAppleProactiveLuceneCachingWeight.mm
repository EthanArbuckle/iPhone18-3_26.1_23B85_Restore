@interface ComAppleProactiveLuceneCachingWeight
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)set;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation ComAppleProactiveLuceneCachingWeight

- (void)extractTermsWithJavaUtilSet:(id)set
{
  cachedTerms = self->cachedTerms_;
  if (cachedTerms)
  {
    if (set)
    {

      [set addAllWithJavaUtilCollection:cachedTerms];
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

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  self->valueForNormalization_ = NAN;
  w = self->w_;
  if (!w)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  w = self->w_;
  if (!w)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchWeight *)w scorerWithOrgApacheLuceneIndexLeafReaderContext:context];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneCachingWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end