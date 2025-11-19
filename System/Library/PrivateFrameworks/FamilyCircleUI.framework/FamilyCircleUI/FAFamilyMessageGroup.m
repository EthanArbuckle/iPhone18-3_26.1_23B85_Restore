@interface FAFamilyMessageGroup
- (id)contextPropertyWithName:(id)a3;
- (void)performModalMessagePresentation:(id)a3 fromViewController:(id)a4;
@end

@implementation FAFamilyMessageGroup

- (id)contextPropertyWithName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"familyClientBundleID"])
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D08240]);
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = [v6 initWithPropertyName:v3 bundleID:v8];

    v17 = 0;
    v10 = [v9 fetchEligibilityWithError:&v17];
    v11 = v17;
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v3;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "FAFamilyMessageGroup contextPropertyWithName: %@, response: %lu", buf, 0x16u);
    }

    if (v11)
    {
      v13 = _FALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(FAFamilyMessageGroup *)v3 contextPropertyWithName:v11, v13];
      }
    }

    v14 = MEMORY[0x277CBEC28];
    if (v10 != 1)
    {
      v14 = 0;
    }

    if (v10 == 2)
    {
      v5 = MEMORY[0x277CBEC38];
    }

    else
    {
      v5 = v14;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)performModalMessagePresentation:(id)a3 fromViewController:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "FAFamilyMessageGroup will present message: %@", buf, 0xCu);
  }

  v9 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeMercuryJourney"];
  [(FACircleContext *)v9 setActivityIndicatorStyle:0];
  v10 = [v6 contentPages];
  v11 = [v10 firstObject];
  v12 = [v11 contentParameters];

  v13 = [v12 objectForKeyedSubscript:@"type"];
  v14 = objc_alloc_init(MEMORY[0x277D08280]);
  [v14 setCachePolicy:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke;
  v21[3] = &unk_2782F4528;
  v22 = v13;
  v23 = v12;
  v24 = v9;
  v25 = v7;
  v26 = self;
  v27 = v6;
  v15 = v6;
  v16 = v7;
  v17 = v9;
  v18 = v12;
  v19 = v13;
  [v14 startRequestWithCompletionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 eligibilityRequirements];
  v8 = [v7 requirementsForPropertyName:*(a1 + 32)];

  v9 = [v8 serverPayload];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:*(a1 + 40) forKeyedSubscript:@"mercury-journey"];
  [v10 setObject:v9 forKeyedSubscript:@"serverPayload"];
  v11 = [v10 copy];
  [*(a1 + 48) setAdditionalParameters:v11];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__9;
  v35 = __Block_byref_object_dispose__9;
  v36 = objc_alloc_init(FACircleStateController);
  [v32[5] setPresenter:*(a1 + 56)];
  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = -2;
  }

  [v32[5] setModalPresentationStyle:v14];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  objc_initWeak(&location, *(a1 + 64));
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke_37;
  v24[3] = &unk_2782F44D8;
  v26 = v29;
  objc_copyWeak(&v27, &location);
  v25 = *(a1 + 72);
  [v32[5] setPresentationHandler:v24];
  v15 = v32[5];
  v16 = *(a1 + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke_39;
  v19[3] = &unk_2782F4500;
  v22 = v29;
  v17 = *(a1 + 72);
  v18 = *(a1 + 64);
  v20 = v17;
  v21 = v18;
  v23 = &v31;
  [v15 performOperationWithContext:v16 completion:v19];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);
}

void __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke_37(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "FAFamilyMessageGroup did present message: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) identifier];
  [WeakRetained reportModalMessageWasPresentedWithIdentifier:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke_39(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = _FALogSystem();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "FAFamilyMessageGroup did dismiss message: %@", &v15, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) identifier];
    [v9 reportModalMessageWasDismissedWithIdentifier:v10];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke_39_cold_1(a1, v4, v7);
    }

    v11 = *(a1 + 40);
    v10 = [*(a1 + 32) identifier];
    [v11 reportModalMessagePresentationFailedWithIdentifier:v10];
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)contextPropertyWithName:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, a2, a3, "failed to fetch recommendation for property: %@, error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __75__FAFamilyMessageGroup_performModalMessagePresentation_fromViewController___block_invoke_39_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_21BB35000, a2, a3, "FAFamilyMessageGroup circleController complete without UI for message: %@, error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end