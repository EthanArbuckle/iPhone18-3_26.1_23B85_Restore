@interface CRKCardSectionViewController
+ (id)cardSectionViewControllerForViewConfiguration:(id)configuration;
+ (void)registerCardSectionViewController;
- (BOOL)_checkIfCardSectionIsNull:(id)null;
- (BOOL)_expectsSearchUIView;
- (BOOL)_hasCorrespondingSearchUIView;
- (BOOL)_isLoadedWithIntentsUIView;
- (BOOL)_shouldHideButtonOverlay;
- (BOOL)performCommand:(id)command forViewController:(id)controller;
- (BOOL)shouldHandleEngagement:(id)engagement forCardSection:(id)section;
- (CRKCardSectionViewConfiguration)viewConfiguration;
- (CRKCardSectionViewControllerDelegate)delegate;
- (id)_backingCardSection;
- (id)_commands;
- (id)_destinationPunchout;
- (id)_generateCardSectionViewAppearanceFeedback;
- (id)_initWithCardSection:(id)section;
- (id)_preferredPunchoutCommand;
- (void)_buttonOverlayWasTouchedUpInside:(id)inside;
- (void)_cardSectionTapped;
- (void)_finishLoadingViewIfNecessary;
- (void)_loadCardSectionView;
- (void)_performAllCommands;
- (void)_performCommand:(id)command;
- (void)_setExtraCommands:(id)commands;
- (void)_setViewExternally:(id)externally;
- (void)_setupCardSectionButtons;
- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info;
- (void)cardSectionViewDidAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback;
- (void)cardSectionViewDidDisappearForCardSection:(id)section withDisappearanceFeedback:(id)feedback;
- (void)cardSectionViewDidInvalidateSize:(id)size animate:(BOOL)animate;
- (void)cardSectionViewDidInvalidateSizeForCardSection:(id)section;
- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)index;
- (void)cardSectionViewWillAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback;
- (void)cardViewDidAppearForCard:(id)card withAppearanceFeedback:(id)feedback;
- (void)cardViewDidDisappearForCard:(id)card withDisappearanceFeedback:(id)feedback;
- (void)cardViewWillAppearForCard:(id)card withAppearanceFeedback:(id)feedback;
- (void)commandWasPerformed:(id)performed;
- (void)controllerForCard:(id)card didReceiveAsyncCard:(id)asyncCard withAsyncCardReceiptFeedback:(id)feedback;
- (void)controllerForCard:(id)card didRequestAsyncCard:(id)asyncCard withAsyncCardRequestFeedback:(id)feedback;
- (void)didEngageCardSection:(id)section;
- (void)didPerformCommand:(id)command;
- (void)presentViewController:(id)controller;
- (void)userDidEngageCardSection:(id)section withEngagementFeedback:(id)feedback;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismissViewController:(id)controller;
@end

@implementation CRKCardSectionViewController

+ (void)registerCardSectionViewController
{
  v2 = objc_opt_class();

  [_CRKCardSectionViewControllerFactory registerCardSectionViewControllerClass:v2];
}

- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
  cardSectionViewController = [WeakRetained cardSectionViewController];
  if (([cardSectionViewController isEqual:self] & 1) == 0)
  {
    v11 = objc_loadWeakRetained(&self->_viewConfiguration);
    cardSectionViewController2 = [v11 cardSectionViewController];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
    cardSectionViewController = [WeakRetained cardSectionViewController];
    [cardSectionViewController cardEventDidOccur:occur withIdentifier:identifierCopy userInfo:infoCopy];
  }

LABEL_5:
}

+ (id)cardSectionViewControllerForViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cardSection = [configurationCopy cardSection];
  v5 = [_CRKCardSectionViewControllerFactory cardSectionViewControllerForCardSection:cardSection];

  [v5 setViewConfiguration:configurationCopy];
  feedbackDelegateProxy = [configurationCopy feedbackDelegateProxy];
  [feedbackDelegateProxy setFeedbackDelegate:v5];

  cardSectionViewController = [configurationCopy cardSectionViewController];

  [cardSectionViewController setCardSectionViewControllingDelegate:v5];

  return v5;
}

- (id)_initWithCardSection:(id)section
{
  v15 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v10.receiver = self;
  v10.super_class = CRKCardSectionViewController;
  v6 = [(CRKCardSectionViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(CRKCardSectionViewController *)v6 setViewRespectsSystemMinimumLayoutMargins:0];
    objc_storeStrong(&v7->_cardSection, section);
    v7->_childVCDesiresInteractivity = 0;
    v8 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = sectionCopy;
      _os_log_impl(&dword_243247000, v8, OS_LOG_TYPE_INFO, "Card section view controller initialized\n    CSVC: %@\n    Card section: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)_setExtraCommands:(id)commands
{
  commandsCopy = commands;
  if (self->_extraCommands != commandsCopy)
  {
    v6 = commandsCopy;
    objc_storeStrong(&self->_extraCommands, commands);
    [(CRKOverlayButton *)self->_overlayButton setHidden:[(CRKCardSectionViewController *)self _shouldHideButtonOverlay]];
    commandsCopy = v6;
  }
}

- (void)_performCommand:(id)command
{
  v13 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  delegate = [(CRKCardSectionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    v7 = [delegate2 canPerformCommand:commandCopy forCardSectionViewController:self];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  delegate3 = [(CRKCardSectionViewController *)self delegate];
  v9 = [delegate3 performCommand:commandCopy forCardSectionViewController:self];

  if ((v9 & 1) == 0)
  {
    v10 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = commandCopy;
      _os_log_impl(&dword_243247000, v10, OS_LOG_TYPE_INFO, "Unable to perform %@ command", &v11, 0xCu);
    }
  }

LABEL_8:
}

- (BOOL)_hasCorrespondingSearchUIView
{
  WeakRetained = objc_loadWeakRetained(&self->_viewConfiguration);
  _providerIdentifier = [WeakRetained _providerIdentifier];
  if ([_providerIdentifier isEqualToString:@"com.apple.cards.SearchUICardKitProvider"])
  {
    v5 = objc_loadWeakRetained(&self->_viewConfiguration);
    cardSectionView = [v5 cardSectionView];
    v7 = cardSectionView != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_expectsSearchUIView
{
  cardSection = [(CRKCardSectionViewController *)self cardSection];
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
  _providerIdentifier = [WeakRetained _providerIdentifier];
  if ([_providerIdentifier isEqualToString:@"com.apple.cards.IntentsUICardKitProvider"])
  {
    v5 = objc_loadWeakRetained(&self->_viewConfiguration);
    cardSectionView = [v5 cardSectionView];
    v7 = cardSectionView != 0;
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
  _preferredPunchoutCommand = [(CRKCardSectionViewController *)self _preferredPunchoutCommand];
  v15 = _preferredPunchoutCommand;
  if (_preferredPunchoutCommand)
  {
    v21[0] = _preferredPunchoutCommand;
    _commands = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  else
  {
    _commands = [(CRKCardSectionViewController *)self _commands];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = _commands;
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
        delegate = [(CRKCardSectionViewController *)self delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {

LABEL_13:
          delegate2 = [(CRKCardSectionViewController *)self delegate];
          [delegate2 performCommand:v10 forCardSectionViewController:self];

          continue;
        }

        delegate3 = [(CRKCardSectionViewController *)self delegate];
        v13 = [delegate3 canPerformCommand:v10 forCardSectionViewController:self];

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
  cardSection = [self cardSection];
  v5 = 138412546;
  selfCopy = self;
  v7 = 2112;
  v8 = cardSection;
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
    delegate = [(CRKCardSectionViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(CRKCardSectionViewController *)self delegate];
      [delegate2 cardSectionViewControllerDidFinishLoading:self];
    }
  }
}

- (id)_commands
{
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  actionCommands = [cardSection actionCommands];

  _extraCommands = [(CRKCardSectionViewController *)self _extraCommands];

  if (_extraCommands)
  {
    _extraCommands2 = [(CRKCardSectionViewController *)self _extraCommands];
    v7 = [actionCommands arrayByAddingObjectsFromArray:_extraCommands2];
  }

  else
  {
    v7 = actionCommands;
  }

  return v7;
}

- (id)_destinationPunchout
{
  v19 = *MEMORY[0x277D85DE8];
  _preferredPunchoutCommand = [(CRKCardSectionViewController *)self _preferredPunchoutCommand];
  v4 = _preferredPunchoutCommand;
  if (_preferredPunchoutCommand)
  {
    crk_backingPunchout = [_preferredPunchoutCommand crk_backingPunchout];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _commands = [(CRKCardSectionViewController *)self _commands];
    v7 = [_commands countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(_commands);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            crk_backingPunchout2 = [v11 crk_backingPunchout];
            if (crk_backingPunchout2)
            {
              crk_backingPunchout = crk_backingPunchout2;
              goto LABEL_14;
            }
          }
        }

        v8 = [_commands countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    crk_backingPunchout = 0;
LABEL_14:
  }

  return crk_backingPunchout;
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
    _commands = [(CRKCardSectionViewController *)self _commands];
    v8 = [_commands countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(_commands);
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

        v9 = [_commands countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  backingCardSection = [cardSection backingCardSection];

  if (backingCardSection)
  {
    v4 = objc_alloc(MEMORY[0x277D4C240]);
    _destinationPunchout = [(CRKCardSectionViewController *)self _destinationPunchout];
    v6 = [v4 initWithCardSection:backingCardSection destination:_destinationPunchout triggerEvent:2 actionCardType:1];
    [(CRKCardSectionViewController *)self didEngageCardSection:v6];
  }
}

- (void)_buttonOverlayWasTouchedUpInside:(id)inside
{
  insideCopy = inside;
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  backingCardSection = [cardSection backingCardSection];

  if (backingCardSection)
  {
    v7 = objc_alloc(MEMORY[0x277D4C240]);
    _destinationPunchout = [(CRKCardSectionViewController *)self _destinationPunchout];
    v9 = [v7 initWithCardSection:backingCardSection destination:_destinationPunchout triggerEvent:2 actionCardType:1];
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
  v13 = insideCopy;
  v11 = insideCopy;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

- (BOOL)_shouldHideButtonOverlay
{
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  if (objc_opt_respondsToSelector())
  {
    cardSection2 = [(CRKCardSectionViewController *)self cardSection];
    actionCommands = [cardSection2 actionCommands];
    v6 = [actionCommands count] == 0;
  }

  else
  {
    v6 = 1;
  }

  _extraCommands = [(CRKCardSectionViewController *)self _extraCommands];
  v8 = [_extraCommands count];

  return !v8 && v6;
}

- (id)_backingCardSection
{
  if (objc_opt_respondsToSelector())
  {
    backingCardSection = [(CRCardSection *)self->_cardSection backingCardSection];
  }

  else
  {
    backingCardSection = 0;
  }

  if ([(CRKCardSectionViewController *)self _checkIfCardSectionIsNull:backingCardSection])
  {
    v4 = 0;
  }

  else
  {
    v4 = backingCardSection;
  }

  v5 = v4;

  return v4;
}

- (BOOL)_checkIfCardSectionIsNull:(id)null
{
  nullCopy = null;
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
      v5 = [objc_alloc(MEMORY[0x277D4C730]) initWithFacade:nullCopy];
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
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  [v3 setCardSection:cardSection];

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v3 viewDidLoad];
  [(CRKCardSectionViewController *)self _setupCardSectionButtons];
}

- (void)_setViewExternally:(id)externally
{
  externallyCopy = externally;
  if ([externallyCopy conformsToProtocol:&unk_2855FC3C8])
  {
    [(CRKCardSectionViewController *)self setView:externallyCopy];
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
      view = [(CRKCardSectionViewController *)self view];
      [view bounds];
      [(CRKOverlayButton *)v5 setFrame:?];

      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayWasTouchedUpInside_ forControlEvents:64];
      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayWasTouchedUpOutside_ forControlEvents:128];
      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayWasTouchedDown_ forControlEvents:1];
      [(CRKOverlayButton *)self->_overlayButton addTarget:self action:sel__buttonOverlayTouchWasCanceled_ forControlEvents:256];
      [(CRKOverlayButton *)self->_overlayButton setHidden:[(CRKCardSectionViewController *)self _shouldHideButtonOverlay]];
      view2 = [(CRKCardSectionViewController *)self view];
      [(CRKOverlayButton *)view2 addSubview:self->_overlayButton];
      v7 = view2;
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
  view = [(CRKCardSectionViewController *)self view];
  [view bounds];
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
  _debugOverlayView = [WeakRetained _debugOverlayView];

  if (_debugOverlayView)
  {
    [_debugOverlayView frame];
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
      [_debugOverlayView setFrame:{v5, v7, v9, v11}];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v9 viewWillAppear:appear];
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    cardSection = [(CRKCardSectionViewController *)self cardSection];
    _generateCardSectionViewAppearanceFeedback = [(CRKCardSectionViewController *)self _generateCardSectionViewAppearanceFeedback];
    [delegate2 cardSectionViewWillAppearForCardSection:cardSection withAppearanceFeedback:_generateCardSectionViewAppearanceFeedback];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v9 viewDidAppear:appear];
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    cardSection = [(CRKCardSectionViewController *)self cardSection];
    _generateCardSectionViewAppearanceFeedback = [(CRKCardSectionViewController *)self _generateCardSectionViewAppearanceFeedback];
    [delegate2 cardSectionViewDidAppearForCardSection:cardSection withAppearanceFeedback:_generateCardSectionViewAppearanceFeedback];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = CRKCardSectionViewController;
  [(CRKCardSectionViewController *)&v10 viewDidDisappear:disappear];
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CF9418]);
    cardSection = [(CRKCardSectionViewController *)self cardSection];
    [v6 setCardSection:cardSection];

    delegate2 = [(CRKCardSectionViewController *)self delegate];
    cardSection2 = [(CRKCardSectionViewController *)self cardSection];
    [delegate2 cardSectionViewDidDisappearForCardSection:cardSection2 withDisappearanceFeedback:v6];
  }
}

- (void)didEngageCardSection:(id)section
{
  sectionCopy = section;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    v7 = MEMORY[0x277CF9470];
    cardSection = [sectionCopy cardSection];
    v9 = [v7 cardSectionWithSFCardSection:cardSection];
    [delegate2 cardSectionView:v9 willProcessEngagementFeedback:sectionCopy];
  }

  [(CRKCardSectionViewController *)self _performAllCommands];
  delegate3 = [(CRKCardSectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate4 = [(CRKCardSectionViewController *)self delegate];
    v13 = MEMORY[0x277CF9470];
    cardSection2 = [sectionCopy cardSection];
    v15 = [v13 cardSectionWithSFCardSection:cardSection2];
    [delegate4 userDidEngageCardSection:v15 withEngagementFeedback:sectionCopy];
  }
}

- (void)didPerformCommand:(id)command
{
  commandCopy = command;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 commandWasPerformed:commandCopy];
  }
}

- (void)cardSectionViewDidInvalidateSize:(id)size animate:(BOOL)animate
{
  v5 = [(CRKCardSectionViewController *)self delegate:size];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CRKCardSectionViewController *)self delegate];
    [delegate cardSectionViewControllerBoundsDidChange:self];
  }
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 presentViewController:controllerCopy forCardSectionViewController:self];
  }
}

- (void)willDismissViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardSectionViewController:self willDismissViewController:controllerCopy];
  }
}

- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)index
{
  delegate = [(CRKCardSectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardSectionViewController:self didSelectPreferredPunchoutIndex:index];
  }
}

- (BOOL)performCommand:(id)command forViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  delegate = [(CRKCardSectionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    v8 = [delegate2 canPerformCommand:commandCopy forCardSectionViewController:self];

    if (!v8)
    {
      v9 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = commandCopy;
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

  delegate3 = [(CRKCardSectionViewController *)self delegate];
  v11 = [delegate3 performCommand:commandCopy forCardSectionViewController:self];

  v9 = *MEMORY[0x277CF93F0];
  v12 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v12)
    {
      v15 = 138412290;
      v16 = commandCopy;
      goto LABEL_11;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_14;
  }

  if (v12)
  {
    v15 = 138412290;
    v16 = commandCopy;
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

- (void)userDidEngageCardSection:(id)section withEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if (objc_opt_respondsToSelector())
  {
    backingFeedback = [feedbackCopy backingFeedback];
    [(CRKCardSectionViewController *)self didEngageCardSection:backingFeedback];
  }

  else
  {
    [(CRKCardSectionViewController *)self _performAllCommands];
  }
}

- (void)commandWasPerformed:(id)performed
{
  performedCopy = performed;
  if (objc_opt_respondsToSelector())
  {
    backingFeedback = [performedCopy backingFeedback];
    [(CRKCardSectionViewController *)self didPerformCommand:backingFeedback];
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

- (BOOL)shouldHandleEngagement:(id)engagement forCardSection:(id)section
{
  engagementCopy = engagement;
  sectionCopy = section;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    v11 = [delegate2 shouldHandleEngagement:engagementCopy forCardSection:sectionCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)cardViewWillAppearForCard:(id)card withAppearanceFeedback:(id)feedback
{
  cardCopy = card;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardViewWillAppearForCard:cardCopy withAppearanceFeedback:feedbackCopy];
  }
}

- (void)cardViewDidAppearForCard:(id)card withAppearanceFeedback:(id)feedback
{
  cardCopy = card;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardViewDidAppearForCard:cardCopy withAppearanceFeedback:feedbackCopy];
  }
}

- (void)cardViewDidDisappearForCard:(id)card withDisappearanceFeedback:(id)feedback
{
  cardCopy = card;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardViewDidDisappearForCard:cardCopy withDisappearanceFeedback:feedbackCopy];
  }
}

- (void)cardSectionViewWillAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback
{
  sectionCopy = section;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardSectionViewWillAppearForCardSection:sectionCopy withAppearanceFeedback:feedbackCopy];
  }
}

- (void)cardSectionViewDidAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback
{
  sectionCopy = section;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardSectionViewDidAppearForCardSection:sectionCopy withAppearanceFeedback:feedbackCopy];
  }
}

- (void)cardSectionViewDidDisappearForCardSection:(id)section withDisappearanceFeedback:(id)feedback
{
  sectionCopy = section;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardSectionViewDidDisappearForCardSection:sectionCopy withDisappearanceFeedback:feedbackCopy];
  }
}

- (void)controllerForCard:(id)card didRequestAsyncCard:(id)asyncCard withAsyncCardRequestFeedback:(id)feedback
{
  cardCopy = card;
  asyncCardCopy = asyncCard;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 controllerForCard:cardCopy didRequestAsyncCard:asyncCardCopy withAsyncCardRequestFeedback:feedbackCopy];
  }
}

- (void)controllerForCard:(id)card didReceiveAsyncCard:(id)asyncCard withAsyncCardReceiptFeedback:(id)feedback
{
  cardCopy = card;
  asyncCardCopy = asyncCard;
  feedbackCopy = feedback;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 controllerForCard:cardCopy didReceiveAsyncCard:asyncCardCopy withAsyncCardReceiptFeedback:feedbackCopy];
  }
}

- (void)cardSectionViewDidInvalidateSizeForCardSection:(id)section
{
  sectionCopy = section;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    [delegate2 cardSectionViewDidInvalidateSizeForCardSection:sectionCopy];
  }

  delegate3 = [(CRKCardSectionViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate4 = [(CRKCardSectionViewController *)self delegate];
    [delegate4 cardSectionViewControllerBoundsDidChange:self];
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