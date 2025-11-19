@interface HLPHelpTableOfContentViewController
- (HLPHelpSearchIndexController)helpSearchIndexController;
- (HLPHelpTableOfContentViewController)initWithStyle:(int64_t)a3;
- (HLPHelpTableOfContentViewControllerDelegate)delegate;
- (UISearchController)searchController;
- (UIView)tableFooterView;
- (UIVisualEffectView)searchBlurEffectView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfVisibleHelpItemForSectionItem:(id)a3;
- (void)appendChildrenForSectionItem:(id)a3;
- (void)cancelSpotlightSearchDelay;
- (void)closeSectionItem:(id)a3;
- (void)copyrightButtonTapped;
- (void)dealloc;
- (void)deselectCurrentRow;
- (void)didDismissSearchController:(id)a3;
- (void)loadError;
- (void)logAnalyticsContentViewedWithHelpTopicItem:(id)a3 sourceType:(id)a4;
- (void)registerTraitChanges;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)showHelpBookInfo;
- (void)showTopicItem:(id)a3 fromTableView:(id)a4;
- (void)spotlightSearchDelay;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFooterViewBackgroundColor;
- (void)updateFooterViewLayout;
- (void)updateSearchBarBlur;
- (void)updateSearchBarLayout;
- (void)updateSearchResultViewSeparatorValue;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateWithHelpBookController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation HLPHelpTableOfContentViewController

- (HLPHelpTableOfContentViewController)initWithStyle:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HLPHelpTableOfContentViewController;
  v3 = [(HLPHelpTableOfContentViewController *)&v10 initWithStyle:a3];
  if (v3)
  {
    v4 = MEMORY[0x277CBEBF8];
    v5 = [MEMORY[0x277CBEBF8] mutableCopy];
    displayHelpItems = v3->_displayHelpItems;
    v3->_displayHelpItems = v5;

    v7 = [v4 mutableCopy];
    openSections = v3->_openSections;
    v3->_openSections = v7;

    v3->_fullBookView = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(HLPHelpTableOfContentViewController *)self cancelSpotlightSearchDelay];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = HLPHelpTableOfContentViewController;
  [(HLPHelpTableOfContentViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = HLPHelpTableOfContentViewController;
  [(HLPHelpTableOfContentViewController *)&v13 viewDidLoad];
  v3 = [(HLPHelpTableOfContentViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"kTOCTableViewCellIdentifier"];
  [v3 setRowHeight:*MEMORY[0x277D76F30]];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  tableBackgroundView = self->_tableBackgroundView;
  self->_tableBackgroundView = v4;

  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  if (+[HLPCommonDefines isVisionOS])
  {
    v7 = [MEMORY[0x277D75348] clearColor];

    [v3 setBackgroundColor:v7];
    v8 = 60.0;
    v6 = v7;
  }

  else
  {
    v8 = 52.0;
  }

  [v3 setEstimatedRowHeight:v8];
  [(UIView *)self->_tableBackgroundView setBackgroundColor:v6];
  [v3 setBackgroundView:0];
  [v3 setBackgroundView:self->_tableBackgroundView];
  v9 = [(HLPHelpTableOfContentViewController *)self tableFooterView];
  [v3 setTableFooterView:v9];

  v10 = [MEMORY[0x277D75348] systemBackgroundColor];
  v11 = [v3 tableFooterView];
  [v11 setBackgroundColor:v10];

  [(HLPHelpTableOfContentViewController *)self updateFooterViewBackgroundColor];
  if (self->_fullBookView)
  {
    [v3 setBackgroundView:0];
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  [(HLPHelpTableOfContentViewController *)self registerTraitChanges];
}

- (UIVisualEffectView)searchBlurEffectView
{
  searchBlurEffectView = self->_searchBlurEffectView;
  if (!searchBlurEffectView)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:8];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    v6 = self->_searchBlurEffectView;
    self->_searchBlurEffectView = v5;

    [(UIVisualEffectView *)self->_searchBlurEffectView setAlpha:0.95];
    searchBlurEffectView = self->_searchBlurEffectView;
  }

  return searchBlurEffectView;
}

- (UISearchController)searchController
{
  if (!self->_searchController)
  {
    v3 = [[HLPHelpSearchResultTableViewController alloc] initWithStyle:0];
    searchResultTableViewController = self->_searchResultTableViewController;
    self->_searchResultTableViewController = v3;

    v5 = [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController tableView];
    [v5 setDelegate:self];

    [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController setFullBookView:self->_fullBookView];
    v6 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:self->_searchResultTableViewController];
    searchController = self->_searchController;
    self->_searchController = v6;

    [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
    [(UISearchController *)self->_searchController setDelegate:self];
    v8 = [(UISearchController *)self->_searchController searchBar];
    [v8 setAutocapitalizationType:0];

    v9 = [(UISearchController *)self->_searchController searchBar];
    [v9 setAutocorrectionType:1];

    if (self->_fullBookView)
    {
      if (!+[HLPCommonDefines isVisionOS])
      {
        [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
      }

      [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
      [(HLPHelpTableOfContentViewController *)self setDefinesPresentationContext:1];
    }
  }

  v10 = self->_searchController;

  return v10;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HLPHelpTableOfContentViewController;
  [(HLPHelpTableOfContentViewController *)&v3 viewDidLayoutSubviews];
  [(HLPHelpTableOfContentViewController *)self updateFooterViewLayout];
  [(HLPHelpTableOfContentViewController *)self updateSearchBarLayout];
  [(HLPHelpTableOfContentViewController *)self updateSearchResultViewSeparatorValue];
}

- (HLPHelpSearchIndexController)helpSearchIndexController
{
  helpSearchIndexController = self->_helpSearchIndexController;
  if (!helpSearchIndexController)
  {
    v4 = [(HLPHelpBookController *)self->_helpBookController serverType];
    helpBookController = self->_helpBookController;
    if (v4 == 1)
    {
      v6 = [(HLPHelpBookController *)helpBookController remoteCSSearchIndex];

      if (v6)
      {
        v7 = MEMORY[0x277CBEBC0];
        v8 = [(HLPHelpBookController *)self->_helpBookController remoteCSSearchIndex];
        v9 = [v7 URLWithString:v8];
        v10 = 1;
LABEL_9:

LABEL_10:
        v15 = [(HLPRemoteDataController *)[HLPHelpSearchIndexController alloc] initWithURL:v9];
        v16 = self->_helpSearchIndexController;
        self->_helpSearchIndexController = v15;

        [(HLPHelpSearchIndexController *)self->_helpSearchIndexController setHelpBookController:self->_helpBookController];
        [(HLPHelpSearchIndexController *)self->_helpSearchIndexController setUseCSSearch:v10];

        helpSearchIndexController = self->_helpSearchIndexController;
        goto LABEL_11;
      }

      v9 = [(HLPHelpBookController *)self->_helpBookController remoteSearchPath];

      if (!v9)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v18 = MEMORY[0x277CBEBC0];
      v8 = [(HLPHelpBookController *)self->_helpBookController remoteSearchPath];
      v9 = [v18 URLWithString:v8];
    }

    else
    {
      v11 = [(HLPHelpBookController *)helpBookController isSemanticHTML];
      v12 = @"search.json";
      if (v11)
      {
        v12 = @"searchTree.json";
      }

      v13 = self->_helpBookController;
      v14 = v12;
      v8 = [(HLPHelpBookController *)v13 helpBookURL];
      v9 = [v8 URLByAppendingPathComponent:v14];
    }

    v10 = 0;
    goto LABEL_9;
  }

LABEL_11:

  return helpSearchIndexController;
}

- (UIView)tableFooterView
{
  tableFooterView = self->_tableFooterView;
  if (!tableFooterView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 100.0}];
    v5 = self->_tableFooterView;
    self->_tableFooterView = v4;

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    tableFooterSeparatorView = self->_tableFooterSeparatorView;
    self->_tableFooterSeparatorView = v6;

    [(UIView *)self->_tableFooterSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_tableFooterView addSubview:self->_tableFooterSeparatorView];
    v8 = [(UIView *)self->_tableFooterSeparatorView leadingAnchor];
    v9 = [(UIView *)self->_tableFooterView leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(UIView *)self->_tableFooterSeparatorView trailingAnchor];
    v12 = [(UIView *)self->_tableFooterView trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(UIView *)self->_tableFooterSeparatorView heightAnchor];
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    v17 = [v14 constraintEqualToConstant:1.0 / v16];
    [v17 setActive:1];

    v18 = objc_alloc(MEMORY[0x277D756B8]);
    v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    copyrightFooterLabel = self->_copyrightFooterLabel;
    self->_copyrightFooterLabel = v19;

    [(UILabel *)self->_copyrightFooterLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_copyrightFooterLabel setTextAlignment:1];
    [(UILabel *)self->_copyrightFooterLabel setLineBreakMode:0];
    [(UILabel *)self->_copyrightFooterLabel setNumberOfLines:0];
    [(UIView *)self->_tableFooterView addSubview:self->_copyrightFooterLabel];
    v21 = [(UILabel *)self->_copyrightFooterLabel leadingAnchor];
    v22 = [(UIView *)self->_tableFooterView leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];

    LODWORD(v24) = 1147207680;
    [v23 setPriority:v24];
    [v23 setActive:1];
    v25 = [(UILabel *)self->_copyrightFooterLabel trailingAnchor];
    v26 = [(UIView *)self->_tableFooterView trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-10.0];

    LODWORD(v28) = 1147207680;
    [v27 setPriority:v28];
    [v27 setActive:1];
    if (+[HLPCommonDefines isVisionOS])
    {
      v29 = 20.0;
    }

    else
    {
      v29 = 40.0;
    }

    v30 = [(UILabel *)self->_copyrightFooterLabel topAnchor];
    v31 = [(UIView *)self->_tableFooterView topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:v29];
    copyrightFooterLabelTopConstraint = self->_copyrightFooterLabelTopConstraint;
    self->_copyrightFooterLabelTopConstraint = v32;

    [(NSLayoutConstraint *)self->_copyrightFooterLabelTopConstraint setActive:1];
    v34 = [(UILabel *)self->_copyrightFooterLabel heightAnchor];
    v35 = [v34 constraintGreaterThanOrEqualToConstant:0.0];
    copyrightFooterLabelHeightConstraint = self->_copyrightFooterLabelHeightConstraint;
    self->_copyrightFooterLabelHeightConstraint = v35;

    [(NSLayoutConstraint *)self->_copyrightFooterLabelHeightConstraint setActive:1];
    v37 = [MEMORY[0x277D75220] buttonWithType:0];
    footerViewOverlayButton = self->_footerViewOverlayButton;
    self->_footerViewOverlayButton = v37;

    [(UIButton *)self->_footerViewOverlayButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_footerViewOverlayButton addTarget:self action:sel_copyrightButtonTapped forControlEvents:64];
    [(UIView *)self->_tableFooterView addSubview:self->_footerViewOverlayButton];
    v39 = [(UIButton *)self->_footerViewOverlayButton leadingAnchor];
    v40 = [(UIView *)self->_tableFooterView leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v41 setActive:1];

    v42 = [(UIButton *)self->_footerViewOverlayButton trailingAnchor];
    v43 = [(UIView *)self->_tableFooterView trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v44 setActive:1];

    v45 = [(UIButton *)self->_footerViewOverlayButton topAnchor];
    v46 = [(UIView *)self->_tableFooterView topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    [v47 setActive:1];

    v48 = [(UIButton *)self->_footerViewOverlayButton bottomAnchor];
    v49 = [(UIView *)self->_tableFooterView bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    [v50 setActive:1];

    v51 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_showHelpBookInfo];
    [v51 setNumberOfTouchesRequired:1];
    [v51 setMinimumPressDuration:5.0];
    [v51 setAllowableMovement:50.0];
    [(UIButton *)self->_footerViewOverlayButton addGestureRecognizer:v51];

    tableFooterView = self->_tableFooterView;
  }

  return tableFooterView;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if ([(UISearchController *)self->_searchController isActive])
  {
    v4 = [(UISearchController *)self->_searchController searchBar];
    v5 = [v4 isFirstResponder];

    if (v5)
    {
      v6 = [(UISearchController *)self->_searchController searchBar];
      [v6 resignFirstResponder];
    }
  }
}

- (void)deselectCurrentRow
{
  v5 = [(HLPHelpTableOfContentViewController *)self tableView];
  v3 = [(HLPHelpTableOfContentViewController *)self tableView];
  v4 = [v3 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v4 animated:1];
}

- (void)updateFooterViewBackgroundColor
{
  if (+[HLPCommonDefines isVisionOS])
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    v3 = [(HLPHelpTableOfContentViewController *)self traitCollection];
    v4 = [v3 userInterfaceStyle] == 1;

    [MEMORY[0x277D75348] colorWithWhite:dbl_2522E91C0[v4] alpha:1.0];
  }
  v5 = ;
  [(UIView *)self->_tableFooterSeparatorView setBackgroundColor:v5];
}

- (void)registerTraitChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HLPHelpTableOfContentViewController_registerTraitChanges__block_invoke;
  v6[3] = &unk_2797069B8;
  v6[4] = self;
  v4 = [(HLPHelpTableOfContentViewController *)self registerForTraitChanges:v3 withHandler:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __92__HLPHelpTableOfContentViewController_scrollToHelpItem_deselectImmediately_reload_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayHelpItems];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) tableView];
    v5 = [v4 indexPathForSelectedRow];

    v6 = [v5 row];
    if (v6 != v3)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:v3 inSection:0];
      if ([*(a1 + 32) fullBookView])
      {
        v7 = 2;
      }

      else
      {
        v8 = [*(a1 + 32) tableView];
        v9 = [v8 indexPathsForVisibleRows];
        v10 = [v9 containsObject:v12];

        if (v10)
        {
          v7 = 0;
        }

        else
        {
          v7 = 2;
        }
      }

      v11 = [*(a1 + 32) tableView];
      [v11 selectRowAtIndexPath:v12 animated:*(a1 + 48) scrollPosition:v7];

      if (*(a1 + 49) == 1)
      {
        [*(a1 + 32) performSelector:sel_deselectCurrentRow withObject:0 afterDelay:0.0];
      }
    }
  }
}

- (void)showHelpBookInfo
{
  v3 = [(HLPHelpTableOfContentViewController *)self delegate];
  [v3 tableOfContentViewControllerShowHelpBookInfo:self];
}

- (void)copyrightButtonTapped
{
  helpBookController = self->_helpBookController;
  v4 = [(HLPHelpBookController *)helpBookController copyrightTopicIdentifier];
  v6 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:v4];

  if (v6)
  {
    v5 = [(HLPHelpTableOfContentViewController *)self tableView];
    [(HLPHelpTableOfContentViewController *)self showTopicItem:v6 fromTableView:v5];
  }
}

- (void)updateFooterViewLayout
{
  v36[1] = *MEMORY[0x277D85DE8];
  if ((+[HLPCommonDefines isVisionOS]|| !self->_fullBookView) && ([(UILabel *)self->_copyrightFooterLabel isHidden]& 1) == 0)
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)self->_copyrightFooterLabel setFont:v3];

    v4 = [(HLPHelpTableOfContentViewController *)self tableView];
    [v4 bounds];
    v5 = CGRectGetWidth(v37) + -16.0;

    v6 = [(UILabel *)self->_copyrightFooterLabel text];
    v35 = *MEMORY[0x277D740A8];
    v7 = [(UILabel *)self->_copyrightFooterLabel font];
    v36[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [v6 boundingRectWithSize:1 options:v8 attributes:0 context:{v5, 1.79769313e308}];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v38.origin.x = v10;
    v38.origin.y = v12;
    v38.size.width = v14;
    v38.size.height = v16;
    [(NSLayoutConstraint *)self->_copyrightFooterLabelHeightConstraint setConstant:ceil(CGRectGetHeight(v38))];
    [(UIView *)self->_tableFooterView frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(NSLayoutConstraint *)self->_copyrightFooterLabelTopConstraint constant];
    v24 = v23;
    [(NSLayoutConstraint *)self->_copyrightFooterLabelHeightConstraint constant];
    v26 = v24 + v25 + 20.0;
    v39.origin.x = v18;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v26;
    Height = CGRectGetHeight(v39);
    v28 = [(HLPHelpTableOfContentViewController *)self tableView];
    v29 = [v28 tableFooterView];
    [v29 frame];
    v30 = CGRectGetHeight(v40);

    if (Height != v30)
    {
      [(UIView *)self->_tableFooterView setFrame:v18, v20, v22, v26];
      v31 = [(HLPHelpTableOfContentViewController *)self tableView];
      [v31 setTableFooterView:0];

      tableFooterView = self->_tableFooterView;
      v33 = [(HLPHelpTableOfContentViewController *)self tableView];
      [v33 setTableFooterView:tableFooterView];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)updateSearchBarBlur
{
  if (+[HLPCommonDefines isVisionOS])
  {
    v3 = [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController searchResults];

    if (v3)
    {
      v4 = [(UISearchController *)self->_searchController view];
      [v4 frame];
      [(UIVisualEffectView *)self->_searchBlurEffectView setFrame:?];

      v6 = [(UISearchController *)self->_searchController searchBar];
      v5 = [(HLPHelpTableOfContentViewController *)self searchBlurEffectView];
      [v6 insertSubview:v5 atIndex:0];
    }

    else
    {
      v6 = [(HLPHelpTableOfContentViewController *)self searchBlurEffectView];
      [v6 removeFromSuperview];
    }
  }
}

- (void)updateSearchBarLayout
{
  if (+[HLPCommonDefines isVisionOS])
  {
    v3 = [(UISearchController *)self->_searchController searchBar];
    [v3 setSearchBarStyle:2];
  }
}

- (void)updateWithHelpBookController:(id)a3
{
  v5 = a3;
  if (self->_helpBookController != v5)
  {
    v31 = v5;
    objc_storeStrong(&self->_helpBookController, a3);
    [(NSMutableArray *)self->_displayHelpItems removeAllObjects];
    v6 = [(HLPHelpBookController *)v31 rootSectionItem];
    [(HLPHelpTableOfContentViewController *)self appendChildrenForSectionItem:v6];

    v7 = [(HLPHelpBookController *)v31 copyrightTopicIdentifier];
    v8 = [(HLPHelpBookController *)v31 helpTopicItemForID:v7];

    v9 = [(HLPHelpBookController *)v31 copyrightText];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v8 name];
    }

    v12 = v11;

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &stru_2864756F0;
    }

    [(UILabel *)self->_copyrightFooterLabel setText:v13];
    [(UILabel *)self->_copyrightFooterLabel setHidden:[(__CFString *)v12 length]== 0];
    v14 = [v8 hrefID];
    v15 = [v14 length];

    if (v15)
    {
      [MEMORY[0x277D75348] linkColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v16 = ;
    [(UILabel *)self->_copyrightFooterLabel setEnabled:v15 != 0];
    [(UILabel *)self->_copyrightFooterLabel setTextColor:v16];
    v17 = [(HLPHelpBookController *)v31 helpItemMap];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [(HLPHelpTableOfContentViewController *)self helpSearchIndexController];
      v18 = [v19 URL];
      v20 = [v18 lastPathComponent];
      v21 = [v20 isEqualToString:@"search.cshelpindex"];

      v22 = [(HLPHelpTableOfContentViewController *)self helpSearchIndexController];
      v23 = v22;
      if (v21)
      {
        v24 = @"search.cshelpindex";
        v25 = &__block_literal_global;
        v26 = 2;
      }

      else
      {
        v24 = @"searchTree.json";
        v25 = &__block_literal_global_54;
        v26 = 1;
      }

      [v22 fetchDataWithDataType:v26 identifier:v24 completionHandler:v25];
    }

    if (self->_fullBookView)
    {
      v27 = [(NSMutableArray *)self->_displayHelpItems count];
      if (v27)
      {
        v18 = [(HLPHelpTableOfContentViewController *)self searchController];
        v28 = [v18 searchBar];
      }

      else
      {
        v28 = 0;
      }

      v29 = [(HLPHelpTableOfContentViewController *)self tableView];
      [v29 setTableHeaderView:v28];

      if (v27)
      {
      }
    }

    [(UIButton *)self->_footerViewOverlayButton setHidden:[(NSMutableArray *)self->_displayHelpItems count]== 0];
    v30 = [(HLPHelpTableOfContentViewController *)self tableView];
    [v30 reloadData];

    v5 = v31;
  }
}

- (void)loadError
{
  v3 = [(NSMutableArray *)self->_displayHelpItems count]== 0;
  footerViewOverlayButton = self->_footerViewOverlayButton;

  [(UIButton *)footerViewOverlayButton setHidden:v3];
}

- (void)appendChildrenForSectionItem:(id)a3
{
  v4 = [a3 children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HLPHelpTableOfContentViewController_appendChildrenForSectionItem___block_invoke;
  v5[3] = &unk_279706A28;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __68__HLPHelpTableOfContentViewController_appendChildrenForSectionItem___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) displayHelpItems];
  [v3 addObject:v6];

  v4 = [*(a1 + 32) openSections];
  v5 = [v4 containsObject:v6];

  if (v5)
  {
    [*(a1 + 32) appendChildrenForSectionItem:v6];
  }
}

void __95__HLPHelpTableOfContentViewController_updateCellSelectionWithScrollPosition_helpItem_animated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*(a1 + 32) || (v3 = [v5 row], v3 != objc_msgSend(*(a1 + 32), "row")))
  {
    v4 = [*(a1 + 40) tableView];
    [v4 deselectRowAtIndexPath:v5 animated:*(a1 + 48)];
  }
}

- (void)showTopicItem:(id)a3 fromTableView:(id)a4
{
  v6 = a3;
  v5 = [(HLPHelpTableOfContentViewController *)self delegate];
  [v5 tableOfContentViewController:self showHelpTopicItem:v6];

  [(HLPHelpTableOfContentViewController *)self updateCellSelectionWithScrollPosition:0 helpItem:v6 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"kTOCTableViewCellIdentifier" forIndexPath:v6];
  if ([(HLPHelpBookController *)self->_helpBookController fullBookView])
  {
    v8 = 0;
  }

  else
  {
    v8 = +[HLPCommonDefines isVisionOS]^ 1;
  }

  [v7 setDisplayTopicsAccessoryView:v8];
  [v7 setUpdateSeparatorInsetAutomatically:1];
  [v7 setShowFirstLevelIcon:{-[HLPHelpBookController hasSectionIcon](self->_helpBookController, "hasSectionIcon")}];
  displayHelpItems = self->_displayHelpItems;
  v10 = [v6 row];

  v11 = [(NSMutableArray *)displayHelpItems objectAtIndexedSubscript:v10];
  [v7 setHelpItem:v11];
  [v7 setClosed:{-[NSMutableArray indexOfObject:](self->_openSections, "indexOfObject:", v11) == 0x7FFFFFFFFFFFFFFFLL}];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HLPHelpTableOfContentViewController *)self tableView];
  if (v8 == v6)
  {
    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_displayHelpItems, "objectAtIndexedSubscript:", [v7 row]);
  }

  else
  {
    v9 = [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController searchResults];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      [v12 toggle];
      [v6 deselectRowAtIndexPath:v7 animated:1];
      v13 = v10;
      [v6 beginUpdates];
      if ([v12 closed])
      {
        [(HLPHelpTableOfContentViewController *)self closeSectionItem:v13];
      }

      else
      {
        v20 = [(NSMutableArray *)self->_displayHelpItems lastObject];

        if (v13 == v20)
        {
          v21 = [(HLPHelpTableOfContentViewController *)self tableView];
          v22 = [MEMORY[0x277CCAA70] indexPathForRow:-[NSMutableArray count](self->_displayHelpItems inSection:{"count") - 1, 0}];
          v29[0] = v22;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
          [v21 reloadRowsAtIndexPaths:v23 withRowAnimation:5];
        }

        [(HLPHelpTableOfContentViewController *)self openHelpItem:v13 animated:1];
      }

      [v6 endUpdates];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v11 = v10;
    v14 = [v11 hrefID];
    v15 = [v14 hasPrefix:@"http"];

    if (v15)
    {
      v16 = [MEMORY[0x277D75128] sharedApplication];
      v17 = MEMORY[0x277CBEBC0];
      v18 = [v11 hrefID];
      v19 = [v17 URLWithString:v18];
      [v16 openURL:v19 options:MEMORY[0x277CBEC10] completionHandler:0];

      [v6 deselectRowAtIndexPath:v7 animated:1];
    }

    else
    {
      [(HLPHelpTableOfContentViewController *)self showTopicItem:v11 fromTableView:v6];
    }

    v24 = [(HLPHelpTableOfContentViewController *)self tableView];
    v25 = HLPAnalyticsViewSourceTypeTOC;
    if (v24 != v6)
    {
      v25 = HLPAnalyticsViewSourceTypeSearch;
    }

    v26 = *v25;

    [(HLPHelpTableOfContentViewController *)self logAnalyticsContentViewedWithHelpTopicItem:v11 sourceType:v26];
  }

LABEL_20:
  if (self->_fullBookView)
  {
    v27 = [(UISearchController *)self->_searchController searchBar];
    [v27 resignFirstResponder];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfVisibleHelpItemForSectionItem:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [v4 children];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HLPHelpTableOfContentViewController_numberOfVisibleHelpItemForSectionItem___block_invoke;
  v8[3] = &unk_279706A78;
  v8[4] = self;
  v8[5] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __77__HLPHelpTableOfContentViewController_numberOfVisibleHelpItemForSectionItem___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) openSections];
    v4 = [v3 indexOfObject:v5];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) numberOfVisibleHelpItemForSectionItem:v5];
    }
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)closeSectionItem:(id)a3
{
  v44 = a3;
  v4 = [(NSMutableArray *)self->_displayHelpItems indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v5 = v4;
  if ([(NSMutableArray *)self->_openSections indexOfObject:v44]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v6 = [(HLPHelpTableOfContentViewController *)self tableView];
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:0];
  v8 = [v6 cellForRowAtIndexPath:v7];

  if (v8)
  {
    [v8 setClosed:1];
  }

  v9 = [(HLPHelpTableOfContentViewController *)self numberOfVisibleHelpItemForSectionItem:v44];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = v5 + 1;
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v5 + 1, v9}];
    [(NSMutableArray *)self->_displayHelpItems removeObjectsAtIndexes:v12];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v14 = v10 + v11;
    do
    {
      v15 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:0];
      [v13 addObject:v15];

      ++v11;
    }

    while (v11 < v14);
    v16 = [(HLPHelpTableOfContentViewController *)self tableView];
    [v16 estimatedRowHeight];
    v18 = v17;

    v19 = [(HLPHelpTableOfContentViewController *)self tableView];
    [v19 contentSize];
    v21 = v20;

    v22 = v21 - v18 * [v13 count];
    v23 = [(HLPHelpTableOfContentViewController *)self view];
    [v23 bounds];
    Height = CGRectGetHeight(v46);

    v25 = [(HLPHelpTableOfContentViewController *)self tableView];
    v26 = v25;
    if (v22 >= Height)
    {
      [v25 contentOffset];
      v30 = v29;

      v31 = Height + v30;
      if (Height + v30 <= v22)
      {
LABEL_13:
        v32 = [(HLPHelpTableOfContentViewController *)self tableView];
        [v32 beginUpdates];

        v33 = [(HLPHelpTableOfContentViewController *)self tableView];
        [v33 deleteRowsAtIndexPaths:v13 withRowAnimation:3];

        v34 = [(HLPHelpTableOfContentViewController *)self tableView];
        [v34 endUpdates];

        goto LABEL_14;
      }

      v26 = [(HLPHelpTableOfContentViewController *)self tableView];
      [v26 setContentOffset:1 animated:{0.0, v22 - Height}];
    }

    else
    {
      v27 = [(HLPHelpTableOfContentViewController *)self view];
      [v27 safeAreaInsets];
      [v26 setContentOffset:1 animated:{0.0, -v28}];
    }

    goto LABEL_13;
  }

LABEL_14:
  v35 = [(NSMutableArray *)self->_openSections indexOfObject:v44];
  v36 = [MEMORY[0x277CBEB38] dictionary];
  v37 = [v44 identifier];
  [v36 setObject:v44 forKeyedSubscript:v37];

  for (i = v35 + 1; i < [(NSMutableArray *)self->_openSections count]; ++i)
  {
    v39 = [(NSMutableArray *)self->_openSections objectAtIndexedSubscript:i];
    v40 = [v39 parent];
    v41 = [v40 identifier];
    v42 = [v36 objectForKeyedSubscript:v41];

    if (v42)
    {
      v43 = [v39 identifier];
      [v36 setObject:v39 forKeyedSubscript:v43];
    }
  }

  -[NSMutableArray removeObjectsInRange:](self->_openSections, "removeObjectsInRange:", v35, [v36 count]);

LABEL_20:
}

- (void)logAnalyticsContentViewedWithHelpTopicItem:(id)a3 sourceType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 name];
  v10 = [(HLPHelpTableOfContentViewController *)self traitCollection];
  v15 = +[HLPAnalyticsEventContentViewed eventWithTopicID:topicTitle:source:interfaceStyle:](HLPAnalyticsEventContentViewed, "eventWithTopicID:topicTitle:source:interfaceStyle:", v8, v9, v6, [v10 userInterfaceStyle]);

  [v15 log];
  v11 = [(HLPHelpTableOfContentViewController *)self delegate];
  v12 = [v7 identifier];
  v13 = [v7 name];

  v14 = [(HLPHelpTableOfContentViewController *)self traitCollection];
  [v11 tableOfContentViewControllerToCContentViewed:self topicID:v12 topicTitle:v13 source:v6 interfaceStyle:objc_msgSend(v14 fromTopicID:"userInterfaceStyle") externalURLString:&stru_2864756F0];
}

- (void)updateSearchResultViewSeparatorValue
{
  v3 = [(HLPHelpTableOfContentViewController *)self tableView];
  v4 = [v3 visibleCells];
  v7 = [v4 firstObject];

  searchResultTableViewController = self->_searchResultTableViewController;
  v6 = [v7 accessoryImageView];
  [v6 bounds];
  [(HLPHelpSearchResultTableViewController *)searchResultTableViewController preferSeparatorValue:CGRectGetWidth(v9) + 16.0 * 2.0];
}

- (void)willPresentSearchController:(id)a3
{
  if (+[HLPCommonDefines isVisionOS])
  {
    v4 = [(HLPHelpTableOfContentViewController *)self tableView];
    [v4 setHidden:1];
  }

  [(HLPHelpTableOfContentViewController *)self updateSearchResultViewSeparatorValue];
}

- (void)willDismissSearchController:(id)a3
{
  v10 = a3;
  if (+[HLPCommonDefines isVisionOS])
  {
    v4 = [(HLPHelpTableOfContentViewController *)self tableView];
    [v4 setHidden:0];

    v5 = [(HLPHelpTableOfContentViewController *)self searchResultTableViewController];
    v6 = [v5 tableView];
    v7 = [v6 indexPathForSelectedRow];

    if (v7)
    {
      v8 = [v10 searchBar];
      [v8 setAlpha:0.0];
    }
  }

  searchTerms = self->_searchTerms;
  self->_searchTerms = 0;

  self->_searchLogged = 0;
  [(HLPHelpTableOfContentViewController *)self cancelSpotlightSearchDelay];
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  if (+[HLPCommonDefines isVisionOS])
  {
    v3 = [v4 searchBar];
    [v3 setAlpha:1.0];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HLPHelpTableOfContentViewController *)self locale];
  v6 = [v5 isoCodes];

  if (v6)
  {
    v7 = [v4 searchBar];
    v8 = [v7 text];

    if ([v8 length])
    {
      if (!self->_searchLogged)
      {
        v9 = +[HLPAnalyticsEventSearchUsed event];
        [v9 log];

        v10 = [(HLPHelpTableOfContentViewController *)self delegate];
        [v10 tableOfContentViewControllerSearchUsed:self];

        self->_searchLogged = 1;
      }

      if ([(HLPHelpSearchIndexController *)self->_helpSearchIndexController useCSSearch])
      {
        v25[0] = v8;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
        searchTerms = self->_searchTerms;
        self->_searchTerms = v11;

        [(HLPHelpTableOfContentViewController *)self cancelSpotlightSearchDelay];
        [(HLPHelpTableOfContentViewController *)self performSelector:sel_spotlightSearchDelay withObject:0 afterDelay:0.2];
      }

      else
      {
        v14 = [v8 lowercaseString];

        helpSearchIndexController = self->_helpSearchIndexController;
        v16 = [(HLPHelpTableOfContentViewController *)self locale];
        v17 = [v16 isoCodes];
        v18 = [v17 firstObject];
        v24 = 0;
        v19 = [(HLPHelpSearchIndexController *)helpSearchIndexController resultsWithSearchText:v14 localeCode:v18 searchTerms:&v24];
        v20 = v24;

        v21 = self->_searchTerms;
        self->_searchTerms = v20;
        v22 = v20;

        [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController updateWithSearchText:v14 searchResults:v19];
        v8 = v14;
      }
    }

    else
    {
      v13 = self->_searchTerms;
      self->_searchTerms = 0;

      [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController updateWithSearchText:&stru_2864756F0 searchResults:0];
    }

    [(HLPHelpTableOfContentViewController *)self updateSearchBarBlur];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)cancelSpotlightSearchDelay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_spotlightSearchDelay object:0];
  helpSearchIndexController = self->_helpSearchIndexController;

  [(HLPHelpSearchIndexController *)helpSearchIndexController cancelSpotlightSearch];
}

- (void)spotlightSearchDelay
{
  objc_initWeak(&location, self);
  v3 = [(HLPHelpTableOfContentViewController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 text];

  helpSearchIndexController = self->_helpSearchIndexController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HLPHelpTableOfContentViewController_spotlightSearchDelay__block_invoke;
  v8[3] = &unk_279706AC8;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [(HLPHelpSearchIndexController *)helpSearchIndexController CSSearchForSearchText:v7 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__HLPHelpTableOfContentViewController_spotlightSearchDelay__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = HLPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_2522BC000, v6, OS_LOG_TYPE_DEFAULT, "error getting spotlight search results %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [WeakRetained helpSearchIndexController];
    v8 = [v7 spotlightSearchResults];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HLPHelpTableOfContentViewController_spotlightSearchDelay__block_invoke_2;
    block[3] = &unk_279706AA0;
    block[4] = v5;
    v11 = *(a1 + 32);
    v12 = v8;
    v6 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __59__HLPHelpTableOfContentViewController_spotlightSearchDelay__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) searchResultTableViewController];
  [v2 updateWithSearchText:*(a1 + 40) searchResults:*(a1 + 48)];
}

- (HLPHelpTableOfContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end