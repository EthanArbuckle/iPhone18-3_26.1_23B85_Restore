@interface MPSuggestionsSearchTableViewController
- (MPSuggestedSearch)suggestionsDelegate;
- (MPSuggestionsSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MPSuggestionsSearchTableViewController)initWithStyle:(int64_t)a3;
- (NSArray)suggestions;
- (NSString)searchText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setSearchText:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MPSuggestionsSearchTableViewController

- (MPSuggestedSearch)suggestionsDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)suggestions
{
  v2 = *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions);
  sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);

  v3 = sub_1CFB8FB20();

  return v3;
}

- (void)setSuggestions:(id)a3
{
  sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions);
  *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions) = v4;
}

- (NSString)searchText
{
  if (*(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText + 8))
  {
    v2 = *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText);
    v3 = *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText + 8);

    v4 = sub_1CFB8FA80();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchText:(id)a3
{
  if (a3)
  {
    v4 = sub_1CFB8FA90();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText);
  v7 = *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = MPSuggestionsSearchTableViewController.tableView(_:cellForRowAt:)(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  sub_1CFB729A4(v10);

  (*(v7 + 8))(v10, v6);
}

- (MPSuggestionsSearchTableViewController)initWithStyle:(int64_t)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions) = MEMORY[0x1E69E7CC0];
  v5 = (self + OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText);
  *v5 = 0;
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = MPSuggestionsSearchTableViewController;
  return [(MPSuggestionsSearchTableViewController *)&v7 initWithStyle:a3];
}

- (MPSuggestionsSearchTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1CFB8FA90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MPSuggestionsSearchTableViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end