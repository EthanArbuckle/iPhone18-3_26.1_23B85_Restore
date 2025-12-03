@interface ICStyleSelectorViewController
- (BOOL)currentNamedStylesContainsStyle:(unsigned int)style;
- (BOOL)isPopover;
- (ICStyleSelectorDelegate)delegate;
- (NSArray)biusButtons;
- (NSArray)indentationButtons;
- (NSArray)listButtons;
- (NSArray)nonStyleButtons;
- (NSLayoutConstraint)biusContainerTopConstraint;
- (NSLayoutConstraint)listsContainerBottomConstraint;
- (NSLayoutConstraint)listsContainerTopConstraint;
- (NSLayoutConstraint)scrollViewHeightConstraint;
- (NSLayoutConstraint)scrollViewTopConstraint;
- (UIButton)blockQuoteButton;
- (UIButton)boldButton;
- (UIButton)bulletedListButton;
- (UIButton)dashedListButton;
- (UIButton)emphasisButton;
- (UIButton)emphasisColorPickerButton;
- (UIButton)indentLeftButton;
- (UIButton)indentRightButton;
- (UIButton)italicButton;
- (UIButton)numberedListButton;
- (UIButton)strikethroughButton;
- (UIButton)underlineButton;
- (UILabel)headerLabel;
- (UINavigationBar)navigationBar;
- (UIScrollView)styleScrollView;
- (UIView)biusContainer;
- (UIView)blockQuoteContainer;
- (UIView)emphasisContainer;
- (UIView)headerView;
- (UIView)indentationContainer;
- (UIView)listsContainer;
- (double)preferredHeightForTraitCollection:(id)collection;
- (double)styleButtonPadding;
- (id)biusStyleActionWithStyleBIUS:(unint64_t)s;
- (id)blockQuoteMenu;
- (id)elementForAXFocusOnDismissal;
- (id)emphasisColorActionWithType:(int64_t)type bordered:(BOOL)bordered selectionTogglesEmphasis:(BOOL)emphasis;
- (id)emphasisColorImageWithType:(int64_t)type bordered:(BOOL)bordered;
- (id)emphasisMenu;
- (id)fontForICTTNamedStyle:(unsigned int)style;
- (id)imageForButton:(id)button;
- (id)imageNameForButton:(id)button;
- (id)makeInlineMenu;
- (id)makeShortcutMenu;
- (id)namedStyleActionWithNamedStyle:(unsigned int)style;
- (id)nibBundle;
- (id)styleButtonForStyle:(unsigned int)style;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)applyAccessibilityInfo;
- (void)applyFixedEmphasisColor:(id)color;
- (void)configureForOrientation;
- (void)configureForPopover;
- (void)configureViewWithEmphasis;
- (void)dealloc;
- (void)didSelectBulletedList:(id)list;
- (void)didSelectDashedList:(id)list;
- (void)didSelectDone:(id)done;
- (void)didSelectNumberedList:(id)list;
- (void)indentLeft:(id)left;
- (void)indentRight:(id)right;
- (void)namedStyleButtonAction:(id)action;
- (void)populateStyleScrollView;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)registerForTraitChanges;
- (void)scrollCurrentStyleToVisible:(BOOL)visible;
- (void)selectNamedStyle:(unsigned int)style;
- (void)setCurrentBIUS:(unint64_t)s;
- (void)setCurrentStyles:(id)styles bius:(unint64_t)bius animated:(BOOL)animated;
- (void)setStyles:(id)styles;
- (void)setUpNonStyleButtons;
- (void)toggleBIUS:(id)s;
- (void)toggleBlockQuote:(id)quote;
- (void)toggleEmphasis:(id)emphasis;
- (void)updateButtonEnabledState;
- (void)updateHeaderVisibility;
- (void)updateListStyleSelectedState;
- (void)updateNamedStyleSelectedState;
- (void)updateStyleSelectionHighlightAnimated:(BOOL)animated;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ICStyleSelectorViewController

- (id)makeShortcutMenu
{
  v19[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D753F0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke;
  v15[3] = &unk_2781ADD30;
  objc_copyWeak(&v16, &location);
  v3 = [v2 elementWithProvider:v15];
  v4 = MEMORY[0x277D753F0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_10;
  v13[3] = &unk_2781ADD30;
  objc_copyWeak(&v14, &location);
  v5 = [v4 elementWithProvider:v13];
  v6 = MEMORY[0x277D75710];
  v19[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v8 = [v6 ic_inlineMenuWithChildren:v7];

  v9 = MEMORY[0x277D75710];
  v18[0] = v3;
  v18[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [v9 menuWithTitle:&stru_282757698 children:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

- (id)nibBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)viewDidLoad
{
  v45[2] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v43 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [(ICStyleSelectorViewController *)self setStyleSelectionHighlight:v3];

  styleSelectionHighlight = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [styleSelectionHighlight setAlpha:0.0];

  styleSelectionHighlight2 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [styleSelectionHighlight2 ic_applyRoundedCorners];

  styleScrollView = [(ICStyleSelectorViewController *)self styleScrollView];
  styleSelectionHighlight3 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [styleScrollView addSubview:styleSelectionHighlight3];

  view = [(ICStyleSelectorViewController *)self view];
  [view layoutMargins];
  v10 = v9;
  view2 = [(ICStyleSelectorViewController *)self view];
  [view2 layoutMargins];
  v13 = v12;
  styleScrollView2 = [(ICStyleSelectorViewController *)self styleScrollView];
  [styleScrollView2 setContentInset:{0.0, v10, 0.0, v13}];

  view3 = [(ICStyleSelectorViewController *)self view];
  [view3 setAutoresizingMask:0];

  view4 = [(ICStyleSelectorViewController *)self view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [MEMORY[0x277D75220] buttonWithType:7];
  [v17 addTarget:self action:sel_didSelectDone_ forControlEvents:64];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  headerView = [(ICStyleSelectorViewController *)self headerView];
  [headerView addSubview:v17];

  [(ICStyleSelectorViewController *)self setCloseButton:v17];
  v40 = MEMORY[0x277CCAAD0];
  headerView2 = [(ICStyleSelectorViewController *)self headerView];
  layoutMarginsGuide = [headerView2 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide trailingAnchor];
  trailingAnchor2 = [(UIButton *)self->_closeButton trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
  v45[0] = v22;
  v42 = v17;
  centerYAnchor = [v17 centerYAnchor];
  headerView3 = [(ICStyleSelectorViewController *)self headerView];
  centerYAnchor2 = [headerView3 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v45[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v40 activateConstraints:v27];

  titleStyle = [MEMORY[0x277D36978] titleStyle];
  v44[0] = titleStyle;
  headingStyle = [MEMORY[0x277D36978] headingStyle];
  v44[1] = headingStyle;
  subheadingStyle = [MEMORY[0x277D36978] subheadingStyle];
  v44[2] = subheadingStyle;
  bodyStyle = [MEMORY[0x277D36978] bodyStyle];
  v44[3] = bodyStyle;
  fixedWidthStyle = [MEMORY[0x277D36978] fixedWidthStyle];
  v44[4] = fixedWidthStyle;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:5];
  [(ICStyleSelectorViewController *)self setStyles:v33];

  if ([(ICStyleSelectorViewController *)self ic_isRTL])
  {
    styles = [(ICStyleSelectorViewController *)self styles];
    reverseObjectEnumerator = [styles reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [(ICStyleSelectorViewController *)self setStyles:allObjects];

    headerLabel = [(ICStyleSelectorViewController *)self headerLabel];
    [headerLabel setTextAlignment:4];
  }

  view5 = [(ICStyleSelectorViewController *)self view];
  [view5 intrinsicContentSize];
  [(ICStyleSelectorViewController *)self setPreferredContentSize:?];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applyAccessibilityInfo name:*MEMORY[0x277D765F0] object:0];

  [(ICStyleSelectorViewController *)self setConfiguredForPopover:0];
  [(ICStyleSelectorViewController *)self applyAccessibilityInfo];
  [(ICStyleSelectorViewController *)self configureForOrientation];
  [(ICStyleSelectorViewController *)self registerForTraitChanges];
}

- (void)registerForTraitChanges
{
  objc_initWeak(&location, self);
  ic_traitsAffectingSizeAndColor = [MEMORY[0x277D75C80] ic_traitsAffectingSizeAndColor];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ICStyleSelectorViewController_registerForTraitChanges__block_invoke;
  v5[3] = &unk_2781ACDB8;
  objc_copyWeak(&v6, &location);
  v4 = [(ICStyleSelectorViewController *)self registerForTraitChanges:ic_traitsAffectingSizeAndColor withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__ICStyleSelectorViewController_registerForTraitChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained traitCollection];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__ICStyleSelectorViewController_registerForTraitChanges__block_invoke_2;
  v3[3] = &unk_2781ABCF8;
  v3[4] = WeakRetained;
  [v2 ic_performAsCurrent:v3];
}

uint64_t __56__ICStyleSelectorViewController_registerForTraitChanges__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) populateStyleScrollView];
  [*(a1 + 32) updateNamedStyleSelectedState];
  v2 = *(a1 + 32);

  return [v2 updateStyleSelectionHighlightAnimated:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v4 viewSafeAreaInsetsDidChange];
  view = [(ICStyleSelectorViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v9.receiver = self;
  v9.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v9 updateViewConstraints];
  [(ICStyleSelectorViewController *)self updateHeaderVisibility];
  [(ICStyleSelectorViewController *)self configureForOrientation];
  view = [(ICStyleSelectorViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  listsContainerBottomConstraint = [(ICStyleSelectorViewController *)self listsContainerBottomConstraint];
  [listsContainerBottomConstraint setConstant:v5];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    [(ICStyleSelectorViewController *)self configureViewWithEmphasis];
  }

  else
  {
    emphasisContainer = [(ICStyleSelectorViewController *)self emphasisContainer];

    if (emphasisContainer)
    {
      emphasisContainer2 = [(ICStyleSelectorViewController *)self emphasisContainer];
      [emphasisContainer2 removeFromSuperview];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v22 viewWillLayoutSubviews];
  if ([(ICStyleSelectorViewController *)self isPopover])
  {
    view = [(ICStyleSelectorViewController *)self view];
    v4 = view;
    v5 = 20.0;
    v6 = 20.0;
    v7 = 20.0;
  }

  else
  {
    traitCollection = [(ICStyleSelectorViewController *)self traitCollection];
    if ([traitCollection verticalSizeClass] == 2)
    {
      v9 = 36.0;
    }

    else
    {
      v9 = 8.0;
    }

    view = [(ICStyleSelectorViewController *)self view];
    v4 = view;
    v5 = 15.0;
    v7 = 15.0;
    v6 = v9;
  }

  [view setLayoutMargins:{0.0, v5, v6, v7}];

  view2 = [(ICStyleSelectorViewController *)self view];
  [view2 layoutMargins];
  v12 = v11;
  view3 = [(ICStyleSelectorViewController *)self view];
  [view3 layoutMargins];
  v15 = v14;
  styleScrollView = [(ICStyleSelectorViewController *)self styleScrollView];
  [styleScrollView setContentInset:{0.0, v12, 0.0, v15}];

  view4 = [(ICStyleSelectorViewController *)self view];
  [view4 layoutMargins];
  v19 = v18;
  listsContainerBottomConstraint = [(ICStyleSelectorViewController *)self listsContainerBottomConstraint];
  [listsContainerBottomConstraint setConstant:v19];

  [(ICStyleSelectorViewController *)self updateHeaderVisibility];
  view5 = [(ICStyleSelectorViewController *)self view];
  [view5 invalidateIntrinsicContentSize];

  [(ICStyleSelectorViewController *)self setUpNonStyleButtons];
}

- (void)viewDidLayoutSubviews
{
  styleScrollView = [(ICStyleSelectorViewController *)self styleScrollView];
  [styleScrollView bounds];
  v5 = v4;
  styleScrollView2 = [(ICStyleSelectorViewController *)self styleScrollView];
  [styleScrollView2 contentSize];
  v8 = v7;

  if (v5 > v8)
  {
    view = [(ICStyleSelectorViewController *)self view];
    [view bounds];
    v11 = v10;
    styleScrollView3 = [(ICStyleSelectorViewController *)self styleScrollView];
    [styleScrollView3 contentSize];
    v14 = (v11 - v13) * 0.5;
    styleScrollView4 = [(ICStyleSelectorViewController *)self styleScrollView];
    [styleScrollView4 frame];
    v17 = -floor(v14 - v16);
    styleScrollView5 = [(ICStyleSelectorViewController *)self styleScrollView];
    [styleScrollView5 setContentOffset:{v17, 0.0}];
  }

  else
  {
    [(ICStyleSelectorViewController *)self scrollCurrentStyleToVisible:0];
  }

  styleScrollView6 = [(ICStyleSelectorViewController *)self styleScrollView];
  [styleScrollView6 setScrollEnabled:v5 <= v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v7 viewWillAppear:appear];
  if ([(ICStyleSelectorViewController *)self isPopover])
  {
    [(ICStyleSelectorViewController *)self configureForPopover];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

  traitCollection = [(ICStyleSelectorViewController *)self traitCollection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ICStyleSelectorViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_2781ABCF8;
  v6[4] = self;
  [traitCollection ic_performAsCurrent:v6];
}

uint64_t __48__ICStyleSelectorViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) populateStyleScrollView];
  [*(a1 + 32) updateNamedStyleSelectedState];
  v2 = *(a1 + 32);

  return [v2 applyAccessibilityInfo];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ICStyleSelectorViewController;
  [(ICNAViewController *)&v6 viewDidAppear:appear];
  v4 = *MEMORY[0x277D76488];
  view = [(ICStyleSelectorViewController *)self view];
  UIAccessibilityPostNotification(v4, view);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v5 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v6 viewDidDisappear:disappear];
  v4 = *MEMORY[0x277D76488];
  elementForAXFocusOnDismissal = [(ICStyleSelectorViewController *)self elementForAXFocusOnDismissal];
  UIAccessibilityPostNotification(v4, elementForAXFocusOnDismissal);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  if (ICInternalSettingsIsEmphasisEnabled())
  {
    [(ICStyleSelectorViewController *)self setUpNonStyleButtons];
    v11.receiver = self;
    v11.super_class = ICStyleSelectorViewController;
    [(ICStyleSelectorViewController *)&v11 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    delegate = [(ICStyleSelectorViewController *)self delegate];
    [delegate styleSelector:self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)configureForPopover
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  v4 = [delegate styleSelectorShouldUseCompactTopInset:self];

  if (v4)
  {
    v5 = 60.0;
  }

  else
  {
    v5 = 79.0;
  }

  scrollViewTopConstraint = [(ICStyleSelectorViewController *)self scrollViewTopConstraint];
  [scrollViewTopConstraint setConstant:v5];

  if (![(ICStyleSelectorViewController *)self configuredForPopover])
  {
    biusContainerTopConstraint = [(ICStyleSelectorViewController *)self biusContainerTopConstraint];
    [biusContainerTopConstraint setConstant:12.0];

    listsContainerTopConstraint = [(ICStyleSelectorViewController *)self listsContainerTopConstraint];
    [listsContainerTopConstraint setConstant:12.0];

    listsContainerBottomConstraint = [(ICStyleSelectorViewController *)self listsContainerBottomConstraint];
    [listsContainerBottomConstraint setConstant:16.0];

    [(ICStyleSelectorViewController *)self setConfiguredForPopover:1];
  }
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = ICStyleSelectorViewController;
  [(ICNAViewController *)&v3 dealloc];
}

- (double)styleButtonPadding
{
  v3 = 12.0;
  if (![(ICStyleSelectorViewController *)self isPopover])
  {
    traitCollection = [(ICStyleSelectorViewController *)self traitCollection];
    if ([traitCollection verticalSizeClass] == 1)
    {
      v3 = 21.0;
    }

    else
    {
      v3 = 12.0;
    }
  }

  return v3;
}

- (void)didSelectDone:(id)done
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelectorDidCancel:self];
}

- (void)toggleBlockQuote:(id)quote
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelectorToggleBlockQuote:self];

  delegate2 = [(ICStyleSelectorViewController *)self delegate];
  v5 = [delegate2 styleSelectorSelectionHasBlockQuote:self];
  blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [blockQuoteButton setSelected:v5];
}

- (void)toggleBIUS:(id)s
{
  sCopy = s;
  [sCopy setSelected:{objc_msgSend(sCopy, "isSelected") ^ 1}];
  delegate = [(ICStyleSelectorViewController *)self delegate];
  v5 = [sCopy tag];

  [delegate styleSelector:self toggleBIUS:v5];
}

- (void)indentLeft:(id)left
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelectorDidIndentLeft:self];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)indentRight:(id)right
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelectorDidIndentRight:self];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)didSelectDashedList:(id)list
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:101];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v4 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:0];

  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelector:self didSelectStyle:101];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)didSelectNumberedList:(id)list
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:102];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v4 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:0];

  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelector:self didSelectStyle:102];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)didSelectBulletedList:(id)list
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:100];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v4 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:0];

  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelector:self didSelectStyle:100];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)setStyles:(id)styles
{
  stylesCopy = styles;
  if (self->_styles != stylesCopy)
  {
    v6 = stylesCopy;
    objc_storeStrong(&self->_styles, styles);
    [(ICStyleSelectorViewController *)self populateStyleScrollView];
    stylesCopy = v6;
  }
}

- (void)setCurrentStyles:(id)styles bius:(unint64_t)bius animated:(BOOL)animated
{
  animatedCopy = animated;
  stylesCopy = styles;
  [(ICStyleSelectorViewController *)self loadViewIfNeeded];
  [(ICStyleSelectorViewController *)self setCurrentBIUS:bius];
  [(ICStyleSelectorViewController *)self setCurrentStyles:stylesCopy];

  [(ICStyleSelectorViewController *)self updateStyleSelectionHighlightAnimated:animatedCopy];
  [(ICStyleSelectorViewController *)self updateNamedStyleSelectedState];
  [(ICStyleSelectorViewController *)self updateListStyleSelectedState];
  [(ICStyleSelectorViewController *)self updateButtonEnabledState];

  [(ICStyleSelectorViewController *)self scrollCurrentStyleToVisible:animatedCopy];
}

- (void)setCurrentBIUS:(unint64_t)s
{
  self->_currentBIUS = s;
  boldButton = [(ICStyleSelectorViewController *)self boldButton];
  [boldButton setSelected:s & 1];

  italicButton = [(ICStyleSelectorViewController *)self italicButton];
  [italicButton setSelected:(s >> 1) & 1];

  underlineButton = [(ICStyleSelectorViewController *)self underlineButton];
  [underlineButton setSelected:(s >> 2) & 1];

  strikethroughButton = [(ICStyleSelectorViewController *)self strikethroughButton];
  [strikethroughButton setSelected:(s >> 3) & 1];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    emphasisButton = [(ICStyleSelectorViewController *)self emphasisButton];
    [emphasisButton setSelected:(s >> 4) & 1];
  }

  delegate = [(ICStyleSelectorViewController *)self delegate];
  v11 = [delegate styleSelectorSelectionHasBlockQuote:self];

  blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [blockQuoteButton setSelected:v11];
}

- (UIButton)boldButton
{
  biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [biusContainer viewWithTag:1];

  return v3;
}

- (UIButton)italicButton
{
  biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [biusContainer viewWithTag:2];

  return v3;
}

- (UIButton)underlineButton
{
  biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [biusContainer viewWithTag:4];

  return v3;
}

- (UIButton)strikethroughButton
{
  biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [biusContainer viewWithTag:8];

  return v3;
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  headerView = [(ICStyleSelectorViewController *)self headerView];
  [headerView frame];
  v6 = CGRectGetMaxY(v10) + 4.0 + 8.0;

  verticalSizeClass = [collectionCopy verticalSizeClass];
  v8 = 104.0;
  if (verticalSizeClass == 2)
  {
    v8 = 188.0;
  }

  return v6 + v8;
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke(uint64_t a1, void *a2)
{
  v53[8] = *MEMORY[0x277D85DE8];
  v36 = a2;
  v3 = MEMORY[0x277D750C8];
  v4 = [MEMORY[0x277D36978] titleStyle];
  v5 = [v4 name];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_2;
  v51[3] = &unk_2781ADD08;
  objc_copyWeak(&v52, (a1 + 32));
  v35 = [v3 actionWithTitle:v5 image:0 identifier:0 handler:v51];

  v6 = MEMORY[0x277D750C8];
  v7 = [MEMORY[0x277D36978] headingStyle];
  v8 = [v7 name];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_3;
  v49[3] = &unk_2781ADD08;
  objc_copyWeak(&v50, (a1 + 32));
  v34 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v49];

  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277D36978] subheadingStyle];
  v11 = [v10 name];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_4;
  v47[3] = &unk_2781ADD08;
  objc_copyWeak(&v48, (a1 + 32));
  v33 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v47];

  v12 = MEMORY[0x277D750C8];
  v13 = [MEMORY[0x277D36978] bodyStyle];
  v14 = [v13 name];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_5;
  v45[3] = &unk_2781ADD08;
  objc_copyWeak(&v46, (a1 + 32));
  v32 = [v12 actionWithTitle:v14 image:0 identifier:0 handler:v45];

  v15 = MEMORY[0x277D750C8];
  v16 = [MEMORY[0x277D36978] fixedWidthStyle];
  v17 = [v16 name];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_6;
  v43[3] = &unk_2781ADD08;
  objc_copyWeak(&v44, (a1 + 32));
  v18 = [v15 actionWithTitle:v17 image:0 identifier:0 handler:v43];

  v19 = MEMORY[0x277D750C8];
  v20 = [MEMORY[0x277D36978] dashStyle];
  v21 = [v20 name];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_7;
  v41[3] = &unk_2781ADD08;
  objc_copyWeak(&v42, (a1 + 32));
  v22 = [v19 actionWithTitle:v21 image:0 identifier:0 handler:v41];

  v23 = MEMORY[0x277D750C8];
  v24 = [MEMORY[0x277D36978] numberedStyle];
  v25 = [v24 name];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_8;
  v39[3] = &unk_2781ADD08;
  objc_copyWeak(&v40, (a1 + 32));
  v26 = [v23 actionWithTitle:v25 image:0 identifier:0 handler:v39];

  v27 = MEMORY[0x277D750C8];
  v28 = [MEMORY[0x277D36978] bulletStyle];
  v29 = [v28 name];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_9;
  v37[3] = &unk_2781ADD08;
  objc_copyWeak(&v38, (a1 + 32));
  v30 = [v27 actionWithTitle:v29 image:0 identifier:0 handler:v37];

  v53[0] = v35;
  v53[1] = v34;
  v53[2] = v33;
  v53[3] = v32;
  v53[4] = v18;
  v53[5] = v22;
  v53[6] = v26;
  v53[7] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:8];
  v36[2](v36, v31);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:0];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:1];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:2];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:3];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:4];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:101];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:102];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelector:WeakRetained didSelectStyle:100];
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_10(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D750C8];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"Block Quote" value:&stru_282757698 table:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_11;
  v9[3] = &unk_2781ADD08;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = [v4 actionWithTitle:v6 image:0 identifier:0 handler:v9];

  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v3[2](v3, v8);

  objc_destroyWeak(&v10);
}

void __49__ICStyleSelectorViewController_makeShortcutMenu__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 styleSelectorToggleBlockQuote:WeakRetained];
}

- (BOOL)currentNamedStylesContainsStyle:(unsigned int)style
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  currentStyles = [(ICStyleSelectorViewController *)self currentStyles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__ICStyleSelectorViewController_currentNamedStylesContainsStyle___block_invoke;
  v6[3] = &unk_2781ADD58;
  styleCopy = style;
  v6[4] = &v8;
  [currentStyles enumerateIndexesUsingBlock:v6];

  LOBYTE(style) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return style;
}

uint64_t __65__ICStyleSelectorViewController_currentNamedStylesContainsStyle___block_invoke(uint64_t result, int a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)biusStyleActionWithStyleBIUS:(unint64_t)s
{
  objc_initWeak(&location, self);
  v5 = NSStringForSymbolImageNameFromICStyleBIUS();
  v6 = [(ICStyleSelectorViewController *)self currentBIUSContainsStyle:s];
  v7 = [MEMORY[0x277D755B8] ic_systemImageNamed:v5 textStyle:*MEMORY[0x277D76918] scale:-1];
  if (v6)
  {
    darkTextColor = [MEMORY[0x277D75348] darkTextColor];
    v9 = [v7 imageWithTintColor:darkTextColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v7 = [v9 ic_imageCenteredWithBackgroundColor:whiteColor size:34.0 cornerRadius:{34.0, 8.0}];
  }

  v11 = MEMORY[0x277D750C8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ICStyleSelectorViewController_biusStyleActionWithStyleBIUS___block_invoke;
  v15[3] = &unk_2781ADA48;
  objc_copyWeak(v16, &location);
  v16[1] = s;
  v12 = [v11 ic_actionWithImage:v7 handler:v15];
  v13 = [MEMORY[0x277D36978] icaxStyleDescriptionForBIUSStyle:s];
  [v12 setAccessibilityLabel:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);

  return v12;
}

void __62__ICStyleSelectorViewController_biusStyleActionWithStyleBIUS___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 styleSelector:WeakRetained toggleBIUS:*(a1 + 40)];
}

- (id)namedStyleActionWithNamedStyle:(unsigned int)style
{
  v3 = *&style;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D36978] styleForNamedStyle:v3];
  v6 = MEMORY[0x277D750C8];
  attributedName = [v5 attributedName];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__ICStyleSelectorViewController_namedStyleActionWithNamedStyle___block_invoke;
  v11[3] = &unk_2781ADD80;
  objc_copyWeak(&v12, &location);
  v13 = v3;
  v8 = [v6 ic_actionWithAttributedTitle:attributedName handler:v11];

  [v8 setState:{-[ICStyleSelectorViewController menuElementStateWithSelected:](self, "menuElementStateWithSelected:", -[ICStyleSelectorViewController currentNamedStylesContainsStyle:](self, "currentNamedStylesContainsStyle:", v3))}];
  v9 = [MEMORY[0x277D36978] icaxStyleDescriptionForNamedStyle:v3];
  [v8 setAccessibilityLabel:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __64__ICStyleSelectorViewController_namedStyleActionWithNamedStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained selectNamedStyle:*(a1 + 40)];
}

- (id)emphasisMenu
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D35D80];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:*MEMORY[0x277D35D80] + 1];
  if (v3)
  {
    v5 = 1;
    do
    {
      v6 = [(ICStyleSelectorViewController *)self emphasisColorActionWithType:v5 bordered:1 selectionTogglesEmphasis:1];
      [v4 ic_addNonNilObject:v6];

      ++v5;
      --v3;
    }

    while (v3);
  }

  delegate = [(ICStyleSelectorViewController *)self delegate];
  currentEmphasisType = [delegate currentEmphasisType];

  if (currentEmphasisType)
  {
    v9 = [(ICStyleSelectorViewController *)self emphasisColorImageWithType:currentEmphasisType bordered:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277D75710];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"Highlight" value:&stru_282757698 table:0];
  v13 = [v10 menuWithTitle:v12 image:v9 identifier:0 options:0 children:v4];

  v14 = MEMORY[0x277D75710];
  v18[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = [v14 ic_inlineMenuWithChildren:v15];

  return v16;
}

- (id)blockQuoteMenu
{
  v19[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C8];
  ic_blockQuoteMenuItemAttributedString = [MEMORY[0x277CCA898] ic_blockQuoteMenuItemAttributedString];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __47__ICStyleSelectorViewController_blockQuoteMenu__block_invoke;
  v16 = &unk_2781ADD08;
  objc_copyWeak(&v17, &location);
  v5 = [v3 ic_actionWithAttributedTitle:ic_blockQuoteMenuItemAttributedString handler:&v13];

  v6 = [(ICStyleSelectorViewController *)self delegate:v13];
  [v5 setState:{objc_msgSend(v6, "styleSelectorSelectionHasBlockQuote:", self)}];

  blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];
  accessibilityLabel = [blockQuoteButton accessibilityLabel];
  [v5 setAccessibilityLabel:accessibilityLabel];

  v9 = MEMORY[0x277D75710];
  v19[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v11 = [v9 ic_inlineMenuWithChildren:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __47__ICStyleSelectorViewController_blockQuoteMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained toggleBlockQuote:WeakRetained];
}

- (void)toggleEmphasis:(id)emphasis
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate toggleEmphasis];

  delegate2 = [(ICStyleSelectorViewController *)self delegate];
  currentBIUSForStyleSelector = [delegate2 currentBIUSForStyleSelector];

  emphasisButton = [(ICStyleSelectorViewController *)self emphasisButton];
  [emphasisButton setSelected:(currentBIUSForStyleSelector >> 4) & 1];
}

- (id)makeInlineMenu
{
  v19[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D753F0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__ICStyleSelectorViewController_makeInlineMenu__block_invoke;
  v15[3] = &unk_2781ADD30;
  objc_copyWeak(&v16, &location);
  v3 = [v2 elementWithUncachedProvider:v15];
  v4 = MEMORY[0x277D75710];
  v19[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v6 = [v4 ic_inlineMenuWithElementSize:0 children:v5];

  v7 = MEMORY[0x277D753F0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__ICStyleSelectorViewController_makeInlineMenu__block_invoke_2;
  v13[3] = &unk_2781ADD30;
  objc_copyWeak(&v14, &location);
  v8 = [v7 elementWithUncachedProvider:v13];
  v9 = MEMORY[0x277D75710];
  v18[0] = v6;
  v18[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [v9 menuWithChildren:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __47__ICStyleSelectorViewController_makeInlineMenu__block_invoke(uint64_t a1, void *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  [v5 styleSelectorWillShowInlineMenu:WeakRetained];

  v6 = [WeakRetained biusStyleActionWithStyleBIUS:1];
  v7 = [WeakRetained biusStyleActionWithStyleBIUS:2];
  v8 = [WeakRetained biusStyleActionWithStyleBIUS:4];
  v9 = [WeakRetained biusStyleActionWithStyleBIUS:8];
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v11 = [v10 copy];
  v3[2](v3, v11);
}

void __47__ICStyleSelectorViewController_makeInlineMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained emphasisMenu];
  v5 = [WeakRetained namedStyleActionWithNamedStyle:0];
  v6 = [WeakRetained namedStyleActionWithNamedStyle:1];
  v7 = [WeakRetained namedStyleActionWithNamedStyle:2];
  v8 = [WeakRetained namedStyleActionWithNamedStyle:3];
  v9 = [WeakRetained namedStyleActionWithNamedStyle:4];
  v10 = [WeakRetained namedStyleActionWithNamedStyle:102];
  v11 = [WeakRetained namedStyleActionWithNamedStyle:101];
  v12 = [WeakRetained namedStyleActionWithNamedStyle:100];
  v16 = v5;
  v17 = v4;
  v13 = [MEMORY[0x277CBEB18] arrayWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, v12, 0}];
  if (ICInternalSettingsIsBlockQuoteEnabled())
  {
    v14 = [WeakRetained blockQuoteMenu];
    [v13 addObject:v14];
  }

  v15 = [v13 copy];
  v3[2](v3, v15);
}

- (NSArray)biusButtons
{
  v9[4] = *MEMORY[0x277D85DE8];
  boldButton = [(ICStyleSelectorViewController *)self boldButton];
  v9[0] = boldButton;
  italicButton = [(ICStyleSelectorViewController *)self italicButton];
  v9[1] = italicButton;
  underlineButton = [(ICStyleSelectorViewController *)self underlineButton];
  v9[2] = underlineButton;
  strikethroughButton = [(ICStyleSelectorViewController *)self strikethroughButton];
  v9[3] = strikethroughButton;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  return v7;
}

- (NSArray)listButtons
{
  v8[3] = *MEMORY[0x277D85DE8];
  bulletedListButton = [(ICStyleSelectorViewController *)self bulletedListButton];
  dashedListButton = [(ICStyleSelectorViewController *)self dashedListButton];
  v8[1] = dashedListButton;
  numberedListButton = [(ICStyleSelectorViewController *)self numberedListButton];
  v8[2] = numberedListButton;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

- (NSArray)indentationButtons
{
  v7[2] = *MEMORY[0x277D85DE8];
  indentLeftButton = [(ICStyleSelectorViewController *)self indentLeftButton];
  v7[0] = indentLeftButton;
  indentRightButton = [(ICStyleSelectorViewController *)self indentRightButton];
  v7[1] = indentRightButton;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSArray)nonStyleButtons
{
  biusButtons = [(ICStyleSelectorViewController *)self biusButtons];
  v4 = [biusButtons mutableCopy];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    emphasisButton = [(ICStyleSelectorViewController *)self emphasisButton];
    [v4 addObject:emphasisButton];

    v6 = *MEMORY[0x277D35D80];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:*MEMORY[0x277D35D80]];
    if (v6)
    {
      v8 = 1;
      do
      {
        v9 = [(ICStyleSelectorViewController *)self emphasisColorActionWithType:v8 bordered:0 selectionTogglesEmphasis:0];
        [v7 ic_addNonNilObject:v9];

        ++v8;
        --v6;
      }

      while (v6);
    }

    v10 = [MEMORY[0x277D75710] menuWithChildren:v7];
    emphasisColorPickerButton = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    [emphasisColorPickerButton setMenu:v10];

    emphasisColorPickerButton2 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    [emphasisColorPickerButton2 setShowsMenuAsPrimaryAction:1];

    emphasisColorPickerButton3 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    [v4 addObject:emphasisColorPickerButton3];
  }

  listButtons = [(ICStyleSelectorViewController *)self listButtons];
  [v4 addObjectsFromArray:listButtons];

  indentationButtons = [(ICStyleSelectorViewController *)self indentationButtons];
  [v4 addObjectsFromArray:indentationButtons];

  blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [v4 addObject:blockQuoteButton];

  return v4;
}

- (void)applyFixedEmphasisColor:(id)color
{
  v4 = ICEmphasisColorTypeForTag();
  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate toggleEmphasisWithType:v4];
}

- (id)emphasisColorActionWithType:(int64_t)type bordered:(BOOL)bordered selectionTogglesEmphasis:(BOOL)emphasis
{
  borderedCopy = bordered;
  objc_initWeak(&location, self);
  v9 = NSStringForEmphasisColorType();
  v10 = [(ICStyleSelectorViewController *)self emphasisColorImageWithType:type bordered:borderedCopy];
  v11 = MEMORY[0x277D750C8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __95__ICStyleSelectorViewController_emphasisColorActionWithType_bordered_selectionTogglesEmphasis___block_invoke;
  v18 = &unk_2781ADDA8;
  emphasisCopy = emphasis;
  objc_copyWeak(v19, &location);
  v19[1] = type;
  v12 = [v11 actionWithTitle:v9 image:v10 identifier:0 handler:&v15];
  v13 = [(ICStyleSelectorViewController *)self delegate:v15];
  [v12 setState:{objc_msgSend(v13, "currentEmphasisType") == type}];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);

  return v12;
}

void __95__ICStyleSelectorViewController_emphasisColorActionWithType_bordered_selectionTogglesEmphasis___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (*(a1 + 48) == 1 && (v3 = objc_loadWeakRetained((a1 + 32)), [v3 delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "currentEmphasisType"), v6 = *(a1 + 40), v4, v3, v5 == v6))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained delegate];
    [v8 toggleEmphasis];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained delegate];
    [v8 toggleEmphasisWithType:*(a1 + 40)];
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setUpNonStyleButtons];
}

- (id)emphasisColorImageWithType:(int64_t)type bordered:(BOOL)bordered
{
  borderedCopy = bordered;
  v5 = ICColorForEmphasisColorType();
  if (borderedCopy)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v7 = 2.0;
    v8 = 15.0;
  }

  else
  {
    labelColor = 0;
    v7 = 0.0;
    v8 = 13.0;
  }

  v9 = [MEMORY[0x277D755B8] ic_makeCircularImageWithColor:v5 diameter:labelColor borderColor:v8 borderWidth:v7];

  return v9;
}

- (void)configureViewWithEmphasis
{
  v49[1] = *MEMORY[0x277D85DE8];
  view = [(ICStyleSelectorViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  if (([windowScene interfaceOrientation] - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(ICStyleSelectorViewController *)self isPopover];
  }

  v7 = MEMORY[0x277CCAAD0];
  emphasisContainer = [(ICStyleSelectorViewController *)self emphasisContainer];
  biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
  v10 = [v7 constraintWithItem:emphasisContainer attribute:5 relatedBy:0 toItem:biusContainer attribute:6 multiplier:1.0 constant:8.0];
  [(ICStyleSelectorViewController *)self setEmphasisContainerLeadingConstraint:v10];

  v11 = MEMORY[0x277CCAAD0];
  emphasisContainerLeadingConstraint = [(ICStyleSelectorViewController *)self emphasisContainerLeadingConstraint];
  v49[0] = emphasisContainerLeadingConstraint;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  [v11 activateConstraints:v13];

  if (v6 && ([(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = MEMORY[0x277CCAAD0];
    emphasisContainerTrailingConstraint = [(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint];
    v48 = emphasisContainerTrailingConstraint;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v15 deactivateConstraints:v17];

    v18 = MEMORY[0x277CCAAD0];
    emphasisButton = [(ICStyleSelectorViewController *)self emphasisButton];
    boldButton = [(ICStyleSelectorViewController *)self boldButton];
    v21 = [v18 constraintWithItem:emphasisButton attribute:7 relatedBy:0 toItem:boldButton attribute:7 multiplier:0.9 constant:0.0];
    [(ICStyleSelectorViewController *)self setEmphasisButtonWidthConstraint:v21];

    v22 = MEMORY[0x277CCAAD0];
    emphasisColorPickerButton = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    emphasisButton2 = [(ICStyleSelectorViewController *)self emphasisButton];
    v25 = [v22 constraintWithItem:emphasisColorPickerButton attribute:7 relatedBy:0 toItem:emphasisButton2 attribute:7 multiplier:0.75 constant:0.0];
    [(ICStyleSelectorViewController *)self setEmphasisColorPickerButtonWidthConstraint:v25];

    v26 = MEMORY[0x277CCAAD0];
    emphasisButtonWidthConstraint = [(ICStyleSelectorViewController *)self emphasisButtonWidthConstraint];
    v47[0] = emphasisButtonWidthConstraint;
    emphasisColorPickerButtonWidthConstraint = [(ICStyleSelectorViewController *)self emphasisColorPickerButtonWidthConstraint];
    v47[1] = emphasisColorPickerButtonWidthConstraint;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [v26 activateConstraints:v29];
  }

  else
  {
    emphasisButtonWidthConstraint2 = [(ICStyleSelectorViewController *)self emphasisButtonWidthConstraint];

    if (emphasisButtonWidthConstraint2)
    {
      v31 = MEMORY[0x277CCAAD0];
      emphasisButtonWidthConstraint3 = [(ICStyleSelectorViewController *)self emphasisButtonWidthConstraint];
      v46 = emphasisButtonWidthConstraint3;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v31 deactivateConstraints:v33];
    }

    emphasisColorPickerButtonWidthConstraint2 = [(ICStyleSelectorViewController *)self emphasisColorPickerButtonWidthConstraint];

    if (emphasisColorPickerButtonWidthConstraint2)
    {
      v35 = MEMORY[0x277CCAAD0];
      emphasisColorPickerButtonWidthConstraint3 = [(ICStyleSelectorViewController *)self emphasisColorPickerButtonWidthConstraint];
      v45 = emphasisColorPickerButtonWidthConstraint3;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v35 deactivateConstraints:v37];
    }

    emphasisContainerTrailingConstraint2 = [(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint];

    if (!emphasisContainerTrailingConstraint2)
    {
      v39 = MEMORY[0x277CCAAD0];
      emphasisContainer2 = [(ICStyleSelectorViewController *)self emphasisContainer];
      blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];
      v42 = [v39 constraintWithItem:emphasisContainer2 attribute:6 relatedBy:0 toItem:blockQuoteButton attribute:6 multiplier:1.0 constant:0.0];
      [(ICStyleSelectorViewController *)self setEmphasisContainerTrailingConstraint:v42];
    }

    v43 = MEMORY[0x277CCAAD0];
    emphasisButtonWidthConstraint = [(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint];
    v44 = emphasisButtonWidthConstraint;
    emphasisColorPickerButtonWidthConstraint = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v43 activateConstraints:emphasisColorPickerButtonWidthConstraint];
  }
}

- (BOOL)isPopover
{
  popoverPresentationController = [(ICStyleSelectorViewController *)self popoverPresentationController];
  if (popoverPresentationController)
  {
    ic_isVision = 1;
  }

  else
  {
    ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  }

  return ic_isVision;
}

- (void)scrollCurrentStyleToVisible:(BOOL)visible
{
  visibleCopy = visible;
  currentStyles = [(ICStyleSelectorViewController *)self currentStyles];
  v6 = [currentStyles count];

  if (v6 == 1)
  {
    styleSelectionHighlight = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
    [styleSelectionHighlight frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    styleScrollView = [(ICStyleSelectorViewController *)self styleScrollView];
    [styleScrollView contentSize];
    v18 = v17;
    styleScrollView2 = [(ICStyleSelectorViewController *)self styleScrollView];
    [styleScrollView2 contentSize];
    v29.size.height = v20;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v29.size.width = v18;
    v28 = CGRectIntersection(v27, v29);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;

    styleScrollView3 = [(ICStyleSelectorViewController *)self styleScrollView];
    [styleScrollView3 scrollRectToVisible:visibleCopy animated:{x, y, width, height}];
  }
}

- (id)fontForICTTNamedStyle:(unsigned int)style
{
  traitCollection = [(ICStyleSelectorViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v6 = fontForICTTNamedStyle__validCategories;
  if (!fontForICTTNamedStyle__validCategories)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D76830], *MEMORY[0x277D76858], *MEMORY[0x277D76840], *MEMORY[0x277D76838], *MEMORY[0x277D76828], *MEMORY[0x277D76820], *MEMORY[0x277D76818], 0}];
    v8 = fontForICTTNamedStyle__validCategories;
    fontForICTTNamedStyle__validCategories = v7;

    v6 = fontForICTTNamedStyle__validCategories;
  }

  if (([v6 containsObject:preferredContentSizeCategory] & 1) == 0)
  {
    v9 = *MEMORY[0x277D76818];

    preferredContentSizeCategory = v9;
  }

  if (style <= 1)
  {
    if (!style)
    {
      v13 = [MEMORY[0x277D74300] ic_preferredFontForTitleTextWithContentSizeCategory:preferredContentSizeCategory];
      goto LABEL_15;
    }

    if (style == 1)
    {
      [MEMORY[0x277D74300] ic_pointSizeForBodyTextWithContentSizeCategory:preferredContentSizeCategory];
      v11 = [MEMORY[0x277D74300] systemFontOfSize:round(v10 * *MEMORY[0x277D369D8]) weight:*MEMORY[0x277D74410]];
      ic_fontWithSingleLineA = [v11 ic_fontWithSingleLineA];

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (style == 2)
  {
    v13 = [MEMORY[0x277D74300] ic_preferredFontForSubheadingTextWithContentSizeCategory:preferredContentSizeCategory];
    goto LABEL_15;
  }

  if (style != 4)
  {
LABEL_12:
    v13 = [MEMORY[0x277D74300] ic_preferredFontForBodyTextWithContentSizeCategory:preferredContentSizeCategory];
    goto LABEL_15;
  }

  v13 = [MEMORY[0x277D74300] ic_preferredFontForFixedWidthTextWithContentSizeCategory:preferredContentSizeCategory];
LABEL_15:
  ic_fontWithSingleLineA = v13;
LABEL_16:

  return ic_fontWithSingleLineA;
}

- (void)updateHeaderVisibility
{
  isPopover = [(ICStyleSelectorViewController *)self isPopover];
  headerView = [(ICStyleSelectorViewController *)self headerView];
  v5 = headerView;
  if (isPopover)
  {
    [headerView setHidden:1];

    navigationBar = [(ICStyleSelectorViewController *)self navigationBar];
    [navigationBar setHidden:0];

    view = [(ICStyleSelectorViewController *)self view];
    [view safeAreaInsets];
    v9 = v8;

    navigationBar2 = [(ICStyleSelectorViewController *)self navigationBar];
    [navigationBar2 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    MinX = CGRectGetMinX(v29);
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    MinY = CGRectGetMinY(v30);
    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    Width = CGRectGetWidth(v31);
    navigationBar3 = [(ICStyleSelectorViewController *)self navigationBar];
    [navigationBar3 setFrame:{MinX, MinY, Width, v9 + 50.0}];

    headerView2 = objc_alloc_init(MEMORY[0x277D75788]);
    [headerView2 setTitlePositionAdjustment:{0.0, v9}];
    navigationBar4 = [(ICStyleSelectorViewController *)self navigationBar];
    [navigationBar4 setStandardAppearance:headerView2];

    [(ICStyleSelectorViewController *)self configureForPopover];
  }

  else
  {
    [headerView setHidden:0];

    navigationBar5 = [(ICStyleSelectorViewController *)self navigationBar];
    [navigationBar5 setHidden:1];

    headerView2 = [(ICStyleSelectorViewController *)self headerView];
    [headerView2 frame];
    v25 = CGRectGetMaxY(v32) + 4.0;
    scrollViewTopConstraint = [(ICStyleSelectorViewController *)self scrollViewTopConstraint];
    [scrollViewTopConstraint setConstant:v25];
  }
}

- (void)configureForOrientation
{
  v35[3] = *MEMORY[0x277D85DE8];
  view = [(ICStyleSelectorViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  if (([windowScene interfaceOrientation] - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(ICStyleSelectorViewController *)self isPopover]^ 1;
  }

  if (v6 != [(ICStyleSelectorViewController *)self configuredForLandscape])
  {
    listsContainerLeadingConstraintLandscape = [(ICStyleSelectorViewController *)self listsContainerLeadingConstraintLandscape];

    if (!listsContainerLeadingConstraintLandscape)
    {
      biusContainerTopConstraintLandscape = [(ICStyleSelectorViewController *)self biusContainerTopConstraintLandscape];

      if (biusContainerTopConstraintLandscape)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.biusContainerTopConstraintLandscape) == nil)" functionName:"-[ICStyleSelectorViewController configureForOrientation]" simulateCrash:1 showAlert:0 format:{@"Expected nil value for '%s'", "self.biusContainerTopConstraintLandscape"}];
      }

      boldButtonWidthConstraintLandscape = [(ICStyleSelectorViewController *)self boldButtonWidthConstraintLandscape];

      if (boldButtonWidthConstraintLandscape)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.boldButtonWidthConstraintLandscape) == nil)" functionName:"-[ICStyleSelectorViewController configureForOrientation]" simulateCrash:1 showAlert:0 format:{@"Expected nil value for '%s'", "self.boldButtonWidthConstraintLandscape"}];
      }

      if (ICInternalSettingsIsEmphasisEnabled())
      {
        [(ICStyleSelectorViewController *)self emphasisContainer];
      }

      else
      {
        [(ICStyleSelectorViewController *)self biusContainer];
      }
      v10 = ;
      v11 = MEMORY[0x277CCAAD0];
      listsContainer = [(ICStyleSelectorViewController *)self listsContainer];
      v13 = [v11 constraintWithItem:listsContainer attribute:5 relatedBy:0 toItem:v10 attribute:6 multiplier:1.0 constant:8.0];
      [(ICStyleSelectorViewController *)self setListsContainerLeadingConstraintLandscape:v13];

      v14 = MEMORY[0x277CCAAD0];
      biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
      listsContainer2 = [(ICStyleSelectorViewController *)self listsContainer];
      v17 = [v14 constraintWithItem:biusContainer attribute:3 relatedBy:0 toItem:listsContainer2 attribute:3 multiplier:1.0 constant:0.0];
      [(ICStyleSelectorViewController *)self setBiusContainerTopConstraintLandscape:v17];

      v18 = MEMORY[0x277CCAAD0];
      boldButton = [(ICStyleSelectorViewController *)self boldButton];
      dashedListButton = [(ICStyleSelectorViewController *)self dashedListButton];
      v21 = [v18 constraintWithItem:boldButton attribute:7 relatedBy:0 toItem:dashedListButton attribute:7 multiplier:1.0 constant:0.0];
      [(ICStyleSelectorViewController *)self setBoldButtonWidthConstraintLandscape:v21];
    }

    scrollViewHeightConstraint = [(ICStyleSelectorViewController *)self scrollViewHeightConstraint];
    [scrollViewHeightConstraint setConstant:48.0];

    if (v6)
    {
      v23 = 751.0;
    }

    else
    {
      v23 = 749.0;
    }

    listsContainerLeadingConstraintLandscape2 = [(ICStyleSelectorViewController *)self listsContainerLeadingConstraintLandscape];
    *&v25 = v23;
    [listsContainerLeadingConstraintLandscape2 setPriority:v25];

    biusContainerTopConstraintLandscape2 = [(ICStyleSelectorViewController *)self biusContainerTopConstraintLandscape];
    *&v27 = v23;
    [biusContainerTopConstraintLandscape2 setPriority:v27];

    boldButtonWidthConstraintLandscape2 = [(ICStyleSelectorViewController *)self boldButtonWidthConstraintLandscape];
    *&v29 = v23;
    [boldButtonWidthConstraintLandscape2 setPriority:v29];

    if (!listsContainerLeadingConstraintLandscape)
    {
      v30 = MEMORY[0x277CCAAD0];
      listsContainerLeadingConstraintLandscape3 = [(ICStyleSelectorViewController *)self listsContainerLeadingConstraintLandscape];
      v35[0] = listsContainerLeadingConstraintLandscape3;
      biusContainerTopConstraintLandscape3 = [(ICStyleSelectorViewController *)self biusContainerTopConstraintLandscape];
      v35[1] = biusContainerTopConstraintLandscape3;
      boldButtonWidthConstraintLandscape3 = [(ICStyleSelectorViewController *)self boldButtonWidthConstraintLandscape];
      v35[2] = boldButtonWidthConstraintLandscape3;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
      [v30 activateConstraints:v34];
    }

    [(ICStyleSelectorViewController *)self populateStyleScrollView];
    [(ICStyleSelectorViewController *)self updateNamedStyleSelectedState];
    [(ICStyleSelectorViewController *)self updateStyleSelectionHighlightAnimated:0];
    [(ICStyleSelectorViewController *)self setConfiguredForLandscape:v6];
  }
}

- (void)updateStyleSelectionHighlightAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v42 = *MEMORY[0x277D85DE8];
  styleSelectionHighlight = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [styleSelectionHighlight frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  currentStyles = [(ICStyleSelectorViewController *)self currentStyles];
  firstIndex = [currentStyles firstIndex];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  styleButtons = [(ICStyleSelectorViewController *)self styleButtons];
  v17 = [styleButtons countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(styleButtons);
        }

        if ([*(*(&v37 + 1) + 8 * v20) tag] == firstIndex)
        {
          v21 = 1;
          goto LABEL_11;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [styleButtons countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_11:

  currentStyles2 = [(ICStyleSelectorViewController *)self currentStyles];
  v23 = [currentStyles2 count];

  v24 = 0.0;
  if (v21 && v23 == 1)
  {
    v25 = [(ICStyleSelectorViewController *)self styleButtonForStyle:firstIndex];
    [v25 frame];
    v7 = v26;
    v9 = v27;
    v11 = v28;
    v13 = v29;

    v24 = 1.0;
  }

  styleSelectionHighlight2 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  v31 = styleSelectionHighlight2;
  if (animatedCopy)
  {
    [styleSelectionHighlight2 alpha];
    v33 = v32;

    if (v24 != 0.0 && v33 == 0.0)
    {
      styleSelectionHighlight3 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
      [styleSelectionHighlight3 setFrame:{v7, v9, v11, v13}];
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __71__ICStyleSelectorViewController_updateStyleSelectionHighlightAnimated___block_invoke;
    v36[3] = &unk_2781ADDD0;
    v36[4] = self;
    *&v36[5] = v7;
    *&v36[6] = v9;
    *&v36[7] = v11;
    *&v36[8] = v13;
    *&v36[9] = v24;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:0 delay:v36 options:0 mass:2.0 stiffness:0.0 damping:1.0 initialVelocity:500.0 animations:37.0 completion:0.0];
  }

  else
  {
    [styleSelectionHighlight2 setFrame:{v7, v9, v11, v13}];

    styleSelectionHighlight4 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
    [styleSelectionHighlight4 setAlpha:v24];
  }
}

void __71__ICStyleSelectorViewController_updateStyleSelectionHighlightAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) styleSelectionHighlight];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = *(a1 + 72);
  v8 = [*(a1 + 32) styleSelectionHighlight];
  [v8 setAlpha:v7];
}

- (void)updateNamedStyleSelectedState
{
  v26 = *MEMORY[0x277D85DE8];
  currentStyles = [(ICStyleSelectorViewController *)self currentStyles];
  v4 = [currentStyles count];

  if (v4 == 1)
  {
    currentStyles2 = [(ICStyleSelectorViewController *)self currentStyles];
    firstIndex = [currentStyles2 firstIndex];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    styleButtons = [(ICStyleSelectorViewController *)self styleButtons];
    v8 = [styleButtons countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(styleButtons);
          }

          [*(*(&v20 + 1) + 8 * i) setSelected:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "tag") == firstIndex}];
        }

        v9 = [styleButtons countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    styleButtons = [(ICStyleSelectorViewController *)self styleButtons];
    v12 = [styleButtons countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(styleButtons);
          }

          [*(*(&v16 + 1) + 8 * j) setSelected:0];
        }

        v13 = [styleButtons countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)updateListStyleSelectedState
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(ICStyleSelectorViewController *)self listsContainer:0];
  subviews = [v3 subviews];

  v5 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        objc_opt_class();
        v9 = ICDynamicCast();
        if (v9)
        {
          currentStyles = [(ICStyleSelectorViewController *)self currentStyles];
          if ([currentStyles count] == 1)
          {
            v11 = [v9 tag];
            currentStyles2 = [(ICStyleSelectorViewController *)self currentStyles];
            [v9 setSelected:{v11 == objc_msgSend(currentStyles2, "firstIndex")}];
          }

          else
          {
            [v9 setSelected:0];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)populateStyleScrollView
{
  traitCollection = [(ICStyleSelectorViewController *)self traitCollection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__ICStyleSelectorViewController_populateStyleScrollView__block_invoke;
  v4[3] = &unk_2781ABCF8;
  v4[4] = self;
  [traitCollection ic_performAsCurrent:v4];
}

void __56__ICStyleSelectorViewController_populateStyleScrollView__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v1 = [*(a1 + 32) styleButtons];
  v2 = [v1 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v59;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v59 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v58 + 1) + 8 * i) removeFromSuperview];
      }

      v3 = [v1 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v3);
  }

  v47 = [MEMORY[0x277CBEB18] array];
  v6 = [*(a1 + 32) delegate];
  v46 = [v6 styleSelectorShouldDisableTextStyles:*(a1 + 32)];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [*(a1 + 32) styles];
  v48 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v48)
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
    v45 = *v55;
    v44 = *MEMORY[0x277D740A8];
    v43 = *MEMORY[0x277D740C0];
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        v62 = v44;
        v52 = v11;
        v13 = [*(a1 + 32) fontForICTTNamedStyle:{objc_msgSend(v12, "ttStyle")}];
        v63 = v13;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

        v14 = objc_alloc(MEMORY[0x277CCA898]);
        v15 = [v12 name];
        v16 = [v14 initWithString:v15 attributes:v51];

        [v16 size];
        v18 = v17;
        [*(a1 + 32) styleButtonPadding];
        v20 = v18 + v19 * 2.0;
        v67.origin.x = x;
        v67.origin.y = y;
        v67.size.width = width;
        v67.size.height = height;
        MaxX = CGRectGetMaxX(v67);
        v22 = [*(a1 + 32) scrollViewHeightConstraint];
        [v22 constant];
        v24 = v23;

        v68.origin.y = 0.0;
        v68.origin.x = MaxX;
        v68.size.width = v20;
        v68.size.height = v24;
        v69 = CGRectIntegral(v68);
        x = v69.origin.x;
        y = v69.origin.y;
        width = v69.size.width;
        height = v69.size.height;
        v25 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v69.origin.x, v69.origin.y, v69.size.width, v69.size.height}];
        [v25 setTag:{objc_msgSend(v12, "ttStyle")}];
        v50 = [MEMORY[0x277D75348] labelColor];
        v49 = [MEMORY[0x277D75348] secondaryLabelColor];
        v26 = [MEMORY[0x277D75348] systemWhiteColor];
        v27 = [MEMORY[0x277D75348] systemGrayColor];
        v28 = [v16 length];
        v29 = [v16 mutableCopy];
        [v29 addAttribute:v43 value:v50 range:{0, v28}];
        [v25 setAttributedTitle:v29 forState:0];
        v30 = [v16 mutableCopy];
        [v30 addAttribute:v43 value:v49 range:{0, v28}];
        [v25 setAttributedTitle:v30 forState:1];
        v31 = [v16 mutableCopy];
        [v31 addAttribute:v43 value:v26 range:{0, v28}];
        [v25 setAttributedTitle:v31 forState:4];
        v32 = [v16 mutableCopy];
        [v32 addAttribute:v43 value:v27 range:{0, v28}];
        [v25 setAttributedTitle:v32 forState:2];
        [v25 addTarget:*(a1 + 32) action:sel_namedStyleButtonAction_ forControlEvents:64];
        [v25 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
        v33 = [v25 titleLabel];
        [v33 setTextAlignment:1];

        [v25 setEnabled:v46 ^ 1u];
        [v47 addObject:v25];
        v34 = [*(a1 + 32) styleScrollView];
        [v34 addSubview:v25];

        v11 = v52 + 1;
      }

      while (v48 != v52 + 1);
      v48 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v48);
  }

  v35 = [v47 lastObject];
  [v35 frame];
  v36 = CGRectGetMaxX(v70);
  v37 = [*(a1 + 32) styleScrollView];
  [v37 frame];
  v39 = v38;
  v40 = [*(a1 + 32) styleScrollView];
  [v40 setContentSize:{v36, v39}];

  v41 = [v47 copy];
  [*(a1 + 32) setStyleButtons:v41];
}

- (void)namedStyleButtonAction:(id)action
{
  v4 = [action tag];

  [(ICStyleSelectorViewController *)self selectNamedStyle:v4];
}

- (void)selectNamedStyle:(unsigned int)style
{
  v3 = *&style;
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:style];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v5 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:1];

  delegate = [(ICStyleSelectorViewController *)self delegate];
  [delegate styleSelector:self didSelectStyle:v3];
}

- (id)styleButtonForStyle:(unsigned int)style
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  styleButtons = [(ICStyleSelectorViewController *)self styleButtons];
  v5 = [styleButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    styleCopy = style;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(styleButtons);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 tag] == styleCopy)
        {
          v5 = v9;
          goto LABEL_11;
        }
      }

      v5 = [styleButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)updateButtonEnabledState
{
  delegate = [(ICStyleSelectorViewController *)self delegate];
  v4 = [delegate styleSelectorCanIndentLeft:self];

  indentLeftButton = [(ICStyleSelectorViewController *)self indentLeftButton];
  [indentLeftButton setEnabled:v4];

  delegate2 = [(ICStyleSelectorViewController *)self delegate];
  v7 = [delegate2 styleSelectorCanIndentRight:self];

  indentRightButton = [(ICStyleSelectorViewController *)self indentRightButton];
  [indentRightButton setEnabled:v7];

  v9 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v9, 0);
}

- (void)setUpNonStyleButtons
{
  v54 = *MEMORY[0x277D85DE8];
  delegate = [(ICStyleSelectorViewController *)self delegate];
  v4 = [delegate presentingViewControllerForStyleSelector:self];
  view = [v4 view];
  tintColor = [view tintColor];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
    v52[0] = biusContainer;
    emphasisContainer = [(ICStyleSelectorViewController *)self emphasisContainer];
    v52[1] = emphasisContainer;
    listsContainer = [(ICStyleSelectorViewController *)self listsContainer];
    v52[2] = listsContainer;
    indentationContainer = [(ICStyleSelectorViewController *)self indentationContainer];
    v52[3] = indentationContainer;
    blockQuoteContainer = [(ICStyleSelectorViewController *)self blockQuoteContainer];
    v52[4] = blockQuoteContainer;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:5];

    v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v13)
    {
      v14 = *v46;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v45 + 1) + 8 * i) ic_applyRoundedCorners];
        }

        v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    biusContainer2 = [(ICStyleSelectorViewController *)self biusContainer];
    v50[0] = biusContainer2;
    listsContainer2 = [(ICStyleSelectorViewController *)self listsContainer];
    v50[1] = listsContainer2;
    indentationContainer2 = [(ICStyleSelectorViewController *)self indentationContainer];
    v50[2] = indentationContainer2;
    blockQuoteContainer2 = [(ICStyleSelectorViewController *)self blockQuoteContainer];
    v50[3] = blockQuoteContainer2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];

    v20 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v20)
    {
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v41 + 1) + 8 * j) ic_applyRoundedCorners];
        }

        v20 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v20);
    }
  }

  objc_initWeak(&location, self);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  nonStyleButtons = [(ICStyleSelectorViewController *)self nonStyleButtons];
  v24 = [nonStyleButtons countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v24)
  {
    v25 = *v37;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(nonStyleButtons);
        }

        v27 = *(*(&v36 + 1) + 8 * k);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __53__ICStyleSelectorViewController_setUpNonStyleButtons__block_invoke;
        v32[3] = &unk_2781ADDF8;
        v33 = tintColor;
        objc_copyWeak(&v35, &location);
        selfCopy = self;
        [v27 setConfigurationUpdateHandler:v32];
        objc_destroyWeak(&v35);
      }

      v24 = [nonStyleButtons countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v24);
  }

  styleSelectionHighlight = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [styleSelectionHighlight setBackgroundColor:tintColor];

  indentationContainer3 = [(ICStyleSelectorViewController *)self indentationContainer];
  [indentationContainer3 setSemanticContentAttribute:3];

  indentLeftButton = [(ICStyleSelectorViewController *)self indentLeftButton];
  [indentLeftButton setSemanticContentAttribute:3];

  indentRightButton = [(ICStyleSelectorViewController *)self indentRightButton];
  [indentRightButton setSemanticContentAttribute:3];

  objc_destroyWeak(&location);
}

void __53__ICStyleSelectorViewController_setUpNonStyleButtons__block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = [MEMORY[0x277D751C0] clearConfiguration];
  if ([v15 isSelected])
  {
    [v4 setBackgroundColor:*(a1 + 32)];
  }

  else
  {
    if ([v15 isHighlighted])
    {
      [MEMORY[0x277D75348] systemFillColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    }
    v5 = ;
    [v4 setBackgroundColor:v5];
  }

  [v3 setBackground:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained imageForButton:v15];
  [v3 setImage:v7];

  [v15 setConfiguration:v3];
  v8 = [*(a1 + 40) blockQuoteButton];

  if (v8 == v15)
  {
    [v15 setEnabled:1];
  }

  else
  {
    v9 = [*(a1 + 40) delegate];
    [v15 setEnabled:{objc_msgSend(v9, "styleSelectorShouldDisableTextStyles:", *(a1 + 40)) ^ 1}];
  }

  if ([v15 isSelected])
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v10 = ;
  [v15 setTintColor:v10];

  v11 = [*(a1 + 40) emphasisColorPickerButton];

  if (v11 == v15)
  {
    ic_currentEmphasisColorTypeDefault();
    v12 = NSStringForEmphasisColorType();
    if ([v12 length])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 40) emphasisColorPickerButton];
    [v14 setAccessibilityValue:v13];
  }
}

- (id)imageNameForButton:(id)button
{
  buttonCopy = button;
  boldButton = [(ICStyleSelectorViewController *)self boldButton];

  if (boldButton == buttonCopy)
  {
    v16 = @"bold";
  }

  else
  {
    italicButton = [(ICStyleSelectorViewController *)self italicButton];

    if (italicButton == buttonCopy)
    {
      v16 = @"italic";
    }

    else
    {
      underlineButton = [(ICStyleSelectorViewController *)self underlineButton];

      if (underlineButton == buttonCopy)
      {
        v16 = @"underline";
      }

      else
      {
        strikethroughButton = [(ICStyleSelectorViewController *)self strikethroughButton];

        if (strikethroughButton == buttonCopy)
        {
          v16 = @"strikethrough";
        }

        else
        {
          dashedListButton = [(ICStyleSelectorViewController *)self dashedListButton];

          if (dashedListButton == buttonCopy)
          {
            v16 = @"list.dash";
          }

          else
          {
            numberedListButton = [(ICStyleSelectorViewController *)self numberedListButton];

            if (numberedListButton == buttonCopy)
            {
              v16 = @"list.number";
            }

            else
            {
              bulletedListButton = [(ICStyleSelectorViewController *)self bulletedListButton];

              if (bulletedListButton == buttonCopy)
              {
                v16 = @"list.bullet";
              }

              else
              {
                indentLeftButton = [(ICStyleSelectorViewController *)self indentLeftButton];

                if (indentLeftButton == buttonCopy)
                {
                  v16 = @"decrease.indent";
                }

                else
                {
                  indentRightButton = [(ICStyleSelectorViewController *)self indentRightButton];

                  if (indentRightButton == buttonCopy)
                  {
                    v16 = @"increase.indent";
                  }

                  else
                  {
                    blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];

                    if (blockQuoteButton == buttonCopy)
                    {
                      v16 = @"quotelevel.square.fill";
                    }

                    else if (ICInternalSettingsIsEmphasisEnabled() && ([(ICStyleSelectorViewController *)self emphasisButton], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == buttonCopy))
                    {
                      v16 = @"highlighter";
                    }

                    else
                    {
                      if (ICInternalSettingsIsEmphasisEnabled())
                      {
                        [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
                      }

                      v16 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v16;
}

- (id)imageForButton:(id)button
{
  v34[1] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  emphasisColorPickerButton = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];

  if (emphasisColorPickerButton != buttonCopy)
  {
    v6 = [(ICStyleSelectorViewController *)self imageNameForButton:buttonCopy];
    if (!v6)
    {
      v12 = 0;
      goto LABEL_26;
    }

    v7 = *MEMORY[0x277D76A28];
    v8 = *MEMORY[0x277D76818];
    biusContainer = [(ICStyleSelectorViewController *)self biusContainer];
    subviews = [biusContainer subviews];
    v11 = [subviews containsObject:buttonCopy];

    if (v11)
    {
      v12 = [MEMORY[0x277D755B8] ic_systemImageNamed:v6 textStyle:v7 scale:3 maxContentSizeCategory:v8];
LABEL_25:

      goto LABEL_26;
    }

    blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];

    isSelected = [buttonCopy isSelected];
    if (blockQuoteButton != buttonCopy)
    {
      if (isSelected)
      {
        systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
        v31 = systemWhiteColor;
        v19 = MEMORY[0x277CBEA60];
        v20 = &v31;
      }

      else
      {
        if ([buttonCopy isEnabled])
        {
          systemWhiteColor = [MEMORY[0x277D75348] labelColor];
          v30[0] = systemWhiteColor;
          secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
          v30[1] = secondaryLabelColor;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

LABEL_20:
          v27 = [MEMORY[0x277D755B8] ic_hierarchicalSystemImageNamed:v6 colors:v25 fontTextStyle:v7 scale:3 weight:4 maxContentSizeCategory:v8];
LABEL_24:
          v12 = v27;

          goto LABEL_25;
        }

        systemWhiteColor = [MEMORY[0x277D75348] secondaryLabelColor];
        v29 = systemWhiteColor;
        v19 = MEMORY[0x277CBEA60];
        v20 = &v29;
      }

      v25 = [v19 arrayWithObjects:v20 count:1];
      goto LABEL_20;
    }

    if (isSelected)
    {
      systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
      v34[0] = systemWhiteColor2;
      v22 = MEMORY[0x277CBEA60];
      v23 = v34;
    }

    else
    {
      if ([buttonCopy isEnabled])
      {
        systemWhiteColor2 = [MEMORY[0x277D75348] labelColor];
        v33[0] = systemWhiteColor2;
        tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
        v33[1] = tertiaryLabelColor;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

LABEL_23:
        v27 = [MEMORY[0x277D755B8] ic_hierarchicalNonSystemImageNamed:v6 colors:v25 fontTextStyle:*MEMORY[0x277D76918] scale:3 weight:4 maxContentSizeCategory:*MEMORY[0x277D76828]];
        goto LABEL_24;
      }

      systemWhiteColor2 = [MEMORY[0x277D75348] tertiaryLabelColor];
      v32 = systemWhiteColor2;
      v22 = MEMORY[0x277CBEA60];
      v23 = &v32;
    }

    v25 = [v22 arrayWithObjects:v23 count:1];
    goto LABEL_23;
  }

  delegate = [(ICStyleSelectorViewController *)self delegate];
  currentEmphasisType = [delegate currentEmphasisType];

  if (!currentEmphasisType)
  {
    ic_currentEmphasisColorTypeDefault();
  }

  v15 = MEMORY[0x277D755B8];
  v6 = ICColorForEmphasisColorType();
  v12 = [v15 ic_makeCircularImageWithColor:v6 diameter:12.0];
LABEL_26:

  return v12;
}

- (void)applyAccessibilityInfo
{
  v80 = *MEMORY[0x277D85DE8];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    popoverPresentationController = [(ICStyleSelectorViewController *)self popoverPresentationController];
    [popoverPresentationController setPassthroughViews:0];
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Hide format menu" value:&stru_282757698 table:0];
  closeButton = [(ICStyleSelectorViewController *)self closeButton];
  [closeButton setAccessibilityLabel:v5];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle2 localizedStringForKey:@"bold" value:&stru_282757698 table:0];
  boldButton = [(ICStyleSelectorViewController *)self boldButton];
  [boldButton setAccessibilityLabel:v8];

  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle3 localizedStringForKey:@"italic" value:&stru_282757698 table:0];
  italicButton = [(ICStyleSelectorViewController *)self italicButton];
  [italicButton setAccessibilityLabel:v11];

  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [mainBundle4 localizedStringForKey:@"underline" value:&stru_282757698 table:0];
  underlineButton = [(ICStyleSelectorViewController *)self underlineButton];
  [underlineButton setAccessibilityLabel:v14];

  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [mainBundle5 localizedStringForKey:@"strikethrough" value:&stru_282757698 table:0];
  strikethroughButton = [(ICStyleSelectorViewController *)self strikethroughButton];
  [strikethroughButton setAccessibilityLabel:v17];

  mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
  v20 = [mainBundle6 localizedStringForKey:@"dashed list" value:&stru_282757698 table:0];
  dashedListButton = [(ICStyleSelectorViewController *)self dashedListButton];
  [dashedListButton setAccessibilityLabel:v20];

  mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [mainBundle7 localizedStringForKey:@"numbered list" value:&stru_282757698 table:0];
  numberedListButton = [(ICStyleSelectorViewController *)self numberedListButton];
  [numberedListButton setAccessibilityLabel:v23];

  mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle8 localizedStringForKey:@"bulleted list" value:&stru_282757698 table:0];
  bulletedListButton = [(ICStyleSelectorViewController *)self bulletedListButton];
  [bulletedListButton setAccessibilityLabel:v26];

  mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
  v29 = [mainBundle9 localizedStringForKey:@"outdent" value:&stru_282757698 table:0];
  indentLeftButton = [(ICStyleSelectorViewController *)self indentLeftButton];
  [indentLeftButton setAccessibilityLabel:v29];

  mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [mainBundle10 localizedStringForKey:@"indent" value:&stru_282757698 table:0];
  indentRightButton = [(ICStyleSelectorViewController *)self indentRightButton];
  [indentRightButton setAccessibilityLabel:v32];

  mainBundle11 = [MEMORY[0x277CCA8D8] mainBundle];
  v35 = [mainBundle11 localizedStringForKey:@"block quote" value:&stru_282757698 table:0];
  blockQuoteButton = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [blockQuoteButton setAccessibilityLabel:v35];

  mainBundle12 = [MEMORY[0x277CCA8D8] mainBundle];
  v38 = [mainBundle12 localizedStringForKey:@"Highlight" value:&stru_282757698 table:0];
  emphasisButton = [(ICStyleSelectorViewController *)self emphasisButton];
  [emphasisButton setAccessibilityLabel:v38];

  mainBundle13 = [MEMORY[0x277CCA8D8] mainBundle];
  v41 = [mainBundle13 localizedStringForKey:@"Highlight color" value:&stru_282757698 table:0];
  emphasisColorPickerButton = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
  [emphasisColorPickerButton setAccessibilityLabel:v41];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  styleButtons = [(ICStyleSelectorViewController *)self styleButtons];
  v44 = [styleButtons countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v76;
    do
    {
      v47 = 0;
      do
      {
        if (*v76 != v46)
        {
          objc_enumerationMutation(styleButtons);
        }

        [*(*(&v75 + 1) + 8 * v47++) _accessibilitySetIsSpeakThisElement:1];
      }

      while (v45 != v47);
      v45 = [styleButtons countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v45);
  }

  boldButton2 = [(ICStyleSelectorViewController *)self boldButton];
  [boldButton2 _accessibilitySetIsSpeakThisElement:1];

  italicButton2 = [(ICStyleSelectorViewController *)self italicButton];
  [italicButton2 _accessibilitySetIsSpeakThisElement:1];

  underlineButton2 = [(ICStyleSelectorViewController *)self underlineButton];
  [underlineButton2 _accessibilitySetIsSpeakThisElement:1];

  strikethroughButton2 = [(ICStyleSelectorViewController *)self strikethroughButton];
  [strikethroughButton2 _accessibilitySetIsSpeakThisElement:1];

  dashedListButton2 = [(ICStyleSelectorViewController *)self dashedListButton];
  [dashedListButton2 _accessibilitySetIsSpeakThisElement:1];

  numberedListButton2 = [(ICStyleSelectorViewController *)self numberedListButton];
  [numberedListButton2 _accessibilitySetIsSpeakThisElement:1];

  bulletedListButton2 = [(ICStyleSelectorViewController *)self bulletedListButton];
  [bulletedListButton2 _accessibilitySetIsSpeakThisElement:1];

  indentLeftButton2 = [(ICStyleSelectorViewController *)self indentLeftButton];
  [indentLeftButton2 _accessibilitySetIsSpeakThisElement:1];

  indentRightButton2 = [(ICStyleSelectorViewController *)self indentRightButton];
  [indentRightButton2 _accessibilitySetIsSpeakThisElement:1];

  blockQuoteButton2 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [blockQuoteButton2 _accessibilitySetIsSpeakThisElement:1];

  emphasisButton2 = [(ICStyleSelectorViewController *)self emphasisButton];
  [emphasisButton2 _accessibilitySetIsSpeakThisElement:1];

  emphasisColorPickerButton2 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
  [emphasisColorPickerButton2 _accessibilitySetIsSpeakThisElement:1];

  headerView = [(ICStyleSelectorViewController *)self headerView];
  [headerView setShowsLargeContentViewer:1];

  headerView2 = [(ICStyleSelectorViewController *)self headerView];
  v62 = objc_alloc_init(MEMORY[0x277D756C8]);
  [headerView2 addInteraction:v62];

  headerLabel = [(ICStyleSelectorViewController *)self headerLabel];
  text = [headerLabel text];
  headerView3 = [(ICStyleSelectorViewController *)self headerView];
  [headerView3 setLargeContentTitle:text];

  closeButton2 = [(ICStyleSelectorViewController *)self closeButton];
  [closeButton2 setShowsLargeContentViewer:1];

  closeButton3 = [(ICStyleSelectorViewController *)self closeButton];
  v68 = objc_alloc_init(MEMORY[0x277D756C8]);
  [closeButton3 addInteraction:v68];

  mainBundle14 = [MEMORY[0x277CCA8D8] mainBundle];
  v70 = [mainBundle14 localizedStringForKey:@"Close" value:&stru_282757698 table:0];
  closeButton4 = [(ICStyleSelectorViewController *)self closeButton];
  [closeButton4 setLargeContentTitle:v70];

  closeButton5 = [(ICStyleSelectorViewController *)self closeButton];
  currentImage = [closeButton5 currentImage];
  closeButton6 = [(ICStyleSelectorViewController *)self closeButton];
  [closeButton6 setLargeContentImage:currentImage];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ICStyleSelectorViewController *)self applyAccessibilityInfo];
}

- (ICStyleSelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)elementForAXFocusOnDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_elementForAXFocusOnDismissal);

  return WeakRetained;
}

- (UIScrollView)styleScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_styleScrollView);

  return WeakRetained;
}

- (UIView)biusContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_biusContainer);

  return WeakRetained;
}

- (UIView)emphasisContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_emphasisContainer);

  return WeakRetained;
}

- (UIView)listsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_listsContainer);

  return WeakRetained;
}

- (UIView)indentationContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_indentationContainer);

  return WeakRetained;
}

- (UIView)blockQuoteContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_blockQuoteContainer);

  return WeakRetained;
}

- (UIView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

- (UILabel)headerLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_headerLabel);

  return WeakRetained;
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (UIButton)dashedListButton
{
  WeakRetained = objc_loadWeakRetained(&self->_dashedListButton);

  return WeakRetained;
}

- (UIButton)numberedListButton
{
  WeakRetained = objc_loadWeakRetained(&self->_numberedListButton);

  return WeakRetained;
}

- (UIButton)bulletedListButton
{
  WeakRetained = objc_loadWeakRetained(&self->_bulletedListButton);

  return WeakRetained;
}

- (UIButton)indentLeftButton
{
  WeakRetained = objc_loadWeakRetained(&self->_indentLeftButton);

  return WeakRetained;
}

- (UIButton)indentRightButton
{
  WeakRetained = objc_loadWeakRetained(&self->_indentRightButton);

  return WeakRetained;
}

- (UIButton)blockQuoteButton
{
  WeakRetained = objc_loadWeakRetained(&self->_blockQuoteButton);

  return WeakRetained;
}

- (UIButton)emphasisButton
{
  WeakRetained = objc_loadWeakRetained(&self->_emphasisButton);

  return WeakRetained;
}

- (UIButton)emphasisColorPickerButton
{
  WeakRetained = objc_loadWeakRetained(&self->_emphasisColorPickerButton);

  return WeakRetained;
}

- (NSLayoutConstraint)listsContainerBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_listsContainerBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)listsContainerTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_listsContainerTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)biusContainerTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_biusContainerTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)scrollViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)scrollViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewHeightConstraint);

  return WeakRetained;
}

@end