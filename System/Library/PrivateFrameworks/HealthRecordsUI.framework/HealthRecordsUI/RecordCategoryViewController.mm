@interface RecordCategoryViewController
- (NSString)sidebarSelectionIdentifier;
- (_TtC15HealthRecordsUI28RecordCategoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)customEditButtonTapped;
- (void)didDismissSearchController:(id)a3;
- (void)modePickerDidChange:(id)a3;
- (void)presentPDFViewController;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showPinnedLabsPopoverIfNeeded;
- (void)tapToRadar:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation RecordCategoryViewController

- (NSString)sidebarSelectionIdentifier
{
  v2 = self;
  sub_1D11CD860();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D11CDD24();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecordCategoryViewController();
  v4 = v8.receiver;
  [(RecordCategoryViewController *)&v8 viewIsAppearing:v3];
  v5 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1D1072E70(v4 + v5, v7);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v6 = [v4 traitCollection];
  sub_1D138E48C();

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D11CE314();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RecordCategoryViewController();
  v2 = v4.receiver;
  [(RecordCategoryViewController *)&v4 viewDidLayoutSubviews];
  v3 = [v2 traitCollection];
  sub_1D1390AEC();

  sub_1D13909AC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecordCategoryViewController();
  v4 = v7.receiver;
  [(RecordCategoryViewController *)&v7 viewWillAppear:v3];
  if (*(v4 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) == 2)
  {
    v5 = [v4 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      sub_1D11CED48();
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RecordCategoryViewController();
  v4 = v5.receiver;
  [(RecordCategoryViewController *)&v5 viewWillDisappear:v3];
  sub_1D11CF7A0(1, 0, 0);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1D11D45A8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_1D11CE638(v10, a4, v8, v9);
  sub_1D1138F60(v8);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D11CEA14(a3);
}

- (void)modePickerDidChange:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1D11CF26C();

  sub_1D11D3A44(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D1082CC4);
}

- (void)showPinnedLabsPopoverIfNeeded
{
  v2 = self;
  sub_1D11CF42C();
}

- (void)tapToRadar:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(self);

  sub_1D11D3A44(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D1082CC4);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1D11CF9E0(a3, a4);
}

- (void)presentPDFViewController
{
  v2 = self;
  sub_1D11CFAD8();
}

- (void)customEditButtonTapped
{
  v2 = self;
  [(RecordCategoryViewController *)v2 setEditing:[(RecordCategoryViewController *)v2 isEditing]^ 1 animated:1];
  sub_1D11D2414();
}

- (_TtC15HealthRecordsUI28RecordCategoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  _s15HealthRecordsUI28RecordCategoryViewControllerC19updateSearchResults3forySo08UISearchG0C_tF_0();
}

- (void)didDismissSearchController:(id)a3
{
  v3 = self;
  _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
}

@end