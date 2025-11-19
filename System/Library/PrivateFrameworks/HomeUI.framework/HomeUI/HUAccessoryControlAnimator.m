@interface HUAccessoryControlAnimator
- (HUAccessoryControlAnimator)init;
- (void)animateTransition:(id)a3;
@end

@implementation HUAccessoryControlAnimator

- (HUAccessoryControlAnimator)init
{
  *(&self->super.isa + OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DashboardAccessoryControlAnimator();
  return [(HUAccessoryControlAnimator *)&v4 init];
}

- (void)animateTransition:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType);
  swift_unknownObjectRetain();
  v6 = self;
  if (v5)
  {
    sub_20D09A58C(a3);
  }

  else
  {
    sub_20D099D30(a3);
  }

  swift_unknownObjectRelease();
}

@end