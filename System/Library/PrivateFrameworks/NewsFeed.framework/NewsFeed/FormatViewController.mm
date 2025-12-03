@interface FormatViewController
- (_TtC8NewsFeed20FormatViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation FormatViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_1D725CAAC();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(FormatViewController *)&v5 dealloc];
}

- (_TtC8NewsFeed20FormatViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  FormatViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  FormatViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(FormatViewController *)&v4 viewDidLayoutSubviews];
  sub_1D725E51C();
  v3 = sub_1D725E05C();

  [v3 layoutIfNeeded];

  sub_1D725AA0C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  FormatViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FormatViewController *)&v5 viewDidAppear:appearCopy];
  sub_1D725CAEC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FormatViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1D725D6CC();
  sub_1D725CABC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  FormatViewController.traitCollectionDidChange(_:)(v9);
}

- (void)startTraversingWithDirection:(int64_t)direction
{
  selfCopy = self;
  sub_1D725E52C();
}

@end