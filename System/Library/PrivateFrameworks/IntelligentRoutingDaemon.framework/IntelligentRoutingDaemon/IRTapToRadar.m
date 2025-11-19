@interface IRTapToRadar
+ (id)shared;
- (IRTapToRadar)init;
- (id)_createErrorEventPromptIfAllowed:(id)a3;
- (id)_createErrorEventsPromptsForMediaEvent:(id)a3;
- (id)_createPeriodicPromptIfAllowed:(id)a3;
- (id)_createPeriodicPromptsForMediaEvent:(id)a3;
- (id)_errorEventQuestionaire:(id)a3;
- (id)_triggerUserPrompts:(id)a3;
- (void)_initiatePopupAndTTR:(id)a3;
- (void)promptForTapToRadarIfAllowed:(id)a3;
@end

@implementation IRTapToRadar

+ (id)shared
{
  if (shared_onceToken_1 != -1)
  {
    +[IRTapToRadar shared];
  }

  v3 = shared_tapToRadar;

  return v3;
}

uint64_t __22__IRTapToRadar_shared__block_invoke()
{
  shared_tapToRadar = objc_alloc_init(IRTapToRadar);

  return MEMORY[0x2821F96F8]();
}

- (IRTapToRadar)init
{
  v8.receiver = self;
  v8.super_class = IRTapToRadar;
  v2 = [(IRTapToRadar *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(IRTapToRadar *)v2 setPendingNotificationPresent:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.intelligentrouting.alert", v4);
    [(IRTapToRadar *)v3 setQueue:v5];

    v6 = v3;
  }

  return v3;
}

- (void)promptForTapToRadarIfAllowed:(id)a3
{
  v4 = a3;
  v5 = [(IRTapToRadar *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__IRTapToRadar_promptForTapToRadarIfAllowed___block_invoke;
  v7[3] = &unk_2797E2260;
  v8 = v4;
  v6 = v4;
  IRDispatchAsyncWithStrongSelf(v5, self, v7);
}

void __45__IRTapToRadar_promptForTapToRadarIfAllowed___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 _createErrorEventPromptIfAllowed:*(a1 + 32)];
  if (v3 || ([v5 _createPeriodicPromptIfAllowed:*(a1 + 32)], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v5 _initiatePopupAndTTR:v3];
  }
}

- (void)_initiatePopupAndTTR:(id)a3
{
  v13 = a3;
  if (+[IRPlatformInfo isInternalInstall]&& ![(IRTapToRadar *)self pendingNotificationPresent])
  {
    [(IRTapToRadar *)self setPendingNotificationPresent:1];
    v4 = [(IRTapToRadar *)self _triggerUserPrompts:v13];
    if (v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [v13 query];
      v7 = [v6 radarDescription];
      v8 = [v5 stringWithFormat:@"%@%@", v7, v4];
      v9 = [v13 query];
      [v9 setRadarDescription:v8];

      v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v11 = [v13 query];
      v12 = [v11 build];
      [v10 openURL:v12 configuration:0 completionHandler:&__block_literal_global_204];

      [(IRTapToRadar *)self setPendingNotificationPresent:0];
    }
  }
}

void __37__IRTapToRadar__initiatePopupAndTTR___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      __37__IRTapToRadar__initiatePopupAndTTR___block_invoke_cold_1(v6, v5);
    }
  }
}

- (id)_errorEventQuestionaire:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  LOWORD(v11) = 257;
  v4 = [[IRTTRpopup alloc] initWithHeader:v3 key:@"RadarPrompt" message:@"\nIf you find this suggestion unreasonable defaultButton:would you like to assist by answering 3 yes/no questions?" otherButton:@"Open radar" alternateButton:@"Not now" ttrWillOpen:0 dismissWillStop:v11];
  LOWORD(v12) = 0;
  v5 = [[IRTTRpopup alloc] initWithHeader:v3 key:@"QuestionSameRoom" message:@"\nQuestion 1/3:\nIs the suggested device located in the room you are currently in?" defaultButton:@"I don't know" otherButton:@"No" alternateButton:@"Yes" ttrWillOpen:v12 dismissWillStop:v4];
  v15[1] = v5;
  LOWORD(v13) = 0;
  v6 = [[IRTTRpopup alloc] initWithHeader:v3 key:@"QuestionPreviouslyRouted" message:@"\nQuestion 2/3:\nHave you previously routed to this device from this room? " defaultButton:@"I don't know" otherButton:@"No" alternateButton:@"Yes" ttrWillOpen:v13 dismissWillStop:?];
  v15[2] = v6;
  LOWORD(v14) = 0;
  v7 = [[IRTTRpopup alloc] initWithHeader:v3 key:@"QuestionAirplayIntent" message:@"\nQuestion 3/3:\nWas your intention to route content to a different device?" defaultButton:@"I don't know" otherButton:@"No" alternateButton:@"Yes" ttrWillOpen:v14 dismissWillStop:?];

  v15[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_triggerUserPrompts:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = objc_opt_new();
  v5 = [v4 popups];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__IRTapToRadar__triggerUserPrompts___block_invoke;
  v15[3] = &unk_2797E22A8;
  v15[4] = &v22;
  v15[5] = &v16;
  [v5 enumerateObjectsUsingBlock:v15];

  self->_pendingNotificationPresent = 0;
  v6 = objc_opt_new();
  v7 = [v4 query];
  v8 = [v7 title];
  [v6 setObject:v8 forKeyedSubscript:@"reason"];

  [v6 setObject:v17[5] forKeyedSubscript:@"prompts"];
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:1 error:0];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  v11 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_INFO, "#ttr, TTR prompt: %@", buf, 0xCu);
  }

  if (*(v23 + 24) == 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __36__IRTapToRadar__triggerUserPrompts___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v6 header];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CBF188]];

  v9 = [v6 message];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CBF198]];

  v10 = [v6 otherButton];
  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277CBF218]];

  v11 = [v6 defaultButton];
  [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBF1E8]];

  v12 = [v6 alternateButton];

  if (v12)
  {
    v13 = [v6 alternateButton];
    [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v7);
  if (!v14)
  {
    v15 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      __36__IRTapToRadar__triggerUserPrompts___block_invoke_cold_1(v15);
    }

    *a4 = 1;
  }

  v16 = objc_opt_new();
  v17 = [v6 message];
  [v16 setObject:v17 forKeyedSubscript:@"message"];

  v18 = [v6 key];
  [v16 setObject:v18 forKeyedSubscript:@"key"];

  responseFlags = 0;
  CFUserNotificationReceiveResponse(v14, 0.0, &responseFlags);
  CFUserNotificationCancel(v14);
  CFRelease(v14);
  if (responseFlags == 2)
  {
    *a4 = [v6 dismissWillStop];
    v20 = [v6 otherButton];
    goto LABEL_13;
  }

  if (responseFlags == 1)
  {
    v20 = [v6 alternateButton];
    goto LABEL_13;
  }

  v19 = 0;
  if (!responseFlags)
  {
    *(*(*(a1 + 32) + 8) + 24) |= [v6 ttrWillOpen];
    v20 = [v6 defaultButton];
LABEL_13:
    v19 = v20;
  }

  [v16 setObject:v19 forKeyedSubscript:@"response"];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v16];
}

- (id)_createErrorEventPromptIfAllowed:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[IRPreferences shared];
  v6 = [v5 liveOnTtrDebugDataRequestsEnabled];
  if (([v6 BOOLValue] & 1) == 0)
  {

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v7 = +[IRPreferences shared];
  v8 = [v7 liveOnEnable];
  v9 = [v8 BOOLValue];

  if (!v9)
  {
    goto LABEL_12;
  }

  if (+[IRPlatformInfo isRunningInUnitTesting])
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v10 objectForKey:@"IRTTRErrorEventsLastPopupDate"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

  [v12 timeIntervalSinceNow];
  v15 = -v14;
  v16 = +[IRPreferences shared];
  v17 = [v16 ttrThrottleTimeSec];
  [v17 doubleValue];
  v19 = v18;

  if (v19 <= v15)
  {
LABEL_17:
    v21 = [(IRTapToRadar *)self _createErrorEventsPromptsForMediaEvent:v4];
    if (v21)
    {
      v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v25 = [MEMORY[0x277CBEAA8] now];
      [v24 setObject:v25 forKey:@"IRTTRErrorEventsLastPopupDate"];

      v26 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        v28 = [v21 query];
        v29 = [v28 title];
        v30 = 138412290;
        v31 = *&v29;
        _os_log_impl(&dword_25543D000, v27, OS_LOG_TYPE_INFO, "#ttr, TTR Error Event prompt created: %@", &v30, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v20 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v30 = 134218498;
    v31 = v15;
    v32 = 2048;
    v33 = v19;
    v34 = 2112;
    v35 = v13;
    _os_log_debug_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEBUG, "#ttr, TTR Error Event throttled with interval: %0.1fsec, threshold:%0.1fsec, last popup at:%@", &v30, 0x20u);
  }

  v21 = 0;
LABEL_20:

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_createPeriodicPromptIfAllowed:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[IRPreferences shared];
  v6 = [v5 liveOnTtrPeriodicDataRequestsEnabled];
  if (([v6 BOOLValue] & 1) == 0)
  {

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v7 = +[IRPreferences shared];
  v8 = [v7 liveOnEnable];
  v9 = [v8 BOOLValue];

  if (!v9)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v10 objectForKey:@"IRTTRPeriodicLastPopupDate"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = v12;
  if (!v12)
  {
    goto LABEL_16;
  }

  [v12 timeIntervalSinceNow];
  v15 = -v14;
  v16 = +[IRPreferences shared];
  v17 = [v16 ttrPeriodicThrottleTimeSec];
  [v17 doubleValue];
  v19 = v18;

  if (v19 <= v15)
  {
LABEL_16:
    v21 = [(IRTapToRadar *)self _createPeriodicPromptsForMediaEvent:v4];
    if (v21)
    {
      v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v25 = [MEMORY[0x277CBEAA8] now];
      [v24 setObject:v25 forKey:@"IRTTRPeriodicLastPopupDate"];

      v26 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        v28 = [v21 query];
        v29 = [v28 title];
        v30 = 138412290;
        v31 = *&v29;
        _os_log_impl(&dword_25543D000, v27, OS_LOG_TYPE_INFO, "#ttr, TTR Periodic prompt created: %@", &v30, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v20 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    v30 = 134218498;
    v31 = v15;
    v32 = 2048;
    v33 = v19;
    v34 = 2112;
    v35 = v13;
    _os_log_debug_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEBUG, "#ttr, TTR periodic throttled with interval: %0.1fsec, threshold:%0.1fsec, last popup at:%@", &v30, 0x20u);
  }

  v21 = 0;
LABEL_19:

LABEL_12:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_createErrorEventsPromptsForMediaEvent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [v5 setQuery:v6];

  v7 = [v5 query];
  [v7 setExtensionIdentifiers:&unk_286768F38];

  v8 = [v5 query];
  [v8 setRemoteDeviceSelections:&unk_286768F50];

  v9 = [v5 query];
  [v9 setRadarDescription:@"Thank you in assisting in Coriander Live On.\nYou can add any relevant information here:\n\n Please do not change description beyond this point.\n#############################\n"];

  v10 = [v4 eventType];
  if (v10 == 2)
  {
    v11 = @"Coriander - Automatic Route Revoked";
    goto LABEL_5;
  }

  if (v10 == 4)
  {
    v11 = @"Coriander - One-Tap Suggestion Rejected";
LABEL_5:
    v12 = [(IRTapToRadar *)self _errorEventQuestionaire:v11];
    [v5 setPopups:v12];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Coriander Live On Event Prompt] %@", v11];
    v14 = [v5 query];
    [v14 setTitle:v13];

    v15 = v5;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)_createPeriodicPromptsForMediaEvent:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v4 setQuery:v5];

  v6 = [v4 query];
  [v6 setExtensionIdentifiers:&unk_286768F68];

  v7 = [v4 query];
  [v7 setRemoteDeviceSelections:&unk_286768F80];

  v8 = [v4 query];
  [v8 setRadarDescription:@"Thank you in assisting in Coriander Live On.\nYou can add any relevant information here:\n\n Please do not change description beyond this point.\n#############################\n"];

  v9 = [v3 eventType];
  if (v9 != 5 && v9)
  {
    v14 = 0;
  }

  else
  {
    LOWORD(v17) = 257;
    v10 = [[IRTTRpopup alloc] initWithHeader:@"Coriander Live-On" key:@"RadarPrompt" message:@"Thank you for participating in the Coriander Live On. Would you help and file a radar?\n(You can always turn of this prompt in Internal Settings->Intelligent Routing)" defaultButton:@"Open radar" otherButton:@"Not now" alternateButton:0 ttrWillOpen:v17 dismissWillStop:?];
    v18[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [v4 setPopups:v11];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Coriander Live On Periodic Prompt] %@", @"Coriander - Periodic data collection"];
    v13 = [v4 query];
    [v13 setTitle:v12];

    v14 = v4;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __37__IRTapToRadar__initiatePopupAndTTR___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 debugDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25543D000, v3, OS_LOG_TYPE_ERROR, "#ttr, [ErrorId - TTR popup post error] Unable to post notification: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end