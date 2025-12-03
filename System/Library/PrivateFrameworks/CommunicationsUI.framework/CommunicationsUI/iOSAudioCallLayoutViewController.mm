@interface iOSAudioCallLayoutViewController
- (_TtC16CommunicationsUI32iOSAudioCallLayoutViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation iOSAudioCallLayoutViewController

- (void)viewDidLoad
{
  selfCopy = self;
  iOSAudioCallLayoutViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  iOSAudioCallLayoutViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  iOSAudioCallLayoutViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC16CommunicationsUI32iOSAudioCallLayoutViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end