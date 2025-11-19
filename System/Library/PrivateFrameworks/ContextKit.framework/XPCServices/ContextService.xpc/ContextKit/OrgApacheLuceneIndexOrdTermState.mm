@interface OrgApacheLuceneIndexOrdTermState
- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)a3;
@end

@implementation OrgApacheLuceneIndexOrdTermState

- (void)copyFromWithOrgApacheLuceneIndexTermState:(id)a3
{
  objc_opt_class();
  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  self->ord_ = *(a3 + 1);
}

@end