@interface OrgApacheLuceneIndexTermState
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OrgApacheLuceneIndexTermState

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneIndexTermState;
  v2 = [(OrgApacheLuceneIndexTermState *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(OrgApacheLuceneIndexTermState *)self clone];

  return v3;
}

@end