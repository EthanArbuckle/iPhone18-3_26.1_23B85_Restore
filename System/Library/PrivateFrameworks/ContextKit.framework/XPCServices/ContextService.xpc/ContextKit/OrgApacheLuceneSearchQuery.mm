@interface OrgApacheLuceneSearchQuery
- (BOOL)isEqual:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OrgApacheLuceneSearchQuery

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneSearchQuery;
  v2 = [(OrgApacheLuceneSearchQuery *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (unint64_t)hash
{
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  v4 = JavaLangFloat_floatToIntBitsWithFloat_(v3);
  return (v4 ^ [-[OrgApacheLuceneSearchQuery getClass](self "getClass")]);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = [(OrgApacheLuceneSearchQuery *)self getClass];
  if (v5 != [a3 getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = JavaLangFloat_floatToIntBitsWithFloat_(self->boost_);
  return v7 == JavaLangFloat_floatToIntBitsWithFloat_(*(a3 + 2));
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(OrgApacheLuceneSearchQuery *)self clone];

  return v3;
}

@end