@interface HUEmbeddedTriggerActionGridViewController
- (HUEmbeddedTriggerActionGridViewControllerDelegate)triggerActionGridDelegate;
- (id)triggerBuilder;
- (void)reloadActions;
- (void)setTriggerBuilder:(id)builder;
@end

@implementation HUEmbeddedTriggerActionGridViewController

- (id)triggerBuilder
{
  v3 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTriggerBuilder:(id)builder
{
  v5 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = builder;
  builderCopy = builder;
}

- (HUEmbeddedTriggerActionGridViewControllerDelegate)triggerActionGridDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)reloadActions
{
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
}

@end