@interface UniqueAnimationKeyCounter
- (unint64_t)nextAnimationKey;
@end

@implementation UniqueAnimationKeyCounter

- (unint64_t)nextAnimationKey
{
  nextAnimationKey = self->_nextAnimationKey;
  self->_nextAnimationKey = nextAnimationKey + 1;
  return nextAnimationKey;
}

@end