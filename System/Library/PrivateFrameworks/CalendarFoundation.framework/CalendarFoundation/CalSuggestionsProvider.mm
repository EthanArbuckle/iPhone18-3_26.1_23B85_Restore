@interface CalSuggestionsProvider
+ (id)defaultProvider;
- (BOOL)eventsFoundInMailEnabled;
- (CalSuggestionsProvider)init;
- (id)fakeSGRecordID;
- (id)senderForEventWithSuggestionID:(id)d;
- (id)sgEventFromUniqueID:(id)d error:(id *)error;
- (id)sgRecordIDForEventWithSuggestionID:(id)d error:(id *)error;
- (void)_loadSuggestionsFramework;
- (void)confirmEventWithSuggestionID:(id)d;
- (void)confirmSGEventWithRecordID:(id)d;
- (void)rejectSGEventWithRecordID:(id)d;
@end

@implementation CalSuggestionsProvider

+ (id)defaultProvider
{
  if (defaultProvider_onceToken != -1)
  {
    +[CalSuggestionsProvider defaultProvider];
  }

  v3 = defaultProvider__defaultProvider;

  return v3;
}

uint64_t __41__CalSuggestionsProvider_defaultProvider__block_invoke()
{
  defaultProvider__defaultProvider = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (CalSuggestionsProvider)init
{
  v6.receiver = self;
  v6.super_class = CalSuggestionsProvider;
  v2 = [(CalSuggestionsProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CalSuggestionsProvider *)v2 _loadSuggestionsFramework];
    if ([(CalSuggestionsProvider *)v3 suggestionsFrameworkAvailable])
    {
      serviceForEvents = [NSClassFromString(&cfstr_Sgsuggestionss.isa) serviceForEvents];
      [(CalSuggestionsProvider *)v3 setService:serviceForEvents];
    }
  }

  return v3;
}

- (void)_loadSuggestionsFramework
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)sgEventFromUniqueID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  if ([(CalSuggestionsProvider *)self suggestionsFrameworkAvailable])
  {
    v7 = dispatch_semaphore_create(0);
    service = [(CalSuggestionsProvider *)self service];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__CalSuggestionsProvider_sgEventFromUniqueID_error___block_invoke;
    v14[3] = &unk_1E7EC6A80;
    v16 = &v18;
    errorCopy = error;
    v9 = v7;
    v15 = v9;
    [service eventFromUniqueId:dCopy withCompletion:v14];

    v10 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v9, v10) >= 1)
    {
      v11 = +[CalFoundationLogSubsystem suggestions];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CalSuggestionsProvider sgEventFromUniqueID:error:];
      }
    }
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __52__CalSuggestionsProvider_sgEventFromUniqueID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a3;
  v7 = v6;
  if (*(a1 + 48))
  {
    v8 = v6;
    **(a1 + 48) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)confirmEventWithSuggestionID:(id)d
{
  dCopy = d;
  if ([(CalSuggestionsProvider *)self suggestionsFrameworkAvailable])
  {
    service = [(CalSuggestionsProvider *)self service];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__CalSuggestionsProvider_confirmEventWithSuggestionID___block_invoke;
    v6[3] = &unk_1E7EC6AA8;
    v6[4] = self;
    v7 = dCopy;
    [service eventFromUniqueId:v7 withCompletion:v6];
  }
}

void __55__CalSuggestionsProvider_confirmEventWithSuggestionID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 recordId];
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      v8 = [*(a1 + 32) service];
      v10 = 0;
      [v8 confirmEventByRecordId:v7 error:&v10];
      v5 = v10;

      if (v5)
      {
        v9 = +[CalFoundationLogSubsystem suggestions];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __55__CalSuggestionsProvider_confirmEventWithSuggestionID___block_invoke_cold_1(a1);
        }
      }
    }
  }
}

- (id)senderForEventWithSuggestionID:(id)d
{
  v3 = [(CalSuggestionsProvider *)self sgEventFromUniqueID:d error:0];
  origin = [v3 origin];
  fromPerson = [origin fromPerson];
  displayName = [fromPerson displayName];

  return displayName;
}

- (id)sgRecordIDForEventWithSuggestionID:(id)d error:(id *)error
{
  v4 = [(CalSuggestionsProvider *)self sgEventFromUniqueID:d error:error];
  recordId = [v4 recordId];

  return recordId;
}

- (id)fakeSGRecordID
{
  if ([(CalSuggestionsProvider *)self suggestionsFrameworkAvailable])
  {
    v2 = NSClassFromString(&cfstr_Sgrecordid.isa);
    v3 = [(objc_class *)v2 recordIdWithNumericValue:arc4random()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)confirmSGEventWithRecordID:(id)d
{
  dCopy = d;
  if ([(CalSuggestionsProvider *)self suggestionsFrameworkAvailable])
  {
    v5 = dispatch_semaphore_create(0);
    service = [(CalSuggestionsProvider *)self service];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__CalSuggestionsProvider_confirmSGEventWithRecordID___block_invoke;
    v10[3] = &unk_1E7EC6590;
    v7 = v5;
    v11 = v7;
    [service confirmEventByRecordId:dCopy withCompletion:v10];

    v8 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v7, v8) >= 1)
    {
      v9 = +[CalFoundationLogSubsystem suggestions];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CalSuggestionsProvider confirmSGEventWithRecordID:];
      }
    }
  }
}

- (void)rejectSGEventWithRecordID:(id)d
{
  dCopy = d;
  if ([(CalSuggestionsProvider *)self suggestionsFrameworkAvailable])
  {
    v5 = dispatch_semaphore_create(0);
    service = [(CalSuggestionsProvider *)self service];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__CalSuggestionsProvider_rejectSGEventWithRecordID___block_invoke;
    v10[3] = &unk_1E7EC6590;
    v7 = v5;
    v11 = v7;
    [service rejectEventByRecordId:dCopy withCompletion:v10];

    v8 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v7, v8) >= 1)
    {
      v9 = +[CalFoundationLogSubsystem suggestions];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CalSuggestionsProvider rejectSGEventWithRecordID:];
      }
    }
  }
}

- (BOOL)eventsFoundInMailEnabled
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.iCal"];

  return v3 ^ 1;
}

- (void)sgEventFromUniqueID:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__CalSuggestionsProvider_confirmEventWithSuggestionID___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v5[0] = 138412546;
  OUTLINED_FUNCTION_0_5();
  v6 = v2;
  _os_log_error_impl(&dword_1B990D000, v3, OS_LOG_TYPE_ERROR, "confirmEventWithSuggestionID: %@ failed with error %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end