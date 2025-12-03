@interface MOSuggestionSheetOnboardingSettingsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)completeOnboardingTapped;
- (void)switchChanged:(id)changed section:(int64_t)section;
- (void)switchChanged_bottom:(id)changed_bottom;
- (void)switchChanged_middle:(id)changed_middle;
- (void)switchChanged_top:(id)changed_top;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MOSuggestionSheetOnboardingSettingsViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MOSuggestionSheetOnboardingSettingsViewController();
  [(OBTableWelcomeController *)&v2 viewDidLoad];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.viewDidLayoutSubviews()();
}

- (void)switchChanged_top:(id)changed_top
{
  changed_topCopy = changed_top;
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(changed_topCopy, 0);
}

- (void)switchChanged_middle:(id)changed_middle
{
  changed_middleCopy = changed_middle;
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(changed_middleCopy, 1);
}

- (void)switchChanged_bottom:(id)changed_bottom
{
  changed_bottomCopy = changed_bottom;
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(changed_bottomCopy, 2);
}

- (void)switchChanged:(id)changed section:(int64_t)section
{
  changedCopy = changed;
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.switchChanged(_:section:)(changedCopy, section);
}

- (void)completeOnboardingTapped
{
  selfCopy = self;
  MOSuggestionSheetOnboardingSettingsViewController.completeOnboardingTapped()();
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:heightForHeaderInSection:)(section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:viewForHeaderInSection:)(section);

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  [view estimatedRowHeight];
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  return v11;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:heightForFooterInSection:)(section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:viewForFooterInSection:)(section);

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(self + OBJC_IVAR____TtC28MomentsOnboardingAndSettings49MOSuggestionSheetOnboardingSettingsViewController_journalingSuggestionsSettings);
  if (*(v4 + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = *(v4 + 24 * section + 32);
  if (v5)
  {
    return *(v5 + 16);
  }

  else
  {
    return 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = specialized MOSuggestionSheetOnboardingSettingsViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = specialized MOSuggestionSheetOnboardingSettingsViewController.textView(_:shouldInteractWith:in:interaction:)();

  (*(v9 + 8))(v12, v8);
  return self & 1;
}

@end