@interface MFMainCardViewController
- (_TtC16MagnifierSupport24MFMainCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MFMainCardViewController

- (void)loadView
{
  selfCopy = self;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257EB2190(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MFMainCardViewController();
  v4 = v5.receiver;
  [(MFMainCardViewController *)&v5 viewDidAppear:appearCopy];
  sub_257E79340();
}

- (_TtC16MagnifierSupport24MFMainCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_257EB3D08(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_257EB4148(collectionCopy, coordinator);

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