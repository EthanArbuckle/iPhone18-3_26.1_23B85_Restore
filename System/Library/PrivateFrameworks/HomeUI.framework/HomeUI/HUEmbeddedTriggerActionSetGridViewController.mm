@interface HUEmbeddedTriggerActionSetGridViewController
- (HUEmbeddedTriggerActionSetGridViewController)initWithTriggerBuilder:(id)a3;
- (HUEmbeddedTriggerActionSetGridViewControllerDelegate)delegate;
- (id)triggerBuilder;
- (void)reloadActions;
- (void)sceneEditor:(id)a3 removeActionSetBuilderFromTrigger:(id)a4;
- (void)setTriggerBuilder:(id)a3;
@end

@implementation HUEmbeddedTriggerActionSetGridViewController

- (id)triggerBuilder
{
  v3 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTriggerBuilder:(id)a3
{
  v5 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (HUEmbeddedTriggerActionSetGridViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUEmbeddedTriggerActionSetGridViewController)initWithTriggerBuilder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder) = a3;
  v5 = a3;
  v6 = [v5 triggerActionSets];
  v7 = [v5 home];
  v8 = v6;
  v9 = sub_20CF02678(v8, v7, self);

  return v9;
}

- (void)reloadActions
{
  v3 = self;
  v2 = [(HUItemCollectionViewController *)v3 itemManager];
}

- (void)sceneEditor:(id)a3 removeActionSetBuilderFromTrigger:(id)a4
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