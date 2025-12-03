@interface CNAutocompleteAggdPerformanceProbe
- (CNAutocompleteAggdPerformanceProbe)init;
- (CNAutocompleteAggdPerformanceProbe)initWithAggdProbe:(id)probe;
- (void)recordLatency:(double)latency forResultCount:(unint64_t)count forSource:(id)source;
- (void)recordNumberOfResultsReturned:(unint64_t)returned inTimeInterval:(double)interval forBatch:(unint64_t)batch includesServers:(BOOL)servers;
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

- (CNAutocompleteAggdPerformanceProbe)initWithAggdProbe:(id)probe
{
  probeCopy = probe;
  v11.receiver = self;
  v11.super_class = CNAutocompleteAggdPerformanceProbe;
  v6 = [(CNAutocompleteAggdPerformanceProbe *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aggdProbe, probe);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingAddData = v7->_pendingAddData;
    v7->_pendingAddData = dictionary;
  }

  return v7;
}

- (void)recordNumberOfResultsReturned:(unint64_t)returned inTimeInterval:(double)interval forBatch:(unint64_t)batch includesServers:(BOOL)servers
{
  serversCopy = servers;
  v29[2] = *MEMORY[0x277D85DE8];
  v29[0] = @"latency";
  v11 = CNAutocompleteProbeBatchKey(batch);
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v14 = CNAutocompleteProbeBuildKey(v12, v13);

  if (serversCopy)
  {
    v28[0] = v14;
    v28[1] = @"includingServers";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v17 = CNAutocompleteProbeBuildKey(v15, v16);

    v14 = v17;
  }

  v27[0] = @"numberOfResults";
  v18 = CNAutocompleteProbeBatchKey(batch);
  v27[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v21 = CNAutocompleteProbeBuildKey(v19, v20);

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
  pendingAddData = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [pendingAddData setObject:v22 forKeyedSubscript:v14];

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:returned];
  pendingAddData2 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [pendingAddData2 setObject:v24 forKeyedSubscript:v21];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordLatency:(double)latency forResultCount:(unint64_t)count forSource:(id)source
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = @"latency";
  v22[1] = source;
  v8 = MEMORY[0x277CBEA60];
  sourceCopy = source;
  v10 = [v8 arrayWithObjects:v22 count:2];
  v12 = CNAutocompleteProbeBuildKey(v10, v11);

  v21[0] = @"numberOfResults";
  v21[1] = sourceCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v15 = CNAutocompleteProbeBuildKey(v13, v14);

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:latency];
  pendingAddData = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [pendingAddData setObject:v16 forKeyedSubscript:v12];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:count];

  pendingAddData2 = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  [pendingAddData2 setObject:v18 forKeyedSubscript:v15];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)sendData
{
  pendingAddData = [(CNAutocompleteAggdPerformanceProbe *)self pendingAddData];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__CNAutocompleteAggdPerformanceProbe_sendData__block_invoke;
  v5[3] = &unk_2781C4B78;
  v5[4] = self;
  [pendingAddData enumerateKeysAndObjectsUsingBlock:v5];

  aggdProbe = [(CNAutocompleteAggdPerformanceProbe *)self aggdProbe];
  [aggdProbe sendData];
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