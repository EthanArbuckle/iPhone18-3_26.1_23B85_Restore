@interface MOAppEngagementReporter
+ (id)sharedInstance;
- (MOAppEngagementReporter)init;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (void)didAppEntryUpdateUsingSuggestions:(id)suggestions onEvent:(unint64_t)event duringInterval:(id)interval withInfo:(id)info;
@end

@implementation MOAppEngagementReporter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MOAppEngagementReporter sharedInstance];
  }

  v3 = sharedInstance_engagementReporter;

  return v3;
}

uint64_t __41__MOAppEngagementReporter_sharedInstance__block_invoke()
{
  sharedInstance_engagementReporter = objc_alloc_init(MOAppEngagementReporter);

  return MEMORY[0x2821F96F8]();
}

- (MOAppEngagementReporter)init
{
  v8.receiver = self;
  v8.super_class = MOAppEngagementReporter;
  v2 = [(MOAppEngagementReporter *)&v8 init];
  if (v2)
  {
    v3 = [[MOConnectionManager alloc] initWithName:@"MOAppEngagementReporter" usingDelegate:v2];
    connectionManager = v2->connectionManager;
    v2->connectionManager = v3;

    v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "MOAppEngagementReporter initiate client", v7, 2u);
    }
  }

  return v2;
}

- (void)didAppEntryUpdateUsingSuggestions:(id)suggestions onEvent:(unint64_t)event duringInterval:(id)interval withInfo:(id)info
{
  suggestionsCopy = suggestions;
  intervalCopy = interval;
  infoCopy = info;
  if (![suggestionsCopy count])
  {
    v14 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOAppEngagementReporter.m" lineNumber:50 description:{@"MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: missing suggestionIdentifiers (in %s:%d)", "-[MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:]", 50}];
  }

  if ([suggestionsCopy count] > 0xA)
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:];
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MOAppEngagementReporter.m" lineNumber:51 description:{@"MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: suggestionIdentifiers count should be up to kMOMaxAppEntrySuggestionsCount (in %s:%d)", "-[MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:]", 51}];
  }

  startDate = [intervalCopy startDate];
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = [startDate compare:v19];

  if (v20 == 1)
  {
    v21 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:];
    }

    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MOAppEngagementReporter.m" lineNumber:52 description:{@"MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: can't update entries in the future (in %s:%d)", "-[MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:]", 52}];
  }

  v23 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:v23 onEvent:? duringInterval:? withInfo:?];
  }

  if (event - 3 >= 2)
  {
    if (event - 1 > 1)
    {
      v30 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:];
      }

      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"MOAppEngagementReporter.m" lineNumber:67 description:{@"MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: Unexpected update event (in %s:%d)", "-[MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:]", 67}];
      goto LABEL_28;
    }

    v24 = [infoCopy objectForKeyedSubscript:@"entryAddedCharacters"];

    if (!v24)
    {
      v25 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:];
      }

      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"MOAppEngagementReporter.m" lineNumber:59 description:{@"MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: Missing .addedCharacters key (in %s:%d)", "-[MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:]", 59}];
    }

    v27 = [infoCopy objectForKeyedSubscript:@"entryTotalCharacters"];

    if (!v27)
    {
      v28 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:];
      }

      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"MOAppEngagementReporter.m" lineNumber:60 description:{@"MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: Missing .totalCharacters key (in %s:%d)", "-[MOAppEngagementReporter didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:]", 60}];
LABEL_28:
    }
  }

  connectionManager = self->connectionManager;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __93__MOAppEngagementReporter_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke;
  v35[3] = &unk_2787730F0;
  v36 = suggestionsCopy;
  v37 = intervalCopy;
  v38 = infoCopy;
  eventCopy = event;
  v32 = infoCopy;
  v33 = intervalCopy;
  v34 = suggestionsCopy;
  [(MOConnectionManager *)connectionManager postAsyncProxyUsingBlock:v35 onError:&__block_literal_global_29];
}

void __93__MOAppEngagementReporter_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(MOLogFacilityEngagement);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __93__MOAppEngagementReporter_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke_2_cold_1(v2, v3);
  }
}

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.momentsd" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284110360];
  [v3 setRemoteObjectInterface:v4];

  return v3;
}

- (void)didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: missing suggestionIdentifiers (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: suggestionIdentifiers count should be up to kMOMaxAppEntrySuggestionsCount (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: can't update entries in the future (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: Missing .addedCharacters key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: Missing .totalCharacters key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didAppEntryUpdateUsingSuggestions:onEvent:duringInterval:withInfo:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "MOAppEngagementReporter:didAppEntryUpdateUsingSuggestions: Unexpected update event (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__MOAppEngagementReporter_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "Error: %@, didAppEntryUpdateUsingSuggestions", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end