@interface SharedContentViewController
- (CGRect)frameForRestoreAnimation;
- (CGSize)preferredPiPContentAspectRatio;
- (_TtC15ConversationKit27SharedContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)sharedContentSourceName;
- (id)viewControllerForPiP;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)getSharedContentSourceAvatarWithImageHandler:(id)a3;
- (void)screenSharingStateMonitorDidUpdateScreenInfoForParticipant:(id)a3;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidZoom:(id)a3;
- (void)setIsPipped:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SharedContentViewController

- (void)setIsPipped:(BOOL)a3
{
  v4 = self;
  SharedContentViewController.isPipped.setter(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  SharedContentViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  SharedContentViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  SharedContentViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit27SharedContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  SharedContentViewController.init(nibName:bundle:)();
}

- (id)viewForZoomingInScrollView:(id)a3
{
  SharedContentViewController.viewForZooming(in:)(v3, self);

  return v4;
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  SharedContentViewController.scrollViewDidZoom(_:)(v4);
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  SharedContentViewController.scrollViewDidEndZooming(_:with:atScale:)(v7);
}

- (CGSize)preferredPiPContentAspectRatio
{
  v2 = self;
  v3 = SharedContentViewController.preferredPiPContentAspectRatio()();

  width = v3.width;
  height = v3.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)frameForRestoreAnimation
{
  v2 = self;
  v11 = SharedContentViewController.frameForRestoreAnimation()();
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)viewControllerForPiP
{
  SharedContentViewController.viewControllerForPiP()(v2);

  return v3;
}

- (id)sharedContentSourceName
{
  v2 = self;
  v3 = SharedContentViewController.sharedContentSourceName()();

  if (v3.value._object)
  {
    v4 = MEMORY[0x1BFB209B0](v3.value._countAndFlagsBits, v3.value._object);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getSharedContentSourceAvatarWithImageHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  specialized SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)(v5, v4);
  _Block_release(v4);
}

- (void)screenSharingStateMonitorDidUpdateScreenInfoForParticipant:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  SharedContentViewController.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:)();
  swift_unknownObjectRelease();
}

@end