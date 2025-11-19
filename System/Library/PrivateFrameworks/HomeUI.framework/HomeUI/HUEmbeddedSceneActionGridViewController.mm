@interface HUEmbeddedSceneActionGridViewController
- (HUEmbeddedSceneActionGridViewControllerDelegate)sceneActionGridDelegate;
- (void)setSceneActionGridDelegate:(id)a3;
@end

@implementation HUEmbeddedSceneActionGridViewController

- (HUEmbeddedSceneActionGridViewControllerDelegate)sceneActionGridDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSceneActionGridDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

@end