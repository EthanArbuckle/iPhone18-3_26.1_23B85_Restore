@interface HUTriggerListViewController
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (HUTriggerListViewController)init;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_deleteItem:(id)a3;
- (id)addActionDelegateForNavigationBarButton:(id)a3;
- (id)homeForNavigationBarButton:(id)a3;
- (id)trailingSwipeActionsForItem:(id)a3;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)_addTrigger:(id)a3;
- (void)_showSummaryForTriggerItem:(id)a3;
- (void)coloredButtonCellPressed:(id)a3;
- (void)learnMoreLinkTapped:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUTriggerListViewController

- (HUTriggerListViewController)init
{
  v3 = [(HFItemManager *)[HUTriggerListItemManager alloc] initWithDelegate:self];
  v8.receiver = self;
  v8.super_class = HUTriggerListViewController;
  v4 = [(HUItemTableViewController *)&v8 initWithItemManager:v3 tableViewStyle:2];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_triggerItemManager, v3);
    v6 = _HULocalizedStringWithDefaultValue(@"HUTabAutomationTitle", @"HUTabAutomationTitle", 1);
    [(HUTriggerListViewController *)v5 setTitle:v6];

    [(HUTriggerListViewController *)v5 setModalInPresentation:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HUTriggerListViewController;
  [(HUItemTableViewController *)&v17 viewDidLoad];
  v3 = [(HUTriggerListViewController *)self view];
  [v3 bounds];
  v6 = [HUGridLayoutOptions defaultOptionsForViewSize:v4, v5];
  [(HUTriggerListViewController *)self setLayoutOptions:v6];

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    if ([MEMORY[0x277D14CE8] isAMac])
    {
      v7 = [(HUTriggerListViewController *)self navigationController];
      [v7 setNavigationBarHidden:1];
    }

    else
    {
      v8 = [HUNavigationBarButton addButtonWithOwner:self];
      [(HUTriggerListViewController *)self setNavigationAddButton:v8];

      v7 = [(HUTriggerListViewController *)self navigationAddButton];
      v18[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v10 = [(HUTriggerListViewController *)self navigationItem];
      [v10 setRightBarButtonItems:v9];
    }

    v11 = [(HUTriggerListViewController *)self navigationController];
    v12 = [v11 navigationBar];
    [v12 setPrefersLargeTitles:1];

    v13 = [(HUTriggerListViewController *)self navigationController];
    v14 = [v13 navigationBar];
    [v14 _setUseInlineBackgroundHeightWhenLarge:1];
  }

  v15 = [MEMORY[0x277D75348] systemBackgroundColor];
  v16 = [(HUTriggerListViewController *)self tableView];
  [v16 setBackgroundColor:v15];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HUTriggerListViewController;
  [(HUItemTableViewController *)&v12 viewWillAppear:a3];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if ([MEMORY[0x277D14CE8] isAMac])
    {
      v4 = [(HUTriggerListViewController *)self navigationController];
      [v4 setNavigationBarHidden:1];
    }

    else
    {
      v5 = [HUNavigationBarButton addButtonWithOwner:self];
      [(HUTriggerListViewController *)self setNavigationAddButton:v5];

      v4 = [(HUTriggerListViewController *)self navigationAddButton];
      v13[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v7 = [(HUTriggerListViewController *)self navigationItem];
      [v7 setRightBarButtonItems:v6];
    }

    v8 = [(HUTriggerListViewController *)self navigationController];
    v9 = [v8 navigationBar];
    [v9 setPrefersLargeTitles:1];

    v10 = [(HUTriggerListViewController *)self navigationController];
    v11 = [v10 navigationBar];
    [v11 _setUseInlineBackgroundHeightWhenLarge:1];
  }
}

- (void)viewWillLayoutSubviews
{
  v3 = [(HUTriggerListViewController *)self layoutOptions];
  [v3 viewSize];
  v5 = v4;
  v7 = v6;
  v8 = [(HUTriggerListViewController *)self view];
  [v8 frame];
  v11 = v7 == v10 && v5 == v9;

  if (![(HUTriggerListViewController *)self isTransitioningSizes]&& !v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__HUTriggerListViewController_viewWillLayoutSubviews__block_invoke;
    v13[3] = &unk_277DB8488;
    v13[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v13];
  }

  v12.receiver = self;
  v12.super_class = HUTriggerListViewController;
  [(HUItemTableViewController *)&v12 viewWillLayoutSubviews];
}

void __53__HUTriggerListViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 frame];
  v5 = [HUGridLayoutOptions defaultOptionsForViewSize:v3, v4];
  [*(a1 + 32) setLayoutOptions:v5];

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = HUTriggerListViewController;
  v7 = a4;
  [(HUItemTableViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(HUTriggerListViewController *)self setIsTransitioningSizes:1];
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HUTriggerListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_277DC3360;
  v9[4] = self;
  *&v9[5] = width;
  *&v9[6] = height;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUTriggerListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_277DB79B8;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

void __82__HUTriggerListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [HUGridLayoutOptions defaultOptionsForViewSize:*(a1 + 40), *(a1 + 48)];
  [*(a1 + 32) setLayoutOptions:v2];
}

- (void)_addTrigger:(id)a3
{
  [(HUTriggerListViewController *)self setEditorPresentationMode:1];
  v6 = [[HUTriggerTypePickerViewController alloc] initWithActionSetBuilder:0 delegate:self];
  [(HUTriggerTypePickerViewController *)v6 setShowSuggestedAutomations:1];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  [v4 setModalPresentationStyle:2];
  v5 = [(UIViewController *)self hu_presentPreloadableViewController:v4 animated:1];
}

- (void)_showSummaryForTriggerItem:(id)a3
{
  v15 = a3;
  v4 = [v15 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D140D8]];
  v6 = [v5 integerValue];

  v7 = [v15 trigger];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 home];

  if (v15)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_NilParameter.isa);
    if (v6)
    {
LABEL_3:
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_12:
      NSLog(&cfstr_NilParameter.isa);
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_13:
      NSLog(&cfstr_NilParameter.isa);
      goto LABEL_16;
    }
  }

  NSLog(&cfstr_CouldNotDeterm.isa, v15);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v15 && v6 && v7)
  {
    v10 = objc_alloc_init(HUTriggerBuilderContext);
    [(HUTriggerBuilderContext *)v10 setFiltersEmptyActionSets:1];
    v11 = [MEMORY[0x277D14C48] triggerBuilderForTrigger:v7 inHome:v9 context:v10];
    if (v11)
    {
      v12 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v11 mode:1 isPresentedModally:1 delegate:self];
      [(HUTriggerListViewController *)self setEditorPresentationMode:1];
      v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
      [v13 setModalPresentationStyle:2];
      v14 = [(UIViewController *)self hu_presentPreloadableViewController:v13 animated:1];
    }

    else
    {
      NSLog(&cfstr_CouldNotCreate_0.isa, v7);
    }
  }

LABEL_16:
}

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUTriggerListViewController;
  v3 = a3;
  v4 = [(HUItemTableViewController *)&v7 automaticDisablingReasonsForItem:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v14 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v14;
    v9 = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
    [v8 setDescriptionIcon:v9];

    v10 = [v7 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D140D8]];
    v12 = [v11 intValue] != 0;

    [v8 setAccessoryType:v12];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = v14;
    [v13 setDelegate:self];
    [v13 setButtonColorFollowsTintColor:1];
  }

LABEL_6:
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [v11 latestResults];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D140D0]];
    v16 = [v15 BOOLValue];

    [v13 setHideDescriptionIcon:v16 ^ 1u];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_opt_class();
    v18 = v10;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v13 = v18;
      if (v19)
      {
        goto LABEL_11;
      }

      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v20 handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
    }

    v13 = 0;
LABEL_11:

    [v13 setDelegate:self];
    v22 = [(HUTriggerListViewController *)self view];
    [v22 frame];
    v25 = [HUGridLayoutOptions defaultOptionsForViewSize:v23, v24];
    [v13 setLayoutOptions:v25];

    v26 = [(HUTriggerListViewController *)self tableView];
    [v13 setRespectLayoutMargins:{objc_msgSend(v26, "_sectionContentInsetFollowsLayoutMargins") ^ 1}];

    goto LABEL_12;
  }

LABEL_13:
  v27.receiver = self;
  v27.super_class = HUTriggerListViewController;
  [(HUItemTableViewController *)&v27 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v4 = [MEMORY[0x277D14CE8] isAMac] ^ 1;
  if (a3)
  {
    LOBYTE(v4) = 0;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v4 = [MEMORY[0x277D14CE8] isAMac] ^ 1;
  if (a3)
  {
    LOBYTE(v4) = 0;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v4 = a4;
  v5 = ![v4 section] || objc_msgSend(v4, "section") == 1 || objc_msgSend(v4, "section") == 3;

  return v5;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HUTriggerListViewController;
  [(HUItemTableViewController *)&v14 tableView:a3 heightForHeaderInSection:?];
  if (a4 != 2)
  {
    return v6;
  }

  v7 = [(HUTriggerListViewController *)self view];
  [v7 frame];
  v10 = HUViewSizeSubclassForViewSize(v8, v9);

  v15[0] = &unk_2824923A8;
  v15[1] = &unk_2824923C0;
  v16[0] = &unk_282493810;
  v16[1] = &unk_282493820;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = HUConstantFloatForViewSizeSubclass(v10, v11);

  return v12;
}

- (void)coloredButtonCellPressed:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2080;
    v14 = "[HUTriggerListViewController coloredButtonCellPressed:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) User tapped Create New Automation", &v11, 0x16u);
  }

  [(HUTriggerListViewController *)self _addTrigger:0];
  objc_opt_class();
  v5 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 addTriggerItem];

  v9 = [v8 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13F68]];

  [MEMORY[0x277D143D8] sendGeneralButtonTapEventWithButtonTitle:v10 sourceViewController:self];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D140D8]];
    v10 = [v9 intValue] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUTriggerListViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v10 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v10.receiver, v10.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUTriggerListViewController *)self _showSummaryForTriggerItem:v9];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(HUItemTableViewController *)self itemManager];
    v9 = [v8 home];
    v10 = [v9 hf_currentUserIsAdministrator];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)trailingSwipeActionsForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HUItemTableViewController itemManager](self, "itemManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 home], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_currentUserIsAdministrator"), v6, v5, v7))
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = MEMORY[0x277D753C0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUDeleteTitle", @"HUDeleteTitle", 1);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __59__HUTriggerListViewController_trailingSwipeActionsForItem___block_invoke;
    v17 = &unk_277DC3010;
    v18 = self;
    v19 = v4;
    v11 = [v9 contextualActionWithStyle:1 title:v10 handler:&v14];

    [v8 addObject:{v11, v14, v15, v16, v17, v18}];
    v12 = [MEMORY[0x277D75AD8] configurationWithActions:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __59__HUTriggerListViewController_trailingSwipeActionsForItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) _deleteItem:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUTriggerListViewController_trailingSwipeActionsForItem___block_invoke_2;
  v9[3] = &unk_277DC3388;
  v10 = v5;
  v7 = v5;
  v8 = [v6 addCompletionBlock:v9];
}

uint64_t __59__HUTriggerListViewController_trailingSwipeActionsForItem___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = MEMORY[0x277D14640];
    v5 = a3;
    v6 = [v4 sharedHandler];
    [v6 handleError:v5];
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
{
  v8 = a3;
  v5 = [(HUTriggerListViewController *)self editorPresentationMode];
  if (v5 == 2)
  {
    v6 = [(HUTriggerListViewController *)self navigationController];
    v7 = [v6 popToViewController:self animated:1];
LABEL_7:

    goto LABEL_10;
  }

  if (v5 == 1)
  {
    if (![MEMORY[0x277D14CE8] isAnIPad] || (objc_msgSend(MEMORY[0x277D14CE8], "isAMac") & 1) != 0)
    {
      [(HUTriggerListViewController *)self dismissViewControllerAnimated:1 completion:0];
      goto LABEL_10;
    }

    v6 = [v8 presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_7;
  }

  if (([MEMORY[0x277D14CE8] isAVisionPro] & 1) == 0)
  {
    NSLog(&cfstr_Editorpresenta.isa, v8);
  }

LABEL_10:
  [(HUTriggerListViewController *)self setEditorPresentationMode:0];
}

- (void)learnMoreLinkTapped:(id)a3
{
  v5 = [[HUAboutResidentDeviceViewController alloc] initWithStyle:1];
  [(HUAboutResidentDeviceViewController *)v5 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v4 setModalPresentationStyle:2];
  [(HUTriggerListViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)homeForNavigationBarButton:(id)a3
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 home];

  return v4;
}

- (id)addActionDelegateForNavigationBarButton:(id)a3
{
  v4 = [(HUTriggerListViewController *)self navigationController];
  v5 = [v4 tabBarController];

  if (v5)
  {
    v6 = [(HUTriggerListViewController *)self navigationController];
    v7 = [v6 tabBarController];
  }

  else
  {
    v8 = [(HUTriggerListViewController *)self navigationController];
    v9 = [v8 splitViewController];

    if (!v9)
    {
      goto LABEL_10;
    }

    v6 = [(HUTriggerListViewController *)self navigationController];
    v7 = [v6 splitViewController];
  }

  v10 = v7;
  if ([v7 conformsToProtocol:&unk_282556F78])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [v12 dashboardNavigator];

    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_deleteItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 trigger];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = MEMORY[0x277D2C900];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __43__HUTriggerListViewController__deleteItem___block_invoke;
      v15[3] = &unk_277DB8200;
      v15[4] = self;
      v16 = v8;
      v11 = [v10 futureWithBlock:v15];

      goto LABEL_9;
    }
  }

  else
  {
    NSLog(&cfstr_NoTriggerToDel.isa);
  }

  v12 = MEMORY[0x277D2C900];
  v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30 description:0];
  v11 = [v12 futureWithError:v13];

LABEL_9:

  return v11;
}

void __43__HUTriggerListViewController__deleteItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemManager];
  v5 = [v4 home];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HUTriggerListViewController__deleteItem___block_invoke_2;
  v9[3] = &unk_277DBE710;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v12 = v6;
  v8 = v3;
  [v5 removeTrigger:v12 completionHandler:v9];
}

void __43__HUTriggerListViewController__deleteItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x277D146E8] sharedDispatcher];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __43__HUTriggerListViewController__deleteItem___block_invoke_3;
    v9 = &unk_277DB9920;
    v5 = *(a1 + 48);
    v10 = *(a1 + 40);
    v11 = v5;
    [v4 dispatchHomeObserverMessage:&v6 sender:0];

    [*(a1 + 32) finishWithNoResult];
  }
}

void __43__HUTriggerListViewController__deleteItem___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) itemManager];
    v4 = [v3 home];
    [v5 home:v4 didRemoveTrigger:*(a1 + 40)];
  }
}

@end