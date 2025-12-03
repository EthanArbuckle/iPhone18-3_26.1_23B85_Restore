@interface CRKCardPresentation
+ (void)initialize;
+ (void)registerProvider:(id)provider;
+ (void)unregisterProvider:(id)provider;
- (BOOL)cardSectionDisplayRequiresUserConsentForProvider:(id)provider;
- (CRCard)card;
- (CRKCardPresentation)init;
- (CRKCardPresentationDelegate)delegate;
- (double)boundingWidthForProvider:(id)provider;
- (id)_cardSectionViewControllerForCardSection:(id)section;
- (int64_t)cardSectionViewLoader:(id)loader compareCardSectionViewProviderOne:(id)one providerTwo:(id)two;
- (int64_t)semanticContentAttributeForCardFactory:(id)factory;
- (void)_configureWithRequestedCard:(id)card animated:(BOOL)animated completion:(id)completion;
- (void)_establishParsecSessionIfNeeded:(id)needed;
- (void)_fullyConfigureWithRequestedCard:(id)card animated:(BOOL)animated completion:(id)completion;
- (void)_loadAndRegisterBundleProviders:(id)providers;
- (void)_updateViewConfigurationsDebugMode:(BOOL)mode;
- (void)cardViewController:(id)controller requestCardSectionViewSourceForCard:(id)card reply:(id)reply;
- (void)configureWithCardRequest:(id)request completion:(id)completion;
- (void)configureWithContent:(id)content completion:(id)completion;
- (void)dealloc;
- (void)setConfiguration:(id)configuration animated:(BOOL)animated completion:(id)completion;
- (void)setDebugModeEnabled:(BOOL)enabled;
- (void)transitionAnimator:(id)animator willTransitionFromCardViewController:(id)controller toCardViewController:(id)viewController withAnimationCoordinator:(id)coordinator;
@end

@implementation CRKCardPresentation

+ (void)initialize
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___CRKCardPresentation;
  objc_msgSendSuper2(&v8, sel_initialize);
  CRLogInitIfNeeded();
  v2 = objc_alloc_init(_CRKBuiltInProvider);
  v3 = +[CRKIdentifiedProviderRegistry sharedInstance];
  [v3 registerIdentifiedProvider:v2];

  mEMORY[0x277CF93E0] = [MEMORY[0x277CF93E0] sharedInstance];
  v5 = objc_opt_new();
  [mEMORY[0x277CF93E0] registerIdentifiedService:v5];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v7 = [_CRKImageLoader sharedInstanceWithInitialDelegate:mainScreen];

  if (([v7 active] & 1) == 0)
  {
    [v7 setActive:1];
  }
}

- (CRKCardPresentation)init
{
  v8.receiver = self;
  v8.super_class = CRKCardPresentation;
  v2 = [(CRKCardPresentation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CRKCardSectionViewLoader);
    cardSectionViewLoader = v2->_cardSectionViewLoader;
    v2->_cardSectionViewLoader = v3;

    [(_CRKCardSectionViewLoader *)v2->_cardSectionViewLoader setDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x277CF9458]);
    cardViewControllerDelegateChain = v2->_cardViewControllerDelegateChain;
    v2->_cardViewControllerDelegateChain = v5;

    [(CRProtocolRestrictedInvocationChain *)v2->_cardViewControllerDelegateChain setRestrictingProtocol:&unk_2855F2648];
    [(CRProtocolRestrictedInvocationChain *)v2->_cardViewControllerDelegateChain addChainedObject:v2];
  }

  return v2;
}

- (void)dealloc
{
  cardViewController = self->_cardViewController;
  if (cardViewController && self->_loadedCardViewControllerProvider)
  {
    objc_initWeak(&location, cardViewController);
    objc_initWeak(&from, self->_loadedCardViewControllerProvider);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__CRKCardPresentation_dealloc__block_invoke;
    v6[3] = &unk_278DA3208;
    objc_copyWeak(&v7, &location);
    objc_copyWeak(&v8, &from);
    v4 = MEMORY[0x245D2D520](v6);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v4[2](v4);
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], v4);
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v5.receiver = self;
  v5.super_class = CRKCardPresentation;
  [(CRKCardPresentation *)&v5 dealloc];
}

void __30__CRKCardPresentation_dealloc__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 unregisterCardViewController:v4];
    }

    WeakRetained = v4;
  }
}

- (void)setConfiguration:(id)configuration animated:(BOOL)animated completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke;
  v12[3] = &unk_278DA32A8;
  v12[4] = self;
  v13 = configurationCopy;
  v14 = completionCopy;
  animatedCopy = animated;
  v10 = completionCopy;
  v11 = configurationCopy;
  [(CRKCardPresentation *)self _establishParsecSessionIfNeeded:v12];
}

void __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CF93F0];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_243247000, v4, OS_LOG_TYPE_INFO, "Parsec session is established", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_135;
  v11[3] = &unk_278DA3280;
  objc_copyWeak(&v14, buf);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_135(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[6] isEqual:*(a1 + 32)])
    {
      v4 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_243247000, v4, OS_LOG_TYPE_DEFAULT, "Input configuration %@ matches current configuration. Returning early.", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      objc_storeStrong(v3 + 6, *(a1 + 32));
      v7 = [*(a1 + 32) cardRequest];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_136;
      v8[3] = &unk_278DA3258;
      objc_copyWeak(&v10, (a1 + 48));
      v11 = *(a1 + 56);
      v9 = *(a1 + 40);
      [v7 startWithReply:v8];

      objc_destroyWeak(&v10);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, 0);
    }
  }
}

void __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_2;
  block[3] = &unk_278DA3230;
  v11 = v5;
  v7 = v5;
  objc_copyWeak(&v14, (a1 + 40));
  v15 = *(a1 + 48);
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) card];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _fullyConfigureWithRequestedCard:v2 animated:*(a1 + 64) completion:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = *MEMORY[0x277CF93E8];
      v7 = *(a1 + 40);
      if (v7)
      {
        v10 = *MEMORY[0x277CCA7E8];
        v11[0] = v7;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      }

      else
      {
        v8 = 0;
      }

      v9 = [v5 errorWithDomain:v6 code:401 userInfo:v8];
      (*(v4 + 16))(v4, 1, v9);

      if (v7)
      {
      }
    }
  }
}

- (CRCard)card
{
  cardViewController = [(CRKCardPresentation *)self cardViewController];
  card = [cardViewController card];

  return card;
}

- (void)configureWithContent:(id)content completion:(id)completion
{
  v6 = MEMORY[0x277CF93D8];
  completionCopy = completion;
  contentCopy = content;
  v9 = [[v6 alloc] initWithContent:contentCopy format:0];

  [(CRKCardPresentation *)self configureWithCardRequest:v9 completion:completionCopy];
}

- (void)configureWithCardRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [[CRKCardPresentationConfiguration alloc] initWithCardRequest:requestCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CRKCardPresentation_configureWithCardRequest_completion___block_invoke;
  v10[3] = &unk_278DA32D0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(CRKCardPresentation *)self setConfiguration:v8 animated:0 completion:v10];
}

uint64_t __59__CRKCardPresentation_configureWithCardRequest_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

+ (void)registerProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[CRKIdentifiedProviderRegistry sharedInstance];
  [v4 registerIdentifiedProvider:providerCopy];
}

+ (void)unregisterProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[CRKIdentifiedProviderRegistry sharedInstance];
  [v4 unregisterIdentifiedProvider:providerCopy];
}

- (void)setDebugModeEnabled:(BOOL)enabled
{
  if (self->_debugModeEnabled != enabled)
  {
    self->_debugModeEnabled = enabled;
    [(CRKCardPresentation *)self _updateViewConfigurationsDebugMode:?];
  }
}

- (void)_updateViewConfigurationsDebugMode:(BOOL)mode
{
  modeCopy = mode;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _allViewConfigurations = [(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader _allViewConfigurations];
  v5 = [_allViewConfigurations countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_allViewConfigurations);
        }

        [*(*(&v9 + 1) + 8 * v8++) _setDebugModeEnabled:modeCopy];
      }

      while (v6 != v8);
      v6 = [_allViewConfigurations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_cardSectionViewControllerForCardSection:(id)section
{
  v19 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  if ([(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader cardSectionShouldBeDisplayed:sectionCopy])
  {
    v5 = [(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader viewConfigurationForCardSection:sectionCopy];
    _cardKitCardSectionViewController = [v5 _cardKitCardSectionViewController];

    if (_cardKitCardSectionViewController)
    {
      goto LABEL_8;
    }

    cardViewController = [(CRKCardPresentation *)self cardViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      cardViewController2 = [(CRKCardPresentation *)self cardViewController];
      _cardKitCardSectionViewController = [cardViewController2 _cardSectionViewControllerForCardSection:sectionCopy];

      goto LABEL_8;
    }
  }

  else
  {
    v10 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      cardSectionViewLoader = self->_cardSectionViewLoader;
      v13 = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = cardSectionViewLoader;
      v17 = 2112;
      v18 = sectionCopy;
      _os_log_impl(&dword_243247000, v10, OS_LOG_TYPE_DEFAULT, "%@ not returning card section view controller because provider manager %@ marked card section %@ ineligble for display", &v13, 0x20u);
    }
  }

  _cardKitCardSectionViewController = 0;
LABEL_8:

  return _cardKitCardSectionViewController;
}

- (void)_loadAndRegisterBundleProviders:(id)providers
{
  v12 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_243247000, v5, OS_LOG_TYPE_INFO, "Loading and registering bundle providers if necessary: %@", buf, 0xCu);
  }

  v6 = +[_CRKProviderBundleManager sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CRKCardPresentation__loadAndRegisterBundleProviders___block_invoke;
  v8[3] = &unk_278DA32F8;
  v9 = providersCopy;
  v7 = providersCopy;
  [v6 getProviderBundlesWithCompletion:v8];
}

void __55__CRKCardPresentation__loadAndRegisterBundleProviders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_13:
      v8();
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = +[CRKIdentifiedProviderRegistry sharedInstance];
          [v14 registerIdentifiedProvider:v13];
        }

        v10 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v8 = *(v15 + 16);
      goto LABEL_13;
    }
  }
}

- (void)_fullyConfigureWithRequestedCard:(id)card animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  cardCopy = card;
  completionCopy = completion;
  configuration = [(CRKCardPresentation *)self configuration];
  loadsBundleProviders = [configuration loadsBundleProviders];

  if (loadsBundleProviders)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__CRKCardPresentation__fullyConfigureWithRequestedCard_animated_completion___block_invoke;
    v12[3] = &unk_278DA3348;
    v14 = completionCopy;
    objc_copyWeak(&v15, &location);
    v13 = cardCopy;
    v16 = animatedCopy;
    [(CRKCardPresentation *)self _loadAndRegisterBundleProviders:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CRKCardPresentation *)self _configureWithRequestedCard:cardCopy animated:animatedCopy completion:completionCopy];
  }
}

void __76__CRKCardPresentation__fullyConfigureWithRequestedCard_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CRKCardPresentation__fullyConfigureWithRequestedCard_animated_completion___block_invoke_2;
  block[3] = &unk_278DA3320;
  v6 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 32);
  v10 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

uint64_t __76__CRKCardPresentation__fullyConfigureWithRequestedCard_animated_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    result = *(a1 + 48);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      [WeakRetained _configureWithRequestedCard:*(a1 + 40) animated:*(a1 + 64) completion:*(a1 + 48)];
    }

    else
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        (*(v5 + 16))(v5, 0, 0);
      }
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)_configureWithRequestedCard:(id)card animated:(BOOL)animated completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  completionCopy = completion;
  cardIdentifier = [cardCopy cardIdentifier];
  v10 = +[CRKIdentifiedProviderRegistry sharedInstance];
  identifiedProviders = [v10 identifiedProviders];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke;
  v44[3] = &unk_278DA3370;
  v44[4] = self;
  v11 = cardCopy;
  v45 = v11;
  v27 = [identifiedProviders sortedArrayUsingComparator:v44];
  v12 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v27;
    _os_log_impl(&dword_243247000, v12, OS_LOG_TYPE_DEFAULT, "Sorted providers by card display priority\n    Providers: %@", buf, 0xCu);
  }

  v13 = self->_cardViewController;
  objc_initWeak(buf, self);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_152;
  v40[3] = &unk_278DA3398;
  v14 = v11;
  v41 = v14;
  objc_copyWeak(&v43, buf);
  selfCopy = self;
  [v27 enumerateObjectsWithOptions:2 usingBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_190;
  v38[3] = &unk_278DA33C0;
  v24 = completionCopy;
  v39 = v24;
  v15 = MEMORY[0x245D2D520](v38);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_2;
  v33[3] = &unk_278DA3410;
  objc_copyWeak(&v36, buf);
  v16 = v13;
  v34 = v16;
  animatedCopy = animated;
  v17 = v15;
  v35 = v17;
  v18 = MEMORY[0x245D2D520](v33);
  card = [(CRKCardViewControlling *)self->_cardViewController card];
  cardIdentifier2 = [card cardIdentifier];
  v21 = [cardIdentifier2 isEqualToString:cardIdentifier];

  if (v21)
  {
    cardSectionViewLoader = self->_cardSectionViewLoader;
    v23 = [MEMORY[0x277CBEB98] setWithArray:identifiedProviders];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_4;
    v28[3] = &unk_278DA3438;
    v29 = v14;
    objc_copyWeak(&v32, buf);
    v30 = v18;
    v31 = v17;
    [(_CRKCardSectionViewLoader *)cardSectionViewLoader _loadIdentifiedCardSectionViewProvidersFromCard:v29 identifiedProviders:v23 delegate:self completion:v28];

    objc_destroyWeak(&v32);
  }

  else
  {
    v18[2](v18, 1);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v43);

  objc_destroyWeak(buf);
}

uint64_t __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) delegate];
    v9 = [v8 cardPresentation:*(a1 + 32) compareCardViewControllerProviderOne:v5 providerTwo:v6];

    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v5 displayPriorityForCard:*(a1 + 40)];
  }

  else
  {
    v10 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v6 displayPriorityForCard:*(a1 + 40)];
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  if (v10 <= v11)
  {
    v12 = -1;
  }

  if (v10 == v11)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12;
  }

LABEL_16:

  return v9;
}

void __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_152(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 cardViewControllerForCard:*(a1 + 32)];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      if (WeakRetained)
      {
        v10 = *MEMORY[0x277CF93F0];
        if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412546;
          v29 = v8;
          v30 = 2112;
          v31 = v7;
          _os_log_impl(&dword_243247000, v10, OS_LOG_TYPE_DEFAULT, "Succesfully loaded card view controller from provider\n    Card view controller: %@\n    Provider: %@", &v28, 0x16u);
        }

        objc_storeStrong(WeakRetained + 7, v8);
        objc_storeStrong(WeakRetained + 2, a2);
        v11 = [WeakRetained delegate];
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 cardViewControllerDelegate];
          v13 = WeakRetained + 4;
          objc_storeWeak(WeakRetained + 4, v12);
        }

        else
        {
          v13 = WeakRetained + 4;
          objc_storeWeak(WeakRetained + 4, 0);
        }

        v22 = objc_loadWeakRetained(v13);
        v23 = v22 == 0;

        if (v23)
        {
          if ([v11 conformsToProtocol:&unk_285603DE0])
          {
            v24 = v11;
          }

          else
          {
            v24 = 0;
          }

          objc_storeWeak(v13, v24);
        }

        objc_copyWeak(&v28, v13);
        v25 = objc_loadWeakRetained(&v28);

        if (v25)
        {
          v26 = WeakRetained[3];
          v27 = objc_loadWeakRetained(&v28);
          [v26 addChainedObject:v27];
        }

        [WeakRetained[3] addChainedObject:*(a1 + 40)];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained[3] conformsToProtocol:&unk_2855F2648])
        {
          [WeakRetained[7] setCardViewControllerDelegate:WeakRetained[3]];
        }

        *a4 = 1;
        objc_destroyWeak(&v28);
      }
    }

    else
    {
      v15 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_152_cold_1(v7, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v7;
      _os_log_impl(&dword_243247000, v14, OS_LOG_TYPE_DEFAULT, "Unable to load card view controller from provider (provider does not provide card view controllers)\n    Provider: %@", &v28, 0xCu);
    }
  }
}

void __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_190(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a3)
    {
      v5 = *(v3 + 16);
      v6 = *(a1 + 32);

      v5(v6, a2, 0);
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF93E8] code:300 userInfo:0];
      (*(v3 + 16))(v3, a2, v7);
    }
  }
}

void __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  if (v5 && ([v5 parentViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = +[_CRKCardViewControllerTransitionAnimator sectionShuffleTransitionAnimator];
    [v7 setDelegate:WeakRetained];
    objc_initWeak(&location, WeakRetained);
    v8 = *(a1 + 32);
    v9 = [WeakRetained cardViewController];
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_3;
    v11[3] = &unk_278DA33E8;
    objc_copyWeak(&v13, &location);
    v12 = *(a1 + 40);
    v14 = a2;
    [v7 transitionFromCardViewController:v8 toCardViewController:v9 animated:v10 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [WeakRetained _updateViewConfigurationsDebugMode:{objc_msgSend(WeakRetained, "debugModeEnabled")}];
    (*(*(a1 + 40) + 16))();
  }
}

void __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateViewConfigurationsDebugMode:{objc_msgSend(WeakRetained, "debugModeEnabled")}];
  (*(*(a1 + 32) + 16))();
}

void __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_4_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] setCardSectionViewSource:WeakRetained[1]];
    if (objc_opt_respondsToSelector())
    {
      [v11[2] presentation:v11 didApplyCardSectionViewSource:v11[1] toCardViewController:v11[7]];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_establishParsecSessionIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CRKCardPresentation__establishParsecSessionIfNeeded___block_invoke;
  block[3] = &unk_278DA3460;
  v7 = neededCopy;
  v5 = neededCopy;
  dispatch_async(v4, block);
}

uint64_t __55__CRKCardPresentation__establishParsecSessionIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D007C0] sharedSession];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)cardSectionDisplayRequiresUserConsentForProvider:(id)provider
{
  configuration = [(CRKCardPresentation *)self configuration];
  respectsUserConsent = [configuration respectsUserConsent];

  return respectsUserConsent;
}

- (double)boundingWidthForProvider:(id)provider
{
  delegate = [(CRKCardPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate boundingWidthForPresentation:self];
    Width = v5;
  }

  else
  {
    objc_opt_class();
    Width = 0.0;
    if (objc_opt_isKindOfClass())
    {
      delegate2 = [(CRKCardPresentation *)self delegate];
      view = [delegate2 view];
      [view bounds];
      Width = CGRectGetWidth(v10);
    }
  }

  return Width;
}

- (int64_t)semanticContentAttributeForCardFactory:(id)factory
{
  delegate = [(CRKCardPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CRKCardPresentation *)self delegate];
    v6 = [delegate2 semanticContentAttributeForCardPresentation:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)cardSectionViewLoader:(id)loader compareCardSectionViewProviderOne:(id)one providerTwo:(id)two
{
  oneCopy = one;
  twoCopy = two;
  delegate = [(CRKCardPresentation *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CRKCardPresentation *)self delegate];
    v12 = [delegate2 cardPresentation:self compareCardSectionViewProviderOne:oneCopy providerTwo:twoCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)transitionAnimator:(id)animator willTransitionFromCardViewController:(id)controller toCardViewController:(id)viewController withAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  delegate = [(CRKCardPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate cardPresentation:self willTransitionFromCardViewController:controllerCopy toCardViewController:viewControllerCopy withAnimationCoordinator:coordinatorCopy];
  }
}

- (void)cardViewController:(id)controller requestCardSectionViewSourceForCard:(id)card reply:(id)reply
{
  controllerCopy = controller;
  cardCopy = card;
  replyCopy = reply;
  if (replyCopy)
  {
    loadedCard = [(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader loadedCard];
    cardIdentifier = [loadedCard cardIdentifier];
    cardIdentifier2 = [cardCopy cardIdentifier];
    v14 = [cardIdentifier isEqualToString:cardIdentifier2];

    if (v14)
    {
      replyCopy[2](replyCopy, self->_cardSectionViewLoader, 0);
    }

    else
    {
      v15 = objc_alloc_init(_CRKCardSectionViewLoader);
      v16 = MEMORY[0x277CBEB98];
      v17 = +[CRKIdentifiedProviderRegistry sharedInstance];
      identifiedProviders = [v17 identifiedProviders];
      v19 = [v16 setWithArray:identifiedProviders];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __84__CRKCardPresentation_cardViewController_requestCardSectionViewSourceForCard_reply___block_invoke;
      v21[3] = &unk_278DA3488;
      v24 = replyCopy;
      v22 = v15;
      v23 = cardCopy;
      v20 = v15;
      [(_CRKCardSectionViewLoader *)v20 _loadIdentifiedCardSectionViewProvidersFromCard:v23 identifiedProviders:v19 delegate:self completion:v21];
    }
  }
}

void __84__CRKCardPresentation_cardViewController_requestCardSectionViewSourceForCard_reply___block_invoke(void *a1, int a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (a2)
  {
    v3 = a1[4];
    v4 = *(v2 + 16);
    v5 = a1[6];

    v4(v5, v3, 0);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CF93E8];
    v11 = *MEMORY[0x277CCA068];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load card section view controllers from card: %@", a1[5], 0];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = [v6 errorWithDomain:v7 code:300 userInfo:v9];
    (*(v2 + 16))(v2, 0, v10);
  }
}

- (CRKCardPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end