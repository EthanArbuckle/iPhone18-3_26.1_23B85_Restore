@interface MFMainCardViewController
- (_TtC16MagnifierSupport24MFMainCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MFMainCardViewController

- (void)loadView
{
  v2 = self;
  sub_257EB1FE8();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MFMainCardViewController();
  v2 = v3.receiver;
  [(MFMainCardViewController *)&v3 viewDidLoad];
  sub_257EB234C();
  sub_257EB2BCC();
  sub_257EB3430();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257EB2190(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MFMainCardViewController();
  v4 = v5.receiver;
  [(MFMainCardViewController *)&v5 viewDidAppear:v3];
  sub_257E79340();
}

- (_TtC16MagnifierSupport24MFMainCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_257EB3D08(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_257EB4148(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MFMainCardViewController();
  v2 = v3.receiver;
  [(MFMainCardViewController *)&v3 viewDidLayoutSubviews];
  sub_257EB370C();
  sub_257EB43A0();
}

@end