@interface FMFindingDebugViewController
- (_TtC11FMFindingUI28FMFindingDebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)handleWithButton:(id)a3;
- (void)handleWithSlider:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation FMFindingDebugViewController

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for FMFindingDebugViewController();
  v2 = v14.receiver;
  [(FMFindingDebugViewController *)&v14 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A5DD2A8();
}

- (void)handleWithSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A5DED80();
}

- (_TtC11FMFindingUI28FMFindingDebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_24A62E0F4();
  v6 = sub_24A62ED64();
  v7 = a3;
  v8 = self;
  sub_24A5DEF14(v6);
}

@end