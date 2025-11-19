@interface OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference
- (BOOL)isEqual:(id)a3;
@end

@implementation OrgApacheLuceneUtilWeakIdentityMap_IdentityWeakReference

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    [(JavaLangRefReference *)self get];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaLangRefReference *)self get];
  return v5 == [a3 get];
}

@end