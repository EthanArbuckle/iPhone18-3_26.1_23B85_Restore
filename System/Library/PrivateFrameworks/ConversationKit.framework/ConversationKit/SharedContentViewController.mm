@interface SharedContentViewController
- (CGRect)frameForRestoreAnimation;
- (CGSize)preferredPiPContentAspectRatio;
- (_TtC15ConversationKit27SharedContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)sharedContentSourceName;
- (id)viewControllerForPiP;
- (id)viewForZoomingInScrollView:(id)view;
- (void)getSharedContentSourceAvatarWithImageHandler:(id)handler;
- (void)screenSharingStateMonitorDidUpdateScreenInfoForParticipant:(id)participant;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidZoom:(id)zoom;
- (void)setIsPipped:(BOOL)pipped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SharedContentViewController

- (void)setIsPipped:(BOOL)pipped
{
  selfCopy = self;
  SharedContentViewController.isPipped.setter(pipped);
}

- (void)viewDidLoad
{
  selfCopy = self;
  SharedContentViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  SharedContentViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  SharedContentViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit27SharedContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  SharedContentViewController.init(nibName:bundle:)();
}

- (id)viewForZoomingInScrollView:(id)view
{
  SharedContentViewController.viewForZooming(in:)(v3, self);

  return v4;
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  SharedContentViewController.scrollViewDidZoom(_:)(zoomCopy);
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  viewCopy = view;
  selfCopy = self;
  SharedContentViewController.scrollViewDidEndZooming(_:with:atScale:)(zoomingCopy);
}

- (CGSize)preferredPiPContentAspectRatio
{
  selfCopy = self;
  v3 = SharedContentViewController.preferredPiPContentAspectRatio()();

  width = v3.width;
  height = v3.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)frameForRestoreAnimation
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)getSharedContentSourceAvatarWithImageHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  specialized SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)(selfCopy, v4);
  _Block_release(v4);
}

- (void)screenSharingStateMonitorDidUpdateScreenInfoForParticipant:(id)participant
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SharedContentViewController.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:)();
  swift_unknownObjectRelease();
}

@end