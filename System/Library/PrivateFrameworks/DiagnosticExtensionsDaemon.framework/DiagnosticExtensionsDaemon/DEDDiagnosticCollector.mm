@interface DEDDiagnosticCollector
- (BOOL)isDiagnosticExtensionAvailable;
- (DEDDiagnosticCollector)init;
- (id)_combineParametersWithParameters:(id)parameters extension:(id)extension identifier:(id)identifier;
- (id)availableDiagnosticExtensions;
- (id)collectAnnotatedGroupWithIdentifier:(id)identifier parameters:(id)parameters;
- (id)collectItemsWithIdentifier:(id)identifier parameters:(id)parameters;
- (id)extensionForIdentifier:(id)identifier;
- (void)cleanupItemsWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
- (void)loadExtensionTextDataInExtension:(id)extension localization:(id)localization;
- (void)prepareItemsWithDeferredExtensionInfo:(id)info;
- (void)prepareItemsWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session;
@end

@implementation DEDDiagnosticCollector

- (DEDDiagnosticCollector)init
{
  v5.receiver = self;
  v5.super_class = DEDDiagnosticCollector;
  v2 = [(DEDDiagnosticCollector *)&v5 init];
  if (v2)
  {
    if (Log_onceToken2 != -1)
    {
      [DEDDiagnosticCollector init];
    }

    [(DEDDiagnosticCollector *)v2 setLog:Log_handle];
    extensionManager = [(DEDDiagnosticCollector *)v2 extensionManager];
    [extensionManager loadExtensions];

    [(DEDDiagnosticCollector *)v2 setCollectionTimeout:2100];
  }

  return v2;
}

- (id)collectAnnotatedGroupWithIdentifier:(id)identifier parameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v8 = [(DEDDiagnosticCollector *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDDiagnosticCollector collectAnnotatedGroupWithIdentifier:parameters:];
  }

  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  v10 = [extensionManager extensionForIdentifier:identifierCopy];

  if (v10)
  {
    v11 = [(DEDDiagnosticCollector *)self _combineParametersWithParameters:parametersCopy extension:v10 identifier:identifierCopy];
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__2;
    v30 = __Block_byref_object_dispose__2;
    v31 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __73__DEDDiagnosticCollector_collectAnnotatedGroupWithIdentifier_parameters___block_invoke;
    v21 = &unk_278F66058;
    selfCopy = self;
    v23 = identifierCopy;
    v25 = &v26;
    v13 = v12;
    v24 = v13;
    [v10 annotatedAttachmentsForParameters:v11 andHandler:&v18];
    v14 = dispatch_time(0, 1000000000 * [(DEDDiagnosticCollector *)self collectionTimeout:v18]);
    dispatch_group_wait(v13, v14);
    v15 = v27[5];

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v16 = [(DEDDiagnosticCollector *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DEDDiagnosticCollector collectAnnotatedGroupWithIdentifier:parameters:];
    }

    [DEDAnalytics extensionWithIdentifier:identifierCopy didCompleteWithFileCount:0 bytesCollected:0 duration:0 errorCode:2];
    v15 = 0;
  }

  return v15;
}

void __73__DEDDiagnosticCollector_collectAnnotatedGroupWithIdentifier_parameters___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "finished collecting annotated attachments for %{public}@", &v11, 0xCu);
  }

  v6 = [*(a1 + 32) log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __73__DEDDiagnosticCollector_collectAnnotatedGroupWithIdentifier_parameters___block_invoke_cold_1(v3, v6);
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_group_leave(*(a1 + 48));
  v10 = *MEMORY[0x277D85DE8];
}

- (id)collectItemsWithIdentifier:(id)identifier parameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v8 = [(DEDDiagnosticCollector *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDDiagnosticCollector collectItemsWithIdentifier:parameters:];
  }

  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  v10 = [extensionManager extensionForIdentifier:identifierCopy];

  if (v10)
  {
    v11 = [(DEDDiagnosticCollector *)self _combineParametersWithParameters:parametersCopy extension:v10 identifier:identifierCopy];
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__2;
    v30 = __Block_byref_object_dispose__2;
    v31 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __64__DEDDiagnosticCollector_collectItemsWithIdentifier_parameters___block_invoke;
    v21 = &unk_278F66080;
    selfCopy = self;
    v23 = identifierCopy;
    v25 = &v26;
    v13 = v12;
    v24 = v13;
    [v10 attachmentsForParameters:v11 andHandler:&v18];
    v14 = dispatch_time(0, 1000000000 * [(DEDDiagnosticCollector *)self collectionTimeout:v18]);
    dispatch_group_wait(v13, v14);
    v15 = [MEMORY[0x277CBEA60] arrayWithArray:v27[5]];

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v16 = [(DEDDiagnosticCollector *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DEDDiagnosticCollector collectAnnotatedGroupWithIdentifier:parameters:];
    }

    [DEDAnalytics extensionWithIdentifier:identifierCopy didCompleteWithFileCount:0 bytesCollected:0 duration:0 errorCode:2];
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

void __64__DEDDiagnosticCollector_collectItemsWithIdentifier_parameters___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "finished collecting attachments for %{public}@", &v11, 0xCu);
  }

  v6 = [*(a1 + 32) log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __64__DEDDiagnosticCollector_collectItemsWithIdentifier_parameters___block_invoke_cold_1();
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v3];
  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_combineParametersWithParameters:(id)parameters extension:(id)extension identifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = MEMORY[0x277CBEB38];
  extensionCopy = extension;
  parametersCopy = parameters;
  v12 = objc_alloc_init(v9);
  v13 = MEMORY[0x277CBEC10];
  if (parametersCopy)
  {
    v13 = parametersCopy;
  }

  v14 = v13;

  [v12 addEntriesFromDictionary:v14];
  v15 = [v14 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
    [v12 setObject:v16 forKeyedSubscript:@"DEExtensionHostAppKey"];
  }

  else
  {
    v16 = +[DEDConfiguration sharedInstance];
    identifier = [v16 identifier];
    [v12 setObject:identifier forKeyedSubscript:@"DEExtensionHostAppKey"];
  }

  identifier2 = [extensionCopy identifier];

  if ([identifier2 isEqualToString:@"com.apple.DiagnosticExtensions.sysdiagnose"])
  {
    v19 = [v12 objectForKey:@"coSysdiagnose"];

    if (!v19)
    {
      [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"coSysdiagnose"];
    }
  }

  else
  {
  }

  v20 = [(DEDDiagnosticCollector *)self log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [DEDDiagnosticCollector _combineParametersWithParameters:extension:identifier:];
  }

  return v12;
}

- (void)prepareItemsWithDeferredExtensionInfo:(id)info
{
  infoCopy = info;
  v5 = [(DEDDiagnosticCollector *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDDiagnosticCollector prepareItemsWithDeferredExtensionInfo:];
  }

  dedIdentifier = [infoCopy dedIdentifier];
  extensionIdentifier = [dedIdentifier extensionIdentifier];

  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  v9 = [extensionManager extensionForIdentifier:extensionIdentifier];

  parameters = [infoCopy parameters];
  bugSessionIdentifier = [infoCopy bugSessionIdentifier];
  triggerDate = [infoCopy triggerDate];
  [v9 setupWithParameters:parameters session:bugSessionIdentifier expirationDate:triggerDate];
}

- (void)prepareItemsWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  v11 = [(DEDDiagnosticCollector *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315906;
    v16 = "[DEDDiagnosticCollector prepareItemsWithIdentifier:parameters:session:]";
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = parametersCopy;
    v21 = 2112;
    v22 = sessionCopy;
    _os_log_debug_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEBUG, "%s %@ %@ %@", &v15, 0x2Au);
  }

  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  v13 = [extensionManager extensionForIdentifier:identifierCopy];

  [v13 setupWithParameters:parametersCopy session:sessionCopy];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)cleanupItemsWithIdentifier:(id)identifier parameters:(id)parameters session:(id)session
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  sessionCopy = session;
  v11 = [(DEDDiagnosticCollector *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315906;
    v16 = "[DEDDiagnosticCollector cleanupItemsWithIdentifier:parameters:session:]";
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = parametersCopy;
    v21 = 2112;
    v22 = sessionCopy;
    _os_log_debug_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEBUG, "%s %@ %@ %@", &v15, 0x2Au);
  }

  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  v13 = [extensionManager extensionForIdentifier:identifierCopy];

  [v13 teardownWithParameters:parametersCopy session:sessionCopy];
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDiagnosticExtensionAvailable
{
  v17[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x277CCA9C8];
  v16 = *MEMORY[0x277CCA0F8];
  v17[0] = @"com.apple.diagnosticextensions-service";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__DEDDiagnosticCollector_isDiagnosticExtensionAvailable__block_invoke;
  v9[3] = &unk_278F660A8;
  v9[4] = self;
  v11 = &v12;
  v6 = v3;
  v10 = v6;
  [v4 extensionsWithMatchingAttributes:v5 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v4) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void __56__DEDDiagnosticCollector_isDiagnosticExtensionAvailable__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__DEDDiagnosticCollector_isDiagnosticExtensionAvailable__block_invoke_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)extensionForIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  cachedExtensions = [(DEDDiagnosticCollector *)self cachedExtensions];

  if (!cachedExtensions)
  {
    availableDiagnosticExtensions = [(DEDDiagnosticCollector *)self availableDiagnosticExtensions];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  cachedExtensions2 = [(DEDDiagnosticCollector *)self cachedExtensions];
  v8 = [cachedExtensions2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(cachedExtensions2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqualToString:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [cachedExtensions2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)availableDiagnosticExtensions
{
  v23 = *MEMORY[0x277D85DE8];
  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  v4 = [extensionManager extensionsWithFilter:0];

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [DEDExtension extensionWithDEExtension:*(*(&v18 + 1) + 8 * i), v18];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = v12;
  v14 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  [(DEDDiagnosticCollector *)self setCachedExtensions:v15];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)loadExtensionTextDataInExtension:(id)extension localization:(id)localization
{
  localizationCopy = localization;
  extensionCopy = extension;
  extensionManager = [(DEDDiagnosticCollector *)self extensionManager];
  identifier = [extensionCopy identifier];
  v14 = [extensionManager extensionForIdentifier:identifier];

  v10 = [v14 localizedConsentTextWithLocalization:localizationCopy];
  [extensionCopy setLocalizedConsentText:v10];

  v11 = [v14 localizedDataCollectedSummaryWithLocalization:localizationCopy];
  [extensionCopy setLocalizedDataCollectedSummary:v11];

  v12 = [v14 localizedDataCollectedExplanationWithLocalization:localizationCopy];
  [extensionCopy setLocalizedDataCollectedExplanation:v12];

  v13 = [v14 localizedCustomerConsentTextWithLocalization:localizationCopy];

  [extensionCopy setLocalizedCustomerConsentText:v13];
}

- (void)collectAnnotatedGroupWithIdentifier:parameters:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)collectAnnotatedGroupWithIdentifier:parameters:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not find extension with identifier %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__DEDDiagnosticCollector_collectAnnotatedGroupWithIdentifier_parameters___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "collected annotated group %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)collectItemsWithIdentifier:parameters:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__DEDDiagnosticCollector_collectItemsWithIdentifier_parameters___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEBUG, "collected attachments %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_combineParametersWithParameters:extension:identifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)prepareItemsWithDeferredExtensionInfo:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEBUG, "%s %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __56__DEDDiagnosticCollector_isDiagnosticExtensionAvailable__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Error finding diagnostic extension [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end