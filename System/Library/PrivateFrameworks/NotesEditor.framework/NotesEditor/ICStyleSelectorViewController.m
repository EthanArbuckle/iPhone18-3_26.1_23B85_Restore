@interface ICStyleSelectorViewController
- (BOOL)currentNamedStylesContainsStyle:(unsigned int)a3;
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
- (double)preferredHeightForTraitCollection:(id)a3;
- (double)styleButtonPadding;
- (id)biusStyleActionWithStyleBIUS:(unint64_t)a3;
- (id)blockQuoteMenu;
- (id)elementForAXFocusOnDismissal;
- (id)emphasisColorActionWithType:(int64_t)a3 bordered:(BOOL)a4 selectionTogglesEmphasis:(BOOL)a5;
- (id)emphasisColorImageWithType:(int64_t)a3 bordered:(BOOL)a4;
- (id)emphasisMenu;
- (id)fontForICTTNamedStyle:(unsigned int)a3;
- (id)imageForButton:(id)a3;
- (id)imageNameForButton:(id)a3;
- (id)makeInlineMenu;
- (id)makeShortcutMenu;
- (id)namedStyleActionWithNamedStyle:(unsigned int)a3;
- (id)nibBundle;
- (id)styleButtonForStyle:(unsigned int)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)applyAccessibilityInfo;
- (void)applyFixedEmphasisColor:(id)a3;
- (void)configureForOrientation;
- (void)configureForPopover;
- (void)configureViewWithEmphasis;
- (void)dealloc;
- (void)didSelectBulletedList:(id)a3;
- (void)didSelectDashedList:(id)a3;
- (void)didSelectDone:(id)a3;
- (void)didSelectNumberedList:(id)a3;
- (void)indentLeft:(id)a3;
- (void)indentRight:(id)a3;
- (void)namedStyleButtonAction:(id)a3;
- (void)populateStyleScrollView;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)registerForTraitChanges;
- (void)scrollCurrentStyleToVisible:(BOOL)a3;
- (void)selectNamedStyle:(unsigned int)a3;
- (void)setCurrentBIUS:(unint64_t)a3;
- (void)setCurrentStyles:(id)a3 bius:(unint64_t)a4 animated:(BOOL)a5;
- (void)setStyles:(id)a3;
- (void)setUpNonStyleButtons;
- (void)toggleBIUS:(id)a3;
- (void)toggleBlockQuote:(id)a3;
- (void)toggleEmphasis:(id)a3;
- (void)updateButtonEnabledState;
- (void)updateHeaderVisibility;
- (void)updateListStyleSelectedState;
- (void)updateNamedStyleSelectedState;
- (void)updateStyleSelectionHighlightAnimated:(BOOL)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

  v4 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [v4 setAlpha:0.0];

  v5 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [v5 ic_applyRoundedCorners];

  v6 = [(ICStyleSelectorViewController *)self styleScrollView];
  v7 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [v6 addSubview:v7];

  v8 = [(ICStyleSelectorViewController *)self view];
  [v8 layoutMargins];
  v10 = v9;
  v11 = [(ICStyleSelectorViewController *)self view];
  [v11 layoutMargins];
  v13 = v12;
  v14 = [(ICStyleSelectorViewController *)self styleScrollView];
  [v14 setContentInset:{0.0, v10, 0.0, v13}];

  v15 = [(ICStyleSelectorViewController *)self view];
  [v15 setAutoresizingMask:0];

  v16 = [(ICStyleSelectorViewController *)self view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [MEMORY[0x277D75220] buttonWithType:7];
  [v17 addTarget:self action:sel_didSelectDone_ forControlEvents:64];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(ICStyleSelectorViewController *)self headerView];
  [v18 addSubview:v17];

  [(ICStyleSelectorViewController *)self setCloseButton:v17];
  v40 = MEMORY[0x277CCAAD0];
  v41 = [(ICStyleSelectorViewController *)self headerView];
  v19 = [v41 layoutMarginsGuide];
  v20 = [v19 trailingAnchor];
  v21 = [(UIButton *)self->_closeButton trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:8.0];
  v45[0] = v22;
  v42 = v17;
  v23 = [v17 centerYAnchor];
  v24 = [(ICStyleSelectorViewController *)self headerView];
  v25 = [v24 centerYAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v45[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v40 activateConstraints:v27];

  v28 = [MEMORY[0x277D36978] titleStyle];
  v44[0] = v28;
  v29 = [MEMORY[0x277D36978] headingStyle];
  v44[1] = v29;
  v30 = [MEMORY[0x277D36978] subheadingStyle];
  v44[2] = v30;
  v31 = [MEMORY[0x277D36978] bodyStyle];
  v44[3] = v31;
  v32 = [MEMORY[0x277D36978] fixedWidthStyle];
  v44[4] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:5];
  [(ICStyleSelectorViewController *)self setStyles:v33];

  if ([(ICStyleSelectorViewController *)self ic_isRTL])
  {
    v34 = [(ICStyleSelectorViewController *)self styles];
    v35 = [v34 reverseObjectEnumerator];
    v36 = [v35 allObjects];
    [(ICStyleSelectorViewController *)self setStyles:v36];

    v37 = [(ICStyleSelectorViewController *)self headerLabel];
    [v37 setTextAlignment:4];
  }

  v38 = [(ICStyleSelectorViewController *)self view];
  [v38 intrinsicContentSize];
  [(ICStyleSelectorViewController *)self setPreferredContentSize:?];

  v39 = [MEMORY[0x277CCAB98] defaultCenter];
  [v39 addObserver:self selector:sel_applyAccessibilityInfo name:*MEMORY[0x277D765F0] object:0];

  [(ICStyleSelectorViewController *)self setConfiguredForPopover:0];
  [(ICStyleSelectorViewController *)self applyAccessibilityInfo];
  [(ICStyleSelectorViewController *)self configureForOrientation];
  [(ICStyleSelectorViewController *)self registerForTraitChanges];
}

- (void)registerForTraitChanges
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277D75C80] ic_traitsAffectingSizeAndColor];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ICStyleSelectorViewController_registerForTraitChanges__block_invoke;
  v5[3] = &unk_2781ACDB8;
  objc_copyWeak(&v6, &location);
  v4 = [(ICStyleSelectorViewController *)self registerForTraitChanges:v3 withHandler:v5];

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
  v3 = [(ICStyleSelectorViewController *)self view];
  [v3 setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
  v9.receiver = self;
  v9.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v9 updateViewConstraints];
  [(ICStyleSelectorViewController *)self updateHeaderVisibility];
  [(ICStyleSelectorViewController *)self configureForOrientation];
  v3 = [(ICStyleSelectorViewController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v6 = [(ICStyleSelectorViewController *)self listsContainerBottomConstraint];
  [v6 setConstant:v5];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    [(ICStyleSelectorViewController *)self configureViewWithEmphasis];
  }

  else
  {
    v7 = [(ICStyleSelectorViewController *)self emphasisContainer];

    if (v7)
    {
      v8 = [(ICStyleSelectorViewController *)self emphasisContainer];
      [v8 removeFromSuperview];
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
    v3 = [(ICStyleSelectorViewController *)self view];
    v4 = v3;
    v5 = 20.0;
    v6 = 20.0;
    v7 = 20.0;
  }

  else
  {
    v8 = [(ICStyleSelectorViewController *)self traitCollection];
    if ([v8 verticalSizeClass] == 2)
    {
      v9 = 36.0;
    }

    else
    {
      v9 = 8.0;
    }

    v3 = [(ICStyleSelectorViewController *)self view];
    v4 = v3;
    v5 = 15.0;
    v7 = 15.0;
    v6 = v9;
  }

  [v3 setLayoutMargins:{0.0, v5, v6, v7}];

  v10 = [(ICStyleSelectorViewController *)self view];
  [v10 layoutMargins];
  v12 = v11;
  v13 = [(ICStyleSelectorViewController *)self view];
  [v13 layoutMargins];
  v15 = v14;
  v16 = [(ICStyleSelectorViewController *)self styleScrollView];
  [v16 setContentInset:{0.0, v12, 0.0, v15}];

  v17 = [(ICStyleSelectorViewController *)self view];
  [v17 layoutMargins];
  v19 = v18;
  v20 = [(ICStyleSelectorViewController *)self listsContainerBottomConstraint];
  [v20 setConstant:v19];

  [(ICStyleSelectorViewController *)self updateHeaderVisibility];
  v21 = [(ICStyleSelectorViewController *)self view];
  [v21 invalidateIntrinsicContentSize];

  [(ICStyleSelectorViewController *)self setUpNonStyleButtons];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(ICStyleSelectorViewController *)self styleScrollView];
  [v3 bounds];
  v5 = v4;
  v6 = [(ICStyleSelectorViewController *)self styleScrollView];
  [v6 contentSize];
  v8 = v7;

  if (v5 > v8)
  {
    v9 = [(ICStyleSelectorViewController *)self view];
    [v9 bounds];
    v11 = v10;
    v12 = [(ICStyleSelectorViewController *)self styleScrollView];
    [v12 contentSize];
    v14 = (v11 - v13) * 0.5;
    v15 = [(ICStyleSelectorViewController *)self styleScrollView];
    [v15 frame];
    v17 = -floor(v14 - v16);
    v18 = [(ICStyleSelectorViewController *)self styleScrollView];
    [v18 setContentOffset:{v17, 0.0}];
  }

  else
  {
    [(ICStyleSelectorViewController *)self scrollCurrentStyleToVisible:0];
  }

  v19 = [(ICStyleSelectorViewController *)self styleScrollView];
  [v19 setScrollEnabled:v5 <= v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v7 viewWillAppear:a3];
  if ([(ICStyleSelectorViewController *)self isPopover])
  {
    [(ICStyleSelectorViewController *)self configureForPopover];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

  v5 = [(ICStyleSelectorViewController *)self traitCollection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ICStyleSelectorViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_2781ABCF8;
  v6[4] = self;
  [v5 ic_performAsCurrent:v6];
}

uint64_t __48__ICStyleSelectorViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) populateStyleScrollView];
  [*(a1 + 32) updateNamedStyleSelectedState];
  v2 = *(a1 + 32);

  return [v2 applyAccessibilityInfo];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICStyleSelectorViewController;
  [(ICNAViewController *)&v6 viewDidAppear:a3];
  v4 = *MEMORY[0x277D76488];
  v5 = [(ICStyleSelectorViewController *)self view];
  UIAccessibilityPostNotification(v4, v5);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v5 viewWillDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76810] object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICStyleSelectorViewController;
  [(ICStyleSelectorViewController *)&v6 viewDidDisappear:a3];
  v4 = *MEMORY[0x277D76488];
  v5 = [(ICStyleSelectorViewController *)self elementForAXFocusOnDismissal];
  UIAccessibilityPostNotification(v4, v5);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  if (ICInternalSettingsIsEmphasisEnabled())
  {
    [(ICStyleSelectorViewController *)self setUpNonStyleButtons];
    v11.receiver = self;
    v11.super_class = ICStyleSelectorViewController;
    [(ICStyleSelectorViewController *)&v11 presentViewController:v9 animated:v5 completion:v8];
  }

  else
  {
    v10 = [(ICStyleSelectorViewController *)self delegate];
    [v10 styleSelector:self presentViewController:v9 animated:v5 completion:v8];
  }
}

- (void)configureForPopover
{
  v3 = [(ICStyleSelectorViewController *)self delegate];
  v4 = [v3 styleSelectorShouldUseCompactTopInset:self];

  if (v4)
  {
    v5 = 60.0;
  }

  else
  {
    v5 = 79.0;
  }

  v6 = [(ICStyleSelectorViewController *)self scrollViewTopConstraint];
  [v6 setConstant:v5];

  if (![(ICStyleSelectorViewController *)self configuredForPopover])
  {
    v7 = [(ICStyleSelectorViewController *)self biusContainerTopConstraint];
    [v7 setConstant:12.0];

    v8 = [(ICStyleSelectorViewController *)self listsContainerTopConstraint];
    [v8 setConstant:12.0];

    v9 = [(ICStyleSelectorViewController *)self listsContainerBottomConstraint];
    [v9 setConstant:16.0];

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
    v4 = [(ICStyleSelectorViewController *)self traitCollection];
    if ([v4 verticalSizeClass] == 1)
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

- (void)didSelectDone:(id)a3
{
  v4 = [(ICStyleSelectorViewController *)self delegate];
  [v4 styleSelectorDidCancel:self];
}

- (void)toggleBlockQuote:(id)a3
{
  v4 = [(ICStyleSelectorViewController *)self delegate];
  [v4 styleSelectorToggleBlockQuote:self];

  v7 = [(ICStyleSelectorViewController *)self delegate];
  v5 = [v7 styleSelectorSelectionHasBlockQuote:self];
  v6 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [v6 setSelected:v5];
}

- (void)toggleBIUS:(id)a3
{
  v4 = a3;
  [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];
  v6 = [(ICStyleSelectorViewController *)self delegate];
  v5 = [v4 tag];

  [v6 styleSelector:self toggleBIUS:v5];
}

- (void)indentLeft:(id)a3
{
  v4 = [(ICStyleSelectorViewController *)self delegate];
  [v4 styleSelectorDidIndentLeft:self];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)indentRight:(id)a3
{
  v4 = [(ICStyleSelectorViewController *)self delegate];
  [v4 styleSelectorDidIndentRight:self];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)didSelectDashedList:(id)a3
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:101];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v4 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:0];

  v5 = [(ICStyleSelectorViewController *)self delegate];
  [v5 styleSelector:self didSelectStyle:101];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)didSelectNumberedList:(id)a3
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:102];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v4 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:0];

  v5 = [(ICStyleSelectorViewController *)self delegate];
  [v5 styleSelector:self didSelectStyle:102];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)didSelectBulletedList:(id)a3
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:100];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v4 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:0];

  v5 = [(ICStyleSelectorViewController *)self delegate];
  [v5 styleSelector:self didSelectStyle:100];

  [(ICStyleSelectorViewController *)self updateButtonEnabledState];
}

- (void)setStyles:(id)a3
{
  v5 = a3;
  if (self->_styles != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styles, a3);
    [(ICStyleSelectorViewController *)self populateStyleScrollView];
    v5 = v6;
  }
}

- (void)setCurrentStyles:(id)a3 bius:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(ICStyleSelectorViewController *)self loadViewIfNeeded];
  [(ICStyleSelectorViewController *)self setCurrentBIUS:a4];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v8];

  [(ICStyleSelectorViewController *)self updateStyleSelectionHighlightAnimated:v5];
  [(ICStyleSelectorViewController *)self updateNamedStyleSelectedState];
  [(ICStyleSelectorViewController *)self updateListStyleSelectedState];
  [(ICStyleSelectorViewController *)self updateButtonEnabledState];

  [(ICStyleSelectorViewController *)self scrollCurrentStyleToVisible:v5];
}

- (void)setCurrentBIUS:(unint64_t)a3
{
  self->_currentBIUS = a3;
  v5 = [(ICStyleSelectorViewController *)self boldButton];
  [v5 setSelected:a3 & 1];

  v6 = [(ICStyleSelectorViewController *)self italicButton];
  [v6 setSelected:(a3 >> 1) & 1];

  v7 = [(ICStyleSelectorViewController *)self underlineButton];
  [v7 setSelected:(a3 >> 2) & 1];

  v8 = [(ICStyleSelectorViewController *)self strikethroughButton];
  [v8 setSelected:(a3 >> 3) & 1];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    v9 = [(ICStyleSelectorViewController *)self emphasisButton];
    [v9 setSelected:(a3 >> 4) & 1];
  }

  v10 = [(ICStyleSelectorViewController *)self delegate];
  v11 = [v10 styleSelectorSelectionHasBlockQuote:self];

  v12 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [v12 setSelected:v11];
}

- (UIButton)boldButton
{
  v2 = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [v2 viewWithTag:1];

  return v3;
}

- (UIButton)italicButton
{
  v2 = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [v2 viewWithTag:2];

  return v3;
}

- (UIButton)underlineButton
{
  v2 = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [v2 viewWithTag:4];

  return v3;
}

- (UIButton)strikethroughButton
{
  v2 = [(ICStyleSelectorViewController *)self biusContainer];
  v3 = [v2 viewWithTag:8];

  return v3;
}

- (double)preferredHeightForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(ICStyleSelectorViewController *)self headerView];
  [v5 frame];
  v6 = CGRectGetMaxY(v10) + 4.0 + 8.0;

  v7 = [v4 verticalSizeClass];
  v8 = 104.0;
  if (v7 == 2)
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

- (BOOL)currentNamedStylesContainsStyle:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(ICStyleSelectorViewController *)self currentStyles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__ICStyleSelectorViewController_currentNamedStylesContainsStyle___block_invoke;
  v6[3] = &unk_2781ADD58;
  v7 = a3;
  v6[4] = &v8;
  [v4 enumerateIndexesUsingBlock:v6];

  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
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

- (id)biusStyleActionWithStyleBIUS:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = NSStringForSymbolImageNameFromICStyleBIUS();
  v6 = [(ICStyleSelectorViewController *)self currentBIUSContainsStyle:a3];
  v7 = [MEMORY[0x277D755B8] ic_systemImageNamed:v5 textStyle:*MEMORY[0x277D76918] scale:-1];
  if (v6)
  {
    v8 = [MEMORY[0x277D75348] darkTextColor];
    v9 = [v7 imageWithTintColor:v8];

    v10 = [MEMORY[0x277D75348] whiteColor];
    v7 = [v9 ic_imageCenteredWithBackgroundColor:v10 size:34.0 cornerRadius:{34.0, 8.0}];
  }

  v11 = MEMORY[0x277D750C8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ICStyleSelectorViewController_biusStyleActionWithStyleBIUS___block_invoke;
  v15[3] = &unk_2781ADA48;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v12 = [v11 ic_actionWithImage:v7 handler:v15];
  v13 = [MEMORY[0x277D36978] icaxStyleDescriptionForBIUSStyle:a3];
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

- (id)namedStyleActionWithNamedStyle:(unsigned int)a3
{
  v3 = *&a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D36978] styleForNamedStyle:v3];
  v6 = MEMORY[0x277D750C8];
  v7 = [v5 attributedName];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__ICStyleSelectorViewController_namedStyleActionWithNamedStyle___block_invoke;
  v11[3] = &unk_2781ADD80;
  objc_copyWeak(&v12, &location);
  v13 = v3;
  v8 = [v6 ic_actionWithAttributedTitle:v7 handler:v11];

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

  v7 = [(ICStyleSelectorViewController *)self delegate];
  v8 = [v7 currentEmphasisType];

  if (v8)
  {
    v9 = [(ICStyleSelectorViewController *)self emphasisColorImageWithType:v8 bordered:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277D75710];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"Highlight" value:&stru_282757698 table:0];
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
  v4 = [MEMORY[0x277CCA898] ic_blockQuoteMenuItemAttributedString];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __47__ICStyleSelectorViewController_blockQuoteMenu__block_invoke;
  v16 = &unk_2781ADD08;
  objc_copyWeak(&v17, &location);
  v5 = [v3 ic_actionWithAttributedTitle:v4 handler:&v13];

  v6 = [(ICStyleSelectorViewController *)self delegate:v13];
  [v5 setState:{objc_msgSend(v6, "styleSelectorSelectionHasBlockQuote:", self)}];

  v7 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  v8 = [v7 accessibilityLabel];
  [v5 setAccessibilityLabel:v8];

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

- (void)toggleEmphasis:(id)a3
{
  v4 = [(ICStyleSelectorViewController *)self delegate];
  [v4 toggleEmphasis];

  v5 = [(ICStyleSelectorViewController *)self delegate];
  v6 = [v5 currentBIUSForStyleSelector];

  v7 = [(ICStyleSelectorViewController *)self emphasisButton];
  [v7 setSelected:(v6 >> 4) & 1];
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
  v3 = [(ICStyleSelectorViewController *)self boldButton];
  v9[0] = v3;
  v4 = [(ICStyleSelectorViewController *)self italicButton];
  v9[1] = v4;
  v5 = [(ICStyleSelectorViewController *)self underlineButton];
  v9[2] = v5;
  v6 = [(ICStyleSelectorViewController *)self strikethroughButton];
  v9[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  return v7;
}

- (NSArray)listButtons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICStyleSelectorViewController *)self bulletedListButton];
  v4 = [(ICStyleSelectorViewController *)self dashedListButton];
  v8[1] = v4;
  v5 = [(ICStyleSelectorViewController *)self numberedListButton];
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

- (NSArray)indentationButtons
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICStyleSelectorViewController *)self indentLeftButton];
  v7[0] = v3;
  v4 = [(ICStyleSelectorViewController *)self indentRightButton];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSArray)nonStyleButtons
{
  v3 = [(ICStyleSelectorViewController *)self biusButtons];
  v4 = [v3 mutableCopy];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    v5 = [(ICStyleSelectorViewController *)self emphasisButton];
    [v4 addObject:v5];

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
    v11 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    [v11 setMenu:v10];

    v12 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    [v12 setShowsMenuAsPrimaryAction:1];

    v13 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    [v4 addObject:v13];
  }

  v14 = [(ICStyleSelectorViewController *)self listButtons];
  [v4 addObjectsFromArray:v14];

  v15 = [(ICStyleSelectorViewController *)self indentationButtons];
  [v4 addObjectsFromArray:v15];

  v16 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [v4 addObject:v16];

  return v4;
}

- (void)applyFixedEmphasisColor:(id)a3
{
  v4 = ICEmphasisColorTypeForTag();
  v5 = [(ICStyleSelectorViewController *)self delegate];
  [v5 toggleEmphasisWithType:v4];
}

- (id)emphasisColorActionWithType:(int64_t)a3 bordered:(BOOL)a4 selectionTogglesEmphasis:(BOOL)a5
{
  v6 = a4;
  objc_initWeak(&location, self);
  v9 = NSStringForEmphasisColorType();
  v10 = [(ICStyleSelectorViewController *)self emphasisColorImageWithType:a3 bordered:v6];
  v11 = MEMORY[0x277D750C8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __95__ICStyleSelectorViewController_emphasisColorActionWithType_bordered_selectionTogglesEmphasis___block_invoke;
  v18 = &unk_2781ADDA8;
  v20 = a5;
  objc_copyWeak(v19, &location);
  v19[1] = a3;
  v12 = [v11 actionWithTitle:v9 image:v10 identifier:0 handler:&v15];
  v13 = [(ICStyleSelectorViewController *)self delegate:v15];
  [v12 setState:{objc_msgSend(v13, "currentEmphasisType") == a3}];

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

- (id)emphasisColorImageWithType:(int64_t)a3 bordered:(BOOL)a4
{
  v4 = a4;
  v5 = ICColorForEmphasisColorType();
  if (v4)
  {
    v6 = [MEMORY[0x277D75348] labelColor];
    v7 = 2.0;
    v8 = 15.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 13.0;
  }

  v9 = [MEMORY[0x277D755B8] ic_makeCircularImageWithColor:v5 diameter:v6 borderColor:v8 borderWidth:v7];

  return v9;
}

- (void)configureViewWithEmphasis
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICStyleSelectorViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  if (([v5 interfaceOrientation] - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(ICStyleSelectorViewController *)self isPopover];
  }

  v7 = MEMORY[0x277CCAAD0];
  v8 = [(ICStyleSelectorViewController *)self emphasisContainer];
  v9 = [(ICStyleSelectorViewController *)self biusContainer];
  v10 = [v7 constraintWithItem:v8 attribute:5 relatedBy:0 toItem:v9 attribute:6 multiplier:1.0 constant:8.0];
  [(ICStyleSelectorViewController *)self setEmphasisContainerLeadingConstraint:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = [(ICStyleSelectorViewController *)self emphasisContainerLeadingConstraint];
  v49[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  [v11 activateConstraints:v13];

  if (v6 && ([(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = MEMORY[0x277CCAAD0];
    v16 = [(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint];
    v48 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v15 deactivateConstraints:v17];

    v18 = MEMORY[0x277CCAAD0];
    v19 = [(ICStyleSelectorViewController *)self emphasisButton];
    v20 = [(ICStyleSelectorViewController *)self boldButton];
    v21 = [v18 constraintWithItem:v19 attribute:7 relatedBy:0 toItem:v20 attribute:7 multiplier:0.9 constant:0.0];
    [(ICStyleSelectorViewController *)self setEmphasisButtonWidthConstraint:v21];

    v22 = MEMORY[0x277CCAAD0];
    v23 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
    v24 = [(ICStyleSelectorViewController *)self emphasisButton];
    v25 = [v22 constraintWithItem:v23 attribute:7 relatedBy:0 toItem:v24 attribute:7 multiplier:0.75 constant:0.0];
    [(ICStyleSelectorViewController *)self setEmphasisColorPickerButtonWidthConstraint:v25];

    v26 = MEMORY[0x277CCAAD0];
    v27 = [(ICStyleSelectorViewController *)self emphasisButtonWidthConstraint];
    v47[0] = v27;
    v28 = [(ICStyleSelectorViewController *)self emphasisColorPickerButtonWidthConstraint];
    v47[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [v26 activateConstraints:v29];
  }

  else
  {
    v30 = [(ICStyleSelectorViewController *)self emphasisButtonWidthConstraint];

    if (v30)
    {
      v31 = MEMORY[0x277CCAAD0];
      v32 = [(ICStyleSelectorViewController *)self emphasisButtonWidthConstraint];
      v46 = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v31 deactivateConstraints:v33];
    }

    v34 = [(ICStyleSelectorViewController *)self emphasisColorPickerButtonWidthConstraint];

    if (v34)
    {
      v35 = MEMORY[0x277CCAAD0];
      v36 = [(ICStyleSelectorViewController *)self emphasisColorPickerButtonWidthConstraint];
      v45 = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v35 deactivateConstraints:v37];
    }

    v38 = [(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint];

    if (!v38)
    {
      v39 = MEMORY[0x277CCAAD0];
      v40 = [(ICStyleSelectorViewController *)self emphasisContainer];
      v41 = [(ICStyleSelectorViewController *)self blockQuoteButton];
      v42 = [v39 constraintWithItem:v40 attribute:6 relatedBy:0 toItem:v41 attribute:6 multiplier:1.0 constant:0.0];
      [(ICStyleSelectorViewController *)self setEmphasisContainerTrailingConstraint:v42];
    }

    v43 = MEMORY[0x277CCAAD0];
    v27 = [(ICStyleSelectorViewController *)self emphasisContainerTrailingConstraint];
    v44 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v43 activateConstraints:v28];
  }
}

- (BOOL)isPopover
{
  v2 = [(ICStyleSelectorViewController *)self popoverPresentationController];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277D75418] ic_isVision];
  }

  return v3;
}

- (void)scrollCurrentStyleToVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICStyleSelectorViewController *)self currentStyles];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(ICStyleSelectorViewController *)self styleScrollView];
    [v16 contentSize];
    v18 = v17;
    v19 = [(ICStyleSelectorViewController *)self styleScrollView];
    [v19 contentSize];
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

    v25 = [(ICStyleSelectorViewController *)self styleScrollView];
    [v25 scrollRectToVisible:v3 animated:{x, y, width, height}];
  }
}

- (id)fontForICTTNamedStyle:(unsigned int)a3
{
  v4 = [(ICStyleSelectorViewController *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = fontForICTTNamedStyle__validCategories;
  if (!fontForICTTNamedStyle__validCategories)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D76830], *MEMORY[0x277D76858], *MEMORY[0x277D76840], *MEMORY[0x277D76838], *MEMORY[0x277D76828], *MEMORY[0x277D76820], *MEMORY[0x277D76818], 0}];
    v8 = fontForICTTNamedStyle__validCategories;
    fontForICTTNamedStyle__validCategories = v7;

    v6 = fontForICTTNamedStyle__validCategories;
  }

  if (([v6 containsObject:v5] & 1) == 0)
  {
    v9 = *MEMORY[0x277D76818];

    v5 = v9;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v13 = [MEMORY[0x277D74300] ic_preferredFontForTitleTextWithContentSizeCategory:v5];
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      [MEMORY[0x277D74300] ic_pointSizeForBodyTextWithContentSizeCategory:v5];
      v11 = [MEMORY[0x277D74300] systemFontOfSize:round(v10 * *MEMORY[0x277D369D8]) weight:*MEMORY[0x277D74410]];
      v12 = [v11 ic_fontWithSingleLineA];

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v13 = [MEMORY[0x277D74300] ic_preferredFontForSubheadingTextWithContentSizeCategory:v5];
    goto LABEL_15;
  }

  if (a3 != 4)
  {
LABEL_12:
    v13 = [MEMORY[0x277D74300] ic_preferredFontForBodyTextWithContentSizeCategory:v5];
    goto LABEL_15;
  }

  v13 = [MEMORY[0x277D74300] ic_preferredFontForFixedWidthTextWithContentSizeCategory:v5];
LABEL_15:
  v12 = v13;
LABEL_16:

  return v12;
}

- (void)updateHeaderVisibility
{
  v3 = [(ICStyleSelectorViewController *)self isPopover];
  v4 = [(ICStyleSelectorViewController *)self headerView];
  v5 = v4;
  if (v3)
  {
    [v4 setHidden:1];

    v6 = [(ICStyleSelectorViewController *)self navigationBar];
    [v6 setHidden:0];

    v7 = [(ICStyleSelectorViewController *)self view];
    [v7 safeAreaInsets];
    v9 = v8;

    v10 = [(ICStyleSelectorViewController *)self navigationBar];
    [v10 frame];
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
    v22 = [(ICStyleSelectorViewController *)self navigationBar];
    [v22 setFrame:{MinX, MinY, Width, v9 + 50.0}];

    v27 = objc_alloc_init(MEMORY[0x277D75788]);
    [v27 setTitlePositionAdjustment:{0.0, v9}];
    v23 = [(ICStyleSelectorViewController *)self navigationBar];
    [v23 setStandardAppearance:v27];

    [(ICStyleSelectorViewController *)self configureForPopover];
  }

  else
  {
    [v4 setHidden:0];

    v24 = [(ICStyleSelectorViewController *)self navigationBar];
    [v24 setHidden:1];

    v27 = [(ICStyleSelectorViewController *)self headerView];
    [v27 frame];
    v25 = CGRectGetMaxY(v32) + 4.0;
    v26 = [(ICStyleSelectorViewController *)self scrollViewTopConstraint];
    [v26 setConstant:v25];
  }
}

- (void)configureForOrientation
{
  v35[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICStyleSelectorViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  if (([v5 interfaceOrientation] - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(ICStyleSelectorViewController *)self isPopover]^ 1;
  }

  if (v6 != [(ICStyleSelectorViewController *)self configuredForLandscape])
  {
    v7 = [(ICStyleSelectorViewController *)self listsContainerLeadingConstraintLandscape];

    if (!v7)
    {
      v8 = [(ICStyleSelectorViewController *)self biusContainerTopConstraintLandscape];

      if (v8)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.biusContainerTopConstraintLandscape) == nil)" functionName:"-[ICStyleSelectorViewController configureForOrientation]" simulateCrash:1 showAlert:0 format:{@"Expected nil value for '%s'", "self.biusContainerTopConstraintLandscape"}];
      }

      v9 = [(ICStyleSelectorViewController *)self boldButtonWidthConstraintLandscape];

      if (v9)
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
      v12 = [(ICStyleSelectorViewController *)self listsContainer];
      v13 = [v11 constraintWithItem:v12 attribute:5 relatedBy:0 toItem:v10 attribute:6 multiplier:1.0 constant:8.0];
      [(ICStyleSelectorViewController *)self setListsContainerLeadingConstraintLandscape:v13];

      v14 = MEMORY[0x277CCAAD0];
      v15 = [(ICStyleSelectorViewController *)self biusContainer];
      v16 = [(ICStyleSelectorViewController *)self listsContainer];
      v17 = [v14 constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:0.0];
      [(ICStyleSelectorViewController *)self setBiusContainerTopConstraintLandscape:v17];

      v18 = MEMORY[0x277CCAAD0];
      v19 = [(ICStyleSelectorViewController *)self boldButton];
      v20 = [(ICStyleSelectorViewController *)self dashedListButton];
      v21 = [v18 constraintWithItem:v19 attribute:7 relatedBy:0 toItem:v20 attribute:7 multiplier:1.0 constant:0.0];
      [(ICStyleSelectorViewController *)self setBoldButtonWidthConstraintLandscape:v21];
    }

    v22 = [(ICStyleSelectorViewController *)self scrollViewHeightConstraint];
    [v22 setConstant:48.0];

    if (v6)
    {
      v23 = 751.0;
    }

    else
    {
      v23 = 749.0;
    }

    v24 = [(ICStyleSelectorViewController *)self listsContainerLeadingConstraintLandscape];
    *&v25 = v23;
    [v24 setPriority:v25];

    v26 = [(ICStyleSelectorViewController *)self biusContainerTopConstraintLandscape];
    *&v27 = v23;
    [v26 setPriority:v27];

    v28 = [(ICStyleSelectorViewController *)self boldButtonWidthConstraintLandscape];
    *&v29 = v23;
    [v28 setPriority:v29];

    if (!v7)
    {
      v30 = MEMORY[0x277CCAAD0];
      v31 = [(ICStyleSelectorViewController *)self listsContainerLeadingConstraintLandscape];
      v35[0] = v31;
      v32 = [(ICStyleSelectorViewController *)self biusContainerTopConstraintLandscape];
      v35[1] = v32;
      v33 = [(ICStyleSelectorViewController *)self boldButtonWidthConstraintLandscape];
      v35[2] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
      [v30 activateConstraints:v34];
    }

    [(ICStyleSelectorViewController *)self populateStyleScrollView];
    [(ICStyleSelectorViewController *)self updateNamedStyleSelectedState];
    [(ICStyleSelectorViewController *)self updateStyleSelectionHighlightAnimated:0];
    [(ICStyleSelectorViewController *)self setConfiguredForLandscape:v6];
  }
}

- (void)updateStyleSelectionHighlightAnimated:(BOOL)a3
{
  v3 = a3;
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ICStyleSelectorViewController *)self currentStyles];
  v15 = [v14 firstIndex];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [(ICStyleSelectorViewController *)self styleButtons];
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v37 + 1) + 8 * v20) tag] == v15)
        {
          v21 = 1;
          goto LABEL_11;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_11:

  v22 = [(ICStyleSelectorViewController *)self currentStyles];
  v23 = [v22 count];

  v24 = 0.0;
  if (v21 && v23 == 1)
  {
    v25 = [(ICStyleSelectorViewController *)self styleButtonForStyle:v15];
    [v25 frame];
    v7 = v26;
    v9 = v27;
    v11 = v28;
    v13 = v29;

    v24 = 1.0;
  }

  v30 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  v31 = v30;
  if (v3)
  {
    [v30 alpha];
    v33 = v32;

    if (v24 != 0.0 && v33 == 0.0)
    {
      v34 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
      [v34 setFrame:{v7, v9, v11, v13}];
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
    [v30 setFrame:{v7, v9, v11, v13}];

    v35 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
    [v35 setAlpha:v24];
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
  v3 = [(ICStyleSelectorViewController *)self currentStyles];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(ICStyleSelectorViewController *)self currentStyles];
    v6 = [v5 firstIndex];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(ICStyleSelectorViewController *)self styleButtons];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v20 + 1) + 8 * i) setSelected:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "tag") == v6}];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
    v7 = [(ICStyleSelectorViewController *)self styleButtons];
    v12 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v16 + 1) + 8 * j) setSelected:0];
        }

        v13 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v9 = ICDynamicCast();
        if (v9)
        {
          v10 = [(ICStyleSelectorViewController *)self currentStyles];
          if ([v10 count] == 1)
          {
            v11 = [v9 tag];
            v12 = [(ICStyleSelectorViewController *)self currentStyles];
            [v9 setSelected:{v11 == objc_msgSend(v12, "firstIndex")}];
          }

          else
          {
            [v9 setSelected:0];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)populateStyleScrollView
{
  v3 = [(ICStyleSelectorViewController *)self traitCollection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__ICStyleSelectorViewController_populateStyleScrollView__block_invoke;
  v4[3] = &unk_2781ABCF8;
  v4[4] = self;
  [v3 ic_performAsCurrent:v4];
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

- (void)namedStyleButtonAction:(id)a3
{
  v4 = [a3 tag];

  [(ICStyleSelectorViewController *)self selectNamedStyle:v4];
}

- (void)selectNamedStyle:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  [(ICStyleSelectorViewController *)self setCurrentStyles:v5 bius:[(ICStyleSelectorViewController *)self currentBIUS] animated:1];

  v6 = [(ICStyleSelectorViewController *)self delegate];
  [v6 styleSelector:self didSelectStyle:v3];
}

- (id)styleButtonForStyle:(unsigned int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ICStyleSelectorViewController *)self styleButtons];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    v7 = a3;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 tag] == v7)
        {
          v5 = v9;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(ICStyleSelectorViewController *)self delegate];
  v4 = [v3 styleSelectorCanIndentLeft:self];

  v5 = [(ICStyleSelectorViewController *)self indentLeftButton];
  [v5 setEnabled:v4];

  v6 = [(ICStyleSelectorViewController *)self delegate];
  v7 = [v6 styleSelectorCanIndentRight:self];

  v8 = [(ICStyleSelectorViewController *)self indentRightButton];
  [v8 setEnabled:v7];

  v9 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v9, 0);
}

- (void)setUpNonStyleButtons
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(ICStyleSelectorViewController *)self delegate];
  v4 = [v3 presentingViewControllerForStyleSelector:self];
  v5 = [v4 view];
  v6 = [v5 tintColor];

  if (ICInternalSettingsIsEmphasisEnabled())
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v7 = [(ICStyleSelectorViewController *)self biusContainer];
    v52[0] = v7;
    v8 = [(ICStyleSelectorViewController *)self emphasisContainer];
    v52[1] = v8;
    v9 = [(ICStyleSelectorViewController *)self listsContainer];
    v52[2] = v9;
    v10 = [(ICStyleSelectorViewController *)self indentationContainer];
    v52[3] = v10;
    v11 = [(ICStyleSelectorViewController *)self blockQuoteContainer];
    v52[4] = v11;
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
    v16 = [(ICStyleSelectorViewController *)self biusContainer];
    v50[0] = v16;
    v17 = [(ICStyleSelectorViewController *)self listsContainer];
    v50[1] = v17;
    v18 = [(ICStyleSelectorViewController *)self indentationContainer];
    v50[2] = v18;
    v19 = [(ICStyleSelectorViewController *)self blockQuoteContainer];
    v50[3] = v19;
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
  v23 = [(ICStyleSelectorViewController *)self nonStyleButtons];
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v24)
  {
    v25 = *v37;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v36 + 1) + 8 * k);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __53__ICStyleSelectorViewController_setUpNonStyleButtons__block_invoke;
        v32[3] = &unk_2781ADDF8;
        v33 = v6;
        objc_copyWeak(&v35, &location);
        v34 = self;
        [v27 setConfigurationUpdateHandler:v32];
        objc_destroyWeak(&v35);
      }

      v24 = [v23 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v24);
  }

  v28 = [(ICStyleSelectorViewController *)self styleSelectionHighlight];
  [v28 setBackgroundColor:v6];

  v29 = [(ICStyleSelectorViewController *)self indentationContainer];
  [v29 setSemanticContentAttribute:3];

  v30 = [(ICStyleSelectorViewController *)self indentLeftButton];
  [v30 setSemanticContentAttribute:3];

  v31 = [(ICStyleSelectorViewController *)self indentRightButton];
  [v31 setSemanticContentAttribute:3];

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

- (id)imageNameForButton:(id)a3
{
  v4 = a3;
  v5 = [(ICStyleSelectorViewController *)self boldButton];

  if (v5 == v4)
  {
    v16 = @"bold";
  }

  else
  {
    v6 = [(ICStyleSelectorViewController *)self italicButton];

    if (v6 == v4)
    {
      v16 = @"italic";
    }

    else
    {
      v7 = [(ICStyleSelectorViewController *)self underlineButton];

      if (v7 == v4)
      {
        v16 = @"underline";
      }

      else
      {
        v8 = [(ICStyleSelectorViewController *)self strikethroughButton];

        if (v8 == v4)
        {
          v16 = @"strikethrough";
        }

        else
        {
          v9 = [(ICStyleSelectorViewController *)self dashedListButton];

          if (v9 == v4)
          {
            v16 = @"list.dash";
          }

          else
          {
            v10 = [(ICStyleSelectorViewController *)self numberedListButton];

            if (v10 == v4)
            {
              v16 = @"list.number";
            }

            else
            {
              v11 = [(ICStyleSelectorViewController *)self bulletedListButton];

              if (v11 == v4)
              {
                v16 = @"list.bullet";
              }

              else
              {
                v12 = [(ICStyleSelectorViewController *)self indentLeftButton];

                if (v12 == v4)
                {
                  v16 = @"decrease.indent";
                }

                else
                {
                  v13 = [(ICStyleSelectorViewController *)self indentRightButton];

                  if (v13 == v4)
                  {
                    v16 = @"increase.indent";
                  }

                  else
                  {
                    v14 = [(ICStyleSelectorViewController *)self blockQuoteButton];

                    if (v14 == v4)
                    {
                      v16 = @"quotelevel.square.fill";
                    }

                    else if (ICInternalSettingsIsEmphasisEnabled() && ([(ICStyleSelectorViewController *)self emphasisButton], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v4))
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

- (id)imageForButton:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];

  if (v5 != v4)
  {
    v6 = [(ICStyleSelectorViewController *)self imageNameForButton:v4];
    if (!v6)
    {
      v12 = 0;
      goto LABEL_26;
    }

    v7 = *MEMORY[0x277D76A28];
    v8 = *MEMORY[0x277D76818];
    v9 = [(ICStyleSelectorViewController *)self biusContainer];
    v10 = [v9 subviews];
    v11 = [v10 containsObject:v4];

    if (v11)
    {
      v12 = [MEMORY[0x277D755B8] ic_systemImageNamed:v6 textStyle:v7 scale:3 maxContentSizeCategory:v8];
LABEL_25:

      goto LABEL_26;
    }

    v16 = [(ICStyleSelectorViewController *)self blockQuoteButton];

    v17 = [v4 isSelected];
    if (v16 != v4)
    {
      if (v17)
      {
        v18 = [MEMORY[0x277D75348] systemWhiteColor];
        v31 = v18;
        v19 = MEMORY[0x277CBEA60];
        v20 = &v31;
      }

      else
      {
        if ([v4 isEnabled])
        {
          v18 = [MEMORY[0x277D75348] labelColor];
          v30[0] = v18;
          v24 = [MEMORY[0x277D75348] secondaryLabelColor];
          v30[1] = v24;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

LABEL_20:
          v27 = [MEMORY[0x277D755B8] ic_hierarchicalSystemImageNamed:v6 colors:v25 fontTextStyle:v7 scale:3 weight:4 maxContentSizeCategory:v8];
LABEL_24:
          v12 = v27;

          goto LABEL_25;
        }

        v18 = [MEMORY[0x277D75348] secondaryLabelColor];
        v29 = v18;
        v19 = MEMORY[0x277CBEA60];
        v20 = &v29;
      }

      v25 = [v19 arrayWithObjects:v20 count:1];
      goto LABEL_20;
    }

    if (v17)
    {
      v21 = [MEMORY[0x277D75348] systemWhiteColor];
      v34[0] = v21;
      v22 = MEMORY[0x277CBEA60];
      v23 = v34;
    }

    else
    {
      if ([v4 isEnabled])
      {
        v21 = [MEMORY[0x277D75348] labelColor];
        v33[0] = v21;
        v26 = [MEMORY[0x277D75348] tertiaryLabelColor];
        v33[1] = v26;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

LABEL_23:
        v27 = [MEMORY[0x277D755B8] ic_hierarchicalNonSystemImageNamed:v6 colors:v25 fontTextStyle:*MEMORY[0x277D76918] scale:3 weight:4 maxContentSizeCategory:*MEMORY[0x277D76828]];
        goto LABEL_24;
      }

      v21 = [MEMORY[0x277D75348] tertiaryLabelColor];
      v32 = v21;
      v22 = MEMORY[0x277CBEA60];
      v23 = &v32;
    }

    v25 = [v22 arrayWithObjects:v23 count:1];
    goto LABEL_23;
  }

  v13 = [(ICStyleSelectorViewController *)self delegate];
  v14 = [v13 currentEmphasisType];

  if (!v14)
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
    v3 = [(ICStyleSelectorViewController *)self popoverPresentationController];
    [v3 setPassthroughViews:0];
  }

  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Hide format menu" value:&stru_282757698 table:0];
  v6 = [(ICStyleSelectorViewController *)self closeButton];
  [v6 setAccessibilityLabel:v5];

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"bold" value:&stru_282757698 table:0];
  v9 = [(ICStyleSelectorViewController *)self boldButton];
  [v9 setAccessibilityLabel:v8];

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"italic" value:&stru_282757698 table:0];
  v12 = [(ICStyleSelectorViewController *)self italicButton];
  [v12 setAccessibilityLabel:v11];

  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 localizedStringForKey:@"underline" value:&stru_282757698 table:0];
  v15 = [(ICStyleSelectorViewController *)self underlineButton];
  [v15 setAccessibilityLabel:v14];

  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 localizedStringForKey:@"strikethrough" value:&stru_282757698 table:0];
  v18 = [(ICStyleSelectorViewController *)self strikethroughButton];
  [v18 setAccessibilityLabel:v17];

  v19 = [MEMORY[0x277CCA8D8] mainBundle];
  v20 = [v19 localizedStringForKey:@"dashed list" value:&stru_282757698 table:0];
  v21 = [(ICStyleSelectorViewController *)self dashedListButton];
  [v21 setAccessibilityLabel:v20];

  v22 = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [v22 localizedStringForKey:@"numbered list" value:&stru_282757698 table:0];
  v24 = [(ICStyleSelectorViewController *)self numberedListButton];
  [v24 setAccessibilityLabel:v23];

  v25 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [v25 localizedStringForKey:@"bulleted list" value:&stru_282757698 table:0];
  v27 = [(ICStyleSelectorViewController *)self bulletedListButton];
  [v27 setAccessibilityLabel:v26];

  v28 = [MEMORY[0x277CCA8D8] mainBundle];
  v29 = [v28 localizedStringForKey:@"outdent" value:&stru_282757698 table:0];
  v30 = [(ICStyleSelectorViewController *)self indentLeftButton];
  [v30 setAccessibilityLabel:v29];

  v31 = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [v31 localizedStringForKey:@"indent" value:&stru_282757698 table:0];
  v33 = [(ICStyleSelectorViewController *)self indentRightButton];
  [v33 setAccessibilityLabel:v32];

  v34 = [MEMORY[0x277CCA8D8] mainBundle];
  v35 = [v34 localizedStringForKey:@"block quote" value:&stru_282757698 table:0];
  v36 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [v36 setAccessibilityLabel:v35];

  v37 = [MEMORY[0x277CCA8D8] mainBundle];
  v38 = [v37 localizedStringForKey:@"Highlight" value:&stru_282757698 table:0];
  v39 = [(ICStyleSelectorViewController *)self emphasisButton];
  [v39 setAccessibilityLabel:v38];

  v40 = [MEMORY[0x277CCA8D8] mainBundle];
  v41 = [v40 localizedStringForKey:@"Highlight color" value:&stru_282757698 table:0];
  v42 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
  [v42 setAccessibilityLabel:v41];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v43 = [(ICStyleSelectorViewController *)self styleButtons];
  v44 = [v43 countByEnumeratingWithState:&v75 objects:v79 count:16];
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
          objc_enumerationMutation(v43);
        }

        [*(*(&v75 + 1) + 8 * v47++) _accessibilitySetIsSpeakThisElement:1];
      }

      while (v45 != v47);
      v45 = [v43 countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v45);
  }

  v48 = [(ICStyleSelectorViewController *)self boldButton];
  [v48 _accessibilitySetIsSpeakThisElement:1];

  v49 = [(ICStyleSelectorViewController *)self italicButton];
  [v49 _accessibilitySetIsSpeakThisElement:1];

  v50 = [(ICStyleSelectorViewController *)self underlineButton];
  [v50 _accessibilitySetIsSpeakThisElement:1];

  v51 = [(ICStyleSelectorViewController *)self strikethroughButton];
  [v51 _accessibilitySetIsSpeakThisElement:1];

  v52 = [(ICStyleSelectorViewController *)self dashedListButton];
  [v52 _accessibilitySetIsSpeakThisElement:1];

  v53 = [(ICStyleSelectorViewController *)self numberedListButton];
  [v53 _accessibilitySetIsSpeakThisElement:1];

  v54 = [(ICStyleSelectorViewController *)self bulletedListButton];
  [v54 _accessibilitySetIsSpeakThisElement:1];

  v55 = [(ICStyleSelectorViewController *)self indentLeftButton];
  [v55 _accessibilitySetIsSpeakThisElement:1];

  v56 = [(ICStyleSelectorViewController *)self indentRightButton];
  [v56 _accessibilitySetIsSpeakThisElement:1];

  v57 = [(ICStyleSelectorViewController *)self blockQuoteButton];
  [v57 _accessibilitySetIsSpeakThisElement:1];

  v58 = [(ICStyleSelectorViewController *)self emphasisButton];
  [v58 _accessibilitySetIsSpeakThisElement:1];

  v59 = [(ICStyleSelectorViewController *)self emphasisColorPickerButton];
  [v59 _accessibilitySetIsSpeakThisElement:1];

  v60 = [(ICStyleSelectorViewController *)self headerView];
  [v60 setShowsLargeContentViewer:1];

  v61 = [(ICStyleSelectorViewController *)self headerView];
  v62 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v61 addInteraction:v62];

  v63 = [(ICStyleSelectorViewController *)self headerLabel];
  v64 = [v63 text];
  v65 = [(ICStyleSelectorViewController *)self headerView];
  [v65 setLargeContentTitle:v64];

  v66 = [(ICStyleSelectorViewController *)self closeButton];
  [v66 setShowsLargeContentViewer:1];

  v67 = [(ICStyleSelectorViewController *)self closeButton];
  v68 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v67 addInteraction:v68];

  v69 = [MEMORY[0x277CCA8D8] mainBundle];
  v70 = [v69 localizedStringForKey:@"Close" value:&stru_282757698 table:0];
  v71 = [(ICStyleSelectorViewController *)self closeButton];
  [v71 setLargeContentTitle:v70];

  v72 = [(ICStyleSelectorViewController *)self closeButton];
  v73 = [v72 currentImage];
  v74 = [(ICStyleSelectorViewController *)self closeButton];
  [v74 setLargeContentImage:v73];
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