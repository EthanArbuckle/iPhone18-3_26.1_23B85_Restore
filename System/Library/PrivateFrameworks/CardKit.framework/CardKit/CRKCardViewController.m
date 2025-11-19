@interface CRKCardViewController
+ (void)initialize;
- (BOOL)_askDelegateToPerformReferentialCommand:(id)a3;
- (BOOL)_fireAndForgetOutboundCommand:(id)a3;
- (BOOL)_isActuallyVisible;
- (CGSize)boundingSizeForCardSectionViewController:(id)a3;
- (CGSize)preferredContentSize;
- (CRKCardViewControllerDelegate)cardViewControllerDelegate;
- (double)contentHeightForWidth:(double)a3;
- (id)_generateCardViewAppearanceFeedback;
- (id)_initWithCard:(id)a3 delegate:(id)a4 loadBundles:(BOOL)a5 loadProvidersImmediately:(BOOL)a6;
- (id)_loadCardSectionViewControllerFromCardSection:(id)a3;
- (int64_t)_convertSFSeparatorStyleToCRKKeylineStyle:(int)a3;
- (int64_t)_defaultKeylineStyleBetweenLeadingCardSection:(id)a3 andTrailingCardSection:(id)a4;
- (int64_t)_keylineStyleBetweenLeadingCardSectionViewController:(id)a3 andTrailingCardSectionViewController:(id)a4;
- (void)_addCardSectionViewControllersAsChildViewControllers:(id)a3;
- (void)_cancelTouchesIfNecessary;
- (void)_configureCardSectionViewController:(id)a3 forCardSection:(id)a4;
- (void)_finishLoading;
- (void)_loadCardSectionViewControllersFromCard:(id)a3 currentSourceInvalid:(BOOL)a4;
- (void)_removeCardSectionViewControllersFromParentViewController:(id)a3;
- (void)_resumeTouchesIfNecessary;
- (void)_setCard:(id)a3 loadProvidersImmediately:(BOOL)a4;
- (void)_setCardWithLoadedBundles:(id)a3 loadProvidersImmediately:(BOOL)a4;
- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5;
- (void)cardSectionView:(id)a3 willProcessEngagementFeedback:(id)a4;
- (void)cardSectionViewController:(id)a3 requestsHandlingOfIntent:(id)a4;
- (void)cardSectionViewControllerBoundsDidChange:(id)a3;
- (void)cardSectionViewControllerDidFinishLoading:(id)a3;
- (void)cardSectionViewControllerShouldBeRemoved:(id)a3;
- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardSectionViewDidDisappearForCardSection:(id)a3 withDisappearanceFeedback:(id)a4;
- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)didEngageCardSection:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)handleCardCommand:(id)a3 reply:(id)a4;
- (void)loadView;
- (void)presentViewController:(id)a3;
- (void)presentViewController:(id)a3 forCardSectionViewController:(id)a4;
- (void)setCardSectionViewSource:(id)a3;
- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4;
- (void)userDidReportFeedback:(id)a3 fromCardSection:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDismissViewController:(id)a3;
@end

@implementation CRKCardViewController

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CRKCardViewController;
  objc_msgSendSuper2(&v3, sel_initialize);
  [a1 _registerCardSectionViewControllers];
  CRLogInitIfNeeded();
}

- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_cardSectionViewControllers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 cardEventDidOccur:a3 withIdentifier:v8 userInfo:{v9, v16}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (id)_initWithCard:(id)a3 delegate:(id)a4 loadBundles:(BOOL)a5 loadProvidersImmediately:(BOOL)a6
{
  v6 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = CRKCardViewController;
  v12 = [(CRKCardViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_preferredPunchoutIndex = -1;
    objc_storeWeak(&v12->_cardViewControllerDelegate, v11);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingDismissalCommands = v13->_pendingDismissalCommands;
    v13->_pendingDismissalCommands = v14;

    v13->_loadBundles = a5;
    [(CRKCardViewController *)v13 _setCard:v10 loadProvidersImmediately:v6];
    v16 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [v10 cardSections];
      *buf = 138412802;
      v22 = v13;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_243247000, v17, OS_LOG_TYPE_INFO, "Card view controller initialized\n    CVC: %@\n    Card: %@\n    Card sections: %@", buf, 0x20u);
    }
  }

  return v13;
}

- (id)_loadCardSectionViewControllerFromCardSection:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CRKCardSectionViewSourcing *)self->_cardSectionViewSource cardSectionShouldBeDisplayed:v4])
  {
    v5 = [(CRKCardSectionViewSourcing *)self->_cardSectionViewSource viewConfigurationForCardSection:v4];
    if (v5)
    {
      [CRKCardSectionViewController cardSectionViewControllerForViewConfiguration:v5];
    }

    else
    {
      [CRKCardSectionViewController cardSectionViewControllerForCardSection:v4];
    }
    v8 = ;
    [(CRKCardViewController *)self _configureCardSectionViewController:v8 forCardSection:v4];
  }

  else
  {
    v6 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      cardSectionViewSource = self->_cardSectionViewSource;
      v10 = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = cardSectionViewSource;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_243247000, v6, OS_LOG_TYPE_INFO, "%@ not returning card section view controller because provider manager %@ marked card section %@ ineligble for display", &v10, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_cancelTouchesIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_cardSectionViewControllers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _cancelTouchesIfNecessary];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_resumeTouchesIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_cardSectionViewControllers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _resumeTouchesIfNecessary];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (int64_t)_keylineStyleBetweenLeadingCardSectionViewController:(id)a3 andTrailingCardSectionViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cardSection];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && ([v6 cardSection], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "backingCardSection"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "separatorStyle"), v11, v10, v12))
  {
    v13 = [(CRKCardViewController *)self _convertSFSeparatorStyleToCRKKeylineStyle:v12];
  }

  else
  {
    v13 = [(CRKCardViewController *)self _defaultKeylineStyleBetweenLeadingCardSection:v6 andTrailingCardSection:v7];
  }

  v14 = v13;

  return v14;
}

- (int64_t)_defaultKeylineStyleBetweenLeadingCardSection:(id)a3 andTrailingCardSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cardSection];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v6 cardSection];
    v11 = [v10 backingCardSection];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 cardSection];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [v7 cardSection];
    v15 = [v14 backingCardSection];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v6 cardSection];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [v6 cardSection];
    v19 = [v18 actionCommands];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v7 cardSection];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [v7 cardSection];
    v23 = [v22 actionCommands];
  }

  else
  {
    v23 = 0;
  }

  if ([v19 count] || objc_msgSend(v23, "count"))
  {
    v24 = 1;
    goto LABEL_16;
  }

  if ([v11 _crk_leadingCardSectionSeparatorStyle])
  {
    v26 = v11;
LABEL_21:
    v24 = -[CRKCardViewController _convertSFSeparatorStyleToCRKKeylineStyle:](self, "_convertSFSeparatorStyleToCRKKeylineStyle:", [v26 _crk_leadingCardSectionSeparatorStyle]);
    goto LABEL_16;
  }

  if ([v15 _crk_leadingCardSectionSeparatorStyle])
  {
    v26 = v15;
    goto LABEL_21;
  }

  if (v11)
  {
    v24 = 3;
  }

  else
  {
    v24 = 4;
  }

LABEL_16:

  return v24;
}

- (int64_t)_convertSFSeparatorStyleToCRKKeylineStyle:(int)a3
{
  v3 = (a3 - 2);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_removeCardSectionViewControllersFromParentViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 didMoveToParentViewController:0];
        v9 = [v8 view];
        [v9 removeFromComposedSuperview];

        [v8 removeFromParentViewController];
        [v8 setView:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_addCardSectionViewControllersAsChildViewControllers:(id)a3
{
  v12 = a3;
  v4 = [v12 count];
  if ([(CRKCardViewController *)self isViewLoaded]&& v4)
  {
    v5 = 0;
    do
    {
      v6 = [v12 objectAtIndex:v5];
      v7 = [v6 parentViewController];

      if (v7)
      {
        ++v5;
      }

      else
      {
        [(CRKCardViewController *)self addChildViewController:v6];
        if (v4 <= ++v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = [v12 objectAtIndex:v5];
        }

        v9 = [(CRKCardViewController *)self _keylineStyleBetweenLeadingCardSectionViewController:v6 andTrailingCardSectionViewController:v8];
        v10 = [(CRKCardViewController *)self view];
        v11 = [v6 view];
        [v10 addCardSectionSubview:v11 withKeyline:v9];

        [v6 didMoveToParentViewController:self];
      }
    }

    while (v5 != v4);
    if (![(CRKCardViewController *)self isLoading])
    {
      [(CRKCardViewController *)self _finishLoading];
    }
  }
}

- (BOOL)_askDelegateToPerformReferentialCommand:(id)a3
{
  v5 = a3;
  v6 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v7 = objc_opt_respondsToSelector();
  if ((v7 & 1) != 0 && (-[CRKCardViewController cardViewControllerDelegate](self, "cardViewControllerDelegate"), v3 = objc_claimAutoreleasedReturnValue(), ![v3 canPerformReferentialCommand:v5 forCardViewController:self]))
  {
    v9 = 0;
  }

  else
  {
    v8 = [(CRKCardViewController *)self cardViewControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v10 = 0;
  if (v5 && (v9 & 1) != 0)
  {
    v11 = [(CRKCardViewController *)self cardViewControllerDelegate];
    v10 = [v11 performReferentialCommand:v5 forCardViewController:self];
  }

  return v10;
}

- (void)_configureCardSectionViewController:(id)a3 forCardSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [v6 setDelegate:self];
    [(NSMutableArray *)self->_cardSectionViewControllers addObject:v6];
    if (v7)
    {
      [(NSMapTable *)self->_cardSectionsToCardSectionViewControllersMapTable setObject:v6 forKey:v7];
    }

    v8 = [(CRKCardViewController *)self card];
    v9 = [v8 dismissalCommands];
    v10 = [v9 mutableCopy];
    [v6 _setExtraCommands:v10];

    if ([v6 _isIndicatingActivity])
    {
      self->_indicatingActivity = 1;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [CRKCardViewController _configureCardSectionViewController:v7 forCardSection:v11];
    }
  }
}

- (void)_finishLoading
{
  v2 = self;
  v43 = *MEMORY[0x277D85DE8];
  if ([(CRKCardViewController *)self isViewLoaded]&& (objc_opt_respondsToSelector() & 1) != 0 && [(CRCard *)v2->_card flexibleSectionOrder])
  {
    v3 = [(CRKCardViewController *)v2 view];
    v27 = [v3 cardSectionSubviews];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = v2;
    v5 = v2->_cardSectionViewControllers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = *v33;
    v9 = MEMORY[0x277CF93F0];
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = [v11 view];
        v13 = [v12 cardSectionViewIdentifier];

        if (v13)
        {
          v14 = [v11 view];
          v15 = [v14 cardSectionViewIdentifier];
          [v4 setObject:v11 forKey:v15];
LABEL_11:

          goto LABEL_13;
        }

        v16 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v14 = v16;
          v15 = [v11 cardSection];
          v17 = [v11 view];
          *buf = 138412802;
          v37 = v11;
          v38 = 2112;
          v39 = v15;
          v40 = 2112;
          v41 = v17;
          _os_log_error_impl(&dword_243247000, v14, OS_LOG_TYPE_ERROR, "Card section view controller's view doesn't have a card section view identifier\n    Card section view controller: %@\n    Card section: %@\n    Card section view: %@", buf, 0x20u);

          goto LABEL_11;
        }

LABEL_13:
        ++v10;
      }

      while (v7 != v10);
      v18 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
      v7 = v18;
      if (!v18)
      {
LABEL_17:

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __39__CRKCardViewController__finishLoading__block_invoke;
        v29[3] = &unk_278DA35A0;
        v30 = v4;
        v31 = v27;
        v19 = v27;
        v20 = v4;
        v21 = [v19 sortedArrayUsingComparator:v29];
        v2 = v28;
        v22 = [(CRKCardViewController *)v28 view];
        [v22 setCardSectionSubviews:v21];

        v23 = [(CRKCardViewController *)v28 view];
        [v23 setNeedsLayout];

        break;
      }
    }
  }

  v24 = [(CRKCardViewController *)v2 cardViewControllerDelegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_cardViewControllerDelegate);
    [WeakRetained cardViewControllerDidLoad:v2];
  }

  v2->_loaded = 1;
}

uint64_t __39__CRKCardViewController__finishLoading__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v7 cardSectionViewIdentifier];
  v9 = [v5 objectForKey:v8];

  v10 = *(a1 + 32);
  v11 = [v6 cardSectionViewIdentifier];
  v12 = [v10 objectForKey:v11];

  v13 = [v9 _isLoadedWithIntentsUIView];
  v14 = [v12 _isLoadedWithIntentsUIView];
  v15 = [*(a1 + 40) indexOfObject:v7];

  v16 = [*(a1 + 40) indexOfObject:v6];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v19 = [v17 compare:v18];

  if (v14)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v14)
  {
    v21 = v19;
  }

  else
  {
    v21 = -1;
  }

  if (v13)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  return v22;
}

- (BOOL)_isActuallyVisible
{
  v3 = [(CRKCardViewController *)self view];
  v4 = [(CRKCardViewController *)self view];
  v5 = [v4 superview];

  if (v5)
  {
    while (1)
    {
      v6 = [v5 _crk_subviewIsVisible:v3];
      if (!v6)
      {
        break;
      }

      v7 = v5;
      v5 = [v7 superview];

      v3 = v7;
      if (!v5)
      {
        v3 = v7;
        break;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_generateCardViewAppearanceFeedback
{
  v3 = [(CRKCardViewController *)self card];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CRKCardViewController *)self card];
    v5 = [v4 backingCard];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277D4C250]) initWithCard:v5];
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    v10 = [v9 navigationIndexOfCardViewController:self];
  }

  else
  {
    v10 = 0;
  }

  [v6 setLevel:v10];

  return v6;
}

- (void)_setCard:(id)a3 loadProvidersImmediately:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([(CRCard *)self->_card isEqual:v6]& 1) == 0)
  {
    if (self->_loadBundles)
    {
      v7 = +[_CRKProviderBundleManager sharedInstance];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__CRKCardViewController__setCard_loadProvidersImmediately___block_invoke;
      v8[3] = &unk_278DA35F0;
      v8[4] = self;
      v9 = v6;
      v10 = v4;
      [v7 getProviderBundlesWithCompletion:v8];
    }

    else
    {
      [(CRKCardViewController *)self _setCardWithLoadedBundles:v6 loadProvidersImmediately:v4];
    }
  }
}

void __59__CRKCardViewController__setCard_loadProvidersImmediately___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CF93F0];
  if (v5)
  {
    v7 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __59__CRKCardViewController__setCard_loadProvidersImmediately___block_invoke_cold_1(v5, v7);
    }
  }

  v18 = v5;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_impl(&dword_243247000, v14, OS_LOG_TYPE_INFO, "Registering bundle provider with CardKit: %@", buf, 0xCu);
        }

        v15 = [CRKIdentifiedProviderRegistry sharedInstance:v17];
        [v15 registerIdentifiedProvider:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CRKCardViewController__setCard_loadProvidersImmediately___block_invoke_48;
  block[3] = &unk_278DA35C8;
  v16 = *(v17 + 40);
  block[4] = *(v17 + 32);
  v20 = v16;
  v21 = *(v17 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_setCardWithLoadedBundles:(id)a3 loadProvidersImmediately:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && [v7 asynchronous] && (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__CRKCardViewController__setCardWithLoadedBundles_loadProvidersImmediately___block_invoke;
    v8[3] = &unk_278DA3640;
    objc_copyWeak(&v10, &location);
    v9 = v7;
    [v9 loadCardWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_storeStrong(&self->_card, a3);
    if (v4)
    {
      [(CRKCardViewController *)self _loadCardSectionViewControllersFromCard:v7 currentSourceInvalid:1];
    }
  }
}

void __76__CRKCardViewController__setCardWithLoadedBundles_loadProvidersImmediately___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CRKCardViewController__setCardWithLoadedBundles_loadProvidersImmediately___block_invoke_2;
  block[3] = &unk_278DA3618;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

uint64_t __76__CRKCardViewController__setCardWithLoadedBundles_loadProvidersImmediately___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v16 = WeakRetained;
    v5 = [WeakRetained cardViewControllerDelegate];
    if (!v4)
    {
      v12 = objc_opt_respondsToSelector();

      v3 = v16;
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = [v16 cardViewControllerDelegate];
      [v13 cardViewController:v16 didFailToLoadCard:*(a1 + 40)];

      goto LABEL_12;
    }

    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CF93F8]);
      v8 = [v16 cardViewControllerDelegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [v16 cardViewControllerDelegate];
        v11 = [v10 baseCardForCardViewController:v16];
      }

      else
      {
        v11 = 0;
      }

      [v7 setBaseCard:v11];
      [v7 setRequestedCard:*(a1 + 40)];
      [v7 setReceivedCard:*(a1 + 32)];
      v14 = [v16 cardViewControllerDelegate];
      [v14 controllerForCard:*(a1 + 40) didReceiveAsyncCard:*(a1 + 32) withAsyncCardReceiptFeedback:v7];
    }

    objc_storeStrong(v16 + 132, *(a1 + 32));
    WeakRetained = [v16 isViewLoaded];
    v3 = v16;
    if (WeakRetained)
    {
      WeakRetained = [v16 _loadCardSectionViewControllersFromCard:*(a1 + 32) currentSourceInvalid:1];
LABEL_12:
      v3 = v16;
    }
  }

LABEL_13:

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_loadCardSectionViewControllersFromCard:(id)a3 currentSourceInvalid:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_loaded = 0;
  objc_initWeak(location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke;
  v24[3] = &unk_278DA3668;
  objc_copyWeak(&v26, location);
  v7 = v6;
  v25 = v7;
  v8 = MEMORY[0x245D2D520](v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_3;
  v20[3] = &unk_278DA36E0;
  objc_copyWeak(&v23, location);
  v9 = v8;
  v22 = v9;
  v10 = v7;
  v21 = v10;
  v11 = MEMORY[0x245D2D520](v20);
  v12 = v11;
  if (v4)
  {
    cardSectionViewSource = self->_cardSectionViewSource;
    self->_cardSectionViewSource = 0;

    v14 = [(CRKCardViewController *)self cardViewControllerDelegate];
    if (objc_opt_respondsToSelector())
    {
      card = self->_card;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_6;
      v16[3] = &unk_278DA3730;
      objc_copyWeak(&v19, location);
      v17 = v14;
      v18 = v12;
      [v17 cardViewController:self requestCardSectionViewSourceForCard:card reply:v16];

      objc_destroyWeak(&v19);
    }

    else
    {
      v12[2](v12);
    }
  }

  else
  {
    (*(v11 + 16))(v11);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeCardSectionViewControllersFromParentViewController:WeakRetained[124]];
    [v3[124] removeAllObjects];
    v4 = [*(a1 + 32) cardSections];
    v5 = [v4 count];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
      v7 = v3[124];
      v3[124] = v6;

      v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:5];
      v9 = v3[125];
      v3[125] = v8;

      v10 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0];
      v11 = v3[126];
      v3[126] = v10;

      *(v3 + 1048) = 0;
      v12 = MEMORY[0x277CBEB18];
      v13 = [*(a1 + 32) cardSections];
      v14 = [v12 arrayWithArray:v13];
      v15 = v3[130];
      v3[130] = v14;

      v16 = [v3[130] objectAtIndex:0];
      v17 = [v3 _loadCardSectionViewControllerFromCardSection:v16];

      if (([v17 isLoading] & 1) == 0)
      {
        [v3 cardSectionViewControllerDidFinishLoading:v17];
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_2;
    block[3] = &unk_278DA3168;
    block[4] = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded])
  {
    v2 = [*(a1 + 32) view];
    [v2 setNeedsLayout];

    v3 = [*(a1 + 32) cardViewControllerDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) cardViewControllerDelegate];
      [v5 cardViewControllerBoundsDidChange:*(a1 + 32)];
    }
  }
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[134])
    {
      (*(a1[5] + 2))();
    }

    else
    {
      v4 = objc_alloc_init(_CRKCardSectionViewLoader);
      objc_storeStrong(v3 + 129, v4);
      objc_storeStrong(v3 + 134, v4);
      v5 = [v3 cardViewControllerDelegate];
      NSClassFromString(&cfstr_Siriuilegacyca.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        (*(a1[5] + 2))();
      }

      else
      {
        v7 = objc_alloc_init(_CRKCardSectionViewLoader);
        v8 = v7;
        v9 = v3[129];
        v3[129] = v8;

        objc_storeStrong(v3 + 134, v7);
        v10 = [v3 cardViewControllerDelegate];
        NSClassFromString(&cfstr_Siriuilegacyca.isa);
        v11 = objc_opt_isKindOfClass();

        if (v11)
        {
          (*(a1[5] + 2))();
        }

        else
        {
          v12 = +[_CRKProviderBundleManager sharedInstance];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_4;
          v13[3] = &unk_278DA36B8;
          objc_copyWeak(&v17, a1 + 6);
          v14 = v8;
          v15 = a1[4];
          v16 = a1[5];
          [v12 getProviderBundlesWithCompletion:v13];

          objc_destroyWeak(&v17);
        }
      }
    }
  }
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_5;
  v7[3] = &unk_278DA3690;
  v8 = *(a1 + 48);
  [v5 _loadIdentifiedCardSectionViewProvidersFromCard:v6 identifiedProviders:v3 delegate:WeakRetained completion:v7];
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_6(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_7;
  block[3] = &unk_278DA3708;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v6;
  v11 = a1[4];
  v12 = v5;
  v13 = a1[5];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_7_cold_1(a1, (a1 + 32), v4);
    }
  }

  else if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 134, *(a1 + 48));
  }

  (*(*(a1 + 56) + 16))();
}

- (void)loadView
{
  v3 = objc_alloc_init(CRKComposedStackView);
  [(CRKCardViewController *)self setView:v3];
  [(CRKCardViewController *)self _addCardSectionViewControllersAsChildViewControllers:self->_cardSectionViewControllers];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRKCardViewController;
  [(CRKCardViewController *)&v5 didMoveToParentViewController:a3];
  v4 = [(CRKCardViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CRKCardViewController;
  [(CRKCardViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CRKCardViewController;
  [(CRKCardViewController *)&v9 viewWillAppear:a3];
  v4 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardViewController *)self cardViewControllerDelegate];
    v7 = [(CRKCardViewController *)self card];
    v8 = [(CRKCardViewController *)self _generateCardViewAppearanceFeedback];
    [v6 cardViewWillAppearForCard:v7 withAppearanceFeedback:v8];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CRKCardViewController;
  [(CRKCardViewController *)&v9 viewDidAppear:a3];
  if ([(CRKCardViewController *)self _isActuallyVisible])
  {
    v4 = [(CRKCardViewController *)self cardViewControllerDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CRKCardViewController *)self cardViewControllerDelegate];
      v7 = [(CRKCardViewController *)self card];
      v8 = [(CRKCardViewController *)self _generateCardViewAppearanceFeedback];
      [v6 cardViewDidAppearForCard:v7 withAppearanceFeedback:v8];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CRKCardViewController;
  [(CRKCardViewController *)&v13 viewWillDisappear:a3];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_pendingDismissalCommands;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CRKCardViewController *)self _askDelegateToPerformReferentialCommand:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingDismissalCommands removeAllObjects];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = CRKCardViewController;
  [(CRKCardViewController *)&v14 viewDidDisappear:a3];
  v4 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardViewController *)self navigationController];
    v7 = [v6 viewControllers];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__CRKCardViewController_viewDidDisappear___block_invoke;
    v13[3] = &unk_278DA3758;
    v13[4] = self;
    v8 = [v7 indexOfObjectPassingTest:v13];
    v9 = 3;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7)
    {
      if (v8 == [v7 count] - 2)
      {
        v9 = 5;
      }

      else
      {
        v9 = 4;
      }
    }

    v10 = [objc_alloc(MEMORY[0x277D4C258]) initWithEvent:v9];
    v11 = [(CRKCardViewController *)self cardViewControllerDelegate];
    v12 = [(CRKCardViewController *)self card];
    [v11 cardViewDidDisappearForCard:v12 withDisappearanceFeedback:v10];
  }
}

uint64_t __42__CRKCardViewController_viewDidDisappear___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if ([*(a1 + 32) _crk_isDescendantOfViewController:a2])
  {
    v5 = 1;
    *a4 = 1;
  }

  else
  {
    v5 = *a4;
  }

  return v5 & 1;
}

- (CGSize)preferredContentSize
{
  v3 = [(CRKCardViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(CRKCardViewController *)self view];
  [v6 frame];
  [(CRKCardViewController *)self contentHeightForWidth:v7];
  v9 = v8;

  v10 = v5;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)cardSectionViewControllerDidFinishLoading:(id)a3
{
  if ([(NSMutableArray *)self->_loadingCardSections count])
  {
    [(NSMutableArray *)self->_loadingCardSections removeObjectAtIndex:0];
  }

  if ([(CRKCardViewController *)self isLoading])
  {
    v4 = [(NSMutableArray *)self->_loadingCardSections objectAtIndex:0];
    v5 = [(CRKCardViewController *)self _loadCardSectionViewControllerFromCardSection:v4];

    if (([v5 isLoading] & 1) == 0)
    {
      [(CRKCardViewController *)self cardSectionViewControllerDidFinishLoading:v5];
    }
  }

  else
  {
    [(CRKCardViewController *)self _addCardSectionViewControllersAsChildViewControllers:self->_cardSectionViewControllers];

    [(CRKCardViewController *)self _finishLoading];
  }
}

- (void)cardSectionViewControllerBoundsDidChange:(id)a3
{
  if (self->_loaded)
  {
    v7[7] = v3;
    v7[8] = v4;
    v6 = [(CRKCardViewController *)self view];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__CRKCardViewController_cardSectionViewControllerBoundsDidChange___block_invoke;
    v7[3] = &unk_278DA31E0;
    v7[4] = self;
    [v6 triggerLayoutAnimated:0 completion:v7];
  }
}

void __66__CRKCardViewController_cardSectionViewControllerBoundsDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) cardViewControllerDelegate];
    [v4 cardViewControllerBoundsDidChange:*(a1 + 32)];
  }
}

- (void)cardSectionViewController:(id)a3 requestsHandlingOfIntent:(id)a4
{
  v8 = a4;
  v5 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v7 cardViewController:self requestsHandlingOfIntent:v8];
  }
}

- (CGSize)boundingSizeForCardSectionViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v7 cardViewController:self boundingSizeForCardSectionViewController:v4];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)handleCardCommand:(id)a3 reply:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 commandDirection];
  if (v7 && v7 != 2)
  {
    if (v7 != 1)
    {
      goto LABEL_13;
    }

    if (v6)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF93E8] code:501 userInfo:0];
      v6[2](v6, 0, v8);
    }
  }

  v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v11 handleCardCommand:v13 reply:v6];
  }

  else
  {
    v12 = [(CRKCardViewController *)self _fireAndForgetOutboundCommand:v13];
    if (!v6)
    {
      goto LABEL_13;
    }

    if (v12)
    {
      v6[2](v6, 0, 0);
      goto LABEL_13;
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF93E8] code:500 userInfo:0];
    v6[2](v6, 0, v11);
  }

LABEL_13:
}

- (BOOL)_fireAndForgetOutboundCommand:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 conformsToProtocol:&unk_285615658])
  {
    if ([v4 conformsToProtocol:&unk_28560D988])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v4 handleForCardViewController:self];
        goto LABEL_40;
      }

LABEL_39:
      v16 = 0;
      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [(CRKCardViewController *)self cardViewControllerDelegate];
      v29 = objc_opt_respondsToSelector();

      v30 = [(CRKCardViewController *)self cardViewControllerDelegate];
      v31 = v30;
      if (v29)
      {
        [v30 performRequestUserConfirmationCommand:v4 forCardViewController:self];
      }

      else
      {
        v34 = objc_opt_respondsToSelector();

        if ((v34 & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = [(CRKCardViewController *)self cardViewControllerDelegate];
        [v31 cardViewController:self requestsHandlingOfIntent:0];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [(CRKCardViewController *)self cardViewControllerDelegate];
        v33 = objc_opt_respondsToSelector();

        if ((v33 & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = [(CRKCardViewController *)self cardViewControllerDelegate];
        [v31 performBeganEditingCommand:v4 forCardViewController:self];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_39;
        }

        v35 = [(CRKCardViewController *)self cardViewControllerDelegate];
        v36 = objc_opt_respondsToSelector();

        if ((v36 & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = [(CRKCardViewController *)self cardViewControllerDelegate];
        [v31 performFinishedEditingCommand:v4 forCardViewController:self];
      }
    }

    v16 = 1;
    goto LABEL_40;
  }

  v5 = v4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = self;
  v6 = [(CRKCardViewController *)self card];
  v7 = [v6 dismissalCommands];

  v8 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if ([v12 conformsToProtocol:&unk_285615658])
        {
          v13 = [v12 referenceIdentifier];
          v14 = [v5 referenceIdentifier];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v17 = 1016;
            v18 = v39;
            v19 = v39->_pendingDismissalCommands;
            v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v41;
              v38 = 1016;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v41 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v40 + 1) + 8 * j);
                  v25 = [v24 referenceIdentifier];
                  v26 = [v5 referenceIdentifier];
                  v27 = [v25 isEqualToString:v26];

                  if (v27)
                  {
                    v17 = v38;
                    v18 = v39;
                    [*(&v39->super.super.super.isa + v38) removeObject:v24];
                    goto LABEL_28;
                  }
                }

                v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
                v17 = v38;
                v18 = v39;
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

LABEL_28:

            [*(&v18->super.super.super.isa + v17) addObject:v5];
            v16 = 1;
            goto LABEL_29;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(CRKCardViewController *)v39 _askDelegateToPerformReferentialCommand:v5];
LABEL_29:

LABEL_40:
  return v16;
}

- (void)cardSectionViewControllerShouldBeRemoved:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [(CRKCardViewController *)self _removeCardSectionViewControllersFromParentViewController:v6, v7, v8];

  [(NSMutableArray *)self->_cardSectionViewControllers removeObject:v5];
}

- (void)presentViewController:(id)a3 forCardSectionViewController:(id)a4
{
  v8 = a3;
  v5 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v7 presentViewController:v8 forCardViewController:self];
  }
}

- (void)didEngageCardSection:(id)a3
{
  v4 = a3;
  v7 = [v4 cardSection];
  v5 = [MEMORY[0x277CF9470] cardSectionWithSFCardSection:v7];
  v6 = [(NSMapTable *)self->_cardSectionsToCardSectionViewControllersMapTable objectForKey:v5];
  [v6 didEngageCardSection:v4];
}

- (void)presentViewController:(id)a3
{
  v7 = a3;
  v4 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v6 presentViewController:v7 forCardViewController:self];
  }
}

- (void)willDismissViewController:(id)a3
{
  v7 = a3;
  v4 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v6 cardViewController:self willDismissViewController:v7];
  }
}

- (void)cardSectionView:(id)a3 willProcessEngagementFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v9 cardSectionView:v10 willProcessEngagementFeedback:v6];
  }
}

- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v9 userDidEngageCardSection:v10 withEngagementFeedback:v6];
  }
}

- (void)userDidReportFeedback:(id)a3 fromCardSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v9 userDidReportFeedback:v10 fromCardSection:v6];
  }
}

- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v9 cardSectionViewWillAppearForCardSection:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v9 cardSectionViewDidAppearForCardSection:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidDisappearForCardSection:(id)a3 withDisappearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardViewController *)self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardViewController *)self cardViewControllerDelegate];
    [v9 cardSectionViewDidDisappearForCardSection:v10 withDisappearanceFeedback:v6];
  }
}

- (void)setCardSectionViewSource:(id)a3
{
  v5 = a3;
  if (self->_cardSectionViewSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cardSectionViewSource, a3);
    [(CRKCardViewController *)self _loadCardSectionViewControllersFromCard:self->_card currentSourceInvalid:0];
    v5 = v6;
  }
}

- (double)contentHeightForWidth:(double)a3
{
  v4 = [(CRKCardViewController *)self view];
  [v4 sizeThatFits:{a3, 3.40282347e38}];
  v6 = v5;

  return v6;
}

- (CRKCardViewControllerDelegate)cardViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewControllerDelegate);

  return WeakRetained;
}

- (void)_configureCardSectionViewController:(uint64_t)a1 forCardSection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243247000, a2, OS_LOG_TYPE_ERROR, "No cardSectionViewController for card section: %@. Dropping and continuing", &v2, 0xCu);
}

void __59__CRKCardViewController__setCard_loadProvidersImmediately___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243247000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void __86__CRKCardViewController__loadCardSectionViewControllersFromCard_currentSourceInvalid___block_invoke_7_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_243247000, log, OS_LOG_TYPE_ERROR, "Delegate %@ failed to provide card section view source: %@", &v5, 0x16u);
}

@end