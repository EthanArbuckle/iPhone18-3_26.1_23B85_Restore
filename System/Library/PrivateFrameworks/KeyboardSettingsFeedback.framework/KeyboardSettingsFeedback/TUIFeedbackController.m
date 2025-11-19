@interface TUIFeedbackController
+ (id)controller;
- (BOOL)feedbackFeatureEnabled;
- (BOOL)shouldCompleteStudyWithPreferenceValue:(BOOL)a3;
- (id)build;
- (id)computeSurveyMetadata;
- (id)currentInputModes;
- (id)model;
- (void)_presentSurveyWithParentController:(id)a3 completionHandler:(id)a4;
- (void)_updateStudyDataWithSurveyOutcome:(int64_t)a3 surveyError:(id)a4 initialState:(int64_t)a5;
- (void)feedbackFeatureEnabled;
@end

@implementation TUIFeedbackController

+ (id)controller
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)shouldCompleteStudyWithPreferenceValue:(BOOL)a3
{
  v4 = [(TUIFeedbackController *)self feedbackFeatureEnabled];
  if (v4)
  {
    v5 = [MEMORY[0x277D6F360] getSupportedLangRegion];
    v6 = [v5 length];

    if (IXACanLogMessageAtLevel())
    {
      v7 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [TUIFeedbackController shouldCompleteStudyWithPreferenceValue:?];
      }
    }

    v8 = [MEMORY[0x277D6F360] getFeedbackState];
    LOBYTE(v4) = 0;
    if (v6)
    {
      v9 = v8 == 2;
    }

    else
    {
      v9 = 0;
    }

    if (v9 && !a3)
    {
      if (IXACanLogMessageAtLevel())
      {
        v10 = IXAFeedbackLogFacility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [TUIFeedbackController shouldCompleteStudyWithPreferenceValue:];
        }
      }

      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)_presentSurveyWithParentController:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D6F360] getFormIdentifier];
  v7 = MEMORY[0x277D08688];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke;
  v10[3] = &unk_2797FCD68;
  v12 = self;
  v13 = v5;
  v11 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchCountsForFormWithIdentifier:v8 completion:v10];
}

void __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (IXACanLogMessageAtLevel())
    {
      v6 = IXADefaultLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_cold_1(v5);
      }
    }

    v7 = *(*(a1 + 48) + 16);
LABEL_13:
    v7();
    goto LABEL_14;
  }

  v8 = [a2 currentCampaign];

  if (v8)
  {
    if (IXACanLogMessageAtLevel())
    {
      v9 = IXADefaultLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_cold_2();
      }
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  v10 = [objc_alloc(MEMORY[0x277D08690]) initWithIdentifier:*(a1 + 32)];
  [v10 prefill:@":like_purchase" answer:{@"Yes, no or maybe"}];
  v11 = [*(a1 + 40) computeSurveyMetadata];
  if ([v11 initialPreferenceValue])
  {
    v12 = @"1";
  }

  else
  {
    v12 = @"0";
  }

  [v10 prefill:@":initialPreferenceValue" answer:v12];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v11, "duration")];
  [v10 prefill:@":duration" answer:v13];

  [v10 setAuthenticationMethod:1];
  v24 = [objc_alloc(MEMORY[0x277D08680]) initWithFeedbackForm:v10];
  v14 = objc_alloc_init(MEMORY[0x277D08698]);
  [v14 setPromptStyle:1];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"FEEDBACK_AUTOCORRECTION_DISABLED_TITLE" value:&stru_2867A54D0 table:0];
  [v14 setLocalizedPromptTitle:v16];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"FEEDBACK_AUTOCORRECTION_DISABLED_MESSAGE" value:&stru_2867A54D0 table:0];
  [v14 setLocalizedPromptMessage:v18];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"FEEDBACK_DECLINE_ACTION_LABEL" value:&stru_2867A54D0 table:0];
  [v14 setLocalizedAlertViewDeclineButtonTitle:v20];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"FEEDBACK_ACCEPT_ACTION_LABEL" value:&stru_2867A54D0 table:0];
  [v14 setLocalizedAlertViewProceedButtonTitle:v22];

  if (IXACanLogMessageAtLevel())
  {
    v23 = IXADefaultLogFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_cold_3((a1 + 32));
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_149;
  v25[3] = &unk_2797FCD40;
  v26 = *(a1 + 48);
  [v24 collectFeedbackWithLaunchConfiguration:v14 completion:v25];

LABEL_14:
}

- (void)_updateStudyDataWithSurveyOutcome:(int64_t)a3 surveyError:(id)a4 initialState:(int64_t)a5
{
  v6 = a4;
  [MEMORY[0x277D6F360] setFeedbackState:3];
  [MEMORY[0x277D6F360] setSurveyOutcome:a3];
  if (IXACanLogMessageAtLevel())
  {
    v7 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TUIFeedbackController _updateStudyDataWithSurveyOutcome:v6 surveyError:a3 initialState:?];
    }
  }
}

- (id)computeSurveyMetadata
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [TUIFeedbackSurveyMetadata alloc];
  v23 = [(TUIFeedbackController *)self build];
  v22 = [(TUIFeedbackController *)self model];
  v5 = [v3 languageCode];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2867A54D0;
  }

  v21 = v7;
  v8 = [v3 countryCode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2867A54D0;
  }

  v20 = v10;
  v11 = [MEMORY[0x277D6F360] getInitialPreferenceValue];
  v12 = [MEMORY[0x277D6F360] getInitialInputModes];
  v13 = [MEMORY[0x277D6F360] getInitialTimestamp];
  v14 = [MEMORY[0x277D6F360] getFinalPreferenceValue];
  v15 = [MEMORY[0x277D6F360] getFinalInputModes];
  v16 = [MEMORY[0x277D6F360] getFinalTimestamp];
  LOBYTE(v19) = v14;
  v17 = [(TUIFeedbackSurveyMetadata *)v4 initWithBuild:v23 model:v22 language:v21 region:v20 initialPreferenceValue:v11 initialInputModes:v12 initialTimestamp:v13 finalPreferenceValue:v19 finalInputModes:v15 finalTimestamp:v16];

  return v17;
}

- (id)currentInputModes
{
  v2 = [MEMORY[0x277D75688] sharedInputModeController];
  v3 = [v2 enabledInputModeIdentifiers];

  return v3;
}

- (BOOL)feedbackFeatureEnabled
{
  if (feedbackFeatureEnabled_once_token != -1)
  {
    [TUIFeedbackController feedbackFeatureEnabled];
  }

  if (feedbackFeatureEnabled_is_internal_install == 1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    v3 = [v2 BOOLForKey:@"feedbackFeatureEnabled"];
  }

  else
  {
    v3 = 0;
  }

  if (IXACanLogMessageAtLevel())
  {
    v4 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(TUIFeedbackController *)v3 feedbackFeatureEnabled];
    }
  }

  return v3;
}

uint64_t __47__TUIFeedbackController_feedbackFeatureEnabled__block_invoke()
{
  result = MGGetBoolAnswer();
  feedbackFeatureEnabled_is_internal_install = result;
  return result;
}

- (id)build
{
  if (build_onceToken != -1)
  {
    [TUIFeedbackController build];
  }

  v3 = build_build;

  return v3;
}

void __30__TUIFeedbackController_build__block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = v1;
  }

  else
  {
    v0 = &stru_2867A54D0;
  }

  objc_storeStrong(&build_build, v0);
}

- (id)model
{
  if (model_onceToken != -1)
  {
    [TUIFeedbackController model];
  }

  v3 = model_deviceModelName;

  return v3;
}

void __30__TUIFeedbackController_model__block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = v1;
  }

  else
  {
    v0 = &stru_2867A54D0;
  }

  objc_storeStrong(&model_deviceModelName, v0);
}

- (void)shouldCompleteStudyWithPreferenceValue:(char)a1 .cold.1(char a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277D6F360] getStudyID];
  v12 = a1 & 1;
  v4 = [v2 stringWithFormat:@"%s Feedback %@: eligible: %d"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25586B000, v5, v6, "%@", v7, v8, v9, v10, "[TUIFeedbackController shouldCompleteStudyWithPreferenceValue:]", v3, v12, v13, v14);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)shouldCompleteStudyWithPreferenceValue:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCACA8];
  v1 = [MEMORY[0x277D6F360] getStudyID];
  v2 = [v0 stringWithFormat:@"%s Feedback %@: action: completionPending"];
  OUTLINED_FUNCTION_2(&dword_25586B000, v3, v4, "%@", v5, v6, v7, v8, "[TUIFeedbackController shouldCompleteStudyWithPreferenceValue:]", v1, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277D6F360] getStudyID];
  v12 = a1;
  v4 = [v2 stringWithFormat:@"%s Feedback %@: error getting response from feedback service: %@"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25586B000, v5, v6, "%@", v7, v8, v9, v10, "[TUIFeedbackController _presentSurveyWithParentController:completionHandler:]_block_invoke", v3, v12, v13, v14);

  v11 = *MEMORY[0x277D85DE8];
}

void __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_cold_2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCACA8];
  v1 = [MEMORY[0x277D6F360] getStudyID];
  v2 = [v0 stringWithFormat:@"%s Feedback %@: already running a campaign - should not happen"];
  OUTLINED_FUNCTION_2(&dword_25586B000, v3, v4, "%@", v5, v6, v7, v8, "[TUIFeedbackController _presentSurveyWithParentController:completionHandler:]_block_invoke", v1, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __78__TUIFeedbackController__presentSurveyWithParentController_completionHandler___block_invoke_cold_3(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277D6F360] getStudyID];
  v12 = *a1;
  v4 = [v2 stringWithFormat:@"%s Feedback %@: launching survey: %@"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25586B000, v5, v6, "%@", v7, v8, v9, v10, "[TUIFeedbackController _presentSurveyWithParentController:completionHandler:]_block_invoke", v3, v12, v13, v14);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateStudyDataWithSurveyOutcome:(__CFString *)a1 surveyError:(uint64_t)a2 initialState:.cold.1(__CFString *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277D6F360] getStudyID];
  v6 = v5;
  v7 = @"none";
  if (a1)
  {
    v7 = a1;
  }

  v8 = [v4 stringWithFormat:@"%s Feedback %@: completeStudy surveyOutcome: %ld surveyError: %@", "-[TUIFeedbackController _updateStudyDataWithSurveyOutcome:surveyError:initialState:]", v5, a2, v7];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25586B000, v9, v10, "%@", v11, v12, v13, v14, v16, v17, v18, v19, v20);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)feedbackFeatureEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277D6F360] getStudyID];
  v12 = a1 & 1;
  v4 = [v2 stringWithFormat:@"%s Feedback %@: RC_SEED_BUILD: 0 enabled: %d"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25586B000, v5, v6, "%@", v7, v8, v9, v10, "[TUIFeedbackController feedbackFeatureEnabled]", v3, v12, v13, v14);

  v11 = *MEMORY[0x277D85DE8];
}

@end