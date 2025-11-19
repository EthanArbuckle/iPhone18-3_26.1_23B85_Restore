@interface iOSLinkAcceleratorViewController
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation iOSLinkAcceleratorViewController

- (void)dealloc
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken);
  v4 = self;
  if (v3)
  {
    v5 = v3;
    sub_21549E34C();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for iOSLinkAcceleratorViewController();
  [(iOSLinkAcceleratorViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21534DC7C();
}

@end