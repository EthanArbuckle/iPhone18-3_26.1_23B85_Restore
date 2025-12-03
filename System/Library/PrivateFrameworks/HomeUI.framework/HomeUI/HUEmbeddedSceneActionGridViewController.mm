@interface HUEmbeddedSceneActionGridViewController
- (HUEmbeddedSceneActionGridViewControllerDelegate)sceneActionGridDelegate;
- (void)setSceneActionGridDelegate:(id)delegate;
@end

@implementation HUEmbeddedSceneActionGridViewController

- (HUEmbeddedSceneActionGridViewControllerDelegate)sceneActionGridDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSceneActionGridDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

@end