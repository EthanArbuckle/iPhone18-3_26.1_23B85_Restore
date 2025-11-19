@interface SFTabSwitcherTransaction
- (SFTabSwitcherTransaction)init;
- (void)setAnimationSettings:(id)a3;
- (void)setInsertedItemToDismissTo:(id)a3;
- (void)setTargetScrollPosition:(id)a3;
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

- (void)setTargetScrollPosition:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_targetScrollPosition);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_targetScrollPosition) = a3;
  v3 = a3;
}

- (void)setAnimationSettings:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_animationSettings);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_animationSettings) = a3;
  v3 = a3;
}

- (void)setInsertedItemToDismissTo:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_insertedItemToDismissTo);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherTransaction_insertedItemToDismissTo) = a3;
  v3 = a3;
}

@end