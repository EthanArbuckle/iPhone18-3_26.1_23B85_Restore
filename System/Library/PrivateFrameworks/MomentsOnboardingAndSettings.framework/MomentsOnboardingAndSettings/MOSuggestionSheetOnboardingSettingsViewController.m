@interface MOSuggestionSheetOnboardingSettingsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)completeOnboardingTapped;
- (void)switchChanged:(id)a3 section:(int64_t)a4;
- (void)switchChanged_bottom:(id)a3;
- (void)switchChanged_middle:(id)a3;
- (void)switchChanged_top:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MOSuggestionSheetOnboardingSettingsViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MOSuggestionSheetOnboardingSettingsViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  [(OBTableWelcomeController *)&v2 viewDidLoad];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  MOSuggestionSheetOnboardingSettingsViewController.viewDidLayoutSubviews()();
}

- (void)switchChanged_top:(id)a3
{
  v4 = a3;
  v5 = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(v4, 0);
}

- (void)switchChanged_middle:(id)a3
{
  v4 = a3;
  v5 = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(v4, 1);
}

- (void)switchChanged_bottom:(id)a3
{
  v4 = a3;
  v5 = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(v4, 2);
}

- (void)switchChanged:(id)a3 section:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(v6, a4);
}

- (void)completeOnboardingTapped
{
  v2 = self;
  MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped()();
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:heightForHeaderInSection:)(a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:viewForHeaderInSection:)(a4);

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  [a3 estimatedRowHeight];
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  return v11;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:heightForFooterInSection:)(a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:viewForFooterInSection:)(a4);

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(self + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings);
  if (*(v4 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = *(v4 + 24 * a4 + 32);
  if (v5)
  {
    return *(v5 + 16);
  }

  else
  {
    return 0;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  LOBYTE(self) = specialized MOSuggestionSheetOnboardingSettingsViewController.textView(_:shouldInteractWith:in:interaction:)();

  (*(v9 + 8))(v12, v8);
  return self & 1;
}

@end