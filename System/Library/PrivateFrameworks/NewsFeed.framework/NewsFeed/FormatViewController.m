@interface FormatViewController
- (_TtC8NewsFeed20FormatViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FormatViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_1D725CAAC();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(FormatViewController *)&v5 dealloc];
}

- (_TtC8NewsFeed20FormatViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  FormatViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
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

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  FormatViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FormatViewController *)&v5 viewDidAppear:v3];
  sub_1D725CAEC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FormatViewController *)&v5 viewWillDisappear:v3];
  sub_1D725D6CC();
  sub_1D725CABC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  FormatViewController.traitCollectionDidChange(_:)(v9);
}

- (void)startTraversingWithDirection:(int64_t)a3
{
  v3 = self;
  sub_1D725E52C();
}

@end