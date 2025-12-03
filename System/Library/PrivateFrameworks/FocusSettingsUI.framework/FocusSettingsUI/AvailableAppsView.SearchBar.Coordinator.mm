@interface AvailableAppsView.SearchBar.Coordinator
- (BOOL)textFieldShouldClear:(id)clear;
- (_TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator)init;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
@end

@implementation AvailableAppsView.SearchBar.Coordinator

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  sub_24B93DA24(barCopy);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  selfCopy = self;
  LOBYTE(self) = sub_24B93DBA4();

  return self & 1;
}

- (_TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end