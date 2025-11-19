@interface CRKCardSectionViewController
+ (id)cardSectionViewControllerForViewConfiguration:(id)a3;
+ (void)registerCardSectionViewController;
- (BOOL)_checkIfCardSectionIsNull:(id)a3;
- (BOOL)_expectsSearchUIView;
- (BOOL)_hasCorrespondingSearchUIView;
- (BOOL)_isLoadedWithIntentsUIView;
- (BOOL)_shouldHideButtonOverlay;
- (BOOL)performCommand:(id)a3 forViewController:(id)a4;
- (BOOL)shouldHandleEngagement:(id)a3 forCardSection:(id)a4;
- (CRKCardSectionViewConfiguration)viewConfiguration;
- (CRKCardSectionViewControllerDelegate)delegate;
- (id)_backingCardSection;
- (id)_commands;
- (id)_destinationPunchout;
- (id)_generateCardSectionViewAppearanceFeedback;
- (id)_initWithCardSection:(id)a3;
- (id)_preferredPunchoutCommand;
- (void)_buttonOverlayWasTouchedUpInside:(id)a3;
- (void)_cardSectionTapped;
- (void)_finishLoadingViewIfNecessary;
- (void)_loadCardSectionView;
- (void)_performAllCommands;
- (void)_performCommand:(id)a3;
- (void)_setExtraCommands:(id)a3;
- (void)_setViewExternally:(id)a3;
- (void)_setupCardSectionButtons;
- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5;
- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardSectionViewDidDisappearForCardSection:(id)a3 withDisappearanceFeedback:(id)a4;
- (void)cardSectionViewDidInvalidateSize:(id)a3 animate:(BOOL)a4;
- (void)cardSectionViewDidInvalidateSizeForCardSection:(id)a3;
- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)a3;
- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardViewDidAppearForCard:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardViewDidDisappearForCard:(id)a3 withDisappearanceFeedback:(id)a4;
- (void)cardViewWillAppearForCard:(id)a3 withAppearanceFeedback:(id)a4;
- (void)commandWasPerformed:(id)a3;
- (void)controllerForCard:(id)a3 didReceiveAsyncCard:(id)a4 withAsyncCardReceiptFeedback:(id)a5;
- (void)controllerForCard:(id)a3 didRequestAsyncCard:(id)a4 withAsyncCardRequestFeedback:(id)a5;
- (void)didEngageCardSection:(id)a3;
- (void)didPerformCommand:(id)a3;
- (void)presentViewController:(id)a3;
- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willDismissViewController:(id)a3;
@end

@implementation CRKCardSectionViewController

+ (void)registerCardSectionViewController
{
  v2 = objc_opt_class();

  [_CRKCardSectionViewControllerFactory registerCardSectionViewControllerClass:v2];
}

- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5
{
  v14 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
  v10 = [WeakRetained cardSectionViewController];
  if (([v10 isEqual:self] & 1) == 0)
  {
    v11 = objc_loadWeakRetained(&self->_viewConfiguration);
    v12 = [v11 cardSectionViewController];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
    v10 = [WeakRetained cardSectionViewController];
    [v10 cardEventDidOccur:a3 withIdentifier:v14 userInfo:v8];
  }

LABEL_5:
}

+ (id)cardSectionViewControllerForViewConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 cardSection];
  v5 = [_CRKCardSectionViewControllerFactory cardSectionViewControllerForCardSection:v4];

  [v5 setViewConfiguration:v3];
  v6 = [v3 feedbackDelegateProxy];
  [v6 setFeedbackDelegate:v5];

  v7 = [v3 cardSectionViewController];

  [v7 setCardSectionViewControllingDelegate:v5];

  return v5;
}

- (id)_initWithCardSection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRKCardSectionViewController;
  v6 = [(CRKCardSectionViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(CRKCardSectionViewController *)v6 setViewRespectsSystemMinimumLayoutMargins:0];
    objc_storeStrong(&v7->_cardSection, a3);
    v7->_childVCDesiresInteractivity = 0;
    v8 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_243247000, v8, OS_LOG_TYPE_INFO, "Card section view controller initialized\n    CSVC: %@\n    Card section: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)_setExtraCommands:(id)a3
{
  v5 = a3;
  if (self->_extraCommands != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_extraCommands, a3);
    [(CRKOverlayButton *)self->_overlayButton setHidden:[(CRKCardSectionViewController *)self _shouldHideButtonOverlay]];
    v5 = v6;
  }
}

- (void)_performCommand:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRKCardSectionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    v7 = [v6 canPerformCommand:v4 forCardSectionViewController:self];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [(CRKCardSectionViewController *)self delegate];
  v9 = [v8 performCommand:v4 forCardSectionViewController:self];

  if ((v9 & 1) == 0)
  {
    v10 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_243247000, v10, OS_LOG_TYPE_INFO, "Unable to perform %@ command", &v11, 0xCu);
    }
  }

LABEL_8:
}

- (BOOL)_hasCorrespondingSearchUIView
{
  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
  v4 = [WeakRetained _providerIdentifier];
  if ([v4 isEqualToString:@"com.apple.cards.SearchUICardKitProvider"])
  {
    v5 = objc_loadWeakRetained(&self->_viewConfiguration);
    v6 = [v5 cardSectionView];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_expectsSearchUIView
{
  v3 = [(CRKCardSectionViewController *)self cardSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CRKCardSectionViewController *)self isMemberOfClass:objc_opt_class()];
  }

  return v4;
}

- (BOOL)_isLoadedWithIntentsUIView
{
  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
  v4 = [WeakRetained _providerIdentifier];
  if ([v4 isEqualToString:@"com.apple.cards.IntentsUICardKitProvider"])
  {
    v5 = objc_loadWeakRetained(&self->_viewConfiguration);
    v6 = [v5 cardSectionView];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_performAllCommands
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [(CRKCardSectionViewController *)self _preferredPunchoutCommand];
  v15 = v3;
  if (v3)
  {
    v21[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  else
  {
    v4 = [(CRKCardSectionViewController *)self _commands];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(CRKCardSectionViewController *)self delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {

LABEL_13:
          v14 = [(CRKCardSectionViewController *)self delegate];
          [v14 performCommand:v10 forCardSectionViewController:self];

          continue;
        }

        v12 = [(CRKCardSectionViewController *)self delegate];
        v13 = [v12 canPerformCommand:v10 forCardSectionViewController:self];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_loadCardSectionView
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 cardSection];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_243247000, v3, OS_LOG_TYPE_ERROR, "No card section view is available for %@ (card section %@)", &v5, 0x16u);
}

void __52__CRKCardSectionViewController__loadCardSectionView__block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CRKCardSectionViewController__loadCardSectionView__block_invoke_2;
  block[3] = &unk_278DA3528;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __52__CRKCardSectionViewController__loadCardSectionView__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 48) == 1)
  {
    v3 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_243247000, v3, OS_LOG_TYPE_INFO, "Setting interceptsTouches to NO for %@", &v7, 0xCu);
    }

    [*(a1 + 32) setInterceptsTouches:0];
    WeakRetained[1000] = 1;
    v5 = *(WeakRetained + 124);
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = *(WeakRetained + 124);
      *(WeakRetained + 124) = 0;
    }
  }
}

- (void)_finishLoadingViewIfNecessary
{
  if ([(CRKCardSectionViewController *)self isLoading])
  {
    [(CRKCardSectionViewController *)self setLoading:0];
    v3 = [(CRKCardSectionViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(CRKCardSectionViewController *)self delegate];
      [v5 cardSectionViewControllerDidFinishLoading:self];
    }
  }
}

- (id)_commands
{
  v3 = [(CRKCardSectionViewController *)self cardSection];
  v4 = [v3 actionCommands];

  v5 = [(CRKCardSectionViewController *)self _extraCommands];

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self _extraCommands];
    v7 = [v4 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)_destinationPunchout
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CRKCardSectionViewController *)self _preferredPunchoutCommand];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 crk_backingPunchout];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CRKCardSectionViewController *)self _commands];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 crk_backingPunchout];
            if (v12)
            {
              v5 = v12;
              goto LABEL_14;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_14:
  }

  return v5;
}

- (id)_preferredPunchoutCommand
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), v6 = [v5 preferredPunchoutIndexForCardSectionViewController:self], v5, v6 < 0))
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(CRKCardSectionViewController *)self _commands];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v10 == v6)
            {
              v14 = v13;
              goto LABEL_16;
            }

            ++v10;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_16:
  }

  return v14;
}

- (void)_cardSectionTapped
{
  v3 = [(CRKCardSectionViewController *)self cardSection];
  v7 = [v3 backingCardSection];

  if (v7)
  {
    v4 = objc_alloc(MEMORY[0x277D4C240]);
    v5 = [(CRKCardSectionViewController *)self _destinationPunchout];
    v6 = [v4 initWithCardSection:v7 destination:v5 triggerEvent:2 actionCardType:1];
    [(CRKCardSectionViewController *)self didEngageCardSection:v6];
  }
}

- (void)_buttonOverlayWasTouchedUpInside:(id)a3
{
  v4 = a3;
  v5 = [(CRKCardSectionViewController *)self cardSection];
  v6 = [v5 backingCardSection];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D4C240]);
    v8 = [(CRKCardSectionViewController *)self _destinationPunchout];
    v9 = [v7 initWithCardSection:v6 destination:v8 triggerEvent:2 actionCardType:1];
    [(CRKCardSectionViewController *)self didEngageCardSection:v9];
  }

  else
  {
    [(CRKCardSectionViewController *)self _performAllCommands];
  }

  v10 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CRKCardSectionViewController__buttonOverlayWasTouchedUpInside___block_invoke;
  block[3] = &unk_278DA3168;
  v13 = v4;
  v11 = v4;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

- (BOOL)_shouldHideButtonOverlay
{
  v3 = [(CRKCardSectionViewController *)self cardSection];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CRKCardSectionViewController *)self cardSection];
    v5 = [v4 actionCommands];
    v6 = [v5 count] == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(CRKCardSectionViewController *)self _extraCommands];
  v8 = [v7 count];

  return !v8 && v6;
}

- (id)_backingCardSection
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CRCardSection *)self->_cardSection backingCardSection];
  }

  else
  {
    v3 = 0;
  }

  if ([(CRKCardSectionViewController *)self _checkIfCardSectionIsNull:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (BOOL)_checkIfCardSectionIsNull:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277D4C730]) initWithFacade:v3];
      v4 = [v5 type] == 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_generateCardSectionViewAppearanceFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277CF9410]);
  v4 = [(CRKCardSectionViewController *)self cardSection];
  [v3 setCardSection:v4];

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v3 viewDidLoad];
  [(CRKCardSectionViewController *)self _setupCardSectionButtons];
}

- (void)_setViewExternally:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2855FC3C8])
  {
    [(CRKCardSectionViewController *)self setView:v4];
    [(CRKCardSectionViewController *)self _setupCardSectionButtons];
  }
}

- (void)_setupCardSectionButtons
{
  if ([(CRKCardSectionViewController *)self isViewLoaded])
  {
    if ([(CRKCardSectionViewController *)self _shouldRenderButtonOverlay])
    {
      v3 = objc_alloc_init(CRKOverlayButton);
      overlayButton = self->_overlayButton;
      self->_overlayButton = v3;

      v5 = self->_overlayButton;
      v6 = [(CRKCardSectionViewController *)self view];
      [v6 bounds];
      [(CRKOverlayButton *)v5 setFrame:?];

      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayWasTouchedUpInside_ forControlEvents:64];
      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayWasTouchedUpOutside_ forControlEvents:128];
      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayWasTouchedDown_ forControlEvents:1];
      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayTouchWasCanceled_ forControlEvents:256];
      [(CRKOverlayButton *)self->_overlayButton setHidden:[(CRKCardSectionViewController *)self _shouldHideButtonOverlay]];
      v8 = [(CRKCardSectionViewController *)self view];
      [(CRKOverlayButton *)v8 addSubview:self->_overlayButton];
      v7 = v8;
    }

    else
    {
      [(CRKOverlayButton *)self->_overlayButton removeFromSuperview];
      v7 = self->_overlayButton;
      self->_overlayButton = 0;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v22 viewDidLayoutSubviews];
  v3 = [(CRKCardSectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CRKOverlayButton *)self->_overlayButton frame];
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  if (!CGRectEqualToRect(v23, v25))
  {
    [(CRKOverlayButton *)self->_overlayButton setFrame:v5, v7, v9, v11];
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
  v17 = [WeakRetained _debugOverlayView];

  if (v17)
  {
    [v17 frame];
    v26.origin.x = v18;
    v26.origin.y = v19;
    v26.size.width = v20;
    v26.size.height = v21;
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    if (!CGRectEqualToRect(v24, v26))
    {
      [v17 setFrame:{v5, v7, v9, v11}];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v9 viewWillAppear:a3];
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    v7 = [(CRKCardSectionViewController *)self cardSection];
    v8 = [(CRKCardSectionViewController *)self _generateCardSectionViewAppearanceFeedback];
    [v6 cardSectionViewWillAppearForCardSection:v7 withAppearanceFeedback:v8];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v9 viewDidAppear:a3];
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    v7 = [(CRKCardSectionViewController *)self cardSection];
    v8 = [(CRKCardSectionViewController *)self _generateCardSectionViewAppearanceFeedback];
    [v6 cardSectionViewDidAppearForCardSection:v7 withAppearanceFeedback:v8];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v10 viewDidDisappear:a3];
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CF9418]);
    v7 = [(CRKCardSectionViewController *)self cardSection];
    [v6 setCardSection:v7];

    v8 = [(CRKCardSectionViewController *)self delegate];
    v9 = [(CRKCardSectionViewController *)self cardSection];
    [v8 cardSectionViewDidDisappearForCardSection:v9 withDisappearanceFeedback:v6];
  }
}

- (void)didEngageCardSection:(id)a3
{
  v16 = a3;
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    v7 = MEMORY[0x277CF9470];
    v8 = [v16 cardSection];
    v9 = [v7 cardSectionWithSFCardSection:v8];
    [v6 cardSectionView:v9 willProcessEngagementFeedback:v16];
  }

  [(CRKCardSectionViewController *)self _performAllCommands];
  v10 = [(CRKCardSectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CRKCardSectionViewController *)self delegate];
    v13 = MEMORY[0x277CF9470];
    v14 = [v16 cardSection];
    v15 = [v13 cardSectionWithSFCardSection:v14];
    [v12 userDidEngageCardSection:v15 withEngagementFeedback:v16];
  }
}

- (void)didPerformCommand:(id)a3
{
  v7 = a3;
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    [v6 commandWasPerformed:v7];
  }
}

- (void)cardSectionViewDidInvalidateSize:(id)a3 animate:(BOOL)a4
{
  v5 = [(CRKCardSectionViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKCardSectionViewController *)self delegate];
    [v7 cardSectionViewControllerBoundsDidChange:self];
  }
}

- (void)presentViewController:(id)a3
{
  v7 = a3;
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    [v6 presentViewController:v7 forCardSectionViewController:self];
  }
}

- (void)willDismissViewController:(id)a3
{
  v7 = a3;
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    [v6 cardSectionViewController:self willDismissViewController:v7];
  }
}

- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)a3
{
  v5 = [(CRKCardSectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKCardSectionViewController *)self delegate];
    [v7 cardSectionViewController:self didSelectPreferredPunchoutIndex:a3];
  }
}

- (BOOL)performCommand:(id)a3 forViewController:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CRKCardSectionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(CRKCardSectionViewController *)self delegate];
    v8 = [v7 canPerformCommand:v5 forCardSectionViewController:self];

    if (!v8)
    {
      v9 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v5;
LABEL_11:
        _os_log_impl(&dword_243247000, v9, OS_LOG_TYPE_INFO, "Unable to perform %@ command", &v15, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = [(CRKCardSectionViewController *)self delegate];
  v11 = [v10 performCommand:v5 forCardSectionViewController:self];

  v9 = *MEMORY[0x277CF93F0];
  v12 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v12)
    {
      v15 = 138412290;
      v16 = v5;
      goto LABEL_11;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_14;
  }

  if (v12)
  {
    v15 = 138412290;
    v16 = v5;
    v13 = 1;
    _os_log_impl(&dword_243247000, v9, OS_LOG_TYPE_INFO, "Performed %@ command", &v15, 0xCu);
  }

  else
  {
    v13 = 1;
  }

LABEL_14:

  return v13;
}

- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 backingFeedback];
    [(CRKCardSectionViewController *)self didEngageCardSection:v5];
  }

  else
  {
    [(CRKCardSectionViewController *)self _performAllCommands];
  }
}

- (void)commandWasPerformed:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 backingFeedback];
    [(CRKCardSectionViewController *)self didPerformCommand:v5];
  }

  else
  {
    v6 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [CRKCardSectionViewController commandWasPerformed:v6];
    }
  }
}

- (BOOL)shouldHandleEngagement:(id)a3 forCardSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRKCardSectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRKCardSectionViewController *)self delegate];
    v11 = [v10 shouldHandleEngagement:v6 forCardSection:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)cardViewWillAppearForCard:(id)a3 withAppearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardViewWillAppearForCard:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardViewDidAppearForCard:(id)a3 withAppearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardViewDidAppearForCard:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardViewDidDisappearForCard:(id)a3 withDisappearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardViewDidDisappearForCard:v10 withDisappearanceFeedback:v6];
  }
}

- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardSectionViewWillAppearForCardSection:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardSectionViewDidAppearForCardSection:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidDisappearForCardSection:(id)a3 withDisappearanceFeedback:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardSectionViewDidDisappearForCardSection:v10 withDisappearanceFeedback:v6];
  }
}

- (void)controllerForCard:(id)a3 didRequestAsyncCard:(id)a4 withAsyncCardRequestFeedback:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CRKCardSectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CRKCardSectionViewController *)self delegate];
    [v12 controllerForCard:v13 didRequestAsyncCard:v8 withAsyncCardRequestFeedback:v9];
  }
}

- (void)controllerForCard:(id)a3 didReceiveAsyncCard:(id)a4 withAsyncCardReceiptFeedback:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CRKCardSectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CRKCardSectionViewController *)self delegate];
    [v12 controllerForCard:v13 didReceiveAsyncCard:v8 withAsyncCardReceiptFeedback:v9];
  }
}

- (void)cardSectionViewDidInvalidateSizeForCardSection:(id)a3
{
  v10 = a3;
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    [v6 cardSectionViewDidInvalidateSizeForCardSection:v10];
  }

  v7 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRKCardSectionViewController *)self delegate];
    [v9 cardSectionViewControllerBoundsDidChange:self];
  }
}

- (CRKCardSectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CRKCardSectionViewConfiguration)viewConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);

  return WeakRetained;
}

@end