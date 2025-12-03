@interface ComAppleProactiveLuceneScoreInterceptWeight
- (float)getValueForNormalization;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (void)dealloc;
- (void)extractTermsWithJavaUtilSet:(id)set;
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation ComAppleProactiveLuceneScoreInterceptWeight

- (void)extractTermsWithJavaUtilSet:(id)set
{
  weight = self->weight_;
  if (!weight)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchWeight *)weight extractTermsWithJavaUtilSet:set];
}

- (float)getValueForNormalization
{
  weight = self->weight_;
  if (!weight)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchWeight *)weight getValueForNormalization];
  return result;
}

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  weight = self->weight_;
  if (!weight)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneSearchWeight normalizeWithFloat:"normalizeWithFloat:withFloat:" withFloat:?];
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  weight = self->weight_;
  if (!weight)
  {
    goto LABEL_9;
  }

  v6 = [(OrgApacheLuceneSearchWeight *)weight scorerWithOrgApacheLuceneIndexLeafReaderContext:?];
  if (!v6)
  {
    return v6;
  }

  target = self->target_;
  if (!target)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if (![(ComAppleProactiveLuceneScoreInterceptTarget *)target isEnabled])
  {
    return v6;
  }

  v8 = self->weight_;
  v9 = [ComAppleProactiveLuceneScoreInterceptWeight__1 alloc];
  sub_1000494CC(&v9->super.super.super.super.isa, self, context, v6, v6, v8);

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneScoreInterceptWeight;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end