@interface DBRequestContentPunchThroughManager
+ (id)_punchThroughIdentifierForURL:(id)a3;
- (CAFCar)currentCar;
- (DBEnvironmentConfiguration)environmentConfiguration;
- (DBRequestContentPunchThroughManager)initWithEnvironmentConfiguration:(id)a3;
- (id)retrieveRequestTemporaryContentService;
- (void)_updatePunchThroughIfNecessary:(id)a3;
- (void)_updateRequestContentForDismissedPT:(id)a3;
- (void)_updateRequestContentForPresentedPT:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setCar:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
@end

@implementation DBRequestContentPunchThroughManager

- (DBRequestContentPunchThroughManager)initWithEnvironmentConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DBRequestContentPunchThroughManager;
  v5 = [(DBRequestContentPunchThroughManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environmentConfiguration, v4);
    displayPanelIdentifier = v6->_displayPanelIdentifier;
    v6->_displayPanelIdentifier = @"Center_Display";

    v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AC57D0];
    observers = v6->_observers;
    v6->_observers = v8;
  }

  return v6;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBRequestContentPunchThroughManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBRequestContentPunchThroughManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)setCar:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_currentCar, a3);
  v4 = [(DBRequestContentPunchThroughManager *)self retrieveRequestTemporaryContentService];
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "DBRequestContentPunchThroughManager: registering for service: %@", &v6, 0xCu);
  }

  [v4 registerObserver:self];
}

- (id)retrieveRequestTemporaryContentService
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v3 = [(DBRequestContentPunchThroughManager *)self currentCar];
  v4 = [v3 automakerRequestContent];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__DBRequestContentPunchThroughManager_retrieveRequestTemporaryContentService__block_invoke;
  v7[3] = &unk_278F03890;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
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

- (void)_updateRequestContentForPresentedPT:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBRequestContentPunchThroughManager *)self assetLibrary];
  v6 = [v5 shouldUseRequestTemporaryContentWithIdentifier:v4];

  if (v6)
  {
    v7 = [DBRequestContentPunchThroughManager _punchThroughURLForIdentifier:v4];
    v8 = [(DBRequestContentPunchThroughManager *)self retrieveRequestTemporaryContentService];
    if ([v8 on] && (objc_msgSend(v8, "temporaryContentURL"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v7), v9, v10))
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForPresentedPT: Not setting RequestTemporaryContent. PT is already visible: %@.", &v13, 0xCu);
      }
    }

    else
    {
      v12 = DBLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForPresentedPT: Setting RequestTemporaryContent ON: %@.", &v13, 0xCu);
      }

      [v8 setTemporaryContentURL:&stru_285A57218];
      [v8 setOn:1];
      [v8 setTemporaryContentURL:v7];
    }
  }
}

- (void)_updateRequestContentForDismissedPT:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBRequestContentPunchThroughManager *)self assetLibrary];
  v6 = [v5 shouldUseRequestTemporaryContentWithIdentifier:v4];

  if (v6)
  {
    v7 = [DBRequestContentPunchThroughManager _punchThroughURLForIdentifier:v4];
    v8 = [(DBRequestContentPunchThroughManager *)self retrieveRequestTemporaryContentService];
    if ([v8 on] && (objc_msgSend(v8, "temporaryContentURL"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v7), v9, v10))
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForDismissedPT: Setting RequestTemporaryContent OFF: %@.", &v13, 0xCu);
      }

      [v8 setOn:0];
    }

    else
    {
      v12 = DBLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v4;
        v15 = 1024;
        v16 = [v8 on];
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "_updateRequestContentForDismissedPT: Not setting RequestTemporaryContent. PT: %@ requestTemporaryContent.On: %i", &v13, 0x12u);
      }
    }
  }
}

- (void)_updatePunchThroughIfNecessary:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEBC0];
  v6 = [v4 temporaryContentURL];
  v7 = [v5 URLWithString:v6];

  if (v7)
  {
    v8 = [DBRequestContentPunchThroughManager _punchThroughIdentifierForURL:v7];
    if (v8)
    {
      if (([v4 on] & 1) == 0)
      {
        v9 = [(DBRequestContentPunchThroughManager *)self assetLibrary];
        v10 = [v9 shouldUseRequestTemporaryContentWithIdentifier:v8];

        if (v10)
        {
          v11 = DBLogForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v4 temporaryContentURL];
            v14 = 138412290;
            v15 = v12;
            _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "_updatePunchThroughIfNecessary: Received ASC OFF: %@", &v14, 0xCu);
          }

          v13 = [(DBRequestContentPunchThroughManager *)self observers];
          [v13 requestContentPunchThroughManager:self punchThroughDismissed:v8];
        }
      }
    }
  }
}

+ (id)_punchThroughIdentifierForURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = [v4 scheme];
  if ([v5 isEqualToString:@"inputStream"])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v6 = [v4 queryItems];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__DBRequestContentPunchThroughManager__punchThroughIdentifierForURL___block_invoke;
    v9[3] = &unk_278F022B8;
    v9[4] = &v10;
    [v6 enumerateObjectsUsingBlock:v9];

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

- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v7 = a5;
  v16 = [a4 stackedEntity];
  v8 = [v7 stackedEntity];

  if (v8 != v16)
  {
    v9 = [v8 identifier];
    v10 = [v16 identifier];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v12 = objc_opt_class();
      if ([v12 isEqual:objc_opt_class()])
      {
        v13 = [v16 identifier];
        [(DBRequestContentPunchThroughManager *)self _updateRequestContentForDismissedPT:v13];
      }

      v14 = objc_opt_class();
      if ([v14 isEqual:objc_opt_class()])
      {
        v15 = [v8 identifier];
        [(DBRequestContentPunchThroughManager *)self _updateRequestContentForPresentedPT:v15];
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