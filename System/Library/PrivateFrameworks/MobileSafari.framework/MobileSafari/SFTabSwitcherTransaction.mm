@interface SFTabSwitcherTransaction
- (SFTabSwitcherTransaction)init;
- (void)setAnimationSettings:(id)settings;
- (void)setInsertedItemToDismissTo:(id)to;
- (void)setTargetScrollPosition:(id)position;
@end

@implementation SFTabSwitcherTransaction

- (SFTabSwitcherTransaction)init
{
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_animationSettings) = 0;
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_insertedItemToDismissTo) = 0;
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_prefersDetachedTransition) = 0;
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_targetScrollPosition) = 0;
  v3.receiver = self;
  v3.super_class = SFTabSwitcherTransaction;
  return [(SFTabSwitcherTransaction *)&v3 init];
}

- (void)setTargetScrollPosition:(id)position
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_targetScrollPosition);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_targetScrollPosition) = position;
  positionCopy = position;
}

- (void)setAnimationSettings:(id)settings
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_animationSettings);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_animationSettings) = settings;
  settingsCopy = settings;
}

- (void)setInsertedItemToDismissTo:(id)to
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_insertedItemToDismissTo);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_insertedItemToDismissTo) = to;
  toCopy = to;
}

@end