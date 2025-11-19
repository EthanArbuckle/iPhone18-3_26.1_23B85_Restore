@interface _CNHandleBlockingResponsePreparer
- (id)prepareResults:(id)a3 forFetch:(id)a4;
@end

@implementation _CNHandleBlockingResponsePreparer

- (id)prepareResults:(id)a3 forFetch:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFBE10];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentEnvironment];
  v10 = [v9 handleBlocking];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61___CNHandleBlockingResponsePreparer_prepareResults_forFetch___block_invoke;
  v24[3] = &unk_2781C4AB0;
  v11 = v10;
  v25 = v11;
  v12 = [v8 _cn_partition:v24];

  v13 = [v12 first];
  v14 = [v12 second];
  v15 = CNALoggingContextDebug();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 count];
    if (v16 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v16, v23];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v16];
    }
    v17 = ;
    v18 = [v13 _cn_take:500];
    *buf = 138543619;
    v27 = v17;
    v28 = 2113;
    v29 = v18;
    _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Blocked results: (%{public}@): %{private}@", buf, 0x16u);
  }

  v19 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v20 = [v19 prepareResults:v14 forFetch:v7];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end