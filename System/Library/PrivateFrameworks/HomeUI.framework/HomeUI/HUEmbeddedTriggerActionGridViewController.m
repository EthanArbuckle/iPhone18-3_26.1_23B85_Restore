@interface HUEmbeddedTriggerActionGridViewController
- (HUEmbeddedTriggerActionGridViewControllerDelegate)triggerActionGridDelegate;
- (id)triggerBuilder;
- (void)reloadActions;
- (void)setTriggerBuilder:(id)a3;
@end

@implementation HUEmbeddedTriggerActionGridViewController

- (id)triggerBuilder
{
  v3 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTriggerBuilder:(id)a3
{
  v5 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (HUEmbeddedTriggerActionGridViewControllerDelegate)triggerActionGridDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)reloadActions
{
  v3 = self;
  v2 = [(HUItemCollectionViewController *)v3 itemManager];
}

@end