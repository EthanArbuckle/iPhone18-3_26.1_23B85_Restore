@interface _CNSortingResponsePreparer
- (id)prepareResults:(id)results forFetch:(id)fetch;
@end

@implementation _CNSortingResponsePreparer

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  fetchCopy = fetch;
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  [delegate autocompleteFetch:fetchCopy willSortResults:resultsCopy];

  delegate2 = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v10 = [delegate2 resultComparatorForAutocompleteFetch:fetchCopy];

  v11 = CNALoggingContextDebug();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Using sorting algoritm provided by client", buf, 2u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __54___CNSortingResponsePreparer_prepareResults_forFetch___block_invoke;
    v23[3] = &unk_2781C4E58;
    v24 = v10;
    v13 = [resultsCopy sortedArrayUsingComparator:v23];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Using standard sorting algorithms", buf, 2u);
    }

    v13 = [resultsCopy sortedArrayUsingSelector:sel_compare_];
  }

  v14 = CNALoggingContextDebug();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    if (v15 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v15, v22];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v15];
    }
    v16 = ;
    v17 = [v13 _cn_take:500];
    *buf = 138543619;
    v26 = v16;
    v27 = 2113;
    v28 = v17;
    _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "Sorted results: (%{public}@): %{private}@", buf, 0x16u);
  }

  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v19 = [preparer prepareResults:v13 forFetch:fetchCopy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end