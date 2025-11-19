@interface HKSpokenLanguagesViewController
+ (id)defaultCheckmarkImage;
- (HKSpokenLanguagesViewController)initWithCurrentLanguage:(id)a3 preferredLanguages:(id)a4 andAllSpokenLanguages:(id)a5;
- (HKSpokenLanguagesViewControllerDelegate)pickerDelegate;
- (id)snapshotForCurrentState;
- (id)snapshotForSearchResults:(id)a3;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)cancelAction;
- (void)configureCancelButton;
- (void)configureDataSource;
- (void)configureSearchController;
- (void)doneAction;
- (void)handleSearchSelection;
- (void)setConfirmButtonEnabledIfNeeded;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKSpokenLanguagesViewController

- (HKSpokenLanguagesViewController)initWithCurrentLanguage:(id)a3 preferredLanguages:(id)a4 andAllSpokenLanguages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HKSpokenLanguagesViewController;
  v12 = [(HKSpokenLanguagesViewController *)&v17 initWithStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mostLikelyLanguages, a4);
    objc_storeStrong(&v13->_allSpokenLanguages, a5);
    objc_storeStrong(&v13->_currentLanguage, a3);
    v14 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    searchController = v13->_searchController;
    v13->_searchController = v14;
  }

  return v13;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKSpokenLanguagesViewController;
  [(HKSpokenLanguagesViewController *)&v3 viewDidLoad];
  [(HKSpokenLanguagesViewController *)self configureCancelButton];
  [(HKSpokenLanguagesViewController *)self configureSearchController];
  [(HKSpokenLanguagesViewController *)self configureDataSource];
}

- (void)configureCancelButton
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction];
  v3 = [(HKSpokenLanguagesViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:v4];
}

- (void)setConfirmButtonEnabledIfNeeded
{
  v3 = [(HKSpokenLanguagesViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"confirm" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v9 = [v5 initWithTitle:v7 style:2 target:self action:sel_doneAction];

    v8 = [(HKSpokenLanguagesViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v9 animated:1];
  }
}

- (void)configureSearchController
{
  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  [(UISearchController *)self->_searchController setAutomaticallyShowsCancelButton:1];
  v3 = [(UISearchController *)self->_searchController searchBar];
  [v3 sizeToFit];

  [(HKSpokenLanguagesViewController *)self setDefinesPresentationContext:1];
  searchController = self->_searchController;
  v5 = [(HKSpokenLanguagesViewController *)self navigationItem];
  [v5 setSearchController:searchController];

  v6 = [(HKSpokenLanguagesViewController *)self navigationItem];
  [v6 setHidesSearchBarWhenScrolling:0];
}

+ (id)defaultCheckmarkImage
{
  v2 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithFont:v4 scale:2];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v5];

  return v6;
}

- (void)configureDataSource
{
  v3 = [HKSpokenLanguageDiffableDataSource alloc];
  v4 = [(HKSpokenLanguagesViewController *)self tableView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKSpokenLanguagesViewController_configureDataSource__block_invoke;
  v9[3] = &unk_1E81B9220;
  v9[4] = self;
  v5 = [(UITableViewDiffableDataSource *)v3 initWithTableView:v4 cellProvider:v9];
  [(HKSpokenLanguagesViewController *)self setDataSource:v5];

  v6 = [(HKSpokenLanguagesViewController *)self dataSource];
  [v6 setDefaultRowAnimation:0];

  v7 = [(HKSpokenLanguagesViewController *)self snapshotForCurrentState];
  v8 = [(HKSpokenLanguagesViewController *)self dataSource];
  [v8 applySnapshot:v7 animatingDifferences:0];
}

id __54__HKSpokenLanguagesViewController_configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = MEMORY[0x1E69DD028];
  v10 = a4;
  v11 = [[v9 alloc] initWithStyle:3 reuseIdentifier:@"languageCell"];
  v12 = [v10 languageInLanguageLocale];
  v13 = [v11 textLabel];
  [v13 setText:v12];

  v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v15 = [objc_opt_class() defaultCheckmarkImage];
  v16 = [v14 initWithImage:v15];

  [v16 sizeToFit];
  v17 = [v16 image];
  [v17 size];
  v19 = v18;
  v20 = [v16 image];
  [v20 size];
  [v16 setFrame:{0.0, 0.0, v19, v21}];

  [v16 setHidden:1];
  [v11 setAccessoryView:v16];
  v22 = [v10 languageInCurrentLocale];
  v23 = [v11 detailTextLabel];
  [v23 setText:v22];

  [v11 setSelectionStyle:0];
  v24 = [v10 identifier];

  v25 = [*(*(a1 + 32) + 1064) identifier];

  if (v24 == v25)
  {
    [v11 setSelected:1];
    v26 = [v11 accessoryView];
    [v26 setHidden:0];

    [v7 selectRowAtIndexPath:v8 animated:0 scrollPosition:0];
  }

  return v11;
}

- (id)snapshotForCurrentState
{
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v3 appendSectionsWithIdentifiers:&unk_1F4381408];
  [v3 appendItemsWithIdentifiers:self->_mostLikelyLanguages intoSectionWithIdentifier:&unk_1F4383DD8];
  [v3 appendItemsWithIdentifiers:self->_allSpokenLanguages intoSectionWithIdentifier:&unk_1F4383DF0];

  return v3;
}

- (id)snapshotForSearchResults:(id)a3
{
  v3 = MEMORY[0x1E69955A0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 appendSectionsWithIdentifiers:&unk_1F4381420];
  [v5 appendItemsWithIdentifiers:v4 intoSectionWithIdentifier:&unk_1F4383E08];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12 = [a3 cellForRowAtIndexPath:v6];
  v7 = [v12 accessoryView];
  [v7 setHidden:0];

  v8 = [(HKSpokenLanguagesViewController *)self dataSource];
  v9 = [v8 itemIdentifierForIndexPath:v6];

  currentLanguage = self->_currentLanguage;
  self->_currentLanguage = v9;

  if ([(UISearchController *)self->_searchController isActive])
  {
    [(HKSpokenLanguagesViewController *)self handleSearchSelection];
  }

  [(HKSpokenLanguagesViewController *)self setConfirmButtonEnabledIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);
  [WeakRetained didSelectCellWithLanguage:self->_currentLanguage];
}

- (void)handleSearchSelection
{
  v3 = [(UISearchController *)self->_searchController searchBar];
  [v3 setText:0];

  [(UISearchController *)self->_searchController dismissViewControllerAnimated:1 completion:0];
  v12 = [(HKSpokenLanguagesViewController *)self snapshotForCurrentState];
  v4 = [(HKSpokenLanguagesViewController *)self dataSource];
  [v4 applySnapshot:v12 animatingDifferences:1];

  v5 = [HKSpokenLanguage alloc];
  v6 = [(HKSpokenLanguage *)self->_currentLanguage identifier];
  v7 = [(HKSpokenLanguage *)v5 initWithLanguageIdentifier:v6 forCategory:1];

  v8 = [(HKSpokenLanguagesViewController *)self dataSource];
  v9 = [v8 indexPathForItemIdentifier:v7];

  if (!v9)
  {
    [(HKSpokenLanguage *)v7 setLanguageCategoryType:2];
    v10 = [(HKSpokenLanguagesViewController *)self dataSource];
    v9 = [v10 indexPathForItemIdentifier:v7];
  }

  v11 = [(HKSpokenLanguagesViewController *)self tableView];
  [v11 selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSpokenLanguagesViewController *)self tableView];
  v9 = [v7 indexPathForSelectedRow];

  v10 = [v8 cellForRowAtIndexPath:v9];

  v11 = [v10 accessoryView];
  [v11 setHidden:1];

  return v6;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v5 = MEMORY[0x1E69DC888];
  v6 = a4;
  v7 = [v5 labelColor];
  v8 = [v6 textLabel];
  [v8 setTextColor:v7];

  v9 = MEMORY[0x1E69DB878];
  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:32770 options:0];
  v11 = [v9 fontWithDescriptor:v10 size:0.0];
  v12 = [v6 textLabel];
  [v12 setFont:v11];

  [v6 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v6 textLabel];

  [v21 setFrame:{v14, v16, v18, v20}];
}

- (void)doneAction
{
  v3 = [(HKSpokenLanguagesViewController *)self pickerDelegate];
  [v3 didSelectCellWithLanguage:self->_currentLanguage];

  [(HKSpokenLanguagesViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelAction
{
  v3 = [(HKSpokenLanguagesViewController *)self pickerDelegate];
  [v3 didCancelLanguageSelection];

  [(HKSpokenLanguagesViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 searchBar];
  v6 = [v5 text];
  v7 = [v6 length];

  if (v7)
  {
    v27 = [(NSArray *)self->_allSpokenLanguages mutableCopy];
    v8 = [v4 searchBar];
    v9 = [v8 text];
    v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];
    v12 = [v11 componentsSeparatedByString:@" "];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K contains[cd] %@", @"languageInCurrentLocale", v18];
          v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K contains[cd] %@", @"languageInLanguageLocale", v18];
          v33[0] = v19;
          v33[1] = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
          [v13 addObjectsFromArray:v21];
        }

        v15 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }

    v22 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:2 subpredicates:v13];
    [v27 filterUsingPredicate:v22];
    v23 = [(HKSpokenLanguagesViewController *)self snapshotForSearchResults:v27];
    v24 = [(HKSpokenLanguagesViewController *)self dataSource];
    [v24 applySnapshot:v23 animatingDifferences:1];
  }

  else
  {
    v25 = [(HKSpokenLanguagesViewController *)self snapshotForCurrentState];
    v26 = [(HKSpokenLanguagesViewController *)self dataSource];
    [v26 applySnapshot:v25 animatingDifferences:1];
  }
}

- (HKSpokenLanguagesViewControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

@end