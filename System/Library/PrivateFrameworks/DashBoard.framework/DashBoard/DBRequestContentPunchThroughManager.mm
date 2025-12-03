@interface DBRequestContentPunchThroughManager
+ (id)_punchThroughIdentifierForURL:(id)l;
- (CAFCar)currentCar;
- (DBEnvironmentConfiguration)environmentConfiguration;
- (DBRequestContentPunchThroughManager)initWithEnvironmentConfiguration:(id)configuration;
- (id)retrieveRequestTemporaryContentService;
- (void)_updatePunchThroughIfNecessary:(id)necessary;
- (void)_updateRequestContentForDismissedPT:(id)t;
- (void)_updateRequestContentForPresentedPT:(id)t;
- (void)registerObserver:(id)observer;
- (void)setCar:(id)car;
- (void)unregisterObserver:(id)observer;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBRequestContentPunchThroughManager

- (DBRequestContentPunchThroughManager)initWithEnvironmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = DBRequestContentPunchThroughManager;
  v5 = [(DBRequestContentPunchThroughManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environmentConfiguration, configurationCopy);
    displayPanelIdentifier = v6->_displayPanelIdentifier;
    v6->_displayPanelIdentifier = @"Center_Display";

    v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AC57D0];
    observers = v6->_observers;
    v6->_observers = v8;
  }

  return v6;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBRequestContentPunchThroughManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBRequestContentPunchThroughManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)setCar:(id)car
{
  v8 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_currentCar, car);
  retrieveRequestTemporaryContentService = [(DBRequestContentPunchThroughManager *)self retrieveRequestTemporaryContentService];
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = retrieveRequestTemporaryContentService;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "DBRequestContentPunchThroughManager: registering for service: %@", &v6, 0xCu);
  }

  [retrieveRequestTemporaryContentService registerObserver:self];
}

- (id)retrieveRequestTemporaryContentService
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  currentCar = [(DBRequestContentPunchThroughManager *)self currentCar];
  automakerRequestContent = [currentCar automakerRequestContent];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__DBRequestContentPunchThroughManager_retrieveRequestTemporaryContentService__block_invoke;
  v7[3] = &unk_278F03890;
  v7[4] = self;
  v7[5] = &v8;
  [automakerRequestContent enumerateObjectsUsingBlock:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __77__DBRequestContentPunchThroughManager_retrieveRequestTemporaryContentService__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 requestTemporaryContents];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__DBRequestContentPunchThroughManager_retrieveRequestTemporaryContentService__block_invoke_2;
  v8[3] = &unk_278F03868;
  v9 = *(a1 + 32);
  v10 = &v11;
  [v7 enumerateObjectsUsingBlock:v8];
  if (*(v12 + 24) == 1)
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v11, 8);
}

void __77__DBRequestContentPunchThroughManager_retrieveRequestTemporaryContentService__block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 displayPanelIdentifier];
  v8 = [v7 isEqualToString:*(a1[4] + 8)];

  if (v8)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)_updateRequestContentForPresentedPT:(id)t
{
  v15 = *MEMORY[0x277D85DE8];
  tCopy = t;
  assetLibrary = [(DBRequestContentPunchThroughManager *)self assetLibrary];
  v6 = [assetLibrary shouldUseRequestTemporaryContentWithIdentifier:tCopy];

  if (v6)
  {
    v7 = [DBRequestContentPunchThroughManager _punchThroughURLForIdentifier:tCopy];
    retrieveRequestTemporaryContentService = [(DBRequestContentPunchThroughManager *)self retrieveRequestTemporaryContentService];
    if ([retrieveRequestTemporaryContentService on] && (objc_msgSend(retrieveRequestTemporaryContentService, "temporaryContentURL"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v7), v9, v10))
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = tCopy;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForPresentedPT: Not setting RequestTemporaryContent. PT is already visible: %@.", &v13, 0xCu);
      }
    }

    else
    {
      v12 = DBLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = tCopy;
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForPresentedPT: Setting RequestTemporaryContent ON: %@.", &v13, 0xCu);
      }

      [retrieveRequestTemporaryContentService setTemporaryContentURL:&stru_285A57218];
      [retrieveRequestTemporaryContentService setOn:1];
      [retrieveRequestTemporaryContentService setTemporaryContentURL:v7];
    }
  }
}

- (void)_updateRequestContentForDismissedPT:(id)t
{
  v17 = *MEMORY[0x277D85DE8];
  tCopy = t;
  assetLibrary = [(DBRequestContentPunchThroughManager *)self assetLibrary];
  v6 = [assetLibrary shouldUseRequestTemporaryContentWithIdentifier:tCopy];

  if (v6)
  {
    v7 = [DBRequestContentPunchThroughManager _punchThroughURLForIdentifier:tCopy];
    retrieveRequestTemporaryContentService = [(DBRequestContentPunchThroughManager *)self retrieveRequestTemporaryContentService];
    if ([retrieveRequestTemporaryContentService on] && (objc_msgSend(retrieveRequestTemporaryContentService, "temporaryContentURL"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v7), v9, v10))
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = tCopy;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForDismissedPT: Setting RequestTemporaryContent OFF: %@.", &v13, 0xCu);
      }

      [retrieveRequestTemporaryContentService setOn:0];
    }

    else
    {
      v12 = DBLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = tCopy;
        v15 = 1024;
        v16 = [retrieveRequestTemporaryContentService on];
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForDismissedPT: Not setting RequestTemporaryContent. PT: %@ requestTemporaryContent.On: %i", &v13, 0x12u);
      }
    }
  }
}

- (void)_updatePunchThroughIfNecessary:(id)necessary
{
  v16 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v5 = MEMORY[0x277CBEBC0];
  temporaryContentURL = [necessaryCopy temporaryContentURL];
  v7 = [v5 URLWithString:temporaryContentURL];

  if (v7)
  {
    v8 = [DBRequestContentPunchThroughManager _punchThroughIdentifierForURL:v7];
    if (v8)
    {
      if (([necessaryCopy on] & 1) == 0)
      {
        assetLibrary = [(DBRequestContentPunchThroughManager *)self assetLibrary];
        v10 = [assetLibrary shouldUseRequestTemporaryContentWithIdentifier:v8];

        if (v10)
        {
          v11 = DBLogForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            temporaryContentURL2 = [necessaryCopy temporaryContentURL];
            v14 = 138412290;
            v15 = temporaryContentURL2;
            _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "_updatePunchThroughIfNecessary: Received ASC OFF: %@", &v14, 0xCu);
          }

          observers = [(DBRequestContentPunchThroughManager *)self observers];
          [observers requestContentPunchThroughManager:self punchThroughDismissed:v8];
        }
      }
    }
  }
}

+ (id)_punchThroughIdentifierForURL:(id)l
{
  lCopy = l;
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v4 scheme];
  if ([scheme isEqualToString:@"inputStream"])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    queryItems = [v4 queryItems];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__DBRequestContentPunchThroughManager__punchThroughIdentifierForURL___block_invoke;
    v9[3] = &unk_278F022B8;
    v9[4] = &v10;
    [queryItems enumerateObjectsUsingBlock:v9];

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __69__DBRequestContentPunchThroughManager__punchThroughIdentifierForURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 name];
  v7 = [v6 isEqualToString:@"identifier"];

  if (v7)
  {
    v8 = [v11 value];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  toStateCopy = toState;
  stackedEntity = [state stackedEntity];
  stackedEntity2 = [toStateCopy stackedEntity];

  if (stackedEntity2 != stackedEntity)
  {
    identifier = [stackedEntity2 identifier];
    identifier2 = [stackedEntity identifier];
    v11 = [identifier isEqualToString:identifier2];

    if ((v11 & 1) == 0)
    {
      v12 = objc_opt_class();
      if ([v12 isEqual:objc_opt_class()])
      {
        identifier3 = [stackedEntity identifier];
        [(DBRequestContentPunchThroughManager *)self _updateRequestContentForDismissedPT:identifier3];
      }

      v14 = objc_opt_class();
      if ([v14 isEqual:objc_opt_class()])
      {
        identifier4 = [stackedEntity2 identifier];
        [(DBRequestContentPunchThroughManager *)self _updateRequestContentForPresentedPT:identifier4];
      }
    }
  }
}

- (DBEnvironmentConfiguration)environmentConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_environmentConfiguration);

  return WeakRetained;
}

- (CAFCar)currentCar
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCar);

  return WeakRetained;
}

@end