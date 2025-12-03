@interface OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference
- (BOOL)isEqual:(id)equal;
@end

@implementation OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    [(JavaLangRefReference *)self get];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaLangRefReference *)self get];
  return v5 == [equal get];
}

@end