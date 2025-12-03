@interface CrossFadeAnimator
- (void)animateTransition:(id)transition;
@end

@implementation CrossFadeAnimator

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CrossFadeAnimator.animateTransition(using:)(transition);
  swift_unknownObjectRelease();
}

@end