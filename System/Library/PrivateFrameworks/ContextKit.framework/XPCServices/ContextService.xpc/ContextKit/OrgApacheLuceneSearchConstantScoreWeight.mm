@interface OrgApacheLuceneSearchConstantScoreWeight
- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4;
@end

@implementation OrgApacheLuceneSearchConstantScoreWeight

- (void)normalizeWithFloat:(float)a3 withFloat:(float)a4
{
  v4 = a3 * a4;
  self->queryNorm_ = v4;
  self->queryWeight_ = v4 * self->queryWeight_;
}

@end