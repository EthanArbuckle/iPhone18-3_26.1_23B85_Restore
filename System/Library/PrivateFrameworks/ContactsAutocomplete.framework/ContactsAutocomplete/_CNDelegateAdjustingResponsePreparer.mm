@interface _CNDelegateAdjustingResponsePreparer
- (id)prepareResults:(id)results forFetch:(id)fetch;
- (void)adjustArray:(id)array byAddingResults:(id)results;
- (void)adjustArray:(id)array byRemovingResults:(id)results;
@end

@implementation _CNDelegateAdjustingResponsePreparer

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v31 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  fetchCopy = fetch;
  date = [MEMORY[0x277CBEAA8] date];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v10 = [delegate autocompleteFetch:fetchCopy willAdjustResults:resultsCopy];

  v11 = [v10 count];
  v12 = CNALoggingContextDebug();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      [date timeIntervalSinceNow];
      v27 = 134218243;
      v28 = v14 * -1000.0;
      v29 = 2113;
      v30 = v10;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Delegate requested adjustments (%.3fms): %{private}@", &v27, 0x16u);
    }

    v15 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      [date timeIntervalSinceNow];
      v27 = 134218243;
      v28 = v16 * -1000.0;
      v29 = 2113;
      v30 = v10;
      _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_INFO, "Delegate requested adjustments (%.3fms): %{private}@", &v27, 0x16u);
    }

    preparer2 = [resultsCopy mutableCopy];
    v18 = [v10 objectForKeyedSubscript:@"rejected"];
    [(_CNDelegateAdjustingResponsePreparer *)self adjustArray:preparer2 byRemovingResults:v18];

    v19 = [v10 objectForKeyedSubscript:@"additional"];
    [(_CNDelegateAdjustingResponsePreparer *)self adjustArray:preparer2 byAddingResults:v19];

    preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
    v21 = [preparer prepareResults:preparer2 forFetch:fetchCopy];
  }

  else
  {
    if (v13)
    {
      [date timeIntervalSinceNow];
      v27 = 134217984;
      v28 = v22 * -1000.0;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Delegate made no adjustments (%.3fms)", &v27, 0xCu);
    }

    v23 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      [date timeIntervalSinceNow];
      v27 = 134217984;
      v28 = v24 * -1000.0;
      _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_INFO, "Delegate made no adjustments (%.3fms)", &v27, 0xCu);
    }

    preparer2 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
    v21 = [preparer2 prepareResults:resultsCopy forFetch:fetchCopy];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)adjustArray:(id)array byAddingResults:(id)results
{
  arrayCopy = array;
  resultsCopy = results;
  v6 = resultsCopy;
  if (resultsCopy && [resultsCopy count])
  {
    [arrayCopy addObjectsFromArray:v6];
  }
}

- (void)adjustArray:(id)array byRemovingResults:(id)results
{
  arrayCopy = array;
  resultsCopy = results;
  v6 = resultsCopy;
  if (resultsCopy && [resultsCopy count])
  {
    [arrayCopy removeObjectsInArray:v6];
  }
}

@end