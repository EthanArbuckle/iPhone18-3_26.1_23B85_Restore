@interface iOSAudioCallLayoutViewController
- (_TtC16CommunicationsUI32iOSAudioCallLayoutViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation iOSAudioCallLayoutViewController

- (void)viewDidLoad
{
  v2 = self;
  iOSAudioCallLayoutViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  iOSAudioCallLayoutViewController.viewIsAppearing(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  iOSAudioCallLayoutViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC16CommunicationsUI32iOSAudioCallLayoutViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end