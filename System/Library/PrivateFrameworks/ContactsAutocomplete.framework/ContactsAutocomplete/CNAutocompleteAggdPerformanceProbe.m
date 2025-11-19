@interface CNAutocompleteAggdPerformanceProbe
- (CNAutocompleteAggdPerformanceProbe)init;
- (CNAutocompleteAggdPerformanceProbe)initWithAggdProbe:(id)a3;
- (void)recordLatency:(double)a3 forResultCount:(unint64_t)a4 forSource:(id)a5;
- (void)recordNumberOfResultsReturned:(unint64_t)a3 inTimeInterval:(double)a4 forBatch:(unint64_t)a5 includesServers:(BOOL)a6;
- (void)sendData;
@end

@implementation CNAutocompleteAggdPerformanceProbe

- (CNAutocompleteAggdPerformanceProbe)init
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"com.apple.contacts.autocomplete";
  v10[1] = @"performance";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v5 = CNAutocompleteProbeBuildKey(v3, v4);

  v6 = [[CNAutocompleteAggdProbe alloc] initWithKeyPrefix:v5];
  v7 = [(CNAutocompleteAggdPerformanceProbe *)self initWithAggdProbe:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (CNAutocompleteAggdPerformanceProbe)initWithAggdProbe:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNAutocompleteAggdPerformanceProbe;
  v6 = [(CNAutocompleteAggdPerformanceProbe *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aggdProbe, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    pendingAddData = v7->_pendingAddData;
    v7->_pendingAddData = v8;
  }

  return v7;
}

- (void)recordNumberOfResultsReturned:(unint64_t)a3 inTimeInterval:(double)a4 forBatch:(unint64_t)a5 includesServers:(BOOL)a6
{
  v6 = a6;
  v29[2] = *MEMORY[0x277D85DE8];
  v29[0] = @"latency";
  v11 = CNAutocompleteProbeBatchKey(a5);
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v14 = CNAutocompleteProbeBuildKey(v12, v13);

  if (v6)
  {
    v28[0] = v14;
    v28[1] = @"includingServers";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v17 = CNAutocompleteProbeBuildKey(v15, v16);

    v14 = v17;
  }

  v27[0] = @"numberOfResults";
  v18 = CNAutocompleteProbeBatchKey(a5);
  v27[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v21 = CNAutocompleteProbeBuildKey(v19, v20);

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v23 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [v23 setObject:v22 forKeyedSubscript:v14];

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v25 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [v25 setObject:v24 forKeyedSubscript:v21];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordLatency:(double)a3 forResultCount:(unint64_t)a4 forSource:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = @"latency";
  v22[1] = a5;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = [v8 arrayWithObjects:v22 count:2];
  v12 = CNAutocompleteProbeBuildKey(v10, v11);

  v21[0] = @"numberOfResults";
  v21[1] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v15 = CNAutocompleteProbeBuildKey(v13, v14);

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v17 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [v17 setObject:v16 forKeyedSubscript:v12];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];

  v19 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [v19 setObject:v18 forKeyedSubscript:v15];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)sendData
{
  v3 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__CNAutocompleteAggdPerformanceProbe_sendData__block_invoke;
  v5[3] = &unk_2781C4B78;
  v5[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  v4 = [(CNAutocompleteAggdPerformanceProbe *)self aggdProbe];
  [v4 sendData];
}

void __46__CNAutocompleteAggdPerformanceProbe_sendData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 aggdProbe];
  [v7 recordAddValue:v5 forKey:v6];
}

@end