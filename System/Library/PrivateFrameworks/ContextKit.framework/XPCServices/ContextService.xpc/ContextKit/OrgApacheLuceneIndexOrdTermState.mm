@interface OrgApacheLuceneIndexOrdTermState
- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)state;
@end

@implementation OrgApacheLuceneIndexOrdTermState

- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)state
{
  objc_opt_class();
  if (state && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  self->ord_ = *(state + 1);
}

@end