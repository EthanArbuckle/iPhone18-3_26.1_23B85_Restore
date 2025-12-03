@interface PDAnimateColorBehavior
- (void)setBy:(double)by[3];
@end

@implementation PDAnimateColorBehavior

- (void)setBy:(double)by[3]
{
  self->mHasBy = 1;
  self->mBy[0] = *by;
  self->mBy[1] = by[1];
  self->mBy[2] = by[2];
}

@end