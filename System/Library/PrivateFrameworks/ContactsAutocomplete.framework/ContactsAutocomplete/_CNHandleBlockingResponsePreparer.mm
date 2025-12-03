@interface _CNHandleBlockingResponsePreparer
- (id)prepareResults:(id)results forFetch:(id)fetch;
@end

@implementation _CNHandleBlockingResponsePreparer

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFBE10];
  fetchCopy = fetch;
  resultsCopy = results;
  currentEnvironment = [v6 currentEnvironment];
  handleBlocking = [currentEnvironment handleBlocking];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61___CNHandleBlockingResponsePreparer_prepareResults_forFetch___block_invoke;
  v24[3] = &unk_2781C4AB0;
  v11 = handleBlocking;
  v25 = v11;
  v12 = [resultsCopy _cn_partition:v24];

  first = [v12 first];
  second = [v12 second];
  v15 = CNALoggingContextDebug();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [first count];
    if (v16 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v16, v23];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v16];
    }
    v17 = ;
    v18 = [first _cn_take:500];
    *buf = 138543619;
    v27 = v17;
    v28 = 2113;
    v29 = v18;
    _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Blocked results: (%{public}@): %{private}@", buf, 0x16u);
  }

  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v20 = [preparer prepareResults:second forFetch:fetchCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end