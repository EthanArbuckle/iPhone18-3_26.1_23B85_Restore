@interface RecordCategoryViewController
- (NSString)sidebarSelectionIdentifier;
- (_TtC15HealthRecordsUI28RecordCategoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)customEditButtonTapped;
- (void)didDismissSearchController:(id)controller;
- (void)modePickerDidChange:(id)change;
- (void)presentPDFViewController;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showPinnedLabsPopoverIfNeeded;
- (void)tapToRadar:(id)radar;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation RecordCategoryViewController

- (NSString)sidebarSelectionIdentifier
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1D11CDD24();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecordCategoryViewController();
  v4 = v8.receiver;
  [(RecordCategoryViewController *)&v8 viewIsAppearing:appearingCopy];
  v5 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1D1072E70(v4 + v5, v7);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  traitCollection = [v4 traitCollection];
  sub_1D138E48C();

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D11CE314();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RecordCategoryViewController();
  v2 = v4.receiver;
  [(RecordCategoryViewController *)&v4 viewDidLayoutSubviews];
  traitCollection = [v2 traitCollection];
  sub_1D1390AEC();

  sub_1D13909AC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecordCategoryViewController();
  v4 = v7.receiver;
  [(RecordCategoryViewController *)&v7 viewWillAppear:appearCopy];
  if (*(v4 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) == 2)
  {
    traitCollection = [v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      sub_1D11CED48();
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RecordCategoryViewController();
  v4 = v5.receiver;
  [(RecordCategoryViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1D11CF7A0(1, 0, 0);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  controllerCopy = controller;
  selfCopy = self;
  sub_1D11CE638(controllerCopy, animated, v8, v9);
  sub_1D1138F60(v8);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D11CEA14(change);
}

- (void)modePickerDidChange:(id)change
{
  if (change)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1D11CF26C();

  sub_1D11D3A44(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D1082CC4);
}

- (void)showPinnedLabsPopoverIfNeeded
{
  selfCopy = self;
  sub_1D11CF42C();
}

- (void)tapToRadar:(id)radar
{
  if (radar)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(self);

  sub_1D11D3A44(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D1082CC4);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1D11CF9E0(editing, animated);
}

- (void)presentPDFViewController
{
  selfCopy = self;
  sub_1D11CFAD8();
}

- (void)customEditButtonTapped
{
  selfCopy = self;
  [(RecordCategoryViewController *)selfCopy setEditing:[(RecordCategoryViewController *)selfCopy isEditing]^ 1 animated:1];
  sub_1D11D2414();
}

- (_TtC15HealthRecordsUI28RecordCategoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  _s15HealthRecordsUI28RecordCategoryViewControllerC19updateSearchResults3forySo08UISearchG0C_tF_0();
}

- (void)didDismissSearchController:(id)controller
{
  selfCopy = self;
  _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
}

@end