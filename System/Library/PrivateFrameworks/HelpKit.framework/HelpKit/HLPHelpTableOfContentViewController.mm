@interface HLPHelpTableOfContentViewController
- (HLPHelpSearchIndexController)helpSearchIndexController;
- (HLPHelpTableOfContentViewController)initWithStyle:(int64_t)style;
- (HLPHelpTableOfContentViewControllerDelegate)delegate;
- (UISearchController)searchController;
- (UIView)tableFooterView;
- (UIVisualEffectView)searchBlurEffectView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfVisibleHelpItemForSectionItem:(id)item;
- (void)appendChildrenForSectionItem:(id)item;
- (void)cancelSpotlightSearchDelay;
- (void)closeSectionItem:(id)item;
- (void)copyrightButtonTapped;
- (void)dealloc;
- (void)deselectCurrentRow;
- (void)didDismissSearchController:(id)controller;
- (void)loadError;
- (void)logAnalyticsContentViewedWithHelpTopicItem:(id)item sourceType:(id)type;
- (void)registerTraitChanges;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)showHelpBookInfo;
- (void)showTopicItem:(id)item fromTableView:(id)view;
- (void)spotlightSearchDelay;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFooterViewBackgroundColor;
- (void)updateFooterViewLayout;
- (void)updateSearchBarBlur;
- (void)updateSearchBarLayout;
- (void)updateSearchResultViewSeparatorValue;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateWithHelpBookController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation HLPHelpTableOfContentViewController

- (HLPHelpTableOfContentViewController)initWithStyle:(int64_t)style
{
  v10.receiver = self;
  v10.super_class = HLPHelpTableOfContentViewController;
  v3 = [(HLPHelpTableOfContentViewController *)&v10 initWithStyle:style];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = HLPHelpTableOfContentViewController;
  [(HLPHelpTableOfContentViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = HLPHelpTableOfContentViewController;
  [(HLPHelpTableOfContentViewController *)&v13 viewDidLoad];
  tableView = [(HLPHelpTableOfContentViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kTOCTableViewCellIdentifier"];
  [tableView setRowHeight:*MEMORY[0x277D76F30]];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  tableBackgroundView = self->_tableBackgroundView;
  self->_tableBackgroundView = v4;

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  if (+[HLPCommonDefines isVisionOS])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];

    [tableView setBackgroundColor:clearColor];
    v8 = 60.0;
    systemBackgroundColor = clearColor;
  }

  else
  {
    v8 = 52.0;
  }

  [tableView setEstimatedRowHeight:v8];
  [(UIView *)self->_tableBackgroundView setBackgroundColor:systemBackgroundColor];
  [tableView setBackgroundView:0];
  [tableView setBackgroundView:self->_tableBackgroundView];
  tableFooterView = [(HLPHelpTableOfContentViewController *)self tableFooterView];
  [tableView setTableFooterView:tableFooterView];

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  tableFooterView2 = [tableView tableFooterView];
  [tableFooterView2 setBackgroundColor:systemBackgroundColor2];

  [(HLPHelpTableOfContentViewController *)self updateFooterViewBackgroundColor];
  if (self->_fullBookView)
  {
    [tableView setBackgroundView:0];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

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

    tableView = [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController tableView];
    [tableView setDelegate:self];

    [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController setFullBookView:self->_fullBookView];
    v6 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:self->_searchResultTableViewController];
    searchController = self->_searchController;
    self->_searchController = v6;

    [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
    [(UISearchController *)self->_searchController setDelegate:self];
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar setAutocapitalizationType:0];

    searchBar2 = [(UISearchController *)self->_searchController searchBar];
    [searchBar2 setAutocorrectionType:1];

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
    serverType = [(HLPHelpBookController *)self->_helpBookController serverType];
    helpBookController = self->_helpBookController;
    if (serverType == 1)
    {
      remoteCSSearchIndex = [(HLPHelpBookController *)helpBookController remoteCSSearchIndex];

      if (remoteCSSearchIndex)
      {
        v7 = MEMORY[0x277CBEBC0];
        remoteCSSearchIndex2 = [(HLPHelpBookController *)self->_helpBookController remoteCSSearchIndex];
        remoteSearchPath = [v7 URLWithString:remoteCSSearchIndex2];
        v10 = 1;
LABEL_9:

LABEL_10:
        v15 = [(HLPRemoteDataController *)[HLPHelpSearchIndexController alloc] initWithURL:remoteSearchPath];
        v16 = self->_helpSearchIndexController;
        self->_helpSearchIndexController = v15;

        [(HLPHelpSearchIndexController *)self->_helpSearchIndexController setHelpBookController:self->_helpBookController];
        [(HLPHelpSearchIndexController *)self->_helpSearchIndexController setUseCSSearch:v10];

        helpSearchIndexController = self->_helpSearchIndexController;
        goto LABEL_11;
      }

      remoteSearchPath = [(HLPHelpBookController *)self->_helpBookController remoteSearchPath];

      if (!remoteSearchPath)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v18 = MEMORY[0x277CBEBC0];
      remoteCSSearchIndex2 = [(HLPHelpBookController *)self->_helpBookController remoteSearchPath];
      remoteSearchPath = [v18 URLWithString:remoteCSSearchIndex2];
    }

    else
    {
      isSemanticHTML = [(HLPHelpBookController *)helpBookController isSemanticHTML];
      v12 = @"search.json";
      if (isSemanticHTML)
      {
        v12 = @"searchTree.json";
      }

      v13 = self->_helpBookController;
      v14 = v12;
      remoteCSSearchIndex2 = [(HLPHelpBookController *)v13 helpBookURL];
      remoteSearchPath = [remoteCSSearchIndex2 URLByAppendingPathComponent:v14];
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
    leadingAnchor = [(UIView *)self->_tableFooterSeparatorView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_tableFooterView leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v10 setActive:1];

    trailingAnchor = [(UIView *)self->_tableFooterSeparatorView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_tableFooterView trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v13 setActive:1];

    heightAnchor = [(UIView *)self->_tableFooterSeparatorView heightAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v17 = [heightAnchor constraintEqualToConstant:1.0 / v16];
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
    leadingAnchor3 = [(UILabel *)self->_copyrightFooterLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_tableFooterView leadingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];

    LODWORD(v24) = 1147207680;
    [v23 setPriority:v24];
    [v23 setActive:1];
    trailingAnchor3 = [(UILabel *)self->_copyrightFooterLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_tableFooterView trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];

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

    topAnchor = [(UILabel *)self->_copyrightFooterLabel topAnchor];
    topAnchor2 = [(UIView *)self->_tableFooterView topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v29];
    copyrightFooterLabelTopConstraint = self->_copyrightFooterLabelTopConstraint;
    self->_copyrightFooterLabelTopConstraint = v32;

    [(NSLayoutConstraint *)self->_copyrightFooterLabelTopConstraint setActive:1];
    heightAnchor2 = [(UILabel *)self->_copyrightFooterLabel heightAnchor];
    v35 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:0.0];
    copyrightFooterLabelHeightConstraint = self->_copyrightFooterLabelHeightConstraint;
    self->_copyrightFooterLabelHeightConstraint = v35;

    [(NSLayoutConstraint *)self->_copyrightFooterLabelHeightConstraint setActive:1];
    v37 = [MEMORY[0x277D75220] buttonWithType:0];
    footerViewOverlayButton = self->_footerViewOverlayButton;
    self->_footerViewOverlayButton = v37;

    [(UIButton *)self->_footerViewOverlayButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_footerViewOverlayButton addTarget:self action:sel_copyrightButtonTapped forControlEvents:64];
    [(UIView *)self->_tableFooterView addSubview:self->_footerViewOverlayButton];
    leadingAnchor5 = [(UIButton *)self->_footerViewOverlayButton leadingAnchor];
    leadingAnchor6 = [(UIView *)self->_tableFooterView leadingAnchor];
    v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v41 setActive:1];

    trailingAnchor5 = [(UIButton *)self->_footerViewOverlayButton trailingAnchor];
    trailingAnchor6 = [(UIView *)self->_tableFooterView trailingAnchor];
    v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v44 setActive:1];

    topAnchor3 = [(UIButton *)self->_footerViewOverlayButton topAnchor];
    topAnchor4 = [(UIView *)self->_tableFooterView topAnchor];
    v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v47 setActive:1];

    bottomAnchor = [(UIButton *)self->_footerViewOverlayButton bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_tableFooterView bottomAnchor];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if ([(UISearchController *)self->_searchController isActive])
  {
    searchBar = [(UISearchController *)self->_searchController searchBar];
    isFirstResponder = [searchBar isFirstResponder];

    if (isFirstResponder)
    {
      searchBar2 = [(UISearchController *)self->_searchController searchBar];
      [searchBar2 resignFirstResponder];
    }
  }
}

- (void)deselectCurrentRow
{
  tableView = [(HLPHelpTableOfContentViewController *)self tableView];
  tableView2 = [(HLPHelpTableOfContentViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)updateFooterViewBackgroundColor
{
  if (+[HLPCommonDefines isVisionOS])
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    traitCollection = [(HLPHelpTableOfContentViewController *)self traitCollection];
    v4 = [traitCollection userInterfaceStyle] == 1;

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
  delegate = [(HLPHelpTableOfContentViewController *)self delegate];
  [delegate tableOfContentViewControllerShowHelpBookInfo:self];
}

- (void)copyrightButtonTapped
{
  helpBookController = self->_helpBookController;
  copyrightTopicIdentifier = [(HLPHelpBookController *)helpBookController copyrightTopicIdentifier];
  v6 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:copyrightTopicIdentifier];

  if (v6)
  {
    tableView = [(HLPHelpTableOfContentViewController *)self tableView];
    [(HLPHelpTableOfContentViewController *)self showTopicItem:v6 fromTableView:tableView];
  }
}

- (void)updateFooterViewLayout
{
  v36[1] = *MEMORY[0x277D85DE8];
  if ((+[HLPCommonDefines isVisionOS]|| !self->_fullBookView) && ([(UILabel *)self->_copyrightFooterLabel isHidden]& 1) == 0)
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)self->_copyrightFooterLabel setFont:v3];

    tableView = [(HLPHelpTableOfContentViewController *)self tableView];
    [tableView bounds];
    v5 = CGRectGetWidth(v37) + -16.0;

    text = [(UILabel *)self->_copyrightFooterLabel text];
    v35 = *MEMORY[0x277D740A8];
    font = [(UILabel *)self->_copyrightFooterLabel font];
    v36[0] = font;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [text boundingRectWithSize:1 options:v8 attributes:0 context:{v5, 1.79769313e308}];
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
    tableView2 = [(HLPHelpTableOfContentViewController *)self tableView];
    tableFooterView = [tableView2 tableFooterView];
    [tableFooterView frame];
    v30 = CGRectGetHeight(v40);

    if (Height != v30)
    {
      [(UIView *)self->_tableFooterView setFrame:v18, v20, v22, v26];
      tableView3 = [(HLPHelpTableOfContentViewController *)self tableView];
      [tableView3 setTableFooterView:0];

      tableFooterView = self->_tableFooterView;
      tableView4 = [(HLPHelpTableOfContentViewController *)self tableView];
      [tableView4 setTableFooterView:tableFooterView];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)updateSearchBarBlur
{
  if (+[HLPCommonDefines isVisionOS])
  {
    searchResults = [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController searchResults];

    if (searchResults)
    {
      view = [(UISearchController *)self->_searchController view];
      [view frame];
      [(UIVisualEffectView *)self->_searchBlurEffectView setFrame:?];

      searchBar = [(UISearchController *)self->_searchController searchBar];
      searchBlurEffectView = [(HLPHelpTableOfContentViewController *)self searchBlurEffectView];
      [searchBar insertSubview:searchBlurEffectView atIndex:0];
    }

    else
    {
      searchBar = [(HLPHelpTableOfContentViewController *)self searchBlurEffectView];
      [searchBar removeFromSuperview];
    }
  }
}

- (void)updateSearchBarLayout
{
  if (+[HLPCommonDefines isVisionOS])
  {
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar setSearchBarStyle:2];
  }
}

- (void)updateWithHelpBookController:(id)controller
{
  controllerCopy = controller;
  if (self->_helpBookController != controllerCopy)
  {
    v31 = controllerCopy;
    objc_storeStrong(&self->_helpBookController, controller);
    [(NSMutableArray *)self->_displayHelpItems removeAllObjects];
    rootSectionItem = [(HLPHelpBookController *)v31 rootSectionItem];
    [(HLPHelpTableOfContentViewController *)self appendChildrenForSectionItem:rootSectionItem];

    copyrightTopicIdentifier = [(HLPHelpBookController *)v31 copyrightTopicIdentifier];
    v8 = [(HLPHelpBookController *)v31 helpTopicItemForID:copyrightTopicIdentifier];

    copyrightText = [(HLPHelpBookController *)v31 copyrightText];
    v10 = copyrightText;
    if (copyrightText)
    {
      name = copyrightText;
    }

    else
    {
      name = [v8 name];
    }

    v12 = name;

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
    hrefID = [v8 hrefID];
    v15 = [hrefID length];

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
    helpItemMap = [(HLPHelpBookController *)v31 helpItemMap];
    searchController = [helpItemMap count];

    if (searchController)
    {
      helpSearchIndexController = [(HLPHelpTableOfContentViewController *)self helpSearchIndexController];
      searchController = [helpSearchIndexController URL];
      lastPathComponent = [searchController lastPathComponent];
      v21 = [lastPathComponent isEqualToString:@"search.cshelpindex"];

      helpSearchIndexController2 = [(HLPHelpTableOfContentViewController *)self helpSearchIndexController];
      v23 = helpSearchIndexController2;
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

      [helpSearchIndexController2 fetchDataWithDataType:v26 identifier:v24 completionHandler:v25];
    }

    if (self->_fullBookView)
    {
      v27 = [(NSMutableArray *)self->_displayHelpItems count];
      if (v27)
      {
        searchController = [(HLPHelpTableOfContentViewController *)self searchController];
        searchBar = [searchController searchBar];
      }

      else
      {
        searchBar = 0;
      }

      tableView = [(HLPHelpTableOfContentViewController *)self tableView];
      [tableView setTableHeaderView:searchBar];

      if (v27)
      {
      }
    }

    [(UIButton *)self->_footerViewOverlayButton setHidden:[(NSMutableArray *)self->_displayHelpItems count]== 0];
    tableView2 = [(HLPHelpTableOfContentViewController *)self tableView];
    [tableView2 reloadData];

    controllerCopy = v31;
  }
}

- (void)loadError
{
  v3 = [(NSMutableArray *)self->_displayHelpItems count]== 0;
  footerViewOverlayButton = self->_footerViewOverlayButton;

  [(UIButton *)footerViewOverlayButton setHidden:v3];
}

- (void)appendChildrenForSectionItem:(id)item
{
  children = [item children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HLPHelpTableOfContentViewController_appendChildrenForSectionItem___block_invoke;
  v5[3] = &unk_279706A28;
  v5[4] = self;
  [children enumerateObjectsUsingBlock:v5];
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

- (void)showTopicItem:(id)item fromTableView:(id)view
{
  itemCopy = item;
  delegate = [(HLPHelpTableOfContentViewController *)self delegate];
  [delegate tableOfContentViewController:self showHelpTopicItem:itemCopy];

  [(HLPHelpTableOfContentViewController *)self updateCellSelectionWithScrollPosition:0 helpItem:itemCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"kTOCTableViewCellIdentifier" forIndexPath:pathCopy];
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
  v10 = [pathCopy row];

  v11 = [(NSMutableArray *)displayHelpItems objectAtIndexedSubscript:v10];
  [v7 setHelpItem:v11];
  [v7 setClosed:{-[NSMutableArray indexOfObject:](self->_openSections, "indexOfObject:", v11) == 0x7FFFFFFFFFFFFFFFLL}];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v29[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  tableView = [(HLPHelpTableOfContentViewController *)self tableView];
  if (tableView == viewCopy)
  {
    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_displayHelpItems, "objectAtIndexedSubscript:", [pathCopy row]);
  }

  else
  {
    searchResults = [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController searchResults];
    v10 = [searchResults objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      [v12 toggle];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      v13 = v10;
      [viewCopy beginUpdates];
      if ([v12 closed])
      {
        [(HLPHelpTableOfContentViewController *)self closeSectionItem:v13];
      }

      else
      {
        lastObject = [(NSMutableArray *)self->_displayHelpItems lastObject];

        if (v13 == lastObject)
        {
          tableView2 = [(HLPHelpTableOfContentViewController *)self tableView];
          v22 = [MEMORY[0x277CCAA70] indexPathForRow:-[NSMutableArray count](self->_displayHelpItems inSection:{"count") - 1, 0}];
          v29[0] = v22;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
          [tableView2 reloadRowsAtIndexPaths:v23 withRowAnimation:5];
        }

        [(HLPHelpTableOfContentViewController *)self openHelpItem:v13 animated:1];
      }

      [viewCopy endUpdates];
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
    hrefID = [v11 hrefID];
    v15 = [hrefID hasPrefix:@"http"];

    if (v15)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v17 = MEMORY[0x277CBEBC0];
      hrefID2 = [v11 hrefID];
      v19 = [v17 URLWithString:hrefID2];
      [mEMORY[0x277D75128] openURL:v19 options:MEMORY[0x277CBEC10] completionHandler:0];

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }

    else
    {
      [(HLPHelpTableOfContentViewController *)self showTopicItem:v11 fromTableView:viewCopy];
    }

    tableView3 = [(HLPHelpTableOfContentViewController *)self tableView];
    v25 = HLPAnalyticsViewSourceTypeTOC;
    if (tableView3 != viewCopy)
    {
      v25 = HLPAnalyticsViewSourceTypeSearch;
    }

    v26 = *v25;

    [(HLPHelpTableOfContentViewController *)self logAnalyticsContentViewedWithHelpTopicItem:v11 sourceType:v26];
  }

LABEL_20:
  if (self->_fullBookView)
  {
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar resignFirstResponder];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfVisibleHelpItemForSectionItem:(id)item
{
  itemCopy = item;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  children = [itemCopy children];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HLPHelpTableOfContentViewController_numberOfVisibleHelpItemForSectionItem___block_invoke;
  v8[3] = &unk_279706A78;
  v8[4] = self;
  v8[5] = &v9;
  [children enumerateObjectsUsingBlock:v8];

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

- (void)closeSectionItem:(id)item
{
  itemCopy = item;
  v4 = [(NSMutableArray *)self->_displayHelpItems indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v5 = v4;
  if ([(NSMutableArray *)self->_openSections indexOfObject:itemCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  tableView = [(HLPHelpTableOfContentViewController *)self tableView];
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:0];
  v8 = [tableView cellForRowAtIndexPath:v7];

  if (v8)
  {
    [v8 setClosed:1];
  }

  v9 = [(HLPHelpTableOfContentViewController *)self numberOfVisibleHelpItemForSectionItem:itemCopy];
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
    tableView2 = [(HLPHelpTableOfContentViewController *)self tableView];
    [tableView2 estimatedRowHeight];
    v18 = v17;

    tableView3 = [(HLPHelpTableOfContentViewController *)self tableView];
    [tableView3 contentSize];
    v21 = v20;

    v22 = v21 - v18 * [v13 count];
    view = [(HLPHelpTableOfContentViewController *)self view];
    [view bounds];
    Height = CGRectGetHeight(v46);

    tableView4 = [(HLPHelpTableOfContentViewController *)self tableView];
    tableView8 = tableView4;
    if (v22 >= Height)
    {
      [tableView4 contentOffset];
      v30 = v29;

      v31 = Height + v30;
      if (Height + v30 <= v22)
      {
LABEL_13:
        tableView5 = [(HLPHelpTableOfContentViewController *)self tableView];
        [tableView5 beginUpdates];

        tableView6 = [(HLPHelpTableOfContentViewController *)self tableView];
        [tableView6 deleteRowsAtIndexPaths:v13 withRowAnimation:3];

        tableView7 = [(HLPHelpTableOfContentViewController *)self tableView];
        [tableView7 endUpdates];

        goto LABEL_14;
      }

      tableView8 = [(HLPHelpTableOfContentViewController *)self tableView];
      [tableView8 setContentOffset:1 animated:{0.0, v22 - Height}];
    }

    else
    {
      view2 = [(HLPHelpTableOfContentViewController *)self view];
      [view2 safeAreaInsets];
      [tableView8 setContentOffset:1 animated:{0.0, -v28}];
    }

    goto LABEL_13;
  }

LABEL_14:
  v35 = [(NSMutableArray *)self->_openSections indexOfObject:itemCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [itemCopy identifier];
  [dictionary setObject:itemCopy forKeyedSubscript:identifier];

  for (i = v35 + 1; i < [(NSMutableArray *)self->_openSections count]; ++i)
  {
    v39 = [(NSMutableArray *)self->_openSections objectAtIndexedSubscript:i];
    parent = [v39 parent];
    identifier2 = [parent identifier];
    v42 = [dictionary objectForKeyedSubscript:identifier2];

    if (v42)
    {
      identifier3 = [v39 identifier];
      [dictionary setObject:v39 forKeyedSubscript:identifier3];
    }
  }

  -[NSMutableArray removeObjectsInRange:](self->_openSections, "removeObjectsInRange:", v35, [dictionary count]);

LABEL_20:
}

- (void)logAnalyticsContentViewedWithHelpTopicItem:(id)item sourceType:(id)type
{
  typeCopy = type;
  itemCopy = item;
  identifier = [itemCopy identifier];
  name = [itemCopy name];
  traitCollection = [(HLPHelpTableOfContentViewController *)self traitCollection];
  v15 = +[HLPAnalyticsEventContentViewed eventWithTopicID:topicTitle:source:interfaceStyle:](HLPAnalyticsEventContentViewed, "eventWithTopicID:topicTitle:source:interfaceStyle:", identifier, name, typeCopy, [traitCollection userInterfaceStyle]);

  [v15 log];
  delegate = [(HLPHelpTableOfContentViewController *)self delegate];
  identifier2 = [itemCopy identifier];
  name2 = [itemCopy name];

  traitCollection2 = [(HLPHelpTableOfContentViewController *)self traitCollection];
  [delegate tableOfContentViewControllerToCContentViewed:self topicID:identifier2 topicTitle:name2 source:typeCopy interfaceStyle:objc_msgSend(traitCollection2 fromTopicID:"userInterfaceStyle") externalURLString:&stru_2864756F0];
}

- (void)updateSearchResultViewSeparatorValue
{
  tableView = [(HLPHelpTableOfContentViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  firstObject = [visibleCells firstObject];

  searchResultTableViewController = self->_searchResultTableViewController;
  accessoryImageView = [firstObject accessoryImageView];
  [accessoryImageView bounds];
  [(HLPHelpSearchResultTableViewController *)searchResultTableViewController preferSeparatorValue:CGRectGetWidth(v9) + 16.0 * 2.0];
}

- (void)willPresentSearchController:(id)controller
{
  if (+[HLPCommonDefines isVisionOS])
  {
    tableView = [(HLPHelpTableOfContentViewController *)self tableView];
    [tableView setHidden:1];
  }

  [(HLPHelpTableOfContentViewController *)self updateSearchResultViewSeparatorValue];
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  if (+[HLPCommonDefines isVisionOS])
  {
    tableView = [(HLPHelpTableOfContentViewController *)self tableView];
    [tableView setHidden:0];

    searchResultTableViewController = [(HLPHelpTableOfContentViewController *)self searchResultTableViewController];
    tableView2 = [searchResultTableViewController tableView];
    indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];

    if (indexPathForSelectedRow)
    {
      searchBar = [controllerCopy searchBar];
      [searchBar setAlpha:0.0];
    }
  }

  searchTerms = self->_searchTerms;
  self->_searchTerms = 0;

  self->_searchLogged = 0;
  [(HLPHelpTableOfContentViewController *)self cancelSpotlightSearchDelay];
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  if (+[HLPCommonDefines isVisionOS])
  {
    searchBar = [controllerCopy searchBar];
    [searchBar setAlpha:1.0];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v25[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  locale = [(HLPHelpTableOfContentViewController *)self locale];
  isoCodes = [locale isoCodes];

  if (isoCodes)
  {
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];

    if ([text length])
    {
      if (!self->_searchLogged)
      {
        v9 = +[HLPAnalyticsEventSearchUsed event];
        [v9 log];

        delegate = [(HLPHelpTableOfContentViewController *)self delegate];
        [delegate tableOfContentViewControllerSearchUsed:self];

        self->_searchLogged = 1;
      }

      if ([(HLPHelpSearchIndexController *)self->_helpSearchIndexController useCSSearch])
      {
        v25[0] = text;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
        searchTerms = self->_searchTerms;
        self->_searchTerms = v11;

        [(HLPHelpTableOfContentViewController *)self cancelSpotlightSearchDelay];
        [(HLPHelpTableOfContentViewController *)self performSelector:sel_spotlightSearchDelay withObject:0 afterDelay:0.2];
      }

      else
      {
        lowercaseString = [text lowercaseString];

        helpSearchIndexController = self->_helpSearchIndexController;
        locale2 = [(HLPHelpTableOfContentViewController *)self locale];
        isoCodes2 = [locale2 isoCodes];
        firstObject = [isoCodes2 firstObject];
        v24 = 0;
        v19 = [(HLPHelpSearchIndexController *)helpSearchIndexController resultsWithSearchText:lowercaseString localeCode:firstObject searchTerms:&v24];
        v20 = v24;

        v21 = self->_searchTerms;
        self->_searchTerms = v20;
        v22 = v20;

        [(HLPHelpSearchResultTableViewController *)self->_searchResultTableViewController updateWithSearchText:lowercaseString searchResults:v19];
        text = lowercaseString;
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
  searchController = [(HLPHelpTableOfContentViewController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];

  helpSearchIndexController = self->_helpSearchIndexController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HLPHelpTableOfContentViewController_spotlightSearchDelay__block_invoke;
  v8[3] = &unk_279706AC8;
  objc_copyWeak(&v10, &location);
  v7 = text;
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