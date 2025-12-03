@interface FACircleRemoteUIDelegate
+ (BOOL)isInternalBuild;
- (FACircleRemoteUIDelegate)init;
- (FACircleRemoteUIDelegate)initWithContext:(id)context serverHookHandler:(id)handler pictureStore:(id)store;
- (FACircleRemoteUIDelegateDelegate)delegate;
- (id)getEmergencyContacts;
- (id)getIMessageHandlesForRecommendations;
- (id)getInviteSuggestionsDependencies;
- (id)getPresentationDecoratorWhenPendingMember:(id)member memberBeingViewed:(id)viewed page:(id)page;
- (void)_reportRequestFailureWithResponse:(id)response;
- (void)_setUserInteractionForRUIPage:(id)page enabled:(BOOL)enabled;
- (void)_updateDismissInfo:(id)info;
- (void)configureHookHandlersForRUIController:(id)controller;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model;
- (void)remoteUIController:(id)controller loadResourcesForObjectModel:(id)model completion:(id)completion;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)setIMessageHandlesForRecommendations:(id)recommendations;
@end

@implementation FACircleRemoteUIDelegate

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[FACircleRemoteUIDelegate isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

uint64_t __43__FACircleRemoteUIDelegate_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalBuild_isInternalBuild = result;
  return result;
}

- (FACircleRemoteUIDelegate)init
{
  [(FACircleRemoteUIDelegate *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FACircleRemoteUIDelegate)initWithContext:(id)context serverHookHandler:(id)handler pictureStore:(id)store
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  storeCopy = store;
  v37.receiver = self;
  v37.super_class = FACircleRemoteUIDelegate;
  v12 = [(FACircleRemoteUIDelegate *)&v37 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    v14 = objc_alloc_init(MEMORY[0x277D082E8]);
    requestConfigurator = v13->_requestConfigurator;
    v13->_requestConfigurator = v14;

    authContext = [contextCopy authContext];
    [(FARequestConfigurator *)v13->_requestConfigurator setAuthContext:authContext];

    objc_storeStrong(&v13->_serverHookHandler, handler);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectModelDecorators = v13->_objectModelDecorators;
    v13->_objectModelDecorators = v17;

    objc_storeStrong(&v13->_familyPictureStore, store);
    v19 = objc_alloc_init(MEMORY[0x277CBEA60]);
    recommendations = v13->_recommendations;
    v13->_recommendations = v19;

    v13->_proactiveModelUsed = 1;
    v21 = objc_alloc_init(MEMORY[0x277CBEA60]);
    emergencyContacts = v13->_emergencyContacts;
    v13->_emergencyContacts = v21;

    initForOneTapInvite = [objc_alloc(MEMORY[0x277D082B8]) initForOneTapInvite];
    suggester = v13->_suggester;
    v13->_suggester = initForOneTapInvite;

    v13->_accumulateDismissInfo = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    serverHooks = [handlerCopy serverHooks];
    v26 = [serverHooks countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(serverHooks);
          }

          v30 = *(*(&v33 + 1) + 8 * v29);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 setRemoteUIDelegate:v13];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [serverHooks countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)configureHookHandlersForRUIController:(id)controller
{
  v38 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  context = [(FACircleRemoteUIDelegate *)self context];
  eventType = [context eventType];
  v7 = [eventType isEqualToString:@"FACircleEventTypeFamilyPicker"];

  if (v7)
  {
    context2 = [(FACircleRemoteUIDelegate *)self context];
    ephemeralAuthResults = [context2 ephemeralAuthResults];
    v10 = +[_TtC14FamilyCircleUI19FAFamilyImageLoader shared];
    [v10 setAuthResults:ephemeralAuthResults];

    objc_initWeak(&location, self);
    v11 = objc_alloc_init(FAPickerSelectMemberHook);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke;
    v34[3] = &unk_2782F2C50;
    objc_copyWeak(&v35, &location);
    [(FAPickerSelectMemberHook *)v11 setActivateAction:v34];
    serverHooks = [(AAUIServerUIHookHandler *)self->_serverHookHandler serverHooks];
    v13 = [serverHooks mutableCopy];

    [v13 addObject:v11];
    v14 = [v13 copy];
    [(AAUIServerUIHookHandler *)self->_serverHookHandler setServerHooks:v14];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  context3 = [(FACircleRemoteUIDelegate *)self context];
  authContext = [context3 authContext];
  appProvidedContext = [authContext appProvidedContext];
  v18 = [appProvidedContext isEqualToString:*MEMORY[0x277CEFF40]];

  if (v18)
  {
    self->_accumulateDismissInfo = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    serverHooks2 = [(AAUIServerUIHookHandler *)self->_serverHookHandler serverHooks];
    v20 = [serverHooks2 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v20)
    {
      v21 = *v31;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(serverHooks2);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
            context4 = [(FACircleRemoteUIDelegate *)self context];
            ephemeralAuthResults2 = [context4 ephemeralAuthResults];
            [v24 setEphemeralAuthResults:ephemeralAuthResults2];

            [v24 setIsChildDevice:1];
            objc_initWeak(&location, self);
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke_2;
            v28[3] = &unk_2782F2C78;
            objc_copyWeak(&v29, &location);
            [v24 setCompletionAction:v28];
            objc_destroyWeak(&v29);
            objc_destroyWeak(&location);

            goto LABEL_14;
          }
        }

        v20 = [serverHooks2 countByEnumeratingWithState:&v30 objects:v37 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientInfo];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDismissInfo:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _notifyDelegateOfCompletionWithSuccess:1 error:0];
}

void __66__FACircleRemoteUIDelegate_configureHookHandlersForRUIController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDismissInfo:v3];
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  v14 = [requestCopy copy];
  cachedRequest = self->_cachedRequest;
  self->_cachedRequest = v14;

  context = [(FACircleRemoteUIDelegate *)self context];
  ephemeralAuthResults = [context ephemeralAuthResults];

  if (ephemeralAuthResults)
  {
    requestConfigurator = self->_requestConfigurator;
    context2 = [(FACircleRemoteUIDelegate *)self context];
    ephemeralAuthResults2 = [context2 ephemeralAuthResults];
    [(FARequestConfigurator *)requestConfigurator updateWithEphemeralAuthResults:ephemeralAuthResults2];
  }

  objc_initWeak(&location, self);
  v21 = self->_requestConfigurator;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
  v24[3] = &unk_2782F2CA0;
  objc_copyWeak(&v27, &location);
  v22 = requestCopy;
  v25 = v22;
  v23 = handlerCopy;
  v26 = v23;
  [(FARequestConfigurator *)v21 addFresnoHeadersToRequest:v22 withCompletion:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained context];
    v10 = [v9 additionalParameters];

    if (v10)
    {
      v11 = [v8 context];
      v12 = [v11 additionalParameters];
      [v6 addEntriesFromDictionary:v12];
    }

    v13 = [v8[14] clientName];
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D080A8]];

    v14 = [v8[14] clientBundleID];
    [v6 setObject:v14 forKeyedSubscript:*MEMORY[0x277D080A0]];

    [MEMORY[0x277D082E8] addMessageEligibilityToPayload:v6];
    v15 = [*(a1 + 32) HTTPMethod];
    v16 = [v15 isEqualToString:@"POST"];

    if (v16)
    {
      [v8[1] addFresnoPayloadToRequest:*(a1 + 32) additionalPayload:v6];
    }
  }

  v17 = _FALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1(a1, v17);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)getEmergencyContacts
{
  v2 = [objc_alloc(MEMORY[0x277CE4538]) initWithBlock:&__block_literal_global_71];

  return v2;
}

void __48__FACircleRemoteUIDelegate_getEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getHKHealthStoreClass_softClass;
  v20 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getHKHealthStoreClass_block_invoke;
    v15 = &unk_2782F2988;
    v16 = &v17;
    __getHKHealthStoreClass_block_invoke(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = objc_alloc_init(v3);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getHKMedicalIDStoreClass_softClass;
  v20 = getHKMedicalIDStoreClass_softClass;
  if (!getHKMedicalIDStoreClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getHKMedicalIDStoreClass_block_invoke;
    v15 = &unk_2782F2988;
    v16 = &v17;
    __getHKMedicalIDStoreClass_block_invoke(&v12);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = [[v6 alloc] initWithHealthStore:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__FACircleRemoteUIDelegate_getEmergencyContacts__block_invoke_2;
  v10[3] = &unk_2782F2CE8;
  v11 = v2;
  v9 = v2;
  [v8 fetchMedicalIDEmergencyContactsWithCompletion:v10];
}

- (id)getIMessageHandlesForRecommendations
{
  v3 = objc_alloc_init(IDSRecommendationProvider);
  v4 = [[IMessageHandlesForPeopleRecommendations alloc] initWithProvider:v3];
  v5 = objc_alloc(MEMORY[0x277CE4538]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__FACircleRemoteUIDelegate_getIMessageHandlesForRecommendations__block_invoke;
  v9[3] = &unk_2782F2D10;
  v10 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)getInviteSuggestionsDependencies
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE4538];
  getIMessageHandlesForRecommendations = [(FACircleRemoteUIDelegate *)self getIMessageHandlesForRecommendations];
  v12[0] = getIMessageHandlesForRecommendations;
  getEmergencyContacts = [(FACircleRemoteUIDelegate *)self getEmergencyContacts];
  v12[1] = getEmergencyContacts;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v3 all:v6];
  then = [v7 then];
  v9 = (then)[2](then, &__block_literal_global_77);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __60__FACircleRemoteUIDelegate_getInviteSuggestionsDependencies__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [MEMORY[0x277CBEB68] null];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 objectAtIndexedSubscript:0];
  }

  v6 = [v2 objectAtIndexedSubscript:1];
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v2 objectAtIndexedSubscript:1];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v9 setObject:v5 forKeyedSubscript:@"validIMessageHandles"];
  [v9 setObject:v8 forKeyedSubscript:@"emergencyContacts"];

  return v9;
}

- (void)setIMessageHandlesForRecommendations:(id)recommendations
{
  v42 = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_recommendations;
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v26)
  {
    v25 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        contact = [v6 contact];
        emailAddressStrings = [contact emailAddressStrings];

        v9 = [emailAddressStrings countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(emailAddressStrings);
            }

            v13 = *(*(&v31 + 1) + 8 * v12);
            v14 = _IDSCopyIDForEmailAddress();
            v15 = [recommendationsCopy containsObject:v14];

            if (v15)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [emailAddressStrings countByEnumeratingWithState:&v31 objects:v40 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          contact2 = [v6 contact];
          emailAddressStrings = [contact2 phoneNumberStrings];

          v17 = [emailAddressStrings countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (!v17)
          {
            goto LABEL_24;
          }

          v18 = v17;
          v19 = *v28;
LABEL_16:
          v20 = 0;
          while (1)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(emailAddressStrings);
            }

            v13 = *(*(&v27 + 1) + 8 * v20);
            v21 = _IDSCopyIDForPhoneNumberWithOptions();
            v22 = [recommendationsCopy containsObject:v21];

            if (v22)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [emailAddressStrings countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v18)
              {
                goto LABEL_16;
              }

              goto LABEL_24;
            }
          }
        }

        [v6 setIMessageHandle:v13];
LABEL_24:
      }

      v26 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)controller loadResourcesForObjectModel:(id)model completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];

  if ([FASuggestionsTableViewDecorator shouldShowSuggestionsInPage:firstObject])
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      suggester = self->_suggester;
      *buf = 138412290;
      v52 = suggester;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "In shouldShowSuggestion, suggester is %@", buf, 0xCu);
    }

    clientInfo = [modelCopy clientInfo];
    v14 = [clientInfo objectForKeyedSubscript:@"useSuggester"];

    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v14;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Reading suggester model from RUI: %@", buf, 0xCu);
    }

    v16 = [(FAInviteSuggestions *)self->_suggester fetchFamilyMemberSuggestions:&self->_proactiveModelUsed useSuggester:v14];
    recommendations = self->_recommendations;
    self->_recommendations = v16;

    v18 = _FALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      proactiveModelUsed = self->_proactiveModelUsed;
      *buf = 136315394;
      v52 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]";
      v53 = 2048;
      v54 = proactiveModelUsed;
      _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "%s: used proactive model %li for invite suggestions", buf, 0x16u);
    }

    v40 = [(NSArray *)self->_recommendations count];
    v20 = objc_alloc(MEMORY[0x277D082B0]);
    clientInfo2 = [modelCopy clientInfo];
    v22 = [v20 initWithResults:clientInfo2];

    v23 = _FALogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      maxFamilySuggestions = [v22 maxFamilySuggestions];
      v25 = self->_recommendations;
      *buf = 136315650;
      v52 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]";
      v53 = 2048;
      v54 = maxFamilySuggestions;
      v55 = 2112;
      v56 = v25;
      _os_log_impl(&dword_21BB35000, v23, OS_LOG_TYPE_DEFAULT, "%s: Recommendations for %li spots: %@", buf, 0x20u);
    }

    [(FAProfilePictureStore *)self->_familyPictureStore fetchProfilePicturesForRecommendedFamilyMembers:self->_recommendations];
    if ([(NSArray *)self->_recommendations count])
    {
      getInviteSuggestionsDependencies = [(FACircleRemoteUIDelegate *)self getInviteSuggestionsDependencies];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke;
      v46[3] = &unk_2782F2D58;
      v46[4] = self;
      v47 = v22;
      v49 = completionCopy;
      v50 = v40;
      v48 = v14;
      [getInviteSuggestionsDependencies onComplete:v46 onQueue:MEMORY[0x277D85CD0]];
    }

    else
    {
      v39 = v22;
      v28 = _FALogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BB35000, v28, OS_LOG_TYPE_DEFAULT, "Recommendations are zero, no need to fetch dependencies", buf, 2u);
      }

      v29 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
      v30 = [(NSArray *)self->_recommendations count];
      feedbackContext = [(FAInviteSuggestions *)self->_suggester feedbackContext];
      peopleSuggesterPredictionContext = [feedbackContext peopleSuggesterPredictionContext];
      seedContactIdentifiers = [peopleSuggesterPredictionContext seedContactIdentifiers];
      v34 = [seedContactIdentifiers count] != 0;
      if (v14)
      {
        v35 = v14;
      }

      else
      {
        v35 = @"-";
      }

      [v29 sendFamilySuggestionsEventWithFamilySuggestionsProactiveCount:v40 familySuggestionsDisplayedCount:v30 hasBoostedContacts:v34 proactiveModelUsed:self->_proactiveModelUsed serverRequestedModel:v35];

      (*(completionCopy + 2))(completionCopy, 1, 0);
      v22 = v39;
    }

    if (+[FACircleRemoteUIDelegate isInternalBuild]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      tapToRadarButton = [MEMORY[0x277D461B8] tapToRadarButton];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_100;
      v43[3] = &unk_2782F2AF8;
      v37 = firstObject;
      v44 = v37;
      selfCopy = self;
      [tapToRadarButton setAction:v43];
      [v37 setLeftNavigationBarButtonItem:tapToRadarButton];
    }

LABEL_27:
    goto LABEL_28;
  }

  if ([FAProfilePictureTableViewDecorator shouldShowPicturesInPage:firstObject])
  {
    v14 = objc_opt_new();
    [v14 setCachePolicy:1];
    [v14 setQualityOfService:33];
    v27 = _FALogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v27, OS_LOG_TYPE_DEFAULT, "Starting family request.", buf, 2u);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_107;
    v41[3] = &unk_2782F2DF8;
    v41[4] = self;
    v42 = completionCopy;
    [v14 startRequestWithCompletionHandler:v41];

    goto LABEL_27;
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_28:

  v38 = *MEMORY[0x277D85DE8];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_cold_1();
    }
  }

  v31 = v6;
  v8 = [v5 objectForKeyedSubscript:@"validIMessageHandles"];
  [*(a1 + 32) setIMessageHandlesForRecommendations:v8];
  v9 = _FALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 32) + 48);
    *buf = 136315394;
    v33 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]_block_invoke";
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "%s: Recommendations before filtering: %@", buf, 0x16u);
  }

  v11 = +[FASuggestionsHelper filterAndTrimMessagesHandleSuggestions:maxSuggestions:](FASuggestionsHelper, "filterAndTrimMessagesHandleSuggestions:maxSuggestions:", *(*(a1 + 32) + 48), [*(a1 + 40) maxFamilySuggestions]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  v14 = _FALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(a1 + 32) + 48);
    *buf = 136315394;
    v33 = "[FACircleRemoteUIDelegate remoteUIController:loadResourcesForObjectModel:completion:]_block_invoke";
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "%s: Final recommendations: %@", buf, 0x16u);
  }

  v16 = [v5 objectForKeyedSubscript:@"emergencyContacts"];
  v17 = _FALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 debugDescription];
    *buf = 138412290;
    v33 = v18;
    _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "EC returned from Health: %@", buf, 0xCu);
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 64);
  *(v19 + 64) = v16;
  v21 = v16;

  (*(*(a1 + 56) + 16))();
  v22 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
  v23 = *(a1 + 64);
  v24 = [*(*(a1 + 32) + 48) count];
  v25 = [*(*(a1 + 32) + 88) feedbackContext];
  v26 = [v25 peopleSuggesterPredictionContext];
  v27 = [v26 seedContactIdentifiers];
  v28 = [v27 count];
  if (*(a1 + 48))
  {
    v29 = *(a1 + 48);
  }

  else
  {
    v29 = @"-";
  }

  [v22 sendFamilySuggestionsEventWithFamilySuggestionsProactiveCount:v23 familySuggestionsDisplayedCount:v24 hasBoostedContacts:v28 != 0 proactiveModelUsed:*(*(a1 + 32) + 56) serverRequestedModel:v29];

  v30 = *MEMORY[0x277D85DE8];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_100(uint64_t a1)
{
  v2 = _FALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v2, OS_LOG_TYPE_DEFAULT, "Suggestions tap-to-radar button tapped :(", buf, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277D75560]);
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  v7 = [v3 initWithSize:{v5, v6}];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_102;
  v10[3] = &unk_2782F2D80;
  v11 = *(a1 + 32);
  v8 = [v7 imageWithActions:v10];
  v9 = [[FamilySuggestionsTapToRadar alloc] initWithSuggestions:*(*(a1 + 40) + 48) screenshot:v8];
  [(FamilySuggestionsTapToRadar *)v9 open];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_102(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  [v3 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2;
  v10[3] = &unk_2782F2DD0;
  v11 = v6;
  v7 = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  v12 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2_cold_1(v2);
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 32) == 0);
  }

  else
  {
    [*(*(a1 + 40) + 40) setFamilyCircle:*(a1 + 48)];
    v4 = *(*(a1 + 40) + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108;
    v5[3] = &unk_2782F2DA8;
    v6 = *(a1 + 56);
    [v4 fetchProfileImagesWithCompletion:v5];
  }
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  v9 = [allHeaderFields valueForKey:*MEMORY[0x277D080C8]];

  [MEMORY[0x277D08250] handleURLResponse:responseCopy];
  allHeaderFields2 = [responseCopy allHeaderFields];
  v11 = [allHeaderFields2 objectForKey:*MEMORY[0x277D080D8]];

  if (v11)
  {
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "FACircleRemoteUIDelegate - Family services have changed", buf, 2u);
    }

    [(FACircleRemoteUIDelegate *)self _broadcastServicesDidChangeNotification];
  }

  allHeaderFields3 = [responseCopy allHeaderFields];
  v14 = [allHeaderFields3 objectForKeyedSubscript:*MEMORY[0x277D08360]];

  if ([v14 length])
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&dword_21BB35000, v15, OS_LOG_TYPE_DEFAULT, "Received a command to teardown followup with an identifier: %@", buf, 0xCu);
    }

    [MEMORY[0x277D082A0] tearDownFollowupItemWithIdentifier:v14 completion:0];
  }

  if ([responseCopy statusCode] >= 400 && objc_msgSend(responseCopy, "statusCode") <= 505)
  {
    displayedPages = [controllerCopy displayedPages];
    firstObject = [displayedPages firstObject];

    v18 = _FALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      statusCode = [responseCopy statusCode];
      *buf = 134217984;
      v31 = statusCode;
      _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "Family Circle RemoteUI request failed with status %ld", buf, 0xCu);
    }

    if ([responseCopy statusCode] == 401 && firstObject)
    {
      v20 = _FALogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BB35000, v20, OS_LOG_TYPE_DEFAULT, "Recieved a 401, attempting re-auth", buf, 2u);
      }

      p_cachedPage = &self->_cachedPage;
      if (firstObject == self->_cachedPage)
      {
        v24 = _FALogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [FACircleRemoteUIDelegate remoteUIController:didReceiveHTTPResponse:];
        }

        v23 = *p_cachedPage;
        *p_cachedPage = 0;
      }

      else
      {
        objc_storeStrong(&self->_cachedPage, firstObject);
        [(FACircleRemoteUIDelegate *)self _setUserInteractionForRUIPage:firstObject enabled:0];
        requestConfigurator = self->_requestConfigurator;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke;
        v26[3] = &unk_2782F2E20;
        v26[4] = self;
        v27 = firstObject;
        v28 = controllerCopy;
        v29 = responseCopy;
        [(FARequestConfigurator *)requestConfigurator renewCredentialsWithCompletion:v26];

        v23 = v27;
      }
    }

    else
    {
      [(FACircleRemoteUIDelegate *)self _reportRequestFailureWithResponse:responseCopy];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  [*(a1 + 32) _setUserInteractionForRUIPage:*(a1 + 40) enabled:1];
  if (a2)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke_cold_1(v4, v5);
    }

    return [*(a1 + 48) loadRequest:*(*(a1 + 32) + 24) completion:0];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);

    return [v7 _reportRequestFailureWithResponse:v8];
  }
}

- (void)_setUserInteractionForRUIPage:(id)page enabled:(BOOL)enabled
{
  pageCopy = page;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FACircleRemoteUIDelegate *)pageCopy _setUserInteractionForRUIPage:enabled enabled:v6];
  }

  if (pageCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__FACircleRemoteUIDelegate__setUserInteractionForRUIPage_enabled___block_invoke;
    v8[3] = &unk_2782F2E48;
    v9 = pageCopy;
    enabledCopy = enabled;
    dispatch_async(MEMORY[0x277D85CD0], v8);
    v7 = v9;
  }

  else
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FACircleRemoteUIDelegate _setUserInteractionForRUIPage:enabled:];
    }
  }
}

uint64_t __66__FACircleRemoteUIDelegate__setUserInteractionForRUIPage_enabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) buttonItems];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v6++) setEnabled:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) view];
  [v7 setUserInteractionEnabled:*(a1 + 40)];

  result = [*(a1 + 32) setLoading:*(a1 + 40) == 0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  if (errorCopy)
  {
    displayedPages = [controllerCopy displayedPages];
    v8 = [displayedPages count];

    if (!v8)
    {
      [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:0 error:errorCopy];
    }
  }
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 circleRemoteUIDelegateDidPresent:self];
  }
}

- (id)getPresentationDecoratorWhenPendingMember:(id)member memberBeingViewed:(id)viewed page:(id)page
{
  viewedCopy = viewed;
  pageCopy = page;
  tableViewOM = [pageCopy tableViewOM];
  tableView = [tableViewOM tableView];

  userInfo = [(FACircleContext *)self->_context userInfo];
  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D08370]];

  if (v12)
  {
    v13 = [FAProfileViewTableViewDecorator alloc];
    tableViewOM2 = [pageCopy tableViewOM];
    v15 = [(FAProfileViewTableViewDecorator *)v13 initWithTableView:tableView ruiTableView:tableViewOM2 forPerson:viewedCopy pictureStore:self->_familyPictureStore];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  _objectModels = [controller _objectModels];
  v6 = [_objectModels count];

  if (!v6)
  {

    [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:1 error:0];
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:1 error:0];
  objectModelDecorators = self->_objectModelDecorators;

  [(NSMutableDictionary *)objectModelDecorators removeAllObjects];
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  modelCopy = model;
  sourceURL = [modelCopy sourceURL];
  absoluteString = [sourceURL absoluteString];
  [absoluteString rangeOfString:*MEMORY[0x277D08098]];
  v11 = v10;

  if (v11)
  {
    *signal = 4;
LABEL_9:
    [(FACircleRemoteUIDelegate *)self _updateDismissInfo:0];
    goto LABEL_10;
  }

  if (*signal != 1)
  {
    goto LABEL_9;
  }

  [(AAUIServerUIHookHandler *)self->_serverHookHandler processObjectModel:modelCopy isModal:0];
  clientInfo = [modelCopy clientInfo];
  [(FACircleRemoteUIDelegate *)self _updateDismissInfo:clientInfo];

  dismissInfo = [(FACircleRemoteUIDelegate *)self dismissInfo];
  if (dismissInfo)
  {
    v14 = dismissInfo;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v17 = _FALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [FACircleRemoteUIDelegate remoteUIController:v17 didReceiveObjectModel:? actionSignal:?];
      }

      v18 = MEMORY[0x277D08228];
      dismissInfo2 = [(FACircleRemoteUIDelegate *)self dismissInfo];
      [v18 broadcastRemoteUIWillDismissNotification:dismissInfo2];
    }
  }

LABEL_10:
  v20 = *signal;
  self->_isReplacing = *signal == 3;
  if (v20 == 7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 circleRemoteUIDelegateDidPresent:self];
    }
  }
}

- (void)_updateDismissInfo:(id)info
{
  infoCopy = info;
  v10 = infoCopy;
  if (self->_accumulateDismissInfo)
  {
    v5 = [(NSDictionary *)self->_dismissInfo mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v8 = v7;

    [(NSDictionary *)v8 addEntriesFromDictionary:v10];
  }

  else
  {
    v8 = infoCopy;
  }

  dismissInfo = self->_dismissInfo;
  self->_dismissInfo = v8;
}

- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  if (!self->_isReplacing)
  {
    displayedPages = [controllerCopy displayedPages];
    v8 = [displayedPages count];

    if (!v8)
    {
      [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:1 error:0];
    }
  }

  sourceURL = [modelCopy sourceURL];

  if (sourceURL)
  {
    objectModelDecorators = self->_objectModelDecorators;
    sourceURL2 = [modelCopy sourceURL];
    [(NSMutableDictionary *)objectModelDecorators removeObjectForKey:sourceURL2];
  }
}

- (void)_reportRequestFailureWithResponse:(id)response
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D080B8];
  v11 = *MEMORY[0x277D080C0];
  v12[0] = response;
  v6 = MEMORY[0x277CBEAC0];
  responseCopy = response;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v4 errorWithDomain:v5 code:-1002 userInfo:v8];

  [(FACircleRemoteUIDelegate *)self _notifyDelegateOfCompletionWithSuccess:0 error:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (FACircleRemoteUIDelegateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __104__FACircleRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [v4 allHTTPHeaderFields];
  v6 = [*(a1 + 32) HTTPBody];
  v8 = 136381443;
  v9 = "[FACircleRemoteUIDelegate remoteUIController:shouldLoadRequest:redirectResponse:withCompletionHandler:]_block_invoke";
  v10 = 2113;
  v11 = v4;
  v12 = 2113;
  v13 = v5;
  v14 = 2113;
  v15 = v6;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "%{private}s request: %{private}@, headers: %{private}@, body: %{private}@", &v8, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__FACircleRemoteUIDelegate_remoteUIController_loadResourcesForObjectModel_completion___block_invoke_108_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__FACircleRemoteUIDelegate_remoteUIController_didReceiveHTTPResponse___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Family replaying RUI request %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_setUserInteractionForRUIPage:(os_log_t)log enabled:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = @"NO";
  v6 = "[FACircleRemoteUIDelegate _setUserInteractionForRUIPage:enabled:]";
  v5 = 136315650;
  v7 = 2112;
  v8 = a1;
  if (a2)
  {
    v3 = @"YES";
  }

  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_21BB35000, log, OS_LOG_TYPE_DEBUG, "%s page:%@ enabled:%@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end