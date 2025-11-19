@interface _CNDelegateAdjustingResponsePreparer
- (id)prepareResults:(id)a3 forFetch:(id)a4;
- (void)adjustArray:(id)a3 byAddingResults:(id)a4;
- (void)adjustArray:(id)a3 byRemovingResults:(id)a4;
@end

@implementation _CNDelegateAdjustingResponsePreparer

- (id)prepareResults:(id)a3 forFetch:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v10 = [v9 autocompleteFetch:v7 willAdjustResults:v6];

  v11 = [v10 count];
  v12 = CNALoggingContextDebug();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      [v8 timeIntervalSinceNow];
      v27 = 134218243;
      v28 = v14 * -1000.0;
      v29 = 2113;
      v30 = v10;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Delegate requested adjustments (%.3fms): %{private}@", &v27, 0x16u);
    }

    v15 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      [v8 timeIntervalSinceNow];
      v27 = 134218243;
      v28 = v16 * -1000.0;
      v29 = 2113;
      v30 = v10;
      _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_INFO, "Delegate requested adjustments (%.3fms): %{private}@", &v27, 0x16u);
    }

    v17 = [v6 mutableCopy];
    v18 = [v10 objectForKeyedSubscript:@"rejected"];
    [(_CNDelegateAdjustingResponsePreparer *)self adjustArray:v17 byRemovingResults:v18];

    v19 = [v10 objectForKeyedSubscript:@"additional"];
    [(_CNDelegateAdjustingResponsePreparer *)self adjustArray:v17 byAddingResults:v19];

    v20 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
    v21 = [v20 prepareResults:v17 forFetch:v7];
  }

  else
  {
    if (v13)
    {
      [v8 timeIntervalSinceNow];
      v27 = 134217984;
      v28 = v22 * -1000.0;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Delegate made no adjustments (%.3fms)", &v27, 0xCu);
    }

    v23 = CNALoggingContextPerformance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      [v8 timeIntervalSinceNow];
      v27 = 134217984;
      v28 = v24 * -1000.0;
      _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_INFO, "Delegate made no adjustments (%.3fms)", &v27, 0xCu);
    }

    v17 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
    v21 = [v17 prepareResults:v6 forFetch:v7];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)adjustArray:(id)a3 byAddingResults:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = v5;
  if (v5 && [v5 count])
  {
    [v7 addObjectsFromArray:v6];
  }
}

- (void)adjustArray:(id)a3 byRemovingResults:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = v5;
  if (v5 && [v5 count])
  {
    [v7 removeObjectsInArray:v6];
  }
}

@end