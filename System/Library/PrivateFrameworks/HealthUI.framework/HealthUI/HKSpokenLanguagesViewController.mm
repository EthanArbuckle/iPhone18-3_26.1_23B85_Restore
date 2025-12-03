@interface HKSpokenLanguagesViewController
+ (id)defaultCheckmarkImage;
- (HKSpokenLanguagesViewController)initWithCurrentLanguage:(id)language preferredLanguages:(id)languages andAllSpokenLanguages:(id)spokenLanguages;
- (HKSpokenLanguagesViewControllerDelegate)pickerDelegate;
- (id)snapshotForCurrentState;
- (id)snapshotForSearchResults:(id)results;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)cancelAction;
- (void)configureCancelButton;
- (void)configureDataSource;
- (void)configureSearchController;
- (void)doneAction;
- (void)handleSearchSelection;
- (void)setConfirmButtonEnabledIfNeeded;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation HKSpokenLanguagesViewController

- (HKSpokenLanguagesViewController)initWithCurrentLanguage:(id)language preferredLanguages:(id)languages andAllSpokenLanguages:(id)spokenLanguages
{
  languageCopy = language;
  languagesCopy = languages;
  spokenLanguagesCopy = spokenLanguages;
  v17.receiver = self;
  v17.super_class = HKSpokenLanguagesViewController;
  v12 = [(HKSpokenLanguagesViewController *)&v17 initWithStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mostLikelyLanguages, languages);
    objc_storeStrong(&v13->_allSpokenLanguages, spokenLanguages);
    objc_storeStrong(&v13->_currentLanguage, language);
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
  navigationItem = [(HKSpokenLanguagesViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];
}

- (void)setConfirmButtonEnabledIfNeeded
{
  navigationItem = [(HKSpokenLanguagesViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (!rightBarButtonItem)
  {
    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"confirm" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v9 = [v5 initWithTitle:v7 style:2 target:self action:sel_doneAction];

    navigationItem2 = [(HKSpokenLanguagesViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v9 animated:1];
  }
}

- (void)configureSearchController
{
  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  [(UISearchController *)self->_searchController setAutomaticallyShowsCancelButton:1];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar sizeToFit];

  [(HKSpokenLanguagesViewController *)self setDefinesPresentationContext:1];
  searchController = self->_searchController;
  navigationItem = [(HKSpokenLanguagesViewController *)self navigationItem];
  [navigationItem setSearchController:searchController];

  navigationItem2 = [(HKSpokenLanguagesViewController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];
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
  tableView = [(HKSpokenLanguagesViewController *)self tableView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKSpokenLanguagesViewController_configureDataSource__block_invoke;
  v9[3] = &unk_1E81B9220;
  v9[4] = self;
  v5 = [(UITableViewDiffableDataSource *)v3 initWithTableView:tableView cellProvider:v9];
  [(HKSpokenLanguagesViewController *)self setDataSource:v5];

  dataSource = [(HKSpokenLanguagesViewController *)self dataSource];
  [dataSource setDefaultRowAnimation:0];

  snapshotForCurrentState = [(HKSpokenLanguagesViewController *)self snapshotForCurrentState];
  dataSource2 = [(HKSpokenLanguagesViewController *)self dataSource];
  [dataSource2 applySnapshot:snapshotForCurrentState animatingDifferences:0];
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

- (id)snapshotForSearchResults:(id)results
{
  v3 = MEMORY[0x1E69955A0];
  resultsCopy = results;
  v5 = objc_alloc_init(v3);
  [v5 appendSectionsWithIdentifiers:&unk_1F4381420];
  [v5 appendItemsWithIdentifiers:resultsCopy intoSectionWithIdentifier:&unk_1F4383E08];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12 = [view cellForRowAtIndexPath:pathCopy];
  accessoryView = [v12 accessoryView];
  [accessoryView setHidden:0];

  dataSource = [(HKSpokenLanguagesViewController *)self dataSource];
  v9 = [dataSource itemIdentifierForIndexPath:pathCopy];

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
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setText:0];

  [(UISearchController *)self->_searchController dismissViewControllerAnimated:1 completion:0];
  snapshotForCurrentState = [(HKSpokenLanguagesViewController *)self snapshotForCurrentState];
  dataSource = [(HKSpokenLanguagesViewController *)self dataSource];
  [dataSource applySnapshot:snapshotForCurrentState animatingDifferences:1];

  v5 = [HKSpokenLanguage alloc];
  identifier = [(HKSpokenLanguage *)self->_currentLanguage identifier];
  v7 = [(HKSpokenLanguage *)v5 initWithLanguageIdentifier:identifier forCategory:1];

  dataSource2 = [(HKSpokenLanguagesViewController *)self dataSource];
  v9 = [dataSource2 indexPathForItemIdentifier:v7];

  if (!v9)
  {
    [(HKSpokenLanguage *)v7 setLanguageCategoryType:2];
    dataSource3 = [(HKSpokenLanguagesViewController *)self dataSource];
    v9 = [dataSource3 indexPathForItemIdentifier:v7];
  }

  tableView = [(HKSpokenLanguagesViewController *)self tableView];
  [tableView selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tableView = [(HKSpokenLanguagesViewController *)self tableView];
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];

  v10 = [tableView cellForRowAtIndexPath:indexPathForSelectedRow];

  accessoryView = [v10 accessoryView];
  [accessoryView setHidden:1];

  return pathCopy;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  v5 = MEMORY[0x1E69DC888];
  headerViewCopy = headerView;
  labelColor = [v5 labelColor];
  textLabel = [headerViewCopy textLabel];
  [textLabel setTextColor:labelColor];

  v9 = MEMORY[0x1E69DB878];
  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:32770 options:0];
  v11 = [v9 fontWithDescriptor:v10 size:0.0];
  textLabel2 = [headerViewCopy textLabel];
  [textLabel2 setFont:v11];

  [headerViewCopy frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  textLabel3 = [headerViewCopy textLabel];

  [textLabel3 setFrame:{v14, v16, v18, v20}];
}

- (void)doneAction
{
  pickerDelegate = [(HKSpokenLanguagesViewController *)self pickerDelegate];
  [pickerDelegate didSelectCellWithLanguage:self->_currentLanguage];

  [(HKSpokenLanguagesViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelAction
{
  pickerDelegate = [(HKSpokenLanguagesViewController *)self pickerDelegate];
  [pickerDelegate didCancelLanguageSelection];

  [(HKSpokenLanguagesViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v35 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  searchBar = [controllerCopy searchBar];
  text = [searchBar text];
  v7 = [text length];

  if (v7)
  {
    v27 = [(NSArray *)self->_allSpokenLanguages mutableCopy];
    searchBar2 = [controllerCopy searchBar];
    text2 = [searchBar2 text];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = [text2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
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
    dataSource = [(HKSpokenLanguagesViewController *)self dataSource];
    [dataSource applySnapshot:v23 animatingDifferences:1];
  }

  else
  {
    snapshotForCurrentState = [(HKSpokenLanguagesViewController *)self snapshotForCurrentState];
    dataSource2 = [(HKSpokenLanguagesViewController *)self dataSource];
    [dataSource2 applySnapshot:snapshotForCurrentState animatingDifferences:1];
  }
}

- (HKSpokenLanguagesViewControllerDelegate)pickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerDelegate);

  return WeakRetained;
}

@end