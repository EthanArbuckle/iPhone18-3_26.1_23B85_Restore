@interface JavaUtilCollections_ReverseComparator2
- (BOOL)isEqual:(id)a3;
- (int)compareWithId:(id)a3 withId:(id)a4;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_ReverseComparator2

- (int)compareWithId:(id)a3 withId:(id)a4
{
  cmp = self->cmp_;
  if (!cmp)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilComparator *)cmp compareWithId:a4 withId:a3];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(a3 + 1);
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