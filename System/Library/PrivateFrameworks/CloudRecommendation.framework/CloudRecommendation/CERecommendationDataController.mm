@interface CERecommendationDataController
- (CERecommendationDataController)initWithAccount:(id)a3;
- (void)fetchCompletedRecommendations:(id)a3 completion:(id)a4;
- (void)fetchCompletedRecommendations:(id)a3 recommendationInfo:(id)a4 completion:(id)a5;
- (void)fetchRecommendationsRulesetWithCompletion:(id)a3;
- (void)fetchRecommendationsRulesetWithInfo:(id)a3 completion:(id)a4;
- (void)fetchRecommendationsWithCompletion:(id)a3;
- (void)fetchRecommendationsWithInfo:(id)a3 completion:(id)a4;
- (void)sendRecommendationStatus:(id)a3 configuration:(id)a4 recommendationIdentifiers:(id)a5 storageRecovered:(id)a6 context:(id)a7 completion:(id)a8;
@end

@implementation CERecommendationDataController

- (CERecommendationDataController)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CERecommendationDataController;
  v6 = [(CERecommendationDataController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (void)fetchRecommendationsWithCompletion:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACAccount *)self->_account aa_altDSID];
  v6 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v7 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v8 = _CELogSystem();
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v7 == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v13 = _CESignpostLogSystem();
    v14 = objc_opt_new();
    v15 = _CESignpostCreateWithObject(v13, v14);
    v17 = v16;

    v18 = _CESignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RecommendationsRequest", "", buf, 2u);
    }

    v20 = _CESignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v12 = objc_alloc_init(getINDaemonConnectionClass());
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke;
    v28[3] = &unk_278DE0370;
    v30 = v15;
    v31 = v17;
    v21 = v4;
    v29 = v21;
    v22 = [v12 daemonWithErrorHandler:v28];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1;
    v24[3] = &unk_278DE0398;
    v26 = v15;
    v27 = v17;
    v25 = v21;
    [v22 fetchRecommendationsForAltDSID:v5 completion:v24];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      v36 = 1024;
      v37 = v7;
      _os_log_error_impl(&dword_2439E1000, v9, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v12 = CECreateError(12);
    (*(v4 + 2))(v4, 0, v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecommendationsRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 5);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecommendationsRequest", "", v13, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  if (v5)
  {
    v11 = *(*(a1 + 4) + 16);
  }

  else
  {
    v12 = _CELogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1_cold_2();
    }

    v11 = *(*(a1 + 4) + 16);
  }

  v11();
}

- (void)fetchRecommendationsWithInfo:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccount *)self->_account aa_altDSID];
  v9 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v10 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v11 = _CELogSystem();
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v10 == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v16 = _CESignpostLogSystem();
    v17 = objc_opt_new();
    v18 = _CESignpostCreateWithObject(v16, v17);
    v20 = v19;

    v21 = _CESignpostLogSystem();
    v22 = v21;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "RecommendationsRequest", "", buf, 2u);
    }

    v23 = _CESignpostLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsWithCompletion:];
    }

    v15 = objc_alloc_init(getINDaemonConnectionClass());
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke;
    v32[3] = &unk_278DE0370;
    v34 = v18;
    v35 = v20;
    v24 = v7;
    v33 = v24;
    v25 = [v15 synchronousDaemonWithErrorHandler:v32];
    if (objc_opt_respondsToSelector())
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke_5;
      v28[3] = &unk_278DE0398;
      v30 = v18;
      v31 = v20;
      v29 = v24;
      [v25 fetchRecommendationsForAltDSID:v8 recommendationInfo:v6 completion:v28];
      v26 = v29;
    }

    else
    {
      v26 = _CELogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationDataController fetchRecommendationsWithInfo:completion:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v37 = v8;
      v38 = 1024;
      v39 = v9;
      v40 = 1024;
      v41 = v10;
      _os_log_error_impl(&dword_2439E1000, v12, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v15 = CECreateError(12);
    (*(v7 + 2))(v7, 0, v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecommendationsRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __74__CERecommendationDataController_fetchRecommendationsWithInfo_completion___block_invoke_5(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 5);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecommendationsRequest", "", v13, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  if (v5)
  {
    v11 = *(*(a1 + 4) + 16);
  }

  else
  {
    v12 = _CELogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1_cold_2();
    }

    v11 = *(*(a1 + 4) + 16);
  }

  v11();
}

- (void)fetchRecommendationsRulesetWithCompletion:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACAccount *)self->_account aa_altDSID];
  v6 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v7 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v8 = _CELogSystem();
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v7 == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v13 = _CESignpostLogSystem();
    v14 = objc_opt_new();
    v15 = _CESignpostCreateWithObject(v13, v14);
    v17 = v16;

    v18 = _CESignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RecommendationsRulesetRequest", "", buf, 2u);
    }

    v20 = _CESignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v12 = objc_alloc_init(getINDaemonConnectionClass());
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke;
    v28[3] = &unk_278DE0370;
    v30 = v15;
    v31 = v17;
    v21 = v4;
    v29 = v21;
    v22 = [v12 daemonWithErrorHandler:v28];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6;
    v24[3] = &unk_278DE03C0;
    v26 = v15;
    v27 = v17;
    v25 = v21;
    [v22 fetchRecommendationsRulesetForAltDSID:v5 completion:v24];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      v36 = 1024;
      v37 = v7;
      _os_log_error_impl(&dword_2439E1000, v9, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v12 = CECreateError(12);
    (*(v4 + 2))(v4, 0, v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecommendationsRulesetRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 5);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecommendationsRulesetRequest", "", v13, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  if (v5)
  {
    v11 = *(*(a1 + 4) + 16);
  }

  else
  {
    v12 = _CELogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6_cold_2();
    }

    v11 = *(*(a1 + 4) + 16);
  }

  v11();
}

- (void)fetchRecommendationsRulesetWithInfo:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccount *)self->_account aa_altDSID];
  v9 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v10 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v11 = _CELogSystem();
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v10 == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v16 = _CESignpostLogSystem();
    v17 = objc_opt_new();
    v18 = _CESignpostCreateWithObject(v16, v17);
    v20 = v19;

    v21 = _CESignpostLogSystem();
    v22 = v21;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "RecommendationsRulesetRequest", "", buf, 2u);
    }

    v23 = _CESignpostLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchRecommendationsRulesetWithCompletion:];
    }

    v15 = objc_alloc_init(getINDaemonConnectionClass());
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke;
    v32[3] = &unk_278DE0370;
    v34 = v18;
    v35 = v20;
    v24 = v7;
    v33 = v24;
    v25 = [v15 synchronousDaemonWithErrorHandler:v32];
    if (objc_opt_respondsToSelector())
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke_10;
      v28[3] = &unk_278DE03C0;
      v30 = v18;
      v31 = v20;
      v29 = v24;
      [v25 fetchRecommendationsRulesetForAltDSID:v8 recommendationInfo:v6 completion:v28];
      v26 = v29;
    }

    else
    {
      v26 = _CELogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationDataController fetchRecommendationsRulesetWithInfo:completion:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v37 = v8;
      v38 = 1024;
      v39 = v9;
      v40 = 1024;
      v41 = v10;
      _os_log_error_impl(&dword_2439E1000, v12, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v15 = CECreateError(12);
    (*(v7 + 2))(v7, 0, v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecommendationsRulesetRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __81__CERecommendationDataController_fetchRecommendationsRulesetWithInfo_completion___block_invoke_10(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 5);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecommendationsRulesetRequest", "", v13, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2(a1 + 20);
  }

  if (v5)
  {
    v11 = *(*(a1 + 4) + 16);
  }

  else
  {
    v12 = _CELogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6_cold_2();
    }

    v11 = *(*(a1 + 4) + 16);
  }

  v11();
}

- (void)fetchCompletedRecommendations:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ACAccount *)self->_account aa_altDSID];
  v9 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v10 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v11 = _CELogSystem();
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v10 == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v16 = _CESignpostLogSystem();
    v17 = objc_opt_new();
    v18 = _CESignpostCreateWithObject(v16, v17);
    v20 = v19;

    v21 = _CESignpostLogSystem();
    v22 = v21;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CompletedRecommendationsRequest", "", buf, 2u);
    }

    v23 = _CESignpostLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v15 = objc_alloc_init(getINDaemonConnectionClass());
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke;
    v31[3] = &unk_278DE0370;
    v33 = v18;
    v34 = v20;
    v24 = v7;
    v32 = v24;
    v25 = [v15 daemonWithErrorHandler:v31];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11;
    v27[3] = &unk_278DE0398;
    v29 = v18;
    v30 = v20;
    v28 = v24;
    [v25 fetchCompletedAndDismissedRecommendationsForAltDSID:v8 configuration:v6 completion:v27];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v36 = v8;
      v37 = 1024;
      v38 = v9;
      v39 = 1024;
      v40 = v10;
      _os_log_error_impl(&dword_2439E1000, v12, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v15 = CECreateError(12);
    (*(v7 + 2))(v7, 0, v15);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CompletedRecommendationsRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 5);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CompletedRecommendationsRequest", "", v13, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2(a1 + 20);
  }

  if (v5)
  {
    v11 = *(*(a1 + 4) + 16);
  }

  else
  {
    v12 = _CELogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11_cold_2();
    }

    v11 = *(*(a1 + 4) + 16);
  }

  v11();
}

- (void)fetchCompletedRecommendations:(id)a3 recommendationInfo:(id)a4 completion:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(ACAccount *)self->_account aa_altDSID];
  v10 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v11 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v12 = _CELogSystem();
  v13 = v12;
  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v11 == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v17 = _CESignpostLogSystem();
    v18 = objc_opt_new();
    v19 = _CESignpostCreateWithObject(v17, v18);
    v21 = v20;

    v22 = _CESignpostLogSystem();
    v23 = v22;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CompletedRecommendationsRequest", "", buf, 2u);
    }

    v24 = _CESignpostLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController fetchCompletedRecommendations:completion:];
    }

    v16 = objc_alloc_init(getINDaemonConnectionClass());
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke;
    v33[3] = &unk_278DE0370;
    v35 = v19;
    v36 = v21;
    v25 = v8;
    v34 = v25;
    v26 = [v16 synchronousDaemonWithErrorHandler:v33];
    if (objc_opt_respondsToSelector())
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke_14;
      v29[3] = &unk_278DE0398;
      v31 = v19;
      v32 = v21;
      v30 = v25;
      [v26 fetchCompletedAndDismissedRecommendationsForAltDSID:v9 recommendationInfo:v7 completion:v29];
      v27 = v30;
    }

    else
    {
      v27 = _CELogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CERecommendationDataController fetchCompletedRecommendations:recommendationInfo:completion:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = v9;
      v39 = 1024;
      v40 = v10;
      v41 = 1024;
      v42 = v11;
      _os_log_error_impl(&dword_2439E1000, v13, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v16 = CECreateError(12);
    (*(v8 + 2))(v8, 0, v16);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CompletedRecommendationsRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __94__CERecommendationDataController_fetchCompletedRecommendations_recommendationInfo_completion___block_invoke_14(unsigned __int16 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 5);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CompletedRecommendationsRequest", "", v13, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2(a1 + 20);
  }

  if (v5)
  {
    v11 = *(*(a1 + 4) + 16);
  }

  else
  {
    v12 = _CELogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11_cold_2();
    }

    v11 = *(*(a1 + 4) + 16);
  }

  v11();
}

- (void)sendRecommendationStatus:(id)a3 configuration:(id)a4 recommendationIdentifiers:(id)a5 storageRecovered:(id)a6 context:(id)a7 completion:(id)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v44 = a4;
  v15 = a5;
  v16 = a6;
  v45 = a7;
  v17 = a8;
  v18 = [(ACAccount *)self->_account aa_altDSID];
  v19 = [(ACAccount *)self->_account aa_isAccountClass:*MEMORY[0x277CEC688]];
  v20 = [(ACAccount *)self->_account aa_isManagedAppleID];
  v21 = _CELogSystem();
  v22 = v21;
  if (v18 && (v19 ? (v23 = v20 == 0) : (v23 = 0), v23))
  {
    v43 = v15;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:];
    }

    v24 = _CESignpostLogSystem();
    v25 = objc_opt_new();
    v26 = _CESignpostCreateWithObject(v24, v25);
    v28 = v27;

    v29 = _CESignpostLogSystem();
    v30 = v29;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2439E1000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v26, "RecommendationStatusRequest", "", buf, 2u);
    }

    v31 = _CESignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [CERecommendationDataController sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:];
    }

    v32 = objc_alloc_init(getINDaemonConnectionClass());
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke;
    v50[3] = &unk_278DE0370;
    v52 = v26;
    v53 = v28;
    v42 = v17;
    v33 = v17;
    v34 = v28;
    v35 = v33;
    v51 = v33;
    v36 = [v32 daemonWithErrorHandler:v50];
    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v37 setObject:v43 forKeyedSubscript:@"recommendations"];
    if (v45)
    {
      v38 = v45;
    }

    else
    {
      v38 = @"main";
    }

    [v37 setObject:v38 forKeyedSubscript:@"context"];
    [v37 setObject:v16 forKeyedSubscript:@"storageRecovered"];
    [v37 setObject:v14 forKeyedSubscript:@"action"];
    if (objc_opt_respondsToSelector())
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_31;
      v48[3] = &unk_278DE0370;
      v49[1] = v26;
      v49[2] = v34;
      v39 = v49;
      v49[0] = v35;
      v40 = v44;
      [v36 sendStatusForRecommendationsWithAltDSID:v18 configuration:v44 params:v37 completion:v48];
    }

    else
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_32;
      v46[3] = &unk_278DE0370;
      v47[1] = v26;
      v47[2] = v34;
      v39 = v47;
      v47[0] = v35;
      v40 = v44;
      [v36 sendStatusForRecommendationsWithAltDSID:v18 configuration:v44 status:v14 recommendationIdentifiers:v43 storageRecovered:v16 completion:v46];
    }

    v17 = v42;
    v15 = v43;
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v55 = v18;
      v56 = 1024;
      v57 = v19;
      v58 = 1024;
      v59 = v20;
      _os_log_error_impl(&dword_2439E1000, v22, OS_LOG_TYPE_ERROR, "Invalid account. altDSID: %@ isPrimary: %d isManaged: %d.", buf, 0x18u);
    }

    v32 = CECreateError(12);
    (*(v17 + 2))(v17, v32);
    v40 = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _CELogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_1();
  }

  _CESignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _CESignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecommendationStatusRequest", "", v9, 2u);
  }

  v8 = _CESignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_31(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v3 = (a1 + 5);
  v6 = a2;
  _CESignpostGetNanoseconds(v4, v5);
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *v3;
  if ((*v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecommendationStatusRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2(v3);
  }

  (*(a1[4] + 16))();
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_32(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v3 = (a1 + 5);
  v6 = a2;
  _CESignpostGetNanoseconds(v4, v5);
  v7 = _CESignpostLogSystem();
  v8 = v7;
  v9 = *v3;
  if ((*v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_2439E1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RecommendationStatusRequest", "", v11, 2u);
  }

  v10 = _CESignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2(v3);
  }

  (*(a1[4] + 16))();
}

- (void)fetchRecommendationsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchRecommendationsWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__CERecommendationDataController_fetchRecommendationsWithCompletion___block_invoke_1_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecommendationsWithInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchRecommendationsRulesetWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchRecommendationsRulesetWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__CERecommendationDataController_fetchRecommendationsRulesetWithCompletion___block_invoke_6_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecommendationsRulesetWithInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchCompletedRecommendations:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchCompletedRecommendations:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__CERecommendationDataController_fetchCompletedRecommendations_completion___block_invoke_11_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchCompletedRecommendations:recommendationInfo:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRecommendationStatus:configuration:recommendationIdentifiers:storageRecovered:context:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __135__CERecommendationDataController_sendRecommendationStatus_configuration_recommendationIdentifiers_storageRecovered_context_completion___block_invoke_cold_2(unsigned __int16 *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

@end