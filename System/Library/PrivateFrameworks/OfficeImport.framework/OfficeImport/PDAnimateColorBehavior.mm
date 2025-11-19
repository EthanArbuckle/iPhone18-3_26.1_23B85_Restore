@interface PDAnimateColorBehavior
- (void)setBy:(double)a3[3];
@end

@implementation PDAnimateColorBehavior

- (void)setBy:(double)a3[3]
{
  self->mHasBy = 1;
  self->mBy[0] = *a3;
  self->mBy[1] = a3[1];
  self->mBy[2] = a3[2];
}

@end