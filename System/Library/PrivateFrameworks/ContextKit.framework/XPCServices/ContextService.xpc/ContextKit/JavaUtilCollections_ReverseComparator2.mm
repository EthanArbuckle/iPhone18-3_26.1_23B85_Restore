@interface JavaUtilCollections_ReverseComparator2
- (BOOL)isEqual:(id)equal;
- (int)compareWithId:(id)id withId:(id)withId;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_ReverseComparator2

- (int)compareWithId:(id)id withId:(id)withId
{
  cmp = self->cmp_;
  if (!cmp)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilComparator *)cmp compareWithId:withId withId:id];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(equal + 1);
  if (!v5)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  cmp = self->cmp_;

  return [v5 isEqual:cmp];
}

- (unint64_t)hash
{
  cmp = self->cmp_;
  if (!cmp)
  {
    JreThrowNullPointerException();
  }

  return ~[(JavaUtilComparator *)cmp hash];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_ReverseComparator2;
  [(JavaUtilCollections_ReverseComparator2 *)&v3 dealloc];
}

@end