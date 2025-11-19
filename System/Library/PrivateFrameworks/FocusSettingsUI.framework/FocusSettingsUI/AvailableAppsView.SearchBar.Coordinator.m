@interface AvailableAppsView.SearchBar.Coordinator
- (BOOL)textFieldShouldClear:(id)a3;
- (_TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator)init;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
@end

@implementation AvailableAppsView.SearchBar.Coordinator

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_24B93DA24(v5);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = [objc_opt_self() sharedApplication];
  [v3 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = self;
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