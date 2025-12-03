@interface OrgApacheLuceneSearchQuery
- (BOOL)isEqual:(id)equal;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation OrgApacheLuceneSearchQuery

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneSearchQuery;
  clone = [(OrgApacheLuceneSearchQuery *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (unint64_t)hash
{
  [(OrgApacheLuceneSearchQuery *)self getBoost];
  v4 = JavaLangFloat_floatToIntBitsWithFloat_(v3);
  return (v4 ^ [-[OrgApacheLuceneSearchQuery getClass](self "getClass")]);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  getClass = [(OrgApacheLuceneSearchQuery *)self getClass];
  if (getClass != [equal getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = JavaLangFloat_floatToIntBitsWithFloat_(self->boost_);
  return v7 == JavaLangFloat_floatToIntBitsWithFloat_(*(equal + 2));
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneSearchQuery *)self clone];

  return clone;
}

@end