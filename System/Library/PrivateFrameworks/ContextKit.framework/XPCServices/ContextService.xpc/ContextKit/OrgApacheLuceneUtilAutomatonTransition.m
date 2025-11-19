@interface OrgApacheLuceneUtilAutomatonTransition
- (id)description;
@end

@implementation OrgApacheLuceneUtilAutomatonTransition

- (id)description
{
  max_low = LOWORD(self->max_);
  min_low = LOWORD(self->min_);
  dest = self->dest_;
  return JreStrcat("I$ICCCC", a2, v2, v3, v4, v5, v6, v7, self->source_);
}

@end