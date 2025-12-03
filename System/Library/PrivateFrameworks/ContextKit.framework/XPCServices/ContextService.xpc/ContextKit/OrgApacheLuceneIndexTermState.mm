@interface OrgApacheLuceneIndexTermState
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OrgApacheLuceneIndexTermState

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneIndexTermState;
  clone = [(OrgApacheLuceneIndexTermState *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(OrgApacheLuceneIndexTermState *)self clone];

  return clone;
}

@end