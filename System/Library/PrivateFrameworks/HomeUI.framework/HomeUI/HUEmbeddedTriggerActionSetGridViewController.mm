@interface HUEmbeddedTriggerActionSetGridViewController
- (HUEmbeddedTriggerActionSetGridViewController)initWithTriggerBuilder:(id)builder;
- (HUEmbeddedTriggerActionSetGridViewControllerDelegate)delegate;
- (id)triggerBuilder;
- (void)reloadActions;
- (void)sceneEditor:(id)editor removeActionSetBuilderFromTrigger:(id)trigger;
- (void)setTriggerBuilder:(id)builder;
@end

@implementation HUEmbeddedTriggerActionSetGridViewController

- (id)triggerBuilder
{
  v3 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTriggerBuilder:(id)builder
{
  v5 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = builder;
  builderCopy = builder;
}

- (HUEmbeddedTriggerActionSetGridViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUEmbeddedTriggerActionSetGridViewController)initWithTriggerBuilder:(id)builder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder) = builder;
  builderCopy = builder;
  triggerActionSets = [builderCopy triggerActionSets];
  home = [builderCopy home];
  v8 = triggerActionSets;
  v9 = sub_20CF02678(v8, home, self);

  return v9;
}

- (void)reloadActions
{
  selfCopy = self;
  itemManager = [(HUItemCollectionViewController *)selfCopy itemManager];
}

- (void)sceneEditor:(id)editor removeActionSetBuilderFromTrigger:(id)trigger
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
    swift_beginAccess();
    v8 = *(self + v7);
    [v6 triggerActionSetGridViewController:self didUpdate:v8];

    swift_unknownObjectRelease();
  }
}

@end