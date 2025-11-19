@interface CRKCardPresentation
+ (void)initialize;
+ (void)registerProvider:(id)a3;
+ (void)unregisterProvider:(id)a3;
- (BOOL)cardSectionDisplayRequiresUserConsentForProvider:(id)a3;
- (CRCard)card;
- (CRKCardPresentation)init;
- (CRKCardPresentationDelegate)delegate;
- (double)boundingWidthForProvider:(id)a3;
- (id)_cardSectionViewControllerForCardSection:(id)a3;
- (int64_t)cardSectionViewLoader:(id)a3 compareCardSectionViewProviderOne:(id)a4 providerTwo:(id)a5;
- (int64_t)semanticContentAttributeForCardFactory:(id)a3;
- (void)_configureWithRequestedCard:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_establishParsecSessionIfNeeded:(id)a3;
- (void)_fullyConfigureWithRequestedCard:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_loadAndRegisterBundleProviders:(id)a3;
- (void)_updateViewConfigurationsDebugMode:(BOOL)a3;
- (void)cardViewController:(id)a3 requestCardSectionViewSourceForCard:(id)a4 reply:(id)a5;
- (void)configureWithCardRequest:(id)a3 completion:(id)a4;
- (void)configureWithContent:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)setConfiguration:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setDebugModeEnabled:(BOOL)a3;
- (void)transitionAnimator:(id)a3 willTransitionFromCardViewController:(id)a4 toCardViewController:(id)a5 withAnimationCoordinator:(id)a6;
@end

@implementation CRKCardPresentation

+ (void)initialize
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CRKCardPresentation;
  objc_msgSendSuper2(&v8, sel_initialize);
  CRLogInitIfNeeded();
  v2 = objc_alloc_init(_CRKBuiltInProvider);
  v3 = +[CRKIdentifiedProviderRegistry sharedInstance];
  [v3 registerIdentifiedProvider:v2];

  v4 = [MEMORY[0x277CF93E0] sharedInstance];
  v5 = objc_opt_new();
  [v4 registerIdentifiedService:v5];

  v6 = [MEMORY[0x277D759A0] mainScreen];
  v7 = [_CRKImageLoader sharedInstanceWithInitialDelegate:v6];

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

- (void)setConfiguration:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CRKCardPresentation_setConfiguration_animated_completion___block_invoke;
  v12[3] = &unk_278DA32A8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
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
  v2 = [(CRKCardPresentation *)self cardViewController];
  v3 = [v2 card];

  return v3;
}

- (void)configureWithContent:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CF93D8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithContent:v8 format:0];

  [(CRKCardPresentation *)self configureWithCardRequest:v9 completion:v7];
}

- (void)configureWithCardRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CRKCardPresentationConfiguration alloc] initWithCardRequest:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CRKCardPresentation_configureWithCardRequest_completion___block_invoke;
  v10[3] = &unk_278DA32D0;
  v11 = v6;
  v9 = v6;
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

+ (void)registerProvider:(id)a3
{
  v3 = a3;
  v4 = +[CRKIdentifiedProviderRegistry sharedInstance];
  [v4 registerIdentifiedProvider:v3];
}

+ (void)unregisterProvider:(id)a3
{
  v3 = a3;
  v4 = +[CRKIdentifiedProviderRegistry sharedInstance];
  [v4 unregisterIdentifiedProvider:v3];
}

- (void)setDebugModeEnabled:(BOOL)a3
{
  if (self->_debugModeEnabled != a3)
  {
    self->_debugModeEnabled = a3;
    [(CRKCardPresentation *)self _updateViewConfigurationsDebugMode:?];
  }
}

- (void)_updateViewConfigurationsDebugMode:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader _allViewConfigurations];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v8++) _setDebugModeEnabled:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_cardSectionViewControllerForCardSection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader cardSectionShouldBeDisplayed:v4])
  {
    v5 = [(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader viewConfigurationForCardSection:v4];
    v6 = [v5 _cardKitCardSectionViewController];

    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [(CRKCardPresentation *)self cardViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(CRKCardPresentation *)self cardViewController];
      v6 = [v9 _cardSectionViewControllerForCardSection:v4];

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
      v14 = self;
      v15 = 2112;
      v16 = cardSectionViewLoader;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_243247000, v10, OS_LOG_TYPE_DEFAULT, "%@ not returning card section view controller because provider manager %@ marked card section %@ ineligble for display", &v13, 0x20u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)_loadAndRegisterBundleProviders:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = self;
    _os_log_impl(&dword_243247000, v5, OS_LOG_TYPE_INFO, "Loading and registering bundle providers if necessary: %@", buf, 0xCu);
  }

  v6 = +[_CRKProviderBundleManager sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CRKCardPresentation__loadAndRegisterBundleProviders___block_invoke;
  v8[3] = &unk_278DA32F8;
  v9 = v4;
  v7 = v4;
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

- (void)_fullyConfigureWithRequestedCard:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(CRKCardPresentation *)self configuration];
  v11 = [v10 loadsBundleProviders];

  if (v11)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__CRKCardPresentation__fullyConfigureWithRequestedCard_animated_completion___block_invoke;
    v12[3] = &unk_278DA3348;
    v14 = v9;
    objc_copyWeak(&v15, &location);
    v13 = v8;
    v16 = v6;
    [(CRKCardPresentation *)self _loadAndRegisterBundleProviders:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CRKCardPresentation *)self _configureWithRequestedCard:v8 animated:v6 completion:v9];
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

- (void)_configureWithRequestedCard:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v25 = [v8 cardIdentifier];
  v10 = +[CRKIdentifiedProviderRegistry sharedInstance];
  v26 = [v10 identifiedProviders];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke;
  v44[3] = &unk_278DA3370;
  v44[4] = self;
  v11 = v8;
  v45 = v11;
  v27 = [v26 sortedArrayUsingComparator:v44];
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
  v42 = self;
  [v27 enumerateObjectsWithOptions:2 usingBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_190;
  v38[3] = &unk_278DA33C0;
  v24 = v9;
  v39 = v24;
  v15 = MEMORY[0x245D2D520](v38);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__CRKCardPresentation__configureWithRequestedCard_animated_completion___block_invoke_2;
  v33[3] = &unk_278DA3410;
  objc_copyWeak(&v36, buf);
  v16 = v13;
  v34 = v16;
  v37 = a4;
  v17 = v15;
  v35 = v17;
  v18 = MEMORY[0x245D2D520](v33);
  v19 = [(CRKCardViewControlling *)self->_cardViewController card];
  v20 = [v19 cardIdentifier];
  v21 = [v20 isEqualToString:v25];

  if (v21)
  {
    cardSectionViewLoader = self->_cardSectionViewLoader;
    v23 = [MEMORY[0x277CBEB98] setWithArray:v26];
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

- (void)_establishParsecSessionIfNeeded:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CRKCardPresentation__establishParsecSessionIfNeeded___block_invoke;
  block[3] = &unk_278DA3460;
  v7 = v3;
  v5 = v3;
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

- (BOOL)cardSectionDisplayRequiresUserConsentForProvider:(id)a3
{
  v3 = [(CRKCardPresentation *)self configuration];
  v4 = [v3 respectsUserConsent];

  return v4;
}

- (double)boundingWidthForProvider:(id)a3
{
  v4 = [(CRKCardPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 boundingWidthForPresentation:self];
    Width = v5;
  }

  else
  {
    objc_opt_class();
    Width = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CRKCardPresentation *)self delegate];
      v8 = [v7 view];
      [v8 bounds];
      Width = CGRectGetWidth(v10);
    }
  }

  return Width;
}

- (int64_t)semanticContentAttributeForCardFactory:(id)a3
{
  v4 = [(CRKCardPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CRKCardPresentation *)self delegate];
    v6 = [v5 semanticContentAttributeForCardPresentation:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)cardSectionViewLoader:(id)a3 compareCardSectionViewProviderOne:(id)a4 providerTwo:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CRKCardPresentation *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CRKCardPresentation *)self delegate];
    v12 = [v11 cardPresentation:self compareCardSectionViewProviderOne:v7 providerTwo:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)transitionAnimator:(id)a3 willTransitionFromCardViewController:(id)a4 toCardViewController:(id)a5 withAnimationCoordinator:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(CRKCardPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 cardPresentation:self willTransitionFromCardViewController:v12 toCardViewController:v9 withAnimationCoordinator:v10];
  }
}

- (void)cardViewController:(id)a3 requestCardSectionViewSourceForCard:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(_CRKCardSectionViewLoader *)self->_cardSectionViewLoader loadedCard];
    v12 = [v11 cardIdentifier];
    v13 = [v9 cardIdentifier];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v10[2](v10, self->_cardSectionViewLoader, 0);
    }

    else
    {
      v15 = objc_alloc_init(_CRKCardSectionViewLoader);
      v16 = MEMORY[0x277CBEB98];
      v17 = +[CRKIdentifiedProviderRegistry sharedInstance];
      v18 = [v17 identifiedProviders];
      v19 = [v16 setWithArray:v18];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __84__CRKCardPresentation_cardViewController_requestCardSectionViewSourceForCard_reply___block_invoke;
      v21[3] = &unk_278DA3488;
      v24 = v10;
      v22 = v15;
      v23 = v9;
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