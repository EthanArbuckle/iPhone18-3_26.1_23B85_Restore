@interface OrgApacheLuceneSearchConstantScoreWeight
- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat;
@end

@implementation OrgApacheLuceneSearchConstantScoreWeight

- (void)normalizeWithFloat:(float)float withFloat:(float)withFloat
{
  v4 = float * withFloat;
  self->queryNorm_ = v4;
  self->queryWeight_ = v4 * self->queryWeight_;
}

@end