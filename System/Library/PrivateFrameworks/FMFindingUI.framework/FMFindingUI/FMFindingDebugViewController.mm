@interface FMFindingDebugViewController
- (_TtC11FMFindingUI28FMFindingDebugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)handleWithButton:(id)button;
- (void)handleWithSlider:(id)slider;
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
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
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

- (void)handleWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_24A5DD2A8();
}

- (void)handleWithSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_24A5DED80();
}

- (_TtC11FMFindingUI28FMFindingDebugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_24A62E0F4();
  v6 = sub_24A62ED64();
  pickerCopy = picker;
  selfCopy = self;
  sub_24A5DEF14(v6);
}

@end