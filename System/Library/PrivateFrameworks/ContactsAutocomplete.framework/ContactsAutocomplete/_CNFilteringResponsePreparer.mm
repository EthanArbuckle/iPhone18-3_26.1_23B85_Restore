@interface _CNFilteringResponsePreparer
- (_CNFilteringResponsePreparer)initWithResponsePreparer:(id)a3 delegate:(id)a4 filter:(id)a5;
- (id)prepareResults:(id)a3 forFetch:(id)a4;
@end

@implementation _CNFilteringResponsePreparer

- (_CNFilteringResponsePreparer)initWithResponsePreparer:(id)a3 delegate:(id)a4 filter:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _CNFilteringResponsePreparer;
  v9 = [(_CNAutocompleteResponsePreparerDecorator *)&v14 initWithResponsePreparer:a3 delegate:a4];
  if (v9)
  {
    v10 = [v8 copy];
    filter = v9->_filter;
    v9->_filter = v10;

    v12 = v9;
  }

  return v9;
}

- (id)prepareResults:(id)a3 forFetch:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(_CNFilteringResponsePreparer *)self filter];
  v9 = [v7 _cn_filter:v8];

  v10 = CNALoggingContextDebug();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    if (v11 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v11, v18];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v11];
    }
    v12 = ;
    v13 = [v9 _cn_take:500];
    *buf = 138543619;
    v20 = v12;
    v21 = 2113;
    v22 = v13;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Filtered results: (%{public}@): %{private}@", buf, 0x16u);
  }

  v14 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v15 = [v14 prepareResults:v9 forFetch:v6];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end