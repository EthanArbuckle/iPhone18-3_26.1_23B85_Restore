@interface INSExtensionService
- (BOOL)_errorImpliesCloudRelay:(id)a3;
- (BOOL)_isVoiceShortcutsRemoteExecutionUnavailable:(id)a3;
- (BOOL)_prewarmExtensionWithIntent:(id)a3 applicationIdentifier:(id)a4 command:(id)a5 completionHandler:(id)a6;
- (BOOL)_shouldPrepareAudioSessionForCommand:(id)a3 intent:(id)a4;
- (INExtensionContext)extensionContext;
- (INSExtensionService)initWithOptions:(id)a3;
- (INSExtensionServiceDelegate)delegate;
- (NSArray)airPlayRouteIdentifiers;
- (NSArray)commandIdentifiers;
- (id)_connectionForIntent:(id)a3;
- (id)_extensionInputItems;
- (id)_siriLanguageCode;
- (id)_updatedEventContextWithExtensionLoadType:(id)a3 wasPrewarmed:(BOOL)a4;
- (id)analytics:(id)a3 contextDictionaryForCommand:(id)a4;
- (id)analytics:(id)a3 contextDictionaryForError:(id)a4;
- (id)completionHandlerForAppLaunchCommand:(id)a3 withCompletion:(id)a4;
- (void)_extensionRequestDidFinishForIntent:(id)a3 error:(id)a4;
- (void)_extensionRequestWillStartForIntent:(id)a3;
- (void)_requiresHandlingCommand:(id)a3 completion:(id)a4;
- (void)handleCommand:(id)a3 fromRemoteDevice:(id)a4 completionHandler:(id)a5;
- (void)resetExternalResources;
- (void)setAirPlayRouteIdentifiers:(id)a3;
@end

@implementation INSExtensionService

- (INExtensionContext)extensionContext
{
  extensionContext = self->_extensionContext;
  if (!extensionContext)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD3BF8]);
    v5 = self->_extensionContext;
    self->_extensionContext = v4;

    extensionContext = self->_extensionContext;
  }

  return extensionContext;
}

- (INSExtensionServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_siriLanguageCode
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 siriLanguageCodeForExtensionService:self];
  }

  else
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[INSExtensionService _siriLanguageCode]";
      _os_log_error_impl(&dword_25553C000, v5, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to siriLanguageCodeForExtensionService:", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_extensionInputItems
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCAAB0];
  v5 = [(INSExtensionService *)self extensionContext];
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  [v3 if_setObjectIfNonNil:v6 forKey:*MEMORY[0x277CD4458]];
  v7 = [(INSExtensionService *)self _siriLanguageCode];
  [v3 if_setObjectIfNonNil:v7 forKey:*MEMORY[0x277CD4460]];

  v8 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  [v8 setUserInfo:v3];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)completionHandlerForAppLaunchCommand:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__INSExtensionService_completionHandlerForAppLaunchCommand_withCompletion___block_invoke;
  v11[3] = &unk_2797EAC28;
  v12 = v5;
  v13 = v6;
  v7 = v5;
  v8 = v6;
  v9 = MEMORY[0x259C379F0](v11);

  return v9;
}

uint64_t __75__INSExtensionService_completionHandlerForAppLaunchCommand_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    v5 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(*(a1 + 40) + 16))();
    v6 = +[INSAnalytics sharedAnalytics];
    v7 = [v6 contextDictionaryForCommand:v5];

    v8 = +[INSAnalytics sharedAnalytics];
    v9 = [*(a1 + 32) ins_analyticsEndEventType];
    v10 = [*(a1 + 32) ins_afAnalyticsContext];
    v11 = IFMergeDictionaries();
    [v8 logEventWithType:v9 context:v11 contextNoCopy:{1, v7, 0}];
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

- (id)analytics:(id)a3 contextDictionaryForError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 extensionService:self contextDictionaryForError:v5];
  }

  else
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[INSExtensionService analytics:contextDictionaryForError:]";
      _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:contextDictionaryForError:", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)analytics:(id)a3 contextDictionaryForCommand:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 extensionService:self contextDictionaryForCommand:v5];
  }

  else
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[INSExtensionService analytics:contextDictionaryForCommand:]";
      _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:contextDictionaryForCommand:", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_shouldPrepareAudioSessionForCommand:(id)a3 intent:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 extensionBundleId];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 extensionBundleId];
    v10 = [v9 isEqualToString:@"com.apple.siri.SiriAudioInternal.AudioInternalIntentExtension"];

    if (v10)
    {
      v11 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "[INSExtensionService _shouldPrepareAudioSessionForCommand:intent:]";
        _os_log_impl(&dword_25553C000, v11, OS_LOG_TYPE_INFO, "%s Suppressing audio session preparation for internal media extension", &v15, 0xCu);
      }

      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [v6 ins_shouldPrepareAudioSession];
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_requiresHandlingCommand:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 extensionService:self requiresHandlingCommand:v6 completion:v7];
  }

  else
  {
    v9 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[INSExtensionService _requiresHandlingCommand:completion:]";
      _os_log_error_impl(&dword_25553C000, v9, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:requiresHandlingCommand:completion:", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_prewarmExtensionWithIntent:(id)a3 applicationIdentifier:(id)a4 command:(id)a5 completionHandler:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = MEMORY[0x277CD38C8];
  if (isKindOfClass)
  {
    kdebug_trace();
    v16 = [v10 identifier];

    if (!v16)
    {
      v17 = [MEMORY[0x277CCAD78] UUID];
      v18 = [v17 UUIDString];

      v19 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
      {
        log = v19;
        v20 = [v10 _className];
        v21 = [v10 launchId];
        v22 = v21;
        v23 = @"no launchId";
        if (v21)
        {
          v23 = v21;
        }

        v24 = [v10 extensionBundleId];
        v25 = v24;
        *buf = 136316162;
        v26 = @"no extensionBundleId";
        v41 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]";
        v42 = 2112;
        if (v24)
        {
          v26 = v24;
        }

        v43 = v20;
        v44 = 2112;
        v45 = v32;
        v46 = 2112;
        v47 = v26;
        v48 = 2112;
        v49 = v18;
        _os_log_impl(&dword_25553C000, log, OS_LOG_TYPE_INFO, "%s About to prewarm an extension for %@ (%@:%@) without an identifier. Assigning a new identifier: %@", buf, 0x34u);

        v15 = MEMORY[0x277CD38C8];
      }

      [v10 setIdentifier:v18];
    }

    v27 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:v10];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke;
    v34[3] = &unk_2797EAC00;
    v35 = v12;
    v39 = v13;
    v36 = v10;
    v37 = self;
    v38 = v11;
    [v27 resumeWithCompletionHandler:v34];
  }

  v28 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
  {
    v29 = @"NO";
    if (isKindOfClass)
    {
      v29 = @"YES";
    }

    *buf = 136315394;
    v41 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]";
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&dword_25553C000, v28, OS_LOG_TYPE_INFO, "%s Is prewarm: %@.", buf, 0x16u);
  }

  v30 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

void __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CD38C8];
  v8 = *MEMORY[0x277CD38C8];
  v9 = *MEMORY[0x277CD38C8];
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = [v6 localizedDescription];
      *buf = 136315394;
      v26 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
      v27 = 2112;
      v28 = v19;
      _os_log_error_impl(&dword_25553C000, v18, OS_LOG_TYPE_ERROR, "%s Error finding extension for prewarming: %@", buf, 0x16u);
    }

    v15 = a1[4];
    v16 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[8], 722470936);
    [v15 ins_invokeErrorCompletionHandler:v16 forUnderlyingError:v6];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v8;
    v11 = [v5 _extension];
    *buf = 136315394;
    v26 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_25553C000, v10, OS_LOG_TYPE_INFO, "%s Prewarmed extension: %@", buf, 0x16u);
  }

  v12 = [a1[5] ins_shouldPrewarmApp];
  v13 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
    v27 = 1024;
    LODWORD(v28) = v12;
    _os_log_impl(&dword_25553C000, v13, OS_LOG_TYPE_INFO, "%s Should prewarm app: %hhd", buf, 0x12u);
  }

  if (!v12)
  {
    [a1[6] _logPrewarmDidEndWithCommand:a1[4] applicationIdentifier:a1[7] wasPrewarmed:1 completionHandler:a1[8]];
    v16 = [v5 _connection];
    [v16 reset];
LABEL_12:

    goto LABEL_13;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke_66;
  v20[3] = &unk_2797EABD8;
  v14 = a1[5];
  v20[4] = a1[6];
  v21 = a1[4];
  v22 = a1[7];
  v24 = a1[8];
  v23 = v5;
  [v23 prewarmAppWithIntent:v14 completionHandler:v20];

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

void __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke_66(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CD38C8];
  v7 = *MEMORY[0x277CD38C8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v6, OS_LOG_TYPE_INFO, "%s Prewarmed app completed successfully", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&dword_25553C000, v6, OS_LOG_TYPE_ERROR, "%s Prewarmed app failed with error: %@", &v10, 0x16u);
  }

  [*(a1 + 32) _logPrewarmDidEndWithCommand:*(a1 + 40) applicationIdentifier:*(a1 + 48) wasPrewarmed:1 completionHandler:*(a1 + 64)];
  v8 = [*(a1 + 56) _connection];
  [v8 reset];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_connectionForIntent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CD38C8];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v32 = 136315394;
    v33 = "[INSExtensionService _connectionForIntent:]";
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_25553C000, v6, OS_LOG_TYPE_INFO, "%s Getting connection for intent: %@", &v32, 0x16u);
  }

  if (!v4)
  {
    v19 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      p_currentConnection = &self->_currentConnection;
      goto LABEL_16;
    }

    currentConnection = self->_currentConnection;
    v32 = 136315394;
    v33 = "[INSExtensionService _connectionForIntent:]";
    v34 = 2112;
    v35 = currentConnection;
    v21 = "%s Using the current connection %@ because the intent is nil.";
LABEL_22:
    _os_log_error_impl(&dword_25553C000, v19, OS_LOG_TYPE_ERROR, v21, &v32, 0x16u);
    goto LABEL_12;
  }

  v7 = [(INCExtensionConnection *)v4 identifier];

  if (!v7)
  {
    v19 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v31 = self->_currentConnection;
    v32 = 136315394;
    v33 = "[INSExtensionService _connectionForIntent:]";
    v34 = 2112;
    v35 = v31;
    v21 = "%s Using the current connection %@ because the intent identifier is nil.";
    goto LABEL_22;
  }

  v9 = self->_currentConnection;
  p_currentConnection = &self->_currentConnection;
  v10 = [(INCExtensionConnection *)v9 intent];
  v11 = [v10 identifier];
  v12 = [(INCExtensionConnection *)v4 identifier];
  v13 = [v11 isEqualToString:v12];

  v14 = *v5;
  v15 = os_log_type_enabled(*v5, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      v16 = *p_currentConnection;
      v17 = v14;
      v18 = [(INCExtensionConnection *)v4 identifier];
      v32 = 136315650;
      v33 = "[INSExtensionService _connectionForIntent:]";
      v34 = 2112;
      v35 = v16;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_25553C000, v17, OS_LOG_TYPE_INFO, "%s Using the current connection %@ because the intent identifier matches intent identifier: %@.", &v32, 0x20u);
    }

    [*p_currentConnection setIntent:v4];
  }

  else
  {
    if (v15)
    {
      v22 = *p_currentConnection;
      v23 = v14;
      v24 = [(INCExtensionConnection *)v4 identifier];
      v32 = 136315650;
      v33 = "[INSExtensionService _connectionForIntent:]";
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_25553C000, v23, OS_LOG_TYPE_INFO, "%s Replacing the current connection %@ because the intent identifier is %@.", &v32, 0x20u);
    }

    [*p_currentConnection reset];
    v25 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:v4];
    v26 = *p_currentConnection;
    *p_currentConnection = v25;
  }

LABEL_16:
  v27 = *p_currentConnection;
  v28 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    v32 = 136315394;
    v33 = "[INSExtensionService _connectionForIntent:]";
    v34 = 2112;
    v35 = v27;
    _os_log_impl(&dword_25553C000, v28, OS_LOG_TYPE_INFO, "%s Returning connection: %@", &v32, 0x16u);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_updatedEventContextWithExtensionLoadType:(id)a3 wasPrewarmed:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  if (a4)
  {
    v5 = @"Warm";
  }

  else
  {
    v5 = @"Cold";
  }

  v6 = a3;
  v7 = [v4 stringWithFormat:@"%@.%@", @"Extension", v5];
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[INSExtensionService _updatedEventContextWithExtensionLoadType:wasPrewarmed:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_25553C000, v8, OS_LOG_TYPE_INFO, "%s Extension load type = %@", buf, 0x16u);
  }

  v9 = [v6 mutableCopy];

  [v9 setObject:v7 forKey:@"ExtensionLoadType"];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_extensionRequestDidFinishForIntent:(id)a3 error:(id)a4
{
  v5 = a4;
  requestDelegateQueue = self->_requestDelegateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__INSExtensionService__extensionRequestDidFinishForIntent_error___block_invoke;
  v8[3] = &unk_2797EABB0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(requestDelegateQueue, v8);
}

void __65__INSExtensionService__extensionRequestDidFinishForIntent_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extensionService:*(a1 + 32) extensionRequestDidFinishForApplication:*(*(a1 + 32) + 32) error:*(a1 + 40)];
}

- (void)_extensionRequestWillStartForIntent:(id)a3
{
  v4 = a3;
  requestDelegateQueue = self->_requestDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__INSExtensionService__extensionRequestWillStartForIntent___block_invoke;
  v7[3] = &unk_2797EABB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(requestDelegateQueue, v7);
}

void __59__INSExtensionService__extensionRequestWillStartForIntent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _intents_bundleIdForDisplay];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 32) delegate];
  [v5 extensionService:*(a1 + 32) extensionRequestWillStartForApplication:*(*(a1 + 32) + 32)];
}

- (BOOL)_isVoiceShortcutsRemoteExecutionUnavailable:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = _INVCVoiceShortcutErrorDomain();
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 code] == 9001;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_errorImpliesCloudRelay:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CD3848]])
  {
    v5 = [v3 code] == 2005;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 domain];
  if ([v6 isEqualToString:*MEMORY[0x277CD3838]])
  {
    v7 = [v3 code] == 3001;
  }

  else
  {
    v7 = 0;
  }

  return v7 || v5;
}

- (NSArray)airPlayRouteIdentifiers
{
  v2 = [(INSExtensionService *)self extensionContext];
  v3 = [v2 _airPlayRouteIdentifiers];

  return v3;
}

- (void)setAirPlayRouteIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(INSExtensionService *)self extensionContext];
  [v5 _setAirPlayRouteIdentifiers:v4];
}

- (void)resetExternalResources
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__INSExtensionService_resetExternalResources__block_invoke;
  block[3] = &unk_2797EAC50;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__INSExtensionService_resetExternalResources__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) reset];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)handleCommand:(id)a3 fromRemoteDevice:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke;
  v15[3] = &unk_2797EACC0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke(id *a1)
{
  v106 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = MEMORY[0x277CD38C8];
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    *buf = 136315394;
    v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    v96 = 2112;
    v97 = v4;
    _os_log_impl(&dword_25553C000, v3, OS_LOG_TYPE_INFO, "%s Received handleCommand: %@", buf, 0x16u);
  }

  v5 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1[4];
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  v8 = [v6 ins_analyticsBeginEventType];
  v9 = [v6 ins_afAnalyticsContext];
  [v7 _logEventWithType:v8 context:v9 contextNoCopy:1];

  v10 = a1[4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [v6 ins_aceIntent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 hashedRouteUIDs];
      v13 = [v11 airPlayRouteIds];
      v14 = [a1[5] extensionContext];
      v15 = [v14 _airPlayRouteIdentifiers];

      v16 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v96 = 2112;
        v97 = v13;
        v98 = 2112;
        v99 = v12;
        v100 = 2112;
        v101 = v15;
        _os_log_debug_impl(&dword_25553C000, v16, OS_LOG_TYPE_DEBUG, "%s Examining AirPlay routes passed with INPlayMediaIntent airPlayRouteIds: %@, hashedRouteUIDs: %@, extensionContextAirPlayRouteIdentifiers: %@", buf, 0x2Au);
      }

      if ([v12 count] || objc_msgSend(v13, "count"))
      {
        v17 = 0;
      }

      else
      {
        v60 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
          v96 = 2112;
          v97 = v15;
          _os_log_debug_impl(&dword_25553C000, v60, OS_LOG_TYPE_DEBUG, "%s Setting intent airPlayRouteIds from extension context: %@", buf, 0x16u);
        }

        v17 = v15;
      }
    }

    else
    {
      v18 = [v11 airPlayRouteIds];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = MEMORY[0x277CBEBF8];
      }

      v21 = [a1[5] extensionContext];
      v22 = [v21 _airPlayRouteIdentifiers];
      v17 = [v20 arrayByAddingObjectsFromArray:v22];

      v23 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v96 = 2112;
        v97 = v17;
        _os_log_debug_impl(&dword_25553C000, v23, OS_LOG_TYPE_DEBUG, "%s Setting intent airPlayRouteIds for non-INPlayMediaIntent: %@", buf, 0x16u);
      }
    }

    v24 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v96 = 2112;
      v97 = v17;
      _os_log_debug_impl(&dword_25553C000, v24, OS_LOG_TYPE_DEBUG, "%s Setting intent airPlayRouteIds: %@", buf, 0x16u);
    }

    v25 = [MEMORY[0x277CBEB98] setWithArray:v17];
    v26 = [v25 allObjects];

    [v11 _setAirPlayRouteIds:v26];
    v27 = [a1[5] extensionContext];
    v28 = [v27 _recordRoute];
    [v11 _setRecordRoute:v28];

    v29 = [a1[5] extensionContext];
    v30 = [v29 _recordDeviceUID];
    [v11 _setRecordDeviceUID:v30];

    v31 = [a1[5] extensionContext];
    v32 = [v31 _recordDeviceIdentifier];
    [v11 _setRecordDeviceIdentifier:v32];

    v33 = [a1[5] extensionContext];
    [v11 _setAudioSessionID:{objc_msgSend(v33, "_audioSessionID")}];

    if (![v11 _executionContext])
    {
      [v11 _setExecutionContext:1];
    }

    v34 = a1[4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [a1[5] _connectionForIntent:0];
      [v35 setIntent:v11];
      v36 = a1[4];
      v37 = [v36 userActivityIdentifier];
      [v36 ins_launchAppWithConnection:v35 userActivityIdentifier:v37 delegate:a1[5] completionHandler:a1[7]];

      goto LABEL_70;
    }

    v38 = *v2;
    v39 = *v2;
    if (!v11)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v78 = a1[4];
        *buf = 136315394;
        v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v96 = 2112;
        v97 = v78;
        _os_log_error_impl(&dword_25553C000, v38, OS_LOG_TYPE_ERROR, "%s Unable to get INIntent from command %@", buf, 0x16u);
      }

      v35 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[7], 722470896);
      [v6 ins_invokeErrorCompletionHandler:v35 withErrorCode:1303 underlyingError:0];
      goto LABEL_70;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v96 = 2112;
      v97 = v11;
      _os_log_impl(&dword_25553C000, v38, OS_LOG_TYPE_INFO, "%s Generated intent object %@", buf, 0x16u);
      v38 = *v2;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v40 = v38;
      v41 = [v11 backingStore];
      *buf = 136315394;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v96 = 2112;
      v97 = v41;
      _os_log_impl(&dword_25553C000, v40, OS_LOG_TYPE_INFO, "%s Raw intent = %@", buf, 0x16u);
    }

    v42 = [v11 launchId];
    v93 = 0;
    INExtractAppInfoFromSiriLaunchId();
    v35 = 0;

    if ([a1[5] _prewarmExtensionWithIntent:v11 applicationIdentifier:v35 command:v6 completionHandler:a1[7]])
    {
LABEL_70:

      goto LABEL_71;
    }

    v43 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v43, OS_LOG_TYPE_INFO, "%s Not prewarm, continuing...", buf, 0xCu);
    }

    if (a1[6] && [v11 _type] == 2)
    {
      v44 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        _os_log_impl(&dword_25553C000, v44, OS_LOG_TYPE_INFO, "%s This is a remote device, and the intent type is custom. Checking for version incompatibility if the intent is sent from a remote device...", buf, 0xCu);
      }

      v45 = [v11 typeName];
      v91 = 0;
      v92 = 0;
      v46 = INSchemaWithTypeName();
      v47 = 0;
      v48 = 0;

      v49 = [v11 _className];
      v50 = [v46 intentCodableDescriptionWithIntentClassName:v49];

      v84 = v50;
      v51 = [v50 versioningHash];
      v83 = [v51 unsignedLongValue];

      v52 = [v11 _metadata];
      v53 = [v52 versioningHash];

      v54 = *MEMORY[0x277D47C38];
      v55 = INSGetAceVersionNumberFromString(*MEMORY[0x277D47C38]);
      v56 = [a1[6] aceVersion];
      v57 = INSGetAceVersionNumberFromString(v56);

      if (v55 != 0.0 && v57 != 0.0 && v83 && v53 && v83 != v53 && (v55 - v57) >= 2.0)
      {
        v58 = *MEMORY[0x277CD38C8];
        if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
        {
          v79 = v58;
          v80 = a1[6];
          v82 = v79;
          v81 = [v80 aceVersion];
          *buf = 136316418;
          v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
          v96 = 2048;
          v97 = v53;
          v98 = 2112;
          v99 = v81;
          v100 = 2048;
          v101 = v83;
          v102 = 2112;
          v103 = v54;
          v104 = 2112;
          v105 = v11;
          _os_log_error_impl(&dword_25553C000, v82, OS_LOG_TYPE_ERROR, "%s Intent was sent from an old device with (intentVersionHash=%llu, aceVersion=%@), current device has (intentVersionHash=%llu, aceVersion=%@), intent: %@", buf, 0x3Eu);
        }

        v59 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[7], 722470896);
        [v6 ins_invokeErrorCompletionHandler:v59 withErrorCode:1316 underlyingError:0];

LABEL_69:
        goto LABEL_70;
      }

      v2 = MEMORY[0x277CD38C8];
    }

    v61 = a1[4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        v63 = v62;
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 136315394;
        v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v96 = 2112;
        v97 = v65;
        _os_log_impl(&dword_25553C000, v63, OS_LOG_TYPE_INFO, "%s ins_recordPreInteractionSignals for command: %@", buf, 0x16u);
      }

      [v11 ins_recordPreInteractionSignals];
    }

    v66 = objc_alloc(MEMORY[0x277CCACA8]);
    v67 = [v11 intentId];
    v68 = [v11 typeName];
    v69 = [v11 launchId];
    v47 = [v66 initWithFormat:@"%@-%@-%@", v67, v68, v69];

    v48 = [v47 dataUsingEncoding:4];
    v70 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v96 = 2112;
      v97 = v47;
      _os_log_impl(&dword_25553C000, v70, OS_LOG_TYPE_INFO, "%s Raw intent ID = %@", buf, 0x16u);
      v70 = *v2;
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v70, OS_LOG_TYPE_INFO, "%s Start digesting raw intent ID with in-memory salt...", buf, 0xCu);
    }

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_15;
    v85[3] = &unk_2797EAB88;
    v71 = v11;
    v72 = a1[5];
    v86 = v71;
    v87 = v72;
    v88 = v6;
    v90 = a1[7];
    v89 = a1[4];
    v73 = MEMORY[0x259C379F0](v85);
    v74 = [a1[5] delegate];
    v75 = objc_opt_respondsToSelector();
    v76 = *v2;
    if (v75)
    {
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        _os_log_impl(&dword_25553C000, v76, OS_LOG_TYPE_INFO, "%s Extension service delegate responds to extensionService:processDataUsingSHA256WithInMemorySalt:completionHandler:", buf, 0xCu);
      }

      [v74 extensionService:a1[5] processDataUsingSHA256WithInMemorySalt:v48 completionHandler:v73];
    }

    else if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v95 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_25553C000, v76, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:processDataUsingSHA256WithInMemorySalt:completionHandler:", buf, 0xCu);
    }

    v46 = v86;
    goto LABEL_69;
  }

  [a1[4] ins_getIntentDefinitionsWithCompletionHandler:a1[7]];
LABEL_71:

  v77 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] if_hexStringFromData:a2];
  v7 = MEMORY[0x277CD38C8];
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v8, OS_LOG_TYPE_INFO, "%s Finished digesting raw intent ID with in-memory salt.", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_16;
  block[3] = &unk_2797EAB60;
  v9 = v6;
  v19 = v9;
  v20 = *(a1 + 32);
  v10 = v5;
  v21 = v10;
  v17 = *(a1 + 40);
  v11 = *(&v17 + 1);
  v12 = *(a1 + 64);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = v12;
  v22 = v17;
  v23 = v13;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  v15 = *v7;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_25553C000, v15, OS_LOG_TYPE_INFO, "%s Submitting pkdBlock", buf, 0xCu);
  }

  dispatch_async(*(*(a1 + 40) + 8), v14);

  v16 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_16(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CD38C8];
  v4 = *MEMORY[0x277CD38C8];
  v5 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v5)
    {
      *buf = 136315394;
      v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v51 = 2112;
      v52 = v2;
      _os_log_impl(&dword_25553C000, v4, OS_LOG_TYPE_INFO, "%s Set facade intent identifier = %@", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(a1 + 40) setIdentifier:v2];
  }

  else if (v5)
  {
    v6 = *(a1 + 48);
    *buf = 136315394;
    v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_25553C000, v4, OS_LOG_TYPE_INFO, "%s Unable to generate facade intent ID due to %@", buf, 0x16u);
  }

  v7 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v7, OS_LOG_TYPE_INFO, "%s About to prepare intent...", buf, 0xCu);
  }

  v8 = [*(a1 + 56) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 extensionService:*(a1 + 56) prepareIntent:*(a1 + 40)];
  }

  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v9, OS_LOG_TYPE_INFO, "%s Finished preparing intent", buf, 0xCu);
  }

  v10 = [*(a1 + 56) _connectionForIntent:*(a1 + 40)];
  v11 = *(a1 + 64);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = *(a1 + 64);
  if (isKindOfClass)
  {
    [*(a1 + 64) ins_launchAppWithConnection:v10 delegate:*(a1 + 56) completionHandler:*(a1 + 80)];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 64) ins_resolveAppForIntent:*(a1 + 40) completionHandler:*(a1 + 80)];
    }

    else
    {
      v14 = [*(a1 + 56) _extensionInputItems];
      v15 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v51 = 2112;
        v52 = v14;
        _os_log_impl(&dword_25553C000, v15, OS_LOG_TYPE_INFO, "%s Setting extension input items: %@", buf, 0x16u);
      }

      v16 = [v10 extensionInputItems];
      v17 = v16 == 0;

      if (v17)
      {
        [v10 setExtensionInputItems:v14];
      }

      objc_initWeak(&location, v10);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_21;
      v41[3] = &unk_2797EAA20;
      objc_copyWeak(&v47, &location);
      v41[4] = *(a1 + 56);
      v42 = *(a1 + 40);
      v43 = *(a1 + 72);
      v46 = *(a1 + 80);
      v18 = v8;
      v44 = v18;
      v45 = *(a1 + 64);
      [v10 setTimeoutHandler:v41];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_24;
      v36[3] = &unk_2797EAA48;
      v36[4] = *(a1 + 56);
      v37 = *(a1 + 40);
      v38 = *(a1 + 64);
      v40 = *(a1 + 80);
      v19 = v18;
      v39 = v19;
      [v10 setInterruptionHandler:v36];
      v20 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
        _os_log_impl(&dword_25553C000, v20, OS_LOG_TYPE_INFO, "%s Configured timeout and interruption handlers", buf, 0xCu);
      }

      kdebug_trace();
      [*(a1 + 56) _extensionRequestWillStartForIntent:*(a1 + 40)];
      v21 = *(a1 + 56);
      v22 = [*(a1 + 64) ins_afAnalyticsContext];
      [v21 _logEventWithType:601 context:v22 contextNoCopy:0];

      v23 = *v3;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [*(a1 + 40) identifier];
        *buf = 136315394;
        v50 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v51 = 2112;
        v52 = v24;
        _os_log_impl(&dword_25553C000, v23, OS_LOG_TYPE_INFO, "%s Resuming connection for intent with identifier: %@", buf, 0x16u);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_25;
      v29[3] = &unk_2797EAB38;
      v25 = *(a1 + 40);
      v26 = *(a1 + 56);
      v27 = *(a1 + 64);
      v30 = v25;
      v31 = v26;
      v32 = v27;
      v35 = *(a1 + 80);
      v33 = v19;
      v34 = *(a1 + 72);
      [v10 resumeWithCompletionHandler:v29];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [*(a1 + 32) _extensionRequestDidFinishForIntent:*(a1 + 40) error:v3];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v14 = v5;
    [WeakRetained requestTimeoutInterval];
    v15 = *(a1 + 48);
    *buf = 136315650;
    v18 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    v19 = 2050;
    v20 = v16;
    v21 = 2112;
    v22 = v15;
    _os_log_error_impl(&dword_25553C000, v14, OS_LOG_TYPE_ERROR, "%s Extension Request timed out after %{public}f seconds for command %@", buf, 0x20u);
  }

  v6 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 72), 722470908);
  v7 = objc_alloc_init(MEMORY[0x277D47208]);
  (v6)[2](v6, v7, v3);

  [*(a1 + 56) extensionService:*(a1 + 32) suspendTimeout:0];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 64) ins_afAnalyticsContext];
  v10 = +[INSAnalytics sharedAnalytics];
  v11 = [v10 contextDictionaryForError:v3];
  v12 = IFMergeDictionaries();
  [v8 _logEventWithType:605 context:v12 contextNoCopy:{0, v11, 0}];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_24(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _extensionRequestDidFinishForIntent:*(a1 + 40) error:a2];
  v3 = *(a1 + 48);
  v4 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 64), 722470912);
  [v3 ins_invokeErrorCompletionHandler:v4 withErrorCode:1306 underlyingError:0];

  v5 = *(a1 + 56);
  v6 = *(a1 + 32);

  return [v5 extensionService:v6 suspendTimeout:0];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_25(id *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2;
  v41[3] = &unk_2797EAA70;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v42 = v7;
  v43 = v8;
  v44 = v9;
  v45 = a1[9];
  v10 = MEMORY[0x259C379F0](v41);
  v11 = v10;
  if (!v5 || v6)
  {
    (*(v10 + 16))(v10, v6);
  }

  else
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = [v13 identifier];
      *buf = 136315394;
      v47 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v48 = 2112;
      v49 = v15;
      _os_log_impl(&dword_25553C000, v14, OS_LOG_TYPE_INFO, "%s Resumed connection for intent with identifier: %@", buf, 0x16u);
    }

    kdebug_trace();
    v16 = a1[5];
    v17 = [a1[6] ins_afAnalyticsContext];
    [v16 _logEventWithType:602 context:v17 contextNoCopy:0];

    [a1[7] extensionService:a1[5] suspendTimeout:{objc_msgSend(v5, "_isExtensionBeingDebugged")}];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_26;
    v38[3] = &unk_2797EAA98;
    v18 = a1[7];
    v19 = a1[5];
    v39 = v18;
    v40 = v19;
    [v5 setImageProcessingHandler:v38];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2_28;
    block[3] = &unk_2797EAB60;
    v20 = a1[6];
    block[4] = a1[5];
    v32 = v20;
    v33 = a1[4];
    v34 = v5;
    v35 = a1[8];
    v36 = a1[7];
    v37 = a1[9];
    v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    if ([a1[5] _shouldPrepareAudioSessionForCommand:a1[8] intent:a1[4]])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_3;
      v26[3] = &unk_2797EAB10;
      v22 = a1[4];
      v23 = a1[5];
      v27 = v22;
      v28 = v23;
      v30 = v21;
      v29 = a1[7];
      v24 = MEMORY[0x259C379F0](v26);
      [a1[7] extensionService:a1[5] prepareForStartPlaybackWithDestination:1 intent:a1[4] completion:v24];
    }

    else
    {
      dispatch_async(*(a1[5] + 1), v21);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = v4;
    v17 = [v15 identifier];
    v18 = 136315650;
    v19 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v3;
    _os_log_error_impl(&dword_25553C000, v16, OS_LOG_TYPE_ERROR, "%s Error resuming connection for intent with id: %@ - %@", &v18, 0x20u);
  }

  [*(a1 + 40) _extensionRequestDidFinishForIntent:*(a1 + 32) error:v3];
  if (!v3)
  {
    v6 = *(a1 + 48);
    v7 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 56), 722470900);
    v8 = v6;
    v9 = v7;
    v10 = 0;
    goto LABEL_10;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x277CD3848]])
  {
    v11 = [v3 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277CD3838]];

    if (v12)
    {
      goto LABEL_8;
    }

    v13 = *(a1 + 48);
    v7 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 56), 722470896);
    v8 = v13;
    v9 = v7;
    v10 = v3;
LABEL_10:
    [v8 ins_invokeErrorCompletionHandler:v9 withErrorCode:1301 underlyingError:v10];

    goto LABEL_11;
  }

LABEL_8:
  [*(a1 + 48) ins_invokeErrorCompletionHandler:*(a1 + 56) forUnderlyingError:v3];
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  [v4 extensionService:v5 wantsToCacheImage:a2];
  v6[2](v6, 0);
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2_28(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ins_afAnalyticsContext];
  [v2 _logEventWithType:626 context:v3 contextNoCopy:0];

  v4 = [[INSExtensionServiceIntentExecutor alloc] initWithIntent:*(a1 + 48) extensionProxy:*(a1 + 56) queue:*(*(a1 + 32) + 8)];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 identifier];
    *buf = 136315394;
    v22 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_25553C000, v7, OS_LOG_TYPE_INFO, "%s Created intent executor for intent with id %@. Sending intent for execution to execution proxy.", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_30;
  v13[3] = &unk_2797EAAC0;
  v9 = *(a1 + 64);
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v16 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = *(a1 + 72);
  v20 = *(a1 + 80);
  v19 = *(a1 + 40);
  [(INSExtensionServiceIntentExecutor *)v4 sendAceCommand:v9 completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD38C8];
  v4 = *MEMORY[0x277CD38C8];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v3;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 136315394;
      v15 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_3";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_25553C000, v6, OS_LOG_TYPE_INFO, "%s Prepared to start playback for %@", buf, 0x16u);
    }

    dispatch_async(*(*(a1 + 40) + 8), *(a1 + 56));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_25553C000, v3, OS_LOG_TYPE_ERROR, "%s Failed to prepare for audio playback", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_35;
    v12[3] = &unk_2797EAAE8;
    v12[4] = v10;
    v13 = *(a1 + 56);
    [v9 extensionService:v10 handleFailedStartPlaybackWithDestination:1 completion:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _connection];
  v7 = [v6 _transaction];

  v8 = [v7 currentIntentResponse];
  if (v8 && [*(a1 + 40) _shouldPrepareAudioSessionForCommand:*(a1 + 48) intent:*(a1 + 56)] && (v5 || INIntentResponseIsFailure()))
  {
    [*(a1 + 64) extensionService:*(a1 + 40) handleFailedStartPlaybackWithDestination:1 completion:&__block_literal_global_33];
  }

  [*(a1 + 40) _extensionRequestDidFinishForIntent:*(a1 + 56) error:v5];
  v9 = *(a1 + 80);
  if (v9)
  {
    (*(v9 + 16))(v9, v12, v5);
  }

  kdebug_trace();
  kdebug_trace();
  v10 = *(a1 + 40);
  v11 = [*(a1 + 72) ins_afAnalyticsContext];
  [v10 _logEventWithType:627 context:v11 contextNoCopy:0];
}

- (NSArray)commandIdentifiers
{
  v9[9] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D484F8];
  v9[0] = *MEMORY[0x277D484B8];
  v9[1] = v2;
  v3 = *MEMORY[0x277D484D0];
  v9[2] = *MEMORY[0x277D48480];
  v9[3] = v3;
  v4 = *MEMORY[0x277D484F0];
  v9[4] = *MEMORY[0x277D484D8];
  v9[5] = v4;
  v5 = *MEMORY[0x277D484E8];
  v9[6] = *MEMORY[0x277D484C8];
  v9[7] = v5;
  v9[8] = *MEMORY[0x277D484A8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:9];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (INSExtensionService)initWithOptions:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = INSExtensionService;
  v5 = [(INSExtensionService *)&v16 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v7 = dispatch_queue_create("INSExtensionServiceQueue", v6);
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    dispatch_async(*(v5 + 1), &__block_literal_global_330);
    v9 = dispatch_queue_create("com.apple.intents.INSExtensionService.request-delegate", 0);
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = [v4 copy];
    v12 = *(v5 + 6);
    *(v5 + 6) = v11;

    v13 = +[INSAnalytics sharedAnalytics];
    [v13 addObserver:v5];

    v14 = +[INSAnalytics sharedAnalytics];
    [v14 setDataSource:v5];
  }

  return v5;
}

@end